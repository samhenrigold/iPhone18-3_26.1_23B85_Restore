uint64_t sub_1E60CC620(char a1)
{
  result = 0x53746E756F636361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x614C657669746361;
    case 3:
    case 31:
    case 37:
    case 44:
    case 48:
      return 0xD000000000000016;
    case 4:
    case 40:
    case 45:
    case 46:
    case 54:
    case 60:
    case 67:
    case 69:
      return 0xD000000000000011;
    case 5:
      return 0xD000000000000021;
    case 6:
    case 74:
      v4 = 5;
      goto LABEL_53;
    case 7:
    case 56:
      return 0xD00000000000001ELL;
    case 8:
    case 57:
      return 0xD00000000000001CLL;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x616D496472617761;
    case 13:
    case 17:
    case 23:
    case 79:
      v4 = 11;
      goto LABEL_53;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x616F546472617761;
    case 16:
    case 34:
    case 36:
      return 0xD000000000000017;
    case 18:
      return 0xD000000000000013;
    case 19:
      return 0xD000000000000010;
    case 20:
      v3 = 0x6573776F7262;
      goto LABEL_31;
    case 21:
      v3 = 0x7361766E6163;
      goto LABEL_31;
    case 22:
    case 53:
    case 62:
      v4 = 10;
      goto LABEL_53;
    case 24:
      return 0x5379616C70736964;
    case 25:
    case 47:
    case 72:
      v4 = 9;
LABEL_53:
      result = v4 | 0xD000000000000010;
      break;
    case 27:
      result = 0x6169726F74696465;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x6F4C756F59726F66;
      break;
    case 33:
      result = 0x7373416567616D69;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0x636E79537473616CLL;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 41:
      result = 0x537972617262696CLL;
      break;
    case 42:
      result = 0x6E6974656B72616DLL;
      break;
    case 43:
      result = 0x7974696C61646F6DLL;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0x696472616F626E6FLL;
      break;
    case 51:
      result = 0xD000000000000010;
      break;
    case 52:
      result = 0xD000000000000018;
      break;
    case 55:
      result = 0x446D6172676F7270;
      break;
    case 58:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0x6D657449746F6F72;
      break;
    case 63:
      result = 0xD000000000000025;
      break;
    case 64:
      result = 0xD000000000000026;
      break;
    case 65:
      v3 = 0x686372616573;
LABEL_31:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 66:
      result = 0x616C506572616873;
      break;
    case 68:
      result = 0x7461745369726973;
      break;
    case 70:
      result = 0x4472656E69617274;
      break;
    case 71:
      result = 0x75517478654E7075;
      break;
    case 73:
      result = 0x4474756F6B726F77;
      break;
    case 75:
      result = 0x5374756F6B726F77;
      break;
    case 76:
      result = 0x577972617262696CLL;
      break;
    case 78:
      result = 0x507972617262696CLL;
      break;
    case 80:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1E60CCDA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E60DED20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E60CCDD4(uint64_t a1)
{
  v2 = sub_1E60CED90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60CCE10(uint64_t a1)
{
  v2 = sub_1E60CED90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745C8, &qword_1E65F0F88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60CED90();
  sub_1E65E6DA8();
  LOBYTE(v42) = 0;
  sub_1E65DE668();
  sub_1E60DE6BC(&qword_1ED0745D8, MEMORY[0x1E699CBA8], MEMORY[0x1E699CBB0]);
  sub_1E65E6B78();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9 = type metadata accessor for AppState(0);
  LOBYTE(v42) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E60CEDE4();
  sub_1E65E6B78();
  v30 = v9;
  v31 = v6;
  LOBYTE(v42) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E5FED46C(&qword_1ED074608, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D8F0]);
  v29 = v3;
  sub_1E65E6B78();
  LOBYTE(v42) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E60CEEF8();
  v11 = v29;
  sub_1E65E6B78();
  LOBYTE(v42) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  sub_1E60CEFE0();
  sub_1E65E6B78();
  LOWORD(v42) = *(v11 + v30[9]);
  LOBYTE(v35) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074640, &qword_1E65F0F98);
  sub_1E60CF0C8();
  sub_1E65E6B78();
  LOBYTE(v42) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  sub_1E60CF264();
  sub_1E65E6B78();
  v42 = *(v11 + v30[11]);
  LOBYTE(v35) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074698, &qword_1E65F0FA0);
  sub_1E60CF4A0();
  sub_1E65E6B78();
  LOBYTE(v42) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  sub_1E60CF6DC();
  sub_1E65E6B78();
  LOBYTE(v42) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E60CF7C4();
  sub_1E65E6B78();
  v42 = *(v11 + v30[14]);
  LOBYTE(v35) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074708, &qword_1E65F0FC0);
  sub_1E60CF8C0();
  sub_1E65E6B78();
  v42 = *(v29 + v30[15]);
  LOBYTE(v35) = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074750, &qword_1E65F0FD0);
  sub_1E60CFB8C();
  sub_1E65E6B78();
  v42 = *(v29 + v30[16]);
  LOBYTE(v35) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0747C8, &qword_1E65F0FE8);
  sub_1E60D0054();
  sub_1E65E6B78();
  v42 = *(v29 + v30[17]);
  LOBYTE(v35) = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074810, &qword_1E65F0FF8);
  sub_1E60D0320();
  sub_1E65E6B78();
  LOBYTE(v42) = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E60D0658();
  sub_1E65E6B78();
  LOBYTE(v42) = 15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  sub_1E60D0914();
  sub_1E65E6B78();
  LOBYTE(v42) = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  sub_1E60D0A28();
  sub_1E65E6B78();
  LOBYTE(v42) = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  sub_1E60D0B10();
  sub_1E65E6B78();
  LOBYTE(v42) = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E60DC188(&qword_1ED0748F0, MEMORY[0x1E6999B08]);
  sub_1E65E6B78();
  LOBYTE(v42) = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E60D0C94();
  sub_1E65E6B78();
  v42 = *(v29 + v30[24]);
  LOBYTE(v35) = 20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074910, &qword_1E65F1018);
  sub_1E60D0D7C();
  sub_1E65E6B78();
  v42 = *(v29 + v30[25]);
  LOBYTE(v35) = 21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074958, &qword_1E65F1028);
  sub_1E60D1048();
  sub_1E65E6B78();
  LOBYTE(v42) = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  sub_1E60D1308();
  sub_1E65E6B78();
  LOBYTE(v42) = 23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  sub_1E60D141C();
  sub_1E65E6B78();
  *&v42 = *(v29 + v30[28]);
  LOBYTE(v35) = 24;
  sub_1E5F8BCBC();
  sub_1E65E6B78();
  LOBYTE(v42) = 25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E60DC664(&qword_1ED0749D8, MEMORY[0x1E6999B08]);
  sub_1E65E6B78();
  *&v42 = *(v29 + v30[30]);
  LOBYTE(v35) = 26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749F0, &qword_1E65F1040);
  sub_1E60D15D8();
  sub_1E65E6B78();
  LOBYTE(v42) = 27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  sub_1E60D16C0();
  sub_1E65E6B78();
  *&v42 = *(v29 + v30[32]);
  LOBYTE(v35) = 28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A30, &qword_1E65F1048);
  sub_1E60D17BC();
  sub_1E65E6B78();
  v48 = *(v29 + v30[33]);
  v52 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A48, &qword_1E65F1050);
  sub_1E60D1878();
  sub_1E65E6B78();
  v12 = (v29 + v30[34]);
  v13 = v12[1];
  v42 = *v12;
  v43 = v13;
  *v44 = v12[2];
  *&v44[9] = *(v12 + 41);
  LOBYTE(v35) = 30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AA0, &qword_1E65F1060);
  sub_1E60D1BA4();
  sub_1E65E6B78();
  v14 = (v29 + v30[35]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  *&v42 = v15;
  BYTE8(v42) = v14;
  LOBYTE(v35) = 31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AC8, &qword_1E65F1068);
  sub_1E5FED46C(&qword_1ED074AD0, &qword_1ED074AC8, &qword_1E65F1068, MEMORY[0x1E699E0F0]);
  sub_1E65E6B78();
  LOBYTE(v42) = 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  sub_1E60D1D40();
  sub_1E65E6B78();
  *&v42 = *(v29 + v30[37]);
  LOBYTE(v35) = 33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AF0, &qword_1E65F1070);
  sub_1E60D1E54();
  sub_1E65E6B78();
  LOBYTE(v42) = 34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  sub_1E60DCD90(&qword_1EE2D4AB8, MEMORY[0x1E6999AB0]);
  sub_1E65E6B78();
  LOBYTE(v42) = 35;
  sub_1E65E6B58();
  LOBYTE(v42) = 36;
  sub_1E65E6B58();
  LOBYTE(v42) = 37;
  sub_1E65E6B78();
  LOBYTE(v42) = 38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  sub_1E60D1FF8();
  sub_1E65E6B78();
  v42 = *(v29 + v30[43]);
  LOBYTE(v35) = 39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B50, &qword_1E65F1090);
  sub_1E60D20E0();
  sub_1E65E6B78();
  v42 = *(v29 + v30[44]);
  LOBYTE(v35) = 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BA8, &qword_1E65F10A0);
  sub_1E60D2454(&qword_1ED074BB0, &unk_1E65F2AF0);
  sub_1E65E6B78();
  LOBYTE(v42) = 41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  sub_1E60D2650();
  sub_1E65E6B78();
  LOBYTE(v42) = 42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  sub_1E60D2764(&qword_1ED074C00, MEMORY[0x1E6999B08]);
  sub_1E65E6B78();
  v51 = 43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  sub_1E60D28A8();
  sub_1E65E6B78();
  v16 = (v29 + v30[48]);
  v17 = v16[3];
  v18 = v16[5];
  v45 = v16[4];
  v46 = v18;
  v19 = v16[5];
  v47 = v16[6];
  v20 = v16[1];
  v42 = *v16;
  v43 = v20;
  v21 = v16[3];
  v23 = *v16;
  v22 = v16[1];
  *v44 = v16[2];
  *&v44[16] = v21;
  v39 = v45;
  v40 = v19;
  v41 = v16[6];
  v35 = v23;
  v36 = v22;
  v37 = *v44;
  v38 = v17;
  v50 = 44;
  sub_1E5DFD1CC(&v42, v34, &qword_1ED074C48, &qword_1E65F10C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C48, &qword_1E65F10C8);
  sub_1E60D29A4();
  sub_1E65E6B78();
  v34[4] = v39;
  v34[5] = v40;
  v34[6] = v41;
  v34[0] = v35;
  v34[1] = v36;
  v34[2] = v37;
  v34[3] = v38;
  sub_1E5DFE50C(v34, &qword_1ED074C48, &qword_1E65F10C8);
  LOBYTE(v32) = 45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  sub_1E60D2B40();
  sub_1E65E6B78();
  LOBYTE(v32) = 46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E60D2C54();
  sub_1E65E6B78();
  LOBYTE(v32) = 47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  sub_1E60D2D88();
  sub_1E65E6B78();
  LOBYTE(v32) = 48;
  sub_1E65E6B78();
  LOBYTE(v32) = 49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  sub_1E60D2F7C();
  sub_1E65E6B78();
  LOBYTE(v32) = 50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E60D3170();
  sub_1E65E6B78();
  LOBYTE(v32) = 51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  sub_1E60DD604(&qword_1ED074D10, &unk_1E65F2AF0);
  sub_1E65E6B78();
  LOBYTE(v32) = 52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  sub_1E60D3454();
  sub_1E65E6B78();
  LOBYTE(v32) = 53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  sub_1E60D353C();
  sub_1E65E6B78();
  v32 = *(v29 + v30[58]);
  v49 = 54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D68, &qword_1E65F10E8);
  sub_1E60D3650();
  sub_1E65E6B78();
  LOBYTE(v32) = 55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  sub_1E60D391C();
  sub_1E65E6B78();
  LOBYTE(v32) = 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  sub_1E60D3A18();
  sub_1E65E6B78();
  LOBYTE(v32) = 57;
  sub_1E65E6B58();
  v24 = (v29 + v30[62]);
  v25 = v24[1];
  *&v32 = *v24;
  *(&v32 + 1) = v25;
  v49 = 58;
  sub_1E5FED40C(v32, v25);
  sub_1E5DF6D3C();
  sub_1E65E6B38();
  sub_1E5E07DA0(v32, *(&v32 + 1));
  *&v32 = *(v29 + v30[63]);
  v49 = 59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078610, &qword_1E65F1108);
  sub_1E60D3B2C();
  sub_1E65E6B78();
  v26 = (v29 + v30[64]);
  v27 = v26[1];
  v32 = *v26;
  v33 = v27;
  v49 = 60;
  type metadata accessor for UIEdgeInsets(0);
  sub_1E60DE6BC(&qword_1EE2D46C8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3B8]);
  sub_1E65E6B78();
  LOBYTE(v32) = 61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E60D3BB0(&qword_1ED074E00, MEMORY[0x1E6999B08]);
  sub_1E65E6B78();
  LOBYTE(v32) = 62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  sub_1E60D3D48(&qword_1ED074E30, MEMORY[0x1E6999B08]);
  sub_1E65E6B78();
  v32 = *(v29 + v30[67]);
  v49 = 63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E48, &qword_1E65F1120);
  sub_1E60D3E7C(&qword_1ED074E50, &unk_1E65F2AF0);
  sub_1E65E6B78();
  v32 = *(v29 + v30[68]);
  v49 = 64;
  sub_1E65E6B78();
  LOBYTE(v32) = 65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  sub_1E60D3F34();
  sub_1E65E6B78();
  LOBYTE(v32) = 66;
  sub_1E65E39E8();
  sub_1E60DE6BC(&qword_1ED074E78, MEMORY[0x1E699EFA0], MEMORY[0x1E699EFA8]);
  sub_1E65E6B78();
  LOBYTE(v32) = 67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  sub_1E60DDD68(&qword_1ED074E88, MEMORY[0x1E6999AB0]);
  sub_1E65E6B78();
  LOBYTE(v32) = 68;
  sub_1E65E1D58();
  sub_1E60DE6BC(&qword_1ED074EC0, MEMORY[0x1E699EFF8], MEMORY[0x1E699F000]);
  sub_1E65E6B78();
  LOBYTE(v32) = 69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E60D40E0();
  sub_1E65E6B78();
  LOBYTE(v32) = 70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  sub_1E60D41C8();
  sub_1E65E6B78();
  LOBYTE(v32) = 71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E60D42C4();
  sub_1E65E6B78();
  *&v32 = *(v29 + v30[76]);
  v49 = 72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F28, &qword_1E65F1158);
  sub_1E60D4448();
  sub_1E65E6B78();
  LOBYTE(v32) = 73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  sub_1E60D4504();
  sub_1E65E6B78();
  *&v32 = *(v29 + v30[78]);
  v49 = 74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F58, &qword_1E65F1160);
  sub_1E60D4600();
  sub_1E65E6B78();
  v32 = *(v29 + v30[79]);
  v49 = 75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F70, &qword_1E65F1168);
  sub_1E60D46BC();
  sub_1E65E6B78();
  LOBYTE(v32) = 76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  sub_1E60D4988();
  sub_1E65E6B78();
  LOBYTE(v32) = 77;
  sub_1E65E6B78();
  LOBYTE(v32) = 78;
  sub_1E65E6B78();
  LOBYTE(v32) = 79;
  sub_1E65E6B78();
  LOBYTE(v32) = 80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  sub_1E60D4A84();
  sub_1E65E6B78();
  return (*(v31 + 8))(v8, v5);
}

unint64_t sub_1E60CED90()
{
  result = qword_1ED0745D0;
  if (!qword_1ED0745D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0745D0);
  }

  return result;
}

unint64_t sub_1E60CEDE4()
{
  result = qword_1ED0745E8;
  if (!qword_1ED0745E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745E0, &qword_1E65F0F90);
    v1 = MEMORY[0x1E699CE20];
    sub_1E60DE6BC(&qword_1ED0745F0, MEMORY[0x1E699CE20], MEMORY[0x1E699CE38]);
    sub_1E60DE6BC(&qword_1ED0745F8, v1, MEMORY[0x1E699CE28]);
    sub_1E60DE6BC(&qword_1ED074600, v1, MEMORY[0x1E699CE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0745E8);
  }

  return result;
}

unint64_t sub_1E60CEEF8()
{
  result = qword_1ED074610;
  if (!qword_1ED074610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F88, &unk_1E65EA400);
    v1 = MEMORY[0x1E6969770];
    sub_1E60DE6BC(&qword_1ED074618, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    sub_1E60DE6BC(&qword_1ED074620, v1, MEMORY[0x1E6969778]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074610);
  }

  return result;
}

unint64_t sub_1E60CEFE0()
{
  result = qword_1ED074628;
  if (!qword_1ED074628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072960, &qword_1E65EC0F8);
    v1 = MEMORY[0x1E69CB0E0];
    sub_1E60DE6BC(&qword_1ED074630, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB100]);
    sub_1E60DE6BC(&qword_1ED074638, v1, MEMORY[0x1E69CB0E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074628);
  }

  return result;
}

unint64_t sub_1E60CF0C8()
{
  result = qword_1ED074648;
  if (!qword_1ED074648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074640, &qword_1E65F0F98);
    sub_1E60CF168();
    sub_1E60CF1BC();
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074648);
  }

  return result;
}

unint64_t sub_1E60CF168()
{
  result = qword_1ED074650;
  if (!qword_1ED074650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074650);
  }

  return result;
}

unint64_t sub_1E60CF1BC()
{
  result = qword_1ED074658;
  if (!qword_1ED074658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074658);
  }

  return result;
}

unint64_t sub_1E60CF210()
{
  result = qword_1ED074660;
  if (!qword_1ED074660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074660);
  }

  return result;
}

unint64_t sub_1E60CF264()
{
  result = qword_1ED074668;
  if (!qword_1ED074668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072918, &qword_1E65EC038);
    sub_1E60CF2F0();
    sub_1E60CF3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074668);
  }

  return result;
}

unint64_t sub_1E60CF2F0()
{
  result = qword_1ED074670;
  if (!qword_1ED074670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074678, &qword_1E660D860);
    sub_1E60CF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074670);
  }

  return result;
}

unint64_t sub_1E60CF374()
{
  result = qword_1ED074680;
  if (!qword_1ED074680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074680);
  }

  return result;
}

unint64_t sub_1E60CF3C8()
{
  result = qword_1ED074688;
  if (!qword_1ED074688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074678, &qword_1E660D860);
    sub_1E60CF44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074688);
  }

  return result;
}

unint64_t sub_1E60CF44C()
{
  result = qword_1ED074690;
  if (!qword_1ED074690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074690);
  }

  return result;
}

unint64_t sub_1E60CF4A0()
{
  result = qword_1ED0746A0;
  if (!qword_1ED0746A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074698, &qword_1E65F0FA0);
    sub_1E60CF540();
    sub_1E60CF5CC();
    sub_1E60CF658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746A0);
  }

  return result;
}

unint64_t sub_1E60CF540()
{
  result = qword_1ED0746A8;
  if (!qword_1ED0746A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746A8);
  }

  return result;
}

unint64_t sub_1E60CF5CC()
{
  result = qword_1ED0746B8;
  if (!qword_1ED0746B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746B8);
  }

  return result;
}

unint64_t sub_1E60CF658()
{
  result = qword_1ED0746C0;
  if (!qword_1ED0746C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746B0, &qword_1E65F0FA8);
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746C0);
  }

  return result;
}

unint64_t sub_1E60CF6DC()
{
  result = qword_1ED0746D0;
  if (!qword_1ED0746D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    v1 = MEMORY[0x1E699E8D8];
    sub_1E60DE6BC(&qword_1ED0746D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8F0]);
    sub_1E60DE6BC(&qword_1ED0746E0, v1, MEMORY[0x1E699E8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746D0);
  }

  return result;
}

unint64_t sub_1E60CF7C4()
{
  result = qword_1ED0746F0;
  if (!qword_1ED0746F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    v1 = MEMORY[0x1E699D1D0];
    sub_1E60DE6BC(&qword_1ED0746F8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E8]);
    sub_1E60DE6BC(&qword_1ED074700, v1, MEMORY[0x1E699D1D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0746F0);
  }

  return result;
}

unint64_t sub_1E60CF8C0()
{
  result = qword_1ED074710;
  if (!qword_1ED074710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074708, &qword_1E65F0FC0);
    sub_1E60CF960();
    sub_1E60CFA1C();
    sub_1E60CFAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074710);
  }

  return result;
}

unint64_t sub_1E60CF960()
{
  result = qword_1ED074718;
  if (!qword_1ED074718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074728, MEMORY[0x1E699D2D0], MEMORY[0x1E699D2E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074718);
  }

  return result;
}

unint64_t sub_1E60CFA1C()
{
  result = qword_1ED074730;
  if (!qword_1ED074730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074738, MEMORY[0x1E699D2D0], MEMORY[0x1E699D2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074730);
  }

  return result;
}

unint64_t sub_1E60CFAD8()
{
  result = qword_1ED074740;
  if (!qword_1ED074740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074720, &qword_1E65F0FC8);
    sub_1E60DE6BC(&qword_1ED074748, MEMORY[0x1E699D2D0], MEMORY[0x1E699D2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074740);
  }

  return result;
}

unint64_t sub_1E60CFB8C()
{
  result = qword_1ED074758;
  if (!qword_1ED074758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074750, &qword_1E65F0FD0);
    sub_1E60CFC2C();
    sub_1E60CFDA4();
    sub_1E60CFF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074758);
  }

  return result;
}

unint64_t sub_1E60CFC2C()
{
  result = qword_1ED074760;
  if (!qword_1ED074760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074760);
  }

  return result;
}

unint64_t sub_1E60CFCB8()
{
  result = qword_1ED074770;
  if (!qword_1ED074770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED074780, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E60DE6BC(&qword_1ED074788, MEMORY[0x1E699D278], MEMORY[0x1E699D290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074770);
  }

  return result;
}

unint64_t sub_1E60CFDA4()
{
  result = qword_1ED074790;
  if (!qword_1ED074790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074790);
  }

  return result;
}

unint64_t sub_1E60CFE30()
{
  result = qword_1ED074798;
  if (!qword_1ED074798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED0747A0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1E60DE6BC(&qword_1ED0747A8, MEMORY[0x1E699D278], MEMORY[0x1E699D280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074798);
  }

  return result;
}

unint64_t sub_1E60CFF1C()
{
  result = qword_1ED0747B0;
  if (!qword_1ED0747B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074768, &qword_1E65F0FD8);
    sub_1E60CFFA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747B0);
  }

  return result;
}

unint64_t sub_1E60CFFA0()
{
  result = qword_1ED0747B8;
  if (!qword_1ED0747B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074778, &qword_1E65F0FE0);
    sub_1E60DE6BC(&qword_1ED0747C0, MEMORY[0x1E699D278], MEMORY[0x1E699D288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747B8);
  }

  return result;
}

unint64_t sub_1E60D0054()
{
  result = qword_1ED0747D0;
  if (!qword_1ED0747D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    sub_1E60D00F4();
    sub_1E60D01B0();
    sub_1E60D026C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747D0);
  }

  return result;
}

unint64_t sub_1E60D00F4()
{
  result = qword_1ED0747D8;
  if (!qword_1ED0747D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED0747E8, MEMORY[0x1E699D318], MEMORY[0x1E699D330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747D8);
  }

  return result;
}

unint64_t sub_1E60D01B0()
{
  result = qword_1ED0747F0;
  if (!qword_1ED0747F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED0747F8, MEMORY[0x1E699D318], MEMORY[0x1E699D320]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0747F0);
  }

  return result;
}

unint64_t sub_1E60D026C()
{
  result = qword_1ED074800;
  if (!qword_1ED074800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747E0, &qword_1E65F0FF0);
    sub_1E60DE6BC(&qword_1ED074808, MEMORY[0x1E699D318], MEMORY[0x1E699D328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074800);
  }

  return result;
}

unint64_t sub_1E60D0320()
{
  result = qword_1ED074818;
  if (!qword_1ED074818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074810, &qword_1E65F0FF8);
    sub_1E60D03C0();
    sub_1E60D04A0();
    sub_1E60D0580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074818);
  }

  return result;
}

unint64_t sub_1E60D03C0()
{
  result = qword_1ED074820;
  if (!qword_1ED074820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074820);
  }

  return result;
}

unint64_t sub_1E60D044C()
{
  result = qword_1ED074830;
  if (!qword_1ED074830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074830);
  }

  return result;
}

unint64_t sub_1E60D04A0()
{
  result = qword_1ED074838;
  if (!qword_1ED074838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D052C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074838);
  }

  return result;
}

unint64_t sub_1E60D052C()
{
  result = qword_1ED074840;
  if (!qword_1ED074840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074840);
  }

  return result;
}

unint64_t sub_1E60D0580()
{
  result = qword_1ED074848;
  if (!qword_1ED074848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074828, &qword_1E65F1000);
    sub_1E60D0604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074848);
  }

  return result;
}

unint64_t sub_1E60D0604()
{
  result = qword_1ED074850;
  if (!qword_1ED074850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074850);
  }

  return result;
}

unint64_t sub_1E60D0658()
{
  result = qword_1ED074860;
  if (!qword_1ED074860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074858, &qword_1E65F1008);
    sub_1E60D06F8();
    sub_1E60D07AC();
    sub_1E60D0860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074860);
  }

  return result;
}

unint64_t sub_1E60D06F8()
{
  result = qword_1ED074868;
  if (!qword_1ED074868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074878, MEMORY[0x1E699D1F0], MEMORY[0x1E699D208]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074868);
  }

  return result;
}

unint64_t sub_1E60D07AC()
{
  result = qword_1ED074880;
  if (!qword_1ED074880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074888, MEMORY[0x1E699D1F0], MEMORY[0x1E699D1F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074880);
  }

  return result;
}

