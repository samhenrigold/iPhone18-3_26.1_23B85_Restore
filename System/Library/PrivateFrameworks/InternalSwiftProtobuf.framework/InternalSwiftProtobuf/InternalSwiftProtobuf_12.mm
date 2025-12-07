uint64_t Google_Protobuf_Enum.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28);
  memcpy(v9, v10, v11);
  sub_1AC513D8C();
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC514628(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC513D8C();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559E00);
}

uint64_t Google_Protobuf_EnumValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    result = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_7();
        sub_1AC513C0C(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_36_0();
        v6();
        break;
      case 1:
        OUTLINED_FUNCTION_90_2();
        OUTLINED_FUNCTION_36_0();
        v5();
        break;
    }
  }

  return result;
}

void sub_1AC514828()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_0();
  if (v2)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_11_17();
    sub_1AC51EEB8();
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48D0](v3);
  }

  v4 = *(v1 + 24);
  if (!*(v4 + 16) || (sub_1AC50C78C(v4, 3), !v0))
  {
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    switch(v6 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_73();
        goto LABEL_12;
      case 2uLL:
        v7 = *(v5 + 16);
        v8 = *(v5 + 24);
LABEL_12:
        if (v7 != v8)
        {
          goto LABEL_13;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v6 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_13:
        sub_1AC51EC58();
        break;
    }
  }
}

void Google_Protobuf_EnumValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  OUTLINED_FUNCTION_29();
  if (!v8 || (OUTLINED_FUNCTION_9_6(), v9(), (v0 = v2) == 0))
  {
    if (!v4 || (v2 = v0, OUTLINED_FUNCTION_25_7(), v10(), !v0))
    {
      if (!*(v6 + 16) || (v11 = *(v3 + 280), sub_1AC4847F8(), OUTLINED_FUNCTION_28(), v11(), !v2))
      {
        v12 = OUTLINED_FUNCTION_93_0();
        sub_1AC4578F4(v12, v13);
        OUTLINED_FUNCTION_36_0();
        UnknownStorage.traverse<A>(visitor:)(v14, v15, v16);
        sub_1AC4513F8(v5, v7);
      }
    }
  }
}

uint64_t static Google_Protobuf_EnumValue.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (!v8 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_19();
  if ((sub_1AC477E08(v9, v10) & 1) == 0)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v11, v12);
  sub_1AC4578F4(v6, v7);
  v13 = OUTLINED_FUNCTION_44();
  v14 = MEMORY[0x1AC5B4070](v13);
  sub_1AC4513F8(v6, v7);
  v15 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v15, v16);
  return v14 & 1;
}

uint64_t Google_Protobuf_EnumValue.hashValue.getter()
{
  OUTLINED_FUNCTION_91_2(v38);
  v0 = OUTLINED_FUNCTION_232();
  v8 = OUTLINED_FUNCTION_17_17(v0, v1, v2, v3, v4, v5, v6, v7, v23, v25, v27);
  memcpy(v8, v9, v10);
  sub_1AC514828();
  v19 = OUTLINED_FUNCTION_18_13(v11, v12, v13, v14, v15, v16, v17, v18, v24, v26, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  memcpy(v19, v20, v21);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC514C38(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC514828();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Option._protobuf_nameMap.getter()
{
  if (qword_1EB557F50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559E20);
}

uint64_t Google_Protobuf_Option.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    result = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_7();
      sub_1AC514E08(v6, v7, v8, v9);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_90_2();
      OUTLINED_FUNCTION_36_0();
      v5();
    }
  }

  return result;
}

uint64_t sub_1AC514E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC472D54();
  return v7(a2 + 32, &type metadata for Google_Protobuf_Any, v8, a3, a4);
}

void sub_1AC514E88(uint64_t a1)
{
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_175();
    sub_1AC51EEB8();
  }

  v5 = v1[6];
  if (v5)
  {
    v7 = v1[4];
    v6 = v1[5];
    MEMORY[0x1AC5B48A0](2);
    sub_1AC4578F4(v7, v6);

    sub_1AC476370(a1);
    sub_1AC48532C(v7, v6, v5);
  }

  v8 = v1[2];
  v9 = v1[3];
  switch(v9 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_12;
    case 2uLL:
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);
LABEL_12:
      if (v10 != v11)
      {
        goto LABEL_13;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v9 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_13:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_Option.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v17 = v1[2];
  v18 = *(v1 + 6);
  OUTLINED_FUNCTION_29();
  if (!v4 || (OUTLINED_FUNCTION_9_6(), v5(), (v0 = v2) == 0))
  {
    OUTLINED_FUNCTION_25_7();
    sub_1AC515060(v6, v7, v8, v9);
    if (!v0)
    {
      v19 = v16;
      v14 = v16;
      sub_1AC4848F4(&v19, &v13);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v10, v11, v12);
      sub_1AC4513F8(v14, *(&v14 + 1));
    }
  }
}

