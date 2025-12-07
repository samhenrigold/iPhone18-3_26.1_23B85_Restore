uint64_t sub_1E3C29A90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TextLayout();
  result = sub_1E383BCC0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C29AC4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImageLayout();
  result = sub_1E3BD61D8();
  *a1 = result;
  return result;
}

void sub_1E3C29AF8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  v7 = (*(*a1 + 2408))();
  v8 = [v6 vui:v7 fontFromTextLayout:?];

  if (v8)
  {
    if (a2)
    {
      v9 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v10 = a2;
      v11 = [v9 initWithAttributedString_];
      v12 = [v11 length];
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v13 = v12;
        v14 = swift_allocObject();
        v14[2] = v3;
        v14[3] = v8;
        v14[4] = v11;
        v15 = swift_allocObject();
        *(v15 + 16) = sub_1E3C2A2F0;
        *(v15 + 24) = v14;
        v20[4] = sub_1E3C2A654;
        v20[5] = v15;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 1107296256;
        v20[2] = sub_1E3C29F74;
        v20[3] = &block_descriptor_79;
        v16 = _Block_copy(v20);
        v17 = v11;

        v18 = v8;

        [v17 enumerateAttributesInRange:0 options:v13 usingBlock:{0, v16}];
        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

          return;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }
}

double sub_1E3C29DE0()
{
  sub_1E37AE010(*(v0 + 248), *(v0 + 256), *(v0 + 264));

  return result;
}

uint64_t sub_1E3C29E34()
{
  v0 = ViewModel.deinit();
  sub_1E37AE010(*(v0 + 248), *(v0 + 256), *(v0 + 264));

  return v0;
}

uint64_t sub_1E3C29E94()
{
  v0 = sub_1E3C29E34();

  return MEMORY[0x1EEE6BDC0](v0, 312, 7);
}

uint64_t sub_1E3C29EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C2A29C(a1, a2, a3);
  sub_1E4206254();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E3C29F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_1E3C2A244(&qword_1EE23B100, type metadata accessor for Key);
  v9 = sub_1E4205C64();
  v8(v9, a3, a4, a5);
}

id sub_1E3C2A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4205ED4();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1E3C2A244(&qword_1EE23B100, type metadata accessor for Key);
    v6 = sub_1E4205C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

id sub_1E3C2A11C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 attributedStringWithString_];

  return v5;
}

id sub_1E3C2A180(uint64_t a1, uint64_t a2, char a3, char a4, void *a5)
{
  v8 = sub_1E4205ED4();

  v9 = [a5 attributedStringWithString:v8 isHighlighted:a3 & 1 isDisabled:a4 & 1];

  return v9;
}

uint64_t sub_1E3C2A244(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E3C2A288(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

unint64_t sub_1E3C2A29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287240;
  if (!qword_1EE287240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287240);
  }

  return result;
}

void sub_1E3C2A2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v42 = *(v3 + 24);
  v43 = *(v3 + 32);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v45 = *MEMORY[0x1E69DB648];
  v11 = 0;
  v39 = a3;

  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(*(v5 + 48) + 8 * v14);
    sub_1E328438C(*(v5 + 56) + 32 * v14, v47);
    *&v48 = v15;
    sub_1E329504C(v47, (&v48 + 8));
    v16 = v15;
LABEL_10:
    v51[0] = v48;
    v51[1] = v49;
    v52 = v50;
    v17 = v48;
    if (!v48)
    {

      return;
    }

    sub_1E329504C((v51 + 8), &v48);
    v18 = sub_1E4205F14();
    v20 = v19;
    if (v18 == sub_1E4205F14() && v20 == v21)
    {
    }

    else
    {
      v23 = sub_1E42079A4();

      if ((v23 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_1E328438C(&v48, v47);
    sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
    if (swift_dynamicCast())
    {
      v24 = [v46 fontDescriptor];
      v41 = [v24 symbolicTraits];

      v25 = [v42 fontDescriptor];
      v26 = [v25 symbolicTraits];

      v27 = *sub_1E3E932F8();
      v28 = *sub_1E3E93304();
      v29 = sub_1E3DA9F20();
      if (!v29 || ((v30 = v29, (v27 & ~v26) != 0) ? (v31 = (v27 & ~v41) == 0) : (v31 = 0), v31 ? (v32 = v27) : (v32 = 0), (v33 = v32 | v26, (v28 & ~v33) != 0) ? (v34 = (v28 & ~v41) == 0) : (v34 = 0), v34 ? (v35 = v28) : (v35 = 0), (v36 = [v29 fontDescriptorWithSymbolicTraits_], v30, !v36) || (v37 = sub_1E3DA9F68(v36, 0.0)) == 0))
      {
        v37 = v42;
      }

      v38 = v37;
      v4 = v39;
      [v43 addAttribute:v45 value:v37 range:{a2, v39, v39}];

      v5 = v40;
      goto LABEL_37;
    }

LABEL_36:
    [v43 removeAttribute:v17 range:{a2, v4, v39}];
    v38 = v17;
LABEL_37:

    __swift_destroy_boxed_opaque_existential_1(&v48);
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      v9 = 0;
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      goto LABEL_10;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1E3C2A67C()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3C2A6C8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x5548726579616C70;
      break;
    case 2:
      result = 0x65697669746C756DLL;
      break;
    case 3:
      result = 0x6C6C41656573;
      break;
    case 4:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C2A780(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x5548726579616C70;
      v6 = 0xE900000000000044;
      break;
    case 2:
      v5 = 0x65697669746C756DLL;
      v6 = 0xE900000000000077;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C6C41656573;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x5548726579616C70;
      v2 = 0xE900000000000044;
      break;
    case 2:
      v3 = 0x65697669746C756DLL;
      v2 = 0xE900000000000077;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C6C41656573;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C2A914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E3C2A9C4(char a1)
{
  sub_1E4207B44();
  sub_1E3C2A6C8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C2AA30(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C2AB18(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3C2A6C8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3C2AB78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C2A67C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C2ABA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C2A6C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3C2ABD4(char a1, uint64_t a2, char a3)
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x73616C43657A6973, 0xEB00000000203A73);
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x6D6563616C70202CLL, 0xED0000203A746E65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35768, &unk_1E42C5170);
  v3 = sub_1E4205F84();
  MEMORY[0x1E69109E0](v3);

  return 0;
}

BOOL sub_1E3C2ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E3C2A914(a1, a4, sub_1E3741588);
  v8 = a5 == 0;
  if (a5)
  {
    v9 = a2 == a5;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (a2)
  {
    v8 = v10;
  }

  return (v7 & 1) != 0 && v8;
}

uint64_t sub_1E3C2AD40(uint64_t result)
{
  if (result)
  {
    v1 = (*(*result + 1000))();
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    if (v1 == sub_1E4205F14() && v3 == v4)
    {
    }

    else
    {
      OUTLINED_FUNCTION_13_8();
      v6 = sub_1E42079A4();

      if ((v6 & 1) == 0)
      {
        return 0;
      }
    }

    return 3;
  }

  return result;
}

char *sub_1E3C2AE50()
{
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  return &byte_1EE2AAD70;
}

id sub_1E3C2AEA4(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_1E3C2AEE0()
{
  if (qword_1EE29DCC8 != -1)
  {
    OUTLINED_FUNCTION_25_65(&qword_1EE29DCC8);
  }

  return &byte_1EE2AAE88;
}

double sub_1E3C2AF20()
{
  OUTLINED_FUNCTION_147_4();
  v3.n128_f64[0] = sub_1E3C2AF54(0, v2, v0, v1);
  *&result = OUTLINED_FUNCTION_24_61(v4, v5, v6, v7, v8, v9, v10, v11, v3, v14, v12, v15, v16).n128_u64[0];
  return result;
}

double sub_1E3C2AF54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v8 = sub_1E3C2F454(a1, a3, a4);
  }

  else
  {
    v9 = sub_1E3C2F454(a1, a3, a4);
    sub_1E3C2FBB4(v9, &v21, v5, v10);

    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35848, &qword_1E42C5508);
      if (swift_dynamicCast())
      {
        v26 = 0;
        v19 = v23;
        v20 = v24;
        v14 = v25[0];
        v17 = *&v25[8];
        v18 = *&v25[24];
        v15 = v25[40];
        v16 = (*(*v4 + 1512))();
        if (sub_1E3C2A914(v16, 3, sub_1E3C3DDA8))
        {
          v27 = v17;
          v28 = v18;
        }

        else
        {
          v27 = v19;
          v28 = v20;
          v15 = v14;
        }

        goto LABEL_14;
      }

      LOBYTE(v27) = 1;
      v23 = 0u;
      v24 = 0u;
      memset(v25, 0, sizeof(v25));
      v26 = 1;
    }

    else
    {
      sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
    }

    v8 = v4[6];
  }

  sub_1E3C2FBB4(v8, &v23, v5, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  type metadata accessor for UIEdgeInsets();
  v11 = swift_dynamicCast();
  if ((v11 & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
  }

  v15 = v11 ^ 1;
LABEL_14:
  result = *&v27;
  v13 = v28;
  *a2 = v27;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15 & 1;
  return result;
}

uint64_t sub_1E3C2B18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35838, &qword_1E42C54F8);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 8)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 7;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

uint64_t sub_1E3C2B358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35828, &qword_1E42C54E8);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 19)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 18;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

uint64_t sub_1E3C2B524()
{
  OUTLINED_FUNCTION_139_6();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v7)
  {
    sub_1E3C2F454(v4, v5, v6);
  }

  else
  {
    v9 = sub_1E3C2F454(v4, v5, v6);
    sub_1E3C2FBB4(v9, &v17, v1, v10);

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v2);
      if (OUTLINED_FUNCTION_21_4())
      {
        v11 = v19;
        OUTLINED_FUNCTION_82_11();
        if (!v7)
        {
          (*(*v0 + 1512))();
          OUTLINED_FUNCTION_4_152();
          if ((sub_1E3C2A914(v12, 3, v13) & 1) == 0)
          {
            LOBYTE(v19) = v11;
            return v19;
          }

          v14 = v11 >> 8;
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
    }

    OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_76_13(v8, &v17);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((OUTLINED_FUNCTION_153_4(&v19, &v17, v15) & 1) == 0)
  {
    LOBYTE(v14) = 4;
LABEL_15:
    LOBYTE(v19) = v14;
  }

  return v19;
}

uint64_t sub_1E3C2B6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35818, &qword_1E42C54D8);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 3)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 2;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

uint64_t sub_1E3C2B86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35808, &qword_1E42C54C8);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 6)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 5;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

id sub_1E3C2BA38(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v14)
  {
    v5 = sub_1E3C2F454(v11, v12, v13);
  }

  else
  {
    v16 = sub_1E3C2F454(v11, v12, v13);
    sub_1E3C2FBB4(v16, &v38, a1, v17);

    if (v40)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      if (OUTLINED_FUNCTION_57_19(v18, v19, v20, v18, v21, v22, v23, v24, v38, *(&v38 + 1), v39, v40, v41))
      {
        v25 = v41;
        if (v41 != 1)
        {
          v26 = v42;
          OUTLINED_FUNCTION_8();
          (*(v27 + 1512))();
          OUTLINED_FUNCTION_4_152();
          if (sub_1E3C2A914(v28, 3, v29))
          {

            return v26;
          }

          else
          {

            return v25;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v38, &unk_1ECF296E0, &unk_1E4298030);
    }

    OUTLINED_FUNCTION_126_3();
  }

  sub_1E3C2FBB4(v5, &v38, a1, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v30 = sub_1E3280A90(0, a2, a3);
  OUTLINED_FUNCTION_71_23(v30, v31, v32, v30, v33, v34, v35, v36, v38, *(&v38 + 1), v39, v40, v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v41;
}

uint64_t sub_1E3C2BBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357F0, &qword_1E42C54B0);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 12)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 11;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

uint64_t sub_1E3C2BDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357E8, &qword_1E42C54A8);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 1)
        {
          v10 = v16;
          v11 = (*(*v3 + 1512))();
          if (sub_1E3C2A914(v11, 3, sub_1E3C3DDA8))
          {

            return v10;
          }

          else
          {

            return v9;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  type metadata accessor for ViewGradientLayout(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1E3C2BF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357E0, &qword_1E42C54A0);
      if (swift_dynamicCast())
      {
        v9 = v16;
        v10 = v15;
        v11 = (*(*v3 + 1512))();
        if (sub_1E3C2A914(v11, 3, sub_1E3C3DDA8))
        {
          return v9;
        }

        else
        {
          return v10;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  type metadata accessor for VUIGridStyle(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_1E3C2C174()
{
  OUTLINED_FUNCTION_139_6();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v6)
  {
    sub_1E3C2F454(v3, v4, v5);
  }

  else
  {
    v8 = sub_1E3C2F454(v3, v4, v5);
    sub_1E3C2FBB4(v8, &v33, v0, v9);

    if (v35)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
      if (OUTLINED_FUNCTION_57_19(v10, v11, v12, v10, v13, v14, v15, v16, v33, *(&v33 + 1), v34, v35, v36))
      {
        v17 = v37;
        v18 = v36;
        OUTLINED_FUNCTION_8();
        (*(v19 + 1512))();
        OUTLINED_FUNCTION_4_152();
        if (sub_1E3C2A914(v20, 3, v21))
        {
          return v17;
        }

        else
        {
          return v18;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
    }

    OUTLINED_FUNCTION_126_3();
  }

  OUTLINED_FUNCTION_76_13(v7, &v33);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v29 = OUTLINED_FUNCTION_71_23(v22, v23, v22, v24, v25, v26, v27, v28, v33, *(&v33 + 1), v34, v35, v36);
  if ((OUTLINED_FUNCTION_153_4(v29, v30, v31) & 1) == 0)
  {
    return 0;
  }

  return v36;
}

uint64_t sub_1E3C2C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357D0, &qword_1E42C5490);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 4)
        {
          v10 = (*(*v3 + 1512))();
          if ((sub_1E3C2A914(v10, 3, sub_1E3C3DDA8) & 1) == 0)
          {
            LOBYTE(v15) = v9;
            return v15;
          }

          v11 = v9 >> 8;
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v11) = 3;
LABEL_14:
    LOBYTE(v15) = v11;
  }

  return v15;
}

uint64_t sub_1E3C2C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1EE29AD10 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1EE2AAD70 == 1)
  {
    v6 = sub_1E3C2F454(a1, a2, a3);
  }

  else
  {
    v7 = sub_1E3C2F454(a1, a2, a3);
    sub_1E3C2FBB4(v7, &v13, v4, v8);

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357C8, &qword_1E42C5488);
      if (swift_dynamicCast())
      {
        v9 = v15;
        if (v15 != 1)
        {
          v10 = v16;
          v11 = (*(*v3 + 1512))();
          if (sub_1E3C2A914(v11, 3, sub_1E3C3DDA8))
          {

            return v10;
          }

          else
          {

            return v9;
          }
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
    }

    v6 = v3[6];
  }

  sub_1E3C2FBB4(v6, &v13, v4, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B8, qword_1E42D1210);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v15;
}

void sub_1E3C2C6A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = type metadata accessor for ViewLayout.StorageTuple(255, v1, v7, v8);
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  OUTLINED_FUNCTION_1_2();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v21)
  {
    v0 = sub_1E3C2F454(v18, v19, v20);
LABEL_11:
    sub_1E3C2FBB4(v0, &v41, v4, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    v38 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v38 ^ 1u, 1, v2);
    goto LABEL_12;
  }

  v40 = v14;
  v23 = sub_1E3C2F454(v18, v19, v20);
  sub_1E3C2FBB4(v23, &v41, v4, v24);

  if (!v42)
  {
    sub_1E325F6F0(&v41, &unk_1ECF296E0, &unk_1E4298030);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v9);
    goto LABEL_10;
  }

  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v25 ^ 1u, 1, v9);
  OUTLINED_FUNCTION_52(v12, 1, v9);
  if (v21)
  {
LABEL_10:
    v36 = OUTLINED_FUNCTION_17_11();
    v37(v36);
    OUTLINED_FUNCTION_126_3();
    goto LABEL_11;
  }

  v26 = (*(v40 + 32))(v17, v12, v9);
  (*(*v0 + 1512))(v26);
  OUTLINED_FUNCTION_4_152();
  sub_1E3C2A914(v27, 3, v28);
  sub_1E4207104();
  OUTLINED_FUNCTION_2();
  v29 = OUTLINED_FUNCTION_32_0();
  v30(v29);
  v31 = OUTLINED_FUNCTION_171_0();
  v32(v31);
LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C2CA00()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v0;
  v5 = v4;
  v6 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v5);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  sub_1E3C33DE4();
  v33 = *(v8 + 8);
  v33(v11, v6);
  v33(v1, v6);
  v33(v2, v6);
  v33(v3, v6);
  v33(v17, v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C2CBE8()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(0, v4, v2, v3);
  return OUTLINED_FUNCTION_146_5();
}

double sub_1E3C2CC44()
{
  OUTLINED_FUNCTION_147_4();
  v3.n128_f64[0] = sub_1E3C2AF54(1, v2, v0, v1);
  *&result = OUTLINED_FUNCTION_24_61(v4, v5, v6, v7, v8, v9, v10, v11, v3, v14, v12, v15, v16).n128_u64[0];
  return result;
}

uint64_t sub_1E3C2CCA4()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(1, v4, v2, v3);
  return OUTLINED_FUNCTION_146_5();
}