unint64_t sub_1E60D0860()
{
  result = qword_1ED074890;
  if (!qword_1ED074890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074870, &qword_1E65F1010);
    sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0], MEMORY[0x1E699D200]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074890);
  }

  return result;
}

unint64_t sub_1E60D0914()
{
  result = qword_1ED0748A0;
  if (!qword_1ED0748A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741C8, &qword_1E65EFB48);
    v1 = MEMORY[0x1E699D2B0];
    sub_1E60DE6BC(&qword_1ED0748A8, MEMORY[0x1E699D2B0], MEMORY[0x1E699D2C8]);
    sub_1E60DE6BC(&qword_1ED0748B0, v1, MEMORY[0x1E699D2B8]);
    sub_1E60DE6BC(&qword_1EE2D6BC8, v1, MEMORY[0x1E699D2C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748A0);
  }

  return result;
}

unint64_t sub_1E60D0A28()
{
  result = qword_1ED0748B8;
  if (!qword_1ED0748B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E80, &qword_1E65ECC58);
    v1 = MEMORY[0x1E69CC658];
    sub_1E60DE6BC(&qword_1ED0748C0, MEMORY[0x1E69CC658], MEMORY[0x1E69CC678]);
    sub_1E60DE6BC(&qword_1ED0748C8, v1, MEMORY[0x1E69CC660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748B8);
  }

  return result;
}

unint64_t sub_1E60D0B10()
{
  result = qword_1ED0748D0;
  if (!qword_1ED0748D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F68, &qword_1E65EA398);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748D0);
  }

  return result;
}

unint64_t sub_1E60D0B9C()
{
  result = qword_1ED0748D8;
  if (!qword_1ED0748D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0748E0, &qword_1E660F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748D8);
  }

  return result;
}

unint64_t sub_1E60D0C18()
{
  result = qword_1ED0748E8;
  if (!qword_1ED0748E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0748E0, &qword_1E660F180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748E8);
  }

  return result;
}

unint64_t sub_1E60D0C94()
{
  result = qword_1ED0748F8;
  if (!qword_1ED0748F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071E68, &qword_1E65EA160);
    sub_1E60DE6BC(&qword_1ED074900, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
    sub_1E60DE6BC(&qword_1ED074908, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0748F8);
  }

  return result;
}

unint64_t sub_1E60D0D7C()
{
  result = qword_1ED074918;
  if (!qword_1ED074918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074910, &qword_1E65F1018);
    sub_1E60D0E1C();
    sub_1E60D0ED8();
    sub_1E60D0F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074918);
  }

  return result;
}

unint64_t sub_1E60D0E1C()
{
  result = qword_1ED074920;
  if (!qword_1ED074920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074930, MEMORY[0x1E699D450], MEMORY[0x1E699D468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074920);
  }

  return result;
}

unint64_t sub_1E60D0ED8()
{
  result = qword_1ED074938;
  if (!qword_1ED074938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074940, MEMORY[0x1E699D450], MEMORY[0x1E699D458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074938);
  }

  return result;
}

unint64_t sub_1E60D0F94()
{
  result = qword_1ED074948;
  if (!qword_1ED074948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074928, &qword_1E65F1020);
    sub_1E60DE6BC(&qword_1ED074950, MEMORY[0x1E699D450], MEMORY[0x1E699D460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074948);
  }

  return result;
}

unint64_t sub_1E60D1048()
{
  result = qword_1ED074960;
  if (!qword_1ED074960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074958, &qword_1E65F1028);
    sub_1E60D10E8();
    sub_1E60D11A0();
    sub_1E60D1258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074960);
  }

  return result;
}

unint64_t sub_1E60D10E8()
{
  result = qword_1ED074968;
  if (!qword_1ED074968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074978, &qword_1ED072810, &qword_1E65EBE08, MEMORY[0x1E699D750]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074968);
  }

  return result;
}

unint64_t sub_1E60D11A0()
{
  result = qword_1ED074980;
  if (!qword_1ED074980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074988, &qword_1ED072810, &qword_1E65EBE08, MEMORY[0x1E699D740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074980);
  }

  return result;
}

unint64_t sub_1E60D1258()
{
  result = qword_1ED074990;
  if (!qword_1ED074990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074970, &qword_1E65F1030);
    sub_1E5FED46C(&qword_1ED074998, &qword_1ED072810, &qword_1E65EBE08, MEMORY[0x1E699D748]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074990);
  }

  return result;
}

unint64_t sub_1E60D1308()
{
  result = qword_1ED0749A8;
  if (!qword_1ED0749A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749A0, &qword_1E65F1038);
    v1 = MEMORY[0x1E699D6B8];
    sub_1E60DE6BC(&qword_1ED0749B0, MEMORY[0x1E699D6B8], MEMORY[0x1E699D6D0]);
    sub_1E60DE6BC(&qword_1ED0749B8, v1, MEMORY[0x1E699D6C0]);
    sub_1E60DE6BC(&qword_1EE2D65B8, v1, MEMORY[0x1E699D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749A8);
  }

  return result;
}

unint64_t sub_1E60D141C()
{
  result = qword_1ED0749C0;
  if (!qword_1ED0749C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v1 = MEMORY[0x1E699F288];
    sub_1E60DE6BC(&qword_1ED0749C8, MEMORY[0x1E699F288], MEMORY[0x1E699F2A0]);
    sub_1E60DE6BC(&qword_1ED0749D0, v1, MEMORY[0x1E699F290]);
    sub_1E60DE6BC(&qword_1EE2D6248, v1, MEMORY[0x1E699F298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749C0);
  }

  return result;
}

unint64_t sub_1E60D1530()
{
  result = qword_1ED0749E0;
  if (!qword_1ED0749E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749E0);
  }

  return result;
}

unint64_t sub_1E60D1584()
{
  result = qword_1ED0749E8;
  if (!qword_1ED0749E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749E8);
  }

  return result;
}

unint64_t sub_1E60D15D8()
{
  result = qword_1ED0749F8;
  if (!qword_1ED0749F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749F0, &qword_1E65F1040);
    sub_1E5FED46C(&qword_1ED074A00, &qword_1ED074A08, &qword_1E65F3920, MEMORY[0x1E699DC18]);
    sub_1E60DE6BC(&qword_1ED074A10, MEMORY[0x1E699CFC0], MEMORY[0x1E699CFC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0749F8);
  }

  return result;
}

unint64_t sub_1E60D16C0()
{
  result = qword_1ED074A18;
  if (!qword_1ED074A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741F0, &unk_1E65EFC10);
    v1 = MEMORY[0x1E69CD000];
    sub_1E60DE6BC(&qword_1ED074A20, MEMORY[0x1E69CD000], MEMORY[0x1E69CD018]);
    sub_1E60DE6BC(&qword_1ED074A28, v1, MEMORY[0x1E69CD008]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A18);
  }

  return result;
}

unint64_t sub_1E60D17BC()
{
  result = qword_1ED074A38;
  if (!qword_1ED074A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A30, &qword_1E65F1048);
    sub_1E60DE6BC(&qword_1ED074A40, MEMORY[0x1E699EB58], MEMORY[0x1E699EB60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A38);
  }

  return result;
}

unint64_t sub_1E60D1878()
{
  result = qword_1ED074A50;
  if (!qword_1ED074A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A48, &qword_1E65F1050);
    sub_1E60D1918();
    sub_1E60D1A04();
    sub_1E60D1AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A50);
  }

  return result;
}

unint64_t sub_1E60D1918()
{
  result = qword_1ED074A58;
  if (!qword_1ED074A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A68, MEMORY[0x1E699DD40], MEMORY[0x1E699DD50]);
    sub_1E60DE6BC(&qword_1ED074A70, MEMORY[0x1E699DEB0], MEMORY[0x1E699DEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A58);
  }

  return result;
}

unint64_t sub_1E60D1A04()
{
  result = qword_1ED074A78;
  if (!qword_1ED074A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A80, MEMORY[0x1E699DD40], MEMORY[0x1E699DD48]);
    sub_1E60DE6BC(&qword_1ED074A88, MEMORY[0x1E699DEB0], MEMORY[0x1E699DEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A78);
  }

  return result;
}

unint64_t sub_1E60D1AF0()
{
  result = qword_1ED074A90;
  if (!qword_1ED074A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A60, &qword_1E65F1058);
    sub_1E60DE6BC(&qword_1ED074A98, MEMORY[0x1E699DEB0], MEMORY[0x1E699DEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074A90);
  }

  return result;
}

unint64_t sub_1E60D1BA4()
{
  result = qword_1ED074AA8;
  if (!qword_1ED074AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AA0, &qword_1E65F1060);
    sub_1E60D1C44();
    sub_1E60D1C98();
    sub_1E60D1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AA8);
  }

  return result;
}

unint64_t sub_1E60D1C44()
{
  result = qword_1ED074AB0;
  if (!qword_1ED074AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AB0);
  }

  return result;
}

unint64_t sub_1E60D1C98()
{
  result = qword_1ED074AB8;
  if (!qword_1ED074AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AB8);
  }

  return result;
}

unint64_t sub_1E60D1CEC()
{
  result = qword_1ED074AC0;
  if (!qword_1ED074AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AC0);
  }

  return result;
}

unint64_t sub_1E60D1D40()
{
  result = qword_1ED074AD8;
  if (!qword_1ED074AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072800, &qword_1E65EBDF8);
    v1 = MEMORY[0x1E699E100];
    sub_1E60DE6BC(&qword_1ED074AE0, MEMORY[0x1E699E100], MEMORY[0x1E699E118]);
    sub_1E60DE6BC(&qword_1ED074AE8, v1, MEMORY[0x1E699E108]);
    sub_1E60DE6BC(&qword_1EE2D6B30, v1, MEMORY[0x1E699E110]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AD8);
  }

  return result;
}

unint64_t sub_1E60D1E54()
{
  result = qword_1ED074AF8;
  if (!qword_1ED074AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AF0, &qword_1E65F1070);
    sub_1E60DE6BC(&qword_1ED074B00, MEMORY[0x1E699CFF0], MEMORY[0x1E699CFF8]);
    sub_1E60D1F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074AF8);
  }

  return result;
}

unint64_t sub_1E60D1F10()
{
  result = qword_1ED074B08;
  if (!qword_1ED074B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1ED074B18, MEMORY[0x1E699D028], MEMORY[0x1E699D030]);
    sub_1E5FED46C(&qword_1ED074B20, &qword_1ED074B28, &qword_1E65F1080, MEMORY[0x1E699D078]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B08);
  }

  return result;
}

unint64_t sub_1E60D1FF8()
{
  result = qword_1ED074B38;
  if (!qword_1ED074B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B30, &qword_1E65F1088);
    v1 = MEMORY[0x1E6969530];
    sub_1E60DE6BC(&qword_1ED074B40, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1E60DE6BC(&qword_1ED074B48, v1, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B38);
  }

  return result;
}

unint64_t sub_1E60D20E0()
{
  result = qword_1ED074B58;
  if (!qword_1ED074B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B50, &qword_1E65F1090);
    sub_1E60D2180();
    sub_1E60D2290();
    sub_1E60D23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B58);
  }

  return result;
}

unint64_t sub_1E60D2180()
{
  result = qword_1ED074B60;
  if (!qword_1ED074B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60D223C();
    sub_1E60DE6BC(&qword_1ED074B78, MEMORY[0x1E699E610], MEMORY[0x1E699E628]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B60);
  }

  return result;
}

unint64_t sub_1E60D223C()
{
  result = qword_1ED074B70;
  if (!qword_1ED074B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B70);
  }

  return result;
}

unint64_t sub_1E60D2290()
{
  result = qword_1ED074B80;
  if (!qword_1ED074B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60D234C();
    sub_1E60DE6BC(&qword_1ED074B90, MEMORY[0x1E699E610], MEMORY[0x1E699E618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B80);
  }

  return result;
}

unint64_t sub_1E60D234C()
{
  result = qword_1ED074B88;
  if (!qword_1ED074B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B88);
  }

  return result;
}

unint64_t sub_1E60D23A0()
{
  result = qword_1ED074B98;
  if (!qword_1ED074B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B68, &qword_1E65F1098);
    sub_1E60DE6BC(&qword_1ED074BA0, MEMORY[0x1E699E610], MEMORY[0x1E699E620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074B98);
  }

  return result;
}

uint64_t sub_1E60D2454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BA8, &qword_1E65F10A0);
    sub_1E60D2550(&qword_1ED074BB8, sub_1E60D223C, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1E60D2550(&qword_1ED074BC8, sub_1E60D234C, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1E60D25D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E60D2550(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BC0, &qword_1E65F10A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D25D4()
{
  result = qword_1ED074BD0;
  if (!qword_1ED074BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BC0, &qword_1E65F10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074BD0);
  }

  return result;
}

unint64_t sub_1E60D2650()
{
  result = qword_1ED074BE0;
  if (!qword_1ED074BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BD8, &qword_1E65F10B0);
    v1 = MEMORY[0x1E699E698];
    sub_1E60DE6BC(&qword_1ED074BE8, MEMORY[0x1E699E698], MEMORY[0x1E699E6B0]);
    sub_1E60DE6BC(&qword_1ED074BF0, v1, MEMORY[0x1E699E6A0]);
    sub_1E60DE6BC(&qword_1EE2D67A0, v1, MEMORY[0x1E699E6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074BE0);
  }

  return result;
}

uint64_t sub_1E60D2764(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BF8, &qword_1E65F10B8);
    v4 = MEMORY[0x1E699E860];
    sub_1E60DE6BC(&qword_1ED074C08, MEMORY[0x1E699E860], MEMORY[0x1E699E878]);
    sub_1E60DE6BC(&qword_1ED074C10, v4, MEMORY[0x1E699E868]);
    v5 = MEMORY[0x1E699E810];
    sub_1E60DE6BC(&qword_1ED074C18, MEMORY[0x1E699E810], MEMORY[0x1E699E830]);
    sub_1E60DE6BC(&qword_1ED074C20, v5, MEMORY[0x1E699E818]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D28A8()
{
  result = qword_1ED074C30;
  if (!qword_1ED074C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C28, &qword_1E65F10C0);
    v1 = MEMORY[0x1E69CC2C8];
    sub_1E60DE6BC(&qword_1ED074C38, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2E0]);
    sub_1E60DE6BC(&qword_1ED074C40, v1, MEMORY[0x1E69CC2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C30);
  }

  return result;
}

unint64_t sub_1E60D29A4()
{
  result = qword_1ED074C50;
  if (!qword_1ED074C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C48, &qword_1E65F10C8);
    sub_1E60D2A44();
    sub_1E60D2A98();
    sub_1E60D2AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C50);
  }

  return result;
}

unint64_t sub_1E60D2A44()
{
  result = qword_1ED074C58;
  if (!qword_1ED074C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C58);
  }

  return result;
}

unint64_t sub_1E60D2A98()
{
  result = qword_1ED074C60;
  if (!qword_1ED074C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C60);
  }

  return result;
}

unint64_t sub_1E60D2AEC()
{
  result = qword_1ED074C68;
  if (!qword_1ED074C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C68);
  }

  return result;
}

unint64_t sub_1E60D2B40()
{
  result = qword_1ED074C78;
  if (!qword_1ED074C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C70, &qword_1E65F10D0);
    v1 = MEMORY[0x1E699D0E8];
    sub_1E60DE6BC(&qword_1ED074C80, MEMORY[0x1E699D0E8], MEMORY[0x1E699D100]);
    sub_1E60DE6BC(&qword_1ED074C88, v1, MEMORY[0x1E699D0F0]);
    sub_1E60DE6BC(&qword_1EE2D6D90, v1, MEMORY[0x1E699D0F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C78);
  }

  return result;
}

unint64_t sub_1E60D2C54()
{
  result = qword_1ED074C90;
  if (!qword_1ED074C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072818, &qword_1E65EBE10);
    sub_1E60D2CE0();
    sub_1E60D2D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C90);
  }

  return result;
}

unint64_t sub_1E60D2CE0()
{
  result = qword_1ED074C98;
  if (!qword_1ED074C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074C98);
  }

  return result;
}

unint64_t sub_1E60D2D34()
{
  result = qword_1EE2D70E8;
  if (!qword_1EE2D70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D70E8);
  }

  return result;
}

unint64_t sub_1E60D2D88()
{
  result = qword_1ED074CA0;
  if (!qword_1ED074CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074068, &qword_1E65EF228);
    sub_1E60D2E14();
    sub_1E60D2EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CA0);
  }

  return result;
}

unint64_t sub_1E60D2E14()
{
  result = qword_1ED074CA8;
  if (!qword_1ED074CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CA8);
  }

  return result;
}

unint64_t sub_1E60D2EC8()
{
  result = qword_1ED074CB8;
  if (!qword_1ED074CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7030, MEMORY[0x1E69CC888], MEMORY[0x1E69CC890]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CB8);
  }

  return result;
}

unint64_t sub_1E60D2F7C()
{
  result = qword_1ED074CC0;
  if (!qword_1ED074CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073F98, &qword_1E65EF138);
    sub_1E60D3008();
    sub_1E60D30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CC0);
  }

  return result;
}

unint64_t sub_1E60D3008()
{
  result = qword_1ED074CC8;
  if (!qword_1ED074CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1ED074CD8, MEMORY[0x1E69CB2E0], MEMORY[0x1E69CB300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CC8);
  }

  return result;
}

unint64_t sub_1E60D30BC()
{
  result = qword_1ED074CE0;
  if (!qword_1ED074CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    sub_1E60DE6BC(&qword_1ED074CE8, MEMORY[0x1E69CB2E0], MEMORY[0x1E69CB2E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CE0);
  }

  return result;
}

unint64_t sub_1E60D3170()
{
  result = qword_1ED074CF8;
  if (!qword_1ED074CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CF0, &qword_1E65F10D8);
    v1 = MEMORY[0x1E699E9E0];
    sub_1E60DE6BC(&qword_1ED074D00, MEMORY[0x1E699E9E0], MEMORY[0x1E699E9F8]);
    sub_1E60DE6BC(&qword_1ED074D08, v1, MEMORY[0x1E699E9E8]);
    sub_1E60DE6BC(&qword_1EE2D64A0, v1, MEMORY[0x1E699E9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074CF8);
  }

  return result;
}

unint64_t sub_1E60D3284()
{
  result = qword_1ED074D18;
  if (!qword_1ED074D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073568, &qword_1E65FD8A0);
    v1 = MEMORY[0x1E699EA00];
    sub_1E60DE6BC(&qword_1ED074D20, MEMORY[0x1E699EA00], MEMORY[0x1E699EA18]);
    sub_1E60DE6BC(&qword_1EE2D6498, v1, MEMORY[0x1E699EA08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D18);
  }

  return result;
}

unint64_t sub_1E60D336C()
{
  result = qword_1ED074D28;
  if (!qword_1ED074D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073568, &qword_1E65FD8A0);
    v1 = MEMORY[0x1E699EA00];
    sub_1E60DE6BC(&qword_1ED074D20, MEMORY[0x1E699EA00], MEMORY[0x1E699EA18]);
    sub_1E60DE6BC(&qword_1EE2D6498, v1, MEMORY[0x1E699EA08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D28);
  }

  return result;
}

unint64_t sub_1E60D3454()
{
  result = qword_1ED074D38;
  if (!qword_1ED074D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D30, &qword_1E65F10E0);
    v1 = MEMORY[0x1E699F160];
    sub_1E60DE6BC(&qword_1ED074D40, MEMORY[0x1E699F160], MEMORY[0x1E699F178]);
    sub_1E60DE6BC(&qword_1ED074D48, v1, MEMORY[0x1E699F168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D38);
  }

  return result;
}

unint64_t sub_1E60D353C()
{
  result = qword_1ED074D50;
  if (!qword_1ED074D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745B0, &qword_1E65F0F38);
    v1 = MEMORY[0x1E699F370];
    sub_1E60DE6BC(&qword_1ED074D58, MEMORY[0x1E699F370], MEMORY[0x1E699F388]);
    sub_1E60DE6BC(&qword_1ED074D60, v1, MEMORY[0x1E699F378]);
    sub_1E60DE6BC(&qword_1EE2D6220, v1, MEMORY[0x1E699F380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D50);
  }

  return result;
}

unint64_t sub_1E60D3650()
{
  result = qword_1ED074D70;
  if (!qword_1ED074D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D68, &qword_1E65F10E8);
    sub_1E60D36F0();
    sub_1E60D37AC();
    sub_1E60D3868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D70);
  }

  return result;
}

unint64_t sub_1E60D36F0()
{
  result = qword_1ED074D78;
  if (!qword_1ED074D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074D88, MEMORY[0x1E699F2C0], MEMORY[0x1E699F2D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D78);
  }

  return result;
}

unint64_t sub_1E60D37AC()
{
  result = qword_1ED074D90;
  if (!qword_1ED074D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074D98, MEMORY[0x1E699F2C0], MEMORY[0x1E699F2C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074D90);
  }

  return result;
}

unint64_t sub_1E60D3868()
{
  result = qword_1ED074DA0;
  if (!qword_1ED074DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D80, &qword_1E65F10F0);
    sub_1E60DE6BC(&qword_1ED074DA8, MEMORY[0x1E699F2C0], MEMORY[0x1E699F2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DA0);
  }

  return result;
}

unint64_t sub_1E60D391C()
{
  result = qword_1ED074DB8;
  if (!qword_1ED074DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DB0, &qword_1E65F10F8);
    v1 = MEMORY[0x1E69CC100];
    sub_1E60DE6BC(&qword_1ED074DC0, MEMORY[0x1E69CC100], MEMORY[0x1E69CC118]);
    sub_1E60DE6BC(&qword_1ED074DC8, v1, MEMORY[0x1E69CC108]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DB8);
  }

  return result;
}

unint64_t sub_1E60D3A18()
{
  result = qword_1ED074DD8;
  if (!qword_1ED074DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DD0, &qword_1E65F1100);
    v1 = MEMORY[0x1E699ED68];
    sub_1E60DE6BC(&qword_1ED074DE0, MEMORY[0x1E699ED68], MEMORY[0x1E699ED80]);
    sub_1E60DE6BC(&qword_1ED074DE8, v1, MEMORY[0x1E699ED70]);
    sub_1E60DE6BC(&qword_1EE2D6050, v1, MEMORY[0x1E699ED78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DD8);
  }

  return result;
}

unint64_t sub_1E60D3B2C()
{
  result = qword_1ED074DF0;
  if (!qword_1ED074DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    sub_1E5DF6D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074DF0);
  }

  return result;
}

uint64_t sub_1E60D3BB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DF8, &qword_1E65F1110);
    sub_1E60D3CA0();
    sub_1E60D3CF4();
    v4 = MEMORY[0x1E699EDB0];
    sub_1E60DE6BC(&qword_1ED074E18, MEMORY[0x1E699EDB0], MEMORY[0x1E699EDC8]);
    sub_1E60DE6BC(&qword_1ED074E20, v4, MEMORY[0x1E699EDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3CA0()
{
  result = qword_1ED074E08;
  if (!qword_1ED074E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E08);
  }

  return result;
}

unint64_t sub_1E60D3CF4()
{
  result = qword_1ED074E10;
  if (!qword_1ED074E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E10);
  }

  return result;
}

uint64_t sub_1E60D3D48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E28, &qword_1E65F1118);
    sub_1E60D3DD4();
    sub_1E60D3E28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3DD4()
{
  result = qword_1ED074E38;
  if (!qword_1ED074E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E38);
  }

  return result;
}

unint64_t sub_1E60D3E28()
{
  result = qword_1ED074E40;
  if (!qword_1ED074E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E40);
  }

  return result;
}

uint64_t sub_1E60D3E7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E48, &qword_1E65F1120);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180, MEMORY[0x1E69E6500]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D3F34()
{
  result = qword_1ED074E60;
  if (!qword_1ED074E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E58, &qword_1E65F1128);
    v1 = MEMORY[0x1E699EF28];
    sub_1E60DE6BC(&qword_1ED074E68, MEMORY[0x1E699EF28], MEMORY[0x1E699EF40]);
    sub_1E60DE6BC(&qword_1ED074E70, v1, MEMORY[0x1E699EF30]);
    sub_1E60DE6BC(&qword_1EE2D6B08, v1, MEMORY[0x1E699EF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074E60);
  }

  return result;
}

uint64_t sub_1E60D4048(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E98, &qword_1E65F1138);
    sub_1E5FED46C(a2, &qword_1ED074EA8, &qword_1E65F1140, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60D40E0()
{
  result = qword_1ED074EC8;
  if (!qword_1ED074EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072990, &qword_1E65EC130);
    v1 = MEMORY[0x1E69CBFD8];
    sub_1E60DE6BC(&qword_1ED074ED0, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF8]);
    sub_1E60DE6BC(&qword_1ED074ED8, v1, MEMORY[0x1E69CBFE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074EC8);
  }

  return result;
}

unint64_t sub_1E60D41C8()
{
  result = qword_1ED074EE8;
  if (!qword_1ED074EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074EE0, &qword_1E65F1148);
    v1 = MEMORY[0x1E69CB3C8];
    sub_1E60DE6BC(&qword_1ED074EF0, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3E0]);
    sub_1E60DE6BC(&qword_1ED074EF8, v1, MEMORY[0x1E69CB3D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074EE8);
  }

  return result;
}

unint64_t sub_1E60D42C4()
{
  result = qword_1ED074F08;
  if (!qword_1ED074F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F00, &unk_1E66062A0);
    sub_1E60D4350();
    sub_1E60D43CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F08);
  }

  return result;
}

unint64_t sub_1E60D4350()
{
  result = qword_1ED074F10;
  if (!qword_1ED074F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F10);
  }

  return result;
}

