uint64_t sub_23B4A7DE0(char a1)
{
  result = 0x656C626973736F70;
  switch(a1)
  {
    case 1:
    case 26:
    case 27:
    case 42:
    case 66:
    case 67:
      return 0xD000000000000014;
    case 2:
    case 30:
    case 31:
    case 60:
    case 61:
    case 70:
    case 71:
      return 0xD000000000000013;
    case 3:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000018;
    case 5:
      return 0x656C7A7A697264;
    case 6:
    case 7:
      return 0x53656C7A7A697264;
    case 8:
    case 9:
    case 40:
    case 92:
      return 0xD000000000000010;
    case 10:
      return 1852399986;
    case 11:
      v3 = 1852399986;
      goto LABEL_56;
    case 12:
      v6 = 1852399986;
      goto LABEL_64;
    case 13:
      v4 = 1852399986;
      goto LABEL_29;
    case 14:
      v5 = 1852399986;
      goto LABEL_66;
    case 15:
      return 0x6961527976616568;
    case 16:
      return 0x6961527976616568;
    case 17:
      return 0x6961527976616568;
    case 18:
    case 19:
    case 20:
    case 21:
    case 58:
    case 59:
    case 81:
      return 0xD000000000000012;
    case 22:
      v7 = 1852399986;
      goto LABEL_38;
    case 23:
      return 0x6961527976616568;
    case 24:
    case 25:
    case 68:
    case 69:
      return 0xD000000000000017;
    case 28:
    case 29:
    case 83:
    case 84:
      return 0xD000000000000016;
    case 32:
    case 33:
    case 36:
    case 37:
      return 0xD00000000000001BLL;
    case 34:
      return 0xD000000000000018;
    case 35:
      return 0xD000000000000018;
    case 38:
      return 0xD000000000000018;
    case 39:
      return 0xD000000000000018;
    case 41:
    case 93:
    case 94:
      return 0xD000000000000015;
    case 43:
    case 44:
      return 0xD000000000000019;
    case 45:
    case 47:
      return 0x7365697272756C66;
    case 46:
      return 0x7365697272756C66;
    case 48:
    case 49:
    case 82:
    case 91:
      return 0xD000000000000011;
    case 50:
      return 2003791475;
    case 51:
      v3 = 2003791475;
      goto LABEL_56;
    case 52:
      v6 = 2003791475;
      goto LABEL_64;
    case 53:
      v4 = 2003791475;
      goto LABEL_29;
    case 54:
      v5 = 2003791475;
      goto LABEL_66;
    case 55:
      return 0x6F6E537976616568;
    case 56:
      return 0x6F6E537976616568;
    case 57:
      return 0x6F6E537976616568;
    case 62:
      v7 = 2003791475;
LABEL_38:
      result = v7 | 0x65486F5400000000;
      break;
    case 63:
      result = 0x6F6E537976616568;
      break;
    case 64:
      result = 0xD000000000000018;
      break;
    case 65:
      result = 0xD000000000000018;
      break;
    case 72:
    case 73:
    case 76:
    case 77:
      result = 0xD00000000000001CLL;
      break;
    case 74:
      result = 0xD000000000000018;
      break;
    case 75:
      result = 0xD000000000000018;
      break;
    case 78:
      result = 0xD000000000000018;
      break;
    case 79:
      result = 0xD000000000000018;
      break;
    case 85:
      result = 0x7465656C73;
      break;
    case 86:
    case 88:
      result = 0x6174537465656C73;
      break;
    case 87:
      result = 0x6F74537465656C73;
      break;
    case 89:
      result = 0x6F74537465656C73;
      break;
    case 95:
      result = 1818845544;
      break;
    case 96:
      v3 = 1818845544;
LABEL_56:
      result = v3 | 0x7261745300000000;
      break;
    case 97:
      v6 = 1818845544;
LABEL_64:
      result = v6 | 0x706F745300000000;
      break;
    case 98:
      v4 = 1818845544;
LABEL_29:
      result = v4 | 0x7261745300000000;
      break;
    case 99:
      v5 = 1818845544;
LABEL_66:
      result = v5 | 0x706F745300000000;
      break;
    case 100:
      result = 0x7261656C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23B4A85F4(uint64_t a1)
{
  v2 = sub_23B4AF9D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8630(uint64_t a1)
{
  v2 = sub_23B4AF9D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4A6024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4A869C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23B4A7DD8();
  *a1 = result;
  return result;
}

uint64_t sub_23B4A86C4(uint64_t a1)
{
  v2 = sub_23B4AF980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8700(uint64_t a1)
{
  v2 = sub_23B4AF980();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A873C(uint64_t a1)
{
  v2 = sub_23B4B1900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8778(uint64_t a1)
{
  v2 = sub_23B4B1900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A87B4(uint64_t a1)
{
  v2 = sub_23B4B18AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A87F0(uint64_t a1)
{
  v2 = sub_23B4B18AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A882C(uint64_t a1)
{
  v2 = sub_23B4B1804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8868(uint64_t a1)
{
  v2 = sub_23B4B1804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A88A4(uint64_t a1)
{
  v2 = sub_23B4B1858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A88E0(uint64_t a1)
{
  v2 = sub_23B4B1858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A891C(uint64_t a1)
{
  v2 = sub_23B4B17B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8958(uint64_t a1)
{
  v2 = sub_23B4B17B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8994(uint64_t a1)
{
  v2 = sub_23B4B1414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A89D0(uint64_t a1)
{
  v2 = sub_23B4B1414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8A0C(uint64_t a1)
{
  v2 = sub_23B4B12C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8A48(uint64_t a1)
{
  v2 = sub_23B4B12C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8A84(uint64_t a1)
{
  v2 = sub_23B4B1024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8AC0(uint64_t a1)
{
  v2 = sub_23B4B1024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8AFC(uint64_t a1)
{
  v2 = sub_23B4B1174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8B38(uint64_t a1)
{
  v2 = sub_23B4B1174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8B74(uint64_t a1)
{
  v2 = sub_23B4B0ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8BB0(uint64_t a1)
{
  v2 = sub_23B4B0ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8BEC(uint64_t a1)
{
  v2 = sub_23B4B0BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8C28(uint64_t a1)
{
  v2 = sub_23B4B0BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8C64(uint64_t a1)
{
  v2 = sub_23B4B0B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8CA0(uint64_t a1)
{
  v2 = sub_23B4B0B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8CDC(uint64_t a1)
{
  v2 = sub_23B4B0AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8D18(uint64_t a1)
{
  v2 = sub_23B4B0AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8D54(uint64_t a1)
{
  v2 = sub_23B4B0B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8D90(uint64_t a1)
{
  v2 = sub_23B4B0B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8DCC(uint64_t a1)
{
  v2 = sub_23B4B0A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8E08(uint64_t a1)
{
  v2 = sub_23B4B0A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8E44(uint64_t a1)
{
  v2 = sub_23B4B06F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8E80(uint64_t a1)
{
  v2 = sub_23B4B06F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8EBC(uint64_t a1)
{
  v2 = sub_23B4B05A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8EF8(uint64_t a1)
{
  v2 = sub_23B4B05A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8F34(uint64_t a1)
{
  v2 = sub_23B4B0304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8F70(uint64_t a1)
{
  v2 = sub_23B4B0304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A8FAC(uint64_t a1)
{
  v2 = sub_23B4B0454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A8FE8(uint64_t a1)
{
  v2 = sub_23B4B0454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9024(uint64_t a1)
{
  v2 = sub_23B4B01B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9060(uint64_t a1)
{
  v2 = sub_23B4B01B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A909C(uint64_t a1)
{
  v2 = sub_23B4AFB78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A90D8(uint64_t a1)
{
  v2 = sub_23B4AFB78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9114(uint64_t a1)
{
  v2 = sub_23B4AFB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9150(uint64_t a1)
{
  v2 = sub_23B4AFB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A918C(uint64_t a1)
{
  v2 = sub_23B4AFA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A91C8(uint64_t a1)
{
  v2 = sub_23B4AFA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9204(uint64_t a1)
{
  v2 = sub_23B4AFAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9240(uint64_t a1)
{
  v2 = sub_23B4AFAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A927C(uint64_t a1)
{
  v2 = sub_23B4AFA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A92B8(uint64_t a1)
{
  v2 = sub_23B4AFA28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A92F4(uint64_t a1)
{
  v2 = sub_23B4B15B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9330(uint64_t a1)
{
  v2 = sub_23B4B15B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A936C(uint64_t a1)
{
  v2 = sub_23B4B1564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A93A8(uint64_t a1)
{
  v2 = sub_23B4B1564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A93E4(uint64_t a1)
{
  v2 = sub_23B4B1468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9420(uint64_t a1)
{
  v2 = sub_23B4B1468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A945C(uint64_t a1)
{
  v2 = sub_23B4B1510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9498(uint64_t a1)
{
  v2 = sub_23B4B1510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A94D4(uint64_t a1)
{
  v2 = sub_23B4B14BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9510(uint64_t a1)
{
  v2 = sub_23B4B14BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A954C(uint64_t a1)
{
  v2 = sub_23B4B13C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9588(uint64_t a1)
{
  v2 = sub_23B4B13C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A95C4(uint64_t a1)
{
  v2 = sub_23B4B1270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9600(uint64_t a1)
{
  v2 = sub_23B4B1270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A963C(uint64_t a1)
{
  v2 = sub_23B4B0FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9678(uint64_t a1)
{
  v2 = sub_23B4B0FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A96B4(uint64_t a1)
{
  v2 = sub_23B4B1120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A96F0(uint64_t a1)
{
  v2 = sub_23B4B1120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A972C(uint64_t a1)
{
  v2 = sub_23B4B0E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9768(uint64_t a1)
{
  v2 = sub_23B4B0E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A97A4(uint64_t a1)
{
  v2 = sub_23B4B1318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A97E0(uint64_t a1)
{
  v2 = sub_23B4B1318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A981C(uint64_t a1)
{
  v2 = sub_23B4B11C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9858(uint64_t a1)
{
  v2 = sub_23B4B11C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9894(uint64_t a1)
{
  v2 = sub_23B4B0F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A98D0(uint64_t a1)
{
  v2 = sub_23B4B0F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A990C(uint64_t a1)
{
  v2 = sub_23B4B1078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9948(uint64_t a1)
{
  v2 = sub_23B4B1078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9984(uint64_t a1)
{
  v2 = sub_23B4B0DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A99C0(uint64_t a1)
{
  v2 = sub_23B4B0DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A99FC(uint64_t a1)
{
  v2 = sub_23B4B0898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9A38(uint64_t a1)
{
  v2 = sub_23B4B0898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9A74(uint64_t a1)
{
  v2 = sub_23B4B0844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9AB0(uint64_t a1)
{
  v2 = sub_23B4B0844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9AEC(uint64_t a1)
{
  v2 = sub_23B4B0748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9B28(uint64_t a1)
{
  v2 = sub_23B4B0748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9B64(uint64_t a1)
{
  v2 = sub_23B4B07F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9BA0(uint64_t a1)
{
  v2 = sub_23B4B07F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9BDC(uint64_t a1)
{
  v2 = sub_23B4B079C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9C18(uint64_t a1)
{
  v2 = sub_23B4B079C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9C54(uint64_t a1)
{
  v2 = sub_23B4B06A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9C90(uint64_t a1)
{
  v2 = sub_23B4B06A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9CCC(uint64_t a1)
{
  v2 = sub_23B4B0550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9D08(uint64_t a1)
{
  v2 = sub_23B4B0550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9D44(uint64_t a1)
{
  v2 = sub_23B4B02B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9D80(uint64_t a1)
{
  v2 = sub_23B4B02B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9DBC(uint64_t a1)
{
  v2 = sub_23B4B0400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9DF8(uint64_t a1)
{
  v2 = sub_23B4B0400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9E34(uint64_t a1)
{
  v2 = sub_23B4B0160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9E70(uint64_t a1)
{
  v2 = sub_23B4B0160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9EAC(uint64_t a1)
{
  v2 = sub_23B4B05F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9EE8(uint64_t a1)
{
  v2 = sub_23B4B05F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9F24(uint64_t a1)
{
  v2 = sub_23B4B04A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9F60(uint64_t a1)
{
  v2 = sub_23B4B04A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4A9F9C(uint64_t a1)
{
  v2 = sub_23B4B0208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4A9FD8(uint64_t a1)
{
  v2 = sub_23B4B0208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA014(uint64_t a1)
{
  v2 = sub_23B4B0358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA050(uint64_t a1)
{
  v2 = sub_23B4B0358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA08C(uint64_t a1)
{
  v2 = sub_23B4B00B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA0C8(uint64_t a1)
{
  v2 = sub_23B4B00B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA104(uint64_t a1)
{
  v2 = sub_23B4B1AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA140(uint64_t a1)
{
  v2 = sub_23B4B1AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA17C(uint64_t a1)
{
  v2 = sub_23B4B1A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA1B8(uint64_t a1)
{
  v2 = sub_23B4B1A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA1F4(uint64_t a1)
{
  v2 = sub_23B4B19A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA230(uint64_t a1)
{
  v2 = sub_23B4B19A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA26C(uint64_t a1)
{
  v2 = sub_23B4B19FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA2A8(uint64_t a1)
{
  v2 = sub_23B4B19FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA2E4(uint64_t a1)
{
  v2 = sub_23B4B1954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA320(uint64_t a1)
{
  v2 = sub_23B4B1954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA35C(uint64_t a1)
{
  v2 = sub_23B4B0D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA398(uint64_t a1)
{
  v2 = sub_23B4B0D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA3D4(uint64_t a1)
{
  v2 = sub_23B4B0D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA410(uint64_t a1)
{
  v2 = sub_23B4B0D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA44C(uint64_t a1)
{
  v2 = sub_23B4B0C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA488(uint64_t a1)
{
  v2 = sub_23B4B0C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA4C4(uint64_t a1)
{
  v2 = sub_23B4B0CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA500(uint64_t a1)
{
  v2 = sub_23B4B0CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA53C(uint64_t a1)
{
  v2 = sub_23B4B0C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA578(uint64_t a1)
{
  v2 = sub_23B4B0C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA5B4(uint64_t a1)
{
  v2 = sub_23B4AFD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA5F0(uint64_t a1)
{
  v2 = sub_23B4AFD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA62C(uint64_t a1)
{
  v2 = sub_23B4AFCC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA668(uint64_t a1)
{
  v2 = sub_23B4AFCC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA6A4(uint64_t a1)
{
  v2 = sub_23B4AFC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA6E0(uint64_t a1)
{
  v2 = sub_23B4AFC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA71C(uint64_t a1)
{
  v2 = sub_23B4AFC74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA758(uint64_t a1)
{
  v2 = sub_23B4AFC74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA794(uint64_t a1)
{
  v2 = sub_23B4AFBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA7D0(uint64_t a1)
{
  v2 = sub_23B4AFBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA80C(uint64_t a1)
{
  v2 = sub_23B4B0064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA848(uint64_t a1)
{
  v2 = sub_23B4B0064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA884(uint64_t a1)
{
  v2 = sub_23B4B0010();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA8C0(uint64_t a1)
{
  v2 = sub_23B4B0010();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA8FC(uint64_t a1)
{
  v2 = sub_23B4AFF68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA938(uint64_t a1)
{
  v2 = sub_23B4AFF68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA974(uint64_t a1)
{
  v2 = sub_23B4AFFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AA9B0(uint64_t a1)
{
  v2 = sub_23B4AFFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AA9EC(uint64_t a1)
{
  v2 = sub_23B4AFF14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAA28(uint64_t a1)
{
  v2 = sub_23B4AFF14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAA64(uint64_t a1)
{
  v2 = sub_23B4B175C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAAA0(uint64_t a1)
{
  v2 = sub_23B4B175C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAADC(uint64_t a1)
{
  v2 = sub_23B4B1708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAB18(uint64_t a1)
{
  v2 = sub_23B4B1708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAB54(uint64_t a1)
{
  v2 = sub_23B4B1660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAB90(uint64_t a1)
{
  v2 = sub_23B4B1660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AABCC(uint64_t a1)
{
  v2 = sub_23B4B16B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAC08(uint64_t a1)
{
  v2 = sub_23B4B16B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAC44(uint64_t a1)
{
  v2 = sub_23B4B160C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAC80(uint64_t a1)
{
  v2 = sub_23B4B160C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AACBC(uint64_t a1)
{
  v2 = sub_23B4B136C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AACF8(uint64_t a1)
{
  v2 = sub_23B4B136C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAD34(uint64_t a1)
{
  v2 = sub_23B4B121C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAD70(uint64_t a1)
{
  v2 = sub_23B4B121C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AADAC(uint64_t a1)
{
  v2 = sub_23B4B0F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AADE8(uint64_t a1)
{
  v2 = sub_23B4B0F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAE24(uint64_t a1)
{
  v2 = sub_23B4B10CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAE60(uint64_t a1)
{
  v2 = sub_23B4B10CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAE9C(uint64_t a1)
{
  v2 = sub_23B4B0E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAED8(uint64_t a1)
{
  v2 = sub_23B4B0E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAF14(uint64_t a1)
{
  v2 = sub_23B4AFEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAF50(uint64_t a1)
{
  v2 = sub_23B4AFEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AAF8C(uint64_t a1)
{
  v2 = sub_23B4AFE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AAFC8(uint64_t a1)
{
  v2 = sub_23B4AFE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB004(uint64_t a1)
{
  v2 = sub_23B4AFDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB040(uint64_t a1)
{
  v2 = sub_23B4AFDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB07C(uint64_t a1)
{
  v2 = sub_23B4AFE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB0B8(uint64_t a1)
{
  v2 = sub_23B4AFE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB0F4(uint64_t a1)
{
  v2 = sub_23B4AFD70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB130(uint64_t a1)
{
  v2 = sub_23B4AFD70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB16C(uint64_t a1)
{
  v2 = sub_23B4B0A3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB1A8(uint64_t a1)
{
  v2 = sub_23B4B0A3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB1E4(uint64_t a1)
{
  v2 = sub_23B4B09E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB220(uint64_t a1)
{
  v2 = sub_23B4B09E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB25C(uint64_t a1)
{
  v2 = sub_23B4B0940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB298(uint64_t a1)
{
  v2 = sub_23B4B0940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB2D4(uint64_t a1)
{
  v2 = sub_23B4B0994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB310(uint64_t a1)
{
  v2 = sub_23B4B0994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB34C(uint64_t a1)
{
  v2 = sub_23B4B08EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB388(uint64_t a1)
{
  v2 = sub_23B4B08EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB3C4(uint64_t a1)
{
  v2 = sub_23B4B064C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB400(uint64_t a1)
{
  v2 = sub_23B4B064C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB43C(uint64_t a1)
{
  v2 = sub_23B4B04FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB478(uint64_t a1)
{
  v2 = sub_23B4B04FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB4B4(uint64_t a1)
{
  v2 = sub_23B4B025C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB4F0(uint64_t a1)
{
  v2 = sub_23B4B025C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB52C(uint64_t a1)
{
  v2 = sub_23B4B03AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB568(uint64_t a1)
{
  v2 = sub_23B4B03AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B4AB5A4(uint64_t a1)
{
  v2 = sub_23B4B010C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4AB5E0(uint64_t a1)
{
  v2 = sub_23B4B010C();

  return MEMORY[0x2821FE720](a1, v2);
}

void PrecipitationShift.Kind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_107();
  a22 = v24;
  a23 = v25;
  v26 = v23;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134330, &qword_23B51DCD8);
  OUTLINED_FUNCTION_5();
  v552 = v30;
  v553 = v29;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  v551 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134338, &qword_23B51DCE0);
  OUTLINED_FUNCTION_5();
  v549 = v34;
  v550 = v33;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_52();
  v548 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134340, &qword_23B51DCE8);
  OUTLINED_FUNCTION_5();
  v546 = v38;
  v547 = v37;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_52();
  v545 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134348, &qword_23B51DCF0);
  OUTLINED_FUNCTION_5();
  v543 = v42;
  v544 = v41;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  v542 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134350, &qword_23B51DCF8);
  OUTLINED_FUNCTION_5();
  v540 = v46;
  v541 = v45;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  v539 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134358, &qword_23B51DD00);
  OUTLINED_FUNCTION_5();
  v537 = v50;
  v538 = v49;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  v536 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134360, &qword_23B51DD08);
  OUTLINED_FUNCTION_2_0(v53, &a21);
  v535[0] = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134368, &qword_23B51DD10);
  OUTLINED_FUNCTION_2_0(v57, &a18);
  v534[0] = v58;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134370, &qword_23B51DD18);
  OUTLINED_FUNCTION_2_0(v61, &a15);
  v533[0] = v62;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134378, &qword_23B51DD20);
  OUTLINED_FUNCTION_2_0(v65, &a9);
  v532[0] = v66;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134380, &qword_23B51DD28);
  OUTLINED_FUNCTION_2_0(v69, &v554);
  v531[0] = v70;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134388, &qword_23B51DD30);
  OUTLINED_FUNCTION_2_0(v73, &v552);
  v530[0] = v74;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134390, &qword_23B51DD38);
  OUTLINED_FUNCTION_2_0(v77, &v549);
  v529[0] = v78;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134398, &qword_23B51DD40);
  OUTLINED_FUNCTION_2_0(v81, &v546);
  v528[0] = v82;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343A0, &qword_23B51DD48);
  OUTLINED_FUNCTION_2_0(v85, &v543);
  v527[0] = v86;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343A8, &qword_23B51DD50);
  OUTLINED_FUNCTION_2_0(v89, &v540);
  v526[0] = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343B0, &qword_23B51DD58);
  OUTLINED_FUNCTION_2_0(v93, &v537);
  v525[0] = v94;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343B8, &qword_23B51DD60);
  OUTLINED_FUNCTION_2_0(v97, v535);
  v524[0] = v98;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343C0, &qword_23B51DD68);
  OUTLINED_FUNCTION_2_0(v101, v534);
  v523[0] = v102;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343C8, &qword_23B51DD70);
  OUTLINED_FUNCTION_2_0(v105, v533);
  v522[0] = v106;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343D0, &qword_23B51DD78);
  OUTLINED_FUNCTION_2_0(v109, v532);
  v521[0] = v110;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343D8, &qword_23B51DD80);
  OUTLINED_FUNCTION_2_0(v113, v531);
  v520[0] = v114;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343E0, &qword_23B51DD88);
  OUTLINED_FUNCTION_2_0(v117, v530);
  v519[0] = v118;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343E8, &qword_23B51DD90);
  OUTLINED_FUNCTION_2_0(v121, v529);
  v518[0] = v122;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343F0, &qword_23B51DD98);
  OUTLINED_FUNCTION_2_0(v125, v528);
  v517[0] = v126;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1343F8, &qword_23B51DDA0);
  OUTLINED_FUNCTION_2_0(v129, v527);
  v516[0] = v130;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134400, &qword_23B51DDA8);
  OUTLINED_FUNCTION_2_0(v133, v526);
  v515[0] = v134;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134408, &qword_23B51DDB0);
  OUTLINED_FUNCTION_2_0(v137, v525);
  v514[0] = v138;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134410, &qword_23B51DDB8);
  OUTLINED_FUNCTION_2_0(v141, v524);
  v513[0] = v142;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134418, &qword_23B51DDC0);
  OUTLINED_FUNCTION_2_0(v145, v523);
  v512[0] = v146;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134420, &qword_23B51DDC8);
  OUTLINED_FUNCTION_2_0(v149, v522);
  v511[0] = v150;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134428, &qword_23B51DDD0);
  OUTLINED_FUNCTION_2_0(v153, v521);
  v510[0] = v154;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134430, &qword_23B51DDD8);
  OUTLINED_FUNCTION_2_0(v157, v520);
  v509[0] = v158;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134438, &qword_23B51DDE0);
  OUTLINED_FUNCTION_2_0(v161, v519);
  v508[0] = v162;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134440, &qword_23B51DDE8);
  OUTLINED_FUNCTION_2_0(v165, v518);
  v507[0] = v166;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134448, &qword_23B51DDF0);
  OUTLINED_FUNCTION_2_0(v169, v517);
  v506[0] = v170;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134450, &qword_23B51DDF8);
  OUTLINED_FUNCTION_2_0(v173, v516);
  v505[0] = v174;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134458, &qword_23B51DE00);
  OUTLINED_FUNCTION_2_0(v177, v515);
  v504[0] = v178;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134460, &qword_23B51DE08);
  OUTLINED_FUNCTION_2_0(v181, v514);
  v503[0] = v182;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134468, &qword_23B51DE10);
  OUTLINED_FUNCTION_2_0(v185, v513);
  v502[0] = v186;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134470, &qword_23B51DE18);
  OUTLINED_FUNCTION_2_0(v189, v512);
  v501[0] = v190;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134478, &qword_23B51DE20);
  OUTLINED_FUNCTION_2_0(v193, v511);
  v500[0] = v194;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134480, &qword_23B51DE28);
  OUTLINED_FUNCTION_2_0(v197, v510);
  v499[0] = v198;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v200);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134488, &qword_23B51DE30);
  OUTLINED_FUNCTION_2_0(v201, v509);
  v498[0] = v202;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134490, &qword_23B51DE38);
  OUTLINED_FUNCTION_2_0(v205, v508);
  v497[0] = v206;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v208);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134498, &qword_23B51DE40);
  OUTLINED_FUNCTION_2_0(v209, v507);
  v496[0] = v210;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v212);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344A0, &qword_23B51DE48);
  OUTLINED_FUNCTION_2_0(v213, v506);
  v495[0] = v214;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344A8, &qword_23B51DE50);
  OUTLINED_FUNCTION_2_0(v217, v505);
  v494[0] = v218;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v220);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344B0, &qword_23B51DE58);
  OUTLINED_FUNCTION_2_0(v221, v504);
  v493[0] = v222;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v224);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344B8, &qword_23B51DE60);
  OUTLINED_FUNCTION_2_0(v225, v503);
  v492[0] = v226;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v228);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344C0, &qword_23B51DE68);
  OUTLINED_FUNCTION_2_0(v229, v502);
  v491[0] = v230;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v232);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344C8, &qword_23B51DE70);
  OUTLINED_FUNCTION_2_0(v233, v501);
  v490[0] = v234;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v236);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344D0, &qword_23B51DE78);
  OUTLINED_FUNCTION_2_0(v237, v500);
  v489[0] = v238;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v240);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344D8, &qword_23B51DE80);
  OUTLINED_FUNCTION_2_0(v241, v499);
  v488[0] = v242;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v244);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344E0, &qword_23B51DE88);
  OUTLINED_FUNCTION_2_0(v245, v498);
  v487[0] = v246;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v248);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344E8, &qword_23B51DE90);
  OUTLINED_FUNCTION_2_0(v249, v497);
  v486[0] = v250;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v252);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344F0, &qword_23B51DE98);
  OUTLINED_FUNCTION_2_0(v253, v496);
  v485[0] = v254;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v256);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1344F8, &qword_23B51DEA0);
  OUTLINED_FUNCTION_2_0(v257, v495);
  v484[0] = v258;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v260);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134500, &qword_23B51DEA8);
  OUTLINED_FUNCTION_2_0(v261, v494);
  v483[0] = v262;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v264);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134508, &qword_23B51DEB0);
  OUTLINED_FUNCTION_2_0(v265, v493);
  v482[0] = v266;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v268);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134510, &qword_23B51DEB8);
  OUTLINED_FUNCTION_2_0(v269, v492);
  v481[0] = v270;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v272);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134518, &qword_23B51DEC0);
  OUTLINED_FUNCTION_2_0(v273, v491);
  v480[0] = v274;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v275);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v276);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134520, &qword_23B51DEC8);
  OUTLINED_FUNCTION_2_0(v277, v490);
  v479[0] = v278;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v280);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134528, &qword_23B51DED0);
  OUTLINED_FUNCTION_2_0(v281, v489);
  v478[0] = v282;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v284);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134530, &qword_23B51DED8);
  OUTLINED_FUNCTION_2_0(v285, v488);
  v477[0] = v286;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v287);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v288);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134538, &qword_23B51DEE0);
  OUTLINED_FUNCTION_2_0(v289, v487);
  v476[0] = v290;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v292);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134540, &qword_23B51DEE8);
  OUTLINED_FUNCTION_2_0(v293, v486);
  v475[0] = v294;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v296);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134548, &qword_23B51DEF0);
  OUTLINED_FUNCTION_2_0(v297, v485);
  v474[0] = v298;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v300);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134550, &qword_23B51DEF8);
  OUTLINED_FUNCTION_2_0(v301, v484);
  v473[0] = v302;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v304);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134558, &qword_23B51DF00);
  OUTLINED_FUNCTION_2_0(v305, v483);
  v472[0] = v306;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v308);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134560, &qword_23B51DF08);
  OUTLINED_FUNCTION_2_0(v309, v482);
  v471[0] = v310;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v311);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v312);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134568, &qword_23B51DF10);
  OUTLINED_FUNCTION_2_0(v313, v481);
  v470[0] = v314;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v315);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v316);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134570, &qword_23B51DF18);
  OUTLINED_FUNCTION_2_0(v317, v480);
  v469[0] = v318;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v320);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134578, &qword_23B51DF20);
  OUTLINED_FUNCTION_2_0(v321, v479);
  v468[0] = v322;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v323);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v324);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134580, &qword_23B51DF28);
  OUTLINED_FUNCTION_2_0(v325, v478);
  v467[0] = v326;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v327);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v328);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134588, &qword_23B51DF30);
  OUTLINED_FUNCTION_2_0(v329, v477);
  v466[0] = v330;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v331);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v332);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134590, &qword_23B51DF38);
  OUTLINED_FUNCTION_2_0(v333, v476);
  v465[0] = v334;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v335);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v336);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134598, &qword_23B51DF40);
  OUTLINED_FUNCTION_2_0(v337, v475);
  v464[0] = v338;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v340);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345A0, &qword_23B51DF48);
  OUTLINED_FUNCTION_2_0(v341, v474);
  v463[0] = v342;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v344);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345A8, &qword_23B51DF50);
  OUTLINED_FUNCTION_2_0(v345, v473);
  v462[0] = v346;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v347);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v348);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345B0, &qword_23B51DF58);
  OUTLINED_FUNCTION_2_0(v349, v472);
  v461[0] = v350;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v351);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v352);
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345B8, &qword_23B51DF60);
  OUTLINED_FUNCTION_2_0(v353, v471);
  v460[0] = v354;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v355);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v356);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345C0, &qword_23B51DF68);
  OUTLINED_FUNCTION_2_0(v357, v470);
  v459[0] = v358;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v359);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v360);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345C8, &qword_23B51DF70);
  OUTLINED_FUNCTION_2_0(v361, v469);
  v458[0] = v362;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v363);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v364);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345D0, &qword_23B51DF78);
  OUTLINED_FUNCTION_2_0(v365, v468);
  v457[0] = v366;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v367);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v368);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345D8, &qword_23B51DF80);
  OUTLINED_FUNCTION_2_0(v369, v467);
  v456[0] = v370;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v371);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v372);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345E0, &qword_23B51DF88);
  OUTLINED_FUNCTION_2_0(v373, v466);
  v455[0] = v374;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v376);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345E8, &qword_23B51DF90);
  OUTLINED_FUNCTION_2_0(v377, v465);
  v454[0] = v378;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v379);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v380);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345F0, &qword_23B51DF98);
  OUTLINED_FUNCTION_2_0(v381, v464);
  v453[0] = v382;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v383);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v384);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1345F8, &qword_23B51DFA0);
  OUTLINED_FUNCTION_2_0(v385, v463);
  v452[31] = v386;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v388);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134600, &qword_23B51DFA8);
  OUTLINED_FUNCTION_2_0(v389, v462);
  v452[28] = v390;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v391);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v392);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134608, &qword_23B51DFB0);
  OUTLINED_FUNCTION_2_0(v393, v461);
  v452[25] = v394;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v395);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v396);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134610, &qword_23B51DFB8);
  OUTLINED_FUNCTION_2_0(v397, v460);
  v452[22] = v398;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v399);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v400);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134618, &qword_23B51DFC0);
  OUTLINED_FUNCTION_2_0(v401, v459);
  v452[19] = v402;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v403);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v404);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134620, &qword_23B51DFC8);
  OUTLINED_FUNCTION_2_0(v405, v458);
  v452[16] = v406;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v407);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v408);
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134628, &qword_23B51DFD0);
  OUTLINED_FUNCTION_2_0(v409, v457);
  v452[13] = v410;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v412);
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134630, &qword_23B51DFD8);
  OUTLINED_FUNCTION_2_0(v413, v456);
  v452[10] = v414;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v416);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134638, &qword_23B51DFE0);
  OUTLINED_FUNCTION_2_0(v417, v455);
  v452[7] = v418;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v419);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v420);
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134640, &qword_23B51DFE8);
  OUTLINED_FUNCTION_2_0(v421, v454);
  v452[4] = v422;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v423);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v424);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134648, &qword_23B51DFF0);
  OUTLINED_FUNCTION_2_0(v425, v453);
  v452[1] = v426;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v427);
  v429 = v452 - v428;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134650, &qword_23B51DFF8);
  OUTLINED_FUNCTION_5();
  v452[0] = v431;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v432);
  v434 = v452 - v433;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134658, &qword_23B51E000);
  OUTLINED_FUNCTION_5();
  v436 = v435;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v437);
  v439 = v452 - v438;
  v440 = *v26;
  v441 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_23B4AF980();
  v554 = v439;
  sub_23B50D974();
  v442 = (v436 + 8);
  switch(v440)
  {
    case 1:
      a13 = 1;
      sub_23B4B1A50();
      v441 = v554;
      v434 = v555;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1();
      v446 = v429;
      v448 = v453;
      goto LABEL_101;
    case 2:
      a13 = 2;
      sub_23B4B19FC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v454;
      goto LABEL_101;
    case 3:
      a13 = 3;
      sub_23B4B19A8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v455;
      goto LABEL_101;
    case 4:
      a13 = 4;
      sub_23B4B1954();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v456;
      goto LABEL_101;
    case 5:
      a13 = 5;
      sub_23B4B1900();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v457;
      goto LABEL_101;
    case 6:
      a13 = 6;
      sub_23B4B18AC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v458;
      goto LABEL_101;
    case 7:
      a13 = 7;
      sub_23B4B1858();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v459;
      goto LABEL_101;
    case 8:
      a13 = 8;
      sub_23B4B1804();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v460;
      goto LABEL_101;
    case 9:
      a13 = 9;
      sub_23B4B17B0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v461;
      goto LABEL_101;
    case 10:
      a13 = 10;
      sub_23B4B175C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v462;
      goto LABEL_101;
    case 11:
      a13 = 11;
      sub_23B4B1708();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v463;
      goto LABEL_101;
    case 12:
      a13 = 12;
      sub_23B4B16B4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v464;
      goto LABEL_101;
    case 13:
      a13 = 13;
      sub_23B4B1660();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v465;
      goto LABEL_101;
    case 14:
      a13 = 14;
      sub_23B4B160C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v466;
      goto LABEL_101;
    case 15:
      a13 = 15;
      sub_23B4B15B8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v467;
      goto LABEL_101;
    case 16:
      a13 = 16;
      sub_23B4B1564();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v468;
      goto LABEL_101;
    case 17:
      a13 = 17;
      sub_23B4B1510();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v469;
      goto LABEL_101;
    case 18:
      a13 = 18;
      sub_23B4B14BC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v470;
      goto LABEL_101;
    case 19:
      a13 = 19;
      sub_23B4B1468();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v471;
      goto LABEL_101;
    case 20:
      a13 = 20;
      sub_23B4B1414();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v472;
      goto LABEL_101;
    case 21:
      a13 = 21;
      sub_23B4B13C0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v473;
      goto LABEL_101;
    case 22:
      a13 = 22;
      sub_23B4B136C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainToHeavyRainCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v474;
      goto LABEL_101;
    case 23:
      a13 = 23;
      sub_23B4B1318();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToRainCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v475;
      goto LABEL_101;
    case 24:
      a13 = 24;
      sub_23B4B12C4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v476;
      goto LABEL_101;
    case 25:
      a13 = 25;
      sub_23B4B1270();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v477;
      goto LABEL_101;
    case 26:
      a13 = 26;
      sub_23B4B121C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v478;
      goto LABEL_101;
    case 27:
      a13 = 27;
      sub_23B4B11C8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v479;
      goto LABEL_101;
    case 28:
      a13 = 28;
      sub_23B4B1174();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v480;
      goto LABEL_101;
    case 29:
      a13 = 29;
      sub_23B4B1120();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v481;
      goto LABEL_101;
    case 30:
      a13 = 30;
      sub_23B4B10CC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v482;
      goto LABEL_101;
    case 31:
      a13 = 31;
      sub_23B4B1078();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v483;
      goto LABEL_101;
    case 32:
      a13 = 32;
      sub_23B4B1024();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v484;
      goto LABEL_101;
    case 33:
      a13 = 33;
      sub_23B4B0FD0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v485;
      goto LABEL_101;
    case 34:
      a13 = 34;
      sub_23B4B0F7C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v486;
      goto LABEL_101;
    case 35:
      a13 = 35;
      sub_23B4B0F28();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v487;
      goto LABEL_101;
    case 36:
      a13 = 36;
      sub_23B4B0ED4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v488;
      goto LABEL_101;
    case 37:
      a13 = 37;
      sub_23B4B0E80();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v489;
      goto LABEL_101;
    case 38:
      a13 = 38;
      sub_23B4B0E2C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v490;
      goto LABEL_101;
    case 39:
      a13 = 39;
      sub_23B4B0DD8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v491;
      goto LABEL_101;
    case 40:
      a13 = 40;
      sub_23B4B0D84();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleFlurriesCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v492;
      goto LABEL_101;
    case 41:
      a13 = 41;
      sub_23B4B0D30();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v493;
      goto LABEL_101;
    case 42:
      a13 = 42;
      sub_23B4B0CDC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v494;
      goto LABEL_101;
    case 43:
      a13 = 43;
      sub_23B4B0C88();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v495;
      goto LABEL_101;
    case 44:
      a13 = 44;
      sub_23B4B0C34();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v496;
      goto LABEL_101;
    case 45:
      a13 = 45;
      sub_23B4B0BE0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v497;
      goto LABEL_101;
    case 46:
      a13 = 46;
      sub_23B4B0B8C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v498;
      goto LABEL_101;
    case 47:
      a13 = 47;
      sub_23B4B0B38();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v499;
      goto LABEL_101;
    case 48:
      a13 = 48;
      sub_23B4B0AE4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v500;
      goto LABEL_101;
    case 49:
      a13 = 49;
      sub_23B4B0A90();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v501;
      goto LABEL_101;
    case 50:
      a13 = 50;
      sub_23B4B0A3C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v502;
      goto LABEL_101;
    case 51:
      a13 = 51;
      sub_23B4B09E8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v503;
      goto LABEL_101;
    case 52:
      a13 = 52;
      sub_23B4B0994();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v504;
      goto LABEL_101;
    case 53:
      a13 = 53;
      sub_23B4B0940();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v505;
      goto LABEL_101;
    case 54:
      a13 = 54;
      sub_23B4B08EC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v506;
      goto LABEL_101;
    case 55:
      a13 = 55;
      sub_23B4B0898();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v507;
      goto LABEL_101;
    case 56:
      a13 = 56;
      sub_23B4B0844();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v508;
      goto LABEL_101;
    case 57:
      a13 = 57;
      sub_23B4B07F0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v509;
      goto LABEL_101;
    case 58:
      a13 = 58;
      sub_23B4B079C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v510;
      goto LABEL_101;
    case 59:
      a13 = 59;
      sub_23B4B0748();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v511;
      goto LABEL_101;
    case 60:
      a13 = 60;
      sub_23B4B06F4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v512;
      goto LABEL_101;
    case 61:
      a13 = 61;
      sub_23B4B06A0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v513;
      goto LABEL_101;
    case 62:
      a13 = 62;
      sub_23B4B064C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v514;
      goto LABEL_101;
    case 63:
      a13 = 63;
      sub_23B4B05F8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v515;
      goto LABEL_101;
    case 64:
      a13 = 64;
      sub_23B4B05A4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v516;
      goto LABEL_101;
    case 65:
      a13 = 65;
      sub_23B4B0550();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v517;
      goto LABEL_101;
    case 66:
      a13 = 66;
      sub_23B4B04FC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v518;
      goto LABEL_101;
    case 67:
      a13 = 67;
      sub_23B4B04A8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v519;
      goto LABEL_101;
    case 68:
      a13 = 68;
      sub_23B4B0454();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v520;
      goto LABEL_101;
    case 69:
      a13 = 69;
      sub_23B4B0400();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v521;
      goto LABEL_101;
    case 70:
      a13 = 70;
      sub_23B4B03AC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v522;
      goto LABEL_101;
    case 71:
      a13 = 71;
      sub_23B4B0358();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v523;
      goto LABEL_101;
    case 72:
      a13 = 72;
      sub_23B4B0304();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v524;
      goto LABEL_101;
    case 73:
      a13 = 73;
      sub_23B4B02B0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v525;
      goto LABEL_101;
    case 74:
      a13 = 74;
      sub_23B4B025C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v526;
      goto LABEL_101;
    case 75:
      a13 = 75;
      sub_23B4B0208();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v527;
      goto LABEL_101;
    case 76:
      a13 = 76;
      sub_23B4B01B4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v528;
      goto LABEL_101;
    case 77:
      a13 = 77;
      sub_23B4B0160();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v529;
      goto LABEL_101;
    case 78:
      a13 = 78;
      sub_23B4B010C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v530;
      goto LABEL_101;
    case 79:
      a13 = 79;
      sub_23B4B00B8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v531;
      goto LABEL_101;
    case 80:
      a13 = 80;
      sub_23B4B0064();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleSleetCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v532;
      goto LABEL_101;
    case 81:
      a13 = 81;
      sub_23B4B0010();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleSleetStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v533;
      goto LABEL_101;
    case 82:
      a13 = 82;
      sub_23B4AFFBC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleSleetStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v534;
      goto LABEL_101;
    case 83:
      a13 = 83;
      sub_23B4AFF68();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleSleetStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = v535;
      goto LABEL_101;
    case 84:
      a13 = 84;
      sub_23B4AFF14();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleSleetStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v537;
      goto LABEL_101;
    case 85:
      a13 = 85;
      sub_23B4AFEC0();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SleetCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v540;
      goto LABEL_101;
    case 86:
      a13 = 86;
      sub_23B4AFE6C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SleetStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v543;
      goto LABEL_101;
    case 87:
      a13 = 87;
      sub_23B4AFE18();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SleetStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v546;
      goto LABEL_101;
    case 88:
      a13 = 88;
      sub_23B4AFDC4();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SleetStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v549;
      goto LABEL_101;
    case 89:
      a13 = 89;
      sub_23B4AFD70();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.SleetStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v552;
      goto LABEL_101;
    case 90:
      a13 = 90;
      sub_23B4AFD1C();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleHailCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &v554;
      goto LABEL_101;
    case 91:
      a13 = 91;
      sub_23B4AFCC8();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleHailStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &a9;
      goto LABEL_101;
    case 92:
      a13 = 92;
      sub_23B4AFC74();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleHailStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &a15;
      goto LABEL_101;
    case 93:
      a13 = 93;
      sub_23B4AFC20();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleHailStartStopCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &a18;
      goto LABEL_101;
    case 94:
      a13 = 94;
      sub_23B4AFBCC();
      OUTLINED_FUNCTION_6_24(&type metadata for PrecipitationShift.Kind.PossibleHailStopStartCodingKeys, &a13);
      v446 = OUTLINED_FUNCTION_8_26();
      v448 = &a21;
LABEL_101:
      v447(v446, *(v448 - 32));
      goto LABEL_102;
    case 95:
      a13 = 95;
      sub_23B4AFB78();
      v449 = v536;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.HailCodingKeys, &a13);
      v451 = v537;
      v450 = v538;
      goto LABEL_106;
    case 96:
      a13 = 96;
      sub_23B4AFB24();
      v449 = v539;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.HailStartCodingKeys, &a13);
      v451 = v540;
      v450 = v541;
      goto LABEL_106;
    case 97:
      a13 = 97;
      sub_23B4AFAD0();
      v449 = v542;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.HailStopCodingKeys, &a13);
      v451 = v543;
      v450 = v544;
      goto LABEL_106;
    case 98:
      a13 = 98;
      sub_23B4AFA7C();
      v449 = v545;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.HailStartStopCodingKeys, &a13);
      v451 = v546;
      v450 = v547;
      goto LABEL_106;
    case 99:
      a13 = 99;
      sub_23B4AFA28();
      v449 = v548;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.HailStopStartCodingKeys, &a13);
      v451 = v549;
      v450 = v550;
      goto LABEL_106;
    case 100:
      a13 = 100;
      sub_23B4AF9D4();
      v449 = v551;
      OUTLINED_FUNCTION_9_29(&type metadata for PrecipitationShift.Kind.ClearCodingKeys, &a13);
      v451 = v552;
      v450 = v553;
LABEL_106:
      (*(v451 + 8))(v449, v450);
LABEL_102:
      (*v442)(v441, v434);
      break;
    default:
      a13 = 0;
      sub_23B4B1AA4();
      v443 = v554;
      v444 = v555;
      sub_23B50D764();
      OUTLINED_FUNCTION_56_1();
      v445(v434, v430);
      (*v442)(v443, v444);
      break;
  }

  OUTLINED_FUNCTION_105();
}

unint64_t sub_23B4AF980()
{
  result = qword_27E134660;
  if (!qword_27E134660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134660);
  }

  return result;
}

unint64_t sub_23B4AF9D4()
{
  result = qword_27E134668;
  if (!qword_27E134668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134668);
  }

  return result;
}

unint64_t sub_23B4AFA28()
{
  result = qword_27E134670;
  if (!qword_27E134670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134670);
  }

  return result;
}

unint64_t sub_23B4AFA7C()
{
  result = qword_27E134678;
  if (!qword_27E134678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134678);
  }

  return result;
}

unint64_t sub_23B4AFAD0()
{
  result = qword_27E134680;
  if (!qword_27E134680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134680);
  }

  return result;
}

unint64_t sub_23B4AFB24()
{
  result = qword_27E134688;
  if (!qword_27E134688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134688);
  }

  return result;
}

unint64_t sub_23B4AFB78()
{
  result = qword_27E134690;
  if (!qword_27E134690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134690);
  }

  return result;
}

unint64_t sub_23B4AFBCC()
{
  result = qword_27E134698;
  if (!qword_27E134698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134698);
  }

  return result;
}

unint64_t sub_23B4AFC20()
{
  result = qword_27E1346A0;
  if (!qword_27E1346A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346A0);
  }

  return result;
}

unint64_t sub_23B4AFC74()
{
  result = qword_27E1346A8;
  if (!qword_27E1346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346A8);
  }

  return result;
}

unint64_t sub_23B4AFCC8()
{
  result = qword_27E1346B0;
  if (!qword_27E1346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346B0);
  }

  return result;
}

unint64_t sub_23B4AFD1C()
{
  result = qword_27E1346B8;
  if (!qword_27E1346B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346B8);
  }

  return result;
}

unint64_t sub_23B4AFD70()
{
  result = qword_27E1346C0;
  if (!qword_27E1346C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346C0);
  }

  return result;
}

unint64_t sub_23B4AFDC4()
{
  result = qword_27E1346C8;
  if (!qword_27E1346C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346C8);
  }

  return result;
}