uint64_t sub_1AC515060(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC472D54();
    return v7(&v9, 2, &type metadata for Google_Protobuf_Any, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_Option.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_76_0(a1);
  v4 = *(v3 + 48);
  v5 = v2[6];
  v6 = v1 == *v2 && *(v3 + 8) == v2[1];
  if (!v6 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_29_8();
  if (!v4)
  {
    sub_1AC4852EC(v7, v8, 0);
    if (!v5)
    {
      v55 = OUTLINED_FUNCTION_44_6();
      sub_1AC4852EC(v55, v56, 0);
      v57 = OUTLINED_FUNCTION_29_8();
      sub_1AC48532C(v57, v58, 0);
      goto LABEL_19;
    }

    v14 = OUTLINED_FUNCTION_31_7();
    sub_1AC4852EC(v14, v15, v16);
    goto LABEL_13;
  }

  if (!v5)
  {
    sub_1AC4852EC(v7, v8, v4);
    v17 = OUTLINED_FUNCTION_44_6();
    sub_1AC4852EC(v17, v18, 0);
    v19 = OUTLINED_FUNCTION_15_15();
    sub_1AC4852EC(v19, v20, v21);
    v22 = OUTLINED_FUNCTION_29_8();
    sub_1AC4513F8(v22, v23);

LABEL_13:
    v24 = OUTLINED_FUNCTION_15_15();
    sub_1AC48532C(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_31_7();
LABEL_14:
    sub_1AC48532C(v27, v28, v29);
    return 0;
  }

  if (v4 == v5)
  {
    sub_1AC4852EC(v7, v8, v4);
    v9 = OUTLINED_FUNCTION_44_6();
    sub_1AC4852EC(v9, v10, v4);
    v11 = OUTLINED_FUNCTION_15_15();
    sub_1AC4852EC(v11, v12, v13);
    goto LABEL_16;
  }

  sub_1AC4852EC(v7, v8, v4);
  v30 = OUTLINED_FUNCTION_31_7();
  sub_1AC4852EC(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_15_15();
  sub_1AC4852EC(v33, v34, v35);
  if ((sub_1AC472EE4(v5) & 1) == 0)
  {
    v69 = OUTLINED_FUNCTION_31_7();
    sub_1AC48532C(v69, v70, v71);
    v72 = OUTLINED_FUNCTION_29_8();
    sub_1AC4513F8(v72, v73);

    v27 = OUTLINED_FUNCTION_15_15();
    goto LABEL_14;
  }

LABEL_16:
  v36 = OUTLINED_FUNCTION_29_8();
  sub_1AC4578F4(v36, v37);
  v38 = OUTLINED_FUNCTION_44_6();
  sub_1AC4578F4(v38, v39);
  v40 = OUTLINED_FUNCTION_29_8();
  v41 = MEMORY[0x1AC5B4070](v40);
  v42 = OUTLINED_FUNCTION_44_6();
  sub_1AC4513F8(v42, v43);
  v44 = OUTLINED_FUNCTION_29_8();
  sub_1AC4513F8(v44, v45);
  v46 = OUTLINED_FUNCTION_31_7();
  sub_1AC48532C(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_29_8();
  sub_1AC4513F8(v49, v50);

  v51 = OUTLINED_FUNCTION_15_15();
  sub_1AC48532C(v51, v52, v53);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v59 = OUTLINED_FUNCTION_48();
  sub_1AC4578F4(v59, v60);
  v61 = OUTLINED_FUNCTION_100();
  sub_1AC4578F4(v61, v62);
  v63 = OUTLINED_FUNCTION_11_17();
  v64 = MEMORY[0x1AC5B4070](v63);
  v65 = OUTLINED_FUNCTION_100();
  sub_1AC4513F8(v65, v66);
  v67 = OUTLINED_FUNCTION_48();
  sub_1AC4513F8(v67, v68);
  return v64 & 1;
}

uint64_t Google_Protobuf_Option.hashValue.getter()
{
  OUTLINED_FUNCTION_91_2(v30);
  v31 = *(v0 + 48);
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_17_17(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28[0]);
  memcpy(v9, v10, v11);
  sub_1AC514E88(v28);
  v20 = OUTLINED_FUNCTION_18_13(v12, v13, v14, v15, v16, v17, v18, v19, v25, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v29);
  memcpy(v20, v21, v22);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC515450(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = v1[2];
  v9 = *(v1 + 6);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC514E88(__dst);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

unint64_t sub_1AC5154E8()
{
  result = qword_1EB559E48;
  if (!qword_1EB559E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E48);
  }

  return result;
}

unint64_t sub_1AC51553C()
{
  result = qword_1EB559E50;
  if (!qword_1EB559E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E50);
  }

  return result;
}

unint64_t sub_1AC515590()
{
  result = qword_1EB559E58;
  if (!qword_1EB559E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E58);
  }

  return result;
}

unint64_t sub_1AC515610()
{
  result = qword_1EB559E60;
  if (!qword_1EB559E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E60);
  }

  return result;
}

unint64_t sub_1AC515664()
{
  result = qword_1EB559E68;
  if (!qword_1EB559E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E68);
  }

  return result;
}

unint64_t sub_1AC5156EC()
{
  result = qword_1EB559E80;
  if (!qword_1EB559E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E80);
  }

  return result;
}

unint64_t sub_1AC51576C()
{
  result = qword_1EB559E88;
  if (!qword_1EB559E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E88);
  }

  return result;
}

unint64_t sub_1AC5157C0()
{
  result = qword_1EB559E90;
  if (!qword_1EB559E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559E90);
  }

  return result;
}

unint64_t sub_1AC515848()
{
  result = qword_1EB559EA8;
  if (!qword_1EB559EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EA8);
  }

  return result;
}

unint64_t sub_1AC5158C8()
{
  result = qword_1EB559EB0;
  if (!qword_1EB559EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EB0);
  }

  return result;
}

unint64_t sub_1AC51591C()
{
  result = qword_1EB559EB8;
  if (!qword_1EB559EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EB8);
  }

  return result;
}

unint64_t sub_1AC5159A4()
{
  result = qword_1EB559ED0;
  if (!qword_1EB559ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559ED0);
  }

  return result;
}

unint64_t sub_1AC5159F8(uint64_t a1)
{
  result = sub_1AC515A20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515A20()
{
  result = qword_1EB559ED8;
  if (!qword_1EB559ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559ED8);
  }

  return result;
}

unint64_t sub_1AC515AA0()
{
  result = qword_1EB559EE0;
  if (!qword_1EB559EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EE0);
  }

  return result;
}

unint64_t sub_1AC515AF4()
{
  result = qword_1EB559EE8;
  if (!qword_1EB559EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EE8);
  }

  return result;
}

unint64_t sub_1AC515B4C()
{
  result = qword_1EB559EF0;
  if (!qword_1EB559EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EF0);
  }

  return result;
}

unint64_t sub_1AC515BA0(uint64_t a1)
{
  result = sub_1AC515BC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515BC8()
{
  result = qword_1EB559EF8;
  if (!qword_1EB559EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559EF8);
  }

  return result;
}

unint64_t sub_1AC515C48()
{
  result = qword_1EB559F00;
  if (!qword_1EB559F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F00);
  }

  return result;
}

unint64_t sub_1AC515CA0()
{
  result = qword_1EB559F08;
  if (!qword_1EB559F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F08);
  }

  return result;
}

