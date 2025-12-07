uint64_t sub_268355054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC08 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD48;
  v2 = sub_2683CD108();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_2683CCFB8();
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD50 = result;
  return result;
}

uint64_t sub_268355150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(27);
  result = sub_2683CD148();
  qword_28027CD58 = result;
  return result;
}

unint64_t sub_2683551A8()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2683551E8(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      v3 = 1634038371;
      goto LABEL_8;
    case 2:
      result = 1684957542;
      break;
    case 3:
      v3 = 1701602660;
LABEL_8:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x796669646F6DLL;
      break;
    case 5:
      result = 1684956531;
      break;
    case 6:
      result = 1868852853;
      break;
    case 7:
      result = 0x657A6F6F6E73;
      break;
    case 8:
      result = 0x74736575516B7361;
      break;
    case 9:
      result = 0x6176697463616564;
      break;
    case 10:
      result = 0x646E65707061;
      break;
    case 11:
      result = 1702260589;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2683552EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(28);
  result = sub_2683CD148();
  qword_28027CD60 = result;
  return result;
}

uint64_t sub_268355344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D2890;
  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD58;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  *(v0 + 64) = sub_26818A0C8(&qword_28024F0D8, &qword_28024F0D0, &qword_2683DB1C8, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_28024CC20;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28027CD60;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  *(v0 + 104) = sub_26818A0C8(&qword_28024EFB0, &qword_28024EFA8, &unk_2683F32C0, MEMORY[0x277D5E430]);
  *(v0 + 72) = v3;
  sub_2683CCFB8();
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD68 = result;
  return result;
}

unint64_t sub_26835552C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2683551A8();
  *a1 = result;
  return result;
}

unint64_t sub_26835555C()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683551E8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2683555D4()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355614(char a1)
{
  result = 0x7265646E696D6572;
  switch(a1)
  {
    case 1:
      result = 1802723700;
      break;
    case 2:
      result = 0x6B736174627573;
      break;
    case 3:
      result = 1953720684;
      break;
    case 4:
      result = 1702129518;
      break;
    case 5:
      result = 1835365481;
      break;
    case 6:
      result = 0x7265646C6F66;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2683556BC()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683556FC(char a1)
{
  result = 0x64646120656D6F68;
  switch(a1)
  {
    case 1:
      result = 0x646461206B726F77;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    case 4:
      result = 0x61206C6F6F686373;
      break;
    case 5:
      v3 = 544045415;
      goto LABEL_8;
    case 6:
      result = 0x646120726568746FLL;
      break;
    case 7:
      v3 = 544829025;
LABEL_8:
      result = v3 | 0x7264646100000000;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26835580C()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26835584C(char a1)
{
  result = 0x6C617669727261;
  switch(a1)
  {
    case 1:
      result = 0x7275747261706564;
      break;
    case 2:
      result = 0x6576207265746E65;
      break;
    case 3:
      result = 0x7620747261706564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2683558EC()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26835592C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

unint64_t sub_26835596C()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D05E8();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683559B4(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x6D69745F65746164;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x6574656C706D6F63;
      break;
    case 5:
      result = 0x656C706D6F636E69;
      break;
    case 6:
      v3 = 0x657461657263;
      goto LABEL_20;
    case 7:
      result = 0x6465696669646F6DLL;
      break;
    case 8:
      result = 0x797469726F697270;
      break;
    case 9:
      result = 0x656767616C666E75;
      break;
    case 10:
      v3 = 0x656767616C66;
LABEL_20:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 11:
      result = 0x6F69647561;
      break;
    case 12:
      result = 0x736E6961746E6F63;
      break;
    case 13:
      result = 0x656C746974;
      break;
    case 14:
      result = 0x746E65746E6F63;
      break;
    case 15:
      result = 0x737574617473;
      break;
    case 16:
      result = 0x6E69727275636572;
      break;
    case 17:
      result = 0x6575647265766FLL;
      break;
    case 18:
      result = 0x656C756465686373;
      break;
    case 19:
      result = 0x646572616873;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268355BB0()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D05E8();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0x23)
  {
    return 35;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355BF8(char a1)
{
  result = 0x7473726966;
  switch(a1)
  {
    case 1:
      return 0x646E6F636573;
    case 2:
      return 0x6472696874;
    case 3:
      v7 = 1920298854;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v5 = 1952868710;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v5 = 1954048371;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v4 = 0x746E65766573;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607653;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E696ELL;
    case 9:
      v5 = 1953391988;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C65;
    case 11:
      v4 = 0x74666C657774;
      return v4 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      v6 = 1919510644;
      goto LABEL_28;
    case 13:
      v6 = 1920298854;
      goto LABEL_28;
    case 14:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 15:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766573;
    case 17:
      v6 = 1751607653;
      goto LABEL_28;
    case 18:
      v6 = 1701734766;
LABEL_28:
      result = v6 | 0x6E65657400000000;
      break;
    case 19:
      result = 0x746569746E657774;
      break;
    case 20:
    case 23:
    case 24:
      result = 0x662079746E657774;
      break;
    case 21:
      result = 0x732079746E657774;
      break;
    case 22:
      result = 0x742079746E657774;
      break;
    case 25:
      result = 1953718636;
      break;
    case 26:
      result = 0x656C6464696DLL;
      break;
    case 27:
      result = 1954047342;
      break;
    case 28:
      result = 0x73756F6976657270;
      break;
    case 29:
      result = 0x6F54646E6F636573;
      break;
    case 30:
      result = 0x4C6F546472696874;
      break;
    case 31:
      result = 2037277037;
      break;
    case 32:
      result = 6647407;
      break;
    case 33:
      result = 6645876;
      break;
    case 34:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268355EE8()
{
  OUTLINED_FUNCTION_32_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_46_9();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268355F28(char a1)
{
  result = 0x65746973626577;
  switch(a1)
  {
    case 1:
      return 7107189;
    case 2:
      v4 = 1953458288;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 3:
      v4 = 1701079414;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 4:
      return 7368801;
    case 5:
      return 0x6C69616D65;
    case 6:
      v3 = 0x67617373656DLL;
      goto LABEL_11;
    case 7:
      return 0x74736163646F70;
    case 8:
      return 1735290739;
    case 9:
      v3 = 0x6C6369747261;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      result = 1936287860;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268356038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2683555D4();
  *a1 = result;
  return result;
}

uint64_t sub_268356068()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355614(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2683560F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2683556BC();
  *a1 = result;
  return result;
}

uint64_t sub_268356128()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683556FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2683561C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26835580C();
  *a1 = result;
  return result;
}

uint64_t sub_2683561F4()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_26835584C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_268356290@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2683558EC();
  *a1 = result;
  return result;
}

uint64_t sub_2683562C0()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_26835592C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_26835635C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26835596C();
  *a1 = result;
  return result;
}

uint64_t sub_26835638C()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_2683559B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_268356428@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268355BB0();
  *a1 = result;
  return result;
}

uint64_t sub_268356458()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355BF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2683564F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268355EE8();
  *a1 = result;
  return result;
}

uint64_t sub_268356524()
{
  v1 = OUTLINED_FUNCTION_31_13();
  result = sub_268355F28(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2683565A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_130();
  v11 = v10;
  v13 = v12;
  v14();
  v13();
  v11();
  OUTLINED_FUNCTION_131();

  return MEMORY[0x2821C21F8](v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_268356630()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  v11 = OUTLINED_FUNCTION_23(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CB60 != -1)
  {
    OUTLINED_FUNCTION_28_18(&qword_28024CB60);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v16, v17, &unk_2683F3D78);
  sub_2683CD5A8();
  v18 = OUTLINED_FUNCTION_30_7();
  sub_2681340E8(v18, v19, v20, v21);
  OUTLINED_FUNCTION_20_30(v14);
  if (v22)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v27 = type metadata accessor for AppIntentNode(0);
    v25 = v2;
    v26 = 1;
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    (*(v5 + 16))(v2, v9, v3);
    v23 = *(v5 + 8);

    v23(v9, v3);
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v24 = type metadata accessor for AppIntentNode(0);
    v25 = OUTLINED_FUNCTION_47_6(v24);
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
  OUTLINED_FUNCTION_29_0();
}

BOOL sub_268356870()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20, SWORD2(v20), SBYTE6(v20), HIBYTE(v20));
  if (!v14)
  {
    v12 = sub_2683551E8(v10);
    v14 = v12 == 1684957542 && v13 == 0xE400000000000000;
    if (v14)
    {
      goto LABEL_19;
    }

    v15 = sub_2683D0598();

    if (v15)
    {
      return 1;
    }
  }

  sub_2683CD5C8();
  if (v22 == 12)
  {
    goto LABEL_6;
  }

  if (sub_2683551E8(v22) != 1684104562 || v16 != 0xE400000000000000)
  {
    v18 = sub_2683D0598();

    if (v18)
    {
      return 1;
    }

LABEL_6:
    sub_2683CD5C8();
    return v21 == 12;
  }

LABEL_19:

  return 1;
}

uint64_t sub_2683569FC()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_61();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, SWORD2(v21), SBYTE6(v21), HIBYTE(v21));
  if (v14)
  {
    return 24;
  }

  v12 = sub_2683551E8(v10);
  v14 = v12 == 0x6574656C6564 && v13 == 0xE600000000000000;
  if (v14)
  {

    goto LABEL_13;
  }

  v15 = OUTLINED_FUNCTION_51_8(v12, v13, 0x6574656C6564);

  if ((v15 & 1) == 0)
  {
    return 24;
  }

LABEL_13:
  if (qword_28024CB70 != -1)
  {
    OUTLINED_FUNCTION_33(&qword_28024CB70);
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v22 == 7)
  {
    return 10;
  }

  v16 = sub_268355614(v22);
  if (v16 == 1702129518 && v17 == 0xE400000000000000)
  {
  }

  else
  {
    v19 = OUTLINED_FUNCTION_50_10(v16);

    if ((v19 & 1) == 0)
    {
      return 10;
    }
  }

  return 9;
}

uint64_t sub_268356B84()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_61();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, SWORD2(v21), SBYTE6(v21), HIBYTE(v21));
  if (v13)
  {
    goto LABEL_14;
  }

  v11 = sub_2683551E8(v10);
  v13 = v11 == 0x657461657263 && v12 == 0xE600000000000000;
  if (v13)
  {
  }

  else
  {
    v14 = OUTLINED_FUNCTION_51_8(v11, v12, 0x657461657263);

    if ((v14 & 1) == 0)
    {
LABEL_14:
      v15 = 0;
      return v15 & 1;
    }
  }

  if (qword_28024CB70 != -1)
  {
    OUTLINED_FUNCTION_33(&qword_28024CB70);
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v22 == 7)
  {
    goto LABEL_14;
  }

  v17 = sub_268355614(v22);
  if (v17 == 1702129518 && v18 == 0xE400000000000000)
  {

    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_50_10(v17);
  }

  return v15 & 1;
}

uint64_t sub_268356D04()
{
  if (sub_268356D5C(0) & 1) != 0 || (sub_268356D5C(3) & 1) != 0 || (sub_268356D5C(1))
  {
    return 1;
  }

  return sub_268356D5C(5);
}

uint64_t sub_268356D5C(char a1)
{
  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_26835844C(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent, &unk_2683F3D78);
  sub_2683CD5C8();
  if (v23 != 7)
  {
    v3 = sub_268355614(v23);
    v5 = v4;
    if (v3 == sub_268355614(a1) && v5 == v6)
    {
      goto LABEL_28;
    }

    v8 = sub_2683D0598();

    if (v8)
    {
LABEL_22:
      v2 = 1;
      return v2 & 1;
    }
  }

  if (qword_28024CB78 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v22 != 7)
  {
    v9 = sub_268355614(v22);
    v11 = v10;
    if (v9 == sub_268355614(a1) && v11 == v12)
    {
      goto LABEL_28;
    }

    v14 = sub_2683D0598();

    if (v14)
    {
      goto LABEL_22;
    }
  }

  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v21 != 7)
  {
    v15 = sub_268355614(v21);
    v17 = v16;
    if (v15 != sub_268355614(a1) || v17 != v18)
    {
      v2 = sub_2683D0598();
LABEL_29:

      return v2 & 1;
    }

LABEL_28:
    v2 = 1;
    goto LABEL_29;
  }

  v2 = 0;
  return v2 & 1;
}

BOOL sub_268356FF8()
{
  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_26835844C(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent, &unk_2683F3D78);
  sub_2683CD5C8();
  if (v3 != 7)
  {
    return 0;
  }

  if (qword_28024CB78 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v2 != 7)
  {
    return 0;
  }

  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  return v1 == 7;
}

BOOL sub_268357170()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, SWORD2(v21), SBYTE6(v21), HIBYTE(v21));
  if (v14)
  {
    return 0;
  }

  v12 = sub_2683551E8(v10);
  v14 = v12 == 0x657461657263 && v13 == 0xE600000000000000;
  if (v14)
  {

    return (sub_268356D04() & 1) != 0 || sub_268356FF8();
  }

  OUTLINED_FUNCTION_61();
  v18 = OUTLINED_FUNCTION_51_8(v15, v16, v17);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return (sub_268356D04() & 1) != 0 || sub_268356FF8();
}

