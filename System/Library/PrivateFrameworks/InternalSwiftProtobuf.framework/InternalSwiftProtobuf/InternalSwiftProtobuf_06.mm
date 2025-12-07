uint64_t sub_1AC4B5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 22);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 10, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B53FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 20);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B5494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 23);
  if (v8 != 2)
  {
    return (*(a4 + 104))(v8 & 1, 16, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B552C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 24) != 3)
  {
    v10 = *(a1 + 24);
    v8 = *(a4 + 128);
    v9 = sub_1AC4C6970();
    return v8(&v10, 17, &type metadata for Google_Protobuf_FieldOptions.OptionRetention, v9, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B55D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 64);
  if (v8)
  {
    v9 = *(a1 + 76);
    v10 = *(a1 + 72);
    v16 = *(a1 + 48);
    v17 = v8;
    v18 = v10;
    v11.i64[0] = 0xFFFFFFFFFFFFLL;
    v11.i64[1] = 0xFFFFFFFFFFFFLL;
    v12 = vandq_s8(vdupq_n_s64(v10 | (v9 << 32)), v11);
    v13 = vshlq_u64(v12, xmmword_1AC520DE0);
    *v12.i8 = vmovn_s64(vshlq_u64(v12, xmmword_1AC520DF0));
    *v13.i8 = vmovn_s64(v13);
    v13.i16[1] = v13.i16[2];
    v13.i16[2] = v12.i16[0];
    v13.i16[3] = v12.i16[2];
    v19 = vmovn_s16(v13).u32[0];
    v20 = BYTE1(v9);
    v14 = *(a4 + 136);
    v15 = sub_1AC4C1928();
    return v14(&v16, 21, &type metadata for Google_Protobuf_FeatureSet, v15, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B56E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 112);
  if (v8 != 1)
  {
    v9 = *(a1 + 120);
    v11 = *(a1 + 96);
    v10 = *(a1 + 104);
    v14 = *(a1 + 80);
    v15 = v11;
    v16 = v10;
    v17 = v8;
    v18 = v9;
    v12 = *(a4 + 136);
    v13 = sub_1AC4C3560();
    return v12(&v14, 22, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v13, a3, a4);
  }

  return result;
}

void sub_1AC4B57CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_213();
  a21 = v22;
  a22 = v24;
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  if (v27 == v30 || (v31 = v23, , , LOBYTE(v31) = v31(v27, v30), , , (v31 & 1) != 0))
  {
    v32 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v32, v33);
    v34 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v34, v35);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_351();
    v36 = MEMORY[0x1AC5B4070]();
    v37 = OUTLINED_FUNCTION_19();
    sub_1AC4513F8(v37, v38);
    v39 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v39, v40);
    if (v36)
    {
      a9 = v29;
      a10 = v26;

      static ExtensionFieldValueSet.== infix(_:_:)(&a10, &a9);
    }
  }

  OUTLINED_FUNCTION_212();
}

uint64_t sub_1AC4B58C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v7 = *(a1 + 17);
  swift_beginAccess();
  v8 = *(a2 + 17);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v8 == 2 || ((v7 ^ v8) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v9 = *(a1 + 18);
  swift_beginAccess();
  v10 = *(a2 + 18);
  if (v9 == 3)
  {
    if (v10 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v10 == 3 || v9 != v10)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v12 = *(a1 + 19);
  swift_beginAccess();
  v13 = *(a2 + 19);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v14 = *(a1 + 20);
  swift_beginAccess();
  v15 = *(a2 + 20);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v16 = *(a1 + 21);
  swift_beginAccess();
  v17 = *(a2 + 21);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v18 = *(a1 + 22);
  swift_beginAccess();
  v19 = *(a2 + 22);
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v19 == 2 || ((v18 ^ v19) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v20 = *(a1 + 23);
  swift_beginAccess();
  v21 = *(a2 + 23);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_73;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  v22 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 24);
  if (v22 == 3)
  {
    if (v23 != 3)
    {
      goto LABEL_73;
    }
  }

  else if (v23 == 3 || v22 != v23)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  swift_beginAccess();
  if (sub_1AC486118())
  {
    swift_beginAccess();
    v25 = *(a1 + 40);
    swift_beginAccess();
    v26 = *(a2 + 40);

    v27 = sub_1AC47F864(v25, v26);

    if ((v27 & 1) == 0)
    {
LABEL_60:

      goto LABEL_73;
    }

    swift_beginAccess();
    v29 = *(a1 + 48);
    v28 = *(a1 + 56);
    v30 = *(a1 + 64);
    v31 = *(a1 + 72) | (*(a1 + 76) << 32);
    swift_beginAccess();
    v33 = *(a2 + 48);
    v32 = *(a2 + 56);
    v34 = *(a2 + 64);
    v35 = *(a2 + 72) | (*(a2 + 76) << 32);
    if (v30)
    {
      *v57 = v29;
      *&v57[8] = v28;
      *&v57[16] = v30;
      *&v57[24] = v31;
      *&v57[28] = WORD2(v31);
      if (v34)
      {
        *v52 = v33;
        *&v52[8] = v32;
        *&v52[16] = v34;
        *&v52[28] = WORD2(v35);
        *&v52[24] = v35;
        sub_1AC485860(v29, v28, v30);
        sub_1AC485860(v33, v32, v34);
        sub_1AC485860(v29, v28, v30);
        v36 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v57, v52);
        v53[0] = *v52;
        *(v53 + 14) = *&v52[14];
        sub_1AC4AEF78(v53);
        *v54 = *v57;
        *&v54[14] = *&v57[14];
        sub_1AC4AEF78(v54);
        sub_1AC485714(v29, v28, v30);
        if ((v36 & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_66:
        swift_beginAccess();
        v38 = *(a1 + 80);
        v37 = *(a1 + 88);
        v40 = *(a1 + 96);
        v39 = *(a1 + 104);
        v41 = *(a1 + 112);
        v51 = *(a1 + 120);
        swift_beginAccess();
        v50 = *(a2 + 80);
        v42 = *(a2 + 96);
        v47 = *(a2 + 104);
        v49 = *(a2 + 112);
        v48 = *(a2 + 120);
        if (v41 == 1)
        {
          sub_1AC4B3968(v38, v37, v40, v39, 1);
          if (v49 == 1)
          {
            sub_1AC4B3968(v50, *(&v50 + 1), v42, v47, 1);
            sub_1AC4B39AC(v38, v37, v40, v39, 1);
            goto LABEL_76;
          }

          sub_1AC4B3968(v50, *(&v50 + 1), v42, v47, v49);
        }

        else
        {
          *v57 = v38;
          *&v57[8] = v37;
          *&v57[16] = v40;
          *&v57[24] = v39;
          v58 = v41;
          v59 = v51;
          if (v49 != 1)
          {
            *v54 = v50;
            *&v54[16] = v42;
            *&v54[24] = v47;
            v55 = v49;
            v56 = v48;
            sub_1AC4B3968(v38, v37, v40, v39, v41);
            sub_1AC4B3968(v50, *(&v50 + 1), v42, v47, v49);
            sub_1AC4B3968(v38, v37, v40, v39, v41);
            static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)(v57, v54);
            v46 = v45;
            sub_1AC4513F8(v50, *(&v50 + 1));

            sub_1AC4513F8(v38, v37);

            sub_1AC4B39AC(v38, v37, v40, v39, v41);
            if ((v46 & 1) == 0)
            {
              goto LABEL_60;
            }

LABEL_76:
            swift_beginAccess();
            swift_beginAccess();

            v43 = sub_1AC47DB68();

            return v43 & 1;
          }

          sub_1AC4B3968(v38, v37, v40, v39, v41);
          sub_1AC4B3968(v50, *(&v50 + 1), v42, v47, 1);
          sub_1AC4B3968(v38, v37, v40, v39, v41);
          sub_1AC4B3968(v50, *(&v50 + 1), v42, v47, 1);
          sub_1AC4B3968(v38, v37, v40, v39, v41);

          sub_1AC4B39AC(v50, *(&v50 + 1), v42, v47, 1);
          sub_1AC4B39AC(v38, v37, v40, v39, v41);
          sub_1AC4513F8(v38, v37);
        }

        sub_1AC4B39AC(v38, v37, v40, v39, v41);
        sub_1AC4B39AC(v50, *(&v50 + 1), v42, v47, v49);
        goto LABEL_73;
      }

      sub_1AC485860(v29, v28, v30);
      sub_1AC485860(v33, v32, 0);
      sub_1AC485860(v29, v28, v30);
      sub_1AC485860(v33, v32, 0);
      sub_1AC485860(v29, v28, v30);

      sub_1AC485714(v33, v32, 0);
      sub_1AC485714(v29, v28, v30);
      *v54 = *v57;
      *&v54[14] = *&v57[14];
      sub_1AC4AEF78(v54);
    }

    else
    {
      sub_1AC485860(v29, v28, 0);
      if (!v34)
      {
        sub_1AC485860(v33, v32, 0);
        sub_1AC485714(v29, v28, 0);
        goto LABEL_66;
      }

      sub_1AC485860(v33, v32, v34);
    }

    sub_1AC485714(v29, v28, v30);
    sub_1AC485714(v33, v32, v34);
  }

LABEL_73:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1AC4B62B0(uint64_t (*a1)(uint64_t, char *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v7, v8, v9, v10, v11, v12, v13, v14, v34, v37, v40[0], v41, v42, v43, v44, v45, v46, v47, v48);
  v15 = a1(v5, v40, v3, v4, v6, v5);
  v23 = OUTLINED_FUNCTION_243(v15, v16, v17, v18, v19, v20, v21, v22, v35, v38, v40[0]);
  sub_1AC4937B8(v23, v24, v4);
  OUTLINED_FUNCTION_108(v25, v26, v27, v28, v29, v30, v31, v32, v36, v39, v40[0], v41, v42, v43, v44, v45, v46, v47, v48);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B63D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v8, v9, v10, v11, v12, v13, v14, v15, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4B47A8(v16, v17, v18, v7, v6, a4);
  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FieldOptions.CType._protobuf_nameMap.getter()
{
  if (qword_1EB557DD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585C8);
}

uint64_t static Google_Protobuf_FieldOptions.JSType._protobuf_nameMap.getter()
{
  if (qword_1EB557DE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5585E8);
}

uint64_t static Google_Protobuf_FieldOptions.OptionRetention._protobuf_nameMap.getter()
{
  if (qword_1EB557DE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558608);
}

uint64_t static Google_Protobuf_FieldOptions.OptionTargetType._protobuf_nameMap.getter()
{
  if (qword_1EB557DF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558628);
}

uint64_t static Google_Protobuf_FieldOptions.EditionDefault._protobuf_nameMap.getter()
{
  if (qword_1EB557E00 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558658);
}

void Google_Protobuf_FieldOptions.EditionDefault.decodeMessage<A>(decoder:)()
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

    if (v3 == 3)
    {
      v6 = OUTLINED_FUNCTION_7();
      sub_1AC4B6848(v6, v7, v8, v9);
    }

    else if (v3 == 2)
    {
      OUTLINED_FUNCTION_257();
      OUTLINED_FUNCTION_36_0();
      v5();
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B6848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 16, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4B68C8()
{
  OUTLINED_FUNCTION_49();
  if (*(v0 + 32))
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  v1 = *(v0 + 16);
  if (v1 != 12)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v1]);
  }

  OUTLINED_FUNCTION_259();
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2:
      v5 = *(v2 + 16);
      v6 = *(v2 + 24);
LABEL_10:
      if (v5 != v6)
      {
        goto LABEL_11;
      }

      return;
    case 3:
      return;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FieldOptions.EditionDefault.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v32 = *v1;
  if (v1[2].n128_u64[0])
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_27();
    v3();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_12_6();
    v8 = sub_1AC4B6A20(v4, v5, v6, v7);
    if (!v2)
    {
      OUTLINED_FUNCTION_74_1(v8, v32, v9, v10, v11, v12, v13, v14, v15, v16, v26, v28, v17);
      v18 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v18, v19, v20, v21, v22, v23, v24, v25, v27, v29, v30, v31);
    }
  }
}

uint64_t sub_1AC4B6A20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) != 12)
  {
    v8 = *(result + 16);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 3, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FieldOptions.EditionDefault.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  if (v4 == 12)
  {
    if (v7 != 12)
    {
      return 0;
    }
  }

  else if (v7 == 12 || qword_1AC526968[v4] != qword_1AC526968[v7])
  {
    return 0;
  }

  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = v5 == *(a2 + 24) && v6 == v8;
    if (!v9 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }

LABEL_13:
    v10 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v10, v11);
    v12 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v12, v13);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    v14 = MEMORY[0x1AC5B4070]();
    v15 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v15, v16);
    v17 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v17, v18);
    return v14 & 1;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t Google_Protobuf_FieldOptions.EditionDefault.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v26, v29, v32, v35, v37, v39, v41, v43, v45, v47, v49);
  OUTLINED_FUNCTION_272(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30, v33);
  sub_1AC4B68C8();
  if (v0)
  {
    v17 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_108(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B6CB8(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = *(v1 + 4);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B68C8();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

void sub_1AC4B6D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_370();
  *a4 = v7;
  *a5 = v8;
}

uint64_t static Google_Protobuf_FieldOptions.FeatureSupport._protobuf_nameMap.getter()
{
  if (qword_1EB557E10 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558688);
}

void Google_Protobuf_FieldOptions.FeatureSupport.decodeMessage<A>(decoder:)()
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

    switch(v3)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4B6848(v5, v6, v7, v8);
        break;
      case 2:
        v14 = OUTLINED_FUNCTION_7();
        sub_1AC4B6F50(v14, v15, v16, v17);
        break;
      case 3:
        OUTLINED_FUNCTION_257();
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
      case 4:
        v10 = OUTLINED_FUNCTION_7();
        sub_1AC4B6FD0(v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B6F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 17, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

uint64_t sub_1AC4B6FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 40, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4B7050()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 16);
  if (v1 != 12)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v1]);
  }

  v2 = *(v0 + 17);
  if (v2 != 12)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v2]);
  }

  if (*(v0 + 32))
  {
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  v3 = *(v0 + 40);
  if (v3 != 12)
  {
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v3]);
  }

  OUTLINED_FUNCTION_259();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_14;
    case 2:
      v7 = *(v4 + 16);
      v8 = *(v4 + 24);
LABEL_14:
      if (v7 != v8)
      {
        goto LABEL_15;
      }

      return;
    case 3:
      return;
    default:
      if ((v5 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_15:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FieldOptions.FeatureSupport.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  v39 = *v0;
  v40 = *(v0 + 25);
  OUTLINED_FUNCTION_26_3();
  sub_1AC4B7210(v2, v3, v4, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1AC4B72A4(v6, v7, v8, v9);
    if (*(&v40 + 7))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      v10();
    }

    OUTLINED_FUNCTION_12_6();
    v15 = sub_1AC4B7338(v11, v12, v13, v14);
    OUTLINED_FUNCTION_74_1(v15, v39, v16, v17, v18, v19, v20, v21, v22, v23, v33, v35, v24);
    v25 = OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_218(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v37, v38);
  }
}

uint64_t sub_1AC4B7210(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16) != 12)
  {
    v8 = *(result + 16);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 1, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B72A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 17) != 12)
  {
    v8 = *(result + 17);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 2, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4B7338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 40) != 12)
  {
    v8 = *(result + 40);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C667C();
    return v6(&v8, 4, &type metadata for Google_Protobuf_Edition, v7, a3, a4);
  }

  return result;
}