unint64_t sub_1AC515CF4(uint64_t a1)
{
  result = sub_1AC515D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515D1C()
{
  result = qword_1EB559F10;
  if (!qword_1EB559F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F10);
  }

  return result;
}

unint64_t sub_1AC515D9C()
{
  result = qword_1EB559F18;
  if (!qword_1EB559F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F18);
  }

  return result;
}

unint64_t sub_1AC515DF0()
{
  result = qword_1EB559F20;
  if (!qword_1EB559F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F20);
  }

  return result;
}

unint64_t sub_1AC515E48()
{
  result = qword_1EB559F28;
  if (!qword_1EB559F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F28);
  }

  return result;
}

unint64_t sub_1AC515E9C(uint64_t a1)
{
  result = sub_1AC515EC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC515EC4()
{
  result = qword_1EB559F30;
  if (!qword_1EB559F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F30);
  }

  return result;
}

unint64_t sub_1AC515F44()
{
  result = qword_1EB559F38;
  if (!qword_1EB559F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F38);
  }

  return result;
}

unint64_t sub_1AC515F9C()
{
  result = qword_1EB559F40;
  if (!qword_1EB559F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F40);
  }

  return result;
}

unint64_t sub_1AC515FF0(uint64_t a1)
{
  result = sub_1AC516018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC516018()
{
  result = qword_1EB559F48;
  if (!qword_1EB559F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F48);
  }

  return result;
}

uint64_t sub_1AC516098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC5160D4()
{
  result = qword_1EB559F50;
  if (!qword_1EB559F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F50);
  }

  return result;
}

unint64_t sub_1AC51612C()
{
  result = qword_1EB559F58;
  if (!qword_1EB559F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F58);
  }

  return result;
}