uint64_t sub_1E3C2CD40(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CDF0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CEA0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2CFF0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CF68(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2CFF0()
{
  *&result = COERCE_DOUBLE(sub_1E3C2C174());
  if ((v1 & 1) == 0)
  {
    v2 = *&result;
    OUTLINED_FUNCTION_8();
    v4 = COERCE_DOUBLE((*(v3 + 272))());
    if (v5)
    {
      v4 = 1.0;
    }

    *&result = v4 * v2;
  }

  return result;
}

uint64_t sub_1E3C2D0C0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2D370();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2D170(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2D370();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2D220(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2D370();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2D2E8(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2D370()
{
  *&result = COERCE_DOUBLE(sub_1E3C2C174());
  if ((v1 & 1) == 0)
  {
    v2 = *&result;
    OUTLINED_FUNCTION_8();
    v4 = COERCE_DOUBLE((*(v3 + 376))());
    if (v5)
    {
      v4 = 1.0;
    }

    *&result = v4 * v2;
  }

  return result;
}

uint64_t sub_1E3C2D458(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t (*sub_1E3C2D4FC(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B18C(12, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2D540;
}

uint64_t (*sub_1E3C2D5BC(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3C2B524();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E3C2D618;
}

uint64_t (*sub_1E3C2D668(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B358(14, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2D6AC;
}

uint64_t (*sub_1E3C2D728(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3C2B524();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E3C2D784;
}

double sub_1E3C2D7B8()
{
  OUTLINED_FUNCTION_147_4();
  v3.n128_f64[0] = sub_1E3C2AF54(17, v2, v0, v1);
  *&result = OUTLINED_FUNCTION_24_61(v4, v5, v6, v7, v8, v9, v10, v11, v3, v14, v12, v15, v16).n128_u64[0];
  return result;
}

uint64_t sub_1E3C2D818()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(17, v4, v2, v3);
  return OUTLINED_FUNCTION_146_5();
}

uint64_t (*sub_1E3C2D88C(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(18, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2D8D0;
}

void sub_1E3C2D938()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C3195C(v0, v1, v2, 19, 0);
}

uint64_t sub_1E3C2D978(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(19, &unk_1EE23AD60, 0x1E69DB7D8, &qword_1ECF35810, &qword_1E42C54D0);
  return OUTLINED_FUNCTION_116();
}

uint64_t (*sub_1E3C2DA10(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(20, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2DA54;
}

uint64_t (*sub_1E3C2DA9C(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B86C(16, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2DAE0;
}

void sub_1E3C2DB50()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 21, 0);
}

uint64_t sub_1E3C2DB90(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(21, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

void sub_1E3C2DC10(id *a1, char a2, uint64_t a3, void (*a4)(void))
{
  v7 = *a1;
  if (a2)
  {
    v5 = v7;
    OUTLINED_FUNCTION_169();
    a4();

    v6 = v5;
  }

  else
  {
    OUTLINED_FUNCTION_169();
    a4();
    v6 = v7;
  }
}

uint64_t (*sub_1E3C2DCF4(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E3C2B524();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E3C2DD50;
}

uint64_t (*sub_1E3C2DD9C(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2BBE8(23, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2DDE0;
}

void sub_1E3C2DE50()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 24, 0);
}

uint64_t sub_1E3C2DE90(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(24, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

void sub_1E3C2DF4C()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 25, 0);
}

uint64_t sub_1E3C2DF8C(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(25, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

uint64_t (*sub_1E3C2E024(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2BBE8(26, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2E068;
}

uint64_t (*sub_1E3C2E0B4(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2BBE8(31, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2E0F8;
}

double sub_1E3C2E134()
{
  OUTLINED_FUNCTION_169();
  sub_1E3C32B54(v0, v1, v2, 0);

  return result;
}

uint64_t sub_1E3C2E174(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BDB4(27, v2, v3);
  return OUTLINED_FUNCTION_116();
}

double sub_1E3C2E1B8(uint64_t a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_169();
    sub_1E3C32B54(v2, v3, v4, 0);
  }

  else
  {
    OUTLINED_FUNCTION_169();
    sub_1E3C32B54(v5, v6, v7, 0);
  }

  return result;
}

void sub_1E3C2E258()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 29, 0);
}

uint64_t sub_1E3C2E298(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(29, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

void sub_1E3C2E354()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 30, 0);
}

uint64_t sub_1E3C2E394(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(30, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

void sub_1E3C2E450()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 32, 0);
}

uint64_t sub_1E3C2E490(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(32, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

uint64_t (*sub_1E3C2E528(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(33, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2E56C;
}

uint64_t (*sub_1E3C2E5B0(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(69, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2E5F4;
}

uint64_t sub_1E3C2E620()
{
  OUTLINED_FUNCTION_8();
  if (((*(v0 + 1008))() & 1) == 0)
  {
    return sub_1E3C2BF94(40, v1, v2);
  }

  OUTLINED_FUNCTION_8();
  result = (*(v3 + 1032))();
  if (v1)
  {
    return sub_1E3C2BF94(40, v1, v2);
  }

  return result;
}

uint64_t sub_1E3C2E6AC(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2E620();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2E744(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v3 = sub_1E3C2BF94(41, v1, v2);
  OUTLINED_FUNCTION_4_17(v3, v4);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2E7E0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v3 = sub_1E3C2BF94(42, v1, v2);
  OUTLINED_FUNCTION_4_17(v3, v4);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2E87C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v3 = sub_1E3C2BF94(43, v1, v2);
  OUTLINED_FUNCTION_4_17(v3, v4);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2E948(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2EA28(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2EB08(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2EBE8(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2EC9C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 24, a2);
  *(v2 + 24) = a1;
  *(v2 + 32) = v3 & 1;
  return result;
}

uint64_t (*sub_1E3C2ED00(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2C2E8(34, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2ED44;
}

double sub_1E3C2ED78()
{
  OUTLINED_FUNCTION_147_4();
  v3.n128_f64[0] = sub_1E3C2AF54(35, v2, v0, v1);
  *&result = OUTLINED_FUNCTION_24_61(v4, v5, v6, v7, v8, v9, v10, v11, v3, v14, v12, v15, v16).n128_u64[0];
  return result;
}

uint64_t sub_1E3C2EDD8()
{
  v0 = OUTLINED_FUNCTION_144_5();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_37_44(v1);
  sub_1E3C2AF54(35, v4, v2, v3);
  return OUTLINED_FUNCTION_146_5();
}

void sub_1E3C2EE34(char **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 11);
  if (a2)
  {
    *(v4 + 40) = *(v4 + 10);
    *(v4 + 56) = v5;
    v4[72] = v4[192];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    v4[32] = 1;
    v6 = (v4 + 40);
    v7 = v4;
    v8 = v4;
  }

  else
  {
    *(v4 + 120) = *(v4 + 10);
    *(v4 + 136) = v5;
    v4[152] = v4[192];
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    v4[112] = 1;
    v6 = (v4 + 120);
    v7 = (v4 + 80);
    v8 = (v4 + 80);
  }

  sub_1E3C2FE70(v6, v7, v8, a3, 0);

  free(v4);
}

uint64_t sub_1E3C2EF38(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2F018(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E3C2C174();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t (*sub_1E3C2F0B8(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(38, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2F0FC;
}

uint64_t (*sub_1E3C2F140(void *a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v3 = sub_1E3C2B6A0(39, v1, v2);
  OUTLINED_FUNCTION_13_21(v3);
  return sub_1E3C2F184;
}

uint64_t sub_1E3C2F1B8()
{
  OUTLINED_FUNCTION_169();
  sub_1E3C33964(v0, v1, v2, 109, 0);
}

uint64_t sub_1E3C2F1FC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2C4B4(109, v2, v3);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2F240(uint64_t *a1, char a2)
{
  if (a2)
  {

    OUTLINED_FUNCTION_169();
    sub_1E3C33964(v2, v3, v4, 109, 0);
  }

  else
  {
    OUTLINED_FUNCTION_169();
    sub_1E3C33964(v5, v6, v7, 109, 0);
  }
}

void sub_1E3C2F2E8()
{
  OUTLINED_FUNCTION_27_52();
  sub_1E3C320AC(v0, v1, v2, 46, 0);
}

uint64_t sub_1E3C2F328(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2BA38(46, &qword_1EE23AE20, 0x1E69DC888, &qword_1ECF35800, &qword_1E42C54C0);
  return OUTLINED_FUNCTION_116();
}

double sub_1E3C2F3D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 40, a2);
  *(v2 + 40) = a1;

  return result;
}

uint64_t sub_1E3C2F454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 48))
  {
    v4 = *(v3 + 48);
  }

  else
  {
    sub_1E3C3BC78(0, a2, a3);
    v4 = sub_1E4205CB4();
    *(v3 + 48) = v4;
  }

  return v4;
}

uint64_t sub_1E3C2F4D4(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = type metadata accessor for ViewLayout();
    sub_1E37414E0(v4, v5, v6);
    v3 = sub_1E4205CB4();
    v7 = *(v1 + 56);
    *(v1 + 56) = v3;

    sub_1E37C3B04(v7);
  }

  sub_1E37C3ADC(v2);
  return v3;
}

uint64_t sub_1E3C2F554(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E3C2F4D4(v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3C2F594(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

uint64_t sub_1E3C2F604()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1E3C2F66C(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 72, a2);
  *(v2 + 72) = a1;
  return result;
}

uint64_t sub_1E3C2F6A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 80, a2);
  v3 = OUTLINED_FUNCTION_27_0();
  sub_1E3C34DD0(v3, v4);
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3C2F6F0(uint64_t a1, uint64_t a2, __int16 a3)
{
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  OUTLINED_FUNCTION_59_1();
  sub_1E3C34DD0(v9, v10);
  sub_1E39DFB80(v7, v8);
  if (qword_1EE29DCC8 != -1)
  {
    OUTLINED_FUNCTION_25_65(&qword_1EE29DCC8);
  }

  if (byte_1EE2AAE88 == 1)
  {
    v11 = (v3 + 72);
    if ((*(*v3 + 1560))() > 2u)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    swift_beginAccess();
    *v11 = v12;
  }

  OUTLINED_FUNCTION_59_1();
  sub_1E39DFB80(v13, v14);
}

uint64_t sub_1E3C2F814()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1536))();
  if (v2 == 1)
  {

    return sub_1E3A2532C();
  }

  else
  {
    v4 = v1;
    sub_1E39DFB80(v1, v2);
    return v4;
  }
}

BOOL sub_1E3C2F888()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1536))();
  v3 = v2;
  if (v2 != 1)
  {
    sub_1E39DFB80(v1, v2);
  }

  return v3 != 1;
}

void *sub_1E3C2F8E8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1536))();
  v2 = v1;
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v3 = v2;
  }

  v5 = OUTLINED_FUNCTION_27_0();
  sub_1E39DFB80(v5, v6);
  return v3;
}

uint64_t sub_1E3C2F968()
{
  v0 = swift_allocObject();
  sub_1E3C2F9A0();
  return v0;
}

uint64_t sub_1E3C2F9A0()
{
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = xmmword_1E42C0270;
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  if (byte_1EE2AAD70)
  {
    v1 = 3;
  }

  else
  {
    v1 = 4;
  }

  *(v0 + 72) = v1;
  *(v0 + 80) = xmmword_1E4297170;
  *(v0 + 96) = 0;
  return v0;
}

double sub_1E3C2FA20(unint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1416))();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 16);

    sub_1E3C2FC18(a1, v5, v14, v6);

    if (v15)
    {
      OUTLINED_FUNCTION_8();
      (*(v7 + 152))(&v12);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
      sub_1E4148C68(sub_1E3C2FC84, v8, v13);
    }

    else
    {

      v13[0] = v14[0];
      v13[1] = v14[1];
    }

    return *v13;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v9 + 152))(v14);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    sub_1E4148C68(sub_1E3C3DDFC, v10, &v12);
    return v12;
  }
}

double sub_1E3C2FBB4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  if (*(a1 + 16) && (v6 = sub_1E3C3BB4C(a3, a1, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_1E328438C(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1E3C2FC18@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>)
{
  v5 = 0uLL;
  if (*(a2 + 16))
  {
    result = sub_1E3740AE8(result, a2, a4);
    if (v7)
    {
      v8 = 0;
      v9 = (*(a2 + 56) + 32 * result);
      v5 = *v9;
      v10 = v9[1];
    }

    else
    {
      v8 = 1;
      v10 = 0uLL;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v10 = 0uLL;
  }

  *a3 = v5;
  *(a3 + 16) = v10;
  *(a3 + 32) = v8;
  return result;
}

__n128 sub_1E3C2FC84@<Q0>(_OWORD *a1@<X8>)
{
  result = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *a1 = *MEMORY[0x1E69DDCE0];
  a1[1] = v2;
  return result;
}

void sub_1E3C2FCB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = sub_1E4207104();
  OUTLINED_FUNCTION_2();
  (*(v12 + 32))(a8, a1, v11);
  type metadata accessor for ViewLayout.DeviceValue(0, a7, v13, v14);
  OUTLINED_FUNCTION_112_9();
  v15();
  OUTLINED_FUNCTION_112_9();
  v16();
  OUTLINED_FUNCTION_112_9();
  v17();
  OUTLINED_FUNCTION_112_9();
  v18();
  OUTLINED_FUNCTION_112_9();
  OUTLINED_FUNCTION_15_36();

  __asm { BRAA            X3, X16 }
}

void sub_1E3C2FDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewLayout.DeviceValue(0, a4, a3, a4);

  sub_1E3C33DE4();
}

uint64_t sub_1E3C2FE70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 32);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v17 = *(a3 + 32);
  v19 = *a1;
  v18 = *(a1 + 8);
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  v92 = 0u;
  v93 = 0u;
  if (qword_1EE29AD10 != -1)
  {
    v71 = v19;
    v73 = v18;
    v85 = v11;
    v87 = v10;
    v75 = v21;
    v78 = v20;
    v81 = v8;
    v69 = v9;
    v68 = a5;
    a1 = swift_once();
    a5 = v68;
    v9 = v69;
    v19 = v71;
    v18 = v73;
    v21 = v75;
    v8 = v81;
    v11 = v85;
    v20 = v78;
    v10 = v87;
  }

  if (byte_1EE2AAD70 != 1)
  {
    if (v17)
    {
      v34 = v19;
    }

    else
    {
      v34 = v13;
    }

    if (v17)
    {
      v35 = v18;
    }

    else
    {
      v35 = v14;
    }

    if (v17)
    {
      v36 = v21;
    }

    else
    {
      v36 = v15;
    }

    if (v17)
    {
      v37 = v20;
    }

    else
    {
      v37 = v16;
    }

    if (v17)
    {
      v38 = v22;
    }

    else
    {
      v38 = 0;
    }

    v39 = (v12 & 1) == 0;
    if (v12)
    {
      v40 = v19;
    }

    else
    {
      v40 = v9;
    }

    if (v12)
    {
      v41 = v18;
    }

    else
    {
      v41 = v8;
    }

    if (v12)
    {
      v42 = v21;
    }

    else
    {
      v42 = v11;
    }

    if (v12)
    {
      v43 = v20;
    }

    else
    {
      v43 = v10;
    }

    if (v39)
    {
      v44 = 0;
    }

    else
    {
      v44 = v22;
    }

    if ((a5 & 1) == 0)
    {
      if (v38 & v44)
      {
        sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
        OUTLINED_FUNCTION_131_8();
      }

      else
      {
        __src[0] = v38 & 1;
        LOBYTE(v89) = v44 & 1;
        v84 = v36;
        v54 = v35;
        v55 = v37;
        v56 = v41;
        v57 = v34;
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35848, &qword_1E42C5508);
        v58 = swift_allocObject();
        v59 = v43;
        v43 = v58;
        v60 = __src[0];
        v61 = v89;
        *(v58 + 16) = v57;
        *(v58 + 24) = v54;
        *(v58 + 32) = v84;
        *(v58 + 40) = v55;
        *(v58 + 48) = v60;
        *(v58 + 56) = v40;
        *(v58 + 64) = v56;
        *(v58 + 72) = v42;
        *(v58 + 80) = v59;
        *(v58 + 88) = v61;
        sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
      }

      v25 = v6;
      *&v93 = 0;
      v92 = v43;
      *(&v93 + 1) = v13;
      v26 = a4;
      goto LABEL_69;
    }

    v80 = v42;
    v25 = v6;
    v26 = a4;
    if (v38 & v44)
    {
      goto LABEL_69;
    }

    v77 = v34;
    v45 = v35;
    v83 = v36;
    v46 = v37;
    v47 = sub_1E3C2F454(v36, v35, v34);
    sub_1E3C2FBB4(v47, &v89, v26, v48);

    if (*(&v90 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35848, &qword_1E42C5508);
      if (OUTLINED_FUNCTION_21_4())
      {
        __src[73] = 0;
        v49 = v45;
        v50 = v77;
        goto LABEL_62;
      }
    }

    else
    {
      sub_1E325F6F0(&v89, &unk_1ECF296E0, &unk_1E4298030);
    }

    __dst[95] = 1;
    *&__src[32] = 1;
    v49 = v45;
    v50 = v77;
    memset(__src, 0, 32);
    memset(&__src[40], 0, 32);
    *&__src[72] = 1;
LABEL_62:
    if (v38)
    {
      if (v44)
      {
        goto LABEL_67;
      }
    }

    else
    {
      *__src = v50;
      *&__src[8] = v49;
      *&__src[16] = v83;
      *&__src[24] = v46;
      __src[32] = 0;
      if (v44)
      {
LABEL_67:
        memcpy(__dst, __src, 0x49uLL);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35848, &qword_1E42C5508);
        v52 = swift_allocObject();
        memcpy((v52 + 16), __dst, 0x49uLL);
        sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
        *(&v92 + 1) = 0;
        *&v93 = 0;
        goto LABEL_68;
      }
    }

    *&__src[40] = v40;
    *&__src[48] = v41;
    *&__src[56] = v80;
    *&__src[64] = v43;
    __src[72] = 0;
    goto LABEL_67;
  }

  v23 = a5;
  v70 = v19;
  v72 = v18;
  v24 = v9;
  v79 = v8;
  v82 = v11;
  v74 = v21;
  v76 = v20;
  v86 = v10;
  v25 = v6;
  sub_1E3C2F454(a1, a2, a3);
  v26 = a4;
  OUTLINED_FUNCTION_76_13(v27, &v89);

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  type metadata accessor for UIEdgeInsets();
  v30 = v29;
  if (OUTLINED_FUNCTION_86_6(__src, &v89, v28))
  {
    __src[32] = 0;
    OUTLINED_FUNCTION_10_9();
    v31 = swift_allocObject();
    v32 = *&__src[16];
    *(v31 + 16) = *__src;
    *(v31 + 32) = v32;
    sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
    v33 = v30;
  }

  else
  {
    sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
    v33 = 0;
    v31 = 0;
  }

  *&v93 = 0;
  v92 = v31;
  *(&v93 + 1) = v33;
  if (v23)
  {
    if ((v12 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_9();
      v51 = swift_allocObject();
      v52 = v51;
      v51[2] = v24;
      v51[3] = v79;
      v51[4] = v82;
      v53 = v86;
      goto LABEL_52;
    }

    if ((v22 & 1) == 0)
    {
      OUTLINED_FUNCTION_10_9();
      v51 = swift_allocObject();
      v52 = v51;
      v51[2] = v70;
      v51[3] = v72;
      v53 = v76;
      v51[4] = v74;
LABEL_52:
      v51[5] = v53;
      sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
LABEL_68:
      *&v92 = v52;
      *(&v93 + 1) = v30;
    }
  }

  else
  {
    if (v12)
    {
      v89 = 0u;
      v90 = 0u;
      if (v22)
      {
        sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
        memset(__src, 0, 32);
      }

      else
      {
        *&__src[24] = v30;
        OUTLINED_FUNCTION_10_9();
        v63 = swift_allocObject();
        *__src = v63;
        v63[2] = v70;
        v63[3] = v72;
        v63[4] = v74;
        v63[5] = v76;
        sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
      }

      if (*(&v90 + 1))
      {
        sub_1E325F6F0(&v89, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    else
    {
      *(&v90 + 1) = v30;
      OUTLINED_FUNCTION_10_9();
      v62 = swift_allocObject();
      *&v89 = v62;
      v62[2] = v24;
      v62[3] = v79;
      v62[4] = v82;
      v62[5] = v86;
      sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E329504C(&v89, __src);
    }

    v92 = *__src;
    v93 = *&__src[16];
  }

LABEL_69:
  v64 = sub_1E3294F34(&v92, __src);
  *&v89 = sub_1E3C2F454(v64, v65, v66);
  sub_1E3C37D80(__src, v26);
  sub_1E325F6F0(&v92, &unk_1ECF296E0, &unk_1E4298030);
  *(v25 + 48) = v89;
}

uint64_t sub_1E3C304D0(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  OUTLINED_FUNCTION_42_46();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v19)
  {
    v20 = sub_1E3C2F454(v16, v17, v18);
    OUTLINED_FUNCTION_15_96(v20, v21, v22, v23, v24, v25, v26, v27, v97, v98, v99, v100, v101);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    a6 = MEMORY[0x1E69E7DE0];
    if (OUTLINED_FUNCTION_21_66(v28, v29, v28, v30, v31, v32, v33, v34, v97, v98, v99, v100, v101))
    {
      LOBYTE(v98) = 0;
      v35 = v97;
      v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
      v36 = MEMORY[0x1E69E7DE0];
    }

    else
    {
      v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
      v36 = 0;
      v35 = 0;
    }

    v104 = 0;
    v105 = 0;
    v103 = v35;
    v106 = v36;
    if (a8)
    {
      if ((a4 & 1) == 0)
      {
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v103 = a3;
LABEL_39:
        v106 = a6;
        goto LABEL_40;
      }

      if ((a2 & 1) == 0)
      {
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
LABEL_38:
        v103 = a1;
        goto LABEL_39;
      }
    }

    else
    {
      if (a4)
      {
        OUTLINED_FUNCTION_116_0();
        if (a2)
        {
          sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
          OUTLINED_FUNCTION_148_1();
        }

        else
        {
          v102 = a6;
          *&v101 = a1;
          v62 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        }

        if (v100)
        {
          v62 = sub_1E325F6F0(&v97, &unk_1ECF296E0, &unk_1E4298030);
        }
      }

      else
      {
        v100 = a6;
        v73 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v81 = OUTLINED_FUNCTION_30_49(v73, v74, v75, v76, v77, v78, v79, v80, a3);
        v62 = sub_1E329504C(v81, v82);
      }

      OUTLINED_FUNCTION_49_36(v62, v63, v64, v65, v66, v67, v68, v69, v97, v98, v99, v100, v101);
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_13();
    if ((a8 & 1) == 0)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_131_8();
LABEL_37:
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v104 = 0;
        v105 = 0;
        goto LABEL_38;
      }

      a6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35840, &qword_1E42C5500);
      OUTLINED_FUNCTION_10_9();
      v70 = swift_allocObject();
      v71 = OUTLINED_FUNCTION_92_8(v70);
LABEL_36:
      *(v71 + 40) = v72;
      goto LABEL_37;
    }

    if ((v45 & 1) == 0)
    {
      a1 = v46;
      v47 = sub_1E3C2F454(v37, v38, v39);
      OUTLINED_FUNCTION_15_96(v47, v48, v49, v50, v51, v52, v53, v54, v97, v98, v99, v100, v101);

      if (v102)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35840, &qword_1E42C5500);
        if (OUTLINED_FUNCTION_20_68(v55, v56, v57, v55, v58, v59, v60, v61, v97, v98, v99, v100, v101))
        {
          BYTE1(v100) = 0;
LABEL_31:
          if ((a5 & 1) == 0)
          {
            v97 = a1;
            LOBYTE(v98) = 0;
          }

          if ((a2 & 1) == 0)
          {
            v99 = a3;
            LOBYTE(v100) = 0;
          }

          OUTLINED_FUNCTION_141_6();
          a6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35840, &qword_1E42C5500);
          OUTLINED_FUNCTION_10_9();
          v83 = swift_allocObject();
          v71 = OUTLINED_FUNCTION_93_10(v83);
          goto LABEL_36;
        }
      }

      else
      {
        sub_1E325F6F0(&v101, &unk_1ECF296E0, &unk_1E4298030);
      }

      OUTLINED_FUNCTION_142_8();
      goto LABEL_31;
    }
  }

LABEL_40:
  v84 = OUTLINED_FUNCTION_87_9(v37, v38, v39, v40, v41, v42, v43, v44, v97, v98, v99, v100);
  sub_1E3C2F454(v84, v85, v86);
  OUTLINED_FUNCTION_12_94();
  sub_1E3C37D80(v87, a7);
  v88 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
  return OUTLINED_FUNCTION_36_39(v88, v89, v90, v91, v92, v93, v94, v95, v97);
}

uint64_t sub_1E3C33284(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  OUTLINED_FUNCTION_42_46();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v19)
  {
    v20 = sub_1E3C2F454(v16, v17, v18);
    OUTLINED_FUNCTION_15_96(v20, v21, v22, v23, v24, v25, v26, v27, v97, v98, v99, v100, v101);

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    a6 = MEMORY[0x1E69E6810];
    if (OUTLINED_FUNCTION_21_66(v28, v29, v28, v30, v31, v32, v33, v34, v97, v98, v99, v100, v101))
    {
      LOBYTE(v98) = 0;
      v35 = v97;
      v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
      v36 = MEMORY[0x1E69E6810];
    }

    else
    {
      v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
      v36 = 0;
      v35 = 0;
    }

    v104 = 0;
    v105 = 0;
    v103 = v35;
    v106 = v36;
    if (a8)
    {
      if ((a4 & 1) == 0)
      {
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v103 = a3;
LABEL_39:
        v106 = a6;
        goto LABEL_40;
      }

      if ((a2 & 1) == 0)
      {
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
LABEL_38:
        v103 = a1;
        goto LABEL_39;
      }
    }

    else
    {
      if (a4)
      {
        OUTLINED_FUNCTION_116_0();
        if (a2)
        {
          sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
          OUTLINED_FUNCTION_148_1();
        }

        else
        {
          v102 = a6;
          *&v101 = a1;
          v62 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        }

        if (v100)
        {
          v62 = sub_1E325F6F0(&v97, &unk_1ECF296E0, &unk_1E4298030);
        }
      }

      else
      {
        v100 = a6;
        v73 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v81 = OUTLINED_FUNCTION_30_49(v73, v74, v75, v76, v77, v78, v79, v80, a3);
        v62 = sub_1E329504C(v81, v82);
      }

      OUTLINED_FUNCTION_49_36(v62, v63, v64, v65, v66, v67, v68, v69, v97, v98, v99, v100, v101);
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_13();
    if ((a8 & 1) == 0)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_131_8();
LABEL_37:
        v37 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
        v104 = 0;
        v105 = 0;
        goto LABEL_38;
      }

      a6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357D8, &qword_1E42C5498);
      OUTLINED_FUNCTION_10_9();
      v70 = swift_allocObject();
      v71 = OUTLINED_FUNCTION_92_8(v70);
LABEL_36:
      *(v71 + 40) = v72;
      goto LABEL_37;
    }

    if ((v45 & 1) == 0)
    {
      a1 = v46;
      v47 = sub_1E3C2F454(v37, v38, v39);
      OUTLINED_FUNCTION_15_96(v47, v48, v49, v50, v51, v52, v53, v54, v97, v98, v99, v100, v101);

      if (v102)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357D8, &qword_1E42C5498);
        if (OUTLINED_FUNCTION_20_68(v55, v56, v57, v55, v58, v59, v60, v61, v97, v98, v99, v100, v101))
        {
          BYTE1(v100) = 0;
LABEL_31:
          if ((a5 & 1) == 0)
          {
            v97 = a1;
            LOBYTE(v98) = 0;
          }

          if ((a2 & 1) == 0)
          {
            v99 = a3;
            LOBYTE(v100) = 0;
          }

          OUTLINED_FUNCTION_141_6();
          a6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357D8, &qword_1E42C5498);
          OUTLINED_FUNCTION_10_9();
          v83 = swift_allocObject();
          v71 = OUTLINED_FUNCTION_93_10(v83);
          goto LABEL_36;
        }
      }

      else
      {
        sub_1E325F6F0(&v101, &unk_1ECF296E0, &unk_1E4298030);
      }

      OUTLINED_FUNCTION_142_8();
      goto LABEL_31;
    }
  }

LABEL_40:
  v84 = OUTLINED_FUNCTION_87_9(v37, v38, v39, v40, v41, v42, v43, v44, v97, v98, v99, v100);
  sub_1E3C2F454(v84, v85, v86);
  OUTLINED_FUNCTION_12_94();
  sub_1E3C37D80(v87, a7);
  v88 = sub_1E325F6F0(&v103, &unk_1ECF296E0, &unk_1E4298030);
  return OUTLINED_FUNCTION_36_39(v88, v89, v90, v91, v92, v93, v94, v95, v97);
}

void sub_1E3C33DE4()
{
  OUTLINED_FUNCTION_31_1();
  v183 = v0;
  v4 = v3;
  LODWORD(v182) = v5;
  v184 = v6;
  v176 = v7;
  v181 = v8;
  v180 = v9;
  type metadata accessor for ViewLayout.StorageTuple(0, v3, v7, v6);
  OUTLINED_FUNCTION_0_10();
  v174 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v170 = v12;
  v178 = v13;
  v175 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v177 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v164 - v19;
  OUTLINED_FUNCTION_1_2();
  v185 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v168 = &v164 - v27;
  v186 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v188 = v28;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v164 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  v187 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v164 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v164 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v164 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v164 - v53;
  OUTLINED_FUNCTION_2_85();
  if (qword_1EE29AD10 != -1)
  {
    v165 = v55;
    v164 = v56;
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (!v70)
  {
    v164 = v61;
    v165 = v60;
    v67 = v188;
    v68 = *(v188 + 16);
    v69 = v186;
    (v68)(v39, v176, v186);
    OUTLINED_FUNCTION_4_75(v39);
    v176 = v68;
    if (v70)
    {
      OUTLINED_FUNCTION_129_6();
      v68();
      OUTLINED_FUNCTION_4_75(v39);
      v83 = v177;
      if (!v70)
      {
        (*(v67 + 8))(v39, v69);
      }
    }

    else
    {
      v80 = v187;
      v81 = OUTLINED_FUNCTION_171_0();
      v82(v81);
      OUTLINED_FUNCTION_4_56(v80);
      v83 = v177;
    }

    v84 = v176;
    (v176)(v35, v181, v69);
    OUTLINED_FUNCTION_4_75(v35);
    if (v70)
    {
      OUTLINED_FUNCTION_100_5();
      OUTLINED_FUNCTION_129_6();
      v84();
      OUTLINED_FUNCTION_4_75(v35);
      if (!v70)
      {
        (*(v67 + 8))(v35, v69);
      }
    }

    else
    {
      OUTLINED_FUNCTION_100_5();
      v89(v39, v35, v4);
      OUTLINED_FUNCTION_4_56(v39);
    }

    if (v182)
    {
      v90 = OUTLINED_FUNCTION_4_75(v187);
      if (!v70 || (v90 = OUTLINED_FUNCTION_4_75(v39), !v70))
      {
        v62 = v183;
        v94 = sub_1E3C2F454(v90, v91, v92);
        sub_1E3C2FBB4(v94, &v191, v184, v95);

        if (v192)
        {
          v96 = v179;
          v39 = v178;
          v97 = swift_dynamicCast() ^ 1;
          v98 = v96;
          v99 = 1;
        }

        else
        {
          sub_1E325F6F0(&v191, &unk_1ECF296E0, &unk_1E4298030);
          v96 = v179;
          OUTLINED_FUNCTION_32_2();
          v39 = v178;
        }

        __swift_storeEnumTagSinglePayload(v98, v97, v99, v39);
        v110 = v171;
        v111 = v175;
        v180 = *(v83 + 16);
        v180(v171, v96, v175);
        v112 = OUTLINED_FUNCTION_88_3();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112, v113, v39);
        v181 = *(v83 + 8);
        v182 = v83 + 8;
        v181(v110, v111);
        if (EnumTagSinglePayload == 1)
        {
          v115 = v166;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v4);
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v119, v120, v121, v4);
          __swift_storeEnumTagSinglePayload(v115, 0, 1, v39);
          (*(v83 + 40))(v179, v115, v175);
        }

        v122 = v169;
        v84 = v176;
        (v176)(v169, v187, v69);
        OUTLINED_FUNCTION_4_75(v122);
        v123 = v185;
        if (v70)
        {
          OUTLINED_FUNCTION_110_8();
          v124(v122, v69);
          OUTLINED_FUNCTION_100_5();
          v125 = v172;
        }

        else
        {
          v126 = *(v185 + 4);
          v127 = v167;
          v128 = OUTLINED_FUNCTION_138_0();
          v126(v128);
          v129 = v179;
          v130 = OUTLINED_FUNCTION_88_3();
          __swift_getEnumTagSinglePayload(v130, v131, v178);
          OUTLINED_FUNCTION_100_5();
          if (v132)
          {
            (*(v123 + 1))(v127, v4);
            v69 = v186;
          }

          else
          {
            OUTLINED_FUNCTION_110_8();
            v39 = v186;
            v138(v129, v186);
            v139 = OUTLINED_FUNCTION_97_1();
            v126(v139);
            v69 = v39;
            OUTLINED_FUNCTION_100_5();
            OUTLINED_FUNCTION_4_56(v129);
          }

          v125 = v172;
          v84 = v176;
        }

        v140 = v165;
        v141 = OUTLINED_FUNCTION_171_0();
        (v84)(v141);
        OUTLINED_FUNCTION_4_75(v140);
        if (v70)
        {
          OUTLINED_FUNCTION_110_8();
          v142(v140, v69);
          v146 = v178;
          v145 = v179;
        }

        else
        {
          v39 = v123;
          v84 = (v123 + 32);
          v143 = *(v123 + 4);
          v144 = OUTLINED_FUNCTION_97_1();
          v143(v144);
          v145 = v179;
          v146 = v178;
          if (__swift_getEnumTagSinglePayload(v179, 1, v178))
          {
            v148 = *(v39 + 1);
            v39 += 8;
            v148(v125, v4);
          }

          else
          {
            v149 = *(v146 + 28);
            OUTLINED_FUNCTION_110_8();
            v150(v179 + v149, v69);
            (v143)(v179 + v149, v125, v4);
            v151 = v179 + v149;
            v145 = v179;
            OUTLINED_FUNCTION_4_56(v151);
          }

          OUTLINED_FUNCTION_100_5();
        }

        v152 = v173;
        v153 = OUTLINED_FUNCTION_97_1();
        v154 = v175;
        (v180)(v153);
        v155 = OUTLINED_FUNCTION_88_3();
        OUTLINED_FUNCTION_52(v155, v156, v146);
        if (v70)
        {
          sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
          OUTLINED_FUNCTION_111_5();
          v84();
          v157 = v152;
          v159 = v181;
          v181(v157, v154);
          OUTLINED_FUNCTION_130_8();
          v64 = v184;
        }

        else
        {
          v192 = v146;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v191);
          (*(v174 + 32))(boxed_opaque_existential_1, v152, v146);
          sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
          OUTLINED_FUNCTION_111_5();
          v84();
          v64 = v184;
          v159 = v181;
        }

        v160 = OUTLINED_FUNCTION_127_7();
        v159(v145, v154, v160);
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_111_5();
      (v84)(v187, v69);
    }

    else
    {
      OUTLINED_FUNCTION_4_75(v187);
      if (v70 && (OUTLINED_FUNCTION_4_75(v39), v70))
      {
        sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
        OUTLINED_FUNCTION_111_5();
        (v84)(v187, v69);
        OUTLINED_FUNCTION_130_8();
      }

      else
      {
        v100 = v187;
        (v84)(v1, v187, v69);
        v101 = v164;
        (v84)(v164, v39, v69);
        v84 = (v67 + 32);
        v102 = *(v67 + 32);
        v103 = v170;
        v102(v170, v1, v69);
        v104 = v178;
        v102(v103 + *(v178 + 7), v101, v69);
        v192 = v104;
        v105 = __swift_allocate_boxed_opaque_existential_1(&v191);
        (*(v174 + 32))(v105, v103, v104);
        sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
        OUTLINED_FUNCTION_111_5();
        ((v67 + 32))(v100, v69);
      }

      v93 = OUTLINED_FUNCTION_127_7();
    }

    v62 = v183;
    v64 = v184;
LABEL_69:
    (v84)(v39, v69, v93);
    goto LABEL_70;
  }

  v187 = v25;
  v62 = v183;
  v63 = sub_1E3C2F454(v57, v58, v59);
  v64 = v184;
  sub_1E3C2FBB4(v63, &v189, v184, v65);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_4_56(v54);
    v66 = OUTLINED_FUNCTION_152_6();
    (*(v185 + 4))(v66, v54, v4);
    sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {
    sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v4);
    OUTLINED_FUNCTION_110_8();
    v74(v54, v186);
    OUTLINED_FUNCTION_130_8();
  }

  v75 = OUTLINED_FUNCTION_127_7();
  v76 = v188;
  if ((v182 & 1) == 0)
  {
    v85 = *(v188 + 16);
    v86 = v188;
    v87 = v186;
    (v85)(v47, v181, v186, v75);
    OUTLINED_FUNCTION_4_75(v47);
    if (!v70)
    {
      *(&v190 + 1) = v4;
      v109 = __swift_allocate_boxed_opaque_existential_1(&v189);
      (*(v185 + 4))(v109, v47, v4);
      sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E329504C(&v189, &v191);
LABEL_55:
      OUTLINED_FUNCTION_127_7();
      goto LABEL_70;
    }

    v88 = *(v86 + 8);
    v88(v47, v87);
    v189 = 0u;
    v190 = 0u;
    OUTLINED_FUNCTION_129_6();
    v85();
    OUTLINED_FUNCTION_4_75(v44);
    if (v70)
    {
      sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
      v88(v44, v87);
      OUTLINED_FUNCTION_130_8();
    }

    else
    {
      v137 = OUTLINED_FUNCTION_152_6();
      (*(v185 + 4))(v137, v44, v4);
      sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
    }

    if (!*(&v190 + 1))
    {
      goto LABEL_55;
    }

    v136 = &v189;
LABEL_54:
    sub_1E325F6F0(v136, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_55;
  }

  v77 = *(v188 + 16);
  v78 = v186;
  (v77)(v51, v181, v186, v75);
  OUTLINED_FUNCTION_4_75(v51);
  if (!v70)
  {
    v106 = *(v185 + 4);
    v107 = v168;
    v106(v168, v51, v4);
    v108 = OUTLINED_FUNCTION_152_6();
    v106(v108, v107, v4);
LABEL_51:
    v136 = v193;
    goto LABEL_54;
  }

  v79 = *(v76 + 8);
  v79(v51, v78);
  OUTLINED_FUNCTION_129_6();
  v77();
  OUTLINED_FUNCTION_4_75(v2);
  if (!v70)
  {
    v133 = *(v185 + 4);
    v134 = v187;
    v133(v187, v2, v4);
    v135 = OUTLINED_FUNCTION_152_6();
    v133(v135, v134, v4);
    goto LABEL_51;
  }

  v79(v2, v78);
LABEL_70:
  v161 = sub_1E3294F34(v193, &v191);
  *&v189 = sub_1E3C2F454(v161, v162, v163);
  sub_1E3C37D80(&v191, v64);
  sub_1E325F6F0(v193, &unk_1ECF296E0, &unk_1E4298030);
  *(v62 + 48) = v189;

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C34DD0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

void sub_1E3C34E14()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v1 + 64;
  OUTLINED_FUNCTION_4_4();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v9 = 0;
  v382 = v0;

  while (v6)
  {
    v10 = v9;
LABEL_8:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1E328438C(*(v2 + 56) + 32 * v12, &v461);
    *&v463 = v15;
    *(&v463 + 1) = v14;
    sub_1E329504C(&v461, &v464);

LABEL_9:
    v423 = v463;
    v424 = v464;
    v425 = v465;
    if (!*(&v463 + 1))
    {

      OUTLINED_FUNCTION_25_2();
      return;
    }

    sub_1E329504C(&v424, &v420);
    OUTLINED_FUNCTION_138_0();
    v16 = sub_1E3D46B48();
    v24 = v16;
    switch(v16)
    {
      case 0:
      case 1:
      case 17:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v38 = v24;
        goto LABEL_37;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 81:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v25 = OUTLINED_FUNCTION_143_4();
        sub_1E3C38794(v25, v26);
        v27 = v426;
        v28 = v427;
        v29 = v428;
        v30 = v429;
        v31 = v430;
        v32 = v431;
        goto LABEL_18;
      case 12:
        v83 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v83, v84, v85, v86, v87, v88, v89, v90, v283, v300, v318, v335, v352, v370, v387, v404, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E41258B8();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E41258B8();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E41258B8();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E41258B8();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E41258B8();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E41258B8();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C3084C(v253, v254, v255, v256, v257);
        goto LABEL_163;
      case 13:
        v99 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v99, v100, v101, v102, v103, v104, v105, v106, v285, v302, v320, v337, v354, v372, v389, v406, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E4125A20();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E4125A20();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E4125A20();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125A20();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125A20();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E4125A20();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C30BB0(v263, v264, v265, v266, v267);
        goto LABEL_163;
      case 14:
        v91 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v91, v92, v93, v94, v95, v96, v97, v98, v284, v301, v319, v336, v353, v371, v388, v405, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E4125630();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E4125630();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E4125630();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125630();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125630();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E4125630();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C30F08(v258, v259, v260, v261, v262);
        goto LABEL_163;
      case 15:
        v108 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v108, v109, v110, v111, v112, v113, v114, v115, v286, v303, v321, v338, v355, v373, v390, v407, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E4125C3C();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E4125C3C();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E4125C3C();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125C3C();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E4125C3C();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E4125C3C();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C3126C(v268, v269, v270, v271, v272);
        goto LABEL_163;
      case 16:
        v67 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v67, v68, v69, v70, v71, v72, v73, v74, v281, v298, v316, v333, v350, v368, v385, v402, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E4126028();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E4126028();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E4126028();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E4126028();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E4126028();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E4126028();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C31D48(v243, v244, v245, v246, v247);
        goto LABEL_163;
      case 18:
      case 33:
      case 38:
      case 39:
      case 69:
      case 78:
      case 110:
      case 111:
      case 112:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v33 = OUTLINED_FUNCTION_143_4();
        v34 = sub_1E3C38AF0(v33);
        sub_1E3C315C4(v34, v34 >> 8, v34 >> 16, v24, 1);
        goto LABEL_38;
      case 19:
        sub_1E328438C(&v420, &v416);
        sub_1E3C3804C(&v416, &v463);
        v48 = sub_1E3294F34(&v463, v459);
        if (v460)
        {
          v56 = OUTLINED_FUNCTION_83_9(v48, v49, v50, v51, v52, v53, v54, v55, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v56, v57);
          v58 = sub_1E3280A90(0, &unk_1EE23AD60, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v58, v59, v60, v61, v62, v63, v64, v65, v280, v297, v315, v332, v349, v366, v384, v401, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v367 = v66;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          sub_1E325F6F0(v459, &unk_1ECF296E0, &unk_1E4298030);
          v367 = 0;
        }

        v139 = sub_1E3294F34(&v465, v459);
        if (v460)
        {
          v147 = OUTLINED_FUNCTION_83_9(v139, v140, v141, v142, v143, v144, v145, v146, v278, v295, v313, v330, v347, v367, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v147, v148);
          v149 = sub_1E3280A90(0, &unk_1EE23AD60, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v149, v150, v151, v152, v153, v154, v155, v156, v288, v305, v323, v340, v357, v375, v392, v409, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v358 = v157;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          OUTLINED_FUNCTION_122_6(v139, v140, v141, v142, v143, v144, v145, v146, v278, v295, v313, v330, v347, v367, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          v358 = 0;
        }

        v158 = sub_1E3294F34(&v467, v459);
        if (v460)
        {
          v166 = OUTLINED_FUNCTION_83_9(v158, v159, v160, v161, v162, v163, v164, v165, v289, v306, v324, v341, v358, v376, v393, v410, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v166, v167);
          v168 = OUTLINED_FUNCTION_57_4();
          v170 = sub_1E3280A90(v168, v169, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v170, v171, v172, v173, v174, v175, v176, v177, v290, v307, v325, v342, v359, v377, v394, v411, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v343 = v178;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          OUTLINED_FUNCTION_122_6(v158, v159, v160, v161, v162, v163, v164, v165, v289, v306, v324, v341, v358, v376, v393, v410, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          v343 = 0;
        }

        v179 = sub_1E3294F34(&v470, v459);
        if (v460)
        {
          v187 = OUTLINED_FUNCTION_83_9(v179, v180, v181, v182, v183, v184, v185, v186, v291, v308, v326, v343, v360, v378, v395, v412, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v187, v188);
          v189 = OUTLINED_FUNCTION_57_4();
          v191 = sub_1E3280A90(v189, v190, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v191, v192, v193, v194, v195, v196, v197, v198, v292, v309, v327, v344, v361, v379, v396, v413, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v313 = v199;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          OUTLINED_FUNCTION_122_6(v179, v180, v181, v182, v183, v184, v185, v186, v291, v308, v326, v343, v360, v378, v395, v412, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          v313 = 0;
        }

        v200 = sub_1E3294F34(&v471, v459);
        if (v460)
        {
          v208 = OUTLINED_FUNCTION_83_9(v200, v201, v202, v203, v204, v205, v206, v207, v278, v310, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v208, v209);
          v210 = OUTLINED_FUNCTION_57_4();
          v212 = sub_1E3280A90(v210, v211, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v212, v213, v214, v215, v216, v217, v218, v219, v293, v311, v328, v345, v362, v380, v397, v414, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v295 = v220;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          sub_1E325F6F0(v459, &unk_1ECF296E0, &unk_1E4298030);
          v295 = 0;
        }

        v221 = sub_1E3294F34(&v472, v459);
        if (v460)
        {
          v229 = OUTLINED_FUNCTION_83_9(v221, v222, v223, v224, v225, v226, v227, v228, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E329504C(v229, v230);
          v231 = OUTLINED_FUNCTION_57_4();
          v233 = sub_1E3280A90(v231, v232, 0x1E69DB7D8);
          OUTLINED_FUNCTION_66_22(v233, v234, v235, v236, v237, v238, v239, v240, v294, v312, v329, v346, v363, v381, v398, v415, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          sub_1E40B0308(v459);
          v242 = v241;
          __swift_destroy_boxed_opaque_existential_1(&v461);
        }

        else
        {
          sub_1E325F6F0(v459, &unk_1ECF296E0, &unk_1E4298030);
          v242 = 0;
        }

        sub_1E3C3195C(v364, v347, v330, 19, 1);

        sub_1E325F6F0(&v463, &qword_1ECF35770, &unk_1E42C5180);
        sub_1E325F6F0(&v416, &unk_1ECF296E0, &unk_1E4298030);
        __swift_destroy_boxed_opaque_existential_1(&v420);
        v2 = v399;
        continue;
      case 21:
      case 24:
      case 25:
      case 28:
      case 29:
      case 30:
      case 32:
      case 46:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        sub_1E3C39D64(&v463, v24, 1);
        goto LABEL_38;
      case 22:
        v124 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v124, v125, v126, v127, v128, v129, v130, v131, v287, v304, v322, v339, v356, v374, v391, v408, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E412620C();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E412620C();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E412620C();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E412620C();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E412620C();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E412620C();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C32498(v273, v274, v275, v276, v277);
        goto LABEL_163;
      case 23:
      case 26:
        v40 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v40, v41, v42, v43, v44, v45, v46, v47, v279, v296, v314, v331, v348, v365, v383, v400, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E412660C();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E412660C();
        }

        if (*(&v465 + 1))
        {
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_102_1();
          sub_1E412660C();
        }

        if (v466)
        {
          OUTLINED_FUNCTION_117_7();
          OUTLINED_FUNCTION_10_96();
          sub_1E412660C();
        }

        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          OUTLINED_FUNCTION_10_96();
          sub_1E412660C();
        }

        v2 = v469;
        if (v469)
        {
          OUTLINED_FUNCTION_116_5();
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E412660C();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_29_56();
        OUTLINED_FUNCTION_26_64();
        sub_1E3C327F0(v134, v135, v136, v137, v138);
        goto LABEL_163;
      case 34:
        v75 = OUTLINED_FUNCTION_109_5(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        OUTLINED_FUNCTION_53_30(v75, v76, v77, v78, v79, v80, v81, v82, v282, v299, v317, v334, v351, v369, v386, v403, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
        if (*(&v463 + 1))
        {
          OUTLINED_FUNCTION_108_8();
          OUTLINED_FUNCTION_138_0();
          sub_1E4125DB8();
        }

        if (*(&v464 + 1))
        {
          OUTLINED_FUNCTION_107_6();
          OUTLINED_FUNCTION_123_1();
          sub_1E4125DB8();
        }

        if (*(&v465 + 1))
        {

          OUTLINED_FUNCTION_17_11();
          sub_1E4125DB8();
        }

        v2 = v468;
        if (v468)
        {
          OUTLINED_FUNCTION_106_12();
          sub_1E4125DB8();

          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
          OUTLINED_FUNCTION_10_96();
          sub_1E4125DB8();
        }

        else
        {
          sub_1E325F6F0(&v463, &qword_1ECF346E8, &unk_1E42C0DD0);
        }

        OUTLINED_FUNCTION_26_64();
        sub_1E3C33600(v248, v249, v250, v251, v252);
LABEL_163:
        v107 = &v461;
        goto LABEL_39;
      case 35:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v38 = 35;
LABEL_37:
        sub_1E3C3A238(&v463, v38, 1);
        goto LABEL_38;
      case 36:
      case 37:
      case 44:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v36 = OUTLINED_FUNCTION_143_4();
        sub_1E3C38794(v36, v37);
        v27 = v438;
        v28 = v439;
        v29 = v440;
        v30 = v441;
        v31 = v442;
        v32 = v443;
LABEL_18:
        sub_1E3C304D0(v27, v28, v29, v30, v31, v32, v24, 1);
        goto LABEL_38;
      case 40:
      case 41:
      case 42:
      case 43:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        if (swift_dynamicCast())
        {
          v35 = sub_1E4205ED4();
        }

        else
        {
          v35 = 0;
        }

        v39 = [objc_opt_self() gridStyleForCSSStyle_];

        sub_1E3C32FC4(v39, 0, v24, 1);
        break;
      case 45:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        v132 = OUTLINED_FUNCTION_143_4();
        sub_1E3C38794(v132, v133);
        sub_1E3C33284(v450, v451, v452, v453, v454, v455, 45, 1);
        goto LABEL_38;
      case 47:
        *(&v464 + 1) = &type metadata for ViewLayoutKeys;
        *&v465 = &off_1F5D82368;
        LOBYTE(v463) = 47;
        sub_1E3F9F164(&v463, v2, MEMORY[0x1E69E7CA0] + 8);
        if (v462)
        {
          v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
          OUTLINED_FUNCTION_83_9(v116, v117, v118, v116, v119, v120, v121, v122, v278, v295, v313, v330, v347, v364, v382, v399, v416, v417, v418, v419, v420, *(&v420 + 1), v421, v422, v423, *(&v423 + 1), v424, *(&v424 + 1), v425, *(&v425 + 1), v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, v444, v445, v446, v447, v448, v449, v450, v451, v452, v453, v454, v455, v456, v457, v458);
          if (swift_dynamicCast())
          {
            v123 = v459[0];
          }

          else
          {
            v123 = 0.0;
          }

          __swift_destroy_boxed_opaque_existential_1(&v463);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v463);
          sub_1E325F6F0(&v461, &unk_1ECF296E0, &unk_1E4298030);
          v123 = 0.0;
        }

        *&v463 = v123;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B490, &unk_1E42A0640);
        sub_1E4148DE0(sub_1E3C3DCC0);

        break;
      case 109:
        OUTLINED_FUNCTION_104_7(v16, v17, v18, v19, v20, v21, v22, v23, v278, v295, v313, v330);
        sub_1E3C3A2F0(&v463, 0x6Du, 1);
LABEL_38:
        v107 = &v463;
LABEL_39:
        sub_1E325F6F0(v107, &unk_1ECF296E0, &unk_1E4298030);
        break;
      default:
        break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v420);
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
      v6 = 0;
      v464 = 0u;
      v465 = 0u;
      v463 = 0u;
      goto LABEL_9;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1E3C35CA4(uint64_t a1)
{
  result = sub_1E3C2F4D4(a1);
  if (result)
  {
    v4 = sub_1E373E010(a1, result, v3);

    return v4;
  }

  return result;
}

void sub_1E3C35CF4(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 1536);
  v6 = a2;
  v9 = v5();
  if (v7 == 1)
  {
    OUTLINED_FUNCTION_59_1();
    sub_1E39DFB80(v10, v11);
    sub_1E39DFB80(v9, 1);
  }

  else
  {
    v12 = v7;
    v13 = sub_1E3C2ACD4(a1, a2, v8, v9, v7);
    sub_1E39DFB80(v9, v12);

    if (v13)
    {
      OUTLINED_FUNCTION_15_36();
      return;
    }
  }

  v14 = v6;
  OUTLINED_FUNCTION_59_1();
  sub_1E3C2F6F0(v15, v16, v17);
  v19 = sub_1E3C2F4D4(v18);
  if (v19)
  {
    v20 = 0;
    v21 = v19 + 64;
    OUTLINED_FUNCTION_4_4();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;
    if ((v23 & v22) == 0)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v24 &= v24 - 1;
      OUTLINED_FUNCTION_8();
      v29 = *(v28 + 1640);

      OUTLINED_FUNCTION_59_1();
      v29();
    }

    while (v24);
LABEL_8:
    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v27 >= v26)
      {

        goto LABEL_15;
      }

      v24 = *(v21 + 8 * v27);
      ++v20;
      if (v24)
      {
        v20 = v27;
        goto LABEL_12;
      }
    }

LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_15:
    v30 = sub_1E3C2F604();
    v31 = sub_1E32AE9B0(v30);
    for (i = 0; v31 != i; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_59_1();
      v33();
    }

    OUTLINED_FUNCTION_15_36();
  }
}

void sub_1E3C35F80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v0[6] = sub_1E3C2F454(v1, v3, v4);

  OUTLINED_FUNCTION_9_2();
  v6 = (*(v5 + 1416))();
  (*(*v0 + 1424))(v6);
  OUTLINED_FUNCTION_9_2();
  v8 = (*(v7 + 1200))();
  v10 = (*(*v0 + 1208))(v8, v9 & 1);
  v11 = sub_1E3C2F4D4(v10);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = v11 + 64;
    v15 = 1 << *(v11 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v11 + 64);
    v18 = (v15 + 63) >> 6;
    if (v17)
    {
      while (1)
      {
        v19 = v13;
LABEL_9:
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v21 = v20 | (v19 << 6);
        v22 = *(*(v12 + 56) + 8 * v21);
        v23 = *(*v2 + 1624);
        v24 = *(*(v12 + 48) + 2 * v21);

        if (v23(v24, 0))
        {
          (*(*v22 + 1648))();
        }

        v13 = v19;
        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return;
      }

      if (v19 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v19);
      ++v13;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3C36200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C3BC78(a1, a2, a3);
  v3[6] = sub_1E4205CB4();

  (*(*v3 + 1424))(0);
  v4 = (*(*v3 + 1208))(0, 1);
  v5 = sub_1E3C2F4D4(v4);
  if (v5)
  {
    v6 = 0;
    v7 = v5 + 64;
    OUTLINED_FUNCTION_4_4();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    if ((v9 & v8) == 0)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v10 &= v10 - 1;
      OUTLINED_FUNCTION_8();
      v15 = *(v14 + 1656);

      v15(v16);
    }

    while (v10);
    while (1)
    {
LABEL_4:
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v13 >= v12)
      {
        break;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_8;
      }
    }
  }
}

void sub_1E3C363D0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v53 = v4;
  v49 = v5;
  v6 = v5;
  v8 = type metadata accessor for ViewLayout.StorageTuple(255, v0, v0, v7);
  sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v50 = v10;
  v51 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v52 = v12;
  OUTLINED_FUNCTION_1_2();
  v48 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v47 = v15;
  v16 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v46 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v27 = sub_1E3C2F454(v24, v25, v26);
  sub_1E3C2FBB4(v27, &v54, v3, v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v23, v29 ^ 1u, 1, v1);
  if (v6 != 5)
  {
    v33 = v53;
    if (qword_1EE29DCC8 != -1)
    {
      OUTLINED_FUNCTION_25_65(&qword_1EE29DCC8);
    }

    v34 = v16;
    if (byte_1EE2AAE88 != 1)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_126_3();
    OUTLINED_FUNCTION_76_13(v35, &v54);

    if (v55)
    {
      v36 = v52;
      v37 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v36, v37 ^ 1u, 1, v8);
      OUTLINED_FUNCTION_52(v36, 1, v8);
      if (!v38)
      {
        v40 = v47;
        v39 = v48;
        (*(v48 + 32))(v47, v36, v8);
        OUTLINED_FUNCTION_4_152();
        if (sub_1E3C2A914(v49, 4, v41))
        {
          v42 = v46;
          (*(v18 + 16))(v46, v40, v34);
        }

        else
        {
          v42 = v46;
          (*(v18 + 16))(v46, v40 + *(v8 + 28), v34);
        }

        (*(v39 + 8))(v40, v8);
        (*(v18 + 40))(v23, v42, v34);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1E325F6F0(&v54, &unk_1ECF296E0, &unk_1E4298030);
      v36 = v52;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v8);
    }

    (*(v50 + 8))(v36, v51);
LABEL_14:
    (*(v18 + 32))(v33, v23, v34);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v1);
  (*(v18 + 8))(v23, v16);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C367D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_219 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE28C258;
  if (*(qword_1EE28C258 + 16) && (v5 = sub_1E3C3BB4C(a1, a2, a3), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

void sub_1E3C3684C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1E3C2F454(a1, a2, a3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v31 = v3;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E377FD30(0, v6, 0);
    v36 = v41;
    v9 = sub_1E37817B4(v5);
    v10 = 0;
    v11 = v5 + 64;
    v32 = v7;
    v33 = v6;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v5 + 36) != v7)
      {
        goto LABEL_25;
      }

      v35 = v7;
      v34 = v8;
      v13 = *(*(v5 + 48) + v9);
      sub_1E328438C(*(v5 + 56) + 32 * v9, v40);
      v37[0] = v13;
      sub_1E329504C(v40, v38);
      v43 = 0;
      v44 = 0xE000000000000000;
      v42 = v13;
      sub_1E4207614();
      MEMORY[0x1E69109E0](61, 0xE100000000000000);
      sub_1E3C36CE4(v38);
      MEMORY[0x1E69109E0]();

      v15 = v43;
      v14 = v44;
      sub_1E325F6F0(v37, &qword_1ECF357A8, &qword_1E42C5458);
      v16 = v36;
      v41 = v36;
      v6 = *(v36 + 16);
      v17 = *(v36 + 24);
      if (v6 >= v17 >> 1)
      {
        sub_1E377FD30((v17 > 1), v6 + 1, 1);
        v16 = v41;
      }

      *(v16 + 16) = v6 + 1;
      v18 = v16 + 16 * v6;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v19 = 1 << *(v5 + 32);
      if (v9 >= v19)
      {
        goto LABEL_26;
      }

      v11 = v5 + 64;
      v20 = *(v5 + 64 + 8 * v12);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_27;
      }

      v36 = v16;
      if (*(v5 + 36) != v35)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = (v5 + 72 + 8 * v12);
        v24 = v12 + 1;
        while (v24 < (v19 + 63) >> 6)
        {
          v26 = *v23++;
          v25 = v26;
          v22 += 64;
          ++v24;
          if (v26)
          {
            sub_1E3746E04(v9, v35, v34 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_1E3746E04(v9, v35, v34 & 1);
      }

LABEL_19:
      v8 = 0;
      ++v10;
      v9 = v19;
      v7 = v32;
      v6 = v33;
      if (v10 == v33)
      {

        v4 = v31;
        v27 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);

    __break(1u);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v39 = v27;

    sub_1E3C3C1C4(&v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    sub_1E3924274();
    sub_1E4205DF4();

    v39 = 60;
    *&v40[0] = 0xE100000000000000;
    v28 = sub_1E4207CE4();
    MEMORY[0x1E69109E0](v28);

    MEMORY[0x1E69109E0](58, 0xE100000000000000);
    v29 = sub_1E41E1364(v4);
    MEMORY[0x1E69109E0](v29);

    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    v30 = OUTLINED_FUNCTION_13_8();
    MEMORY[0x1E69109E0](v30);

    MEMORY[0x1E69109E0](62, 0xE100000000000000);
  }
}

uint64_t sub_1E3C36C6C()
{

  sub_1E37C3B04(*(v0 + 56));

  sub_1E39DFB80(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t sub_1E3C36CB0()
{
  sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 98, 7);
}

void sub_1E3C36CE4(uint64_t a1)
{
  v2 = sub_1E328438C(a1, v142);
  v3 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_105_9(v2, v4, v5, v6, v7, v8, v9, v10, v98, v101, v104, v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v135, v136, v137, v138, v139);
  if (swift_dynamicCast())
  {
    v11 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4297BE0;
    *(v12 + 56) = v3;
    *(v12 + 64) = sub_1E3C3DA84(v12, v13, v14);
    *(v12 + 32) = v11;
    sub_1E4205F44();
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v142);
    return;
  }

  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_105_9(v15, v16, v17, v15, v18, v19, v20, v21, v99, v102, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v134, v135, v136, v137, v138, v139);
  if (!swift_dynamicCast())
  {
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    if (swift_dynamicCast())
    {
      v28 = sub_1E3E5F3F0();
      v30 = v29;
      sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
      v31 = v28;
      v32 = v30;
      if (sub_1E4206F64())
      {

        v33 = [v31 debugDescription];
        sub_1E4205F14();
      }

      else
      {
        sub_1E42074B4();

        *&v139 = 0x203A746867696C28;
        *(&v139 + 1) = 0xE800000000000000;
        v90 = [v31 debugDescription];

        v91 = sub_1E4205F14();
        v93 = v92;

        MEMORY[0x1E69109E0](v91, v93);

        MEMORY[0x1E69109E0](0x203A6B726164202CLL, 0xE800000000000000);
        v94 = [v32 debugDescription];

        v95 = sub_1E4205F14();
        v97 = v96;

        MEMORY[0x1E69109E0](v95, v97);

        MEMORY[0x1E69109E0](41, 0xE100000000000000);
      }
    }

    else
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35778, &unk_1E42C5420);
      OUTLINED_FUNCTION_105_9(v34, v35, v36, v34, v37, v38, v39, v40, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v134, v135, v136, v137, v138, v139);
      if (swift_dynamicCast())
      {
        sub_1E3251BE8(&v139, &v134);
        __swift_project_boxed_opaque_existential_1(&v134, v137);
        OUTLINED_FUNCTION_27_0();
        sub_1E42079B4();
        __swift_destroy_boxed_opaque_existential_1(&v134);
      }

      else
      {
        sub_1E328438C(a1, &v139);
        sub_1E4205F84();
      }
    }

    goto LABEL_34;
  }

  v22 = v139;
  v24 = v140;
  v23 = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  if (*&v22 == 0.0)
  {
    OUTLINED_FUNCTION_149_4();
  }

  else
  {
    v137 = v3;
    v134 = v22;
    v41 = sub_1E3C36CE4(&v134);
    OUTLINED_FUNCTION_121_7(v41, v42, v43, v44, v45, v46, v47, v48, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133);
    OUTLINED_FUNCTION_88_11();

    v26 = v134;
    v27 = v135;
  }

  *(inited + 32) = v26;
  *(inited + 40) = v27;
  if (*(&v22 + 1) == 0.0)
  {
    OUTLINED_FUNCTION_149_4();
  }

  else
  {
    v137 = v3;
    v134 = *(&v22 + 1);
    v51 = sub_1E3C36CE4(&v134);
    OUTLINED_FUNCTION_121_7(v51, v52, v53, v54, v55, v56, v57, v58, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133);
    OUTLINED_FUNCTION_88_11();

    v49 = v134;
    v50 = v135;
  }

  *(inited + 48) = v49;
  *(inited + 56) = v50;
  if (*&v24 == 0.0)
  {
    OUTLINED_FUNCTION_149_4();
  }

  else
  {
    v137 = v3;
    v134 = v24;
    v61 = sub_1E3C36CE4(&v134);
    OUTLINED_FUNCTION_121_7(v61, v62, v63, v64, v65, v66, v67, v68, v100, v103, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133);
    OUTLINED_FUNCTION_88_11();

    v59 = v134;
    v60 = v135;
  }

  *(inited + 64) = v59;
  *(inited + 72) = v60;
  if (*&v23 == 0.0)
  {
    OUTLINED_FUNCTION_149_4();
  }

  else
  {
    v137 = v3;
    v134 = v23;
    v71 = sub_1E3C36CE4(&v134);
    v73 = v72;
    __swift_destroy_boxed_opaque_existential_1(&v134);
    v134 = 0x203A7468676972;
    v135 = 0xE700000000000000;
    MEMORY[0x1E69109E0](v71, v73);

    v69 = v134;
    v70 = v135;
  }

  v74 = 0;
  *(inited + 80) = v69;
  *(inited + 88) = v70;
  v75 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v76 = 16 * v74 + 40;
  while (1)
  {
    if (v74 == 4)
    {
      swift_setDeallocating();
      sub_1E3740994();
      v134 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      sub_1E3924274();
      v87 = sub_1E4205DF4();
      v89 = v88;

      v134 = 40;
      v135 = 0xE100000000000000;
      MEMORY[0x1E69109E0](v87, v89);

      MEMORY[0x1E69109E0](41, 0xE100000000000000);
      goto LABEL_34;
    }

    if (v74 > 3)
    {
      break;
    }

    ++v74;
    v77 = v76 + 16;
    v78 = *(inited + v76);
    v76 += 16;
    if (v78)
    {
      v79 = *(inited + v77 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1E3740F88(0, *(v75 + 2) + 1, 1, v75);
      }

      v80 = *(v75 + 2);
      v81 = *(v75 + 3);
      v82 = v80 + 1;
      if (v80 >= v81 >> 1)
      {
        v84 = v75;
        v85 = *(v75 + 2);
        v86 = sub_1E3740F88((v81 > 1), v80 + 1, 1, v84);
        v80 = v85;
        v75 = v86;
      }

      *(v75 + 2) = v82;
      v83 = &v75[16 * v80];
      *(v83 + 4) = v79;
      *(v83 + 5) = v78;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t VUIGridStyle.debugDescription.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6669636570736E75;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 65;
      break;
    case 2:
      result = 16705;
      break;
    case 3:
      result = 17217;
      break;
    case 4:
      result = 66;
      break;
    case 5:
      result = 67;
      break;
    case 6:
      result = 17219;
      break;
    case 7:
      result = 68;
      break;
    case 8:
      result = 17476;
      break;
    case 9:
      result = 69;
      break;
    case 10:
      result = 70;
      break;
    case 11:
      result = 71;
      break;
    case 12:
      result = 72;
      break;
    case 13:
      result = 74;
      break;
    case 14:
      result = 75;
      break;
    case 15:
      result = 20560;
      break;
    case 16:
      result = 76;
      break;
    case 17:
      result = 21324;
      break;
    case 18:
      result = 16716;
      break;
    case 19:
      result = 17231;
      break;
    case 20:
      result = 17234;
      break;
    case 21:
      result = 19796;
      break;
    case 22:
      result = 0x746469576C6C7566;
      break;
    case 23:
      result = 0x64456F5465676465;
      break;
    case 24:
      result = 5459022;
      break;
    case 25:
      result = 0x74696C7073;
      break;
    case 26:
      result = 0x65736163776F6873;
      break;
    case 27:
      result = 19539;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

void sub_1E3C37538()
{
  OUTLINED_FUNCTION_31_1();
  v89 = v2;
  v90 = v1;
  v3 = *(v1 + 16);
  v4 = sub_1E4207104();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v85 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v87 = v7;
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v84 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  OUTLINED_FUNCTION_1_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v83 = v21;
  OUTLINED_FUNCTION_49();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v75 - v24;
  v26 = *(v9 + 16);
  v26(v17, v0, v4, v23);
  OUTLINED_FUNCTION_52(v17, 1, v3);
  if (v37)
  {
    (*(v9 + 8))(v17, v4);
    goto LABEL_14;
  }

  v81 = v9;
  v86 = v0;
  v27 = *(v19 + 32);
  v77 = v19 + 32;
  v76 = v27;
  v27(v25, v17, v3);
  v82 = v19;
  v28 = *(v19 + 16);
  v79 = v19 + 16;
  v78 = v28;
  v28(v14, v25, v3);
  OUTLINED_FUNCTION_35_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  v33 = *(v90 + 28);
  v34 = v87;
  v35 = TupleTypeMetadata2;
  v36 = *(TupleTypeMetadata2 + 48);
  (v26)(v87, v14, v4);
  v80 = v36;
  (v26)(v34 + v36, v86 + v33, v4);
  OUTLINED_FUNCTION_52(v34, 1, v3);
  if (v37)
  {
    v38 = *(v81 + 8);
    v38(v14, v4);
    OUTLINED_FUNCTION_52(v34 + v80, 1, v3);
    v39 = v82;
    if (v37)
    {
      TupleTypeMetadata2 = v25;
      v40 = v3;
      v38(v34, v4);
LABEL_26:
      type metadata accessor for ViewLayout();
      v91[3] = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
      v74 = TupleTypeMetadata2;
      v78(boxed_opaque_existential_1, TupleTypeMetadata2, v40);
      sub_1E3C36CE4(v91);
      (*(v39 + 8))(v74, v40);
      __swift_destroy_boxed_opaque_existential_1(v91);
      goto LABEL_24;
    }
  }

  else
  {
    v41 = v84;
    (v26)(v84, v34, v4);
    v42 = v80;
    OUTLINED_FUNCTION_52(v34 + v80, 1, v3);
    if (!v43)
    {
      TupleTypeMetadata2 = v25;
      v67 = v83;
      v76(v83, v34 + v42, v3);
      OUTLINED_FUNCTION_97_1();
      v68 = v41;
      v69 = sub_1E4205E84();
      v39 = v82;
      v70 = *(v82 + 8);
      v70(v67, v3);
      v71 = *(v81 + 8);
      v71(v14, v4);
      v72 = v68;
      v40 = v3;
      v70(v72, v3);
      v71(v34, v4);
      if (v69)
      {
        goto LABEL_26;
      }

      v25 = TupleTypeMetadata2;
      goto LABEL_13;
    }

    (*(v81 + 8))(v14, v4);
    v39 = v82;
    (*(v82 + 8))(v41, v3);
  }

  (*(v85 + 8))(v34, v35);
  v70 = *(v39 + 8);
LABEL_13:
  v70(v25, v3);
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  MEMORY[0x1EEE9AC00](inited);
  v45 = v89;
  *(&v75 - 2) = v3;
  *(&v75 - 1) = v45;
  v46 = MEMORY[0x1E69E6158];
  v47 = sub_1E4148F70(sub_1E3C3D95C, (&v75 - 4), v4, MEMORY[0x1E69E6158], inited + 32);
  MEMORY[0x1EEE9AC00](v47);
  *(&v75 - 2) = v3;
  *(&v75 - 1) = v45;
  sub_1E4148F70(sub_1E3C3D984, (&v75 - 4), v4, v46, inited + 48);
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v50 = (inited + 40 + 16 * v48);
  while (++v48 != 3)
  {
    v51 = v50 + 2;
    v52 = *v50;
    v50 += 2;
    if (v52)
    {
      v53 = *(v51 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_35_9();
        v49 = sub_1E3740F88(v56, v57, v58, v59);
      }

      v54 = *(v49 + 2);
      if (v54 >= *(v49 + 3) >> 1)
      {
        OUTLINED_FUNCTION_35_9();
        v49 = sub_1E3740F88(v60, v61, v62, v63);
      }

      *(v49 + 2) = v54 + 1;
      v55 = &v49[16 * v54];
      *(v55 + 4) = v53;
      *(v55 + 5) = v52;
      goto LABEL_15;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v91[0] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  sub_1E3924274();
  v64 = sub_1E4205DF4();
  v66 = v65;

  v91[0] = 40;
  v91[1] = 0xE100000000000000;
  MEMORY[0x1E69109E0](v64, v66);

  MEMORY[0x1E69109E0](41, 0xE100000000000000);
LABEL_24:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C37CBC(uint64_t a1, uint64_t a2)
{
  if (sub_1E3C2F4D4(a1))
  {
  }

  else
  {
    v5 = *(v2 + 56);
    *(v2 + 56) = MEMORY[0x1E69E7CC8];
    sub_1E37C3B04(v5);
  }

  v7 = sub_1E3C2F554(v12);
  if (*v6)
  {
    v8 = v6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v8;
    sub_1E3C3C0A0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v8 = v11;
  }

  return v7(v12, 0);
}

_OWORD *sub_1E3C37D80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E329504C(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1E3C3BF70(v16, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    sub_1E325F6F0(a1, &unk_1ECF296E0, &unk_1E4298030);
    v8 = sub_1E3C3BB4C(a2, v6, v7);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35788, &qword_1E42C5438);
      sub_1E4207644();
      v11 = sub_1E329504C((*(v15 + 56) + 32 * v10), v16);
      sub_1E3C3BC78(v11, v12, v13);
      sub_1E4207664();
      *v2 = v15;
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    return sub_1E325F6F0(v16, &unk_1ECF296E0, &unk_1E4298030);
  }

  return result;
}

uint64_t sub_1E3C37EC8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      result = sub_1E3C37CBC(v3, v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1E3C37F10(uint64_t result)
{
  if (result != v1)
  {
    v3 = sub_1E3C2F604();

    MEMORY[0x1E6910BF0](v2);
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E42062F4();
    }

    sub_1E4206324();
    *(v1 + 64) = v3;
  }

  return result;
}

uint64_t sub_1E3C37FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1E3C2F454(a1, a2, a3);
  v8 = sub_1E3C2F454(v5, v6, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v8;
  sub_1E3C3CD3C(v5, sub_1E3C3CD08, 0, isUniquelyReferenced_nonNull_native, &v11);
  *(v4 + 48) = v11;
}

uint64_t sub_1E3C3804C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3294F34(a1, &v21);
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v4 = v19;
      if (v19)
      {

        sub_1E3277E60(0x746C7561666564, 0xE700000000000000, v19, &v19);

        v5 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  v4 = 0;
  v19 = 0u;
  v20 = 0u;
  v5 = 1;
LABEL_7:
  sub_1E3C397C8(&v19, &v21);
  sub_1E325F6F0(&v19, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v4, &v17);
  }

  sub_1E3C397C8(&v17, &v19);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v4, &v15);
  }

  sub_1E3C397C8(&v15, &v17);
  sub_1E325F6F0(&v15, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v4, &v13);
  }

  sub_1E3C397C8(&v13, &v15);
  sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v11 = 0u;
    v12 = 0u;
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v4, &v11);
  }

  sub_1E3C397C8(&v11, &v13);
  sub_1E325F6F0(&v11, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v4, &v9);
  }

  sub_1E3C397C8(&v9, &v11);
  sub_1E325F6F0(&v9, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E3294F34(&v21, &v9);
  v6 = *(&v10 + 1);
  sub_1E325F6F0(&v9, &unk_1ECF296E0, &unk_1E4298030);
  if (!v6 && !*(&v20 + 1) && !*(&v18 + 1) && !*(&v16 + 1) && !*(&v14 + 1) && !*(&v12 + 1))
  {
    sub_1E3C397C8(a1, &v9);
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
    v21 = v9;
    v22 = v10;
  }

  sub_1E3294F34(&v19, (a2 + 2));
  sub_1E3294F34(&v17, (a2 + 4));
  sub_1E3294F34(&v15, (a2 + 6));
  sub_1E3294F34(&v13, (a2 + 8));
  sub_1E3294F34(&v11, (a2 + 10));
  v7 = v22;
  *a2 = v21;
  a2[1] = v7;
  sub_1E325F6F0(&v11, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(&v13, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(&v15, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  return sub_1E325F6F0(&v19, &unk_1ECF296E0, &unk_1E4298030);
}

uint64_t sub_1E3C38448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E3294F34(a1, &v27);
  if (*(&v28 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v3 = v26;
      if (v26)
      {

        sub_1E3277E60(0x746C7561666564, 0xE700000000000000, v26, &v27);

        v4 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  }

  v3 = 0;
  v27 = 0u;
  v28 = 0u;
  v4 = 1;
LABEL_7:
  v25 = sub_1E3C398B8(&v27);
  v6 = v5;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v3, &v27);
  }

  v24 = sub_1E3C398B8(&v27);
  v8 = v7;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v3, &v27);
  }

  v23 = sub_1E3C398B8(&v27);
  v10 = v9;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v3, &v27);
  }

  v11 = sub_1E3C398B8(&v27);
  v13 = v12;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v3, &v27);
  }

  v14 = sub_1E3C398B8(&v27);
  v16 = v15;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v3, &v27);
  }

  v17 = sub_1E3C398B8(&v27);
  v19 = v18;
  sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
  if (v6)
  {
    result = v25;
  }

  else
  {
    result = v25;
    if (!v8 && !v10 && !v13 && !v16 && !v19)
    {
      result = sub_1E3C398B8(a1);
      v6 = v21;
    }
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v24;
  a2[3] = v8;
  a2[4] = v23;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v13;
  a2[8] = v14;
  a2[9] = v16;
  a2[10] = v17;
  a2[11] = v19;
  return result;
}