void static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_392();
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(v4 + 17);
  v8 = *(v4 + 24);
  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  v11 = *(v3 + 16);
  v12 = *(v3 + 17);
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  if (v6 == 12)
  {
    if (v11 != 12)
    {
      goto LABEL_26;
    }
  }

  else if (v11 == 12 || qword_1AC526968[v6] != qword_1AC526968[v11])
  {
    goto LABEL_26;
  }

  if (v7 == 12)
  {
    if (v12 != 12)
    {
      goto LABEL_26;
    }
  }

  else if (v12 == 12 || qword_1AC526968[v7] != qword_1AC526968[v12])
  {
    goto LABEL_26;
  }

  if (!v9)
  {
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (v10 == 12)
    {
      if (v14 != 12)
      {
        goto LABEL_26;
      }
    }

    else if (v14 == 12 || qword_1AC526968[v10] != qword_1AC526968[v14])
    {
      goto LABEL_26;
    }

    v16 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v16, v17);
    v18 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v18, v19);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    MEMORY[0x1AC5B4070]();
    v20 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v20, v21);
    v22 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v22, v23);
    goto LABEL_26;
  }

  if (v13)
  {
    v15 = v8 == *(v3 + 24) && v9 == v13;
    if (v15 || (sub_1AC51F3D8() & 1) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_378();
}

uint64_t Google_Protobuf_FieldOptions.FeatureSupport.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  *(v2 + 25) = *(v0 + 25);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51);
  OUTLINED_FUNCTION_272(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4B7050();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B763C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7[0] = v2;
  *(v7 + 9) = *(v1 + 25);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B7050();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_OneofOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586A8);
}

void Google_Protobuf_OneofOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v1(v2);
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v5)
    {
      v10 = OUTLINED_FUNCTION_7();
      sub_1AC4A89C4(v10, v11, v12, v13);
    }

    else if (v4 == 1)
    {
      v6 = OUTLINED_FUNCTION_7();
      sub_1AC4B7818(v6, v7, v8, v9);
    }

    else if ((v4 - 1000) <= 0x1FFFFC17)
    {
      v14 = OUTLINED_FUNCTION_37_1();
      sub_1AC4B7898(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4B7818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 32, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

void Google_Protobuf_OneofOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_26_3();
  sub_1AC4B79F8(v2, v3, v4, v5);
  if (!v0)
  {
    if (*(v44 + 16))
    {
      OUTLINED_FUNCTION_138();
      sub_1AC4BFBE8();
      OUTLINED_FUNCTION_28();
      v1();
    }

    OUTLINED_FUNCTION_53_2(v46, v32, v36, v40);
    OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_27();
    v6 = (v1)();
    v14 = OUTLINED_FUNCTION_306(v6, v7, v8, v9, v10, v11, v12, v13, v33, v37, v41);
    OUTLINED_FUNCTION_69_1(v45, v14, v15, v16, v17, v18, v19, v20, v21, v22, v34, v38, v23);
    v24 = OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_218(v24, v25, v26, v27, v28, v29, v30, v31, v35, v39, v42, v43);
  }
}

uint64_t sub_1AC4B79F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v11 = *(result + 56);
    v12 = *(result + 60);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 1, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t Google_Protobuf_OneofOptions.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6[0] = v0[2];
  *(v6 + 14) = *(v0 + 46);
  sub_1AC51F468();
  sub_1AC4825D4(v3);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B7DF0(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7[0] = v1[2];
  *(v7 + 14) = *(v1 + 46);
  sub_1AC51F468();
  sub_1AC4825D4(v4);
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E20 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586C8);
}

void Google_Protobuf_EnumOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_98();
    v4 = v1(v3);
    if (v0 || (v5 & 1) != 0)
    {
      break;
    }

    switch(v4)
    {
      case 2:
        OUTLINED_FUNCTION_299();
        goto LABEL_11;
      case 3:
      case 6:
LABEL_11:
        OUTLINED_FUNCTION_36_0();
        v6();
        continue;
      case 4:
      case 5:
        goto LABEL_8;
      case 7:
        OUTLINED_FUNCTION_7();
        sub_1AC4BA02C();
        continue;
      default:
        if (v4 == 999)
        {
          OUTLINED_FUNCTION_7();
          sub_1AC4BA08C();
        }

        else
        {
LABEL_8:
          if (v4 - 1000 <= v2)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }
        }

        break;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4B8010()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  if (*(v0 + 33) != 2)
  {
    MEMORY[0x1AC5B48A0](3);
    sub_1AC51F488();
  }

  if (*(v0 + 34) != 2)
  {
    MEMORY[0x1AC5B48A0](6);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v4)
    {
      sub_1AC50D0A4();
    }

    v5 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v5, v6, v7, v8);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t Google_Protobuf_EnumOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4B8010();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B860C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4B8010();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_EnumValueOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E28 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5586E8);
}

void Google_Protobuf_EnumValueOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_299();
        goto LABEL_10;
      case 2:
        v22 = OUTLINED_FUNCTION_7();
        sub_1AC4A8944(v22, v23, v24, v25);
        break;
      case 3:
LABEL_10:
        OUTLINED_FUNCTION_36_0();
        v17();
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_7();
        sub_1AC4B8850(v18, v19, v20, v21);
        break;
      default:
        if (v6 == 999)
        {
          v8 = OUTLINED_FUNCTION_7();
          sub_1AC4A89C4(v8, v9, v10, v11);
        }

        else if ((v6 - 1000) <= 0x1FFFFC17)
        {
          v12 = OUTLINED_FUNCTION_37_1();
          sub_1AC4B88D0(v12, v13, v14, v15, v16);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4B8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C3560();
  return v7(a2 + 72, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v8, a3, a4);
}

void sub_1AC4B8950()
{
  OUTLINED_FUNCTION_49();
  if (*(v2 + 32) != 2)
  {
    MEMORY[0x1AC5B48A0](1);
    sub_1AC51F488();
  }

  v3 = OUTLINED_FUNCTION_150();
  sub_1AC4B8B84(v3);
  if (!v1)
  {
    if (*(v2 + 70) != 2)
    {
      MEMORY[0x1AC5B48A0](3);
      sub_1AC51F488();
    }

    v4 = OUTLINED_FUNCTION_150();
    sub_1AC4B8CB8(v4, v5);
    if (*(*v2 + 16))
    {
      sub_1AC50D0A4();
    }

    v6 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v6, v7, v8, v9);
    sub_1AC4937B8(v0, *(v2 + 8), *(v2 + 16));
  }
}

void Google_Protobuf_EnumValueOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  memcpy(v4, v5, 0x71uLL);
  OUTLINED_FUNCTION_359();
  if (!v15)
  {
    OUTLINED_FUNCTION_42_1(v14);
    OUTLINED_FUNCTION_10();
    v6 = v16();
    v0 = v1;
  }

  if (!v0)
  {
    v17 = OUTLINED_FUNCTION_2_5(v6, v7, v8, v9, v10, v11, v12, v13, v52, v53, v54, *(&v54 + 1), v55, v56);
    v21 = sub_1AC4B8C10(v17, v18, v19, v20);
    if (!v1)
    {
      if (v59 != 2)
      {
        OUTLINED_FUNCTION_42_1(v59);
        OUTLINED_FUNCTION_10();
        v21 = v29();
      }

      v30 = OUTLINED_FUNCTION_2_5(v21, v22, v23, v24, v25, v26, v27, v28, v52, v53, v54, *(&v54 + 1), v55, v56);
      sub_1AC4B8DB0(v30, v31, v32, v33);
      OUTLINED_FUNCTION_211();
      if (v34)
      {
        OUTLINED_FUNCTION_138();
        sub_1AC4BFBE8();
        OUTLINED_FUNCTION_28();
        v3();
      }

      v61 = v58;
      *&v54 = v58;
      v35 = *(v2 + 432);
      sub_1AC4BFC3C(&v61, &v52);
      OUTLINED_FUNCTION_154();
      OUTLINED_FUNCTION_27();
      v36 = v35();
      OUTLINED_FUNCTION_306(v36, v37, v38, v39, v40, v41, v42, v43, v52, v53, v54);
      v60 = v57;
      v54 = v57;
      sub_1AC4848F4(&v60, &v52);
      v44 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, *(&v54 + 1));
    }
  }
}

void *sub_1AC4B8B84(void *result)
{
  if (result[7])
  {
    OUTLINED_FUNCTION_146();
    v2 = MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_215(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v10, v11);

    OUTLINED_FUNCTION_94_1(v12);
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v16 = sub_1AC485714(v13, v14, v15);
    return OUTLINED_FUNCTION_216(v16, v17, v18, v19, v20, v21, v22, v23, v25);
  }

  return result;
}

uint64_t sub_1AC4B8C10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  if (v4)
  {
    v9 = *(result + 40);
    v11 = *(result + 64);
    v12 = *(result + 68);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 2, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

void *sub_1AC4B8CB8(void *result, void *a2)
{
  v3 = result[13];
  if (v3 != 1)
  {
    v5 = result[10];
    v6 = result[11];
    v7 = result[12];
    v8 = *(result + 112);
    v14 = result[9];
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v3;
    v19 = v8;
    MEMORY[0x1AC5B48A0](4);
    memcpy(__dst, a2, sizeof(__dst));
    v9 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v9, v10);

    sub_1AC4B7050();
    if (v2)
    {
      MEMORY[0x1AC5B4BA0](v2);
    }

    v11 = OUTLINED_FUNCTION_93_0();
    sub_1AC4B39AC(v11, v12, v6, v7, v3);
    return memcpy(a2, __dst, 0x48uLL);
  }

  return result;
}

uint64_t sub_1AC4B8DB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 104);
  if (v4 != 1)
  {
    v7 = *(result + 112);
    v8 = *(result + 88);
    v11[0] = *(result + 72);
    v11[1] = v8;
    v12 = v4;
    v13 = v7;
    v9 = *(a4 + 136);
    v10 = sub_1AC4C3560();
    return v9(v11, 4, &type metadata for Google_Protobuf_FieldOptions.FeatureSupport, v10, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_EnumValueOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 68);
  v8 = *(a1 + 64);
  v133 = *(a1 + 70);
  v10 = *(a1 + 72);
  v9 = *(a1 + 80);
  v12 = *(a1 + 88);
  v11 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 68);
  v21 = *(a2 + 64);
  v22 = *(a2 + 70);
  v131 = *(a2 + 72);
  v130 = *(a2 + 88);
  v134 = *(a2 + 96);
  v132 = *(a2 + 104);
  v23 = *(a2 + 112);
  if (v3 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_14;
    }
  }

  else if (v16 == 2 || ((v3 ^ v16) & 1) != 0)
  {
    goto LABEL_14;
  }

  v123 = *(a2 + 80);
  v128 = v9;
  v129 = v12;
  if (!v6)
  {
    v124 = v13;
    v126 = v10;
    v121 = v11;
    v119 = *(a2 + 24);
    v120 = v2;
    v122 = v14;
    v37 = OUTLINED_FUNCTION_355();
    sub_1AC485860(v37, v38, v39);
    if (!v19)
    {
      OUTLINED_FUNCTION_88_1();
      sub_1AC485860(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_355();
      sub_1AC485714(v63, v64, v65);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_151();
    sub_1AC485860(v40, v41, v42);
LABEL_13:
    v52 = OUTLINED_FUNCTION_57_1();
    sub_1AC485714(v52, v53, v54);
    OUTLINED_FUNCTION_151();
    sub_1AC485714(v55, v56, v57);
    goto LABEL_14;
  }

  v142 = v5;
  v143 = v4;
  v144 = v6;
  LODWORD(v145) = v8;
  WORD2(v145) = (v8 | (v7 << 32)) >> 32;
  if (!v19)
  {
    OUTLINED_FUNCTION_343();
    v43 = OUTLINED_FUNCTION_57_1();
    sub_1AC485860(v43, v44, v45);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_57_1();
    sub_1AC485860(v49, v50, v51);
    sub_1AC4AEF78(v137);
    goto LABEL_13;
  }

  v124 = v13;
  v126 = v10;
  v121 = v11;
  v119 = v15;
  v120 = v2;
  v122 = v14;
  *v135 = v18;
  *&v135[8] = v17;
  *&v135[16] = v19;
  *&v135[28] = (v21 | (v20 << 32)) >> 32;
  *&v135[24] = v21;
  v24 = OUTLINED_FUNCTION_57_1();
  sub_1AC485860(v24, v25, v26);
  OUTLINED_FUNCTION_151();
  sub_1AC485860(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_57_1();
  sub_1AC485860(v30, v31, v32);
  v33 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v142, v135);
  v136[0] = *v135;
  *(v136 + 14) = *&v135[14];
  sub_1AC4AEF78(v136);
  OUTLINED_FUNCTION_343();
  sub_1AC4AEF78(v137);
  v34 = OUTLINED_FUNCTION_57_1();
  sub_1AC485714(v34, v35, v36);
  if ((v33 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v133 == 2)
  {
    v67 = v128;
    v66 = v129;
    v68 = v126;
    v69 = v134;
    if (v22 != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v67 = v128;
    v66 = v129;
    v68 = v126;
    v69 = v134;
    if (v22 == 2 || ((v133 ^ v22) & 1) != 0)
    {
      goto LABEL_14;
    }
  }

  if (v124 != 1)
  {
    v142 = v68;
    v143 = v67;
    v71 = v121;
    v144 = v66;
    v145 = v121;
    v146 = v124;
    v147 = v122;
    v22 = v131;
    v6 = v132;
    if (v132 != 1)
    {
      v137[0] = v131;
      v137[1] = v123;
      v138 = v130;
      v139 = v134;
      v140 = v132;
      v141 = v23;
      OUTLINED_FUNCTION_36_0();
      v125 = v98;
      v127 = v97;
      sub_1AC4B3968(v97, v99, v100, v121, v98);
      sub_1AC4B3968(v131, v123, v130, v134, v132);
      OUTLINED_FUNCTION_36_0();
      sub_1AC4B3968(v101, v102, v103, v121, v125);
      static Google_Protobuf_FieldOptions.FeatureSupport.== infix(_:_:)(&v142, v137);
      v105 = v104;
      sub_1AC4513F8(v131, v123);

      sub_1AC4513F8(v127, v67);

      OUTLINED_FUNCTION_36_0();
      sub_1AC4B39AC(v106, v107, v108, v121, v125);
      if ((v105 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_36_0();
    v80 = v79;
    v70 = v81;
    sub_1AC4B3968(v79, v82, v83, v121, v81);
    OUTLINED_FUNCTION_341();
    v69 = v134;
    sub_1AC4B3968(v84, v85, v86, v134, 1);
    OUTLINED_FUNCTION_36_0();
    sub_1AC4B3968(v87, v88, v89, v121, v70);
    sub_1AC4513F8(v80, v67);

LABEL_28:
    OUTLINED_FUNCTION_36_0();
    sub_1AC4B39AC(v94, v95, v96, v71, v70);
    sub_1AC4B39AC(v131, v22, v6, v69, v132);
    goto LABEL_14;
  }

  v70 = 1;
  OUTLINED_FUNCTION_36_0();
  v71 = v121;
  sub_1AC4B3968(v72, v73, v74, v121, v75);
  if (v132 != 1)
  {
    OUTLINED_FUNCTION_341();
    sub_1AC4B3968(v90, v91, v92, v69, v93);
    goto LABEL_28;
  }

  sub_1AC4B3968(v131, v123, v130, v69, 1);
  OUTLINED_FUNCTION_36_0();
  sub_1AC4B39AC(v76, v77, v78, v121, 1);
LABEL_30:
  if (sub_1AC47DB68())
  {
    v109 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v109, v110);
    v111 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v111, v112);
    v113 = OUTLINED_FUNCTION_17_5();
    v114 = MEMORY[0x1AC5B4070](v113);
    v115 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v115, v116);
    v117 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v117, v118);
    if (v114)
    {
      v142 = v120;
      v137[0] = v119;

      v58 = static ExtensionFieldValueSet.== infix(_:_:)(&v142, v137);

      return v58 & 1;
    }
  }

LABEL_14:
  v58 = 0;
  return v58 & 1;
}

uint64_t Google_Protobuf_EnumValueOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  memcpy(v9, v10, 0x71uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4B8950();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B9490(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4B8950();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_ServiceOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E30 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558708);
}

void Google_Protobuf_ServiceOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v4(v5);
    if (v3 || (v6 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v8)
    {
      v14 = OUTLINED_FUNCTION_7();
      sub_1AC4A89C4(v14, v15, v16, v17);
    }

    else if (v7 == 34)
    {
      v10 = OUTLINED_FUNCTION_7();
      sub_1AC4B7818(v10, v11, v12, v13);
    }

    else if (v7 == 33)
    {
      OUTLINED_FUNCTION_36_0();
      v9();
    }

    else if ((v7 - 1000) <= 0x1FFFFC17)
    {
      v18 = OUTLINED_FUNCTION_37_1();
      sub_1AC4B9690(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  OUTLINED_FUNCTION_379();
}

void sub_1AC4B9710()
{
  if (*(v0 + 62) != 2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  v2 = OUTLINED_FUNCTION_44();
  sub_1AC4B98A4(v2);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v3)
    {
      sub_1AC50D0A4();
    }

    v4 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v4, v5, v6, v7);
    OUTLINED_FUNCTION_390();
  }
}

void Google_Protobuf_ServiceOptions.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v50 = *(v1 + 47);
  OUTLINED_FUNCTION_191();
  if (HIBYTE(v50) != 2)
  {
    OUTLINED_FUNCTION_42_1(SHIBYTE(v50));
    OUTLINED_FUNCTION_10();
    v4();
    v0 = v2;
  }

  if (!v0)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1AC4B9940(v5, v6, v7, v8);
    if (!v2)
    {
      if (*(v47 + 16))
      {
        OUTLINED_FUNCTION_138();
        sub_1AC4BFBE8();
        OUTLINED_FUNCTION_28();
        v3();
      }

      OUTLINED_FUNCTION_53_2(v49, v35, v39, v43);
      OUTLINED_FUNCTION_154();
      OUTLINED_FUNCTION_27();
      v9 = (v3)();
      v17 = OUTLINED_FUNCTION_306(v9, v10, v11, v12, v13, v14, v15, v16, v36, v40, v44);
      OUTLINED_FUNCTION_69_1(v48, v17, v18, v19, v20, v21, v22, v23, v24, v25, v37, v41, v26);
      v27 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v27, v28, v29, v30, v31, v32, v33, v34, v38, v42, v45, v46);
    }
  }
}