uint64_t sub_1AC5161A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1AC5161E0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1AC51626C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1AC5162AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C4_AnyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC516354(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1AC516394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC516414(const void *a1, uint64_t a2)
{
  v19 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v18 = (v2 + 63) >> 6;

  v22 = 0;
  v6 = 0;
  if (v4)
  {
LABEL_8:
    while (1)
    {
      v8 = *(*(a2 + 48) + 16 * (__clz(__rbit64(v4)) | (v6 << 6)) + 8);
      OUTLINED_FUNCTION_96_2();
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = *(v9 + 24);
      v15 = v9[4];
      v14 = v9[5];

      v16 = OUTLINED_FUNCTION_93_0();
      sub_1AC48541C(v16, v17, v12, v13);
      sub_1AC4578F4(v15, v14);
      if (!v8)
      {
        break;
      }

      v25[0] = v10;
      v25[1] = v11;
      v25[2] = v12;
      v25[3] = v13;
      v25[4] = v15;
      v25[5] = v14;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1AC51EEB8();

      memcpy(v23, __dst, sizeof(v23));
      sub_1AC4F7938(v23);
      v4 &= v4 - 1;
      sub_1AC4DD16C(v25);
      memcpy(__dst, v23, sizeof(__dst));
      result = sub_1AC51F4C8();
      v22 ^= result;
      if (!v4)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    return MEMORY[0x1AC5B48A0](v22);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v18)
      {
        goto LABEL_11;
      }

      v4 = *(v19 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC5165E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_37_6(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return sub_1AC51F468();
}

void OUTLINED_FUNCTION_59_3()
{

  JUMPOUT(0x1AC5B48A0);
}

void *OUTLINED_FUNCTION_64_2(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

void *OUTLINED_FUNCTION_75_2(void *a1)
{

  return memcpy(a1, (v1 - 160), 0x48uLL);
}

void OUTLINED_FUNCTION_76_2()
{

  JUMPOUT(0x1AC5B48A0);
}

void *OUTLINED_FUNCTION_77_1(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0x48uLL);
}

void *OUTLINED_FUNCTION_79_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return memcpy(va, &a9, 0x48uLL);
}

void *OUTLINED_FUNCTION_83_2(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_84_2(uint64_t a1)
{

  return sub_1AC51F468();
}

unint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_1AC4848A0();
}

BOOL sub_1AC516844(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t UnknownStorage.data.getter()
{
  v1 = *v0;
  sub_1AC4578F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1AC5168CC(unsigned int a1)
{
  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC51691C()
{
  v4 = sub_1AC51F3B8();
  v5 = v0;
  MEMORY[0x1AC5B4340](46, 0xE100000000000000);
  v1 = sub_1AC51F3B8();
  MEMORY[0x1AC5B4340](v1);

  MEMORY[0x1AC5B4340](46, 0xE100000000000000);
  v2 = sub_1AC51F3B8();
  MEMORY[0x1AC5B4340](v2);

  qword_1EB559F60 = v4;
  *algn_1EB559F68 = v5;
  return result;
}

uint64_t static Version.versionString.getter()
{
  if (qword_1EB557F58 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB559F60;

  return v0;
}

_BYTE *storeEnumTagSinglePayload for Version(_BYTE *result, int a2, int a3)
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

uint64_t sub_1AC516B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for TextFormatEncodingVisitor, &off_1F211A548, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC516DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for BinaryEncodingVisitor, &off_1F211B110, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC4D0918(0, *(v33 + 16) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_1AC4D0918(v19 > 1, v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 16) = v22;
      v33 = v21;
      *(v21 + 8 * v20 + 32) = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_1AC4D001C(v35);
  v12 = v5;
  if (v5)
  {
LABEL_28:
    MEMORY[0x1AC5B4BA0](v12);

    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v35[0];
  v25 = *(v35[0] + 16);
  while (v25 != v23)
  {
    if (v23 >= *(v24 + 16))
    {
      goto LABEL_25;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_1AC45AA38(*(v24 + 8 * v23 + 32));
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_1AC47782C(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, v29, v28);
    __swift_destroy_boxed_opaque_existential_1(v35);
    ++v23;
  }
}

uint64_t sub_1AC517B20(int a1, unint64_t a2)
{
  v3 = a1;
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC5010CC(v3);
  sub_1AC45A774();
  v4 = *(*v2 + 16);
  result = sub_1AC45A85C(v4);
  v6 = *v2;
  *(v6 + 16) = v4 + 1;
  *(v6 + v4 + 32) = 10;
  *v2 = v6;
  return result;
}

uint64_t sub_1AC517BC8(unsigned int a1, unint64_t a2)
{
  v3 = a1;
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  sub_1AC500DF8(v3);
  sub_1AC45A774();
  v4 = *(*v2 + 16);
  result = sub_1AC45A85C(v4);
  v6 = *v2;
  *(v6 + 16) = v4 + 1;
  *(v6 + v4 + 32) = 10;
  *v2 = v6;
  return result;
}

uint64_t sub_1AC517C70(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = (8 * a2) | 5;
      }

      else
      {
        v7 = (8 * (a2 & 0x1FFFFFFF)) | 5;
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      *(v5 + 1) = v6;
      v5 += 5;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFloatField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v6)
    {
      break;
    }

    v8 = *v7++;
    (*(v2 + 8))(v5, v4, v2, v8);
    --v6;
  }

  while (!v3);
}

uint64_t sub_1AC517D40(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = (8 * a2) | 1;
      }

      else
      {
        v7 = (8 * (a2 & 0x1FFFFFFF)) | 1;
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      *(v5 + 1) = v6;
      v5 += 9;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedDoubleField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v6)
    {
      break;
    }

    v8 = *v7++;
    (*(v2 + 16))(v5, v4, v2, v8);
    --v6;
  }

  while (!v3);
}

uint64_t sub_1AC517E28(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 8;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

uint64_t sub_1AC517F7C(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

uint64_t sub_1AC518060(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      *v5 = v8;
      v10 = v5 + 1;
      if (v6 < 0x80)
      {
        LOBYTE(v11) = v6;
      }

      else
      {
        do
        {
          *v10++ = v6 | 0x80;
          v11 = v6 >> 7;
          v12 = v6 >> 14;
          v6 >>= 7;
        }

        while (v12);
      }

      ++v4;
      *v10 = v11;
      v5 = v10 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedUInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 8;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

uint64_t sub_1AC51815C(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 4 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      v10 = (2 * v6) ^ (v6 >> 63);
      *v5 = v8;
      v11 = v5 + 1;
      if (v10 < 0x80)
      {
        LOBYTE(v12) = v10;
      }

      else
      {
        do
        {
          *v11++ = v10 | 0x80;
          v12 = v10 >> 7;
          v13 = v10 >> 14;
          v10 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v11 = v12;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

uint64_t sub_1AC518260(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + 8 * v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      v10 = (2 * v6) ^ (v6 >> 63);
      *v5 = v8;
      v11 = v5 + 1;
      if (v10 < 0x80)
      {
        LOBYTE(v12) = v10;
      }

      else
      {
        do
        {
          *v11++ = v10 | 0x80;
          v12 = v10 >> 7;
          v13 = v10 >> 14;
          v10 >>= 7;
        }

        while (v13);
      }

      ++v4;
      *v11 = v12;
      v5 = v11 + 1;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSInt64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 8;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 8;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed32Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedSFixed64Field(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    v4 += 8;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

uint64_t sub_1AC5184C4(uint64_t result, int a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    do
    {
      v6 = *(result + 32 + v4);
      if (8 * (a2 & 0x1FFFFFFF) < 0x80)
      {
        LOBYTE(v8) = 8 * a2;
      }

      else
      {
        v7 = 8 * (a2 & 0x1FFFFFFF);
        do
        {
          *v5++ = v7 | 0x80;
          v8 = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }

      ++v4;
      *v5 = v8;
      v5[1] = v6;
      v5 += 2;
    }

    while (v4 != v3);
    *(v2 + 8) = v5;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBoolField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  OUTLINED_FUNCTION_0_37();
  do
  {
    if (!v3)
    {
      break;
    }

    ++v4;
    OUTLINED_FUNCTION_3_32();
    v5();
    --v3;
  }

  while (!v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedStringField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v4;
  v6 = v3;
  v13 = v2;
  v8 = *(value._rawValue + 2);
  v9 = (value._rawValue + 40);
  if (v8)
  {
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *(v6 + 112);

      v12(v10, v11, fieldNumber, v13, v6);
      if (v5)
      {
        break;
      }

      v9 += 2;
      if (!--v8)
      {
        return;
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Visitor.visitRepeatedBytesField(value:fieldNumber:)(Swift::OpaquePointer value, Swift::Int fieldNumber)
{
  v5 = v3;
  v12 = v2;
  v6 = *(value._rawValue + 2);
  v7 = (value._rawValue + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v5 + 120);
      sub_1AC4578F4(v8, *v7);
      v10(v8, v9, fieldNumber, v12, v5);
      if (v4)
      {
        break;
      }

      sub_1AC4513F8(v8, v9);
      v7 += 2;
      if (!--v6)
      {
        return;
      }
    }

    sub_1AC4513F8(v8, v9);
  }
}

uint64_t Visitor.visitRepeatedEnumField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_16(v14);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    v16 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16(v16);
    if (v8)
    {
      v17 = OUTLINED_FUNCTION_4_24();
      v18(v17);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v25 != 8)
      {
        __break(1u);
        return result;
      }

      v23 = OUTLINED_FUNCTION_7_20(result);
      v24(v23);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v19 = OUTLINED_FUNCTION_10_16();
    v20(v19);
    v21 = OUTLINED_FUNCTION_16_14();
    result = v22(v21);
    if (v6)
    {
      return result;
    }

    v7 = v26;
  }

  return result;
}

uint64_t Visitor.visitRepeatedGroupField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v14 = OUTLINED_FUNCTION_9_20(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_16(v14);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    v16 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16(v16);
    if (v8)
    {
      v17 = OUTLINED_FUNCTION_4_24();
      v18(v17);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v25 != 8)
      {
        __break(1u);
        return result;
      }

      v23 = OUTLINED_FUNCTION_7_20(result);
      v24(v23);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v19 = OUTLINED_FUNCTION_10_16();
    v20(v19);
    v21 = OUTLINED_FUNCTION_16_14();
    result = v22(v21);
    if (v6)
    {
      return result;
    }

    v7 = v26;
  }

  return result;
}

uint64_t sub_1AC518AF0(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  sub_1AC502478(a2);
  sub_1AC45FE50(": ", 2, 2);
  a3(a1);
  sub_1AC45A774();
  v6 = *(*v3 + 16);
  result = sub_1AC45A85C(v6);
  v8 = *v3;
  *(v8 + 16) = v6 + 1;
  *(v8 + v6 + 32) = 10;
  *v3 = v8;
  return result;
}

uint64_t sub_1AC518B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = sub_1AC459C7C(a2);
  if (!v5)
  {
    if (*(v4 + 56))
    {
      return a3(a1);
    }

    else
    {
      return a4(a1);
    }
  }

  return result;
}

uint64_t sub_1AC518C54(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v12 = v17;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v18;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if ((~LODWORD(v11) & 0x7F800000) != 0)
        {
          v15 = sub_1AC51F1A8();
          sub_1AC45FA3C(v15, v16);
        }

        else
        {
          if ((LODWORD(v11) & 0x7FFFFF) != 0)
          {
            v14 = "NaN";
          }

          else if (v11 >= 0.0)
          {
            v14 = "Infinity";
          }

          else
          {
            v14 = "-Infinity";
          }

          sub_1AC45FD18(v14);
        }

        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v19 = *(*v2 + 16);
    result = sub_1AC45A85C(v19);
    v20 = *v2;
    *(v20 + 16) = v19 + 1;
    *(v20 + v19 + 32) = 93;
    *v2 = v20;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC518E94(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v12 = v17;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v18;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if ((~*&v11 & 0x7FF0000000000000) != 0)
        {
          v15 = sub_1AC51F188();
          sub_1AC45FA3C(v15, v16);
        }

        else
        {
          if ((*&v11 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v14 = "NaN";
          }

          else if (v11 >= 0.0)
          {
            v14 = "Infinity";
          }

          else
          {
            v14 = "-Infinity";
          }

          sub_1AC45FD18(v14);
        }

        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v19 = *(*v2 + 16);
    result = sub_1AC45A85C(v19);
    v20 = *v2;
    *(v20 + 16) = v19 + 1;
    *(v20 + v19 + 32) = 93;
    *v2 = v20;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC5190BC(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          v13 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v13 = v17;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_1AC45A78C();
            v13 = v18;
          }

          *(v13 + 16) = v14 + 1;
          *(v13 + v14 + 32) = 44;
          *v2 = v13;
        }

        if ((v11 & 0x80000000) != 0)
        {
          v15 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v15 = v19;
          }

          v16 = *(v15 + 16);
          if (v16 >= *(v15 + 24) >> 1)
          {
            sub_1AC45A78C();
            v15 = v20;
          }

          *(v15 + 16) = v16 + 1;
          *(v15 + v16 + 32) = 45;
          *v2 = v15;
          v11 = -v11;
        }

        sub_1AC45FBF4(v11);
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v21 = *(*v2 + 16);
    result = sub_1AC45A85C(v21);
    v22 = *v2;
    *(v22 + 16) = v21 + 1;
    *(v22 + v21 + 32) = 93;
    *v2 = v22;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC5192C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_1AC459C7C(a2);
  if (v5 == 1)
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v7 = *(*v2 + 16);
    sub_1AC45A85C(v7);
    v8 = *v2;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = 91;
    *v2 = v8;
    *(v2 + 4) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          v14 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v14 = v18;
          }

          v15 = *(v14 + 16);
          if (v15 >= *(v14 + 24) >> 1)
          {
            sub_1AC45A78C();
            v14 = v19;
          }

          *(v14 + 16) = v15 + 1;
          *(v14 + v15 + 32) = 44;
          *v2 = v14;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          v16 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v16 = v20;
          }

          v17 = *(v16 + 16);
          if (v17 >= *(v16 + 24) >> 1)
          {
            sub_1AC45A78C();
            v16 = v21;
          }

          *(v16 + 16) = v17 + 1;
          *(v16 + v17 + 32) = 45;
          *v2 = v16;
          v12 = -v12;
        }

        sub_1AC45FBF4(v12);
        v10 = 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v22 = *(*v2 + 16);
    sub_1AC45A85C(v22);
    v23 = *v2;
    *(v23 + 16) = v22 + 1;
    *(v23 + v22 + 32) = 91;
    *v2 = v23;
    *(v2 + 4) = 256;
    v24 = *(a1 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = (a1 + 32);
      do
      {
        v28 = *v26++;
        v27 = v28;
        v29 = *(v23 + 16);
        if (v25)
        {
          v30 = v29 + 1;
          if (v29 >= *(v23 + 24) >> 1)
          {
            sub_1AC45A78C();
            v23 = v37;
          }

          *(v23 + 16) = v30;
          *(v23 + v29 + 32) = 44;
        }

        else
        {
          v30 = *(v23 + 16);
        }

        v31 = v30 + 1;
        if (v30 >= *(v23 + 24) >> 1)
        {
          sub_1AC45A78C();
          v23 = v34;
        }

        *(v23 + 16) = v31;
        *(v23 + v30 + 32) = 34;
        *v2 = v23;
        if ((v27 & 0x8000000000000000) != 0)
        {
          v32 = v30 + 2;
          if (v32 > *(v23 + 24) >> 1)
          {
            sub_1AC45A78C();
            v23 = v38;
          }

          *(v23 + 16) = v32;
          *(v23 + v31 + 32) = 45;
          *v2 = v23;
          v27 = -v27;
        }

        sub_1AC45FBF4(v27);
        v23 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v23 = v35;
        }

        v33 = *(v23 + 16);
        if (v33 >= *(v23 + 24) >> 1)
        {
          sub_1AC45A78C();
          v23 = v36;
        }

        *(v23 + 16) = v33 + 1;
        *(v23 + v33 + 32) = 34;
        *v2 = v23;
        v25 = 1;
        --v24;
      }

      while (v24);
    }
  }

  sub_1AC45A774();
  v39 = *(*v2 + 16);
  result = sub_1AC45A85C(v39);
  v40 = *v2;
  *(v40 + 16) = v39 + 1;
  *(v40 + v39 + 32) = 93;
  *v2 = v40;
  *(v2 + 4) = 44;
  return result;
}

uint64_t sub_1AC519688(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10++;
        v11 = v12;
        if (v9)
        {
          v13 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v13 = v15;
          }

          v14 = *(v13 + 16);
          if (v14 >= *(v13 + 24) >> 1)
          {
            sub_1AC45A78C();
            v13 = v16;
          }

          *(v13 + 16) = v14 + 1;
          *(v13 + v14 + 32) = 44;
          *v2 = v13;
        }

        sub_1AC45FBF4(v11);
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v17 = *(*v2 + 16);
    result = sub_1AC45A85C(v17);
    v18 = *v2;
    *(v18 + 16) = v17 + 1;
    *(v18 + v17 + 32) = 93;
    *v2 = v18;
    v2[4] = 44;
  }

  return result;
}

uint64_t sub_1AC519810(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  result = sub_1AC459C7C(a2);
  if (v5 == 1)
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v7 = *(*v2 + 16);
    sub_1AC45A85C(v7);
    v8 = *v2;
    *(v8 + 16) = v7 + 1;
    *(v8 + v7 + 32) = 91;
    *v2 = v8;
    *(v2 + 4) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          v14 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v14 = v16;
          }

          v15 = *(v14 + 16);
          if (v15 >= *(v14 + 24) >> 1)
          {
            sub_1AC45A78C();
            v14 = v17;
          }

          *(v14 + 16) = v15 + 1;
          *(v14 + v15 + 32) = 44;
          *v2 = v14;
        }

        sub_1AC45FBF4(v12);
        v10 = 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v3)
    {
      return result;
    }

    sub_1AC45A774();
    v18 = *(*v2 + 16);
    sub_1AC45A85C(v18);
    v19 = *v2;
    *(v19 + 16) = v18 + 1;
    *(v19 + v18 + 32) = 91;
    *v2 = v19;
    *(v2 + 4) = 256;
    v20 = *(a1 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = (a1 + 32);
      do
      {
        v24 = *v22++;
        v23 = v24;
        v25 = *(v19 + 16);
        if (v21)
        {
          v26 = v25 + 1;
          if (v25 >= *(v19 + 24) >> 1)
          {
            sub_1AC45A78C();
            v19 = v31;
          }

          *(v19 + 16) = v26;
          *(v19 + v25 + 32) = 44;
        }

        else
        {
          v26 = *(v19 + 16);
        }

        if (v26 >= *(v19 + 24) >> 1)
        {
          sub_1AC45A78C();
          v19 = v28;
        }

        *(v19 + 16) = v26 + 1;
        *(v19 + v26 + 32) = 34;
        *v2 = v19;
        sub_1AC45FBF4(v23);
        v19 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AC45A78C();
          v19 = v29;
        }

        v27 = *(v19 + 16);
        if (v27 >= *(v19 + 24) >> 1)
        {
          sub_1AC45A78C();
          v19 = v30;
        }

        *(v19 + 16) = v27 + 1;
        *(v19 + v27 + 32) = 34;
        *v2 = v19;
        v21 = 1;
        --v20;
      }

      while (v20);
    }
  }

  sub_1AC45A774();
  v32 = *(*v2 + 16);
  result = sub_1AC45A85C(v32);
  v33 = *v2;
  *(v33 + 16) = v32 + 1;
  *(v33 + v32 + 32) = 93;
  *v2 = v33;
  *(v2 + 4) = 44;
  return result;
}