unint64_t sub_1E60D43CC()
{
  result = qword_1ED074F20;
  if (!qword_1ED074F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F20);
  }

  return result;
}

unint64_t sub_1E60D4448()
{
  result = qword_1ED074F30;
  if (!qword_1ED074F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F28, &qword_1E65F1158);
    sub_1E60DE6BC(&qword_1ED074F38, MEMORY[0x1E699ECC8], MEMORY[0x1E699ECD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F30);
  }

  return result;
}

unint64_t sub_1E60D4504()
{
  result = qword_1ED074F40;
  if (!qword_1ED074F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v1 = MEMORY[0x1E69CC1B0];
    sub_1E60DE6BC(&qword_1ED074F48, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C8]);
    sub_1E60DE6BC(&qword_1ED074F50, v1, MEMORY[0x1E69CC1B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F40);
  }

  return result;
}

unint64_t sub_1E60D4600()
{
  result = qword_1ED074F60;
  if (!qword_1ED074F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F58, &qword_1E65F1160);
    sub_1E60DE6BC(&qword_1ED074F68, MEMORY[0x1E699EA38], MEMORY[0x1E699EA40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F60);
  }

  return result;
}

unint64_t sub_1E60D46BC()
{
  result = qword_1ED074F78;
  if (!qword_1ED074F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F70, &qword_1E65F1168);
    sub_1E60D475C();
    sub_1E60D4818();
    sub_1E60D48D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F78);
  }

  return result;
}

unint64_t sub_1E60D475C()
{
  result = qword_1ED074F80;
  if (!qword_1ED074F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074F90, MEMORY[0x1E699EC68], MEMORY[0x1E699EC80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F80);
  }

  return result;
}

unint64_t sub_1E60D4818()
{
  result = qword_1ED074F98;
  if (!qword_1ED074F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074FA0, MEMORY[0x1E699EC68], MEMORY[0x1E699EC70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074F98);
  }

  return result;
}

unint64_t sub_1E60D48D4()
{
  result = qword_1ED074FA8;
  if (!qword_1ED074FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F88, &qword_1E65F1170);
    sub_1E60DE6BC(&qword_1ED074FB0, MEMORY[0x1E699EC68], MEMORY[0x1E699EC78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FA8);
  }

  return result;
}

unint64_t sub_1E60D4988()
{
  result = qword_1ED074FB8;
  if (!qword_1ED074FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FB8, &qword_1E65EF148);
    v1 = MEMORY[0x1E69CD2D8];
    sub_1E60DE6BC(&qword_1ED074FC0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F8]);
    sub_1E60DE6BC(&qword_1ED074FC8, v1, MEMORY[0x1E69CD2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FB8);
  }

  return result;
}

unint64_t sub_1E60D4A84()
{
  result = qword_1ED074FD0;
  if (!qword_1ED074FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FC0, &qword_1E65EF150);
    v1 = MEMORY[0x1E69CD370];
    sub_1E60DE6BC(&qword_1ED074FD8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD390]);
    sub_1E60DE6BC(&qword_1ED074FE0, v1, MEMORY[0x1E69CD378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074FD0);
  }

  return result;
}

