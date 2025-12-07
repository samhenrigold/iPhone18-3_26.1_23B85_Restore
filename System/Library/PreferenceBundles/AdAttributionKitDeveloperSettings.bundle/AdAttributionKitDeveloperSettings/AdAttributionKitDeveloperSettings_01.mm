uint64_t sub_1AE08(void *a1)
{
  v29 = sub_1F7C(&qword_34C18, &qword_27280);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1F7C(&qword_34C20, &qword_27288);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1F7C(&qword_34C28, &qword_27290);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1F7C(&qword_34C30, &qword_27298);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_1B7D8(a1, a1[3]);
  sub_1CD68();
  v12 = v35;
  sub_249E8();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_248E8();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_24868();
    swift_allocError();
    v21 = v20;
    sub_1F7C(&qword_349E8, &qword_26540);
    *v21 = &type metadata for ConfigurePostbacksState.PostbackConfigurationModel.ConverisonValueTier;
    sub_24898();
    sub_24858();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_1B870(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_1CE64();
    v22 = v11;
    sub_24888();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1CE10();
    v22 = v11;
    sub_24888();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_1CDBC();
  sub_24888();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1B870(v35);
  return v36;
}

uint64_t sub_1B398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656372756F73 && a2 == 0xEE00737469676944;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000000002C190 == a2 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000000002C1B0 == a2 || (sub_24958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000000002C1D0 == a2 || (sub_24958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000000002C1F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B554(void *a1)
{
  v3 = sub_1F7C(&qword_34990, &qword_26518);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  sub_1B7D8(a1, a1[3]);
  sub_1B81C();
  sub_249E8();
  if (v1)
  {
    return sub_1B870(a1);
  }

  v22 = 0;
  sub_1B8BC();
  sub_248D8();
  v7 = v23;
  v20 = 1;
  sub_1B910();
  sub_248D8();
  v8 = v21;
  v19 = 2;
  v9 = sub_248C8();
  v18 = 3;
  v16 = sub_248C8();
  v17 = 4;
  v11 = sub_248C8();
  (*(v4 + 8))(v6, v3);
  sub_1B870(a1);
  if (v11)
  {
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if ((v16 & 1) == 0)
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v14 = 0;
  }

  return v7 | (v8 << 8) | v14 | v13 | v12;
}

void *sub_1B7D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B81C()
{
  result = qword_34998;
  if (!qword_34998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34998);
  }

  return result;
}

uint64_t sub_1B870(void *a1)
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

unint64_t sub_1B8BC()
{
  result = qword_349A0;
  if (!qword_349A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349A0);
  }

  return result;
}

unint64_t sub_1B910()
{
  result = qword_349A8;
  if (!qword_349A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349A8);
  }

  return result;
}

unint64_t sub_1B964()
{
  result = qword_349B8;
  if (!qword_349B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349B8);
  }

  return result;
}

unint64_t sub_1B9B8()
{
  result = qword_349C0;
  if (!qword_349C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349C0);
  }

  return result;
}

unint64_t sub_1BA0C()
{
  result = qword_349E0;
  if (!qword_349E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349E0);
  }

  return result;
}

unint64_t sub_1BA60()
{
  result = qword_349F0;
  if (!qword_349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349F0);
  }

  return result;
}

unint64_t sub_1BAB4()
{
  result = qword_349F8;
  if (!qword_349F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_349F8);
  }

  return result;
}

unint64_t sub_1BB08()
{
  result = qword_34A38;
  if (!qword_34A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A38);
  }

  return result;
}

unint64_t sub_1BB5C()
{
  result = qword_34A40;
  if (!qword_34A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A40);
  }

  return result;
}

unint64_t sub_1BBB0()
{
  result = qword_34A48;
  if (!qword_34A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A48);
  }

  return result;
}

unint64_t sub_1BC04()
{
  result = qword_34A50;
  if (!qword_34A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A50);
  }

  return result;
}

unint64_t sub_1BC58()
{
  result = qword_34A90;
  if (!qword_34A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A90);
  }

  return result;
}

unint64_t sub_1BCAC()
{
  result = qword_34A98;
  if (!qword_34A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34A98);
  }

  return result;
}

unint64_t sub_1BD00()
{
  result = qword_34AA0;
  if (!qword_34AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AA0);
  }

  return result;
}

uint64_t sub_1BDCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BE5C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurePostbacksState.CreatePostbackError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurePostbacksState.CreatePostbackError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0C0()
{
  result = qword_34AC0;
  if (!qword_34AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AC0);
  }

  return result;
}

unint64_t sub_1C148()
{
  result = qword_34AD8;
  if (!qword_34AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AD8);
  }

  return result;
}

unint64_t sub_1C1A0()
{
  result = qword_34AE0;
  if (!qword_34AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AE0);
  }

  return result;
}

uint64_t sub_1C224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26B8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C27C()
{
  result = qword_34AF8;
  if (!qword_34AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34AF8);
  }

  return result;
}

unint64_t sub_1C2D4()
{
  result = qword_34B00;
  if (!qword_34B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B00);
  }

  return result;
}

unint64_t sub_1C32C()
{
  result = qword_34B08;
  if (!qword_34B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B08);
  }

  return result;
}

unint64_t sub_1C384()
{
  result = qword_34B10;
  if (!qword_34B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B10);
  }

  return result;
}

unint64_t sub_1C3DC()
{
  result = qword_34B18;
  if (!qword_34B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B18);
  }

  return result;
}