uint64_t sub_1AC519BF8(uint64_t a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v3)
  {
    sub_1AC45A774();
    v6 = *(*v2 + 16);
    sub_1AC45A85C(v6);
    v7 = *v2;
    *(v7 + 16) = v6 + 1;
    *(v7 + v6 + 32) = 91;
    *v2 = v7;
    v2[4] = 256;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = (a1 + 32);
      do
      {
        v11 = *v10;
        if (v9)
        {
          v12 = *v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AC45A78C();
            v12 = v15;
          }

          v13 = *(v12 + 16);
          if (v13 >= *(v12 + 24) >> 1)
          {
            sub_1AC45A78C();
            v12 = v16;
          }

          *(v12 + 16) = v13 + 1;
          *(v12 + v13 + 32) = 44;
          *v2 = v12;
        }

        if (v11)
        {
          v14 = "true";
        }

        else
        {
          v14 = "false";
        }

        sub_1AC45FD18(v14);
        ++v10;
        v9 = 1;
        --v8;
      }

      while (v8);
    }

    sub_1AC45A774();
    v17 = *(*v2 + 16);
    result = sub_1AC45A85C(v17);
    v18 = *v2;
    *(v18 + 16) = v17 + 1;
    *(v18 + v17 + 32) = 93;
    *v2 = v18;
    v2[4] = 44;
  }

  return result;
}