void *sub_1AC4B98A4(void *result)
{
  if (result[6])
  {
    v2 = MEMORY[0x1AC5B48A0](34);
    OUTLINED_FUNCTION_215(v2, v3, v4, v5, v6, v7, v8, v9, v24);
    v10 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v10, v11);

    OUTLINED_FUNCTION_94_1(v12);
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v16 = sub_1AC485714(v13, v14, v15);
    return OUTLINED_FUNCTION_216(v16, v17, v18, v19, v20, v21, v22, v23, v25);
  }

  return result;
}

uint64_t sub_1AC4B9940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 48);
  if (v4)
  {
    v9 = *(result + 32);
    v11 = *(result + 56);
    v12 = *(result + 60);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 34, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_ServiceOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56) | (*(a1 + 60) << 32);
  v6 = *(a1 + 62);
  v7 = *a2;
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56) | (*(a2 + 60) << 32);
  v12 = *(a2 + 62);
  if (v4)
  {
    v88[0] = *(a1 + 32);
    v88[1] = v3;
    v88[2] = v4;
    v89 = v5;
    v90 = WORD2(v5);
    if (v10)
    {
      HIDWORD(v80) = v6;
      v78 = v2;
      v79 = v7;
      OUTLINED_FUNCTION_349();
      v77 = v13;
      *&v82 = v9;
      *(&v82 + 1) = v8;
      v83 = v10;
      v85 = WORD2(v11);
      v84 = v11;
      v14 = OUTLINED_FUNCTION_54_1();
      sub_1AC485860(v14, v15, v16);
      v17 = OUTLINED_FUNCTION_190();
      sub_1AC485860(v17, v18, v19);
      v20 = OUTLINED_FUNCTION_54_1();
      sub_1AC485860(v20, v21, v22);
      v23 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v88, &v82);
      OUTLINED_FUNCTION_282(v23, v24, v25, v26, v27, v28, v29, v30, v73, v74, v75, v76, v77, v78, v79, v80, v82, v83, v84, v85, v86);
      OUTLINED_FUNCTION_122();
      sub_1AC4AEF78(v87);
      v31 = OUTLINED_FUNCTION_54_1();
      sub_1AC485714(v31, v32, v33);
      if ((v11 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_122();
    v40 = OUTLINED_FUNCTION_54_1();
    sub_1AC485860(v40, v41, v42);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v43, v44, v45);
    v46 = OUTLINED_FUNCTION_54_1();
    sub_1AC485860(v46, v47, v48);
    sub_1AC4AEF78(v87);
LABEL_8:
    v49 = OUTLINED_FUNCTION_54_1();
    sub_1AC485714(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_190();
    sub_1AC485714(v52, v53, v54);
    goto LABEL_9;
  }

  v81 = *(a1 + 62);
  OUTLINED_FUNCTION_349();
  v34 = OUTLINED_FUNCTION_348();
  sub_1AC485860(v34, v35, v36);
  if (v10)
  {
    v37 = OUTLINED_FUNCTION_190();
    sub_1AC485860(v37, v38, v39);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_88_1();
  sub_1AC485860(v57, v58, v59);
  v60 = OUTLINED_FUNCTION_348();
  sub_1AC485714(v60, v61, v62);
LABEL_12:
  if (v81 == 2)
  {
    if (v12 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (v12 == 2 || ((v81 ^ v12) & 1) != 0)
  {
    goto LABEL_9;
  }

  if (sub_1AC47DB68())
  {
    v63 = OUTLINED_FUNCTION_52();
    sub_1AC4578F4(v63, v64);
    v65 = OUTLINED_FUNCTION_18();
    sub_1AC4578F4(v65, v66);
    v67 = OUTLINED_FUNCTION_17_5();
    v68 = MEMORY[0x1AC5B4070](v67);
    v69 = OUTLINED_FUNCTION_18();
    sub_1AC4513F8(v69, v70);
    v71 = OUTLINED_FUNCTION_52();
    sub_1AC4513F8(v71, v72);
    if (v68)
    {
      v88[0] = v74;
      v87[0] = v73;

      v55 = static ExtensionFieldValueSet.== infix(_:_:)(v88, v87);

      return v55 & 1;
    }
  }

LABEL_9:
  v55 = 0;
  return v55 & 1;
}

uint64_t Google_Protobuf_ServiceOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_148();
  *(v2 + 47) = *(v0 + 47);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51);
  OUTLINED_FUNCTION_273(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4B9710();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4B9D70(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8[0] = v1[2];
  *(v8 + 15) = *(v1 + 47);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4B9710();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_MethodOptions._protobuf_nameMap.getter()
{
  if (qword_1EB557E38 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558728);
}

void Google_Protobuf_MethodOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_153();
  while (1)
  {
    v3 = OUTLINED_FUNCTION_98();
    v1(v3);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    OUTLINED_FUNCTION_331();
    if (v6)
    {
      OUTLINED_FUNCTION_7();
      sub_1AC4BA08C();
    }

    else
    {
      switch(v5)
      {
        case '""':
          v8 = OUTLINED_FUNCTION_7();
          sub_1AC4B9FAC(v8, v9, v10, v11);
          break;
        case '#':
          OUTLINED_FUNCTION_7();
          sub_1AC4BA02C();
          break;
        case '!':
          OUTLINED_FUNCTION_299();
          OUTLINED_FUNCTION_36_0();
          v7();
          break;
        default:
          if (v5 - 1000 <= v2)
          {
            OUTLINED_FUNCTION_37_1();
            sub_1AC4BA0EC();
          }

          break;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4B9FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C68C8();
  return v7(a2 + 33, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v8, a3, a4);
}

void sub_1AC4BA02C()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 408);
  sub_1AC4C1928();
  OUTLINED_FUNCTION_27();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA08C()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_120();
  v1 = *(v0 + 416);
  sub_1AC4BFBE8();
  OUTLINED_FUNCTION_27();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA0EC()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_224();
  v0();
  OUTLINED_FUNCTION_260();
  v1();
  OUTLINED_FUNCTION_327();
}

void sub_1AC4BA144()
{
  OUTLINED_FUNCTION_149();
  if (!v2)
  {
    MEMORY[0x1AC5B48A0](33);
    sub_1AC51F488();
  }

  v3 = *(v0 + 33);
  if (v3 != 3)
  {
    MEMORY[0x1AC5B48A0](34);
    MEMORY[0x1AC5B48A0](v3);
  }

  v4 = OUTLINED_FUNCTION_44();
  sub_1AC4BA38C(v4);
  if (!v1)
  {
    OUTLINED_FUNCTION_335();
    if (v5)
    {
      sub_1AC50D0A4();
    }

    v6 = OUTLINED_FUNCTION_82_1();
    sub_1AC5175D4(v6, v7, v8, v9);
    OUTLINED_FUNCTION_390();
  }
}

uint64_t sub_1AC4BA2DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 33) != 3)
  {
    v8 = *(result + 33);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C68C8();
    return v6(&v8, 34, &type metadata for Google_Protobuf_MethodOptions.IdempotencyLevel, v7, a3, a4);
  }

  return result;
}

void *sub_1AC4BA38C(void *result)
{
  if (result[7])
  {
    OUTLINED_FUNCTION_146();
    v3 = MEMORY[0x1AC5B48A0](v2);
    OUTLINED_FUNCTION_215(v3, v4, v5, v6, v7, v8, v9, v10, v25);
    v11 = OUTLINED_FUNCTION_19();
    sub_1AC4578F4(v11, v12);

    OUTLINED_FUNCTION_94_1(v13);
    if (v1)
    {
      MEMORY[0x1AC5B4BA0](v1);
    }

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_239();
    v17 = sub_1AC485714(v14, v15, v16);
    return OUTLINED_FUNCTION_216(v17, v18, v19, v20, v21, v22, v23, v24, v26);
  }

  return result;
}

uint64_t sub_1AC4BA418(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56))
  {
    v4 = *(a4 + 136);
    sub_1AC4C1928();
    OUTLINED_FUNCTION_28();
    return v4(v5, v6, v7, v8);
  }

  return result;
}

uint64_t static Google_Protobuf_MethodOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 68);
  v11 = *(a1 + 64);
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  if (v5 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_26;
    }
  }

  else if (v14 == 2 || ((v5 ^ v14) & 1) != 0)
  {
    goto LABEL_26;
  }

  if (v6 == 3)
  {
    if (v15 != 3)
    {
      goto LABEL_26;
    }
  }

  else if (v15 == 3 || v6 != v15)
  {
    goto LABEL_26;
  }

  v20 = v11 | (v10 << 32);
  v84 = *(a2 + 64) | (*(a2 + 68) << 32);
  if (!v9)
  {
    v78 = *(a2 + 24);
    v80 = v4;
    v42 = OUTLINED_FUNCTION_12();
    sub_1AC485860(v42, v43, 0);
    if (!v18)
    {
      v61 = OUTLINED_FUNCTION_24();
      sub_1AC485860(v61, v62, 0);
      v63 = OUTLINED_FUNCTION_12();
      sub_1AC485714(v63, v64, 0);
      goto LABEL_23;
    }

    v44 = OUTLINED_FUNCTION_111_0();
    sub_1AC485860(v44, v45, v46);
LABEL_21:
    v55 = OUTLINED_FUNCTION_39_1();
    sub_1AC485714(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_111_0();
    sub_1AC485714(v58, v59, v60);
LABEL_26:
    v74 = 0;
    return v74 & 1;
  }

  v91[0] = v8;
  v91[1] = v7;
  v91[2] = v9;
  v92 = v20;
  v93 = WORD2(v20);
  if (!v18)
  {
    OUTLINED_FUNCTION_122();
    v47 = OUTLINED_FUNCTION_39_1();
    sub_1AC485860(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_24();
    sub_1AC485860(v50, v51, 0);
    v52 = OUTLINED_FUNCTION_39_1();
    sub_1AC485860(v52, v53, v54);
    sub_1AC4AEF78(v90);
    goto LABEL_21;
  }

  v77 = v13;
  v79 = v4;
  v81 = v3;
  v82 = v2;
  *&v85 = v17;
  *(&v85 + 1) = v16;
  v86 = v18;
  v88 = WORD2(v84);
  v87 = v84;
  v21 = OUTLINED_FUNCTION_39_1();
  v83 = v22;
  sub_1AC485860(v21, v23, v24);
  v25 = OUTLINED_FUNCTION_111_0();
  sub_1AC485860(v25, v26, v27);
  v28 = OUTLINED_FUNCTION_39_1();
  sub_1AC485860(v28, v29, v30);
  v31 = static Google_Protobuf_FeatureSet.== infix(_:_:)(v91, &v85);
  OUTLINED_FUNCTION_282(v31, v32, v33, v34, v35, v36, v37, v38, v76, v12, v77, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89);
  OUTLINED_FUNCTION_122();
  sub_1AC4AEF78(v90);
  v39 = OUTLINED_FUNCTION_39_1();
  sub_1AC485714(v39, v40, v41);
  if ((v16 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((sub_1AC47DB68() & 1) == 0)
  {
    goto LABEL_26;
  }

  v65 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v65, v66);
  v67 = OUTLINED_FUNCTION_93_0();
  sub_1AC4578F4(v67, v68);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_95();
  v69 = MEMORY[0x1AC5B4070]();
  v70 = OUTLINED_FUNCTION_93_0();
  sub_1AC4513F8(v70, v71);
  v72 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v72, v73);
  if ((v69 & 1) == 0)
  {
    goto LABEL_26;
  }

  v91[0] = v80;
  v90[0] = v78;

  v74 = static ExtensionFieldValueSet.== infix(_:_:)(v91, v90);

  return v74 & 1;
}

uint64_t Google_Protobuf_MethodOptions.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x46uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4BA144();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BA8B0(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4BA144();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_MethodOptions.IdempotencyLevel._protobuf_nameMap.getter()
{
  if (qword_1EB557E40 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558748);
}

uint64_t static Google_Protobuf_UninterpretedOption._protobuf_nameMap.getter()
{
  if (qword_1EB557E48 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558768);
}

uint64_t Google_Protobuf_UninterpretedOption.isInitialized.getter()
{
  v1 = sub_1AC4A33A4(*v0);
  static Internal.areAllInitialized(_:)(v1);
  OUTLINED_FUNCTION_234();
  return v0 & 1;
}

void Google_Protobuf_UninterpretedOption.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 2:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4BAC14(v5, v6, v7, v8);
        break;
      case 3:
        OUTLINED_FUNCTION_257();
        goto LABEL_7;
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
LABEL_7:
        OUTLINED_FUNCTION_36_0();
        v9();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_364();
}

uint64_t sub_1AC4BAC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFD94();
  return v7(a2, &type metadata for Google_Protobuf_UninterpretedOption.NamePart, v8, a3, a4);
}

void sub_1AC4BAC94()
{
  OUTLINED_FUNCTION_49();
  if (!*(*v1 + 16) || (sub_1AC50D4C4(), !v0))
  {
    if (*(v1 + 32))
    {
      MEMORY[0x1AC5B48A0](3);
      OUTLINED_FUNCTION_35_1();
      sub_1AC51EEB8();
    }

    if ((*(v1 + 48) & 1) == 0)
    {
      v2 = *(v1 + 40);
      MEMORY[0x1AC5B48A0](4);
      MEMORY[0x1AC5B48D0](v2);
    }

    if ((*(v1 + 64) & 1) == 0)
    {
      v3 = *(v1 + 56);
      MEMORY[0x1AC5B48A0](5);
      MEMORY[0x1AC5B48D0](v3);
    }

    if ((*(v1 + 80) & 1) != 0 || (sub_1AC4DF9DC(*(v1 + 72)), !v0))
    {
      if (*(v1 + 96) >> 60 != 15)
      {
        MEMORY[0x1AC5B48A0](7);
        v4 = OUTLINED_FUNCTION_12();
        sub_1AC4578F4(v4, v5);
        OUTLINED_FUNCTION_35_1();
        sub_1AC51EC58();
        v6 = OUTLINED_FUNCTION_12();
        sub_1AC45AC74(v6, v7);
      }

      if (*(v1 + 112))
      {
        MEMORY[0x1AC5B48A0](8);
        OUTLINED_FUNCTION_35_1();
        sub_1AC51EEB8();
      }

      v8 = *(v1 + 8);
      v9 = *(v1 + 16);
      switch(v9 >> 62)
      {
        case 1uLL:
          OUTLINED_FUNCTION_73();
          goto LABEL_20;
        case 2uLL:
          v10 = *(v8 + 16);
          v11 = *(v8 + 24);
LABEL_20:
          if (v10 != v11)
          {
            goto LABEL_21;
          }

          return;
        case 3uLL:
          return;
        default:
          if ((v9 & 0xFF000000000000) == 0)
          {
            return;
          }

LABEL_21:
          sub_1AC51EC58();
          break;
      }
    }
  }
}