unint64_t sub_23B4AFE18()
{
  result = qword_27E1346D0;
  if (!qword_27E1346D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346D0);
  }

  return result;
}

unint64_t sub_23B4AFE6C()
{
  result = qword_27E1346D8;
  if (!qword_27E1346D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346D8);
  }

  return result;
}

unint64_t sub_23B4AFEC0()
{
  result = qword_27E1346E0;
  if (!qword_27E1346E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346E0);
  }

  return result;
}

unint64_t sub_23B4AFF14()
{
  result = qword_27E1346E8;
  if (!qword_27E1346E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346E8);
  }

  return result;
}

unint64_t sub_23B4AFF68()
{
  result = qword_27E1346F0;
  if (!qword_27E1346F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346F0);
  }

  return result;
}

unint64_t sub_23B4AFFBC()
{
  result = qword_27E1346F8;
  if (!qword_27E1346F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1346F8);
  }

  return result;
}

unint64_t sub_23B4B0010()
{
  result = qword_27E134700;
  if (!qword_27E134700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134700);
  }

  return result;
}

unint64_t sub_23B4B0064()
{
  result = qword_27E134708;
  if (!qword_27E134708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134708);
  }

  return result;
}

unint64_t sub_23B4B00B8()
{
  result = qword_27E134710;
  if (!qword_27E134710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134710);
  }

  return result;
}