void sub_1AC51A8E4()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1AC5B48D0](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51A924()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1AC51F498();
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51A964()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      sub_1AC4578F4(v3, *v2);
      sub_1AC51EC58();
      sub_1AC4513F8(v3, v4);
      v2 += 2;
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51A9D4()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 == 0.0)
      {
        v4 = 0.0;
      }

      MEMORY[0x1AC5B48D0](*&v4);
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51AA2C()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 4;
      sub_1AC51F498();
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51AA84()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1AC51F488();
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51AAC4()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_1AC51EEB8();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1AC51AB2C()
{
  OUTLINED_FUNCTION_8_21();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1AC5B48A0](v3);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_1AC51ADFC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AC450A70(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WireFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WireFormat(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AC51AF9C()
{
  result = qword_1EB559F70;
  if (!qword_1EB559F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559F70);
  }

  return result;
}

uint64_t Google_Protobuf_StringValue.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double Google_Protobuf_BytesValue.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AC51F990;
  a1[1] = xmmword_1AC51F990;
  return result;
}

uint64_t Google_Protobuf_BytesValue.value.getter()
{
  v0 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v0, v1);
  return OUTLINED_FUNCTION_44();
}

void Google_Protobuf_BytesValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1AC4513F8(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

void sub_1AC51BD38(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1AC4513F8(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t static Google_Protobuf_DoubleValue._protobuf_nameMap.getter()
{
  if (qword_1EB557C80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C88);
}

void Google_Protobuf_DoubleValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51BE98()
{
  OUTLINED_FUNCTION_36_7();
  if (v3 == 0.0 || (sub_1AC4DF9DC(v3), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_94();
        goto LABEL_8;
      case 2uLL:
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
LABEL_8:
        if (v4 != v5)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v1 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t static Google_Protobuf_DoubleValue.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t Google_Protobuf_DoubleValue.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v0, v1, v2, v3, v4, v5, v6, v7, v17, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37);
  sub_1AC51BE98();
  OUTLINED_FUNCTION_108(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51C0F4(uint64_t a1)
{
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51BE98();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FloatValue._protobuf_nameMap.getter()
{
  if (qword_1EB557BB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557BB8);
}

void Google_Protobuf_FloatValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51C29C()
{
  OUTLINED_FUNCTION_36_7();
  if (v3 == 0.0 || (sub_1AC4DF9DC(v3), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        OUTLINED_FUNCTION_94();
        goto LABEL_8;
      case 2uLL:
        v4 = *(v2 + 16);
        v5 = *(v2 + 24);
LABEL_8:
        if (v4 != v5)
        {
          goto LABEL_9;
        }

        return;
      case 3uLL:
        return;
      default:
        if ((v1 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_9:
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

uint64_t static Google_Protobuf_FloatValue.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t Google_Protobuf_FloatValue.hashValue.getter()
{
  v0 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v0, v1, v2, v3, v4, v5, v6, v7, v17, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37);
  sub_1AC51C29C();
  OUTLINED_FUNCTION_108(v8, v9, v10, v11, v12, v13, v14, v15, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51C4FC(uint64_t a1)
{
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51C29C();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Int64Value._protobuf_nameMap.getter()
{
  if (qword_1EB557F60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559F78);
}

void Google_Protobuf_Int64Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t static Google_Protobuf_UInt64Value._protobuf_nameMap.getter()
{
  if (qword_1EB557F68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559F98);
}

void Google_Protobuf_UInt64Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51C8B8()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int64ValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int64ValueV04hashF0Sivg_0()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51C8B8();
  if (v1)
  {
    v10 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51CB20(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51C8B8();
  if (v2)
  {
    v11 = MEMORY[0x1AC5B4BA0](v2);
  }

  OUTLINED_FUNCTION_108(v11, v12, v13, v14, v15, v16, v17, v18, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_Int32Value._protobuf_nameMap.getter()
{
  if (qword_1EB557B80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557B88);
}

void Google_Protobuf_Int32Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51CC9C()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_UInt32Value._protobuf_nameMap.getter()
{
  if (qword_1EB557C30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C38);
}

void sub_1AC51CF0C()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48D0](v3);
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_8:
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t sub_1AC51CFC0(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_232();
  v12 = OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v30, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53);
  v20 = OUTLINED_FUNCTION_20_11(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34, v37);
  v21 = a1(v20);
  if (v3)
  {
    v21 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v21, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51D09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_1AC51F468();
  v15 = OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56);
  v23 = OUTLINED_FUNCTION_20_11(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v40);
  v24 = a4(v23);
  if (v6)
  {
    v24 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_BoolValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559FB8);
}

void Google_Protobuf_BoolValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51D228()
{
  OUTLINED_FUNCTION_10_17();
  if (v2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  switch(v0 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_8;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
LABEL_8:
      if (v3 != v4)
      {
        goto LABEL_9;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v0 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_9:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_BoolValue.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1);
  v3 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v3, v4);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v7, v8);
  v9 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v9, v10);
  return v6 & 1;
}

uint64_t Google_Protobuf_BoolValue.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  OUTLINED_FUNCTION_30_7();
  sub_1AC51D228();
  if (v1)
  {
    v10 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51D468(uint64_t a1)
{
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC51D228();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_StringValue._protobuf_nameMap.getter()
{
  if (qword_1EB557C58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB557C60);
}

void sub_1AC51D59C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51EEB8();
  }

  switch(a5 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_94();
      goto LABEL_10;
    case 2uLL:
      v8 = *(a4 + 16);
      v9 = *(a4 + 24);
LABEL_10:
      if (v8 != v9)
      {
        goto LABEL_11;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((a5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      OUTLINED_FUNCTION_36_0();
      sub_1AC51EC58();
      return;
  }
}

uint64_t static Google_Protobuf_StringValue.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v3, v4);
  v5 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v5, v6);
  v7 = OUTLINED_FUNCTION_44();
  v8 = MEMORY[0x1AC5B4070](v7);
  v9 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v9, v10);
  v11 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v11, v12);
  return v8 & 1;
}

uint64_t static Google_Protobuf_BytesValue._protobuf_nameMap.getter()
{
  if (qword_1EB557F78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB559FD8);
}

void Google_Protobuf_BytesValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (v3 == 1)
    {
      v5 = OUTLINED_FUNCTION_7_21();
      v6(v5);
    }
  }

  OUTLINED_FUNCTION_327();
}

void sub_1AC51D948(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v7 = a2;
      v8 = a2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
LABEL_6:
      if (v7 != v8)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      MEMORY[0x1AC5B48A0](1, a2);
      sub_1AC51EC58();
LABEL_8:
      switch(a5 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_94();
          goto LABEL_13;
        case 2uLL:
          v9 = *(a4 + 16);
          v10 = *(a4 + 24);
LABEL_13:
          if (v9 != v10)
          {
            goto LABEL_14;
          }

          return;
        case 3uLL:
          return;
        default:
          if ((a5 & 0xFF000000000000) == 0)
          {
            return;
          }

LABEL_14:
          OUTLINED_FUNCTION_36_0();
          sub_1AC51EC58();
          return;
      }
  }
}

uint64_t static Google_Protobuf_BytesValue.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x1AC5B4070](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v2, v3);
  v4 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v4, v5);
  v6 = OUTLINED_FUNCTION_44();
  v7 = MEMORY[0x1AC5B4070](v6);
  v8 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v8, v9);
  v10 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v10, v11);
  return v7 & 1;
}

uint64_t sub_1AC51DBAC(uint64_t (*a1)(char *))
{
  v3 = *v1;
  v4 = OUTLINED_FUNCTION_232();
  v12 = OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v30, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53);
  v20 = OUTLINED_FUNCTION_26_12(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34, v37);
  v21 = a1(v20);
  if (v3)
  {
    v21 = MEMORY[0x1AC5B4BA0](v3);
  }

  OUTLINED_FUNCTION_108(v21, v22, v23, v24, v25, v26, v27, v28, v32, v35, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC51DCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = *v4;
  v7 = sub_1AC51F468();
  v15 = OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v33, v36, v39, v42, v44, v46, v48, v50, v52, v54, v56);
  v23 = OUTLINED_FUNCTION_26_12(v15, v16, v17, v18, v19, v20, v21, v22, v34, v37, v40);
  v24 = a4(v23);
  if (v6)
  {
    v24 = MEMORY[0x1AC5B4BA0](v6);
  }

  OUTLINED_FUNCTION_108(v24, v25, v26, v27, v28, v29, v30, v31, v35, v38, v41, v43, v45, v47, v49, v51, v53, v55, v57);
  return sub_1AC51F4C8();
}

unint64_t sub_1AC51DD34(uint64_t a1)
{
  result = sub_1AC51DD5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51DD5C()
{
  result = qword_1ED6E3430;
  if (!qword_1ED6E3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3430);
  }

  return result;
}

unint64_t sub_1AC51DDDC()
{
  result = qword_1EB559FF8;
  if (!qword_1EB559FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559FF8);
  }

  return result;
}

unint64_t sub_1AC51DE34()
{
  result = qword_1EB55A000;
  if (!qword_1EB55A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A000);
  }

  return result;
}

unint64_t sub_1AC51DE88(uint64_t a1)
{
  result = sub_1AC51DEB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51DEB0()
{
  result = qword_1EB557CD0;
  if (!qword_1EB557CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CD0);
  }

  return result;
}

unint64_t sub_1AC51DF30()
{
  result = qword_1EB55A008;
  if (!qword_1EB55A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A008);
  }

  return result;
}