unint64_t sub_1C434()
{
  result = qword_34B20;
  if (!qword_34B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B20);
  }

  return result;
}

unint64_t sub_1C48C()
{
  result = qword_34B28;
  if (!qword_34B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B28);
  }

  return result;
}

unint64_t sub_1C4E4()
{
  result = qword_34B30;
  if (!qword_34B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B30);
  }

  return result;
}

unint64_t sub_1C53C()
{
  result = qword_34B38;
  if (!qword_34B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B38);
  }

  return result;
}

unint64_t sub_1C594()
{
  result = qword_34B40;
  if (!qword_34B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B40);
  }

  return result;
}

unint64_t sub_1C5EC()
{
  result = qword_34B48;
  if (!qword_34B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B48);
  }

  return result;
}

unint64_t sub_1C644()
{
  result = qword_34B50;
  if (!qword_34B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B50);
  }

  return result;
}

unint64_t sub_1C69C()
{
  result = qword_34B58;
  if (!qword_34B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B58);
  }

  return result;
}

unint64_t sub_1C6F4()
{
  result = qword_34B60;
  if (!qword_34B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B60);
  }

  return result;
}

unint64_t sub_1C74C()
{
  result = qword_34B68;
  if (!qword_34B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B68);
  }

  return result;
}

unint64_t sub_1C7A4()
{
  result = qword_34B70;
  if (!qword_34B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B70);
  }

  return result;
}

unint64_t sub_1C7FC()
{
  result = qword_34B78;
  if (!qword_34B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B78);
  }

  return result;
}

unint64_t sub_1C854()
{
  result = qword_34B80;
  if (!qword_34B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B80);
  }

  return result;
}

unint64_t sub_1C8AC()
{
  result = qword_34B88;
  if (!qword_34B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B88);
  }

  return result;
}

unint64_t sub_1C904()
{
  result = qword_34B90;
  if (!qword_34B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B90);
  }

  return result;
}

unint64_t sub_1C95C()
{
  result = qword_34B98;
  if (!qword_34B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34B98);
  }

  return result;
}

unint64_t sub_1C9B4()
{
  result = qword_34BA0;
  if (!qword_34BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BA0);
  }

  return result;
}

unint64_t sub_1CA0C()
{
  result = qword_34BA8;
  if (!qword_34BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BA8);
  }

  return result;
}

unint64_t sub_1CA64()
{
  result = qword_34BB0;
  if (!qword_34BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BB0);
  }

  return result;
}

unint64_t sub_1CABC()
{
  result = qword_34BB8;
  if (!qword_34BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BB8);
  }

  return result;
}

unint64_t sub_1CB14()
{
  result = qword_34BC0;
  if (!qword_34BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BC0);
  }

  return result;
}

unint64_t sub_1CB6C()
{
  result = qword_34BC8;
  if (!qword_34BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BC8);
  }

  return result;
}

unint64_t sub_1CBC4()
{
  result = qword_34BD0;
  if (!qword_34BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BD0);
  }

  return result;
}

unint64_t sub_1CC18()
{
  result = qword_34BF8;
  if (!qword_34BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34BF8);
  }

  return result;
}

unint64_t sub_1CC6C()
{
  result = qword_34C00;
  if (!qword_34C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C00);
  }

  return result;
}

unint64_t sub_1CCC0()
{
  result = qword_34C08;
  if (!qword_34C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C08);
  }

  return result;
}

unint64_t sub_1CD14()
{
  result = qword_34C10;
  if (!qword_34C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C10);
  }

  return result;
}

unint64_t sub_1CD68()
{
  result = qword_34C38;
  if (!qword_34C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C38);
  }

  return result;
}

unint64_t sub_1CDBC()
{
  result = qword_34C40;
  if (!qword_34C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C40);
  }

  return result;
}

unint64_t sub_1CE10()
{
  result = qword_34C48;
  if (!qword_34C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C48);
  }

  return result;
}

unint64_t sub_1CE64()
{
  result = qword_34C50;
  if (!qword_34C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C50);
  }

  return result;
}

uint64_t sub_1CEF8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CF88(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D07C()
{
  result = qword_34C98;
  if (!qword_34C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C98);
  }

  return result;
}

unint64_t sub_1D0D4()
{
  result = qword_34CA0;
  if (!qword_34CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CA0);
  }

  return result;
}

unint64_t sub_1D12C()
{
  result = qword_34CA8;
  if (!qword_34CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CA8);
  }

  return result;
}

unint64_t sub_1D184()
{
  result = qword_34CB0;
  if (!qword_34CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CB0);
  }

  return result;
}

unint64_t sub_1D1DC()
{
  result = qword_34CB8;
  if (!qword_34CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CB8);
  }

  return result;
}

unint64_t sub_1D234()
{
  result = qword_34CC0;
  if (!qword_34CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC0);
  }

  return result;
}

unint64_t sub_1D28C()
{
  result = qword_34CC8;
  if (!qword_34CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CC8);
  }

  return result;
}

unint64_t sub_1D2E4()
{
  result = qword_34CD0;
  if (!qword_34CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD0);
  }

  return result;
}

unint64_t sub_1D33C()
{
  result = qword_34CD8;
  if (!qword_34CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CD8);
  }

  return result;
}

unint64_t sub_1D394()
{
  result = qword_34CE0;
  if (!qword_34CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CE0);
  }

  return result;
}

unint64_t sub_1D3EC()
{
  result = qword_34CE8;
  if (!qword_34CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CE8);
  }

  return result;
}