unint64_t sub_23B4B010C()
{
  result = qword_27E134718;
  if (!qword_27E134718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134718);
  }

  return result;
}

unint64_t sub_23B4B0160()
{
  result = qword_27E134720;
  if (!qword_27E134720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134720);
  }

  return result;
}

unint64_t sub_23B4B01B4()
{
  result = qword_27E134728;
  if (!qword_27E134728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134728);
  }

  return result;
}

unint64_t sub_23B4B0208()
{
  result = qword_27E134730;
  if (!qword_27E134730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134730);
  }

  return result;
}

unint64_t sub_23B4B025C()
{
  result = qword_27E134738;
  if (!qword_27E134738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134738);
  }

  return result;
}

unint64_t sub_23B4B02B0()
{
  result = qword_27E134740;
  if (!qword_27E134740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134740);
  }

  return result;
}

unint64_t sub_23B4B0304()
{
  result = qword_27E134748;
  if (!qword_27E134748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134748);
  }

  return result;
}

unint64_t sub_23B4B0358()
{
  result = qword_27E134750;
  if (!qword_27E134750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134750);
  }

  return result;
}

unint64_t sub_23B4B03AC()
{
  result = qword_27E134758;
  if (!qword_27E134758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134758);
  }

  return result;
}

unint64_t sub_23B4B0400()
{
  result = qword_27E134760;
  if (!qword_27E134760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134760);
  }

  return result;
}

unint64_t sub_23B4B0454()
{
  result = qword_27E134768;
  if (!qword_27E134768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134768);
  }

  return result;
}

unint64_t sub_23B4B04A8()
{
  result = qword_27E134770;
  if (!qword_27E134770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134770);
  }

  return result;
}

unint64_t sub_23B4B04FC()
{
  result = qword_27E134778;
  if (!qword_27E134778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134778);
  }

  return result;
}

unint64_t sub_23B4B0550()
{
  result = qword_27E134780;
  if (!qword_27E134780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134780);
  }

  return result;
}

unint64_t sub_23B4B05A4()
{
  result = qword_27E134788;
  if (!qword_27E134788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134788);
  }

  return result;
}

unint64_t sub_23B4B05F8()
{
  result = qword_27E134790;
  if (!qword_27E134790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134790);
  }

  return result;
}

unint64_t sub_23B4B064C()
{
  result = qword_27E134798;
  if (!qword_27E134798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134798);
  }

  return result;
}

unint64_t sub_23B4B06A0()
{
  result = qword_27E1347A0;
  if (!qword_27E1347A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347A0);
  }

  return result;
}

unint64_t sub_23B4B06F4()
{
  result = qword_27E1347A8;
  if (!qword_27E1347A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347A8);
  }

  return result;
}

unint64_t sub_23B4B0748()
{
  result = qword_27E1347B0;
  if (!qword_27E1347B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347B0);
  }

  return result;
}

unint64_t sub_23B4B079C()
{
  result = qword_27E1347B8;
  if (!qword_27E1347B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347B8);
  }

  return result;
}

unint64_t sub_23B4B07F0()
{
  result = qword_27E1347C0;
  if (!qword_27E1347C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347C0);
  }

  return result;
}

unint64_t sub_23B4B0844()
{
  result = qword_27E1347C8;
  if (!qword_27E1347C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347C8);
  }

  return result;
}

unint64_t sub_23B4B0898()
{
  result = qword_27E1347D0;
  if (!qword_27E1347D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347D0);
  }

  return result;
}

unint64_t sub_23B4B08EC()
{
  result = qword_27E1347D8;
  if (!qword_27E1347D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347D8);
  }

  return result;
}

unint64_t sub_23B4B0940()
{
  result = qword_27E1347E0;
  if (!qword_27E1347E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347E0);
  }

  return result;
}

unint64_t sub_23B4B0994()
{
  result = qword_27E1347E8;
  if (!qword_27E1347E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347E8);
  }

  return result;
}

unint64_t sub_23B4B09E8()
{
  result = qword_27E1347F0;
  if (!qword_27E1347F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347F0);
  }

  return result;
}

unint64_t sub_23B4B0A3C()
{
  result = qword_27E1347F8;
  if (!qword_27E1347F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1347F8);
  }

  return result;
}

unint64_t sub_23B4B0A90()
{
  result = qword_27E134800;
  if (!qword_27E134800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134800);
  }

  return result;
}

unint64_t sub_23B4B0AE4()
{
  result = qword_27E134808;
  if (!qword_27E134808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134808);
  }

  return result;
}

unint64_t sub_23B4B0B38()
{
  result = qword_27E134810;
  if (!qword_27E134810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134810);
  }

  return result;
}

unint64_t sub_23B4B0B8C()
{
  result = qword_27E134818;
  if (!qword_27E134818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134818);
  }

  return result;
}

unint64_t sub_23B4B0BE0()
{
  result = qword_27E134820;
  if (!qword_27E134820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134820);
  }

  return result;
}

unint64_t sub_23B4B0C34()
{
  result = qword_27E134828;
  if (!qword_27E134828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134828);
  }

  return result;
}

unint64_t sub_23B4B0C88()
{
  result = qword_27E134830;
  if (!qword_27E134830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134830);
  }

  return result;
}

unint64_t sub_23B4B0CDC()
{
  result = qword_27E134838;
  if (!qword_27E134838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134838);
  }

  return result;
}

unint64_t sub_23B4B0D30()
{
  result = qword_27E134840;
  if (!qword_27E134840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134840);
  }

  return result;
}

unint64_t sub_23B4B0D84()
{
  result = qword_27E134848;
  if (!qword_27E134848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134848);
  }

  return result;
}

unint64_t sub_23B4B0DD8()
{
  result = qword_27E134850;
  if (!qword_27E134850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134850);
  }

  return result;
}

unint64_t sub_23B4B0E2C()
{
  result = qword_27E134858;
  if (!qword_27E134858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134858);
  }

  return result;
}

unint64_t sub_23B4B0E80()
{
  result = qword_27E134860;
  if (!qword_27E134860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134860);
  }

  return result;
}

unint64_t sub_23B4B0ED4()
{
  result = qword_27E134868;
  if (!qword_27E134868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134868);
  }

  return result;
}

unint64_t sub_23B4B0F28()
{
  result = qword_27E134870;
  if (!qword_27E134870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134870);
  }

  return result;
}

unint64_t sub_23B4B0F7C()
{
  result = qword_27E134878;
  if (!qword_27E134878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134878);
  }

  return result;
}

unint64_t sub_23B4B0FD0()
{
  result = qword_27E134880;
  if (!qword_27E134880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134880);
  }

  return result;
}

unint64_t sub_23B4B1024()
{
  result = qword_27E134888;
  if (!qword_27E134888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134888);
  }

  return result;
}

unint64_t sub_23B4B1078()
{
  result = qword_27E134890;
  if (!qword_27E134890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134890);
  }

  return result;
}

unint64_t sub_23B4B10CC()
{
  result = qword_27E134898;
  if (!qword_27E134898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134898);
  }

  return result;
}

unint64_t sub_23B4B1120()
{
  result = qword_27E1348A0;
  if (!qword_27E1348A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348A0);
  }

  return result;
}

unint64_t sub_23B4B1174()
{
  result = qword_27E1348A8;
  if (!qword_27E1348A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348A8);
  }

  return result;
}

unint64_t sub_23B4B11C8()
{
  result = qword_27E1348B0;
  if (!qword_27E1348B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348B0);
  }

  return result;
}

unint64_t sub_23B4B121C()
{
  result = qword_27E1348B8;
  if (!qword_27E1348B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348B8);
  }

  return result;
}

unint64_t sub_23B4B1270()
{
  result = qword_27E1348C0;
  if (!qword_27E1348C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348C0);
  }

  return result;
}