uint64_t sub_1E3C38794@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_1E3294F34(a1, &v141);
  if (v142)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_21_4())
    {
      v4 = v111;
      if (v111)
      {

        v5 = OUTLINED_FUNCTION_128_0();
        sub_1E3277E60(v5, 0xE700000000000000, v111, &v141);

        v14 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  }

  v4 = 0;
  OUTLINED_FUNCTION_177();
  v14 = 1;
LABEL_7:
  v105 = OUTLINED_FUNCTION_123_5(v6, v7, v8, v9, v10, v11, v12, v13, a1, v83, v90, v97, v104, v111, v117, v123, v129, v135);
  v16 = v15;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v14)
  {
    v25 = OUTLINED_FUNCTION_177();
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v4, &v141);
  }

  v99 = OUTLINED_FUNCTION_123_5(v17, v18, v19, v20, v21, v22, v23, v24, v77, v84, v91, v98, v105, v112, v118, v124, v130, v136, v25);
  v27 = v26;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v14)
  {
    v36 = OUTLINED_FUNCTION_177();
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v4, &v141);
  }

  v93 = OUTLINED_FUNCTION_123_5(v28, v29, v30, v31, v32, v33, v34, v35, v78, v85, v92, v99, v106, v113, v119, v125, v131, v137, v36);
  v38 = v37;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v14)
  {
    v47 = OUTLINED_FUNCTION_177();
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v4, &v141);
  }

  v87 = OUTLINED_FUNCTION_123_5(v39, v40, v41, v42, v43, v44, v45, v46, v79, v86, v93, v100, v107, v114, v120, v126, v132, v138, v47);
  v49 = v48;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v14)
  {
    v58 = OUTLINED_FUNCTION_177();
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v4, &v141);
  }

  v59 = OUTLINED_FUNCTION_123_5(v50, v51, v52, v53, v54, v55, v56, v57, v80, v87, v94, v101, v108, v115, v121, v127, v133, v139, v58);
  v61 = v60;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v14)
  {
    v70 = OUTLINED_FUNCTION_177();
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v4, &v141);
  }

  v71 = OUTLINED_FUNCTION_123_5(v62, v63, v64, v65, v66, v67, v68, v69, v81, v88, v95, v102, v109, v116, v122, v128, v134, v140, v70);
  v73 = v72;
  sub_1E325F6F0(&v141, &unk_1ECF296E0, &unk_1E4298030);
  if (v16)
  {
    result = v110;
    if (v27 & 1) != 0 && (v38 & 1) != 0 && (v49 & 1) != 0 && (v61 & 1) != 0 && (v73)
    {
      result = sub_1E3C399A0(v82);
      v16 = v75;
    }
  }

  else
  {
    result = v110;
  }

  LOBYTE(v141) = v16 & 1;
  *a3 = result;
  *(a3 + 8) = v16 & 1;
  *(a3 + 16) = v103;
  *(a3 + 24) = v27 & 1;
  *(a3 + 32) = v96;
  *(a3 + 40) = v38 & 1;
  *(a3 + 48) = v89;
  *(a3 + 56) = v49 & 1;
  *(a3 + 64) = v59;
  *(a3 + 72) = v61 & 1;
  *(a3 + 80) = v71;
  *(a3 + 88) = v73 & 1;
  return result;
}