void Google_Protobuf_UninterpretedOption.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  memcpy(v3, v4, 0x78uLL);
  OUTLINED_FUNCTION_211();
  if (!v12 || (OUTLINED_FUNCTION_138(), sub_1AC4BFD94(), OUTLINED_FUNCTION_28(), v5 = v2(), (v0 = v1) == 0))
  {
    v13 = v54;
    if (v54)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      v5 = v14();
      v0 = v1;
    }

    if (!v0)
    {
      if ((v55 & 1) != 0 || (OUTLINED_FUNCTION_10(), v5 = v15(), !v1))
      {
        if ((v56 & 1) != 0 || (OUTLINED_FUNCTION_10(), v5 = v16(), !v1))
        {
          if ((v57 & 1) != 0 || (OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_36_0(), v5 = v17(), !v1))
          {
            v18 = OUTLINED_FUNCTION_2_5(v5, v13, v6, v7, v8, v9, v10, v11, v41, v44, v47, v49, v51, v52);
            sub_1AC4BAF94(v18, v19, v20, v21);
            if (!v1)
            {
              v31 = v58;
              if (v58)
              {
                OUTLINED_FUNCTION_103();
                OUTLINED_FUNCTION_27();
                v22 = v32();
              }

              OUTLINED_FUNCTION_69_1(v53, v22, v31, v23, v24, v25, v26, v27, v28, v29, v42, v45, v30);
              v33 = OUTLINED_FUNCTION_28_2();
              OUTLINED_FUNCTION_218(v33, v34, v35, v36, v37, v38, v39, v40, v43, v46, v48, v50);
            }
          }
        }
      }
    }
  }
}

void sub_1AC4BAF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 96);
  if (v4 >> 60 != 15)
  {
    v7 = *(a1 + 88);
    v8 = *(a4 + 120);
    sub_1AC4578F4(v7, v4);
    v8(v7, v4, 7, a3, a4);
    sub_1AC45AC74(v7, v4);
  }
}

uint64_t static Google_Protobuf_UninterpretedOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v61 = *(a1 + 56);
  v6 = *(a1 + 72);
  v62 = *(a1 + 80);
  v63 = *(a1 + 64);
  v59 = *(a1 + 96);
  v54 = *(a1 + 104);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v60 = *(a2 + 80);
  v56 = *(a1 + 112);
  v57 = *(a2 + 88);
  v58 = *(a2 + 96);
  v53 = *(a2 + 104);
  v55 = *(a2 + 112);
  v14 = OUTLINED_FUNCTION_263(*a1);
  if ((sub_1AC47BF2C(v14) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    if (v2 != v7 || v4 != v8)
    {
      OUTLINED_FUNCTION_121();
      if ((sub_1AC51F3D8() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v9)
    {
      v16 = v10;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v63)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v61 == v11)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v62)
  {
    if (!v60)
    {
      return 0;
    }
  }

  else
  {
    v18 = v60;
    if (v6 != v13)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v59 >> 60 == 15)
  {
    if (v58 >> 60 == 15)
    {
      v19 = OUTLINED_FUNCTION_76();
      sub_1AC4B39F0(v19, v20);
      sub_1AC4B39F0(v57, v58);
      v21 = OUTLINED_FUNCTION_76();
      sub_1AC45AC74(v21, v22);
      goto LABEL_38;
    }

LABEL_35:
    v23 = OUTLINED_FUNCTION_76();
    sub_1AC4B39F0(v23, v24);
    v25 = OUTLINED_FUNCTION_10_1();
    sub_1AC4B39F0(v25, v26);
    v27 = OUTLINED_FUNCTION_76();
    sub_1AC45AC74(v27, v28);
    v29 = OUTLINED_FUNCTION_10_1();
    sub_1AC45AC74(v29, v30);
    return 0;
  }

  if (v58 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v32 = OUTLINED_FUNCTION_76();
  sub_1AC4B39F0(v32, v33);
  v34 = OUTLINED_FUNCTION_98();
  sub_1AC4B39F0(v34, v35);
  v36 = OUTLINED_FUNCTION_7();
  v37 = MEMORY[0x1AC5B4070](v36);
  v38 = OUTLINED_FUNCTION_98();
  sub_1AC45AC74(v38, v39);
  v40 = OUTLINED_FUNCTION_76();
  sub_1AC45AC74(v40, v41);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if (!v56)
  {
    if (!v55)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (!v55)
  {
    return 0;
  }

  v42 = v54 == v53 && v56 == v55;
  if (!v42 && (sub_1AC51F3D8() & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v43 = OUTLINED_FUNCTION_52();
  sub_1AC4578F4(v43, v44);
  v45 = OUTLINED_FUNCTION_18();
  sub_1AC4578F4(v45, v46);
  v47 = OUTLINED_FUNCTION_17_5();
  v48 = MEMORY[0x1AC5B4070](v47);
  v49 = OUTLINED_FUNCTION_18();
  sub_1AC4513F8(v49, v50);
  v51 = OUTLINED_FUNCTION_52();
  sub_1AC4513F8(v51, v52);
  return v48 & 1;
}

uint64_t Google_Protobuf_UninterpretedOption.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_301(a1, a2, a3, a4, a5, a6, a7, a8, v36, v40, v44, v47, v50, v53, v56, v59, v62, v65, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
  memcpy(v9, v10, 0x78uLL);
  v11 = OUTLINED_FUNCTION_250();
  v19 = OUTLINED_FUNCTION_130(v11, v12, v13, v14, v15, v16, v17, v18, v37, v41, v45, v48, v51, v54, v57, v60, v63, v66);
  OUTLINED_FUNCTION_144(v19, v20, v21, v22, v23, v24, v25, v26, v38, v42);
  sub_1AC4BAC94();
  if (v8)
  {
    v27 = MEMORY[0x1AC5B4BA0](v8);
  }

  OUTLINED_FUNCTION_132(v27, v28, v29, v30, v31, v32, v33, v34, v39, v43, v46, v49, v52, v55, v58, v61, v64, v67);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB42C(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4BAC94();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB4C0()
{
  result = MEMORY[0x1AC5B4340](0x726150656D614E2ELL, 0xE900000000000074);
  qword_1EB558788 = 0xD000000000000023;
  unk_1EB558790 = 0x80000001AC52E470;
  return result;
}

uint64_t static Google_Protobuf_UninterpretedOption.NamePart._protobuf_nameMap.getter()
{
  if (qword_1EB557E58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558798);
}

BOOL Google_Protobuf_UninterpretedOption.NamePart.isInitialized.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32) == 2;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

void Google_Protobuf_UninterpretedOption.NamePart.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_357();
  while (1)
  {
    v5 = OUTLINED_FUNCTION_98();
    v6 = v4(v5);
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (v6 == 2)
    {
      OUTLINED_FUNCTION_299();
      OUTLINED_FUNCTION_36_0();
      v9();
    }

    else if (v6 == 1)
    {
      OUTLINED_FUNCTION_298();
      OUTLINED_FUNCTION_36_0();
      v8();
    }
  }

  OUTLINED_FUNCTION_379();
}

void sub_1AC4BB698()
{
  OUTLINED_FUNCTION_49();
  if (*(v0 + 24))
  {
    MEMORY[0x1AC5B48A0](1);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0 + 32) != 2)
  {
    MEMORY[0x1AC5B48A0](2);
    sub_1AC51F488();
  }

  OUTLINED_FUNCTION_259();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_10;
    case 2:
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
LABEL_10:
      if (v4 != v5)
      {
        goto LABEL_11;
      }

      return;
    case 3:
      return;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_11:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_UninterpretedOption.NamePart.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_31_2();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  if (v10)
  {
    OUTLINED_FUNCTION_9_6();
    v3 = v12();
    v2 = v1;
  }

  if (!v2)
  {
    if (v11 == 2 || (OUTLINED_FUNCTION_10(), v3 = v13(), !v1))
    {
      OUTLINED_FUNCTION_322(v3, v10, v4, v5, v6, v7, v8, v9, v22, v24, v26, v29);
      v14 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v14, v15, v16, v17, v18, v19, v20, v21, v23, v25, v27, v28);
    }
  }
}

uint64_t static Google_Protobuf_UninterpretedOption.NamePart.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v3 == v5;
    if (!v7 && (sub_1AC51F3D8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4 != 2)
  {
    if (v6 != 2 && ((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_16:
  v9 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v9, v10);
  v11 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v11, v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_125();
  v13 = MEMORY[0x1AC5B4070]();
  v14 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v14, v15);
  v16 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v16, v17);
  return v13 & 1;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.hashValue.getter()
{
  OUTLINED_FUNCTION_276();
  v1 = OUTLINED_FUNCTION_232();
  v9 = OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v26, v29, v32, v35, v37, v39, v41, v43, v45, v47, v49);
  OUTLINED_FUNCTION_272(v9, v10, v11, v12, v13, v14, v15, v16, v27, v30, v33);
  sub_1AC4BB698();
  if (v0)
  {
    v17 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_108(v17, v18, v19, v20, v21, v22, v23, v24, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48, v50);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BB9FC(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8 = *(v1 + 32);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BB698();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FeatureSet._protobuf_nameMap.getter()
{
  if (qword_1EB557E60 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587B8);
}

void Google_Protobuf_FeatureSet.decodeMessage<A>(decoder:)()
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

    switch(v3)
    {
      case 1:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4BBC34(v5, v6, v7, v8);
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_7();
        sub_1AC4BBCB4(v21, v22, v23, v24);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4BBD34(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_7();
        sub_1AC4BBDB4(v17, v18, v19, v20);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4BBE34(v9, v10, v11, v12);
        break;
      case 6:
        v25 = OUTLINED_FUNCTION_7();
        sub_1AC4BBEB4(v25, v26, v27, v28);
        break;
      default:
        if ((v3 - 1000) <= 0x2328)
        {
          v29 = OUTLINED_FUNCTION_37_1();
          sub_1AC4BBF34(v29, v30, v31, v32, v33);
        }

        break;
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t sub_1AC4BBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6874();
  return v7(a2 + 24, &type metadata for Google_Protobuf_FeatureSet.FieldPresence, v8, a3, a4);
}

uint64_t sub_1AC4BBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6820();
  return v7(a2 + 25, &type metadata for Google_Protobuf_FeatureSet.EnumType, v8, a3, a4);
}

uint64_t sub_1AC4BBD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C67CC();
  return v7(a2 + 26, &type metadata for Google_Protobuf_FeatureSet.RepeatedFieldEncoding, v8, a3, a4);
}

uint64_t sub_1AC4BBDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6778();
  return v7(a2 + 27, &type metadata for Google_Protobuf_FeatureSet.Utf8Validation, v8, a3, a4);
}

uint64_t sub_1AC4BBE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6724();
  return v7(a2 + 28, &type metadata for Google_Protobuf_FeatureSet.MessageEncoding, v8, a3, a4);
}

uint64_t sub_1AC4BBEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C66D0();
  return v7(a2 + 29, &type metadata for Google_Protobuf_FeatureSet.JsonFormat, v8, a3, a4);
}

void sub_1AC4BBFB4()
{
  OUTLINED_FUNCTION_326();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  if (v1 != 4)
  {
    MEMORY[0x1AC5B48A0](1);
    MEMORY[0x1AC5B48A0](v9);
  }

  if ((v2 & 0xFF00) != 0x300)
  {
    MEMORY[0x1AC5B48A0](2);
    MEMORY[0x1AC5B48A0](BYTE1(v2));
  }

  if ((v2 & 0xFF0000) != 0x30000)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](BYTE2(v2));
  }

  if ((v2 & 0xFF000000) != 0x3000000)
  {
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48A0](qword_1AC526950[v2 >> 24]);
  }

  if ((v2 & 0xFF00000000) != 0x300000000)
  {
    MEMORY[0x1AC5B48A0](5);
    MEMORY[0x1AC5B48A0](BYTE4(v2));
  }

  if ((v2 & 0xFF0000000000) != 0x30000000000)
  {
    MEMORY[0x1AC5B48A0](6);
    MEMORY[0x1AC5B48A0](BYTE5(v2));
  }

  sub_1AC5175D4(v8, 1000, 10001, v4);
  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_261();
    sub_1AC4937B8(v10, v11, v6);
  }

  OUTLINED_FUNCTION_327();
}

void Google_Protobuf_FeatureSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_31_2();
  v3 = *v0;
  v4 = v0[1];
  v5 = OUTLINED_FUNCTION_19_3();
  sub_1AC4BC210(v5, v6, v7, v8, v9, v10, v11);
  if (!v1)
  {
    v12 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC2A4(v12, v13, v14, v15, v16, v17, v18);
    v19 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC33C(v19, v20, v21, v22, v23, v24, v25);
    v26 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC3D4(v26, v27, v28, v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC46C(v33, v34, v35, v36, v37, v38, v39);
    v40 = OUTLINED_FUNCTION_19_3();
    sub_1AC4BC504(v40, v41, v42, v43, v44, v45, v46);
    v47 = *(v2 + 432);

    OUTLINED_FUNCTION_27();
    v47(v48);

    v49 = OUTLINED_FUNCTION_93_0();
    sub_1AC4578F4(v49, v50);
    v51 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_385(v51, v52, v53, v54, v55, v56, v57, v58, v3, v4);
  }

  OUTLINED_FUNCTION_364();
}

void sub_1AC4BC210(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 4)
  {
    v11 = a4;
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6874();
    v9(&v11, 1, &type metadata for Google_Protobuf_FeatureSet.FieldPresence, v10, a6, a7);
  }
}

void sub_1AC4BC2A4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 3)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6820();
    v9(&v11, 2, &type metadata for Google_Protobuf_FeatureSet.EnumType, v10, a6, a7);
  }
}

void sub_1AC4BC33C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE2(a4) != 3)
  {
    v11 = BYTE2(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C67CC();
    v9(&v11, 3, &type metadata for Google_Protobuf_FeatureSet.RepeatedFieldEncoding, v10, a6, a7);
  }
}

void sub_1AC4BC3D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 3)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6778();
    v9(&v11, 4, &type metadata for Google_Protobuf_FeatureSet.Utf8Validation, v10, a6, a7);
  }
}

void sub_1AC4BC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE4(a4) != 3)
  {
    v11 = BYTE4(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C6724();
    v9(&v11, 5, &type metadata for Google_Protobuf_FeatureSet.MessageEncoding, v10, a6, a7);
  }
}

void sub_1AC4BC504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE5(a4) != 3)
  {
    v11 = BYTE5(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C66D0();
    v9(&v11, 6, &type metadata for Google_Protobuf_FeatureSet.JsonFormat, v10, a6, a7);
  }
}