uint64_t AppState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v587 = a1;
  v429 = a2;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v554 = *(v555 - 8);
  MEMORY[0x1EEE9AC00](v555);
  v428 = &v380 - v2;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  v552 = *(v553 - 8);
  v3 = MEMORY[0x1EEE9AC00](v553);
  v427 = &v380 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v426 = &v380 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v425 = &v380 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v424 = &v380 - v9;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v550 = *(v551 - 8);
  MEMORY[0x1EEE9AC00](v551);
  v423 = &v380 - v10;
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  v548 = *(v549 - 8);
  MEMORY[0x1EEE9AC00](v549);
  v422 = &v380 - v11;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  v546 = *(v547 - 8);
  MEMORY[0x1EEE9AC00](v547);
  v421 = &v380 - v12;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v544 = *(v545 - 8);
  MEMORY[0x1EEE9AC00](v545);
  v420 = &v380 - v13;
  v591 = sub_1E65E1D58();
  v590 = *(v591 - 8);
  MEMORY[0x1EEE9AC00](v591);
  v419 = &v380 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  v542 = *(v543 - 8);
  MEMORY[0x1EEE9AC00](v543);
  v418 = &v380 - v15;
  v589 = sub_1E65E39E8();
  v588 = *(v589 - 8);
  MEMORY[0x1EEE9AC00](v589);
  v417 = &v380 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  MEMORY[0x1EEE9AC00](v439);
  v416 = &v380 - v17;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  v540 = *(v541 - 8);
  MEMORY[0x1EEE9AC00](v541);
  v415 = &v380 - v18;
  v539 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  v538 = *(v539 - 8);
  MEMORY[0x1EEE9AC00](v539);
  v414 = &v380 - v19;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  MEMORY[0x1EEE9AC00](v438);
  v413 = &v380 - v20;
  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  v536 = *(v537 - 8);
  MEMORY[0x1EEE9AC00](v537);
  v412 = &v380 - v21;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  MEMORY[0x1EEE9AC00](v437);
  v411 = &v380 - v22;
  v535 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  v534 = *(v535 - 8);
  MEMORY[0x1EEE9AC00](v535);
  v410 = &v380 - v23;
  *(&v436 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  MEMORY[0x1EEE9AC00](*(&v436 + 1));
  v409 = &v380 - v24;
  *&v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  MEMORY[0x1EEE9AC00](v436);
  v408 = &v380 - v25;
  v533 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  v532 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533);
  v407 = &v380 - v26;
  v531 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  v530 = *(v531 - 8);
  v27 = MEMORY[0x1EEE9AC00](v531);
  v406 = &v380 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v405 = &v380 - v29;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v528 = *(v529 - 8);
  MEMORY[0x1EEE9AC00](v529);
  v404 = &v380 - v30;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  MEMORY[0x1EEE9AC00](v435);
  v403 = &v380 - v31;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  v526 = *(v527 - 8);
  MEMORY[0x1EEE9AC00](v527);
  v402 = &v380 - v32;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v524 = *(v525 - 8);
  MEMORY[0x1EEE9AC00](v525);
  v401 = &v380 - v33;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  MEMORY[0x1EEE9AC00](v434);
  v400 = &v380 - v34;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  v522 = *(v523 - 8);
  MEMORY[0x1EEE9AC00](v523);
  v440 = &v380 - v35;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v520 = *(v521 - 8);
  v36 = MEMORY[0x1EEE9AC00](v521);
  v399 = &v380 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v398 = &v380 - v38;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  MEMORY[0x1EEE9AC00](v441);
  v397 = &v380 - v39;
  v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  v518 = *(v519 - 8);
  MEMORY[0x1EEE9AC00](v519);
  v444 = &v380 - v40;
  v517 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v516 = *(v517 - 8);
  MEMORY[0x1EEE9AC00](v517);
  v443 = &v380 - v41;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  MEMORY[0x1EEE9AC00](v452);
  v442 = &v380 - v42;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  MEMORY[0x1EEE9AC00](v451);
  v395 = &v380 - v43;
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v514 = *(v515 - 8);
  MEMORY[0x1EEE9AC00](v515);
  v393 = &v380 - v44;
  v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v512 = *(v513 - 8);
  MEMORY[0x1EEE9AC00](v513);
  v390 = &v380 - v45;
  v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  v510 = *(v511 - 8);
  MEMORY[0x1EEE9AC00](v511);
  v388 = &v380 - v46;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v508 = *(v509 - 8);
  MEMORY[0x1EEE9AC00](v509);
  v387 = &v380 - v47;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  MEMORY[0x1EEE9AC00](v556);
  v445 = &v380 - v48;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  MEMORY[0x1EEE9AC00](v557);
  v446 = &v380 - v49;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  v560 = *(v563 - 8);
  MEMORY[0x1EEE9AC00](v563);
  v447 = &v380 - v50;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  v562 = *(v565 - 8);
  MEMORY[0x1EEE9AC00](v565);
  v448 = &v380 - v51;
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v568 = *(v569 - 8);
  MEMORY[0x1EEE9AC00](v569);
  v449 = &v380 - v52;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v571 = *(v574 - 8);
  MEMORY[0x1EEE9AC00](v574);
  v450 = &v380 - v53;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v573 = *(v575 - 8);
  MEMORY[0x1EEE9AC00](v575);
  v453 = &v380 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v431 = *(v55 - 8);
  v432 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v454 = &v380 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  MEMORY[0x1EEE9AC00](v57);
  v456 = &v380 - v58;
  v579 = sub_1E65DE668();
  v577 = *(v579 - 8);
  MEMORY[0x1EEE9AC00](v579);
  v457 = &v380 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FE8, &qword_1E65F1178);
  v430 = *(v433 - 8);
  MEMORY[0x1EEE9AC00](v433);
  v578 = &v380 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v581 = &v380 - v62;
  v582 = sub_1E65DF6C8();
  v580 = *(v582 - 8);
  MEMORY[0x1EEE9AC00](v582);
  v490 = &v380 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65DF658();
  MEMORY[0x1EEE9AC00](v64 - 8);
  v489 = &v380 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v586 = type metadata accessor for BrowsingIdentity(0);
  MEMORY[0x1EEE9AC00](v586);
  v585 = &v380 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v380 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E65DE688();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v380 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AppState(0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v380 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 104))(v73, *MEMORY[0x1E699CBC0], v70);
  sub_1E65DE658();
  v77 = &v76[v74[5]];
  sub_1E65DEEC8();
  swift_storeEnumTagMultiPayload();
  v455 = v57;
  v78 = v77 + *(v57 + 28);
  v576 = v77;
  sub_1E5E05C28(v77, v78, MEMORY[0x1E699CE20]);
  v79 = v74[7];
  v488 = v69;
  sub_1E65D77C8();
  sub_1E60DE6BC(&qword_1EE2D7188, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  v572 = v79;
  sub_1E65E4C48();
  v80 = v74[8];
  sub_1E65D7EB8();
  sub_1E60DE6BC(&qword_1EE2D7160, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0F8]);
  v570 = v80;
  sub_1E65E4CA8();
  v81 = v74[10];
  *&v619 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074678, &qword_1E660D860);
  v82 = MEMORY[0x1E69E6500];
  sub_1E5FED46C(&qword_1EE2D4700, &qword_1ED074678, &qword_1E660D860, MEMORY[0x1E69E6500]);
  v567 = v81;
  sub_1E65E4C48();
  v83 = MEMORY[0x1E69E7CC0];
  v84 = sub_1E5E05C90(MEMORY[0x1E69E7CC0]);
  v85 = v74[12];
  sub_1E65E1618();
  sub_1E60DE6BC(&qword_1EE2D64D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8E8]);
  v566 = v84;

  v561 = v85;
  sub_1E65E4CA8();
  v86 = v74[13];
  sub_1E65DBAB8();
  sub_1E60DE6BC(&qword_1EE2D6BE8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E0]);
  v559 = v86;
  sub_1E65E4D58();
  v558 = sub_1E5E05D8C(v83);

  v594 = sub_1E5E05F74(v83);

  v593 = sub_1E5E06078(v83);

  v87 = sub_1E5E06264(v83);
  v88 = &v76[v74[18]];
  v89 = sub_1E65DBB88();
  (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
  v90 = v88 + *(v557 + 28);
  v507 = v88;
  sub_1E5DFD1CC(v88, v90, &qword_1ED074870, &qword_1E65F1010);
  v91 = &v76[v74[19]];
  v92 = *MEMORY[0x1E699D2A8];
  v93 = sub_1E65DBD48();
  v94 = *(v93 - 8);
  (*(v94 + 104))(v91, v92, v93);
  v95 = *(v94 + 16);
  v96 = v91 + *(v556 + 28);
  v506 = v91;
  v95(v96, v91, v93);
  v97 = v74[20];
  sub_1E65D9AC8();
  sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658], MEMORY[0x1E69CC670]);
  v592 = v87;

  v505 = v97;
  sub_1E65E4CA8();
  v98 = v74[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  sub_1E5FED46C(&qword_1EE2D46F8, &qword_1ED0748E0, &qword_1E660F180, v82);
  v504 = v98;
  sub_1E65E4CA8();
  v99 = v74[22];
  sub_1E5DF46C8();
  v503 = v99;
  sub_1E65E4D58();
  v100 = v74[23];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v101 - 8) + 56))(v585, 1, 1, v101);
  sub_1E60DE6BC(qword_1EE2DA468, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
  v502 = v100;
  sub_1E65E4C48();
  v102 = MEMORY[0x1E69E7CC0];
  v586 = sub_1E5E06378(MEMORY[0x1E69E7CC0]);

  v103 = sub_1E5E06564(v102);
  v104 = &v76[v74[26]];
  v105 = *MEMORY[0x1E699D6A8];
  v106 = sub_1E65E02A8();
  v107 = *(v106 - 8);
  (*(v107 + 104))(v104, v105, v106);
  v108 = *(v107 + 16);
  v109 = v104 + *(v451 + 28);
  v501 = v104;
  v108(v109, v104, v106);
  v110 = &v76[v74[27]];
  v585 = v103;

  sub_1E65E2378();
  v111 = *(v452 + 28);
  v112 = sub_1E65E23A8();
  v113 = *(*(v112 - 8) + 16);
  v500 = v110;
  v113(v110 + v111, v110, v112);
  v114 = v74[29];
  sub_1E5DF23E0();
  v499 = v114;
  sub_1E65E4D58();
  v115 = MEMORY[0x1E69E7CC0];
  v497 = sub_1E5E0675C(MEMORY[0x1E69E7CC0]);
  v116 = v74[31];
  sub_1E65E61D8();
  sub_1E65DA8C8();
  sub_1E60DE6BC(&qword_1EE2D6FC8, MEMORY[0x1E69CD000], MEMORY[0x1E69CD010]);
  v498 = v116;
  sub_1E65E4D38();
  v495 = sub_1E5E06988(v115);
  v117 = sub_1E5E06B74(v115);
  v118 = &v76[v74[36]];
  v584 = v117;

  sub_1E65DC5D8();
  v119 = *(v441 + 28);
  v120 = sub_1E65DC638();
  v121 = *(*(v120 - 8) + 16);
  v496 = v118;
  v121(v118 + v119, v118, v120);
  v493 = sub_1E5DFE000(v115);
  v122 = v74[38];
  sub_1E65E61D8();
  v494 = v122;
  sub_1E65E4C68();
  v381 = v74[39];
  v76[v381] = 0;
  v382 = v74[40];
  v76[v382] = 0;
  v123 = v74[41];
  sub_1E65E61D8();
  v492 = v123;
  sub_1E65E4C68();
  v124 = v74[42];
  sub_1E65E61D8();
  sub_1E65D76A8();
  sub_1E60DE6BC(&qword_1EE2D71D0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v491 = v124;
  sub_1E65E4C68();
  v125 = &v76[v74[43]];
  v126 = sub_1E5DFE1E8(v115);
  *v125 = v126;
  v125[1] = v126;
  v383 = v125;
  v127 = v74;
  v128 = &v76[v74[44]];
  v583 = v126;

  v129 = sub_1E5DFE3F8(v115);
  *v128 = v129;
  v128[1] = v129;
  v384 = v128;
  v130 = v127;
  v131 = &v76[v127[45]];
  v596 = v76;
  (*(v580 + 104))(v490, *MEMORY[0x1E699E6F0], v582);
  v582 = v129;

  sub_1E65DF638();
  sub_1E65D77C8();
  sub_1E65DF598();
  v132 = *(v434 + 28);
  v133 = sub_1E65DF608();
  v134 = *(*(v133 - 8) + 16);
  v490 = v131;
  v134(v131 + v132, v131, v133);
  v135 = v130[46];
  sub_1E65E61D8();
  sub_1E65E1518();
  sub_1E65E1458();
  sub_1E60DE6BC(&qword_1EE2D64F0, MEMORY[0x1E699E860], MEMORY[0x1E699E870]);
  sub_1E60DE6BC(&qword_1EE2D6508, MEMORY[0x1E699E810], MEMORY[0x1E699E828]);
  v489 = v135;
  sub_1E65E4D38();
  v595 = v130;
  v136 = v130[47];
  sub_1E65E61D8();
  sub_1E65D9798();
  sub_1E60DE6BC(&qword_1EE2D7070, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2D8]);
  v488 = v136;
  sub_1E65E4D38();
  v137 = &v76[v130[48]];
  v138 = v115;
  v139 = sub_1E5DF9D44(v115);
  v140 = sub_1E5E06D90(v115);
  v141 = sub_1E5E06FB4(v115);
  v142 = sub_1E5E071AC(v115);
  v143 = sub_1E5E06D90(v138);
  v144 = sub_1E5E073A4(v138);
  v145 = sub_1E5DF9D44(v138);
  v580 = v145;
  v482 = v139;
  *v137 = v139;
  v137[1] = v140;
  v483 = v140;
  v137[2] = v141;
  v137[3] = v142;
  v484 = v143;
  v137[4] = v143;
  v137[5] = v144;
  v485 = v144;
  v137[6] = v145;
  v137[7] = v139;
  v137[8] = v140;
  v137[9] = v141;
  v137[10] = v142;
  v137[11] = v143;
  v137[12] = v144;
  v137[13] = v145;
  v487 = v137;
  v146 = v595;
  v147 = v596;
  v148 = v596 + v595[49];
  v149 = *MEMORY[0x1E699D0E0];
  v150 = sub_1E65DB1C8();
  v151 = *(v150 - 8);
  (*(v151 + 104))(v148, v149, v150);
  v152 = *(v151 + 16);
  v153 = v148 + *(v435 + 28);
  v486 = v148;
  v152(v153, v148, v150);
  v154 = v146[50];
  sub_1E5E01620();

  v485 = v154;
  sub_1E65E4CA8();
  v155 = v146[51];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CB0, &unk_1E660F800);
  sub_1E60DB408();
  v484 = v155;
  sub_1E65E4CA8();
  v483 = v146[52];
  sub_1E65E4CA8();
  v156 = v146[53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  sub_1E5E01674();
  v482 = v156;
  sub_1E65E4CA8();
  v157 = v147 + v146[54];
  v158 = sub_1E65E1BA8();
  (*(*(v158 - 8) + 56))(v581, 1, 1, v158);
  sub_1E65E1AB8();
  v159 = *(v436 + 28);
  v160 = sub_1E65E1B08();
  v161 = *(*(v160 - 8) + 16);
  v481 = v157;
  v161(v157 + v159, v157, v160);
  v162 = v147 + v146[55];
  sub_1E65E1B28();
  sub_1E60DE6BC(&qword_1EE2D6490, MEMORY[0x1E699EA00], MEMORY[0x1E699EA10]);
  sub_1E65E4CA8();
  v163 = *(*(&v436 + 1) + 28);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v165 = *(*(v164 - 8) + 16);
  v480 = v162;
  v165(v162 + v163, v162, v164);
  v166 = v146[56];
  sub_1E65E1F68();
  sub_1E60DE6BC(&unk_1EE2D62B0, MEMORY[0x1E699F160], MEMORY[0x1E699F170]);
  v479 = v166;
  sub_1E65E4CA8();
  v167 = v147 + v146[57];
  v168 = *MEMORY[0x1E699F368];
  v169 = sub_1E65E2628();
  v170 = *(v169 - 8);
  (*(v170 + 104))(v167, v168, v169);
  v171 = *(v170 + 16);
  v172 = v167 + *(v437 + 28);
  v478 = v167;
  v171(v172, v167, v169);
  v173 = (v147 + v146[58]);
  v174 = sub_1E5E0759C(MEMORY[0x1E69E7CC0]);
  *v173 = v174;
  v173[1] = v174;
  v385 = v173;
  v175 = v146[59];
  v581 = v174;

  sub_1E65E61D8();
  sub_1E65D94D8();
  sub_1E60DE6BC(&qword_1EE2D7090, MEMORY[0x1E69CC100], MEMORY[0x1E69CC110]);
  v477 = v175;
  sub_1E65E4D38();
  v176 = v147 + v146[60];
  v177 = *MEMORY[0x1E699ED60];
  v178 = sub_1E65E3838();
  v179 = *(v178 - 8);
  (*(v179 + 104))(v176, v177, v178);
  v180 = *(v179 + 16);
  v181 = v176 + *(v438 + 28);
  v476 = v176;
  v180(v181, v176, v178);
  v386 = v146[61];
  *(v147 + v386) = 0;
  v474 = v147 + v146[62];
  *v474 = xmmword_1E65EAE00;
  v182 = (v147 + v146[64]);
  v183 = *(MEMORY[0x1E69DDCE0] + 16);
  *v182 = *MEMORY[0x1E69DDCE0];
  v182[1] = v183;
  v389 = v182;
  v184 = v146[65];
  sub_1E65E3668();
  sub_1E5DF4210();
  sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0], MEMORY[0x1E699EDC0]);
  v475 = v184;
  sub_1E65E4D58();
  v185 = v146[66];
  sub_1E65E61D8();
  sub_1E5DF4334();
  v473 = v185;
  sub_1E65E4D38();
  v186 = (v147 + v146[67]);
  v187 = MEMORY[0x1E69E7CD0];
  *v186 = MEMORY[0x1E69E7CD0];
  v186[1] = v187;
  v391 = v186;
  v188 = (v147 + v146[68]);
  *v188 = v187;
  v188[1] = v187;
  v392 = v188;
  v189 = v147 + v146[69];
  sub_1E65DD098();
  v190 = *(v439 + 28);
  v191 = sub_1E65DD0A8();
  v192 = *(*(v191 - 8) + 16);
  v472 = v189;
  v192(v189 + v190, v189, v191);
  v193 = *MEMORY[0x1E699EF98];
  v194 = *(v588 + 104);
  v471 = v146[70];
  v194(v147 + v471, v193, v589);
  v195 = v146[71];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E98, &qword_1E65F1138);
  sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8, MEMORY[0x1E699CEB0], MEMORY[0x1E69E6320]);
  v470 = v195;
  sub_1E65E4CA8();
  v196 = *MEMORY[0x1E699EFF0];
  v197 = *(v590 + 104);
  v469 = v146[72];
  v197(v147 + v469, v196, v591);
  v198 = v146[73];
  sub_1E65D92D8();
  sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF0]);
  v468 = v198;
  sub_1E65E4CA8();
  v199 = v146[74];
  sub_1E65E61D8();
  sub_1E65D8418();
  sub_1E60DE6BC(&qword_1EE2D7128, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3D8]);
  v467 = v199;
  sub_1E65E4D38();
  v200 = v146[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E60DB4BC();
  v466 = v200;
  sub_1E65E4CA8();
  v201 = v146[76];
  v202 = MEMORY[0x1E69E7CC0];
  v464 = sub_1E5E077DC(MEMORY[0x1E69E7CC0]);
  v394 = v201;
  *(v147 + v201) = v464;
  v203 = v146[77];
  sub_1E65E61D8();
  sub_1E65D9658();
  sub_1E60DE6BC(&qword_1EE2D7078, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C0]);
  v465 = v203;
  sub_1E65E4D38();
  v204 = v146[78];
  v463 = sub_1E5E079C8(v202);
  v396 = v204;
  *(v147 + v204) = v463;
  v205 = (v147 + v146[79]);
  v206 = sub_1E5E07BB4(v202);
  *v205 = v206;
  v205[1] = v206;
  v207 = v146[80];
  sub_1E65DADD8();
  sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);

  v462 = v207;
  sub_1E65E4D58();
  v460 = v146[81];
  sub_1E65E4D58();
  v459 = v146[82];
  sub_1E65E4D58();
  v458 = v146[83];
  sub_1E65E4D58();
  v208 = v147 + v146[84];
  sub_1E65DAEB8();
  sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
  v461 = v208;
  sub_1E65E4D58();
  __swift_project_boxed_opaque_existential_1(v587, v587[3]);
  sub_1E60CED90();
  v209 = v564;
  sub_1E65E6D98();
  v580 = v206;
  if (!v209)
  {
    v380 = v205;
    LOBYTE(v619) = 0;
    sub_1E60DE6BC(&qword_1ED074FF8, MEMORY[0x1E699CBA8], MEMORY[0x1E699CBB8]);
    v212 = v457;
    v213 = v579;
    sub_1E65E6AD8();
    (*(v577 + 40))(v596, v212, v213);
    LOBYTE(v619) = 1;
    sub_1E60DB54C();
    v226 = v456;
    sub_1E65E6AD8();
    v227 = v595;
    sub_1E60DDD00(v226, v576, &qword_1ED0745E0, &qword_1E65F0F90);
    LOBYTE(v619) = 2;
    sub_1E5FED46C(&qword_1ED075008, &qword_1ED072618, qword_1E65FBAF0, MEMORY[0x1E699D900]);
    v228 = v454;
    v229 = v432;
    sub_1E65E6AD8();
    v230 = v596;
    (*(v431 + 32))(v596 + v227[6], v228, v229);
    LOBYTE(v619) = 3;
    sub_1E60DB660();
    v231 = v453;
    v232 = v575;
    sub_1E65E6AD8();
    (*(v573 + 40))(v230 + v572, v231, v232);
    LOBYTE(v619) = 4;
    sub_1E60DB748();
    v233 = v450;
    v234 = v574;
    sub_1E65E6AD8();
    (*(v571 + 40))(v230 + v570, v233, v234);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074640, &qword_1E65F0F98);
    LOBYTE(v607[0]) = 5;
    sub_1E60DB830();
    sub_1E65E6AD8();
    *(v230 + v227[9]) = v619;
    LOBYTE(v619) = 6;
    sub_1E60DB8D0();
    v235 = v449;
    v236 = v569;
    sub_1E65E6AD8();
    (*(v568 + 40))(v230 + v567, v235, v236);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074698, &qword_1E65F0FA0);
    LOBYTE(v607[0]) = 7;
    sub_1E60DB95C();
    sub_1E65E6AD8();

    v237 = v227[11];

    v238 = (v596 + v237);
    v239 = *(&v619 + 1);
    v457 = v619;
    *v238 = v619;
    v238[1] = v239;
    v566 = v239;
    LOBYTE(v619) = 8;
    sub_1E60DB9FC();
    v240 = v448;
    sub_1E65E6AD8();
    v564 = 0;
    (*(v562 + 40))(v596 + v561, v240, v565);
    LOBYTE(v619) = 9;
    sub_1E60DBAE4();
    v241 = v564;
    sub_1E65E6AD8();
    v564 = v241;
    if (v241 || ((*(v560 + 40))(v596 + v559, v447, v563), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074708, &qword_1E65F0FC0), LOBYTE(v607[0]) = 10, sub_1E60DBBE0(), v242 = v564, sub_1E65E6AD8(), (v564 = v242) != 0))
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      v446 = v586;
      v453 = v592;
      v454 = v593;
      v455 = v594;
      v456 = v558;
      v214 = v595;
      goto LABEL_4;
    }

    v243 = v595[14];

    v244 = (v596 + v243);
    v245 = *(&v619 + 1);
    v456 = v619;
    *v244 = v619;
    v244[1] = v245;
    v558 = v245;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074750, &qword_1E65F0FD0);
    LOBYTE(v607[0]) = 11;
    sub_1E60DBC80();
    v246 = v564;
    sub_1E65E6AD8();
    v564 = v246;
    if (v246)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      v446 = v586;
      v453 = v592;
      v454 = v593;
      v455 = v594;
      goto LABEL_26;
    }

    v247 = v595[15];

    v248 = (v596 + v247);
    v249 = *(&v619 + 1);
    v455 = v619;
    *v248 = v619;
    v248[1] = v249;
    v594 = v249;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    LOBYTE(v607[0]) = 12;
    sub_1E60DBD20();
    v250 = v564;
    sub_1E65E6AD8();
    v564 = v250;
    if (v250)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      v446 = v586;
      v453 = v592;
      v454 = v593;
      goto LABEL_26;
    }

    v251 = v595[16];

    v252 = (v596 + v251);
    v253 = *(&v619 + 1);
    v454 = v619;
    *v252 = v619;
    v252[1] = v253;
    v593 = v253;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074810, &qword_1E65F0FF8);
    LOBYTE(v607[0]) = 13;
    sub_1E60DBDC0();
    v254 = v564;
    sub_1E65E6AD8();
    v564 = v254;
    if (v254)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      v446 = v586;
      v453 = v592;
      goto LABEL_26;
    }

    v255 = v595[17];

    v256 = (v596 + v255);
    v257 = *(&v619 + 1);
    v453 = v619;
    *v256 = v619;
    v256[1] = v257;
    v592 = v257;
    LOBYTE(v619) = 14;
    sub_1E60DBE60();
    v258 = v564;
    sub_1E65E6AD8();
    v564 = v258;
    if (v258 || (sub_1E60DDD00(v446, v507, &qword_1ED074858, &qword_1E65F1008), LOBYTE(v619) = 15, sub_1E60DBF00(), v259 = v564, sub_1E65E6AD8(), (v564 = v259) != 0) || (sub_1E60DDD00(v445, v506, &qword_1ED0741C8, &qword_1E65EFB48), LOBYTE(v619) = 16, sub_1E60DC014(), v260 = v564, sub_1E65E6AD8(), (v564 = v260) != 0) || ((*(v508 + 40))(v596 + v505, v387, v509), LOBYTE(v619) = 17, sub_1E60DC0FC(), v261 = v564, sub_1E65E6AD8(), (v564 = v261) != 0) || ((*(v510 + 40))(v596 + v504, v388, v511), LOBYTE(v619) = 18, sub_1E60DC188(&qword_1ED075088, MEMORY[0x1E6999B10]), v262 = v564, sub_1E65E6AD8(), (v564 = v262) != 0) || ((*(v512 + 40))(v596 + v503, v390, v513), LOBYTE(v619) = 19, sub_1E60DC214(), v263 = v564, sub_1E65E6AD8(), (v564 = v263) != 0) || ((*(v514 + 40))(v596 + v502, v393, v515), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074910, &qword_1E65F1018), LOBYTE(v607[0]) = 20, sub_1E60DC2FC(), v264 = v564, sub_1E65E6AD8(), (v564 = v264) != 0))
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      v446 = v586;
      goto LABEL_26;
    }

    v265 = v595[24];

    v266 = (v596 + v265);
    v267 = *(&v619 + 1);
    v446 = v619;
    *v266 = v619;
    v266[1] = v267;
    v586 = v267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074958, &qword_1E65F1028);
    LOBYTE(v607[0]) = 21;
    sub_1E60DC39C();
    v268 = v564;
    sub_1E65E6AD8();
    v564 = v268;
    if (v268)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      v445 = v585;
      goto LABEL_26;
    }

    v269 = v595[25];

    v270 = (v596 + v269);
    v271 = *(&v619 + 1);
    v445 = v619;
    *v270 = v619;
    v270[1] = v271;
    v585 = v271;
    LOBYTE(v619) = 22;
    sub_1E60DC43C();
    v272 = v564;
    sub_1E65E6AD8();
    v564 = v272;
    if (v272 || (sub_1E60DDD00(v395, v501, &qword_1ED0749A0, &qword_1E65F1038), LOBYTE(v619) = 23, sub_1E60DC550(), v273 = v564, sub_1E65E6AD8(), (v564 = v273) != 0) || (sub_1E60DDD00(v442, v500, &qword_1ED0727F8, &qword_1E65EBDF0), LOBYTE(v607[0]) = 24, sub_1E5F8BF70(), v274 = v564, sub_1E65E6AD8(), (v564 = v274) != 0) || (*(v596 + v595[28]) = v619, LOBYTE(v619) = 25, sub_1E60DC664(&qword_1ED0750B8, MEMORY[0x1E6999B10]), v275 = v564, sub_1E65E6AD8(), (v564 = v275) != 0) || ((*(v516 + 40))(v596 + v499, v443, v517), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749F0, &qword_1E65F1040), LOBYTE(v607[0]) = 26, sub_1E60DC6F8(), v276 = v564, sub_1E65E6AD8(), (v564 = v276) != 0) || (, v277 = v595[30], v497 = v619, *(v596 + v277) = v619, LOBYTE(v619) = 27, sub_1E60DC7E0(), v278 = v564, sub_1E65E6AD8(), (v564 = v278) != 0) || ((*(v518 + 40))(v596 + v498, v444, v519), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A30, &qword_1E65F1048), LOBYTE(v607[0]) = 28, sub_1E60DC8DC(), v279 = v564, sub_1E65E6AD8(), (v564 = v279) != 0) || (, v280 = v595[32], v495 = v619, *(v596 + v280) = v619, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A48, &qword_1E65F1050), LOBYTE(v607[0]) = 29, sub_1E60DC998(), v281 = v564, sub_1E65E6AD8(), (v564 = v281) != 0))
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      v443 = v584;
      goto LABEL_26;
    }

    v282 = v595[33];

    v283 = (v596 + v282);
    v284 = *(&v619 + 1);
    v443 = v619;
    *v283 = v619;
    v283[1] = v284;
    v584 = v284;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AA0, &qword_1E65F1060);
    v609 = 30;
    sub_1E60DCA38();
    v285 = v564;
    sub_1E65E6AD8();
    v564 = v285;
    if (v285)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      v557 = 0;
      v556 = 0;
      v451 = 0;
      v450 = 0;
      v449 = 0;
      v448 = 0;
      LODWORD(v447) = 2;
      v210 = 1;
      *&v436 = MEMORY[0x1E69E7CD0];
      *(&v436 + 1) = MEMORY[0x1E69E7CD0];
      v437 = v581;
      v438 = MEMORY[0x1E69E7CD0];
      v440 = v582;
      v441 = v583;
      LODWORD(v444) = 2;
      LODWORD(v442) = 2;
      goto LABEL_26;
    }

    v286 = v596 + v595[34];
    v287 = v611;
    v288 = v612;
    v289 = v613;
    v290 = v615;
    v291 = v616;
    v292 = v617;
    v293 = v618;
    v450 = v610;
    *v286 = v610;
    *(v286 + 8) = v287;
    v449 = v287;
    v448 = v288;
    *(v286 + 16) = v288;
    LODWORD(v442) = v289;
    *(v286 + 24) = v289;
    *(v286 + 25) = *v614;
    *(v286 + 28) = *&v614[3];
    v557 = v290;
    *(v286 + 32) = v290;
    *(v286 + 40) = v291;
    v556 = v291;
    v451 = v292;
    *(v286 + 48) = v292;
    LODWORD(v444) = v293;
    *(v286 + 56) = v293;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AC8, &qword_1E65F1068);
    LOBYTE(v607[0]) = 31;
    sub_1E5FED46C(&qword_1ED075100, &qword_1ED074AC8, &qword_1E65F1068, MEMORY[0x1E699E0F8]);
    v294 = v564;
    sub_1E65E6AD8();
    v564 = v294;
    if (v294)
    {
      (*(v430 + 8))(v578, v433);
      v211 = 0;
      v452 = 0;
      LODWORD(v447) = 2;
    }

    else
    {
      v295 = v596 + v595[35];
      v296 = BYTE8(v619);
      v452 = v619;
      *v295 = v619;
      LODWORD(v447) = v296;
      *(v295 + 8) = v296;
      LOBYTE(v619) = 32;
      sub_1E60DCAD8();
      v297 = v564;
      sub_1E65E6AD8();
      v564 = v297;
      if (!v297)
      {
        sub_1E60DDD00(v397, v496, &qword_1ED072800, &qword_1E65EBDF8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074AF0, &qword_1E65F1070);
        LOBYTE(v607[0]) = 33;
        sub_1E60DCBEC();
        v298 = v564;
        sub_1E65E6AD8();
        v564 = v298;
        if (!v298)
        {

          v299 = v595[37];
          v493 = v619;
          *(v596 + v299) = v619;
          LOBYTE(v619) = 34;
          sub_1E60DCD90(&qword_1ED075138, MEMORY[0x1E6999AC0]);
          v300 = v564;
          sub_1E65E6AD8();
          v564 = v300;
          if (!v300)
          {
            v301 = *(v520 + 40);
            v301(v596 + v494, v398, v521);
            LOBYTE(v619) = 35;
            v302 = v564;
            v303 = sub_1E65E6AB8();
            v564 = v302;
            if (!v302)
            {
              *(v596 + v381) = v303 & 1;
              LOBYTE(v619) = 36;
              v304 = v564;
              v305 = sub_1E65E6AB8();
              v564 = v304;
              if (!v304)
              {
                *(v596 + v382) = v305 & 1;
                LOBYTE(v619) = 37;
                v306 = v564;
                sub_1E65E6AD8();
                v564 = v306;
                if (!v306)
                {
                  v301(v596 + v492, v399, v521);
                  LOBYTE(v619) = 38;
                  sub_1E60DCE00();
                  v307 = v564;
                  sub_1E65E6AD8();
                  v564 = v307;
                  if (!v307)
                  {
                    (*(v522 + 40))(v596 + v491, v440, v523);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B50, &qword_1E65F1090);
                    LOBYTE(v607[0]) = 39;
                    sub_1E60DCEE8();
                    v308 = v564;
                    sub_1E65E6AD8();
                    v564 = v308;
                    if (!v308)
                    {
                      swift_bridgeObjectRelease_n();
                      v309 = *(&v619 + 1);
                      v441 = v619;
                      v310 = v383;
                      *v383 = v619;
                      v310[1] = v309;
                      v583 = v309;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BA8, &qword_1E65F10A0);
                      LOBYTE(v607[0]) = 40;
                      sub_1E60D2454(&qword_1ED075150, &unk_1E65F2AA4);
                      v311 = v564;
                      sub_1E65E6AD8();
                      v564 = v311;
                      if (v311)
                      {
                        (*(v430 + 8))(v578, v433);
                        v211 = 0;
                        v210 = 1;
                        *&v436 = MEMORY[0x1E69E7CD0];
                        *(&v436 + 1) = MEMORY[0x1E69E7CD0];
                        v437 = v581;
                        v438 = MEMORY[0x1E69E7CD0];
                        v440 = v582;
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                        v312 = *(&v619 + 1);
                        v440 = v619;
                        v313 = v384;
                        *v384 = v619;
                        v313[1] = v312;
                        v582 = v312;
                        LOBYTE(v619) = 41;
                        sub_1E60DCF88();
                        v314 = v564;
                        sub_1E65E6AD8();
                        v564 = v314;
                        if (v314 || (sub_1E60DDD00(v400, v490, &qword_1ED074BD8, &qword_1E65F10B0), LOBYTE(v619) = 42, sub_1E60D2764(&qword_1ED075160, MEMORY[0x1E6999B10]), v315 = v564, sub_1E65E6AD8(), (v564 = v315) != 0) || ((*(v524 + 40))(&v489[v596], v401, v525), LOBYTE(v619) = 43, sub_1E60DD09C(), v316 = v564, sub_1E65E6AD8(), (v564 = v316) != 0) || ((*(v526 + 40))(&v488[v596], v402, v527), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C48, &qword_1E65F10C8), v608 = 44, sub_1E60DD198(), v317 = v564, sub_1E65E6AD8(), (v564 = v317) != 0) || (v604 = v623, v605 = v624, v606 = v625, v600 = v619, v601 = v620, v603 = v622, v602 = v621, v318 = v487, v319 = *v487, v607[1] = *(v487 + 1), v607[0] = v319, v320 = *(v487 + 2), v321 = *(v487 + 3), v322 = *(v487 + 5), v607[6] = *(v487 + 6), v323 = *(v487 + 4), v607[5] = v322, v607[4] = v323, v607[2] = v320, v607[3] = v321, sub_1E5DFE50C(v607, &qword_1ED074C48, &qword_1E65F10C8), v324 = v605, *(v318 + 4) = v604, *(v318 + 5) = v324, *(v318 + 6) = v606, v325 = v601, *v318 = v600, *(v318 + 1) = v325, v326 = v603, *(v318 + 2) = v602, *(v318 + 3) = v326, LOBYTE(v597) = 45, sub_1E60DD238(), v327 = v564, sub_1E65E6AD8(), (v564 = v327) != 0) || (sub_1E60DDD00(v403, v486, &qword_1ED074C70, &qword_1E65F10D0), LOBYTE(v597) = 46, sub_1E60DD34C(), v328 = v564, sub_1E65E6AD8(), (v564 = v328) != 0) || ((*(v528 + 40))(v596 + v485, v404, v529), LOBYTE(v597) = 47, sub_1E60DD3D8(), v329 = v564, sub_1E65E6AD8(), (v564 = v329) != 0) || (v330 = *(v530 + 40), v330(v596 + v484, v405, v531), LOBYTE(v597) = 48, v331 = v564, sub_1E65E6AD8(), (v564 = v331) != 0) || (v330(v596 + v483, v406, v531), LOBYTE(v597) = 49, sub_1E60DD464(), v332 = v564, sub_1E65E6AD8(), (v564 = v332) != 0) || ((*(v532 + 40))(v596 + v482, v407, v533), LOBYTE(v597) = 50, sub_1E60DD4F0(), v333 = v564, sub_1E65E6AD8(), (v564 = v333) != 0) || (sub_1E60DDD00(v408, v481, &qword_1ED074CF0, &qword_1E65F10D8), LOBYTE(v597) = 51, sub_1E60DD604(&qword_1ED0751A0, &unk_1E65F2AA4), v334 = v564, sub_1E65E6AD8(), (v564 = v334) != 0) || (sub_1E60DDD00(v409, v480, &qword_1ED073560, &qword_1E65ED560), LOBYTE(v597) = 52, sub_1E60DD6BC(), v335 = v564, sub_1E65E6AD8(), (v564 = v335) != 0) || ((*(v534 + 40))(v596 + v479, v410, v535), LOBYTE(v597) = 53, sub_1E60DD7A4(), v336 = v564, sub_1E65E6AD8(), (v564 = v336) != 0) || (sub_1E60DDD00(v411, v478, &qword_1ED0745B0, &qword_1E65F0F38), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D68, &qword_1E65F10E8), v599 = 54, sub_1E60DD8B8(), v337 = v564, sub_1E65E6AD8(), (v564 = v337) != 0))
                        {
                          (*(v430 + 8))(v578, v433);
                          v211 = 0;
                          v210 = 1;
                          *&v436 = MEMORY[0x1E69E7CD0];
                          *(&v436 + 1) = MEMORY[0x1E69E7CD0];
                          v437 = v581;
                          v438 = MEMORY[0x1E69E7CD0];
                        }

                        else
                        {
                          swift_bridgeObjectRelease_n();
                          v338 = *(&v597 + 1);
                          v437 = v597;
                          v339 = v385;
                          *v385 = v597;
                          v339[1] = v338;
                          v581 = v338;
                          LOBYTE(v597) = 55;
                          sub_1E60DD958();
                          v340 = v564;
                          sub_1E65E6AD8();
                          v564 = v340;
                          if (v340 || ((*(v536 + 40))(v596 + v477, v412, v537), LOBYTE(v597) = 56, sub_1E60DDA54(), v341 = v564, sub_1E65E6AD8(), (v564 = v341) != 0) || (sub_1E60DDD00(v413, v476, &qword_1ED074DD0, &qword_1E65F1100), LOBYTE(v597) = 57, v342 = v564, v343 = sub_1E65E6AB8(), (v564 = v342) != 0) || (*(v596 + v386) = v343 & 1, v599 = 58, sub_1E5DF6CE4(), v344 = v564, sub_1E65E6A98(), (v564 = v344) != 0) || (v345 = v597, v346 = v474, sub_1E5E07DA0(*v474, *(v474 + 8)), *v346 = v345, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078610, &qword_1E65F1108), v599 = 59, sub_1E60DDB68(), v347 = v564, sub_1E65E6AD8(), (v564 = v347) != 0))
                          {
                            (*(v430 + 8))(v578, v433);
                            v211 = 0;
                            v348 = MEMORY[0x1E69E7CD0];
                            v210 = 1;
                          }

                          else
                          {
                            *(v596 + v595[63]) = v597;
                            type metadata accessor for UIEdgeInsets(0);
                            v599 = 60;
                            sub_1E60DE6BC(&qword_1ED0751D8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3C8]);
                            v349 = v564;
                            sub_1E65E6AD8();
                            v564 = v349;
                            if (!v349)
                            {
                              v350 = v598;
                              v351 = v389;
                              *v389 = v597;
                              v351[1] = v350;
                              LOBYTE(v597) = 61;
                              sub_1E60D3BB0(&qword_1ED0751E0, MEMORY[0x1E6999B10]);
                              v352 = v564;
                              sub_1E65E6AD8();
                              v564 = v352;
                              if (!v352)
                              {
                                (*(v538 + 40))(v596 + v475, v414, v539);
                                LOBYTE(v597) = 62;
                                sub_1E60D3D48(&qword_1ED0751E8, MEMORY[0x1E6999B10]);
                                v353 = v564;
                                sub_1E65E6AD8();
                                v564 = v353;
                                if (!v353)
                                {
                                  (*(v540 + 40))(v596 + v473, v415, v541);
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E48, &qword_1E65F1120);
                                  v599 = 63;
                                  sub_1E60D3E7C(&qword_1ED0751F0, &unk_1E65F2AA4);
                                  v354 = v564;
                                  sub_1E65E6AD8();
                                  v564 = v354;
                                  if (!v354)
                                  {
                                    v355 = *(&v597 + 1);
                                    v436 = v597;
                                    v356 = v391;
                                    *v391 = v597;
                                    v356[1] = v355;
                                    v599 = 64;
                                    v357 = v564;
                                    sub_1E65E6AD8();
                                    v564 = v357;
                                    if (v357)
                                    {
                                      (*(v430 + 8))(v578, v433);
                                      v210 = 1;
                                      v211 = 1;
                                      v438 = MEMORY[0x1E69E7CD0];
                                    }

                                    else
                                    {
                                      v358 = *(&v597 + 1);
                                      v438 = v597;
                                      v359 = v392;
                                      *v392 = v597;
                                      v359[1] = v358;
                                      LOBYTE(v597) = 65;
                                      sub_1E60DDBEC();
                                      v360 = v564;
                                      sub_1E65E6AD8();
                                      v564 = v360;
                                      if (!v360)
                                      {
                                        sub_1E60DDD00(v416, v472, &qword_1ED074E58, &qword_1E65F1128);
                                        LOBYTE(v597) = 66;
                                        sub_1E60DE6BC(&qword_1ED075200, MEMORY[0x1E699EFA0], MEMORY[0x1E699EFB0]);
                                        v361 = v564;
                                        sub_1E65E6AD8();
                                        v564 = v361;
                                        if (!v361)
                                        {
                                          (*(v588 + 40))(v596 + v471, v417, v589);
                                          LOBYTE(v597) = 67;
                                          sub_1E60DDD68(&qword_1ED075208, MEMORY[0x1E6999AC0]);
                                          v362 = v564;
                                          sub_1E65E6AD8();
                                          v564 = v362;
                                          if (!v362)
                                          {
                                            (*(v542 + 40))(v596 + v470, v418, v543);
                                            LOBYTE(v597) = 68;
                                            sub_1E60DE6BC(&qword_1ED075210, MEMORY[0x1E699EFF8], MEMORY[0x1E699F008]);
                                            v363 = v564;
                                            sub_1E65E6AD8();
                                            v564 = v363;
                                            if (!v363)
                                            {
                                              (*(v590 + 40))(v596 + v469, v419, v591);
                                              LOBYTE(v597) = 69;
                                              sub_1E60DDE50();
                                              v364 = v564;
                                              sub_1E65E6AD8();
                                              v564 = v364;
                                              if (!v364)
                                              {
                                                (*(v544 + 40))(v596 + v468, v420, v545);
                                                LOBYTE(v597) = 70;
                                                sub_1E60DDF38();
                                                v365 = v564;
                                                sub_1E65E6AD8();
                                                v564 = v365;
                                                if (!v365)
                                                {
                                                  (*(v546 + 40))(v596 + v467, v421, v547);
                                                  LOBYTE(v597) = 71;
                                                  sub_1E60DE034();
                                                  v366 = v564;
                                                  sub_1E65E6AD8();
                                                  v564 = v366;
                                                  if (!v366)
                                                  {
                                                    (*(v548 + 40))(v596 + v466, v422, v549);
                                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F28, &qword_1E65F1158);
                                                    v599 = 72;
                                                    sub_1E60DE0C0();
                                                    v367 = v564;
                                                    sub_1E65E6AD8();
                                                    v564 = v367;
                                                    if (!v367)
                                                    {

                                                      v464 = v597;
                                                      *(v596 + v394) = v597;
                                                      LOBYTE(v597) = 73;
                                                      sub_1E60DE17C();
                                                      v368 = v564;
                                                      sub_1E65E6AD8();
                                                      v564 = v368;
                                                      if (!v368)
                                                      {
                                                        (*(v550 + 40))(v596 + v465, v423, v551);
                                                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F58, &qword_1E65F1160);
                                                        v599 = 74;
                                                        sub_1E60DE278();
                                                        v369 = v564;
                                                        sub_1E65E6AD8();
                                                        v564 = v369;
                                                        if (!v369)
                                                        {

                                                          v463 = v597;
                                                          *(v596 + v396) = v597;
                                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F70, &qword_1E65F1168);
                                                          v599 = 75;
                                                          sub_1E60DE334();
                                                          v370 = v564;
                                                          sub_1E65E6AD8();
                                                          v564 = v370;
                                                          if (!v370)
                                                          {
                                                            swift_bridgeObjectRelease_n();
                                                            v371 = *(&v597 + 1);
                                                            v372 = v380;
                                                            *v380 = v597;
                                                            v372[1] = v371;
                                                            v580 = v371;
                                                            LOBYTE(v597) = 76;
                                                            sub_1E60DE3D4();
                                                            v373 = v564;
                                                            sub_1E65E6AD8();
                                                            v564 = v373;
                                                            if (!v373)
                                                            {
                                                              v374 = *(v552 + 40);
                                                              v374(v596 + v462, v424, v553);
                                                              LOBYTE(v597) = 77;
                                                              v375 = v564;
                                                              sub_1E65E6AD8();
                                                              v564 = v375;
                                                              if (!v375)
                                                              {
                                                                v374(v596 + v460, v425, v553);
                                                                LOBYTE(v597) = 78;
                                                                v376 = v564;
                                                                sub_1E65E6AD8();
                                                                v564 = v376;
                                                                if (!v376)
                                                                {
                                                                  v374(v596 + v459, v426, v553);
                                                                  LOBYTE(v597) = 79;
                                                                  v377 = v564;
                                                                  sub_1E65E6AD8();
                                                                  v564 = v377;
                                                                  if (!v377)
                                                                  {
                                                                    v374(v596 + v458, v427, v553);
                                                                    LOBYTE(v597) = 80;
                                                                    sub_1E60DE4D0();
                                                                    v378 = v564;
                                                                    sub_1E65E6AD8();
                                                                    v564 = v378;
                                                                    if (!v378)
                                                                    {
                                                                      (*(v430 + 8))(v578, v433);
                                                                      (*(v554 + 40))(v461, v428, v555);
                                                                      v379 = v596;
                                                                      sub_1E5E05C28(v596, v429, type metadata accessor for AppState);
                                                                      __swift_destroy_boxed_opaque_existential_1(v587);
                                                                      return sub_1E60DE5CC(v379);
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      (*(v430 + 8))(v578, v433);
                                      v210 = 1;
                                      v211 = 1;
                                    }

                                    goto LABEL_26;
                                  }
                                }
                              }
                            }

                            (*(v430 + 8))(v578, v433);
                            v348 = MEMORY[0x1E69E7CD0];
                            v210 = 1;
                            v211 = 1;
                          }

                          v438 = v348;
                          *&v436 = v348;
                          *(&v436 + 1) = v348;
                        }
                      }

LABEL_26:
                      v214 = v595;
                      goto LABEL_4;
                    }
                  }
                }
              }
            }
          }
        }
      }

      (*(v430 + 8))(v578, v433);
      v211 = 0;
    }

    v210 = 1;
    *&v436 = MEMORY[0x1E69E7CD0];
    *(&v436 + 1) = MEMORY[0x1E69E7CD0];
    v437 = v581;
    v438 = MEMORY[0x1E69E7CD0];
    v440 = v582;
    v441 = v583;
    goto LABEL_26;
  }

  v564 = v209;
  v210 = 0;
  v211 = 0;
  v452 = 0;
  v557 = 0;
  v556 = 0;
  v451 = 0;
  v450 = 0;
  v449 = 0;
  v448 = 0;
  LODWORD(v447) = 2;
  *&v436 = MEMORY[0x1E69E7CD0];
  *(&v436 + 1) = MEMORY[0x1E69E7CD0];
  v437 = v581;
  v438 = MEMORY[0x1E69E7CD0];
  v440 = v582;
  v441 = v583;
  LODWORD(v444) = 2;
  LODWORD(v442) = 2;
  v443 = v584;
  v445 = v585;
  v446 = v586;
  v453 = v592;
  v454 = v593;
  v455 = v594;
  v456 = v558;
  v457 = v566;
  v214 = v595;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v587);
  v215 = v596;
  (*(v577 + 8))(v596, v579);
  sub_1E5DFE50C(v576, &qword_1ED0745E0, &qword_1E65F0F90);
  if (v210)
  {
    (*(v431 + 8))(v215 + v214[6], v432);
  }

  (*(v573 + 8))(v215 + v572, v575);
  (*(v571 + 8))(v215 + v570, v574);
  (*(v568 + 8))(v215 + v567, v569);

  (*(v562 + 8))(v215 + v561, v565);
  (*(v560 + 8))(v215 + v559, v563);

  sub_1E5DFE50C(v507, &qword_1ED074858, &qword_1E65F1008);
  sub_1E5DFE50C(v506, &qword_1ED0741C8, &qword_1E65EFB48);
  (*(v508 + 8))(v215 + v505, v509);
  (*(v510 + 8))(v215 + v504, v511);
  (*(v512 + 8))(v215 + v503, v513);
  (*(v514 + 8))(v215 + v502, v515);

  sub_1E5DFE50C(v501, &qword_1ED0749A0, &qword_1E65F1038);
  sub_1E5DFE50C(v500, &qword_1ED0727F8, &qword_1E65EBDF0);
  (*(v516 + 8))(v215 + v499, v517);

  (*(v518 + 8))(v215 + v498, v519);

  sub_1E5FED324(v450, v449, v448, v442);
  sub_1E5FED324(v557, v556, v451, v444);
  sub_1E60DB538(v452, v447);
  sub_1E5DFE50C(v496, &qword_1ED072800, &qword_1E65EBDF8);

  v216 = *(v520 + 8);
  v217 = v521;
  v216(v215 + v494, v521);
  v216(v215 + v492, v217);
  (*(v522 + 8))(v215 + v491, v523);

  sub_1E5DFE50C(v490, &qword_1ED074BD8, &qword_1E65F10B0);
  (*(v524 + 8))(&v489[v215], v525);
  (*(v526 + 8))(&v488[v215], v527);
  v218 = *(v487 + 5);
  v623 = *(v487 + 4);
  v624 = v218;
  v625 = *(v487 + 6);
  v219 = *(v487 + 1);
  v619 = *v487;
  v620 = v219;
  v220 = *(v487 + 3);
  v621 = *(v487 + 2);
  v622 = v220;
  sub_1E5DFE50C(&v619, &qword_1ED074C48, &qword_1E65F10C8);
  sub_1E5DFE50C(v486, &qword_1ED074C70, &qword_1E65F10D0);
  (*(v528 + 8))(v215 + v485, v529);
  v221 = *(v530 + 8);
  v222 = v531;
  v221(v215 + v484, v531);
  v221(v215 + v483, v222);
  (*(v532 + 8))(v215 + v482, v533);
  sub_1E5DFE50C(v481, &qword_1ED074CF0, &qword_1E65F10D8);
  sub_1E5DFE50C(v480, &qword_1ED073560, &qword_1E65ED560);
  (*(v534 + 8))(v215 + v479, v535);
  sub_1E5DFE50C(v478, &qword_1ED0745B0, &qword_1E65F0F38);

  (*(v536 + 8))(v215 + v477, v537);
  sub_1E5DFE50C(v476, &qword_1ED074DD0, &qword_1E65F1100);
  sub_1E5E07DA0(*v474, *(v474 + 8));
  if (v211)
  {
  }

  (*(v538 + 8))(v215 + v475, v539);
  (*(v540 + 8))(v215 + v473, v541);

  sub_1E5DFE50C(v472, &qword_1ED074E58, &qword_1E65F1128);
  (*(v588 + 8))(v215 + v471, v589);
  (*(v542 + 8))(v215 + v470, v543);
  (*(v590 + 8))(v215 + v469, v591);
  (*(v544 + 8))(v215 + v468, v545);
  (*(v546 + 8))(v215 + v467, v547);
  (*(v548 + 8))(v215 + v466, v549);

  (*(v550 + 8))(v215 + v465, v551);

  v223 = *(v552 + 8);
  v224 = v553;
  v223(v215 + v462, v553);
  v223(v215 + v460, v224);
  v223(v215 + v459, v224);
  v223(v215 + v458, v224);
  return (*(v554 + 8))(v461, v555);
}

BOOL sub_1E60DAE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DBB88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074870, &qword_1E65F1010);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075288, &unk_1E65F1320);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = *(v15 + 48);
  v40 = a1;
  sub_1E5DFD1CC(a1, &v36 - v16, &qword_1ED074870, &qword_1E65F1010);
  v41 = a2;
  sub_1E5DFD1CC(a2, &v17[v18], &qword_1ED074870, &qword_1E65F1010);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1E5DFD1CC(v17, v11, &qword_1ED074870, &qword_1E65F1010);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = *(v5 + 32);
      v22 = &v17[v18];
      v23 = v5;
      v24 = v38;
      v21(v38, v22, v4);
      sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0], MEMORY[0x1E699D200]);
      v25 = sub_1E65E5B98();
      v36 = v23;
      v26 = *(v23 + 8);
      v26(v24, v4);
      v26(v11, v4);
      sub_1E5DFE50C(v17, &qword_1ED074870, &qword_1E65F1010);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    v20 = v17;