unint64_t sub_1E3C38AF0(uint64_t a1)
{
  sub_1E3294F34(a1, &v17);
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v2 = v16;
      if (v16)
      {

        sub_1E3277E60(0x746C7561666564, 0xE700000000000000, v16, &v17);

        v3 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  }

  v2 = 0;
  v17 = 0u;
  v18 = 0u;
  v3 = 1;
LABEL_7:
  v4 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v2, &v17);
  }

  v5 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v2, &v17);
  }

  v6 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v2, &v17);
  }

  v7 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v2, &v17);
  }

  v8 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v2, &v17);
  }

  v9 = sub_1E3C39A8C(&v17);
  sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  if (v4 == 2 && v5 == 2 && v6 == 2 && v7 == 2 && v8 == 2 && v9 == 2)
  {
    v4 = sub_1E3C39A8C(a1);
  }

  return (v8 << 32) | (v9 << 40) | (v7 << 24) | (v6 << 16) | (v5 << 8) | v4;
}

uint64_t sub_1E3C38E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E3294F34(a1, &v14);
  if (*(&v15 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v4 = v13;
      if (v13)
      {

        sub_1E3277E60(0x746C7561666564, 0xE700000000000000, v13, &v14);

        v5 = 0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  }

  v4 = 0;
  v14 = 0u;
  v15 = 0u;
  v5 = 1;
LABEL_7:
  v6 = sub_1E3C39B74(&v14);
  sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v4, &v14);
  }

  v7 = sub_1E3C39B74(&v14);
  sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v4, &v14);
  }

  v8 = sub_1E3C39B74(&v14);
  sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v4, &v14);
  }

  v9 = sub_1E3C39B74(&v14);
  sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v4, &v14);
  }

  v10 = sub_1E3C39B74(&v14);
  sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v4, &v14);
  }

  v11 = sub_1E3C39B74(&v14);
  result = sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
  if (!v6 && !v7 && !v8 && !v9 && !v10 && !v11)
  {
    result = sub_1E3C39B74(a1);
    v6 = result;
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v10;
  a2[5] = v11;
  return result;
}