uint64_t static Google_Protobuf_FeatureSet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a1 + 26);
  v6 = *(a1 + 27);
  v7 = *(a1 + 28);
  v8 = *(a1 + 29);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 25);
  v12 = *(a2 + 26);
  v13 = *(a2 + 27);
  v14 = *(a2 + 28);
  v15 = *(a2 + 29);
  if (v3 == 4)
  {
    if (v10 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v3 != v10)
  {
    goto LABEL_44;
  }

  if (v4 == 3)
  {
    if (v11 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v11 == 3 || v4 != v11)
  {
    goto LABEL_44;
  }

  if (v5 == 3)
  {
    if (v12 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v12 == 3 || v5 != v12)
  {
    goto LABEL_44;
  }

  if (v6 == 3)
  {
    if (v13 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v13 == 3 || qword_1AC526950[v6] != qword_1AC526950[v13])
  {
    goto LABEL_44;
  }

  if (v7 == 3)
  {
    if (v14 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v14 == 3 || v7 != v14)
  {
    goto LABEL_44;
  }

  if (v8 == 3)
  {
    if (v15 != 3)
    {
      goto LABEL_44;
    }
  }

  else if (v15 == 3 || v8 != v15)
  {
    goto LABEL_44;
  }

  v20 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v20, v21);
  v22 = OUTLINED_FUNCTION_19();
  sub_1AC4578F4(v22, v23);
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_351();
  v24 = MEMORY[0x1AC5B4070]();
  v25 = OUTLINED_FUNCTION_19();
  sub_1AC4513F8(v25, v26);
  v27 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v27, v28);
  if ((v24 & 1) == 0)
  {
LABEL_44:
    v29 = 0;
    return v29 & 1;
  }

  v31 = v9;
  v32 = v2;

  v29 = static ExtensionFieldValueSet.== infix(_:_:)(&v32, &v31);

  return v29 & 1;
}

uint64_t Google_Protobuf_FeatureSet.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 29);
  v4 = OUTLINED_FUNCTION_232();
  v12 = OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51);
  OUTLINED_FUNCTION_243(v12, v13, v14, v15, v1 | (v2 << 32) | (v3 << 40), v16, v17, v18, v29, v32, v35);
  OUTLINED_FUNCTION_125();
  sub_1AC4BBFB4();
  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BC884(uint64_t a1)
{
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BBFB4();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_FeatureSet.FieldPresence._protobuf_nameMap.getter()
{
  if (qword_1EB557E68 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587D8);
}

uint64_t static Google_Protobuf_FeatureSet.EnumType._protobuf_nameMap.getter()
{
  if (qword_1EB557E70 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5587F8);
}

uint64_t static Google_Protobuf_FeatureSet.RepeatedFieldEncoding._protobuf_nameMap.getter()
{
  if (qword_1EB557E78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558818);
}

uint64_t static Google_Protobuf_FeatureSet.Utf8Validation._protobuf_nameMap.getter()
{
  if (qword_1EB557E80 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558838);
}

uint64_t static Google_Protobuf_FeatureSet.MessageEncoding._protobuf_nameMap.getter()
{
  if (qword_1EB557E88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558858);
}

uint64_t static Google_Protobuf_FeatureSet.JsonFormat._protobuf_nameMap.getter()
{
  if (qword_1EB557E90 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558878);
}

uint64_t static Google_Protobuf_FeatureSetDefaults._protobuf_nameMap.getter()
{
  if (qword_1EB557E98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558898);
}

uint64_t Google_Protobuf_FeatureSetDefaults.isInitialized.getter()
{
  v1 = sub_1AC4A3ABC(*v0);
  static Internal.areAllInitialized(_:)(v1);
  OUTLINED_FUNCTION_234();
  return v0 & 1;
}

uint64_t Google_Protobuf_FeatureSetDefaults.decodeMessage<A>(decoder:)()
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
      case 5:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4BCF60(v13, v14, v15, v16);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4BCEE0(v9, v10, v11, v12);
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4BCE60(v5, v6, v7, v8);
        break;
    }
  }

  return result;
}

uint64_t sub_1AC4BCE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 416);
  v8 = sub_1AC4BFDE8();
  return v7(a2, &type metadata for Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault, v8, a3, a4);
}

uint64_t sub_1AC4BCEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 24, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

uint64_t sub_1AC4BCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C667C();
  return v7(a2 + 25, &type metadata for Google_Protobuf_Edition, v8, a3, a4);
}

void sub_1AC4BCFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  OUTLINED_FUNCTION_332();
  if (!v9 || (sub_1AC510320(), !v5))
  {
    if (a5 != 12)
    {
      MEMORY[0x1AC5B48A0](4);
      MEMORY[0x1AC5B48A0](qword_1AC526968[a5]);
    }

    if (HIBYTE(a5) != 12)
    {
      MEMORY[0x1AC5B48A0](5);
      MEMORY[0x1AC5B48A0](qword_1AC526968[SHIBYTE(a5)]);
    }

    switch(v6 >> 62)
    {
      case 1uLL:
        v10 = v7;
        v11 = v7 >> 32;
        goto LABEL_12;
      case 2uLL:
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
LABEL_12:
        if (v10 != v11)
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
        OUTLINED_FUNCTION_36_0();
        sub_1AC51EC58();
        break;
    }
  }
}

void Google_Protobuf_FeatureSetDefaults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  v6 = *v1;
  v5 = v1[1];
  v35 = v1[2];
  if (!*(*v1 + 16) || (v34 = v1[1], v7 = *(v3 + 280), v8 = sub_1AC4BFDE8(), v2 = v0, v7(v6, 1, &type metadata for Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault, v8, v4, v3), !v0))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_44_1();
    sub_1AC4BD1D0(v9, v10, v11, v12, v13, v14, v15);
    if (!v2)
    {
      OUTLINED_FUNCTION_187();
      OUTLINED_FUNCTION_44_1();
      sub_1AC4BD264(v16, v17, v18, v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_12_0();
      sub_1AC4578F4(v23, v24);
      v25 = OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_218(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v5, v35);
    }
  }

  OUTLINED_FUNCTION_284();
}

void sub_1AC4BD1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 != 12)
  {
    v11 = a4;
    v9 = *(a7 + 128);
    v10 = sub_1AC4C667C();
    v9(&v11, 4, &type metadata for Google_Protobuf_Edition, v10, a6, a7);
  }
}

void sub_1AC4BD264(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (HIBYTE(a4) != 12)
  {
    v11 = HIBYTE(a4);
    v9 = *(a7 + 128);
    v10 = sub_1AC4C667C();
    v9(&v11, 5, &type metadata for Google_Protobuf_Edition, v10, a6, a7);
  }
}

void static Google_Protobuf_FeatureSetDefaults.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_392();
  v3 = *(v2 + 24);
  v4 = *(v2 + 25);
  v6 = *(v5 + 24);
  v7 = *(v5 + 25);
  OUTLINED_FUNCTION_263(*v2);
  if (sub_1AC47D834())
  {
    if (v3 == 12)
    {
      if (v6 != 12)
      {
        goto LABEL_13;
      }
    }

    else if (v6 == 12 || qword_1AC526968[v3] != qword_1AC526968[v6])
    {
      goto LABEL_13;
    }

    if (v4 == 12)
    {
      if (v7 != 12)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v7 != 12 && qword_1AC526968[v4] == qword_1AC526968[v7])
    {
LABEL_12:
      v8 = OUTLINED_FUNCTION_44();
      sub_1AC4578F4(v8, v9);
      v10 = OUTLINED_FUNCTION_10_1();
      sub_1AC4578F4(v10, v11);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_125();
      MEMORY[0x1AC5B4070]();
      v12 = OUTLINED_FUNCTION_10_1();
      sub_1AC4513F8(v12, v13);
      v14 = OUTLINED_FUNCTION_44();
      sub_1AC4513F8(v14, v15);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_378();
}

uint64_t Google_Protobuf_FeatureSetDefaults.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_232();
  v10 = OUTLINED_FUNCTION_109(v2, v3, v4, v5, v6, v7, v8, v9, v31, v34, v37, v40, v42, v44, v46, v48, v50, v52, v54);
  OUTLINED_FUNCTION_243(v10, v11, v12, v13, v14, v15, v16, v17, v32, v35, v38);
  OUTLINED_FUNCTION_125();
  sub_1AC4BCFE0(v18, v19, v20, v21, v1);
  OUTLINED_FUNCTION_108(v22, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v41, v43, v45, v47, v49, v51, v53, v55);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BD4E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BCFE0(__dst, v2, v3, v4, v5);
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BD578()
{
  result = MEMORY[0x1AC5B4340](0xD000000000000019, 0x80000001AC52E960);
  qword_1EB5588B8 = 0xD000000000000022;
  unk_1EB5588C0 = 0x80000001AC52E4C0;
  return result;
}

uint64_t static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault._protobuf_nameMap.getter()
{
  if (qword_1EB557EA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5588C8);
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.decodeMessage<A>(decoder:)()
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
      case 5:
        v13 = OUTLINED_FUNCTION_7();
        sub_1AC4BD80C(v13, v14, v15, v16);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_7();
        sub_1AC4BD78C(v9, v10, v11, v12);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_7();
        sub_1AC4B6848(v5, v6, v7, v8);
        break;
    }
  }

  return result;
}

uint64_t sub_1AC4BD78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 24, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

uint64_t sub_1AC4BD80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 408);
  v8 = sub_1AC4C1928();
  return v7(a2 + 56, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
}

void sub_1AC4BD88C()
{
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 16);
  if (v3 != 12)
  {
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48A0](qword_1AC526968[v3]);
  }

  if (*(v2 + 40))
  {
    MEMORY[0x1AC5B48A0](4);
    memcpy(v19, v1, sizeof(v19));
    v4 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v4, v5);

    OUTLINED_FUNCTION_175();
    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
      v0 = 0;
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_297();
    sub_1AC485714(v6, v7, v8);
    memcpy(v1, v19, 0x48uLL);
  }

  if (*(v2 + 72))
  {
    MEMORY[0x1AC5B48A0](5);
    memcpy(__dst, v1, sizeof(__dst));
    v9 = OUTLINED_FUNCTION_100();
    sub_1AC4578F4(v9, v10);

    OUTLINED_FUNCTION_175();
    sub_1AC4BBFB4();
    if (v0)
    {
      MEMORY[0x1AC5B4BA0](v0);
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_297();
    sub_1AC485714(v11, v12, v13);
    memcpy(v1, __dst, 0x48uLL);
  }

  OUTLINED_FUNCTION_259();
  switch(v16)
  {
    case 1:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2:
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
LABEL_16:
      if (v17 != v18)
      {
        goto LABEL_17;
      }

      return;
    case 3:
      return;
    default:
      if ((v15 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_3_8();
  v3 = memcpy(v1, v2, 0x56uLL);
  v11 = OUTLINED_FUNCTION_2_5(v3, v4, v5, v6, v7, v8, v9, v10, v57, v62, v67, v71, v75, v78.n128_i8[0]);
  v15 = sub_1AC4B6A20(v11, v12, v13, v14);
  if (!v0)
  {
    v23 = OUTLINED_FUNCTION_2_5(v15, v16, v17, v18, v19, v20, v21, v22, v58, v63, v68, v72, v76, v78.n128_i8[0]);
    v27 = sub_1AC4BDAD4(v23, v24, v25, v26);
    v35 = OUTLINED_FUNCTION_2_5(v27, v28, v29, v30, v31, v32, v33, v34, v59, v64, v69, v73, v77, v78.n128_i8[0]);
    v39 = sub_1AC4BDB7C(v35, v36, v37, v38);
    OUTLINED_FUNCTION_74_1(v39, v78, v40, v41, v42, v43, v44, v45, v46, v47, v60, v65, v48);
    v49 = OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_218(v49, v50, v51, v52, v53, v54, v55, v56, v61, v66, v70, v74);
  }
}

uint64_t sub_1AC4BDAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    v9 = *(result + 24);
    v11 = *(result + 48);
    v12 = *(result + 52);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 4, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t sub_1AC4BDB7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 72);
  if (v4)
  {
    v9 = *(result + 56);
    v11 = *(result + 80);
    v12 = *(result + 84);
    v10 = v4;
    v7 = *(a4 + 136);
    v8 = sub_1AC4C1928();
    return v7(&v9, 5, &type metadata for Google_Protobuf_FeatureSet, v8, a3, a4);
  }

  return result;
}

uint64_t static Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 52);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 84);
  v14 = *(a1 + 80);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v19 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v21 = *(a2 + 26);
  v22 = *(a2 + 12);
  v23 = *(a2 + 20);
  if (v4 == 12)
  {
    if (v17 != 12)
    {
      goto LABEL_24;
    }
  }

  else if (v17 == 12 || qword_1AC526968[v4] != qword_1AC526968[v17])
  {
    goto LABEL_24;
  }

  v129 = *(a2 + 42);
  v130 = v14;
  v131 = a2[9];
  v132 = *(a2 + 7);
  v133 = v12;
  v134 = v10;
  v135 = v11;
  v24 = v9 | (v8 << 32);
  v25 = v22 | (v21 << 32);
  if (!v7)
  {
    v127 = v2;
    v128 = v13;
    v121 = a2[1];
    v123 = *a2;
    v125 = v3;
    v47 = OUTLINED_FUNCTION_76();
    sub_1AC485860(v47, v48, 0);
    if (!v20)
    {
      OUTLINED_FUNCTION_88_1();
      sub_1AC485860(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_76();
      sub_1AC485714(v65, v66, 0);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_258();
    sub_1AC485860(v49, v50, v51);
LABEL_13:
    v142 = v6;
    v143 = v5;
    v144 = v7;
    v145 = v24;
    v146 = WORD2(v24);
    v147 = v19;
    v148 = v18;
    v149 = v20;
    v150 = v25;
    v61 = HIDWORD(v25);
LABEL_23:
    v151 = v61;
    sub_1AC4575D8(&v142, &qword_1EB558A58, &qword_1AC520E68);
    goto LABEL_24;
  }

  v142 = v6;
  v143 = v5;
  v144 = v7;
  v145 = v9;
  v146 = (v9 | (v8 << 32)) >> 32;
  if (!v20)
  {
    OUTLINED_FUNCTION_118();
    v52 = OUTLINED_FUNCTION_72_1();
    sub_1AC485860(v52, v53, v54);
    OUTLINED_FUNCTION_88_1();
    sub_1AC485860(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_72_1();
    sub_1AC485860(v58, v59, v60);
    sub_1AC4AEF78(v141);
    goto LABEL_13;
  }

  v126 = v2;
  v120 = v16;
  v122 = v15;
  v124 = v3;
  *&v136 = v19;
  *(&v136 + 1) = v18;
  v137 = v20;
  v139 = (v22 | (v21 << 32)) >> 32;
  v138 = v22;
  v26 = OUTLINED_FUNCTION_72_1();
  sub_1AC485860(v26, v27, v28);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_258();
  sub_1AC485860(v29, v30, v31);
  v32 = OUTLINED_FUNCTION_72_1();
  sub_1AC485860(v32, v33, v34);
  v35 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v142, &v136);
  v36 = v35;
  OUTLINED_FUNCTION_309(v35, v37, v38, v39, v40, v41, v42, v43, v119, v120, v122, v124, v126, v13, v129, v14, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140);
  OUTLINED_FUNCTION_118();
  sub_1AC4AEF78(v141);
  v44 = OUTLINED_FUNCTION_72_1();
  sub_1AC485714(v44, v45, v46);
  if ((v36 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (!v133)
  {
    v68 = v134;
    v67 = v135;
    v92 = OUTLINED_FUNCTION_98();
    sub_1AC485860(v92, v93, 0);
    v69 = *(&v132 + 1);
    v70 = v132;
    v71 = v131;
    if (!v131)
    {
      v106 = OUTLINED_FUNCTION_12_0();
      sub_1AC485860(v106, v107, 0);
      v108 = OUTLINED_FUNCTION_98();
      sub_1AC485714(v108, v109, 0);
LABEL_27:
      v110 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v110, v111);
      v112 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v112, v113);
      v114 = OUTLINED_FUNCTION_17_5();
      v104 = MEMORY[0x1AC5B4070](v114);
      v115 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v115, v116);
      v117 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v117, v118);
      return v104 & 1;
    }

    v94 = OUTLINED_FUNCTION_12_0();
    sub_1AC485860(v94, v95, v131);
    goto LABEL_22;
  }

  v68 = v134;
  v67 = v135;
  v142 = v134;
  v143 = v135;
  v144 = v133;
  v145 = v130;
  v146 = (v130 | (v128 << 32)) >> 32;
  v69 = *(&v132 + 1);
  v70 = v132;
  v71 = v131;
  if (!v131)
  {
    OUTLINED_FUNCTION_118();
    v96 = OUTLINED_FUNCTION_70_1();
    sub_1AC485860(v96, v97, v98);
    v99 = OUTLINED_FUNCTION_12_0();
    sub_1AC485860(v99, v100, 0);
    v101 = OUTLINED_FUNCTION_70_1();
    sub_1AC485860(v101, v102, v103);
    sub_1AC4AEF78(v141);
LABEL_22:
    v142 = v68;
    v143 = v67;
    v144 = v133;
    v145 = v130;
    v146 = (v130 | (v128 << 32)) >> 32;
    v147 = v70;
    v148 = v69;
    v149 = v71;
    v150 = v23;
    v61 = (v23 | (v129 << 32)) >> 32;
    goto LABEL_23;
  }

  v136 = v132;
  v137 = v131;
  v139 = (v23 | (v129 << 32)) >> 32;
  v138 = v23;
  v72 = OUTLINED_FUNCTION_70_1();
  sub_1AC485860(v72, v73, v74);
  v75 = OUTLINED_FUNCTION_12_0();
  sub_1AC485860(v75, v76, v131);
  v77 = OUTLINED_FUNCTION_70_1();
  sub_1AC485860(v77, v78, v79);
  v80 = static Google_Protobuf_FeatureSet.== infix(_:_:)(&v142, &v136);
  v81 = v80;
  OUTLINED_FUNCTION_309(v80, v82, v83, v84, v85, v86, v87, v88, v119, v121, v123, v125, v127, v128, v129, v130, v131, v132, *(&v132 + 1), v133, v134, v135, v136, v137, v138, v139, v140);
  OUTLINED_FUNCTION_118();
  sub_1AC4AEF78(v141);
  v89 = OUTLINED_FUNCTION_70_1();
  sub_1AC485714(v89, v90, v91);
  if (v81)
  {
    goto LABEL_27;
  }