LABEL_14:
    sub_1E5DFE50C(v20, &qword_1ED075288, &unk_1E65F1320);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v36 = v5;
  sub_1E5DFE50C(v17, &qword_1ED074870, &qword_1E65F1010);
LABEL_8:
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008) + 28);
  v28 = *(v12 + 48);
  v29 = v39;
  sub_1E5DFD1CC(v40 + v27, v39, &qword_1ED074870, &qword_1E65F1010);
  sub_1E5DFD1CC(v41 + v27, v29 + v28, &qword_1ED074870, &qword_1E65F1010);
  if (v19(v29, 1, v4) == 1)
  {
    if (v19((v29 + v28), 1, v4) == 1)
    {
      sub_1E5DFE50C(v29, &qword_1ED074870, &qword_1E65F1010);
      return 1;
    }

    goto LABEL_13;
  }

  v30 = v37;
  sub_1E5DFD1CC(v29, v37, &qword_1ED074870, &qword_1E65F1010);
  if (v19((v29 + v28), 1, v4) == 1)
  {
    (*(v36 + 8))(v30, v4);
LABEL_13:
    v20 = v29;
    goto LABEL_14;
  }

  v32 = v36;
  v33 = v38;
  (*(v36 + 32))(v38, v29 + v28, v4);
  sub_1E60DE6BC(&qword_1ED074898, MEMORY[0x1E699D1F0], MEMORY[0x1E699D200]);
  v34 = sub_1E65E5B98();
  v35 = *(v32 + 8);
  v35(v33, v4);
  v35(v30, v4);
  sub_1E5DFE50C(v29, &qword_1ED074870, &qword_1E65F1010);
  return (v34 & 1) != 0;
}

unint64_t sub_1E60DB408()
{
  result = qword_1EE2D4878;
  if (!qword_1EE2D4878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CB0, &unk_1E660F800);
    sub_1E60DE6BC(&qword_1EE2D7020, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4878);
  }

  return result;
}

unint64_t sub_1E60DB4BC()
{
  result = qword_1EE2D4830;
  if (!qword_1EE2D4830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F18, &qword_1E65F1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4830);
  }

  return result;
}

uint64_t sub_1E60DB538(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

unint64_t sub_1E60DB54C()
{
  result = qword_1ED075000;
  if (!qword_1ED075000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745E0, &qword_1E65F0F90);
    v1 = MEMORY[0x1E699CE20];
    sub_1E60DE6BC(&qword_1ED0745F0, MEMORY[0x1E699CE20], MEMORY[0x1E699CE38]);
    sub_1E60DE6BC(&qword_1ED0745F8, v1, MEMORY[0x1E699CE28]);
    sub_1E60DE6BC(&qword_1ED074600, v1, MEMORY[0x1E699CE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075000);
  }

  return result;
}

unint64_t sub_1E60DB660()
{
  result = qword_1ED075010;
  if (!qword_1ED075010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F88, &unk_1E65EA400);
    v1 = MEMORY[0x1E6969770];
    sub_1E60DE6BC(&qword_1ED074618, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    sub_1E60DE6BC(&qword_1ED074620, v1, MEMORY[0x1E6969778]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075010);
  }

  return result;
}

unint64_t sub_1E60DB748()
{
  result = qword_1ED075018;
  if (!qword_1ED075018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072960, &qword_1E65EC0F8);
    v1 = MEMORY[0x1E69CB0E0];
    sub_1E60DE6BC(&qword_1ED074630, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB100]);
    sub_1E60DE6BC(&qword_1ED074638, v1, MEMORY[0x1E69CB0E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075018);
  }

  return result;
}

unint64_t sub_1E60DB830()
{
  result = qword_1ED075020;
  if (!qword_1ED075020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074640, &qword_1E65F0F98);
    sub_1E60CF168();
    sub_1E60CF1BC();
    sub_1E60CF210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075020);
  }

  return result;
}

unint64_t sub_1E60DB8D0()
{
  result = qword_1ED075028;
  if (!qword_1ED075028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072918, &qword_1E65EC038);
    sub_1E60CF2F0();
    sub_1E60CF3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075028);
  }

  return result;
}

unint64_t sub_1E60DB95C()
{
  result = qword_1ED075030;
  if (!qword_1ED075030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074698, &qword_1E65F0FA0);
    sub_1E60CF540();
    sub_1E60CF5CC();
    sub_1E60CF658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075030);
  }

  return result;
}

unint64_t sub_1E60DB9FC()
{
  result = qword_1ED075038;
  if (!qword_1ED075038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    v1 = MEMORY[0x1E699E8D8];
    sub_1E60DE6BC(&qword_1ED0746D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8F0]);
    sub_1E60DE6BC(&qword_1ED0746E0, v1, MEMORY[0x1E699E8E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075038);
  }

  return result;
}

unint64_t sub_1E60DBAE4()
{
  result = qword_1ED075040;
  if (!qword_1ED075040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    v1 = MEMORY[0x1E699D1D0];
    sub_1E60DE6BC(&qword_1ED0746F8, MEMORY[0x1E699D1D0], MEMORY[0x1E699D1E8]);
    sub_1E60DE6BC(&qword_1ED074700, v1, MEMORY[0x1E699D1D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075040);
  }

  return result;
}

unint64_t sub_1E60DBBE0()
{
  result = qword_1ED075048;
  if (!qword_1ED075048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074708, &qword_1E65F0FC0);
    sub_1E60CF960();
    sub_1E60CFA1C();
    sub_1E60CFAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075048);
  }

  return result;
}

unint64_t sub_1E60DBC80()
{
  result = qword_1ED075050;
  if (!qword_1ED075050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074750, &qword_1E65F0FD0);
    sub_1E60CFC2C();
    sub_1E60CFDA4();
    sub_1E60CFF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075050);
  }

  return result;
}

unint64_t sub_1E60DBD20()
{
  result = qword_1ED075058;
  if (!qword_1ED075058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0747C8, &qword_1E65F0FE8);
    sub_1E60D00F4();
    sub_1E60D01B0();
    sub_1E60D026C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075058);
  }

  return result;
}

unint64_t sub_1E60DBDC0()
{
  result = qword_1ED075060;
  if (!qword_1ED075060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074810, &qword_1E65F0FF8);
    sub_1E60D03C0();
    sub_1E60D04A0();
    sub_1E60D0580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075060);
  }

  return result;
}

unint64_t sub_1E60DBE60()
{
  result = qword_1ED075068;
  if (!qword_1ED075068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074858, &qword_1E65F1008);
    sub_1E60D06F8();
    sub_1E60D07AC();
    sub_1E60D0860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075068);
  }

  return result;
}

unint64_t sub_1E60DBF00()
{
  result = qword_1ED075070;
  if (!qword_1ED075070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741C8, &qword_1E65EFB48);
    v1 = MEMORY[0x1E699D2B0];
    sub_1E60DE6BC(&qword_1ED0748A8, MEMORY[0x1E699D2B0], MEMORY[0x1E699D2C8]);
    sub_1E60DE6BC(&qword_1ED0748B0, v1, MEMORY[0x1E699D2B8]);
    sub_1E60DE6BC(&qword_1EE2D6BC8, v1, MEMORY[0x1E699D2C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075070);
  }

  return result;
}

unint64_t sub_1E60DC014()
{
  result = qword_1ED075078;
  if (!qword_1ED075078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E80, &qword_1E65ECC58);
    v1 = MEMORY[0x1E69CC658];
    sub_1E60DE6BC(&qword_1ED0748C0, MEMORY[0x1E69CC658], MEMORY[0x1E69CC678]);
    sub_1E60DE6BC(&qword_1ED0748C8, v1, MEMORY[0x1E69CC660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075078);
  }

  return result;
}

unint64_t sub_1E60DC0FC()
{
  result = qword_1ED075080;
  if (!qword_1ED075080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F68, &qword_1E65EA398);
    sub_1E60D0B9C();
    sub_1E60D0C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075080);
  }

  return result;
}

uint64_t sub_1E60DC188(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AC8, &qword_1E65EC488);
    sub_1E5E1CC5C();
    sub_1E5E1CCB8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DC214()
{
  result = qword_1ED075090;
  if (!qword_1ED075090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071E68, &qword_1E65EA160);
    sub_1E60DE6BC(&qword_1ED074900, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
    sub_1E60DE6BC(&qword_1ED074908, type metadata accessor for BrowsingIdentity, &protocol conformance descriptor for BrowsingIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075090);
  }

  return result;
}

unint64_t sub_1E60DC2FC()
{
  result = qword_1ED075098;
  if (!qword_1ED075098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074910, &qword_1E65F1018);
    sub_1E60D0E1C();
    sub_1E60D0ED8();
    sub_1E60D0F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075098);
  }

  return result;
}

unint64_t sub_1E60DC39C()
{
  result = qword_1ED0750A0;
  if (!qword_1ED0750A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074958, &qword_1E65F1028);
    sub_1E60D10E8();
    sub_1E60D11A0();
    sub_1E60D1258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750A0);
  }

  return result;
}

unint64_t sub_1E60DC43C()
{
  result = qword_1ED0750A8;
  if (!qword_1ED0750A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749A0, &qword_1E65F1038);
    v1 = MEMORY[0x1E699D6B8];
    sub_1E60DE6BC(&qword_1ED0749B0, MEMORY[0x1E699D6B8], MEMORY[0x1E699D6D0]);
    sub_1E60DE6BC(&qword_1ED0749B8, v1, MEMORY[0x1E699D6C0]);
    sub_1E60DE6BC(&qword_1EE2D65B8, v1, MEMORY[0x1E699D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750A8);
  }

  return result;
}

unint64_t sub_1E60DC550()
{
  result = qword_1ED0750B0;
  if (!qword_1ED0750B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    v1 = MEMORY[0x1E699F288];
    sub_1E60DE6BC(&qword_1ED0749C8, MEMORY[0x1E699F288], MEMORY[0x1E699F2A0]);
    sub_1E60DE6BC(&qword_1ED0749D0, v1, MEMORY[0x1E699F290]);
    sub_1E60DE6BC(&qword_1EE2D6248, v1, MEMORY[0x1E699F298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750B0);
  }

  return result;
}

uint64_t sub_1E60DC664(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AD8, &unk_1E65F84F0);
    sub_1E5E1CC5C();
    sub_1E5E1CCB8();
    sub_1E60D1530();
    sub_1E60D1584();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DC6F8()
{
  result = qword_1ED0750C0;
  if (!qword_1ED0750C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0749F0, &qword_1E65F1040);
    sub_1E5FED46C(&qword_1ED0750C8, &qword_1ED074A08, &qword_1E65F3920, MEMORY[0x1E699DC30]);
    sub_1E60DE6BC(&qword_1ED0750D0, MEMORY[0x1E699CFC0], MEMORY[0x1E699CFD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750C0);
  }

  return result;
}

unint64_t sub_1E60DC7E0()
{
  result = qword_1ED0750D8;
  if (!qword_1ED0750D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0741F0, &unk_1E65EFC10);
    v1 = MEMORY[0x1E69CD000];
    sub_1E60DE6BC(&qword_1ED074A20, MEMORY[0x1E69CD000], MEMORY[0x1E69CD018]);
    sub_1E60DE6BC(&qword_1ED074A28, v1, MEMORY[0x1E69CD008]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750D8);
  }

  return result;
}

unint64_t sub_1E60DC8DC()
{
  result = qword_1ED0750E0;
  if (!qword_1ED0750E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A30, &qword_1E65F1048);
    sub_1E60DE6BC(&qword_1ED0750E8, MEMORY[0x1E699EB58], MEMORY[0x1E699EB70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750E0);
  }

  return result;
}

unint64_t sub_1E60DC998()
{
  result = qword_1ED0750F0;
  if (!qword_1ED0750F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074A48, &qword_1E65F1050);
    sub_1E60D1918();
    sub_1E60D1A04();
    sub_1E60D1AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750F0);
  }

  return result;
}

unint64_t sub_1E60DCA38()
{
  result = qword_1ED0750F8;
  if (!qword_1ED0750F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AA0, &qword_1E65F1060);
    sub_1E60D1C44();
    sub_1E60D1C98();
    sub_1E60D1CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0750F8);
  }

  return result;
}

unint64_t sub_1E60DCAD8()
{
  result = qword_1ED075108;
  if (!qword_1ED075108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072800, &qword_1E65EBDF8);
    v1 = MEMORY[0x1E699E100];
    sub_1E60DE6BC(&qword_1ED074AE0, MEMORY[0x1E699E100], MEMORY[0x1E699E118]);
    sub_1E60DE6BC(&qword_1ED074AE8, v1, MEMORY[0x1E699E108]);
    sub_1E60DE6BC(&qword_1EE2D6B30, v1, MEMORY[0x1E699E110]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075108);
  }

  return result;
}

unint64_t sub_1E60DCBEC()
{
  result = qword_1ED075110;
  if (!qword_1ED075110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074AF0, &qword_1E65F1070);
    sub_1E60DE6BC(&qword_1ED075118, MEMORY[0x1E699CFF0], MEMORY[0x1E699D010]);
    sub_1E60DCCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075110);
  }

  return result;
}

unint64_t sub_1E60DCCA8()
{
  result = qword_1ED075120;
  if (!qword_1ED075120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B10, &qword_1E65F1078);
    sub_1E60DE6BC(&qword_1ED075128, MEMORY[0x1E699D028], MEMORY[0x1E699D048]);
    sub_1E5FED46C(&qword_1ED075130, &qword_1ED074B28, &qword_1E65F1080, MEMORY[0x1E699D088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075120);
  }

  return result;
}

uint64_t sub_1E60DCD90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072AC0, &unk_1E65F4300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DCE00()
{
  result = qword_1ED075140;
  if (!qword_1ED075140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B30, &qword_1E65F1088);
    v1 = MEMORY[0x1E6969530];
    sub_1E60DE6BC(&qword_1ED074B40, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1E60DE6BC(&qword_1ED074B48, v1, MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075140);
  }

  return result;
}

unint64_t sub_1E60DCEE8()
{
  result = qword_1ED075148;
  if (!qword_1ED075148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074B50, &qword_1E65F1090);
    sub_1E60D2180();
    sub_1E60D2290();
    sub_1E60D23A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075148);
  }

  return result;
}

unint64_t sub_1E60DCF88()
{
  result = qword_1ED075158;
  if (!qword_1ED075158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074BD8, &qword_1E65F10B0);
    v1 = MEMORY[0x1E699E698];
    sub_1E60DE6BC(&qword_1ED074BE8, MEMORY[0x1E699E698], MEMORY[0x1E699E6B0]);
    sub_1E60DE6BC(&qword_1ED074BF0, v1, MEMORY[0x1E699E6A0]);
    sub_1E60DE6BC(&qword_1EE2D67A0, v1, MEMORY[0x1E699E6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075158);
  }

  return result;
}

unint64_t sub_1E60DD09C()
{
  result = qword_1ED075168;
  if (!qword_1ED075168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C28, &qword_1E65F10C0);
    v1 = MEMORY[0x1E69CC2C8];
    sub_1E60DE6BC(&qword_1ED074C38, MEMORY[0x1E69CC2C8], MEMORY[0x1E69CC2E0]);
    sub_1E60DE6BC(&qword_1ED074C40, v1, MEMORY[0x1E69CC2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075168);
  }

  return result;
}

unint64_t sub_1E60DD198()
{
  result = qword_1ED075170;
  if (!qword_1ED075170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C48, &qword_1E65F10C8);
    sub_1E60D2A44();
    sub_1E60D2A98();
    sub_1E60D2AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075170);
  }

  return result;
}

unint64_t sub_1E60DD238()
{
  result = qword_1ED075178;
  if (!qword_1ED075178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074C70, &qword_1E65F10D0);
    v1 = MEMORY[0x1E699D0E8];
    sub_1E60DE6BC(&qword_1ED074C80, MEMORY[0x1E699D0E8], MEMORY[0x1E699D100]);
    sub_1E60DE6BC(&qword_1ED074C88, v1, MEMORY[0x1E699D0F0]);
    sub_1E60DE6BC(&qword_1EE2D6D90, v1, MEMORY[0x1E699D0F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075178);
  }

  return result;
}

unint64_t sub_1E60DD34C()
{
  result = qword_1ED075180;
  if (!qword_1ED075180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072818, &qword_1E65EBE10);
    sub_1E60D2CE0();
    sub_1E60D2D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075180);
  }

  return result;
}

unint64_t sub_1E60DD3D8()
{
  result = qword_1ED075188;
  if (!qword_1ED075188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074068, &qword_1E65EF228);
    sub_1E60D2E14();
    sub_1E60D2EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075188);
  }

  return result;
}

unint64_t sub_1E60DD464()
{
  result = qword_1ED075190;
  if (!qword_1ED075190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073F98, &qword_1E65EF138);
    sub_1E60D3008();
    sub_1E60D30BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075190);
  }

  return result;
}

unint64_t sub_1E60DD4F0()
{
  result = qword_1ED075198;
  if (!qword_1ED075198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CF0, &qword_1E65F10D8);
    v1 = MEMORY[0x1E699E9E0];
    sub_1E60DE6BC(&qword_1ED074D00, MEMORY[0x1E699E9E0], MEMORY[0x1E699E9F8]);
    sub_1E60DE6BC(&qword_1ED074D08, v1, MEMORY[0x1E699E9E8]);
    sub_1E60DE6BC(&qword_1EE2D64A0, v1, MEMORY[0x1E699E9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075198);
  }

  return result;
}

uint64_t sub_1E60DD604(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073560, &qword_1E65ED560);
    sub_1E60D3284();
    sub_1E60D336C();
    sub_1E5FED46C(&qword_1EE2D4AE8, &qword_1ED073568, &qword_1E65FD8A0, MEMORY[0x1E6999AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DD6BC()
{
  result = qword_1ED0751A8;
  if (!qword_1ED0751A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D30, &qword_1E65F10E0);
    v1 = MEMORY[0x1E699F160];
    sub_1E60DE6BC(&qword_1ED074D40, MEMORY[0x1E699F160], MEMORY[0x1E699F178]);
    sub_1E60DE6BC(&qword_1ED074D48, v1, MEMORY[0x1E699F168]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751A8);
  }

  return result;
}

unint64_t sub_1E60DD7A4()
{
  result = qword_1ED0751B0;
  if (!qword_1ED0751B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0745B0, &qword_1E65F0F38);
    v1 = MEMORY[0x1E699F370];
    sub_1E60DE6BC(&qword_1ED074D58, MEMORY[0x1E699F370], MEMORY[0x1E699F388]);
    sub_1E60DE6BC(&qword_1ED074D60, v1, MEMORY[0x1E699F378]);
    sub_1E60DE6BC(&qword_1EE2D6220, v1, MEMORY[0x1E699F380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751B0);
  }

  return result;
}

unint64_t sub_1E60DD8B8()
{
  result = qword_1ED0751B8;
  if (!qword_1ED0751B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074D68, &qword_1E65F10E8);
    sub_1E60D36F0();
    sub_1E60D37AC();
    sub_1E60D3868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751B8);
  }

  return result;
}