unint64_t sub_1AC51DF88()
{
  result = qword_1EB55A010;
  if (!qword_1EB55A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A010);
  }

  return result;
}

unint64_t sub_1AC51DFDC(uint64_t a1)
{
  result = sub_1AC51E004();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E004()
{
  result = qword_1EB557CC0;
  if (!qword_1EB557CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CC0);
  }

  return result;
}

unint64_t sub_1AC51E084()
{
  result = qword_1EB55A018;
  if (!qword_1EB55A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A018);
  }

  return result;
}

unint64_t sub_1AC51E0DC()
{
  result = qword_1EB55A020;
  if (!qword_1EB55A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A020);
  }

  return result;
}

unint64_t sub_1AC51E130(uint64_t a1)
{
  result = sub_1AC51E158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E158()
{
  result = qword_1EB557B50;
  if (!qword_1EB557B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557B50);
  }

  return result;
}

unint64_t sub_1AC51E1D8()
{
  result = qword_1EB55A028;
  if (!qword_1EB55A028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A028);
  }

  return result;
}

unint64_t sub_1AC51E230()
{
  result = qword_1EB55A030;
  if (!qword_1EB55A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A030);
  }

  return result;
}

unint64_t sub_1AC51E284(uint64_t a1)
{
  result = sub_1AC51E2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E2AC()
{
  result = qword_1EB557CC8;
  if (!qword_1EB557CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CC8);
  }

  return result;
}