LABEL_24:
  v104 = 0;
  return v104 & 1;
}

uint64_t Google_Protobuf_FeatureSetDefaults.FeatureSetEditionDefault.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_130(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36);
  sub_1AC4BD88C();
  OUTLINED_FUNCTION_132(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE100(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4BD88C();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_SourceCodeInfo._protobuf_nameMap.getter()
{
  if (qword_1EB557EB0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB5588E8);
}

void sub_1AC4BE260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_377();
  v6 = v5;
  v8 = v7;
  v9 = *(v5 + 16);
  while (1)
  {
    v10 = v9(v8, v6);
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (v10 == 1)
    {
      v12 = OUTLINED_FUNCTION_48();
      sub_1AC4BED70(v12, v13, v8, v6);
    }
  }

  OUTLINED_FUNCTION_379();
}

uint64_t sub_1AC4BE36C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_109(v1, v2, v3, v4, v5, v6, v7, v8, v18, v20, v22, v24, v26, v28, v30, v32, v34, v36, v38);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4BEE0C();
  OUTLINED_FUNCTION_108(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1AC51F468();
  OUTLINED_FUNCTION_109(v4, v5, v6, v7, v8, v9, v10, v11, v21, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41);
  OUTLINED_FUNCTION_113_0();
  sub_1AC4BEE0C();
  OUTLINED_FUNCTION_108(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BE4DC()
{
  result = MEMORY[0x1AC5B4340](0x6F697461636F4C2ELL, 0xE90000000000006ELL);
  qword_1EB558908 = 0xD00000000000001ELL;
  unk_1EB558910 = 0x80000001AC52E4F0;
  return result;
}

uint64_t static Google_Protobuf_SourceCodeInfo.Location._protobuf_nameMap.getter()
{
  if (qword_1EB557EC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558918);
}

void Google_Protobuf_SourceCodeInfo.Location.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
      case 2:
      case 4:
      case 6:
        goto LABEL_5;
      case 3:
        OUTLINED_FUNCTION_352();
LABEL_5:
        OUTLINED_FUNCTION_36_0();
        v5();
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

void sub_1AC4BE6F8()
{
  OUTLINED_FUNCTION_49();
  if (*(*v0 + 16))
  {
    MEMORY[0x1AC5B48A0](1);
    v1 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v1, v2);
  }

  if (*(v0[1] + 16))
  {
    MEMORY[0x1AC5B48A0](2);
    v3 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v3, v4);
  }

  if (v0[6])
  {
    MEMORY[0x1AC5B48A0](3);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (v0[8])
  {
    MEMORY[0x1AC5B48A0](4);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if (*(v0[2] + 16))
  {
    MEMORY[0x1AC5B48A0](6);
    OUTLINED_FUNCTION_48();
    sub_1AC51AAC4();
  }

  v5 = v0[3];
  v6 = v0[4];
  switch(v6 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2uLL:
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
LABEL_16:
      if (v7 != v8)
      {
        goto LABEL_17;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v6 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_SourceCodeInfo.Location.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_296();
  v4 = *v1;
  v5 = v1[1];
  v16 = v1[2];
  v6 = v1[6];
  v12 = v1[8];
  if (!*(v4 + 16) || (OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_356(), v7(), (v0 = v2) == 0))
  {
    if (!*(v5 + 16) || (OUTLINED_FUNCTION_37(), OUTLINED_FUNCTION_356(), v8(), (v0 = v2) == 0))
    {
      if (v6)
      {
        OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_279();
        v9();
        v0 = v2;
      }

      if (!v0)
      {
        if (!v12 || (OUTLINED_FUNCTION_103(), OUTLINED_FUNCTION_27(), v10(), !v2))
        {
          if (!*(v16 + 16) || (OUTLINED_FUNCTION_10(), v11(), !v2))
          {
            v14 = *(v3 + 24);
            v15 = v14;
            sub_1AC4848F4(&v15, v13);
            OUTLINED_FUNCTION_48_2();
            sub_1AC4513F8(v14, *(&v14 + 1));
          }
        }
      }
    }
  }
}

void static Google_Protobuf_SourceCodeInfo.Location.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_366();
  v27 = v1[2];
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v26 = v6[2];
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v11 = OUTLINED_FUNCTION_263(*v1);
  if ((sub_1AC47C690(v11, v12) & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = OUTLINED_FUNCTION_19();
  if ((sub_1AC47C690(v13, v14) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    if (v5)
    {
      if (!v10)
      {
        goto LABEL_23;
      }

      if (v4 != v9 || v5 != v10)
      {
        OUTLINED_FUNCTION_12_0();
        if ((sub_1AC51F3D8() & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v10)
    {
      goto LABEL_23;
    }

    if (sub_1AC47808C(v27, v26))
    {
      v17 = OUTLINED_FUNCTION_52();
      sub_1AC4578F4(v17, v18);
      v19 = OUTLINED_FUNCTION_18();
      sub_1AC4578F4(v19, v20);
      v21 = OUTLINED_FUNCTION_17_5();
      MEMORY[0x1AC5B4070](v21);
      v22 = OUTLINED_FUNCTION_18();
      sub_1AC4513F8(v22, v23);
      v24 = OUTLINED_FUNCTION_52();
      sub_1AC4513F8(v24, v25);
    }

    goto LABEL_23;
  }

  if (v8)
  {
    if (v2 == v7 && v3 == v8)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_76();
    if (sub_1AC51F3D8())
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_365();
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_300();
  memcpy(v1, v2, 0x48uLL);
  v3 = OUTLINED_FUNCTION_250();
  v11 = OUTLINED_FUNCTION_130(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v36, v38, v40, v42, v44, v46, v48);
  OUTLINED_FUNCTION_145(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32);
  sub_1AC4BE6F8();
  if (v0)
  {
    v19 = MEMORY[0x1AC5B4BA0](v0);
  }

  OUTLINED_FUNCTION_132(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v37, v39, v41, v43, v45, v47, v49);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BEC04(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_1AC51F468();
  memcpy(v3, __src, sizeof(v3));
  sub_1AC4BE6F8();
  memcpy(__src, v3, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo._protobuf_nameMap.getter()
{
  if (qword_1EB557EC8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558938);
}

void sub_1AC4BED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_377();
  v5 = *(v4 + 416);
  v6();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_278();
  v5();
  OUTLINED_FUNCTION_379();
}

void sub_1AC4BEE0C()
{
  OUTLINED_FUNCTION_332();
  if (!v5 || (v4(v3, 1), !v0))
  {
    switch(v1 >> 62)
    {
      case 1uLL:
        v6 = v2;
        v7 = v2 >> 32;
        goto LABEL_8;
      case 2uLL:
        v6 = *(v2 + 16);
        v7 = *(v2 + 24);
LABEL_8:
        if (v6 != v7)
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

uint64_t sub_1AC4BEF90(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_263(*a1);
  if ((v2(v1) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_44();
  sub_1AC4578F4(v3, v4);
  v5 = OUTLINED_FUNCTION_10_1();
  sub_1AC4578F4(v5, v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_125();
  v7 = MEMORY[0x1AC5B4070]();
  v8 = OUTLINED_FUNCTION_10_1();
  sub_1AC4513F8(v8, v9);
  v10 = OUTLINED_FUNCTION_44();
  sub_1AC4513F8(v10, v11);
  return v7 & 1;
}

uint64_t sub_1AC4BF0BC()
{
  result = MEMORY[0x1AC5B4340](0x7461746F6E6E412ELL, 0xEB000000006E6F69);
  qword_1EB558958 = 0xD000000000000021;
  unk_1EB558960 = 0x80000001AC52E510;
  return result;
}

uint64_t sub_1AC4BF150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_76();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo.Annotation._protobuf_nameMap.getter()
{
  if (qword_1EB557ED8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558968);
}

void Google_Protobuf_GeneratedCodeInfo.Annotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_21();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_98();
    v3 = v1(v2);
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    switch(v3)
    {
      case 1:
      case 3:
      case 4:
        OUTLINED_FUNCTION_36_0();
        v5();
        break;
      case 2:
        OUTLINED_FUNCTION_257();
        OUTLINED_FUNCTION_36_0();
        v10();
        break;
      case 5:
        v6 = OUTLINED_FUNCTION_7();
        sub_1AC4BF330(v6, v7, v8, v9);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC4BF330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 392);
  v8 = sub_1AC4C6628();
  return v7(a2 + 53, &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic, v8, a3, a4);
}

void sub_1AC4BF3B0()
{
  OUTLINED_FUNCTION_49();
  if (*(*v0 + 16))
  {
    MEMORY[0x1AC5B48A0](1);
    v1 = OUTLINED_FUNCTION_48();
    sub_1AC51ACF0(v1, v2);
  }

  if (*(v0 + 32))
  {
    MEMORY[0x1AC5B48A0](2);
    OUTLINED_FUNCTION_35_1();
    sub_1AC51EEB8();
  }

  if ((*(v0 + 44) & 1) == 0)
  {
    v3 = *(v0 + 40);
    MEMORY[0x1AC5B48A0](3);
    MEMORY[0x1AC5B48D0](v3);
  }

  if ((*(v0 + 52) & 1) == 0)
  {
    v4 = *(v0 + 48);
    MEMORY[0x1AC5B48A0](4);
    MEMORY[0x1AC5B48D0](v4);
  }

  v5 = *(v0 + 53);
  if (v5 != 3)
  {
    MEMORY[0x1AC5B48A0](5);
    MEMORY[0x1AC5B48A0](v5);
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  switch(v7 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_73();
      goto LABEL_16;
    case 2uLL:
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
LABEL_16:
      if (v8 != v9)
      {
        goto LABEL_17;
      }

      return;
    case 3uLL:
      return;
    default:
      if ((v7 & 0xFF000000000000) == 0)
      {
        return;
      }

LABEL_17:
      sub_1AC51EC58();
      return;
  }
}

void Google_Protobuf_GeneratedCodeInfo.Annotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_191();
  v39 = *(v1 + 46);
  if (!*(v35 + 16) || (OUTLINED_FUNCTION_10(), v3(), (v0 = v2) == 0))
  {
    if (v37)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_27();
      v4();
      v0 = v2;
    }

    if (!v0)
    {
      if ((v38 & 1) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v5(), !v2))
      {
        if ((v39 & 0x1000000000000) != 0 || (OUTLINED_FUNCTION_171(), OUTLINED_FUNCTION_10(), v6(), !v2))
        {
          OUTLINED_FUNCTION_12_6();
          v11 = sub_1AC4BF5E4(v7, v8, v9, v10);
          if (!v2)
          {
            OUTLINED_FUNCTION_74_1(v11, v36, v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v20);
            v21 = OUTLINED_FUNCTION_28_2();
            OUTLINED_FUNCTION_218(v21, v22, v23, v24, v25, v26, v27, v28, v30, v32, v33, v34);
          }
        }
      }
    }
  }
}

uint64_t sub_1AC4BF5E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 53) != 3)
  {
    v8 = *(result + 53);
    v6 = *(a4 + 128);
    v7 = sub_1AC4C6628();
    return v6(&v8, 5, &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic, v7, a3, a4);
  }

  return result;
}

void static Google_Protobuf_GeneratedCodeInfo.Annotation.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_366();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 44);
  v29 = *(v1 + 53);
  v30 = *(v1 + 52);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 44);
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  v27 = *(v1 + 48);
  v28 = *(v6 + 53);
  v13 = OUTLINED_FUNCTION_263(*v1);
  if ((sub_1AC47C690(v13, v14) & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!v3)
  {
    if (v8)
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v5)
    {
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v4 == v9)
      {
        v16 = v10;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        goto LABEL_32;
      }
    }

    if (v30)
    {
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v27 == v11)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_32;
      }
    }

    if (v29 == 3)
    {
      if (v28 != 3)
      {
        goto LABEL_32;
      }
    }

    else if (v28 == 3 || v29 != v28)
    {
      goto LABEL_32;
    }

    v18 = OUTLINED_FUNCTION_44();
    sub_1AC4578F4(v18, v19);
    v20 = OUTLINED_FUNCTION_10_1();
    sub_1AC4578F4(v20, v21);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_125();
    MEMORY[0x1AC5B4070]();
    v22 = OUTLINED_FUNCTION_10_1();
    sub_1AC4513F8(v22, v23);
    v24 = OUTLINED_FUNCTION_44();
    sub_1AC4513F8(v24, v25);
    goto LABEL_32;
  }

  if (v8)
  {
    if (v2 == v7 && v3 == v8)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_12();
    if (sub_1AC51F3D8())
    {
      goto LABEL_11;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_365();
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.hashValue.getter()
{
  OUTLINED_FUNCTION_148();
  *(v2 + 46) = *(v0 + 46);
  v3 = OUTLINED_FUNCTION_232();
  v11 = OUTLINED_FUNCTION_109(v3, v4, v5, v6, v7, v8, v9, v10, v28, v31, v34, v37, v39, v41, v43, v45, v47, v49, v51);
  OUTLINED_FUNCTION_273(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v35);
  sub_1AC4BF3B0();
  if (v1)
  {
    v19 = MEMORY[0x1AC5B4BA0](v1);
  }

  OUTLINED_FUNCTION_108(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52);
  return sub_1AC51F4C8();
}

uint64_t sub_1AC4BF90C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v8[0] = v1[2];
  *(v8 + 14) = *(v1 + 46);
  sub_1AC51F468();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AC4BF3B0();
  memcpy(__src, __dst, sizeof(__src));
  return sub_1AC51F4C8();
}

uint64_t static Google_Protobuf_GeneratedCodeInfo.Annotation.Semantic._protobuf_nameMap.getter()
{
  if (qword_1EB557EE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_70(qword_1EB558988);
}

unint64_t sub_1AC4BFA44()
{
  result = qword_1EB5589D0;
  if (!qword_1EB5589D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589D0);
  }

  return result;
}

unint64_t sub_1AC4BFA98()
{
  result = qword_1EB5589D8;
  if (!qword_1EB5589D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589D8);
  }

  return result;
}

unint64_t sub_1AC4BFAEC()
{
  result = qword_1EB5589E0;
  if (!qword_1EB5589E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589E0);
  }

  return result;
}

unint64_t sub_1AC4BFB40()
{
  result = qword_1EB5589E8;
  if (!qword_1EB5589E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589E8);
  }

  return result;
}

unint64_t sub_1AC4BFB94()
{
  result = qword_1EB5589F8;
  if (!qword_1EB5589F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5589F8);
  }

  return result;
}

unint64_t sub_1AC4BFBE8()
{
  result = qword_1EB558A00;
  if (!qword_1EB558A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A00);
  }

  return result;
}

unint64_t sub_1AC4BFC98()
{
  result = qword_1EB558A10;
  if (!qword_1EB558A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A10);
  }

  return result;
}

unint64_t sub_1AC4BFCEC()
{
  result = qword_1EB558A18;
  if (!qword_1EB558A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A18);
  }

  return result;
}

unint64_t sub_1AC4BFD40()
{
  result = qword_1EB558A30;
  if (!qword_1EB558A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A30);
  }

  return result;
}

unint64_t sub_1AC4BFD94()
{
  result = qword_1EB558A48;
  if (!qword_1EB558A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A48);
  }

  return result;
}