unint64_t sub_1E60DD958()
{
  result = qword_1ED0751C0;
  if (!qword_1ED0751C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DB0, &qword_1E65F10F8);
    v1 = MEMORY[0x1E69CC100];
    sub_1E60DE6BC(&qword_1ED074DC0, MEMORY[0x1E69CC100], MEMORY[0x1E69CC118]);
    sub_1E60DE6BC(&qword_1ED074DC8, v1, MEMORY[0x1E69CC108]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751C0);
  }

  return result;
}

unint64_t sub_1E60DDA54()
{
  result = qword_1ED0751C8;
  if (!qword_1ED0751C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074DD0, &qword_1E65F1100);
    v1 = MEMORY[0x1E699ED68];
    sub_1E60DE6BC(&qword_1ED074DE0, MEMORY[0x1E699ED68], MEMORY[0x1E699ED80]);
    sub_1E60DE6BC(&qword_1ED074DE8, v1, MEMORY[0x1E699ED70]);
    sub_1E60DE6BC(&qword_1EE2D6050, v1, MEMORY[0x1E699ED78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751C8);
  }

  return result;
}

unint64_t sub_1E60DDB68()
{
  result = qword_1ED0751D0;
  if (!qword_1ED0751D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    sub_1E5DF6CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751D0);
  }

  return result;
}

unint64_t sub_1E60DDBEC()
{
  result = qword_1ED0751F8;
  if (!qword_1ED0751F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E58, &qword_1E65F1128);
    v1 = MEMORY[0x1E699EF28];
    sub_1E60DE6BC(&qword_1ED074E68, MEMORY[0x1E699EF28], MEMORY[0x1E699EF40]);
    sub_1E60DE6BC(&qword_1ED074E70, v1, MEMORY[0x1E699EF30]);
    sub_1E60DE6BC(&qword_1EE2D6B08, v1, MEMORY[0x1E699EF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0751F8);
  }

  return result;
}

uint64_t sub_1E60DDD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E60DDD68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E80, &qword_1E65F1130);
    sub_1E60D4048(&qword_1ED074E90, &qword_1ED074EA0, MEMORY[0x1E699CEB8], MEMORY[0x1E69E6330]);
    sub_1E60D4048(&qword_1ED074EB0, &qword_1ED074EB8, MEMORY[0x1E699CEA8], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E60DDE50()
{
  result = qword_1ED075218;
  if (!qword_1ED075218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072990, &qword_1E65EC130);
    v1 = MEMORY[0x1E69CBFD8];
    sub_1E60DE6BC(&qword_1ED074ED0, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF8]);
    sub_1E60DE6BC(&qword_1ED074ED8, v1, MEMORY[0x1E69CBFE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075218);
  }

  return result;
}

unint64_t sub_1E60DDF38()
{
  result = qword_1ED075220;
  if (!qword_1ED075220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074EE0, &qword_1E65F1148);
    v1 = MEMORY[0x1E69CB3C8];
    sub_1E60DE6BC(&qword_1ED074EF0, MEMORY[0x1E69CB3C8], MEMORY[0x1E69CB3E0]);
    sub_1E60DE6BC(&qword_1ED074EF8, v1, MEMORY[0x1E69CB3D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075220);
  }

  return result;
}

unint64_t sub_1E60DE034()
{
  result = qword_1ED075228;
  if (!qword_1ED075228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F00, &unk_1E66062A0);
    sub_1E60D4350();
    sub_1E60D43CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075228);
  }

  return result;
}

unint64_t sub_1E60DE0C0()
{
  result = qword_1ED075230;
  if (!qword_1ED075230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F28, &qword_1E65F1158);
    sub_1E60DE6BC(&qword_1ED075238, MEMORY[0x1E699ECC8], MEMORY[0x1E699ECE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075230);
  }

  return result;
}

unint64_t sub_1E60DE17C()
{
  result = qword_1ED075240;
  if (!qword_1ED075240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0777C0, &unk_1E65F84E0);
    v1 = MEMORY[0x1E69CC1B0];
    sub_1E60DE6BC(&qword_1ED074F48, MEMORY[0x1E69CC1B0], MEMORY[0x1E69CC1C8]);
    sub_1E60DE6BC(&qword_1ED074F50, v1, MEMORY[0x1E69CC1B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075240);
  }

  return result;
}

unint64_t sub_1E60DE278()
{
  result = qword_1ED075248;
  if (!qword_1ED075248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F58, &qword_1E65F1160);
    sub_1E60DE6BC(&qword_1ED075250, MEMORY[0x1E699EA38], MEMORY[0x1E699EA50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075248);
  }

  return result;
}

unint64_t sub_1E60DE334()
{
  result = qword_1ED075258;
  if (!qword_1ED075258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074F70, &qword_1E65F1168);
    sub_1E60D475C();
    sub_1E60D4818();
    sub_1E60D48D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075258);
  }

  return result;
}

unint64_t sub_1E60DE3D4()
{
  result = qword_1ED075260;
  if (!qword_1ED075260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FB8, &qword_1E65EF148);
    v1 = MEMORY[0x1E69CD2D8];
    sub_1E60DE6BC(&qword_1ED074FC0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F8]);
    sub_1E60DE6BC(&qword_1ED074FC8, v1, MEMORY[0x1E69CD2E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075260);
  }

  return result;
}

unint64_t sub_1E60DE4D0()
{
  result = qword_1ED075268;
  if (!qword_1ED075268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073FC0, &qword_1E65EF150);
    v1 = MEMORY[0x1E69CD370];
    sub_1E60DE6BC(&qword_1ED074FD8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD390]);
    sub_1E60DE6BC(&qword_1ED074FE0, v1, MEMORY[0x1E69CD378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075268);
  }

  return result;
}

uint64_t sub_1E60DE5CC(uint64_t a1)
{
  v2 = type metadata accessor for AppState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E60DE628(uint64_t a1)
{
  if (!qword_1EE2D4AF8)
  {
    sub_1E65D9AC8();
    sub_1E60DE6BC(&qword_1EE2D7048, MEMORY[0x1E69CC658], MEMORY[0x1E69CC670]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4AF8);
    }
  }
}

uint64_t sub_1E60DE6BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E60DE704(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = sub_1E65E4CB8();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1E60DE774(uint64_t a1)
{
  if (!qword_1EE2D4A80)
  {
    sub_1E65E3668();
    sub_1E5DF4210();
    sub_1E60DE6BC(&qword_1EE2D6070, MEMORY[0x1E699EDB0], MEMORY[0x1E699EDC0]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A80);
    }
  }
}

void sub_1E60DE82C(uint64_t a1)
{
  if (!qword_1EE2D4AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074E98, &qword_1E65F1138);
    sub_1E60D4048(&qword_1EE2D4860, &qword_1EE2D67F8, MEMORY[0x1E699CEB0], MEMORY[0x1E69E6320]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4AC8);
    }
  }
}

void sub_1E60DE8D4(uint64_t a1)
{
  if (!qword_1EE2D4B00)
  {
    sub_1E65D92D8();
    sub_1E60DE6BC(&qword_1EE2D7098, MEMORY[0x1E69CBFD8], MEMORY[0x1E69CBFF0]);
    v1 = sub_1E65E4CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4B00);
    }
  }
}

void sub_1E60DE968(uint64_t a1)
{
  if (!qword_1EE2D4A48)
  {
    sub_1E65DADD8();
    sub_1E60DE6BC(&qword_1EE2D6FB0, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A48);
    }
  }
}

void sub_1E60DEA18(uint64_t a1)
{
  if (!qword_1EE2D4A40)
  {
    sub_1E65DAEB8();
    sub_1E60DE6BC(&qword_1EE2D6FA8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
    v1 = sub_1E65E4D68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4A40);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB0)
  {
    goto LABEL_17;
  }

  if (a2 + 80 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 80) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 80;
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

      return (*a1 | (v4 << 8)) - 80;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 80;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x51;
  v8 = v6 - 81;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 80 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 80) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB0)
  {
    v4 = 0;
  }

  if (a2 > 0xAF)
  {
    v5 = ((a2 - 176) >> 8) + 1;
    *result = a2 + 80;
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
    *result = a2 + 80;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E60DEC1C()
{
  result = qword_1ED075270;
  if (!qword_1ED075270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075270);
  }

  return result;
}

unint64_t sub_1E60DEC74()
{
  result = qword_1ED075278;
  if (!qword_1ED075278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075278);
  }

  return result;
}

unint64_t sub_1E60DECCC()
{
  result = qword_1ED075280;
  if (!qword_1ED075280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075280);
  }

  return result;
}

uint64_t sub_1E60DED20(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001E6612330 == a2;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEC00000065746174 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614C657669746361 && a2 == 0xEC00000074756F79 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612350 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612370 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001E6612390 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E66123C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E66123E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6612400 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612420 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612440 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x616D496472617761 && a2 == 0xEF65746174536567 || (sub_1E65E6C18() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6612460 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612480 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66124A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x616F546472617761 && a2 == 0xEF65746174537473 || (sub_1E65E6C18() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E66124C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E66124E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6612500 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612520 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74536573776F7262 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x74537361766E6163 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E6612540 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612560 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C6163 || (sub_1E65E6C18() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6612580 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66125A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xEF6C69617465446CLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66125C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66125E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6F4C756F59726F66 && a2 == 0xEF65746174536461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612600 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E6612620 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6612640 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612660 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E6612680 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E66126A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x636E79537473616CLL && a2 == 0xEC00000065746144 || (sub_1E65E6C18() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E66126C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E66126E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x537972617262696CLL && a2 == 0xEC00000065746174 || (sub_1E65E6C18() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x6E6974656B72616DLL && a2 == 0xEE00726566664F67 || (sub_1E65E6C18() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xEE006C6961746544 || (sub_1E65E6C18() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612700 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612720 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612740 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6612760 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E6612780 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66127A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x696472616F626E6FLL && a2 == 0xEF6574617453676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E66127C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E66127E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E6612800 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612820 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E6612840 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6612860 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612880 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x6D657449746F6F72 && a2 == 0xE900000000000073 || (sub_1E65E6C18() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E66128A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66128C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E66128E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E6612900 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001E6612930 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0x7453686372616573 && a2 == 0xEB00000000657461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0x616C506572616873 && a2 == 0xEE00657461745379 || (sub_1E65E6C18() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612960 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0x7461745369726973 && a2 == 0xE900000000000065 || (sub_1E65E6C18() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E6612980 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x4472656E69617274 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0x75517478654E7075 && a2 == 0xEB00000000657565 || (sub_1E65E6C18() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E66129A0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0x4474756F6B726F77 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E66129C0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x5374756F6B726F77 && a2 == 0xEF656C7564656863 || (sub_1E65E6C18() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0x577972617262696CLL && a2 == 0xEF7374756F6B726FLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E66129E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0x507972617262696CLL && a2 == 0xEF736D6172676F72 || (sub_1E65E6C18() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E6612A00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6612A20 == a2)
  {

    return 80;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 80;
    }

    else
    {
      return 81;
    }
  }
}

uint64_t sub_1E60E0610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DEEC8();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E0674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074870, &qword_1E65F1010);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E06E4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1E65D9BA8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E07A4, 0, 0);
}

uint64_t sub_1E60E07A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_1E65DE1A8();

    return MEMORY[0x1EEE6DFA0](sub_1E60E0878, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1E60E0878(uint64_t a1)
{
  v2 = sub_1E65D9B78();
  if (v3 & 1) != 0 && (v2)
  {
    sub_1E60E0924(0);
  }

  v4 = v1[9];
  v5 = v1[7];
  v6 = v1[8];

  (*(v6 + 8))(v4, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1E60E0924(void *a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - v9;
  v11 = type metadata accessor for RouteDestination(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v32 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  swift_beginAccess();
  sub_1E60E3790(v1 + v19, v10, type metadata accessor for WelcomeAcknowledgementDetour.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    return sub_1E60E3910(v10, type metadata accessor for WelcomeAcknowledgementDetour.State);
  }

  v29 = v4;
  v23 = *(v20 + 48);
  (*(v32 + 32))(v18, v10, v16);
  sub_1E5F90FA0(&v10[v23], v15, type metadata accessor for RouteDestination);
  (*(v21 + 56))(v8, 1, 1, v20);
  swift_beginAccess();
  sub_1E60E37F8(v8, v1 + v19);
  swift_endAccess();
  if (v31)
  {
    v33 = v31;
    v24 = v31;
    sub_1E65E5FE8();
  }

  else
  {
    v25 = sub_1E65E60A8();
    v26 = v29;
    (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
    v27 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour, &unk_1E65F13C8);
    v28 = swift_allocObject();
    v28[2] = v1;
    v28[3] = v27;
    v28[4] = v1;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v26, &unk_1E65F1430, v28);

    sub_1E60E3790(v15, v30, type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
  }

  sub_1E60E3910(v15, type metadata accessor for RouteDestination);
  return (*(v32 + 8))(v18, v16);
}

uint64_t sub_1E60E0DD8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;

  return MEMORY[0x1EEE37858](v2, v3);
}

uint64_t sub_1E60E0E98()
{
  sub_1E60E3910(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state, type metadata accessor for WelcomeAcknowledgementDetour.State);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache));

  v1 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__welcomeAcknowledgementShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__forceWelcomeAcknowledgement, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E60E0FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E3B68();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1E65D7A18();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_1E65D9BA8();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[17] = v10;
  v6[18] = *(v10 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E11C8, v5, 0);
}

uint64_t sub_1E60E11C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 56);
  v5 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__welcomeAcknowledgementShowingEnabled;
  v6 = *(v2 + 16);
  *(v0 + 160) = v6;
  *(v0 + 168) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  sub_1E65DDC48();
  v7 = *(v2 + 8);
  *(v0 + 176) = v7;
  *(v0 + 184) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 276) == 1)
  {
    *(v0 + 272) = *(type metadata accessor for AppComposer(0) + 20);
    *(v0 + 192) = type metadata accessor for AppEnvironment(0);
    v8 = PrivacyPreferenceService.queryNoticePrivacyPreference.getter();
    *(v0 + 200) = v9;
    v22 = (v8 + *v8);
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_1E60E14A4;
    v11 = *(v0 + 128);

    return v22(v11);
  }

  else
  {
    sub_1E65DE348();
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6338();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Welcome acknowledgement showing has been disabled", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
    sub_1E60E3790(v19, v20, type metadata accessor for RouteDestination);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1E60E14A4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1E60E1C8C;
  }

  else
  {
    v4 = sub_1E60E15D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E60E15D0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 56);

  v2(v3, v5 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour__forceWelcomeAcknowledgement, v4);
  sub_1E65DDC48();
  v1(v3, v4);
  if (*(v0 + 277) & 1) == 0 && (v6 = sub_1E65D9B78(), (v7) && (v6)
  {
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 112);
    sub_1E60E3790(*(v0 + 24), *(v0 + 16), type metadata accessor for RouteDestination);
    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = EngagementService.queryIntroSheet.getter();
    *(v0 + 224) = v14;
    v17 = (v13 + *v13);
    v15 = swift_task_alloc();
    *(v0 + 232) = v15;
    *v15 = v0;
    v15[1] = sub_1E60E1804;
    v16 = *(v0 + 104);

    return v17(v16);
  }
}

uint64_t sub_1E60E1804()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1E60E1D24;
  }

  else
  {
    v4 = sub_1E60E1930;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E60E1930()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v13 = *(v0 + 40);

  v6 = swift_task_alloc();
  *(v0 + 248) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  *(v6 + 32) = v13;
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  *(v6 + 64) = v4;
  v7 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour, &unk_1E65F13C8);
  v8 = swift_task_alloc();
  *(v0 + 256) = v8;
  v9 = type metadata accessor for RouteDestination(0);
  *v8 = v0;
  v8[1] = sub_1E60E1AA0;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v11, &unk_1E65F1408, v6, sub_1E60E368C, v10, v3, v7, v9);
}

uint64_t sub_1E60E1AA0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1E60E1DDC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1E60E1BC8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E60E1BC8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60E1C8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60E1D24()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60E1DDC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E60E1EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60E1EE0, a2, 0);
}

uint64_t sub_1E60E1EE0()
{
  v1 = *(v0 + 72);
  v2 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour, &unk_1E65F13C8);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for RouteDestination(0);
  *v6 = v0;
  v6[1] = sub_1E60E2038;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E60E3970, v3, v7);
}

uint64_t sub_1E60E2038()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1E60E2174, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E60E2174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60E21D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v50 = a7;
  v47 = a6;
  v57 = a5;
  v58 = a4;
  v59 = a1;
  v10 = type metadata accessor for AppComposer(0);
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = v11;
  v62 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D7A18();
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v48 = v13;
  v61 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D9BA8();
  v49 = *(v51 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v46 - v16;
  v18 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  v24 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  swift_beginAccess();
  v25 = a2;
  sub_1E60E3790(a2 + v24, v23, type metadata accessor for WelcomeAcknowledgementDetour.State);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v27 = *(v26 - 8);
  LODWORD(a2) = (*(v27 + 48))(v23, 1, v26);
  sub_1E60E3910(v23, type metadata accessor for WelcomeAcknowledgementDetour.State);
  if (a2 == 1)
  {
    v28 = &v21[*(v26 + 48)];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v29 - 8) + 16))(v21, v59, v29);
    sub_1E60E3790(a3, v28, type metadata accessor for RouteResource);
    v30 = type metadata accessor for RouteDestination(0);
    sub_1E60E3790(a3 + *(v30 + 20), v28 + *(v30 + 20), type metadata accessor for RouteSource);
    v31 = *(a3 + *(v30 + 24));

    *(v28 + *(v30 + 24)) = sub_1E602A670(&unk_1F5FA8530, v31);
    (*(v27 + 56))(v21, 0, 1, v26);
    v32 = v25;
    swift_beginAccess();
    sub_1E60E37F8(v21, v25 + v24);
    swift_endAccess();
    v33 = sub_1E65E60A8();
    v34 = *(*(v33 - 8) + 56);
    v46 = v17;
    v34(v17, 1, 1, v33);
    v35 = v49;
    v36 = v51;
    (*(v49 + 16))(v60, v47, v51);
    v38 = v55;
    v37 = v56;
    (*(v55 + 16))(v61, v50, v56);
    sub_1E60E3790(v52, v62, type metadata accessor for AppComposer);
    v39 = sub_1E60E3748(&qword_1ED075290, type metadata accessor for WelcomeAcknowledgementDetour, &unk_1E65F13C8);
    v40 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v41 = (v14 + *(v38 + 80) + v40) & ~*(v38 + 80);
    v42 = (v48 + *(v53 + 80) + v41) & ~*(v53 + 80);
    v43 = swift_allocObject();
    *(v43 + 2) = v32;
    *(v43 + 3) = v39;
    v44 = v57;
    *(v43 + 4) = v58;
    *(v43 + 5) = v44;
    *(v43 + 6) = v32;
    (*(v35 + 32))(&v43[v40], v60, v36);
    (*(v38 + 32))(&v43[v41], v61, v37);
    sub_1E5F90FA0(v62, &v43[v42], type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v46, &unk_1E65F1440, v43);
  }

  else
  {
    sub_1E60E3984();
    v63 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E60E2878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = *(type metadata accessor for AppComposer(0) - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v11 = sub_1E65D7A18();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v8[13] = *(v12 + 64);
  v8[14] = swift_task_alloc();
  v13 = sub_1E65D9BA8();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v8[17] = *(v14 + 64);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E2A18, a6, 0);
}

uint64_t sub_1E60E2A18()
{
  v1 = v0[18];
  v20 = v0[17];
  v21 = v1;
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v22 = v0[13];
  v23 = v7;
  v8 = v0[6];
  v18 = v0[7];
  v19 = v0[8];
  v9 = v0[5];
  v25 = v0[4];
  v27 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(v1, v9, v3);
  (*(v5 + 16))(v4, v8, v6);
  sub_1E60E3790(v18, v7, type metadata accessor for AppComposer);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = (v20 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = (v22 + *(v19 + 80) + v11) & ~*(v19 + 80);
  v13 = swift_allocObject();
  v0[19] = v13;
  *(v13 + 16) = v25;
  (*(v2 + 32))(v13 + v10, v21, v3);
  (*(v5 + 32))(v13 + v11, v4, v6);
  sub_1E5F90FA0(v23, v13 + v12, type metadata accessor for AppComposer);
  v14 = *(v27 + 24);

  v26 = (v14 + *v14);
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1E60E2CC4;
  v16 = v0[3];

  return v26(sub_1E60E3BB0, v13, ObjectType, v16);
}

uint64_t sub_1E60E2CC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1E60E2E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v7 = sub_1E65D7A18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1E65D9B98();
  (*(v8 + 16))(v10, a4, v7);
  v11 = objc_allocWithZone(sub_1E65E5468());
  v12 = sub_1E65E5448();

  sub_1E65E5458();

  v13 = *(a5 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v13 < 2)
  {
    [v15 presentViewController:v12 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v13 == 3)
  {
    [v15 pushViewController:v12 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E60E3050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1E65E6058();

  v6 = sub_1E65E6048();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1E64B80F8(0, 0, v4, &unk_1E65F1450, v7);
}

uint64_t sub_1E60E3174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E60E31F4, a4, 0);
}

uint64_t sub_1E60E31F4()
{
  sub_1E60E0924(0);
  v1 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v1, v0);
}

uint64_t sub_1E60E3288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65F1420, v6);
}

uint64_t sub_1E60E33B4()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E60E3748(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E60E3478, v1, 0);
}

uint64_t sub_1E60E3478()
{
  v1 = *(v0 + 24);
  sub_1E60E0924(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E60E34E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E60E0FE0(a1, a2, a3, a4, a5);
}

uint64_t sub_1E60E35B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E60E1EB8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E60E3694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E3394(a1, v4, v5, v6);
}

uint64_t sub_1E60E3748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60E3790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60E37F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WelcomeAcknowledgementDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E385C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E0DB8(a1, v4, v5, v6);
}

uint64_t sub_1E60E3910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E60E3984()
{
  result = qword_1ED075298;
  if (!qword_1ED075298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075298);
  }

  return result;
}

uint64_t sub_1E60E39D8(uint64_t a1)
{
  v3 = *(sub_1E65D9BA8() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65D7A18() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  type metadata accessor for AppComposer(0);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFA78C;

  return sub_1E60E2878(a1, v8, v9, v10, v11, v12, v1 + v4, v1 + v7);
}

void sub_1E60E3BB0(void *a1)
{
  v3 = *(sub_1E65D9BA8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65D7A18() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  sub_1E60E2E30(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_1E60E3CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60E3174(a1, v4, v5, v6);
}

uint64_t sub_1E60E3DA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60E06E4(a1, v1);
}

unint64_t sub_1E60E3E54()
{
  result = qword_1ED0752A0;
  if (!qword_1ED0752A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752A0);
  }

  return result;
}

uint64_t sub_1E60E3EA8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v3 = a1;
  v21[1] = a3;
  v21[0] = sub_1E65E12C8();
  v4 = *(v21[0] - 8);
  v5 = MEMORY[0x1EEE9AC00](v21[0]);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v21 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v16 = 3u >> v22;
  if (v3 == 4)
  {
    if (sub_1E65E14C8())
    {
      (*(v4 + 104))(v10, *MEMORY[0x1E699E7F0], v21[0]);
      if (sub_1E65E4B48())
      {
        sub_1E65DC388();
      }
    }

    else
    {
      v17 = MEMORY[0x1E699E7E8];
      if ((v16 & 1) == 0)
      {
        v17 = MEMORY[0x1E699E7F0];
      }

      (*(v4 + 104))(v7, *v17, v21[0]);
      if (sub_1E65E4B48())
      {
        sub_1E65DC378();
      }
    }

    return sub_1E65E11D8();
  }

  if (v3 == 2)
  {
    sub_1E65E0708();
    if (sub_1E65E14C8())
    {
      (*(v4 + 104))(v15, *MEMORY[0x1E699E7F0], v21[0]);
    }

    else
    {
      v18 = MEMORY[0x1E699E7E8];
      if ((v16 & 1) == 0)
      {
        v18 = MEMORY[0x1E699E7F0];
      }

      (*(v4 + 104))(v13, *v18, v21[0]);
    }

    return sub_1E65E11D8();
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6612B60);
  v20 = sub_1E65E1268();
  MEMORY[0x1E694D7C0](v20);

  MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6612B80);
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60E4340@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v6 = 3u >> v15;
  if (v4 == 4)
  {
    if (a2 < 2u)
    {
      v7 = sub_1E65DC488();
      v8 = *(*(v7 - 8) + 104);
      if (v6)
      {
        v9 = MEMORY[0x1E699DC48];
      }

      else
      {
        v9 = MEMORY[0x1E699DC58];
      }

LABEL_11:
      v10 = *v9;
      v11 = a3;
LABEL_16:
      v8(v11, v10, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
      return swift_storeEnumTagMultiPayload();
    }

    if (a2 != 3)
    {
LABEL_18:
      sub_1E65E68A8();
      MEMORY[0x1E694D7C0](0xD000000000000012, 0x80000001E6612C00);
      sub_1E65E69B8();
      MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6612C20);
      goto LABEL_19;
    }

LABEL_15:
    v12 = *MEMORY[0x1E699DC58];
    v7 = sub_1E65DC488();
    v8 = *(*(v7 - 8) + 104);
    v11 = a3;
    v10 = v12;
    goto LABEL_16;
  }

  if (v4 == 2)
  {
    if (a2 < 2u)
    {
      v7 = sub_1E65DC488();
      v8 = *(*(v7 - 8) + 104);
      if (v6)
      {
        v9 = MEMORY[0x1E699DC40];
      }

      else
      {
        v9 = MEMORY[0x1E699DC50];
      }

      goto LABEL_11;
    }

    if (a2 != 3)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000018, 0x80000001E6612B60);
  v14 = sub_1E65E1268();
  MEMORY[0x1E694D7C0](v14);

  MEMORY[0x1E694D7C0](0xD000000000000037, 0x80000001E6612BC0);