unint64_t sub_1D444()
{
  result = qword_34CF0;
  if (!qword_34CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CF0);
  }

  return result;
}

unint64_t sub_1D49C()
{
  result = qword_34CF8;
  if (!qword_34CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CF8);
  }

  return result;
}

unint64_t sub_1D4F4()
{
  result = qword_34D00;
  if (!qword_34D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D00);
  }

  return result;
}

unint64_t sub_1D54C()
{
  result = qword_34D08;
  if (!qword_34D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D08);
  }

  return result;
}

unint64_t sub_1D5A4()
{
  result = qword_34D10;
  if (!qword_34D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D10);
  }

  return result;
}

unint64_t sub_1D5FC()
{
  result = qword_34D18;
  if (!qword_34D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D18);
  }

  return result;
}

unint64_t sub_1D654()
{
  result = qword_34D20;
  if (!qword_34D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D20);
  }

  return result;
}

__n128 sub_1D77C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D7A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D7FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D87C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0x6B63616274736F70;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7463617265746E69;
    if (a1 != 5)
    {
      v7 = 0x69737265766E6F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449656C646E7562;
    v2 = 0x6C7074656B72616DLL;
    v3 = 0x4449656372756F73;
    if (a1 != 3)
    {
      v3 = 0x437972746E756F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B63616274736F70;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D9F4(void *a1)
{
  v3 = v1;
  v5 = sub_1F7C(&qword_34D60, &qword_27A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1B7D8(a1, a1[3]);
  sub_1E918();
  sub_249F8();
  LOBYTE(v10) = 0;
  sub_24908();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_24908();
    LOBYTE(v10) = 2;
    sub_24908();
    LOBYTE(v10) = 3;
    sub_24908();
    LOBYTE(v10) = 4;
    sub_24908();
    LOBYTE(v10) = *(v3 + 80);
    v11 = 5;
    sub_1EAF4();
    sub_24918();
    LOBYTE(v10) = *(v3 + 81);
    v11 = 6;
    sub_1EB48();
    sub_24918();
    LOBYTE(v10) = *(v3 + 82);
    v11 = 7;
    sub_1EB9C();
    sub_24918();
    LOBYTE(v10) = 8;
    sub_24908();
    v10 = *(v3 + 104);
    v11 = 9;
    sub_1F7C(&qword_346F0, &qword_257F8);
    sub_1EBF0(&qword_34D80, sub_1EC68, &protocol conformance descriptor for <A> [A]);
    sub_24918();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DD60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DE78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DD94(uint64_t a1)
{
  v2 = sub_1E918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1DDD0(uint64_t a1)
{
  v2 = sub_1E918();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1DE0C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E1D0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1DE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24958() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEB000000004C5255 || (sub_24958() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361 || (sub_24958() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xEC00000074786554 || (sub_24958() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_24958() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (sub_24958() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69737265766E6F63 && a2 == 0xEE00657079546E6FLL || (sub_24958() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000002C210 == a2 || (sub_24958() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000002C230 == a2 || (sub_24958() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xE900000000000073)
  {

    return 9;
  }

  else
  {
    v6 = sub_24958();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E1D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1F7C(&qword_34D28, &unk_279F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  sub_1B7D8(a1, a1[3]);
  sub_1E918();
  sub_249E8();
  if (v2)
  {
    return sub_1B870(a1);
  }

  LOBYTE(v54[0]) = 0;
  v10 = sub_248A8();
  v46 = v11;
  LOBYTE(v54[0]) = 1;
  v12 = sub_248A8();
  v45 = v13;
  v14 = v12;
  LOBYTE(v54[0]) = 2;
  v41 = sub_248A8();
  v44 = v15;
  LOBYTE(v54[0]) = 3;
  v39 = sub_248A8();
  v40 = v14;
  v43 = v16;
  LOBYTE(v54[0]) = 4;
  v37 = sub_248A8();
  v42 = v17;
  LOBYTE(v47) = 5;
  sub_1E96C();
  sub_248B8();
  v18 = v54[0];
  LOBYTE(v47) = 6;
  sub_1E9C0();
  sub_248B8();
  v38 = 0;
  v19 = LOBYTE(v54[0]);
  LOBYTE(v47) = 7;
  sub_1EA14();
  v20 = v38;
  sub_248B8();
  if (v20)
  {
    v38 = v20;
    (*(v6 + 8))(v8, v5);
    sub_1B870(a1);
    v22 = 0;
  }

  else
  {
    v36 = v19;
    v35 = LOBYTE(v54[0]);
    LOBYTE(v54[0]) = 8;
    v34 = sub_248A8();
    v38 = 0;
    v23 = v21;
    sub_1F7C(&qword_346F0, &qword_257F8);
    v61 = 9;
    sub_1EBF0(&qword_34D50, sub_1EA68, &protocol conformance descriptor for <A> [A]);
    v24 = v38;
    sub_248B8();
    v38 = v24;
    if (!v24)
    {
      (*(v6 + 8))(v8, v5);
      v33 = v62;
      *&v47 = v10;
      v25 = v46;
      *(&v47 + 1) = v46;
      *&v48 = v40;
      v26 = v45;
      *(&v48 + 1) = v45;
      *&v49 = v41;
      v27 = v44;
      *(&v49 + 1) = v44;
      *&v50 = v39;
      v28 = v43;
      *(&v50 + 1) = v43;
      *&v51 = v37;
      *(&v51 + 1) = v42;
      LOBYTE(v52) = v18;
      BYTE1(v52) = v36;
      BYTE2(v52) = v35;
      *(&v52 + 1) = v34;
      *&v53 = v23;
      *(&v53 + 1) = v62;
      sub_1EABC(&v47, v54);
      sub_1B870(a1);
      v54[0] = v10;
      v54[1] = v25;
      v54[2] = v40;
      v54[3] = v26;
      v54[4] = v41;
      v54[5] = v27;
      v54[6] = v39;
      v54[7] = v28;
      v54[8] = v37;
      v54[9] = v42;
      v55 = v18;
      v56 = v36;
      v57 = v35;
      v58 = v34;
      v59 = v23;
      v60 = v33;
      result = sub_18EEC(v54);
      v29 = v52;
      a2[4] = v51;
      a2[5] = v29;
      a2[6] = v53;
      v30 = v48;
      *a2 = v47;
      a2[1] = v30;
      v31 = v50;
      a2[2] = v49;
      a2[3] = v31;
      return result;
    }

    (*(v6 + 8))(v8, v5);
    sub_1B870(a1);
    v22 = 1;
  }

  if (v22)
  {
  }

  return result;
}

unint64_t sub_1E918()
{
  result = qword_34D30;
  if (!qword_34D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D30);
  }

  return result;
}

unint64_t sub_1E96C()
{
  result = qword_34D38;
  if (!qword_34D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D38);
  }

  return result;
}

unint64_t sub_1E9C0()
{
  result = qword_34D40;
  if (!qword_34D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D40);
  }

  return result;
}

unint64_t sub_1EA14()
{
  result = qword_34D48;
  if (!qword_34D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D48);
  }

  return result;
}

unint64_t sub_1EA68()
{
  result = qword_34D58;
  if (!qword_34D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D58);
  }

  return result;
}

unint64_t sub_1EAF4()
{
  result = qword_34D68;
  if (!qword_34D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D68);
  }

  return result;
}

unint64_t sub_1EB48()
{
  result = qword_34D70;
  if (!qword_34D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D70);
  }

  return result;
}

unint64_t sub_1EB9C()
{
  result = qword_34D78;
  if (!qword_34D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D78);
  }

  return result;
}

uint64_t sub_1EBF0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_26B8(&qword_346F0, &qword_257F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1EC68()
{
  result = qword_34D88;
  if (!qword_34D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostbackConfigurationCache.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostbackConfigurationCache.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1EE10()
{
  result = qword_34D90;
  if (!qword_34D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D90);
  }

  return result;
}

unint64_t sub_1EE68()
{
  result = qword_34D98;
  if (!qword_34D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34D98);
  }

  return result;
}

unint64_t sub_1EEC0()
{
  result = qword_34DA0[0];
  if (!qword_34DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_34DA0);
  }

  return result;
}

uint64_t sub_1EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1EF5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1EF70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1EFB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1F09C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = sub_24538();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  sub_26B8(&qword_34650, &qword_256C8);
  v8 = sub_24128();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v23 = &v22 - v12;
  v32 = v2[2];
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v3;
  v14 = v2[1];
  *(v13 + 32) = *v2;
  *(v13 + 48) = v14;
  *(v13 + 64) = v2[2];
  v26 = v4;
  v27 = v3;
  v28 = v2;

  sub_465C(&v32, &v31, &qword_34E28, &qword_27C00);
  sub_24528();
  v31 = v32;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_244F8();
  WitnessTable = swift_getWitnessTable();
  v16 = v22;
  sub_244A8();
  (*(v24 + 8))(v7, v5);
  v17 = sub_1FD30();
  v29 = WitnessTable;
  v30 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v19 = v23;
  v18(v23, v16, v8);
  v20 = *(v9 + 8);
  v20(v16, v8);
  v18(v25, v19, v8);
  return (v20)(v19, v8);
}

uint64_t sub_1F3E4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1F7C(&qword_34E30, &qword_27C08);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v15 = a1[2];
  v16 = v15;
  v14[15] = 1;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_24508();
  v9 = sub_247D8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_247B8();

  sub_465C(&v16, &v15, &qword_34E28, &qword_27C00);
  v10 = sub_247A8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = a1[1];
  *(v11 + 48) = *a1;
  *(v11 + 64) = v12;
  *(v11 + 80) = a1[2];
  sub_1F884(0, 0, v8, &unk_27C18, v11);
}

uint64_t sub_1F5A4(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v4[4] = a4;
  v4[5] = sub_247B8();
  v4[6] = sub_247A8();
  v8 = (*a4 + **a4);
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_1F6B0;

  return v8();
}

uint64_t sub_1F6B0()
{

  v1 = sub_24798();

  return _swift_task_switch(sub_1F7EC, v1, v0);
}

uint64_t sub_1F7EC()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 32);
  *(v0 + 64) = 0;
  sub_1F7C(&qword_34E28, &qword_27C00);
  sub_24508();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1F7C(&qword_34E30, &qword_27C08);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_465C(a3, v25 - v10, &qword_34E30, &qword_27C08);
  v12 = sub_247D8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1FEA8(v11);
  }

  else
  {
    sub_247C8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24798();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_246C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1FEA8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1FEA8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1FB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v9 + 16))();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_1FCD0()
{

  return swift_deallocObject();
}