void sub_1E3C3913C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v59 = v6;
  v7 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v58 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v57 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v56 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v55 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v20 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v63 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v27 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v65 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  v66 = v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v64 = &v52 - v33;
  v54 = v5;
  sub_1E3294F34(v5, &v68);
  if (!v69)
  {
    sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
LABEL_6:
    v35 = v27;
    goto LABEL_7;
  }

  v34 = v67;
  v35 = v27;
  if (v67)
  {

    v36 = OUTLINED_FUNCTION_128_0();
    sub_1E3277E60(v36, 0xE700000000000000, v34, &v68);

    v37 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v34 = 0;
  OUTLINED_FUNCTION_2_85();
  v37 = 1;
LABEL_8:
  sub_1E3C39C74(&v68, v64);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  if (v37)
  {
    OUTLINED_FUNCTION_2_85();
  }

  else
  {

    sub_1E3277E60(0x656E6F6870, 0xE500000000000000, v34, &v68);
  }

  sub_1E3C39C74(&v68, v66);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  if (v37)
  {
    OUTLINED_FUNCTION_2_85();
  }

  else
  {

    sub_1E3277E60(6578544, 0xE300000000000000, v34, &v68);
  }

  sub_1E3C39C74(&v68, v65);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  if (v37)
  {
    OUTLINED_FUNCTION_2_85();
  }

  else
  {

    sub_1E3277E60(30324, 0xE200000000000000, v34, &v68);
  }

  sub_1E3C39C74(&v68, v35);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  if (v37)
  {
    OUTLINED_FUNCTION_2_85();
  }

  else
  {

    sub_1E3277E60(6513005, 0xE300000000000000, v34, &v68);
  }

  sub_1E3C39C74(&v68, v63);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  if (v37)
  {
    OUTLINED_FUNCTION_2_85();
  }

  else
  {
    sub_1E3277E60(0x6E6F69736976, 0xE600000000000000, v34, &v68);
  }

  v61 = v1;
  sub_1E3C39C74(&v68, v1);
  sub_1E325F6F0(&v68, &unk_1ECF296E0, &unk_1E4298030);
  v38 = *(v9 + 16);
  v38(v0, v64, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v3);
  v62 = v3;
  v40 = v9;
  v60 = *(v9 + 8);
  v60(v0, v7);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_52(v66, 1, v62);
    if (v41)
    {
      OUTLINED_FUNCTION_52(v65, 1, v62);
      if (v41)
      {
        OUTLINED_FUNCTION_52(v35, 1, v62);
        if (v41)
        {
          OUTLINED_FUNCTION_52(v63, 1, v62);
          if (v41)
          {
            OUTLINED_FUNCTION_52(v61, 1, v62);
            if (v41)
            {
              sub_1E3C39C74(v54, v20);
              v42 = v64;
              v43 = OUTLINED_FUNCTION_13_8();
              (v60)(v43);
              (*(v40 + 32))(v42, v20, v7);
            }
          }
        }
      }
    }
  }

  v53 = v20;
  v38(v20, v66, v7);
  v44 = v55;
  v38(v55, v65, v7);
  v45 = v56;
  v46 = OUTLINED_FUNCTION_171_0();
  (v38)(v46);
  v47 = v57;
  v54 = v35;
  v48 = v63;
  v38(v57, v63, v7);
  v49 = v58;
  v38(v58, v61, v7);
  sub_1E3C2FCB8(v64, v53, v44, v45, v47, v49, v62, v59);
  v50 = OUTLINED_FUNCTION_13_8();
  v51 = v60;
  (v60)(v50);
  v51(v48, v7);
  v51(v54, v7);
  v51(v65, v7);
  v51(v66, v7);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C397C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3294F34(a1, v16);
  if (v17)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_26_13(v4, v5, v6, v4, v7, v8, v9, v10, v13, v14);
    if (swift_dynamicCast())
    {
      v11 = *(v15 + 16);

      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v16, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!*(a1 + 24) || (sub_1E3294F34(a1, v16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030), (swift_dynamicCast() & 1) == 0))
  {
LABEL_8:
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1E3C398B8(uint64_t a1)
{
  sub_1E3294F34(a1, &v17);
  if (v20)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_57_19(v2, v3, v4, v2, v5, v6, v7, v8, v17, v18, v19, v20, v21))
    {
      v9 = *(v21 + 16);

      if (!v9)
      {
        return 0;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v17, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  sub_1E3294F34(a1, &v17);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_71_23(v10, v11, v10, MEMORY[0x1E69E6158], v12, v13, v14, v15, v17, v18, v19, v20, v21);
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3C399A0(uint64_t a1)
{
  sub_1E3294F34(a1, &v21);
  if (v24)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_57_19(v2, v3, v4, v2, v5, v6, v7, v8, v21, v22, v23, v24, v25))
    {
      v9 = *(v25 + 16);

      if (!v9)
      {
        return 0;
      }
    }
  }

  else
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  sub_1E3294F34(a1, &v21);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v17 = OUTLINED_FUNCTION_71_23(v10, v11, v10, v12, v13, v14, v15, v16, v21, v22, v23, v24, v25);
  if (OUTLINED_FUNCTION_153_4(v17, v18, v19))
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3C39A8C(uint64_t a1)
{
  sub_1E3294F34(a1, v21);
  if (v22)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_26_13(v2, v3, v4, v2, v5, v6, v7, v8, v18, v19);
    if (OUTLINED_FUNCTION_21_4())
    {
      v9 = *(v19 + 16);

      if (!v9)
      {
        return 2;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  v10 = 2;
  if (*(a1 + 24))
  {
    sub_1E3294F34(a1, v21);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    OUTLINED_FUNCTION_26_13(v11, v12, v11, MEMORY[0x1E69E6370], v13, v14, v15, v16, v18, v19);
    if (swift_dynamicCast())
    {
      return v20;
    }

    else
    {
      return 2;
    }
  }

  return v10;
}

uint64_t sub_1E3C39B74(uint64_t a1)
{
  sub_1E3294F34(a1, v4);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_21_4())
    {
      v2 = *(v6 + 16);

      if (!v2)
      {
        return 0;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v4, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  sub_1E3294F34(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3C39C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3294F34(a1, v21);
  if (v22)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_26_13(v4, v5, v6, v4, v7, v8, v9, v10, v18, v19);
    if (OUTLINED_FUNCTION_21_4())
    {
      v11 = *(v20 + 16);

      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    sub_1E325F6F0(v21, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (!*(a1 + 24))
  {
LABEL_8:
    OUTLINED_FUNCTION_88_3();
    goto LABEL_9;
  }

  sub_1E3294F34(a1, v21);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_153_4(a2, v21, v12);
LABEL_9:
  OUTLINED_FUNCTION_35_9();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

double sub_1E3C39D64(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v169) = a3;
  sub_1E3C3804C(a1, v203);
  v4 = sub_1E3294F34(v203, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v4, v5, v6, v7, v8, v9, v10, v11, v132, v139, v146, v153, v161, v169, v176, v183, v191, v199, v200, v201, v202[0]);
    v12 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v12, v13, v14, v15, v16, v17, v18, v19, v133, v140, v147, v154, v162, v170, v177, v184, v192, v199, *(&v199 + 1), v200, v201);
    v21 = v20;
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v23 = 0;
    v21 = 1;
  }

  v24 = sub_1E3294F34(&v204, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v24, v25, v26, v27, v28, v29, v30, v31, v132, v139, v146, v153, v161, v169, v176, v183, v191, v199, v200, v201, v202[0]);
    v32 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v32, v33, v34, v35, v36, v37, v38, v39, v134, v141, v148, v155, v163, v171, v178, v185, v193, v199, *(&v199 + 1), v200, v201);
    v41 = v40;
    v43 = v42;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v43 = 0;
    v41 = 1;
  }

  v44 = sub_1E3294F34(&v205, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v44, v45, v46, v47, v48, v49, v50, v51, v132, v139, v146, v153, v161, v169, v176, v183, v191, v199, v200, v201, v202[0]);
    v52 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v52, v53, v54, v55, v56, v57, v58, v59, v135, v142, v149, v156, v164, v172, v179, v186, v194, v199, *(&v199 + 1), v200, v201);
    v187 = v61;
    v195 = v60;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v187 = 0;
    v195 = 1;
  }

  v62 = sub_1E3294F34(&v206, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v62, v63, v64, v65, v66, v67, v68, v69, v132, v139, v146, v153, v161, v169, v176, v187, v195, v199, v200, v201, v202[0]);
    v70 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v70, v71, v72, v73, v74, v75, v76, v77, v136, v143, v150, v157, v165, v173, v180, v188, v196, v199, *(&v199 + 1), v200, v201);
    v79 = v78;
    v81 = v80;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v81 = 0;
    v79 = 1;
  }

  v82 = sub_1E3294F34(&v207, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v82, v83, v84, v85, v86, v87, v88, v89, v132, v139, v146, v153, v161, v169, v176, v187, v195, v199, v200, v201, v202[0]);
    v90 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v90, v91, v92, v93, v94, v95, v96, v97, v137, v144, v151, v158, v166, v174, v181, v189, v197, v199, *(&v199 + 1), v200, v201);
    v159 = v98;
    v167 = v99;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v159 = 1;
    v167 = 0;
  }

  v100 = sub_1E3294F34(&v208, &v199);
  if (v201)
  {
    OUTLINED_FUNCTION_125_6(v100, v101, v102, v103, v104, v105, v106, v107, v132, v139, v146, v159, v167, v169, v176, v187, v195, v199, v200, v201, v202[0]);
    v108 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    OUTLINED_FUNCTION_124_4(v108, v109, v110, v111, v112, v113, v114, v115, v138, v145, v152, v160, v168, v175, v182, v190, v198, v199, *(&v199 + 1), v200, v201);
    v117 = v116;
    v119 = v118;
    __swift_destroy_boxed_opaque_existential_1(v202);
  }

  else
  {
    sub_1E325F6F0(&v199, &unk_1ECF296E0, &unk_1E4298030);
    v119 = 0;
    v117 = 1;
  }

  if (sub_1E3C2A914(a2, 24, sub_1E39DF9A8))
  {
    if (v21 != 1 && v23)
    {
      goto LABEL_34;
    }

    if (v41 != 1 && v43 || v195 != 1 && v187 || v79 != 1 && v81 || v117 != 1 && v119)
    {
      if (v21 == 1)
      {
        v23 = 0;
LABEL_35:
        v121 = v21;
        v122 = v41;
        if (v41 == 1)
        {
          v123 = 0;
        }

        else
        {

          v123 = v43;
        }

        if (v195 == 1)
        {
          v130 = 0;
        }

        else
        {
          v130 = v187;
        }

        sub_1E3C32B54(v23, v123, v130, BYTE4(v169) & 1);
        sub_1E3C3CF50(v159);

        goto LABEL_50;
      }

LABEL_34:

      goto LABEL_35;
    }
  }

  if (v21 == 1)
  {
    v120 = 0;
  }

  else
  {
    v124 = v21;
    v120 = v21;
  }

  v125 = a2;
  v121 = v21;
  if (v41 == 1)
  {
    v122 = 1;
    v126 = 0;
  }

  else
  {
    v127 = v41;
    v122 = v41;
    v126 = v41;
  }

  v128 = v195;
  if (v195 == 1)
  {
    v128 = 0;
  }

  else
  {
    v129 = v195;
  }

  sub_1E3C320AC(v120, v126, v128, v125, BYTE4(v169) & 1);
  sub_1E3C3CF50(v159);