LABEL_19:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60E46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5FEDD5C(a1, v15);
  (*(v8 + 16))(v11, a2, v7);
  v20 = a4[3];
  v30[0] = *a4;
  v30[1] = v20;
  v21 = a4[7];
  v30[2] = a4[5];
  v30[3] = v21;
  v30[4] = a4[9];
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E60E58D4(v15, v25 + v22);
  (*(v8 + 32))(v25 + v23, v11, v7);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 4);
  v26[3] = *(a4 + 3);
  v26[4] = v27;
  v28 = *(a4 + 2);
  v26[1] = *(a4 + 1);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E60E4A04(uint64_t *a1, unsigned __int8 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  swift_getObjectType();
  sub_1E60E4B30(v11, a4, a6, a3, a5, &v14);

  swift_unknownObjectRetain();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a1;
  sub_1E6421274(&v14, v11, isUniquelyReferenced_nonNull_native);

  swift_unknownObjectRelease();

  *a1 = v15;
}

double sub_1E60E4B30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v82 = a3;
  v10 = a1;
  v72 = a7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = v57 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v57 - v14;
  v15 = type metadata accessor for AppComposer(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v57 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v57 - v23;
  v60 = v17;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v57 - v25;
  sub_1E6122A0C(v10, a2, a4, a6, &v87);
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v86 = 0xD000000000000015;
  *(&v86 + 1) = 0x80000001E6610EC0;
  v27 = sub_1E65DF568();
  MEMORY[0x1E694D7C0](v27);

  v61 = v86;
  sub_1E5E1DEAC(a4, v26);
  v57[12] = v87;
  v57[13] = *(&v88 + 1);
  v57[14] = *(&v89 + 1);
  v57[15] = *(&v90 + 1);
  v57[16] = *(&v91 + 1);
  v28 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v29 = v28 + v17;
  v30 = *(v16 + 80);
  v31 = swift_allocObject();
  v64 = v31;
  sub_1E5E1FA80(v26, v31 + v28);
  v32 = (v31 + ((v28 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v90;
  v32[2] = v89;
  v32[3] = v33;
  v32[4] = v91;
  v34 = v88;
  *v32 = v87;
  v32[1] = v34;
  sub_1E5DF650C(v82, &v86);
  v35 = swift_allocObject();
  sub_1E5DF599C(&v86, v35 + 16);
  sub_1E5E1DEAC(a4, v24);
  v58 = v30;
  v36 = swift_allocObject();
  v81 = v36;
  sub_1E5E1FA80(v24, v36 + v28);
  *(v36 + v29) = v10;
  v59 = a4;
  sub_1E5E1DEAC(a4, v21);
  v37 = swift_allocObject();
  v79 = v37;
  sub_1E5E1FA80(v21, v37 + v28);
  *(v37 + v29) = v10;
  v63 = *a4;
  v82 = type metadata accessor for ActionButtonDescriptor(0);
  v80 = type metadata accessor for ArtworkDescriptor(0);
  v78 = type metadata accessor for ContextMenu(0);
  v77 = type metadata accessor for ItemContext(0);
  v76 = type metadata accessor for ItemMetrics(0);
  v75 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v57[10] = type metadata accessor for SectionMetrics(0);
  v74 = type metadata accessor for ViewDescriptor(0);
  v57[9] = sub_1E60E588C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v73 = sub_1E60E588C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v57[8] = sub_1E60E588C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v57[7] = sub_1E60E588C(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v57[6] = sub_1E60E588C(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v57[5] = sub_1E60E588C(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v57[4] = sub_1E60E588C(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v57[3] = sub_1E60E588C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v57[2] = sub_1E60E588C(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v57[1] = sub_1E5DF11E0();
  v57[0] = sub_1E5DF1338();
  sub_1E60E588C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  v57[11] = v35;

  sub_1E65DC178();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v39 = sub_1E65DC168();
  v84 = v38;
  v85 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v83 = v39;
  v40 = v66;
  sub_1E65DC248();
  v41 = v65;
  sub_1E5E1DEAC(v59, v65);
  v42 = (v58 + 32) & ~v58;
  v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v61;
  *(v44 + 16) = v61;
  sub_1E5E1FA80(v41, v44 + v42);
  v46 = (v44 + v43);
  *v46 = sub_1E5F8AA74;
  v46[1] = 0;
  *(swift_allocObject() + 16) = v45;
  type metadata accessor for AppFeature(0);
  sub_1E60E588C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v47 = v68;
  v48 = v67;
  sub_1E65E4DE8();
  v49 = swift_allocObject();
  v50 = v64;
  *(v49 + 16) = sub_1E5FF0390;
  *(v49 + 24) = v50;

  sub_1E65E4CC8();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E5FE9CE8;
  *(v51 + 24) = v49;

  v52 = sub_1E65E4F08();

  (*(v70 + 8))(v47, v71);
  (*(v69 + 8))(v40, v48);
  v53 = v72;
  *v72 = v52;
  v54 = v87;
  *(v53 + 3) = v88;
  v55 = v90;
  *(v53 + 5) = v89;
  *(v53 + 7) = v55;
  result = *&v91;
  *(v53 + 9) = v91;
  *(v53 + 1) = v54;
  return result;
}

uint64_t sub_1E60E588C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60E58D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60E5944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1E65E3B68();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v14 = sub_1E65D9908();
    v15 = *(*(v14 - 8) + 56);
    v16 = v14;
    v17 = a4;
    v18 = 1;
LABEL_21:

    return v15(v17, v18, 1, v16);
  }

  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
LABEL_14:
        v13 = MEMORY[0x1E69CC4A8];
        goto LABEL_20;
      }

      v13 = MEMORY[0x1E69CC428];
    }

    else
    {
      if (!a1)
      {
        goto LABEL_15;
      }

      v13 = MEMORY[0x1E69CC450];
    }

LABEL_20:
    v26 = *v13;
    v27 = sub_1E65D9908();
    v29 = *(v27 - 8);
    (*(v29 + 104))(a4, v26, v27);
    v15 = *(v29 + 56);
    v17 = a4;
    v18 = 0;
    v16 = v27;
    goto LABEL_21;
  }

  if (a1 > 5u)
  {
    if (a1 == 6)
    {
      v13 = MEMORY[0x1E69CC438];
    }

    else if (a1 == 7)
    {
      v13 = MEMORY[0x1E69CC490];
    }

    else
    {
      v13 = MEMORY[0x1E69CC498];
    }

    goto LABEL_20;
  }

  if (a1 == 4)
  {
    goto LABEL_14;
  }

LABEL_15:
  v29 = v10;
  sub_1E65DE358();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6328();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315138;
    v32 = a1;
    v33 = a2;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    v23 = sub_1E5DFD4B0(v30, v31, &v35);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Metric Destination not supported for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E694F1C0](v22, -1, -1);
    MEMORY[0x1E694F1C0](v21, -1, -1);
  }

  (*(v9 + 8))(v12, v29);
  v24 = sub_1E65D9908();
  return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
}

uint64_t sub_1E60E5CF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v29 = a2;
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752B0, &qword_1E65F1548);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = sub_1E65E38C8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E65E38A8();
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  sub_1E5E1DEAC(a1, v13);
  v18 = *(v8 + 80);
  v19 = swift_allocObject();
  sub_1E5E1FA80(v13, v19 + ((v18 + 16) & ~v18));
  sub_1E5E1DEAC(a1, v11);
  sub_1E5DF650C(v27, v35);
  v20 = (v18 + 32) & ~v18;
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = v29;
  *(v21 + 24) = v22;
  sub_1E5E1FA80(v11, v21 + v20);
  sub_1E5DF599C(v35, v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E65E38B8();
  sub_1E65E3898();
  type metadata accessor for AppFeature(0);
  sub_1E60E7A54(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E60E7A54(&qword_1ED0752B8, MEMORY[0x1E699EDA0], MEMORY[0x1E699ED98]);
  v23 = v32;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v33 + 8))(v23, v34);
  (*(v31 + 8))(v17, v15);
  return v24;
}

uint64_t sub_1E60E6130(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D76A8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E65DE0A8();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1E65D92D8();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1E65D8DE8();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v6 = type metadata accessor for RemoteBrowsingService();
  v1[15] = v6;
  v1[16] = v6[-1].Description;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E6360, 0, 0);
}

uint64_t sub_1E60E6360()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[2];
  v5 = v4 + *(type metadata accessor for AppComposer(0) + 20);
  v6 = type metadata accessor for AppEnvironment(0);
  (*(v2 + 16))(v1, v5 + *(v6 + 100), v3);
  active = RemoteBrowsingService.requireActiveParticipant.getter();
  v0[18] = v8;
  v12 = (active + *active);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1E60E64A8;
  v10 = v0[14];

  return v12(v10);
}

uint64_t sub_1E60E64A8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1E60E6D34;
  }

  else
  {
    v2 = sub_1E60E65C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60E65C4()
{

  v1 = RemoteBrowsingService.requestRemoteBrowsingServiceSubscription.getter();
  v0[21] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1E60E66C8;
  v4 = v0[14];
  v5 = v0[11];

  return v7(v5, v4);
}

uint64_t sub_1E60E66C8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_1E60E6DF0;
  }

  else
  {
    v2 = sub_1E60E67E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60E67E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  v7 = RemoteBrowsingService.appendRemoteBrowsingJournalEntry.getter();
  v0[24] = v8;
  (*(v2 + 16))(v4, v1, v3);
  v9 = *MEMORY[0x1E69CAC98];
  v10 = sub_1E65DE178();
  (*(*(v10 - 8) + 104))(v4, v9, v10);
  (*(v6 + 104))(v4, *MEMORY[0x1E69CAC78], v5);
  v14 = (v7 + *v7);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_1E60E699C;
  v12 = v0[8];

  return v14(v12);
}

uint64_t sub_1E60E699C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 208) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E60E6EC4;
  }

  else
  {
    v5 = sub_1E60E6B30;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60E6B30(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  sub_1E65D7698();
  v5 = sub_1E65D92A8();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = v1[16];
    v6 = v1[17];
    v9 = v1[14];
    v8 = v1[15];
    v10 = v1[12];
    v11 = v1[13];
    (*(v1[10] + 8))(v1[11], v1[9]);
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v14 = v1[13];
    v13 = v1[14];
    v16 = v1[11];
    v15 = v1[12];
    v17 = v1[9];
    v18 = v1[10];
    sub_1E5FB7C50();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    (*(v1[16] + 8))(v1[17], v1[15]);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_1E60E6D34()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60E6DF0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E60E6EC4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60E6FB4()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60E6130(v0 + v3);
}

uint64_t sub_1E60E7080(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 129) = a1;
  *(v5 + 48) = type metadata accessor for RouteDestination(0);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = type metadata accessor for AppAction(0);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60E714C, 0, 0);
}

uint64_t sub_1E60E714C()
{
  *(v0 + 80) = sub_1E65E6058();
  *(v0 + 88) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60E71E4, v2, v1);
}

uint64_t sub_1E60E71E4()
{
  v1 = *(v0 + 16);

  v1(v2);

  return MEMORY[0x1EEE6DFA0](sub_1E60E7258, 0, 0);
}

uint64_t sub_1E60E7258()
{
  if (*(v0 + 129) == 1)
  {
    v1 = *(v0 + 72);
    *(v0 + 96) = **(v0 + 32);
    *v1 = xmmword_1E65EADF0;
    swift_storeEnumTagMultiPayload();
    *(v0 + 104) = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E60E735C, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E60E735C()
{
  v1 = *(v0 + 72);

  sub_1E65E4EE8();
  sub_1E60E7A9C(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E60E73EC, 0, 0);
}

uint64_t sub_1E60E73EC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 128) = 0;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1E60E7508;
  v7 = *(v0 + 56);

  return RoutingContext.resolveDetours(_:priority:)(v7, (v0 + 128), v5, v4);
}

uint64_t sub_1E60E7508()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E60E7A9C(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60E7690, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E60E7690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60E7700(char a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E60E7080(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E60E7818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v5);
  sub_1E5DFE50C(v2, &qword_1ED071F78, &unk_1E65EA3F0);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    sub_1E65D77C8();
    if (v10(v5, 1, v6) != 1)
    {
      sub_1E5DFE50C(v5, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  return sub_1E65E3888();
}

uint64_t sub_1E60E7A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E60E7A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60E7AFC(uint64_t a1)
{
  v45 = sub_1E65D7D58();
  v3 = *(v45 - 8);
  v4 = MEMORY[0x1EEE9AC00](v45);
  v44 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = v32 - v6;
  v42 = sub_1E65E2FF8();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v32[1] = v1;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1E601C778(0, v10, 0);
  v11 = v52;
  v12 = a1 + 56;
  result = sub_1E65E6748();
  v14 = 0;
  v38 = v3 + 1;
  v39 = v3 + 2;
  v36 = v9;
  v37 = v7 + 32;
  v33 = a1 + 64;
  v34 = v10;
  v40 = a1 + 56;
  v41 = v7;
  v35 = a1;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v48 = 1 << result;
    v49 = result >> 6;
    v16 = *(a1 + 36);
    v46 = v14;
    v47 = v16;
    v17 = *(a1 + 48) + v3[9] * result;
    v18 = v3[2];
    v19 = v43;
    v51 = result;
    v20 = v45;
    v18(v43, v17, v45);
    v21 = v44;
    v18(v44, v19, v20);
    sub_1E65D7D38();
    v50 = v11;
    sub_1E65D7D28();
    sub_1E65D7D48();
    v11 = v50;
    sub_1E65E2FE8();
    v22 = v3[1];
    v22(v21, v20);
    v22(v19, v20);
    v52 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1E601C778((v23 > 1), v24 + 1, 1);
      v11 = v52;
    }

    *(v11 + 16) = v24 + 1;
    (*(v41 + 32))(v11 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, v36, v42);
    a1 = v35;
    v15 = 1 << *(v35 + 32);
    result = v51;
    v12 = v40;
    if (v51 >= v15)
    {
      goto LABEL_22;
    }

    v25 = *(v40 + 8 * v49);
    if ((v25 & v48) == 0)
    {
      goto LABEL_23;
    }

    if (v47 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v51 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v51 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v49 << 6;
      v28 = v49 + 1;
      v29 = (v33 + 8 * v49);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_1E5F87098(v51, v47, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(v51, v47, 0);
    }

LABEL_4:
    v14 = v46 + 1;
    result = v15;
    if (v46 + 1 == v34)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60E7F48@<X0>(void (**a1)(char *, void (**)(uint64_t, uint64_t, uint64_t, uint64_t))@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v308 = a3;
  v396 = sub_1E65D9A78();
  v299 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v395 = v296 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v378 = v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v359 = v296 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C0, &qword_1E65F1590);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v377 = v296 - v12;
  v384 = sub_1E65DAD48();
  v362 = *(v384 - 8);
  v13 = MEMORY[0x1EEE9AC00](v384);
  v383 = v296 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v382 = v296 - v15;
  v358 = sub_1E65E3158();
  v361 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v357 = v296 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_1E65D74E8();
  v320 = *(v321 - 8);
  v17 = MEMORY[0x1EEE9AC00](v321);
  v344 = v296 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v343 = v296 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752C8, &unk_1E65F8500);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v322 = v296 - v21;
  v376 = sub_1E65D7AD8();
  v381 = *(v376 - 1);
  v22 = MEMORY[0x1EEE9AC00](v376);
  v375 = (v296 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v401 = v296 - v24;
  v374 = sub_1E65E2FD8();
  v379 = *(v374 - 1);
  MEMORY[0x1EEE9AC00](v374);
  v297 = v296 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v319 = v296 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v318 = v296 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v30 - 8);
  *&v392 = v296 - v31;
  v397 = sub_1E65E3298();
  v393 = *(v397 - 1);
  MEMORY[0x1EEE9AC00](v397);
  v342 = v296 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v33 = MEMORY[0x1EEE9AC00](v380);
  v373 = v296 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v341 = v296 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v340 = v296 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v339 = v296 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v387 = v296 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v386 = v296 - v43;
  v388 = sub_1E65DAC98();
  v398 = *(v388 - 8);
  v44 = MEMORY[0x1EEE9AC00](v388);
  v354 = v296 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v360 = v296 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v394 = v296 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v385 = v296 - v50;
  v356 = sub_1E65E3118();
  v298 = *(v356 - 8);
  v51 = MEMORY[0x1EEE9AC00](v356);
  v372 = v296 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v338 = v296 - v53;
  v54 = sub_1E65D8818();
  v402 = *(v54 - 8);
  v403 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v371 = v296 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_1E65D9098();
  v364 = *(v365 - 1);
  MEMORY[0x1EEE9AC00](v365);
  *&v363 = v296 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v367 = (v296 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v368 = v296 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E0, &qword_1E65F15A0);
  v62 = MEMORY[0x1EEE9AC00](v61 - 8);
  v337 = v296 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v369 = v296 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v350 = v296 - v66;
  v351 = sub_1E65D8668();
  v355 = *(v351 - 8);
  v67 = MEMORY[0x1EEE9AC00](v351);
  v317 = v296 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v316 = v296 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v315 = v296 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v314 = v296 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v313 = v296 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v312 = v296 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v311 = v296 - v80;
  v81 = MEMORY[0x1EEE9AC00](v79);
  v391 = v296 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v390 = v296 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v389 = v296 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v370 = v296 - v88;
  MEMORY[0x1EEE9AC00](v87);
  v400 = v296 - v89;
  v90 = sub_1E65D9AC8();
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v93 = v296 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_1E65D72D8();
  v336 = *(v352 - 8);
  v94 = MEMORY[0x1EEE9AC00](v352);
  v335 = v296 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v333 = v296 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v331 = v296 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v334 = v296 - v101;
  v102 = MEMORY[0x1EEE9AC00](v100);
  v332 = v296 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v330 = v296 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v329 = v296 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v328 = v296 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v325 = v296 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v348 = v296 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v327 = v296 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v326 = v296 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v349 = v296 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v347 = v296 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v346 = v296 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v345 = v296 - v125;
  MEMORY[0x1EEE9AC00](v124);
  v127 = v296 - v126;
  v128 = sub_1E65D9648();
  v324 = v127;
  v129 = a1;
  sub_1E63C4134(a1, a2, v128, v127);

  v323 = v3;
  v399 = sub_1E65D9548();
  v130 = sub_1E65D9AA8();
  v132 = v131;
  MEMORY[0x1E6941490]();
  v133 = sub_1E65D9AA8();
  v135 = v134;
  (*(v91 + 8))(v93, v90);
  if (v130 == v133 && v132 == v135)
  {

LABEL_5:
    v137 = v351;
    goto LABEL_6;
  }

  v136 = sub_1E65E6C18();

  if (v136)
  {
    goto LABEL_5;
  }

  v287 = sub_1E65D9608();
  v288 = sub_1E65D9AA8();
  v290 = sub_1E637CA94(v288, v289, v287);

  v137 = v351;
  if (v290)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v291 = *(sub_1E65DADF8() - 8);
    v292 = (*(v291 + 80) + 32) & ~*(v291 + 80);
    v293 = swift_allocObject();
    *(v293 + 16) = xmmword_1E65EA670;
    v294 = (v293 + v292);
    *v294 = sub_1E65D9AA8();
    v294[1] = v295;
    swift_storeEnumTagMultiPayload();
    v406 = v399;
    sub_1E5FA9E2C(v293);
    v399 = v406;
  }

LABEL_6:
  v138 = a2;
  v139 = v369;
  v140 = v368;
  v141 = sub_1E65D9558();
  sub_1E63C4134(v129, a2, v141, v345);

  v142 = sub_1E65D95C8();
  sub_1E63C4134(v129, a2, v142, v346);

  v143 = sub_1E65D95A8();
  sub_1E63C4134(v129, a2, v143, v347);

  v144 = v400;
  sub_1E65D9618();
  v145 = sub_1E60EAD78();
  v146 = *(v355 + 8);
  v355 += 8;
  v353 = v146;
  v146(v144, v137);
  sub_1E63C4134(v129, a2, v145, v349);

  v147 = sub_1E65D95B8();
  if (v148 == -1 || (v406 = v147, LOBYTE(v407) = v148 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8), sub_1E65D7FB8(), v404 == 9) || (v149 = sub_1E65D8778(), v149 != sub_1E65D8778()))
  {
    sub_1E65D9578();
    v154 = v367;
    sub_1E5DFD1CC(v140, v367, &qword_1ED073D00, &unk_1E660F460);
    v155 = v364;
    v156 = v365;
    if ((*(v364 + 48))(v154, 1, v365) == 1)
    {
      sub_1E5DFE50C(v140, &qword_1ED073D00, &unk_1E660F460);
      v157 = sub_1E65E32A8();
      (*(*(v157 - 8) + 56))(v139, 1, 1, v157);
      v367 = 0;
      v158 = v350;
    }

    else
    {
      v159 = v363;
      (*(v155 + 32))(v363, v154, v156);
      sub_1E60EB500(v139);
      v158 = v350;
      v367 = 0;
      (*(v155 + 8))(v159, v156);
      sub_1E5DFE50C(v140, &qword_1ED073D00, &unk_1E660F460);
    }

    sub_1E60EB490(v139, v158);
  }

  else
  {
    v150 = *MEMORY[0x1E699EBB0];
    v151 = sub_1E65E32A8();
    v152 = *(v151 - 8);
    v153 = v350;
    (*(v152 + 104))(v350, v150, v151);
    (*(v152 + 56))(v153, 0, 1, v151);
    v367 = 0;
  }

  v160 = sub_1E65D95F8();
  v161 = v326;
  sub_1E63C4134(v129, v138, v160, v326);

  v162 = sub_1E65D95D8();
  v163 = v138;
  v164 = v327;
  v366 = v163;
  sub_1E63C4134(v129, v163, v162, v327);

  v165 = sub_1E65D95E8();
  sub_1E63C4134(v129, v163, v165, v348);

  v166 = v336 + 16;
  v167 = *(v336 + 16);
  v365 = v129;
  v168 = v352;
  v167(v325, v346, v352);
  v169 = v370;
  sub_1E65D9618();
  v170 = v371;
  sub_1E65D8628();
  v353(v169, v351);
  v307 = sub_1E65D87D8();
  (*(v402 + 8))(v170, v403);
  v167(v328, v161, v168);
  v167(v329, v164, v168);
  v171 = v385;
  sub_1E65D9568();
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC78();
  sub_1E65D74C8();

  sub_1E65DAC88();
  sub_1E65E3108();
  v172 = v171;
  v173 = v388;
  v402 = *(v398 + 8);
  v403 = v398 + 8;
  (v402)(v172, v388);
  v174 = *MEMORY[0x1E699DC58];
  v175 = sub_1E65DC488();
  v176 = *(v175 - 8);
  v177 = *(v176 + 104);
  LODWORD(v371) = v174;
  v370 = v175;
  v369 = v177;
  v368 = (v176 + 104);
  (v177)(v341, v174);
  swift_storeEnumTagMultiPayload();
  v178 = v392;
  sub_1E65D9598();
  v179 = sub_1E65D76A8();
  LODWORD(v170) = (*(*(v179 - 8) + 48))(v178, 1, v179);
  sub_1E5DFE50C(v178, &qword_1ED0752D8, &qword_1E660CC30);
  v180 = MEMORY[0x1E699EBA0];
  if (v170 != 1)
  {
    v180 = MEMORY[0x1E699EBA8];
  }

  (*(v393 + 104))(v342, *v180, v397);
  v306 = sub_1E65D9588();
  v181 = v400;
  sub_1E65D9618();
  v182 = sub_1E65D8568();
  v183 = v351;
  v184 = v353;
  v353(v181, v351);
  v305 = sub_1E60E7AFC(v182);

  v185 = v352;
  v167(v330, v347, v352);
  v310 = v166;
  v309 = v167;
  v167(v332, v349, v185);
  v186 = v183;
  sub_1E63C4134(v365, v366, v399, v334);

  sub_1E5DFD1CC(v350, v337, &qword_1ED0752E0, &qword_1E65F15A0);
  v187 = v389;
  sub_1E65D9618();
  v304 = sub_1E65D8528();
  v303 = v188;
  v184(v187, v183);
  sub_1E65D9618();
  v189 = sub_1E65D8658();
  v191 = v190;
  v193 = v192;
  v184(v181, v186);
  v302 = sub_1E628D7F4(v189, v191, v193 & 1);
  sub_1E5F87058(v189, v191, v193 & 1);
  v194 = v390;
  sub_1E65D9618();
  v301 = sub_1E65D8598();
  v300 = v195;
  v184(v194, v186);
  v196 = v391;
  sub_1E65D9618();
  sub_1E65D8588();
  v184(v196, v186);
  sub_1E65D9618();
  v197 = sub_1E65D8558();
  v184(v181, v186);
  v406 = v197;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E8, &qword_1E65F15D8);
  sub_1E60EB6CC();
  v198 = sub_1E65E5E78();

  v199 = *(v198 + 16);
  if (v199)
  {
    v409 = MEMORY[0x1E69E7CC0];
    sub_1E601C734(0, v199, 0);
    v200 = v409;
    v367 = *(v381 + 16);
    v201 = (*(v381 + 80) + 32) & ~*(v381 + 80);
    v296[1] = v198;
    v202 = (v198 + v201);
    v366 = *(v381 + 72);
    v381 += 16;
    v365 = (v381 - 8);
    v364 = v379 + 32;
    v363 = xmmword_1E65F1570;
    v203 = v297;
    do
    {
      v399 = v202;
      v400 = v199;
      v204 = v401;
      v205 = v376;
      v206 = v367;
      (v367)(v401, v202, v376);
      v207 = v375;
      v206(v375, v204, v205);
      v397 = sub_1E65D7A78();
      v393 = v208;
      *&v392 = sub_1E65D7A98();
      v391 = v209;
      v390 = sub_1E65D7AA8();
      v389 = v210;
      v211 = v385;
      sub_1E65D7AB8();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      sub_1E65E3108();
      (v402)(v211, v388);
      (v369)(v373, v371, v370);
      swift_storeEnumTagMultiPayload();
      v212 = sub_1E65D7A88();
      v214 = v213;
      v406 = v212;
      v407 = v213;
      LOBYTE(v204) = v215 & 1;
      v408 = v215 & 1;
      v404 = v363;
      v405 = 1;
      sub_1E60EB730();
      sub_1E60EB784();
      sub_1E65D7FD8();
      sub_1E5F87058(v212, v214, v204);
      sub_1E65E2FC8();
      v216 = *v365;
      (*v365)(v207, v205);
      v216(v401, v205);
      v409 = v200;
      v218 = *(v200 + 2);
      v217 = *(v200 + 3);
      if (v218 >= v217 >> 1)
      {
        sub_1E601C734((v217 > 1), v218 + 1, 1);
        v200 = v409;
      }

      *(v200 + 2) = v218 + 1;
      (*(v379 + 32))(&v200[((*(v379 + 80) + 32) & ~*(v379 + 80)) + *(v379 + 72) * v218], v203, v374);
      v202 = v366 + v399;
      v199 = (v400 - 1);
    }

    while (v400 != 1);
    v371 = v200;

    v173 = v388;
    v186 = v351;
  }

  else
  {

    v371 = MEMORY[0x1E69E7CC0];
  }

  v219 = v311;
  sub_1E65D9618();
  v220 = v318;
  sub_1E65D85F8();
  v353(v219, v186);
  v221 = sub_1E65D8478();
  v222 = *(v221 - 8);
  v223 = *(v222 + 48);
  if (v223(v220, 1, v221) == 1)
  {
    sub_1E5DFE50C(v220, &qword_1ED0752D0, &qword_1E65F1598);
    v224 = 1;
    v225 = v340;
  }

  else
  {
    v226 = v340;
    sub_1E65D8448();
    v225 = v226;
    (*(v222 + 8))(v220, v221);
    v224 = 0;
  }

  v227 = v319;
  (*(v320 + 56))(v225, v224, 1, v321);
  v228 = v312;
  sub_1E65D9618();
  sub_1E65D85F8();
  v353(v228, v186);
  if (v223(v227, 1, v221) == 1)
  {
    sub_1E5DFE50C(v227, &qword_1ED0752D0, &qword_1E65F1598);
    v370 = 0;
    v369 = 0;
  }

  else
  {
    v370 = sub_1E65D8468();
    v369 = v229;
    (*(v222 + 8))(v227, v221);
  }

  v230 = v322;
  v231 = v313;
  sub_1E65D9618();
  sub_1E65D85C8();
  v353(v231, v186);
  v232 = sub_1E65D9678();
  v233 = *(v232 - 8);
  if ((*(v233 + 48))(v230, 1, v232) == 1)
  {
    sub_1E5DFE50C(v230, &qword_1ED0752C8, &unk_1E65F8500);
    v368 = 0;
    v367 = 0;
  }

  else
  {
    v368 = sub_1E65D9668();
    v367 = v234;
    (*(v233 + 8))(v230, v232);
  }

  v235 = v314;
  sub_1E65D9618();
  sub_1E65D8538();
  v236 = v353;
  v353(v235, v186);
  v237 = v315;
  sub_1E65D9618();
  sub_1E65D8578();
  v236(v237, v186);
  v238 = v316;
  sub_1E65D9618();
  v366 = sub_1E65D85A8();
  v365 = v239;
  v236(v238, v186);
  v240 = v352;
  v241 = v309;
  v309(v331, v348, v352);
  v241(v333, v345, v240);
  v241(v335, v324, v240);
  v242 = v317;
  sub_1E65D9618();
  v243 = sub_1E65D8638();
  v236(v242, v186);
  v244 = *(v243 + 16);
  if (!v244)
  {
LABEL_54:

    sub_1E65E2F98();
    v284 = *(v336 + 8);
    v285 = v352;
    v284(v348, v352);
    v284(v327, v285);
    v284(v326, v285);
    sub_1E5DFE50C(v350, &qword_1ED0752E0, &qword_1E65F15A0);
    v284(v349, v285);
    v284(v347, v285);
    v284(v346, v285);
    v284(v345, v285);
    return (v284)(v324, v285);
  }

  v409 = MEMORY[0x1E69E7CC0];
  sub_1E601C6F0(0, v244, 0);
  v245 = 0;
  v246 = v409;
  v389 = (v243 + ((*(v362 + 80) + 32) & ~*(v362 + 80)));
  v381 = v362 + 16;
  v399 = (v398 + 16);
  v400 = (v398 + 32);
  v393 = v299 + 8;
  v376 = (v398 + 56);
  v375 = (v398 + 48);
  v374 = (v298 + 56);
  v373 = (v362 + 8);
  v372 = (v361 + 32);
  v392 = xmmword_1E65F1580;
  v380 = v243;
  v379 = v244;
  while (1)
  {
    if (v245 >= *(v243 + 16))
    {
      goto LABEL_58;
    }

    v391 = v246;
    v390 = v245 + 1;
    v247 = *(v362 + 16);
    v248 = v382;
    v249 = v384;
    v243 = v381;
    v247(v382, &v389[*(v362 + 72) * v245], v384);
    v247(v383, v248, v249);
    v250 = sub_1E65DAD38();
    v251 = v250;
    v252 = v250 + 56;
    v253 = 1 << *(v250 + 32);
    v254 = v253 < 64 ? ~(-1 << v253) : -1;
    v255 = v254 & *(v250 + 56);
    v256 = (v253 + 63) >> 6;

    v258 = 0;
    v246 = v360;
    v401 = v257;
    if (!v255)
    {
      break;
    }

    while (1)
    {
      v227 = v258;
LABEL_43:
      v259 = v398;
      v260 = *(v251 + 6) + *(v398 + 72) * (__clz(__rbit64(v255)) | (v227 << 6));
      v261 = v394;
      (*(v398 + 16))(v394, v260, v173);
      v397 = *(v259 + 32);
      v397(v246, v261, v173);
      v262 = v173;
      v263 = v395;
      v264 = v246;
      sub_1E65DAC48();
      v265 = sub_1E65D9A68();
      v267 = v266;
      v269 = v268;
      (*v393)(v263, v396);
      v406 = v265;
      v407 = v267;
      v243 = v269 & 1;
      v408 = v243;
      v404 = v392;
      v405 = 1;
      sub_1E60EB7D8();
      sub_1E602B668();
      LOBYTE(v263) = sub_1E65D7FD8();
      sub_1E5F87058(v265, v267, v243);
      if (v263)
      {
        break;
      }

      v255 &= v255 - 1;
      (v402)(v264, v262);
      v258 = v227;
      v173 = v262;
      v246 = v264;
      v251 = v401;
      if (!v255)
      {
        goto LABEL_40;
      }
    }

    v271 = v359;
    v397(v359, v264, v262);
    v270 = 0;
    v173 = v262;
LABEL_47:
    v272 = 1;
    (*v376)(v271, v270, 1, v173);

    v273 = v378;
    sub_1E5DFD1CC(v271, v378, &qword_1ED0734E0, &qword_1E66012E0);
    if ((*v375)(v273, 1, v173) != 1)
    {
      v227 = v385;
      (*v400)(v385, v378, v173);
      v274 = v354;
      (*v399)(v354, v227, v173);
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      sub_1E65E3108();
      v275 = v274;
      v276 = v402;
      (v402)(v275, v173);
      v276(v227, v173);
      v272 = 0;
    }

    sub_1E5DFE50C(v271, &qword_1ED0734E0, &qword_1E66012E0);
    (*v374)(v377, v272, 1, v356);
    v277 = v383;
    sub_1E65DAD18();
    sub_1E65DACE8();
    sub_1E65DAD28();
    v278 = v357;
    sub_1E65E3148();
    v279 = *v373;
    v280 = v277;
    v281 = v384;
    (*v373)(v280, v384);
    v279(v382, v281);
    v246 = v391;
    v409 = v391;
    v283 = *(v391 + 2);
    v282 = *(v391 + 3);
    if (v283 >= v282 >> 1)
    {
      sub_1E601C6F0((v282 > 1), v283 + 1, 1);
      v246 = v409;
    }

    *(v246 + 2) = v283 + 1;
    (*(v361 + 32))(&v246[((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v283], v278, v358);
    v245 = v390;
    v173 = v388;
    v243 = v380;
    if (v390 == v379)
    {
      goto LABEL_54;
    }
  }

LABEL_40:
  while (1)
  {
    v227 = v258 + 1;
    if (__OFADD__(v258, 1))
    {
      break;
    }

    if (v227 >= v256)
    {

      v270 = 1;
      v271 = v359;
      goto LABEL_47;
    }

    v255 = *(v252 + 8 * v227);
    ++v258;
    if (v255)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
  result = (*(v243 + 8))(v227, v246);
  __break(1u);
  return result;
}

uint64_t sub_1E60EAD78()
{
  v1 = sub_1E65D8818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D7A68();
  v77 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DADF8();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v65 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v65 - v16;
  v17 = sub_1E65D7F08();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65D8658();
  v69 = v1;
  v70 = v0;
  v68 = v2;
  if (v23)
  {
    if (v21 == 2)
    {
      v66 = v21;
      v71 = v22;
      v77 = v17;
      v24 = sub_1E65D85D8();
      v25 = *(v24 + 16);
      if (v25)
      {
        v27 = *(v18 + 16);
        v26 = (v18 + 16);
        v28 = v26[64];
        v65 = v24;
        v29 = v24 + ((v28 + 32) & ~v28);
        v73 = *(v26 + 7);
        v74 = v27;
        v76 = v26;
        v72 = (v26 - 8);
        v30 = MEMORY[0x1E69E7CC0];
        v31 = v77;
        do
        {
          v74(v20, v29, v31);
          *v75 = 1;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1E64F6308(0, v30[2] + 1, 1, v30);
          }

          v33 = v30[2];
          v32 = v30[3];
          if (v33 >= v32 >> 1)
          {
            v30 = sub_1E64F6308((v32 > 1), v33 + 1, 1, v30);
          }

          v30[2] = v33 + 1;
          v34 = (*(v78 + 80) + 32) & ~*(v78 + 80);
          v35 = *(v78 + 72);
          sub_1E60EB82C(v75, v30 + v34 + v35 * v33);
          *v15 = sub_1E65D7EE8();
          v15[1] = v36;
          swift_storeEnumTagMultiPayload();
          v38 = v30[2];
          v37 = v30[3];
          if (v38 >= v37 >> 1)
          {
            v30 = sub_1E64F6308((v37 > 1), v38 + 1, 1, v30);
          }

          v31 = v77;
          (*v72)(v20, v77);
          v30[2] = v38 + 1;
          sub_1E60EB82C(v15, v30 + v34 + v38 * v35);
          v29 += v73;
          --v25;
        }

        while (v25);

        sub_1E5F87058(v66, v71, 1);
        goto LABEL_25;
      }

LABEL_24:

      v30 = MEMORY[0x1E69E7CC0];
      goto LABEL_25;
    }
  }

  else
  {
    sub_1E5F87058(v21, v22, 0);
  }

  v39 = sub_1E65D8548();
  v40 = *(v39 + 16);
  if (!v40)
  {
    goto LABEL_24;
  }

  v73 = *(v77 + 16);
  v74 = v12;
  v41 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v66 = v39;
  v42 = v39 + v41;
  v43 = *(v77 + 72);
  v77 += 16;
  v71 = (v77 - 8);
  v72 = v43;
  v30 = MEMORY[0x1E69E7CC0];
  v75 = v4;
  v44 = v76;
  do
  {
    v73(v44, v42, v4);
    v45 = v74;
    *v74 = 1;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1E64F6308(0, v30[2] + 1, 1, v30);
    }

    v47 = v30[2];
    v46 = v30[3];
    v48 = v76;
    if (v47 >= v46 >> 1)
    {
      v30 = sub_1E64F6308((v46 > 1), v47 + 1, 1, v30);
    }

    v30[2] = v47 + 1;
    v49 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v50 = *(v78 + 72);
    sub_1E60EB82C(v45, v30 + v49 + v50 * v47);
    *v9 = sub_1E65D7A58();
    v9[1] = v51;
    swift_storeEnumTagMultiPayload();
    v53 = v30[2];
    v52 = v30[3];
    if (v53 >= v52 >> 1)
    {
      v30 = sub_1E64F6308((v52 > 1), v53 + 1, 1, v30);
    }

    v54 = v48;
    v44 = v48;
    v4 = v75;
    (*v71)(v54, v75);
    v30[2] = v53 + 1;
    sub_1E60EB82C(v9, v30 + v49 + v53 * v50);
    v42 += v72;
    --v40;
  }

  while (v40);

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
  v55 = *(v78 + 72);
  v56 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1E65EA8E0;
  v58 = (v57 + v56);
  v59 = v67;
  sub_1E65D8628();
  v60 = sub_1E65D87E8();
  v62 = v61;
  (*(v68 + 8))(v59, v69);
  *v58 = v60;
  v58[1] = v62;
  swift_storeEnumTagMultiPayload();
  *(v58 + v55) = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E65D8618();
  *(v58 + 2 * v55) = v63;
  swift_storeEnumTagMultiPayload();
  v80 = v57;
  sub_1E5FA9E2C(v30);
  return v80;
}