void sub_268357270()
{
  OUTLINED_FUNCTION_130();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_28_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBF8 != -1)
  {
    OUTLINED_FUNCTION_26_23(&qword_28024CBF8);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v6, v7, &unk_2683F3D78);
  OUTLINED_FUNCTION_61();
  v8 = *(sub_2683CD5D8() + 16);

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    if (qword_28024CBA0 != -1)
    {
      OUTLINED_FUNCTION_6_35(&qword_28024CBA0);
    }

    OUTLINED_FUNCTION_61();
    sub_2683CD5C8();
    v10 = sub_2683CD358();
    v9 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);
    sub_26812D9E0(v1, &qword_28024D398, &qword_2683D22F0);
    if (EnumTagSinglePayload == 1)
    {
      sub_268352FE8();
      type metadata accessor for NotebookLocationIntentNode(0);
      v12 = OUTLINED_FUNCTION_8_8();
      v15 = __swift_getEnumTagSinglePayload(v12, v13, v14);
      sub_26812D9E0(v0, &qword_28024D390, &qword_2683D22E8);
      if (v15 == 1)
      {
        if (qword_28024CB88 != -1)
        {
          OUTLINED_FUNCTION_25_25(&qword_28024CB88);
        }

        OUTLINED_FUNCTION_61();
        sub_2683CD5C8();
        v9 = v20 != 35;
      }
    }
  }

  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  if (v21 != 12)
  {
    v16 = sub_2683551E8(v21);
    if (v16 == 0x796669646F6DLL && v17 == 0xE600000000000000)
    {

      if (v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v19 = OUTLINED_FUNCTION_51_8(v16, v17, 0x796669646F6DLL);

      if (v9 || (v19 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((sub_268356D04() & 1) == 0)
    {
      sub_268356FF8();
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_131();
}

uint64_t sub_268357548()
{
  if (qword_28024CB68 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_44_12();
  v2 = sub_2683CD5C8();
  v10 = OUTLINED_FUNCTION_48_10(v2, v3, v4, v5, v6, v7, v8, v9, v20, v21, SWORD2(v21), SBYTE6(v21), HIBYTE(v21));
  if (!v14)
  {
    v12 = sub_2683551E8(v10);
    v14 = v12 == 0x657A6F6F6E73 && v13 == 0xE600000000000000;
    if (v14)
    {

LABEL_13:
      v11 = sub_268356D5C(4) ^ 1;
      return v11 & 1;
    }

    OUTLINED_FUNCTION_61();
    v18 = OUTLINED_FUNCTION_51_8(v15, v16, v17);

    if (v18)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_268357668()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802537A0, &qword_2683F3DD0);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802537A8, &qword_2683F3DD8);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  sub_2683531D0();
  v11 = sub_2683CD4A8();
  v12 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v12, v13, v11);
  if (v22)
  {
    v14 = &qword_28024D3B0;
    v15 = &qword_2683D2328;
    v16 = v0;
LABEL_10:
    sub_26812D9E0(v16, v14, v15);
LABEL_11:

    return sub_2683556BC();
  }

  sub_2683CD498();
  OUTLINED_FUNCTION_23_0();
  v17 = OUTLINED_FUNCTION_40_15();
  v18(v17);
  v19 = sub_2683CD258();
  v20 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_72(v20, v21, v19);
  if (v22)
  {
    v14 = &qword_2802537A0;
    v15 = &qword_2683F3DD0;
    v16 = v6;
    goto LABEL_10;
  }

  sub_2683CD248();
  OUTLINED_FUNCTION_23_0();
  (*(v23 + 8))(v6, v19);
  v24 = sub_2683CD648();
  OUTLINED_FUNCTION_72(v10, 1, v24);
  if (v25)
  {
    v14 = &qword_2802537A8;
    v15 = &qword_2683F3DD8;
    v16 = v10;
    goto LABEL_10;
  }

  sub_2683CD638();
  v28 = v27;
  OUTLINED_FUNCTION_23_0();
  (*(v29 + 8))(v10, v24);
  if (!v28)
  {
    goto LABEL_11;
  }

  return sub_2683556BC();
}

uint64_t sub_268357904(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent, &unk_2683F343C);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268357980(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent, &unk_2683F343C);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_2683579EC(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253778, type metadata accessor for NotebookNLv3Intent, &unk_2683F343C);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268357A84(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253828, type metadata accessor for NotebookLocationIntentNode, &unk_2683F3720);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_268357B00(uint64_t a1)
{
  v2 = sub_26835844C(&qword_280253828, type metadata accessor for NotebookLocationIntentNode, &unk_2683F3720);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_268357B6C()
{
  sub_2683CD138();
  sub_2683CD118();
  sub_2683CCFB8();
  swift_allocObject();
  result = sub_2683CCF98();
  qword_28027CD70 = result;
  return result;
}

uint64_t sub_268357C14(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_0();
  v4 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, v2, v4);
  v11 = type metadata accessor for NotebookContactTriggerNode(0);
  v12 = OUTLINED_FUNCTION_42_3(v11);
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode, v10, v4);
  *(v12 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_ontologyNode) = a2;

  return v12;
}

void sub_268357D18()
{
  OUTLINED_FUNCTION_130();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_56_5();
  v5 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  if (qword_28024CC40 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookContactTriggerNode(0);
  sub_26835844C(&qword_2802535E0, type metadata accessor for NotebookContactTriggerNode, &unk_2683F3250);
  OUTLINED_FUNCTION_32_3();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_2_6(v0);
  if (v12)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_40_15();
    v14(v13);
    v15 = type metadata accessor for NotebookContactTriggerPersonIntentNode(0);
    *(v2 + 24) = v15;
    *(v2 + 32) = sub_26835844C(&qword_280253630, type metadata accessor for NotebookContactTriggerPersonIntentNode, &unk_2683E5D80);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2);
    (*(v7 + 16))(boxed_opaque_existential_0, v11, v5);
    v17 = type metadata accessor for NotebookContactTriggerPersonOntologyNode(0);
    OUTLINED_FUNCTION_42_3(v17);
    v18 = OUTLINED_FUNCTION_13_35(28);
    v21 = sub_2682DAC6C(v18, v19, v20);
    (*(v7 + 8))(v11, v5);
    *(boxed_opaque_existential_0 + *(v15 + 20)) = v21;
  }

  OUTLINED_FUNCTION_131();
}

uint64_t sub_268357F94()
{
  v1 = OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode;
  sub_2683CD628();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_268358060(uint64_t a1)
{
  result = sub_2683CD628();
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

uint64_t sub_268358164@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode;
  v5 = sub_2683CD628();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2683581F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_268357C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26835821C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1928](a1, WitnessTable);
}

uint64_t sub_268358280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C1920](a1, WitnessTable);
}

uint64_t sub_2683582D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  v1 = type metadata accessor for NotebookContactTriggerPersonOntologyNode(0);
  swift_allocObject();
  v2 = sub_2682DAC6C(0xD00000000000001CLL, 0x80000002684014A0, 0);
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  sub_2683CCFB8();
  swift_allocObject();
  result = sub_2683CCF98();
  qword_28027CD78 = result;
  return result;
}

uint64_t sub_26835844C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookContentEntity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.LocationCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotebookNLv3Intent.NotebookAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookVerb(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.NotebookNoun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268358B90(uint64_t a1)
{
  result = sub_2683CE448();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_268358C90()
{
  result = qword_280253658;
  if (!qword_280253658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253658);
  }

  return result;
}

unint64_t sub_268358D2C()
{
  result = qword_280253670;
  if (!qword_280253670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253670);
  }

  return result;
}

unint64_t sub_268358D84()
{
  result = qword_280253678;
  if (!qword_280253678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253678);
  }

  return result;
}

unint64_t sub_268358DDC()
{
  result = qword_280253680;
  if (!qword_280253680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253680);
  }

  return result;
}

unint64_t sub_268358E78()
{
  result = qword_280253698;
  if (!qword_280253698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253698);
  }

  return result;
}

unint64_t sub_268358ED0()
{
  result = qword_2802536A0;
  if (!qword_2802536A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536A0);
  }

  return result;
}

unint64_t sub_268358F70()
{
  result = qword_2802536B0;
  if (!qword_2802536B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536B0);
  }

  return result;
}

unint64_t sub_26835900C()
{
  result = qword_2802536C8;
  if (!qword_2802536C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536C8);
  }

  return result;
}

unint64_t sub_268359064()
{
  result = qword_2802536D0;
  if (!qword_2802536D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536D0);
  }

  return result;
}

unint64_t sub_2683590BC()
{
  result = qword_2802536D8;
  if (!qword_2802536D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536D8);
  }

  return result;
}

unint64_t sub_268359158()
{
  result = qword_2802536F0;
  if (!qword_2802536F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536F0);
  }

  return result;
}

unint64_t sub_2683591B0()
{
  result = qword_2802536F8;
  if (!qword_2802536F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802536F8);
  }

  return result;
}

unint64_t sub_268359208()
{
  result = qword_280253700;
  if (!qword_280253700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253700);
  }

  return result;
}

unint64_t sub_2683592A4()
{
  result = qword_280253718;
  if (!qword_280253718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253718);
  }

  return result;
}

unint64_t sub_2683592FC()
{
  result = qword_280253720;
  if (!qword_280253720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253720);
  }

  return result;
}

unint64_t sub_268359354()
{
  result = qword_280253728;
  if (!qword_280253728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253728);
  }

  return result;
}

unint64_t sub_2683593F0()
{
  result = qword_280253740;
  if (!qword_280253740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253740);
  }

  return result;
}

unint64_t sub_268359448()
{
  result = qword_280253748;
  if (!qword_280253748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253748);
  }

  return result;
}

unint64_t sub_2683594A0()
{
  result = qword_280253750;
  if (!qword_280253750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253750);
  }

  return result;
}

unint64_t sub_26835953C()
{
  result = qword_280253768;
  if (!qword_280253768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253768);
  }

  return result;
}

unint64_t sub_268359594()
{
  result = qword_280253770;
  if (!qword_280253770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253770);
  }

  return result;
}

unint64_t sub_2683595E8()
{
  result = qword_2802537B0;
  if (!qword_2802537B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537B0);
  }

  return result;
}

unint64_t sub_26835963C()
{
  result = qword_2802537B8;
  if (!qword_2802537B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537B8);
  }

  return result;
}

unint64_t sub_268359690()
{
  result = qword_2802537C0;
  if (!qword_2802537C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537C0);
  }

  return result;
}

unint64_t sub_2683596E4()
{
  result = qword_2802537C8;
  if (!qword_2802537C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537C8);
  }

  return result;
}

unint64_t sub_268359738()
{
  result = qword_2802537D0;
  if (!qword_2802537D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537D0);
  }

  return result;
}

unint64_t sub_26835978C()
{
  result = qword_2802537D8;
  if (!qword_2802537D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537D8);
  }

  return result;
}

unint64_t sub_2683597E0()
{
  result = qword_2802537E0;
  if (!qword_2802537E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537E0);
  }

  return result;
}

unint64_t sub_268359834()
{
  result = qword_2802537E8;
  if (!qword_2802537E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537E8);
  }

  return result;
}

unint64_t sub_268359888()
{
  result = qword_2802537F0;
  if (!qword_2802537F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537F0);
  }

  return result;
}

unint64_t sub_2683598DC()
{
  result = qword_2802537F8;
  if (!qword_2802537F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802537F8);
  }

  return result;
}

unint64_t sub_268359930()
{
  result = qword_280253800;
  if (!qword_280253800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253800);
  }

  return result;
}

unint64_t sub_268359984()
{
  result = qword_280253808;
  if (!qword_280253808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253808);
  }

  return result;
}

unint64_t sub_2683599D8()
{
  result = qword_280253810;
  if (!qword_280253810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253810);
  }

  return result;
}

unint64_t sub_268359A2C()
{
  result = qword_280253818;
  if (!qword_280253818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253818);
  }

  return result;
}

unint64_t sub_268359A80()
{
  result = qword_280253820;
  if (!qword_280253820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253820);
  }

  return result;
}

unint64_t sub_268359AD4()
{
  result = qword_280253830;
  if (!qword_280253830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253830);
  }

  return result;
}

unint64_t sub_268359B28()
{
  result = qword_280253838;
  if (!qword_280253838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253838);
  }

  return result;
}

unint64_t sub_268359B7C()
{
  result = qword_280253840;
  if (!qword_280253840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253840);
  }

  return result;
}

unint64_t sub_268359BD0()
{
  result = qword_280253848;
  if (!qword_280253848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253848);
  }

  return result;
}

unint64_t sub_268359C24()
{
  result = qword_280253850;
  if (!qword_280253850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253850);
  }

  return result;
}

unint64_t sub_268359C78()
{
  result = qword_280253858;
  if (!qword_280253858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253858);
  }

  return result;
}

uint64_t sub_268359CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_2683CD628();
  OUTLINED_FUNCTION_1();
  (*(v8 + 16))(a4, a1);
  *(a4 + *(a3(0) + 20)) = a2;
}

uint64_t sub_268359D7C@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1(0);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_268359E0C(uint64_t a1)
{
  v2 = sub_26835844C(&qword_2802538B8, type metadata accessor for AppIntentNode, &unk_2683F3E30);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_268359E88(uint64_t a1)
{
  v2 = sub_26835844C(&qword_2802538B8, type metadata accessor for AppIntentNode, &unk_2683F3E30);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_268359EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentNode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268359F58(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_268359FB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NotebookNLv3Intent.PersonPlaceName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CD628();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_0();
  result = sub_2683CD628();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_52_7();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_26835A2A0()
{
  result = qword_280253890;
  if (!qword_280253890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253890);
  }

  return result;
}

unint64_t sub_26835A33C()
{
  result = qword_2802538A8;
  if (!qword_2802538A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538A8);
  }

  return result;
}

unint64_t sub_26835A394()
{
  result = qword_2802538B0;
  if (!qword_2802538B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538B0);
  }

  return result;
}

unint64_t sub_26835A3E8()
{
  result = qword_2802538C0;
  if (!qword_2802538C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538C0);
  }

  return result;
}

unint64_t sub_26835A43C()
{
  result = qword_2802538C8;
  if (!qword_2802538C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538C8);
  }

  return result;
}

unint64_t sub_26835A490()
{
  result = qword_2802538D0;
  if (!qword_2802538D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802538D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_53(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_48()
{

  return sub_268359FB4(v0, type metadata accessor for NotebookLocationIntentNode);
}

uint64_t OUTLINED_FUNCTION_6_35(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_25(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_9()
{
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t a1)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_51_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_2683CD5A8();
}

uint64_t OUTLINED_FUNCTION_58_5()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_59_5(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26818A0C8(a1, v4, v5, a4);
}

uint64_t sub_26835A848()
{
  v1 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  sub_2683CF168();
  OUTLINED_FUNCTION_23_24(v0 + v1);
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent);
  OUTLINED_FUNCTION_23_24(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName);
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_createdDate) = 0;
  *(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_modifiedDate) = 0;
  v2 = v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount;
  *v2 = 0;
  *(v2 + 8) = 1;
  return v0;
}

uint64_t sub_26835A8F4()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName);

  return v0;
}

uint64_t sub_26835A990(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  swift_beginAccess();
  sub_26816349C(a1 + v3, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
  v4 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent;
  swift_beginAccess();
  sub_26816349C(a1 + v4, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
  v5 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName;
  swift_beginAccess();
  sub_26816349C(a1 + v5, v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_createdDate);
  *(v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_modifiedDate);
  v6 = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount + 8);
  v7 = v1 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount;
  *v7 = *(a1 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount);
  *(v7 + 8) = v6;

  if (!sub_26835ABB8())
  {
    v8 = sub_2683CF208();
    sub_2683CFE78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253240, &qword_2683F1440);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2683D1EC0;
    v14 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253938, &qword_2683F4268);
    v10 = sub_2683CFAD8();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_268327B74();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_2683CF708("Building an instance of %s without all required inputs", v14);
  }

  return v1;
}

BOOL sub_26835ABB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_19_3();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_26816349C(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title, &v12 - v6);
  v8 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);
  sub_26812E924(v7);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_26816349C(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent, v4);
  v10 = __swift_getEnumTagSinglePayload(v4, 1, v8) != 1;
  sub_26812E924(v4);
  return v10;
}

uint64_t sub_26835ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_19_3();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v17 || (OUTLINED_FUNCTION_2_23(0x656C746974, 0xE500000000000000) & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title, v16);
    v18 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v16);
    if (!v17)
    {
      goto LABEL_25;
    }

    v19 = v16;
    goto LABEL_9;
  }

  v21 = OUTLINED_FUNCTION_11_38();
  v23 = a1 == v21 && a2 == v22;
  if (v23 || (OUTLINED_FUNCTION_2_23(v21, v22) & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent, v14);
    v18 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v14);
    if (!v17)
    {
      goto LABEL_25;
    }

    v19 = v14;