LABEL_50:
  sub_1E325F6F0(v203, &qword_1ECF35770, &unk_1E42C5180);
  sub_1E3C3CF50(v117);
  sub_1E3C3CF50(v79);
  sub_1E3C3CF50(v195);
  sub_1E3C3CF50(v122);
  return sub_1E3C3CF50(v121);
}

uint64_t sub_1E3C3A238(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E3C3804C(a1, v6);
  sub_1E3952CB8(v6, v12);
  sub_1E3952CB8(&v7, v13);
  sub_1E3952CB8(&v8, v14);
  sub_1E3952CB8(&v9, v15);
  sub_1E3952CB8(&v10, v16);
  sub_1E3952CB8(&v11, v17);
  sub_1E3C2FE70(v12, v13, v14, a2, a3);
  return sub_1E325F6F0(v6, &qword_1ECF35770, &unk_1E42C5180);
}

uint64_t sub_1E3C3A2F0(uint64_t a1, unsigned int a2, char a3)
{
  sub_1E3C38E24(a1, v15);
  if (v15[0])
  {

    v4 = sub_1E3C3A4B0(v3);
  }

  else
  {
    v4 = 0;
  }

  if (v15[1])
  {

    v6 = sub_1E3C3A4B0(v5);
  }

  else
  {
    v6 = 0;
  }

  if (v15[2])
  {

    v8 = sub_1E3C3A4B0(v7);
  }

  else
  {
    v8 = 0;
  }

  if (v15[3])
  {

    sub_1E3C3A4B0(v9);
  }

  if (v15[4])
  {

    sub_1E3C3A4B0(v10);
  }

  v11 = v16;
  if (v16)
  {

    sub_1E3C3A4B0(v11);
  }

  else
  {
  }

  sub_1E3C33964(v4, v6, v8, a2, a3 & 1);
}