unint64_t sub_1FD30()
{
  result = qword_34648;
  if (!qword_34648)
  {
    sub_26B8(&qword_34650, &qword_256C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34648);
  }

  return result;
}

uint64_t sub_1FD94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1FDE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4440;

  return sub_1F5A4(a1, v4, v5, (v1 + 48));
}

uint64_t sub_1FEA8(uint64_t a1)
{
  v2 = sub_1F7C(&qword_34E30, &qword_27C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1FF10(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20008;

  return v6(a1);
}

uint64_t sub_20008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4750;

  return sub_1FF10(a1, v4);
}

uint64_t sub_201B8()
{

  return swift_deallocObject();
}

uint64_t sub_201F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_4440;

  return sub_1FF10(a1, v4);
}

uint64_t sub_202D8(void *a1)
{
  sub_24538();
  sub_26B8(&qword_34650, &qword_256C8);
  sub_24128();
  swift_getWitnessTable();
  sub_1FD30();
  return swift_getWitnessTable();
}

void sub_20384()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  sub_41DC();
  v2 = sub_24808();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v18._countAndFlagsBits = 0x800000000002C2E0;
  v20._object = 0x800000000002C2C0;
  v20._countAndFlagsBits = 0xD000000000000015;
  v21.value._countAndFlagsBits = 0;
  v21.value._object = 0;
  v4.super.isa = v3;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_23EA8(v20, v21, v4, v22, 0xD00000000000002BLL, v18);

  v5 = sub_246A8();

  [v1 setTitle:v5];

  type metadata accessor for ConfigurePostbacksState(0);
  swift_allocObject();
  sub_12D98();
  sub_244E8();
  _s33AdAttributionKitDeveloperSettings26DevelopmentPostbacksDetailV18_isBundleIDFocused33_EF722FB03566D159747AA8BC9A477F967SwiftUI10FocusStateVySbGvpfi_0();
  v6 = objc_allocWithZone(sub_1F7C(qword_34E60, qword_27C98));
  v7 = sub_24248();
  v8 = [v7 view];
  if (!v8)
  {
    v9 = v7;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 addSubview:v9];

    v12 = [v1 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;

      [v9 setFrame:{0.0, 0.0, v15, v17}];
      [v9 setAutoresizingMask:18];
      [v1 addChildViewController:v7];
      [v7 didMoveToParentViewController:v1];

LABEL_8:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20788()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_207EC(uint64_t a1)
{
  sub_245E8();
  if (v1 <= 0x3F)
  {
    sub_20C80();
    if (v2 <= 0x3F)
    {
      sub_20CD0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2089C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((((((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-33 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_27;
      }
    }

LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 32) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    if ((*(a1 + 16) >> 1) > 0x80000000)
    {
      return -(*(a1 + 16) >> 1);
    }

    return 0;
  }

  if (!v15)
  {
    goto LABEL_31;
  }

  v16 = *(a1 + v10);
  if (!v16)
  {
    goto LABEL_31;
  }

LABEL_27:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_20A34(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          result[2] = 0;
          result[3] = 0;
          *result = a2 & 0x7FFFFFFF;
          result[1] = 0;
        }

        else
        {
          *result = 0;
          result[1] = 0;
          result[2] = 2 * -a2;
          result[3] = 0;
        }
      }

      else
      {
        v18 = *(v5 + 56);
        v19 = (v8 + ((((result + (v8 | 7) + 32) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v18(v19);
      }

      return result;
    }
  }

  if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((-2 - ((((-33 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_20C80()
{
  result = qword_34EE8;
  if (!qword_34EE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_34EE8);
  }

  return result;
}

void sub_20CD0(uint64_t a1)
{
  if (!qword_34EF0)
  {
    sub_26B8(&qword_34EF8, qword_27CD0);
    v1 = sub_24818();
    if (!v2)
    {
      atomic_store(v1, &qword_34EF0);
    }
  }
}

uint64_t sub_20D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v9(v8);
  return sub_24638();
}

uint64_t sub_20E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v8();
  return sub_24108();
}

uint64_t sub_20F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1 + 5;
  v39 = a1 + 7;
  v37 = a1[3];
  v36 = sub_240F8();
  v3 = a1[2];
  v51 = sub_24778();
  v52 = v3;
  v4 = v3;
  v53 = v37;
  WitnessTable = swift_getWitnessTable();
  v55 = a1[6];
  sub_24608();
  v35 = a1[8];
  v57 = v35;
  v56 = swift_getWitnessTable();
  v34 = v55;
  sub_24558();
  sub_24198();
  v5 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v5;
  WitnessTable = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = swift_getOpaqueTypeMetadata2();
  v51 = OpaqueTypeMetadata2;
  v52 = OpaqueTypeConformance2;
  v9 = swift_getOpaqueTypeConformance2();
  v10 = *(v55 + 8);
  v51 = v8;
  v52 = v4;
  v32 = v4;
  v53 = v9;
  WitnessTable = v10;
  swift_getOpaqueTypeMetadata2();
  v33 = a1[4];
  sub_24648();
  v51 = v8;
  v52 = v4;
  v53 = v9;
  WitnessTable = v10;
  v11 = swift_getOpaqueTypeConformance2();
  v31 = a1[9];
  v48 = &protocol witness table for EmptyView;
  v49 = v11;
  v50 = v31;
  swift_getWitnessTable();
  sub_24328();
  swift_getWitnessTable();
  v12 = swift_getOpaqueTypeMetadata2();
  v14 = v35;
  v13 = v36;
  v46 = &protocol witness table for Text;
  v47 = v35;
  v15 = swift_getWitnessTable();
  v16 = swift_getOpaqueTypeConformance2();
  v51 = v36;
  v52 = v12;
  v53 = v15;
  WitnessTable = v16;
  v17 = sub_24118();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v30 - v22;
  *&v25 = v32;
  *&v24 = v33;
  *(&v24 + 1) = *v38;
  *(&v25 + 1) = v37;
  *&v26 = v34;
  *(&v26 + 1) = *v39;
  v44[1] = v25;
  v44[2] = v24;
  *&v27 = v14;
  *(&v27 + 1) = v31;
  v44[3] = v26;
  v44[4] = v27;
  v45 = v40;
  v42[1] = v25;
  v42[2] = v24;
  v42[3] = v26;
  v42[4] = v27;
  v43 = v40;
  sub_20E50(sub_234EC, v44, sub_23504, v42, v13, v12, v15, v16);
  swift_getWitnessTable();
  sub_2037C();
  v28 = *(v18 + 8);
  v28(v21, v17);
  sub_2037C();
  return (v28)(v23, v17);
}

uint64_t sub_21424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v54 = a7;
  v52 = a5;
  v51 = a3;
  v53 = a1;
  v55 = a9;
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  v76 = a8;
  v69 = a6;
  WitnessTable = swift_getWitnessTable();
  v49 = a6;
  sub_24558();
  sub_24198();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v14 = sub_24648();
  v73 = &protocol witness table for EmptyView;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = a10;
  v44 = v14;
  v41 = swift_getWitnessTable();
  v65 = &type metadata for Never;
  v66 = v14;
  v67 = &protocol witness table for Never;
  v68 = v41;
  v15 = sub_24328();
  v42 = v15;
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v43 = swift_getWitnessTable();
  v65 = v15;
  v66 = v43;
  v45 = &opaque type descriptor for <<opaque return type of View.navigationTitle(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v18 = __chkstk_darwin(OpaqueTypeMetadata2);
  v39 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v40 = &v38 - v20;
  v56 = a2;
  v21 = v51;
  v57 = v51;
  v22 = a4;
  v58 = a4;
  v23 = v52;
  v24 = v49;
  v59 = v52;
  v60 = v49;
  v25 = v54;
  v26 = v50;
  v61 = v54;
  v62 = v50;
  v63 = a10;
  v64 = v53;
  sub_24318();
  v65 = a2;
  v66 = v21;
  v67 = v22;
  v68 = v23;
  v69 = v24;
  WitnessTable = v25;
  v71 = v26;
  v72 = a10;
  type metadata accessor for PickerDetail(0, &v65);
  v27 = sub_22FE8();
  v29 = v28;
  LOBYTE(v26) = v30;
  v31 = v39;
  v32 = v42;
  v33 = v43;
  sub_243F8();
  sub_439C(v27, v29, v26 & 1);

  (*(v48 + 8))(v17, v32);
  v65 = v32;
  v66 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  v35 = OpaqueTypeMetadata2;
  sub_2037C();
  v36 = *(v47 + 8);
  v36(v31, v35);
  sub_2037C();
  return (v36)(v34, v35);
}

uint64_t sub_21A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v36 = a8;
  v37 = a3;
  v40 = a1;
  v41 = a7;
  v39 = a5;
  v42 = a9;
  v38 = a10;
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  v51 = a8;
  v49 = a6;
  WitnessTable = swift_getWitnessTable();
  v14 = a6;
  sub_24558();
  sub_24198();
  v15 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = v15;
  v48 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = swift_getOpaqueTypeMetadata2();
  v45 = OpaqueTypeMetadata2;
  v46 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v14;
  v33 = *(v14 + 8);
  v45 = v34;
  v46 = a2;
  v47 = v18;
  v48 = v33;
  v35 = swift_getOpaqueTypeMetadata2();
  v20 = a4;
  v21 = sub_24648();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v33 - v26;
  v44[2] = a2;
  v44[3] = v37;
  v44[4] = v20;
  v44[5] = v39;
  v28 = v19;
  v44[6] = v19;
  v44[7] = v41;
  v29 = v38;
  v44[8] = v36;
  v44[9] = v38;
  v44[10] = v40;
  v43[2] = a2;
  v43[3] = v37;
  v43[4] = v20;
  v43[5] = v39;
  v43[6] = v28;
  v43[7] = v41;
  v43[8] = v36;
  v43[9] = v38;
  v43[10] = v40;
  v45 = v34;
  v46 = a2;
  v47 = v18;
  v48 = v33;
  v30 = swift_getOpaqueTypeConformance2();
  sub_20D80(sub_23608, v44, sub_23620, v43, v35, v20, v30, v29);
  v44[11] = &protocol witness table for EmptyView;
  v44[12] = v30;
  v44[13] = v29;
  swift_getWitnessTable();
  sub_2037C();
  v31 = *(v22 + 8);
  v31(v25, v21);
  sub_2037C();
  return (v31)(v27, v21);
}

uint64_t sub_21DFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v105 = a7;
  v104 = a5;
  v103 = a4;
  v93 = a1;
  v99 = a9;
  v102 = a10;
  v116 = a2;
  v117 = a3;
  v101 = a3;
  v118 = a4;
  v119 = a5;
  v120 = a6;
  v121 = a7;
  v122 = a8;
  v123 = a10;
  v100 = a8;
  v14 = type metadata accessor for PickerDetail(0, &v116);
  v67 = v14;
  v96 = *(v14 - 8);
  v97 = *(v96 + 64);
  v15 = __chkstk_darwin(v14);
  v95 = &v64 - v16;
  v98 = *(a2 - 1);
  __chkstk_darwin(v15);
  v94 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24198();
  v92 = *(v18 - 8);
  __chkstk_darwin(v18);
  v91 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_245E8();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v64 - v20;
  v21 = sub_24778();
  WitnessTable = swift_getWitnessTable();
  v116 = v21;
  v117 = a2;
  v118 = a3;
  v119 = WitnessTable;
  v120 = a6;
  v23 = sub_24608();
  v82 = v23;
  v115 = a8;
  v80 = swift_getWitnessTable();
  v116 = &type metadata for Text;
  v117 = a2;
  v118 = v23;
  v119 = &protocol witness table for Text;
  v120 = a6;
  v121 = v80;
  v24 = sub_24558();
  v87 = *(v24 - 8);
  __chkstk_darwin(v24);
  v79 = &v64 - v25;
  v26 = swift_getWitnessTable();
  v116 = v24;
  v117 = v18;
  v73 = v18;
  v118 = v26;
  v119 = &protocol witness table for InlinePickerStyle;
  v27 = v26;
  v74 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v72 = &v64 - v29;
  v116 = v24;
  v117 = v18;
  v118 = v27;
  v119 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeMetadata2;
  v68 = OpaqueTypeMetadata2;
  v116 = OpaqueTypeMetadata2;
  v117 = OpaqueTypeConformance2;
  v32 = OpaqueTypeConformance2;
  v69 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeMetadata2();
  v78 = v33;
  v86 = *(v33 - 8);
  __chkstk_darwin(v33);
  v70 = &v64 - v34;
  v116 = v31;
  v117 = v32;
  v77 = swift_getOpaqueTypeConformance2();
  v76 = *(a6 + 8);
  v116 = v33;
  v117 = a2;
  v118 = v77;
  v119 = v76;
  v83 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v84 = swift_getOpaqueTypeMetadata2();
  v85 = *(v84 - 8);
  v35 = __chkstk_darwin(v84);
  v71 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v75 = &v64 - v37;
  sub_24208();
  v65 = *(v14 + 84);
  v38 = v93;
  (*(v89 + 16))(v88, v93 + v65, v90);
  v106 = a2;
  v107 = v101;
  v108 = v103;
  v109 = v104;
  v66 = a6;
  v110 = a6;
  v111 = v105;
  v112 = v100;
  v113 = v102;
  v114 = v38;
  v39 = v79;
  sub_24548();
  v40 = v91;
  sub_24188();
  v41 = v72;
  v42 = v73;
  sub_243A8();
  (*(v92 + 8))(v40, v42);
  (*(v87 + 8))(v39, v24);
  v43 = v70;
  v44 = v68;
  sub_243D8();
  (*(v81 + 8))(v41, v44);
  v45 = v94;
  sub_24578();
  v46 = v96;
  v47 = v95;
  v48 = v67;
  (*(v96 + 16))(v95, v38, v67);
  v49 = v46;
  v50 = (*(v46 + 80) + 80) & ~*(v46 + 80);
  v51 = swift_allocObject();
  v52 = v101;
  *(v51 + 2) = a2;
  *(v51 + 3) = v52;
  v53 = v104;
  *(v51 + 4) = v103;
  *(v51 + 5) = v53;
  v54 = v105;
  *(v51 + 6) = v66;
  *(v51 + 7) = v54;
  v55 = v102;
  *(v51 + 8) = v100;
  *(v51 + 9) = v55;
  (*(v49 + 32))(&v51[v50], v47, v48);
  v56 = v71;
  v57 = v78;
  v58 = v77;
  v59 = v76;
  sub_244B8();

  (*(v98 + 8))(v45, a2);
  (*(v86 + 8))(v43, v57);
  v116 = v57;
  v117 = a2;
  v118 = v58;
  v119 = v59;
  swift_getOpaqueTypeConformance2();
  v60 = v75;
  v61 = v84;
  sub_2037C();
  v62 = *(v85 + 8);
  v62(v56, v61);
  sub_2037C();
  return (v62)(v60, v61);
}

uint64_t sub_2289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a7;
  v52 = a4;
  v57 = a1;
  v58 = a9;
  v51 = a10;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v73 = a7;
  v74 = a8;
  v75 = a10;
  v43 = a8;
  v56 = type metadata accessor for PickerDetail(0, &v68);
  v15 = *(v56 - 8);
  v54 = *(v15 + 64);
  __chkstk_darwin(v56);
  v17 = &v41 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v19 = sub_24778();
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v68 = v19;
  v69 = a2;
  v70 = a3;
  v71 = WitnessTable;
  v72 = a6;
  v42 = a6;
  v46 = sub_24608();
  v55 = *(v46 - 8);
  v20 = __chkstk_darwin(v46);
  v47 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = &v41 - v22;
  sub_24848();
  v44 = a5;
  swift_getAssociatedConformanceWitness();
  v68 = sub_24788();
  v59 = a2;
  v60 = a3;
  v23 = v52;
  v61 = v52;
  v62 = a5;
  v63 = a6;
  v24 = v53;
  v64 = v53;
  v65 = a8;
  v25 = v51;
  v66 = v51;
  KeyPath = swift_getKeyPath();
  v26 = v15;
  v27 = *(v15 + 16);
  v28 = v17;
  v29 = v56;
  v27(v17, v57, v56);
  v30 = (*(v26 + 80) + 80) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = a2;
  *(v31 + 3) = a3;
  v32 = v44;
  *(v31 + 4) = v23;
  *(v31 + 5) = v32;
  v33 = v42;
  *(v31 + 6) = v42;
  *(v31 + 7) = v24;
  v34 = v43;
  *(v31 + 8) = v43;
  *(v31 + 9) = v25;
  (*(v26 + 32))(&v31[v30], v28, v29);
  v35 = v47;
  sub_245F8(&v68, KeyPath, sub_23934, v31, v50, a3, WitnessTable, v33, v34);
  v67 = v34;
  v36 = v46;
  swift_getWitnessTable();
  v37 = v48;
  v38 = v35;
  sub_2037C();
  v39 = *(v55 + 8);
  v39(v38, v36);
  sub_2037C();
  return (v39)(v37, v36);
}

uint64_t sub_22D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a4 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v28 - v16;
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  v28[4] = v22;
  v28[5] = v23;
  v28[6] = a9;
  v28[7] = v24;
  v25 = type metadata accessor for PickerDetail(0, v28);
  (*(a2 + *(v25 + 88)))(a1);
  sub_2037C();
  v26 = *(v12 + 8);
  v26(v15, a4);
  sub_2037C();
  return (v26)(v17, a4);
}

uint64_t sub_22E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a4 - 8);
  v12 = __chkstk_darwin(a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v27 - v15;
  v27[0] = v17;
  v27[1] = v18;
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v27[5] = v22;
  v27[6] = v23;
  v27[7] = a9;
  v24 = type metadata accessor for PickerDetail(0, v27);
  (*(a1 + *(v24 + 92)))();
  sub_2037C();
  v25 = *(v11 + 8);
  v25(v14, a4);
  sub_2037C();
  return (v25)(v16, a4);
}

uint64_t sub_22FE8()
{
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
    sub_2359C();

    return sub_24358();
  }

  else
  {

    return sub_24348();
  }
}

uint64_t sub_23094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a7;
  v25 = a6;
  v24 = a1;
  v27 = a9;
  v15 = sub_240F8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v24 - v20;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v25;
  v42 = v26;
  v43 = a8;
  v44 = a10;
  v45 = v24;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v25;
  v33 = v26;
  v34 = a8;
  v35 = a10;
  v36 = v24;
  sub_240E8();
  v46 = &protocol witness table for Text;
  v47 = a8;
  swift_getWitnessTable();
  sub_2037C();
  v22 = *(v16 + 8);
  v22(v19, v15);
  sub_2037C();
  return (v22)(v21, v15);
}

uint64_t sub_232D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v32 = a5;
  v8 = *(a2 - 8);
  v30[1] = a4;
  v31 = v8;
  v9 = __chkstk_darwin(a1);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v9);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v30 - v17;
  v33[0] = v19;
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v22;
  v33[4] = v23;
  v33[5] = v24;
  v33[6] = v25;
  v33[7] = v26;
  v27 = *(a1 + *(type metadata accessor for PickerDetail(0, v33) + 88));
  sub_245E8();
  sub_24578();
  v27(v11);
  (*(v31 + 8))(v11, a2);
  sub_2037C();
  v28 = *(v13 + 8);
  v28(v16, a3);
  sub_2037C();
  return (v28)(v18, a3);
}