LABEL_9:
    result = sub_26812E924(v19);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v24 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v24 || (OUTLINED_FUNCTION_2_23(0x6D614E70756F7267, 0xE900000000000065) & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName, v10);
    v18 = sub_2683CF168();
    OUTLINED_FUNCTION_4_6(v10);
    if (!v17)
    {
LABEL_25:
      *(a3 + 24) = v18;
      __swift_allocate_boxed_opaque_existential_0(a3);
      OUTLINED_FUNCTION_18_28();
      return (*(v25 + 32))();
    }

    v19 = v10;
    goto LABEL_9;
  }

  result = OUTLINED_FUNCTION_12_27();
  v27 = a1 == result && a2 == v26;
  if (v27 || (result = OUTLINED_FUNCTION_2_23(result, v26), (result & 1) != 0))
  {
    v28 = OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate;
  }

  else
  {
    result = OUTLINED_FUNCTION_10_31();
    if (a1 != result || a2 != v30)
    {
      result = OUTLINED_FUNCTION_2_23(result, v30);
      if ((result & 1) == 0)
      {
        result = OUTLINED_FUNCTION_8_35();
        if (a1 != result || a2 != v32)
        {
          result = OUTLINED_FUNCTION_2_23(result, v32);
          if ((result & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        if (*(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount + 8))
        {
          goto LABEL_10;
        }

        v34 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount);
        *(a3 + 24) = MEMORY[0x277D839F8];
        *a3 = v34;
        return result;
      }
    }

    v28 = OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate;
  }

  v29 = *(v3 + v28);
  if (!v29)
  {
    goto LABEL_10;
  }

  *(a3 + 24) = sub_2683CEFE8();
  *a3 = v29;
}

unint64_t sub_26835B014(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26835B064(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_11_38();
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = OUTLINED_FUNCTION_12_27();
      break;
    case 4:
      result = OUTLINED_FUNCTION_10_31();
      break;
    case 5:
      result = OUTLINED_FUNCTION_8_35();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26835B13C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26835B014(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26835B16C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26835B064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26835B1A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26835B060(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26835B1D4(uint64_t a1)
{
  v2 = sub_26835BE5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26835B210(uint64_t a1)
{
  v2 = sub_26835BE5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26835B24C()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);

  return v0;
}

uint64_t sub_26835B2D4(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_26835B358(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26835B404(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253918, &qword_2683F4108);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835BE5C();
  sub_2683D0718();
  v11 = OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title;
  LOBYTE(v18) = 0;
  sub_2683CF168();
  OUTLINED_FUNCTION_3_46();
  sub_26835BE14(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_0_65(v3 + v11, &v18);
  if (!v2)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_0_65(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent, &v18);
    LOBYTE(v18) = 2;
    OUTLINED_FUNCTION_0_65(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName, &v18);
    v18 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate);
    HIBYTE(v17) = 3;
    sub_2683CEFE8();
    OUTLINED_FUNCTION_2_54();
    sub_26835BE14(v14, v15, MEMORY[0x277D55B98]);
    OUTLINED_FUNCTION_0_65(&v18, &v17 + 7);
    v18 = *(v3 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate);
    HIBYTE(v17) = 4;
    OUTLINED_FUNCTION_0_65(&v18, &v17 + 7);
    LOBYTE(v18) = 5;
    sub_2683D04E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26835B670(void *a1)
{
  v2 = swift_allocObject();
  sub_26835B790(a1);
  return v2;
}

void sub_26835B6E8(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_26835B790(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  MEMORY[0x28223BE20](v9);
  v32 = v31 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253908, &qword_2683F4100);
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v31 - v16;
  v35 = v1;
  v36 = a1;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835BE5C();
  v34 = v17;
  sub_2683D06F8();
  if (v2)
  {
    v22 = v35;

    type metadata accessor for NotebookNoteConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31[1] = v14;
    sub_2683CF168();
    LOBYTE(v38) = 0;
    OUTLINED_FUNCTION_3_46();
    sub_26835BE14(v18, v19, MEMORY[0x277D55C60]);
    v20 = v32;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    v22 = v35;
    sub_2681E1A1C(v20, v35 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_title);
    LOBYTE(v38) = 1;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    sub_2681E1A1C(v11, v22 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_textContent);
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_7_31();
    sub_2683D0468();
    sub_2681E1A1C(v7, v22 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_groupName);
    sub_2683CEFE8();
    v37 = 3;
    OUTLINED_FUNCTION_2_54();
    sub_26835BE14(v23, v24, MEMORY[0x277D55BA0]);
    sub_2683D0468();
    *(v22 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_createdDate) = v38;
    v37 = 4;
    sub_2683D0468();
    *(v22 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_modifiedDate) = v38;
    LOBYTE(v38) = 5;
    v25 = sub_2683D0448();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_1_58();
    v29(v28);
    v30 = v22 + OBJC_IVAR____TtC12SiriNotebook19NotebookNoteConcept_attachmentCount;
    *v30 = v25;
    *(v30 + 8) = v27 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  return v22;
}

uint64_t sub_26835BD34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26835B670(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26835BE14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26835BE5C()
{
  result = qword_280253910;
  if (!qword_280253910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookNoteConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26835BF90()
{
  result = qword_280253920;
  if (!qword_280253920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253920);
  }

  return result;
}

unint64_t sub_26835BFE8()
{
  result = qword_280253928;
  if (!qword_280253928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253928);
  }

  return result;
}

unint64_t sub_26835C040()
{
  result = qword_280253930;
  if (!qword_280253930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253930);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_65(uint64_t a1, uint64_t a2)
{

  return sub_2683D0508();
}

uint64_t sub_26835C190(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26835C1B0);
}

uint64_t sub_26835C1B0()
{
  v1 = v0[8];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  v3 = sub_2683CC208();
  [v2 setTitle_];

  if (*(v1 + 24))
  {
    v4 = sub_2683CC208();
    [v2 setFootnote_];
  }

  v5 = v0[8];
  v6 = *(v5 + 32);
  if (v6 != 2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D4C1F0]) init];
    [v7 setIsSelected_];
    [v2 setButton_];

    v5 = v0[8];
  }

  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  v0[2] = v8;
  v0[3] = sub_26816B178;
  v0[4] = 0;
  v0[5] = sub_26816B19C;
  v0[6] = 0;
  v10 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v11 = sub_2683CFA38();
  v13 = v12;

  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_2681B2EE4(v9, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683D1EC0;
  *(v14 + 32) = sub_26839EEEC(v10, *(v5 + 48), MEMORY[0x277D84F90]);
  *(v14 + 40) = v15;

  v16 = v0[1];

  return v16(v14);
}

uint64_t sub_26835C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v52 = a1;
  v50 = a3;
  v51 = a4;
  v9 = sub_2683CF738();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v16 = sub_2683CF768();
  __swift_project_value_buffer(v16, qword_28027C9A0);
  sub_2683CF728();
  v17 = sub_2683CF758();
  v18 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v19 = swift_slowAlloc();
    v49 = a2;
    v20 = a5;
    v21 = a6;
    v22 = v19;
    *v19 = 0;
    v23 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v17, v18, v23, "AppResolver#resolve", "", v22, 2u);
    v24 = v22;
    a6 = v21;
    a5 = v20;
    a2 = v49;
    MEMORY[0x26D617A40](v24, -1, -1);
  }

  (*(v10 + 16))(v13, v15, v9);
  sub_2683CF7A8();
  swift_allocObject();
  sub_2683CF798();
  (*(v10 + 8))(v15, v9);
  if (a2 == 1)
  {
    v25 = v53;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v26 = sub_2683CF7E8();
    __swift_project_value_buffer(v26, qword_28027C958);
    v27 = sub_2683CF7C8();
    v28 = sub_2683CFE98();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_11;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "[AppResolver] No app specified. Using inferredAppResolver to resolve one.";
    goto LABEL_10;
  }

  v25 = v53;
  v32 = v53[15];
  if (v32)
  {
    v33 = v32 + OBJC_IVAR____TtC12SiriNotebook26AppSelectionTrainingLogger_appResolutionType;
    *v33 = 9;
    *(v33 + 4) = 0;
    sub_2682174F0();
  }

  if (!a2 || (v34 = v25[3], v35 = v25[4], __swift_project_boxed_opaque_existential_1(v25, v34), (v36 = (*(v35 + 8))(v52, a2, v34, v35)) == 0))
  {
    v45 = v51;
    if (v51)
    {
      __swift_project_boxed_opaque_existential_1(v25 + 5, v25[8]);
      v31 = sub_268362710(v50, v45);
      goto LABEL_19;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v47 = sub_2683CF7E8();
    __swift_project_value_buffer(v47, qword_28027C958);
    v27 = sub_2683CF7C8();
    v28 = sub_2683CFE88();
    if (!os_log_type_enabled(v27, v28))
    {
LABEL_11:

      __swift_project_boxed_opaque_existential_1(v25 + 10, v25[13]);
      v31 = sub_2681C63DC(a5, a6);
LABEL_19:
      v44 = v31;
      goto LABEL_20;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "[AppResolver] NLApp has nil name and id, falling back to inferred app resolver.";
LABEL_10:
    _os_log_impl(&dword_2680EB000, v27, v28, v30, v29, 2u);
    MEMORY[0x26D617A40](v29, -1, -1);
    goto LABEL_11;
  }

  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2683D1EC0;
  *(v44 + 32) = v40;
  *(v44 + 40) = v41;
  *(v44 + 48) = v42;
  *(v44 + 56) = v43;
LABEL_20:
  sub_26835C8A4();

  return v44;
}

uint64_t sub_26835C8A4()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2683CF738();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v8 = sub_2683CF768();
  __swift_project_value_buffer(v8, qword_28027C9A0);
  v9 = sub_2683CF758();
  sub_2683CF788();
  v10 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v9, v10, v13, "AppResolver#resolve", v11, v12, 2u);
    MEMORY[0x26D617A40](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26835CB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26835CB78(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Snippet.AddTasks3p.reminders.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Snippet.AddTasks3p.list.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  memcpy(a1, (v1 + 8), 0x61uLL);
  return sub_26835CC90(__dst, &v4);
}

uint64_t sub_26835CC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *Snippet.AddTasks3p.list.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  sub_26835CD50(__dst);
  return memcpy((v1 + 8), a1, 0x61uLL);
}

uint64_t sub_26835CD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C0, &unk_2683D2C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Snippet.AddTasks3p(uint64_t a1)
{
  result = qword_280253958;
  if (!qword_280253958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.AddTasks3p.interaction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippet.AddTasks3p(0) + 24);

  return sub_2681D62B8(a1, v3);
}

uint64_t Snippet.AddTasks3p.init(reminders:list:interaction:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = a4 + 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  sub_26835CD50(v10);
  memcpy(v7, a2, 0x61uLL);
  v8 = type metadata accessor for Snippet.AddTasks3p(0);
  return sub_26835CF80(a3, a4 + *(v8 + 24));
}

uint64_t sub_26835CF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26835CFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953720684 && a2 == 0xE400000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26835D100(char a1)
{
  if (!a1)
  {
    return 0x7265646E696D6572;
  }

  if (a1 == 1)
  {
    return 1953720684;
  }

  return 0x7463617265746E69;
}

uint64_t sub_26835D164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26835CFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26835D18C(uint64_t a1)
{
  v2 = sub_26835D47C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26835D1C8(uint64_t a1)
{
  v2 = sub_26835D47C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.AddTasks3p.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253940, &qword_2683F4348);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835D47C();
  sub_2683D0718();
  v19 = *v3;
  __dst[103] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  sub_26835D8C0(&qword_28024D880, &qword_28024D888, &protocol conformance descriptor for Snippet.Reminder, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_3_47(&v19);
  if (!v2)
  {
    memcpy(__dst, v3 + 1, 0x61uLL);
    memcpy(v17, v3 + 1, sizeof(v17));
    v16[103] = 1;
    sub_26835CC90(__dst, v16);
    sub_26814F7E8();
    sub_2683D0508();
    memcpy(v16, v17, 0x61uLL);
    sub_26835CD50(v16);
    v11 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
    v15[15] = 2;
    type metadata accessor for Snippet.Interaction(0);
    OUTLINED_FUNCTION_0_66();
    sub_26835DAA8(v12, v13, &protocol conformance descriptor for Snippet.Interaction);
    OUTLINED_FUNCTION_3_47(v3 + v11);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_26835D47C()
{
  result = qword_280253948;
  if (!qword_280253948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253948);
  }

  return result;
}

uint64_t Snippet.AddTasks3p.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  type metadata accessor for Snippet.Interaction(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253950, &qword_2683F4350);
  OUTLINED_FUNCTION_0_3();
  v25 = v7;
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Snippet.AddTasks3p(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 8) = 0u;
  v29 = a1;
  v30 = v13 + 8;
  v13[104] = 0;
  *(v13 + 88) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 24) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26835D47C();
  v27 = v9;
  v14 = v28;
  sub_2683D06F8();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v29);
    memcpy(__dst, v30, 0x61uLL);
    return sub_26835CD50(__dst);
  }

  else
  {
    v15 = v25;
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
    v32[0] = 0;
    sub_26835D8C0(&qword_28024D8F8, &qword_28024D900, &protocol conformance descriptor for Snippet.Reminder, MEMORY[0x277D83978]);
    v17 = v26;
    sub_2683D04A8();
    v28 = __dst[0];
    *v13 = __dst[0];
    v35 = 1;
    sub_26814FCE8();
    sub_2683D0468();
    memcpy(v31, __dst, sizeof(v31));
    v18 = v30;
    memcpy(v32, v30, 0x61uLL);
    sub_26835CD50(v32);
    memcpy(v18, v31, 0x61uLL);
    v34 = 2;
    OUTLINED_FUNCTION_0_66();
    sub_26835DAA8(v19, v20, &protocol conformance descriptor for Snippet.Interaction);
    v21 = v27;
    sub_2683D04A8();
    (*(v15 + 8))(v21, v17);
    sub_26835CF80(v16, &v13[*(v10 + 24)]);
    sub_26835D95C(v13, v24, type metadata accessor for Snippet.AddTasks3p);
    __swift_destroy_boxed_opaque_existential_0(v29);
    return sub_26835D9BC(v13);
  }
}

uint64_t sub_26835D8C0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_26835DAA8(a2, type metadata accessor for Snippet.Reminder, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26835D95C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26835D9BC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.AddTasks3p(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26835DAA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26835DB48(uint64_t a1)
{
  sub_26835DBE4(319);
  if (v1 <= 0x3F)
  {
    sub_26835DC3C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Snippet.Interaction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26835DBE4(uint64_t a1)
{
  if (!qword_28024D988)
  {
    type metadata accessor for Snippet.Reminder(255);
    v1 = sub_2683CFD28();
    if (!v2)
    {
      atomic_store(v1, &qword_28024D988);
    }
  }
}

void sub_26835DC3C()
{
  if (!qword_28024D950)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024D950);
    }
  }
}

_BYTE *_s14descr2878F8F29V10AddTasks3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26835DD6C()
{
  result = qword_280253968;
  if (!qword_280253968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253968);
  }

  return result;
}

unint64_t sub_26835DDC4()
{
  result = qword_280253970;
  if (!qword_280253970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253970);
  }

  return result;
}

unint64_t sub_26835DE1C()
{
  result = qword_280253978;
  if (!qword_280253978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253978);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_47(uint64_t a1)
{

  return sub_2683D0548();
}

uint64_t sub_26835DEA8@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_2681DA93C(0xD000000000000017, 0x80000002683FF890);
  if (v3)
  {
    v4 = v3;
    result = sub_26835DFE0();
    a1[3] = result;
    a1[4] = &off_28790B940;
    *a1 = v4;
  }

  else
  {
    result = sub_2683D0388();
    __break(1u);
  }

  return result;
}

id sub_26835DF9C()
{
  v1 = sub_2683CFA68();
  v2 = [v0 BOOLForKey_];

  return v2;
}

unint64_t sub_26835DFE0()
{
  result = qword_28024FA78;
  if (!qword_28024FA78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024FA78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CorrectingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26835E104()
{
  result = qword_280253980;
  if (!qword_280253980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253980);
  }

  return result;
}

uint64_t sub_26835E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CCC18();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(a3 + 80))(a2, a3);
  sub_2683CCB88();
  v9(v32, v8, 0);

  (*(v6 + 8))(v8, v5);
  if (v33[24] == 255)
  {
    sub_268167CA4(v32);
  }

  else
  {
    v34[0] = v32[0];
    v34[1] = v32[1];
    v35[0] = *v33;
    *(v35 + 9) = *&v33[9];
    if ((*(a3 + 128))(v34, a2, a3))
    {
      sub_26813A144(v34, v32);
      (*(a3 + 112))(v32, a2, a3);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v10 = sub_2683CF7E8();
      __swift_project_value_buffer(v10, qword_28027C958);
      swift_unknownObjectRetain();
      v11 = sub_2683CF7C8();
      v12 = sub_2683CFE98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *&v32[0] = swift_slowAlloc();
        *v13 = 136315394;
        v31[1] = swift_getObjectType();
        swift_getMetatypeMetadata();
        v14 = sub_2683CFAD8();
        sub_2681610A0(v14, v15, v32);

        v16 = OUTLINED_FUNCTION_0_67();
        *(v13 + 14) = sub_2681610A0(v16, v17, v32);
        OUTLINED_FUNCTION_2_55(&dword_2680EB000, v18, v19, "[%s.%s] correction input is accepted");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      sub_26813A1A0(v34);
      return 1;
    }

    sub_26813A1A0(v34);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v21 = sub_2683CF7E8();
  __swift_project_value_buffer(v21, qword_28027C958);
  swift_unknownObjectRetain();
  v22 = sub_2683CF7C8();
  v23 = sub_2683CFE98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *&v34[0] = swift_slowAlloc();
    *v24 = 136315394;
    *&v32[0] = swift_getObjectType();
    swift_getMetatypeMetadata();
    v25 = sub_2683CFAD8();
    sub_2681610A0(v25, v26, v34);

    v27 = OUTLINED_FUNCTION_0_67();
    *(v24 + 14) = sub_2681610A0(v27, v28, v34);
    OUTLINED_FUNCTION_2_55(&dword_2680EB000, v29, v30, "[%s.%s] unsupported correction input");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_67()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;
  return 0x6572726F63286E6FLL;
}

void OUTLINED_FUNCTION_2_55(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id sub_26835E5F8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2683CFA68();

  v2 = [v0 initWithSpokenPhrase_];

  return v2;
}

id sub_26835E66C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v37 = a2;
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  if (a1)
  {
    v23 = a1;
  }

  else
  {
    sub_268133FA8();
    v23 = sub_26835E5F8();
  }

  v41 = a6;
  sub_268176AE4(a6, v22);
  v24 = sub_2683CB0D8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
  v36 = a1;
  v26 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v26 = sub_2683CAFD8();
    (*(*(v24 - 8) + 8))(v22, v24);
  }

  sub_268176AE4(a7, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2683CAFD8();
    (*(*(v24 - 8) + 8))(v20, v24);
  }

  if (a9)
  {
    v28 = sub_2683CFA68();
  }

  else
  {
    v28 = 0;
  }

  if (a14)
  {
    v29 = sub_2683CFA68();
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = v39;
  v31 = v40;
  v33 = [v30 initWithTitle:v23 status:v37 taskType:v38 spatialEventTrigger:v40 temporalEventTrigger:v39 createdDateComponents:v26 modifiedDateComponents:v27 identifier:v28 priority:a10 contactEventTrigger:a11 taskReference:a12 parentIdentifier:v29];

  sub_2681D9984(a7);
  sub_2681D9984(v41);
  return v33;
}

uint64_t sub_26835E928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26835E948);
}