unint64_t sub_23B4B12C4()
{
  result = qword_27E1348C8;
  if (!qword_27E1348C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348C8);
  }

  return result;
}

unint64_t sub_23B4B1318()
{
  result = qword_27E1348D0;
  if (!qword_27E1348D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348D0);
  }

  return result;
}

unint64_t sub_23B4B136C()
{
  result = qword_27E1348D8;
  if (!qword_27E1348D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348D8);
  }

  return result;
}

unint64_t sub_23B4B13C0()
{
  result = qword_27E1348E0;
  if (!qword_27E1348E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348E0);
  }

  return result;
}

unint64_t sub_23B4B1414()
{
  result = qword_27E1348E8;
  if (!qword_27E1348E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348E8);
  }

  return result;
}

unint64_t sub_23B4B1468()
{
  result = qword_27E1348F0;
  if (!qword_27E1348F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348F0);
  }

  return result;
}

unint64_t sub_23B4B14BC()
{
  result = qword_27E1348F8;
  if (!qword_27E1348F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1348F8);
  }

  return result;
}

unint64_t sub_23B4B1510()
{
  result = qword_27E134900;
  if (!qword_27E134900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134900);
  }

  return result;
}

unint64_t sub_23B4B1564()
{
  result = qword_27E134908;
  if (!qword_27E134908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134908);
  }

  return result;
}

unint64_t sub_23B4B15B8()
{
  result = qword_27E134910;
  if (!qword_27E134910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134910);
  }

  return result;
}

unint64_t sub_23B4B160C()
{
  result = qword_27E134918;
  if (!qword_27E134918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134918);
  }

  return result;
}

unint64_t sub_23B4B1660()
{
  result = qword_27E134920;
  if (!qword_27E134920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134920);
  }

  return result;
}

unint64_t sub_23B4B16B4()
{
  result = qword_27E134928;
  if (!qword_27E134928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134928);
  }

  return result;
}

unint64_t sub_23B4B1708()
{
  result = qword_27E134930;
  if (!qword_27E134930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134930);
  }

  return result;
}

unint64_t sub_23B4B175C()
{
  result = qword_27E134938;
  if (!qword_27E134938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134938);
  }

  return result;
}

unint64_t sub_23B4B17B0()
{
  result = qword_27E134940;
  if (!qword_27E134940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134940);
  }

  return result;
}

unint64_t sub_23B4B1804()
{
  result = qword_27E134948;
  if (!qword_27E134948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134948);
  }

  return result;
}

unint64_t sub_23B4B1858()
{
  result = qword_27E134950;
  if (!qword_27E134950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134950);
  }

  return result;
}

unint64_t sub_23B4B18AC()
{
  result = qword_27E134958;
  if (!qword_27E134958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134958);
  }

  return result;
}

unint64_t sub_23B4B1900()
{
  result = qword_27E134960;
  if (!qword_27E134960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134960);
  }

  return result;
}

unint64_t sub_23B4B1954()
{
  result = qword_27E134968;
  if (!qword_27E134968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134968);
  }

  return result;
}

unint64_t sub_23B4B19A8()
{
  result = qword_27E134970;
  if (!qword_27E134970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134970);
  }

  return result;
}

unint64_t sub_23B4B19FC()
{
  result = qword_27E134978;
  if (!qword_27E134978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134978);
  }

  return result;
}

unint64_t sub_23B4B1A50()
{
  result = qword_27E134980;
  if (!qword_27E134980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134980);
  }

  return result;
}

unint64_t sub_23B4B1AA4()
{
  result = qword_27E134988;
  if (!qword_27E134988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134988);
  }

  return result;
}

uint64_t PrecipitationShift.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_23B50D8C4();
  MEMORY[0x23EE9DB40](v1);
  return sub_23B50D914();
}

