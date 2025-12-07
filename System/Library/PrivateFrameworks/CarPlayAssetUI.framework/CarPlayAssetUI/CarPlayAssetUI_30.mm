unint64_t sub_242ED42EC()
{
  result = sub_242CE6EE4(MEMORY[0x277D84F90]);
  qword_27ECFCA08 = result;
  return result;
}

uint64_t (*static Theme.LayoutStyle.overridesModularLightMidnight.modify(uint64_t a1))()
{
  if (qword_27ECEF840 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t ProgressBarType.description.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  v1 = sub_242D4926C(__dst);
  sub_242C5904C(__dst);
  result = 0x74656D7265776F50;
  switch(v1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0x5072614269676944;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x5272614269676944;
      break;
    case 6:
      return result;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6B72616D6B636954;
      break;
    case 9:
      result = 0x6562614C6B636954;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

void *ProgressBarType.assets.getter()
{
  memcpy(__dst, v0, 0x164uLL);
  switch(sub_242D4926C(__dst))
  {
    case 6u:
      v3 = sub_242C5904C(__dst);
      memcpy(v4, v3, sizeof(v4));
      sub_242D49294(v4);
      sub_242C59070(v4);
      goto LABEL_3;
    case 8u:
    case 9u:
    case 0xAu:
      v2 = sub_242C5904C(__dst);
      *&v4[176] = v2[11];
      *&v4[192] = v2[12];
      *&v4[208] = v2[13];
      *&v4[224] = v2[14];
      *&v4[112] = v2[7];
      *&v4[128] = v2[8];
      *&v4[144] = v2[9];
      *&v4[160] = v2[10];
      *&v4[48] = v2[3];
      *&v4[64] = v2[4];
      *&v4[80] = v2[5];
      *&v4[96] = v2[6];
      *v4 = *v2;
      *&v4[16] = v2[1];
      *&v4[32] = v2[2];
      result = Instrument.GaugeStyle.TicksConfiguration.assets.getter();
      break;
    default:
      sub_242C5904C(__dst);
LABEL_3:
      result = MEMORY[0x277D84F90];
      break;
  }

  return result;
}

void *ProgressBarType.restoreAssets(from:)()
{
  memcpy(__dst, v0, 0x164uLL);
  memcpy(v54, v0, 0x164uLL);
  switch(sub_242D4926C(v54))
  {
    case 1u:
      sub_242C5904C(v54);
      memcpy(v51, v0, 0x164uLL);
      memcpy(v52, __dst, 0x164uLL);
      v34 = sub_242C5904C(v52);
      sub_242DE5018(*(v34 + 56), *(v34 + 64), *(v34 + 72), *(v34 + 80));

      goto LABEL_8;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      return sub_242C5904C(v54);
    case 6u:
      v16 = sub_242C5904C(v54);
      memcpy(__src, __dst, 0x164uLL);
      v17 = sub_242C5904C(__src);
      memcpy(v51, v0, 0x164uLL);
      sub_242CA321C(v17, v52, &qword_27ECFCA18, &qword_242F4AE18);
      sub_242D492A0(v51);
      memcpy(v52, v16, 0x164uLL);
      sub_242D49294(v52);
      sub_242C59070(v52);
      memcpy(v49, v16, 0x164uLL);
      sub_242D7CF24(v49);
      v18 = v49;
      return memcpy(v0, v18, 0x164uLL);
    case 8u:
      v19 = sub_242C5904C(v54);
      memcpy(v51, __dst, 0x164uLL);
      v20 = sub_242C5904C(v51);
      memcpy(v52, v0, 0x164uLL);
      sub_242CA321C(v20, __src, &qword_27ECFCA10, &qword_242F4AE10);
      sub_242D492A0(v52);
      v21 = *v19;
      v22 = *(v19 + 16);
      v23 = *(v19 + 48);
      __src[2] = *(v19 + 32);
      __src[3] = v23;
      __src[0] = v21;
      __src[1] = v22;
      v24 = *(v19 + 64);
      v25 = *(v19 + 80);
      v26 = *(v19 + 112);
      __src[6] = *(v19 + 96);
      __src[7] = v26;
      __src[4] = v24;
      __src[5] = v25;
      v27 = *(v19 + 128);
      v28 = *(v19 + 144);
      v29 = *(v19 + 176);
      __src[10] = *(v19 + 160);
      __src[11] = v29;
      __src[8] = v27;
      __src[9] = v28;
      v30 = *(v19 + 192);
      v31 = *(v19 + 208);
      v32 = *(v19 + 224);
      *(&__src[14] + 15) = *(v19 + 239);
      __src[13] = v31;
      __src[14] = v32;
      __src[12] = v30;
      sub_242D7CF00(__src);
      goto LABEL_10;
    case 9u:
      v2 = sub_242C5904C(v54);
      memcpy(v51, __dst, 0x164uLL);
      v3 = sub_242C5904C(v51);
      memcpy(v52, v0, 0x164uLL);
      sub_242CA321C(v3, __src, &qword_27ECFCA10, &qword_242F4AE10);
      sub_242D492A0(v52);
      v4 = *v2;
      v5 = *(v2 + 16);
      v6 = *(v2 + 48);
      __src[2] = *(v2 + 32);
      __src[3] = v6;
      __src[0] = v4;
      __src[1] = v5;
      v7 = *(v2 + 64);
      v8 = *(v2 + 80);
      v9 = *(v2 + 112);
      __src[6] = *(v2 + 96);
      __src[7] = v9;
      __src[4] = v7;
      __src[5] = v8;
      v10 = *(v2 + 128);
      v11 = *(v2 + 144);
      v12 = *(v2 + 176);
      __src[10] = *(v2 + 160);
      __src[11] = v12;
      __src[8] = v10;
      __src[9] = v11;
      v13 = *(v2 + 192);
      v14 = *(v2 + 208);
      v15 = *(v2 + 224);
      *(&__src[14] + 15) = *(v2 + 239);
      __src[13] = v14;
      __src[14] = v15;
      __src[12] = v13;
      sub_242D7CED8(__src);
      goto LABEL_10;
    case 0xAu:
      v35 = sub_242C5904C(v54);
      memcpy(v51, __dst, 0x164uLL);
      v36 = sub_242C5904C(v51);
      memcpy(v52, v0, 0x164uLL);
      sub_242CA321C(v36, __src, &qword_27ECFCA10, &qword_242F4AE10);
      sub_242D492A0(v52);
      v37 = *v35;
      v38 = *(v35 + 16);
      v39 = *(v35 + 48);
      __src[2] = *(v35 + 32);
      __src[3] = v39;
      __src[0] = v37;
      __src[1] = v38;
      v40 = *(v35 + 64);
      v41 = *(v35 + 80);
      v42 = *(v35 + 112);
      __src[6] = *(v35 + 96);
      __src[7] = v42;
      __src[4] = v40;
      __src[5] = v41;
      v43 = *(v35 + 128);
      v44 = *(v35 + 144);
      v45 = *(v35 + 176);
      __src[10] = *(v35 + 160);
      __src[11] = v45;
      __src[8] = v43;
      __src[9] = v44;
      v46 = *(v35 + 192);
      v47 = *(v35 + 208);
      v48 = *(v35 + 224);
      *(&__src[14] + 15) = *(v35 + 239);
      __src[13] = v47;
      __src[14] = v48;
      __src[12] = v46;
      sub_242D7CEB0(__src);
LABEL_10:
      v18 = __src;
      break;
    default:
      sub_242C5904C(v54);
      memcpy(v51, v0, 0x164uLL);
      memcpy(v52, __dst, 0x164uLL);
      v33 = sub_242C5904C(v52);
      sub_242CA321C(v33, __src, &qword_27ECFCA20, &qword_242F4AE20);
LABEL_8:
      sub_242D492A0(v51);
      v18 = __dst;
      break;
  }

  return memcpy(v0, v18, 0x164uLL);
}

uint64_t sub_242ED4B14(char a1)
{
  result = 0x656D6F6465657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      v3 = 0x6D6F68636174;
      goto LABEL_8;
    case 4:
    case 5:
    case 27:
      result = 0xD000000000000019;
      break;
    case 6:
    case 7:
    case 14:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x7546656772616863;
      break;
    case 9:
    case 16:
    case 25:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x696666456C657566;
      break;
    case 12:
      result = 0x74617265706D6574;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 15:
      v3 = 0x6D7265776F70;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7465000000000000;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 19:
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x6D694C6465657073;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6F43657369757263;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 28:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_242ED4E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE23D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED4E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE23D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED4E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2380(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED4ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2380(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE208C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED4F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE208C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED4F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1FE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED4FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1FE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5004@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EE6A30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242ED5038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1804(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1804(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED50B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1954(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED50EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1954(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE19A8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE19A8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED51A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1F3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED51DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1F3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1E94(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1E94(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE18AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED52CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE18AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1858(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1858(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1CF0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED53BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1CF0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED53F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1C9C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1C9C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1C48(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED54AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1C48(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED54E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1BF4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1BF4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1BA0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1BA0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED55D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1B4C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1B4C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1AF8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1AF8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED56C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1900(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1900(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1AA4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1AA4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED57B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1A50(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1A50(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE22D8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE22D8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED58A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2284(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED58E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2284(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2188(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2188(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2230(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED59D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2230(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE20E0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE20E0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE21DC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE21DC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1E40(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1E40(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242ED5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1DEC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1DEC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242ED5BF0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242ED5C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1D44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242ED5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE1D44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ProgressBarType.ProgressDataSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA28, &qword_242F4AE28);
  v366 = *(v3 - 8);
  v367 = v3;
  MEMORY[0x28223BE20](v3);
  v365 = &v293 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA30, &qword_242F4AE30);
  v363 = *(v5 - 8);
  v364 = v5;
  MEMORY[0x28223BE20](v5);
  v362 = &v293 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA38, &qword_242F4AE38);
  v360 = *(v7 - 8);
  v361 = v7;
  MEMORY[0x28223BE20](v7);
  v359 = &v293 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA40, &qword_242F4AE40);
  v357 = *(v9 - 8);
  v358 = v9;
  MEMORY[0x28223BE20](v9);
  v356 = &v293 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA48, &qword_242F4AE48);
  v354 = *(v11 - 8);
  v355 = v11;
  MEMORY[0x28223BE20](v11);
  v353 = &v293 - v12;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA50, &qword_242F4AE50);
  v351[1] = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v351[0] = &v293 - v13;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA58, &qword_242F4AE58);
  v349[1] = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v349[0] = &v293 - v14;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA60, &qword_242F4AE60);
  v347[1] = *(v348 - 8);
  MEMORY[0x28223BE20](v348);
  v347[0] = &v293 - v15;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA68, &qword_242F4AE68);
  v345[1] = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v345[0] = &v293 - v16;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA70, &qword_242F4AE70);
  v343[1] = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v343[0] = &v293 - v17;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA78, &qword_242F4AE78);
  v341[1] = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v339 = &v293 - v18;
  v341[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA80, &qword_242F4AE80);
  v340 = *(v341[0] - 8);
  MEMORY[0x28223BE20](v341[0]);
  v338 = &v293 - v19;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA88, &qword_242F4AE88);
  v336[1] = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v336[0] = &v293 - v20;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA90, &qword_242F4AE90);
  v334[1] = *(v335 - 8);
  MEMORY[0x28223BE20](v335);
  v334[0] = &v293 - v21;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCA98, &qword_242F4AE98);
  v332[1] = *(v333 - 8);
  MEMORY[0x28223BE20](v333);
  v332[0] = &v293 - v22;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAA0, &qword_242F4AEA0);
  v330[1] = *(v331 - 8);
  MEMORY[0x28223BE20](v331);
  v330[0] = &v293 - v23;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAA8, &qword_242F4AEA8);
  v328[1] = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v328[0] = &v293 - v24;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAB0, &qword_242F4AEB0);
  v326 = *(v327 - 8);
  MEMORY[0x28223BE20](v327);
  v325 = &v293 - v25;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAB8, &qword_242F4AEB8);
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v322 = &v293 - v26;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAC0, &qword_242F4AEC0);
  v320 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v319 = &v293 - v27;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAC8, &qword_242F4AEC8);
  v317 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v316 = &v293 - v28;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAD0, &qword_242F4AED0);
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v313 = &v293 - v29;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAD8, &qword_242F4AED8);
  v311 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v310 = &v293 - v30;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAE0, &qword_242F4AEE0);
  v308 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  v307 = &v293 - v31;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAE8, &qword_242F4AEE8);
  v305 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v304 = &v293 - v32;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAF0, &qword_242F4AEF0);
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v301 = &v293 - v33;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCAF8, &qword_242F4AEF8);
  v299 = *(v300 - 8);
  MEMORY[0x28223BE20](v300);
  v298 = &v293 - v34;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCB00, &qword_242F4AF00);
  v296 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v295 = &v293 - v35;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCB08, &qword_242F4AF08);
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v37 = &v293 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCB10, &qword_242F4AF10);
  v39 = *(v38 - 8);
  v370 = v38;
  v371 = v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v293 - v40;
  LODWORD(v40) = *(v1 + 6);
  v42 = *(v1 + 2);
  v43 = *v1;
  v368 = v43 | ((v42 | (v40 << 16)) << 32);
  v44 = v40 >> 3;
  v45 = v42 >> 12;
  v46 = v42 >> 5;
  v47 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EE1804(v47, v48, v49);
  v369 = v41;
  v50 = sub_242F064C0();
  switch((v43 >> 30) & 2 | (v43 >> 23) & 1 | v46 & 4 | v45 & 8 | v44 & 0x10)
  {
    case 1u:
      v176 = v368;
      v177 = v368 >> 8;
      v178 = (v368 & 0x7F7FFFFF) >> 16;
      v179 = (v368 & 0x7F7FFFFF) >> 24;
      v373[0] = 1;
      sub_242EE2380(v50, v51, v52);
      v76 = v295;
      v64 = v370;
      v65 = v369;
      v180 = sub_242F05E40();
      v373[0] = v176;
      v373[1] = v177;
      v373[2] = v178;
      v373[3] = v179;
      sub_242EE1EE8(v180, v181, v182);
      v82 = v297;
      sub_242F05F20();
      v83 = v328;
      goto LABEL_30;
    case 2u:
      v144 = v368;
      v145 = v368 >> 8;
      v146 = (v368 & 0x7F7FFFFF) >> 16;
      v147 = (v368 & 0x7F7FFFFF) >> 24;
      v148 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 2;
      sub_242EE22D8(v50, v51, v52);
      v104 = v298;
      v105 = v370;
      v106 = v369;
      v149 = sub_242F05E40();
      v373[0] = v144;
      v373[1] = v145;
      v373[2] = v146;
      v373[3] = v147;
      v373[4] = v148;
      sub_242EE232C(v149, v150, v151);
      v110 = v300;
      sub_242F05F20();
      v111 = v330;
      goto LABEL_28;
    case 3u:
      v160 = v368;
      v161 = v368 >> 8;
      v162 = (v368 & 0x7F7FFFFF) >> 16;
      v163 = (v368 & 0x7F7FFFFF) >> 24;
      v164 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 3;
      sub_242EE2284(v50, v51, v52);
      v104 = v301;
      v105 = v370;
      v106 = v369;
      v165 = sub_242F05E40();
      v373[0] = v160;
      v373[1] = v161;
      v373[2] = v162;
      v373[3] = v163;
      v373[4] = v164;
      sub_242EE2134(v165, v166, v167);
      v110 = v303;
      sub_242F05F20();
      v111 = v332;
      goto LABEL_28;
    case 4u:
      v99 = v368;
      v100 = v368 >> 8;
      v101 = (v368 & 0x7F7FFFFF) >> 16;
      v102 = (v368 & 0x7F7FFFFF) >> 24;
      v103 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 4;
      sub_242EE2230(v50, v51, v52);
      v104 = v304;
      v105 = v370;
      v106 = v369;
      v107 = sub_242F05E40();
      v373[0] = v99;
      v373[1] = v100;
      v373[2] = v101;
      v373[3] = v102;
      v373[4] = v103;
      sub_242EE2134(v107, v108, v109);
      v110 = v306;
      sub_242F05F20();
      v111 = v334;
      goto LABEL_28;
    case 5u:
      v199 = v368;
      v200 = v368 >> 8;
      v201 = (v368 & 0x7F7FFFFF) >> 16;
      v202 = (v368 & 0x7F7FFFFF) >> 24;
      v203 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 5;
      sub_242EE21DC(v50, v51, v52);
      v104 = v307;
      v105 = v370;
      v106 = v369;
      v204 = sub_242F05E40();
      v373[0] = v199;
      v373[1] = v200;
      v373[2] = v201;
      v373[3] = v202;
      v373[4] = v203;
      sub_242EE2134(v204, v205, v206);
      v110 = v309;
      sub_242F05F20();
      v111 = v336;
      goto LABEL_28;
    case 6u:
      v223 = v368;
      v224 = v368 >> 8;
      v225 = (v368 & 0x7F7FFFFF) >> 16;
      v226 = (v368 & 0x7F7FFFFF) >> 24;
      v227 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 6;
      sub_242EE2188(v50, v51, v52);
      v104 = v310;
      v105 = v370;
      v106 = v369;
      v228 = sub_242F05E40();
      v373[0] = v223;
      v373[1] = v224;
      v373[2] = v225;
      v373[3] = v226;
      v373[4] = v227;
      sub_242EE2134(v228, v229, v230);
      v110 = v312;
      sub_242F05F20();
      v111 = &v338;
      goto LABEL_28;
    case 7u:
      v168 = v368;
      v169 = v368 >> 8;
      v170 = (v368 & 0x7F7FFFFF) >> 16;
      v171 = (v368 & 0x7F7FFFFF) >> 24;
      v172 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 7;
      sub_242EE20E0(v50, v51, v52);
      v104 = v313;
      v105 = v370;
      v106 = v369;
      v173 = sub_242F05E40();
      v373[0] = v168;
      v373[1] = v169;
      v373[2] = v170;
      v373[3] = v171;
      v373[4] = v172;
      sub_242EE2134(v173, v174, v175);
      v110 = v315;
      sub_242F05F20();
      v111 = v341;
      goto LABEL_28;
    case 8u:
      v246 = v368;
      v247 = v368 >> 8;
      v248 = (v368 & 0x7F7FFFFF) >> 16;
      v249 = (v368 & 0x7F7FFFFF) >> 24;
      v373[0] = 8;
      sub_242EE208C(v50, v51, v52);
      v76 = v316;
      v64 = v370;
      v65 = v369;
      v250 = sub_242F05E40();
      v373[0] = v246;
      v373[1] = v247;
      v373[2] = v248;
      v373[3] = v249;
      sub_242EE2038(v250, v251, v252);
      v82 = v318;
      sub_242F05F20();
      v83 = v343;
      goto LABEL_30;
    case 9u:
      v120 = v368;
      v121 = v368 >> 8;
      v122 = (v368 & 0x7F7FFFFF) >> 16;
      v123 = (v368 & 0x7F7FFFFF) >> 24;
      v373[0] = 9;
      sub_242EE1FE4(v50, v51, v52);
      v76 = v319;
      v64 = v370;
      v65 = v369;
      v124 = sub_242F05E40();
      v373[0] = v120;
      v373[1] = v121;
      v373[2] = v122;
      v373[3] = v123;
      sub_242EE2038(v124, v125, v126);
      v82 = v321;
      sub_242F05F20();
      v83 = v345;
      goto LABEL_30;
    case 0xAu:
      v239 = v368;
      v240 = v368 >> 8;
      v241 = (v368 & 0x7F7FFFFF) >> 16;
      v242 = (v368 & 0x7F7FFFFF) >> 24;
      v373[0] = 10;
      sub_242EE1F3C(v50, v51, v52);
      v76 = v322;
      v64 = v370;
      v65 = v369;
      v243 = sub_242F05E40();
      v373[0] = v239;
      v373[1] = v240;
      v373[2] = v241;
      v373[3] = v242;
      sub_242EE1F90(v243, v244, v245);
      v82 = v324;
      sub_242F05F20();
      v83 = v347;
      goto LABEL_30;
    case 0xBu:
      v92 = v368;
      v93 = v368 >> 8;
      v94 = (v368 & 0x7F7FFFFF) >> 16;
      v95 = (v368 & 0x7F7FFFFF) >> 24;
      v373[0] = 11;
      sub_242EE1E94(v50, v51, v52);
      v76 = v325;
      v64 = v370;
      v65 = v369;
      v96 = sub_242F05E40();
      v373[0] = v92;
      v373[1] = v93;
      v373[2] = v94;
      v373[3] = v95;
      sub_242EE1EE8(v96, v97, v98);
      v82 = v327;
      sub_242F05F20();
      v83 = v349;
      goto LABEL_30;
    case 0xCu:
      v112 = v368;
      v113 = v368 >> 8;
      v114 = HIWORD(v368) & 0x7F;
      v373[0] = 12;
      sub_242EE1E40(v50, v51, v52);
      v76 = v328[0];
      v64 = v370;
      v65 = v369;
      v115 = sub_242F05E40();
      v373[0] = v112;
      v373[1] = v113;
      v116 = vdupq_n_s64(v112 & 0x7F7F7F7F7FFFFFLL);
      v117 = vshlq_u64(v116, xmmword_242F4ADA0);
      *v116.i8 = vmovn_s64(vshlq_u64(v116, xmmword_242F4ADB0));
      *v117.i8 = vmovn_s64(v117);
      v117.i16[1] = v117.i16[2];
      v117.i16[2] = v116.i16[0];
      v117.i16[3] = v116.i16[2];
      *&v373[2] = vmovn_s16(v117).u32[0];
      v374 = v114;
      sub_242EE1D98(v115, v118, v119);
      v82 = v329;
      sub_242F05F20();
      v83 = v351;
      goto LABEL_30;
    case 0xDu:
      v215 = v368;
      v216 = v368 >> 8;
      v217 = HIWORD(v368) & 0x7F;
      v373[0] = 13;
      sub_242EE1DEC(v50, v51, v52);
      v76 = v330[0];
      v64 = v370;
      v65 = v369;
      v218 = sub_242F05E40();
      v373[0] = v215;
      v373[1] = v216;
      v219 = vdupq_n_s64(v215 & 0x7F7F7F7F7FFFFFLL);
      v220 = vshlq_u64(v219, xmmword_242F4ADA0);
      *v219.i8 = vmovn_s64(vshlq_u64(v219, xmmword_242F4ADB0));
      *v220.i8 = vmovn_s64(v220);
      v220.i16[1] = v220.i16[2];
      v220.i16[2] = v219.i16[0];
      v220.i16[3] = v219.i16[2];
      *&v373[2] = vmovn_s16(v220).u32[0];
      v374 = v217;
      sub_242EE1D98(v218, v221, v222);
      v82 = v331;
      sub_242F05F20();
      v83 = &v353;
      goto LABEL_30;
    case 0xEu:
      v84 = v368;
      v85 = v368 >> 8;
      v86 = HIWORD(v368) & 0x7F;
      v373[0] = 14;
      sub_242EE1D44(v50, v51, v52);
      v76 = v332[0];
      v64 = v370;
      v65 = v369;
      v87 = sub_242F05E40();
      v373[0] = v84;
      v373[1] = v85;
      v88 = vdupq_n_s64(v84 & 0x7F7F7F7F7FFFFFLL);
      v89 = vshlq_u64(v88, xmmword_242F4ADA0);
      *v88.i8 = vmovn_s64(vshlq_u64(v88, xmmword_242F4ADB0));
      *v89.i8 = vmovn_s64(v89);
      v89.i16[1] = v89.i16[2];
      v89.i16[2] = v88.i16[0];
      v89.i16[3] = v88.i16[2];
      *&v373[2] = vmovn_s16(v89).u32[0];
      v374 = v86;
      sub_242EE1D98(v87, v90, v91);
      v82 = v333;
      sub_242F05F20();
      v83 = &v356;
      goto LABEL_30;
    case 0xFu:
      v152 = v368;
      v153 = v368 >> 8;
      v154 = HIWORD(v368) & 0x7F;
      v373[0] = 15;
      sub_242EE1CF0(v50, v51, v52);
      v76 = v334[0];
      v64 = v370;
      v65 = v369;
      v155 = sub_242F05E40();
      v373[0] = v152;
      v373[1] = v153;
      v156 = vdupq_n_s64(v152 & 0x7F7F7F7F7FFFFFLL);
      v157 = vshlq_u64(v156, xmmword_242F4ADA0);
      *v156.i8 = vmovn_s64(vshlq_u64(v156, xmmword_242F4ADB0));
      *v157.i8 = vmovn_s64(v157);
      v157.i16[1] = v157.i16[2];
      v157.i16[2] = v156.i16[0];
      v157.i16[3] = v156.i16[2];
      *&v373[2] = vmovn_s16(v157).u32[0];
      v374 = v154;
      sub_242E10728(v155, v158, v159);
      v82 = v335;
      sub_242F05F20();
      v83 = &v359;
      goto LABEL_30;
    case 0x10u:
      v73 = v368;
      v74 = v368 >> 8;
      v75 = HIWORD(v368) & 0x7F;
      v373[0] = 16;
      sub_242EE1C9C(v50, v51, v52);
      v76 = v336[0];
      v64 = v370;
      v65 = v369;
      v77 = sub_242F05E40();
      v373[0] = v73;
      v373[1] = v74;
      v78 = vdupq_n_s64(v73 & 0x7F7F7F7F7FFFFFLL);
      v79 = vshlq_u64(v78, xmmword_242F4ADA0);
      *v78.i8 = vmovn_s64(vshlq_u64(v78, xmmword_242F4ADB0));
      *v79.i8 = vmovn_s64(v79);
      v79.i16[1] = v79.i16[2];
      v79.i16[2] = v78.i16[0];
      v79.i16[3] = v78.i16[2];
      *&v373[2] = vmovn_s16(v79).u32[0];
      v374 = v75;
      sub_242E10728(v77, v80, v81);
      v82 = v337;
      sub_242F05F20();
      v83 = &v362;
      goto LABEL_30;
    case 0x11u:
      v183 = v368;
      v184 = v368 >> 8;
      v185 = HIWORD(v368) & 0x7F;
      v373[0] = 17;
      sub_242EE1C48(v50, v51, v52);
      v76 = v338;
      v64 = v370;
      v65 = v369;
      v186 = sub_242F05E40();
      v373[0] = v183;
      v373[1] = v184;
      v187 = vdupq_n_s64(v183 & 0x7F7F7F7F7FFFFFLL);
      v188 = vshlq_u64(v187, xmmword_242F4ADA0);
      *v187.i8 = vmovn_s64(vshlq_u64(v187, xmmword_242F4ADB0));
      *v188.i8 = vmovn_s64(v188);
      v188.i16[1] = v188.i16[2];
      v188.i16[2] = v187.i16[0];
      v188.i16[3] = v187.i16[2];
      *&v373[2] = vmovn_s16(v188).u32[0];
      v374 = v185;
      sub_242E10728(v186, v189, v190);
      v82 = v341[0];
      sub_242F05F20();
      v83 = &v366;
      goto LABEL_30;
    case 0x12u:
      v231 = v368;
      v232 = v368 >> 8;
      v233 = (v368 & 0x7F7FFFFF) >> 16;
      v234 = (v368 & 0x7F7FFFFF) >> 24;
      v235 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 18;
      sub_242EE1BF4(v50, v51, v52);
      v104 = v339;
      v105 = v370;
      v106 = v369;
      v236 = sub_242F05E40();
      v373[0] = v231;
      v373[1] = v232;
      v373[2] = v233;
      v373[3] = v234;
      v373[4] = v235;
      sub_242EA8968(v236, v237, v238);
      v110 = v342;
      sub_242F05F20();
      v111 = &v368;
      goto LABEL_28;
    case 0x13u:
      v261 = v368;
      v262 = v368 >> 8;
      v263 = (v368 & 0x7F7FFFFF) >> 16;
      v264 = (v368 & 0x7F7FFFFF) >> 24;
      v265 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 19;
      sub_242EE1BA0(v50, v51, v52);
      v104 = v343[0];
      v105 = v370;
      v106 = v369;
      v266 = sub_242F05E40();
      v373[0] = v261;
      v373[1] = v262;
      v373[2] = v263;
      v373[3] = v264;
      v373[4] = v265;
      sub_242EA8968(v266, v267, v268);
      v110 = v344;
      sub_242F05F20();
      v111 = &v370;
      goto LABEL_28;
    case 0x14u:
      v191 = v368;
      v192 = v368 >> 8;
      v193 = (v368 & 0x7F7FFFFF) >> 16;
      v194 = (v368 & 0x7F7FFFFF) >> 24;
      v195 = (v368 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v373[0] = 20;
      sub_242EE1B4C(v50, v51, v52);
      v104 = v345[0];
      v105 = v370;
      v106 = v369;
      v196 = sub_242F05E40();
      v373[0] = v191;
      v373[1] = v192;
      v373[2] = v193;
      v373[3] = v194;
      v373[4] = v195;
      sub_242EA8968(v196, v197, v198);
      v110 = v346;
      sub_242F05F20();
      v111 = &v372;
LABEL_28:
      (*(*(v111 - 32) + 8))(v104, v110);
      return (*(v371 + 8))(v106, v105);
    case 0x15u:
      v207 = v368;
      v208 = v368 >> 8;
      v209 = HIWORD(v368) & 0x7F;
      v373[0] = 21;
      sub_242EE1AF8(v50, v51, v52);
      v76 = v347[0];
      v64 = v370;
      v65 = v369;
      v210 = sub_242F05E40();
      v373[0] = v207;
      v373[1] = v208;
      v211 = vdupq_n_s64(v207 & 0x7F7F7F7F7FFFFFLL);
      v212 = vshlq_u64(v211, xmmword_242F4ADA0);
      *v211.i8 = vmovn_s64(vshlq_u64(v211, xmmword_242F4ADB0));
      *v212.i8 = vmovn_s64(v212);
      v212.i16[1] = v212.i16[2];
      v212.i16[2] = v211.i16[0];
      v212.i16[3] = v211.i16[2];
      *&v373[2] = vmovn_s16(v212).u32[0];
      v374 = v209;
      sub_242E10728(v210, v213, v214);
      v82 = v348;
      sub_242F05F20();
      v83 = &v375;
      goto LABEL_30;
    case 0x16u:
      v253 = v368;
      v254 = v368 >> 8;
      v255 = HIWORD(v368) & 0x7F;
      v373[0] = 22;
      sub_242EE1AA4(v50, v51, v52);
      v76 = v349[0];
      v64 = v370;
      v65 = v369;
      v256 = sub_242F05E40();
      v373[0] = v253;
      v373[1] = v254;
      v257 = vdupq_n_s64(v253 & 0x7F7F7F7F7FFFFFLL);
      v258 = vshlq_u64(v257, xmmword_242F4ADA0);
      *v257.i8 = vmovn_s64(vshlq_u64(v257, xmmword_242F4ADB0));
      *v258.i8 = vmovn_s64(v258);
      v258.i16[1] = v258.i16[2];
      v258.i16[2] = v257.i16[0];
      v258.i16[3] = v257.i16[2];
      *&v373[2] = vmovn_s16(v258).u32[0];
      v374 = v255;
      sub_242EE19FC(v256, v259, v260);
      v82 = v350;
      sub_242F05F20();
      v83 = &v376;
      goto LABEL_30;
    case 0x17u:
      v269 = v368;
      v270 = v368 >> 8;
      v271 = HIWORD(v368) & 0x7F;
      v373[0] = 23;
      sub_242EE1A50(v50, v51, v52);
      v76 = v351[0];
      v64 = v370;
      v65 = v369;
      v272 = sub_242F05E40();
      v373[0] = v269;
      v373[1] = v270;
      v273 = vdupq_n_s64(v269 & 0x7F7F7F7F7FFFFFLL);
      v274 = vshlq_u64(v273, xmmword_242F4ADA0);
      *v273.i8 = vmovn_s64(vshlq_u64(v273, xmmword_242F4ADB0));
      *v274.i8 = vmovn_s64(v274);
      v274.i16[1] = v274.i16[2];
      v274.i16[2] = v273.i16[0];
      v274.i16[3] = v273.i16[2];
      *&v373[2] = vmovn_s16(v274).u32[0];
      v374 = v271;
      sub_242EE19FC(v272, v275, v276);
      v82 = v352;
      sub_242F05F20();
      v83 = &v377;
LABEL_30:
      v135 = *(v83 - 32);
      goto LABEL_31;
    case 0x18u:
      v136 = v368;
      v137 = v368 >> 8;
      v138 = HIWORD(v368) & 0x7F;
      v373[0] = 24;
      sub_242EE19A8(v50, v51, v52);
      v76 = v353;
      v64 = v370;
      v65 = v369;
      v139 = sub_242F05E40();
      v373[0] = v136;
      v373[1] = v137;
      v140 = vdupq_n_s64(v136 & 0x7F7F7F7F7FFFFFLL);
      v141 = vshlq_u64(v140, xmmword_242F4ADA0);
      *v140.i8 = vmovn_s64(vshlq_u64(v140, xmmword_242F4ADB0));
      *v141.i8 = vmovn_s64(v141);
      v141.i16[1] = v141.i16[2];
      v141.i16[2] = v140.i16[0];
      v141.i16[3] = v140.i16[2];
      *&v373[2] = vmovn_s16(v141).u32[0];
      v374 = v138;
      sub_242EE19FC(v139, v142, v143);
      v82 = v355;
      sub_242F05F20();
      v135 = v354;
      goto LABEL_31;
    case 0x19u:
      v127 = v368;
      v128 = v368 >> 8;
      v129 = HIWORD(v368) & 0x7F;
      v373[0] = 25;
      sub_242EE1954(v50, v51, v52);
      v76 = v356;
      v64 = v370;
      v65 = v369;
      v130 = sub_242F05E40();
      v373[0] = v127;
      v373[1] = v128;
      v131 = vdupq_n_s64(v127 & 0x7F7F7F7F7FFFFFLL);
      v132 = vshlq_u64(v131, xmmword_242F4ADA0);
      *v131.i8 = vmovn_s64(vshlq_u64(v131, xmmword_242F4ADB0));
      *v132.i8 = vmovn_s64(v132);
      v132.i16[1] = v132.i16[2];
      v132.i16[2] = v131.i16[0];
      v132.i16[3] = v131.i16[2];
      *&v373[2] = vmovn_s16(v132).u32[0];
      v374 = v129;
      sub_242E10728(v130, v133, v134);
      v82 = v358;
      sub_242F05F20();
      v135 = v357;
LABEL_31:
      (*(v135 + 8))(v76, v82);
      goto LABEL_32;
    case 0x1Au:
      v285 = v368;
      v286 = v368 >> 8;
      v287 = HIWORD(v368) & 0x7F;
      v373[0] = 26;
      sub_242EE1900(v50, v51, v52);
      v63 = v359;
      v64 = v370;
      v65 = v369;
      v288 = sub_242F05E40();
      v373[0] = v285;
      v373[1] = v286;
      v289 = vdupq_n_s64(v285 & 0x7F7F7F7F7FFFFFLL);
      v290 = vshlq_u64(v289, xmmword_242F4ADA0);
      *v289.i8 = vmovn_s64(vshlq_u64(v289, xmmword_242F4ADB0));
      *v290.i8 = vmovn_s64(v290);
      v290.i16[1] = v290.i16[2];
      v290.i16[2] = v289.i16[0];
      v290.i16[3] = v289.i16[2];
      *&v373[2] = vmovn_s16(v290).u32[0];
      v374 = v287;
      sub_242E10728(v288, v291, v292);
      v71 = v361;
      sub_242F05F20();
      v72 = v360;
      goto LABEL_36;
    case 0x1Bu:
      v60 = v368;
      v61 = v368 >> 8;
      v62 = HIWORD(v368) & 0x7F;
      v373[0] = 27;
      sub_242EE18AC(v50, v51, v52);
      v63 = v362;
      v64 = v370;
      v65 = v369;
      v66 = sub_242F05E40();
      v373[0] = v60;
      v373[1] = v61;
      v67 = vdupq_n_s64(v60 & 0x7F7F7F7F7FFFFFLL);
      v68 = vshlq_u64(v67, xmmword_242F4ADA0);
      *v67.i8 = vmovn_s64(vshlq_u64(v67, xmmword_242F4ADB0));
      *v68.i8 = vmovn_s64(v68);
      v68.i16[1] = v68.i16[2];
      v68.i16[2] = v67.i16[0];
      v68.i16[3] = v67.i16[2];
      *&v373[2] = vmovn_s16(v68).u32[0];
      v374 = v62;
      sub_242E10728(v66, v69, v70);
      v71 = v364;
      sub_242F05F20();
      v72 = v363;
      goto LABEL_36;
    case 0x1Cu:
      v277 = v368;
      v278 = v368 >> 8;
      v279 = HIWORD(v368) & 0x7F;
      v373[0] = 28;
      sub_242EE1858(v50, v51, v52);
      v63 = v365;
      v64 = v370;
      v65 = v369;
      v280 = sub_242F05E40();
      v373[0] = v277;
      v373[1] = v278;
      v281 = vdupq_n_s64(v277 & 0x7F7F7F7F7FFFFFLL);
      v282 = vshlq_u64(v281, xmmword_242F4ADA0);
      *v281.i8 = vmovn_s64(vshlq_u64(v281, xmmword_242F4ADB0));
      *v282.i8 = vmovn_s64(v282);
      v282.i16[1] = v282.i16[2];
      v282.i16[2] = v281.i16[0];
      v282.i16[3] = v281.i16[2];
      *&v373[2] = vmovn_s16(v282).u32[0];
      v374 = v279;
      sub_242E10728(v280, v283, v284);
      v71 = v367;
      sub_242F05F20();
      v72 = v366;
LABEL_36:
      (*(v72 + 8))(v63, v71);
LABEL_32:
      result = (*(v371 + 8))(v65, v64);
      break;
    default:
      v373[0] = 0;
      sub_242EE23D4(v50, v51, v52);
      v53 = v370;
      v54 = v369;
      v55 = sub_242F05E40();
      *v373 = v368;
      sub_242EE1F90(v55, v56, v57);
      v58 = v294;
      sub_242F05F20();
      (*(v293 + 8))(v37, v58);
      result = (*(v371 + 8))(v54, v53);
      break;
  }

  return result;
}

double ProgressBarType.ProgressDataSource.hash(into:)(uint64_t a1)
{
  switch((*v1 >> 30) & 2 | (*v1 >> 23) & 1 | (*(v1 + 4) >> 5) & 4 | (*(v1 + 4) >> 12) & 8 | (*(v1 + 6) >> 3) & 0x10)
  {
    case 1:
      v5 = 1;
      goto LABEL_17;
    case 2:
      MEMORY[0x245D279A0](2);
      return SpeedometerDataIdentifiers.hash(into:)(a1);
    case 3:
      v6 = 3;
      goto LABEL_25;
    case 4:
      v6 = 4;
      goto LABEL_25;
    case 5:
      v6 = 5;
      goto LABEL_25;
    case 6:
      v6 = 6;
      goto LABEL_25;
    case 7:
      v6 = 7;
LABEL_25:
      MEMORY[0x245D279A0](v6);
      return TachometerDataIdentifiers.hash(into:)(a1);
    case 8:
      v7 = 8;
      goto LABEL_30;
    case 9:
      v7 = 9;
LABEL_30:
      MEMORY[0x245D279A0](v7);
      ChargeFuelDataIdentifiers.hash(into:)(a1);
      return result;
    case 0xA:
      MEMORY[0x245D279A0](10);
      goto LABEL_28;
    case 0xB:
      v5 = 11;
LABEL_17:
      MEMORY[0x245D279A0](v5);
      return FuelConsumptionDataIdentifiers.hash(into:)(a1);
    case 0xC:
      v4 = 12;
      goto LABEL_23;
    case 0xD:
      v4 = 13;
      goto LABEL_23;
    case 0xE:
      v4 = 14;
LABEL_23:
      MEMORY[0x245D279A0](v4);
      return TemperatureDataIdentifiers.hash(into:)(a1);
    case 0xF:
      v3 = 15;
      goto LABEL_38;
    case 0x10:
      v3 = 16;
      goto LABEL_38;
    case 0x11:
      v3 = 17;
      goto LABEL_38;
    case 0x12:
      v10 = 18;
      goto LABEL_33;
    case 0x13:
      v10 = 19;
      goto LABEL_33;
    case 0x14:
      v10 = 20;
LABEL_33:
      MEMORY[0x245D279A0](v10);
      return PowermeterPowerLevelDataIdentifiers.hash(into:)(a1);
    case 0x15:
      v3 = 21;
      goto LABEL_38;
    case 0x16:
      v8 = 22;
      goto LABEL_35;
    case 0x17:
      v8 = 23;
      goto LABEL_35;
    case 0x18:
      v8 = 24;
LABEL_35:
      MEMORY[0x245D279A0](v8);
      return DriverAssistanceDataIdentifiers.hash(into:)(a1);
    case 0x19:
      v3 = 25;
      goto LABEL_38;
    case 0x1A:
      v3 = 26;
      goto LABEL_38;
    case 0x1B:
      v3 = 27;
      goto LABEL_38;
    case 0x1C:
      v3 = 28;
LABEL_38:
      MEMORY[0x245D279A0](v3);
      result = PowermeterDataIdentifiers.hash(into:)(a1);
      break;
    default:
      MEMORY[0x245D279A0](0);
LABEL_28:
      result = EnergyEfficiencyDataIdentifiers.hash(into:)(a1);
      break;
  }

  return result;
}

uint64_t ProgressBarType.ProgressDataSource.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 4);
  v4[18] = *v0;
  v6 = v1;
  v5 = v2;
  sub_242F06390();
  ProgressBarType.ProgressDataSource.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t ProgressBarType.ProgressDataSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v324 = a2;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC40, &qword_242F4AF18);
  v295 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v319 = &v236 - v3;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC48, &qword_242F4AF20);
  v323 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v318 = &v236 - v4;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC50, &qword_242F4AF28);
  v294 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v317 = &v236 - v5;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC58, &qword_242F4AF30);
  v293 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v316 = &v236 - v6;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC60, &qword_242F4AF38);
  v292 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v315 = &v236 - v7;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC68, &qword_242F4AF40);
  v291 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v314 = &v236 - v8;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC70, &qword_242F4AF48);
  v290 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v313 = &v236 - v9;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC78, &qword_242F4AF50);
  v289 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v312 = &v236 - v10;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC80, &qword_242F4AF58);
  v288 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v311 = &v236 - v11;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC88, &qword_242F4AF60);
  v287 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v310 = &v236 - v12;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC90, &qword_242F4AF68);
  v286 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v309 = &v236 - v13;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCC98, &qword_242F4AF70);
  v285 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v308 = &v236 - v14;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCA0, &qword_242F4AF78);
  v284 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v307 = &v236 - v15;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCA8, &qword_242F4AF80);
  v283 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v306 = &v236 - v16;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCB0, &qword_242F4AF88);
  v282 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v305 = &v236 - v17;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCB8, &qword_242F4AF90);
  v281 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v304 = &v236 - v18;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCC0, &qword_242F4AF98);
  v280 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v303 = &v236 - v19;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCC8, &qword_242F4AFA0);
  v279 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v302 = &v236 - v20;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCD0, &qword_242F4AFA8);
  v278 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v322 = &v236 - v21;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCD8, &qword_242F4AFB0);
  v277 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v298 = &v236 - v22;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCE0, &qword_242F4AFB8);
  v276 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v321 = &v236 - v23;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCE8, &qword_242F4AFC0);
  v275 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v301 = &v236 - v24;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCF0, &qword_242F4AFC8);
  v274 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v300 = &v236 - v25;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCCF8, &qword_242F4AFD0);
  v273 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v299 = &v236 - v26;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD00, &qword_242F4AFD8);
  v272 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v320 = &v236 - v27;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD08, &qword_242F4AFE0);
  v271 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v297 = &v236 - v28;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD10, &qword_242F4AFE8);
  v270 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v296 = &v236 - v29;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD18, &qword_242F4AFF0);
  v269 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v31 = &v236 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD20, &qword_242F4AFF8);
  v268 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v236 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD28, &unk_242F4B000);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v236 - v37;
  v39 = a1[3];
  v325 = a1;
  v40 = __swift_project_boxed_opaque_existential_2Tm(a1, v39);
  sub_242EE1804(v40, v41, v42);
  v43 = v326[0];
  sub_242F06480();
  v326[0] = v43;
  if (v43)
  {
LABEL_9:
    v70 = v325;
    return __swift_destroy_boxed_opaque_existential_2Tm(v70);
  }

  v237 = v34;
  v236 = v32;
  v238 = v31;
  v44 = v320;
  v45 = v321;
  v47 = v322;
  v46 = v323;
  v239 = v36;
  v48 = v324;
  v49 = sub_242F05E10();
  v50 = (2 * *(v49 + 16)) | 1;
  v326[1] = v49;
  v326[2] = v49 + 32;
  v327 = 0;
  v328 = v50;
  v51 = sub_242C702C4();
  if (v327 != v328 >> 1)
  {
LABEL_7:
    v64 = sub_242F05B10();
    v65 = v38;
    v66 = swift_allocError();
    v67 = v35;
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v69 = &type metadata for ProgressBarType.ProgressDataSource;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v64 - 8) + 104))(v69, *MEMORY[0x277D84160], v64);
    v326[0] = v66;
    swift_willThrow();
    (*(v239 + 8))(v65, v67);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  switch(v51)
  {
    case 0:
      LOBYTE(v329) = 0;
      sub_242EE23D4(v51, v52, v53);
      v54 = v237;
      v55 = v326[0];
      v56 = sub_242F05D10();
      v326[0] = v55;
      if (v55)
      {
        goto LABEL_97;
      }

      sub_242EE2524(v56, v57, v58);
      v59 = v236;
      v60 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v60;
      v62 = &v300;
      if (v60)
      {
        goto LABEL_99;
      }

      (*(v268 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329;
      goto LABEL_113;
    case 1:
      LOBYTE(v329) = 1;
      sub_242EE2380(v51, v52, v53);
      v152 = v238;
      v153 = v326[0];
      v154 = sub_242F05D10();
      v326[0] = v153;
      if (v153)
      {
        goto LABEL_97;
      }

      sub_242EE24D0(v154, v155, v156);
      v157 = v240;
      v158 = v326[0];
      sub_242F05E00();
      v326[0] = v158;
      if (!v158)
      {
        (*(v269 + 8))(v152, v157);
        (*(v239 + 8))(v38, v35);
        swift_unknownObjectRelease();
        v63 = v329 | 0x800000;
        goto LABEL_113;
      }

      (*(v269 + 8))(v152, v157);
LABEL_97:
      (*(v239 + 8))(v38, v35);
      goto LABEL_8;
    case 2:
      LOBYTE(v329) = 2;
      sub_242EE22D8(v51, v52, v53);
      v54 = v296;
      v132 = v326[0];
      v133 = sub_242F05D10();
      v326[0] = v132;
      if (v132)
      {
        goto LABEL_97;
      }

      sub_242EE2620(v133, v134, v135);
      v59 = v241;
      v136 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v136;
      v62 = &v302;
      if (v136)
      {
        goto LABEL_99;
      }

      (*(v270 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | 0x80000000 | (v330 << 32);
      goto LABEL_113;
    case 3:
      LOBYTE(v329) = 3;
      sub_242EE2284(v51, v52, v53);
      v54 = v297;
      v142 = v326[0];
      v143 = sub_242F05D10();
      v326[0] = v142;
      if (v142)
      {
        goto LABEL_97;
      }

      sub_242EE25CC(v143, v144, v145);
      v59 = v242;
      v146 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v146;
      v62 = &v303;
      if (v146)
      {
        goto LABEL_99;
      }

      (*(v271 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | 0x80800000 | (v330 << 32);
      goto LABEL_113;
    case 4:
      LOBYTE(v329) = 4;
      sub_242EE2230(v51, v52, v53);
      v99 = v326[0];
      v100 = sub_242F05D10();
      v326[0] = v99;
      if (v99)
      {
        goto LABEL_97;
      }

      sub_242EE25CC(v100, v101, v102);
      v59 = v243;
      v103 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v103;
      if (v103)
      {
        v104 = *(v272 + 8);
        v105 = v44;
        goto LABEL_100;
      }

      (*(v272 + 8))(v44, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | (v330 << 32) | 0x8000000000;
      goto LABEL_113;
    case 5:
      LOBYTE(v329) = 5;
      sub_242EE21DC(v51, v52, v53);
      v54 = v299;
      v170 = v326[0];
      v171 = sub_242F05D10();
      v326[0] = v170;
      if (v170)
      {
        goto LABEL_97;
      }

      sub_242EE25CC(v171, v172, v173);
      v59 = v244;
      v174 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v174;
      v62 = &v305;
      if (v174)
      {
        goto LABEL_99;
      }

      (*(v273 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v175 = v329 | (v330 << 32);
      v176 = 0x800000;
      goto LABEL_73;
    case 6:
      LOBYTE(v329) = 6;
      sub_242EE2188(v51, v52, v53);
      v54 = v300;
      v188 = v326[0];
      v189 = sub_242F05D10();
      v326[0] = v188;
      if (v188)
      {
        goto LABEL_97;
      }

      sub_242EE25CC(v189, v190, v191);
      v59 = v245;
      v192 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v192;
      v62 = &v306;
      if (v192)
      {
        goto LABEL_99;
      }

      (*(v274 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v175 = v329 | (v330 << 32);
      v176 = 0x80000000;
LABEL_73:
      v63 = v175 | v176 & 0xFFFF0000FFFFFFFFLL | 0x8000000000;
      goto LABEL_113;
    case 7:
      LOBYTE(v329) = 7;
      sub_242EE20E0(v51, v52, v53);
      v54 = v301;
      v147 = v326[0];
      v148 = sub_242F05D10();
      v326[0] = v147;
      if (v147)
      {
        goto LABEL_97;
      }

      sub_242EE25CC(v148, v149, v150);
      v59 = v246;
      v151 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v151;
      v62 = &v307;
      if (v151)
      {
        goto LABEL_99;
      }

      (*(v275 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329 | (v330 << 32);
      v98 = 0x8080000000;
      goto LABEL_104;
    case 8:
      LOBYTE(v329) = 8;
      sub_242EE208C(v51, v52, v53);
      v54 = v45;
      v203 = v326[0];
      v204 = sub_242F05D10();
      v326[0] = v203;
      if (v203)
      {
        goto LABEL_97;
      }

      sub_242EE2578(v204, v205, v206);
      v59 = v247;
      v207 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v207;
      v62 = &v308;
      if (v207)
      {
        goto LABEL_99;
      }

      (*(v276 + 8))(v45, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | 0x800000000000;
      goto LABEL_113;
    case 9:
      LOBYTE(v329) = 9;
      sub_242EE1FE4(v51, v52, v53);
      v54 = v298;
      v111 = v326[0];
      v112 = sub_242F05D10();
      v326[0] = v111;
      if (v111)
      {
        goto LABEL_97;
      }

      sub_242EE2578(v112, v113, v114);
      v59 = v248;
      v115 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v115;
      v62 = &v309;
      if (v115)
      {
        goto LABEL_99;
      }

      (*(v277 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v116 = v329;
      v117 = 0x800000;
      goto LABEL_108;
    case 10:
      LOBYTE(v329) = 10;
      sub_242EE1F3C(v51, v52, v53);
      v198 = v326[0];
      v199 = sub_242F05D10();
      v326[0] = v198;
      if (v198)
      {
        goto LABEL_97;
      }

      sub_242EE2524(v199, v200, v201);
      v59 = v249;
      v202 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v202;
      if (v202)
      {
        v104 = *(v278 + 8);
        v105 = v47;
        goto LABEL_100;
      }

      (*(v278 + 8))(v47, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v116 = v329;
      v117 = 0x80000000;
LABEL_108:
      v63 = v116 | v117 & 0xFFFF0000FFFFFFFFLL | 0x800000000000;
      goto LABEL_113;
    case 11:
      LOBYTE(v329) = 11;
      sub_242EE1E94(v51, v52, v53);
      v54 = v302;
      v92 = v326[0];
      v93 = sub_242F05D10();
      v326[0] = v92;
      if (v92)
      {
        goto LABEL_97;
      }

      sub_242EE24D0(v93, v94, v95);
      v59 = v250;
      v96 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v96;
      v62 = &v311;
      if (v96)
      {
        goto LABEL_99;
      }

      (*(v279 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329;
      v98 = 0x800080000000;
      goto LABEL_104;
    case 12:
      LOBYTE(v329) = 12;
      sub_242EE1E40(v51, v52, v53);
      v54 = v303;
      v106 = v326[0];
      v107 = sub_242F05D10();
      v326[0] = v106;
      if (v106)
      {
        goto LABEL_97;
      }

      sub_242EE247C(v107, v108, v109);
      v59 = v251;
      v110 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v110;
      v62 = &v312;
      if (v110)
      {
        goto LABEL_99;
      }

      (*(v280 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48) | 0x808000000000;
      goto LABEL_113;
    case 13:
      LOBYTE(v329) = 13;
      sub_242EE1DEC(v51, v52, v53);
      v54 = v304;
      v183 = v326[0];
      v184 = sub_242F05D10();
      v326[0] = v183;
      if (v183)
      {
        goto LABEL_97;
      }

      sub_242EE247C(v184, v185, v186);
      v59 = v252;
      v187 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v187;
      v62 = &v313;
      if (v187)
      {
        goto LABEL_99;
      }

      (*(v281 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v90 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v91 = 0x800000;
      goto LABEL_69;
    case 14:
      LOBYTE(v329) = 14;
      sub_242EE1D44(v51, v52, v53);
      v54 = v305;
      v85 = v326[0];
      v86 = sub_242F05D10();
      v326[0] = v85;
      if (v85)
      {
        goto LABEL_97;
      }

      sub_242EE247C(v86, v87, v88);
      v59 = v253;
      v89 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v89;
      v62 = &v314;
      if (v89)
      {
        goto LABEL_99;
      }

      (*(v282 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v90 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v91 = 0x80000000;
LABEL_69:
      v63 = v90 | v91 & 0xFFFF0000FFFFFFFFLL | 0x808000000000;
      goto LABEL_113;
    case 15:
      LOBYTE(v329) = 15;
      sub_242EE1CF0(v51, v52, v53);
      v54 = v306;
      v137 = v326[0];
      v138 = sub_242F05D10();
      v326[0] = v137;
      if (v137)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v138, v139, v140);
      v59 = v254;
      v141 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v141;
      v62 = &v315;
      if (v141)
      {
        goto LABEL_99;
      }

      (*(v283 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v98 = 0x808080000000;
      goto LABEL_104;
    case 16:
      LOBYTE(v329) = 16;
      sub_242EE1C9C(v51, v52, v53);
      v54 = v307;
      v80 = v326[0];
      v81 = sub_242F05D10();
      v326[0] = v80;
      if (v80)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v81, v82, v83);
      v59 = v255;
      v84 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v84;
      v62 = &v316;
      if (v84)
      {
        goto LABEL_99;
      }

      (*(v284 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v63 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48) | 0xFF80000000000000;
      goto LABEL_113;
    case 17:
      LOBYTE(v329) = 17;
      sub_242EE1C48(v51, v52, v53);
      v54 = v308;
      v159 = v326[0];
      v160 = sub_242F05D10();
      v326[0] = v159;
      if (v159)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v160, v161, v162);
      v59 = v256;
      v163 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v163;
      v62 = &v317;
      if (v163)
      {
        goto LABEL_99;
      }

      (*(v285 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v164 = 0x800000;
      goto LABEL_112;
    case 18:
      LOBYTE(v329) = 18;
      sub_242EE1BF4(v51, v52, v53);
      v54 = v309;
      v193 = v326[0];
      v194 = sub_242F05D10();
      v326[0] = v193;
      if (v193)
      {
        goto LABEL_97;
      }

      sub_242EA8910(v194, v195, v196);
      v59 = v257;
      v197 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v197;
      v62 = &v318;
      if (v197)
      {
        goto LABEL_99;
      }

      (*(v286 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32);
      v164 = 0x80000000;
      goto LABEL_112;
    case 19:
      LOBYTE(v329) = 19;
      sub_242EE1BA0(v51, v52, v53);
      v54 = v310;
      v213 = v326[0];
      v214 = sub_242F05D10();
      v326[0] = v213;
      if (v213)
      {
        goto LABEL_97;
      }

      sub_242EA8910(v214, v215, v216);
      v59 = v258;
      v217 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v217;
      v62 = &v319;
      if (v217)
      {
        goto LABEL_99;
      }

      (*(v287 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329 | (v330 << 32);
      v218 = 0x80000000;
      goto LABEL_103;
    case 20:
      LOBYTE(v329) = 20;
      sub_242EE1B4C(v51, v52, v53);
      v54 = v311;
      v165 = v326[0];
      v166 = sub_242F05D10();
      v326[0] = v165;
      if (v165)
      {
        goto LABEL_97;
      }

      sub_242EA8910(v166, v167, v168);
      v59 = v259;
      v169 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v169;
      v62 = &v320;
      if (v169)
      {
        goto LABEL_99;
      }

      (*(v288 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v130 = v329 | (v330 << 32);
      v131 = 0x8000800000;
      goto LABEL_59;
    case 21:
      LOBYTE(v329) = 21;
      sub_242EE1AF8(v51, v52, v53);
      v54 = v312;
      v177 = v326[0];
      v178 = sub_242F05D10();
      v326[0] = v177;
      if (v177)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v178, v179, v180);
      v59 = v260;
      v181 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v181;
      v62 = &v321;
      if (v181)
      {
        goto LABEL_99;
      }

      (*(v289 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v182 = 0x800000;
      goto LABEL_86;
    case 22:
      LOBYTE(v329) = 22;
      sub_242EE1AA4(v51, v52, v53);
      v54 = v313;
      v208 = v326[0];
      v209 = sub_242F05D10();
      v326[0] = v208;
      if (v208)
      {
        goto LABEL_97;
      }

      sub_242EE2428(v209, v210, v211);
      v59 = v261;
      v212 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v212;
      v62 = &v322;
      if (v212)
      {
        goto LABEL_99;
      }

      (*(v290 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v182 = 0x80000000;
LABEL_86:
      v164 = v182 & 0xFFFF0000FFFFFFFFLL | 0x8000000000;
      goto LABEL_112;
    case 23:
      LOBYTE(v329) = 23;
      sub_242EE1A50(v51, v52, v53);
      v54 = v314;
      v219 = v326[0];
      v220 = sub_242F05D10();
      v326[0] = v219;
      if (v219)
      {
        goto LABEL_97;
      }

      sub_242EE2428(v220, v221, v222);
      v59 = v262;
      v223 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v223;
      v62 = &v323;
      if (v223)
      {
        goto LABEL_99;
      }

      (*(v291 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v218 = 0x8080000000;
      goto LABEL_103;
    case 24:
      LOBYTE(v329) = 24;
      sub_242EE19A8(v51, v52, v53);
      v54 = v315;
      v125 = v326[0];
      v126 = sub_242F05D10();
      v326[0] = v125;
      if (v125)
      {
        goto LABEL_97;
      }

      sub_242EE2428(v126, v127, v128);
      v59 = v263;
      v129 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v129;
      v62 = &v324;
      if (v129)
      {
        goto LABEL_99;
      }

      (*(v292 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v130 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v131 = 0x800000800000;
LABEL_59:
      v63 = v130 | ((v131 & 0xFFFFFFFFFFFFLL | 0xFF80000000000000) - 0x800000);
      goto LABEL_113;
    case 25:
      LOBYTE(v329) = 25;
      sub_242EE1954(v51, v52, v53);
      v54 = v316;
      v118 = v326[0];
      v119 = sub_242F05D10();
      v326[0] = v118;
      if (v118)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v119, v120, v121);
      v59 = v264;
      v122 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v122;
      v62 = &v325;
      if (v122)
      {
        goto LABEL_99;
      }

      (*(v293 + 8))(v54, v59);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v124 = 0x800000;
      goto LABEL_111;
    case 26:
      LOBYTE(v329) = 26;
      sub_242EE1900(v51, v52, v53);
      v54 = v317;
      v231 = v326[0];
      v232 = sub_242F05D10();
      v326[0] = v231;
      if (v231)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v232, v233, v234);
      v59 = v265;
      v235 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v235;
      v62 = v326;
      if (!v235)
      {
        (*(v294 + 8))(v54, v59);
        (*(v61 + 8))(v38, v35);
        swift_unknownObjectRelease();
        v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
        v124 = 0x80000000;
LABEL_111:
        v164 = v124 & 0xFFFF0000FFFFFFFFLL | 0x800000000000;
        goto LABEL_112;
      }

LABEL_99:
      v104 = *(*(v62 - 32) + 8);
      v105 = v54;
LABEL_100:
      v104(v105, v59);
      goto LABEL_101;
    case 27:
      v72 = v46;
      LOBYTE(v329) = 27;
      sub_242EE18AC(v51, v52, v53);
      v73 = v318;
      v74 = v326[0];
      v75 = sub_242F05D10();
      v326[0] = v74;
      if (v74)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v75, v76, v77);
      v78 = v266;
      v79 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v79;
      if (v79)
      {
        (*(v72 + 8))(v73, v78);
        goto LABEL_101;
      }

      (*(v72 + 8))(v73, v78);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v97 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v218 = 0x800080000000;
LABEL_103:
      v98 = v218 & 0xFFFFFFFFFFFFLL | 0xFF80000000000000;
LABEL_104:
      v63 = v97 | v98 | 0x800000;
      goto LABEL_113;
    case 28:
      LOBYTE(v329) = 28;
      sub_242EE1858(v51, v52, v53);
      v224 = v319;
      v225 = v326[0];
      v226 = sub_242F05D10();
      v326[0] = v225;
      if (v225)
      {
        goto LABEL_97;
      }

      sub_242E1077C(v226, v227, v228);
      v229 = v267;
      v230 = v326[0];
      sub_242F05E00();
      v61 = v239;
      v326[0] = v230;
      if (v230)
      {
        (*(v295 + 8))(v224, v229);
LABEL_101:
        (*(v61 + 8))(v38, v35);
        goto LABEL_8;
      }

      (*(v295 + 8))(v224, v229);
      (*(v61 + 8))(v38, v35);
      swift_unknownObjectRelease();
      v123 = v329 | (v330 << 32) | (v331 << 40) | (v332 << 48);
      v164 = 0x808000000000;
LABEL_112:
      v63 = v123 | v164 & 0xFFFFFFFFFFFFLL | 0xFF80000000000000;
LABEL_113:
      v70 = v325;
      *v48 = v63;
      *(v48 + 6) = BYTE6(v63);
      *(v48 + 4) = WORD2(v63);
      break;
    default:
      goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v70);
}

unint64_t sub_242EDB8B0(char a1)
{
  result = 0x4D72614269676964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0x5072614269676964;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x5272614269676964;
      break;
    case 6:
      result = 0x74656D7265776F70;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x6B72616D6B636974;
      break;
    case 9:
      result = 0x6562614C6B636974;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_242EDBAB8()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 4);
  v4[18] = *v0;
  v6 = v1;
  v5 = v2;
  sub_242F06390();
  ProgressBarType.ProgressDataSource.hash(into:)(v4);
  return sub_242F063E0();
}

uint64_t sub_242EDBB20(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = *(v1 + 4);
  v5[18] = *v1;
  v7 = v2;
  v6 = v3;
  sub_242F06390();
  ProgressBarType.ProgressDataSource.hash(into:)(v5);
  return sub_242F063E0();
}

uint64_t sub_242EDBB8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EE7390(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EDBBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2674(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2674(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE27C4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE27C4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2D04(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2D04(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2DAC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2DAC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2C5C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2C5C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2C08(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2C08(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2B60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2B60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2770(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2770(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE26C8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDBFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE26C8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDBFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2B0C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2B0C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2A64(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2A64(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDC0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE29BC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE29BC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDC154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2914(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2914(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EDC1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE286C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE286C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242EDC244(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242EDC330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2968(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EDC36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EE2968(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ProgressBarType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD68, &qword_242F4B010);
  v297 = *(v2 - 8);
  v298 = v2;
  MEMORY[0x28223BE20](v2);
  v296 = &v261 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD70, &qword_242F4B018);
  v294 = *(v4 - 8);
  v295 = v4;
  MEMORY[0x28223BE20](v4);
  v293 = &v261 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD78, &qword_242F4B020);
  v291 = *(v6 - 8);
  v292 = v6;
  MEMORY[0x28223BE20](v6);
  v288 = &v261 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD80, &qword_242F4B028);
  v289 = *(v8 - 8);
  v290 = v8;
  MEMORY[0x28223BE20](v8);
  v287 = &v261 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD88, &qword_242F4B030);
  v285 = *(v10 - 8);
  v286 = v10;
  MEMORY[0x28223BE20](v10);
  v284 = &v261 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD90, &qword_242F4B038);
  v282 = *(v12 - 8);
  v283 = v12;
  MEMORY[0x28223BE20](v12);
  v281 = &v261 - v13;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCD98, &qword_242F4B040);
  v278 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v276 = &v261 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDA0, &qword_242F4B048);
  v273 = *(v15 - 8);
  v274 = v15;
  MEMORY[0x28223BE20](v15);
  v270 = &v261 - v16;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDA8, &qword_242F4B050);
  v277 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v275 = &v261 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDB0, &qword_242F4B058);
  v271 = *(v18 - 8);
  v272 = v18;
  MEMORY[0x28223BE20](v18);
  v267 = &v261 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDB8, &qword_242F4B060);
  v268 = *(v20 - 8);
  v269 = v20;
  MEMORY[0x28223BE20](v20);
  v266 = &v261 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDC0, &qword_242F4B068);
  v264 = *(v22 - 8);
  v265 = v22;
  MEMORY[0x28223BE20](v22);
  v263 = &v261 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDC8, &qword_242F4B070);
  v262 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v261 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDD0, &qword_242F4B078);
  v261 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v261 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCDD8, &qword_242F4B080);
  v31 = *(v30 - 8);
  v300 = v30;
  v301 = v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v261 - v32;
  v34 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EE2674(v34, v35, v36);
  v306 = v33;
  sub_242F064C0();
  memcpy(v305, v302, 0x164uLL);
  LODWORD(a1) = sub_242D4926C(v305);
  v37 = sub_242C5904C(v305);
  v40 = v37;
  switch(a1)
  {
    case 1:
      v303[0] = 1;
      sub_242EE2D04(v37, v38, v39);
      v41 = v300;
      v42 = v306;
      v164 = sub_242F05E40();
      v165 = *(v40 + 16);
      *v303 = *v40;
      *&v303[16] = v165;
      v166 = *(v40 + 32);
      v167 = *(v40 + 48);
      v168 = *(v40 + 80);
      *&v303[64] = *(v40 + 64);
      *&v303[80] = v168;
      *&v303[32] = v166;
      *&v303[48] = v167;
      v304 = 0;
      sub_242EE2D58(v164, v169, v170);
      v171 = v299;
      v172 = sub_242F05F20();
      if (v171)
      {
        (*(v262 + 8))(v26, v24);
        goto LABEL_41;
      }

      v260 = *(v40 + 96);
      v259 = v40 + 96;
      v258 = v260;
      LOWORD(v260) = *(v259 + 4);
      v303[6] = *(v259 + 6);
      *&v303[4] = v260;
      *v303 = v258;
      v304 = 1;
      sub_242EE271C(v172, v173, v174);
      sub_242F05EB0();
      (*(v262 + 8))(v26, v24);
      return (*(v301 + 8))(v306, v41);
    case 2:
      v303[0] = 2;
      sub_242EE2C5C(v37, v38, v39);
      v51 = v263;
      v52 = v300;
      v53 = v306;
      v121 = sub_242F05E40();
      *v303 = *v40;
      v122 = *(v40 + 16);
      v123 = *(v40 + 32);
      v124 = *(v40 + 64);
      *&v303[48] = *(v40 + 48);
      *&v303[64] = v124;
      *&v303[16] = v122;
      *&v303[32] = v123;
      v125 = *(v40 + 80);
      v126 = *(v40 + 96);
      v127 = *(v40 + 128);
      *&v303[112] = *(v40 + 112);
      *&v303[128] = v127;
      *&v303[80] = v125;
      *&v303[96] = v126;
      v304 = 0;
      sub_242EE2CB0(v121, v128, v129);
      v60 = v265;
      v130 = v299;
      v131 = sub_242F05F20();
      if (!v130)
      {
        v136 = *(v40 + 144);
        v135 = v40 + 144;
        v134 = v136;
        LOWORD(v136) = *(v135 + 4);
        v303[6] = *(v135 + 6);
        *&v303[4] = v136;
        *v303 = v134;
        v304 = 1;
        sub_242EE271C(v131, v132, v133);
        sub_242F05F20();
      }

      v68 = v264;
      goto LABEL_38;
    case 3:
      v303[0] = 3;
      sub_242EE2C08(v37, v38, v39);
      v51 = v266;
      v52 = v300;
      v53 = v306;
      v137 = sub_242F05E40();
      v138 = *v40;
      v139 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v139;
      *v303 = v138;
      v140 = *(v40 + 48);
      v141 = *(v40 + 64);
      v142 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v142;
      *&v303[48] = v140;
      *&v303[64] = v141;
      v143 = *(v40 + 112);
      v144 = *(v40 + 128);
      v145 = *(v40 + 144);
      *&v303[156] = *(v40 + 156);
      *&v303[128] = v144;
      *&v303[144] = v145;
      *&v303[112] = v143;
      v304 = 0;
      sub_242E509CC(v137, v146, v147);
      v60 = v269;
      v148 = v299;
      v149 = sub_242F05F20();
      if (!v148)
      {
        v154 = *(v40 + 172);
        v153 = v40 + 172;
        v152 = v154;
        LOWORD(v154) = *(v153 + 4);
        v303[6] = *(v153 + 6);
        *&v303[4] = v154;
        *v303 = v152;
        v304 = 1;
        sub_242EE271C(v149, v150, v151);
        sub_242F05F20();
      }

      v68 = v268;
      goto LABEL_38;
    case 4:
      v303[0] = 4;
      sub_242EE2B60(v37, v38, v39);
      v51 = v267;
      v52 = v300;
      v53 = v306;
      v69 = sub_242F05E40();
      v70 = *v40;
      v71 = *(v40 + 16);
      v72 = *(v40 + 32);
      *&v303[45] = *(v40 + 45);
      *&v303[16] = v71;
      *&v303[32] = v72;
      *v303 = v70;
      v304 = 0;
      sub_242EE2BB4(v69, v73, v74);
      v60 = v272;
      v75 = v299;
      v76 = sub_242F05F20();
      if (!v75)
      {
        v81 = *(v40 + 61);
        v80 = v40 + 61;
        v79 = v81;
        LOWORD(v81) = *(v80 + 4);
        v303[6] = *(v80 + 6);
        *&v303[4] = v81;
        *v303 = v79;
        v304 = 1;
        sub_242EE271C(v76, v77, v78);
        sub_242F05EB0();
      }

      v68 = v271;
      goto LABEL_38;
    case 5:
      v303[0] = 5;
      sub_242EE2B0C(v37, v38, v39);
      v51 = v275;
      v52 = v300;
      v53 = v306;
      v175 = sub_242F05E40();
      v176 = *v40;
      v177 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v177;
      *v303 = v176;
      v178 = *(v40 + 48);
      v179 = *(v40 + 64);
      v180 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v180;
      *&v303[48] = v178;
      *&v303[64] = v179;
      v181 = *(v40 + 112);
      v182 = *(v40 + 128);
      v183 = *(v40 + 144);
      *&v303[156] = *(v40 + 156);
      *&v303[128] = v182;
      *&v303[144] = v183;
      *&v303[112] = v181;
      v304 = 0;
      sub_242E509CC(v175, v184, v185);
      v60 = v279;
      v186 = v299;
      v187 = sub_242F05F20();
      if (!v186)
      {
        v192 = *(v40 + 172);
        v191 = v40 + 172;
        v190 = v192;
        LOWORD(v192) = *(v191 + 4);
        v303[6] = *(v191 + 6);
        *&v303[4] = v192;
        *v303 = v190;
        v304 = 1;
        sub_242EE271C(v187, v188, v189);
        sub_242F05F20();
      }

      v68 = v277;
      goto LABEL_38;
    case 6:
      v303[0] = 6;
      sub_242EE2A64(v37, v38, v39);
      v51 = v270;
      v52 = v300;
      v53 = v306;
      sub_242F05E40();
      v211 = memcpy(v303, v40, sizeof(v303));
      sub_242EE2AB8(v211, v212, v213);
      v60 = v274;
      sub_242F05F20();
      v68 = v273;
      goto LABEL_38;
    case 7:
      v303[0] = 7;
      sub_242EE29BC(v37, v38, v39);
      v51 = v276;
      v52 = v300;
      v53 = v306;
      v155 = sub_242F05E40();
      *v303 = *v40;
      v156 = *(v40 + 16);
      v157 = *(v40 + 32);
      v158 = *(v40 + 64);
      *&v303[48] = *(v40 + 48);
      *&v303[64] = v158;
      *&v303[16] = v156;
      *&v303[32] = v157;
      v159 = *(v40 + 80);
      v160 = *(v40 + 96);
      v161 = *(v40 + 128);
      *&v303[112] = *(v40 + 112);
      *&v303[128] = v161;
      *&v303[80] = v159;
      *&v303[96] = v160;
      sub_242EE2A10(v155, v162, v163);
      v60 = v280;
      sub_242F05F20();
      v68 = v278;
      goto LABEL_38;
    case 8:
      v303[0] = 8;
      sub_242EE2968(v37, v38, v39);
      v51 = v281;
      v52 = v300;
      v53 = v306;
      v235 = sub_242F05E40();
      v236 = *v40;
      v237 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v237;
      *v303 = v236;
      v238 = *(v40 + 48);
      v239 = *(v40 + 64);
      v240 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v240;
      *&v303[48] = v238;
      *&v303[64] = v239;
      v241 = *(v40 + 112);
      v242 = *(v40 + 128);
      v243 = *(v40 + 160);
      *&v303[144] = *(v40 + 144);
      *&v303[160] = v243;
      *&v303[112] = v241;
      *&v303[128] = v242;
      v244 = *(v40 + 176);
      v245 = *(v40 + 192);
      v246 = *(v40 + 224);
      *&v303[208] = *(v40 + 208);
      *&v303[224] = v246;
      *&v303[176] = v244;
      *&v303[192] = v245;
      v304 = 0;
      sub_242EE28C0(v235, v247, v248);
      v60 = v283;
      v249 = v299;
      v250 = sub_242F05F20();
      if (!v249)
      {
        v255 = *(v40 + 240);
        v254 = v40 + 240;
        v253 = v255;
        LOWORD(v255) = *(v254 + 4);
        v303[6] = *(v254 + 6);
        *&v303[4] = v255;
        *v303 = v253;
        v304 = 1;
        sub_242EE271C(v250, v251, v252);
        sub_242F05F20();
      }

      v68 = v282;
      goto LABEL_38;
    case 9:
      v303[0] = 9;
      sub_242EE2914(v37, v38, v39);
      v51 = v284;
      v52 = v300;
      v53 = v306;
      v100 = sub_242F05E40();
      v101 = *v40;
      v102 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v102;
      *v303 = v101;
      v103 = *(v40 + 48);
      v104 = *(v40 + 64);
      v105 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v105;
      *&v303[48] = v103;
      *&v303[64] = v104;
      v106 = *(v40 + 112);
      v107 = *(v40 + 128);
      v108 = *(v40 + 160);
      *&v303[144] = *(v40 + 144);
      *&v303[160] = v108;
      *&v303[112] = v106;
      *&v303[128] = v107;
      v109 = *(v40 + 176);
      v110 = *(v40 + 192);
      v111 = *(v40 + 224);
      *&v303[208] = *(v40 + 208);
      *&v303[224] = v111;
      *&v303[176] = v109;
      *&v303[192] = v110;
      v304 = 0;
      sub_242EE28C0(v100, v112, v113);
      v60 = v286;
      v114 = v299;
      v115 = sub_242F05F20();
      if (!v114)
      {
        v120 = *(v40 + 240);
        v119 = v40 + 240;
        v118 = v120;
        LOWORD(v120) = *(v119 + 4);
        v303[6] = *(v119 + 6);
        *&v303[4] = v120;
        *v303 = v118;
        v304 = 1;
        sub_242EE271C(v115, v116, v117);
        sub_242F05F20();
      }

      v68 = v285;
      goto LABEL_38;
    case 10:
      v303[0] = 10;
      sub_242EE286C(v37, v38, v39);
      v51 = v287;
      v52 = v300;
      v53 = v306;
      v214 = sub_242F05E40();
      v215 = *v40;
      v216 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v216;
      *v303 = v215;
      v217 = *(v40 + 48);
      v218 = *(v40 + 64);
      v219 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v219;
      *&v303[48] = v217;
      *&v303[64] = v218;
      v220 = *(v40 + 112);
      v221 = *(v40 + 128);
      v222 = *(v40 + 160);
      *&v303[144] = *(v40 + 144);
      *&v303[160] = v222;
      *&v303[112] = v220;
      *&v303[128] = v221;
      v223 = *(v40 + 176);
      v224 = *(v40 + 192);
      v225 = *(v40 + 224);
      *&v303[208] = *(v40 + 208);
      *&v303[224] = v225;
      *&v303[176] = v223;
      *&v303[192] = v224;
      v304 = 0;
      sub_242EE28C0(v214, v226, v227);
      v60 = v290;
      v228 = v299;
      v229 = sub_242F05F20();
      if (!v228)
      {
        v234 = *(v40 + 240);
        v233 = v40 + 240;
        v232 = v234;
        LOWORD(v234) = *(v233 + 4);
        v303[6] = *(v233 + 6);
        *&v303[4] = v234;
        *v303 = v232;
        v304 = 1;
        sub_242EE271C(v229, v230, v231);
        sub_242F05F20();
      }

      v68 = v289;
      goto LABEL_38;
    case 11:
      v303[0] = 11;
      sub_242EE27C4(v37, v38, v39);
      v51 = v288;
      v52 = v300;
      v53 = v306;
      v54 = sub_242F05E40();
      v55 = *v40;
      v56 = *(v40 + 16);
      v57 = *(v40 + 32);
      *&v303[45] = *(v40 + 45);
      *&v303[16] = v56;
      *&v303[32] = v57;
      *v303 = v55;
      v304 = 0;
      sub_242EE2818(v54, v58, v59);
      v60 = v292;
      v61 = v299;
      v62 = sub_242F05F20();
      if (!v61)
      {
        v67 = *(v40 + 61);
        v66 = v40 + 61;
        v65 = v67;
        LOWORD(v67) = *(v66 + 4);
        v303[6] = *(v66 + 6);
        *&v303[4] = v67;
        *v303 = v65;
        v304 = 1;
        sub_242EE271C(v62, v63, v64);
        sub_242F05F20();
      }

      v68 = v291;
      goto LABEL_38;
    case 12:
      v303[0] = 12;
      sub_242EE2770(v37, v38, v39);
      v51 = v293;
      v52 = v300;
      v53 = v306;
      v82 = sub_242F05E40();
      v83 = *v40;
      v84 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v84;
      *v303 = v83;
      v85 = *(v40 + 48);
      v86 = *(v40 + 64);
      v87 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v87;
      *&v303[48] = v85;
      *&v303[64] = v86;
      v88 = *(v40 + 112);
      v89 = *(v40 + 128);
      v90 = *(v40 + 144);
      *&v303[156] = *(v40 + 156);
      *&v303[128] = v89;
      *&v303[144] = v90;
      *&v303[112] = v88;
      v304 = 0;
      sub_242E509CC(v82, v91, v92);
      v60 = v295;
      v93 = v299;
      v94 = sub_242F05F20();
      if (!v93)
      {
        v99 = *(v40 + 172);
        v98 = v40 + 172;
        v97 = v99;
        LOWORD(v99) = *(v98 + 4);
        v303[6] = *(v98 + 6);
        *&v303[4] = v99;
        *v303 = v97;
        v304 = 1;
        sub_242EE271C(v94, v95, v96);
        sub_242F05EB0();
      }

      v68 = v294;
      goto LABEL_38;
    case 13:
      v303[0] = 13;
      sub_242EE26C8(v37, v38, v39);
      v51 = v296;
      v52 = v300;
      v53 = v306;
      v193 = sub_242F05E40();
      v194 = *v40;
      v195 = *(v40 + 32);
      *&v303[16] = *(v40 + 16);
      *&v303[32] = v195;
      *v303 = v194;
      v196 = *(v40 + 48);
      v197 = *(v40 + 64);
      v198 = *(v40 + 96);
      *&v303[80] = *(v40 + 80);
      *&v303[96] = v198;
      *&v303[48] = v196;
      *&v303[64] = v197;
      v199 = *(v40 + 112);
      v200 = *(v40 + 128);
      v201 = *(v40 + 144);
      *&v303[156] = *(v40 + 156);
      *&v303[128] = v200;
      *&v303[144] = v201;
      *&v303[112] = v199;
      v304 = 0;
      sub_242E509CC(v193, v202, v203);
      v60 = v298;
      v204 = v299;
      v205 = sub_242F05F20();
      if (!v204)
      {
        v210 = *(v40 + 172);
        v209 = v40 + 172;
        v208 = v210;
        LOWORD(v210) = *(v209 + 4);
        v303[6] = *(v209 + 6);
        *&v303[4] = v210;
        *v303 = v208;
        v304 = 1;
        sub_242EE271C(v205, v206, v207);
        sub_242F05F20();
      }

      v68 = v297;
LABEL_38:
      (*(v68 + 8))(v51, v60);
      result = (*(v301 + 8))(v53, v52);
      break;
    default:
      v303[0] = 0;
      sub_242EE2DAC(v37, v38, v39);
      v41 = v300;
      v42 = v306;
      sub_242F05E40();
      v43 = memcpy(v303, v40, 0x15DuLL);
      v304 = 0;
      sub_242EE2E00(v43, v44, v45);
      v46 = v299;
      v47 = sub_242F05F20();
      if (v46)
      {
        (*(v261 + 8))(v29, v27);
        result = (*(v301 + 8))(v42, v41);
      }

      else
      {
        v256 = *(v40 + 349);
        v257 = *(v40 + 353);
        v303[6] = *(v40 + 355);
        *&v303[4] = v257;
        *v303 = v256;
        v304 = 1;
        sub_242EE271C(v47, v48, v49);
        sub_242F05F20();
        (*(v261 + 8))(v29, v27);
LABEL_41:
        result = (*(v301 + 8))(v42, v41);
      }

      break;
  }

  return result;
}

void ProgressBarType.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, 0x164uLL);
  switch(sub_242D4926C(__dst))
  {
    case 1u:
      v43 = sub_242C5904C(__dst);
      v44 = *(v43 + 96) | ((*(v43 + 100) | (*(v43 + 102) << 16)) << 32);
      MEMORY[0x245D279A0](1);
      *&v49[32] = *(v43 + 32);
      *&v49[48] = *(v43 + 48);
      *&v49[64] = *(v43 + 64);
      *&v49[80] = *(v43 + 80);
      *v49 = *v43;
      *&v49[16] = *(v43 + 16);
      BackgroundConfiguration.hash(into:)(a1);
      if ((~v44 & 0x80808080808080) == 0)
      {
        goto LABEL_13;
      }

      *v49 = v44;
      v49[6] = BYTE6(v44);
      v23 = HIDWORD(v44);
      goto LABEL_25;
    case 2u:
      v31 = sub_242C5904C(__dst);
      v32 = *(v31 + 144);
      v33 = *(v31 + 150);
      v34 = *(v31 + 148);
      MEMORY[0x245D279A0](2);
      v35 = *(v31 + 48);
      v36 = *(v31 + 52);
      v37 = *(v31 + 16);
      *v49 = *v31;
      *&v49[16] = v37;
      *&v49[32] = *(v31 + 32);
      v49[52] = v36;
      *&v49[48] = v35;
      Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
      v38 = *(v31 + 104);
      *&v49[32] = *(v31 + 88);
      *&v49[48] = v38;
      *&v49[64] = *(v31 + 120);
      *&v49[80] = *(v31 + 136);
      v39 = *(v31 + 72);
      *v49 = *(v31 + 56);
      *&v49[16] = v39;
      DigiBarMarkerType.hash(into:)(a1);
      v49[6] = v33;
      *&v49[4] = v34;
      *v49 = v32;
      goto LABEL_26;
    case 3u:
      v40 = sub_242C5904C(__dst);
      v4 = *(v40 + 172);
      v14 = *(v40 + 178);
      v15 = *(v40 + 176);
      v41 = 3;
      goto LABEL_16;
    case 4u:
      v16 = sub_242C5904C(__dst);
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);
      v19 = *(v16 + 48);
      v20 = *(v16 + 52);
      v21 = *(v16 + 60);
      v47 = *(v16 + 16);
      v48 = *v16;
      MEMORY[0x245D279A0](4);
      *v49 = v48;
      *&v49[16] = v47;
      *&v49[32] = v17;
      *&v49[40] = v18;
      v49[52] = v20;
      *&v49[48] = v19;
      Instrument.GaugeStyle.DigiBarConfiguration.Style.hash(into:)(a1);
      v22 = *(v16 + 61) | ((*(v16 + 65) | (*(v16 + 67) << 16)) << 32);
      sub_242F063C0();
      v49[0] = v21;
      Instrument.Configuration.BlendMode.rawValue.getter();
      sub_242F04DD0();

      if ((~v22 & 0x80808080808080) == 0)
      {
        goto LABEL_13;
      }

      *v49 = v22;
      v49[6] = BYTE6(v22);
      v23 = HIDWORD(v22);
      goto LABEL_25;
    case 5u:
      v40 = sub_242C5904C(__dst);
      v4 = *(v40 + 172);
      v14 = *(v40 + 178);
      v15 = *(v40 + 176);
      v41 = 5;
      goto LABEL_16;
    case 6u:
      v45 = sub_242C5904C(__dst);
      MEMORY[0x245D279A0](6);
      memcpy(v49, v45, sizeof(v49));
      v46 = sub_242D49294(v49);
      sub_242C59070(v49);
      if (v46 == 1)
      {
        MEMORY[0x245D279A0](1);
        PowermeterDataIdentifiers.hash(into:)(a1);
        Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
      }

      else
      {
        MEMORY[0x245D279A0](0);
      }

      Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
      return;
    case 7u:
      v42 = sub_242C5904C(__dst);
      MEMORY[0x245D279A0](7);
      *&v49[80] = v42[5];
      *&v49[96] = v42[6];
      *&v49[112] = v42[7];
      *&v49[128] = v42[8];
      *&v49[16] = v42[1];
      *&v49[32] = v42[2];
      *&v49[48] = v42[3];
      *&v49[64] = v42[4];
      *v49 = *v42;
      ConcentricRingsConfiguration.hash(into:)(a1);
      return;
    case 8u:
      v26 = sub_242C5904C(__dst);
      v27 = *(v26 + 240);
      v28 = *(v26 + 246);
      v29 = *(v26 + 244);
      v30 = 8;
      goto LABEL_23;
    case 9u:
      v26 = sub_242C5904C(__dst);
      v27 = *(v26 + 240);
      v28 = *(v26 + 246);
      v29 = *(v26 + 244);
      v30 = 9;
      goto LABEL_23;
    case 0xAu:
      v26 = sub_242C5904C(__dst);
      v27 = *(v26 + 240);
      v28 = *(v26 + 246);
      v29 = *(v26 + 244);
      v30 = 10;
LABEL_23:
      MEMORY[0x245D279A0](v30);
      sub_242C79DEC(a1, *v26);
      *&v49[128] = *(v26 + 136);
      *&v49[144] = *(v26 + 152);
      *&v49[160] = *(v26 + 168);
      *&v49[176] = *(v26 + 184);
      *&v49[64] = *(v26 + 72);
      *&v49[80] = *(v26 + 88);
      *&v49[96] = *(v26 + 104);
      *&v49[112] = *(v26 + 120);
      *v49 = *(v26 + 8);
      *&v49[16] = *(v26 + 24);
      *&v49[32] = *(v26 + 40);
      *&v49[48] = *(v26 + 56);
      Instrument.GaugeStyle.TicksConfiguration.TickLabelsConfiguration.hash(into:)(a1);
      sub_242CCEA14();
      v49[6] = v28;
      *&v49[4] = v29;
      *v49 = v27;
      goto LABEL_26;
    case 0xBu:
      v13 = sub_242C5904C(__dst);
      v4 = *(v13 + 61);
      v14 = *(v13 + 67);
      v15 = *(v13 + 65);
      MEMORY[0x245D279A0](11);
      *v49 = *v13;
      *&v49[16] = *(v13 + 16);
      *&v49[32] = *(v13 + 32);
      *&v49[45] = *(v13 + 45);
      DigiBandGradientProgressConfiguration.hash(into:)(a1);
      goto LABEL_17;
    case 0xCu:
      v24 = sub_242C5904C(__dst);
      v25 = *(v24 + 172) | ((*(v24 + 176) | (*(v24 + 178) << 16)) << 32);
      MEMORY[0x245D279A0](12);
      *&v49[112] = *(v24 + 112);
      *&v49[128] = *(v24 + 128);
      *&v49[144] = *(v24 + 144);
      *&v49[156] = *(v24 + 156);
      *&v49[48] = *(v24 + 48);
      *&v49[64] = *(v24 + 64);
      *&v49[80] = *(v24 + 80);
      *&v49[96] = *(v24 + 96);
      *v49 = *v24;
      *&v49[16] = *(v24 + 16);
      *&v49[32] = *(v24 + 32);
      Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
      if ((~v25 & 0x80808080808080) != 0)
      {
        *v49 = v25;
        v49[6] = BYTE6(v25);
        v23 = HIDWORD(v25);
LABEL_25:
        *&v49[4] = v23;
        sub_242F063B0();
LABEL_26:
        ProgressBarType.ProgressDataSource.hash(into:)(a1);
      }

      else
      {
LABEL_13:
        sub_242F063B0();
      }

      return;
    case 0xDu:
      v40 = sub_242C5904C(__dst);
      v4 = *(v40 + 172);
      v14 = *(v40 + 178);
      v15 = *(v40 + 176);
      v41 = 13;
LABEL_16:
      MEMORY[0x245D279A0](v41);
      *&v49[112] = *(v40 + 112);
      *&v49[128] = *(v40 + 128);
      *&v49[144] = *(v40 + 144);
      *&v49[156] = *(v40 + 156);
      *&v49[48] = *(v40 + 48);
      *&v49[64] = *(v40 + 64);
      *&v49[80] = *(v40 + 80);
      *&v49[96] = *(v40 + 96);
      *v49 = *v40;
      *&v49[16] = *(v40 + 16);
      *&v49[32] = *(v40 + 32);
      Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
LABEL_17:
      v49[6] = v14;
      *&v49[4] = v15;
      goto LABEL_18;
    default:
      v3 = sub_242C5904C(__dst);
      v4 = *(v3 + 349);
      v5 = *(v3 + 355);
      v6 = *(v3 + 353);
      MEMORY[0x245D279A0](0);
      v7 = *(v3 + 348);
      *&v49[112] = *(v3 + 112);
      *&v49[128] = *(v3 + 128);
      *&v49[144] = *(v3 + 144);
      *&v49[156] = *(v3 + 156);
      *&v49[48] = *(v3 + 48);
      *&v49[64] = *(v3 + 64);
      *&v49[80] = *(v3 + 80);
      *&v49[96] = *(v3 + 96);
      *v49 = *v3;
      *&v49[16] = *(v3 + 16);
      *&v49[32] = *(v3 + 32);
      Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
      v8 = *(v3 + 320);
      *&v49[128] = *(v3 + 304);
      *&v49[144] = v8;
      *&v49[156] = *(v3 + 332);
      v9 = *(v3 + 256);
      *&v49[64] = *(v3 + 240);
      *&v49[80] = v9;
      v10 = *(v3 + 288);
      *&v49[96] = *(v3 + 272);
      *&v49[112] = v10;
      v11 = *(v3 + 192);
      *v49 = *(v3 + 176);
      *&v49[16] = v11;
      v12 = *(v3 + 224);
      *&v49[32] = *(v3 + 208);
      *&v49[48] = v12;
      Instrument.GaugeStyle.DigiBarConfiguration.hash(into:)(a1);
      MEMORY[0x245D279A0](v7 + 1);
      v49[6] = v5;
      *&v49[4] = v6;
LABEL_18:
      *v49 = v4;
      goto LABEL_26;
  }
}

uint64_t ProgressBarType.hashValue.getter()
{
  sub_242F06390();
  ProgressBarType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t ProgressBarType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v222 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEA0, &qword_242F4B088);
  v220 = *(v3 - 8);
  v221 = v3;
  MEMORY[0x28223BE20](v3);
  v230 = &v191 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEA8, &qword_242F4B090);
  v218 = *(v5 - 8);
  v219 = v5;
  MEMORY[0x28223BE20](v5);
  v231 = &v191 - v6;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEB0, &qword_242F4B098);
  v213 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v234 = &v191 - v7;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEB8, &qword_242F4B0A0);
  v215 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v229 = &v191 - v8;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEC0, &qword_242F4B0A8);
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v233 = &v191 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEC8, &qword_242F4B0B0);
  v210 = *(v10 - 8);
  v211 = v10;
  MEMORY[0x28223BE20](v10);
  v232 = &v191 - v11;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCED0, &qword_242F4B0B8);
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v227 = &v191 - v12;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCED8, &qword_242F4B0C0);
  v202 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v226 = &v191 - v13;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEE0, &qword_242F4B0C8);
  v207 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v228 = &v191 - v14;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEE8, &qword_242F4B0D0);
  v201 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v225 = &v191 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEF0, &qword_242F4B0D8);
  v200 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v224 = &v191 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCEF8, &qword_242F4B0E0);
  v198 = *(v17 - 8);
  v199 = v17;
  MEMORY[0x28223BE20](v17);
  v223 = &v191 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCF00, &qword_242F4B0E8);
  v196 = *(v19 - 8);
  v197 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v191 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCF08, &qword_242F4B0F0);
  v195 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v191 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFCF10, &qword_242F4B0F8);
  v235 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v191 - v26;
  v28 = a1[3];
  v250 = a1;
  v29 = __swift_project_boxed_opaque_existential_2Tm(a1, v28);
  sub_242EE2674(v29, v30, v31);
  v32 = v236;
  sub_242F06480();
  if (v32)
  {
    v33 = v250;
  }

  else
  {
    v192 = v22;
    v193 = v24;
    v194 = v21;
    v35 = v232;
    v34 = v233;
    v36 = v234;
    v236 = v25;
    v37 = sub_242F05E10();
    v38 = (2 * *(v37 + 16)) | 1;
    v246 = v37;
    v247 = v37 + 32;
    v248 = 0;
    v249 = v38;
    v39 = sub_242C7FBEC();
    if (v248 == v249 >> 1)
    {
      switch(v39)
      {
        case 0:
          v239[0] = 0;
          sub_242EE2DAC(v39, v40, v41);
          v42 = v193;
          v43 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE3268(v43, v45, v46);
          v47 = v192;
          sub_242F05E00();
          v175 = memcpy(v237, v238, 0x15DuLL);
          v240 = 1;
          sub_242EE2E54(v175, v176, v177);
          sub_242F05E00();
          v178 = (v235 + 8);
          (*(v195 + 8))(v42, v47);
          (*v178)(v27, v236);
          swift_unknownObjectRelease();
          memcpy(v239, v237, 0x15DuLL);
          *&v239[353] = v242;
          *&v239[349] = v241;
          v239[355] = v243;
          sub_242EE32BC(v239);
          goto LABEL_21;
        case 1:
          v239[0] = 1;
          sub_242EE2D04(v39, v40, v41);
          v106 = v194;
          v107 = v236;
          v108 = sub_242F05D10();
          v244 = 0;
          sub_242EE31E8(v108, v142, v143);
          v144 = v197;
          v145 = sub_242F05E00();
          v179 = v235;
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v240 = 1;
          sub_242EE2E54(v145, v180, v181);
          sub_242F05D90();
          (*(v196 + 8))(v106, v144);
          (*(v179 + 8))(v27, v107);
          swift_unknownObjectRelease();
          *&v239[32] = v237[2];
          *&v239[48] = v237[3];
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          v239[102] = v243;
          *&v239[100] = v242;
          *&v239[96] = v241;
          sub_242EE323C(v239);
          memcpy(v245, v239, sizeof(v245));
          v44 = v250;
          goto LABEL_23;
        case 2:
          v239[0] = 2;
          sub_242EE2C5C(v39, v40, v41);
          v85 = v223;
          v86 = v236;
          v87 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE3168(v87, v136, v137);
          v138 = v199;
          v139 = v85;
          v140 = sub_242F05E00();
          v141 = v235;
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[8] = *&v238[128];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v240 = 1;
          sub_242EE2E54(v140, v171, v172);
          sub_242F05E00();
          (*(v198 + 8))(v139, v138);
          (*(v141 + 8))(v27, v86);
          swift_unknownObjectRelease();
          *&v239[96] = v237[6];
          *&v239[112] = v237[7];
          *&v239[128] = v237[8];
          *&v239[32] = v237[2];
          *&v239[48] = v237[3];
          *&v239[80] = v237[5];
          *&v239[64] = v237[4];
          *&v239[16] = v237[1];
          *v239 = v237[0];
          v239[150] = v243;
          *&v239[148] = v242;
          *&v239[144] = v241;
          sub_242EE31BC(v239);
          goto LABEL_21;
        case 3:
          v239[0] = 3;
          sub_242EE2C08(v39, v40, v41);
          v88 = v224;
          v89 = v236;
          v90 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242E50AD0(v90, v91, v92);
          v93 = v203;
          v94 = v88;
          v95 = sub_242F05E00();
          v96 = v235;
          v227 = v27;
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          *(&v237[9] + 12) = *&v238[156];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v95, v173, v174);
          sub_242F05E00();
          (*(v200 + 8))(v94, v93);
          (*(v96 + 8))(v227, v89);
          swift_unknownObjectRelease();
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[156] = *(&v237[9] + 12);
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[178] = v243;
          *&v239[176] = v242;
          *&v239[172] = v241;
          sub_242EE313C(v239);
          goto LABEL_21;
        case 4:
          v239[0] = 4;
          sub_242EE2B60(v39, v40, v41);
          v61 = v225;
          v62 = v236;
          v63 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE30C4(v63, v64, v65);
          v66 = v205;
          v67 = sub_242F05E00();
          v68 = v235;
          v227 = v27;
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          *(&v237[2] + 13) = *&v238[45];
          v240 = 1;
          sub_242EE2E54(v67, v165, v166);
          sub_242F05D90();
          (*(v201 + 8))(v61, v66);
          (*(v68 + 8))(v227, v62);
          swift_unknownObjectRelease();
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[32] = v237[2];
          *&v239[45] = *(&v237[2] + 13);
          v239[67] = v243;
          *&v239[65] = v242;
          *&v239[61] = v241;
          sub_242EE3118(v239);
          goto LABEL_21;
        case 5:
          v239[0] = 5;
          sub_242EE2B0C(v39, v40, v41);
          v109 = v228;
          v110 = v236;
          v111 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242E50AD0(v111, v112, v113);
          v114 = v209;
          v115 = v109;
          v116 = sub_242F05E00();
          v117 = v235;
          v227 = v27;
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          *(&v237[9] + 12) = *&v238[156];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v116, v182, v183);
          sub_242F05E00();
          (*(v207 + 8))(v115, v114);
          (*(v117 + 8))(v227, v110);
          swift_unknownObjectRelease();
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[156] = *(&v237[9] + 12);
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[178] = v243;
          *&v239[176] = v242;
          *&v239[172] = v241;
          sub_242EE309C(v239);
          goto LABEL_21;
        case 6:
          v239[0] = 6;
          sub_242EE2A64(v39, v40, v41);
          v121 = v226;
          v122 = v27;
          v123 = v236;
          v124 = sub_242F05D10();
          v44 = v250;
          v152 = v122;
          sub_242EE3048(v124, v153, v154);
          v155 = v204;
          sub_242F05E00();
          v156 = (v235 + 8);
          (*(v202 + 8))(v121, v155);
          (*v156)(v152, v123);
          swift_unknownObjectRelease();
          memcpy(v238, v239, sizeof(v238));
          sub_242D7CF24(v238);
          v186 = v238;
          goto LABEL_22;
        case 7:
          v239[0] = 7;
          sub_242EE29BC(v39, v40, v41);
          v97 = v227;
          v98 = v27;
          v99 = v236;
          v100 = sub_242F05D10();
          v44 = v250;
          v101 = v98;
          sub_242EE2FCC(v100, v102, v103);
          v104 = v208;
          sub_242F05E00();
          v105 = (v235 + 8);
          (*(v206 + 8))(v97, v104);
          (*v105)(v101, v99);
          swift_unknownObjectRelease();
          *&v239[96] = *&v238[96];
          *&v239[112] = *&v238[112];
          *&v239[128] = *&v238[128];
          *&v239[32] = *&v238[32];
          *&v239[48] = *&v238[48];
          *&v239[80] = *&v238[80];
          *&v239[64] = *&v238[64];
          *&v239[16] = *&v238[16];
          *v239 = *v238;
          sub_242EE3020(v239);
          goto LABEL_21;
        case 8:
          v239[0] = 8;
          sub_242EE2968(v39, v40, v41);
          v133 = v35;
          v134 = v236;
          v135 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE2F78(v135, v157, v158);
          v159 = v211;
          v160 = sub_242F05E00();
          v161 = v235;
          v227 = v27;
          v237[12] = *&v238[192];
          v237[13] = *&v238[208];
          v237[14] = *&v238[224];
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          v237[10] = *&v238[160];
          v237[11] = *&v238[176];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v160, v189, v190);
          sub_242F05E00();
          (*(v210 + 8))(v133, v159);
          (*(v161 + 8))(v227, v134);
          swift_unknownObjectRelease();
          *&v239[192] = v237[12];
          *&v239[208] = v237[13];
          *&v239[224] = v237[14];
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[176] = v237[11];
          *&v239[160] = v237[10];
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[246] = v243;
          *&v239[244] = v242;
          *&v239[240] = v241;
          sub_242D7CF00(v239);
          goto LABEL_21;
        case 9:
          v239[0] = 9;
          sub_242EE2914(v39, v40, v41);
          v78 = v236;
          v79 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE2F78(v79, v80, v81);
          v82 = v214;
          v83 = sub_242F05E00();
          v84 = v235;
          v227 = v27;
          v237[12] = *&v238[192];
          v237[13] = *&v238[208];
          v237[14] = *&v238[224];
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          v237[10] = *&v238[160];
          v237[11] = *&v238[176];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v83, v169, v170);
          sub_242F05E00();
          (*(v212 + 8))(v34, v82);
          (*(v84 + 8))(v227, v78);
          swift_unknownObjectRelease();
          *&v239[192] = v237[12];
          *&v239[208] = v237[13];
          *&v239[224] = v237[14];
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[176] = v237[11];
          *&v239[160] = v237[10];
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[246] = v243;
          *&v239[244] = v242;
          *&v239[240] = v241;
          sub_242D7CED8(v239);
          goto LABEL_21;
        case 10:
          v239[0] = 10;
          sub_242EE286C(v39, v40, v41);
          v125 = v229;
          v126 = v236;
          v127 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE2F78(v127, v128, v129);
          v130 = v217;
          v131 = sub_242F05E00();
          v132 = v235;
          v227 = v27;
          v237[12] = *&v238[192];
          v237[13] = *&v238[208];
          v237[14] = *&v238[224];
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          v237[10] = *&v238[160];
          v237[11] = *&v238[176];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v131, v187, v188);
          sub_242F05E00();
          (*(v215 + 8))(v125, v130);
          (*(v132 + 8))(v227, v126);
          swift_unknownObjectRelease();
          *&v239[192] = v237[12];
          *&v239[208] = v237[13];
          *&v239[224] = v237[14];
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[176] = v237[11];
          *&v239[160] = v237[10];
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[246] = v243;
          *&v239[244] = v242;
          *&v239[240] = v241;
          sub_242D7CEB0(v239);
          goto LABEL_21;
        case 11:
          v239[0] = 11;
          sub_242EE27C4(v39, v40, v41);
          v53 = v36;
          v54 = v236;
          v55 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242EE2EFC(v55, v56, v57);
          v58 = v216;
          v59 = sub_242F05E00();
          v60 = v235;
          v227 = v27;
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          *(&v237[2] + 13) = *&v238[45];
          v240 = 1;
          sub_242EE2E54(v59, v163, v164);
          sub_242F05E00();
          (*(v213 + 8))(v53, v58);
          (*(v60 + 8))(v227, v54);
          swift_unknownObjectRelease();
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[32] = v237[2];
          *&v239[45] = *(&v237[2] + 13);
          v239[67] = v243;
          *&v239[65] = v242;
          *&v239[61] = v241;
          sub_242EE2F50(v239);
          goto LABEL_21;
        case 12:
          v239[0] = 12;
          sub_242EE2770(v39, v40, v41);
          v69 = v231;
          v70 = v236;
          v71 = sub_242F05D10();
          v44 = v250;
          v244 = 0;
          sub_242E50AD0(v71, v72, v73);
          v74 = v219;
          v75 = v69;
          v76 = sub_242F05E00();
          v77 = v235;
          v227 = v27;
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          *(&v237[9] + 12) = *&v238[156];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v76, v167, v168);
          sub_242F05D90();
          (*(v218 + 8))(v75, v74);
          (*(v77 + 8))(v227, v70);
          swift_unknownObjectRelease();
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[156] = *(&v237[9] + 12);
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[178] = v243;
          *&v239[176] = v242;
          *&v239[172] = v241;
          sub_242EE2ED4(v239);
          goto LABEL_21;
        case 13:
          v239[0] = 13;
          sub_242EE26C8(v39, v40, v41);
          v118 = v230;
          v119 = v236;
          v120 = sub_242F05D10();
          v244 = 0;
          sub_242E50AD0(v120, v146, v147);
          v148 = v221;
          v149 = v118;
          v150 = sub_242F05E00();
          v44 = v250;
          v151 = v235;
          v227 = v27;
          v237[8] = *&v238[128];
          v237[9] = *&v238[144];
          *(&v237[9] + 12) = *&v238[156];
          v237[4] = *&v238[64];
          v237[5] = *&v238[80];
          v237[6] = *&v238[96];
          v237[7] = *&v238[112];
          v237[0] = *v238;
          v237[1] = *&v238[16];
          v237[2] = *&v238[32];
          v237[3] = *&v238[48];
          v240 = 1;
          sub_242EE2E54(v150, v184, v185);
          sub_242F05E00();
          (*(v220 + 8))(v149, v148);
          (*(v151 + 8))(v227, v119);
          swift_unknownObjectRelease();
          *&v239[128] = v237[8];
          *&v239[144] = v237[9];
          *&v239[156] = *(&v237[9] + 12);
          *&v239[64] = v237[4];
          *&v239[80] = v237[5];
          *&v239[112] = v237[7];
          *&v239[96] = v237[6];
          *v239 = v237[0];
          *&v239[16] = v237[1];
          *&v239[48] = v237[3];
          *&v239[32] = v237[2];
          v239[178] = v243;
          *&v239[176] = v242;
          *&v239[172] = v241;
          sub_242EE2EA8(v239);
LABEL_21:
          v186 = v239;
LABEL_22:
          memcpy(v245, v186, sizeof(v245));
LABEL_23:
          memcpy(v222, v245, 0x164uLL);
          v33 = v44;
          break;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v48 = v27;
      v49 = sub_242F05B10();
      swift_allocError();
      v51 = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
      *v51 = &type metadata for ProgressBarType;
      v52 = v236;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
      swift_willThrow();
      (*(v235 + 8))(v48, v52);
      swift_unknownObjectRelease();
      v33 = v250;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v33);
}

uint64_t sub_242EE0540()
{
  sub_242F06390();
  ProgressBarType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EE0584(uint64_t a1)
{
  sub_242F06390();
  ProgressBarType.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI15ProgressBarTypeO0E10DataSourceO2eeoiySbAE_AEtFZ_0(unsigned int *a1, uint64_t a2)
{
  v2 = *(a1 + 6);
  v3 = *(a1 + 2);
  v4 = *a1;
  v5 = v4 | ((v3 | (v2 << 16)) << 32);
  v6 = (v4 >> 30) & 2 | (v4 >> 23) & 1 | (v3 >> 5) & 4 | (v3 >> 12) & 8 | (v2 >> 3) & 0x10;
  v7 = (*a2 >> 30) & 2 | (*a2 >> 23) & 1 | (*(a2 + 4) >> 5) & 4 | (*(a2 + 4) >> 12) & 8 | (*(a2 + 6) >> 3) & 0x10;
  switch(v6)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_31;
    case 2:
      if (v7 == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 3:
      if (v7 == 3)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 4:
      if (v7 == 4)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 5:
      if (v7 == 5)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 6:
      if (v7 == 6)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 7:
      if (v7 == 7)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 8:
      if (v7 == 8)
      {
        goto LABEL_31;
      }

      goto LABEL_60;
    case 9:
      if (v7 == 9)
      {
        goto LABEL_31;
      }

      goto LABEL_60;
    case 10:
      if (v7 != 10)
      {
        goto LABEL_60;
      }

      *v13 = v5;
      v13[2] = BYTE2(v5) & 0x7F;
      v13[3] = (v5 & 0x7F7FFFFF) >> 24;
      goto LABEL_48;
    case 11:
      if (v7 != 11)
      {
        goto LABEL_60;
      }

LABEL_31:
      *v13 = v5;
      v13[2] = BYTE2(v5) & 0x7F;
      v13[3] = (v5 & 0x7F7FFFFF) >> 24;
      v8 = _s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0(v13);
      return v8 & 1;
    case 12:
      if (v7 == 12)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 13:
      if (v7 == 13)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 14:
      if (v7 == 14)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 15:
      if (v7 == 15)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 16:
      if (v7 == 16)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 17:
      if (v7 == 17)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 18:
      if (v7 == 18)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 19:
      if (v7 == 19)
      {
        goto LABEL_54;
      }

      goto LABEL_60;
    case 20:
      if (v7 != 20)
      {
        goto LABEL_60;
      }

LABEL_54:
      *v13 = v5;
      v13[2] = (v5 & 0x7F7FFFFF) >> 16;
      v13[3] = (v5 & 0x7F7FFFFF) >> 24;
      v13[4] = (v5 & 0x7F7F7F7F7FFFFFLL) >> 32;
      v8 = _s14CarPlayAssetUI25TachometerDataIdentifiersV2eeoiySbAC_ACtFZ_0(v13);
      return v8 & 1;
    case 21:
      if (v7 == 21)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 22:
      if (v7 == 22)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 23:
      if (v7 == 23)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 24:
      if (v7 == 24)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 25:
      if (v7 == 25)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 26:
      if (v7 != 26)
      {
        goto LABEL_60;
      }

      goto LABEL_41;
    case 27:
      if (v7 == 27)
      {
        goto LABEL_41;
      }

      goto LABEL_60;
    case 28:
      if (v7 != 28)
      {
        goto LABEL_60;
      }

LABEL_41:
      *v13 = v5;
      v9 = vdupq_n_s64(v5 & 0x7F7F7F7F7FFFFFLL);
      v10 = vmovn_s64(vshlq_u64(v9, xmmword_242F4ADB0));
      v11 = vshlq_u64(v9, xmmword_242F4ADA0);
      *v11.i8 = vmovn_s64(v11);
      v11.i16[1] = v11.i16[2];
      v11.i16[2] = v10.i16[0];
      v11.i16[3] = v10.i16[2];
      *&v13[2] = vmovn_s16(v11).u32[0];
      v14 = BYTE6(v5) & 0x7F;
      v8 = _s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v13);
      break;
    default:
      if (v7)
      {
LABEL_60:
        v8 = 0;
      }

      else
      {
        *v13 = v5;
LABEL_48:
        v8 = _s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0(v13);
      }

      break;
  }

  return v8 & 1;
}

uint64_t _s14CarPlayAssetUI15ProgressBarTypeO2eeoiySbAC_ACtFZ_0(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x164uLL);
  memcpy(__srca, a2, 0x164uLL);
  memcpy(v93, __src, 0x164uLL);
  memcpy(v94, a2, sizeof(v94));
  memcpy(v95, __src, 0x164uLL);
  switch(sub_242D4926C(v95))
  {
    case 1u:
      v54 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 1)
      {
        goto LABEL_43;
      }

      v55 = sub_242C5904C(v90);
      v88[2] = *(v54 + 32);
      v88[3] = *(v54 + 48);
      v88[4] = *(v54 + 64);
      v88[5] = *(v54 + 80);
      v88[0] = *v54;
      v88[1] = *(v54 + 16);
      v56 = *(v55 + 48);
      v87[2] = *(v55 + 32);
      v87[3] = v56;
      v57 = *(v55 + 80);
      v87[4] = *(v55 + 64);
      v87[5] = v57;
      v58 = *(v55 + 16);
      v87[0] = *v55;
      v87[1] = v58;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if (!_s14CarPlayAssetUI23BackgroundConfigurationV2eeoiySbAC_ACtFZ_0(v88, v87))
      {
        goto LABEL_44;
      }

      v26 = *(v54 + 96) | ((*(v54 + 100) | (*(v54 + 102) << 16)) << 32);
      v27 = *(v55 + 100) | (*(v55 + 102) << 16);
      v28 = *(v55 + 96);
      goto LABEL_27;
    case 2u:
      v37 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 2)
      {
        goto LABEL_43;
      }

      v38 = sub_242C5904C(v90);
      v88[5] = *(v37 + 80);
      v88[6] = *(v37 + 96);
      v88[7] = *(v37 + 112);
      v88[8] = *(v37 + 128);
      v88[1] = *(v37 + 16);
      v88[2] = *(v37 + 32);
      v88[3] = *(v37 + 48);
      v88[4] = *(v37 + 64);
      v88[0] = *v37;
      v39 = *(v38 + 112);
      v87[6] = *(v38 + 96);
      v87[7] = v39;
      v87[8] = *(v38 + 128);
      v40 = *(v38 + 48);
      v87[2] = *(v38 + 32);
      v87[3] = v40;
      v41 = *(v38 + 80);
      v87[4] = *(v38 + 64);
      v87[5] = v41;
      v42 = *(v38 + 16);
      v87[0] = *v38;
      v87[1] = v42;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if ((_s14CarPlayAssetUI32DigiBarSingleMarkerConfigurationV2eeoiySbAC_ACtFZ_0(v88, v87) & 1) == 0)
      {
        goto LABEL_44;
      }

      v44 = *(v37 + 144);
      v43 = v37 + 144;
      v15 = v44;
      v18 = *(v43 + 6);
      v19 = *(v43 + 4);
      v45 = *(v38 + 144);
      v21 = v38 + 144;
      v20 = v45;
      goto LABEL_40;
    case 3u:
      v46 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) == 3)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    case 4u:
      v23 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 4)
      {
        goto LABEL_43;
      }

      v24 = sub_242C5904C(v90);
      v88[0] = *v23;
      v88[1] = *(v23 + 16);
      v88[2] = *(v23 + 32);
      *(&v88[2] + 13) = *(v23 + 45);
      v25 = *(v24 + 16);
      v87[0] = *v24;
      v87[1] = v25;
      v87[2] = *(v24 + 32);
      *(&v87[2] + 13) = *(v24 + 45);
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if ((_s14CarPlayAssetUI24DigiBarMaskConfigurationV2eeoiySbAC_ACtFZ_0(v88, v87) & 1) == 0)
      {
        goto LABEL_44;
      }

      v26 = *(v23 + 61) | ((*(v23 + 65) | (*(v23 + 67) << 16)) << 32);
      v27 = *(v24 + 65) | (*(v24 + 67) << 16);
      v28 = *(v24 + 61);
      goto LABEL_27;
    case 5u:
      v46 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    case 6u:
      v69 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 6)
      {
        goto LABEL_43;
      }

      v70 = sub_242C5904C(v90);
      memcpy(v87, v69, 0x164uLL);
      memcpy(v86, v70, 0x164uLL);
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      v53 = _s14CarPlayAssetUI10InstrumentV10GaugeStyleO24ProgressBarConfigurationV0G0O2eeoiySbAI_AItFZ_0(v87, v86);
      sub_242EE7848(v93);
      memcpy(v88, v86, 0x164uLL);
      sub_242E50BE4(v88);
      memcpy(v89, v87, 0x164uLL);
      sub_242E50BE4(v89);
      return v53 & 1;
    case 7u:
      v47 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 7)
      {
        goto LABEL_43;
      }

      v48 = sub_242C5904C(v90);
      v88[5] = v47[5];
      v88[6] = v47[6];
      v88[7] = v47[7];
      v88[8] = v47[8];
      v88[1] = v47[1];
      v88[2] = v47[2];
      v88[3] = v47[3];
      v88[4] = v47[4];
      v88[0] = *v47;
      v49 = v48[7];
      v87[6] = v48[6];
      v87[7] = v49;
      v87[8] = v48[8];
      v50 = v48[3];
      v87[2] = v48[2];
      v87[3] = v50;
      v51 = v48[5];
      v87[4] = v48[4];
      v87[5] = v51;
      v52 = v48[1];
      v87[0] = *v48;
      v87[1] = v52;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      v53 = _s14CarPlayAssetUI28ConcentricRingsConfigurationV2eeoiySbAC_ACtFZ_0(v88, v87);
      sub_242EE7848(v93);
      sub_242D492A0(__srca);
      sub_242D492A0(__dst);
      return v53 & 1;
    case 8u:
      v36 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 8)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    case 9u:
      v36 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 9)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    case 0xAu:
      v36 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 10)
      {
        goto LABEL_43;
      }

LABEL_38:
      v71 = sub_242C5904C(v90);
      v88[11] = *(v36 + 176);
      v88[12] = *(v36 + 192);
      v88[13] = *(v36 + 208);
      v88[14] = *(v36 + 224);
      v88[7] = *(v36 + 112);
      v88[8] = *(v36 + 128);
      v88[9] = *(v36 + 144);
      v88[10] = *(v36 + 160);
      v88[3] = *(v36 + 48);
      v88[4] = *(v36 + 64);
      v88[5] = *(v36 + 80);
      v88[6] = *(v36 + 96);
      v88[0] = *v36;
      v88[1] = *(v36 + 16);
      v88[2] = *(v36 + 32);
      v72 = *(v71 + 208);
      v87[12] = *(v71 + 192);
      v87[13] = v72;
      v87[14] = *(v71 + 224);
      v73 = *(v71 + 144);
      v87[8] = *(v71 + 128);
      v87[9] = v73;
      v74 = *(v71 + 176);
      v87[10] = *(v71 + 160);
      v87[11] = v74;
      v75 = *(v71 + 80);
      v87[4] = *(v71 + 64);
      v87[5] = v75;
      v76 = *(v71 + 112);
      v87[6] = *(v71 + 96);
      v87[7] = v76;
      v77 = *(v71 + 16);
      v87[0] = *v71;
      v87[1] = v77;
      v78 = *(v71 + 48);
      v87[2] = *(v71 + 32);
      v87[3] = v78;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if (!_s14CarPlayAssetUI10InstrumentV10GaugeStyleO18TicksConfigurationV2eeoiySbAG_AGtFZ_0(v88, v87))
      {
        goto LABEL_44;
      }

      v80 = *(v36 + 240);
      v79 = v36 + 240;
      v15 = v80;
      v18 = *(v79 + 6);
      v19 = *(v79 + 4);
      v81 = *(v71 + 240);
      v21 = v71 + 240;
      v20 = v81;
      goto LABEL_40;
    case 0xBu:
      v11 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 11)
      {
        goto LABEL_43;
      }

      v12 = sub_242C5904C(v90);
      v13 = *v11;
      v14 = *v12;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if ((sub_242C75A30(v13, v14) & 1) == 0)
      {
        goto LABEL_44;
      }

      v89[0] = *(v11 + 8);
      v89[1] = *(v11 + 24);
      v89[2] = *(v11 + 40);
      *(&v89[2] + 13) = *(v11 + 53);
      v88[0] = *(v12 + 8);
      v88[1] = *(v12 + 24);
      v88[2] = *(v12 + 40);
      *(&v88[2] + 13) = *(v12 + 53);
      if (!_s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(v89, v88))
      {
        goto LABEL_44;
      }

      v17 = *(v11 + 61);
      v16 = v11 + 61;
      v15 = v17;
      v18 = *(v16 + 6);
      v19 = *(v16 + 4);
      v22 = *(v12 + 61);
      v21 = v12 + 61;
      v20 = v22;
      goto LABEL_40;
    case 0xCu:
      v29 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 12)
      {
        goto LABEL_43;
      }

      v30 = sub_242C5904C(v90);
      v88[7] = *(v29 + 112);
      v88[8] = *(v29 + 128);
      v88[9] = *(v29 + 144);
      *(&v88[9] + 12) = *(v29 + 156);
      v88[3] = *(v29 + 48);
      v88[4] = *(v29 + 64);
      v88[5] = *(v29 + 80);
      v88[6] = *(v29 + 96);
      v88[0] = *v29;
      v88[1] = *(v29 + 16);
      v88[2] = *(v29 + 32);
      v31 = *(v30 + 144);
      v87[8] = *(v30 + 128);
      v87[9] = v31;
      *(&v87[9] + 12) = *(v30 + 156);
      v32 = *(v30 + 80);
      v87[4] = *(v30 + 64);
      v87[5] = v32;
      v33 = *(v30 + 112);
      v87[6] = *(v30 + 96);
      v87[7] = v33;
      v34 = *(v30 + 16);
      v87[0] = *v30;
      v87[1] = v34;
      v35 = *(v30 + 48);
      v87[2] = *(v30 + 32);
      v87[3] = v35;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if (!_s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(v88, v87))
      {
        goto LABEL_44;
      }

      v26 = *(v29 + 172) | ((*(v29 + 176) | (*(v29 + 178) << 16)) << 32);
      v27 = *(v30 + 176) | (*(v30 + 178) << 16);
      v28 = *(v30 + 172);
LABEL_27:
      v59 = v28 | (v27 << 32);
      if ((~v26 & 0x80808080808080) == 0)
      {
        sub_242EE7848(v93);
        if ((~v59 & 0x80808080808080) != 0)
        {
          goto LABEL_45;
        }

LABEL_49:
        v53 = 1;
        return v53 & 1;
      }

      LODWORD(v89[0]) = v26;
      BYTE6(v89[0]) = BYTE6(v26);
      WORD2(v89[0]) = WORD2(v26);
      if ((~v59 & 0x80808080808080) == 0)
      {
        goto LABEL_44;
      }

      LODWORD(v88[0]) = v28;
      BYTE6(v88[0]) = (v28 | (v27 << 32)) >> 48;
      WORD2(v88[0]) = (v28 | (v27 << 32)) >> 32;
      v85 = _s14CarPlayAssetUI15ProgressBarTypeO0E10DataSourceO2eeoiySbAE_AEtFZ_0(v89, v88);
      sub_242EE7848(v93);
      if (v85)
      {
        goto LABEL_49;
      }

LABEL_45:
      v53 = 0;
      return v53 & 1;
    case 0xDu:
      v46 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90) != 13)
      {
        goto LABEL_43;
      }

LABEL_33:
      v60 = sub_242C5904C(v90);
      v88[7] = *(v46 + 112);
      v88[8] = *(v46 + 128);
      v88[9] = *(v46 + 144);
      *(&v88[9] + 12) = *(v46 + 156);
      v88[3] = *(v46 + 48);
      v88[4] = *(v46 + 64);
      v88[5] = *(v46 + 80);
      v88[6] = *(v46 + 96);
      v88[0] = *v46;
      v88[1] = *(v46 + 16);
      v88[2] = *(v46 + 32);
      v61 = *(v60 + 144);
      v87[8] = *(v60 + 128);
      v87[9] = v61;
      *(&v87[9] + 12) = *(v60 + 156);
      v62 = *(v60 + 80);
      v87[4] = *(v60 + 64);
      v87[5] = v62;
      v63 = *(v60 + 112);
      v87[6] = *(v60 + 96);
      v87[7] = v63;
      v64 = *(v60 + 16);
      v87[0] = *v60;
      v87[1] = v64;
      v65 = *(v60 + 48);
      v87[2] = *(v60 + 32);
      v87[3] = v65;
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if (!_s14CarPlayAssetUI10InstrumentV10GaugeStyleO20DigiBarConfigurationV2eeoiySbAG_AGtFZ_0(v88, v87))
      {
        goto LABEL_44;
      }

      v67 = *(v46 + 172);
      v66 = v46 + 172;
      v15 = v67;
      v18 = *(v66 + 6);
      v19 = *(v66 + 4);
      v68 = *(v60 + 172);
      v21 = v60 + 172;
      v20 = v68;
LABEL_40:
      v82 = *(v21 + 4);
      v83 = *(v21 + 6);
      LODWORD(v89[0]) = v15;
      BYTE6(v89[0]) = v18;
      WORD2(v89[0]) = v19;
      BYTE6(v88[0]) = v83;
      WORD2(v88[0]) = v82;
      LODWORD(v88[0]) = v20;
      goto LABEL_41;
    default:
      v4 = sub_242C5904C(v95);
      memcpy(v90, __srca, 0x164uLL);
      if (sub_242D4926C(v90))
      {
LABEL_43:
        sub_242EE7810(__srca, v90);
        sub_242EE7810(__dst, v90);
        goto LABEL_44;
      }

      v5 = sub_242C5904C(v90);
      memcpy(v88, v4, 0x15DuLL);
      memcpy(v87, v5, 0x15DuLL);
      sub_242EE7810(__srca, v89);
      sub_242EE7810(__dst, v89);
      if (!_s14CarPlayAssetUI33DigiBarCruiseControlConfigurationV2eeoiySbAC_ACtFZ_0(v88, v87))
      {
LABEL_44:
        sub_242EE7848(v93);
        goto LABEL_45;
      }

      v6 = *(v4 + 355);
      v7 = *(v4 + 353);
      v8 = *(v5 + 349);
      v9 = *(v5 + 355);
      v10 = *(v5 + 353);
      LODWORD(v89[0]) = *(v4 + 349);
      BYTE6(v89[0]) = v6;
      WORD2(v89[0]) = v7;
      BYTE6(v88[0]) = v9;
      WORD2(v88[0]) = v10;
      LODWORD(v88[0]) = v8;
LABEL_41:
      v53 = _s14CarPlayAssetUI15ProgressBarTypeO0E10DataSourceO2eeoiySbAE_AEtFZ_0(v89, v88);
      sub_242EE7848(v93);
      return v53 & 1;
  }
}

unint64_t sub_242EE1804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB18;
  if (!qword_27ECFCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB18);
  }

  return result;
}

unint64_t sub_242EE1858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB20;
  if (!qword_27ECFCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB20);
  }

  return result;
}

unint64_t sub_242EE18AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB28;
  if (!qword_27ECFCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB28);
  }

  return result;
}

unint64_t sub_242EE1900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB30;
  if (!qword_27ECFCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB30);
  }

  return result;
}

unint64_t sub_242EE1954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB38;
  if (!qword_27ECFCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB38);
  }

  return result;
}

unint64_t sub_242EE19A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB40;
  if (!qword_27ECFCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB40);
  }

  return result;
}

unint64_t sub_242EE19FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB48;
  if (!qword_27ECFCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB48);
  }

  return result;
}

unint64_t sub_242EE1A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB50;
  if (!qword_27ECFCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB50);
  }

  return result;
}

unint64_t sub_242EE1AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB58;
  if (!qword_27ECFCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB58);
  }

  return result;
}

unint64_t sub_242EE1AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB60;
  if (!qword_27ECFCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB60);
  }

  return result;
}

unint64_t sub_242EE1B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB68;
  if (!qword_27ECFCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB68);
  }

  return result;
}

unint64_t sub_242EE1BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB70;
  if (!qword_27ECFCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB70);
  }

  return result;
}

unint64_t sub_242EE1BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB78;
  if (!qword_27ECFCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB78);
  }

  return result;
}

unint64_t sub_242EE1C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB80;
  if (!qword_27ECFCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB80);
  }

  return result;
}

unint64_t sub_242EE1C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB88;
  if (!qword_27ECFCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB88);
  }

  return result;
}

unint64_t sub_242EE1CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB90;
  if (!qword_27ECFCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB90);
  }

  return result;
}

unint64_t sub_242EE1D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCB98;
  if (!qword_27ECFCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCB98);
  }

  return result;
}

unint64_t sub_242EE1D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBA0;
  if (!qword_27ECFCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBA0);
  }

  return result;
}

unint64_t sub_242EE1DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBA8;
  if (!qword_27ECFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBA8);
  }

  return result;
}

unint64_t sub_242EE1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBB0;
  if (!qword_27ECFCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBB0);
  }

  return result;
}

unint64_t sub_242EE1E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBB8;
  if (!qword_27ECFCBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBB8);
  }

  return result;
}

unint64_t sub_242EE1EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBC0;
  if (!qword_27ECFCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBC0);
  }

  return result;
}

unint64_t sub_242EE1F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBC8;
  if (!qword_27ECFCBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBC8);
  }

  return result;
}

unint64_t sub_242EE1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBD0;
  if (!qword_27ECFCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBD0);
  }

  return result;
}

unint64_t sub_242EE1FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBD8;
  if (!qword_27ECFCBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBD8);
  }

  return result;
}

unint64_t sub_242EE2038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBE0;
  if (!qword_27ECFCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBE0);
  }

  return result;
}

unint64_t sub_242EE208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBE8;
  if (!qword_27ECFCBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBE8);
  }

  return result;
}

unint64_t sub_242EE20E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBF0;
  if (!qword_27ECFCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBF0);
  }

  return result;
}

unint64_t sub_242EE2134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCBF8;
  if (!qword_27ECFCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCBF8);
  }

  return result;
}

unint64_t sub_242EE2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC00;
  if (!qword_27ECFCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC00);
  }

  return result;
}

unint64_t sub_242EE21DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC08;
  if (!qword_27ECFCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC08);
  }

  return result;
}

unint64_t sub_242EE2230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC10;
  if (!qword_27ECFCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC10);
  }

  return result;
}

unint64_t sub_242EE2284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC18;
  if (!qword_27ECFCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC18);
  }

  return result;
}

unint64_t sub_242EE22D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC20;
  if (!qword_27ECFCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC20);
  }

  return result;
}

unint64_t sub_242EE232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC28;
  if (!qword_27ECFCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC28);
  }

  return result;
}

unint64_t sub_242EE2380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC30;
  if (!qword_27ECFCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC30);
  }

  return result;
}

unint64_t sub_242EE23D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCC38;
  if (!qword_27ECFCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCC38);
  }

  return result;
}

unint64_t sub_242EE2428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD30;
  if (!qword_27ECFCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD30);
  }

  return result;
}

unint64_t sub_242EE247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD38;
  if (!qword_27ECFCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD38);
  }

  return result;
}

unint64_t sub_242EE24D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD40;
  if (!qword_27ECFCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD40);
  }

  return result;
}

unint64_t sub_242EE2524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD48;
  if (!qword_27ECFCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD48);
  }

  return result;
}

unint64_t sub_242EE2578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD50;
  if (!qword_27ECFCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD50);
  }

  return result;
}

unint64_t sub_242EE25CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD58;
  if (!qword_27ECFCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD58);
  }

  return result;
}

unint64_t sub_242EE2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCD60;
  if (!qword_27ECFCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCD60);
  }

  return result;
}

unint64_t sub_242EE2674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCDE0;
  if (!qword_27ECFCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCDE0);
  }

  return result;
}

unint64_t sub_242EE26C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCDE8;
  if (!qword_27ECFCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCDE8);
  }

  return result;
}

unint64_t sub_242EE271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCDF0;
  if (!qword_27ECFCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCDF0);
  }

  return result;
}

unint64_t sub_242EE2770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCDF8;
  if (!qword_27ECFCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCDF8);
  }

  return result;
}

unint64_t sub_242EE27C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE00;
  if (!qword_27ECFCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE00);
  }

  return result;
}

unint64_t sub_242EE2818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE08;
  if (!qword_27ECFCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE08);
  }

  return result;
}

unint64_t sub_242EE286C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE10;
  if (!qword_27ECFCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE10);
  }

  return result;
}

unint64_t sub_242EE28C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE18;
  if (!qword_27ECFCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE18);
  }

  return result;
}

unint64_t sub_242EE2914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE20;
  if (!qword_27ECFCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE20);
  }

  return result;
}

unint64_t sub_242EE2968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE28;
  if (!qword_27ECFCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE28);
  }

  return result;
}

unint64_t sub_242EE29BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE30;
  if (!qword_27ECFCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE30);
  }

  return result;
}

unint64_t sub_242EE2A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE38;
  if (!qword_27ECFCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE38);
  }

  return result;
}

unint64_t sub_242EE2A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE40;
  if (!qword_27ECFCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE40);
  }

  return result;
}

unint64_t sub_242EE2AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE48;
  if (!qword_27ECFCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE48);
  }

  return result;
}

unint64_t sub_242EE2B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE50;
  if (!qword_27ECFCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE50);
  }

  return result;
}

unint64_t sub_242EE2B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE58;
  if (!qword_27ECFCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE58);
  }

  return result;
}

unint64_t sub_242EE2BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE60;
  if (!qword_27ECFCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE60);
  }

  return result;
}

unint64_t sub_242EE2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE68;
  if (!qword_27ECFCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE68);
  }

  return result;
}

unint64_t sub_242EE2C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE70;
  if (!qword_27ECFCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE70);
  }

  return result;
}

unint64_t sub_242EE2CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE78;
  if (!qword_27ECFCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE78);
  }

  return result;
}

unint64_t sub_242EE2D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE80;
  if (!qword_27ECFCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE80);
  }

  return result;
}

unint64_t sub_242EE2D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE88;
  if (!qword_27ECFCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE88);
  }

  return result;
}

unint64_t sub_242EE2DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE90;
  if (!qword_27ECFCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE90);
  }

  return result;
}

unint64_t sub_242EE2E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCE98;
  if (!qword_27ECFCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCE98);
  }

  return result;
}

unint64_t sub_242EE2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF18;
  if (!qword_27ECFCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF18);
  }

  return result;
}

uint64_t sub_242EE2EA8(uint64_t result)
{
  v1 = *(result + 344) | 0x80800000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x4000000000000000;
  *(result + 344) = v1;
  return result;
}

uint64_t sub_242EE2ED4(uint64_t result)
{
  v1 = *(result + 344) | 0x80800000000000;
  *(result + 264) &= 0xC3FFFFFFFFuLL;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE2EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF20;
  if (!qword_27ECFCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF20);
  }

  return result;
}

uint64_t sub_242EE2F50(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x80000000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0xC000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE2F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF28;
  if (!qword_27ECFCF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF28);
  }

  return result;
}

unint64_t sub_242EE2FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF30;
  if (!qword_27ECFCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF30);
  }

  return result;
}

uint64_t sub_242EE3020(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x800000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0xC000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE3048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF38;
  if (!qword_27ECFCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF38);
  }

  return result;
}

uint64_t sub_242EE309C(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x800000000000;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x4000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE30C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF40;
  if (!qword_27ECFCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF40);
  }

  return result;
}

uint64_t sub_242EE3118(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL | 0x800000000000;
  *(result + 264) &= 0xC3FFFFFFFFuLL;
  *(result + 344) = v1;
  return result;
}

uint64_t sub_242EE313C(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0xC000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE3168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF48;
  if (!qword_27ECFCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF48);
  }

  return result;
}

uint64_t sub_242EE31BC(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x8000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE31E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF50;
  if (!qword_27ECFCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF50);
  }

  return result;
}

uint64_t sub_242EE323C(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) = *(result + 264) & 0xC3FFFFFFFFLL | 0x4000000000000000;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE3268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF58;
  if (!qword_27ECFCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF58);
  }

  return result;
}

uint64_t sub_242EE32BC(uint64_t result)
{
  v1 = *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) &= 0xC3FFFFFFFFuLL;
  *(result + 344) = v1;
  return result;
}

unint64_t sub_242EE32E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF60;
  if (!qword_27ECFCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF60);
  }

  return result;
}

unint64_t sub_242EE3340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF68;
  if (!qword_27ECFCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF68);
  }

  return result;
}

uint64_t sub_242EE3394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFF2 && *(a1 + 356))
  {
    return (*a1 + 1073741811);
  }

  if ((((((*(a1 + 344) >> 26) & 0x20000000 | (*(a1 + 344) >> 19) & 0x10000000 | (*(a1 + 264) >> 36)) >> 26) | (16 * ((*(a1 + 264) >> 34) & 0xF | (*(a1 + 264) >> 36) & 0x3FFFFF0))) ^ 0x3FFFFFFF) >= 0x3FFFFFF2)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 344) >> 26) & 0x20000000 | (*(a1 + 344) >> 19) & 0x10000000 | (*(a1 + 264) >> 36)) >> 26) | (16 * ((*(a1 + 264) >> 34) & 0xF | (*(a1 + 264) >> 36) & 0x3FFFFF0))) ^ 0x3FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_242EE3418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x3FFFFFF3)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 1073741811;
    if (a3 > 0x3FFFFFF2)
    {
      *(result + 356) = 1;
    }
  }

  else
  {
    if (a3 > 0x3FFFFFF2)
    {
      *(result + 356) = 0;
    }

    if (a2)
    {
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      v3 = ((-a2 >> 4) & 0x3FFFFFF) - (a2 << 26);
      *(result + 192) = 0u;
      *(result + 208) = 0u;
      *(result + 160) = 0u;
      *(result + 176) = 0u;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 256) = 0;
      *(result + 264) = (v3 << 36) & 0xFFFFFF0000000000 | ((v3 & 0xF) << 34);
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      *(result + 336) = 0;
      *(result + 344) = (v3 << 26) & 0x80000000000000 | (((v3 >> 28) & 1) << 47);
      *(result + 352) = 0;
    }
  }

  return result;
}

uint64_t sub_242EE3528(uint64_t result, char a2)
{
  v2 = a2 & 0xF;
  v3 = *(result + 264) & 0xC3FFFFFFFFLL | (v2 << 62);
  v4 = ((v2 << 52) | (v2 << 45)) & 0x8080808080808080 | *(result + 344) & 0xFF7F7FFFFFFFFFFFLL;
  *(result + 264) = v3;
  *(result + 344) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressBarType.ProgressDataSource(int *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x64 && *(a1 + 7))
  {
    return (*a1 + 100);
  }

  v3 = *a1;
  v4 = ((((*(a1 + 6) >> 1) & 0x40 | (*(a1 + 2) >> 10) & 0xFFFFFFE0 | (*(a1 + 2) >> 3) & 0xF0 | (v3 >> 28) & 0xFFFFFFF8 | (v3 >> 21) & 7) >> 2) | (32 * ((v3 >> 14) & 2 | (v3 >> 7) & 1))) ^ 0x7F;
  if (v4 >= 0x63)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for ProgressBarType.ProgressDataSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x63)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 100;
    if (a3 >= 0x64)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0x64)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_242F4ADC0), xmmword_242F4ADD0);
      *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
      v5.i64[0] = v4.u32[0];
      v5.i64[1] = v4.u32[1];
      *v4.i8 = vorr_s8(v4.u32[0], *&vextq_s8(v5, v5, 8uLL));
      v6 = v4.i64[0] & 0xFFFFFF7FFFFFFFFFLL | (((v3 >> 4) & 1) << 39) | ((v3 << 42) | (v3 << 49)) & 0x8080808080808080;
      *result = v4.i32[0];
      *(result + 6) = BYTE6(v6);
      *(result + 4) = WORD2(v6);
    }
  }

  return result;
}

unsigned int *sub_242EE36E0(unsigned int *result)
{
  v1 = *result | ((*(result + 2) | (*(result + 6) << 16)) << 32);
  *result &= 0x7F7FFFFFu;
  *(result + 6) = BYTE6(v1) & 0x7F;
  *(result + 2) = (v1 & 0x7F7F7F7F7FFFFFLL) >> 32;
  return result;
}

int8x8_t sub_242EE3720(unsigned int *a1, char a2)
{
  v2 = a2 & 0x1F;
  v3 = vdupq_n_s64(v2);
  v4 = vorrq_s8(vandq_s8(vshlq_u64(v3, xmmword_242F4ADE0), xmmword_242F0D260), vandq_s8(vshlq_u64(v3, xmmword_242F4ADF0), xmmword_242F4AE00));
  result = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v6 = *&result | (v2 << 51) & 0x80000000000000 | (*a1 | ((*(a1 + 2) | (*(a1 + 6) << 16)) << 32)) & 0x7F7F7F7F7F7F7F7FLL;
  *a1 = v6;
  *(a1 + 2) = WORD2(v6);
  *(a1 + 6) = BYTE6(v6);
  return result;
}

uint64_t getEnumTagSinglePayload for ProgressBarType.ProgressDataSource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressBarType.ProgressDataSource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_242EE3BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF70;
  if (!qword_27ECFCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF70);
  }

  return result;
}

unint64_t sub_242EE3C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF78;
  if (!qword_27ECFCF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF78);
  }

  return result;
}

unint64_t sub_242EE3C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF80;
  if (!qword_27ECFCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF80);
  }

  return result;
}

unint64_t sub_242EE3CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF88;
  if (!qword_27ECFCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF88);
  }

  return result;
}

unint64_t sub_242EE3D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF90;
  if (!qword_27ECFCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF90);
  }

  return result;
}

unint64_t sub_242EE3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCF98;
  if (!qword_27ECFCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCF98);
  }

  return result;
}

unint64_t sub_242EE3DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFA0;
  if (!qword_27ECFCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFA0);
  }

  return result;
}

unint64_t sub_242EE3E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFA8;
  if (!qword_27ECFCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFA8);
  }

  return result;
}

unint64_t sub_242EE3E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFB0;
  if (!qword_27ECFCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFB0);
  }

  return result;
}

unint64_t sub_242EE3EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFB8;
  if (!qword_27ECFCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFB8);
  }

  return result;
}

unint64_t sub_242EE3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFC0;
  if (!qword_27ECFCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFC0);
  }

  return result;
}

unint64_t sub_242EE3F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFC8;
  if (!qword_27ECFCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFC8);
  }

  return result;
}

unint64_t sub_242EE3FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFD0;
  if (!qword_27ECFCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFD0);
  }

  return result;
}

unint64_t sub_242EE4044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFD8;
  if (!qword_27ECFCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFD8);
  }

  return result;
}

unint64_t sub_242EE409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFE0;
  if (!qword_27ECFCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFE0);
  }

  return result;
}

unint64_t sub_242EE40F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFE8;
  if (!qword_27ECFCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFE8);
  }

  return result;
}

unint64_t sub_242EE414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFF0;
  if (!qword_27ECFCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFF0);
  }

  return result;
}

unint64_t sub_242EE41A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFCFF8;
  if (!qword_27ECFCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFCFF8);
  }

  return result;
}

unint64_t sub_242EE41FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD000;
  if (!qword_27ECFD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD000);
  }

  return result;
}

unint64_t sub_242EE4254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD008;
  if (!qword_27ECFD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD008);
  }

  return result;
}

unint64_t sub_242EE42AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD010;
  if (!qword_27ECFD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD010);
  }

  return result;
}

unint64_t sub_242EE4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD018;
  if (!qword_27ECFD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD018);
  }

  return result;
}

unint64_t sub_242EE435C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD020;
  if (!qword_27ECFD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD020);
  }

  return result;
}

unint64_t sub_242EE43B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD028;
  if (!qword_27ECFD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD028);
  }

  return result;
}

unint64_t sub_242EE440C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD030;
  if (!qword_27ECFD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD030);
  }

  return result;
}

unint64_t sub_242EE4464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD038;
  if (!qword_27ECFD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD038);
  }

  return result;
}

unint64_t sub_242EE44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD040;
  if (!qword_27ECFD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD040);
  }

  return result;
}

unint64_t sub_242EE4514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD048;
  if (!qword_27ECFD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD048);
  }

  return result;
}

unint64_t sub_242EE456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD050;
  if (!qword_27ECFD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD050);
  }

  return result;
}

unint64_t sub_242EE45C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD058;
  if (!qword_27ECFD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD058);
  }

  return result;
}

unint64_t sub_242EE461C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD060;
  if (!qword_27ECFD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD060);
  }

  return result;
}

unint64_t sub_242EE4674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD068;
  if (!qword_27ECFD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD068);
  }

  return result;
}

unint64_t sub_242EE46CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD070;
  if (!qword_27ECFD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD070);
  }

  return result;
}

unint64_t sub_242EE4724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD078;
  if (!qword_27ECFD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD078);
  }

  return result;
}

unint64_t sub_242EE477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD080;
  if (!qword_27ECFD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD080);
  }

  return result;
}

unint64_t sub_242EE47D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD088;
  if (!qword_27ECFD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD088);
  }

  return result;
}

unint64_t sub_242EE482C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD090;
  if (!qword_27ECFD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD090);
  }

  return result;
}

unint64_t sub_242EE4884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD098;
  if (!qword_27ECFD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD098);
  }

  return result;
}

unint64_t sub_242EE48DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0A0;
  if (!qword_27ECFD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0A0);
  }

  return result;
}

unint64_t sub_242EE4934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0A8;
  if (!qword_27ECFD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0A8);
  }

  return result;
}

unint64_t sub_242EE498C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0B0;
  if (!qword_27ECFD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0B0);
  }

  return result;
}

unint64_t sub_242EE49E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0B8;
  if (!qword_27ECFD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0B8);
  }

  return result;
}

unint64_t sub_242EE4A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0C0;
  if (!qword_27ECFD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0C0);
  }

  return result;
}

unint64_t sub_242EE4A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0C8;
  if (!qword_27ECFD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0C8);
  }

  return result;
}

unint64_t sub_242EE4AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0D0;
  if (!qword_27ECFD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0D0);
  }

  return result;
}

unint64_t sub_242EE4B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0D8;
  if (!qword_27ECFD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0D8);
  }

  return result;
}

unint64_t sub_242EE4B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0E0;
  if (!qword_27ECFD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0E0);
  }

  return result;
}

unint64_t sub_242EE4BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0E8;
  if (!qword_27ECFD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0E8);
  }

  return result;
}

unint64_t sub_242EE4C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0F0;
  if (!qword_27ECFD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0F0);
  }

  return result;
}

unint64_t sub_242EE4CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD0F8;
  if (!qword_27ECFD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD0F8);
  }

  return result;
}

unint64_t sub_242EE4CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD100;
  if (!qword_27ECFD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD100);
  }

  return result;
}

unint64_t sub_242EE4D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD108;
  if (!qword_27ECFD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD108);
  }

  return result;
}

unint64_t sub_242EE4DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD110;
  if (!qword_27ECFD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD110);
  }

  return result;
}

unint64_t sub_242EE4E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD118;
  if (!qword_27ECFD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD118);
  }

  return result;
}

unint64_t sub_242EE4E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD120;
  if (!qword_27ECFD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD120);
  }

  return result;
}

unint64_t sub_242EE4EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD128;
  if (!qword_27ECFD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD128);
  }

  return result;
}

unint64_t sub_242EE4F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD130;
  if (!qword_27ECFD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD130);
  }

  return result;
}

unint64_t sub_242EE4F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD138;
  if (!qword_27ECFD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD138);
  }

  return result;
}

unint64_t sub_242EE4FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD140;
  if (!qword_27ECFD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD140);
  }

  return result;
}

unint64_t sub_242EE5014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD148;
  if (!qword_27ECFD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD148);
  }

  return result;
}

unint64_t sub_242EE506C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD150;
  if (!qword_27ECFD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD150);
  }

  return result;
}

unint64_t sub_242EE50C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD158;
  if (!qword_27ECFD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD158);
  }

  return result;
}

unint64_t sub_242EE511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD160;
  if (!qword_27ECFD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD160);
  }

  return result;
}

unint64_t sub_242EE5174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD168;
  if (!qword_27ECFD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD168);
  }

  return result;
}

unint64_t sub_242EE51CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD170;
  if (!qword_27ECFD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD170);
  }

  return result;
}

unint64_t sub_242EE5224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD178;
  if (!qword_27ECFD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD178);
  }

  return result;
}

unint64_t sub_242EE527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD180;
  if (!qword_27ECFD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD180);
  }

  return result;
}

unint64_t sub_242EE52D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD188;
  if (!qword_27ECFD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD188);
  }

  return result;
}

unint64_t sub_242EE532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD190;
  if (!qword_27ECFD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD190);
  }

  return result;
}

unint64_t sub_242EE5384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD198;
  if (!qword_27ECFD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD198);
  }

  return result;
}

unint64_t sub_242EE53DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1A0;
  if (!qword_27ECFD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1A0);
  }

  return result;
}

unint64_t sub_242EE5434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1A8;
  if (!qword_27ECFD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1A8);
  }

  return result;
}

unint64_t sub_242EE548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1B0;
  if (!qword_27ECFD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1B0);
  }

  return result;
}

unint64_t sub_242EE54E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1B8;
  if (!qword_27ECFD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1B8);
  }

  return result;
}

unint64_t sub_242EE553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1C0;
  if (!qword_27ECFD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1C0);
  }

  return result;
}

unint64_t sub_242EE5594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1C8;
  if (!qword_27ECFD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1C8);
  }

  return result;
}

unint64_t sub_242EE55EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1D0;
  if (!qword_27ECFD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1D0);
  }

  return result;
}

unint64_t sub_242EE5644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1D8;
  if (!qword_27ECFD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1D8);
  }

  return result;
}

unint64_t sub_242EE569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1E0;
  if (!qword_27ECFD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1E0);
  }

  return result;
}

unint64_t sub_242EE56F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1E8;
  if (!qword_27ECFD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1E8);
  }

  return result;
}

unint64_t sub_242EE574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1F0;
  if (!qword_27ECFD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1F0);
  }

  return result;
}

unint64_t sub_242EE57A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD1F8;
  if (!qword_27ECFD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD1F8);
  }

  return result;
}

unint64_t sub_242EE57FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD200;
  if (!qword_27ECFD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD200);
  }

  return result;
}

unint64_t sub_242EE5854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD208;
  if (!qword_27ECFD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD208);
  }

  return result;
}

unint64_t sub_242EE58AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD210;
  if (!qword_27ECFD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD210);
  }

  return result;
}

unint64_t sub_242EE5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD218;
  if (!qword_27ECFD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD218);
  }

  return result;
}

unint64_t sub_242EE595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD220;
  if (!qword_27ECFD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD220);
  }

  return result;
}

unint64_t sub_242EE59B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD228;
  if (!qword_27ECFD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD228);
  }

  return result;
}

unint64_t sub_242EE5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD230;
  if (!qword_27ECFD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD230);
  }

  return result;
}

unint64_t sub_242EE5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD238;
  if (!qword_27ECFD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD238);
  }

  return result;
}

unint64_t sub_242EE5ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD240;
  if (!qword_27ECFD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD240);
  }

  return result;
}

unint64_t sub_242EE5B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD248;
  if (!qword_27ECFD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD248);
  }

  return result;
}

unint64_t sub_242EE5B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD250;
  if (!qword_27ECFD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD250);
  }

  return result;
}

unint64_t sub_242EE5BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD258;
  if (!qword_27ECFD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD258);
  }

  return result;
}

unint64_t sub_242EE5C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD260;
  if (!qword_27ECFD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD260);
  }

  return result;
}

unint64_t sub_242EE5C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD268;
  if (!qword_27ECFD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD268);
  }

  return result;
}

unint64_t sub_242EE5CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD270;
  if (!qword_27ECFD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD270);
  }

  return result;
}

unint64_t sub_242EE5D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD278;
  if (!qword_27ECFD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD278);
  }

  return result;
}

unint64_t sub_242EE5D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD280;
  if (!qword_27ECFD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD280);
  }

  return result;
}

unint64_t sub_242EE5DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD288;
  if (!qword_27ECFD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD288);
  }

  return result;
}

unint64_t sub_242EE5E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD290;
  if (!qword_27ECFD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD290);
  }

  return result;
}

unint64_t sub_242EE5E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD298;
  if (!qword_27ECFD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD298);
  }

  return result;
}

unint64_t sub_242EE5EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2A0;
  if (!qword_27ECFD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2A0);
  }

  return result;
}

unint64_t sub_242EE5F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2A8;
  if (!qword_27ECFD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2A8);
  }

  return result;
}

unint64_t sub_242EE5F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2B0;
  if (!qword_27ECFD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2B0);
  }

  return result;
}

unint64_t sub_242EE5FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2B8;
  if (!qword_27ECFD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2B8);
  }

  return result;
}

unint64_t sub_242EE603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2C0;
  if (!qword_27ECFD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2C0);
  }

  return result;
}

unint64_t sub_242EE6094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2C8;
  if (!qword_27ECFD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2C8);
  }

  return result;
}

unint64_t sub_242EE60EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2D0;
  if (!qword_27ECFD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2D0);
  }

  return result;
}

unint64_t sub_242EE6144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2D8;
  if (!qword_27ECFD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2D8);
  }

  return result;
}

unint64_t sub_242EE619C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2E0;
  if (!qword_27ECFD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2E0);
  }

  return result;
}

unint64_t sub_242EE61F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2E8;
  if (!qword_27ECFD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2E8);
  }

  return result;
}

unint64_t sub_242EE624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2F0;
  if (!qword_27ECFD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2F0);
  }

  return result;
}

unint64_t sub_242EE62A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD2F8;
  if (!qword_27ECFD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD2F8);
  }

  return result;
}

unint64_t sub_242EE62FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD300;
  if (!qword_27ECFD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD300);
  }

  return result;
}

unint64_t sub_242EE6354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD308;
  if (!qword_27ECFD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD308);
  }

  return result;
}

unint64_t sub_242EE63AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD310;
  if (!qword_27ECFD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD310);
  }

  return result;
}

unint64_t sub_242EE6404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD318;
  if (!qword_27ECFD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD318);
  }

  return result;
}

unint64_t sub_242EE645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD320;
  if (!qword_27ECFD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD320);
  }

  return result;
}

unint64_t sub_242EE64B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD328;
  if (!qword_27ECFD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD328);
  }

  return result;
}

unint64_t sub_242EE650C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD330;
  if (!qword_27ECFD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD330);
  }

  return result;
}

unint64_t sub_242EE6564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD338;
  if (!qword_27ECFD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD338);
  }

  return result;
}

unint64_t sub_242EE65BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD340;
  if (!qword_27ECFD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD340);
  }

  return result;
}

unint64_t sub_242EE6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD348;
  if (!qword_27ECFD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD348);
  }

  return result;
}

unint64_t sub_242EE666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD350;
  if (!qword_27ECFD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD350);
  }

  return result;
}

unint64_t sub_242EE66C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD358;
  if (!qword_27ECFD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD358);
  }

  return result;
}

unint64_t sub_242EE671C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD360;
  if (!qword_27ECFD360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD360);
  }

  return result;
}

unint64_t sub_242EE6774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD368;
  if (!qword_27ECFD368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD368);
  }

  return result;
}

unint64_t sub_242EE67CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD370;
  if (!qword_27ECFD370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD370);
  }

  return result;
}

unint64_t sub_242EE6824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD378;
  if (!qword_27ECFD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD378);
  }

  return result;
}

unint64_t sub_242EE687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD380;
  if (!qword_27ECFD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD380);
  }

  return result;
}

unint64_t sub_242EE68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD388;
  if (!qword_27ECFD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD388);
  }

  return result;
}

unint64_t sub_242EE692C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD390;
  if (!qword_27ECFD390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD390);
  }

  return result;
}

unint64_t sub_242EE6984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD398;
  if (!qword_27ECFD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD398);
  }

  return result;
}

unint64_t sub_242EE69DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD3A0;
  if (!qword_27ECFD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD3A0);
  }

  return result;
}

uint64_t sub_242EE6A30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000242F58750 == a2;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F587D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6F6465657073 && a2 == 0xEB00000000726574 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74656D6F68636174 && a2 == 0xEA00000000007265 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5D8F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5D910 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5D930 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5D950 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7546656772616863 && a2 == 0xEA00000000006C65 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5D970 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F58730 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696666456C657566 && a2 == 0xEE0079636E656963 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5D990 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242F5D9B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x74656D7265776F70 && a2 == 0xEA00000000007265 || (sub_242F06110() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F57FE0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5D9D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5D9F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5DA10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5DA30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F58000 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6D694C6465657073 && a2 == 0xEC00000072657469 || (sub_242F06110() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5DA50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6F43657369757263 && a2 == 0xED00006C6F72746ELL || (sub_242F06110() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5DA70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5DA90 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5DAB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F5DAD0 == a2)
  {

    return 28;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 28;
    }

    else
    {
      return 29;
    }
  }
}

uint64_t sub_242EE7390(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000242F5DAF0 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5DB10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D72614269676964 && a2 == 0xED000072656B7261 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5072614269676964 && a2 == 0xEF73736572676F72 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5DB30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5272614269676964 && a2 == 0xEE00656E696C6465 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74656D7265776F70 && a2 == 0xEA00000000007265 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5DB50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B72616D6B636974 && a2 == 0xE900000000000073 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6562614C6B636974 && a2 == 0xEA0000000000736CLL || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5DB70 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F5DB90 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F5DBB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000242F5DBD0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_242EE7848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD3A8, &unk_242F50360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static TextElementConfiguration.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, a2, sizeof(v8));
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v5, a2, sizeof(v5));
  sub_242EF4DF4(__dst, v10);
  sub_242EF4DF4(v8, v10);
  LOBYTE(a2) = _s14CarPlayAssetUI12TextDataTypeO2eeoiySbAC_ACtFZ_0(__srca);
  memcpy(v9, v5, sizeof(v9));
  sub_242D4B9EC(v9);
  memcpy(v10, __srca, sizeof(v10));
  sub_242D4B9EC(v10);
  return a2 & 1;
}

uint64_t TextElementConfiguration.assets.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  switch(sub_242D3DE64(__dst))
  {
    case 2u:
      v9 = sub_242C58D34(__dst);
      *&v12[112] = v9[7];
      *&v12[128] = v9[8];
      *&v12[144] = v9[9];
      *&v12[160] = v9[10];
      *&v12[48] = v9[3];
      *&v12[64] = v9[4];
      *&v12[80] = v9[5];
      *&v12[96] = v9[6];
      *v12 = *v9;
      *&v12[16] = v9[1];
      *&v12[32] = v9[2];
      result = GearPositionConfiguration.assets.getter();
      break;
    case 4u:
      v10 = sub_242C58D34(__dst);
      memcpy(v12, (v10 + 8), sizeof(v12));
      if (sub_242C8B80C(v12) != 1)
      {
        memcpy(v11, &v12[8], sizeof(v11));
        goto LABEL_3;
      }

      result = MEMORY[0x277D84F90];
      break;
    case 5u:
      v3 = sub_242C58D34(__dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_242F09510;
      *(v4 + 56) = &type metadata for RasterFont;
      *(v4 + 64) = &protocol witness table for RasterFont;
      v5 = swift_allocObject();
      *(v4 + 32) = v5;
      v7 = *(v3 + 16);
      v6 = *(v3 + 32);
      v8 = *v3;
      *(v5 + 64) = *(v3 + 48);
      *(v5 + 32) = v7;
      *(v5 + 48) = v6;
      *(v5 + 16) = v8;
      sub_242C94884(v3, v12);
      result = v4;
      break;
    default:
      v1 = sub_242C58D34(__dst);
      memcpy(v12, (v1 + 8), 0x150uLL);
LABEL_3:
      result = MeasurementLabelConfiguration.assets.getter();
      break;
  }

  return result;
}

void *TextElementConfiguration.restoreAssets(from:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = v1;
  v6 = v5;
  memcpy(v130, v1, sizeof(v130));
  memcpy(v131, v1, 0x228uLL);
  switch(sub_242D3DE64(v131))
  {
    case 1u:
      v52 = sub_242C58D34(v131);
      v8 = *(v52 + 296);
      memcpy(v96, v52, 0x128uLL);
      v53 = *(v52 + 320);
      v113 = *(v52 + 304);
      v114 = v53;
      v115 = *(v52 + 336);
      v54 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v54);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v55 = sub_242C8A810(v54, sub_242C8C7E4, v90, v8);
      if (v2)
      {
        goto LABEL_20;
      }

      v84 = v55;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      memcpy(v128, v96, 0x128uLL);
      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      *(&v128[18] + 1) = v84;
      sub_242EF53E0(v128);
      goto LABEL_42;
    case 2u:
      v39 = sub_242C58D34(v131);
      v96[7] = v39[7];
      v96[8] = v39[8];
      v96[9] = v39[9];
      v96[10] = v39[10];
      v96[3] = v39[3];
      v96[4] = v39[4];
      v96[5] = v39[5];
      v96[6] = v39[6];
      v96[0] = *v39;
      v96[1] = v39[1];
      v96[2] = v39[2];
      if (*(&v96[7] + 1))
      {
        memcpy(v128, v130, 0x228uLL);
        v40 = sub_242C58D34(v128);
        sub_242CA321C(v40, v127, &qword_27ECFD620, &qword_242F50398);
        ImageGroupConfiguration.restoreAssets(from:)(v6);
        if (v2)
        {
          v127[8] = v96[8];
          v127[9] = v96[9];
          v127[10] = v96[10];
          v127[4] = v96[4];
          v127[5] = v96[5];
          v127[7] = v96[7];
          v127[6] = v96[6];
          v127[0] = v96[0];
          v127[1] = v96[1];
          v127[3] = v96[3];
          v127[2] = v96[2];
          return sub_242EF5288(v127);
        }

        memcpy(v127, v1, 0x228uLL);
      }

      else
      {
        memcpy(v127, v1, 0x228uLL);
        memcpy(v128, v130, 0x228uLL);
        v82 = sub_242C58D34(v128);
        sub_242CA321C(v82, &v113, &qword_27ECFD620, &qword_242F50398);
      }

      sub_242D4939C(v127);
      v128[8] = v96[8];
      v128[9] = v96[9];
      v128[10] = v96[10];
      v128[4] = v96[4];
      v128[5] = v96[5];
      v128[7] = v96[7];
      v128[6] = v96[6];
      v128[0] = v96[0];
      v128[1] = v96[1];
      v128[3] = v96[3];
      v128[2] = v96[2];
      sub_242EF52B8(v128);
      goto LABEL_48;
    case 3u:
      v42 = sub_242C58D34(v131);
      v8 = *(v42 + 296);
      memcpy(v96, v42, 0x128uLL);
      v43 = *(v42 + 320);
      v113 = *(v42 + 304);
      v114 = v43;
      v115 = *(v42 + 336);
      v44 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v44);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v45 = sub_242C8A810(v44, sub_242C8C7E4, v90, v8);
      if (v2)
      {
        goto LABEL_20;
      }

      v46 = v45;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      memcpy(v128, v96, 0x128uLL);
      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      *(&v128[18] + 1) = v46;
      sub_242EF5364(v128);
      goto LABEL_42;
    case 4u:
      v19 = sub_242C58D34(v131);
      memcpy(v112, v19, sizeof(v112));
      v20 = *(v19 + 304);
      v21 = *(v19 + 520);
      v109 = *(v19 + 504);
      v110 = v21;
      v111 = *(v19 + 536);
      v22 = *(v19 + 456);
      v105 = *(v19 + 440);
      v106 = v22;
      v23 = *(v19 + 488);
      v107 = *(v19 + 472);
      v108 = v23;
      v24 = *(v19 + 392);
      v101 = *(v19 + 376);
      v102 = v24;
      v25 = *(v19 + 424);
      v103 = *(v19 + 408);
      v104 = v25;
      v26 = *(v19 + 328);
      v97 = *(v19 + 312);
      v98 = v26;
      v27 = *(v19 + 360);
      v99 = *(v19 + 344);
      v100 = v27;
      memmove(&v113, (v19 + 8), 0x128uLL);
      v116 = v20;
      v28 = *(v19 + 312);
      v29 = *(v19 + 328);
      v119 = *(v19 + 344);
      v118 = v29;
      v117 = v28;
      if (sub_242C8B80C(&v113) == 1)
      {
        memcpy(v127, v4, 0x228uLL);
        memcpy(v128, v130, 0x228uLL);
        v30 = sub_242C58D34(v128);
        sub_242CA321C(v30, v96, &qword_27ECFD618, &qword_242F50390);
        sub_242D4939C(v127);
      }

      else
      {
        v77 = sub_242CE6D94(MEMORY[0x277D84F90]);
        MEMORY[0x28223BE20](v77);
        v91 = v6;
        sub_242EF4DF4(v130, v128);
        v78 = sub_242C8A810(v77, sub_242C8C7E4, v90, v20);
        if (v2)
        {

          memcpy(v128, v112, 0x130uLL);
          *&v128[19] = v20;
          *(&v128[31] + 8) = v109;
          *(&v128[32] + 8) = v110;
          *(&v128[33] + 8) = v111;
          *(&v128[27] + 8) = v105;
          *(&v128[28] + 8) = v106;
          *(&v128[29] + 8) = v107;
          *(&v128[30] + 8) = v108;
          *(&v128[23] + 8) = v101;
          *(&v128[24] + 8) = v102;
          *(&v128[25] + 8) = v103;
          *(&v128[26] + 8) = v104;
          *(&v128[19] + 8) = v97;
          *(&v128[20] + 8) = v98;
          *(&v128[21] + 8) = v99;
          *(&v128[22] + 8) = v100;
          return sub_242C8BAFC(v128);
        }

        v89 = v78;
        memcpy(v128, v4, 0x228uLL);
        sub_242D4939C(v128);

        v20 = v89;
      }

      memcpy(v128, v112, 0x130uLL);
      *(&v128[31] + 8) = v109;
      *(&v128[32] + 8) = v110;
      *(&v128[33] + 8) = v111;
      *(&v128[27] + 8) = v105;
      *(&v128[28] + 8) = v106;
      *(&v128[29] + 8) = v107;
      *(&v128[30] + 8) = v108;
      *(&v128[23] + 8) = v101;
      *(&v128[24] + 8) = v102;
      *(&v128[25] + 8) = v103;
      *(&v128[26] + 8) = v104;
      *(&v128[19] + 8) = v97;
      *(&v128[20] + 8) = v98;
      *(&v128[21] + 8) = v99;
      *(&v128[22] + 8) = v100;
      *&v128[19] = v20;
      sub_242EF520C(v128);
LABEL_48:
      v57 = v128;
      return memcpy(v4, v57, 0x228uLL);
    case 5u:
      sub_242C58D34(v131);
      memcpy(v127, v1, 0x228uLL);
      memcpy(v128, v130, 0x228uLL);
      v56 = sub_242C58D34(v128);
      sub_242CA321C(v56, v96, &qword_27ECFD610, &qword_242F50388);
      sub_242D4939C(v127);
      v57 = v130;
      return memcpy(v4, v57, 0x228uLL);
    case 6u:
      v63 = sub_242C58D34(v131);
      v3.i32[0] = *v63;
      v64 = *(v63 + 4);
      v94 = *(v63 + 5);
      v95.i32[0] = v64;
      v93 = *(v63 + 6);
      v14 = *(v63 + 296);
      memcpy(v120, (v63 + 8), sizeof(v120));
      v65 = *(v63 + 320);
      v113 = *(v63 + 304);
      v114 = v65;
      v115 = *(v63 + 336);
      v66 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v66);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v67 = sub_242C8A810(v66, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v120;
        goto LABEL_28;
      }

      v86 = v67;
      v92 = vmovl_u8(v3);
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 1, v120, 0x120uLL);
      LODWORD(v128[0]) = vuzp1_s8(*v92.i8, *v92.i8).u32[0];
      BYTE4(v128[0]) = v95.i8[0];
      BYTE5(v128[0]) = v94;
      BYTE6(v128[0]) = v93;
      memcpy(v128 + 7, v96, 0x121uLL);
      *(&v128[18] + 1) = v86;
      sub_242EF5190(v128);
      goto LABEL_42;
    case 7u:
      v47 = sub_242C58D34(v131);
      v48 = *v47;
      v94 = v47[1];
      v95.i32[0] = v48;
      v93 = v47[2];
      v14 = *(v47 + 37);
      memcpy(v121, v47 + 8, sizeof(v121));
      v49 = *(v47 + 20);
      v113 = *(v47 + 19);
      v114 = v49;
      v115 = *(v47 + 42);
      v50 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v50);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v51 = sub_242C8A810(v50, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v121;
        goto LABEL_28;
      }

      v83 = v51;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 5, v121, 0x120uLL);
      LOBYTE(v128[0]) = v95.i8[0];
      BYTE1(v128[0]) = v94;
      BYTE2(v128[0]) = v93;
      memcpy(v128 + 3, v96, 0x125uLL);
      *(&v128[18] + 1) = v83;
      sub_242EF5114(v128);
      goto LABEL_42;
    case 8u:
      v72 = sub_242C58D34(v131);
      v3.i32[0] = *v72;
      v73 = *(v72 + 4);
      v94 = *(v72 + 5);
      v95.i32[0] = v73;
      v93 = *(v72 + 6);
      v14 = *(v72 + 296);
      memcpy(v122, (v72 + 8), sizeof(v122));
      v74 = *(v72 + 320);
      v113 = *(v72 + 304);
      v114 = v74;
      v115 = *(v72 + 336);
      v75 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v75);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v76 = sub_242C8A810(v75, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v122;
        goto LABEL_28;
      }

      v92 = vmovl_u8(v3);
      v88 = v76;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 1, v122, 0x120uLL);
      LODWORD(v128[0]) = vuzp1_s8(*v92.i8, *v92.i8).u32[0];
      BYTE4(v128[0]) = v95.i8[0];
      BYTE5(v128[0]) = v94;
      BYTE6(v128[0]) = v93;
      memcpy(v128 + 7, v96, 0x121uLL);
      *(&v128[18] + 1) = v88;
      sub_242EF5098(v128);
      goto LABEL_42;
    case 9u:
      v35 = sub_242C58D34(v131);
      v95.i32[0] = *v35;
      v14 = *(v35 + 37);
      memcpy(v123, v35 + 8, sizeof(v123));
      v36 = *(v35 + 20);
      v113 = *(v35 + 19);
      v114 = v36;
      v115 = *(v35 + 42);
      v37 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v37);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v38 = sub_242C8A810(v37, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v123;
        goto LABEL_28;
      }

      v81 = v38;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 7, v123, 0x120uLL);
      LOBYTE(v128[0]) = v95.i8[0];
      memcpy(v128 + 1, v96, 0x127uLL);
      *(&v128[18] + 1) = v81;
      sub_242EF501C(v128);
      goto LABEL_42;
    case 0xAu:
      v68 = sub_242C58D34(v131);
      v3.i32[0] = *v68;
      v14 = *(v68 + 296);
      memcpy(v124, (v68 + 8), sizeof(v124));
      v69 = *(v68 + 320);
      v113 = *(v68 + 304);
      v114 = v69;
      v115 = *(v68 + 336);
      v70 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v70);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v71 = sub_242C8A810(v70, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v124;
        goto LABEL_28;
      }

      v87 = v71;
      v95 = vmovl_u8(v3);
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 4, v124, 0x120uLL);
      LODWORD(v128[0]) = vuzp1_s8(*v95.i8, *v95.i8).u32[0];
      memcpy(v128 + 4, v96, 0x124uLL);
      *(&v128[18] + 1) = v87;
      sub_242EF4FA0(v128);
      goto LABEL_42;
    case 0xBu:
      v13 = sub_242C58D34(v131);
      v3.i32[0] = *v13;
      v14 = *(v13 + 296);
      memcpy(v125, (v13 + 8), sizeof(v125));
      v15 = *(v13 + 320);
      v113 = *(v13 + 304);
      v114 = v15;
      v115 = *(v13 + 336);
      v16 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v16);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v17 = sub_242C8A810(v16, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v125;
        goto LABEL_28;
      }

      v79 = v17;
      v95 = vmovl_u8(v3);
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 4, v125, 0x120uLL);
      LODWORD(v128[0]) = vuzp1_s8(*v95.i8, *v95.i8).u32[0];
      memcpy(v128 + 4, v96, 0x124uLL);
      *(&v128[18] + 1) = v79;
      sub_242EF4F24(v128);
      goto LABEL_42;
    case 0xCu:
      v31 = sub_242C58D34(v131);
      v95.i32[0] = *v31;
      v14 = *(v31 + 37);
      memcpy(v126, v31 + 8, sizeof(v126));
      v32 = *(v31 + 20);
      v113 = *(v31 + 19);
      v114 = v32;
      v115 = *(v31 + 42);
      v33 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v33);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v34 = sub_242C8A810(v33, sub_242C8C7E4, v90, v14);
      if (v2)
      {

        v18 = v126;
        goto LABEL_28;
      }

      v80 = v34;
      memcpy(v127, v4, 0x228uLL);
      sub_242D4939C(v127);

      v128[19] = v113;
      v128[20] = v114;
      *&v128[21] = v115;
      memcpy(v96 + 7, v126, 0x120uLL);
      LOBYTE(v128[0]) = v95.i8[0];
      memcpy(v128 + 1, v96, 0x127uLL);
      *(&v128[18] + 1) = v80;
      sub_242EF4EA8(v128);
      goto LABEL_42;
    case 0xDu:
      v58 = sub_242C58D34(v131);
      v59 = *v58;
      v94 = v58[1];
      v95.i32[0] = v59;
      v14 = *(v58 + 37);
      memcpy(v129, v58 + 8, sizeof(v129));
      v60 = *(v58 + 20);
      v113 = *(v58 + 19);
      v114 = v60;
      v115 = *(v58 + 42);
      v61 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v61);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v62 = sub_242C8A810(v61, sub_242C8B824, v90, v14);
      if (!v2)
      {
        v85 = v62;
        memcpy(v127, v4, 0x228uLL);
        sub_242D4939C(v127);

        v128[19] = v113;
        v128[20] = v114;
        *&v128[21] = v115;
        memcpy(v96 + 6, v129, 0x120uLL);
        LOBYTE(v128[0]) = v95.i8[0];
        BYTE1(v128[0]) = v94;
        memcpy(v128 + 2, v96, 0x126uLL);
        *(&v128[18] + 1) = v85;
        sub_242EF4E2C(v128);
        goto LABEL_42;
      }

      v18 = v129;
LABEL_28:
      memcpy(v128, v18, 0x120uLL);
      *(&v128[18] + 8) = v113;
      *(&v128[19] + 8) = v114;
      *&v128[18] = v14;
      *(&v128[20] + 1) = v115;
      result = sub_242D48E28(v128);
      break;
    default:
      v7 = sub_242C58D34(v131);
      v8 = *(v7 + 296);
      memcpy(v96, v7, 0x128uLL);
      v9 = *(v7 + 320);
      v113 = *(v7 + 304);
      v114 = v9;
      v115 = *(v7 + 336);
      v10 = sub_242CE6D94(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v10);
      v91 = v6;
      sub_242EF4DF4(v130, v128);
      v11 = sub_242C8A810(v10, sub_242C8C7E4, v90, v8);
      if (v2)
      {
LABEL_20:

        memcpy(v128, v96, 0x128uLL);
        *(&v128[18] + 1) = v8;
        v128[19] = v113;
        v128[20] = v114;
        *&v128[21] = v115;
        result = sub_242EF5334(v128);
      }

      else
      {
        v12 = v11;
        memcpy(v127, v4, 0x228uLL);
        sub_242D4939C(v127);

        memcpy(v128, v96, 0x128uLL);
        v128[19] = v113;
        v128[20] = v114;
        *&v128[21] = v115;
        *(&v128[18] + 1) = v12;
        sub_242EF545C(v128);
LABEL_42:
        result = memcpy(v4, v128, 0x228uLL);
      }

      break;
  }

  return result;
}

CarPlayAssetUI::GearPositionConfiguration::GaugeVersion_optional __swiftcall GearPositionConfiguration.GaugeVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GearPositionConfiguration.GaugeVersion.rawValue.getter()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x61636972656D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_242EE90E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261646E6F636573;
  v4 = 0xE900000000000079;
  if (v2 != 1)
  {
    v3 = 0x61636972656D756ELL;
    v4 = 0xED0000796C6E4F6CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7972616D697270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xE900000000000079;
  if (*a2 != 1)
  {
    v7 = 0x61636972656D756ELL;
    v8 = 0xED0000796C6E4F6CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7972616D697270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t sub_242EE9204()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242EE92B8(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242EE9358(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242EE9414(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000079;
  v5 = 0x7261646E6F636573;
  if (v2 != 1)
  {
    v5 = 0x61636972656D756ELL;
    v4 = 0xED0000796C6E4F6CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7972616D697270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CarPlayAssetUI::GearPositionConfiguration::Alignment_optional __swiftcall GearPositionConfiguration.Alignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GearPositionConfiguration.font.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = *(v1 + 56);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

__n128 GearPositionConfiguration.font.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v6[2] = *(v1 + 40);
  v7 = *(v1 + 56);
  sub_242C954DC(v6);
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  *(v1 + 56) = *(a1 + 48);
  return result;
}

uint64_t GearPositionConfiguration.textColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 80);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t GearPositionConfiguration.textColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 64), *(v1 + 72), *(v1 + 80));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t GearPositionConfiguration.backgroundColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 104);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t GearPositionConfiguration.backgroundColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 88), *(v1 + 96), *(v1 + 104));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  return result;
}

double GearPositionConfiguration.gearShiftImageGroupConfig.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 160);
  return sub_242EF54D4(v2, v3, v4, v5, v6, v7);
}

__n128 GearPositionConfiguration.gearShiftImageGroupConfig.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_242D3C4A8(*(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v7;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 160) = v5;
  return result;
}

uint64_t GearPositionConfiguration.baselineSpacing.setter(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

__n128 GearPositionConfiguration.init(dataIdentifier:font:textColorID:backgroundColorID:blurredPlatter:gaugeVersion:gearShiftImageGroupConfig:shiftFirstGearLabel:alignment:baselineSpacing:recommendationSpacing:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, float a10@<S0>, char *a11, int a12, char a13)
{
  v18 = *(a2 + 16);
  *(a9 + 8) = *a2;
  v19 = *(a3 + 16);
  v20 = *(a4 + 16);
  v21 = *a6;
  v22 = *(a7 + 32);
  v23 = *(a7 + 40);
  v24 = *(a7 + 48);
  v25 = *a11;
  *a9 = *a1;
  *(a9 + 24) = v18;
  *(a9 + 40) = *(a2 + 32);
  *(a9 + 56) = *(a2 + 48);
  *(a9 + 64) = *a3;
  *(a9 + 80) = v19;
  *(a9 + 88) = *a4;
  *(a9 + 104) = v20;
  *(a9 + 1) = v21;
  sub_242D3C4A8(0, 0, 0, 0, 0, 0);
  result = *a7;
  v27 = *(a7 + 16);
  *(a9 + 112) = *a7;
  *(a9 + 128) = v27;
  *(a9 + 144) = v22;
  *(a9 + 152) = v23;
  *(a9 + 160) = v24;
  *(a9 + 161) = a5;
  *(a9 + 162) = a8;
  *(a9 + 163) = v25;
  *(a9 + 164) = a12;
  *(a9 + 168) = a13 & 1;
  *(a9 + 172) = a10;
  return result;
}

uint64_t GearPositionConfiguration.assets.getter()
{
  v1 = *(v0 + 24);
  v10[0] = *(v0 + 8);
  v10[1] = v1;
  v10[2] = *(v0 + 40);
  v11 = *(v0 + 56);
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_242F09510;
  *(v3 + 56) = &type metadata for RasterFont;
  *(v3 + 64) = &protocol witness table for RasterFont;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = *(v0 + 8);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 40);
  *(v4 + 64) = *(v0 + 56);
  v9 = v3;
  if (v2)
  {
    swift_getKeyPath();

    sub_242C94884(v10, v8);

    v6 = sub_242D47D30(v2, sub_242D49264);

    sub_242C819FC(v6);
    return v9;
  }

  else
  {
    sub_242C94884(v10, v8);
  }

  return v3;
}

double GearPositionConfiguration.restoreAssets(from:)(void *a1)
{
  if (*(v1 + 120))
  {
    return ImageGroupConfiguration.restoreAssets(from:)(a1);
  }

  return result;
}

unint64_t sub_242EE9CA0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644961746164;
    v7 = 1953394534;
    v8 = 0x6F6C6F4374786574;
    if (a1 != 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7265566567756167;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6E656D6E67696C61;
    v2 = 0x656E696C65736162;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000019;
    v4 = 0xD000000000000013;
    if (a1 == 6)
    {
      v4 = 0x5064657272756C62;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242EE9E40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EF821C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EE9E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5524(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EE9EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5524(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t GearPositionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD628, &qword_242F503C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = *v1;
  v59 = v1[1];
  v8 = *(v1 + 24);
  v76 = *(v1 + 8);
  v77 = v8;
  v78 = *(v1 + 40);
  v9 = *(v1 + 7);
  v58 = *(v1 + 8);
  v79 = v9;
  v57 = *(v1 + 9);
  v56 = v1[80];
  v10 = *(v1 + 12);
  v53 = *(v1 + 11);
  v54 = v10;
  v55 = v1[104];
  v11 = *(v1 + 15);
  v46 = *(v1 + 14);
  v47 = v11;
  v12 = *(v1 + 17);
  v48 = *(v1 + 16);
  v52 = v12;
  v13 = *(v1 + 19);
  v51 = *(v1 + 18);
  v50 = v13;
  v49 = v1[160];
  v45 = v1[161];
  v44 = v1[162];
  v43 = v1[163];
  v42 = *(v1 + 41);
  v14 = v1[168];
  v15 = *(v1 + 43);
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF5524(v16, v17, v18);
  v19 = sub_242F064C0();
  LOBYTE(v72) = v7;
  LOBYTE(v69[0]) = 0;
  sub_242C8AC28(v19, v20, v21);
  v22 = v60;
  v23 = sub_242F05F20();
  if (!v22)
  {
    v26 = v56;
    v27 = v57;
    v28 = v58;
    LODWORD(v60) = v14;
    LOBYTE(v72) = v59;
    LOBYTE(v69[0]) = 1;
    sub_242EF5578(v23, v24, v25);
    sub_242F05F20();
    v72 = v76;
    v73 = v77;
    v74 = v78;
    v75 = v79;
    v71 = 2;
    v29 = sub_242C94884(&v76, v69);
    sub_242C95488(v29, v30, v31);
    sub_242F05F20();
    v69[0] = v72;
    v69[1] = v73;
    v69[2] = v74;
    v70 = v75;
    sub_242C954DC(v69);
    v61 = v28;
    v62 = v27;
    LOBYTE(v63) = v26;
    v68[0] = 3;
    v32 = sub_242C7CE5C(v28, v27, v26);
    sub_242C7DEA0(v32, v33, v34);
    sub_242F05F20();
    sub_242C7CEB0(v61, v62, v63);
    v61 = v53;
    v62 = v54;
    LOBYTE(v63) = v55;
    v68[0] = 4;
    sub_242C7CE5C(v53, v54, v55);
    sub_242F05F20();
    sub_242C7CEB0(v61, v62, v63);
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v64 = v52;
    v65 = v51;
    v66 = v50;
    v67 = v49;
    v68[0] = 5;
    sub_242EF54D4(v46, v47, v48, v52, v51, v50);
    sub_242D4873C(v36, v37, v38);
    sub_242F05EB0();
    sub_242D3C4A8(v61, v62, v63, v64, v65, v66);
    LOBYTE(v61) = v45;
    v68[0] = 6;
    sub_242F05F20();
    LOBYTE(v61) = v44;
    v68[0] = 7;
    v39 = sub_242F05F20();
    LOBYTE(v61) = v43;
    v68[0] = 8;
    sub_242EF55CC(v39, v40, v41);
    sub_242F05F20();
    LOBYTE(v61) = 9;
    v68[0] = v60;
    sub_242F05E80();
    LODWORD(v61) = v15;
    v68[0] = 10;
    sub_242F05F20();
  }

  return (*(v4 + 8))(v6, v3);
}

void GearPositionConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 120);
  v12 = *(v1 + 112);
  v13 = *(v1 + 88);
  v10 = *(v1 + 136);
  v11 = *(v1 + 128);
  v8 = *(v1 + 152);
  v9 = *(v1 + 144);
  v14 = *(v1 + 163);
  v7 = *(v1 + 160);
  v15 = *(v1 + 168);
  LOBYTE(v21) = *v1;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F04DD0();

  v6 = *(v1 + 24);
  v21 = *(v1 + 8);
  v22 = v6;
  v23 = *(v1 + 40);
  v24 = *(v1 + 56);
  RasterFont.hash(into:)(a1);
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  *&v21 = v13;
  *(&v21 + 1) = v3;
  LOBYTE(v22) = v4;
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  if (v5)
  {
    *&v16 = v12;
    *(&v16 + 1) = v5;
    *&v17 = v11;
    *(&v17 + 1) = v10;
    *&v18 = v9;
    *(&v18 + 1) = v8;
    sub_242F063B0();
    v19[0] = v12;
    v19[1] = v5;
    v19[2] = v11;
    v19[3] = v10;
    v19[4] = v9;
    v19[5] = v8;
    v20 = v7;
    sub_242DBE658(v19, &v21);
    ImageGroupConfiguration.hash(into:)(a1);
    v21 = v16;
    v22 = v17;
    v23 = v18;
    LOBYTE(v24) = v7;
    sub_242D49348(&v21);
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F063B0();
  sub_242F063B0();
  MEMORY[0x245D279A0](v14 + 1);
  sub_242F063B0();
  if (!v15)
  {
    sub_242F063C0();
  }

  sub_242F063C0();
}

uint64_t GearPositionConfiguration.hashValue.getter()
{
  sub_242F06390();
  GearPositionConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

void GearPositionConfiguration.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD648, &qword_242F503C8);
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v45 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF5524(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    sub_242D3C4A8(0, 0, 0, 0, 0, 0);
  }

  else
  {
    v60 = v5;
    LOBYTE(v62[0]) = 0;
    sub_242C8AC7C(v11, v12, v13);
    v14 = sub_242F05E00();
    v15 = LOBYTE(v69[0]);
    LOBYTE(v62[0]) = 1;
    sub_242EF5620(v14, v16, v17);
    v18 = sub_242F05E00();
    v59 = v15;
    v19 = LOBYTE(v69[0]);
    v90 = 2;
    sub_242C95584(v18, v20, v21);
    v22 = sub_242F05E00();
    *(v100 + 6) = v91;
    *(&v100[1] + 6) = v92;
    *(&v100[2] + 6) = v93;
    *(&v100[3] + 6) = v94;
    LOBYTE(v62[0]) = 3;
    sub_242C7DFAC(v22, v23, v24);
    sub_242F05E00();
    v51 = v69[0];
    v52 = LOBYTE(v69[1]);
    LOBYTE(v62[0]) = 4;
    v50 = 0;
    v25 = sub_242F05E00();
    v53 = v69[0];
    v54 = LOBYTE(v69[1]);
    LOBYTE(v62[0]) = 5;
    sub_242D48B5C(v25, v26, v27);
    sub_242F05D90();
    v55 = v69[0];
    v56 = v69[1];
    v57 = v69[2];
    v58 = LOBYTE(v69[3]);
    sub_242D3C4A8(0, 0, 0, 0, 0, 0);
    LOBYTE(v69[0]) = 6;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400, &qword_242F503D0);
    sub_242EA8308(&qword_27ECF1408, &qword_27ECF1400, &qword_242F503D0);
    v49 = v28;
    sub_242F05D90();
    v48 = LOBYTE(v62[0]);
    LOBYTE(v69[0]) = 7;
    sub_242F05D90();
    LODWORD(v49) = LOBYTE(v62[0]);
    LOBYTE(v69[0]) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD658, &unk_242F503D8);
    sub_242EA8308(&qword_27ECFD660, &qword_27ECFD658, &unk_242F503D8);
    sub_242F05D90();
    v29 = LOBYTE(v62[0]);
    if (LOBYTE(v62[0]) == 4)
    {
      v29 = 2;
    }

    v46 = v29;
    v47 = v19;
    LOBYTE(v69[0]) = 9;
    v30 = sub_242F05D60();
    v31 = v30;
    v97 = BYTE4(v30) & 1;
    v89 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8D78, &qword_242F38E80);
    sub_242EA8308(&qword_27ECF8D80, &qword_27ECF8D78, &qword_242F38E80);
    sub_242F05D90();
    v32 = v48 & 1;
    LODWORD(v50) = v48 & 1;
    LOBYTE(v49) = v49 & 1;
    LODWORD(v49) = v49;
    (*(v60 + 8))(v7, v61);
    if (v88)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v87;
    }

    v34 = v59;
    LOBYTE(v62[0]) = v59;
    BYTE1(v62[0]) = v47;
    *(v62 + 2) = v100[0];
    *(&v62[1] + 2) = v100[1];
    *(&v62[2] + 2) = v100[2];
    v62[3] = *(&v100[2] + 14);
    v35 = v51;
    v63 = v51;
    v64[0] = v52;
    *&v64[8] = v53;
    v64[24] = v54;
    v65 = v55;
    v66 = v56;
    v67 = v57;
    LOBYTE(v68) = v58;
    BYTE1(v68) = v32;
    v36 = v49;
    BYTE2(v68) = v49;
    BYTE3(v68) = v46;
    DWORD1(v68) = v31;
    LODWORD(v61) = v97;
    BYTE8(v68) = v97;
    *(&v68 + 3) = v33;
    v37 = v62[1];
    *a2 = v62[0];
    a2[1] = v37;
    v38 = v62[2];
    v39 = v62[3];
    v40 = *v64;
    a2[4] = v63;
    a2[5] = v40;
    a2[2] = v38;
    a2[3] = v39;
    v41 = *&v64[16];
    v42 = v65;
    v43 = v68;
    a2[9] = v67;
    a2[10] = v43;
    v44 = v66;
    a2[7] = v42;
    a2[8] = v44;
    a2[6] = v41;
    sub_242EF5674(v62, v69);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v69[0]) = v34;
    BYTE1(v69[0]) = v47;
    *(v69 + 2) = v100[0];
    *(&v69[1] + 2) = v100[1];
    *(&v69[2] + 2) = v100[2];
    v69[3] = *(&v100[2] + 14);
    v69[4] = __PAIR128__(*(&v51 + 1), v35);
    v70 = v52;
    *v71 = *v99;
    *&v71[3] = *&v99[3];
    v72 = v53;
    v73 = v54;
    *v74 = *v98;
    *&v74[3] = *&v98[3];
    v75 = v55;
    v76 = v56;
    v77 = v57;
    v78 = v58;
    v79 = v50;
    v80 = v36;
    v81 = v46;
    v82 = v31;
    v83 = v61;
    v85 = v96;
    v84 = v95;
    v86 = v33;
    sub_242EF5288(v69);
  }
}

double sub_242EEB1CC(void *a1)
{
  if (*(v1 + 120))
  {
    return ImageGroupConfiguration.restoreAssets(from:)(a1);
  }

  return result;
}

uint64_t sub_242EEB228()
{
  sub_242F06390();
  GearPositionConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EEB26C(uint64_t a1)
{
  sub_242F06390();
  GearPositionConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t SpeedometerTextGaugeConfiguration.labelConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  memcpy(a1, (v1 + 8), 0x150uLL);
  return sub_242D48DCC(__dst, v4);
}

void *SpeedometerTextGaugeConfiguration.labelConfiguration.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  sub_242D48E28(__dst);
  return memcpy((v1 + 8), a1, 0x150uLL);
}

void SpeedometerTextGaugeConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 296);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v8[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8C7E4, v8, v4);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *(v1 + 296) = v7;
  }
}

unint64_t SpeedometerTextGaugeConfiguration.description.getter(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = sub_242EFCF00(v1, v2);
  v5 = v4;

  MEMORY[0x245D26660](v3, v5);

  return 0xD000000000000015;
}

unint64_t sub_242EEB5E4()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD000000000000020;
  if (v1 != 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_242EEB69C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EF85C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EEB6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF56AC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEB700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF56AC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SpeedometerTextGaugeConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD668, &qword_242F503E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = *v1;
  v29 = v1[1];
  v8 = v1[2];
  v23 = v1[3];
  v24 = v8;
  memcpy(v28, v1 + 8, 0x150uLL);
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF56AC(v9, v10, v11);
  v12 = sub_242F064C0();
  v27[0] = v7;
  v26[0] = 0;
  sub_242C8AC28(v12, v13, v14);
  v15 = v25;
  sub_242F05F20();
  if (!v15)
  {
    v16 = v23;
    v17 = v24;
    v27[0] = v29;
    v26[0] = 1;
    sub_242F05F20();
    v27[0] = v17;
    v26[0] = 2;
    sub_242F05F20();
    v27[0] = v16;
    v26[0] = 3;
    sub_242F05F20();
    memcpy(v27, v28, sizeof(v27));
    v30 = 4;
    v18 = sub_242D48DCC(v28, v26);
    sub_242D48ED0(v18, v19, v20);
    sub_242F05F20();
    memcpy(v26, v27, sizeof(v26));
    sub_242D48E28(v26);
  }

  return (*(v4 + 8))(v6, v3);
}

void SpeedometerTextGaugeConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  memcpy(__dst, v1 + 8, sizeof(__dst));
  v8 = v3;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v8 = v4;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v8 = v5;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  v8 = v6;
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MeasurementLabelConfiguration.hash(into:)(a1);
}

uint64_t SpeedometerTextGaugeConfiguration.hashValue.getter()
{
  sub_242F06390();
  SpeedometerTextGaugeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t SpeedometerTextGaugeConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD678, &qword_242F503F0);
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v23 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF56AC(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v14 = v5;
  v25 = a2;
  v27[0] = 0;
  sub_242C8AC7C(v11, v12, v13);
  v15 = v26;
  sub_242F05E00();
  v16 = v28[0];
  v27[0] = 1;
  sub_242F05E00();
  v31 = v16;
  v24 = v28[0];
  v27[0] = 2;
  sub_242F05E00();
  LOBYTE(v16) = v28[0];
  v27[0] = 3;
  v17 = sub_242F05E00();
  v18 = v16;
  LOBYTE(v16) = v28[0];
  v32 = 4;
  sub_242D48F24(v17, v19, v20);
  sub_242F05E00();
  (*(v14 + 8))(v7, v15);
  memcpy(&v30[4], v29, 0x150uLL);
  LOBYTE(v15) = v24;
  v21 = v16;
  LOBYTE(v16) = v31;
  v27[0] = v31;
  v27[1] = v24;
  v27[2] = v18;
  v27[3] = v21;
  memcpy(&v27[4], v30, 0x154uLL);
  memcpy(v25, v27, 0x158uLL);
  sub_242EF5700(v27, v28);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v28[0] = v16;
  v28[1] = v15;
  v28[2] = v18;
  v28[3] = v21;
  memcpy(&v28[4], v30, 0x154uLL);
  return sub_242EF5334(v28);
}

uint64_t sub_242EEBEA8()
{
  sub_242F06390();
  SpeedometerTextGaugeConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EEBEEC(uint64_t a1)
{
  sub_242F06390();
  SpeedometerTextGaugeConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

void PowerTextGaugeConfiguration.dataIdentifiers.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

uint64_t PowerTextGaugeConfiguration.dataIdentifiers.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 6);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 6) = v3;
  return result;
}

uint64_t PowerTextGaugeConfiguration.labelConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  memcpy(a1, (v1 + 8), 0x150uLL);
  return sub_242D48DCC(__dst, v4);
}

void *PowerTextGaugeConfiguration.labelConfiguration.setter(const void *a1)
{
  memcpy(__dst, (v1 + 8), 0x150uLL);
  sub_242D48E28(__dst);
  return memcpy((v1 + 8), a1, 0x150uLL);
}

void *PowerTextGaugeConfiguration.init(labelConfiguration:regenerationColor:divider:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 926627351;
  *(a4 + 4) = 20536;
  *(a4 + 6) = 8;
  result = memcpy((a4 + 8), __src, 0x150uLL);
  *(a4 + 344) = a2;
  *(a4 + 352) = a3;
  return result;
}

void PowerTextGaugeConfiguration.restoreAssets(from:)(uint64_t a1)
{
  v4 = *(v1 + 296);
  v5 = sub_242CE6D94(MEMORY[0x277D84F90]);
  v8[2] = a1;
  v6 = sub_242C8A810(v5, sub_242C8C7E4, v8, v4);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *(v1 + 296) = v7;
  }
}

uint64_t PowerTextGaugeConfiguration.description.getter(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = sub_242EFCF00(v1, v2);
  v5 = v4;

  MEMORY[0x245D26660](v3, v5);

  return 0x7865547265776F50;
}

unint64_t sub_242EEC2A0()
{
  v1 = 0x6E65644961746164;
  v2 = 0x72656469766964;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_242EEC328@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EF8780(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EEC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5738(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEC38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5738(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t PowerTextGaugeConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD680, &qword_242F503F8);
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = *(v2 + 2);
  v8 = *(v2 + 6);
  memcpy(v35, v2 + 2, 0x150uLL);
  v9 = *(v2 + 43);
  v28[1] = *(v2 + 44);
  v29 = v9;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF5738(v10, v11, v12);
  v13 = sub_242F064C0();
  v14 = *v2;
  v15 = v4;
  v34[0] = v14;
  LOWORD(v34[1]) = v7;
  BYTE2(v34[1]) = v8;
  v33[0] = 0;
  sub_242E10728(v13, v16, v17);
  v18 = v36;
  sub_242F05F20();
  if (v18)
  {
    return (*(v30 + 8))(v6, v4);
  }

  v20 = v29;
  v21 = v30;
  memcpy(v34, v35, sizeof(v34));
  v33[343] = 1;
  v22 = sub_242D48DCC(v35, v33);
  sub_242D48ED0(v22, v23, v24);
  sub_242F05F20();
  memcpy(v33, v34, 0x150uLL);
  v25 = sub_242D48E28(v33);
  v32 = v20;
  v31 = 2;
  sub_242C7C594(v25, v26, v27);
  sub_242F05F20();
  LOBYTE(v32) = 3;
  sub_242F05F00();
  return (*(v21 + 8))(v6, v15);
}

uint64_t PowerTextGaugeConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 6);
  memcpy(__dst, v1 + 2, sizeof(__dst));
  v5 = *(v1 + 44);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  PowermeterDataIdentifiers.hash(into:)(a1);
  MeasurementLabelConfiguration.hash(into:)(a1);
  sub_242F04720();
  return MEMORY[0x245D279A0](v5);
}

uint64_t PowerTextGaugeConfiguration.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  memcpy(v5, v0 + 2, sizeof(v5));
  v3 = *(v0 + 44);
  sub_242F06390();
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  PowermeterDataIdentifiers.hash(into:)(v9);
  MeasurementLabelConfiguration.hash(into:)(v9);
  sub_242F04720();
  MEMORY[0x245D279A0](v3);
  return sub_242F063E0();
}

void PowerTextGaugeConfiguration.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD690, &unk_242F50400);
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v27 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF5738(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v14 = v5;
    v34 = a2;
    LOBYTE(v36[0]) = 0;
    sub_242E1077C(v11, v12, v13);
    v15 = v35;
    v16 = sub_242F05E00();
    v32 = LOBYTE(v37[0]);
    v40 = BYTE1(v37[0]);
    v30 = BYTE3(v37[0]);
    v31 = BYTE2(v37[0]);
    v33 = BYTE4(v37[0]);
    v17 = BYTE5(v37[0]);
    v18 = BYTE6(v37[0]);
    v42 = 1;
    sub_242D48F24(v16, v19, v20);
    sub_242F05E00();
    v28 = v18;
    v29 = v17;
    v21 = memcpy(&v39[1], v38, 0x150uLL);
    LOBYTE(v36[0]) = 2;
    sub_242C7C540(v21, v22, v23);
    sub_242F05E00();
    v24 = v37[0];
    v41 = 3;
    v25 = sub_242F05DE0();
    (*(v14 + 8))(v7, v15);
    LOBYTE(v14) = v31;
    v26 = v32;
    LOBYTE(v36[0]) = v32;
    BYTE1(v36[0]) = v40;
    BYTE2(v36[0]) = v31;
    LOBYTE(v18) = v30;
    BYTE3(v36[0]) = v30;
    BYTE4(v36[0]) = v33;
    LOBYTE(v15) = v28;
    BYTE5(v36[0]) = v29;
    BYTE6(v36[0]) = v28;
    memcpy(v36 + 7, v39, 0x151uLL);
    v36[43] = v24;
    v36[44] = v25;
    memcpy(v34, v36, 0x168uLL);
    sub_242EF578C(v36, v37);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    LOBYTE(v37[0]) = v26;
    BYTE1(v37[0]) = v40;
    BYTE2(v37[0]) = v14;
    BYTE3(v37[0]) = v18;
    BYTE4(v37[0]) = v33;
    BYTE5(v37[0]) = v29;
    BYTE6(v37[0]) = v15;
    memcpy(v37 + 7, v39, 0x151uLL);
    v37[43] = v24;
    v37[44] = v25;
    sub_242EF57C4(v37);
  }
}

uint64_t sub_242EECB8C(__int128 *a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 6);
  memcpy(__dst, v1 + 2, sizeof(__dst));
  v5 = *(v1 + 44);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  PowermeterDataIdentifiers.hash(into:)(a1);
  MeasurementLabelConfiguration.hash(into:)(a1);
  sub_242F04720();
  return MEMORY[0x245D279A0](v5);
}

uint64_t sub_242EECC28(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 6);
  memcpy(v6, v1 + 2, sizeof(v6));
  v4 = *(v1 + 44);
  sub_242F06390();
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  PowermeterDataIdentifiers.hash(into:)(v10);
  MeasurementLabelConfiguration.hash(into:)(v10);
  sub_242F04720();
  MEMORY[0x245D279A0](v4);
  return sub_242F063E0();
}

uint64_t TextConfiguration.font.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_242C94884(v7, v6);
}

__n128 TextConfiguration.font.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  sub_242C954DC(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t TextConfiguration.baselineSpacing.setter(uint64_t result)
{
  *(v1 + 76) = result;
  *(v1 + 80) = BYTE4(result) & 1;
  return result;
}

uint64_t TextConfiguration.redactedOverride.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void TextConfiguration.redactedOverride.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t TextConfiguration.redactedColorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 120);
  *(a1 + 16) = v4;
  return sub_242C55470(v2, v3, v4);
}

uint64_t TextConfiguration.redactedColorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C55484(*(v1 + 104), *(v1 + 112), *(v1 + 120));
  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  return result;
}

uint64_t TextConfiguration.init(font:statefulText:colorIDs:dataIdentifier:colorDataIdentifier:alignment:baselineSpacing:redactedOverride:redactedColorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a11;
  v16 = a11[1];
  v17 = *(a11 + 16);
  v18 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = *(a1 + 48);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 72) = v12;
  *(a9 + 73) = v13;
  *(a9 + 74) = v14;
  *(a9 + 76) = a7;
  *(a9 + 80) = BYTE4(a7) & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  result = sub_242C55484(0, 0, 255);
  *(a9 + 104) = v15;
  *(a9 + 112) = v16;
  *(a9 + 120) = v17;
  return result;
}

uint64_t TextConfiguration.init(font:text:colorID:dataIdentifier:alignment:baselineSpacing:redactedOverride:redactedColorID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = *a5;
  v29 = a11[1];
  v30 = *a11;
  v27 = *a6;
  v28 = *(a11 + 16);
  *(a9 + 72) = 22102;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 120) = -1;
  v19 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v19;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0378, &unk_242F0A850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 48;
  v21 = inited + 32;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v22 = sub_242CE7918(inited);
  swift_setDeallocating();
  sub_242C6D138(v21, &qword_27ECF0380, &qword_242F50410);
  *(a9 + 56) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3378, &unk_242F2FFC0);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_242F09510;
  *(v23 + 32) = 0;
  v24 = v23 + 32;
  *(v23 + 40) = v15;
  *(v23 + 48) = v16;
  *(v23 + 56) = v17;
  v25 = sub_242CE7008(v23);
  swift_setDeallocating();
  sub_242C6D138(v24, &qword_27ECF1F18, &qword_242F131D0);
  *(a9 + 64) = v25;
  *(a9 + 72) = v18;
  *(a9 + 73) = 86;
  *(a9 + 74) = v27;
  *(a9 + 76) = a7;
  *(a9 + 80) = BYTE4(a7) & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  result = sub_242C55484(0, 0, 255);
  *(a9 + 104) = v30;
  *(a9 + 112) = v29;
  *(a9 + 120) = v28;
  return result;
}

uint64_t TextConfiguration.assets.getter()
{
  v1 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_242F09510;
  *(v2 + 56) = &type metadata for RasterFont;
  *(v2 + 64) = &protocol witness table for RasterFont;
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = *(v0 + 48);
  sub_242C94884(v7, v6);
  return v2;
}

unint64_t TextConfiguration.description.getter()
{
  v0 = sub_242F04D00();
  MEMORY[0x245D26660](v0);

  return 0xD000000000000012;
}

unint64_t sub_242EED3F0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1953394534;
    v6 = 0x734449726F6C6F63;
    if (a1 != 2)
    {
      v6 = 0x6E65644961746164;
    }

    if (a1)
    {
      v5 = 0x6C75666574617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656E696C65736162;
    v2 = 0x6465746361646572;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 != 4)
    {
      v3 = 0x6E656D6E67696C61;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242EED540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EF88F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EED568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF57F4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EED5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF57F4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TextConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD698, &qword_242F50418);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - v5;
  v7 = v1[1];
  v59 = *v1;
  v60 = v7;
  v61 = v1[2];
  v8 = *(v1 + 6);
  v45 = *(v1 + 7);
  v62 = v8;
  v44 = *(v1 + 8);
  v43 = *(v1 + 72);
  v42 = *(v1 + 73);
  v41 = *(v1 + 74);
  v40 = *(v1 + 19);
  v39 = *(v1 + 80);
  v9 = *(v1 + 12);
  v37 = *(v1 + 11);
  v38 = v9;
  v10 = *(v1 + 14);
  v35 = *(v1 + 13);
  v36 = v10;
  v11 = *(v1 + 120);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v12 = sub_242C94884(&v59, &v55);
  sub_242EF57F4(v12, v13, v14);
  v15 = v3;
  v16 = sub_242F064C0();
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  v54 = 0;
  sub_242C95488(v16, v17, v18);
  v19 = v63;
  sub_242F05F20();
  if (v19)
  {
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    sub_242C954DC(&v50);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = v44;
    v21 = v43;
    v22 = v42;
    v23 = v41;
    LODWORD(v63) = v11;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    sub_242C954DC(&v50);
    v46 = v45;
    v49 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6A8, &unk_242F50420);
    sub_242EF5848(&qword_27ECFD6B0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_242F05F20();
    v46 = v20;
    v49 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0, MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    v25 = sub_242F05F20();
    LOBYTE(v46) = v21;
    v49 = 3;
    sub_242C8AC28(v25, v26, v27);
    sub_242F05EB0();
    LOBYTE(v46) = v22;
    v49 = 4;
    v28 = sub_242F05EB0();
    LOBYTE(v46) = v23;
    v49 = 5;
    sub_242E2D4A8(v28, v29, v30);
    sub_242F05F20();
    LOBYTE(v46) = 6;
    v49 = v39;
    sub_242F05E80();
    LOBYTE(v46) = 7;
    sub_242F05E50();
    v46 = v35;
    v47 = v36;
    v48 = v63;
    v49 = 8;
    v31 = sub_242C55470(v35, v36, v63);
    sub_242C7DEA0(v31, v32, v33);
    sub_242F05EB0();
    sub_242C55484(v46, v47, v48);
    return (*(v4 + 8))(v6, v15);
  }
}

double TextConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 73);
  v7 = *(v1 + 74);
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 120);
  RasterFont.hash(into:)(a1);
  sub_242C7B954(a1, v3);
  sub_242C79508(a1, v4);
  if (v5 == 86)
  {
    sub_242F063B0();
    if (v6 != 86)
    {
LABEL_3:
      sub_242F063B0();
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      goto LABEL_6;
    }
  }

  else
  {
    sub_242F063B0();
    InstrumentDataIdentifier.rawValue.getter();
    sub_242F04DD0();

    if (v6 != 86)
    {
      goto LABEL_3;
    }
  }

  sub_242F063B0();
LABEL_6:
  MEMORY[0x245D279A0](v7 + 1);
  if (v8)
  {
    sub_242F063B0();
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_13:
    sub_242F063B0();
    if (v10 != 255)
    {
      goto LABEL_9;
    }

LABEL_14:
    sub_242F063B0();
    return result;
  }

  sub_242F063B0();
  sub_242F063C0();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_242F063B0();
  sub_242F04DD0();
  if (v10 == 255)
  {
    goto LABEL_14;
  }

LABEL_9:
  sub_242F063B0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t TextConfiguration.hashValue.getter()
{
  sub_242F06390();
  TextConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t TextConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6B8, &qword_242F50430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = a1[3];
  v50 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242EF57F4(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v50);

    return sub_242C55484(0, 0, 255);
  }

  else
  {
    v16 = v6;
    v49 = a2;
    v83 = 0;
    sub_242C95584(v13, v14, v15);
    v17 = v5;
    sub_242F05E00();
    v77 = v73;
    v78 = v74;
    v79 = v75;
    v80 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6A8, &unk_242F50420);
    LOBYTE(v51[0]) = 1;
    sub_242EF5848(&qword_27ECFD6C0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242F05E00();
    v18 = *&v56[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8, &qword_242F180D0);
    LOBYTE(v51[0]) = 2;
    sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC, MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    v19 = sub_242F05E00();
    v47 = *&v56[0];
    v48 = v18;
    LOBYTE(v51[0]) = 3;
    sub_242C8AC7C(v19, v20, v21);
    sub_242F05D90();
    v22 = v56[0];
    LOBYTE(v51[0]) = 4;
    v23 = sub_242F05D90();
    LODWORD(v18) = LOBYTE(v56[0]);
    LOBYTE(v51[0]) = 5;
    sub_242E2D550(v23, v24, v25);
    sub_242F05E00();
    v46 = v18;
    LODWORD(v18) = LOBYTE(v56[0]);
    LOBYTE(v56[0]) = 6;
    v26 = sub_242F05D60();
    v45 = v18;
    v44 = v26;
    v81 = BYTE4(v26) & 1;
    LOBYTE(v56[0]) = 7;
    v43 = sub_242F05D30();
    v28 = v27;
    v82 = 8;
    sub_242C7DFAC(v43, v27, v29);
    sub_242F05D90();
    (*(v16 + 8))(v8, v17);
    v30 = v70;
    v31 = v71;
    LOBYTE(v17) = v72;
    sub_242C55484(0, 0, 255);
    v51[0] = v77;
    v51[1] = v78;
    v51[2] = v79;
    *&v52 = v80;
    *(&v52 + 1) = v48;
    *&v53 = v47;
    BYTE8(v53) = v22;
    BYTE9(v53) = v46;
    BYTE10(v53) = v45;
    v32 = v43;
    v33 = v44;
    HIDWORD(v53) = v44;
    HIDWORD(v42) = v81;
    LOBYTE(v54) = v81;
    *(&v54 + 1) = v43;
    *&v55[0] = v28;
    *(&v55[0] + 1) = v30;
    *&v55[1] = v31;
    BYTE8(v55[1]) = v17;
    v34 = v77;
    v35 = v78;
    v36 = v52;
    v37 = v49;
    v49[2] = v79;
    v37[3] = v36;
    *v37 = v34;
    v37[1] = v35;
    v38 = v53;
    v39 = v54;
    v40 = v55[0];
    *(v37 + 105) = *(v55 + 9);
    v37[5] = v39;
    v37[6] = v40;
    v37[4] = v38;
    sub_242EF58B4(v51, v56);
    __swift_destroy_boxed_opaque_existential_2Tm(v50);
    v56[0] = v77;
    v56[1] = v78;
    v56[2] = v79;
    v57 = v80;
    v58 = v48;
    v59 = v47;
    v60 = v22;
    v61 = v46;
    v62 = v45;
    v63 = v33;
    v64 = BYTE4(v42);
    v65 = v32;
    v66 = v28;
    v67 = v30;
    v68 = v31;
    v69 = v17;
    return sub_242EF58EC(v56);
  }
}

uint64_t sub_242EEE46C()
{
  v1 = *(v0 + 16);
  v7[0] = *v0;
  v7[1] = v1;
  v7[2] = *(v0 + 32);
  v8 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_242F09510;
  *(v2 + 56) = &type metadata for RasterFont;
  *(v2 + 64) = &protocol witness table for RasterFont;
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = *v0;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 32);
  *(v3 + 64) = *(v0 + 48);
  sub_242C94884(v7, v6);
  return v2;
}

uint64_t sub_242EEE55C()
{
  sub_242F06390();
  TextConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242EEE5A0(uint64_t a1)
{
  sub_242F06390();
  TextConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

unint64_t TextDataType.description.getter()
{
  memcpy(v3, v0, 0x228uLL);
  v1 = sub_242D3DE64(v3);
  sub_242C58D34(v3);
  result = 0x6465657053;
  switch(v1)
  {
    case 1:
      result = 0x6E55206465657053;
      break;
    case 2:
      result = 0x736F502072616547;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x63696D616E7944;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x694C206465657053;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x666645206C657546;
      break;
    case 12:
      result = 0x4C20656772616843;
      break;
    case 13:
      result = 0x726574656D6F644FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TextDataType.id.getter()
{
  memcpy(v3, v0, 0x228uLL);
  v1 = sub_242D3DE64(v3);
  sub_242C58D34(v3);
  result = 0x6465657073;
  switch(v1)
  {
    case 1:
      result = 0x696E556465657073;
      break;
    case 2:
      result = 0x69736F5072616567;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x63696D616E7964;
      break;
    case 6:
      result = 0x74617265706D6574;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x6D694C6465657073;
      break;
    case 9:
      result = 0x6E6F697461746F72;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x696666456C657566;
      break;
    case 12:
      result = 0x654C656772616863;
      break;
    case 13:
      result = 0x726574656D6F646FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_242EEE9EC(char a1)
{
  result = 0x6465657073;
  switch(a1)
  {
    case 1:
      result = 0x696E556465657073;
      break;
    case 2:
      result = 0x69736F5072616567;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x63696D616E7964;
      break;
    case 6:
      result = 0x74617265706D6574;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x6D694C6465657073;
      break;
    case 9:
      result = 0x6E6F697461746F72;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x696666456C657566;
      break;
    case 12:
      result = 0x654C656772616863;
      break;
    case 13:
      result = 0x726574656D6F646FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_242EEEBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5A18(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5A18(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEC34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242EF8C0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242EEEC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF591C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF591C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5CB8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5CB8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEED4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5AC0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5AC0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5A6C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5A6C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5EB0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5EB0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5970(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5970(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5BBC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5BBC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEEFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5D60(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEEFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5D60(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242EEF01C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A760 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242EEF108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5B14(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5B14(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEF180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5E08(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5E08(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEF1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5FAC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5FAC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEF270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5B68(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5B68(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242EEF2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5F58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5F58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242EEF360(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A760 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_242F06110();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_242EEF44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5C64(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EEF488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF5C64(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TextDataType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6C8, &qword_242F50438);
  v207 = *(v2 - 8);
  v208 = v2;
  MEMORY[0x28223BE20](v2);
  v206 = &v170 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6D0, &qword_242F50440);
  v204 = *(v4 - 8);
  v205 = v4;
  MEMORY[0x28223BE20](v4);
  v203 = &v170 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6D8, &qword_242F50448);
  v201 = *(v6 - 8);
  v202 = v6;
  MEMORY[0x28223BE20](v6);
  v200 = &v170 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6E0, &qword_242F50450);
  v198 = *(v8 - 8);
  v199 = v8;
  MEMORY[0x28223BE20](v8);
  v197 = &v170 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6E8, &qword_242F50458);
  v195 = *(v10 - 8);
  v196 = v10;
  MEMORY[0x28223BE20](v10);
  v194 = &v170 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6F0, &qword_242F50460);
  v192 = *(v12 - 8);
  v193 = v12;
  MEMORY[0x28223BE20](v12);
  v191 = &v170 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD6F8, &qword_242F50468);
  v189 = *(v14 - 8);
  v190 = v14;
  MEMORY[0x28223BE20](v14);
  v188 = &v170 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD700, &qword_242F50470);
  v186 = *(v16 - 8);
  v187 = v16;
  MEMORY[0x28223BE20](v16);
  v185 = &v170 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD708, &qword_242F50478);
  v183 = *(v18 - 8);
  v184 = v18;
  MEMORY[0x28223BE20](v18);
  v182 = &v170 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD710, &qword_242F50480);
  v180 = *(v20 - 8);
  v181 = v20;
  MEMORY[0x28223BE20](v20);
  v179 = &v170 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD718, &qword_242F50488);
  v177 = *(v22 - 8);
  v178 = v22;
  MEMORY[0x28223BE20](v22);
  v176 = &v170 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD720, &qword_242F50490);
  v174 = *(v24 - 8);
  v175 = v24;
  MEMORY[0x28223BE20](v24);
  v173 = &v170 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD728, &qword_242F50498);
  v172 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v170 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD730, &qword_242F504A0);
  v171 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v170 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD738, &qword_242F504A8);
  v33 = *(v32 - 8);
  v211 = v32;
  v212 = v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v170 - v34;
  v36 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF591C(v36, v37, v38);
  v210 = v35;
  sub_242F064C0();
  memcpy(v215, v213, 0x228uLL);
  LODWORD(a1) = sub_242D3DE64(v215);
  v39 = sub_242C58D34(v215);
  v42 = v39;
  switch(a1)
  {
    case 1:
      LOBYTE(v214[0]) = 1;
      sub_242EF5F58(v39, v40, v41);
      v44 = v210;
      v43 = v211;
      sub_242F05E40();
      v113 = memcpy(v214, v42, 0x158uLL);
      sub_242EF5E5C(v113, v114, v115);
      sub_242F05F20();
      (*(v172 + 8))(v28, v26);
      goto LABEL_22;
    case 2:
      LOBYTE(v214[0]) = 2;
      sub_242EF5EB0(v39, v40, v41);
      v63 = v173;
      v44 = v210;
      v43 = v211;
      v84 = sub_242F05E40();
      v85 = *v42;
      v86 = v42[2];
      v214[1] = v42[1];
      v214[2] = v86;
      v214[0] = v85;
      v87 = v42[3];
      v88 = v42[4];
      v89 = v42[6];
      v214[5] = v42[5];
      v214[6] = v89;
      v214[3] = v87;
      v214[4] = v88;
      v90 = v42[7];
      v91 = v42[8];
      v92 = v42[10];
      v214[9] = v42[9];
      v214[10] = v92;
      v214[7] = v90;
      v214[8] = v91;
      sub_242EF5F04(v84, v93, v94);
      v29 = v175;
      sub_242F05F20();
      v67 = v174;
      goto LABEL_20;
    case 3:
      LOBYTE(v214[0]) = 3;
      sub_242EF5E08(v39, v40, v41);
      v63 = v176;
      v44 = v210;
      v43 = v211;
      sub_242F05E40();
      v95 = memcpy(v214, v42, 0x158uLL);
      sub_242EF5E5C(v95, v96, v97);
      v29 = v178;
      sub_242F05F20();
      v67 = v177;
      goto LABEL_20;
    case 4:
      LOBYTE(v214[0]) = 4;
      sub_242EF5D60(v39, v40, v41);
      v63 = v179;
      v44 = v210;
      v43 = v211;
      sub_242F05E40();
      v64 = memcpy(v214, v42, 0x228uLL);
      sub_242EF5DB4(v64, v65, v66);
      v29 = v181;
      sub_242F05F20();
      v67 = v180;
      goto LABEL_20;
    case 5:
      LOBYTE(v214[0]) = 5;
      sub_242EF5CB8(v39, v40, v41);
      v63 = v182;
      v44 = v210;
      v43 = v211;
      v116 = sub_242F05E40();
      v117 = *v42;
      v118 = v42[1];
      v119 = v42[3];
      v214[2] = v42[2];
      v214[3] = v119;
      v214[0] = v117;
      v214[1] = v118;
      v120 = v42[4];
      v121 = v42[5];
      v122 = v42[6];
      *(&v214[6] + 9) = *(v42 + 105);
      v214[5] = v121;
      v214[6] = v122;
      v214[4] = v120;
      sub_242EF5D0C(v116, v123, v124);
      v29 = v184;
      sub_242F05F20();
      v67 = v183;
LABEL_20:
      v48 = *(v67 + 8);
      v49 = v63;
      goto LABEL_21;
    case 6:
      v133 = *(v39 + 4);
      v134 = *(v39 + 6);
      sub_242EF5C64(v39, v40, v41);
      v135 = *v42;
      LOBYTE(v214[0]) = 6;
      v136 = v185;
      v137 = v42;
      v139 = v210;
      v138 = v211;
      v140 = sub_242F05E40();
      LODWORD(v214[0]) = v135;
      WORD2(v214[0]) = v133;
      BYTE6(v214[0]) = v134;
      v141 = v136;
      v216 = 0;
      sub_242EE1D98(v140, v142, v143);
      v144 = v187;
      v145 = v209;
      sub_242F05F20();
      if (!v145)
      {
        v146 = memcpy(v214, v137 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v146, v147, v148);
        sub_242F05F20();
      }

      v149 = v186;
      goto LABEL_36;
    case 7:
      v98 = *v39;
      v99 = *(v39 + 2);
      LOBYTE(v214[0]) = 7;
      sub_242EF5BBC(v39, v40, v41);
      v100 = v188;
      v101 = v211;
      v102 = v42;
      v103 = v210;
      v104 = sub_242F05E40();
      LOWORD(v214[0]) = v98;
      BYTE2(v214[0]) = v99;
      v216 = 0;
      sub_242EF5C10(v104, v105, v106);
      v107 = v190;
      v108 = v209;
      sub_242F05F20();
      if (!v108)
      {
        v109 = memcpy(v214, v102 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v109, v110, v111);
        sub_242F05F20();
      }

      (*(v189 + 8))(v100, v107);
      return (*(v212 + 8))(v103, v101);
    case 8:
      v158 = *(v39 + 4);
      v159 = *(v39 + 6);
      sub_242EF5B68(v39, v40, v41);
      v160 = *v42;
      LOBYTE(v214[0]) = 8;
      v161 = v191;
      v162 = v42;
      v139 = v210;
      v138 = v211;
      v163 = sub_242F05E40();
      LODWORD(v214[0]) = v160;
      WORD2(v214[0]) = v158;
      BYTE6(v214[0]) = v159;
      v141 = v161;
      v216 = 0;
      sub_242EE19FC(v163, v164, v165);
      v144 = v193;
      v166 = v209;
      sub_242F05F20();
      if (!v166)
      {
        v167 = memcpy(v214, v162 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v167, v168, v169);
        sub_242F05F20();
      }

      v149 = v192;
LABEL_36:
      (*(v149 + 8))(v141, v144);
      return (*(v212 + 8))(v139, v138);
    case 9:
      v76 = *v39;
      LOBYTE(v214[0]) = 9;
      sub_242EF5B14(v39, v40, v41);
      v51 = v194;
      v53 = v210;
      v52 = v211;
      v77 = sub_242F05E40();
      LOBYTE(v214[0]) = v76;
      v216 = 0;
      sub_242C8AC28(v77, v78, v79);
      v57 = v196;
      v80 = v209;
      sub_242F05F20();
      if (!v80)
      {
        v81 = memcpy(v214, v42 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v81, v82, v83);
        sub_242F05F20();
      }

      v62 = v195;
      goto LABEL_32;
    case 10:
      sub_242EF5AC0(v39, v40, v41);
      v150 = *v42;
      LOBYTE(v214[0]) = 10;
      v51 = v197;
      v53 = v210;
      v52 = v211;
      v151 = sub_242F05E40();
      LODWORD(v214[0]) = v150;
      v216 = 0;
      sub_242EE1F90(v151, v152, v153);
      v57 = v199;
      v154 = v209;
      sub_242F05F20();
      if (!v154)
      {
        v155 = memcpy(v214, v42 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v155, v156, v157);
        sub_242F05F20();
      }

      v62 = v198;
      goto LABEL_32;
    case 11:
      sub_242EF5A6C(v39, v40, v41);
      v50 = *v42;
      LOBYTE(v214[0]) = 11;
      v51 = v200;
      v53 = v210;
      v52 = v211;
      v54 = sub_242F05E40();
      LODWORD(v214[0]) = v50;
      v216 = 0;
      sub_242EE1EE8(v54, v55, v56);
      v57 = v202;
      v58 = v209;
      sub_242F05F20();
      if (!v58)
      {
        v59 = memcpy(v214, v42 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v59, v60, v61);
        sub_242F05F20();
      }

      v62 = v201;
      goto LABEL_32;
    case 12:
      v68 = *v39;
      LOBYTE(v214[0]) = 12;
      sub_242EF5A18(v39, v40, v41);
      v51 = v203;
      v53 = v210;
      v52 = v211;
      v69 = sub_242F05E40();
      LOBYTE(v214[0]) = v68;
      v216 = 0;
      sub_242C8AC28(v69, v70, v71);
      v57 = v205;
      v72 = v209;
      sub_242F05F20();
      if (!v72)
      {
        v73 = memcpy(v214, v42 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v73, v74, v75);
        sub_242F05F20();
      }

      v62 = v204;
      goto LABEL_32;
    case 13:
      v125 = *v39;
      LOBYTE(v214[0]) = 13;
      sub_242EF5970(v39, v40, v41);
      v51 = v206;
      v53 = v210;
      v52 = v211;
      v126 = sub_242F05E40();
      LOWORD(v214[0]) = v125;
      v216 = 0;
      sub_242EF59C4(v126, v127, v128);
      v57 = v208;
      v129 = v209;
      sub_242F05F20();
      if (!v129)
      {
        v130 = memcpy(v214, v42 + 8, 0x150uLL);
        v216 = 1;
        sub_242D48ED0(v130, v131, v132);
        sub_242F05F20();
      }

      v62 = v207;
LABEL_32:
      (*(v62 + 8))(v51, v57);
      result = (*(v212 + 8))(v53, v52);
      break;
    default:
      LOBYTE(v214[0]) = 0;
      sub_242EF5FAC(v39, v40, v41);
      v44 = v210;
      v43 = v211;
      sub_242F05E40();
      v45 = memcpy(v214, v42, 0x158uLL);
      sub_242EF5E5C(v45, v46, v47);
      sub_242F05F20();
      v48 = *(v171 + 8);
      v49 = v31;
LABEL_21:
      v48(v49, v29);
LABEL_22:
      result = (*(v212 + 8))(v44, v43);
      break;
  }

  return result;
}

void TextDataType.hash(into:)(__int128 *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_242D3DE64(__dst);
  v4 = sub_242C58D34(__dst);
  v5 = v4;
  switch(v3)
  {
    case 1:
      v6 = 1;
      goto LABEL_12;
    case 2:
      MEMORY[0x245D279A0](2);
      *&v21[112] = v5[7];
      *&v21[128] = v5[8];
      *&v21[144] = v5[9];
      *&v21[160] = v5[10];
      *&v21[48] = v5[3];
      *&v21[64] = v5[4];
      *&v21[80] = v5[5];
      *&v21[96] = v5[6];
      *v21 = *v5;
      *&v21[16] = v5[1];
      *&v21[32] = v5[2];
      GearPositionConfiguration.hash(into:)(a1);
      return;
    case 3:
      v6 = 3;
      goto LABEL_12;
    case 4:
      MEMORY[0x245D279A0](4);
      memcpy(v21, v5, sizeof(v21));
      Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.hash(into:)(a1);
      return;
    case 5:
      MEMORY[0x245D279A0](5);
      *&v21[64] = v5[4];
      *&v21[80] = v5[5];
      *&v21[96] = v5[6];
      *&v21[105] = *(v5 + 105);
      *v21 = *v5;
      *&v21[16] = v5[1];
      *&v21[32] = v5[2];
      *&v21[48] = v5[3];
      TextConfiguration.hash(into:)(a1);
      return;
    case 6:
      v13 = *(v4 + 4);
      v14 = *(v4 + 6);
      v15 = *v4;
      MEMORY[0x245D279A0](6);
      *v21 = v15;
      *&v21[4] = v13;
      v21[6] = v14;
      TemperatureDataIdentifiers.hash(into:)(a1);
      goto LABEL_20;
    case 7:
      v11 = *(v4 + 2);
      MEMORY[0x245D279A0](7);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      v21[0] = v11;
      goto LABEL_15;
    case 8:
      v18 = *(v4 + 4);
      v19 = *(v4 + 6);
      v20 = *v4;
      MEMORY[0x245D279A0](8);
      *v21 = v20;
      *&v21[4] = v18;
      v21[6] = v19;
      DriverAssistanceDataIdentifiers.hash(into:)(a1);
      goto LABEL_20;
    case 9:
      v7 = (v4 + 8);
      v9 = *v4;
      v10 = 9;
      goto LABEL_7;
    case 10:
      v7 = (v4 + 8);
      v16 = *v4;
      MEMORY[0x245D279A0](10);
      *v21 = v16;
      EnergyEfficiencyDataIdentifiers.hash(into:)(a1);
      goto LABEL_18;
    case 11:
      v7 = (v4 + 8);
      v8 = *v4;
      MEMORY[0x245D279A0](11);
      *v21 = v8;
      FuelConsumptionDataIdentifiers.hash(into:)(a1);
      goto LABEL_18;
    case 12:
      v7 = (v4 + 8);
      v9 = *v4;
      v10 = 12;
LABEL_7:
      MEMORY[0x245D279A0](v10);
      v21[0] = v9;
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

LABEL_18:
      v17 = v7;
      goto LABEL_21;
    case 13:
      v12 = *(v4 + 1);
      MEMORY[0x245D279A0](13);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      v21[0] = v12;
LABEL_15:
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

LABEL_20:
      v17 = v5 + 8;
LABEL_21:
      memcpy(v21, v17, 0x150uLL);
      MeasurementLabelConfiguration.hash(into:)(a1);
      break;
    default:
      v6 = 0;
LABEL_12:
      MEMORY[0x245D279A0](v6);
      memcpy(v21, v5, 0x158uLL);
      SpeedometerTextGaugeConfiguration.hash(into:)(a1);
      break;
  }
}

uint64_t TextDataType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v239 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD7E8, &qword_242F504B0);
  v5 = *(v4 - 8);
  v228 = v4;
  v229 = v5;
  MEMORY[0x28223BE20](v4);
  v236 = &v200 - v6;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD7F0, &qword_242F504B8);
  v238 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v243.i64[0] = &v200 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD7F8, &qword_242F504C0);
  v225 = *(v8 - 8);
  v226 = v8;
  MEMORY[0x28223BE20](v8);
  v237 = &v200 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD800, &qword_242F504C8);
  v223 = *(v10 - 8);
  v224 = v10;
  MEMORY[0x28223BE20](v10);
  v242.i64[0] = &v200 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD808, &qword_242F504D0);
  v221 = *(v12 - 8);
  v222 = v12;
  MEMORY[0x28223BE20](v12);
  v235 = &v200 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD810, &qword_242F504D8);
  v219 = *(v14 - 8);
  v220 = v14;
  MEMORY[0x28223BE20](v14);
  v234 = &v200 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD818, &qword_242F504E0);
  v17 = *(v16 - 8);
  v217 = v16;
  v218 = v17;
  MEMORY[0x28223BE20](v16);
  v233 = &v200 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD820, &qword_242F504E8);
  v215 = *(v19 - 8);
  v216 = v19;
  MEMORY[0x28223BE20](v19);
  v241 = &v200 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD828, &qword_242F504F0);
  v213 = *(v21 - 8);
  v214 = v21;
  MEMORY[0x28223BE20](v21);
  v240 = &v200 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD830, &qword_242F504F8);
  v211 = *(v23 - 8);
  v212 = v23;
  MEMORY[0x28223BE20](v23);
  v232 = &v200 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD838, &qword_242F50500);
  v209 = *(v25 - 8);
  v210 = v25;
  MEMORY[0x28223BE20](v25);
  v231 = &v200 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD840, &qword_242F50508);
  v207 = *(v27 - 8);
  v208 = v27;
  MEMORY[0x28223BE20](v27);
  v230 = &v200 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD848, &qword_242F50510);
  v205 = *(v29 - 8);
  v206 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v200 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD850, &qword_242F50518);
  v204 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v200 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD858, &unk_242F50520);
  v244 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = &v200 - v36;
  v38 = a1[3];
  v246 = a1;
  v39 = __swift_project_boxed_opaque_existential_2Tm(a1, v38);
  sub_242EF591C(v39, v40, v41);
  v42 = v245;
  sub_242F06480();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v246);
  }

  v201 = v32;
  v202 = v34;
  v203 = v31;
  v43 = v240;
  v44 = v241;
  v45 = v242.i64[0];
  v46 = v243.i64[0];
  v245 = v35;
  v47 = sub_242F05E10();
  v48 = (2 * *(v47 + 16)) | 1;
  v256 = v47;
  v257 = v47 + 32;
  v258 = 0;
  v259 = v48;
  v49 = sub_242C7FBEC();
  if (v258 != v259 >> 1)
  {
LABEL_5:
    v55 = sub_242F05B10();
    swift_allocError();
    v57 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v57 = &type metadata for TextDataType;
    v58 = v245;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    (*(v244 + 8))(v37, v58);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v246);
  }

  switch(v49)
  {
    case 0:
      v52 = v239;
      v252[0] = 0;
      sub_242EF5FAC(v49, v50, v51);
      v53 = v202;
      v54 = sub_242F05D10();
      sub_242EF61CC(v54, v146, v147);
      v148 = v201;
      sub_242F05E00();
      v149 = (v244 + 8);
      (*(v204 + 8))(v53, v148);
      (*v149)(v37, v245);
      swift_unknownObjectRelease();
      memcpy(v252, v247, 0x158uLL);
      sub_242EF545C(v252);
      memcpy(v255, v252, sizeof(v255));
      v179 = v246;
      v180 = v52;
      break;
    case 1:
      v69 = v239;
      v252[0] = 1;
      sub_242EF5F58(v49, v50, v51);
      v116 = v203;
      v117 = v245;
      v118 = sub_242F05D10();
      sub_242EF61CC(v118, v119, v120);
      v121 = v206;
      sub_242F05E00();
      v122 = (v244 + 8);
      (*(v205 + 8))(v116, v121);
      (*v122)(v37, v117);
      swift_unknownObjectRelease();
      memcpy(v252, v247, 0x158uLL);
      sub_242EF53E0(v252);
      goto LABEL_20;
    case 2:
      v69 = v239;
      v252[0] = 2;
      sub_242EF5EB0(v49, v50, v51);
      v94 = v230;
      v95 = v245;
      v96 = sub_242F05D10();
      sub_242EF6220(v96, v97, v98);
      v99 = v208;
      sub_242F05E00();
      v100 = (v244 + 8);
      (*(v207 + 8))(v94, v99);
      (*v100)(v37, v95);
      swift_unknownObjectRelease();
      *&v252[128] = *&v247[128];
      *&v252[144] = *&v247[144];
      *&v252[160] = *&v247[160];
      *&v252[80] = *&v247[80];
      *&v252[112] = *&v247[112];
      *&v252[96] = *&v247[96];
      *v252 = *v247;
      *&v252[16] = *&v247[16];
      *&v252[48] = *&v247[48];
      *&v252[64] = *&v247[64];
      *&v252[32] = *&v247[32];
      sub_242EF52B8(v252);
      goto LABEL_20;
    case 3:
      v69 = v239;
      v252[0] = 3;
      sub_242EF5E08(v49, v50, v51);
      v101 = v231;
      v102 = v245;
      v103 = sub_242F05D10();
      sub_242EF61CC(v103, v104, v105);
      v106 = v210;
      sub_242F05E00();
      v107 = (v244 + 8);
      (*(v209 + 8))(v101, v106);
      (*v107)(v37, v102);
      swift_unknownObjectRelease();
      memcpy(v252, v247, 0x158uLL);
      sub_242EF5364(v252);
      goto LABEL_20;
    case 4:
      v69 = v239;
      v252[0] = 4;
      sub_242EF5D60(v49, v50, v51);
      v70 = v232;
      v71 = v245;
      v72 = sub_242F05D10();
      sub_242EF6178(v72, v73, v74);
      v75 = v212;
      sub_242F05E00();
      v76 = (v244 + 8);
      (*(v211 + 8))(v70, v75);
      (*v76)(v37, v71);
      swift_unknownObjectRelease();
      memcpy(v247, v252, sizeof(v247));
      sub_242EF520C(v247);
      v77 = v247;
      goto LABEL_21;
    case 5:
      v69 = v239;
      v252[0] = 5;
      sub_242EF5CB8(v49, v50, v51);
      v123 = v245;
      v124 = sub_242F05D10();
      sub_242EF60A8(v124, v125, v126);
      v127 = v214;
      sub_242F05E00();
      v128 = (v244 + 8);
      (*(v213 + 8))(v43, v127);
      (*v128)(v37, v123);
      swift_unknownObjectRelease();
      *&v252[80] = *&v247[80];
      *&v252[96] = *&v247[96];
      *&v252[105] = *&v247[105];
      *v252 = *v247;
      *&v252[16] = *&v247[16];
      *&v252[32] = *&v247[32];
      *&v252[48] = *&v247[48];
      *&v252[64] = *&v247[64];
      sub_242EF60FC(v252);
LABEL_20:
      v77 = v252;
LABEL_21:
      memcpy(v255, v77, sizeof(v255));
      v179 = v246;
      v180 = v69;
      break;
    case 6:
      v252[0] = 6;
      sub_242EF5C64(v49, v50, v51);
      v132 = v44;
      v133 = v245;
      v134 = sub_242F05D10();
      v252[0] = 0;
      sub_242EE247C(v134, v135, v136);
      v137 = v216;
      v138 = sub_242F05E00();
      v139 = v244;
      v186 = v132;
      v187 = v37;
      v2.i32[0] = v248;
      v243.i32[0] = v249;
      v188 = v250;
      v189 = v251;
      v253 = 1;
      sub_242D48F24(v138, v190, v191);
      sub_242F05E00();
      v242 = vmovl_u8(v2);
      (*(v215 + 8))(v186, v137);
      (*(v139 + 8))(v187, v133);
      swift_unknownObjectRelease();
      memcpy(&v247[1], v254, 0x150uLL);
      *v252 = vuzp1_s8(*v242.i8, *v242.i8).u32[0];
      v252[4] = v243.i8[0];
      v252[5] = v188;
      v252[6] = v189;
      memcpy(&v252[7], v247, 0x151uLL);
      sub_242EF5190(v252);
      goto LABEL_23;
    case 7:
      v252[0] = 7;
      sub_242EF5BBC(v49, v50, v51);
      v108 = v233;
      v109 = v245;
      v110 = sub_242F05D10();
      v252[0] = 0;
      sub_242EF6054(v110, v111, v112);
      v113 = v217;
      v114 = sub_242F05E00();
      v115 = v244;
      v173 = v108;
      v174 = v37;
      v175 = v248;
      v176 = BYTE1(v248);
      v243.i32[0] = BYTE2(v248);
      v253 = 1;
      sub_242D48F24(v114, v177, v178);
      sub_242F05E00();
      (*(v218 + 8))(v173, v113);
      (*(v115 + 8))(v174, v109);
      swift_unknownObjectRelease();
      memcpy(&v247[5], v254, 0x150uLL);
      v252[0] = v175;
      v252[1] = v176;
      v252[2] = v243.i8[0];
      memcpy(&v252[3], v247, 0x155uLL);
      sub_242EF5114(v252);
      goto LABEL_23;
    case 8:
      v252[0] = 8;
      sub_242EF5B68(v49, v50, v51);
      v143 = v234;
      v144 = v245;
      v145 = sub_242F05D10();
      v252[0] = 0;
      sub_242EE2428(v145, v160, v161);
      v162 = v220;
      v163 = sub_242F05E00();
      v164 = v244;
      v194 = v143;
      v195 = v37;
      v2.i32[0] = v248;
      v243.i32[0] = v249;
      v196 = v250;
      v197 = v251;
      v253 = 1;
      sub_242D48F24(v163, v198, v199);
      sub_242F05E00();
      v242 = vmovl_u8(v2);
      (*(v219 + 8))(v194, v162);
      (*(v164 + 8))(v195, v144);
      swift_unknownObjectRelease();
      memcpy(&v247[1], v254, 0x150uLL);
      *v252 = vuzp1_s8(*v242.i8, *v242.i8).u32[0];
      v252[4] = v243.i8[0];
      v252[5] = v196;
      v252[6] = v197;
      memcpy(&v252[7], v247, 0x151uLL);
      sub_242EF5098(v252);
      goto LABEL_23;
    case 9:
      v60 = v239;
      v252[0] = 9;
      sub_242EF5B14(v49, v50, v51);
      v86 = v235;
      v87 = v245;
      v88 = sub_242F05D10();
      v252[0] = 0;
      sub_242C8AC7C(v88, v89, v90);
      v91 = v222;
      v92 = sub_242F05E00();
      v93 = v244;
      v170 = v248;
      v253 = 1;
      sub_242D48F24(v92, v171, v172);
      sub_242F05E00();
      (*(v221 + 8))(v86, v91);
      (*(v93 + 8))(v37, v87);
      swift_unknownObjectRelease();
      memcpy(&v247[7], v254, 0x150uLL);
      v252[0] = v170;
      memcpy(&v252[1], v247, 0x157uLL);
      sub_242EF501C(v252);
      goto LABEL_22;
    case 10:
      v60 = v239;
      v252[0] = 10;
      sub_242EF5AC0(v49, v50, v51);
      v140 = v45;
      v141 = v245;
      v142 = sub_242F05D10();
      v252[0] = 0;
      sub_242EE2524(v142, v155, v156);
      v157 = v224;
      v158 = sub_242F05E00();
      v159 = v244;
      v2.i32[0] = v248;
      v253 = 1;
      sub_242D48F24(v158, v192, v193);
      sub_242F05E00();
      v243 = vmovl_u8(v2);
      (*(v223 + 8))(v140, v157);
      (*(v159 + 8))(v37, v141);
      swift_unknownObjectRelease();
      memcpy(&v247[4], v254, 0x150uLL);
      *v252 = vuzp1_s8(*v243.i8, *v243.i8).u32[0];
      memcpy(&v252[4], v247, 0x154uLL);
      sub_242EF4FA0(v252);
      goto LABEL_22;
    case 11:
      v60 = v239;
      v252[0] = 11;
      sub_242EF5A6C(v49, v50, v51);
      v61 = v237;
      v62 = v245;
      v63 = sub_242F05D10();
      v252[0] = 0;
      sub_242EE24D0(v63, v64, v65);
      v66 = v226;
      v67 = sub_242F05E00();
      v68 = v244;
      v2.i32[0] = v248;
      v253 = 1;
      sub_242D48F24(v67, v165, v166);
      sub_242F05E00();
      v243 = vmovl_u8(v2);
      (*(v225 + 8))(v61, v66);
      (*(v68 + 8))(v37, v62);
      swift_unknownObjectRelease();
      memcpy(&v247[4], v254, 0x150uLL);
      *v252 = vuzp1_s8(*v243.i8, *v243.i8).u32[0];
      memcpy(&v252[4], v247, 0x154uLL);
      sub_242EF4F24(v252);
      goto LABEL_22;
    case 12:
      v78 = v239;
      v252[0] = 12;
      sub_242EF5A18(v49, v50, v51);
      v79 = v245;
      v80 = sub_242F05D10();
      v60 = v78;
      v252[0] = 0;
      sub_242C8AC7C(v80, v81, v82);
      v83 = v227;
      v84 = sub_242F05E00();
      v85 = v244;
      v167 = v248;
      v253 = 1;
      sub_242D48F24(v84, v168, v169);
      sub_242F05E00();
      (*(v238 + 8))(v46, v83);
      (*(v85 + 8))(v37, v79);
      swift_unknownObjectRelease();
      memcpy(&v247[7], v254, 0x150uLL);
      v252[0] = v167;
      memcpy(&v252[1], v247, 0x157uLL);
      sub_242EF4EA8(v252);
LABEL_22:
      memcpy(v255, v252, sizeof(v255));
      v179 = v246;
      v180 = v60;
      break;
    case 13:
      v252[0] = 13;
      sub_242EF5970(v49, v50, v51);
      v129 = v236;
      v130 = v245;
      v131 = sub_242F05D10();
      v252[0] = 0;
      sub_242EF6000(v131, v150, v151);
      v152 = v228;
      v153 = sub_242F05E00();
      v154 = v244;
      v181 = v129;
      v182 = v37;
      LOBYTE(v129) = v248;
      v183 = BYTE1(v248);
      v253 = 1;
      sub_242D48F24(v153, v184, v185);
      sub_242F05E00();
      (*(v229 + 8))(v181, v152);
      (*(v154 + 8))(v182, v130);
      swift_unknownObjectRelease();
      memcpy(&v247[6], v254, 0x150uLL);
      v252[0] = v129;
      v252[1] = v183;
      memcpy(&v252[2], v247, 0x156uLL);
      sub_242EF4E2C(v252);
LABEL_23:
      memcpy(v255, v252, sizeof(v255));
      v179 = v246;
      v180 = v239;
      break;
    default:
      goto LABEL_5;
  }

  memcpy(v180, v255, 0x228uLL);
  return __swift_destroy_boxed_opaque_existential_2Tm(v179);
}

unint64_t sub_242EF2808@<X0>(unint64_t *a1@<X8>)
{
  result = TextDataType.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TextElementConfiguration.dataType.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x228uLL);
  memcpy(a1, v1, 0x228uLL);
  return sub_242EF4DF4(__dst, v4);
}

void *TextElementConfiguration.dataType.setter(const void *a1)
{
  memcpy(v4, v1, 0x228uLL);
  sub_242D4939C(v4);
  return memcpy(v1, a1, 0x228uLL);
}

void sub_242EF2920(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242EF29A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF6274(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EF29E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EF6274(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t TextElementConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD890, &qword_242F50530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  memcpy(v16, v1, 0x228uLL);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v7 = sub_242EF4DF4(v16, v15);
  sub_242EF6274(v7, v8, v9);
  sub_242F064C0();
  v10 = memcpy(v15, v16, sizeof(v15));
  sub_242EF62C8(v10, v11, v12);
  sub_242F05F20();
  memcpy(v14, v15, sizeof(v14));
  sub_242D4B9EC(v14);
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s14CarPlayAssetUI12TextDataTypeO9hashValueSivg_0()
{
  sub_242F06390();
  TextDataType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t TextElementConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFD8A8, &qword_242F50538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EF6274(v8, v9, v10);
  v11 = sub_242F06480();
  if (!v2)
  {
    v14 = v17;
    sub_242EF631C(v11, v12, v13);
    sub_242F05E00();
    (*(v5 + 8))(v7, v4);
    memcpy(v14, v16, 0x228uLL);
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242EF2DC4(uint64_t a1)
{
  sub_242F06390();
  TextDataType.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t sub_242EF2E00(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, a2, sizeof(v8));
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v5, a2, sizeof(v5));
  sub_242EF4DF4(__dst, v10);
  sub_242EF4DF4(v8, v10);
  LOBYTE(a2) = static TextDataType.== infix(_:_:)(__srca, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_242D4B9EC(v9);
  memcpy(v10, __srca, sizeof(v10));
  sub_242D4B9EC(v10);
  return a2 & 1;
}

void sub_242EF2ED0()
{
  v0 = *MEMORY[0x277D74358];
  v1 = *MEMORY[0x277D74418];
  *(&xmmword_27ECFD3D0 + 1) = 0x322D6D6574737953;
  qword_27ECFD3E0 = 0xE900000000000034;
  LOBYTE(xmmword_27ECFD3B0) = 0;
  *(&xmmword_27ECFD3B0 + 1) = 24;
  unk_27ECFD3C0 = v0;
  qword_27ECFD3C8 = v1;
  LOWORD(xmmword_27ECFD3D0) = 0;
  v2 = v0;
  sub_242DC0268();
}

uint64_t static RasterFont.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF848 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECFD3C0;
  v7[0] = xmmword_27ECFD3B0;
  v7[1] = unk_27ECFD3C0;
  v2 = xmmword_27ECFD3D0;
  v7[2] = xmmword_27ECFD3D0;
  v3 = qword_27ECFD3E0;
  v8 = qword_27ECFD3E0;
  *a1 = xmmword_27ECFD3B0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

uint64_t sub_242EF2FFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF848 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECFD3C0;
  v7[0] = xmmword_27ECFD3B0;
  v7[1] = unk_27ECFD3C0;
  v2 = xmmword_27ECFD3D0;
  v7[2] = xmmword_27ECFD3D0;
  v3 = qword_27ECFD3E0;
  v8 = qword_27ECFD3E0;
  *a1 = xmmword_27ECFD3B0;
  *(a1 + 16) = v1;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  return sub_242C94884(v7, v6);
}

void *sub_242EF3090()
{
  if (qword_27ECEF5A8 != -1)
  {
    swift_once();
  }

  v2[0] = xmmword_27ECF6170;
  v2[1] = unk_27ECF6180;
  v2[2] = xmmword_27ECF6190;
  v3 = qword_27ECF61A0;
  *&v1[6] = xmmword_27ECF6170;
  *&v1[22] = unk_27ECF6180;
  *&v1[38] = xmmword_27ECF6190;
  *&v1[54] = qword_27ECF61A0;
  sub_242C94884(v2, __src);
  sub_242D3C4A8(0, 0, 0, 0, 0, 0);
  strcpy(__src, "F");
  *&__src[2] = *v1;
  *&__src[18] = *&v1[16];
  *&__src[34] = *&v1[32];
  *&__src[48] = *&v1[46];
  *&__src[64] = xmmword_242F50370;
  __src[80] = 0;
  *&__src[88] = 0;
  *&__src[96] = 0;
  __src[104] = 3;
  memset(&__src[112], 0, 49);
  *&__src[161] = 1;
  __src[163] = 2;
  *&__src[164] = 0;
  __src[168] = 1;
  *&__src[172] = 0;
  sub_242EF52B8(__src);
  return memcpy(&unk_27ECFD3E8, __src, 0x228uLL);
}

uint64_t static TextDataType.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF850 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_27ECFD3E8, sizeof(__dst));
  memcpy(a1, &unk_27ECFD3E8, 0x228uLL);
  return sub_242EF4DF4(__dst, &v3);
}

uint64_t sub_242EF3264@<X0>(void *a1@<X8>)
{
  if (qword_27ECEF850 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_27ECFD3E8, sizeof(__dst));
  memcpy(a1, &unk_27ECFD3E8, 0x228uLL);
  return sub_242EF4DF4(__dst, &v3);
}

BOOL _s14CarPlayAssetUI25GearPositionConfigurationV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 24);
  v103 = *(a1 + 8);
  v104 = v4;
  v105 = *(a1 + 40);
  v5 = *(a1 + 8);
  v106 = *(a1 + 7);
  v81 = *(a1 + 9);
  v82 = v5;
  v80 = a1[80];
  v74 = *(a1 + 12);
  v75 = *(a1 + 11);
  v73 = a1[104];
  v66 = *(a1 + 15);
  v67 = *(a1 + 14);
  v68 = *(a1 + 8);
  v69 = *(a1 + 18);
  v77 = *(a1 + 19);
  v78 = a1[160];
  v63 = a1[161];
  v61 = a1[162];
  v59 = a1[163];
  v6 = *(a1 + 41);
  v57 = a1[168];
  v7 = *(a1 + 43);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 24);
  v107 = *(a2 + 8);
  v108 = v10;
  v109 = *(a2 + 40);
  v11 = *(a2 + 8);
  v110 = *(a2 + 7);
  v12 = *(a2 + 9);
  v13 = a2[80];
  v71 = *(a2 + 12);
  v72 = *(a2 + 11);
  v70 = a2[104];
  v14 = *(a2 + 15);
  v79 = *(a2 + 14);
  v101[0].n128_u8[0] = v2;
  v99[0].n128_u8[0] = v8;
  v15 = *(a2 + 16);
  v64 = *(a2 + 17);
  v16 = *(a2 + 41);
  v17 = *(a2 + 43);
  v83 = v14;
  v84 = *(a2 + 18);
  v76 = *(a2 + 19);
  v65 = a2[160];
  v62 = a2[161];
  v60 = a2[162];
  v58 = a2[163];
  v56 = a2[168];
  v18 = InstrumentDataIdentifier.rawValue.getter();
  v20 = v19;
  if (v18 == InstrumentDataIdentifier.rawValue.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_242F06110();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v23 = 0x7261646E6F636573;
      v24 = 0xE900000000000079;
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_12:
      v25 = 0xE700000000000000;
      if (v23 != 0x7972616D697270)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v23 = 0x61636972656D756ELL;
    v24 = 0xED0000796C6E4F6CLL;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v24 = 0xE700000000000000;
    v23 = 0x7972616D697270;
    if (!v9)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  if (v9 == 1)
  {
    v25 = 0xE900000000000079;
    if (v23 != 0x7261646E6F636573)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = 0xED0000796C6E4F6CLL;
    if (v23 != 0x61636972656D756ELL)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  if (v24 == v25)
  {

    goto LABEL_20;
  }

LABEL_19:
  v26 = sub_242F06110();

  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v95 = v103;
  v96 = v104;
  v97 = v105;
  v98 = v106;
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v94 = v110;
  sub_242C94884(&v103, v89);
  sub_242C94884(&v107, v89);
  v27 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v95, &v91);
  v99[0] = v91;
  v99[1] = v92;
  v99[2] = v93;
  v100 = v94;
  sub_242C954DC(v99);
  v101[0] = v95;
  v101[1] = v96;
  v101[2] = v97;
  v102 = v98;
  sub_242C954DC(v101);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  v95.n128_u64[0] = v82;
  v95.n128_u64[1] = v81;
  v96.n128_u8[0] = v80;
  v91.n128_u64[0] = v11;
  v91.n128_u64[1] = v12;
  v92.n128_u8[0] = v13;
  v28 = Theme.ColorID.rawValue.getter();
  v30 = v29;
  if (v28 == Theme.ColorID.rawValue.getter() && v30 == v31)
  {

    v32 = v83;
    v33 = v84;
  }

  else
  {
    v34 = sub_242F06110();

    v32 = v83;
    v33 = v84;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  v95.n128_u64[0] = v75;
  v95.n128_u64[1] = v74;
  v96.n128_u8[0] = v73;
  v91.n128_u64[0] = v72;
  v91.n128_u64[1] = v71;
  v92.n128_u8[0] = v70;
  v35 = Theme.ColorID.rawValue.getter();
  v37 = v36;
  if (v35 == Theme.ColorID.rawValue.getter() && v37 == v38)
  {

    goto LABEL_29;
  }

  v39 = sub_242F06110();

  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  if (!v66)
  {
    v45 = v15;
    v41 = v67;
    v43 = *(&v68 + 1);
    v40 = v68;
    v42 = v69;
    v46 = v77;
    sub_242EF54D4(v67, 0, v68, *(&v68 + 1), v69, v77);
    if (!v32)
    {
      sub_242EF54D4(v79, 0, v45, v64, v33, v76);
      sub_242D3C4A8(v67, 0, v68, *(&v68 + 1), v69, v77);
      goto LABEL_38;
    }

    v47 = v32;
    v55 = v45;
    v48 = v33;
    v49 = v64;
    v50 = v76;
    sub_242EF54D4(v79, v47, v45, v64, v48, v76);
    goto LABEL_36;
  }

  v41 = v67;
  v40 = v68;
  v95.n128_u64[0] = v67;
  v95.n128_u64[1] = v66;
  v43 = *(&v68 + 1);
  v42 = v69;
  v96 = v68;
  v97.n128_u64[0] = v69;
  v97.n128_u64[1] = v77;
  LOBYTE(v98) = v78;
  v55 = v15;
  if (!v32)
  {
    v91 = v95;
    v92 = v96;
    v93 = v97;
    LOBYTE(v94) = v98;
    v51 = v15;
    v46 = v77;
    sub_242EF54D4(v67, v66, v68, *(&v68 + 1), v69, v77);
    v52 = v33;
    v49 = v64;
    v50 = v76;
    sub_242EF54D4(v79, 0, v51, v64, v52, v76);
    sub_242EF54D4(v67, v66, v68, *(&v68 + 1), v69, v77);
    sub_242D49348(&v91);
LABEL_36:
    sub_242D3C4A8(v41, v66, v40, v43, v42, v46);
    sub_242D3C4A8(v79, v83, v55, v49, v84, v50);
    return 0;
  }

  *&v85 = v79;
  *(&v85 + 1) = v32;
  *&v86 = v15;
  *(&v86 + 1) = v64;
  *&v87 = v33;
  *(&v87 + 1) = v76;
  v88 = v65;
  sub_242EF54D4(v67, v66, v68, *(&v68 + 1), v69, v77);
  sub_242EF54D4(v79, v32, v15, v64, v84, v76);
  sub_242EF54D4(v67, v66, v68, *(&v68 + 1), v69, v77);
  v44 = _s14CarPlayAssetUI23ImageGroupConfigurationV2eeoiySbAC_ACtFZ_0(&v95, &v85);
  v89[0] = v85;
  v89[1] = v86;
  v89[2] = v87;
  v90 = v88;
  sub_242D49348(v89);
  v91 = v95;
  v92 = v96;
  v93 = v97;
  LOBYTE(v94) = v98;
  sub_242D49348(&v91);
  sub_242D3C4A8(v67, v66, v68, *(&v68 + 1), v69, v77);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  if (v63 != v62 || v61 != v60 || v59 != v58)
  {
    return 0;
  }

  if (v57)
  {
    if (!v56)
    {
      return 0;
    }
  }

  else
  {
    v54 = v56;
    if (v6 != v16)
    {
      v54 = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  return v7 == v17;
}

BOOL _s14CarPlayAssetUI17TextConfigurationV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v61[0] = *a1;
  v61[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v61[2] = a1[2];
  v62 = *(a1 + 6);
  v5 = *(a1 + 8);
  v6 = *(a1 + 72);
  v7 = *(a1 + 73);
  v8 = *(a1 + 74);
  v9 = a2[1];
  v63[0] = *a2;
  v63[1] = v9;
  v11 = *a2;
  v10 = a2[1];
  v63[2] = a2[2];
  v12 = *(a1 + 19);
  v51 = *(a1 + 80);
  v52 = v8;
  v43 = *(a1 + 11);
  v49 = *(a1 + 12);
  v46 = *(a1 + 104);
  v47 = *(a1 + 120);
  v64 = *(a2 + 6);
  v13 = *(a2 + 8);
  v14 = *(a2 + 72);
  v15 = *(a2 + 73);
  v16 = *(a2 + 74);
  v57 = v4;
  v58 = v3;
  v59 = a1[2];
  v17 = *(a2 + 19);
  v50 = *(a2 + 80);
  v42 = *(a2 + 11);
  v48 = *(a2 + 12);
  v45 = *(a2 + 104);
  v44 = *(a2 + 120);
  v18 = *(a1 + 7);
  v60 = *(a1 + 6);
  v53 = v11;
  v54 = v10;
  v55 = a2[2];
  v19 = *(a2 + 7);
  v56 = *(a2 + 6);
  sub_242C94884(v61, v67);
  sub_242C94884(v63, v67);
  v20 = _s14CarPlayAssetUI10RasterFontV2eeoiySbAC_ACtFZ_0(&v57, &v53);
  v65[0] = v53;
  v65[1] = v54;
  v65[2] = v55;
  v66 = v56;
  sub_242C954DC(v65);
  v67[0] = v57;
  v67[1] = v58;
  v67[2] = v59;
  v68 = v60;
  sub_242C954DC(v67);
  if ((v20 & 1) == 0 || (sub_242C76B70(v18, v19) & 1) == 0 || (sub_242C75A30(v5, v13) & 1) == 0)
  {
    return 0;
  }

  if (v6 == 86)
  {
    if (v14 != 86)
    {
      return 0;
    }

LABEL_6:
    if (v7 == 86)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  if (v14 == 86)
  {
    return 0;
  }

  LOBYTE(v57) = v6;
  LOBYTE(v53) = v14;
  v22 = InstrumentDataIdentifier.rawValue.getter();
  v24 = v23;
  if (v22 != InstrumentDataIdentifier.rawValue.getter() || v24 != v25)
  {
    v30 = sub_242F06110();

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v7 == 86)
  {
LABEL_7:
    result = 0;
    if (v15 != 86)
    {
      return result;
    }

LABEL_8:
    if (v52 != v16)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_16:
  if (v15 == 86)
  {
    return 0;
  }

  LOBYTE(v57) = v7;
  LOBYTE(v53) = v15;
  v26 = InstrumentDataIdentifier.rawValue.getter();
  v28 = v27;
  if (v26 != InstrumentDataIdentifier.rawValue.getter() || v28 != v29)
  {
    v32 = sub_242F06110();

    result = 0;
    if ((v32 & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v52 != v16)
  {
    return 0;
  }

LABEL_9:
  if (v51)
  {
    if (!v50)
    {
      return 0;
    }
  }

  else
  {
    v31 = v50;
    if (v12 != v17)
    {
      v31 = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  if (v49)
  {
    if (!v48 || (v43 != v42 || v49 != v48) && (sub_242F06110() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  if (v47 == 255)
  {
    v33 = v44;
    if (v44 == 255)
    {
      sub_242C55470(v46, *(&v46 + 1), 255);
      sub_242C55470(v45, *(&v45 + 1), 255);
      v39 = *(&v46 + 1);
      v38 = v46;
      v40 = -1;
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v33 = v44;
  if (v44 == 255)
  {
LABEL_41:
    sub_242C55470(v46, *(&v46 + 1), v47);
    sub_242C55470(v45, *(&v45 + 1), v33);
    sub_242C55484(v46, *(&v46 + 1), v47);
    sub_242C55484(v45, *(&v45 + 1), v33);
    return 0;
  }

  v57 = v46;
  LOBYTE(v58) = v47;
  v53 = v45;
  LOBYTE(v54) = v44;
  sub_242C55470(v46, *(&v46 + 1), v47);
  sub_242C55470(v45, *(&v45 + 1), v44);
  v34 = Theme.ColorID.rawValue.getter();
  v36 = v35;
  if (v34 == Theme.ColorID.rawValue.getter() && v36 == v37)
  {
    sub_242C55484(v45, *(&v45 + 1), v44);

    v39 = *(&v46 + 1);
    v38 = v46;
    v40 = v47;
LABEL_47:
    sub_242C55484(v38, v39, v40);
    return 1;
  }

  v41 = sub_242F06110();
  sub_242C55484(v45, *(&v45 + 1), v44);

  sub_242C55484(v46, *(&v46 + 1), v47);
  return (v41 & 1) != 0;
}

BOOL _s14CarPlayAssetUI27PowerTextGaugeConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 6);
  memcpy(__dst, (a1 + 8), sizeof(__dst));
  v6 = *(a1 + 352);
  v7 = *(a2 + 4);
  v8 = *(a2 + 6);
  memcpy(__src, (a2 + 8), 0x150uLL);
  v9 = *(a2 + 352);
  v16[0] = *a1;
  LOWORD(v16[1]) = v4;
  BYTE2(v16[1]) = v5;
  v15[0] = *a2;
  LOWORD(v15[1]) = v7;
  BYTE2(v15[1]) = v8;
  if (_s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v16) & 1) != 0 && (memcpy(v14, __dst, sizeof(v14)), memcpy(v13, __src, sizeof(v13)), sub_242D48DCC(__dst, v12), sub_242D48DCC(__src, v12), v10 = static MeasurementLabelConfiguration.== infix(_:_:)(v14, v13), memcpy(v15, v13, sizeof(v15)), sub_242D48E28(v15), memcpy(v16, v14, sizeof(v16)), sub_242D48E28(v16), (v10) && (sub_242F04710())
  {
    return v6 == v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s14CarPlayAssetUI33SpeedometerTextGaugeConfigurationV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  memcpy(__dst, a1 + 8, sizeof(__dst));
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  memcpy(__src, a2 + 8, sizeof(__src));
  v36[0] = v3;
  v35[0] = v7;
  v11 = InstrumentDataIdentifier.rawValue.getter();
  v13 = v12;
  if (v11 == InstrumentDataIdentifier.rawValue.getter() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_242F06110();

    if ((v15 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v36[0] = v4;
  v35[0] = v8;
  v16 = InstrumentDataIdentifier.rawValue.getter();
  v18 = v17;
  if (v16 == InstrumentDataIdentifier.rawValue.getter() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_242F06110();

    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v36[0] = v5;
  v35[0] = v9;
  v21 = InstrumentDataIdentifier.rawValue.getter();
  v23 = v22;
  if (v21 == InstrumentDataIdentifier.rawValue.getter() && v23 == v24)
  {
  }

  else
  {
    v25 = sub_242F06110();

    if ((v25 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v36[0] = v6;
  v35[0] = v10;
  v26 = InstrumentDataIdentifier.rawValue.getter();
  v28 = v27;
  if (v26 != InstrumentDataIdentifier.rawValue.getter() || v28 != v29)
  {
    v30 = sub_242F06110();

    if (v30)
    {
      goto LABEL_17;
    }

LABEL_18:
    v31 = 0;
    return v31 & 1;
  }

LABEL_17:
  memcpy(v34, __dst, sizeof(v34));
  memcpy(v33, __src, sizeof(v33));
  sub_242D48DCC(__dst, v36);
  sub_242D48DCC(__src, v36);
  v31 = static MeasurementLabelConfiguration.== infix(_:_:)(v34, v33);
  memcpy(v35, v33, sizeof(v35));
  sub_242D48E28(v35);
  memcpy(v36, v34, sizeof(v36));
  sub_242D48E28(v36);
  return v31 & 1;
}

uint64_t _s14CarPlayAssetUI12TextDataTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  memcpy(v45, v4, sizeof(v45));
  memcpy(v46, v2, sizeof(v46));
  memcpy(v47, v4, sizeof(v47));
  switch(sub_242D3DE64(v47))
  {
    case 1u:
      v5 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 1)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    case 2u:
      v19 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 2)
      {
        goto LABEL_38;
      }

      v20 = sub_242C58D34(v42);
      *&v40[112] = v19[7];
      *&v40[128] = v19[8];
      *&v40[144] = v19[9];
      *&v40[160] = v19[10];
      *&v40[48] = v19[3];
      *&v40[64] = v19[4];
      *&v40[80] = v19[5];
      *&v40[96] = v19[6];
      *v40 = *v19;
      *&v40[16] = v19[1];
      *&v40[32] = v19[2];
      v39[7] = v20[7];
      v39[8] = v20[8];
      v39[9] = v20[9];
      v39[10] = v20[10];
      v39[3] = v20[3];
      v39[4] = v20[4];
      v39[5] = v20[5];
      v39[6] = v20[6];
      v39[0] = *v20;
      v39[1] = v20[1];
      v39[2] = v20[2];
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      v10 = _s14CarPlayAssetUI25GearPositionConfigurationV2eeoiySbAC_ACtFZ_0(v40, v39);
      goto LABEL_43;
    case 3u:
      v5 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 3)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    case 4u:
      v8 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 4)
      {
        goto LABEL_38;
      }

      v9 = sub_242C58D34(v42);
      memcpy(v41, v8, sizeof(v41));
      memcpy(v40, v9, sizeof(v40));
      sub_242EF4DF4(__src, v39);
      sub_242EF4DF4(__dst, v39);
      sub_242EF4DF4(__dst, v39);
      sub_242EF4DF4(__src, v39);
      v10 = static Instrument.GaugeStyle.ChargeFuelLevelGaugeConfiguration.== infix(_:_:)();
      goto LABEL_43;
    case 5u:
      v25 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 5)
      {
        goto LABEL_38;
      }

      v26 = sub_242C58D34(v42);
      *&v40[64] = v25[4];
      *&v40[80] = v25[5];
      *&v40[96] = v25[6];
      *&v40[105] = *(v25 + 105);
      *v40 = *v25;
      *&v40[16] = v25[1];
      *&v40[32] = v25[2];
      *&v40[48] = v25[3];
      v39[4] = v26[4];
      v39[5] = v26[5];
      v39[6] = v26[6];
      *(&v39[6] + 9) = *(v26 + 105);
      v39[0] = *v26;
      v39[1] = v26[1];
      v39[2] = v26[2];
      v39[3] = v26[3];
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      v10 = _s14CarPlayAssetUI17TextConfigurationV2eeoiySbAC_ACtFZ_0(v40, v39);
      goto LABEL_43;
    case 6u:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 6)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      v28 = *(v6 + 4);
      v29 = *(v6 + 6);
      v30 = *(v7 + 4);
      v31 = *(v7 + 6);
      *v40 = *v6;
      *&v40[4] = v28;
      v40[6] = v29;
      LODWORD(v39[0]) = *v7;
      WORD2(v39[0]) = v30;
      BYTE6(v39[0]) = v31;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if ((_s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    case 7u:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 7)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      v21 = *(v6 + 2);
      v22 = *v7;
      v23 = *(v7 + 2);
      *v40 = *v6;
      v40[2] = v21;
      LOWORD(v39[0]) = v22;
      BYTE2(v39[0]) = v23;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if ((_s14CarPlayAssetUI33OutsideTemperatureDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    case 8u:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 8)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      v32 = *(v6 + 4);
      v33 = *(v6 + 6);
      v34 = *(v7 + 4);
      v35 = *(v7 + 6);
      *v40 = *v6;
      *&v40[4] = v32;
      v40[6] = v33;
      LODWORD(v39[0]) = *v7;
      WORD2(v39[0]) = v34;
      BYTE6(v39[0]) = v35;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if (_s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40))
      {
        goto LABEL_37;
      }

      goto LABEL_44;
    case 9u:
      v11 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) == 9)
      {
        goto LABEL_12;
      }

      goto LABEL_38;
    case 0xAu:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 10)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      *v40 = *v6;
      LODWORD(v39[0]) = *v7;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if ((_s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    case 0xBu:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 11)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      *v40 = *v6;
      LODWORD(v39[0]) = *v7;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if ((_s14CarPlayAssetUI25ChargeFuelDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40) & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    case 0xCu:
      v11 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 12)
      {
        goto LABEL_38;
      }

LABEL_12:
      v12 = sub_242C58D34(v42);
      v13 = *v12;
      v40[0] = *v11;
      LOBYTE(v39[0]) = v13;
      v14 = InstrumentDataIdentifier.rawValue.getter();
      v16 = v15;
      if (v14 == InstrumentDataIdentifier.rawValue.getter() && v16 == v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = sub_242F06110();
      }

      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);

      if ((v18 & 1) == 0)
      {
        goto LABEL_44;
      }

      memcpy(v41, v11 + 8, 0x150uLL);
      v36 = v12 + 8;
      goto LABEL_42;
    case 0xDu:
      v6 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42) != 13)
      {
        goto LABEL_38;
      }

      v7 = sub_242C58D34(v42);
      v27 = *v7;
      *v40 = *v6;
      LOWORD(v39[0]) = v27;
      sub_242EF4DF4(__src, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__dst, v41);
      sub_242EF4DF4(__src, v41);
      if ((_s14CarPlayAssetUI23OdometerDataIdentifiersV2eeoiySbAC_ACtFZ_0(v40) & 1) == 0)
      {
LABEL_44:
        sub_242D4B9EC(__src);
        sub_242D4B9EC(__dst);
        goto LABEL_45;
      }

LABEL_37:
      memcpy(v41, (v6 + 8), 0x150uLL);
      v36 = (v7 + 8);
LABEL_42:
      memcpy(v40, v36, 0x150uLL);
      v10 = static MeasurementLabelConfiguration.== infix(_:_:)(v41, v40);
      goto LABEL_43;
    default:
      v5 = sub_242C58D34(v47);
      memcpy(v42, __src, sizeof(v42));
      if (sub_242D3DE64(v42))
      {
LABEL_38:
        sub_242EF4DF4(__dst, v42);
        sub_242EF4DF4(__src, v42);
LABEL_45:
        sub_242C6D138(v45, &qword_27ECFDAF0, &qword_242F569B8);
        v37 = 0;
      }

      else
      {
LABEL_23:
        v24 = sub_242C58D34(v42);
        memcpy(v40, v5, 0x158uLL);
        memcpy(v39, v24, 0x158uLL);
        sub_242EF4DF4(__src, v41);
        sub_242EF4DF4(__dst, v41);
        sub_242EF4DF4(__dst, v41);
        sub_242EF4DF4(__src, v41);
        v10 = _s14CarPlayAssetUI33SpeedometerTextGaugeConfigurationV2eeoiySbAC_ACtFZ_0(v40, v39);
LABEL_43:
        v37 = v10;
        sub_242C6D138(v45, &qword_27ECFDAF0, &qword_242F569B8);
        sub_242D4B9EC(__src);
        sub_242D4B9EC(__dst);
      }

      return v37 & 1;
  }
}

void *sub_242EF4E2C(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0xD000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF4EA8(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0xC000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF4F24(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0xB000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF4FA0(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0xA000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF501C(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x9000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF5098(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x8000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF5114(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x7000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF5190(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x6000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF520C(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x4000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF52B8(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x2000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF5364(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x3000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF53E0(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x1000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

void *sub_242EF545C(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

double sub_242EF54D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_242EF5524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD630;
  if (!qword_27ECFD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD630);
  }

  return result;
}

unint64_t sub_242EF5578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD638;
  if (!qword_27ECFD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD638);
  }

  return result;
}

unint64_t sub_242EF55CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD640;
  if (!qword_27ECFD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD640);
  }

  return result;
}

unint64_t sub_242EF5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD650;
  if (!qword_27ECFD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD650);
  }

  return result;
}

unint64_t sub_242EF56AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD670;
  if (!qword_27ECFD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD670);
  }

  return result;
}

unint64_t sub_242EF5738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD688;
  if (!qword_27ECFD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD688);
  }

  return result;
}

unint64_t sub_242EF57F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD6A0;
  if (!qword_27ECFD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD6A0);
  }

  return result;
}

uint64_t sub_242EF5848(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFD6A8, &unk_242F50420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242EF591C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD740;
  if (!qword_27ECFD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD740);
  }

  return result;
}

unint64_t sub_242EF5970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD748;
  if (!qword_27ECFD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD748);
  }

  return result;
}

unint64_t sub_242EF59C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD750;
  if (!qword_27ECFD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD750);
  }

  return result;
}

unint64_t sub_242EF5A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD758;
  if (!qword_27ECFD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD758);
  }

  return result;
}

unint64_t sub_242EF5A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD760;
  if (!qword_27ECFD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD760);
  }

  return result;
}

unint64_t sub_242EF5AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD768;
  if (!qword_27ECFD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD768);
  }

  return result;
}

unint64_t sub_242EF5B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD770;
  if (!qword_27ECFD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD770);
  }

  return result;
}

unint64_t sub_242EF5B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD778;
  if (!qword_27ECFD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD778);
  }

  return result;
}

unint64_t sub_242EF5BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD780;
  if (!qword_27ECFD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD780);
  }

  return result;
}

unint64_t sub_242EF5C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD788;
  if (!qword_27ECFD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD788);
  }

  return result;
}

unint64_t sub_242EF5C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD790;
  if (!qword_27ECFD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD790);
  }

  return result;
}

unint64_t sub_242EF5CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD798;
  if (!qword_27ECFD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD798);
  }

  return result;
}

unint64_t sub_242EF5D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7A0;
  if (!qword_27ECFD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7A0);
  }

  return result;
}

unint64_t sub_242EF5D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7A8;
  if (!qword_27ECFD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7A8);
  }

  return result;
}

unint64_t sub_242EF5DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7B0;
  if (!qword_27ECFD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7B0);
  }

  return result;
}

unint64_t sub_242EF5E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7B8;
  if (!qword_27ECFD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7B8);
  }

  return result;
}

unint64_t sub_242EF5E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7C0;
  if (!qword_27ECFD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7C0);
  }

  return result;
}

unint64_t sub_242EF5EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7C8;
  if (!qword_27ECFD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7C8);
  }

  return result;
}

unint64_t sub_242EF5F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7D0;
  if (!qword_27ECFD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7D0);
  }

  return result;
}

unint64_t sub_242EF5F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7D8;
  if (!qword_27ECFD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7D8);
  }

  return result;
}

unint64_t sub_242EF5FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD7E0;
  if (!qword_27ECFD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD7E0);
  }

  return result;
}

unint64_t sub_242EF6000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD860;
  if (!qword_27ECFD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD860);
  }

  return result;
}

unint64_t sub_242EF6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD868;
  if (!qword_27ECFD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD868);
  }

  return result;
}

unint64_t sub_242EF60A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD870;
  if (!qword_27ECFD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD870);
  }

  return result;
}

void *sub_242EF60FC(void *result)
{
  v1 = result[46] & 7;
  v2 = result[49] & 7;
  v3 = result[52] & 7;
  v4 = result[55] & 7;
  v5 = result[58] & 7;
  v6 = result[61] & 7;
  v7 = result[64] & 7;
  v8 = result[67] & 7 | 0x5000000000000000;
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v1;
  result[49] = v2;
  result[52] = v3;
  result[55] = v4;
  result[58] = v5;
  result[61] = v6;
  result[64] = v7;
  result[67] = v8;
  return result;
}

unint64_t sub_242EF6178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD878;
  if (!qword_27ECFD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD878);
  }

  return result;
}

unint64_t sub_242EF61CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD880;
  if (!qword_27ECFD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD880);
  }

  return result;
}

unint64_t sub_242EF6220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD888;
  if (!qword_27ECFD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD888);
  }

  return result;
}

unint64_t sub_242EF6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD898;
  if (!qword_27ECFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD898);
  }

  return result;
}

unint64_t sub_242EF62C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8A0;
  if (!qword_27ECFD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8A0);
  }

  return result;
}

unint64_t sub_242EF631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8B0;
  if (!qword_27ECFD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8B0);
  }

  return result;
}

unint64_t sub_242EF6374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8B8;
  if (!qword_27ECFD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8B8);
  }

  return result;
}

unint64_t sub_242EF63C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8C0;
  if (!qword_27ECFD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8C0);
  }

  return result;
}

unint64_t sub_242EF6420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8C8;
  if (!qword_27ECFD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8C8);
  }

  return result;
}

unint64_t sub_242EF647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8D0;
  if (!qword_27ECFD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8D0);
  }

  return result;
}

unint64_t sub_242EF64D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8D8;
  if (!qword_27ECFD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8D8);
  }

  return result;
}

unint64_t sub_242EF652C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8E0;
  if (!qword_27ECFD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8E0);
  }

  return result;
}

unint64_t sub_242EF6584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8E8;
  if (!qword_27ECFD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8E8);
  }

  return result;
}

unint64_t sub_242EF65D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8F0;
  if (!qword_27ECFD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8F0);
  }

  return result;
}

unint64_t sub_242EF6630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD8F8;
  if (!qword_27ECFD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD8F8);
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_242EF66CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242EF6714(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242EF67C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242EF6810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242EF68BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_242EF6904(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_242EF6974(void *result, uint64_t a2)
{
  v2 = result[46] & 7;
  v3 = result[49] & 7;
  v4 = result[52] & 7;
  v5 = result[55] & 7;
  v6 = result[58] & 7;
  v7 = result[61] & 7;
  v8 = result[64] & 7;
  v9 = result[67] & 7 | (a2 << 60);
  *result &= 0x7F7F7F7F7F7F7FuLL;
  result[46] = v2;
  result[49] = v3;
  result[52] = v4;
  result[55] = v5;
  result[58] = v6;
  result[61] = v7;
  result[64] = v8;
  result[67] = v9;
  return result;
}

uint64_t sub_242EF6A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 552))
  {
    return *a1 + 0x80000000;
  }

  v2 = vandq_s8(vshlq_u32(vdupq_n_s32(*a1), xmmword_242F0D220), xmmword_242F0D230);
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v3 = v2.i32[0] | (*a1 >> 35) & 0x10 | v2.i32[1] | (*a1 >> 42) & 0x20 | (*a1 >> 49) & 0x7FC0 | (*(a1 + 368) >> 3 << 15);
  if (v3 > 0x80000000)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_242EF6AAC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 552) = 1;
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
      v4 = -a2;
      *a1 = (v4 << 14) & 0x8000 | ((v4 & 1u) << 7) | (((v4 >> 2) & 1) << 23) & 0x7F7F7F7FFFFFFFLL | (((v4 >> 3) & 1) << 31) & 0x7F7F7FFFFFFFFFLL | (((v4 >> 4) & 1) << 39) & 0x7F7FFFFFFFFFFFLL | (((v4 >> 5) & 1) << 47) & 0x7FFFFFFFFFFFFFLL | ((v4 >> 6) << 55);
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0u;
      *(a1 + 216) = 0u;
      *(a1 + 232) = 0u;
      *(a1 + 248) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 264) = 0u;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0;
      *(a1 + 368) = (v4 >> 12) & 0xFFFF8;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      *(a1 + 440) = 0u;
      *(a1 + 456) = 0u;
      *(a1 + 472) = 0u;
      *(a1 + 488) = 0u;
      *(a1 + 504) = 0u;
      *(a1 + 520) = 0u;
      *(a1 + 536) = 0u;
      return result;
    }

    *(a1 + 552) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242EF6D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD900;
  if (!qword_27ECFD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD900);
  }

  return result;
}

unint64_t sub_242EF6DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD908;
  if (!qword_27ECFD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD908);
  }

  return result;
}

unint64_t sub_242EF6E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD910;
  if (!qword_27ECFD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD910);
  }

  return result;
}

unint64_t sub_242EF6E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD918;
  if (!qword_27ECFD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD918);
  }

  return result;
}

unint64_t sub_242EF6EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD920;
  if (!qword_27ECFD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD920);
  }

  return result;
}

unint64_t sub_242EF6F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD928;
  if (!qword_27ECFD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD928);
  }

  return result;
}

unint64_t sub_242EF6F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD930;
  if (!qword_27ECFD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD930);
  }

  return result;
}

unint64_t sub_242EF6FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD938;
  if (!qword_27ECFD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD938);
  }

  return result;
}

unint64_t sub_242EF7040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD940;
  if (!qword_27ECFD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD940);
  }

  return result;
}

unint64_t sub_242EF7098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD948;
  if (!qword_27ECFD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD948);
  }

  return result;
}

unint64_t sub_242EF70F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD950;
  if (!qword_27ECFD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD950);
  }

  return result;
}

unint64_t sub_242EF7148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD958;
  if (!qword_27ECFD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD958);
  }

  return result;
}

unint64_t sub_242EF71A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD960;
  if (!qword_27ECFD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD960);
  }

  return result;
}

unint64_t sub_242EF71F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD968;
  if (!qword_27ECFD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD968);
  }

  return result;
}

unint64_t sub_242EF7250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD970;
  if (!qword_27ECFD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD970);
  }

  return result;
}

unint64_t sub_242EF72A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD978;
  if (!qword_27ECFD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD978);
  }

  return result;
}

unint64_t sub_242EF7300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD980;
  if (!qword_27ECFD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD980);
  }

  return result;
}

unint64_t sub_242EF7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD988;
  if (!qword_27ECFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD988);
  }

  return result;
}

unint64_t sub_242EF73B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD990;
  if (!qword_27ECFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD990);
  }

  return result;
}

unint64_t sub_242EF7408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD998;
  if (!qword_27ECFD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD998);
  }

  return result;
}

unint64_t sub_242EF7460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9A0;
  if (!qword_27ECFD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9A0);
  }

  return result;
}

unint64_t sub_242EF74B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9A8;
  if (!qword_27ECFD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9A8);
  }

  return result;
}

unint64_t sub_242EF7510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9B0;
  if (!qword_27ECFD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9B0);
  }

  return result;
}

unint64_t sub_242EF7568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9B8;
  if (!qword_27ECFD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9B8);
  }

  return result;
}

unint64_t sub_242EF75C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9C0;
  if (!qword_27ECFD9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9C0);
  }

  return result;
}

unint64_t sub_242EF7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9C8;
  if (!qword_27ECFD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9C8);
  }

  return result;
}

unint64_t sub_242EF7670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9D0;
  if (!qword_27ECFD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9D0);
  }

  return result;
}

unint64_t sub_242EF76C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9D8;
  if (!qword_27ECFD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9D8);
  }

  return result;
}

unint64_t sub_242EF7720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9E0;
  if (!qword_27ECFD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9E0);
  }

  return result;
}

unint64_t sub_242EF7778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9E8;
  if (!qword_27ECFD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9E8);
  }

  return result;
}

unint64_t sub_242EF77D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9F0;
  if (!qword_27ECFD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9F0);
  }

  return result;
}

unint64_t sub_242EF7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFD9F8;
  if (!qword_27ECFD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFD9F8);
  }

  return result;
}

unint64_t sub_242EF7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA00;
  if (!qword_27ECFDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA00);
  }

  return result;
}

unint64_t sub_242EF78D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA08;
  if (!qword_27ECFDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA08);
  }

  return result;
}

unint64_t sub_242EF7930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA10;
  if (!qword_27ECFDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA10);
  }

  return result;
}

unint64_t sub_242EF7988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA18;
  if (!qword_27ECFDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA18);
  }

  return result;
}

unint64_t sub_242EF79E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA20;
  if (!qword_27ECFDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA20);
  }

  return result;
}

unint64_t sub_242EF7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA28;
  if (!qword_27ECFDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA28);
  }

  return result;
}

unint64_t sub_242EF7A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA30;
  if (!qword_27ECFDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA30);
  }

  return result;
}

unint64_t sub_242EF7AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA38;
  if (!qword_27ECFDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA38);
  }

  return result;
}

unint64_t sub_242EF7B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA40;
  if (!qword_27ECFDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA40);
  }

  return result;
}

unint64_t sub_242EF7B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA48;
  if (!qword_27ECFDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA48);
  }

  return result;
}

unint64_t sub_242EF7BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA50;
  if (!qword_27ECFDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA50);
  }

  return result;
}

unint64_t sub_242EF7C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA58;
  if (!qword_27ECFDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA58);
  }

  return result;
}

unint64_t sub_242EF7CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA60;
  if (!qword_27ECFDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA60);
  }

  return result;
}

unint64_t sub_242EF7CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA68;
  if (!qword_27ECFDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA68);
  }

  return result;
}

unint64_t sub_242EF7D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA70;
  if (!qword_27ECFDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA70);
  }

  return result;
}

unint64_t sub_242EF7DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA78;
  if (!qword_27ECFDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA78);
  }

  return result;
}

unint64_t sub_242EF7E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA80;
  if (!qword_27ECFDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA80);
  }

  return result;
}

unint64_t sub_242EF7E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA88;
  if (!qword_27ECFDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA88);
  }

  return result;
}

unint64_t sub_242EF7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA90;
  if (!qword_27ECFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA90);
  }

  return result;
}

unint64_t sub_242EF7F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDA98;
  if (!qword_27ECFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDA98);
  }

  return result;
}

unint64_t sub_242EF7F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAA0;
  if (!qword_27ECFDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAA0);
  }

  return result;
}

unint64_t sub_242EF7FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAA8;
  if (!qword_27ECFDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAA8);
  }

  return result;
}

unint64_t sub_242EF8010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAB0;
  if (!qword_27ECFDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAB0);
  }

  return result;
}

unint64_t sub_242EF8068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAB8;
  if (!qword_27ECFDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAB8);
  }

  return result;
}

unint64_t sub_242EF80C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAC0;
  if (!qword_27ECFDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAC0);
  }

  return result;
}

unint64_t sub_242EF8118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAC8;
  if (!qword_27ECFDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAC8);
  }

  return result;
}

unint64_t sub_242EF8170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAD0;
  if (!qword_27ECFDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAD0);
  }

  return result;
}

unint64_t sub_242EF81C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAD8;
  if (!qword_27ECFDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAD8);
  }

  return result;
}

uint64_t sub_242EF821C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265566567756167 && a2 == 0xEC0000006E6F6973 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEB00000000444972 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5AC30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5DD30 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5064657272756C62 && a2 == 0xEE0072657474616CLL || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5DD50 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEF676E6963617053 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000242F5DD70 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_242EF85C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5D1A0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000242F5D1C0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A760 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242EF8780(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5A760 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5DD90 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656469766964 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_242EF88F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953394534 && a2 == 0xE400000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75666574617473 && a2 == 0xEC00000074786554 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000242F5B280 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEF676E6963617053 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5DDB0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465746361646572 && a2 == 0xEF4449726F6C6F43)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_242EF8C0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696E556465657073 && a2 == 0xE900000000000074 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69736F5072616567 && a2 == 0xEC0000006E6F6974 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000242F5DD10 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000242F5DCF0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F58910 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D694C6465657073 && a2 == 0xEC00000072657469 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xEF64656570536C61 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F58730 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696666456C657566 && a2 == 0xEE0079636E656963 || (sub_242F06110() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x654C656772616863 && a2 == 0xEB000000006C6576 || (sub_242F06110() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x726574656D6F646FLL && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_242EF9094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAE0;
  if (!qword_27ECFDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAE0);
  }

  return result;
}

unint64_t sub_242EF90E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDAE8;
  if (!qword_27ECFDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDAE8);
  }

  return result;
}

void CAPackageAsset.restore(from:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, v5);
  v14 = 1;
  if ((*(v6 + 24))(&v14, v5, v6))
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_2Tm(a1, v7);
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    v13 = 0;
    v11 = (*(v8 + 8))(v9, v10, &v13, v7, v8);
    if (!v2)
    {
      v12 = v11;

      *v3 = v12;
    }
  }
}

void CAPackageAsset.init(identifier:file:packageType:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a1;
  v12 = [a1 preferredFilename];
  if (v12)
  {
  }

  else
  {

    v8 = 0;
    a2 = 0;
    a3 = 0;
    a4 = 0;
    a5 = 0;
  }

  *a6 = v8;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
}

id CAPackageAsset.package.getter()
{
  v12[1] = *MEMORY[0x277D85DE8];
  result = *v0;
  if (*v0)
  {
    result = [result regularFileContents];
    if (result)
    {
      v2 = result;
      v3 = sub_242F036B0();
      v5 = v4;

      v6 = sub_242F036A0();
      v7 = sub_242F04F00();

      v12[0] = 0;
      v8 = [objc_opt_self() packageWithData:v6 type:v7 options:0 error:v12];

      v9 = v12[0];
      if (v8)
      {
        sub_242C6CCC0(v3, v5);
        return v8;
      }

      else
      {
        v10 = v9;
        v11 = sub_242F035D0();

        swift_willThrow();
        sub_242C6CCC0(v3, v5);

        return 0;
      }
    }
  }

  return result;
}

id CAPackageAsset.file.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t CAPackageAsset.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void CAPackageAsset.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t CAPackageAsset.packageType.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void CAPackageAsset.packageType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t CAPackageAsset.preferredFilename.getter()
{
  if (*v0 && (v1 = [*v0 preferredFilename]) != 0)
  {
    v2 = v1;
    v3 = sub_242F04F30();

    return v3;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

NSFileWrapper_optional __swiftcall CAPackageAsset.generateAsset(destination:)(CarPlayAssetUI::ArcPackageExporter::Destination destination)
{
  v2 = *v1;
  v3 = *v1;
  v5 = v2;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_242EF96AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x546567616B636170;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEB00000000657079;
  }

  if (*a2)
  {
    v5 = 0x546567616B636170;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657079;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242EF9760()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242EF97F0(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242EF986C(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242EF98F8(char *a2@<X8>)
{
  v3 = sub_242F05CD0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_242EF9958(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x546567616B636170;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB00000000657079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_242EF99A4()
{
  if (*v0)
  {
    return 0x546567616B636170;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_242EF99EC(char *a3@<X8>)
{
  v4 = sub_242F05CD0();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_242EF9A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EFA370(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242EF9A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242EFA370(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CAPackageAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDAF8, &qword_242F569D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 24);
  v13[1] = *(v1 + 32);
  v13[2] = v7;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EFA370(v8, v9, v10);
  sub_242F064C0();
  v15 = 0;
  v11 = v13[3];
  sub_242F05EC0();
  if (!v11)
  {
    v14 = 1;
    sub_242F05EC0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CAPackageAsset.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_242F063B0();
    v3 = v2;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t CAPackageAsset.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  sub_242F063B0();
  if (v1)
  {
    v2 = v1;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

void CAPackageAsset.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDB08, &qword_242F569D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242EFA370(v9, v10, v11);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v22 = 0;
    v12 = sub_242F05DA0();
    v14 = v13;
    v20 = v12;
    v21 = 1;
    v15 = sub_242F05DA0();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = v20;
    *a2 = 0;
    a2[1] = v18;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v17;

    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }
}

uint64_t sub_242EF9FA8()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_242EF9FD8()
{
  if (*v0 && (v1 = [*v0 preferredFilename]) != 0)
  {
    v2 = v1;
    v3 = sub_242F04F30();

    return v3;
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

id sub_242EFA088()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_242EFA0FC(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_242F063B0();
    v3 = v2;
    sub_242F05820();
  }

  else
  {
    sub_242F063B0();
  }

  sub_242F04DD0();

  return sub_242F04DD0();
}

uint64_t sub_242EFA1A0(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  sub_242F063B0();
  if (v2)
  {
    v3 = v2;
    sub_242F05820();
  }

  sub_242F04DD0();
  sub_242F04DD0();
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI09CAPackageC0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v17 = *(a1 + 24);
    sub_242C6CBCC();
    v11 = v7;
    v12 = v2;
    v13 = sub_242F05810();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 24);
    if (v7)
    {
      return 0;
    }
  }

  v14 = v3 == v6 && v4 == v9;
  if (!v14 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v8 && v5 == v10)
  {
    return 1;
  }

  return sub_242F06110();
}

unint64_t sub_242EFA370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB00;
  if (!qword_27ECFDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB00);
  }

  return result;
}

unint64_t sub_242EFA3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB10;
  if (!qword_27ECFDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB10);
  }

  return result;
}

unint64_t sub_242EFA440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB18;
  if (!qword_27ECFDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB18);
  }

  return result;
}

unint64_t sub_242EFA498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB20;
  if (!qword_27ECFDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB20);
  }

  return result;
}

unint64_t sub_242EFA4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB28;
  if (!qword_27ECFDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB28);
  }

  return result;
}

uint64_t InstrumentDataSource.unitConvertedCurrentValue.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v0 = sub_242EFA600(v2);
  sub_242C6D138(v2, &qword_27ECF85E0, &qword_242F3CBA0);
  return v0;
}

uint64_t sub_242EFA600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDB30, &qword_242F56C98);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358, &qword_242F2D428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-1] - v10;
  sub_242E19C98(a1, v22);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDB38, &unk_242F56CA0);
    v12 = swift_dynamicCast();
    (*(v6 + 56))(v4, v12 ^ 1u, 1, v5);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v4, v5);
      v13 = [objc_opt_self() kilowatts];
      sub_242F034B0();

      sub_242F034A0();
      v15 = v14;
      v16 = *(v6 + 8);
      v16(v8, v5);
      v16(v11, v5);
      return v15;
    }
  }

  else
  {
    sub_242C6D138(v22, &qword_27ECF85E0, &qword_242F3CBA0);
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_242C6D138(v4, &qword_27ECFDB30, &qword_242F56C98);
  sub_242E19C98(a1, v22);
  v18 = v23;
  if (v23)
  {
    v19 = v24;
    __swift_project_boxed_opaque_existential_2Tm(v22, v23);
    v20 = (*(v19 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_2Tm(v22);
    return v20;
  }

  else
  {
    sub_242C6D138(v22, &qword_27ECF85E0, &qword_242F3CBA0);
    return 0;
  }
}

char *sub_242EFA944()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) widgets];
  sub_242EFABEC();
  v2 = sub_242F05310();

  if (v2 >> 62)
  {
LABEL_26:
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = sub_242F059B0();
  }

  else
  {
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack__widgets;
  swift_beginAccess();
  if (!v3)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v5 = 0;
  v25 = MEMORY[0x277D84F90];
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245D270D0](v6, v2);
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = [v7 uniqueIdentifier];
      sub_242F04F30();

      v10 = *(v27 + v4);
      if (*(v10 + 16))
      {
        break;
      }

LABEL_7:

      ++v6;
      if (v5 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v3;

    v12 = sub_242CE8370();
    v14 = v13;

    if ((v14 & 1) == 0)
    {

      v3 = v11;
      goto LABEL_7;
    }

    v15 = *(v10 + 56) + 32 * v12;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);

    v20 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_242C84B70(0, *(v25 + 2) + 1, 1, v25);
    }

    v22 = *(v25 + 2);
    v21 = *(v25 + 3);
    if (v22 >= v21 >> 1)
    {
      v25 = sub_242C84B70((v21 > 1), v22 + 1, 1, v25);
    }

    *(v25 + 2) = v22 + 1;
    v23 = &v25[32 * v22];
    *(v23 + 4) = v17;
    *(v23 + 5) = v16;
    *(v23 + 6) = v20;
    v23[56] = v19;
    v3 = v11;
  }

  while (v5 != v11);
LABEL_23:

  return v25;
}

unint64_t sub_242EFABEC()
{
  result = qword_27ECF19A8;
  if (!qword_27ECF19A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF19A8);
  }

  return result;
}

void sub_242EFAC38(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) uniqueIdentifier];
  v4 = sub_242F04F30();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void sub_242EFAC98(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) activeWidget];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 uniqueIdentifier];
    v6 = sub_242F04F30();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
}

void sub_242EFAD3C(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) lastUserSelectedDataSource];
  if (v3)
  {
    if ([v3 respondsToSelector_])
    {
      v4 = [swift_unknownObjectRetain_n() uniqueIdentifier];
      v5 = sub_242F04F30();
      v7 = v6;
      swift_unknownObjectRelease_n();

      *a1 = v5;
      a1[1] = v7;
      return;
    }

    swift_unknownObjectRelease();
  }

  *a1 = 0;
  a1[1] = 0;
}

char *WidgetStack.__allocating_init(id:widgets:allowsExternalSuggestions:allowsSuggestions:lastActiveWidgetIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a4;
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  return WidgetStack.init(id:widgets:allowsExternalSuggestions:allowsSuggestions:lastActiveWidgetIdentifier:)(a1, a2, v8, v7, a5);
}

char *WidgetStack.init(id:widgets:allowsExternalSuggestions:allowsSuggestions:lastActiveWidgetIdentifier:)(uint64_t a1, void *a2, int a3, char a4, uint64_t *a5)
{
  LOBYTE(v47) = a4;
  LODWORD(v6) = a3;
  v7 = a2;
  v8 = *a1;
  v9 = *(a1 + 8);
  v46 = *a5;
  v48 = a5[1];
  *&v5[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack__widgets] = MEMORY[0x277D84F98];
  v10 = a2[2];
  if (!v10)
  {
    if (qword_27ECEF4C8 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_44;
  }

  while (1)
  {
    v19 = objc_allocWithZone(MEMORY[0x277D66450]);
    v45 = sub_242EFABEC();
    v20 = sub_242F052E0();
    v21 = [v19 initWithWidgets_];

    v22 = sub_242F04F00();

    v23 = [v21 copyWithLeafIdentifier_];

    *&v5[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] = v23;
    v24 = type metadata accessor for WidgetStack();
    v54.receiver = v5;
    v54.super_class = v24;
    v25 = objc_msgSendSuper2(&v54, sel_init);
    if (v10)
    {
      v26 = 0;
      v9 = v7 + 7;
      while (v26 < v7[2])
      {
        ++v26;
        v27 = *v9;
        v28 = *(v9 - 2);
        v29 = *(v9 - 1);
        v50 = *(v9 - 3);
        v51 = v28;
        v52 = v29;
        v53 = v27;

        v30 = v29;
        v23 = sub_242EFBD38(&v50);

        v9 += 32;
        if (v10 == v26)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:

    v31 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon;
    [*&v25[OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon] setAllowsSuggestions_];
    [*&v25[v31] setAllowsExternalSuggestions_];
    v43 = v31;
    v44 = *&v25[v31];
    v32 = [v44 widgets];
    v23 = sub_242F05310();

    if (!(v23 >> 62))
    {
      v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    while (1)
    {
      v33 = sub_242F059B0();
      if (!v33)
      {
        break;
      }

LABEL_12:
      v10 = 0;
      v47 = v23 & 0xC000000000000001;
      while (1)
      {
        if (v47)
        {
          v34 = MEMORY[0x245D270D0](v10, v23);
        }

        else
        {
          if (v10 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v34 = *(v23 + 8 * v10 + 32);
        }

        v7 = v34;
        v9 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v35 = [v34 uniqueIdentifier];
        v36 = sub_242F04F30();
        v6 = v37;

        if (v48)
        {
          if (v36 == v46 && v48 == v6)
          {

            goto LABEL_38;
          }

          v39 = sub_242F06110();

          if (v39)
          {

            goto LABEL_38;
          }
        }

        else
        {
        }

        ++v10;
        if (v9 == v33)
        {
          goto LABEL_32;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

LABEL_32:

    v8 = [*&v25[v43] widgets];
    v40 = sub_242F05310();

    if (v40 >> 62)
    {
      if (!sub_242F059B0())
      {
LABEL_40:

        v7 = 0;
        goto LABEL_41;
      }
    }

    else if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    if ((v40 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v41 = *(v40 + 32);
      goto LABEL_37;
    }

    __break(1u);
LABEL_44:
    swift_once();
LABEL_3:
    v11 = sub_242F039D0();
    __swift_project_value_buffer(v11, qword_27ED5D2F8);

    v12 = sub_242F039B0();
    v13 = sub_242F05700();

    if (os_log_type_enabled(v12, v13))
    {
      LODWORD(v44) = v6;
      v6 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v49 = v14;
      v50 = v8;
      *v6 = 136446210;
      v51 = v9;

      v15 = sub_242F04F90();
      v17 = sub_242C8FD38(v15, v16, &v49);

      *(v6 + 4) = v17;
      _os_log_impl(&dword_242C53000, v12, v13, "No widgets provided for stack with id: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v14);
      MEMORY[0x245D287D0](v14, -1, -1);
      v18 = v6;
      LODWORD(v6) = v44;
      MEMORY[0x245D287D0](v18, -1, -1);
    }

    v5 = v45;
  }

  v41 = MEMORY[0x245D270D0](0, v40);
LABEL_37:
  v7 = v41;
LABEL_38:

LABEL_41:
  [v44 setActiveWidget_];

  return v25;
}

id sub_242EFB3BC(void *a1, void *a2)
{
  v3 = [a1 uniqueIdentifier];
  v4 = sub_242F04F30();
  v6 = v5;

  v9[0] = v4;
  v9[1] = v6;
  v7 = sub_242EFB43C(v9, a2);

  return v7;
}

id sub_242EFB43C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack__widgets;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = v2;

  v9 = sub_242CE8370();
  if ((v10 & 1) == 0)
  {

LABEL_6:
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v18 = sub_242F039D0();
    __swift_project_value_buffer(v18, qword_27ED5D2F8);

    v19 = sub_242F039B0();
    v20 = sub_242F05700();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v77 = v22;
      *v21 = 136446210;

      v23 = sub_242F04F90();
      v25 = sub_242C8FD38(v23, v24, &v77);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_242C53000, v19, v20, "Unable to find widget %{public}s)", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v22);
      MEMORY[0x245D287D0](v22, -1, -1);
      MEMORY[0x245D287D0](v21, -1, -1);
    }

    return 0;
  }

  v11 = *(v7 + 56) + 32 * v9;
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  v14 = v12;

  v15 = v14;
  v16 = [v15 intentReference];
  if (v16)
  {

    return v15;
  }

  v26 = [a2 widgetDescriptorForWidget_];
  if (!v26)
  {
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v48 = sub_242F039D0();
    __swift_project_value_buffer(v48, qword_27ED5D2F8);
    v49 = v15;

    v50 = sub_242F039B0();
    v51 = sub_242F05700();
    v46 = v49;

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v77 = v54;
      *v52 = 136446466;

      v55 = sub_242F04F90();
      v57 = sub_242C8FD38(v55, v56, &v77);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2114;
      *(v52 + 14) = v46;
      *v53 = v46;
      _os_log_impl(&dword_242C53000, v50, v51, "Unable to find descriptor for widget %{public}s: %{public}@", v52, 0x16u);
      sub_242CC4FBC(v53);
      MEMORY[0x245D287D0](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_2Tm(v54);
      MEMORY[0x245D287D0](v54, -1, -1);
      MEMORY[0x245D287D0](v52, -1, -1);
    }

    else
    {
    }

    return v46;
  }

  v27 = v26;
  v28 = [v26 intentType];
  if (!v28)
  {

    return v15;
  }

  v29 = [v27 defaultIntentReference];
  if (v29)
  {
    v75 = v29;
    if (qword_27ECEF4C8 != -1)
    {
      swift_once();
    }

    v30 = sub_242F039D0();
    __swift_project_value_buffer(v30, qword_27ED5D2F8);

    v31 = sub_242F039B0();
    v32 = sub_242F05720();

    v76 = v13;
    v74 = v8;
    if (os_log_type_enabled(v31, v32))
    {
      v71 = v32;
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v77 = v72;
      *v33 = 136446466;

      v34 = sub_242F04F90();
      v36 = sub_242C8FD38(v34, v35, &v77);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2114;
      *(v33 + 14) = v15;
      *v70 = v15;
      v37 = v15;
      _os_log_impl(&dword_242C53000, v31, v71, "Updating intent with default intent for widget %{public}s: %{public}@", v33, 0x16u);
      sub_242CC4FBC(v70);
      MEMORY[0x245D287D0](v70, -1, -1);
      __swift_destroy_boxed_opaque_existential_2Tm(v72);
      MEMORY[0x245D287D0](v72, -1, -1);
      MEMORY[0x245D287D0](v33, -1, -1);
    }

    v73 = [v15 extensionIdentity];
    v38 = [v15 kind];
    if (!v38)
    {
      sub_242F04F30();
      v38 = sub_242F04F00();
    }

    v39 = [v15 family];
    v40 = [v15 activityIdentifier];
    v41 = objc_allocWithZone(MEMORY[0x277CFA358]);
    v42 = v75;
    v43 = v39;
    v44 = v42;
    v45 = [v41 initWithExtensionIdentity:v73 kind:v38 family:v43 intentReference:? activityIdentifier:?];

    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v46 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *(v74 + v6);
    *(v74 + v6) = 0x8000000000000000;
    sub_242CDE678(v5, v4, v46, v76, v5, v4, isUniquelyReferenced_nonNull_native);
    *(v74 + v6) = v77;
    swift_endAccess();

    return v46;
  }

  if (qword_27ECEF4C8 != -1)
  {
    swift_once();
  }

  v58 = sub_242F039D0();
  __swift_project_value_buffer(v58, qword_27ED5D2F8);
  v59 = v15;

  v60 = sub_242F039B0();
  v61 = sub_242F05700();
  v62 = v59;

  if (os_log_type_enabled(v60, v61))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v27;
    v66 = swift_slowAlloc();
    v77 = v66;
    *v63 = 136446466;

    v67 = sub_242F04F90();
    v69 = sub_242C8FD38(v67, v68, &v77);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2114;
    *(v63 + 14) = v62;
    *v64 = v62;
    _os_log_impl(&dword_242C53000, v60, v61, "Unable to get default intent reference for widget %{public}s: %{public}@", v63, 0x16u);
    sub_242CC4FBC(v64);
    MEMORY[0x245D287D0](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_2Tm(v66);
    MEMORY[0x245D287D0](v66, -1, -1);
    MEMORY[0x245D287D0](v63, -1, -1);

    return v62;
  }

  else
  {

    return v59;
  }
}

id sub_242EFBD38(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack__widgets;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v8 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v6;
  v25 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  v23 = v4;
  sub_242CDE678(v4, v3, v8, v6, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v25;
  swift_endAccess();
  v10 = [v8 kind];
  if (!v10)
  {
    sub_242F04F30();
    v10 = sub_242F04F00();
  }

  v11 = [v8 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0960, &qword_242F0C2F8);
  sub_242F03820();
  swift_endAccess();

  v12 = [v8 extensionIdentity];
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECF9420, &unk_242F39E50);
  v15 = 0;
  if (!(*(*(v14 - 8) + 48))(&v12[v13], 1, v14))
  {
    sub_242F03820();
    v15 = v16;
  }

  swift_endAccess();

  v17 = sub_242F04F00();
  v18 = sub_242F04F00();

  if (v15)
  {
    v19 = sub_242F04F00();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D66320]) initWithUniqueIdentifier:v17 kind:v10 extensionBundleIdentifier:v18 containerBundleIdentifier:v19];

  v21 = [v20 copyWithSuggestionSource_];
  [*(v2 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) addIconDataSource_];
  return v21;
}

id WidgetStack.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetStack.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WidgetStack();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_242EFC144(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon) uniqueIdentifier];
  v4 = sub_242F04F30();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t WidgetStack.description.getter()
{
  sub_242F05A80();
  MEMORY[0x245D26660](0xD000000000000010, 0x8000000242F5DE10);
  v1 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI11WidgetStack_icon);
  v2 = [v1 uniqueIdentifier];
  v3 = sub_242F04F30();
  v5 = v4;

  v6 = sub_242F04F90();
  MEMORY[0x245D26660](v6);

  MEMORY[0x245D26660](0xD00000000000001ALL, 0x8000000242F5DE30);
  v7 = [v1 activeWidget];
  if (v7)
  {
    v8 = v7;
    v9 = [v8 uniqueIdentifier];
    sub_242F04F30();

    v10 = sub_242F04F90();
    v12 = v11;
  }

  else
  {
    v12 = 0x8000000242F5DE50;
    v10 = 0xD000000000000037;
  }

  MEMORY[0x245D26660](v10, v12);

  MEMORY[0x245D26660](0x746567646977202CLL, 0xEB00000000203A73);
  v13 = [v1 widgets];
  v14 = sub_242EFABEC();
  v15 = sub_242F05310();

  v16 = MEMORY[0x245D26920](v15, v14);
  v18 = v17;

  MEMORY[0x245D26660](v16, v18);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_242EFC478()
{
  result = qword_27ECFDB50;
  if (!qword_27ECFDB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2108, &qword_242F13A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB50);
  }

  return result;
}

uint64_t dispatch thunk of WidgetStack.chsWidget(for:provider:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xB0))();
}

uint64_t InstrumentDataIdentifier.displayName.getter(uint64_t a1)
{
  v1 = InstrumentDataIdentifier.rawValue.getter();
  v3 = sub_242EFCF00(v1, v2);

  return v3;
}

unint64_t InstrumentDataIdentifier.rawValue.getter()
{
  result = 0x76654C7265776F70;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
    case 0x14:
    case 0x27:
    case 0x2D:
    case 0x3F:
      result = 0xD000000000000015;
      break;
    case 4:
    case 0x39:
    case 0x3A:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 0x1E:
    case 0x42:
      v2 = 9;
      goto LABEL_50;
    case 6:
    case 0xC:
    case 0x22:
    case 0x2E:
    case 0x37:
    case 0x38:
    case 0x54:
      v2 = 5;
LABEL_50:
      result = v2 | 0xD000000000000012;
      break;
    case 7:
      return result;
    case 8:
      result = 0x6174537265776F70;
      break;
    case 9:
      result = 0x654C656772616863;
      break;
    case 0xA:
    case 0x18:
    case 0x21:
    case 0x49:
      result = 0xD000000000000010;
      break;
    case 0xB:
    case 0x1C:
    case 0x1D:
    case 0x24:
    case 0x3E:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0x676E696772616863;
      break;
    case 0xE:
      result = 0x676E696772616863;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x646F4D6576697264;
      break;
    case 0x12:
      result = 0x646F4D6576697264;
      break;
    case 0x13:
      result = 0x6953726576697264;
      break;
    case 0x15:
    case 0x20:
    case 0x53:
      result = 0xD000000000000016;
      break;
    case 0x16:
      result = 0x5052656E69676E65;
      break;
    case 0x17:
      result = 0x6F50656E69676E65;
      break;
    case 0x19:
      result = 0x5052656E69676E65;
      break;
    case 0x1A:
      result = 0x5052656E69676E65;
      break;
    case 0x1B:
    case 0x28:
    case 0x30:
    case 0x33:
    case 0x3D:
      result = 0xD000000000000011;
      break;
    case 0x1F:
    case 0x43:
      result = 0xD00000000000001ALL;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x25:
      result = 0x6576654C6C6C6966;
      break;
    case 0x26:
      result = 0x696666456C657566;
      break;
    case 0x29:
      result = 0xD000000000000012;
      break;
    case 0x2A:
      result = 0x6576654C6C657566;
      break;
    case 0x2B:
      result = 0x6576654C6C657566;
      break;
    case 0x2C:
      result = 0xD000000000000012;
      break;
    case 0x2F:
      result = 0xD000000000000012;
      break;
    case 0x31:
      result = 0x6E556874676E656CLL;
      break;
    case 0x32:
      result = 0x6567617373656DLL;
      break;
    case 0x34:
      result = 0x726574656D6F646FLL;
      break;
    case 0x35:
      result = 0xD000000000000012;
      break;
    case 0x36:
      result = 0x78614D7265776F70;
      break;
    case 0x3B:
      result = 0x6E694D7265776F70;
      break;
    case 0x3C:
      result = 0x72685468636E7570;
      break;
    case 0x44:
      result = 0x74617265706D6574;
      break;
    case 0x46:
      result = 0x73696D736E617274;
      break;
    case 0x47:
      result = 0x53656C6369686576;
      break;
    case 0x48:
      result = 0x53656C6369686576;
      break;
    case 0x4A:
      result = 0x4374736575716572;
      break;
    case 0x4B:
      result = 0xD000000000000012;
      break;
    case 0x4C:
      result = 0x6D694C6465657073;
      break;
    case 0x4D:
      result = 1970169197;
      break;
    case 0x4E:
      result = 0x4C656C6369686576;
      break;
    case 0x4F:
      result = 0x6E496E6F74747562;
      break;
    case 0x50:
      result = 0x53656E6563536975;
      break;
    case 0x51:
    case 0x52:
      result = 0x6E6769536E727574;
      break;
    case 0x55:
      result = 0x69646E6F43796369;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_242EFCF00(uint64_t a1, unint64_t a2)
{
  v4 = sub_242F06520();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242F03500();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0;
  v65 = 0xE000000000000000;
  v60 = a1;
  v61 = a2;
  v12 = sub_242F034D0();
  sub_242C6CB78(v12, v13, v14);
  v15 = sub_242F058C0();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = HIBYTE(v17) & 0xF;
  v60 = v15;
  v61 = v17;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v62 = 0;
  v63 = v18;
  result = sub_242F05090();
  if (!v20)
  {
LABEL_93:

    return v64;
  }

  v21 = result;
  v22 = v20;
  v23 = 0;
  v24 = (v5 + 8);
  v25 = 1;
LABEL_64:
  v27 = v23;
  while (1)
  {
    v23 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if ((v22 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v26 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (++v27 == 1)
    {
      if (!v26)
      {
        goto LABEL_97;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v53 = sub_242F04FC0();
      }

      else
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v50 = v21;
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v49 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v49 = sub_242F05B50();
          }

          v50 = *v49;
        }

        v51 = v50;
        v52 = (__clz(~v50) - 24) << 16;
        if (v51 < 0)
        {
          v53 = v52;
        }

        else
        {
          v53 = 65541;
        }
      }

      v54 = 4 * v26;
      if (4 * v26 != v53 >> 14)
      {
        goto LABEL_79;
      }

      result = sub_242EFDB5C(v21, v22);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_102;
      }

      sub_242F06530();
      v55 = sub_242F064F0();
      (*v24)(v7, v4);
      if ((v55 & 1) == 0)
      {
LABEL_79:
        if ((sub_242F04DB0() & 1) == 0)
        {
          v25 = 0;
LABEL_90:
          v57 = sub_242F04DA0();
          v59 = v58;

          MEMORY[0x245D26660](v57, v59);

          v23 = 1;
LABEL_63:
          result = sub_242F05090();
          v21 = result;
          v22 = v45;
          if (!v45)
          {
            goto LABEL_93;
          }

          goto LABEL_64;
        }

        if ((v22 & 0x1000000000000000) != 0)
        {
          if (v54 != sub_242F04FC0() >> 14)
          {
            goto LABEL_87;
          }
        }

        else if (v54 != ((4 * sub_242F05A60()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_87;
        }

        result = sub_242EFDB5C(v21, v22);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_103;
        }

        sub_242F06530();
        v56 = sub_242F06510();
        (*v24)(v7, v4);
        if ((v56 & 1) == 0)
        {
LABEL_87:
          if (sub_242F04DC0())
          {
            v25 = sub_242F04DB0() ^ 1;
            goto LABEL_90;
          }
        }
      }

      v25 = 1;
      goto LABEL_90;
    }

    if (v25)
    {
      if (!v26)
      {
        goto LABEL_95;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v34 = sub_242F04FC0();
      }

      else
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v29 = v21;
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v28 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v28 = sub_242F05B50();
          }

          v29 = *v28;
        }

        v32 = v29;
        v33 = (__clz(~v29) - 24) << 16;
        if (v32 < 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 65541;
        }
      }

      v35 = 4 * v26;
      if (4 * v26 == v34 >> 14)
      {
        result = sub_242EFDB5C(v21, v22);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_99;
        }

        sub_242F06530();
        v36 = sub_242F06500();
        (*v24)(v7, v4);
        if (v36)
        {
LABEL_65:
          MEMORY[0x245D26660](32, 0xE100000000000000);
          v46 = sub_242F04DA0();
          v48 = v47;

          MEMORY[0x245D26660](v46, v48);

          v25 = 0;
          goto LABEL_63;
        }
      }

      if (sub_242F04DC0())
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          if (v35 != sub_242F04FC0() >> 14)
          {
LABEL_48:
            if ((sub_242F04DC0() & 1) == 0 || (sub_242F04DB0() & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_56;
          }
        }

        else if (v35 != ((4 * sub_242F05A60()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_48;
        }

        result = sub_242EFDB5C(v21, v22);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_100;
        }

        sub_242F06530();
        v42 = sub_242F06510();
        (*v24)(v7, v4);
        if (v42)
        {
          goto LABEL_65;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_96;
      }

      if ((v22 & 0x1000000000000000) != 0)
      {
        v39 = sub_242F04FC0();
      }

      else
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v31 = v21;
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v30 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v30 = sub_242F05B50();
          }

          v31 = *v30;
        }

        v37 = v31;
        v38 = (__clz(~v31) - 24) << 16;
        if (v37 < 0)
        {
          v39 = v38;
        }

        else
        {
          v39 = 65541;
        }
      }

      v40 = 4 * v26;
      if (4 * v26 == v39 >> 14)
      {
        result = sub_242EFDB5C(v21, v22);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_98;
        }

        sub_242F06530();
        v41 = sub_242F064F0();
        (*v24)(v7, v4);
        if (v41)
        {
LABEL_62:
          MEMORY[0x245D26650](v21, v22);

          v25 = 1;
          goto LABEL_63;
        }
      }

      if (sub_242F04DB0())
      {
        if ((v22 & 0x1000000000000000) != 0)
        {
          if (v40 != sub_242F04FC0() >> 14)
          {
LABEL_54:
            if ((sub_242F04DC0() & 1) == 0 || (sub_242F04DB0() & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_56;
          }
        }

        else if (v40 != ((4 * sub_242F05A60()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_54;
        }

        result = sub_242EFDB5C(v21, v22);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_101;
        }

        sub_242F06530();
        v43 = sub_242F06510();
        (*v24)(v7, v4);
        if (v43)
        {
          goto LABEL_62;
        }

        goto LABEL_54;
      }
    }

LABEL_56:
    MEMORY[0x245D26650](v21, v22);

    result = sub_242F05090();
    v21 = result;
    v22 = v44;
    if (!v44)
    {
      goto LABEL_93;
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
  return result;
}

CarPlayAssetUI::InstrumentDataIdentifier_optional __swiftcall InstrumentDataIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F062E0();

  v5 = 0;
  v6 = 68;
  switch(v3)
  {
    case 0:
      goto LABEL_87;
    case 1:
      v5 = 1;
      goto LABEL_87;
    case 2:
      v5 = 2;
      goto LABEL_87;
    case 3:
      v5 = 3;
      goto LABEL_87;
    case 4:
      v5 = 4;
      goto LABEL_87;
    case 5:
      v5 = 5;
      goto LABEL_87;
    case 6:
      v5 = 6;
      goto LABEL_87;
    case 7:
      v5 = 7;
      goto LABEL_87;
    case 8:
      v5 = 8;
      goto LABEL_87;
    case 9:
      v5 = 9;
      goto LABEL_87;
    case 10:
      v5 = 10;
      goto LABEL_87;
    case 11:
      v5 = 11;
      goto LABEL_87;
    case 12:
      v5 = 12;
      goto LABEL_87;
    case 13:
      v5 = 13;
      goto LABEL_87;
    case 14:
      v5 = 14;
      goto LABEL_87;
    case 15:
      v5 = 15;
      goto LABEL_87;
    case 16:
      v5 = 16;
      goto LABEL_87;
    case 17:
      v5 = 17;
      goto LABEL_87;
    case 18:
      v5 = 18;
      goto LABEL_87;
    case 19:
      v5 = 19;
      goto LABEL_87;
    case 20:
      v5 = 20;
      goto LABEL_87;
    case 21:
      v5 = 21;
      goto LABEL_87;
    case 22:
      v5 = 22;
      goto LABEL_87;
    case 23:
      v5 = 23;
      goto LABEL_87;
    case 24:
      v5 = 24;
      goto LABEL_87;
    case 25:
      v5 = 25;
      goto LABEL_87;
    case 26:
      v5 = 26;
      goto LABEL_87;
    case 27:
      v5 = 27;
      goto LABEL_87;
    case 28:
      v5 = 28;
      goto LABEL_87;
    case 29:
      v5 = 29;
      goto LABEL_87;
    case 30:
      v5 = 30;
      goto LABEL_87;
    case 31:
      v5 = 31;
      goto LABEL_87;
    case 32:
      v5 = 32;
      goto LABEL_87;
    case 33:
      v5 = 33;
      goto LABEL_87;
    case 34:
      v5 = 34;
      goto LABEL_87;
    case 35:
      v5 = 35;
      goto LABEL_87;
    case 36:
      v5 = 36;
      goto LABEL_87;
    case 37:
      v5 = 37;
      goto LABEL_87;
    case 38:
      v5 = 38;
      goto LABEL_87;
    case 39:
      v5 = 39;
      goto LABEL_87;
    case 40:
      v5 = 40;
      goto LABEL_87;
    case 41:
      v5 = 41;
      goto LABEL_87;
    case 42:
      v5 = 42;
      goto LABEL_87;
    case 43:
      v5 = 43;
      goto LABEL_87;
    case 44:
      v5 = 44;
      goto LABEL_87;
    case 45:
      v5 = 45;
      goto LABEL_87;
    case 46:
      v5 = 46;
      goto LABEL_87;
    case 47:
      v5 = 47;
      goto LABEL_87;
    case 48:
      v5 = 48;
      goto LABEL_87;
    case 49:
      v5 = 49;
      goto LABEL_87;
    case 50:
      v5 = 50;
      goto LABEL_87;
    case 51:
      v5 = 51;
      goto LABEL_87;
    case 52:
      v5 = 52;
      goto LABEL_87;
    case 53:
      v5 = 53;
      goto LABEL_87;
    case 54:
      v5 = 54;
      goto LABEL_87;
    case 55:
      v5 = 55;
      goto LABEL_87;
    case 56:
      v5 = 56;
      goto LABEL_87;
    case 57:
      v5 = 57;
      goto LABEL_87;
    case 58:
      v5 = 58;
      goto LABEL_87;
    case 59:
      v5 = 59;
      goto LABEL_87;
    case 60:
      v5 = 60;
      goto LABEL_87;
    case 61:
      v5 = 61;
      goto LABEL_87;
    case 62:
      v5 = 62;
      goto LABEL_87;
    case 63:
      v5 = 63;
      goto LABEL_87;
    case 64:
      v5 = 64;
      goto LABEL_87;
    case 65:
      v5 = 65;
      goto LABEL_87;
    case 66:
      v5 = 66;
      goto LABEL_87;
    case 67:
      v5 = 67;
LABEL_87:
      v6 = v5;
      break;
    case 68:
      break;
    case 69:
      v6 = 69;
      break;
    case 70:
      v6 = 70;
      break;
    case 71:
      v6 = 71;
      break;
    case 72:
      v6 = 72;
      break;
    case 73:
      v6 = 73;
      break;
    case 74:
      v6 = 74;
      break;
    case 75:
      v6 = 75;
      break;
    case 76:
      v6 = 76;
      break;
    case 77:
      v6 = 77;
      break;
    case 78:
      v6 = 78;
      break;
    case 79:
      v6 = 79;
      break;
    case 80:
      v6 = 80;
      break;
    case 81:
      v6 = 81;
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    default:
      v6 = 86;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_242EFD9A8@<X0>(unint64_t *a1@<X8>)
{
  result = InstrumentDataIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_242EFD9D4()
{
  result = qword_27ECFDB58;
  if (!qword_27ECFDB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDB60, &qword_242F56DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB58);
  }

  return result;
}

unint64_t sub_242EFDB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDB68;
  if (!qword_27ECFDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB68);
  }

  return result;
}

unint64_t sub_242EFDB5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_242EFDCAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_242F05A70();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_242F05B50() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_242EFDCAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_242EFDD44(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_242EFDDB8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_242EFDD44(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_242D0A9B8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_242EFDDB8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_242F05B50();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_242EFE170()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48, &qword_242F23098);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_242F04440();
  v3 = sub_242F04430();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_242F04460();
  result = sub_242C6D138(v2, &qword_27ECF3F48, &qword_242F23098);
  qword_27ECFDB70 = v4;
  return result;
}

uint64_t sub_242EFE268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for MenuButtonStyle(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PlatterView(0);
  MEMORY[0x28223BE20](v61);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v43 = *(a1 + 24);
  sub_242F03B60();
  swift_getTupleTypeMetadata2();
  v9 = sub_242F04AF0();
  WitnessTable = swift_getWitnessTable();
  v54 = v9;
  v50 = WitnessTable;
  v11 = sub_242F03C50();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = &v42 - v12;
  v13 = sub_242F03E00();
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v57 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6960, &qword_242F30638);
  v15 = sub_242F03E00();
  v60 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v42 - v16;
  v44 = swift_getWitnessTable();
  v73 = v44;
  v74 = MEMORY[0x277CDF918];
  v46 = v13;
  v17 = swift_getWitnessTable();
  v18 = sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960, &qword_242F30638, MEMORY[0x277CE0328]);
  v47 = v17;
  v71 = v17;
  v72 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_242F02714(&qword_27ECFDCB0, type metadata accessor for MenuButtonStyle, &unk_242F57608);
  v67 = v15;
  v68 = v3;
  v62 = v3;
  v55 = v19;
  v69 = v19;
  v70 = v20;
  v53 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v49 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v51 = &v42 - v24;
  v64 = v8;
  v65 = v43;
  v66 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCB8, &qword_242F57430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F0A4E0;
  v26 = sub_242F04370();
  *(inited + 32) = v26;
  v27 = sub_242F04390();
  *(inited + 33) = v27;
  sub_242F04380();
  sub_242F04380();
  if (sub_242F04380() != v26)
  {
    sub_242F04380();
  }

  sub_242F04380();
  if (sub_242F04380() != v27)
  {
    sub_242F04380();
  }

  v28 = v48;
  sub_242F03C40();
  v29 = v57;
  sub_242F046A0();
  (*(v52 + 8))(v28, v11);
  v30 = v61;
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  v7[16] = 0;
  *(v7 + 3) = swift_getKeyPath();
  v7[32] = 0;
  *(v7 + 5) = 0x4044000000000000;
  v31 = &v7[*(v30 + 32)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  sub_242F04A70();
  sub_242F02714(&qword_27ECFDCC0, type metadata accessor for PlatterView, &unk_242F44D3C);
  v32 = v59;
  v33 = v46;
  sub_242F045A0();
  sub_242F02768(v7, type metadata accessor for PlatterView);
  (*(v58 + 8))(v29, v33);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v34 = v62;
  v35 = *(v62 + 20);
  *&v5[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  swift_storeEnumTagMultiPayload();
  v36 = v49;
  v37 = v55;
  v38 = v53;
  sub_242F045D0();
  sub_242F02768(v5, type metadata accessor for MenuButtonStyle);
  (*(v60 + 8))(v32, v15);
  v67 = v15;
  v68 = v34;
  v69 = v37;
  v70 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v51;
  sub_242CA32B4();
  v40 = *(v56 + 8);
  v40(v36, OpaqueTypeMetadata2);
  sub_242CA32B4();
  return (v40)(v39, OpaqueTypeMetadata2);
}

uint64_t sub_242EFEAD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_242F03B60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v26 = *(a1 - 8);
  v12 = v26;
  MEMORY[0x28223BE20](v13);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v27 = a2;
  v19 = type metadata accessor for MenuView(0, a1, a2, v18);
  sub_242CA32B4();
  sub_242EFEDA4(v19);
  WitnessTable = swift_getWitnessTable();
  sub_242CA32B4();
  v21 = *(v6 + 8);
  v21(v8, v5);
  v22 = *(v12 + 16);
  v23 = v28;
  v22(v28, v17, a1);
  v33[0] = v23;
  (*(v6 + 16))(v8, v11, v5);
  v33[1] = v8;
  v32[0] = a1;
  v32[1] = v5;
  v30 = v27;
  v31 = WitnessTable;
  sub_242DE9FD8(v33, 2uLL, v32);
  v21(v11, v5);
  v24 = *(v26 + 8);
  v24(v17, a1);
  v21(v8, v5);
  return (v24)(v23, a1);
}

uint64_t sub_242EFEE10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuView(0, v6, v7, v8);
  sub_242CA32B4();
  sub_242CA32B4();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_242EFEF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for SingleSelectMenuView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBB8, &qword_242F571C8);
  MEMORY[0x28223BE20](v27);
  v8 = &v21 - v7;
  *v8 = sub_242F04080();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBC0, &qword_242F571D0) + 44);
  v9 = a1 + *(v4 + 32);
  v29 = *(v9 + 16);
  v10 = v29;
  v26 = a1;
  sub_242F01A98(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = v6;
  v12 = swift_allocObject();
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242F031A0(v25, v12 + v11, type metadata accessor for SingleSelectMenuView);
  v22 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBC8, &qword_242F571D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B88, &qword_242F571E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBD0, &qword_242F571E8);
  sub_242C7E000(&qword_27ECFDBD8, &qword_27ECFDBC8, &qword_242F571D8, MEMORY[0x277D83980]);
  v13 = sub_242F01B7C();
  sub_242F01CA4(v13, v14, v15);
  sub_242F049A0();
  if (*(v9 + 33))
  {
    goto LABEL_2;
  }

  if ((*(v9 + 32) & 1) == 0)
  {
    v17 = 0;
    v16 = *(v9 + 24);
    goto LABEL_7;
  }

  if (!*(v22 + 16))
  {
LABEL_2:
    v16 = 0;
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v16 = *(v22 + 32);
  }

LABEL_7:
  v29 = v16;
  v30 = v17;
  v18 = v25;
  sub_242F01A98(v26, v25);
  v19 = swift_allocObject();
  sub_242F031A0(v18, v19 + v11, type metadata accessor for SingleSelectMenuView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDC00, &qword_242F57200);
  sub_242C7E000(&qword_27ECFDC08, &qword_27ECFDBB8, &qword_242F571C8, MEMORY[0x277CE1198]);
  sub_242F01EA0();
  sub_242F046C0();

  return sub_242C6D138(v8, &qword_27ECFDBB8, &qword_242F571C8);
}

uint64_t sub_242EFF2C4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SingleSelectMenuView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBE8, &unk_242F571F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25[-v11];
  v13 = a1[1];
  v29 = *a1;
  v30 = v13;
  v31 = *(a1 + 4);
  sub_242F01A98(a2, &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_242F031A0(&v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for SingleSelectMenuView);
  v16 = v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = v30;
  *v16 = v29;
  *(v16 + 16) = v17;
  *(v16 + 32) = v31;
  v26 = &v29;
  v27 = a2;
  v18 = sub_242F02034(&v29, v28);
  sub_242F02090(v18, v19, v20);
  sub_242F048E0();
  sub_242F04AE0();
  sub_242C7E000(&qword_27ECFDBF0, &qword_27ECFDBE8, &unk_242F571F0, MEMORY[0x277CDF028]);
  sub_242F04650();
  (*(v10 + 8))(v12, v9);
  LOBYTE(v12) = sub_242EFF758(&v29);
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v12 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBD0, &qword_242F571E8);
  v24 = (a3 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_242DD2254;
  v24[2] = v22;
  return result;
}

uint64_t sub_242EFF5FC(uint64_t a1, uint64_t *a2)
{
  result = type metadata accessor for SingleSelectMenuView(0);
  v5 = a1 + *(result + 24);
  if (*(v5 + 33) == 1)
  {
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = *a2;
      return v6(&v7);
    }
  }

  return result;
}

uint64_t sub_242EFF664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + *(type metadata accessor for SingleSelectMenuView(0) + 24);
  if (*(v5 + 33) == 1)
  {
    v6 = (*a1 == *(v5 + 24)) & ~*(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v15 = *(a1 + 8);
  v14 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v13 = 0;
  v12 = 0;
  *&v11[7] = *(a1 + 8);
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 16) = v8;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 33) = *v11;
  *(a3 + 48) = *&v11[15];
  *(a3 + 56) = *(a1 + 24);
  *(a3 + 72) = v6;
  sub_242F020E4(&v15, v10);
  return sub_242F020E4(&v14, v10);
}

BOOL sub_242EFF758(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for SingleSelectMenuView(0) + 24);
  if (*(v3 + 33))
  {
    return 1;
  }

  if (*(v3 + 32) != 1)
  {
    v6 = (v3 + 24);
    return v2 == *v6;
  }

  v5 = *(v3 + 16);
  if (*(v5 + 16))
  {
    v6 = (v5 + 32);
    return v2 == *v6;
  }

  return 0;
}

uint64_t sub_242EFF7D0(void *a1)
{
  v1 = sub_242F04060();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_242F00AF8(&qword_27ECF83D0, &qword_242F57130, type metadata accessor for SingleSelectMenuView, MEMORY[0x277CDDE08], v4);
  sub_242F04AE0();
  sub_242F04050();
  return (*(v2 + 8))(v4, v1);
}

double sub_242EFF8DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBA0, &qword_242F571B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = v2 + *(a1 + 24);
  *(&v14 - v6) = *(v8 + 33);
  sub_242EFEF0C(v2, &v14 + *(v9 + 36) - v6);
  sub_242F04AE0();
  sub_242C7E000(&qword_27ECFDBA8, &qword_27ECFDBA0, &qword_242F571B8, &unk_242F573D8);
  sub_242F045C0();
  sub_242C6D138(v7, &qword_27ECFDBA0, &qword_242F571B8);
  v11 = *v8;
  v10 = *(v8 + 8);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDBB0, &qword_242F571C0) + 52));
  *v12 = v11;
  v12[1] = v10;

  return result;
}

uint64_t sub_242EFFA20@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCC8, &qword_242F574C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCD0, &qword_242F574C8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCD8, &qword_242F574D0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCE0, &qword_242F574D8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCE8, &qword_242F574E0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = v1[3];
  v53[2] = v1[2];
  *v54 = v20;
  *&v54[9] = *(v1 + 57);
  v21 = v1[1];
  v53[0] = *v1;
  v53[1] = v21;
  *v4 = sub_242F04040();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCF0, &unk_242F574E8);
  sub_242EFFE40(v53, &v4[*(v22 + 44)]);
  v23 = sub_242F043E0();
  sub_242F03B50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_242CF6B3C(v4, v8, &qword_27ECFDCC8, &qword_242F574C0);
  v32 = &v8[*(v6 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = sub_242F04400();
  sub_242F03B50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_242CF6B3C(v8, v12, &qword_27ECFDCD0, &qword_242F574C8);
  v42 = &v12[*(v10 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = &v16[*(v14 + 44)];
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50, &unk_242F357D0) + 28);
  v45 = *MEMORY[0x277CE1058];
  v46 = sub_242F04820();
  (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
  *v43 = swift_getKeyPath();
  sub_242CF6B3C(v12, v16, &qword_27ECFDCD8, &qword_242F574D0);
  if (qword_27ECEF858 != -1)
  {
    swift_once();
  }

  v47 = qword_27ECFDB70;
  KeyPath = swift_getKeyPath();
  sub_242CF6B3C(v16, v19, &qword_27ECFDCE0, &qword_242F574D8);
  v49 = &v19[*(v17 + 36)];
  *v49 = KeyPath;
  v49[1] = v47;
  sub_242CF6B3C(v19, v52, &qword_27ECFDCE8, &qword_242F574E0);
}

uint64_t sub_242EFFE40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_242F04800();
  v99 = *(v3 - 8);
  v100 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDCF8, &unk_242F57560);
  MEMORY[0x28223BE20](v106);
  v6 = &v90 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E88, &unk_242F48850);
  MEMORY[0x28223BE20](v7 - 8);
  v102 = &v90 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD00, &qword_242F57570);
  MEMORY[0x28223BE20](v101);
  v104 = &v90 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD08, &qword_242F57578);
  MEMORY[0x28223BE20](v108);
  v103 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD10, &qword_242F57580);
  v14 = *(v13 - 8);
  v109 = v13;
  v110 = v14;
  MEMORY[0x28223BE20](v13);
  v113 = &v90 - v15;
  v16 = sub_242F04000();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD18, &qword_242F57588);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v90 - v23;
  v127 = *(a1 + 1);
  v128 = *(a1 + 32);
  v25 = v127;
  v94 = v17;
  v95 = v16;
  if (v128 == 1)
  {
    v114 = v127;
    sub_242CA321C(&v127, &v119, &qword_27ECFDD20, &qword_242F57590);
  }

  else
  {
    sub_242CA321C(&v127, &v119, &qword_27ECFDD20, &qword_242F57590);
    sub_242F05710();
    v26 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242C6D138(&v127, &qword_27ECFDD20, &qword_242F57590);
    (*(v17 + 8))(v19, v16);
    v25 = v114;
  }

  v27 = a1[7];
  v28 = a1[8];
  v25(v121, v27, v28);

  if (!*v121)
  {
    v33 = 1;
    goto LABEL_15;
  }

  v29 = *v121;
  v96 = v28;
  v97 = v27;
  if (v121[8] == 3)
  {
    sub_242F04A70();
    sub_242F03C70();
    v100 = v114;
    LODWORD(v99) = BYTE8(v114);
    v98 = v115;
    v93 = v116;
    v91 = v118;
    v92 = v117;
    BYTE8(v125[0]) = *(a1 + 8);
    v30 = *a1;
    *&v125[0] = *a1;
    v31 = BYTE8(v125[0]);

    if (v31 == 1)
    {
      if ((v30 & 1) == 0)
      {
LABEL_8:
        v32 = v102;
        sub_242F040B0();
LABEL_13:
        v51 = sub_242F040D0();
        (*(*(v51 - 8) + 56))(v32, 0, 1, v51);
        KeyPath = swift_getKeyPath();
        v53 = v104;
        v54 = &v104[*(v101 + 36)];
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E30, &unk_242F357C0);
        sub_242CF6B3C(v32, v54 + *(v55 + 28), &qword_27ECF7E88, &unk_242F48850);
        *v54 = KeyPath;
        v56 = v100;
        *v53 = v29;
        *(v53 + 8) = v56;
        *(v53 + 16) = v99;
        *(v53 + 24) = v98;
        *(v53 + 32) = v93;
        v57 = v91;
        *(v53 + 40) = v92;
        *(v53 + 48) = v57;
        v58 = v103;
        v59 = &v103[*(v108 + 36)];
        v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50, &unk_242F357D0) + 28);
        v61 = *MEMORY[0x277CE1048];
        v62 = sub_242F04820();
        (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
        *v59 = swift_getKeyPath();
        sub_242CF6B3C(v53, v58, &qword_27ECFDD00, &qword_242F57570);
        v44 = &qword_242F57578;
        v63 = v58;
        v64 = v105;
        sub_242CF6B3C(v63, v105, &qword_27ECFDD08, &qword_242F57578);
        sub_242CA321C(v64, v6, &qword_27ECFDD08, &qword_242F57578);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE48, &qword_242F575A0);
        sub_242F027D4();
        sub_242EB6B6C();
        sub_242F041C0();

        v45 = v64;
        v46 = &qword_27ECFDD08;
        goto LABEL_14;
      }
    }

    else
    {
      sub_242CA321C(v125, &v119, &qword_27ECFDD50, &qword_242F575B0);
      sub_242F05710();
      v47 = a1;
      v48 = v6;
      v49 = v24;
      v50 = sub_242F04360();
      sub_242F03930();

      v24 = v49;
      v6 = v48;
      a1 = v47;
      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242C6D138(v125, &qword_27ECFDD50, &qword_242F575B0);
      (*(v94 + 8))(v19, v95);
      if (v121[0] != 1)
      {
        goto LABEL_8;
      }
    }

    v32 = v102;
    sub_242F040A0();
    goto LABEL_13;
  }

  v35 = v98;
  v34 = v99;
  v36 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277CE0FE0], v100);
  v37 = sub_242F04830();
  (*(v34 + 8))(v35, v36);
  sub_242F04A70();
  sub_242F03E40();
  v124 = 1;
  *&v121[54] = v125[3];
  *&v121[70] = v125[4];
  *&v121[86] = v125[5];
  *&v121[102] = v126;
  *&v121[6] = v125[0];
  *&v121[22] = v125[1];
  *&v121[38] = v125[2];
  v119 = v37;
  *v120 = 1;
  *&v120[2] = *v121;
  *&v120[18] = *&v121[16];
  *&v120[82] = *&v121[80];
  *&v120[66] = *&v121[64];
  *&v120[98] = *&v121[96];
  *&v120[112] = *(&v126 + 1);
  *&v120[34] = *&v121[32];
  *&v120[50] = *&v121[48];
  v38 = *v120;
  v39 = *&v120[32];
  *(v6 + 2) = *&v120[16];
  *(v6 + 3) = v39;
  *v6 = v37;
  *(v6 + 1) = v38;
  v40 = *&v120[48];
  v41 = *&v120[64];
  v42 = *&v120[80];
  v43 = *&v120[96];
  *(v6 + 16) = *&v120[112];
  *(v6 + 6) = v42;
  *(v6 + 7) = v43;
  *(v6 + 4) = v40;
  *(v6 + 5) = v41;
  swift_storeEnumTagMultiPayload();
  v44 = &qword_242F575A0;
  sub_242CA321C(&v119, &v114, &qword_27ECFBE48, &qword_242F575A0);
  sub_242CA321C(&v119, &v114, &qword_27ECFBE48, &qword_242F575A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFBE48, &qword_242F575A0);
  sub_242F027D4();
  sub_242EB6B6C();
  sub_242F041C0();

  sub_242C6D138(&v119, &qword_27ECFBE48, &qword_242F575A0);
  v45 = &v119;
  v46 = &qword_27ECFBE48;
LABEL_14:
  sub_242C6D138(v45, v46, v44);
  sub_242CF6B3C(v113, v24, &qword_27ECFDD10, &qword_242F57580);
  v33 = 0;
LABEL_15:
  v107 = v24;
  (*(v110 + 56))(v24, v33, 1, v109);
  sub_242F04A70();
  v65 = sub_242F03C70();
  v113 = v119;
  v109 = *&v120[16];
  v110 = *v120;
  v108 = *&v120[24];
  v124 = 1;
  v123 = BYTE8(v119);
  v122 = v120[8];
  v66 = a1[6];
  *v121 = a1[5];
  *&v121[8] = v66;
  sub_242C6CB78(v65, v67, v68);

  v104 = sub_242F04550();
  v70 = v69;
  LODWORD(v105) = v71;
  v106 = v72;
  v73 = sub_242F047F0();
  if (a1[9])
  {
    v74 = 1.0;
  }

  else
  {
    v74 = 0.0;
  }

  v75 = v111;
  sub_242CA321C(v24, v111, &qword_27ECFDD18, &qword_242F57588);
  v76 = v124;
  v77 = v123;
  v78 = v122;
  v79 = v112;
  sub_242CA321C(v75, v112, &qword_27ECFDD18, &qword_242F57588);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD28, &qword_242F57598);
  v81 = v79 + v80[12];
  *v81 = 0;
  *(v81 + 8) = v76;
  *(v81 + 16) = v113;
  *(v81 + 24) = v77;
  v82 = v109;
  *(v81 + 32) = v110;
  *(v81 + 40) = v78;
  v83 = v108;
  *(v81 + 48) = v82;
  *(v81 + 56) = v83;
  v84 = v79 + v80[16];
  v85 = v104;
  *v84 = v104;
  *(v84 + 8) = v70;
  v86 = v105 & 1;
  *(v84 + 16) = v105 & 1;
  *(v84 + 24) = v106;
  v87 = v79 + v80[20];
  *v87 = 0x4030000000000000;
  *(v87 + 8) = 0;
  v88 = v79 + v80[24];
  *v88 = v73;
  *(v88 + 8) = v74;
  sub_242DD226C(v85, v70, v86);

  sub_242C6D138(v107, &qword_27ECFDD18, &qword_242F57588);

  sub_242DD225C(v85, v70, v86);

  return sub_242C6D138(v75, &qword_27ECFDD18, &qword_242F57588);
}

uint64_t sub_242F00AF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v23 = a5;
  v10 = sub_242F04000();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v18 = a3(0, v15);
  sub_242CA321C(v5 + *(v18 + 20), v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a4(0);
    return (*(*(v19 - 8) + 32))(v23, v17, v19);
  }

  else
  {
    sub_242F05710();
    v21 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_242F00D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_242F03BB0();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v10);
  v55 = (&v49 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD90, &qword_242F57640);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDD98, &qword_242F57648);
  MEMORY[0x28223BE20](v52);
  v54 = &v49 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDDA0, &qword_242F57650);
  MEMORY[0x28223BE20](v53);
  v18 = &v49 - v17;
  sub_242F04260();
  v19 = sub_242F04780();
  KeyPath = swift_getKeyPath();
  v21 = &v15[*(v13 + 44)];
  *v21 = KeyPath;
  v21[1] = v19;
  if (sub_242F01288() & 1) != 0 || (sub_242F04270())
  {
    v49 = v18;
    v50 = a1;
    v51 = a2;
    sub_242F00AF8(&qword_27ECF0BA0, &qword_242F0D080, type metadata accessor for MenuButtonStyle, MEMORY[0x277CDF3E0], v9);
    v22 = *MEMORY[0x277CDF3D0];
    v23 = v56;
    v24 = *(v56 + 104);
    v24(v6, v22, v4);
    v25 = sub_242F03BA0();
    v26 = *(v23 + 8);
    v26(v6, v4);
    v26(v9, v4);
    if (v25)
    {
      v27 = *MEMORY[0x277CDF3C0];
      v28 = v55;
      v29 = v55;
    }

    else
    {
      v28 = v55;
      v29 = v55;
      v27 = v22;
    }

    v24(v29, v27, v4);
    a1 = v50;
    a2 = v51;
    v18 = v49;
  }

  else
  {
    v28 = v55;
    sub_242F00AF8(&qword_27ECF0BA0, &qword_242F0D080, type metadata accessor for MenuButtonStyle, MEMORY[0x277CDF3E0], v55);
  }

  v30 = swift_getKeyPath();
  v31 = v54;
  v32 = &v54[*(v52 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BD8, &qword_242F0D148);
  (*(v56 + 32))(v32 + *(v33 + 28), v28, v4);
  *v32 = v30;
  sub_242CF6B3C(v15, v31, &qword_27ECFDD90, &qword_242F57640);
  sub_242F04A70();
  sub_242F03C70();
  sub_242CF6B3C(v31, v18, &qword_27ECFDD98, &qword_242F57648);
  v34 = &v18[*(v53 + 36)];
  v35 = v58;
  *v34 = v57;
  *(v34 + 1) = v35;
  *(v34 + 2) = v59;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDDA8, &qword_242F576C0) + 36);
  v37 = type metadata accessor for MenuButtonBackgroundView(0);
  v38 = v37[5];
  v39 = sub_242F04280();
  (*(*(v39 - 8) + 16))(v36 + v38, a1, v39);
  v40 = swift_getKeyPath();
  v41 = [objc_opt_self() _carSystemTertiaryColor];
  v42 = sub_242F047D0();
  v43 = sub_242F04780();
  *v36 = v40;
  *(v36 + 8) = 0;
  *(v36 + v37[6]) = v42;
  *(v36 + v37[7]) = v43;
  *(v36 + v37[8]) = 0x4034000000000000;
  v44 = sub_242F04A70();
  v46 = v45;
  v47 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDDB0, &qword_242F576C8) + 36));
  *v47 = v44;
  v47[1] = v46;
  return sub_242CF6B3C(v18, a2, &qword_27ECFDDA0, &qword_242F57650);
}

uint64_t sub_242F01288()
{
  v1 = sub_242F04000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_242F05710();
    v6 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_242F013D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0, &qword_242F0D120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_242F03E30();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDDF0, &qword_242F57750);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for MenuButtonBackgroundView(0);
  v15 = *(v2 + *(v14 + 32));
  v16 = *(v8 + 28);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_242F04070();
  (*(*(v18 - 8) + 104))(&v10[v16], v17, v18);
  *v10 = v15;
  *(v10 + 1) = v15;
  if (sub_242F01288())
  {
    v19 = 28;
  }

  else
  {
    v20 = sub_242F04270();
    v19 = 24;
    if (v20)
    {
      v19 = 28;
    }
  }

  v21 = *(v2 + *(v14 + v19));

  sub_242F031A0(v10, v13, MEMORY[0x277CDFC08]);
  *&v13[*(v11 + 52)] = v21;
  *&v13[*(v11 + 56)] = 256;
  KeyPath = swift_getKeyPath();
  if (sub_242F01288() & 1) != 0 || (sub_242F04270())
  {
    v23 = 1;
  }

  else
  {
    sub_242F04A10();
    v23 = 0;
  }

  v24 = sub_242F04A30();
  (*(*(v24 - 8) + 56))(v6, v23, 1, v24);
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDDF8, &qword_242F57788) + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BC8, &unk_242F57790);
  sub_242CF6B3C(v6, v25 + *(v26 + 28), &qword_27ECF0BB0, &qword_242F0D120);
  *v25 = KeyPath;
  return sub_242CF6B3C(v13, a1, &qword_27ECFDDF0, &qword_242F57750);
}

__n128 sub_242F016D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SingleSelectMenuView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[1];
  v15 = *v1;
  v16 = v7;
  v17 = v1[2];
  v18 = *(v1 + 6);
  *(v6 + *(v4 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0, &qword_242F57130);
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  v8 = v6 + *(v4 + 32);
  v9 = v16;
  *v8 = v15;
  *(v8 + 1) = v9;
  *(v8 + 2) = v17;
  *(v8 + 6) = v18;
  sub_242F0189C(&v15, v14);
  sub_242F04A70();
  sub_242F03E40();
  sub_242F031A0(v6, a1, type metadata accessor for SingleSelectMenuView);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFDB78, &qword_242F57138) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

void sub_242F01920(uint64_t a1)
{
  sub_242F02A9C(319, &qword_27ECF84C0, MEMORY[0x277CDDE08]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_242F019C0()
{
  result = qword_27ECFDB90;
  if (!qword_27ECFDB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDB78, &qword_242F57138);
    sub_242F02714(&qword_27ECFDB98, type metadata accessor for SingleSelectMenuView, &unk_242F57168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDB90);
  }

  return result;
}

uint64_t sub_242F01A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleSelectMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242F01AFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SingleSelectMenuView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_242EFF2C4(a1, v6, a2);
}

unint64_t sub_242F01B7C()
{
  result = qword_27ECFDBE0;
  if (!qword_27ECFDBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDBD0, &qword_242F571E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDBE8, &unk_242F571F0);
    sub_242C7E000(&qword_27ECFDBF0, &qword_27ECFDBE8, &unk_242F571F0, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    sub_242C7E000(&qword_27ECF6C60, &qword_27ECF6C68, &qword_242F30A40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDBE0);
  }

  return result;
}

unint64_t sub_242F01CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDBF8;
  if (!qword_27ECFDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDBF8);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for SingleSelectMenuView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0, &qword_242F57130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_242F04060();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 24);

  if (*(v8 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_242F01E40()
{
  v1 = *(type metadata accessor for SingleSelectMenuView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_242EFF7D0(v2);
}

unint64_t sub_242F01EA0()
{
  result = qword_27ECFDC10;
  if (!qword_27ECFDC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDC00, &qword_242F57200);
    sub_242F01F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDC10);
  }

  return result;
}

unint64_t sub_242F01F24()
{
  result = qword_27ECFDC18;
  if (!qword_27ECFDC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0B88, &qword_242F571E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDC18);
  }

  return result;
}

uint64_t sub_242F01FA0()
{
  v1 = *(type metadata accessor for SingleSelectMenuView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_242EFF5FC(v0 + v2, v3);
}

unint64_t sub_242F02090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECFDC20[0];
  if (!qword_27ECFDC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECFDC20);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242F0217C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242F021C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242F02228(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242F022A8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_242F02434(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_242F02714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242F02768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242F027D4()
{
  result = qword_27ECFDD30;
  if (!qword_27ECFDD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDD08, &qword_242F57578);
    sub_242F0288C();
    sub_242C7E000(&qword_27ECF7E48, &qword_27ECF7E50, &unk_242F357D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD30);
  }

  return result;
}

unint64_t sub_242F0288C()
{
  result = qword_27ECFDD38;
  if (!qword_27ECFDD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDD00, &qword_242F57570);
    sub_242F02964(&qword_27ECFDD40, &qword_27ECFDD48, &qword_242F575A8, MEMORY[0x277CDF678]);
    sub_242C7E000(&qword_27ECF7E28, &qword_27ECF7E30, &unk_242F357C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD38);
  }

  return result;
}

uint64_t sub_242F02964(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_242F029FC(uint64_t a1)
{
  sub_242CA30EC();
  if (v1 <= 0x3F)
  {
    sub_242F02A9C(319, &qword_27ECF0CA0, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242F02A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_242F02AF0()
{
  result = qword_27ECFDD68;
  if (!qword_27ECFDD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDCE8, &qword_242F574E0);
    sub_242F02BA8();
    sub_242C7E000(&qword_27ECF7E38, &qword_27ECF7E40, &unk_242F48C50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD68);
  }

  return result;
}

unint64_t sub_242F02BA8()
{
  result = qword_27ECFDD70;
  if (!qword_27ECFDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDCE0, &qword_242F574D8);
    sub_242F02C60();
    sub_242C7E000(&qword_27ECF7E48, &qword_27ECF7E50, &unk_242F357D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD70);
  }

  return result;
}

unint64_t sub_242F02C60()
{
  result = qword_27ECFDD78;
  if (!qword_27ECFDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDCD8, &qword_242F574D0);
    sub_242F02CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD78);
  }

  return result;
}

unint64_t sub_242F02CEC()
{
  result = qword_27ECFDD80;
  if (!qword_27ECFDD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDCD0, &qword_242F574C8);
    sub_242C7E000(&qword_27ECFDD88, &qword_27ECFDCC8, &qword_242F574C0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDD80);
  }

  return result;
}

void sub_242F02E08(uint64_t a1)
{
  sub_242CA30EC();
  if (v1 <= 0x3F)
  {
    sub_242F04280();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_242F02EA0()
{
  result = qword_27ECFDDC8;
  if (!qword_27ECFDDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDDA8, &qword_242F576C0);
    sub_242F02F58();
    sub_242C7E000(&qword_27ECFDDE8, &qword_27ECFDDB0, &qword_242F576C8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDDC8);
  }

  return result;
}

unint64_t sub_242F02F58()
{
  result = qword_27ECFDDD0;
  if (!qword_27ECFDDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDDA0, &qword_242F57650);
    sub_242F02FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDDD0);
  }

  return result;
}

unint64_t sub_242F02FE4()
{
  result = qword_27ECFDDD8;
  if (!qword_27ECFDDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDD98, &qword_242F57648);
    sub_242F0309C();
    sub_242C7E000(&qword_27ECF0C08, &qword_27ECF0BD8, &qword_242F0D148, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDDD8);
  }

  return result;
}

unint64_t sub_242F0309C()
{
  result = qword_27ECFDDE0;
  if (!qword_27ECFDDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDD90, &qword_242F57640);
    sub_242F02714(&qword_27ECF0BF0, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_242C7E000(&qword_27ECFBE70, &qword_27ECFBE78, qword_242F576F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDDE0);
  }

  return result;
}

uint64_t sub_242F031A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_242F03208()
{
  result = qword_27ECFDE00;
  if (!qword_27ECFDE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFDDF8, &qword_242F57788);
    sub_242C7E000(&qword_27ECFDE08, &qword_27ECFDDF0, &qword_242F57750, MEMORY[0x277CDF3A0]);
    sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8, &unk_242F57790, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFDE00);
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x2821149E8](run);
  result.length = v2;
  result.location = v1;
  return result;
}