uint64_t sub_1E60EB490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752E0, &qword_1E65F15A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60EB500@<X0>(uint64_t a1@<X8>)
{
  if (sub_1E65D9058() < 1)
  {
    v11 = sub_1E65E32A8();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    sub_1E65D9088();
    if (v2 <= 1.0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 1.0;
    }

    v4 = v3 * 100.0;
    v5 = v2 < 0.0;
    v6 = 0.0;
    if (!v5)
    {
      v6 = v4;
    }

    v7 = roundf(v6) / 100.0;
    if (v7 >= 1.0)
    {
      v8 = *MEMORY[0x1E699EBB0];
    }

    else
    {
      *a1 = v7;
      *(a1 + 8) = 0;
      v8 = *MEMORY[0x1E699EBB8];
    }

    v9 = sub_1E65E32A8();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a1, v8, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

unint64_t sub_1E60EB6CC()
{
  result = qword_1ED0752F0;
  if (!qword_1ED0752F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0752E8, &qword_1E65F15D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752F0);
  }

  return result;
}

unint64_t sub_1E60EB730()
{
  result = qword_1ED0752F8;
  if (!qword_1ED0752F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0752F8);
  }

  return result;
}

unint64_t sub_1E60EB784()
{
  result = qword_1ED075300;
  if (!qword_1ED075300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075300);
  }

  return result;
}

unint64_t sub_1E60EB7D8()
{
  result = qword_1ED075308;
  if (!qword_1ED075308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075308);
  }

  return result;
}

uint64_t sub_1E60EB82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DADF8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60EB890@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v24 - v3;
  v4 = type metadata accessor for CatalogService();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v8 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v27 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v9 = v1 + *(type metadata accessor for AppEnvironment(0) + 48);
  v28 = v9;
  swift_getKeyPath();
  v26 = Description[2];
  v26(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, v4);
  v25 = v4;
  v10 = *(Description + 80);
  v11 = swift_allocObject();
  v29 = Description[4];
  v29(v11 + ((v10 + 16) & ~v10), &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075310, &qword_1E65F1610);
  swift_allocObject();

  v13 = sub_1E65E4E68();
  v24 = v13;
  v14 = v31;
  v31[3] = v12;
  v14[4] = &off_1F5FAA810;
  *v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA670;
  v16 = sub_1E65E60A8();
  v17 = v30;
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  v18 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v25;
  v26(v18, v28 + v27, v25);
  v20 = (v10 + 32) & ~v10;
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v29(v22 + v20, v18, v19);
  *(v22 + v21) = v24;

  result = sub_1E6059EAC(0, 0, v17, &unk_1E65F1620, v22);
  *(v15 + 32) = result;
  v14[5] = v15;
  return result;
}

uint64_t sub_1E60EBC64(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E60EBC8C, 0, 0);
}

uint64_t sub_1E60EBC8C()
{
  v1 = CatalogService.fetchRemoteCatalogProgramDetail.getter();
  v0[6] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E60EBD8C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5);
}

uint64_t sub_1E60EBD8C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E60EBF04;
  }

  else
  {
    v2 = sub_1E60EBEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60EBEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60EBF04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60EBF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60EC09C, 0, 0);
}

uint64_t sub_1E60EC09C()
{
  v1 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E60EC198;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E60EC198()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E60EC658;
  }

  else
  {
    v2 = sub_1E60EC2C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60EC2C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E60EC3A4;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v5);
}

uint64_t sub_1E60EC3A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E60EC4A0, 0, 0);
}

uint64_t sub_1E60EC4A0()
{
  if (*(v0 + 120) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E60EC5A0, v4, v3);
  }
}

uint64_t sub_1E60EC5A0()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E60EC3A4;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 120, 0, 0, v2);
}

uint64_t sub_1E60EC658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60EC6C8(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60EBC64(a1, a2, v2 + v7);
}

uint64_t sub_1E60EC7AC(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60EBF68(a1, v6, v7, v1 + v5, v8);
}

uint64_t ItemMetrics.init(identifier:actionType:name:targetIdentifierType:targetType:type:playbackEntitlement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, uint64_t a9)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v15 = type metadata accessor for ItemMetrics(0);
  v16 = v15[5];
  v17 = sub_1E65D8C68();
  (*(*(v17 - 8) + 32))(&a8[v16], a3, v17);
  v18 = &a8[v15[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = v15[7];
  v20 = sub_1E65D9908();
  (*(*(v20 - 8) + 32))(&a8[v19], a6, v20);
  v21 = v15[8];
  v22 = sub_1E65D8F28();
  (*(*(v22 - 8) + 32))(&a8[v21], a7, v22);
  v23 = v15[10];
  v24 = sub_1E65D9F88();
  v25 = *(*(v24 - 8) + 32);

  return v25(&a8[v23], a9, v24);
}

uint64_t ItemMetrics.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ItemMetrics.actionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemMetrics(0) + 20);
  v4 = sub_1E65D8C68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemMetrics.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ItemMetrics(0) + 24));

  return v1;
}

uint64_t ItemMetrics.targetIdentifierType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemMetrics(0) + 28);
  v4 = sub_1E65D9908();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemMetrics.targetType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemMetrics(0) + 32);
  v4 = sub_1E65D8F28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemMetrics.playbackEntitlement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemMetrics(0) + 40);
  v4 = sub_1E65D9F88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_1E60ECCB0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x7954746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79546E6F69746361;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E60ECD7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E60EE560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E60ECDA4(uint64_t a1)
{
  v2 = sub_1E60EE264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60ECDE0(uint64_t a1)
{
  v2 = sub_1E60EE264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ItemMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075318, &qword_1E65F1628);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E60EE264();
  sub_1E65E6DA8();
  v8[15] = 0;
  sub_1E65E6B48();
  if (!v1)
  {
    type metadata accessor for ItemMetrics(0);
    v8[14] = 1;
    sub_1E65D8C68();
    sub_1E5DF4A9C(&qword_1EE2D7110, MEMORY[0x1E69CBAA8], MEMORY[0x1E69CBAB0]);
    sub_1E65E6B78();
    v8[13] = 2;
    sub_1E65E6B28();
    v8[12] = 3;
    sub_1E65D9908();
    sub_1E5DF4A9C(&qword_1EE2D7068, MEMORY[0x1E69CC4D0], MEMORY[0x1E69CC4D8]);
    sub_1E65E6B78();
    v8[11] = 4;
    sub_1E65D8F28();
    sub_1E5DF4A9C(&qword_1EE2D70D0, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD10]);
    sub_1E65E6B78();
    v8[10] = 5;
    sub_1E60EE2B8();
    sub_1E65E6B78();
    v8[9] = 6;
    sub_1E65D9F88();
    sub_1E5DF4A9C(&qword_1ED075320, MEMORY[0x1E69CCA88], MEMORY[0x1E69CCA90]);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ItemMetrics.hash(into:)(uint64_t a1)
{
  sub_1E65E5D78();
  v2 = type metadata accessor for ItemMetrics(0);
  sub_1E65D8C68();
  sub_1E5DF4A9C(&qword_1EE2D7108, MEMORY[0x1E69CBAA8], MEMORY[0x1E69CBAB8]);
  sub_1E65E5B48();
  if (*(v1 + *(v2 + 24) + 8))
  {
    sub_1E65E6D48();
    sub_1E65E5D78();
  }

  else
  {
    sub_1E65E6D48();
  }

  sub_1E65D9908();
  sub_1E5DF4A9C(&qword_1EE2D7060, MEMORY[0x1E69CC4D0], MEMORY[0x1E69CC4E0]);
  sub_1E65E5B48();
  sub_1E65D8F28();
  sub_1E5DF4A9C(&qword_1EE2D70C8, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD18]);
  sub_1E65E5B48();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  sub_1E65D9F88();
  sub_1E5DF4A9C(&qword_1EE2D6FF0, MEMORY[0x1E69CCA88], MEMORY[0x1E69CCA98]);
  return sub_1E65E5B48();
}

uint64_t ItemMetrics.hashValue.getter()
{
  sub_1E65E6D28();
  ItemMetrics.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t ItemMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1E65D9F88();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D8F28();
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65D9908();
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D8C68();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075328, &qword_1E65F1630);
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  v15 = type metadata accessor for ItemMetrics(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E60EE264();
  v54 = v14;
  v19 = v55;
  sub_1E65E6D98();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v20 = v8;
  v40 = v15;
  v41 = v9;
  v21 = v51;
  v55 = v17;
  v63 = 0;
  v22 = sub_1E65E6AA8();
  v23 = v55;
  *v55 = v22;
  v23[1] = v24;
  v62 = 1;
  sub_1E5DF4A9C(&qword_1ED075330, MEMORY[0x1E69CBAA8], MEMORY[0x1E69CBAC8]);
  v25 = v11;
  v26 = v41;
  sub_1E65E6AD8();
  v27 = v40;
  (*(v21 + 32))(v23 + *(v40 + 20), v25, v26);
  v61 = 2;
  v28 = sub_1E65E6A88();
  v29 = v27;
  v30 = (v23 + *(v27 + 24));
  *v30 = v28;
  v30[1] = v31;
  v60 = 3;
  sub_1E5DF4A9C(&qword_1ED075338, MEMORY[0x1E69CC4D0], MEMORY[0x1E69CC4F0]);
  v32 = v47;
  sub_1E65E6AD8();
  v39[1] = 1;
  (*(v50 + 32))(v23 + *(v29 + 28), v20, v32);
  v59 = 4;
  sub_1E5DF4A9C(&qword_1ED075340, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD28]);
  v33 = v46;
  v34 = v48;
  sub_1E65E6AD8();
  (*(v49 + 32))(v23 + *(v29 + 32), v33, v34);
  v58 = 5;
  sub_1E60EE30C();
  sub_1E65E6AD8();
  v35 = v23;
  v57 = 6;
  sub_1E5DF4A9C(&qword_1ED075350, MEMORY[0x1E69CCA88], MEMORY[0x1E69CCAA8]);
  v36 = v44;
  v37 = v45;
  sub_1E65E6AD8();
  (*(v52 + 8))(v54, v53);
  (*(v42 + 32))(v35 + *(v40 + 40), v37, v36);
  sub_1E60EE360(v35, v43);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_1E60EE3C4(v35);
}

uint64_t sub_1E60EDCA0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1E60EDCFC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1E60EDDB4()
{
  sub_1E65E6D28();
  ItemMetrics.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E60EDDF8(uint64_t a1)
{
  sub_1E65E6D28();
  ItemMetrics.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard11ItemMetricsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E65E6C18() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = type metadata accessor for ItemMetrics(0);
  sub_1E65D8C68();
  sub_1E5DF4A9C(&qword_1EE2D7100, MEMORY[0x1E69CBAA8], MEMORY[0x1E69CBAC0]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v24 == v22 && v25 == v23)
  {
  }

  else
  {
    v6 = sub_1E65E6C18();

    if ((v6 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v7 = *(v5 + 24);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      goto LABEL_34;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_1E65E6C18() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v11)
  {
    goto LABEL_34;
  }

  sub_1E65D9908();
  sub_1E5DF4A9C(&qword_1EE2D7058, MEMORY[0x1E69CC4D0], MEMORY[0x1E69CC4E8]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v24 == v22 && v25 == v23)
  {
  }

  else
  {
    v13 = sub_1E65E6C18();

    if ((v13 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  sub_1E65D8F28();
  sub_1E5DF4A9C(&qword_1EE2D70C0, MEMORY[0x1E69CBD08], MEMORY[0x1E69CBD20]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v24 == v22 && v25 == v23)
  {
  }

  else
  {
    v14 = sub_1E65E6C18();

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v15 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v17 = v16;
  if (v15 == _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() && v17 == v18)
  {

    goto LABEL_31;
  }

  v19 = sub_1E65E6C18();

  if ((v19 & 1) == 0)
  {
LABEL_34:
    v20 = 0;
    return v20 & 1;
  }

LABEL_31:
  sub_1E65D9F88();
  sub_1E5DF4A9C(&qword_1EE2D6FE8, MEMORY[0x1E69CCA88], MEMORY[0x1E69CCAA0]);
  sub_1E65E5E98();
  sub_1E65E5E98();
  if (v24 == v22 && v25 == v23)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1E65E6C18();
  }

  return v20 & 1;
}