void PrecipitationShift.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_107();
  a22 = v24;
  a23 = v25;
  v602 = v23;
  v27 = v26;
  v597 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134990, &qword_23B51E008);
  OUTLINED_FUNCTION_2_0(v29, v596);
  v579[1] = v30;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_52();
  v596[64] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134998, &qword_23B51E010);
  OUTLINED_FUNCTION_2_0(v33, v595);
  v578[1] = v34;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_52();
  v596[63] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349A0, &qword_23B51E018);
  OUTLINED_FUNCTION_2_0(v37, v594);
  v577[1] = v38;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_52();
  v596[62] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349A8, &qword_23B51E020);
  OUTLINED_FUNCTION_2_0(v41, v593);
  v576[1] = v42;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_52();
  v596[61] = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349B0, &qword_23B51E028);
  OUTLINED_FUNCTION_2_0(v45, v592);
  v575[1] = v46;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_52();
  v596[60] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349B8, &qword_23B51E030);
  OUTLINED_FUNCTION_2_0(v49, v591);
  v574[1] = v50;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_52();
  v596[59] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349C0, &qword_23B51E038);
  OUTLINED_FUNCTION_2_0(v53, v590);
  v573[1] = v54;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_52();
  v596[58] = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349C8, &qword_23B51E040);
  OUTLINED_FUNCTION_2_0(v57, v589);
  v572[1] = v58;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_52();
  v596[57] = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349D0, &qword_23B51E048);
  OUTLINED_FUNCTION_2_0(v61, v588);
  v571[1] = v62;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_52();
  v596[56] = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349D8, &qword_23B51E050);
  OUTLINED_FUNCTION_2_0(v65, v587);
  v570[1] = v66;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_52();
  v596[55] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349E0, &qword_23B51E058);
  OUTLINED_FUNCTION_2_0(v69, v586);
  v569[1] = v70;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_52();
  v596[54] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349E8, &qword_23B51E060);
  OUTLINED_FUNCTION_2_0(v73, v585);
  v568[1] = v74;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_52();
  v596[53] = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349F0, &qword_23B51E068);
  OUTLINED_FUNCTION_2_0(v77, v584);
  v567[1] = v78;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_52();
  v596[52] = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1349F8, &qword_23B51E070);
  OUTLINED_FUNCTION_2_0(v81, v583);
  v566[1] = v82;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_52();
  v596[51] = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A00, &qword_23B51E078);
  OUTLINED_FUNCTION_2_0(v85, v582);
  v565[1] = v86;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_52();
  v596[50] = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A08, &qword_23B51E080);
  OUTLINED_FUNCTION_2_0(v89, v581);
  v564[1] = v90;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A10, &qword_23B51E088);
  OUTLINED_FUNCTION_2_0(v93, v580);
  v563[1] = v94;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A18, &qword_23B51E090);
  OUTLINED_FUNCTION_2_0(v97, v579);
  v562[1] = v98;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v100);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A20, &qword_23B51E098);
  OUTLINED_FUNCTION_2_0(v101, v578);
  v561[1] = v102;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A28, &qword_23B51E0A0);
  OUTLINED_FUNCTION_2_0(v105, v577);
  v560[1] = v106;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A30, &qword_23B51E0A8);
  OUTLINED_FUNCTION_2_0(v109, v576);
  v559[1] = v110;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A38, &qword_23B51E0B0);
  OUTLINED_FUNCTION_2_0(v113, v575);
  v558[1] = v114;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A40, &qword_23B51E0B8);
  OUTLINED_FUNCTION_2_0(v117, v574);
  v557[1] = v118;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A48, &qword_23B51E0C0);
  OUTLINED_FUNCTION_2_0(v121, v573);
  v556[1] = v122;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A50, &qword_23B51E0C8);
  OUTLINED_FUNCTION_2_0(v125, v572);
  v555[1] = v126;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v128);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A58, &qword_23B51E0D0);
  OUTLINED_FUNCTION_2_0(v129, v571);
  v554[1] = v130;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A60, &qword_23B51E0D8);
  OUTLINED_FUNCTION_2_0(v133, v570);
  v553[1] = v134;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v136);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A68, &qword_23B51E0E0);
  OUTLINED_FUNCTION_2_0(v137, v569);
  v552[1] = v138;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A70, &qword_23B51E0E8);
  OUTLINED_FUNCTION_2_0(v141, v568);
  v551[1] = v142;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A78, &qword_23B51E0F0);
  OUTLINED_FUNCTION_2_0(v145, v567);
  v550[1] = v146;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v148);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A80, &qword_23B51E0F8);
  OUTLINED_FUNCTION_2_0(v149, v566);
  v549[1] = v150;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v152);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A88, &qword_23B51E100);
  OUTLINED_FUNCTION_2_0(v153, v565);
  v548[1] = v154;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A90, &qword_23B51E108);
  OUTLINED_FUNCTION_2_0(v157, v564);
  v547[1] = v158;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134A98, &qword_23B51E110);
  OUTLINED_FUNCTION_2_0(v161, v563);
  v546[1] = v162;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v164);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AA0, &qword_23B51E118);
  OUTLINED_FUNCTION_2_0(v165, v562);
  v545[1] = v166;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AA8, &qword_23B51E120);
  OUTLINED_FUNCTION_2_0(v169, v561);
  v544[1] = v170;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AB0, &qword_23B51E128);
  OUTLINED_FUNCTION_2_0(v173, v560);
  v543[1] = v174;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v176);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AB8, &qword_23B51E130);
  OUTLINED_FUNCTION_2_0(v177, v559);
  v542[1] = v178;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v180);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AC0, &qword_23B51E138);
  OUTLINED_FUNCTION_2_0(v181, v558);
  v541[1] = v182;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v184);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AC8, &qword_23B51E140);
  OUTLINED_FUNCTION_2_0(v185, v557);
  v540[1] = v186;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AD0, &qword_23B51E148);
  OUTLINED_FUNCTION_2_0(v189, v556);
  v539[1] = v190;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v192);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AD8, &qword_23B51E150);
  OUTLINED_FUNCTION_2_0(v193, v555);
  v538[1] = v194;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AE0, &qword_23B51E158);
  OUTLINED_FUNCTION_2_0(v197, v554);
  v537[1] = v198;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v200);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AE8, &qword_23B51E160);
  OUTLINED_FUNCTION_2_0(v201, v553);
  v536[1] = v202;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v203);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v204);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AF0, &qword_23B51E168);
  OUTLINED_FUNCTION_2_0(v205, v552);
  v535[1] = v206;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v208);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134AF8, &qword_23B51E170);
  OUTLINED_FUNCTION_2_0(v209, v551);
  v534[1] = v210;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v212);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B00, &qword_23B51E178);
  OUTLINED_FUNCTION_2_0(v213, v550);
  v533[1] = v214;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v216);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B08, &qword_23B51E180);
  OUTLINED_FUNCTION_2_0(v217, v549);
  v532[1] = v218;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v220);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B10, &qword_23B51E188);
  OUTLINED_FUNCTION_2_0(v221, v548);
  v531[1] = v222;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v224);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B18, &qword_23B51E190);
  OUTLINED_FUNCTION_2_0(v225, v547);
  v530[1] = v226;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v228);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B20, &qword_23B51E198);
  OUTLINED_FUNCTION_2_0(v229, v546);
  v529[1] = v230;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v232);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B28, &qword_23B51E1A0);
  OUTLINED_FUNCTION_2_0(v233, v545);
  v528[1] = v234;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v235);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v236);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B30, &qword_23B51E1A8);
  OUTLINED_FUNCTION_2_0(v237, v544);
  v527[1] = v238;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v240);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B38, &qword_23B51E1B0);
  OUTLINED_FUNCTION_2_0(v241, v543);
  v526[1] = v242;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v244);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B40, &qword_23B51E1B8);
  OUTLINED_FUNCTION_2_0(v245, v542);
  v525[1] = v246;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v248);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B48, &qword_23B51E1C0);
  OUTLINED_FUNCTION_2_0(v249, v541);
  v524[1] = v250;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v252);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B50, &qword_23B51E1C8);
  OUTLINED_FUNCTION_2_0(v253, v540);
  v523[1] = v254;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v256);
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B58, &qword_23B51E1D0);
  OUTLINED_FUNCTION_2_0(v257, v539);
  v522[1] = v258;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v259);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v260);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B60, &qword_23B51E1D8);
  OUTLINED_FUNCTION_2_0(v261, v538);
  v521[1] = v262;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v263);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v264);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B68, &qword_23B51E1E0);
  OUTLINED_FUNCTION_2_0(v265, v537);
  v520[1] = v266;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v268);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B70, &qword_23B51E1E8);
  OUTLINED_FUNCTION_2_0(v269, v536);
  v519[1] = v270;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v272);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B78, &qword_23B51E1F0);
  OUTLINED_FUNCTION_2_0(v273, v535);
  v518[1] = v274;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v275);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v276);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B80, &qword_23B51E1F8);
  OUTLINED_FUNCTION_2_0(v277, v534);
  v517[1] = v278;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v280);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B88, &qword_23B51E200);
  OUTLINED_FUNCTION_2_0(v281, v533);
  v516[1] = v282;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v283);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v284);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B90, &qword_23B51E208);
  OUTLINED_FUNCTION_2_0(v285, v532);
  v515[2] = v286;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v287);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v288);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134B98, &qword_23B51E210);
  OUTLINED_FUNCTION_2_0(v289, v531);
  v515[0] = v290;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v292);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BA0, &qword_23B51E218);
  OUTLINED_FUNCTION_2_0(v293, v530);
  v514[0] = v294;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v295);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v296);
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BA8, &qword_23B51E220);
  OUTLINED_FUNCTION_2_0(v297, v529);
  v512[1] = v298;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v299);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v300);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BB0, &qword_23B51E228);
  OUTLINED_FUNCTION_2_0(v301, v528);
  v511[1] = v302;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v304);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BB8, &qword_23B51E230);
  OUTLINED_FUNCTION_2_0(v305, v527);
  v510[1] = v306;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v307);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v308);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BC0, &qword_23B51E238);
  OUTLINED_FUNCTION_2_0(v309, v526);
  v509[1] = v310;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v311);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v312);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BC8, &qword_23B51E240);
  OUTLINED_FUNCTION_2_0(v313, v525);
  v508[1] = v314;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v315);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v316);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BD0, &qword_23B51E248);
  OUTLINED_FUNCTION_2_0(v317, v524);
  v507[1] = v318;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v319);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v320);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BD8, &qword_23B51E250);
  OUTLINED_FUNCTION_2_0(v321, v523);
  v506[1] = v322;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v323);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v324);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BE0, &qword_23B51E258);
  OUTLINED_FUNCTION_2_0(v325, v522);
  v505[1] = v326;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v327);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v328);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BE8, &qword_23B51E260);
  OUTLINED_FUNCTION_2_0(v329, v521);
  v504[1] = v330;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v331);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v332);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BF0, &qword_23B51E268);
  OUTLINED_FUNCTION_2_0(v333, v520);
  v503[1] = v334;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v335);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v336);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134BF8, &qword_23B51E270);
  OUTLINED_FUNCTION_2_0(v337, v519);
  v502[1] = v338;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v340);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C00, &qword_23B51E278);
  OUTLINED_FUNCTION_2_0(v341, v518);
  v501[1] = v342;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v343);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v344);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C08, &qword_23B51E280);
  OUTLINED_FUNCTION_2_0(v345, v517);
  v500[1] = v346;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v347);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v348);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C10, &qword_23B51E288);
  OUTLINED_FUNCTION_2_0(v349, v516);
  v499[1] = v350;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v351);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v352);
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C18, &qword_23B51E290);
  OUTLINED_FUNCTION_2_0(v353, v515);
  v499[0] = v354;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v355);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v356);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C20, &qword_23B51E298);
  OUTLINED_FUNCTION_2_0(v357, v514);
  v498[0] = v358;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v359);
  OUTLINED_FUNCTION_52();
  v600 = v360;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C28, &qword_23B51E2A0);
  OUTLINED_FUNCTION_2_0(v361, &v513);
  v496 = v362;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v363);
  OUTLINED_FUNCTION_52();
  v599 = v364;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C30, &qword_23B51E2A8);
  OUTLINED_FUNCTION_2_0(v365, v512);
  v495 = v366;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v367);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v368);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C38, &qword_23B51E2B0);
  OUTLINED_FUNCTION_2_0(v369, v511);
  v494 = v370;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v371);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v372);
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C40, &qword_23B51E2B8);
  OUTLINED_FUNCTION_2_0(v373, v510);
  v493 = v374;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_52();
  v598 = v376;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C48, &qword_23B51E2C0);
  OUTLINED_FUNCTION_2_0(v377, v509);
  v492 = v378;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v379);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v380);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C50, &qword_23B51E2C8);
  OUTLINED_FUNCTION_2_0(v381, v508);
  v491 = v382;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v383);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v384);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C58, &qword_23B51E2D0);
  OUTLINED_FUNCTION_2_0(v385, v507);
  v490 = v386;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v388);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C60, &qword_23B51E2D8);
  OUTLINED_FUNCTION_2_0(v389, v506);
  v489 = v390;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v391);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v392);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C68, &qword_23B51E2E0);
  OUTLINED_FUNCTION_2_0(v393, v505);
  v488 = v394;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v395);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v396);
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C70, &qword_23B51E2E8);
  OUTLINED_FUNCTION_2_0(v397, v504);
  v487 = v398;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v399);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v400);
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C78, &qword_23B51E2F0);
  OUTLINED_FUNCTION_2_0(v401, v503);
  v486 = v402;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v403);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v404);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C80, &qword_23B51E2F8);
  OUTLINED_FUNCTION_2_0(v405, v502);
  v485 = v406;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v407);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v408);
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C88, &qword_23B51E300);
  OUTLINED_FUNCTION_2_0(v409, v501);
  v484 = v410;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v412);
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C90, &qword_23B51E308);
  OUTLINED_FUNCTION_2_0(v413, v500);
  v483 = v414;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v415);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v416);
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134C98, &qword_23B51E310);
  OUTLINED_FUNCTION_2_0(v417, v499);
  v482 = v418;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v419);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v420);
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CA0, &qword_23B51E318);
  OUTLINED_FUNCTION_2_0(v421, v498);
  v481 = v422;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v423);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_55(v424);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CA8, &qword_23B51E320);
  OUTLINED_FUNCTION_2_0(v425, v497);
  v480 = v426;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v427);
  v429 = &v473 - v428;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CB0, &qword_23B51E328);
  OUTLINED_FUNCTION_5();
  v479 = v431;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v432);
  v434 = &v473 - v433;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CB8, &unk_23B51E330);
  OUTLINED_FUNCTION_5();
  v437 = v436;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v438);
  v440 = &v473 - v439;
  v441 = v27[3];
  v601 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v441);
  sub_23B4AF980();
  v442 = v602;
  sub_23B50D964();
  if (v442)
  {
LABEL_10:
    v454 = v601;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v454);
    OUTLINED_FUNCTION_105();
    return;
  }

  v476 = v434;
  v475 = v430;
  v477 = v429;
  v443 = v599;
  v444 = v600;
  v602 = v437;
  v478 = v435;
  sub_23B50D744();
  sub_23B40D8C8();
  if (v446 == v447 >> 1)
  {
LABEL_8:
    v459 = v440;
    v460 = sub_23B50D5F4();
    swift_allocError();
    v462 = v461;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1326A0, &qword_23B511CE0);
    *v462 = &type metadata for PrecipitationShift.Kind;
    v463 = v478;
    sub_23B50D684();
    sub_23B50D5E4();
    (*(*(v460 - 8) + 104))(v462, *MEMORY[0x277D84160], v460);
    swift_willThrow();
    (*(v602 + 8))(v459, v463);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v474 = 0;
  if (v446 < (v447 >> 1))
  {
    v448 = *(v445 + v446);
    v449 = sub_23B40D8C4();
    v451 = v450;
    v453 = v452;
    swift_unknownObjectRelease();
    if (v451 == v453 >> 1)
    {
      v473 = v449;
      v454 = v474;
      switch(v448)
      {
        case 1:
          a13 = 1;
          sub_23B4B1A50();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v497;
          goto LABEL_113;
        case 2:
          a13 = 2;
          sub_23B4B19FC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v498;
          goto LABEL_113;
        case 3:
          a13 = 3;
          sub_23B4B19A8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v499;
          goto LABEL_113;
        case 4:
          a13 = 4;
          sub_23B4B1954();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleDrizzleStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v500;
          goto LABEL_113;
        case 5:
          a13 = 5;
          sub_23B4B1900();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v501;
          goto LABEL_113;
        case 6:
          a13 = 6;
          sub_23B4B18AC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v502;
          goto LABEL_113;
        case 7:
          a13 = 7;
          sub_23B4B1858();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v503;
          goto LABEL_113;
        case 8:
          a13 = 8;
          sub_23B4B1804();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v504;
          goto LABEL_113;
        case 9:
          a13 = 9;
          sub_23B4B17B0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v505;
          goto LABEL_113;
        case 10:
          a13 = 10;
          sub_23B4B175C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v506;
          goto LABEL_113;
        case 11:
          a13 = 11;
          sub_23B4B1708();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v507;
          goto LABEL_113;
        case 12:
          a13 = 12;
          sub_23B4B16B4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v508;
          goto LABEL_113;
        case 13:
          a13 = 13;
          sub_23B4B1660();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v509;
          goto LABEL_113;
        case 14:
          a13 = 14;
          sub_23B4B160C();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.RainStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v510;
          goto LABEL_113;
        case 15:
          a13 = 15;
          sub_23B4B15B8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v511;
          goto LABEL_113;
        case 16:
          a13 = 16;
          sub_23B4B1564();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v512;
          goto LABEL_113;
        case 17:
          a13 = 17;
          sub_23B4B1510();
          OUTLINED_FUNCTION_5_28(&type metadata for PrecipitationShift.Kind.HeavyRainStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = &v513;
          goto LABEL_113;
        case 18:
          a13 = 18;
          sub_23B4B14BC();
          OUTLINED_FUNCTION_5_28(&type metadata for PrecipitationShift.Kind.HeavyRainStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          OUTLINED_FUNCTION_56_1();
          v464 = v444;
          v466 = v514;
          goto LABEL_113;
        case 19:
          a13 = 19;
          sub_23B4B1468();
          v467 = v586[1];
          OUTLINED_FUNCTION_5_28(&type metadata for PrecipitationShift.Kind.HeavyRainStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          OUTLINED_FUNCTION_56_1();
          v464 = v467;
          v466 = v515;
          goto LABEL_113;
        case 20:
          a13 = 20;
          sub_23B4B1414();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v516;
          goto LABEL_113;
        case 21:
          a13 = 21;
          sub_23B4B13C0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v517;
          goto LABEL_113;
        case 22:
          a13 = 22;
          sub_23B4B136C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainToHeavyRainCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v518;
          goto LABEL_113;
        case 23:
          a13 = 23;
          sub_23B4B1318();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToRainCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v519;
          goto LABEL_113;
        case 24:
          a13 = 24;
          sub_23B4B12C4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v520;
          goto LABEL_113;
        case 25:
          a13 = 25;
          sub_23B4B1270();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v521;
          goto LABEL_113;
        case 26:
          a13 = 26;
          sub_23B4B121C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v522;
          goto LABEL_113;
        case 27:
          a13 = 27;
          sub_23B4B11C8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v523;
          goto LABEL_113;
        case 28:
          a13 = 28;
          sub_23B4B1174();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v524;
          goto LABEL_113;
        case 29:
          a13 = 29;
          sub_23B4B1120();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v525;
          goto LABEL_113;
        case 30:
          a13 = 30;
          sub_23B4B10CC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v526;
          goto LABEL_113;
        case 31:
          a13 = 31;
          sub_23B4B1078();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v527;
          goto LABEL_113;
        case 32:
          a13 = 32;
          sub_23B4B1024();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v528;
          goto LABEL_113;
        case 33:
          a13 = 33;
          sub_23B4B0FD0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v529;
          goto LABEL_113;
        case 34:
          a13 = 34;
          sub_23B4B0F7C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v530;
          goto LABEL_113;
        case 35:
          a13 = 35;
          sub_23B4B0F28();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v531;
          goto LABEL_113;
        case 36:
          a13 = 36;
          sub_23B4B0ED4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.DrizzleToHeavyRainStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v532;
          goto LABEL_113;
        case 37:
          a13 = 37;
          sub_23B4B0E80();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToDrizzleStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v533;
          goto LABEL_113;
        case 38:
          a13 = 38;
          sub_23B4B0E2C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.RainToHeavyRainStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v534;
          goto LABEL_113;
        case 39:
          a13 = 39;
          sub_23B4B0DD8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavyRainToRainStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v535;
          goto LABEL_113;
        case 40:
          a13 = 40;
          sub_23B4B0D84();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleFlurriesCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v536;
          goto LABEL_113;
        case 41:
          a13 = 41;
          sub_23B4B0D30();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v537;
          goto LABEL_113;
        case 42:
          a13 = 42;
          sub_23B4B0CDC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v538;
          goto LABEL_113;
        case 43:
          a13 = 43;
          sub_23B4B0C88();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v539;
          goto LABEL_113;
        case 44:
          a13 = 44;
          sub_23B4B0C34();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleFlurriesStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v540;
          goto LABEL_113;
        case 45:
          a13 = 45;
          sub_23B4B0BE0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v541;
          goto LABEL_113;
        case 46:
          a13 = 46;
          sub_23B4B0B8C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v542;
          goto LABEL_113;
        case 47:
          a13 = 47;
          sub_23B4B0B38();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v543;
          goto LABEL_113;
        case 48:
          a13 = 48;
          sub_23B4B0AE4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v544;
          goto LABEL_113;
        case 49:
          a13 = 49;
          sub_23B4B0A90();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v545;
          goto LABEL_113;
        case 50:
          a13 = 50;
          sub_23B4B0A3C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v546;
          goto LABEL_113;
        case 51:
          a13 = 51;
          sub_23B4B09E8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v547;
          goto LABEL_113;
        case 52:
          a13 = 52;
          sub_23B4B0994();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v548;
          goto LABEL_113;
        case 53:
          a13 = 53;
          sub_23B4B0940();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v549;
          goto LABEL_113;
        case 54:
          a13 = 54;
          sub_23B4B08EC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v550;
          goto LABEL_113;
        case 55:
          a13 = 55;
          sub_23B4B0898();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v551;
          goto LABEL_113;
        case 56:
          a13 = 56;
          sub_23B4B0844();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v552;
          goto LABEL_113;
        case 57:
          a13 = 57;
          sub_23B4B07F0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v553;
          goto LABEL_113;
        case 58:
          a13 = 58;
          sub_23B4B079C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v554;
          goto LABEL_113;
        case 59:
          a13 = 59;
          sub_23B4B0748();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v555;
          goto LABEL_113;
        case 60:
          a13 = 60;
          sub_23B4B06F4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v556;
          goto LABEL_113;
        case 61:
          a13 = 61;
          sub_23B4B06A0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v557;
          goto LABEL_113;
        case 62:
          a13 = 62;
          sub_23B4B064C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v558;
          goto LABEL_113;
        case 63:
          a13 = 63;
          sub_23B4B05F8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v559;
          goto LABEL_113;
        case 64:
          a13 = 64;
          sub_23B4B05A4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v560;
          goto LABEL_113;
        case 65:
          a13 = 65;
          sub_23B4B0550();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v561;
          goto LABEL_113;
        case 66:
          a13 = 66;
          sub_23B4B04FC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v562;
          goto LABEL_113;
        case 67:
          a13 = 67;
          sub_23B4B04A8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v563;
          goto LABEL_113;
        case 68:
          a13 = 68;
          sub_23B4B0454();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v564;
          goto LABEL_113;
        case 69:
          a13 = 69;
          sub_23B4B0400();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v565;
          goto LABEL_113;
        case 70:
          a13 = 70;
          sub_23B4B03AC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v566;
          goto LABEL_113;
        case 71:
          a13 = 71;
          sub_23B4B0358();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v567;
          goto LABEL_113;
        case 72:
          a13 = 72;
          sub_23B4B0304();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v568;
          goto LABEL_113;
        case 73:
          a13 = 73;
          sub_23B4B02B0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v569;
          goto LABEL_113;
        case 74:
          a13 = 74;
          sub_23B4B025C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v570;
          goto LABEL_113;
        case 75:
          a13 = 75;
          sub_23B4B0208();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v571;
          goto LABEL_113;
        case 76:
          a13 = 76;
          sub_23B4B01B4();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.FlurriesToHeavySnowStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v572;
          goto LABEL_113;
        case 77:
          a13 = 77;
          sub_23B4B0160();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToFlurriesStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v573;
          goto LABEL_113;
        case 78:
          a13 = 78;
          sub_23B4B010C();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SnowToHeavySnowStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v574;
          goto LABEL_113;
        case 79:
          a13 = 79;
          sub_23B4B00B8();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.HeavySnowToSnowStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v575;
          goto LABEL_113;
        case 80:
          a13 = 80;
          sub_23B4B0064();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleSleetCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v576;
          goto LABEL_113;
        case 81:
          a13 = 81;
          sub_23B4B0010();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleSleetStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v577;
          goto LABEL_113;
        case 82:
          a13 = 82;
          sub_23B4AFFBC();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleSleetStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v578;
          goto LABEL_113;
        case 83:
          a13 = 83;
          sub_23B4AFF68();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleSleetStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v579;
          goto LABEL_113;
        case 84:
          a13 = 84;
          sub_23B4AFF14();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.PossibleSleetStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v580;
          goto LABEL_113;
        case 85:
          a13 = 85;
          sub_23B4AFEC0();
          OUTLINED_FUNCTION_1_38(&type metadata for PrecipitationShift.Kind.SleetCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v581;
          goto LABEL_113;
        case 86:
          a13 = 86;
          sub_23B4AFE6C();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.SleetStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v582;
          goto LABEL_113;
        case 87:
          a13 = 87;
          sub_23B4AFE18();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.SleetStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v583;
          goto LABEL_113;
        case 88:
          a13 = 88;
          sub_23B4AFDC4();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.SleetStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v584;
          goto LABEL_113;
        case 89:
          a13 = 89;
          sub_23B4AFD70();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.SleetStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v585;
          goto LABEL_113;
        case 90:
          a13 = 90;
          sub_23B4AFD1C();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.PossibleHailCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v586;
          goto LABEL_113;
        case 91:
          a13 = 91;
          sub_23B4AFCC8();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.PossibleHailStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v587;
          goto LABEL_113;
        case 92:
          a13 = 92;
          sub_23B4AFC74();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.PossibleHailStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v588;
          goto LABEL_113;
        case 93:
          a13 = 93;
          sub_23B4AFC20();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.PossibleHailStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v589;
          goto LABEL_113;
        case 94:
          a13 = 94;
          sub_23B4AFBCC();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.PossibleHailStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v590;
          goto LABEL_113;
        case 95:
          a13 = 95;
          sub_23B4AFB78();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.HailCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v591;
          goto LABEL_113;
        case 96:
          a13 = 96;
          sub_23B4AFB24();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.HailStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v592;
          goto LABEL_113;
        case 97:
          a13 = 97;
          sub_23B4AFAD0();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.HailStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v593;
          goto LABEL_113;
        case 98:
          a13 = 98;
          sub_23B4AFA7C();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.HailStartStopCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v594;
          goto LABEL_113;
        case 99:
          a13 = 99;
          sub_23B4AFA28();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.HailStopStartCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v595;
          goto LABEL_113;
        case 100:
          a13 = 100;
          sub_23B4AF9D4();
          OUTLINED_FUNCTION_3_44(&type metadata for PrecipitationShift.Kind.ClearCodingKeys, &a13);
          OUTLINED_FUNCTION_14_26();
          v464 = OUTLINED_FUNCTION_7_38();
          v466 = v596;
LABEL_113:
          v465(v464, *(v466 - 32));
          v471 = OUTLINED_FUNCTION_17_18();
          v472(v471, v443);
          OUTLINED_FUNCTION_22_14();
          swift_unknownObjectRelease();
          goto LABEL_114;
        default:
          a13 = 0;
          sub_23B4B1AA4();
          v455 = v476;
          v456 = v478;
          sub_23B50D674();
          if (v454)
          {
            v457 = OUTLINED_FUNCTION_17_18();
            v458(v457, v456);
            OUTLINED_FUNCTION_22_14();
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_56_1();
          v468(v455, v475);
          v469 = OUTLINED_FUNCTION_17_18();
          v470(v469, v456);
          OUTLINED_FUNCTION_22_14();
          swift_unknownObjectRelease();
          v454 = v601;
LABEL_114:
          *v597 = v448;
          break;
      }

      goto LABEL_11;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_23B4B647C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_23B50D834() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657461447478656ELL && a2 == 0xE800000000000000;
    if (v6 || (sub_23B50D834() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1684957547 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_23B50D834();

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

uint64_t sub_23B4B658C(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x657461447478656ELL;
  }

  return 1684957547;
}

uint64_t sub_23B4B6618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B4B647C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B4B6640(uint64_t a1)
{
  v2 = sub_23B4B7328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B4B667C(uint64_t a1)
{
  v2 = sub_23B4B7328();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static PrecipitationShift.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_12_0();
  v48 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E20, &qword_23B51E340);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  v26 = *(v25 + 48);
  sub_23B3C7DF4(a1, &v45 - v23);
  sub_23B3C7DF4(a2, &v24[v26]);
  OUTLINED_FUNCTION_46(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_46(&v24[v26]);
    if (v27)
    {
      v46 = v10;
      v47 = v6;
      sub_23B398890(v24, &qword_27E131E18, &unk_23B50F710);
      goto LABEL_11;
    }

LABEL_9:
    v28 = v24;
LABEL_20:
    sub_23B398890(v28, &qword_27E131E20, &qword_23B51E340);
    return 0;
  }

  sub_23B3C7DF4(v24, v16);
  OUTLINED_FUNCTION_46(&v24[v26]);
  if (v27)
  {
    (*(v6 + 8))(v16, v4);
    goto LABEL_9;
  }

  (*(v6 + 32))(v10, &v24[v26], v4);
  OUTLINED_FUNCTION_4_36();
  sub_23B4B7584(v29, v30, MEMORY[0x277CC9598]);
  v31 = sub_23B50D134();
  v47 = v6;
  v32 = *(v6 + 8);
  v46 = v10;
  v32();
  (v32)(v16, v4);
  sub_23B398890(v24, &qword_27E131E18, &unk_23B50F710);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v33 = type metadata accessor for PrecipitationShift(0);
  v34 = *(v33 + 20);
  v35 = *(v17 + 48);
  sub_23B3C7DF4(a1 + v34, v21);
  sub_23B3C7DF4(a2 + v34, v21 + v35);
  OUTLINED_FUNCTION_46(v21);
  if (v27)
  {
    OUTLINED_FUNCTION_46(v21 + v35);
    if (v27)
    {
      sub_23B398890(v21, &qword_27E131E18, &unk_23B50F710);
      return *(a1 + *(v33 + 24)) == *(a2 + *(v33 + 24));
    }

    goto LABEL_19;
  }

  v36 = v48;
  sub_23B3C7DF4(v21, v48);
  OUTLINED_FUNCTION_46(v21 + v35);
  if (v37)
  {
    (*(v47 + 8))(v36, v4);
LABEL_19:
    v28 = v21;
    goto LABEL_20;
  }

  v40 = v46;
  v39 = v47;
  (*(v47 + 32))(v46, v21 + v35, v4);
  OUTLINED_FUNCTION_4_36();
  sub_23B4B7584(v41, v42, MEMORY[0x277CC9598]);
  v43 = sub_23B50D134();
  v44 = *(v39 + 8);
  v44(v40, v4);
  v44(v36, v4);
  sub_23B398890(v21, &qword_27E131E18, &unk_23B50F710);
  if (v43)
  {
    return *(a1 + *(v33 + 24)) == *(a2 + *(v33 + 24));
  }

  return 0;
}

void PrecipitationShift.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_107();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CC0, &qword_23B51E348);
  OUTLINED_FUNCTION_5();
  v33 = v32;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v34);
  v36 = &a9 - v35;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_23B4B7328();
  sub_23B50D974();
  a14 = 0;
  sub_23B50AD24();
  OUTLINED_FUNCTION_4_36();
  sub_23B4B7584(v37, v38, MEMORY[0x277CC9580]);
  OUTLINED_FUNCTION_21_15(v28, &a14);
  if (!v25)
  {
    v39 = type metadata accessor for PrecipitationShift(0);
    v40 = *(v39 + 20);
    a13 = 1;
    OUTLINED_FUNCTION_21_15(v28 + v40, &a13);
    a12 = *(v28 + *(v39 + 24));
    a11 = 2;
    sub_23B4B737C();
    sub_23B50D7F4();
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_105();
}

void PrecipitationShift.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_107();
  a23 = v25;
  a24 = v26;
  v68 = v24;
  v28 = v27;
  v63 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_12_0();
  v64 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  v65 = &v61 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E134CD8, &qword_23B51E350);
  OUTLINED_FUNCTION_5();
  v66 = v36;
  v67 = v35;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v61 - v38;
  v40 = type metadata accessor for PrecipitationShift(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27();
  v44 = v43 - v42;
  v45 = sub_23B50AD24();
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v45);
  v49 = *(v40 + 20);
  OUTLINED_FUNCTION_1();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v45);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_23B4B7328();
  v53 = v68;
  sub_23B50D964();
  if (v53)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_23B398890(v44, &qword_27E131E18, &unk_23B50F710);
    sub_23B398890(v44 + v49, &qword_27E131E18, &unk_23B50F710);
  }

  else
  {
    v62 = v28;
    v54 = v64;
    v68 = v49;
    a14 = 0;
    OUTLINED_FUNCTION_4_36();
    v57 = sub_23B4B7584(v55, v56, MEMORY[0x277CC95A0]);
    v58 = v65;
    OUTLINED_FUNCTION_20_18(v57, &a14);
    v59 = sub_23B3CF890(v58, v44);
    a13 = 1;
    OUTLINED_FUNCTION_20_18(v59, &a13);
    sub_23B3CF890(v54, v44 + v68);
    sub_23B4B73D0();
    v60 = v67;
    sub_23B50D734();
    (*(v66 + 8))(v39, v60);
    *(v44 + *(v40 + 24)) = a12;
    sub_23B4B7424(v44, v63);
    __swift_destroy_boxed_opaque_existential_1(v62);
    sub_23B4B7488(v44);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t PrecipitationShift.hash(into:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_19();
  v2 = sub_23B50AD24();
  OUTLINED_FUNCTION_5();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131E18, &unk_23B50F710);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_12_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_23B3C7DF4(v1, &v24 - v14);
  if (__swift_getEnumTagSinglePayload(v15, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v4 + 32))(v8, v15, v2);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_4_36();
    v18 = sub_23B4B7584(v16, v17, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_26_15(v18);
    (*(v4 + 8))(v8, v2);
  }

  v19 = type metadata accessor for PrecipitationShift(0);
  sub_23B3C7DF4(v1 + *(v19 + 20), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    sub_23B50D8E4();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_23B50D8E4();
    OUTLINED_FUNCTION_4_36();
    v22 = sub_23B4B7584(v20, v21, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_26_15(v22);
    (*(v4 + 8))(v8, v2);
  }

  return MEMORY[0x23EE9DB40](*(v1 + *(v19 + 24)));
}

uint64_t PrecipitationShift.hashValue.getter()
{
  sub_23B50D8C4();
  PrecipitationShift.hash(into:)();
  return sub_23B50D914();
}

uint64_t sub_23B4B72EC(uint64_t a1)
{
  sub_23B50D8C4();
  PrecipitationShift.hash(into:)();
  return sub_23B50D914();
}

unint64_t sub_23B4B7328()
{
  result = qword_27E134CC8;
  if (!qword_27E134CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134CC8);
  }

  return result;
}

unint64_t sub_23B4B737C()
{
  result = qword_27E134CD0;
  if (!qword_27E134CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134CD0);
  }

  return result;
}

unint64_t sub_23B4B73D0()
{
  result = qword_27E134CE0;
  if (!qword_27E134CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134CE0);
  }

  return result;
}

uint64_t sub_23B4B7424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationShift(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B4B7488(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationShift(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23B4B74E8()
{
  result = qword_27E134CE8;
  if (!qword_27E134CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134CE8);
  }

  return result;
}

uint64_t sub_23B4B7584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for PrecipitationShift.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23B4B76E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x9C)
  {
    if (a2 + 100 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 100) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 101;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x65;
  v5 = v6 - 101;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_23B4B7768(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 100 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 100) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x9C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x9B)
  {
    v6 = ((a2 - 156) >> 8) + 1;
    *result = a2 + 100;
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
          *result = a2 + 100;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23B4B7E98()
{
  result = qword_27E134CF8;
  if (!qword_27E134CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134CF8);
  }

  return result;
}

unint64_t sub_23B4B7EF0()
{
  result = qword_27E134D00;
  if (!qword_27E134D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D00);
  }

  return result;
}

unint64_t sub_23B4B7F48()
{
  result = qword_27E134D08;
  if (!qword_27E134D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D08);
  }

  return result;
}