unint64_t sub_1AC4BFDE8()
{
  result = qword_1EB558A50;
  if (!qword_1EB558A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A50);
  }

  return result;
}

unint64_t sub_1AC4BFE3C()
{
  result = qword_1EB558A60;
  if (!qword_1EB558A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A60);
  }

  return result;
}

unint64_t sub_1AC4BFE90()
{
  result = qword_1EB558A68;
  if (!qword_1EB558A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A68);
  }

  return result;
}

unint64_t sub_1AC4BFEE8()
{
  result = qword_1EB558A70;
  if (!qword_1EB558A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A70);
  }

  return result;
}

unint64_t sub_1AC4BFF68()
{
  result = qword_1EB558A78;
  if (!qword_1EB558A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A78);
  }

  return result;
}

unint64_t sub_1AC4BFFBC()
{
  result = qword_1EB558A80;
  if (!qword_1EB558A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A80);
  }

  return result;
}

unint64_t sub_1AC4C0044()
{
  result = qword_1EB558A98;
  if (!qword_1EB558A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558A98);
  }

  return result;
}

unint64_t sub_1AC4C00C4()
{
  result = qword_1EB558AA0;
  if (!qword_1EB558AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AA0);
  }

  return result;
}

unint64_t sub_1AC4C0118()
{
  result = qword_1EB558AA8;
  if (!qword_1EB558AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AA8);
  }

  return result;
}

unint64_t sub_1AC4C019C(uint64_t a1)
{
  result = sub_1AC4C01C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C01C4()
{
  result = qword_1EB558AC0;
  if (!qword_1EB558AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AC0);
  }

  return result;
}

unint64_t sub_1AC4C021C()
{
  result = qword_1EB558AC8;
  if (!qword_1EB558AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AC8);
  }

  return result;
}

unint64_t sub_1AC4C029C()
{
  result = qword_1EB558AD0;
  if (!qword_1EB558AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AD0);
  }

  return result;
}

unint64_t sub_1AC4C02F0()
{
  result = qword_1EB558AD8;
  if (!qword_1EB558AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AD8);
  }

  return result;
}

unint64_t sub_1AC4C0378()
{
  result = qword_1EB558AF0;
  if (!qword_1EB558AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AF0);
  }

  return result;
}

unint64_t sub_1AC4C03F8()
{
  result = qword_1EB558AF8;
  if (!qword_1EB558AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558AF8);
  }

  return result;
}

unint64_t sub_1AC4C044C()
{
  result = qword_1EB558B00;
  if (!qword_1EB558B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B00);
  }

  return result;
}

unint64_t sub_1AC4C04D4()
{
  result = qword_1EB558B18;
  if (!qword_1EB558B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B18);
  }

  return result;
}

unint64_t sub_1AC4C0554()
{
  result = qword_1EB558B20;
  if (!qword_1EB558B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B20);
  }

  return result;
}

unint64_t sub_1AC4C05A8()
{
  result = qword_1EB558B28;
  if (!qword_1EB558B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B28);
  }

  return result;
}

unint64_t sub_1AC4C062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC4C0654();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0654()
{
  result = qword_1EB558B40;
  if (!qword_1EB558B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B40);
  }

  return result;
}

unint64_t sub_1AC4C06A8(uint64_t a1)
{
  result = sub_1AC4C06D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C06D0()
{
  result = qword_1EB558B48;
  if (!qword_1EB558B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B48);
  }

  return result;
}

unint64_t sub_1AC4C0728()
{
  result = qword_1EB558B50;
  if (!qword_1EB558B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B50);
  }

  return result;
}

unint64_t sub_1AC4C07A8()
{
  result = qword_1EB558B58;
  if (!qword_1EB558B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B58);
  }

  return result;
}

unint64_t sub_1AC4C07FC()
{
  result = qword_1EB558B60;
  if (!qword_1EB558B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B60);
  }

  return result;
}

unint64_t sub_1AC4C0884()
{
  result = qword_1EB558B78;
  if (!qword_1EB558B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B78);
  }

  return result;
}

unint64_t sub_1AC4C0904()
{
  result = qword_1EB558B80;
  if (!qword_1EB558B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B80);
  }

  return result;
}

unint64_t sub_1AC4C0958()
{
  result = qword_1EB558B88;
  if (!qword_1EB558B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558B88);
  }

  return result;
}

unint64_t sub_1AC4C09E0()
{
  result = qword_1EB558BA0;
  if (!qword_1EB558BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BA0);
  }

  return result;
}

unint64_t sub_1AC4C0A60()
{
  result = qword_1EB558BA8;
  if (!qword_1EB558BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BA8);
  }

  return result;
}

unint64_t sub_1AC4C0AB4()
{
  result = qword_1EB558BB0;
  if (!qword_1EB558BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BB0);
  }

  return result;
}

unint64_t sub_1AC4C0B3C()
{
  result = qword_1EB558BC8;
  if (!qword_1EB558BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BC8);
  }

  return result;
}

unint64_t sub_1AC4C0BBC()
{
  result = qword_1EB558BD0;
  if (!qword_1EB558BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BD0);
  }

  return result;
}

unint64_t sub_1AC4C0C10()
{
  result = qword_1EB558BD8;
  if (!qword_1EB558BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BD8);
  }

  return result;
}

unint64_t sub_1AC4C0C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC4C0CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0CBC()
{
  result = qword_1EB558BF0;
  if (!qword_1EB558BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BF0);
  }

  return result;
}

unint64_t sub_1AC4C0D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AC4C0D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0D38()
{
  result = qword_1EB558BF8;
  if (!qword_1EB558BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558BF8);
  }

  return result;
}

unint64_t sub_1AC4C0D8C(uint64_t a1)
{
  result = sub_1AC4C0DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0DB4()
{
  result = qword_1EB558C00;
  if (!qword_1EB558C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C00);
  }

  return result;
}

unint64_t sub_1AC4C0E08(uint64_t a1)
{
  result = sub_1AC4C0E30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0E30()
{
  result = qword_1EB558C08;
  if (!qword_1EB558C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C08);
  }

  return result;
}

unint64_t sub_1AC4C0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1AC4C0EAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C0EAC()
{
  result = qword_1EB558C10;
  if (!qword_1EB558C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C10);
  }

  return result;
}

unint64_t sub_1AC4C0F04()
{
  result = qword_1EB558C18;
  if (!qword_1EB558C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C18);
  }

  return result;
}

unint64_t sub_1AC4C0F84()
{
  result = qword_1EB558C20;
  if (!qword_1EB558C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C20);
  }

  return result;
}

unint64_t sub_1AC4C0FD8()
{
  result = qword_1EB558C28;
  if (!qword_1EB558C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C28);
  }

  return result;
}

unint64_t sub_1AC4C105C(uint64_t a1)
{
  result = sub_1AC4C1084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1084()
{
  result = qword_1EB558C40;
  if (!qword_1EB558C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C40);
  }

  return result;
}

unint64_t sub_1AC4C10DC()
{
  result = qword_1EB558C48;
  if (!qword_1EB558C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C48);
  }

  return result;
}

unint64_t sub_1AC4C115C()
{
  result = qword_1EB558C50;
  if (!qword_1EB558C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C50);
  }

  return result;
}

unint64_t sub_1AC4C11B0()
{
  result = qword_1EB558C58;
  if (!qword_1EB558C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C58);
  }

  return result;
}

unint64_t sub_1AC4C1238()
{
  result = qword_1EB558C70;
  if (!qword_1EB558C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C70);
  }

  return result;
}

unint64_t sub_1AC4C12B8()
{
  result = qword_1EB558C78;
  if (!qword_1EB558C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C78);
  }

  return result;
}

unint64_t sub_1AC4C130C()
{
  result = qword_1EB558C80;
  if (!qword_1EB558C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C80);
  }

  return result;
}

unint64_t sub_1AC4C1394()
{
  result = qword_1EB558C98;
  if (!qword_1EB558C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558C98);
  }

  return result;
}

unint64_t sub_1AC4C1414()
{
  result = qword_1EB558CA0;
  if (!qword_1EB558CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CA0);
  }

  return result;
}

unint64_t sub_1AC4C1468()
{
  result = qword_1EB558CA8;
  if (!qword_1EB558CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CA8);
  }

  return result;
}

unint64_t sub_1AC4C14F0()
{
  result = qword_1EB558CC0;
  if (!qword_1EB558CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CC0);
  }

  return result;
}

unint64_t sub_1AC4C1570()
{
  result = qword_1EB558CC8;
  if (!qword_1EB558CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CC8);
  }

  return result;
}

unint64_t sub_1AC4C15C4()
{
  result = qword_1EB558CD0;
  if (!qword_1EB558CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CD0);
  }

  return result;
}

unint64_t sub_1AC4C164C()
{
  result = qword_1EB558CE8;
  if (!qword_1EB558CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CE8);
  }

  return result;
}

unint64_t sub_1AC4C16CC()
{
  result = qword_1EB558CF0;
  if (!qword_1EB558CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CF0);
  }

  return result;
}

unint64_t sub_1AC4C1720()
{
  result = qword_1EB558CF8;
  if (!qword_1EB558CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558CF8);
  }

  return result;
}

unint64_t sub_1AC4C17A8()
{
  result = qword_1EB558D10;
  if (!qword_1EB558D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D10);
  }

  return result;
}

unint64_t sub_1AC4C1828()
{
  result = qword_1EB558D18;
  if (!qword_1EB558D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D18);
  }

  return result;
}

unint64_t sub_1AC4C187C()
{
  result = qword_1EB558D20;
  if (!qword_1EB558D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D20);
  }

  return result;
}

unint64_t sub_1AC4C1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC4C1928();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1928()
{
  result = qword_1EB558D38;
  if (!qword_1EB558D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D38);
  }

  return result;
}

unint64_t sub_1AC4C1980()
{
  result = qword_1EB558D40;
  if (!qword_1EB558D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D40);
  }

  return result;
}

unint64_t sub_1AC4C1A00()
{
  result = qword_1EB558D48;
  if (!qword_1EB558D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D48);
  }

  return result;
}

unint64_t sub_1AC4C1A54()
{
  result = qword_1EB558D50;
  if (!qword_1EB558D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D50);
  }

  return result;
}

uint64_t sub_1AC4C1AD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1AC4C1B2C(uint64_t a1)
{
  result = sub_1AC4C1B54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1B54()
{
  result = qword_1EB558D68;
  if (!qword_1EB558D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D68);
  }

  return result;
}

unint64_t sub_1AC4C1BD4()
{
  result = qword_1EB558D70;
  if (!qword_1EB558D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D70);
  }

  return result;
}

unint64_t sub_1AC4C1C28()
{
  result = qword_1EB558D78;
  if (!qword_1EB558D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D78);
  }

  return result;
}

unint64_t sub_1AC4C1C80()
{
  result = qword_1EB558D80;
  if (!qword_1EB558D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D80);
  }

  return result;
}

unint64_t sub_1AC4C1CD4(uint64_t a1)
{
  result = sub_1AC4C1CFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1CFC()
{
  result = qword_1EB558D88;
  if (!qword_1EB558D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D88);
  }

  return result;
}

unint64_t sub_1AC4C1D7C()
{
  result = qword_1EB558D90;
  if (!qword_1EB558D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D90);
  }

  return result;
}

unint64_t sub_1AC4C1DD4()
{
  result = qword_1EB558D98;
  if (!qword_1EB558D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558D98);
  }

  return result;
}

unint64_t sub_1AC4C1E28(uint64_t a1)
{
  result = sub_1AC4C1E50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1E50()
{
  result = qword_1EB558DA0;
  if (!qword_1EB558DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DA0);
  }

  return result;
}

unint64_t sub_1AC4C1ED0()
{
  result = qword_1EB558DA8;
  if (!qword_1EB558DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DA8);
  }

  return result;
}

unint64_t sub_1AC4C1F28()
{
  result = qword_1EB558DB0;
  if (!qword_1EB558DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DB0);
  }

  return result;
}

unint64_t sub_1AC4C1F7C(uint64_t a1)
{
  result = sub_1AC4C1FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C1FA4()
{
  result = qword_1EB558DB8;
  if (!qword_1EB558DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DB8);
  }

  return result;
}

unint64_t sub_1AC4C2024()
{
  result = qword_1EB558DC0;
  if (!qword_1EB558DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DC0);
  }

  return result;
}

unint64_t sub_1AC4C2078()
{
  result = qword_1EB558DC8;
  if (!qword_1EB558DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DC8);
  }

  return result;
}

unint64_t sub_1AC4C20D0()
{
  result = qword_1EB558DD0;
  if (!qword_1EB558DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DD0);
  }

  return result;
}

unint64_t sub_1AC4C2124(uint64_t a1)
{
  result = sub_1AC4C214C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C214C()
{
  result = qword_1EB558DD8;
  if (!qword_1EB558DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DD8);
  }

  return result;
}

unint64_t sub_1AC4C21CC()
{
  result = qword_1EB558DE0;
  if (!qword_1EB558DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DE0);
  }

  return result;
}

unint64_t sub_1AC4C2220()
{
  result = qword_1EB558DE8;
  if (!qword_1EB558DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DE8);
  }

  return result;
}

unint64_t sub_1AC4C2278()
{
  result = qword_1EB558DF0;
  if (!qword_1EB558DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DF0);
  }

  return result;
}

unint64_t sub_1AC4C22CC(uint64_t a1)
{
  result = sub_1AC4C22F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C22F4()
{
  result = qword_1EB558DF8;
  if (!qword_1EB558DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558DF8);
  }

  return result;
}

unint64_t sub_1AC4C2374()
{
  result = qword_1EB558E00;
  if (!qword_1EB558E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E00);
  }

  return result;
}

unint64_t sub_1AC4C23CC()
{
  result = qword_1EB558E08;
  if (!qword_1EB558E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E08);
  }

  return result;
}

unint64_t sub_1AC4C2420(uint64_t a1)
{
  result = sub_1AC4C2448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2448()
{
  result = qword_1EB558E10;
  if (!qword_1EB558E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E10);
  }

  return result;
}

unint64_t sub_1AC4C24C8()
{
  result = qword_1EB558E18;
  if (!qword_1EB558E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E18);
  }

  return result;
}

unint64_t sub_1AC4C2520()
{
  result = qword_1EB558E20;
  if (!qword_1EB558E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E20);
  }

  return result;
}

unint64_t sub_1AC4C2574(uint64_t a1)
{
  result = sub_1AC4C259C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C259C()
{
  result = qword_1EB558E28;
  if (!qword_1EB558E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E28);
  }

  return result;
}

unint64_t sub_1AC4C261C()
{
  result = qword_1EB558E30;
  if (!qword_1EB558E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E30);
  }

  return result;
}