uint64_t sub_26835E948()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v0[5] = 0;
  v0[6] = v3;
  v0[4] = v2;
  if (v2)
  {
    OUTLINED_FUNCTION_3_48(v1);
    OUTLINED_FUNCTION_0_68();
    v10 = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_1_59(v5);

    return v10(v6);
  }

  else
  {
    v8 = v0[1];
    v9 = MEMORY[0x277D84F90];

    return v8(v9);
  }
}

uint64_t sub_26835EA48()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v0;

  if (v0)
  {

    v4 = sub_26835ED4C;
  }

  else
  {
    v4 = sub_26835EB68;
  }

  return MEMORY[0x2822009F8](v4);
}

void sub_26835EB68()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = *(v1 + 16);
  v4 = *(v2 + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[6];
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v7 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v3;
    }

    else
    {
      v9 = v4;
    }

    sub_2682E5208(isUniquelyReferenced_nonNull_native, v9, 1, v0[6]);
    v7 = v10;
    v8 = *(v10 + 24) >> 1;
  }

  if (*(v1 + 16))
  {
    if (v8 - *(v7 + 16) >= v3)
    {
      swift_arrayInitWithCopy();

      if (!v3)
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 16);
      v12 = __OFADD__(v11, v3);
      v13 = v11 + v3;
      if (!v12)
      {
        *(v7 + 16) = v13;
        goto LABEL_14;
      }

LABEL_24:
      __break(1u);
      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:

  v14 = v0[4];
  v15 = v0[5] + 1;
  v0[5] = v15;
  v0[6] = v7;
  if (v15 == v14)
  {
    v16 = v0[1];

    v16(v7);
  }

  else
  {
    OUTLINED_FUNCTION_3_48(v0[3] + 16 * v15);
    OUTLINED_FUNCTION_0_68();
    v20 = v17;
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v19 = OUTLINED_FUNCTION_1_59(v18);

    v20(v19);
  }
}

uint64_t sub_26835ED4C()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OUTLINED_FUNCTION_3_48@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 56) = *(a1 + 40);

  return swift_retain_n();
}

uint64_t sub_26835EE70(uint64_t a1, void (*a2)(void *__return_ptr, _BYTE *, void))
{
  v3 = sub_2683CCC18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCB88();
  a2(v36, v6, 0);
  (*(v4 + 8))(v6, v3);
  sub_268167C34(v36, v35);
  if (v35[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v35, v31);
  if (v34 != 2)
  {
    if (v34 == 7)
    {
      v7 = vorrq_s8(v32, v33);
      if (!(*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v31[2] | v31[1] | v31[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v23 = sub_2683CF7E8();
        __swift_project_value_buffer(v23, qword_28027C958);
        v24 = sub_2683CF7C8();
        v25 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v25))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v26, v27, "[CreateNote FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v31);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    sub_268167C34(v36, v31);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      sub_268167C34(v31, &v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v13 = sub_2683CFAD8();
      v15 = v14;
      sub_268167CA4(v31);
      v16 = sub_2681610A0(v13, v15, &v30);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v9, v10, "[CreateNote FlowStrategy] unsupported task, ignoring: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v31);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v36);
    return sub_268167CA4(v35);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v19))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v20, v21, "[CreateNote FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_38();
  }

  sub_2683CC2A8();
  sub_268167CA4(v36);
  sub_26813A1A0(v31);
  return sub_268167CA4(v35);
}

uint64_t sub_26835F268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a3;
  v4[29] = a4;
  v4[26] = a1;
  v4[27] = a2;
  return MEMORY[0x2822009F8](sub_26835F28C);
}

uint64_t sub_26835F28C()
{
  v39 = v0;
  (*(v0 + 224))(*(v0 + 208), 0);
  sub_268167C34(v0 + 16, v0 + 80);
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    v3 = *(v0 + 216);
    sub_268128148((v0 + 80), v0 + 144);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v4);
    v6 = (*(v5 + 16))(1, v4, v5);
    v7 = v6;
    if (v3)
    {
      v8 = sub_2682F0120(v6);
    }

    else
    {
      v21 = *(v0 + 168);
      v22 = *(v0 + 176);
      __swift_project_boxed_opaque_existential_1((v0 + 144), v21);
      v8 = (*(v22 + 16))(0, v21, v22);
    }

    v23 = v8;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v24 = sub_2683CF7E8();
    __swift_project_value_buffer(v24, qword_28027C958);
    v25 = v23;
    v26 = sub_2683CF7C8();
    v27 = sub_2683CFE98();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      v32 = sub_2683CFA78();
      v37 = v7;
      v34 = v33;

      v35 = sub_2681610A0(v32, v34, v38);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_2680EB000, v26, v27, "[CreateNote FlowStrategy] Updated intent: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }

    sub_268167CA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    v36 = *(v0 + 8);

    return v36(v25);
  }

  else
  {
    v2 = v0 + 80;
    if (v1 == 255)
    {
      sub_268167CA4(v2);
    }

    else
    {
      sub_26813A1A0(v2);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v0 + 16, v0 + 80);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      sub_268167C34(v0 + 80, v0 + 144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v0 + 80);
      v17 = sub_2681610A0(v14, v16, v38);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[CreateNote FlowStrategy] Did not get snoozeTasks task from parse. Got: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v0 + 80);
    }

    sub_26812C6B8();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v0 + 16);
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_26835F6F8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26822F724;

  return sub_26835F268(a1, a2, v7, v6);
}

uint64_t sub_26835F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26835FE50;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_26835F86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26835FE50;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_26835F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26835FE50;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26835FA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26835FE50;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_26835FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268323AD4;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26835FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26835FE50;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_26835FC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268323920;

  return MEMORY[0x2821BBB48](a1, a2, a3, a4);
}

unint64_t sub_26835FD4C()
{
  result = qword_280253988;
  if (!qword_280253988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253988);
  }

  return result;
}

unint64_t sub_26835FDA4()
{
  result = qword_280253990;
  if (!qword_280253990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253990);
  }

  return result;
}

unint64_t sub_26835FDFC()
{
  result = qword_280253998;
  if (!qword_280253998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253998);
  }

  return result;
}

uint64_t type metadata accessor for NotebookLocationResolver(uint64_t a1)
{
  result = qword_2802539A0;
  if (!qword_2802539A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26835FEC8(uint64_t a1)
{
  result = sub_2681F5870();
  if (v2 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26835FF4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2683CE938();
  v3[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_15_1();
  sub_2683CB7D8();
  v3[8] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CB668();
  v3[9] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v3[10] = v7;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = sub_2683CE9E8();
  v3[14] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v3[15] = v9;
  v3[16] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CE828();
  v3[17] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v3[18] = v11;
  v3[19] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_268360128);
}

uint64_t sub_268360128()
{
  v1 = *(v0 + 32);
  sub_2683CE818();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_2683601D0;

  return sub_26837E8B8();
}

uint64_t sub_2683601D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  *(v6 + 184) = v3;

  if (v3)
  {

    v7 = sub_268360538;
  }

  else
  {
    *(v6 + 192) = a3;
    v7 = sub_268360304;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268360304()
{
  v15 = v0[19];
  v1 = v0[16];
  v18 = v0[18];
  v19 = v0[17];
  v16 = v0[15];
  v17 = v0[14];
  v2 = v0[13];
  v11 = v0[12];
  v3 = v0[10];
  v4 = v0[9];
  v12 = v0[11];
  v5 = v0[6];
  v6 = v0[4];
  v14 = v0[5];
  v13 = v0[7];
  v7 = *(type metadata accessor for NotebookLocationResolver(0) + 20);
  v8 = *(v3 + 16);
  v8(v2, v6 + v7, v4);
  v8(v11, v6 + v7, v4);
  v8(v12, v6 + v7, v4);
  sub_2683CB7C8();
  sub_2683CE9D8();
  sub_2683CE928();
  sub_2683CE808();
  (*(v5 + 8))(v13, v14);
  (*(v16 + 8))(v1, v17);
  (*(v18 + 8))(v15, v19);

  v9 = v0[1];

  return v9();
}

uint64_t sub_268360538()
{
  v1 = v0[16];
  v18 = v0[18];
  v19 = v0[17];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  v12 = v0[11];
  v6 = v0[6];
  v7 = v0[4];
  v14 = v0[5];
  v13 = v0[7];
  v8 = *(type metadata accessor for NotebookLocationResolver(0) + 20);
  v9 = *(v4 + 16);
  v9(v2, v7 + v8, v5);
  v9(v3, v7 + v8, v5);
  v9(v12, v7 + v8, v5);
  sub_2683CB7C8();
  sub_2683CE9D8();
  sub_2683CE928();
  sub_2683CE808();
  (*(v6 + 8))(v13, v14);
  (*(v16 + 8))(v1, v17);
  (*(v18 + 8))(v15, v19);

  v10 = v0[1];

  return v10();
}

uint64_t sub_268360738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_32();
  v3 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  sub_26836116C();
  OUTLINED_FUNCTION_72(v0, 1, v3);
  if (v10)
  {
    sub_268184140(v0, &qword_28024DB08, qword_2683D5760);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v0, v3);
    sub_2683CF018();
    swift_allocObject();
    sub_2683CF008();
    sub_2683CB4D8();
    sub_2683CEFF8();

    sub_2683CF038();
    swift_allocObject();
    v11 = sub_2683CF028();
    v12 = OUTLINED_FUNCTION_0_0();
    v13(v12);
  }

  return v11;
}

uint64_t sub_2683608FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v2 = OUTLINED_FUNCTION_23(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = [v0 startDateComponents];
  if (v10)
  {
    v11 = v10;
    sub_2683CAFE8();

    v12 = sub_2683CB0D8();
    v13 = 0;
  }

  else
  {
    v12 = sub_2683CB0D8();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v13, 1, v12);
  sub_268176BC8(v0, v9);
  sub_2683CB0D8();
  OUTLINED_FUNCTION_72(v9, 1, v12);
  if (v14)
  {
    sub_268184140(v9, &qword_28024D4B0, &unk_2683D26E0);
    return 0;
  }

  else
  {
    sub_2683CEFE8();
    v15 = *(v12 - 8);
    (*(v15 + 16))(v5, v9, v12);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    v19 = sub_268216C78(v5);
    (*(v15 + 8))(v9, v12);
  }

  return v19;
}

void sub_268360AF0()
{
  OUTLINED_FUNCTION_30_0();
  v72 = v0;
  v2 = sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v13 = OUTLINED_FUNCTION_23(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  sub_2683617C4();
  v18 = v17;
  v19 = [v17 endDateComponents];

  if (!v19)
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
    sub_268184140(v16, &qword_28024D4B0, &unk_2683D26E0);
    sub_2683617C4();
    v24 = v23;
    v19 = [v23 startDateComponents];

    if (!v19)
    {
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v2);
      sub_268184140(v1, &qword_28024D4B0, &unk_2683D26E0);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v65 = sub_2683CF7E8();
      __swift_project_value_buffer(v65, qword_28027C958);
      v66 = sub_2683CF7C8();
      v67 = sub_2683CFE98();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_2680EB000, v66, v67, "[INDateComponentsRange] Manually adjusted date does not exist, returning resolved time", v68, 2u);
        OUTLINED_FUNCTION_38();
      }

      goto LABEL_30;
    }

    v16 = v1;
  }

  sub_2683CAFE8();

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v2);
  sub_268184140(v16, &qword_28024D4B0, &unk_2683D26E0);
  sub_2683617C4();
  v29 = v28;
  v30 = [v28 endDateComponents];

  if (v30)
  {
    sub_2683CAFE8();

    if (sub_2682D8F20())
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v31 = sub_2683CF7E8();
      __swift_project_value_buffer(v31, qword_28027C958);
      v32 = sub_2683CF7C8();
      v33 = sub_2683CFE98();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2680EB000, v32, v33, "[INDateComponentsRange] Manually adjusted endDateComponents in the past, returning resolved time", v34, 2u);
        OUTLINED_FUNCTION_38();
      }

      (*(v4 + 8))(v11, v2);