unint64_t sub_23B4B7FA0()
{
  result = qword_27E134D10;
  if (!qword_27E134D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D10);
  }

  return result;
}

unint64_t sub_23B4B7FF8()
{
  result = qword_27E134D18;
  if (!qword_27E134D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D18);
  }

  return result;
}

unint64_t sub_23B4B8050()
{
  result = qword_27E134D20;
  if (!qword_27E134D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D20);
  }

  return result;
}

unint64_t sub_23B4B80A8()
{
  result = qword_27E134D28;
  if (!qword_27E134D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D28);
  }

  return result;
}

unint64_t sub_23B4B8100()
{
  result = qword_27E134D30;
  if (!qword_27E134D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D30);
  }

  return result;
}

unint64_t sub_23B4B8158()
{
  result = qword_27E134D38;
  if (!qword_27E134D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D38);
  }

  return result;
}

unint64_t sub_23B4B81B0()
{
  result = qword_27E134D40;
  if (!qword_27E134D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D40);
  }

  return result;
}

unint64_t sub_23B4B8208()
{
  result = qword_27E134D48;
  if (!qword_27E134D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D48);
  }

  return result;
}

unint64_t sub_23B4B8260()
{
  result = qword_27E134D50;
  if (!qword_27E134D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D50);
  }

  return result;
}

unint64_t sub_23B4B82B8()
{
  result = qword_27E134D58;
  if (!qword_27E134D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D58);
  }

  return result;
}

unint64_t sub_23B4B8310()
{
  result = qword_27E134D60;
  if (!qword_27E134D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D60);
  }

  return result;
}

unint64_t sub_23B4B8368()
{
  result = qword_27E134D68;
  if (!qword_27E134D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D68);
  }

  return result;
}

unint64_t sub_23B4B83C0()
{
  result = qword_27E134D70;
  if (!qword_27E134D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D70);
  }

  return result;
}

unint64_t sub_23B4B8418()
{
  result = qword_27E134D78;
  if (!qword_27E134D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D78);
  }

  return result;
}

unint64_t sub_23B4B8470()
{
  result = qword_27E134D80;
  if (!qword_27E134D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D80);
  }

  return result;
}

unint64_t sub_23B4B84C8()
{
  result = qword_27E134D88;
  if (!qword_27E134D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D88);
  }

  return result;
}

unint64_t sub_23B4B8520()
{
  result = qword_27E134D90;
  if (!qword_27E134D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D90);
  }

  return result;
}

unint64_t sub_23B4B8578()
{
  result = qword_27E134D98;
  if (!qword_27E134D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134D98);
  }

  return result;
}

unint64_t sub_23B4B85D0()
{
  result = qword_27E134DA0;
  if (!qword_27E134DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DA0);
  }

  return result;
}

unint64_t sub_23B4B8628()
{
  result = qword_27E134DA8;
  if (!qword_27E134DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DA8);
  }

  return result;
}

unint64_t sub_23B4B8680()
{
  result = qword_27E134DB0;
  if (!qword_27E134DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DB0);
  }

  return result;
}

unint64_t sub_23B4B86D8()
{
  result = qword_27E134DB8;
  if (!qword_27E134DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DB8);
  }

  return result;
}

unint64_t sub_23B4B8730()
{
  result = qword_27E134DC0;
  if (!qword_27E134DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DC0);
  }

  return result;
}

unint64_t sub_23B4B8788()
{
  result = qword_27E134DC8;
  if (!qword_27E134DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DC8);
  }

  return result;
}

unint64_t sub_23B4B87E0()
{
  result = qword_27E134DD0;
  if (!qword_27E134DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DD0);
  }

  return result;
}

unint64_t sub_23B4B8838()
{
  result = qword_27E134DD8;
  if (!qword_27E134DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DD8);
  }

  return result;
}

unint64_t sub_23B4B8890()
{
  result = qword_27E134DE0;
  if (!qword_27E134DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DE0);
  }

  return result;
}

unint64_t sub_23B4B88E8()
{
  result = qword_27E134DE8;
  if (!qword_27E134DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DE8);
  }

  return result;
}

unint64_t sub_23B4B8940()
{
  result = qword_27E134DF0;
  if (!qword_27E134DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DF0);
  }

  return result;
}

unint64_t sub_23B4B8998()
{
  result = qword_27E134DF8;
  if (!qword_27E134DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134DF8);
  }

  return result;
}

unint64_t sub_23B4B89F0()
{
  result = qword_27E134E00;
  if (!qword_27E134E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E00);
  }

  return result;
}

unint64_t sub_23B4B8A48()
{
  result = qword_27E134E08;
  if (!qword_27E134E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E08);
  }

  return result;
}

unint64_t sub_23B4B8AA0()
{
  result = qword_27E134E10;
  if (!qword_27E134E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E10);
  }

  return result;
}

unint64_t sub_23B4B8AF8()
{
  result = qword_27E134E18;
  if (!qword_27E134E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E18);
  }

  return result;
}

unint64_t sub_23B4B8B50()
{
  result = qword_27E134E20;
  if (!qword_27E134E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E20);
  }

  return result;
}

unint64_t sub_23B4B8BA8()
{
  result = qword_27E134E28;
  if (!qword_27E134E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E28);
  }

  return result;
}

unint64_t sub_23B4B8C00()
{
  result = qword_27E134E30;
  if (!qword_27E134E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E30);
  }

  return result;
}

unint64_t sub_23B4B8C58()
{
  result = qword_27E134E38;
  if (!qword_27E134E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E38);
  }

  return result;
}

unint64_t sub_23B4B8CB0()
{
  result = qword_27E134E40;
  if (!qword_27E134E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E40);
  }

  return result;
}

unint64_t sub_23B4B8D08()
{
  result = qword_27E134E48;
  if (!qword_27E134E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E48);
  }

  return result;
}

unint64_t sub_23B4B8D60()
{
  result = qword_27E134E50;
  if (!qword_27E134E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E50);
  }

  return result;
}

unint64_t sub_23B4B8DB8()
{
  result = qword_27E134E58;
  if (!qword_27E134E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E58);
  }

  return result;
}

unint64_t sub_23B4B8E10()
{
  result = qword_27E134E60;
  if (!qword_27E134E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E60);
  }

  return result;
}

unint64_t sub_23B4B8E68()
{
  result = qword_27E134E68;
  if (!qword_27E134E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E68);
  }

  return result;
}

unint64_t sub_23B4B8EC0()
{
  result = qword_27E134E70;
  if (!qword_27E134E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E70);
  }

  return result;
}

unint64_t sub_23B4B8F18()
{
  result = qword_27E134E78;
  if (!qword_27E134E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E78);
  }

  return result;
}

unint64_t sub_23B4B8F70()
{
  result = qword_27E134E80;
  if (!qword_27E134E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E80);
  }

  return result;
}

unint64_t sub_23B4B8FC8()
{
  result = qword_27E134E88;
  if (!qword_27E134E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E88);
  }

  return result;
}

unint64_t sub_23B4B9020()
{
  result = qword_27E134E90;
  if (!qword_27E134E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E90);
  }

  return result;
}

unint64_t sub_23B4B9078()
{
  result = qword_27E134E98;
  if (!qword_27E134E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134E98);
  }

  return result;
}

unint64_t sub_23B4B90D0()
{
  result = qword_27E134EA0;
  if (!qword_27E134EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EA0);
  }

  return result;
}

unint64_t sub_23B4B9128()
{
  result = qword_27E134EA8;
  if (!qword_27E134EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EA8);
  }

  return result;
}

unint64_t sub_23B4B9180()
{
  result = qword_27E134EB0;
  if (!qword_27E134EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EB0);
  }

  return result;
}

unint64_t sub_23B4B91D8()
{
  result = qword_27E134EB8;
  if (!qword_27E134EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EB8);
  }

  return result;
}

unint64_t sub_23B4B9230()
{
  result = qword_27E134EC0;
  if (!qword_27E134EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EC0);
  }

  return result;
}

unint64_t sub_23B4B9288()
{
  result = qword_27E134EC8;
  if (!qword_27E134EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EC8);
  }

  return result;
}

unint64_t sub_23B4B92E0()
{
  result = qword_27E134ED0;
  if (!qword_27E134ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134ED0);
  }

  return result;
}

unint64_t sub_23B4B9338()
{
  result = qword_27E134ED8;
  if (!qword_27E134ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134ED8);
  }

  return result;
}

unint64_t sub_23B4B9390()
{
  result = qword_27E134EE0;
  if (!qword_27E134EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EE0);
  }

  return result;
}

unint64_t sub_23B4B93E8()
{
  result = qword_27E134EE8;
  if (!qword_27E134EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EE8);
  }

  return result;
}

unint64_t sub_23B4B9440()
{
  result = qword_27E134EF0;
  if (!qword_27E134EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EF0);
  }

  return result;
}

unint64_t sub_23B4B9498()
{
  result = qword_27E134EF8;
  if (!qword_27E134EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134EF8);
  }

  return result;
}

unint64_t sub_23B4B94F0()
{
  result = qword_27E134F00;
  if (!qword_27E134F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F00);
  }

  return result;
}

unint64_t sub_23B4B9548()
{
  result = qword_27E134F08;
  if (!qword_27E134F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F08);
  }

  return result;
}

unint64_t sub_23B4B95A0()
{
  result = qword_27E134F10;
  if (!qword_27E134F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F10);
  }

  return result;
}

unint64_t sub_23B4B95F8()
{
  result = qword_27E134F18;
  if (!qword_27E134F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F18);
  }

  return result;
}

unint64_t sub_23B4B9650()
{
  result = qword_27E134F20;
  if (!qword_27E134F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F20);
  }

  return result;
}

unint64_t sub_23B4B96A8()
{
  result = qword_27E134F28;
  if (!qword_27E134F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F28);
  }

  return result;
}

unint64_t sub_23B4B9700()
{
  result = qword_27E134F30;
  if (!qword_27E134F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F30);
  }

  return result;
}

unint64_t sub_23B4B9758()
{
  result = qword_27E134F38;
  if (!qword_27E134F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F38);
  }

  return result;
}

unint64_t sub_23B4B97B0()
{
  result = qword_27E134F40;
  if (!qword_27E134F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F40);
  }

  return result;
}

unint64_t sub_23B4B9808()
{
  result = qword_27E134F48;
  if (!qword_27E134F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F48);
  }

  return result;
}

unint64_t sub_23B4B9860()
{
  result = qword_27E134F50;
  if (!qword_27E134F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F50);
  }

  return result;
}

unint64_t sub_23B4B98B8()
{
  result = qword_27E134F58;
  if (!qword_27E134F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F58);
  }

  return result;
}

unint64_t sub_23B4B9910()
{
  result = qword_27E134F60;
  if (!qword_27E134F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F60);
  }

  return result;
}

unint64_t sub_23B4B9968()
{
  result = qword_27E134F68;
  if (!qword_27E134F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F68);
  }

  return result;
}

unint64_t sub_23B4B99C0()
{
  result = qword_27E134F70;
  if (!qword_27E134F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F70);
  }

  return result;
}

unint64_t sub_23B4B9A18()
{
  result = qword_27E134F78;
  if (!qword_27E134F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F78);
  }

  return result;
}

unint64_t sub_23B4B9A70()
{
  result = qword_27E134F80;
  if (!qword_27E134F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F80);
  }

  return result;
}

unint64_t sub_23B4B9AC8()
{
  result = qword_27E134F88;
  if (!qword_27E134F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F88);
  }

  return result;
}

unint64_t sub_23B4B9B20()
{
  result = qword_27E134F90;
  if (!qword_27E134F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F90);
  }

  return result;
}

unint64_t sub_23B4B9B78()
{
  result = qword_27E134F98;
  if (!qword_27E134F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134F98);
  }

  return result;
}

unint64_t sub_23B4B9BD0()
{
  result = qword_27E134FA0;
  if (!qword_27E134FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FA0);
  }

  return result;
}

unint64_t sub_23B4B9C28()
{
  result = qword_27E134FA8;
  if (!qword_27E134FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FA8);
  }

  return result;
}

unint64_t sub_23B4B9C80()
{
  result = qword_27E134FB0;
  if (!qword_27E134FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FB0);
  }

  return result;
}

unint64_t sub_23B4B9CD8()
{
  result = qword_27E134FB8;
  if (!qword_27E134FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FB8);
  }

  return result;
}

unint64_t sub_23B4B9D30()
{
  result = qword_27E134FC0;
  if (!qword_27E134FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FC0);
  }

  return result;
}

unint64_t sub_23B4B9D88()
{
  result = qword_27E134FC8;
  if (!qword_27E134FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FC8);
  }

  return result;
}

unint64_t sub_23B4B9DE0()
{
  result = qword_27E134FD0;
  if (!qword_27E134FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FD0);
  }

  return result;
}

unint64_t sub_23B4B9E38()
{
  result = qword_27E134FD8;
  if (!qword_27E134FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FD8);
  }

  return result;
}

unint64_t sub_23B4B9E90()
{
  result = qword_27E134FE0;
  if (!qword_27E134FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FE0);
  }

  return result;
}

unint64_t sub_23B4B9EE8()
{
  result = qword_27E134FE8;
  if (!qword_27E134FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FE8);
  }

  return result;
}

unint64_t sub_23B4B9F40()
{
  result = qword_27E134FF0;
  if (!qword_27E134FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FF0);
  }

  return result;
}

unint64_t sub_23B4B9F98()
{
  result = qword_27E134FF8;
  if (!qword_27E134FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E134FF8);
  }

  return result;
}

unint64_t sub_23B4B9FF0()
{
  result = qword_27E135000;
  if (!qword_27E135000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135000);
  }

  return result;
}

unint64_t sub_23B4BA048()
{
  result = qword_27E135008;
  if (!qword_27E135008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135008);
  }

  return result;
}

unint64_t sub_23B4BA0A0()
{
  result = qword_27E135010;
  if (!qword_27E135010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135010);
  }

  return result;
}

unint64_t sub_23B4BA0F8()
{
  result = qword_27E135018;
  if (!qword_27E135018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135018);
  }

  return result;
}

unint64_t sub_23B4BA150()
{
  result = qword_27E135020;
  if (!qword_27E135020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135020);
  }

  return result;
}

unint64_t sub_23B4BA1A8()
{
  result = qword_27E135028;
  if (!qword_27E135028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135028);
  }

  return result;
}

unint64_t sub_23B4BA200()
{
  result = qword_27E135030;
  if (!qword_27E135030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135030);
  }

  return result;
}

unint64_t sub_23B4BA258()
{
  result = qword_27E135038;
  if (!qword_27E135038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135038);
  }

  return result;
}

unint64_t sub_23B4BA2B0()
{
  result = qword_27E135040;
  if (!qword_27E135040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135040);
  }

  return result;
}

unint64_t sub_23B4BA308()
{
  result = qword_27E135048;
  if (!qword_27E135048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135048);
  }

  return result;
}

unint64_t sub_23B4BA360()
{
  result = qword_27E135050;
  if (!qword_27E135050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135050);
  }

  return result;
}

unint64_t sub_23B4BA3B8()
{
  result = qword_27E135058;
  if (!qword_27E135058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135058);
  }

  return result;
}

unint64_t sub_23B4BA410()
{
  result = qword_27E135060;
  if (!qword_27E135060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135060);
  }

  return result;
}

unint64_t sub_23B4BA468()
{
  result = qword_27E135068;
  if (!qword_27E135068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135068);
  }

  return result;
}

unint64_t sub_23B4BA4C0()
{
  result = qword_27E135070;
  if (!qword_27E135070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135070);
  }

  return result;
}

unint64_t sub_23B4BA518()
{
  result = qword_27E135078;
  if (!qword_27E135078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135078);
  }

  return result;
}

unint64_t sub_23B4BA570()
{
  result = qword_27E135080;
  if (!qword_27E135080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135080);
  }

  return result;
}