char *sub_1E3C3A4B0(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = &v3[16 * v1];
  for (i = v1; ; ++i)
  {
    if (v2 == i)
    {
      return v4;
    }

    if (i >= v2)
    {
      break;
    }

    v1 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    swift_bridgeObjectRetain_n();
    v7 = sub_1E41244F8();
    if (v7 != 4)
    {
      if (v4)
      {
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_35_9();
          v4 = sub_1E3C3CBE4(v10, v11, v12, v13);
        }

        v9 = *(v4 + 2);
        if (v9 >= *(v4 + 3) >> 1)
        {
          OUTLINED_FUNCTION_35_9();
          v4 = sub_1E3C3CBE4(v14, v15, v16, v17);
        }

        *(v4 + 2) = v9 + 1;
        v4[v9 + 32] = v8;
      }

      goto LABEL_2;
    }

    v5 += 16;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E3C3A5F4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  sub_1E3C38448(a1, v48);
  v9 = v48[0];
  v8 = v48[1];
  v10 = v48[3];
  v47 = v48[2];
  v12 = v48[4];
  v11 = v48[5];

  OUTLINED_FUNCTION_2_85();
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (!v16)
  {
    v46 = a2;
    v24 = v11;
    if (!v11)
    {

      v12 = v9;
      v24 = v8;
    }

    v25 = v10;
    if (!v10)
    {

      v47 = v9;
      v25 = v8;
    }

    OUTLINED_FUNCTION_102_11();
    if ((a3 & 1) == 0)
    {
      if (v26)
      {
        v28 = 0;
        v29 = 0;
      }

      else
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35790, &qword_1E42C5440);
        OUTLINED_FUNCTION_10_9();
        v28 = swift_allocObject();
        v28[2] = v12;
        v28[3] = v24;
        v28[4] = v47;
        v28[5] = v25;
      }

      sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
      *&v54 = 0;
      v53 = v28;
      *(&v54 + 1) = v29;
LABEL_44:

      goto LABEL_45;
    }

    if (v26)
    {

LABEL_45:
      v27 = v46;
      goto LABEL_50;
    }

    v33 = sub_1E3C2F454(v30, v31, v32);
    sub_1E3C2FBB4(v33, &v49, v46, v34);

    if (*(&v50 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35790, &qword_1E42C5440);
      if (OUTLINED_FUNCTION_21_4())
      {
        v35 = *(&v51 + 1);
        if (*(&v51 + 1) != 1)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_1E325F6F0(&v49, &unk_1ECF296E0, &unk_1E4298030);
    }

    v35 = 0;
    v51 = 0u;
    v52 = 0u;
LABEL_35:
    if (v24)
    {

      *&v51 = v12;
      *(&v51 + 1) = v24;
      v35 = v24;
    }

    if (v25 && v35 != 1)
    {

      *&v52 = v47;
      *(&v52 + 1) = v25;
      v35 = *(&v51 + 1);
    }

    if (v35 == 1)
    {
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v38 = *(&v52 + 1);
      v45 = v52;
      v39 = v51;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35790, &qword_1E42C5440);
      OUTLINED_FUNCTION_10_9();
      v36 = swift_allocObject();
      v36[2] = v39;
      v36[3] = v35;
      v36[4] = v45;
      v36[5] = v38;

      v37 = v44;
    }

    sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);

    *&v54 = 0;
    v53 = v36;
    *(&v54 + 1) = v37;
    sub_1E3C3DB2C(v51, *(&v51 + 1));
    goto LABEL_44;
  }

  v17 = sub_1E3C2F454(v13, v14, v15);
  v18 = a2;
  sub_1E3C2FBB4(v17, &v51, a2, v19);

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v21 = MEMORY[0x1E69E6158];
  if (OUTLINED_FUNCTION_86_6(&v49, &v51, v20))
  {
    v4 = *(&v49 + 1);
    v22 = v49;
    sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
    v23 = MEMORY[0x1E69E6158];
  }

  else
  {
    sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
    v22 = 0;
    OUTLINED_FUNCTION_58_24();
  }

  *&v53 = v22;
  *(&v53 + 1) = v4;
  *&v54 = 0;
  *(&v54 + 1) = v23;
  v27 = v18;
  if (a3)
  {
    if (v10)
    {

      sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
      *&v53 = v47;
      *(&v53 + 1) = v10;
LABEL_30:
      *(&v54 + 1) = v21;
      goto LABEL_50;
    }

    if (v8)
    {

      sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
      *&v53 = v9;
      *(&v53 + 1) = v8;
      goto LABEL_30;
    }
  }

  else
  {
    if (v10)
    {
      *(&v50 + 1) = v21;
      *&v49 = v47;
      *(&v49 + 1) = v10;

      sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E329504C(&v49, &v51);
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      if (v8)
      {
        *(&v52 + 1) = v21;
        *&v51 = v9;
        *(&v51 + 1) = v8;

        sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
      }

      else
      {
        sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
        v51 = 0u;
        v52 = 0u;
      }

      if (*(&v50 + 1))
      {
        sub_1E325F6F0(&v49, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    v53 = v51;
    v54 = v52;
  }

LABEL_50:
  v40 = sub_1E3294F34(&v53, &v51);
  *&v49 = sub_1E3C2F454(v40, v41, v42);
  sub_1E3C37D80(&v51, v27);
  sub_1E325F6F0(&v53, &unk_1ECF296E0, &unk_1E4298030);
  *(v5 + 48) = v49;

  sub_1E325F6F0(v48, &qword_1ECF346E8, &unk_1E42C0DD0);
}

uint64_t sub_1E3C3AB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3C38AF0(a1);

  return sub_1E3C315C4(v5, v5 >> 8, v5 >> 16, a2, a3);
}

uint64_t sub_1E3C3ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1E3C38794(a1, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;

  return a5(v7, v8, v9, v10, v11, v12, a2, a3);
}

uint64_t sub_1E3C3AC6C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  sub_1E3C38448(a1, v28);
  if (v28[1])
  {

    v8 = sub_1E3AA9D30();
  }

  else
  {
    v8 = 3;
  }

  if (v28[3])
  {

    OUTLINED_FUNCTION_138_0();
    v9 = sub_1E3AA9D30();
  }

  else
  {
    v9 = 3;
  }

  if (v28[5])
  {

    v10 = sub_1E3AA9D30();
  }

  else
  {
    v10 = 3;
  }

  if (v28[7])
  {
    v4 = v28[6];

    OUTLINED_FUNCTION_17_11();
    sub_1E3AA9D30();
  }

  if (v28[9])
  {
    v4 = v28[8];

    OUTLINED_FUNCTION_17_11();
    sub_1E3AA9D30();
  }

  if (v28[11])
  {
    v4 = v28[10];

    sub_1E325F6F0(v28, &qword_1ECF346E8, &unk_1E42C0DD0);
    OUTLINED_FUNCTION_17_11();
    sub_1E3AA9D30();
  }

  else
  {
    sub_1E325F6F0(v28, &qword_1ECF346E8, &unk_1E42C0DD0);
  }

  v33 = 0u;
  v34 = 0u;
  if (qword_1EE29AD10 != -1)
  {
    OUTLINED_FUNCTION_1_179(&qword_1EE29AD10);
  }

  OUTLINED_FUNCTION_8_104();
  if (v18)
  {
    sub_1E3C2F454(v11, v12, v13);
    OUTLINED_FUNCTION_76_13(v14, &v31);

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    v10 = &type metadata for ScoreboardType;
    if (OUTLINED_FUNCTION_86_6(&v29, &v31, v15))
    {
      v4 = v29;
      sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
      v16 = &type metadata for ScoreboardType;
    }

    else
    {
      sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
      OUTLINED_FUNCTION_58_24();
    }

    *&v34 = 0;
    v33 = v4;
    *(&v34 + 1) = v16;
    if (a3)
    {
      if (v9 == 3)
      {
        if (v8 == 3)
        {
          goto LABEL_70;
        }

        sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
        LOBYTE(v33) = v8;
      }

      else
      {
        sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
        LOBYTE(v33) = v9;
      }

LABEL_69:
      *(&v34 + 1) = v10;
      goto LABEL_70;
    }

    if (v9 == 3)
    {
      v29 = 0u;
      v30 = 0u;
      if (v8 == 3)
      {
        sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
        v31 = 0u;
        v32 = 0u;
      }

      else
      {
        *(&v32 + 1) = &type metadata for ScoreboardType;
        LOBYTE(v31) = v8;
        sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
      }

      if (*(&v30 + 1))
      {
        sub_1E325F6F0(&v29, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    else
    {
      *(&v30 + 1) = &type metadata for ScoreboardType;
      LOBYTE(v29) = v9;
      sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E329504C(&v29, &v31);
    }

    v33 = v31;
    v34 = v32;
  }

  else
  {
    if (v10 == 3)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    if (v9 != 3)
    {
      v8 = v9;
    }

    v18 = v17 == 3 && v8 == 3;
    v19 = v18;
    if ((a3 & 1) == 0)
    {
      if ((v19 & 1) == 0)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35780, &qword_1E42C5430);
        sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
        v22 = v17 | (v8 << 8);
LABEL_68:
        *&v34 = 0;
        v33 = v22;
        goto LABEL_69;
      }

LABEL_66:
      sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
      OUTLINED_FUNCTION_59_21();
      goto LABEL_68;
    }

    if ((v19 & 1) == 0)
    {
      v10 = sub_1E3C2F454(v11, v12, v13);
      OUTLINED_FUNCTION_76_13(v20, &v31);

      if (*(&v32 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35780, &qword_1E42C5430);
        if (OUTLINED_FUNCTION_21_4())
        {
          v21 = v29;
          if (v29 != 4)
          {
LABEL_58:
            if (v17 != 3)
            {
              LOBYTE(v29) = v17;
              v21 = v29;
            }

            if (v8 != 3 && v21 != 4)
            {
              BYTE1(v29) = v8;
              v21 = v29;
            }

            if (v21 != 4)
            {
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35780, &qword_1E42C5430);
              sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
              v22 = v21;
              goto LABEL_68;
            }

            goto LABEL_66;
          }
        }
      }

      else
      {
        sub_1E325F6F0(&v31, &unk_1ECF296E0, &unk_1E4298030);
      }

      v21 = 771;
      LOWORD(v29) = 771;
      goto LABEL_58;
    }
  }

LABEL_70:
  v24 = sub_1E3294F34(&v33, &v31);
  *&v29 = sub_1E3C2F454(v24, v25, v26);
  sub_1E3C37D80(&v31, a2);
  sub_1E325F6F0(&v33, &unk_1ECF296E0, &unk_1E4298030);
  *(v5 + 48) = v29;
}