LABEL_30:
      OUTLINED_FUNCTION_29_0();

      v71 = v69;
      return;
    }

    (*(v4 + 8))(v11, v2);
  }

  sub_2683617C4();
  v36 = v35;
  v37 = [v35 startDateComponents];

  if (v37)
  {
    sub_2683CAFE8();

    if (sub_2682D8F20())
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v38 = sub_2683CF7E8();
      __swift_project_value_buffer(v38, qword_28027C958);
      v39 = sub_2683CF7C8();
      v40 = sub_2683CFE98();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2680EB000, v39, v40, "[INDateComponentsRange] Manually adjusted startDateComponents in the past, returning resolved time", v41, 2u);
        OUTLINED_FUNCTION_38();
      }

      (*(v4 + 8))(v8, v2);
      goto LABEL_30;
    }

    v42 = OUTLINED_FUNCTION_0_0();
    v43(v42);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v44 = sub_2683CF7E8();
  __swift_project_value_buffer(v44, qword_28027C958);
  v45 = v72;
  v46 = sub_2683CF7C8();
  v47 = sub_2683CFE98();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v48 = 136315394;
    sub_2683617C4();
    v50 = v49;
    v51 = [v49 description];
    v52 = sub_2683CFA78();
    v54 = v53;

    v55 = sub_2681610A0(v52, v54, &v73);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2080;
    v56 = v45;
    v57 = [v56 description];
    v58 = sub_2683CFA78();
    v60 = v59;

    v61 = sub_2681610A0(v58, v60, &v73);

    *(v48 + 14) = v61;
    _os_log_impl(&dword_2680EB000, v46, v47, "[INDateComponentsRange] Manually adjusted witching date components: %s returned instead of non-adjusted: %s", v48, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2683617C4();
  OUTLINED_FUNCTION_29_0();
}

void sub_26836116C()
{
  OUTLINED_FUNCTION_30_0();
  v38 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_32();
  v8 = sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  sub_2683615B0(v18);
  OUTLINED_FUNCTION_72(v18, 1, v19);
  if (v29)
  {
    v26 = &qword_28024D4B0;
    v27 = &unk_2683D26E0;
    v28 = v18;
LABEL_10:
    sub_268184140(v28, v26, v27);
    sub_2683CB528();
    OUTLINED_FUNCTION_4_0();
    goto LABEL_11;
  }

  (*(v21 + 32))(v25, v18, v19);
  sub_2683CB0B8();
  OUTLINED_FUNCTION_72(v0, 1, v8);
  if (v29)
  {
    (*(v21 + 8))(v25, v19);
    v26 = &qword_28024DBB8;
    v27 = &unk_2683D4310;
    v28 = v0;
    goto LABEL_10;
  }

  (*(v10 + 32))(v14, v0, v8);
  sub_2683CB738();
  (*(v10 + 8))(v14, v8);
  (*(v21 + 8))(v25, v19);
  v30 = sub_2683CB528();
  OUTLINED_FUNCTION_72(v5, 1, v30);
  if (v31)
  {
    v26 = &qword_28024DB08;
    v27 = qword_2683D5760;
    v28 = v5;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_0();
  (*(v32 + 32))(v38, v5, v30);
  OUTLINED_FUNCTION_10_0();
  v36 = v30;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2683614C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - v2;
  sub_2683615B0(&v10 - v2);
  v4 = sub_2683CB0D8();
  OUTLINED_FUNCTION_20_30(v3);
  if (v5)
  {
    sub_268184140(v3, &qword_28024D4B0, &unk_2683D26E0);
    v8 = 0;
  }

  else
  {
    v6 = sub_2682D915C();
    OUTLINED_FUNCTION_23_0();
    (*(v7 + 8))(v3, v4);
    v8 = v6 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_2683615B0@<X0>(char *a1@<X8>)
{
  v3 = v1;
  v5 = sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v13 = OUTLINED_FUNCTION_23(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = [v3 endDateComponents];
  if (v17)
  {
    v18 = v17;
    sub_2683CAFE8();

    v19 = *(v7 + 32);
    v19(v16, v11, v5);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
    v19(a1, v16, v5);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
  }

  else
  {
    v27 = 1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v5);
    v31 = [v3 startDateComponents];
    if (v31)
    {
      v32 = v31;
      sub_2683CAFE8();

      v27 = 0;
    }

    __swift_storeEnumTagSinglePayload(v2, v27, 1, v5);
    sub_268176BC8(v2, a1);
    result = OUTLINED_FUNCTION_72(v16, 1, v5);
    if (!v33)
    {
      return sub_268184140(v16, &qword_28024D4B0, &unk_2683D26E0);
    }
  }

  return result;
}

void sub_2683617C4()
{
  OUTLINED_FUNCTION_30_0();
  v146 = sub_2683CB798();
  OUTLINED_FUNCTION_0_3();
  v135 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v134 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v7 = OUTLINED_FUNCTION_23(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_3();
  v131 = v8 - v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56_3();
  v138 = v11;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_56_3();
  v14 = v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v126 - v16;
  v137 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v147 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_3();
  v132 = v20 - v21;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_56_3();
  v144 = v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_56_3();
  v130 = v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  v133 = &v126 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v29 = OUTLINED_FUNCTION_23(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_3();
  v142 = v30 - v31;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_56_3();
  v136 = v33;
  OUTLINED_FUNCTION_8_0();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v126 - v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_56_3();
  v145 = v38;
  OUTLINED_FUNCTION_8_0();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v126 - v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_31();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v126 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18_31();
  v141 = sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  v139 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_14_3();
  v148 = v50 - v49;
  sub_2683CB768();
  v51 = sub_2683CB0D8();
  v52 = 1;
  v143 = v0;
  v53 = v1;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v51);
  v140 = v46;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v51);
  v60 = [v1 startDateComponents];
  if (v60)
  {
    v61 = v60;
    sub_2683CAFE8();

    v52 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v52, 1, v51);
  sub_268176BC8(v42, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v51);
  v63 = MEMORY[0x277CC9968];
  v64 = v137;
  if (EnumTagSinglePayload == 1)
  {
    sub_268184140(v1, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
    v68 = v147;
  }

  else
  {
    sub_2683CB018();
    OUTLINED_FUNCTION_23_0();
    (*(v69 + 8))(v1, v51);
    OUTLINED_FUNCTION_20_30(v17);
    v68 = v147;
    if (!v77)
    {
      v129 = v1;
      v126 = *(v147 + 32);
      v126(v133, v17, v64);
      v70 = *v63;
      v72 = v134;
      v71 = v135;
      v73 = *(v135 + 104);
      v127 = v70;
      v74 = v146;
      v128 = v73;
      v73(v134);
      OUTLINED_FUNCTION_12_28();
      v75 = v14;
      v76 = v64;
      (*(v71 + 8))(v72, v74);
      OUTLINED_FUNCTION_20_30(v75);
      if (v77)
      {
        v68 = v147;
        (*(v147 + 8))(v133, v64);
        sub_268184140(v75, &qword_28024DB08, qword_2683D5760);
      }

      else
      {
        v78 = v130;
        v126(v130, v75, v64);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
        v79 = *(v71 + 72);
        v80 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_2683F48A0;
        v82 = v81 + v80;
        v83 = v128;
        v128(v82, *MEMORY[0x277CC99C8], v74);
        v83(v82 + v79, *MEMORY[0x277CC9988], v74);
        v83(v82 + 2 * v79, *MEMORY[0x277CC9998], v74);
        v83(v82 + 3 * v79, v127, v74);
        v83(v82 + 4 * v79, *MEMORY[0x277CC9980], v74);
        v83(v82 + 5 * v79, *MEMORY[0x277CC99A0], v74);
        v83(v82 + 6 * v79, *MEMORY[0x277CC99A8], v74);
        v83(v82 + 7 * v79, *MEMORY[0x277CC9930], v74);
        v83(v82 + 8 * v79, *MEMORY[0x277CC99B8], v74);
        sub_2682D9570(v81);
        sub_2683CB6C8();

        v68 = v147;
        v84 = *(v147 + 8);
        v84(v78, v76);
        v84(v133, v76);
        sub_268184140(v143, &qword_28024D4B0, &unk_2683D26E0);
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v85, v86, v87, v51);
        v88 = OUTLINED_FUNCTION_0_0();
        sub_268176BC8(v88, v89);
      }

      v64 = v76;
      v53 = v129;
      v63 = MEMORY[0x277CC9968];
      goto LABEL_12;
    }
  }

  sub_268184140(v17, &qword_28024DB08, qword_2683D5760);
LABEL_12:
  v90 = [v53 endDateComponents];
  v91 = v136;
  if (v90)
  {
    v92 = v90;
    sub_2683CAFE8();

    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  v94 = v146;
  v95 = v144;
  __swift_storeEnumTagSinglePayload(v91, v93, 1, v51);
  sub_268176BC8(v91, v37);
  OUTLINED_FUNCTION_72(v37, 1, v51);
  if (v77)
  {
    sub_268184140(v37, &qword_28024D4B0, &unk_2683D26E0);
    v99 = v138;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v64);
LABEL_22:
    sub_268184140(v99, &qword_28024DB08, qword_2683D5760);
    v121 = v140;
    v125 = v148;
    goto LABEL_23;
  }

  v99 = v138;
  sub_2683CB018();
  OUTLINED_FUNCTION_23_0();
  (*(v100 + 8))(v37, v51);
  OUTLINED_FUNCTION_20_30(v99);
  if (v101)
  {
    goto LABEL_22;
  }

  v138 = *(v68 + 32);
  v138(v95, v99, v64);
  v102 = *v63;
  v104 = v134;
  v103 = v135;
  v105 = *(v135 + 104);
  LODWORD(v146) = v102;
  v105(v134);
  v99 = v131;
  OUTLINED_FUNCTION_12_28();
  v106 = v103;
  v107 = v64;
  (*(v106 + 8))(v104, v94);
  OUTLINED_FUNCTION_20_30(v99);
  if (v77)
  {
    (*(v147 + 8))(v144, v64);
    goto LABEL_22;
  }

  v138(v132, v99, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
  v112 = *(v106 + 72);
  v113 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_2683F48A0;
  v115 = v114 + v113;
  (v105)(v115, *MEMORY[0x277CC99C8], v94);
  (v105)(v115 + v112, *MEMORY[0x277CC9988], v94);
  (v105)(v115 + 2 * v112, *MEMORY[0x277CC9998], v94);
  (v105)(v115 + 3 * v112, v146, v94);
  (v105)(v115 + 4 * v112, *MEMORY[0x277CC9980], v94);
  (v105)(v115 + 5 * v112, *MEMORY[0x277CC99A0], v94);
  (v105)(v115 + 6 * v112, *MEMORY[0x277CC99A8], v94);
  (v105)(v115 + 7 * v112, *MEMORY[0x277CC9930], v94);
  (v105)(v115 + 8 * v112, *MEMORY[0x277CC99B8], v94);
  sub_2682D9570(v114);
  v116 = v107;
  v117 = v145;
  v118 = v132;
  v119 = v148;
  sub_2683CB6C8();

  v120 = *(v147 + 8);
  v120(v118, v116);
  v120(v144, v116);
  v121 = v140;
  sub_268184140(v140, &qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v51);
  sub_268176BC8(v117, v121);
  v125 = v119;
LABEL_23:
  v108 = v143;
  sub_268176AE4(v143, v145);
  sub_268176AE4(v121, v142);
  v109 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v110 = OUTLINED_FUNCTION_0_0();
  sub_2681D2B74(v110, v111);
  sub_268184140(v121, &qword_28024D4B0, &unk_2683D26E0);
  sub_268184140(v108, &qword_28024D4B0, &unk_2683D26E0);
  (*(v139 + 8))(v125, v141);
  OUTLINED_FUNCTION_29_0();
}

void sub_2683623F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v27 = OUTLINED_FUNCTION_23(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_11_39();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &a9 - v30;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_31();
  v32 = sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19_3();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &a9 - v40;
  v42 = [v25 endDateComponents];
  if (v42)
  {
    v43 = v42;
    sub_2683CAFE8();

    v44 = *(v34 + 32);
    v44(v31, v38, v32);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v32);
    v44(v20, v31, v32);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v32);
  }

  else
  {
    v51 = 1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v32);
    v55 = [v25 startDateComponents];
    if (v55)
    {
      v56 = v55;
      sub_2683CAFE8();

      v51 = 0;
    }

    __swift_storeEnumTagSinglePayload(v22, v51, 1, v32);
    sub_268176BC8(v22, v20);
    OUTLINED_FUNCTION_20_30(v31);
    if (!v57)
    {
      sub_268184140(v31, &qword_28024D4B0, &unk_2683D26E0);
    }
  }

  OUTLINED_FUNCTION_20_30(v20);
  if (v57)
  {
    sub_268184140(v20, &qword_28024D4B0, &unk_2683D26E0);
  }

  else
  {
    (*(v34 + 32))(v41, v20, v32);
    sub_2683CB068();
    (*(v34 + 8))(v41, v32);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t OUTLINED_FUNCTION_12_28()
{

  return sub_2683CB748();
}

uint64_t sub_268362710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v135 = a2;
  v136 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  MEMORY[0x28223BE20](v4 - 8);
  v146 = v129 - v5;
  sub_2683CAEA8();
  OUTLINED_FUNCTION_0_3();
  v149 = v7;
  v150 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v129 - v17;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v19 = sub_2683CF768();
  __swift_project_value_buffer(v19, qword_28027C9A0);
  sub_2683CF728();
  v20 = sub_2683CF758();
  v21 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v20, v21, v23, "RegexAppSearcher#find", "", v22, 2u);
    v3 = v2;
    OUTLINED_FUNCTION_38();
  }

  (*(v12 + 16))(v16, v18, v10);
  sub_2683CF7A8();
  swift_allocObject();
  v134 = sub_2683CF798();
  (*(v12 + 8))(v18, v10);
  v24 = v135;
  v153[0] = v136;
  v153[1] = v135;
  sub_2683CAE78();
  v25 = sub_26812A1AC();
  v26 = MEMORY[0x277D837D0];
  v27 = sub_2683CFFE8();
  v29 = v28;
  (*(v149 + 8))(v9, v150);
  v153[0] = v27;
  v153[1] = v29;
  v30 = *(type metadata accessor for RegexAppSearcher(0) + 20);
  v31 = sub_2683CB668();
  v32 = *(v31 - 8);
  v142 = *(v32 + 16);
  v143 = v30;
  v33 = v3 + v30;
  v34 = v146;
  v141 = v32 + 16;
  v142(v146, v33, v31);
  v145 = v31;
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v31);
  v35 = sub_2683CFFC8();
  v37 = v36;
  sub_268129F94(v34);

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v47 = sub_2683CF7E8();
    __swift_project_value_buffer(v47, qword_28027C958);

    v48 = sub_2683CF7C8();
    v49 = sub_2683CFE98();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_18;
    }

    v50 = OUTLINED_FUNCTION_49();
    v51 = swift_slowAlloc();
    v153[0] = v51;
    v52 = OUTLINED_FUNCTION_5_46(4.8751e-34);
    *(v50 + 4) = sub_2681610A0(v52, v24, v53);
    v56 = "[RegexAppSearcher] %{public}s resulted in empty string after trimming returning no results.";
    goto LABEL_17;
  }

  v39 = v3[3];
  v40 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v39);
  v41 = (*(v40 + 16))(v39, v40);
  MEMORY[0x28223BE20](v41);
  v125 = v3;
  v126 = v35;
  v127 = v37;

  v42 = sub_26838F0B8(sub_2683639B8, &v129[-6], v41);
  if (!*(v42 + 16))
  {

    v153[0] = v35;
    v153[1] = v37;
    v133 = v37;
    strcpy(v152, "[^[:alnum:]]+");
    HIWORD(v152[1]) = -4864;
    strcpy(v151, "[^[:alnum:]]*");
    v151[7] = -4864;
    v127 = v25;
    v128 = v25;
    v125 = v26;
    v126 = v25;
    v57 = sub_2683CFFF8();
    v59 = v58;
    strcpy(v153, "^[^[:alnum:]]*");
    HIBYTE(v153[1]) = -18;
    MEMORY[0x26D616690]();

    MEMORY[0x26D616690](0x756E6C613A5B5E5BLL, 0xEE00242A5D5D3A6DLL);

    v60 = v153[1];
    v139 = v153[0];
    v153[0] = 10798;
    v153[1] = 0xE200000000000000;
    MEMORY[0x26D616690](v57, v59);

    MEMORY[0x26D616690](10798, 0xE200000000000000);

    v61 = v153[1];
    v130 = v153[0];
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v62 = sub_2683CF7E8();
    v63 = __swift_project_value_buffer(v62, qword_28027C958);

    v64 = sub_2683CF7C8();
    v65 = sub_2683CFE68();

    v66 = os_log_type_enabled(v64, v65);
    v132 = v35;
    v129[1] = v63;
    v131 = v61;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v153[0] = swift_slowAlloc();
      *v67 = 136315394;
      *(v67 + 4) = sub_2681610A0(v139, v60, v153);
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_2681610A0(v130, v61, v153);
      _os_log_impl(&dword_2680EB000, v64, v65, "[RegexAppSearcher] Regex Patterns: Exact Match %s | Partial Match: %s", v67, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_38();
    }

    v140 = v60;
    v68 = v41;
    v69 = *(v41 + 16);
    v129[2] = v68;
    if (v69)
    {
      v144 = v25;
      v70 = (v68 + 56);
      v71 = MEMORY[0x277D84F90];
      v72 = MEMORY[0x277D837D0];
      v137 = MEMORY[0x277D84F90];
      v138 = v3;
      while (1)
      {
        v150 = v71;
        v73 = *(v70 - 3);
        v75 = *(v70 - 1);
        v74 = *v70;
        v147 = *(v70 - 2);
        v153[0] = v147;
        v153[1] = v75;
        v76 = v146;
        v142(v146, v3 + v143, v145);
        OUTLINED_FUNCTION_6_36();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
        swift_bridgeObjectRetain_n();
        v149 = v73;

        v148 = v74;

        v81 = v72;
        v82 = v144;
        v83 = sub_2683CFFC8();
        v85 = v84;
        sub_268129F94(v76);

        v153[0] = v83;
        v153[1] = v85;
        v152[0] = v139;
        v152[1] = v140;
        OUTLINED_FUNCTION_6_36();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
        v127 = v82;
        v128 = v82;
        v72 = v81;
        OUTLINED_FUNCTION_3_49();
        sub_2683D0018();
        LOBYTE(v73) = v90;
        sub_268129F94(v76);
        if ((v73 & 1) == 0)
        {
          break;
        }

        v71 = v150;
        if (*(v150 + 16))
        {

          v3 = v138;
        }

        else
        {
          v153[0] = v83;
          v153[1] = v85;
          v152[0] = v132;
          v152[1] = v133;
          v93 = v144;
          if (sub_2683D0028())
          {

            v3 = v138;
LABEL_37:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2682E49B0();
              v137 = v104;
            }

            v98 = *(v137 + 16);
            if (v98 >= *(v137 + 24) >> 1)
            {
              sub_2682E49B0();
              v137 = v105;
            }

            v99 = v137;
            *(v137 + 16) = v98 + 1;
            v92 = (v99 + 32 * v98);
LABEL_42:
            v101 = v147;
            v100 = v148;
            v92[4] = v149;
            v92[5] = v101;
            v92[6] = v75;
            v92[7] = v100;
            goto LABEL_43;
          }

          v153[0] = v83;
          v153[1] = v85;
          v152[0] = v130;
          v152[1] = v131;
          v94 = v146;
          __swift_storeEnumTagSinglePayload(v146, 1, 1, v145);
          v127 = v93;
          v128 = v93;
          OUTLINED_FUNCTION_3_49();
          sub_2683D0018();
          v96 = v95;
          v97 = v94;
          v72 = v81;
          sub_268129F94(v97);

          v3 = v138;
          if ((v96 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

LABEL_43:
        v70 += 4;
        if (!--v69)
        {
          goto LABEL_47;
        }
      }

      v71 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_36();
        sub_2682E49B0();
        v71 = v102;
      }

      v3 = v138;
      v91 = *(v71 + 16);
      if (v91 >= *(v71 + 24) >> 1)
      {
        OUTLINED_FUNCTION_6_36();
        sub_2682E49B0();
        v71 = v103;
      }

      *(v71 + 16) = v91 + 1;
      v92 = (v71 + 32 * v91);
      goto LABEL_42;
    }

    v71 = MEMORY[0x277D84F90];
    v137 = MEMORY[0x277D84F90];
LABEL_47:

    if (*(v71 + 16))
    {

      v106 = sub_2683CF7C8();
      v107 = sub_2683CFE98();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = OUTLINED_FUNCTION_49();
        *v108 = 134217984;
        *(v108 + 4) = *(v71 + 16);
        _os_log_impl(&dword_2680EB000, v106, v107, "[RegexAppSearcher] Found %ld matches on exact regex patterns.", v108, 0xCu);
        OUTLINED_FUNCTION_3_16();
      }

      v109 = v3[3];
      v110 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v109);

      v42 = (*(v110 + 24))(v71, v109, v110);
      goto LABEL_55;
    }

    v111 = v137;
    if (*(v137 + 16))
    {

      v112 = sub_2683CF7C8();
      v113 = sub_2683CFE98();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = OUTLINED_FUNCTION_49();
        *v114 = 134217984;
        *(v114 + 4) = *(v111 + 16);
        OUTLINED_FUNCTION_8_36(&dword_2680EB000, v115, v116, "RegexAppSearcher#find Found %ld matches on partial regex patterns.");
        OUTLINED_FUNCTION_38();
      }

      v117 = v3[3];
      v118 = v3[4];
      __swift_project_boxed_opaque_existential_1(v3, v117);

      v42 = (*(v118 + 24))(v111, v117, v118);
      goto LABEL_55;
    }

    v120 = v135;

    v48 = sub_2683CF7C8();
    v121 = sub_2683CFE98();

    if (!os_log_type_enabled(v48, v121))
    {
LABEL_18:

      v42 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }

    v122 = OUTLINED_FUNCTION_49();
    v51 = swift_slowAlloc();
    v153[0] = v51;
    v123 = OUTLINED_FUNCTION_5_46(4.8149e-34);
    *(v122 + 4) = sub_2681610A0(v123, v120, v124);
    v56 = "[RegexAppSearcher] No matches found for %s";