unint64_t sub_23B4BA5C8()
{
  result = qword_27E135088;
  if (!qword_27E135088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135088);
  }

  return result;
}

unint64_t sub_23B4BA620()
{
  result = qword_27E135090;
  if (!qword_27E135090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135090);
  }

  return result;
}

unint64_t sub_23B4BA678()
{
  result = qword_27E135098;
  if (!qword_27E135098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135098);
  }

  return result;
}

unint64_t sub_23B4BA6D0()
{
  result = qword_27E1350A0;
  if (!qword_27E1350A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350A0);
  }

  return result;
}

unint64_t sub_23B4BA728()
{
  result = qword_27E1350A8;
  if (!qword_27E1350A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350A8);
  }

  return result;
}

unint64_t sub_23B4BA780()
{
  result = qword_27E1350B0;
  if (!qword_27E1350B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350B0);
  }

  return result;
}

unint64_t sub_23B4BA7D8()
{
  result = qword_27E1350B8;
  if (!qword_27E1350B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350B8);
  }

  return result;
}

unint64_t sub_23B4BA830()
{
  result = qword_27E1350C0;
  if (!qword_27E1350C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350C0);
  }

  return result;
}

unint64_t sub_23B4BA888()
{
  result = qword_27E1350C8;
  if (!qword_27E1350C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350C8);
  }

  return result;
}

unint64_t sub_23B4BA8E0()
{
  result = qword_27E1350D0;
  if (!qword_27E1350D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350D0);
  }

  return result;
}

unint64_t sub_23B4BA938()
{
  result = qword_27E1350D8;
  if (!qword_27E1350D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350D8);
  }

  return result;
}

unint64_t sub_23B4BA990()
{
  result = qword_27E1350E0;
  if (!qword_27E1350E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350E0);
  }

  return result;
}

unint64_t sub_23B4BA9E8()
{
  result = qword_27E1350E8;
  if (!qword_27E1350E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350E8);
  }

  return result;
}

unint64_t sub_23B4BAA40()
{
  result = qword_27E1350F0;
  if (!qword_27E1350F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350F0);
  }

  return result;
}

unint64_t sub_23B4BAA98()
{
  result = qword_27E1350F8;
  if (!qword_27E1350F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1350F8);
  }

  return result;
}

unint64_t sub_23B4BAAF0()
{
  result = qword_27E135100;
  if (!qword_27E135100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135100);
  }

  return result;
}

unint64_t sub_23B4BAB48()
{
  result = qword_27E135108;
  if (!qword_27E135108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135108);
  }

  return result;
}

unint64_t sub_23B4BABA0()
{
  result = qword_27E135110;
  if (!qword_27E135110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135110);
  }

  return result;
}

unint64_t sub_23B4BABF8()
{
  result = qword_27E135118;
  if (!qword_27E135118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135118);
  }

  return result;
}

unint64_t sub_23B4BAC50()
{
  result = qword_27E135120;
  if (!qword_27E135120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135120);
  }

  return result;
}

unint64_t sub_23B4BACA8()
{
  result = qword_27E135128;
  if (!qword_27E135128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135128);
  }

  return result;
}

unint64_t sub_23B4BAD00()
{
  result = qword_27E135130;
  if (!qword_27E135130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135130);
  }

  return result;
}

unint64_t sub_23B4BAD58()
{
  result = qword_27E135138;
  if (!qword_27E135138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135138);
  }

  return result;
}

unint64_t sub_23B4BADB0()
{
  result = qword_27E135140;
  if (!qword_27E135140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135140);
  }

  return result;
}

unint64_t sub_23B4BAE08()
{
  result = qword_27E135148;
  if (!qword_27E135148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135148);
  }

  return result;
}

unint64_t sub_23B4BAE60()
{
  result = qword_27E135150;
  if (!qword_27E135150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135150);
  }

  return result;
}

unint64_t sub_23B4BAEB8()
{
  result = qword_27E135158;
  if (!qword_27E135158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135158);
  }

  return result;
}

unint64_t sub_23B4BAF10()
{
  result = qword_27E135160;
  if (!qword_27E135160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135160);
  }

  return result;
}

unint64_t sub_23B4BAF68()
{
  result = qword_27E135168;
  if (!qword_27E135168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135168);
  }

  return result;
}

unint64_t sub_23B4BAFC0()
{
  result = qword_27E135170;
  if (!qword_27E135170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135170);
  }

  return result;
}

unint64_t sub_23B4BB018()
{
  result = qword_27E135178;
  if (!qword_27E135178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135178);
  }

  return result;
}

unint64_t sub_23B4BB070()
{
  result = qword_27E135180;
  if (!qword_27E135180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135180);
  }

  return result;
}

unint64_t sub_23B4BB0C8()
{
  result = qword_27E135188;
  if (!qword_27E135188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135188);
  }

  return result;
}

unint64_t sub_23B4BB120()
{
  result = qword_27E135190;
  if (!qword_27E135190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135190);
  }

  return result;
}

unint64_t sub_23B4BB178()
{
  result = qword_27E135198;
  if (!qword_27E135198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135198);
  }

  return result;
}

unint64_t sub_23B4BB1D0()
{
  result = qword_27E1351A0;
  if (!qword_27E1351A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351A0);
  }

  return result;
}

unint64_t sub_23B4BB228()
{
  result = qword_27E1351A8;
  if (!qword_27E1351A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351A8);
  }

  return result;
}

unint64_t sub_23B4BB280()
{
  result = qword_27E1351B0;
  if (!qword_27E1351B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351B0);
  }

  return result;
}

unint64_t sub_23B4BB2D8()
{
  result = qword_27E1351B8;
  if (!qword_27E1351B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351B8);
  }

  return result;
}

unint64_t sub_23B4BB330()
{
  result = qword_27E1351C0;
  if (!qword_27E1351C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351C0);
  }

  return result;
}

unint64_t sub_23B4BB388()
{
  result = qword_27E1351C8;
  if (!qword_27E1351C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351C8);
  }

  return result;
}

unint64_t sub_23B4BB3E0()
{
  result = qword_27E1351D0;
  if (!qword_27E1351D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351D0);
  }

  return result;
}

unint64_t sub_23B4BB438()
{
  result = qword_27E1351D8;
  if (!qword_27E1351D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351D8);
  }

  return result;
}

unint64_t sub_23B4BB490()
{
  result = qword_27E1351E0;
  if (!qword_27E1351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351E0);
  }

  return result;
}

unint64_t sub_23B4BB4E8()
{
  result = qword_27E1351E8;
  if (!qword_27E1351E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351E8);
  }

  return result;
}

unint64_t sub_23B4BB540()
{
  result = qword_27E1351F0;
  if (!qword_27E1351F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351F0);
  }

  return result;
}

unint64_t sub_23B4BB598()
{
  result = qword_27E1351F8;
  if (!qword_27E1351F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1351F8);
  }

  return result;
}

unint64_t sub_23B4BB5F0()
{
  result = qword_27E135200;
  if (!qword_27E135200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135200);
  }

  return result;
}

unint64_t sub_23B4BB648()
{
  result = qword_27E135208;
  if (!qword_27E135208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135208);
  }

  return result;
}

unint64_t sub_23B4BB6A0()
{
  result = qword_27E135210;
  if (!qword_27E135210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135210);
  }

  return result;
}

unint64_t sub_23B4BB6F8()
{
  result = qword_27E135218;
  if (!qword_27E135218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135218);
  }

  return result;
}

unint64_t sub_23B4BB750()
{
  result = qword_27E135220;
  if (!qword_27E135220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135220);
  }

  return result;
}

unint64_t sub_23B4BB7A8()
{
  result = qword_27E135228;
  if (!qword_27E135228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135228);
  }

  return result;
}

unint64_t sub_23B4BB800()
{
  result = qword_27E135230;
  if (!qword_27E135230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135230);
  }

  return result;
}

unint64_t sub_23B4BB858()
{
  result = qword_27E135238;
  if (!qword_27E135238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135238);
  }

  return result;
}

unint64_t sub_23B4BB8B0()
{
  result = qword_27E135240;
  if (!qword_27E135240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135240);
  }

  return result;
}

unint64_t sub_23B4BB908()
{
  result = qword_27E135248;
  if (!qword_27E135248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135248);
  }

  return result;
}

unint64_t sub_23B4BB960()
{
  result = qword_27E135250;
  if (!qword_27E135250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135250);
  }

  return result;
}

unint64_t sub_23B4BB9B8()
{
  result = qword_27E135258;
  if (!qword_27E135258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135258);
  }

  return result;
}

unint64_t sub_23B4BBA10()
{
  result = qword_27E135260;
  if (!qword_27E135260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135260);
  }

  return result;
}

unint64_t sub_23B4BBA68()
{
  result = qword_27E135268;
  if (!qword_27E135268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135268);
  }

  return result;
}

unint64_t sub_23B4BBAC0()
{
  result = qword_27E135270;
  if (!qword_27E135270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135270);
  }

  return result;
}

unint64_t sub_23B4BBB18()
{
  result = qword_27E135278;
  if (!qword_27E135278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135278);
  }

  return result;
}

unint64_t sub_23B4BBB70()
{
  result = qword_27E135280;
  if (!qword_27E135280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135280);
  }

  return result;
}

unint64_t sub_23B4BBBC8()
{
  result = qword_27E135288;
  if (!qword_27E135288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135288);
  }

  return result;
}

unint64_t sub_23B4BBC20()
{
  result = qword_27E135290;
  if (!qword_27E135290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135290);
  }

  return result;
}

unint64_t sub_23B4BBC78()
{
  result = qword_27E135298;
  if (!qword_27E135298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135298);
  }

  return result;
}

unint64_t sub_23B4BBCD0()
{
  result = qword_27E1352A0;
  if (!qword_27E1352A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352A0);
  }

  return result;
}

unint64_t sub_23B4BBD28()
{
  result = qword_27E1352A8;
  if (!qword_27E1352A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352A8);
  }

  return result;
}

unint64_t sub_23B4BBD80()
{
  result = qword_27E1352B0;
  if (!qword_27E1352B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352B0);
  }

  return result;
}

unint64_t sub_23B4BBDD8()
{
  result = qword_27E1352B8;
  if (!qword_27E1352B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352B8);
  }

  return result;
}

unint64_t sub_23B4BBE30()
{
  result = qword_27E1352C0;
  if (!qword_27E1352C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352C0);
  }

  return result;
}

unint64_t sub_23B4BBE88()
{
  result = qword_27E1352C8;
  if (!qword_27E1352C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352C8);
  }

  return result;
}

unint64_t sub_23B4BBEE0()
{
  result = qword_27E1352D0;
  if (!qword_27E1352D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352D0);
  }

  return result;
}

unint64_t sub_23B4BBF38()
{
  result = qword_27E1352D8;
  if (!qword_27E1352D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352D8);
  }

  return result;
}

unint64_t sub_23B4BBF90()
{
  result = qword_27E1352E0;
  if (!qword_27E1352E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352E0);
  }

  return result;
}

unint64_t sub_23B4BBFE8()
{
  result = qword_27E1352E8;
  if (!qword_27E1352E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352E8);
  }

  return result;
}

unint64_t sub_23B4BC040()
{
  result = qword_27E1352F0;
  if (!qword_27E1352F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352F0);
  }

  return result;
}

unint64_t sub_23B4BC098()
{
  result = qword_27E1352F8;
  if (!qword_27E1352F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1352F8);
  }

  return result;
}

unint64_t sub_23B4BC0F0()
{
  result = qword_27E135300;
  if (!qword_27E135300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135300);
  }

  return result;
}

unint64_t sub_23B4BC148()
{
  result = qword_27E135308;
  if (!qword_27E135308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135308);
  }

  return result;
}

unint64_t sub_23B4BC1A0()
{
  result = qword_27E135310;
  if (!qword_27E135310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135310);
  }

  return result;
}

unint64_t sub_23B4BC1F8()
{
  result = qword_27E135318;
  if (!qword_27E135318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135318);
  }

  return result;
}

unint64_t sub_23B4BC250()
{
  result = qword_27E135320;
  if (!qword_27E135320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135320);
  }

  return result;
}

unint64_t sub_23B4BC2A8()
{
  result = qword_27E135328;
  if (!qword_27E135328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135328);
  }

  return result;
}

unint64_t sub_23B4BC300()
{
  result = qword_27E135330;
  if (!qword_27E135330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135330);
  }

  return result;
}

unint64_t sub_23B4BC358()
{
  result = qword_27E135338;
  if (!qword_27E135338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135338);
  }

  return result;
}

unint64_t sub_23B4BC3B0()
{
  result = qword_27E135340;
  if (!qword_27E135340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135340);
  }

  return result;
}

unint64_t sub_23B4BC408()
{
  result = qword_27E135348;
  if (!qword_27E135348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135348);
  }

  return result;
}

unint64_t sub_23B4BC460()
{
  result = qword_27E135350;
  if (!qword_27E135350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135350);
  }

  return result;
}

unint64_t sub_23B4BC4B8()
{
  result = qword_27E135358;
  if (!qword_27E135358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135358);
  }

  return result;
}

unint64_t sub_23B4BC510()
{
  result = qword_27E135360;
  if (!qword_27E135360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135360);
  }

  return result;
}

unint64_t sub_23B4BC568()
{
  result = qword_27E135368;
  if (!qword_27E135368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135368);
  }

  return result;
}

unint64_t sub_23B4BC5C0()
{
  result = qword_27E135370;
  if (!qword_27E135370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E135370);
  }

  return result;
}