uint64_t sub_1E3C3B19C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*v1 + 1584))();
  (*(*v3 + 1648))(v1);
  OUTLINED_FUNCTION_9_2();
  v5 = (*(v4 + 1536))();
  sub_1E3C2F6F0(v5, v6, v7);
  result = type metadata accessor for ViewLayout();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1E3C3B308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B0, &unk_1E42C5470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E42C5160;
  *(v0 + 32) = 0;
  type metadata accessor for UIEdgeInsets();
  v2 = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 121;
  *(v0 + 56) = v1;
  *(v0 + 64) = 1;
  *(v0 + 72) = v1;
  *(v0 + 80) = 2;
  v3 = MEMORY[0x1E69E7DE0];
  *(v0 + 88) = MEMORY[0x1E69E7DE0];
  *(v0 + 96) = 3;
  *(v0 + 104) = v3;
  *(v0 + 112) = 4;
  *(v0 + 120) = v3;
  *(v0 + 128) = 5;
  *(v0 + 136) = v3;
  *(v0 + 144) = 6;
  *(v0 + 152) = v3;
  *(v0 + 160) = 7;
  *(v0 + 168) = v3;
  *(v0 + 176) = 8;
  *(v0 + 184) = v3;
  *(v0 + 192) = 9;
  *(v0 + 200) = v3;
  *(v0 + 208) = 10;
  *(v0 + 216) = v3;
  *(v0 + 224) = 11;
  *(v0 + 232) = v3;
  *(v0 + 240) = 12;
  *(v0 + 248) = &unk_1F5D99680;
  *(v0 + 256) = 60;
  v4 = MEMORY[0x1E69E6370];
  *(v0 + 264) = MEMORY[0x1E69E6370];
  *(v0 + 272) = 61;
  *(v0 + 280) = v4;
  *(v0 + 288) = 13;
  *(v0 + 296) = &unk_1F5D99710;
  *(v0 + 304) = 14;
  *(v0 + 312) = &unk_1F5D995F0;
  *(v0 + 320) = 15;
  *(v0 + 328) = &unk_1F5D997A0;
  *(v0 + 336) = 17;
  *(v0 + 344) = v1;
  *(v0 + 352) = 18;
  *(v0 + 360) = v4;
  *(v0 + 368) = 19;
  *(v0 + 376) = sub_1E3280A90(0, &unk_1EE23AD60, 0x1E69DB7D8);
  *(v0 + 384) = 20;
  *(v0 + 392) = v4;
  *(v0 + 400) = 16;
  *(v0 + 408) = &unk_1F5D998C0;
  *(v0 + 416) = 21;
  v5 = sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  *(v0 + 424) = v5;
  *(v0 + 432) = 22;
  *(v0 + 440) = &unk_1F5D99950;
  *(v0 + 448) = 23;
  *(v0 + 456) = &unk_1F5D999E0;
  *(v0 + 464) = 24;
  *(v0 + 472) = v5;
  *(v0 + 480) = 25;
  *(v0 + 488) = v5;
  *(v0 + 496) = 28;
  *(v0 + 504) = v5;
  *(v0 + 512) = 26;
  *(v0 + 520) = &unk_1F5D999E0;
  *(v0 + 528) = 31;
  *(v0 + 536) = &unk_1F5D999E0;
  *(v0 + 544) = 27;
  *(v0 + 552) = type metadata accessor for ViewGradientLayout(0);
  *(v0 + 560) = 29;
  *(v0 + 568) = v5;
  *(v0 + 576) = 30;
  *(v0 + 584) = v5;
  *(v0 + 592) = 32;
  *(v0 + 600) = v5;
  *(v0 + 608) = 34;
  *(v0 + 616) = &unk_1F5D99830;
  *(v0 + 624) = 35;
  *(v0 + 632) = v2;
  *(v0 + 640) = 36;
  *(v0 + 648) = v3;
  *(v0 + 656) = 37;
  *(v0 + 664) = v3;
  *(v0 + 672) = 38;
  *(v0 + 680) = v4;
  *(v0 + 688) = 39;
  *(v0 + 696) = v4;
  *(v0 + 704) = 33;
  *(v0 + 712) = v4;
  *(v0 + 720) = 40;
  type metadata accessor for VUIGridStyle(0);
  *(v0 + 728) = v6;
  *(v0 + 736) = 41;
  *(v0 + 744) = v6;
  *(v0 + 752) = 42;
  *(v0 + 760) = v6;
  *(v0 + 768) = 43;
  *(v0 + 776) = v6;
  *(v0 + 784) = 45;
  v7 = MEMORY[0x1E69E6810];
  *(v0 + 792) = MEMORY[0x1E69E6810];
  *(v0 + 800) = 44;
  *(v0 + 808) = v3;
  *(v0 + 816) = 48;
  *(v0 + 824) = &qword_1F5D549D8;
  *(v0 + 832) = 49;
  *(v0 + 840) = &unk_1F5D54948;
  *(v0 + 848) = 50;
  *(v0 + 856) = v4;
  v8 = MEMORY[0x1E69E6158];
  *(v0 + 864) = 51;
  *(v0 + 872) = v8;
  *(v0 + 880) = 54;
  *(v0 + 896) = 52;
  *(v0 + 912) = 53;
  *(v0 + 888) = &qword_1F5D54AF8;
  *(v0 + 920) = &unk_1F5D54A68;
  *(v0 + 928) = 55;
  *(v0 + 904) = v3;
  *(v0 + 936) = &unk_1F5D54B88;
  *(v0 + 944) = 56;
  *(v0 + 952) = &unk_1F5D54E58;
  *(v0 + 960) = 57;
  *(v0 + 968) = &unk_1F5D54ED0;
  *(v0 + 976) = 58;
  *(v0 + 984) = &unk_1F5D54C18;
  *(v0 + 992) = 59;
  *(v0 + 1000) = &unk_1F5D54CA8;
  *(v0 + 1008) = 62;
  *(v0 + 1016) = v7;
  *(v0 + 1024) = 63;
  *(v0 + 1032) = v7;
  *(v0 + 1040) = 64;
  *(v0 + 1048) = v7;
  *(v0 + 1056) = 65;
  *(v0 + 1064) = v3;
  *(v0 + 1072) = 66;
  *(v0 + 1080) = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  *(v0 + 1088) = 67;
  type metadata accessor for NSLineBreakMode();
  *(v0 + 1096) = v9;
  *(v0 + 1104) = 68;
  *(v0 + 1112) = v4;
  *(v0 + 1120) = 69;
  *(v0 + 1136) = 70;
  *(v0 + 1128) = v4;
  *(v0 + 1144) = &unk_1F5D54DC8;
  *(v0 + 1152) = 71;
  *(v0 + 1160) = v4;
  *(v0 + 1168) = 72;
  *(v0 + 1176) = v4;
  *(v0 + 1184) = 73;
  *(v0 + 1192) = v4;
  *(v0 + 1200) = 74;
  *(v0 + 1208) = v5;
  *(v0 + 1216) = 80;
  *(v0 + 1224) = v3;
  *(v0 + 1232) = 81;
  *(v0 + 1240) = v3;
  *(v0 + 1248) = 82;
  *(v0 + 1256) = v3;
  *(v0 + 1264) = 83;
  *(v0 + 1272) = v3;
  *(v0 + 1280) = 93;
  *(v0 + 1288) = &unk_1F5D72A98;
  *(v0 + 1296) = 84;
  *(v0 + 1304) = &unk_1F5D72BB8;
  *(v0 + 1312) = 85;
  *(v0 + 1320) = v5;
  *(v0 + 1328) = 86;
  *(v0 + 1336) = v2;
  *(v0 + 1344) = 87;
  *(v0 + 1352) = v4;
  *(v0 + 1360) = 101;
  *(v0 + 1368) = &type metadata for ButtonLayout.ButtonType;
  *(v0 + 1376) = 102;
  *(v0 + 1384) = &type metadata for ButtonLayout.UberButtonType;
  *(v0 + 1392) = 104;
  *(v0 + 1400) = &type metadata for ButtonLayout.ButtonSize;
  *(v0 + 1408) = 105;
  *(v0 + 1416) = &type metadata for ButtonLayout.ButtonShape;
  *(v0 + 1424) = 103;
  *(v0 + 1432) = &type metadata for ButtonLayout.TitleStyle;
  *(v0 + 1440) = 88;
  *(v0 + 1448) = sub_1E3280A90(0, &qword_1EE23AFA8, 0x1E69DCAD8);
  *(v0 + 1456) = 106;
  type metadata accessor for CGPoint(0);
  v11 = v10;
  *(v0 + 1464) = v10;
  *(v0 + 1472) = 107;
  *(v0 + 1480) = v10;
  *(v0 + 1488) = 108;
  *(v0 + 1496) = v4;
  *(v0 + 1504) = 89;
  *(v0 + 1512) = &unk_1F5D72C48;
  *(v0 + 1520) = 90;
  *(v0 + 1528) = v5;
  *(v0 + 1536) = 79;
  *(v0 + 1544) = v4;
  *(v0 + 1552) = 92;
  *(v0 + 1560) = v4;
  *(v0 + 1568) = 91;
  type metadata accessor for SymbolScale(0);
  *(v0 + 1576) = v12;
  *(v0 + 1584) = 95;
  *(v0 + 1592) = MEMORY[0x1E6980F50];
  *(v0 + 1600) = 96;
  *(v0 + 1608) = &qword_1F5D549D8;
  *(v0 + 1616) = 97;
  *(v0 + 1624) = &qword_1F5D54AF8;
  *(v0 + 1632) = 98;
  *(v0 + 1640) = sub_1E4201DF4();
  *(v0 + 1648) = 100;
  *(v0 + 1656) = v3;
  *(v0 + 1664) = 117;
  *(v0 + 1672) = &type metadata for ViewGradientLayout.GradientType;
  *(v0 + 1680) = 113;
  *(v0 + 1688) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0, &unk_1E42A9630);
  *(v0 + 1696) = 115;
  *(v0 + 1704) = v11;
  *(v0 + 1712) = 116;
  *(v0 + 1720) = v11;
  *(v0 + 1728) = 114;
  *(v0 + 1736) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
  *(v0 + 1744) = 75;
  *(v0 + 1752) = v4;
  *(v0 + 1760) = 118;
  *(v0 + 1768) = v3;
  *(v0 + 1776) = 119;
  *(v0 + 1784) = v3;
  *(v0 + 1792) = 120;
  *(v0 + 1800) = v4;
  *(v0 + 1808) = 76;
  *(v0 + 1816) = v4;
  *(v0 + 1824) = 110;
  *(v0 + 1832) = v4;
  *(v0 + 1840) = 77;
  *(v0 + 1848) = v4;
  *(v0 + 1856) = 78;
  *(v0 + 1864) = v4;
  *(v0 + 1872) = 99;
  *(v0 + 1880) = &unk_1F5D72B28;
  *(v0 + 1888) = 109;
  *(v0 + 1896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357B8, qword_1E42D1210);
  *(v0 + 1904) = 111;
  *(v0 + 1912) = v4;
  *(v0 + 1920) = 112;
  *(v0 + 1928) = v4;
  *(v0 + 1936) = 46;
  *(v0 + 1944) = v5;
  *(v0 + 1952) = 94;
  *(v0 + 1960) = v4;
  *(v0 + 1968) = 122;
  *(v0 + 1976) = &type metadata for ScoreboardType;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357C0, &qword_1E42C5480);
  sub_1E3C3BC78(v13, v14, v15);
  result = sub_1E4205CB4();
  qword_1EE28C258 = result;
  return result;
}

unint64_t sub_1E3C3BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C3BC78(a1, a2, a3);
  v4 = sub_1E4205DA4();
  return sub_1E3C3BBB8(a1, v4, v5);
}

unint64_t sub_1E3C3BBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1E3C3DAD8(a1, a2, a3);
    a1 = sub_1E4205E84();
    if (a1)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1E3C3BC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE280F88[0];
  if (!qword_1EE280F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE280F88);
  }

  return result;
}

void sub_1E3C3BCCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF357A0, &qword_1E42C5450);
  v35 = v4;
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_1E373CBF0(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + v18);
    v37 = v20;
    v21 = (v19 + 32 * v18);
    v22 = (v35 & 1) != 0 ? sub_1E329504C(v21, v36) : sub_1E328438C(v21, v36);
    sub_1E3C3BC78(v22, v23, v24);
    v25 = sub_1E4205DA4();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v7 + 48) + v29) = v20;
    sub_1E329504C(v36, (*(v7 + 56) + 32 * v29));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v14 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

_OWORD *sub_1E3C3BF70(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3C3BB4C(a2, a2, a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35788, &qword_1E42C5438);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E3C3BB4C(a2, v12, v13);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v14;
LABEL_5:
  v16 = *v4;
  if (v11)
  {
    v17 = (v16[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1E329504C(a1, v17);
  }

  else
  {

    return sub_1E387909C(v10, a2, a1, v16);
  }
}

void sub_1E3C3C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3740AE8(a2, a2, a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDF0, &unk_1E42C5460);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E3740AE8(a2, v12, v13);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v10 = v14;
LABEL_5:
  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * v10) = a1;
  }

  else
  {

    sub_1E37519DC(v10, a2, a1, v16);
  }
}

uint64_t sub_1E3C3C1C4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3C3DB74(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E3C3C230(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3C3C230(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3C3C3EC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3C3C324(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3C3C324(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1E42079A4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3C3C3EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1E42079A4();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1E42079A4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1E42079A4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1E37FFF70((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_1E3C3CA20((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_1E3C3C8F4(&v89, *v83, a3);
}

uint64_t sub_1E3C3C8F4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1E3C3CA20((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1E3C3CA20(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1E42079A4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1E42079A4() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

char *sub_1E3C3CBE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35798, &qword_1E42C5448);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E3C3CD08@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3C3CCD8((a2 + 8), *a1, (a1 + 8));
  *a2 = result;
  return result;
}

void sub_1E3C3CD3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1E394CDB0(a1, a2, a3, v36);
  v32 = v36[0];
  v33 = v36[1];
  v34 = v36[2];
  v35 = v37;

  while (1)
  {
    sub_1E3C3DB88(&v29);
    if (!v31)
    {
      sub_1E34AF4DC(v32);

      return;
    }

    v7 = v29;
    sub_1E329504C(&v30, v28);
    v8 = *a5;
    v12 = sub_1E3C3BB4C(v7, v9, v10);
    v13 = v8[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v8[3] >= v15)
    {
      if (a4)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35788, &qword_1E42C5438);
        sub_1E4207654();
        if (v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E3C3BCCC(v15, a4 & 1);
      v19 = sub_1E3C3BB4C(v7, v17, v18);
      if ((v16 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

      v12 = v19;
      if (v16)
      {
LABEL_10:
        v21 = *a5;
        sub_1E328438C(v28, v27);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v22 = (v21[7] + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v22);
        sub_1E329504C(v27, v22);
        goto LABEL_14;
      }
    }

    v23 = *a5;
    *(*a5 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v23[6] + v12) = v7;
    sub_1E329504C(v28, (v23[7] + 32 * v12));
    v24 = v23[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    v23[2] = v26;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

double sub_1E3C3CF50(void *a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3C3CFBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1E3C3D010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewLayoutEnvironment.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C3D150(uint64_t a1)
{
  result = sub_1E4207104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E3C3D1CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = *(v5 + 80);
    v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10) + v8;
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_7;
    }

    v14 = ((v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_22;
        }

LABEL_14:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 > 3)
          {
            LODWORD(v11) = 4;
          }

          switch(v11)
          {
            case 2:
              LODWORD(v11) = *a1;
              break;
            case 3:
              LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v11) = *a1;
              break;
            default:
              LODWORD(v11) = *a1;
              break;
          }
        }

        return v7 + (v11 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1E3C3D374()
{
  OUTLINED_FUNCTION_70_18();
  OUTLINED_FUNCTION_132_6();
  if (!v9 & v8)
  {
    if (v1 <= 3)
    {
      OUTLINED_FUNCTION_80_10();
      if (v11)
      {
        v2 = 4;
      }

      else
      {
        if (v10 < 0x100)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (v10 >= 2)
        {
          v2 = v12;
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 1;
    }
  }

  if (v6 >= v3)
  {
    switch(v2)
    {
      case 1:
        *(v0 + v1) = 0;
        if (v3)
        {
          goto LABEL_25;
        }

        break;
      case 2:
        *(v0 + v1) = 0;
        if (v3)
        {
          goto LABEL_25;
        }

        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *(v0 + v1) = 0;
        goto LABEL_24;
      default:
LABEL_24:
        if (v3)
        {
LABEL_25:
          if (v4 >= 2)
          {
            v20 = v3 + 1;

            __swift_storeEnumTagSinglePayload(v0, v20, v4, v5);
          }
        }

        break;
    }
  }

  else
  {
    v13 = ~v6 + v3;
    if (v1 < 4)
    {
      v16 = (v13 >> v7) + 1;
      if (v1)
      {
        v17 = v13 & ~(-1 << v7);
        v18 = OUTLINED_FUNCTION_32_0();
        bzero(v18, v19);
        if (v1 == 3)
        {
          *v0 = v17;
          *(v0 + 2) = BYTE2(v17);
        }

        else if (v1 == 2)
        {
          *v0 = v17;
        }

        else
        {
          *v0 = v13;
        }
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_32_0();
      bzero(v14, v15);
      *v0 = v13;
      v16 = 1;
    }

    switch(v2)
    {
      case 1:
        *(v0 + v1) = v16;
        break;
      case 2:
        *(v0 + v1) = v16;
        break;
      case 3:
        goto LABEL_38;
      case 4:
        *(v0 + v1) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3C3D57C(uint64_t a1)
{
  result = sub_1E4207104();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E3C3D5EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = ((v8 + *(v5 + 80)) & ~*(v5 + 80)) + v8;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_22;
        }

LABEL_14:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v7 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1E3C3D774()
{
  OUTLINED_FUNCTION_70_18();
  OUTLINED_FUNCTION_132_6();
  if (!v9 & v8)
  {
    if (v1 <= 3)
    {
      OUTLINED_FUNCTION_80_10();
      if (v11)
      {
        v2 = 4;
      }

      else
      {
        if (v10 < 0x100)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (v10 >= 2)
        {
          v2 = v12;
        }

        else
        {
          v2 = 0;
        }
      }
    }

    else
    {
      v2 = 1;
    }
  }

  if (v6 >= v3)
  {
    switch(v2)
    {
      case 1:
        *(v0 + v1) = 0;
        if (v3)
        {
          goto LABEL_25;
        }

        break;
      case 2:
        *(v0 + v1) = 0;
        if (v3)
        {
          goto LABEL_25;
        }

        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *(v0 + v1) = 0;
        goto LABEL_24;
      default:
LABEL_24:
        if (v3)
        {
LABEL_25:
          if (v4 >= 2)
          {
            v20 = v3 + 1;

            __swift_storeEnumTagSinglePayload(v0, v20, v4, v5);
          }
        }

        break;
    }
  }

  else
  {
    v13 = ~v6 + v3;
    if (v1 < 4)
    {
      v16 = (v13 >> v7) + 1;
      if (v1)
      {
        v17 = v13 & ~(-1 << v7);
        v18 = OUTLINED_FUNCTION_32_0();
        bzero(v18, v19);
        if (v1 == 3)
        {
          *v0 = v17;
          *(v0 + 2) = BYTE2(v17);
        }

        else if (v1 == 2)
        {
          *v0 = v17;
        }

        else
        {
          *v0 = v13;
        }
      }
    }

    else
    {
      v14 = OUTLINED_FUNCTION_32_0();
      bzero(v14, v15);
      *v0 = v13;
      v16 = 1;
    }

    switch(v2)
    {
      case 1:
        *(v0 + v1) = v16;
        break;
      case 2:
        *(v0 + v1) = v16;
        break;
      case 3:
        goto LABEL_38;
      case 4:
        *(v0 + v1) = v16;
        break;
      default:
        return;
    }
  }
}