LABEL_17:
    OUTLINED_FUNCTION_8_36(&dword_2680EB000, v54, v55, v56);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_38();
    goto LABEL_18;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v43 = sub_2683CF7E8();
  __swift_project_value_buffer(v43, qword_28027C958);

  v44 = sub_2683CF7C8();
  v45 = sub_2683CFE98();
  if (!os_log_type_enabled(v44, v45))
  {

LABEL_55:

    goto LABEL_56;
  }

  v46 = OUTLINED_FUNCTION_49();
  *v46 = 134217984;
  *(v46 + 4) = *(v42 + 16);

  _os_log_impl(&dword_2680EB000, v44, v45, "[RegexAppSearcher] Found %ld exact match(es)", v46, 0xCu);
  OUTLINED_FUNCTION_3_16();

LABEL_56:
  sub_268363560();

  return v42;
}

uint64_t sub_268363560()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2683CF738();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v8 = sub_2683CF768();
  __swift_project_value_buffer(v8, qword_28027C9A0);
  v9 = sub_2683CF758();
  sub_2683CF788();
  v10 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v9, v10, v13, "RegexAppSearcher#find", v11, v12, 2u);
    MEMORY[0x26D617A40](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2683637EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v21[0] = v11;
  v21[1] = v12;
  v13 = *(type metadata accessor for RegexAppSearcher(0) + 20);
  v14 = sub_2683CB668();
  (*(*(v14 - 8) + 16))(v10, a2 + v13, v14);
  v15 = 1;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
  sub_26812A1AC();

  v16 = sub_2683CFFC8();
  v18 = v17;
  sub_268129F94(v10);

  if (v16 != a3 || v18 != a4)
  {
    v15 = sub_2683D0598();
  }

  return v15 & 1;
}