unint64_t sub_1AC51E32C()
{
  result = qword_1EB55A038;
  if (!qword_1EB55A038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A038);
  }

  return result;
}

unint64_t sub_1AC51E384()
{
  result = qword_1EB55A040;
  if (!qword_1EB55A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A040);
  }

  return result;
}

unint64_t sub_1AC51E3D8(uint64_t a1)
{
  result = sub_1AC51E400();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E400()
{
  result = qword_1EB557CB8;
  if (!qword_1EB557CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557CB8);
  }

  return result;
}

unint64_t sub_1AC51E480()
{
  result = qword_1EB55A048;
  if (!qword_1EB55A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A048);
  }

  return result;
}

unint64_t sub_1AC51E4D8()
{
  result = qword_1EB55A050;
  if (!qword_1EB55A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A050);
  }

  return result;
}

unint64_t sub_1AC51E52C(uint64_t a1)
{
  result = sub_1AC51E554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E554()
{
  result = qword_1EB557C10;
  if (!qword_1EB557C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557C10);
  }

  return result;
}

unint64_t sub_1AC51E5D4()
{
  result = qword_1EB55A058;
  if (!qword_1EB55A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A058);
  }

  return result;
}

unint64_t sub_1AC51E62C()
{
  result = qword_1EB55A060;
  if (!qword_1EB55A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A060);
  }

  return result;
}

unint64_t sub_1AC51E680(uint64_t a1)
{
  result = sub_1AC51E6A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E6A8()
{
  result = qword_1ED6E3BB0;
  if (!qword_1ED6E3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E3BB0);
  }

  return result;
}

unint64_t sub_1AC51E728()
{
  result = qword_1EB55A068;
  if (!qword_1EB55A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A068);
  }

  return result;
}

unint64_t sub_1AC51E780()
{
  result = qword_1EB55A070;
  if (!qword_1EB55A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A070);
  }

  return result;
}

unint64_t sub_1AC51E7D4(uint64_t a1)
{
  result = sub_1AC51E7FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC51E7FC()
{
  result = qword_1EB557BE0;
  if (!qword_1EB557BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB557BE0);
  }

  return result;
}

uint64_t sub_1AC51E87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC51E8B8()
{
  result = qword_1EB55A078;
  if (!qword_1EB55A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A078);
  }

  return result;
}

unint64_t sub_1AC51E910()
{
  result = qword_1EB55A080;
  if (!qword_1EB55A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB55A080);
  }

  return result;
}

uint64_t sub_1AC51E98C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC51E9D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC51EA28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1AC51EA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}