uint64_t sub_23534@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v9[0] = v1[1];
  v9[1] = v3;
  v4 = v1[4];
  v9[2] = v1[3];
  v9[3] = v4;
  type metadata accessor for PickerDetail(0, v9);
  result = sub_22FE8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_2359C()
{
  result = qword_34F00;
  if (!qword_34F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34F00);
  }

  return result;
}

uint64_t sub_23694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if ((a3 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_236E4(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v11 = v2[8];
  v10 = v2[9];
  v17 = v2[2];
  v4 = v17;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v11;
  v24 = v10;
  v12 = *(*(type metadata accessor for PickerDetail(0, &v17) - 8) + 80);
  v17 = v4;
  v18 = v5;
  v13 = (v12 + 80) & ~v12;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v11;
  v24 = v10;
  result = type metadata accessor for PickerDetail(0, &v17);
  v15 = (v2 + *(result + 96) + v13);
  if (*v15)
  {
    return (*v15)(a1, a2);
  }

  return result;
}

uint64_t sub_237D0()
{
  v1 = v0[2];
  v10[0] = v0[1];
  v9 = *&v10[0];
  v2 = v0[3];
  v3 = v0[4];
  v10[1] = v1;
  v10[2] = v2;
  v10[3] = v3;
  v4 = (type metadata accessor for PickerDetail(0, v10) - 8);
  v5 = (v0 + ((*(*v4 + 80) + 80) & ~*(*v4 + 80)));
  sub_23694(*v5, v5[1], v5[2], v5[3]);
  v6 = v5 + v4[23];

  v7 = sub_245E8();
  (*(*(v9 - 8) + 8))(&v6[*(v7 + 32)], v9);

  if (*(v5 + v4[26]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23934(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v13[0] = v1[2];
  v2 = v13[0];
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v9;
  v13[7] = v8;
  v10 = *(type metadata accessor for PickerDetail(0, v13) - 8);
  return sub_22D20(a1, v1 + ((*(v10 + 80) + 80) & ~*(v10 + 80)), v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_23A08(uint64_t *a1)
{
  sub_240F8();
  sub_24778();
  swift_getWitnessTable();
  sub_24608();
  swift_getWitnessTable();
  sub_24558();
  sub_24198();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24648();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24328();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_24118();
  return swift_getWitnessTable();
}

uint64_t sub_23D64()
{
  v0 = sub_24048();
  sub_23DE4(v0, qword_38D60);
  sub_17824(v0, qword_38D60);
  return sub_24038();
}

uint64_t *sub_23DE4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}