uint64_t type metadata accessor for RegexAppSearcher(uint64_t a1)
{
  result = qword_2802539B0;
  if (!qword_2802539B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268363A04(uint64_t a1)
{
  result = sub_268363A88();
  if (v2 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_268363A88()
{
  result = qword_2802539C0;
  if (!qword_2802539C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2802539C0);
  }

  return result;
}

void OUTLINED_FUNCTION_8_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_268363B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2683CC828();
  v7 = sub_2683CF258();
  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  sub_268207E90();
  v11 = sub_2683CC848();
  v12 = sub_2683CC818();
  sub_268208190(v11, v12);
  type metadata accessor for Snippet.Interaction(0);
  sub_2683CB7E8();
  v13 = *(*(v6 - 8) + 8);

  return v13(a1, v6);
}

uint64_t Snippet.CreateNote3p.note.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_268164A18(v7, &v6);
}

__n128 Snippet.CreateNote3p.note.setter(uint64_t a1)
{
  v3 = v1[1];
  v8[0] = *v1;
  v8[1] = v3;
  v4 = v1[3];
  v8[2] = v1[2];
  v8[3] = v4;
  sub_268164A50(v8);
  v5 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v7;
  return result;
}

uint64_t type metadata accessor for Snippet.CreateNote3p(uint64_t a1)
{
  result = qword_2802539E0;
  if (!qword_2802539E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.CreateNote3p.interaction.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Snippet.CreateNote3p(0) + 20);

  return sub_2681D62B8(a1, v3);
}

uint64_t Snippet.CreateNote3p.init(note:interaction:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  v5 = a1[3];
  a3[2] = a1[2];
  a3[3] = v5;
  v6 = a3 + *(type metadata accessor for Snippet.CreateNote3p(0) + 20);

  return sub_26835CF80(a2, v6);
}

uint64_t sub_268363EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_268363F8C(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t sub_268363FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268363EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268363FF4(uint64_t a1)
{
  v2 = sub_268364268();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268364030(uint64_t a1)
{
  v2 = sub_268364268();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.CreateNote3p.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802539C8, &qword_2683F48E8);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268364268();
  sub_2683D0718();
  v11 = *v3;
  v12 = v3[2];
  v25 = v3[1];
  v26 = v12;
  v13 = v3[2];
  v27 = v3[3];
  v20 = v11;
  v21 = v25;
  v14 = *v3;
  v22 = v13;
  v23 = v3[3];
  v24 = v14;
  v19[79] = 0;
  sub_268164A18(&v24, v19);
  sub_2681D6A64();
  sub_2683D0548();
  OUTLINED_FUNCTION_1_60();
  if (!v2)
  {
    type metadata accessor for Snippet.CreateNote3p(0);
    v18[15] = 1;
    type metadata accessor for Snippet.Interaction(0);
    OUTLINED_FUNCTION_0_69();
    sub_26836483C(v15, v16, &protocol conformance descriptor for Snippet.Interaction);
    sub_2683D0548();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_268364268()
{
  result = qword_2802539D0;
  if (!qword_2802539D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539D0);
  }

  return result;
}

uint64_t Snippet.CreateNote3p.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for Snippet.Interaction(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802539D8, &qword_2683F48F0);
  OUTLINED_FUNCTION_0_3();
  v31 = v9;
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  Note3p = type metadata accessor for Snippet.CreateNote3p(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_268364268();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v29 = v4;
  v39 = 0;
  v15 = sub_2681D715C();
  OUTLINED_FUNCTION_5_47(&type metadata for Snippet.Note, &v39, v16, v17, v15);
  v18 = v35;
  *v13 = v34;
  v13[1] = v18;
  v19 = v37;
  v13[2] = v36;
  v13[3] = v19;
  v38 = 1;
  OUTLINED_FUNCTION_0_69();
  v22 = sub_26836483C(v20, v21, &protocol conformance descriptor for Snippet.Interaction);
  OUTLINED_FUNCTION_5_47(v29, &v38, v23, v24, v22);
  v25 = OUTLINED_FUNCTION_4_49();
  v26(v25);
  sub_26835CF80(v7, v13 + *(Note3p + 20));
  sub_26836458C(v13, v30, type metadata accessor for Snippet.CreateNote3p);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_2683645EC(v13);
}

uint64_t sub_26836458C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2683645EC(uint64_t a1)
{
  Note3p = type metadata accessor for Snippet.CreateNote3p(0);
  (*(*(Note3p - 8) + 8))(a1, Note3p);
  return a1;
}

uint64_t static Snippet.createNote3p(note:record:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_26834A8F8(a1, v16);
  (*(v8 + 16))(v11, a2, v6);
  Note3p = type metadata accessor for Snippet.CreateNote3p(0);
  sub_268363B8C(v11, &qword_280251F28, &unk_2683E6AB0, (a3 + *(Note3p + 20)));
  v13 = v16[1];
  *a3 = v16[0];
  a3[1] = v13;
  v14 = v16[3];
  a3[2] = v16[2];
  a3[3] = v14;
  type metadata accessor for Snippet(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26836483C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2683648AC(uint64_t a1)
{
  result = type metadata accessor for Snippet.Interaction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14descr2878F8F29V12CreateNote3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268364A08()
{
  result = qword_2802539F0;
  if (!qword_2802539F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539F0);
  }

  return result;
}

unint64_t sub_268364A60()
{
  result = qword_2802539F8;
  if (!qword_2802539F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802539F8);
  }

  return result;
}

unint64_t sub_268364AB8()
{
  result = qword_280253A00;
  if (!qword_280253A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_60()
{
  v3 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v3;
  v4 = *(v0 + 48);
  *(v1 - 272) = *(v1 - 192);
  *(v1 - 256) = v4;

  return sub_268164A50(v1 - 304);
}

uint64_t OUTLINED_FUNCTION_5_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2683D04A8();
}

uint64_t sub_268364B90()
{
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268364C10(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle;
  swift_beginAccess();
  sub_26816349C(a1 + v3, v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
  LOBYTE(v3) = *(a1 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault);

  *(v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault) = v3;
  return v1;
}

uint64_t sub_268364C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = a1 == 0x6C7469547473696CLL && a2 == 0xE900000000000065;
  if (v10 || (sub_2683D0598() & 1) != 0)
  {
    sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle, v9);
    v11 = sub_2683CF168();
    if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
    {
      result = sub_26812E924(v9);
LABEL_8:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v11 - 8) + 32))(boxed_opaque_existential_0, v9, v11);
  }

  else
  {
    result = 0x6C75616665447369;
    if (a1 != 0x6C75616665447369 || a2 != 0xE900000000000074)
    {
      result = sub_2683D0598();
      if ((result & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v15;
  }

  return result;
}

uint64_t sub_268364E44(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268364E98(char a1)
{
  if (a1)
  {
    return 0x6C75616665447369;
  }

  else
  {
    return 0x6C7469547473696CLL;
  }
}

uint64_t sub_268364EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268364E44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268364F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268364E98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268364F5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268364E44(a1);
  *a2 = result;
  return result;
}

uint64_t sub_268364F84(uint64_t a1)
{
  v2 = sub_2683657F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268364FC0(uint64_t a1)
{
  v2 = sub_2683657F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268364FFC()
{
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268365090(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_268365134(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A48, &qword_2683F4BE0);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683657F4();
  sub_2683D0718();
  v12[15] = 0;
  sub_2683CF168();
  OUTLINED_FUNCTION_0_70();
  sub_2683657AC(v9, v10, MEMORY[0x277D55C50]);
  sub_2683D0508();
  if (!v1)
  {
    v12[14] = 1;
    sub_2683D0528();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2683652D0(void *a1)
{
  v2 = swift_allocObject();
  sub_2683653E0(a1);
  return v2;
}

void sub_268365348(uint64_t a1)
{
  sub_2681E12BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_2683653E0(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v15[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A38, &qword_2683F4BD8);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683657F4();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookReminderListConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2683CF168();
    v17 = 0;
    OUTLINED_FUNCTION_0_70();
    sub_2683657AC(v9, v10, MEMORY[0x277D55C60]);
    sub_2683D0468();
    sub_2681E1A1C(v7, v1 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_listTitle);
    v16 = 1;
    v12 = sub_2683D0488();
    v13 = OUTLINED_FUNCTION_0_53();
    v14(v13);
    *(v3 + OBJC_IVAR____TtC12SiriNotebook27NotebookReminderListConcept_isDefault) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2683656CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2683652D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2683657AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2683657F4()
{
  result = qword_280253A40;
  if (!qword_280253A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookReminderListConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268365928()
{
  result = qword_280253A50;
  if (!qword_280253A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A50);
  }

  return result;
}

unint64_t sub_268365980()
{
  result = qword_280253A58;
  if (!qword_280253A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A58);
  }

  return result;
}

unint64_t sub_2683659D8()
{
  result = qword_280253A60;
  if (!qword_280253A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A60);
  }

  return result;
}

uint64_t sub_268365A44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  return sub_2681C326C(0, v3, a1);
}

uint64_t sub_268365A8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);

  return sub_2681C326C(v4, v3, a1);
}

uint64_t sub_268365AE4()
{
  if (*(v0 + 16))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268365AF8()
{
  if (*(v0 + 32))
  {
    return 3;
  }

  return sub_26831F02C(v2);
}

uint64_t sub_268365B38()
{
  v1 = *(v0 + 8);
  if (sub_2683970D4(0, v1))
  {
    return 2;
  }

  if (sub_2683970D4(1, v1))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_268365B88()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  swift_retain_n();
  v1 = sub_2683CDA58();

  if (v1 || (, v2 = sub_2683CD9F8(), , v2))
  {
    v3 = 6;
  }

  else
  {

    v5 = sub_2683CDA28();

    if (!v5)
    {
      v3 = 0;
      goto LABEL_6;
    }

    v3 = 4;
  }

LABEL_6:

  return v3;
}

uint64_t sub_268365C40()
{
  if (*(v0 + 24))
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365C80()
{
  if (*(v0 + 8))
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365CC0()
{
  if (*v0)
  {
    v1 = sub_2683CDAA8();
  }

  else
  {
    v1 = 0;
  }

  return sub_26834871C(v1);
}

uint64_t sub_268365D00@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (!result)
  {
    v12 = 0;
    v7 = 0;
    v6 = 0;
    v13 = 0;
    v14 = 0;
LABEL_18:
    *a3 = v4;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
    *(a3 + 48) = a2 & 1;
    return result;
  }

  swift_retain_n();
  v6 = sub_2683CD7A8();

  v7 = sub_2683CD7C8();

  v8 = sub_2683CD7D8();

  if (!v8)
  {
    v12 = 0;
LABEL_17:

    v13 = sub_2683CD798();

    v14 = sub_2683CD4E8();

    goto LABEL_18;
  }

  v15 = a2;
  swift_getKeyPath();
  v16 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  result = sub_2683ABE58();
  v9 = result;
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      a2 = v15;
      v12 = v16;
      goto LABEL_17;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v10;
    if (v17)
    {
      MEMORY[0x26D616770](result);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v16 = v18;
      v10 = v11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_268365F44(uint64_t a1)
{
  if (!v1[1])
  {
    goto LABEL_12;
  }

  v2 = sub_2683CDA98();
  if (v3)
  {
    return v2;
  }

  if (!sub_2683CDAA8() || (v4 = sub_2683CDE18(), v6 = v5, , !v6))
  {
LABEL_12:
    if (*v1)
    {
      v4 = sub_2683CD7B8();
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

uint64_t sub_268365FE4()
{
  if (*v0)
  {
    return sub_2683CD778();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268366018(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return 3;
  }

  sub_2683CDA98();
  if (!v2)
  {
    if (!sub_2683CDAA8())
    {
      return 3;
    }

    sub_2683CDE18();
    v5 = v4;

    if (!v5)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_26836607C(uint64_t a1)
{
  if (*v1)
  {
    v2 = sub_2683CD788();
  }

  else
  {
    v2 = 0;
  }

  return sub_2681BA404(v2);
}

uint64_t sub_268366228@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result)
  {

    v6 = sub_2683CDA88();
    v7 = sub_2683CD4E8();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2683662A0(uint64_t a1)
{
  if (!*v1)
  {
    return 0;
  }

  v2 = sub_2683CDA98();
  if (!v3)
  {
    if (sub_2683CDAA8())
    {
      v4 = sub_2683CDE18();

      return v4;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_268366314()
{
  if (*v0)
  {
    v1 = sub_268161CE4();
    if (sub_2683ABE58())
    {
      sub_2683ABE60();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D616C90](0, v1);
      }

      else
      {
      }

      v2 = sub_2683CD788();

      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:

  return sub_2681BA404(v2);
}

uint64_t sub_2683664F8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result)
  {

    v6 = sub_2683CD678();
    v7 = sub_2683CD4E8();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = v7;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t sub_268366574(uint64_t (*a1)(void))
{
  if (*v1)
  {
    return a1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268366738(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26836678C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_268366814(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_268366868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2683668D8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26836692C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268366990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2683669B8);
}

uint64_t sub_2683669B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v6 = sub_268175270(0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, v5, v3);
  v0[8] = v6;
  v7 = v6;
  sub_268367A74(v4, v2, v7);
  sub_268129504(0, &qword_280253A68, 0x277D473D0);
  v8 = sub_268366FBC(v7, 0, 0);
  v0[9] = v8;
  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = sub_268129504(0, &qword_280253A70, 0x277D473D8);
  *v11 = v0;
  v11[1] = sub_268366B60;

  return MEMORY[0x2821BB670](v8, 1, v12, v9, v10);
}

uint64_t sub_268366B60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_268366DEC;
  }

  else
  {
    v4 = sub_268366C74;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268366C74()
{
  v1 = *(v0 + 88);
  v2 = sub_268367178();

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = *(v0 + 88);
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      v7 = sub_2683674EC(v3, *(v0 + 24), *(v0 + 32));
      goto LABEL_10;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v8 = sub_2683CF7E8();
  __swift_project_value_buffer(v8, qword_28027C958);
  v2 = sub_2683CF7C8();
  v9 = sub_2683CFE78();
  v10 = os_log_type_enabled(v2, v9);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  if (v10)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2680EB000, v2, v9, "[AnnounceReminderProvider] Couldn't decode intent response.", v11, 2u);
    OUTLINED_FUNCTION_38();
  }

  v7 = 0;
LABEL_10:

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_268366DEC()
{
  v19 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[12];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v9 = v0[8];
  v8 = v0[9];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v0[2] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v13 = sub_2683CFAD8();
    v15 = sub_2681610A0(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2680EB000, v4, v5, "[AnnounceReminderProvider] Got error submitting SearchForNotebookItemsIntent: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v16 = v0[1];

  return v16(0);
}

id sub_268366FBC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CB598();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2683CB588();
  v10 = sub_2683CB548();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  sub_268321688(v10, v12, v9);
  if (a3)
  {
    v13 = sub_2683CFA68();
  }

  else
  {
    v13 = 0;
  }

  [v9 setAppId_];

  sub_268129504(0, &qword_280253368, 0x277D47418);
  v14 = a1;
  v15 = sub_2681C6E68(v14);
  [v9 setIntent_];

  return v9;
}

id sub_268367178()
{
  v1 = [v0 intentResponse];
  if (!v1)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    v2 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2680EB000, v2, v10, "Intent response was nil on SAIntentGroupHandleIntentCompleted", v11, 2u);
      MEMORY[0x26D617A40](v11, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_2683677AC();
  if (v4 >> 60 == 15)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2680EB000, v6, v7, "Unable to get response data from SAIntentGroupHandleIntentCompleted", v8, 2u);
      MEMORY[0x26D617A40](v8, -1, -1);
    }

LABEL_12:
    v12 = 0;
LABEL_19:

    return v12;
  }

  v13 = v3;
  v14 = v4;
  result = sub_26812E98C(v2, &selRef_typeName);
  if (v16)
  {
    v17 = result;
    v18 = v16;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);

    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_2681610A0(v17, v18, &v26);
      _os_log_impl(&dword_2680EB000, v20, v21, "Creating Intent response for typename: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D617A40](v23, -1, -1);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    v24 = sub_2683CFA68();

    v25 = sub_2683CB448();
    v12 = INIntentResponseCreate();

    sub_26814F5CC(v13, v14);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_2683674EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2682E5FA4(a1);
  if (v3)
  {
    v4 = v3;
    v5 = 0xED00002D4449556DLL;
    v6 = 0;
    v31 = v3 & 0xC000000000000001;
    v32 = sub_2683ABE58();
    v29 = v4;
    v30 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v32 == v6)
      {

        goto LABEL_23;
      }

      if (v31)
      {
        v7 = MEMORY[0x26D616C90](v6, v4);
      }

      else
      {
        if (v6 >= *(v30 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = v5;
      v10 = sub_26834AFCC(v7);
      v12 = v11;
      OUTLINED_FUNCTION_1_61();
      v13 = a3;
      v14 = a2;
      v15 = sub_2683CFBD8();

      if (v15)
      {
        OUTLINED_FUNCTION_1_61();
        v16 = sub_2683CFB58();
        v17 = sub_2681E1D8C(v16);
        v14 = MEMORY[0x26D616610](v17);
        v13 = v18;
      }

      v5 = v9;
      if (sub_2683CFBD8())
      {
        v19 = sub_2683CFB58();
        v20 = sub_2681E1D8C(v19);
        v14 = MEMORY[0x26D616610](v20);
        v13 = v21;
        v5 = v9;
      }

      if (v12)
      {
        if (v10 == v14 && v12 == v13)
        {

LABEL_28:

          return v8;
        }

        v23 = sub_2683D0598();

        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      ++v6;
      v4 = v29;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_23:
  if (qword_28024C8E0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v24 = sub_2683CF7E8();
  __swift_project_value_buffer(v24, qword_28027C958);
  v25 = sub_2683CF7C8();
  v26 = sub_2683CFE78();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2680EB000, v25, v26, "[AnnounceReminderProvider] Intent response did not have requested reminder.", v27, 2u);
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

id sub_2683677AC()
{
  v1 = sub_2683CFAA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 intentResponse];
  if (result)
  {
    v6 = sub_2681C7074(result);
    if (v7 >> 60 == 15)
    {
      sub_26812E98C(v0, &selRef_jsonEncodedIntentResponse);
      if (v8)
      {
        if (qword_28024C8E0 != -1)
        {
          swift_once();
        }

        v9 = sub_2683CF7E8();
        __swift_project_value_buffer(v9, qword_28027C958);
        v10 = sub_2683CF7C8();
        v11 = sub_2683CFE98();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2680EB000, v10, v11, "Decoding intentResponse from json data", v12, 2u);
          MEMORY[0x26D617A40](v12, -1, -1);
        }

        sub_2683CFA98();
        v13 = sub_2683CFA88();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v13 = v6;
      if (qword_28024C8E0 != -1)
      {
        swift_once();
      }

      v14 = sub_2683CF7E8();
      __swift_project_value_buffer(v14, qword_28027C958);
      v15 = sub_2683CF7C8();
      v16 = sub_2683CFE98();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2680EB000, v15, v16, "Decoding intentResponse from data", v17, 2u);
        MEMORY[0x26D617A40](v17, -1, -1);
      }
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_268367A74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 _setLaunchId_];
}

uint64_t type metadata accessor for NotebookCommonCATsSimple(uint64_t a1)
{
  result = qword_280253A78;
  if (!qword_280253A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268367B88()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_268129B00;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(33);

  return v4(v3);
}

uint64_t sub_268367C2C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(45);

  return v4(v3);
}

uint64_t sub_268367CD0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(46);

  return v4(v3);
}

uint64_t sub_268367D74()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(38);

  return v4(v3);
}

uint64_t sub_268367E18()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_2681DDBCC;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(44);

  return v4(v3);
}

uint64_t sub_268367F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v11 - 8);
  sub_268163198(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_268163208(a1);
  return v13;
}

uint64_t sub_26836806C(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

void sub_268368174()
{
  OUTLINED_FUNCTION_30_0();
  v30 = v0;
  v1 = sub_2683CCE78();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A88, &qword_2683F5070);
  v12 = OUTLINED_FUNCTION_23(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = sub_2683CCDC8();
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_3();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v29 - v23;
  sub_2682D048C(v14);
  OUTLINED_FUNCTION_3_5(v14);
  if (v25)
  {
    sub_26812C310(v14, &qword_280253A88, &qword_2683F5070);
    v27 = 1;
    v26 = v30;
  }

  else
  {
    (*(v17 + 32))(v24, v14, v15);
    sub_2683CCE68();
    (*(v17 + 16))(v21, v24, v15);
    sub_2683CCE58();
    v26 = v30;
    sub_2683CCEF8();
    (*(v3 + 16))(v7, v10, v1);
    sub_2683CCEE8();
    (*(v3 + 8))(v10, v1);
    (*(v17 + 8))(v24, v15);
    v27 = 0;
  }

  v28 = sub_2683CCF08();
  __swift_storeEnumTagSinglePayload(v26, v27, 1, v28);
  OUTLINED_FUNCTION_29_0();
}

void sub_268368414()
{
  OUTLINED_FUNCTION_30_0();
  v57 = v0;
  v55 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v53 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v50 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A90, &qword_2683F5078);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  v49 = &v46 - v7;
  OUTLINED_FUNCTION_3_8();
  sub_2683CCDB8();
  OUTLINED_FUNCTION_0_3();
  v47 = v9;
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v52 = v11 - v10;
  OUTLINED_FUNCTION_3_8();
  v56 = sub_2683CCF08();
  OUTLINED_FUNCTION_0_3();
  v54 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = sub_2683CCE08();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_3();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v46 - v25;
  v27 = sub_2683CCF58();
  v28 = OUTLINED_FUNCTION_23(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_3();
  v29 = sub_2683CCE48();
  OUTLINED_FUNCTION_0_3();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19_3();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v46 - v37;
  sub_2683CCE38();
  sub_2683CCF48();
  sub_2683CCE28();
  sub_2683CCDF8();
  (*(v31 + 16))(v35, v38, v29);
  sub_2683CCDE8();
  sub_2683CCEF8();
  v39 = *(v19 + 16);
  v51 = v17;
  v39(v23, v26, v17);
  v40 = v48;
  sub_2683CCED8();
  v41 = v49;
  v42 = v50;
  sub_2683CB588();
  sub_2683CCF68();
  (*(v53 + 8))(v42, v55);
  OUTLINED_FUNCTION_3_5(v41);
  if (v43)
  {
    sub_2683CCDA8();
    OUTLINED_FUNCTION_3_5(v41);
    if (!v43)
    {
      sub_26812C310(v41, &qword_280253A90, &qword_2683F5078);
    }
  }

  else
  {
    (*(v47 + 32))(v52, v41, v40);
  }

  sub_2683CCEC8();
  (*(v19 + 8))(v26, v51);
  (*(v31 + 8))(v38, v29);
  v45 = v56;
  v44 = v57;
  (*(v54 + 32))(v57, v16, v56);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  OUTLINED_FUNCTION_29_0();
}

void sub_268368898()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v54 = v2;
  sub_2683CCF38();
  OUTLINED_FUNCTION_0_3();
  v52 = v4;
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_19_3();
  v51 = v5 - v6;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v50 = &v50 - v8;
  OUTLINED_FUNCTION_3_8();
  v72 = sub_2683CCE48();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_3();
  v71 = v12 - v13;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v70 = sub_2683CCEA8();
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_3();
  v64 = v20 - v21;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253A88, &qword_2683F5070);
  v26 = OUTLINED_FUNCTION_23(v25);
  MEMORY[0x28223BE20](v26);
  v68 = &v50 - v27;
  OUTLINED_FUNCTION_3_8();
  v28 = sub_2683CCDC8();
  OUTLINED_FUNCTION_0_3();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_3();
  v63 = v32 - v33;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v50 - v35;
  v69 = sub_2683ABE58();
  v37 = 0;
  v66 = v1;
  v67 = v1 & 0xC000000000000001;
  v65 = v1 & 0xFFFFFFFFFFFFFF8;
  v61 = (v30 + 16);
  v62 = (v30 + 32);
  v59 = (v10 + 16);
  v60 = (v18 + 16);
  v57 = (v18 + 8);
  v58 = v10 + 8;
  v55 = v10 + 32;
  v56 = (v30 + 8);
  v38 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v69 == v37)
    {
      v44 = v50;
      sub_2683CCF28();
      sub_2683CCF18();
      v45 = v54;
      sub_2683CCEF8();
      v47 = v52;
      v46 = v53;
      (*(v52 + 16))(v51, v44, v53);
      sub_2683CCEB8();
      (*(v47 + 8))(v44, v46);
      v48 = 0;
LABEL_16:
      v49 = sub_2683CCF08();
      __swift_storeEnumTagSinglePayload(v45, v48, 1, v49);
      OUTLINED_FUNCTION_29_0();
      return;
    }

    if (v67)
    {
      MEMORY[0x26D616C90](v37, v66);
      v39 = v68;
    }

    else
    {
      v39 = v68;
      if (v37 >= *(v65 + 16))
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    sub_2682D048C(v39);
    if (__swift_getEnumTagSinglePayload(v39, 1, v28) == 1)
    {

      sub_26812C310(v39, &qword_280253A88, &qword_2683F5070);
      v48 = 1;
      v45 = v54;
      goto LABEL_16;
    }

    (*v62)(v36, v39, v28);
    sub_2683CCE98();
    (*v61)(v63, v36, v28);
    sub_2683CCE88();
    sub_2683CCE38();
    (*v60)(v64, v24, v70);
    sub_2683CCE18();
    (*v59)(v71, v16, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E4820();
      v38 = v42;
    }

    v40 = *(v38 + 16);
    if (v40 >= *(v38 + 24) >> 1)
    {
      sub_2682E4820();
      v38 = v43;
    }

    v41 = v72;
    (*(v10 + 8))(v16, v72);
    (*v57)(v24, v70);
    (*v56)(v36, v28);
    *(v38 + 16) = v40 + 1;
    (*(v10 + 32))(v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v40, v71, v41);
    ++v37;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_268368E80(char a1)
{
  switch(a1)
  {
    case 1:
      v8 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v9 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_10;
    case 2:
      v13 = sub_2683CE008();
      OUTLINED_FUNCTION_42_3(v13);
      sub_2683CDFF8();
      OUTLINED_FUNCTION_24_4();
      v14 = sub_2683CD9C8();
      OUTLINED_FUNCTION_42_3(v14);
      sub_2683CD9B8();
      goto LABEL_10;
    case 3:
      v5 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v6 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v7 = sub_2683CE1A8();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CE198();
      sub_2683CDCD8();
      goto LABEL_9;
    case 4:
    case 5:
      v1 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v1);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v2 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v2);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v3 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v3);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v4 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CE158();
      sub_2683CDF78();
      goto LABEL_8;
    case 6:
      v15 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v15);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v16 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v16);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v17 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v17);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v18 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v18);
      sub_2683CDCA8();
      sub_2683CDF68();
LABEL_8:

      OUTLINED_FUNCTION_15_33(v19, MEMORY[0x277D5F288]);
      goto LABEL_9;
    case 7:
      v10 = sub_2683CE1C8();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CE1B8();
      OUTLINED_FUNCTION_24_4();
      v11 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v12 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v12);
      sub_2683CDCA8();
      sub_2683CDCE8();
LABEL_9:

LABEL_10:
      sub_2683CDE78();

      break;
    default:
      return 0;
  }

  return 0;
}

uint64_t sub_2683690E4(char a1)
{
  switch(a1)
  {
    case 2:
      v7 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v8 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_7;
    case 3:
    case 4:
      v1 = sub_2683CE1F8();
      OUTLINED_FUNCTION_42_3(v1);
      sub_2683CE1E8();
      OUTLINED_FUNCTION_24_4();
      v2 = sub_2683CDFE8();
      OUTLINED_FUNCTION_42_3(v2);
      sub_2683CDFD8();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDFC8();
      OUTLINED_FUNCTION_8_37();
      sub_2683CE188();
      goto LABEL_8;
    case 5:
      v9 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v10 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v11 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v12 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v12);
      sub_2683CDCA8();
      sub_2683CDF68();
      goto LABEL_6;
    case 6:
      v3 = sub_2683CE078();
      OUTLINED_FUNCTION_42_3(v3);
      sub_2683CE068();
      OUTLINED_FUNCTION_24_4();
      v4 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v5 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v6 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CE158();
      sub_2683CDF78();
LABEL_6:

      OUTLINED_FUNCTION_15_33(v13, MEMORY[0x277D5F288]);

LABEL_7:
      OUTLINED_FUNCTION_8_37();
      sub_2683CDBF8();
LABEL_8:

      break;
    default:
      return 0;
  }

  return 0;
}

uint64_t sub_2683692AC(char a1)
{
  v3 = sub_2683CE098();
  OUTLINED_FUNCTION_42_3(v3);
  sub_2683CE088();
  OUTLINED_FUNCTION_24_4();
  v4 = sub_2683CDD18();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CDD08();
  OUTLINED_FUNCTION_26_7();
  if (a1)
  {
    sub_2683CDCF8();
  }

  else
  {
    v5 = sub_2683CDFA8();
    OUTLINED_FUNCTION_42_3(v5);
    sub_2683CDF98();
    OUTLINED_FUNCTION_22_17();
    v6 = sub_2683CDCB8();
    OUTLINED_FUNCTION_42_3(v6);
    sub_2683CDCA8();
    sub_2683CDF68();

    OUTLINED_FUNCTION_15_33(v7, MEMORY[0x277D5F288]);
  }

  OUTLINED_FUNCTION_8_37();
  sub_2683CE178();

  return v1;
}

uint64_t sub_268369384(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2683CDE38();
  OUTLINED_FUNCTION_42_3(v3);
  sub_2683CDE28();
  OUTLINED_FUNCTION_24_4();
  v4 = sub_2683CD9C8();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CD9B8();
  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_2_56();
      sub_2683CD988();
    }

    else
    {
      v5 = sub_2683CDEC8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDEB8();
      OUTLINED_FUNCTION_22_17();
      sub_2683CDEA8();

      sub_2683CD9A8();
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_56();
    sub_2683CD998();
  }

  OUTLINED_FUNCTION_8_37();
  sub_2683CDBF8();

  return v1;
}

uint64_t sub_26836945C(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_26_7();
  v2 = sub_2683CDD18();
  OUTLINED_FUNCTION_42_3(v2);
  v3 = sub_2683CDD08();

  sub_2683CDCF8();

  return v3;
}

uint64_t sub_2683694CC(char a1)
{
  v2 = sub_2683CE0B8();
  OUTLINED_FUNCTION_42_3(v2);
  v3 = sub_2683CE0A8();
  switch(a1)
  {
    case 1:
      v14 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v14);
      sub_2683CDD08();
      OUTLINED_FUNCTION_2_56();
      sub_2683CDCF8();
      goto LABEL_10;
    case 2:
      v7 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v7);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v8 = sub_2683CE1A8();
      OUTLINED_FUNCTION_42_3(v8);
      sub_2683CE198();
      sub_2683CDCD8();
      goto LABEL_7;
    case 3:
    case 6:

      return 0;
    case 4:
      v9 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v9);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v10 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v10);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v11 = sub_2683CDCB8();
      OUTLINED_FUNCTION_42_3(v11);
      sub_2683CDCA8();
      sub_2683CDF68();
      goto LABEL_6;
    case 5:
      v4 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v4);
      sub_2683CDD08();
      OUTLINED_FUNCTION_26_7();
      v5 = sub_2683CDFA8();
      OUTLINED_FUNCTION_42_3(v5);
      sub_2683CDF98();
      OUTLINED_FUNCTION_22_17();
      v6 = sub_2683CE168();
      OUTLINED_FUNCTION_42_3(v6);
      sub_2683CE158();
      sub_2683CDF78();
LABEL_6:

      OUTLINED_FUNCTION_15_33(v12, MEMORY[0x277D5F288]);
LABEL_7:

LABEL_10:
      OUTLINED_FUNCTION_8_37();
      sub_2683CE188();
      break;
    default:
      v13 = sub_2683CDD18();
      OUTLINED_FUNCTION_42_3(v13);
      sub_2683CDD08();
      sub_2683CE178();
      break;
  }

  return v3;
}

void sub_2683696A4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v2 = sub_2683CD1F8();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = sub_2683CDFE8();
  OUTLINED_FUNCTION_42_3(v9);
  sub_2683CDFD8();

  sub_2683CDFC8();

  if (v1)
  {

    sub_2683CD1C8();
    if (sub_2683CDFB8())
    {
      sub_2683CD198();
    }

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268369814(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_17();
  v4 = sub_2683CDFA8();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CDF98();
  OUTLINED_FUNCTION_26_7();
  v5 = sub_2683CE168();
  OUTLINED_FUNCTION_42_3(v5);
  sub_2683CE158();
  if (a2)
  {
    sub_2683CE148();
  }

  sub_2683CDF78();

  return v2;
}

uint64_t sub_2683698AC(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_26_7();
  v3 = sub_2683CDFA8();
  OUTLINED_FUNCTION_42_3(v3);
  sub_2683CDF98();
  OUTLINED_FUNCTION_22_17();
  v4 = sub_2683CDB08();
  OUTLINED_FUNCTION_42_3(v4);
  sub_2683CDAF8();

  sub_2683CDAE8();

  sub_2683CDF88();

  return v2;
}

uint64_t OUTLINED_FUNCTION_15_33(uint64_t a1, uint64_t a2)
{

  return sub_2683CDCC8();
}

uint64_t sub_268369994()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  sub_2683CCB88();
  v7 = sub_2681D3080(v4, v5, v6);

  (*(v2 + 8))(v4, v1);
  if (v7 - 1 < 2)
  {
    return sub_2683CC2A8();
  }

  if (v7)
  {
    return sub_2683CC2B8();
  }

  return sub_2683CC298();
}

uint64_t sub_268369ACC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  v1[5] = swift_task_alloc();
  v4 = sub_2683CCC18();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268369BC4);
}

uint64_t sub_268369BC4()
{
  v28 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  sub_2683CCB88();
  v7 = sub_2681D3080(v1, v5, v6);

  (*(v2 + 8))(v1, v3);
  if (v7 == 3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE88();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2680EB000, v9, v10, "[NotebookContinueReadingPromptStrategy] Action for input returned handled, the parsed task is not confirmation.", v11, 2u);
      MEMORY[0x26D617A40](v11, -1, -1);
    }

LABEL_20:
    sub_26812C6B8();
    swift_allocError();
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    goto LABEL_21;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    if (v7)
    {
      if (v7 == 1)
      {
        v17 = 0xE400000000000000;
        v18 = 1886352499;
      }

      else
      {
        v17 = 0xE800000000000000;
        v18 = 0x65756E69746E6F63;
      }
    }

    else
    {
      v17 = 0xE600000000000000;
      v18 = 0x6C65636E6163;
    }

    v19 = sub_2681610A0(v18, v17, &v27);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2680EB000, v13, v14, "[NotebookContinueReadingPromptStrategy] Parsed continue reading response as %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D617A40](v16, -1, -1);
    MEMORY[0x26D617A40](v15, -1, -1);
  }

  if (!v7)
  {
    goto LABEL_20;
  }

  v20 = MEMORY[0x277D5BED0];
  if (v7 != 1)
  {
    v20 = MEMORY[0x277D5BED8];
  }

  v21 = v0[5];
  v22 = *v20;
  v23 = sub_2683CC758();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2683CCB28();

  OUTLINED_FUNCTION_40();
LABEL_21:

  return v24();
}