unint64_t sub_1AC4C2674()
{
  result = qword_1EB558E38;
  if (!qword_1EB558E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E38);
  }

  return result;
}

unint64_t sub_1AC4C26C8(uint64_t a1)
{
  result = sub_1AC4C26F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C26F0()
{
  result = qword_1EB558E40;
  if (!qword_1EB558E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E40);
  }

  return result;
}

unint64_t sub_1AC4C2770()
{
  result = qword_1EB558E48;
  if (!qword_1EB558E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E48);
  }

  return result;
}

unint64_t sub_1AC4C27C4()
{
  result = qword_1EB558E50;
  if (!qword_1EB558E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E50);
  }

  return result;
}

unint64_t sub_1AC4C281C()
{
  result = qword_1EB558E58;
  if (!qword_1EB558E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E58);
  }

  return result;
}

unint64_t sub_1AC4C2870(uint64_t a1)
{
  result = sub_1AC4C2898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2898()
{
  result = qword_1EB558E60;
  if (!qword_1EB558E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E60);
  }

  return result;
}

unint64_t sub_1AC4C2918()
{
  result = qword_1EB558E68;
  if (!qword_1EB558E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E68);
  }

  return result;
}

unint64_t sub_1AC4C2970()
{
  result = qword_1EB558E70;
  if (!qword_1EB558E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E70);
  }

  return result;
}

unint64_t sub_1AC4C29C4(uint64_t a1)
{
  result = sub_1AC4C29EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C29EC()
{
  result = qword_1EB558E78;
  if (!qword_1EB558E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E78);
  }

  return result;
}

unint64_t sub_1AC4C2A6C()
{
  result = qword_1EB558E80;
  if (!qword_1EB558E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E80);
  }

  return result;
}

unint64_t sub_1AC4C2AC4()
{
  result = qword_1EB558E88;
  if (!qword_1EB558E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E88);
  }

  return result;
}

unint64_t sub_1AC4C2B18(uint64_t a1)
{
  result = sub_1AC4C2B40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2B40()
{
  result = qword_1EB558E90;
  if (!qword_1EB558E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E90);
  }

  return result;
}

unint64_t sub_1AC4C2BC0()
{
  result = qword_1EB558E98;
  if (!qword_1EB558E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558E98);
  }

  return result;
}

unint64_t sub_1AC4C2C18()
{
  result = qword_1EB558EA0;
  if (!qword_1EB558EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EA0);
  }

  return result;
}

unint64_t sub_1AC4C2C6C(uint64_t a1)
{
  result = sub_1AC4C2C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2C94()
{
  result = qword_1EB558EA8;
  if (!qword_1EB558EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EA8);
  }

  return result;
}

unint64_t sub_1AC4C2D14()
{
  result = qword_1EB558EB0;
  if (!qword_1EB558EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EB0);
  }

  return result;
}

unint64_t sub_1AC4C2D6C()
{
  result = qword_1EB558EB8;
  if (!qword_1EB558EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EB8);
  }

  return result;
}

unint64_t sub_1AC4C2DC0(uint64_t a1)
{
  result = sub_1AC4C2DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2DE8()
{
  result = qword_1EB558EC0;
  if (!qword_1EB558EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EC0);
  }

  return result;
}

unint64_t sub_1AC4C2E68()
{
  result = qword_1EB558EC8;
  if (!qword_1EB558EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EC8);
  }

  return result;
}

unint64_t sub_1AC4C2EC0()
{
  result = qword_1EB558ED0;
  if (!qword_1EB558ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558ED0);
  }

  return result;
}

unint64_t sub_1AC4C2F14(uint64_t a1)
{
  result = sub_1AC4C2F3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C2F3C()
{
  result = qword_1EB558ED8;
  if (!qword_1EB558ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558ED8);
  }

  return result;
}

unint64_t sub_1AC4C2FBC()
{
  result = qword_1EB558EE0;
  if (!qword_1EB558EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EE0);
  }

  return result;
}

unint64_t sub_1AC4C3014()
{
  result = qword_1EB558EE8;
  if (!qword_1EB558EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EE8);
  }

  return result;
}

unint64_t sub_1AC4C3068(uint64_t a1)
{
  result = sub_1AC4C3090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3090()
{
  result = qword_1EB558EF0;
  if (!qword_1EB558EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EF0);
  }

  return result;
}

unint64_t sub_1AC4C3110()
{
  result = qword_1EB558EF8;
  if (!qword_1EB558EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558EF8);
  }

  return result;
}

unint64_t sub_1AC4C3168()
{
  result = qword_1EB558F00;
  if (!qword_1EB558F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F00);
  }

  return result;
}

unint64_t sub_1AC4C31BC(uint64_t a1)
{
  result = sub_1AC4C31E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C31E4()
{
  result = qword_1EB558F08;
  if (!qword_1EB558F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F08);
  }

  return result;
}

unint64_t sub_1AC4C3264()
{
  result = qword_1EB558F10;
  if (!qword_1EB558F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F10);
  }

  return result;
}

unint64_t sub_1AC4C32BC()
{
  result = qword_1EB558F18;
  if (!qword_1EB558F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F18);
  }

  return result;
}

unint64_t sub_1AC4C3310(uint64_t a1)
{
  result = sub_1AC4C3338();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3338()
{
  result = qword_1EB558F20;
  if (!qword_1EB558F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F20);
  }

  return result;
}

unint64_t sub_1AC4C33B8()
{
  result = qword_1EB558F28;
  if (!qword_1EB558F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F28);
  }

  return result;
}

unint64_t sub_1AC4C340C()
{
  result = qword_1EB558F30;
  if (!qword_1EB558F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F30);
  }

  return result;
}

unint64_t sub_1AC4C3464()
{
  result = qword_1EB558F38;
  if (!qword_1EB558F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F38);
  }

  return result;
}

unint64_t sub_1AC4C34B8(uint64_t a1)
{
  result = sub_1AC4C34E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C34E0()
{
  result = qword_1EB558F40;
  if (!qword_1EB558F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F40);
  }

  return result;
}

unint64_t sub_1AC4C3560()
{
  result = qword_1EB558F48;
  if (!qword_1EB558F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F48);
  }

  return result;
}

unint64_t sub_1AC4C35B4()
{
  result = qword_1EB558F50;
  if (!qword_1EB558F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F50);
  }

  return result;
}

unint64_t sub_1AC4C360C()
{
  result = qword_1EB558F58;
  if (!qword_1EB558F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F58);
  }

  return result;
}

unint64_t sub_1AC4C3660(uint64_t a1)
{
  result = sub_1AC4C3688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3688()
{
  result = qword_1EB558F60;
  if (!qword_1EB558F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F60);
  }

  return result;
}

unint64_t sub_1AC4C3708()
{
  result = qword_1EB558F68;
  if (!qword_1EB558F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F68);
  }

  return result;
}

unint64_t sub_1AC4C3760()
{
  result = qword_1EB558F70;
  if (!qword_1EB558F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F70);
  }

  return result;
}

unint64_t sub_1AC4C37B4(uint64_t a1)
{
  result = sub_1AC4C37DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C37DC()
{
  result = qword_1EB558F78;
  if (!qword_1EB558F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F78);
  }

  return result;
}

unint64_t sub_1AC4C385C()
{
  result = qword_1EB558F80;
  if (!qword_1EB558F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F80);
  }

  return result;
}

unint64_t sub_1AC4C38B4()
{
  result = qword_1EB558F88;
  if (!qword_1EB558F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F88);
  }

  return result;
}

unint64_t sub_1AC4C3908(uint64_t a1)
{
  result = sub_1AC4C3930();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3930()
{
  result = qword_1EB558F90;
  if (!qword_1EB558F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F90);
  }

  return result;
}

unint64_t sub_1AC4C39B0()
{
  result = qword_1EB558F98;
  if (!qword_1EB558F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558F98);
  }

  return result;
}

unint64_t sub_1AC4C3A08()
{
  result = qword_1EB558FA0;
  if (!qword_1EB558FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FA0);
  }

  return result;
}

unint64_t sub_1AC4C3A5C(uint64_t a1)
{
  result = sub_1AC4C3A84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3A84()
{
  result = qword_1EB558FA8;
  if (!qword_1EB558FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FA8);
  }

  return result;
}

unint64_t sub_1AC4C3B04()
{
  result = qword_1EB558FB0;
  if (!qword_1EB558FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FB0);
  }

  return result;
}

unint64_t sub_1AC4C3B5C()
{
  result = qword_1EB558FB8;
  if (!qword_1EB558FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FB8);
  }

  return result;
}

unint64_t sub_1AC4C3BB0(uint64_t a1)
{
  result = sub_1AC4C3BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3BD8()
{
  result = qword_1EB558FC0;
  if (!qword_1EB558FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FC0);
  }

  return result;
}

unint64_t sub_1AC4C3C58()
{
  result = qword_1EB558FC8;
  if (!qword_1EB558FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FC8);
  }

  return result;
}

unint64_t sub_1AC4C3CB0()
{
  result = qword_1EB558FD0;
  if (!qword_1EB558FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FD0);
  }

  return result;
}

unint64_t sub_1AC4C3D04(uint64_t a1)
{
  result = sub_1AC4C3D2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3D2C()
{
  result = qword_1EB558FD8;
  if (!qword_1EB558FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FD8);
  }

  return result;
}

unint64_t sub_1AC4C3DAC()
{
  result = qword_1EB558FE0;
  if (!qword_1EB558FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FE0);
  }

  return result;
}

unint64_t sub_1AC4C3E04()
{
  result = qword_1EB558FE8;
  if (!qword_1EB558FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FE8);
  }

  return result;
}

unint64_t sub_1AC4C3E58(uint64_t a1)
{
  result = sub_1AC4C3E80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3E80()
{
  result = qword_1EB558FF0;
  if (!qword_1EB558FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FF0);
  }

  return result;
}

unint64_t sub_1AC4C3F00()
{
  result = qword_1EB558FF8;
  if (!qword_1EB558FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB558FF8);
  }

  return result;
}

unint64_t sub_1AC4C3F58()
{
  result = qword_1EB559000;
  if (!qword_1EB559000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559000);
  }

  return result;
}

unint64_t sub_1AC4C3FAC(uint64_t a1)
{
  result = sub_1AC4C3FD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C3FD4()
{
  result = qword_1EB559008;
  if (!qword_1EB559008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559008);
  }

  return result;
}

unint64_t sub_1AC4C4054()
{
  result = qword_1EB559010;
  if (!qword_1EB559010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559010);
  }

  return result;
}

unint64_t sub_1AC4C40AC()
{
  result = qword_1EB559018;
  if (!qword_1EB559018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559018);
  }

  return result;
}

unint64_t sub_1AC4C4100(uint64_t a1)
{
  result = sub_1AC4C4128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C4128()
{
  result = qword_1EB559020;
  if (!qword_1EB559020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559020);
  }

  return result;
}

unint64_t sub_1AC4C41A8()
{
  result = qword_1EB559028;
  if (!qword_1EB559028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559028);
  }

  return result;
}

unint64_t sub_1AC4C41FC()
{
  result = qword_1EB559030;
  if (!qword_1EB559030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559030);
  }

  return result;
}

unint64_t sub_1AC4C4254()
{
  result = qword_1EB559038;
  if (!qword_1EB559038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559038);
  }

  return result;
}

unint64_t sub_1AC4C42A8(uint64_t a1)
{
  result = sub_1AC4C42D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C42D0()
{
  result = qword_1EB559040;
  if (!qword_1EB559040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559040);
  }

  return result;
}

unint64_t sub_1AC4C4350()
{
  result = qword_1EB559048;
  if (!qword_1EB559048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559048);
  }

  return result;
}

unint64_t sub_1AC4C43A8()
{
  result = qword_1EB559050;
  if (!qword_1EB559050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559050);
  }

  return result;
}

unint64_t sub_1AC4C43FC(uint64_t a1)
{
  result = sub_1AC4C4424();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C4424()
{
  result = qword_1EB559058;
  if (!qword_1EB559058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559058);
  }

  return result;
}

unint64_t sub_1AC4C44A4()
{
  result = qword_1EB559060;
  if (!qword_1EB559060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559060);
  }

  return result;
}

unint64_t sub_1AC4C44F8()
{
  result = qword_1EB559068;
  if (!qword_1EB559068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559068);
  }

  return result;
}

unint64_t sub_1AC4C4550()
{
  result = qword_1EB559070;
  if (!qword_1EB559070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559070);
  }

  return result;
}

unint64_t sub_1AC4C45A4(uint64_t a1)
{
  result = sub_1AC4C45CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C45CC()
{
  result = qword_1EB559078;
  if (!qword_1EB559078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559078);
  }

  return result;
}

unint64_t sub_1AC4C464C()
{
  result = qword_1EB559080;
  if (!qword_1EB559080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559080);
  }

  return result;
}

unint64_t sub_1AC4C46A4()
{
  result = qword_1EB559088;
  if (!qword_1EB559088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559088);
  }

  return result;
}

unint64_t sub_1AC4C46F8(uint64_t a1)
{
  result = sub_1AC4C4720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C4720()
{
  result = qword_1EB559090;
  if (!qword_1EB559090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559090);
  }

  return result;
}

unint64_t sub_1AC4C47A0()
{
  result = qword_1EB559098;
  if (!qword_1EB559098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB559098);
  }

  return result;
}

unint64_t sub_1AC4C47F4()
{
  result = qword_1EB5590A0;
  if (!qword_1EB5590A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590A0);
  }

  return result;
}

unint64_t sub_1AC4C484C()
{
  result = qword_1EB5590A8;
  if (!qword_1EB5590A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590A8);
  }

  return result;
}

unint64_t sub_1AC4C48A0(uint64_t a1)
{
  result = sub_1AC4C48C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AC4C48C8()
{
  result = qword_1EB5590B0;
  if (!qword_1EB5590B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590B0);
  }

  return result;
}

uint64_t sub_1AC4C4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AC4C4984()
{
  result = qword_1EB5590B8;
  if (!qword_1EB5590B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590B8);
  }

  return result;
}

unint64_t sub_1AC4C49DC()
{
  result = qword_1EB5590C0;
  if (!qword_1EB5590C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5590C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_Edition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Google_Protobuf_Edition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1AC4C4BA4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C4BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C4C74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 103))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C4CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 103) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 103) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C4D74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 71))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C4DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 70) = 0;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 71) = 1;
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

    *(result + 71) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Google_Protobuf_ExtensionRangeOptions.VerificationState(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C4F10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C4F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C4FDC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 145))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Google_Protobuf_FieldDescriptorProto.TypeEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1AC4C522C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 94))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 94) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C5304(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 126))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C5344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C53B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 29))
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

uint64_t sub_1AC4C5400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InternalSwiftProtobuf07Google_C13_FieldOptionsV14FeatureSupportVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC4C5490(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 153))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C54E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C556C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 103))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C55AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 102) = 0;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 103) = 1;
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

    *(result + 103) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C5624(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C5724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_217(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 16);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_217(v2);
}

uint64_t sub_1AC4C5760(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Google_Protobuf_FieldOptions.OptionTargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Google_Protobuf_FieldOptions.OptionTargetType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC4C5944(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1AC4C5A00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5A54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C5ADC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 62))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C5B1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C5B90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C5BD0(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy63_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C5C58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 63))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C5C98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 62) = 0;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 63) = 1;
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

    *(result + 63) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC4C5CFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_217(-1);
  }

  if (a2 < 0 && *(a1 + 70))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_217(v2);
}

void *sub_1AC4C5D38(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[7] = 0;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 34) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 70) = 1;
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

      return OUTLINED_FUNCTION_320(result, a2);
    }

    *(result + 70) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_320(result, a2);
    }
  }

  return result;
}

uint64_t sub_1AC4C5DA0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AC4C5DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC4C5E5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1AC4C5EB0(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy30_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_1AC4C5F28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 30))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1AC4C5F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Google_Protobuf_FeatureSet.FieldPresence(unsigned __int8 *a1, unsigned int a2)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}