uint64_t sub_23B4BC624@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v20 = a2;
  sub_23B39D980(a3);
  for (i = 0; i != 8; ++i)
  {
    v8 = &type metadata for WeatherAvailability;
    switch(i)
    {
      case 1:
        v10 = &qword_27E131C90;
        v11 = &unk_23B514EC0;
        goto LABEL_10;
      case 2:
        v10 = &qword_27E131CA8;
        v11 = &unk_23B50ED70;
        goto LABEL_10;
      case 3:
        v10 = &qword_27E131CB0;
        v11 = &qword_23B516B60;
        goto LABEL_10;
      case 4:
        v10 = &qword_27E131EC8;
        v11 = &unk_23B50F1F0;
        goto LABEL_10;
      case 5:
        goto LABEL_12;
      case 6:
        v10 = &qword_27E131C78;
        v11 = &qword_23B50ED40;
        goto LABEL_10;
      case 7:
        v10 = &qword_27E131EF0;
        v11 = &unk_23B50F220;
LABEL_10:
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
        break;
      default:
        v9 = type metadata accessor for CurrentWeather(0);
        break;
    }

    v8 = v9;
LABEL_12:
    v12 = *(a1 + 8 * i);
    v13 = type metadata accessor for WeatherQuery(0, v8, v5, v6);
    v14 = *(v13 - 8);
    v15 = MEMORY[0x28223BE20](v13);
    v17 = &v19 - v16;
    (*(v14 + 16))(&v19 - v16, v12, v13, v15);
    sub_23B39EEA0(v17, v20, a3, v8);
    result = (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_23B4BC80C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v6 = result;
  v27 = a5;
  for (i = 0; i != 8; ++i)
  {
    if (i)
    {
      v8 = &type metadata for WeatherAvailability;
      switch(i)
      {
        case 2:
          v9 = &qword_27E131CA8;
          v10 = &unk_23B50ED70;
          goto LABEL_12;
        case 3:
          v9 = &qword_27E131CB0;
          v10 = &qword_23B516B60;
          goto LABEL_12;
        case 4:
          v9 = &qword_27E131EC8;
          v10 = &unk_23B50F1F0;
          goto LABEL_12;
        case 5:
          goto LABEL_14;
        case 6:
          v9 = &qword_27E131C78;
          v10 = &qword_23B50ED40;
          goto LABEL_12;
        case 7:
          v9 = &qword_27E131EF0;
          v10 = &unk_23B50F220;
          goto LABEL_12;
        default:
          v9 = &qword_27E131C90;
          v10 = &unk_23B514EC0;
LABEL_12:
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          break;
      }
    }

    else
    {
      v11 = type metadata accessor for CurrentWeather(0);
    }

    v8 = v11;
LABEL_14:
    v12 = *(v27 + 8 * i);
    v13 = *(v6 + 8 * i);
    v14 = type metadata accessor for WeatherQuery(0, v8, a3, a4);
    v15 = *(v14 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = &v25 - v17;
    (*(v15 + 16))(&v25 - v17, v13, v14, v16);
    sub_23B3C0560(v26, v14, v12);
    if (v5)
    {
      result = (*(v15 + 8))(v18, v14);
      if (i)
      {
        v19 = v27 - 8;
        do
        {
          v20 = i--;
          if (i)
          {
            v22 = &type metadata for WeatherAvailability;
            switch(v20)
            {
              case 3:
                v23 = &qword_27E131CA8;
                v24 = &unk_23B50ED70;
                goto LABEL_26;
              case 4:
                v23 = &qword_27E131CB0;
                v24 = &qword_23B516B60;
                goto LABEL_26;
              case 5:
                v23 = &qword_27E131EC8;
                v24 = &unk_23B50F1F0;
                goto LABEL_26;
              case 6:
                goto LABEL_28;
              case 7:
                v23 = &qword_27E131C78;
                v24 = &qword_23B50ED40;
                goto LABEL_26;
              default:
                v23 = &qword_27E131C90;
                v24 = &unk_23B514EC0;
LABEL_26:
                v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
                break;
            }
          }

          else
          {
            v21 = type metadata accessor for CurrentWeather(0);
          }

          v22 = v21;
LABEL_28:
          result = (*(v22[-1].Description + 1))(*(v19 + 8 * v20));
        }

        while (i);
      }

      return result;
    }

    result = (*(v15 + 8))(v18, v14);
  }

  return result;
}

uint64_t sub_23B4BCB24(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v180 = a5;
  v179 = a4;
  v182 = a3;
  v186 = *v5;
  v190 = sub_23B50AD24();
  v184 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v183 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v148 = &v144 - v11;
  v177 = v12;
  MEMORY[0x28223BE20](v13);
  v191 = &v144 - v14;
  v189 = sub_23B50B7B4();
  v178 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v174 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v144 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v175 = *(v19 - 1);
  v176 = *(v175 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v144 - v20;
  v22 = _s21WeatherServiceRequestVMa(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = (&v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for CurrentWeather(0);
  v27 = *a2;
  v30 = type metadata accessor for WeatherQuery(0, v26, v28, v29);
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v172 = v30;
  v171 = v32;
  v170 = v31 + 16;
  (v32)(v21, v27);
  v193[0] = v21;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v34 = &v21[v19[12]];
  v35 = a2[1];
  v38 = type metadata accessor for WeatherQuery(0, v33, v36, v37);
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v169 = v38;
  v168 = v40;
  v167 = v39 + 16;
  (v40)(v34, v35);
  v193[1] = v34;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v42 = &v21[v19[16]];
  v43 = a2[2];
  v46 = type metadata accessor for WeatherQuery(0, v41, v44, v45);
  v47 = *(v46 - 8);
  v48 = *(v47 + 16);
  v166 = v46;
  v165 = v48;
  v164 = v47 + 16;
  (v48)(v42, v43);
  v193[2] = v42;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v50 = &v21[v19[20]];
  v51 = a2[3];
  v54 = type metadata accessor for WeatherQuery(0, v49, v52, v53);
  v55 = *(v54 - 8);
  v56 = *(v55 + 16);
  v163 = v54;
  v162 = v56;
  v161 = v55 + 16;
  (v56)(v50, v51);
  v193[3] = v50;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
  v58 = &v21[v19[24]];
  v59 = a2[4];
  v62 = type metadata accessor for WeatherQuery(0, v57, v60, v61);
  v63 = *(v62 - 8);
  v64 = *(v63 + 16);
  v160 = v62;
  v159 = v64;
  v158 = v63 + 16;
  (v64)(v58, v59);
  v193[4] = v58;
  v65 = &v21[v19[28]];
  v66 = a2[5];
  v69 = type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, v67, v68);
  v70 = *(v69 - 8);
  v71 = *(v70 + 16);
  v157 = v69;
  v156 = v71;
  v155 = v70 + 16;
  (v71)(v65, v66);
  v193[5] = v65;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v73 = &v21[v19[32]];
  v74 = a2[6];
  v77 = type metadata accessor for WeatherQuery(0, v72, v75, v76);
  v78 = *(v77 - 8);
  v79 = *(v78 + 16);
  v154 = v77;
  v153 = v79;
  v152 = v78 + 16;
  (v79)(v73, v74);
  v193[6] = v73;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  v81 = &v21[v19[36]];
  v146 = a2;
  v82 = a2[7];
  v85 = type metadata accessor for WeatherQuery(0, v80, v83, v84);
  v86 = *(v85 - 8);
  v87 = *(v86 + 16);
  v151 = v85;
  v150 = v87;
  v149 = v86 + 16;
  (v87)(v81, v82);
  v193[7] = v81;
  v88 = v182;
  sub_23B4BC624(v193, v182, v25);
  sub_23B4D7720(v21, &qword_27E1353A8, &qword_23B523820);
  v89 = *(v23 + 28);
  v185 = v25;
  v187 = v6;
  v188 = v18;
  sub_23B3A0F38(v88, v25 + v89, v90, v91, v92, v93, v94, v95, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155);
  sub_23B50AD14();
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v96 = sub_23B50CDF4();
  __swift_project_value_buffer(v96, qword_280B4E9D8);
  v97 = v184;
  v98 = v148;
  v99 = v190;
  v181 = *(v184 + 16);
  v182 = v184 + 16;
  v181(v148, v191, v190);
  v100 = a1;
  v101 = sub_23B50CDD4();
  v102 = sub_23B50D4C4();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = v97;
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v144 = v105;
    v145 = swift_slowAlloc();
    v192 = v145;
    *v104 = 141558531;
    *(v104 + 4) = 1752392040;
    *(v104 + 12) = 2113;
    *(v104 + 14) = v100;
    *v105 = v100;
    *(v104 + 22) = 2082;
    v181(v183, v98, v99);
    v106 = v100;
    v107 = sub_23B50D1A4();
    v108 = v99;
    v110 = v109;
    v111 = *(v103 + 8);
    v147 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v111(v98, v108);
    v112 = sub_23B391F1C(v107, v110, &v192);

    *(v104 + 24) = v112;
    _os_log_impl(&dword_23B38D000, v101, v102, "About to fetch weather data; location=%{private,mask.hash}@, startTime=%{public}s", v104, 0x20u);
    v113 = v144;
    sub_23B4D7720(v144, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v113, -1, -1);
    v114 = v145;
    __swift_destroy_boxed_opaque_existential_1(v145);
    MEMORY[0x23EE9E260](v114, -1, -1);
    MEMORY[0x23EE9E260](v104, -1, -1);
  }

  else
  {

    v116 = *(v97 + 8);
    v147 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v115 = v116(v98, v99);
  }

  MEMORY[0x28223BE20](v115);
  v117 = v188;
  v118 = v185;
  *(&v144 - 4) = v187;
  *(&v144 - 3) = v118;
  *(&v144 - 2) = v100;
  *(&v144 - 1) = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E133950, &unk_23B519500);
  sub_23B50B0C4();
  v119 = v178;
  v120 = v174;
  v121 = v189;
  (*(v178 + 16))(v174, v117, v189);
  v122 = (*(v119 + 80) + 24) & ~*(v119 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = v100;
  (*(v119 + 32))(v123 + v122, v120, v121);
  v173 = v100;
  v124 = sub_23B50B034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  v174 = sub_23B50B064();

  v125 = v183;
  v126 = v190;
  v181(v183, v191, v190);
  v127 = v146;
  v171(v21, *v146, v172);
  v168(&v21[v19[12]], v127[1], v169);
  v165(&v21[v19[16]], v127[2], v166);
  v162(&v21[v19[20]], v127[3], v163);
  v159(&v21[v19[24]], v127[4], v160);
  v156(&v21[v19[28]], v127[5], v157);
  v153(&v21[v19[32]], v127[6], v154);
  v150(&v21[v19[36]], v127[7], v151);
  v128 = v184;
  v129 = (*(v184 + 80) + 16) & ~*(v184 + 80);
  v130 = (v177 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
  v131 = (*(v175 + 80) + v130 + 8) & ~*(v175 + 80);
  v132 = (v176 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
  v133 = swift_allocObject();
  (*(v128 + 32))(v133 + v129, v125, v126);
  v134 = v173;
  *(v133 + v130) = v173;
  sub_23B4D7774(v21, v133 + v131, &qword_27E1353A8, &qword_23B523820);
  v135 = (v133 + v132);
  v136 = v179;
  v137 = v180;
  *v135 = v179;
  v135[1] = v137;
  v138 = v134;

  v139 = sub_23B50B034();
  sub_23B50B074();

  v140 = swift_allocObject();
  v140[2] = v138;
  v140[3] = v136;
  v140[4] = v137;
  v141 = v138;

  v142 = sub_23B50B034();
  sub_23B50B084();

  (*(v128 + 8))(v191, v190);
  (*(v119 + 8))(v188, v189);
  return sub_23B393E24(v185, _s21WeatherServiceRequestVMa);
}

uint64_t sub_23B4BD954(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - v12;
  v14 = type metadata accessor for CurrentWeather(0);
  v15 = *a2;
  v18 = type metadata accessor for WeatherQuery(0, v14, v16, v17);
  (*(*(v18 - 8) + 16))(v13, v15, v18);
  v61[0] = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v20 = &v13[v11[14]];
  v21 = a2[1];
  v24 = type metadata accessor for WeatherQuery(0, v19, v22, v23);
  (*(*(v24 - 8) + 16))(v20, v21, v24);
  v61[1] = v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v26 = &v13[v11[18]];
  v27 = a2[2];
  v30 = type metadata accessor for WeatherQuery(0, v25, v28, v29);
  (*(*(v30 - 8) + 16))(v26, v27, v30);
  v61[2] = v26;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v32 = &v13[v11[22]];
  v33 = a2[3];
  v36 = type metadata accessor for WeatherQuery(0, v31, v34, v35);
  (*(*(v36 - 8) + 16))(v32, v33, v36);
  v61[3] = v32;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
  v38 = &v13[v11[26]];
  v39 = a2[4];
  v42 = type metadata accessor for WeatherQuery(0, v37, v40, v41);
  (*(*(v42 - 8) + 16))(v38, v39, v42);
  v61[4] = v38;
  v43 = &v13[v11[30]];
  v44 = a2[5];
  v47 = type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, v45, v46);
  (*(*(v47 - 8) + 16))(v43, v44, v47);
  v61[5] = v43;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v49 = &v13[v11[34]];
  v50 = a2[6];
  v53 = type metadata accessor for WeatherQuery(0, v48, v51, v52);
  (*(*(v53 - 8) + 16))(v49, v50, v53);
  v61[6] = v49;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  v55 = &v13[v11[38]];
  v56 = a2[7];
  v59 = type metadata accessor for WeatherQuery(0, v54, v57, v58);
  (*(*(v59 - 8) + 16))(v55, v56, v59);
  v61[7] = v55;
  sub_23B4BCB24(a1, v61, a3, a4, a5);
  return sub_23B4D7720(v13, &qword_27E1353A8, &qword_23B523820);
}

uint64_t sub_23B4BDD28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v92 = a7;
  v89 = a6;
  v107 = a5;
  v110 = a4;
  v113 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353A8, &qword_23B523820);
  MEMORY[0x28223BE20](v8);
  v108 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353B0, &qword_23B523828);
  MEMORY[0x28223BE20](v10);
  v109 = &v89 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C0, &qword_23B523838);
  MEMORY[0x28223BE20](v90);
  v91 = &v89 - v12;
  v13 = type metadata accessor for WeatherProductsContainer(0);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D70, &qword_23B515160);
  MEMORY[0x28223BE20](v111);
  v16 = (&v89 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EA8, &qword_23B5194F0);
  MEMORY[0x28223BE20](v17 - 8);
  v115 = &v89 - v18;
  v19 = sub_23B50AD24();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for CurrentWeather(0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C90, &unk_23B514EC0);
  v95 = v8[12];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CA8, &unk_23B50ED70);
  v97 = v8[16];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131CB0, &qword_23B516B60);
  v99 = v8[20];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EC8, &unk_23B50F1F0);
  v101 = v8[24];
  v102 = v8[28];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131C78, &qword_23B50ED40);
  v104 = v8[32];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E131EF0, &unk_23B50F220);
  v106 = v8[36];
  sub_23B50AD14();
  sub_23B50ABD4();
  v24 = v23;
  (*(v20 + 8))(v22, v19);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v25 = sub_23B50CDF4();
  v26 = __swift_project_value_buffer(v25, qword_280B4E9D8);
  v27 = v110;
  v28 = sub_23B50CDD4();
  v29 = sub_23B50D4C4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v110 = v26;
    v32 = v31;
    *v30 = 141558531;
    *(v30 + 4) = 1752392040;
    *(v30 + 12) = 2113;
    *(v30 + 14) = v27;
    *v31 = v27;
    *(v30 + 22) = 2050;
    *(v30 + 24) = v24;
    v33 = v27;
    _os_log_impl(&dword_23B38D000, v28, v29, "Got response for fetch of weather data + corresponding AQI scale; location=%{private,mask.hash}@, duration=%{public}f", v30, 0x20u);
    sub_23B4D7720(v32, &qword_27E132D80, &qword_23B5192E0);
    MEMORY[0x23EE9E260](v32, -1, -1);
    MEMORY[0x23EE9E260](v30, -1, -1);
  }

  sub_23B3EB900(a1, v16, &qword_27E132D70, &qword_23B515160);
  v34 = *v16;
  v35 = v16 + *(v111 + 48);
  v36 = v115;
  sub_23B4D7774(v35, v115, &qword_27E131EA8, &qword_23B5194F0);
  v37 = v114;
  v38 = v112;
  sub_23B3A8A0C(v34, v27, v36, v114);
  if (v38)
  {
    sub_23B4D7720(v36, &qword_27E131EA8, &qword_23B5194F0);
  }

  else
  {

    v40 = v109;
    v41 = &v109[v10[12]];
    v117[0] = v109;
    v117[1] = v41;
    v42 = &v109[v10[20]];
    v117[2] = &v109[v10[16]];
    v117[3] = v42;
    v43 = &v109[v10[28]];
    v117[4] = &v109[v10[24]];
    v117[5] = v43;
    v44 = &v109[v10[36]];
    v117[6] = &v109[v10[32]];
    v117[7] = v44;
    v47 = type metadata accessor for WeatherQuery(0, v93, v45, v46);
    v48 = v108;
    v49 = v37;
    v50 = v107;
    (*(*(v47 - 8) + 16))(v108, v107, v47);
    v116[0] = v48;
    v51 = v48 + v8[12];
    v54 = type metadata accessor for WeatherQuery(0, v94, v52, v53);
    (*(*(v54 - 8) + 16))(v51, v50 + v95, v54);
    v116[1] = v51;
    v55 = v48 + v8[16];
    v58 = type metadata accessor for WeatherQuery(0, v96, v56, v57);
    (*(*(v58 - 8) + 16))(v55, v50 + v97, v58);
    v116[2] = v55;
    v59 = v48 + v8[20];
    v62 = type metadata accessor for WeatherQuery(0, v98, v60, v61);
    (*(*(v62 - 8) + 16))(v59, v50 + v99, v62);
    v116[3] = v59;
    v63 = v48 + v8[24];
    v66 = type metadata accessor for WeatherQuery(0, v100, v64, v65);
    (*(*(v66 - 8) + 16))(v63, v50 + v101, v66);
    v116[4] = v63;
    v67 = v48 + v8[28];
    v70 = type metadata accessor for WeatherQuery(0, &type metadata for WeatherAvailability, v68, v69);
    (*(*(v70 - 8) + 16))(v67, v50 + v102, v70);
    v116[5] = v67;
    v71 = v48 + v8[32];
    v74 = type metadata accessor for WeatherQuery(0, v103, v72, v73);
    (*(*(v74 - 8) + 16))(v71, v50 + v104, v74);
    v116[6] = v71;
    v75 = v48 + v8[36];
    v78 = type metadata accessor for WeatherQuery(0, v105, v76, v77);
    (*(*(v78 - 8) + 16))(v75, v50 + v106, v78);
    v116[7] = v75;
    sub_23B4BC80C(v116, v49, v79, v80, v117);
    sub_23B4D7720(v48, &qword_27E1353A8, &qword_23B523820);
    v81 = v27;
    v82 = sub_23B50CDD4();
    v83 = sub_23B50D4C4();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2113;
      *(v84 + 14) = v81;
      *v85 = v81;
      v86 = v81;
      _os_log_impl(&dword_23B38D000, v82, v83, "Successfully created product tuple; location=%{private,mask.hash}@", v84, 0x16u);
      sub_23B4D7720(v85, &qword_27E132D80, &qword_23B5192E0);
      MEMORY[0x23EE9E260](v85, -1, -1);
      v87 = v84;
      v40 = v109;
      MEMORY[0x23EE9E260](v87, -1, -1);
    }

    v88 = v91;
    sub_23B3EB900(v40, v91, &qword_27E1353B0, &qword_23B523828);
    swift_storeEnumTagMultiPayload();
    v89(v88);
    sub_23B4D7720(v88, &qword_27E1353C0, &qword_23B523838);
    sub_23B393E24(v49, type metadata accessor for WeatherProductsContainer);
    sub_23B4D7720(v115, &qword_27E131EA8, &qword_23B5194F0);
    return sub_23B4D7720(v40, &qword_27E1353B0, &qword_23B523828);
  }
}

uint64_t sub_23B4BE870(void *a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1353C0, &qword_23B523838);
  MEMORY[0x28223BE20](v8);
  v10 = (&v30 - v9);
  if (qword_280B43440 != -1)
  {
    swift_once();
  }

  v11 = sub_23B50CDF4();
  __swift_project_value_buffer(v11, qword_280B4E9D8);
  v12 = a1;
  v13 = a2;
  v14 = sub_23B50CDD4();
  v15 = sub_23B50D4B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = v14;
    v19 = v18;
    v33 = swift_slowAlloc();
    v35 = v33;
    *v17 = 141558787;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2113;
    *(v17 + 14) = v13;
    *v19 = v13;
    *(v17 + 22) = 2082;
    swift_getErrorValue();
    v31 = v15;
    v20 = v13;
    v21 = sub_23B50D874();
    v23 = sub_23B391F1C(v21, v22, &v35);

    *(v17 + 24) = v23;
    *(v17 + 32) = 2112;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v25;
    v19[1] = v25;
    v26 = v32;
    _os_log_impl(&dword_23B38D000, v32, v31, "Encountered an error when fetching weather data subset; location=%{private,mask.hash}@, error=%{public}s %@", v17, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E132D80, &qword_23B5192E0);
    swift_arrayDestroy();
    MEMORY[0x23EE9E260](v19, -1, -1);
    v27 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x23EE9E260](v27, -1, -1);
    MEMORY[0x23EE9E260](v17, -1, -1);
  }

  else
  {
  }

  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  v28 = a1;
  a3(v10);
  return sub_23B4D7720(v10, &qword_27E1353C0, &qword_23B523838);
}

uint64_t sub_23B4BEB58()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_83_2();
  v13 = OUTLINED_FUNCTION_8_27(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_1_39(*(v2 & 0xFFFFFFFFFFFFFFFELL));
    v0 = type metadata accessor for HourlyWeatherStatisticsQuery(v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_88_1(v13, v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_42_9();
    while (v3 != v4)
    {
      v22 = OUTLINED_FUNCTION_9_30(*(v2 + 8 * v4));
      v24 = type metadata accessor for HourlyWeatherStatisticsQuery(v22, v23);
      OUTLINED_FUNCTION_193_1(v24);
    }

    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_74_1();
    swift_getTupleTypeMetadata();
    OUTLINED_FUNCTION_164_1();
  }

  v1[25] = v0;
  OUTLINED_FUNCTION_43_9();
  v1[26] = v25;
  v26 = OUTLINED_FUNCTION_13_22();
  v27 = OUTLINED_FUNCTION_141_1(v26);
  v28 = type metadata accessor for StatisticsSpanFactory(v27);
  OUTLINED_FUNCTION_3(v28);
  v1[28] = OUTLINED_FUNCTION_13_22();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_125_1();
  return OUTLINED_FUNCTION_49_5();
}

uint64_t sub_23B4BEC78()
{
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_146();
  v4(v3);
  sub_23B4E6760();
  v5 = OUTLINED_FUNCTION_179_0();
  *(v1 + 232) = v5;
  if (v0)
  {
    v6 = OUTLINED_FUNCTION_159_1();
    memcpy(v6, v7, v2);
  }

  v35 = v5;
  v39 = swift_task_alloc();
  *(v1 + 240) = v39;
  if (v0)
  {
    OUTLINED_FUNCTION_132_1();
    do
    {
      OUTLINED_FUNCTION_188_1();
      v8 = OUTLINED_FUNCTION_12_25();
      type metadata accessor for HourlyWeatherStatisticsQuery(v8, v9);
      OUTLINED_FUNCTION_2();
      v10 = OUTLINED_FUNCTION_187_1();
      v12 = v11(v10);
      OUTLINED_FUNCTION_186_1(v12, v13, v14, v15, v16, v17, v18, v19, v35, v36, v37, v38, v39);
    }

    while (!v20);
  }

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_56_4(v21);
  *v22 = v23;
  v24 = OUTLINED_FUNCTION_78_2(v22);
  OUTLINED_FUNCTION_113_1(v24);
  OUTLINED_FUNCTION_158_1(v25, v26, v27, v28, v29, v30, v31, v32, v35);
  OUTLINED_FUNCTION_3_25();

  return sub_23B4CDD74();
}