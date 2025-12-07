double sub_1B0C89118(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1B0C89178()
{
  result = qword_1EB6E5F50;
  if (!qword_1EB6E5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F50);
  }

  return result;
}

double sub_1B0C8926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1B07ACBF8(a1, a2, a3, a4, a5);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0C892AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B0C89308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0C89388(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1B0C893D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0C89444(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1B0C8948C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B0C89538()
{
  result = qword_1EB6E5F60;
  if (!qword_1EB6E5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F60);
  }

  return result;
}

uint64_t sub_1B0C895C4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1;
  v10 = 0;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1B2726D20](v4);
  if (v3 && a2 != v3)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    do
    {
      if (*v3 - 1 < 0x7E)
      {
        v8 = v5;
        v9 = v6;
        sub_1B0E44C58();
        v5 = v8;
        v6 = v9;
      }

      ++v3;
    }

    while (v3 != a2);
    return v5;
  }

  return v10;
}

uint64_t sub_1B0C89674(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v3)
  {
    v5 = 0;
    v49 = a2;
    v50 = v4 + 32;
    while (1)
    {
      v13 = *(v50 + v5 + 48);
      v57 = *(v50 + v5 + 32);
      v58 = v13;
      v14 = *(v50 + v5 + 80);
      v59 = *(v50 + v5 + 64);
      v60 = v14;
      v15 = *(v50 + v5 + 16);
      v56[0] = *(v50 + v5);
      v56[1] = v15;
      v61 = v56[0];
      v62 = v15;
      v63 = v57;
      v64 = v13;
      v65 = v59;
      v66 = v14;
      if (v5)
      {
        sub_1B0C826C0(v56, &v54);
        MEMORY[0x1B2726E80](8236, 0xE200000000000000);
        v16 = *(&v61 + 1);
        if (!*(&v61 + 1))
        {
          break;
        }
      }

      else
      {
        sub_1B0C826C0(v56, &v54);
        v16 = *(&v61 + 1);
        if (!*(&v61 + 1))
        {
          break;
        }
      }

      v17 = v61;
      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || __PAIR128__(v16, v61) == v62 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      v54 = sub_1B0C82014(v17, v16);
      v55 = v36;
      MEMORY[0x1B2726E80](15392, 0xE200000000000000);
      v37 = sub_1B0C80214(a2);
      MEMORY[0x1B2726E80](v37);

      MEMORY[0x1B2726E80](62, 0xE100000000000000);
      sub_1B0C8274C(&v61);
      v11 = v54;
      v12 = v55;
LABEL_5:
      MEMORY[0x1B2726E80](v11, v12);

      v5 += 96;
      if (!--v3)
      {
        goto LABEL_32;
      }
    }

    if (*(&v65 + 1) >> 14 < v65 >> 14)
    {
      __break(1u);
    }

    v51 = v5;
    v52 = v3;
    v19 = sub_1B0E45E28();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    LODWORD(v54) = 0;
    NFCInstance = unorm2_getNFCInstance();
    v27 = v54;
    if (NFCInstance && v54 <= 0)
    {
      sub_1B0CB3CC8(v19, v21, v23, v25, NFCInstance);
      v34 = v29;
      if (v29)
      {
        v32 = v28;
      }

      else
      {
        v32 = MEMORY[0x1B2726D00](v19, v21, v23, v25);
        v34 = v38;
      }

      if ((*(a2 + 96) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1B0C826F8();
      v30 = swift_allocError();
      *v31 = v27;
      *(v31 + 4) = 0;
      swift_willThrow();
      v32 = MEMORY[0x1B2726D00](v19, v21, v23, v25);
      v34 = v33;

      if ((*(a2 + 96) & 1) == 0)
      {
LABEL_26:
        v35 = *(a2 + 88);
LABEL_27:
        v53 = v35;
        sub_1B0C8BD64(&v53, v32, v34, &v54);

        *(a2 + 88) = v35;
        *(a2 + 96) = 0;
        v40 = v54;
        v39 = v55;
        v41 = v63;
        v42 = v64;
        LODWORD(v54) = 0;
        v43 = unorm2_getNFCInstance();
        v44 = v54;
        if (v43 && v54 <= 0)
        {
          sub_1B0CB3CC8(v41, *(&v41 + 1), v42, *(&v42 + 1), v43);
          v10 = v46;
          if (v46)
          {
            v8 = v45;
          }

          else
          {
            v8 = MEMORY[0x1B2726D00](v41, *(&v41 + 1), v42, *(&v42 + 1));
            v10 = v47;
          }
        }

        else
        {
          sub_1B0C826F8();
          v6 = swift_allocError();
          *v7 = v44;
          *(v7 + 4) = 0;
          swift_willThrow();
          v8 = MEMORY[0x1B2726D00](v41, *(&v41 + 1), v42, *(&v42 + 1));
          v10 = v9;
        }

        v3 = v52;
        v54 = v8;
        v55 = v10;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](64, 0xE100000000000000);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        MEMORY[0x1B2726E80](v40, v39);

        sub_1B0C8274C(&v61);
        v11 = v54;
        v12 = v55;
        a2 = v49;
        v5 = v51;
        goto LABEL_5;
      }
    }

    LODWORD(v54) = 0;
    v35 = MEMORY[0x1B272C4F0](60, &v54);
    goto LABEL_27;
  }

LABEL_32:

  return 0;
}

uint64_t sub_1B0C89B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

unint64_t Header.field.getter()
{
  result = 0x6275732D6F747561;
  switch(*(v0 + 96))
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 0xA:
      result = 1702125924;
      break;
    case 0xB:
      result = 1836020326;
      break;
    case 0xC:
      result = 0x64692D7473696CLL;
      break;
    case 0xD:
      result = 0x2D6567617373656DLL;
      break;
    case 0xE:
      result = 0x7265762D656D696DLL;
      break;
    case 0xF:
      result = 0x69726F6972702D78;
      break;
    case 0x10:
      result = 0x6465766965636572;
      break;
    case 0x11:
      result = 0x702D6E7275746572;
      break;
    case 0x12:
      result = 0x7463656A627573;
      break;
    case 0x13:
      result = 28532;
      break;
    case 0x14:
      v2 = *v0;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v2;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t Header.value(cache:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  switch(*(v1 + 96))
  {
    case 1:
      if (*v1)
      {
        if (*v1 == 1)
        {
          result = 0x6E65672D6F747561;
        }

        else
        {
          result = 0x7065722D6F747561;
        }
      }

      else
      {
        result = 28526;
      }

      break;
    case 2:
    case 3:
    case 0x13:
      result = sub_1B0C89674(v3, a1);
      break;
    case 5:
      v9 = *v1;
      v10 = v4;
      sub_1B08C50F0(v3, v4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(v9, v10, v5);
      break;
    case 8:
      v11 = 1953063479;
      v12 = *v1;
      v13 = 0xD000000000000010;
      v14 = 0x343665736162;
      if (v12 != 4)
      {
        v14 = 0;
      }

      if (v12 != 3)
      {
        v13 = v14;
      }

      v15 = 0x7972616E6962;
      if (v12 == 1)
      {
        v15 = 1953063480;
      }

      if (*v1)
      {
        v11 = v15;
      }

      if (*v1 <= 2u)
      {
        result = v11;
      }

      else
      {
        result = v13;
      }

      break;
    case 9:
      *&v25 = *v1;
      *(&v25 + 1) = v4;
      *&v26 = v5;
      *(&v26 + 1) = v6;
      v27 = *(v1 + 32);
      v31[0] = v25;
      v31[1] = v26;
      v32 = v27;
      v33 = *(&v27 + 1);
      sub_1B07B4718(v31, v24);
      sub_1B0C7FC44(&v33, v24);
      result = _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(&v25);
      break;
    case 0xB:
      *&v25 = *v1;
      *(&v25 + 1) = v4;
      *&v26 = v5;
      *(&v26 + 1) = v6;
      v16 = *(v1 + 48);
      v27 = *(v1 + 32);
      v28 = v16;
      v17 = *(v1 + 80);
      v29 = *(v1 + 64);
      v30 = v17;
      if (!v4)
      {
        goto LABEL_24;
      }

      v18 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v18 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || v3 == v5 && v4 == v6 || (v19 = v3, v20 = a1, v21 = v4, v22 = sub_1B0E46A78(), a1 = v20, (v22 & 1) != 0))
      {
LABEL_24:
        result = sub_1B0C80214(a1);
      }

      else
      {
        *&v31[0] = sub_1B0C82014(v19, v21);
        MEMORY[0x1B2726E80](15392, 0xE200000000000000);
        v23 = sub_1B0C80214(v20);
        MEMORY[0x1B2726E80](v23);

        MEMORY[0x1B2726E80](62, 0xE100000000000000);
        result = *&v31[0];
      }

      break;
    case 0xC:
      *(&v25 + 1) = 0xE100000000000000;
      MEMORY[0x1B2726E80](v3, v4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](62, 0xE100000000000000);

      result = 60;
      break;
    case 0xF:
      LOBYTE(v25) = *v1;
      result = sub_1B0E469C8();
      break;
    case 0x14:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v5;
      break;
    default:
      v7 = *v1;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result = v7;
      break;
  }

  return result;
}

unint64_t sub_1B0C8A0E8@<X0>(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v5 = *(result + 8);
  v7 = *(result + 16);
  v8 = *(result + 17) | ((*(result + 21) | (*(result + 23) << 16)) << 32);
  v9 = *(result + 24);
  v10 = *(result + 32);
  v11 = *(result + 37) | (*(result + 39) << 16);
  v12 = *(result + 33) | ((*&v11 & 0xFFFFFFLL) << 32);
  switch(v11 >> 19)
  {
    case 1u:
      if (v6)
      {
        v68 = &v5[-v6];
      }

      else
      {
        v68 = 0;
      }

      if (v68 < 0)
      {
        goto LABEL_171;
      }

      v69 = sub_1B0CB4AF8(0, v68, v6, v5);
      if (v7)
      {
        sub_1B0CB5900(v69, v70, v71, v72);
      }

      else
      {
        v136 = v69;
        v137 = v70;
        if (v71)
        {
          v138 = v71;
          v139 = v72;
          v140 = sub_1B0433338(0, v69, v71, v72);
          result = sub_1B0433338(v136, v137, v138, v139);
          if (__OFADD__(v140, result))
          {
            goto LABEL_182;
          }

          if ((v140 + result) < v140)
          {
            goto LABEL_192;
          }
        }

        else
        {
          v160 = v72;
          v161 = sub_1B0433338(0, v69, 0, v72);
          result = sub_1B0433338(v136, v137, 0, v160);
          if (__OFADD__(v161, result))
          {
            goto LABEL_202;
          }

          if ((v161 + result) < v161)
          {
            goto LABEL_212;
          }
        }

        sub_1B0E44C68();
      }

      v7 = v73;
      v9 = sub_1B0E44B98();
      v3 = v162;

      v39 = sub_1B0E467E8();

      if (v39 >= 3)
      {
        goto LABEL_146;
      }

      v42 = 0;
      v40 = 0;
      v43 = 1;
      goto LABEL_165;
    case 2u:
      v53 = sub_1B0CB4AE0(*result, v5);
      v55 = sub_1B0CACDC4(v53, v54, a2);
      v7 = v56;
      v39 = sub_1B0C80520(v55);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 2;
      goto LABEL_165;
    case 3u:
      v57 = sub_1B0CB4AE0(*result, v5);
      v59 = sub_1B0CACDC4(v57, v58, a2);
      v7 = v60;
      v39 = sub_1B0C80520(v59);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 3;
      goto LABEL_165;
    case 4u:
      if (v6)
      {
        v44 = &v5[-v6];
      }

      else
      {
        v44 = 0;
      }

      if (v44 < 0)
      {
        goto LABEL_168;
      }

      v45 = sub_1B0CB4AF8(0, v44, v6, v5);
      if (v7)
      {
        v49 = sub_1B0CB5900(v45, v46, v47, v48);
LABEL_132:
        v39 = v49;
        v7 = v50;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 4;
        goto LABEL_165;
      }

      v3 = v45;
      v127 = v46;
      if (!v47)
      {
        v157 = v48;
        v9 = sub_1B0433338(0, v45, 0, v48);
        result = sub_1B0433338(v3, v127, 0, v157);
        if (__OFADD__(v9, result))
        {
          goto LABEL_199;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_131;
        }

        goto LABEL_209;
      }

      v128 = v47;
      v129 = v48;
      v9 = sub_1B0433338(0, v45, v47, v48);
      result = sub_1B0433338(v3, v127, v128, v129);
      if (__OFADD__(v9, result))
      {
        goto LABEL_179;
      }

      if ((v9 + result) >= v9)
      {
LABEL_131:
        v49 = sub_1B0E44C68();
        goto LABEL_132;
      }

      goto LABEL_189;
    case 5u:
      result = sub_1B0C7A280(*result, v5, v7 & 1, v9, a2);
      v7 = v90;
      v9 = v91;
      v42 = 0;
      v40 = result & 0xFFFFFFFFFFFFFF00;
      v43 = 5;
      LOBYTE(v39) = result;
      goto LABEL_165;
    case 6u:
      if (v6)
      {
        v99 = &v5[-v6];
      }

      else
      {
        v99 = 0;
      }

      if (v99 < 0)
      {
        goto LABEL_175;
      }

      v100 = sub_1B0CB4AF8(0, v99, v6, v5);
      if (v7)
      {
        v104 = sub_1B0CB5900(v100, v101, v102, v103);
LABEL_164:
        v39 = v104;
        v7 = v105;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 6;
        goto LABEL_165;
      }

      v3 = v100;
      v152 = v101;
      if (!v102)
      {
        v167 = v103;
        v9 = sub_1B0433338(0, v100, 0, v103);
        result = sub_1B0433338(v3, v152, 0, v167);
        if (__OFADD__(v9, result))
        {
          goto LABEL_206;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_163;
        }

        goto LABEL_216;
      }

      v153 = v102;
      v154 = v103;
      v9 = sub_1B0433338(0, v100, v102, v103);
      result = sub_1B0433338(v3, v152, v153, v154);
      if (__OFADD__(v9, result))
      {
        goto LABEL_186;
      }

      if ((v9 + result) >= v9)
      {
LABEL_163:
        v104 = sub_1B0E44C68();
        goto LABEL_164;
      }

      goto LABEL_196;
    case 7u:
      if (v6)
      {
        v61 = &v5[-v6];
      }

      else
      {
        v61 = 0;
      }

      if (v61 < 0)
      {
        goto LABEL_169;
      }

      v62 = sub_1B0CB4AF8(0, v61, v6, v5);
      if (v7)
      {
        v66 = sub_1B0CB5900(v62, v63, v64, v65);
LABEL_136:
        v39 = v66;
        v7 = v67;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 7;
        goto LABEL_165;
      }

      v3 = v62;
      v130 = v63;
      if (!v64)
      {
        v158 = v65;
        v9 = sub_1B0433338(0, v62, 0, v65);
        result = sub_1B0433338(v3, v130, 0, v158);
        if (__OFADD__(v9, result))
        {
          goto LABEL_200;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_135;
        }

        goto LABEL_210;
      }

      v131 = v64;
      v132 = v65;
      v9 = sub_1B0433338(0, v62, v64, v65);
      result = sub_1B0433338(v3, v130, v131, v132);
      if (__OFADD__(v9, result))
      {
        goto LABEL_180;
      }

      if ((v9 + result) >= v9)
      {
LABEL_135:
        v66 = sub_1B0E44C68();
        goto LABEL_136;
      }

      goto LABEL_190;
    case 8u:
      v115 = sub_1B0CB4AE0(*result, v5);
      LOBYTE(v39) = sub_1B0C7D54C(v115, v116);

      v42 = 0;
      v40 = 0;
      v43 = 8;
      goto LABEL_165;
    case 9u:
      v52 = *(result + 40);
      *&v171 = *result;
      *(&v171 + 1) = v5;
      LOBYTE(v172) = v7;
      *(&v172 + 1) = v8;
      HIBYTE(v172) = BYTE6(v8);
      *(&v172 + 5) = WORD2(v8);
      v173 = v9;
      LOBYTE(v174) = v10;
      *(&v174 + 1) = v12;
      HIBYTE(v174) = BYTE6(v12) & 7;
      *(&v174 + 5) = WORD2(v12);
      *&v175 = v52;
      result = sub_1B0C7F3B4(&v171, a2, v168);
      v42 = 0;
      LOBYTE(v39) = v168[0];
      v7 = v168[1];
      v9 = v168[2];
      v3 = v168[3];
      v41 = v169;
      v40 = v168[0] & 0xFFFFFFFFFFFFFF00;
      *&v38 = v170;
      v43 = 9;
      goto LABEL_165;
    case 0xAu:
      if (v6)
      {
        v109 = &v5[-v6];
      }

      else
      {
        v109 = 0;
      }

      if (v109 < 0)
      {
        goto LABEL_176;
      }

      v110 = sub_1B0CB4AF8(0, v109, v6, v5);
      v39 = sub_1B0CB5900(v110, v111, v112, v113);
      v7 = v114;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 10;
      goto LABEL_165;
    case 0xBu:
      sub_1B0C82424(&v171, *result, v5, a2);

      v3 = v173;
      if (v173)
      {
        v35 = v178;
        v36 = v177;
        v37 = v176;
        v38 = v175;
        LOBYTE(v39) = v171;
        v7 = *(&v171 + 1);
        v40 = v171 & 0xFFFFFFFFFFFFFF00;
        v41 = v174;
        v9 = v172;
        v42 = v174 & 0xFFFFFFFFFFFFFF00;
        v43 = 11;
        goto LABEL_165;
      }

      v7 = 0;
      v9 = 0;
      goto LABEL_148;
    case 0xCu:
      v39 = sub_1B0C939A8(*result, v5);
      v7 = v51;

      if (!v7)
      {
        goto LABEL_147;
      }

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 12;
      goto LABEL_165;
    case 0xDu:
      if (v6)
      {
        v92 = &v5[-v6];
      }

      else
      {
        v92 = 0;
      }

      if (v92 < 0)
      {
        goto LABEL_174;
      }

      v93 = sub_1B0CB4AF8(0, v92, v6, v5);
      if (v7)
      {
        v97 = sub_1B0CB5900(v93, v94, v95, v96);
LABEL_160:
        v39 = v97;
        v7 = v98;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 13;
        goto LABEL_165;
      }

      v3 = v93;
      v149 = v94;
      if (!v95)
      {
        v166 = v96;
        v9 = sub_1B0433338(0, v93, 0, v96);
        result = sub_1B0433338(v3, v149, 0, v166);
        if (__OFADD__(v9, result))
        {
          goto LABEL_205;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_159;
        }

        goto LABEL_215;
      }

      v150 = v95;
      v151 = v96;
      v9 = sub_1B0433338(0, v93, v95, v96);
      result = sub_1B0433338(v3, v149, v150, v151);
      if (__OFADD__(v9, result))
      {
        goto LABEL_185;
      }

      if ((v9 + result) >= v9)
      {
LABEL_159:
        v97 = sub_1B0E44C68();
        goto LABEL_160;
      }

      goto LABEL_195;
    case 0xEu:
      if (v6)
      {
        v28 = &v5[-v6];
      }

      else
      {
        v28 = 0;
      }

      if (v28 < 0)
      {
        goto LABEL_167;
      }

      v29 = sub_1B0CB4AF8(0, v28, v6, v5);
      if (v7)
      {
        v33 = sub_1B0CB5900(v29, v30, v31, v32);
LABEL_128:
        v39 = v33;
        v7 = v34;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 14;
        goto LABEL_165;
      }

      v3 = v29;
      v124 = v30;
      if (!v31)
      {
        v156 = v32;
        v9 = sub_1B0433338(0, v29, 0, v32);
        result = sub_1B0433338(v3, v124, 0, v156);
        if (__OFADD__(v9, result))
        {
          goto LABEL_198;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_127;
        }

        goto LABEL_208;
      }

      v125 = v31;
      v126 = v32;
      v9 = sub_1B0433338(0, v29, v31, v32);
      result = sub_1B0433338(v3, v124, v125, v126);
      if (__OFADD__(v9, result))
      {
        goto LABEL_178;
      }

      if ((v9 + result) >= v9)
      {
LABEL_127:
        v33 = sub_1B0E44C68();
        goto LABEL_128;
      }

      goto LABEL_188;
    case 0xFu:
      LOWORD(v39) = sub_1B0C8BBC8(*result, v5);

      if ((v39 & 0x100) != 0)
      {
LABEL_146:
        v7 = 0;
LABEL_147:
        v9 = 0;
        v3 = 0;
LABEL_148:
        v35 = 0;
        v41 = 0;
        v42 = 0;
        LOBYTE(v39) = 0;
        v40 = 0;
        v38 = 0uLL;
        v37 = 0uLL;
        v36 = 0uLL;
        v43 = -1;
      }

      else
      {
        v42 = 0;
        v40 = 0;
        v43 = 15;
      }

      goto LABEL_165;
    case 0x10u:
      if (v6)
      {
        v21 = &v5[-v6];
      }

      else
      {
        v21 = 0;
      }

      if (v21 < 0)
      {
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v22 = sub_1B0CB4AF8(0, v21, v6, v5);
      if (v7)
      {
        v26 = sub_1B0CB5900(v22, v23, v24, v25);
LABEL_124:
        v39 = v26;
        v7 = v27;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 16;
        goto LABEL_165;
      }

      v3 = v22;
      v121 = v23;
      if (v24)
      {
        v122 = v24;
        v123 = v25;
        v9 = sub_1B0433338(0, v22, v24, v25);
        result = sub_1B0433338(v3, v121, v122, v123);
        if (!__OFADD__(v9, result))
        {
          if ((v9 + result) < v9)
          {
            goto LABEL_187;
          }

LABEL_123:
          v26 = sub_1B0E44C68();
          goto LABEL_124;
        }

        goto LABEL_177;
      }

      v155 = v25;
      v9 = sub_1B0433338(0, v22, 0, v25);
      result = sub_1B0433338(v3, v121, 0, v155);
      if (__OFADD__(v9, result))
      {
        goto LABEL_197;
      }

      if ((v9 + result) >= v9)
      {
        goto LABEL_123;
      }

      goto LABEL_207;
    case 0x11u:
      if (v6)
      {
        v74 = &v5[-v6];
      }

      else
      {
        v74 = 0;
      }

      if (v74 < 0)
      {
        goto LABEL_172;
      }

      v75 = sub_1B0CB4AF8(0, v74, v6, v5);
      if (v7)
      {
        v79 = sub_1B0CB5900(v75, v76, v77, v78);
LABEL_152:
        v39 = v79;
        v7 = v80;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 17;
        goto LABEL_165;
      }

      v3 = v75;
      v141 = v76;
      if (!v77)
      {
        v163 = v78;
        v9 = sub_1B0433338(0, v75, 0, v78);
        result = sub_1B0433338(v3, v141, 0, v163);
        if (__OFADD__(v9, result))
        {
          goto LABEL_203;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_151;
        }

        goto LABEL_213;
      }

      v142 = v77;
      v143 = v78;
      v9 = sub_1B0433338(0, v75, v77, v78);
      result = sub_1B0433338(v3, v141, v142, v143);
      if (__OFADD__(v9, result))
      {
        goto LABEL_183;
      }

      if ((v9 + result) >= v9)
      {
LABEL_151:
        v79 = sub_1B0E44C68();
        goto LABEL_152;
      }

      goto LABEL_193;
    case 0x12u:
      v106 = sub_1B0CB4AE0(*result, v5);
      v39 = sub_1B0CACDC4(v106, v107, a2);
      v7 = v108;

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 18;
      goto LABEL_165;
    case 0x13u:
      v117 = sub_1B0CB4AE0(*result, v5);
      v119 = sub_1B0CACDC4(v117, v118, a2);
      v7 = v120;
      v39 = sub_1B0C80520(v119);

      v42 = 0;
      v40 = v39 & 0xFFFFFFFFFFFFFF00;
      v43 = 19;
      goto LABEL_165;
    case 0x14u:
      v81 = v7 | (v8 << 8);
      result = sub_1B0C895C4(*result, v5);
      v7 = v82;
      if (v81)
      {
        v83 = v9 - v81;
      }

      else
      {
        v83 = 0;
      }

      if (v83 < 0)
      {
        goto LABEL_173;
      }

      v39 = result;
      v84 = sub_1B0CB4AF8(0, v83, v81, v9);
      if (v10)
      {
        v88 = sub_1B0CB5900(v84, v85, v86, v87);
LABEL_156:
        v9 = v88;
        v3 = v89;

        v42 = 0;
        v40 = v39 & 0xFFFFFFFFFFFFFF00;
        v43 = 20;
        goto LABEL_165;
      }

      v144 = v84;
      v145 = v85;
      if (!v86)
      {
        v164 = v87;
        v165 = sub_1B0433338(0, v84, 0, v87);
        result = sub_1B0433338(v144, v145, 0, v164);
        if (__OFADD__(v165, result))
        {
          goto LABEL_204;
        }

        if ((v165 + result) >= v165)
        {
          goto LABEL_155;
        }

        goto LABEL_214;
      }

      v146 = v86;
      v147 = v87;
      v148 = sub_1B0433338(0, v84, v86, v87);
      result = sub_1B0433338(v144, v145, v146, v147);
      if (__OFADD__(v148, result))
      {
        goto LABEL_184;
      }

      if ((v148 + result) >= v148)
      {
LABEL_155:
        v88 = sub_1B0E44C68();
        goto LABEL_156;
      }

      goto LABEL_194;
    default:
      if (v6)
      {
        v14 = &v5[-v6];
      }

      else
      {
        v14 = 0;
      }

      if (v14 < 0)
      {
        goto LABEL_170;
      }

      v15 = sub_1B0CB4AF8(0, v14, v6, v5);
      if (v7)
      {
        v19 = sub_1B0CB5900(v15, v16, v17, v18);
        goto LABEL_140;
      }

      v3 = v15;
      v133 = v16;
      if (v17)
      {
        v134 = v17;
        v135 = v18;
        v9 = sub_1B0433338(0, v15, v17, v18);
        result = sub_1B0433338(v3, v133, v134, v135);
        if (__OFADD__(v9, result))
        {
          goto LABEL_181;
        }

        if ((v9 + result) >= v9)
        {
LABEL_139:
          v19 = sub_1B0E44C68();
LABEL_140:
          v39 = v19;
          v7 = v20;

          v43 = 0;
          v42 = 0;
          v40 = v39 & 0xFFFFFFFFFFFFFF00;
LABEL_165:
          *a3 = v40 | v39;
          *(a3 + 8) = v7;
          *(a3 + 16) = v9;
          *(a3 + 24) = v3;
          *(a3 + 32) = v42 | v41;
          *(a3 + 40) = v38;
          *(a3 + 56) = v37;
          *(a3 + 72) = v36;
          *(a3 + 88) = v35;
          *(a3 + 96) = v43;
          return result;
        }

LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
      }

      else
      {
        v159 = v18;
        v9 = sub_1B0433338(0, v15, 0, v18);
        result = sub_1B0433338(v3, v133, 0, v159);
        if (__OFADD__(v9, result))
        {
          goto LABEL_201;
        }

        if ((v9 + result) >= v9)
        {
          goto LABEL_139;
        }
      }

      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
      return result;
  }
}

uint64_t _s9IMAP2MIME6HeaderO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  switch(*(a1 + 96))
  {
    case 1:
      if (a2[96] != 1)
      {
        return 0;
      }

      v27 = *a2;
      v28 = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v29 = 0x6E65672D6F747561;
        }

        else
        {
          v29 = 0x7065722D6F747561;
        }

        if (v28 == 1)
        {
          v30 = 0xEE00646574617265;
        }

        else
        {
          v30 = 0xEC0000006465696CLL;
        }
      }

      else
      {
        v30 = 0xE200000000000000;
        v29 = 28526;
      }

      v40 = 0x6E65672D6F747561;
      v41 = 0xEE00646574617265;
      if (v27 != 1)
      {
        v40 = 0x7065722D6F747561;
        v41 = 0xEC0000006465696CLL;
      }

      if (v27)
      {
        v42 = v40;
      }

      else
      {
        v42 = 28526;
      }

      if (v27)
      {
        v43 = v41;
      }

      else
      {
        v43 = 0xE200000000000000;
      }

      if (v29 == v42 && v30 == v43)
      {

        return 1;
      }

      else
      {
        v44 = sub_1B0E46A78();

        return v44 & 1;
      }

    case 2:
      if (a2[96] == 2)
      {
        goto LABEL_72;
      }

      return 0;
    case 3:
      if (a2[96] != 3)
      {
        return 0;
      }

      goto LABEL_72;
    case 4:
      if (a2[96] != 4)
      {
        return 0;
      }

      goto LABEL_61;
    case 5:
      if (a2[96] != 5)
      {
        return 0;
      }

      v33 = *(a2 + 1);
      v34 = *(a2 + 2);
      if (v5 == 2)
      {
        if (v33 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 1)
      {
        if (v33 != 1)
        {
          return 0;
        }
      }

      else if (v5)
      {
        if (v33 < 3 || (v4 != *a2 || v33 != v5) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v33)
      {
        return 0;
      }

      return (sub_1B0C78C0C(v6, v34) & 1) != 0;
    case 6:
      if (a2[96] != 6)
      {
        return 0;
      }

      goto LABEL_61;
    case 7:
      if (a2[96] != 7)
      {
        return 0;
      }

      goto LABEL_61;
    case 8:
      if (a2[96] != 8)
      {
        return 0;
      }

      v35 = *a2;
      if (v4 == 5)
      {
        if (v35 == 5)
        {
          return 1;
        }
      }

      else if (v35 != 5 && (sub_1B0C7C5D4() & 1) != 0)
      {
        return 1;
      }

      return 0;
    case 9:
      if (a2[96] != 9)
      {
        return 0;
      }

      v24 = *(a2 + 5);
      v57[0] = v4;
      v57[1] = v5;
      v57[2] = v6;
      v57[3] = v7;
      v58 = v8;
      v25 = *(a2 + 1);
      v59[0] = *a2;
      v59[1] = v25;
      v60 = a2[32];
      return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v57, v59) && (sub_1B0C78D8C(v9, v24) & 1) != 0;
    case 0xA:
      if (a2[96] == 10)
      {
        goto LABEL_61;
      }

      return 0;
    case 0xB:
      if (a2[96] != 11)
      {
        return 0;
      }

      v16 = *(a2 + 1);
      v17 = *(a2 + 2);
      v19 = *(a2 + 3);
      v18 = *(a2 + 4);
      v20 = *(a2 + 5);
      v21 = *(a2 + 6);
      v22 = *(a2 + 7);
      v56 = *(a2 + 8);
      v55 = *(a2 + 9);
      v54 = *(a2 + 10);
      v53 = *(a2 + 11);
      if (v5)
      {
        if (!v16)
        {
          return 0;
        }

        if (v4 != *a2 || v16 != v5)
        {
          v49 = *(a2 + 7);
          v51 = *(a2 + 4);
          v47 = *(a2 + 6);
          v48 = *(a2 + 5);
          v45 = *(a2 + 3);
          v46 = *(a2 + 2);
          v23 = sub_1B0E46A78();
          v19 = v45;
          v17 = v46;
          v20 = v48;
          v22 = v49;
          v21 = v47;
          v18 = v51;
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v16)
      {
        return 0;
      }

      if (v6 == v17 && v7 == v19 || (v50 = v22, v52 = v18, v37 = v20, v38 = v21, v39 = sub_1B0E46A78(), v22 = v50, v18 = v52, v21 = v38, v20 = v37, (v39 & 1) != 0))
      {
        if (sub_1B0C8C5C0(v8, v9, v10, v12, v18, v20, v21, v22) & 1) != 0 && (sub_1B0C8C5C0(v11, v13, v14, v15, v56, v55, v54, v53))
        {
          return 1;
        }
      }

      return 0;
    case 0xC:
      if (a2[96] != 12)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xD:
      if (a2[96] != 13)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xE:
      if (a2[96] != 14)
      {
        return 0;
      }

      goto LABEL_61;
    case 0xF:
      if (a2[96] != 15)
      {
        return 0;
      }

      return *a2 == v4;
    case 0x10:
      if (a2[96] != 16)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x11:
      if (a2[96] != 17)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x12:
      if (a2[96] != 18)
      {
        return 0;
      }

      goto LABEL_61;
    case 0x13:
      if (a2[96] != 19)
      {
        return 0;
      }

LABEL_72:
      v36 = *a2;

      return sub_1B0C789C8(v4, v36);
    case 0x14:
      if (a2[96] != 20)
      {
        return 0;
      }

      v31 = *(a2 + 2);
      v32 = *(a2 + 3);
      if ((v4 != *a2 || v5 != *(a2 + 1)) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      if (v6 != v31 || v7 != v32)
      {
        goto LABEL_64;
      }

      return 1;
    default:
      if (a2[96])
      {
        return 0;
      }

LABEL_61:
      if (v4 == *a2 && v5 == *(a2 + 1))
      {
        return 1;
      }

LABEL_64:

      return sub_1B0E46A78();
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0C8B3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEC && *(a1 + 97))
  {
    return (*a1 + 236);
  }

  v3 = *(a1 + 96);
  if (v3 <= 0x14)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0C8B440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEB)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 236;
    if (a3 >= 0xEC)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEC)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t Header.AutoSubmitted.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 28526;
  }

  if (a1 == 1)
  {
    return 0x6E65672D6F747561;
  }

  return 0x7065722D6F747561;
}

uint64_t sub_1B0C8B51C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65672D6F747561;
  v4 = 0xEE00646574617265;
  if (v2 != 1)
  {
    v3 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 28526;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x6E65672D6F747561;
  v8 = 0xEE00646574617265;
  if (*a2 != 1)
  {
    v7 = 0x7065722D6F747561;
    v8 = 0xEC0000006465696CLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 28526;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B0E46A78();
  }

  return v11 & 1;
}

unint64_t sub_1B0C8B640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B0C8B670(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEE00646574617265;
  v5 = 0x6E65672D6F747561;
  if (v2 != 1)
  {
    v5 = 0x7065722D6F747561;
    v4 = 0xEC0000006465696CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28526;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B0C8B6D8()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8B784(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C8B81C(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t _s9IMAP2MIME6HeaderO13AutoSubmittedO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0C8B914()
{
  result = qword_1EB6E5F68;
  if (!qword_1EB6E5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F68);
  }

  return result;
}

uint64_t Header.Priority.init(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v1 = 0;
  }

  return v1 | (((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL) << 8);
}

uint64_t Header.Priority.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8BA1C()
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0C8BA90(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C8BB64()
{
  result = qword_1EB6E5F70;
  if (!qword_1EB6E5F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F70);
  }

  return result;
}

uint64_t sub_1B0C8BBC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    result = sub_1B0CB4AF8(0, v3, result, a2);
    v7 = result;
    v8 = v4;
    v9 = v5;
    if (result == v4)
    {
      v10 = 1;
      v11 = result;
    }

    else
    {
      if (result <= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = result;
      }

      v11 = result;
      while (1)
      {
        if (v12 == v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        v13 = *(v5 + v11) - 48;
        v10 = v13 < 0xA;
        if (v13 >= 0xA)
        {
          break;
        }

        if (v4 == ++v11)
        {
          v11 = v4;
          break;
        }
      }

      if (v11 < result)
      {
        goto LABEL_41;
      }
    }

    if (v4 < v11)
    {
      goto LABEL_42;
    }

    v14 = v11 - result;
    if (v11 == result)
    {
      goto LABEL_19;
    }

    result = sub_1B0433338(result, v11, v5, v6);
    if (result > 8)
    {
      goto LABEL_19;
    }

    if (!v9 || (v17 = (v9 + v7)) == 0)
    {
      if (!v10)
      {
        v15 = 0;
LABEL_32:
        if (v11 >= v8)
        {
          goto LABEL_43;
        }

        if (*(v9 + v11) == 32)
        {
LABEL_34:
          if (v15 - 6 > 0xFFFFFFFFFFFFFFFALL)
          {
            v16 = 0;
            return v15 | (v16 << 8);
          }
        }
      }

LABEL_19:
      LOBYTE(v15) = 0;
      v16 = 1;
      return v15 | (v16 << 8);
    }

    v15 = 0;
    while (is_mul_ok(v15, 0xAuLL))
    {
      v18 = *v17 - 48;
      if ((v18 & 0xFFFFFF00) != 0)
      {
        goto LABEL_38;
      }

      v19 = 10 * v15;
      v20 = __CFADD__(v19, v18);
      v15 = v19 + v18;
      if (v20)
      {
        goto LABEL_39;
      }

      ++v17;
      if (!--v14)
      {
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1B0C8BD64(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = isStackAllocationSafe;
  v31 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

LABEL_5:
    if (v10 <= 1024)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  isStackAllocationSafe = sub_1B0E44DC8();
  v10 = isStackAllocationSafe;
  if ((isStackAllocationSafe & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_18:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v23 = swift_slowAlloc();
    sub_1B0C8C0D4(v23, v10, v8, &v29);
    if (!v4)
    {
      MEMORY[0x1B272C230](v23, -1, -1);
      v19 = v29;
      v21 = v30;
      goto LABEL_13;
    }

    MEMORY[0x1B272C230](v23, -1, -1);
    v5 = v4;
    goto LABEL_12;
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v12 = v26 - v11;
  sub_1B0E462A8();
  if ((v13 & 1) == 0)
  {
    v14 = *v8;
    *(swift_allocObject() + 16) = v14;
    v15 = sub_1B0C8C34C(v12, v10, 0, 0, 1, v14);
    if (!v4)
    {
      if ((v15 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v26[1] = v26;
        v27 = a4;
        if (v15 >= 1025)
        {
          v24 = v15;
          v15 = swift_stdlib_isStackAllocationSafe();
          if ((v15 & 1) == 0)
          {
            v25 = swift_slowAlloc();
            sub_1B0C8C48C(v25, v24, sub_1B0C8C524, v12, v10, sub_1B0C8C314, v28);
            MEMORY[0x1B272C230](v25, -1, -1);

            a4 = v27;
            v19 = v28[0];
            v21 = v28[1];
            goto LABEL_13;
          }
        }

        MEMORY[0x1EEE9AC00](v15);
        v18 = sub_1B0C8C34C(v12, v10, v26 - v16, v17, 0, v14);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = sub_1B0E44C68();
          v21 = v22;

          a4 = v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_willThrow();
LABEL_12:
    v29 = a2;
    v30 = a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0E44ED8();
    v21 = v20;

LABEL_13:
    *a4 = v19;
    a4[1] = v21;
    return;
  }

  __break(1u);
}

uint64_t sub_1B0C8C0D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, UIDNA **a5@<X4>, uint64_t *a6@<X8>)
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_15;
  }

  sub_1B0E462A8();
  if (v11)
  {
    goto LABEL_16;
  }

  v12 = *a5;
  *(swift_allocObject() + 16) = v12;
  isStackAllocationSafe = sub_1B0C8C34C(a1, a2, 0, 0, 1, v12);
  if (v6)
  {
  }

  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (isStackAllocationSafe >= 1025)
  {
    v21 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      sub_1B0C8C48C(v23, v22, sub_1B0C8C5A8, a1, a2, sub_1B0C8C314, v25);
      MEMORY[0x1B272C230](v23, -1, -1);

      v18 = v25[0];
      v20 = v25[1];
      goto LABEL_10;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v16 = sub_1B0C8C34C(a1, a2, &v25[-1] - v14, v15, 0, v12);
  if (v16 < 0)
  {
    goto LABEL_14;
  }

  v18 = sub_1B0E44C68();
  v20 = v19;

LABEL_10:
  *a6 = v18;
  a6[1] = v20;
  return result;
}

uint64_t sub_1B0C8C314@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1B0E44C68();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B0C8C34C(char *name, uint64_t length, char *dest, uint64_t capacity, char a5, UIDNA *idna)
{
  v15 = *MEMORY[0x1E69E9840];
  pErrorCode = U_ZERO_ERROR;
  pInfo.size = 16;
  *&pInfo.isTransitionalDifferent = 0;
  *&pInfo.reservedI2 = 0;
  if (length < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (length > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a5 & 1) == 0)
  {
    if (capacity >= 0xFFFFFFFF80000000)
    {
      if (capacity <= 0x7FFFFFFF)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LODWORD(capacity) = 0;
  dest = 0;
LABEL_7:
  result = uidna_nameToASCII_UTF8(idna, name, length, dest, capacity, &pInfo, &pErrorCode);
  v10 = pErrorCode;
  if (((a5 & 1) == 0 || pErrorCode != U_BUFFER_OVERFLOW_ERROR) && (pErrorCode > U_ZERO_ERROR || pInfo.errors))
  {
    v11 = result;
    sub_1B0C8C544();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();
    return v11;
  }

  return result;
}

uint64_t sub_1B0C8C48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *(*a6)(void *__return_ptr, uint64_t, void)@<X6>, void *a7@<X8>)
{
  result = a3(a4, a5, a1, a2, 0);
  if (!v7)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = a6(v13, a1, result);
      v12 = v13[1];
      *a7 = v13[0];
      a7[1] = v12;
    }
  }

  return result;
}

unint64_t sub_1B0C8C544()
{
  result = qword_1EB6E5F78;
  if (!qword_1EB6E5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5F78);
  }

  return result;
}

uint64_t sub_1B0C8C5C0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1B0E469B8() & 1;
  }
}

uint64_t IndexableMessageInfo.bcc.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IndexableMessageInfo.cc.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B0C8C870(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t IndexableMessageInfo.messageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IndexableMessageInfo.messageID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IndexableMessageInfo.subject.getter()
{
  v1 = *(v0 + *(type metadata accessor for IndexableMessageInfo(0) + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IndexableMessageInfo.subject.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IndexableMessageInfo(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double IndexableMessageInfo.to.getter()
{
  type metadata accessor for IndexableMessageInfo(0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t IndexableMessageInfo.to.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.priority.setter(__int16 a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  v4 = (v1 + *(result + 44));
  *v4 = a1;
  v4[1] = HIBYTE(a1) & 1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInTo.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.hasDistributionListInCC.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.isAutoReplied.setter(char a1)
{
  result = type metadata accessor for IndexableMessageInfo(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t IndexableMessageInfo.content.getter()
{
  v1 = v0 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v2 = *v1;
  sub_1B08AA33C(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t IndexableMessageInfo.content.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  result = sub_1B0C8CEB8(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t sub_1B0C8CEB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B08A9938();
  }

  return result;
}

double IndexableMessageInfo.attachments.getter()
{
  type metadata accessor for IndexableMessageInfo(0);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t IndexableMessageInfo.attachments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IndexableMessageInfo(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IndexableMessageInfo.init(bcc:cc:date:from:messageID:subject:to:priority:hasDistributionListInTo:hasDistributionListInCC:isAutoReplied:content:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  v21 = type metadata accessor for IndexableMessageInfo(0);
  v22 = v21[6];
  v23 = sub_1B0E43108();
  (*(*(v23 - 8) + 56))(&a9[v22], 1, 1, v23);
  v24 = &a9[v21[7]];
  *(v24 + 4) = 0u;
  *(v24 + 5) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = &a9[v21[8]];
  v26 = &a9[v21[9]];
  v27 = &a9[v21[11]];
  v28 = &a9[v21[15]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B0C8C870(a3, &a9[v22], &unk_1EB6E2990, &qword_1B0E9B060);
  result = sub_1B0C8C870(a4, v24, &qword_1EB6E5F80, &qword_1B0EDF378);
  *v25 = a5;
  *(v25 + 1) = a6;
  *v26 = a7;
  *(v26 + 1) = a8;
  *&a9[v21[10]] = a10;
  *v27 = a11;
  v27[1] = a12 & 1;
  a9[v21[12]] = a13;
  a9[v21[13]] = a14;
  a9[v21[14]] = a15;
  *v28 = a16;
  *(v28 + 1) = a17;
  v28[16] = a18;
  *&a9[v21[16]] = a19;
  return result;
}

uint64_t IndexableMessageInfo.Content.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E44B68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44B48();
  v6 = sub_1B0E44AE8();
  (*(v3 + 8))(v5, v2);
  return v6;
}

unint64_t IndexableMessageInfo.Content.byteCount.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1B0E44DC8();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    return HIBYTE(a2) & 0xF;
  }

  return a1 & 0xFFFFFFFFFFFFLL;
}

uint64_t IndexableMessageInfo.Attachment.filename.getter()
{
  v1 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t IndexableMessageInfo.Attachment.filename.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t static IndexableMessageInfo.Attachment.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    v6 = *(a1 + 48);
    v7 = *(a2 + 48);
    if (v6)
    {
      if (v7 && (*(a1 + 40) == *(a2 + 40) && v6 == v7 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0C8D44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 32);
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  if (_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v9, v11))
  {
    if (v3)
    {
      if (v6 && (v4 == v7 && v3 == v6 || (sub_1B0E46A78() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IndexableMessageInfo.init(message:maximumTextCount:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for IndexableMessageInfo(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v20 = *(v19 + 24);
  v21 = sub_1B0E43108();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  v22 = &v18[v12[7]];
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v23 = &v18[v12[8]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v18[v12[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v18[v12[11]] = 256;
  v25 = &v18[v12[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = -1;
  sub_1B0C9A3F4(a1, a2, v34, v11);
  sub_1B0C90394(a1, type metadata accessor for Message);
  sub_1B0C90324(v11, v8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B0398EFC(v8, &unk_1EB6E2980, &qword_1B0EDF380);
    sub_1B0398EFC(&v18[v20], &unk_1EB6E2990, &qword_1B0E9B060);
    v26 = *(v22 + 3);
    v38 = *(v22 + 2);
    v39 = v26;
    v27 = *(v22 + 5);
    v40 = *(v22 + 4);
    v41 = v27;
    v28 = *(v22 + 1);
    v36 = *v22;
    v37 = v28;
    sub_1B0398EFC(&v36, &qword_1EB6E5F80, &qword_1B0EDF378);
    return (*(v13 + 56))(v35, 1, 1, v12);
  }

  else
  {
    sub_1B08A9984(v8, v15);
    sub_1B0398EFC(&v18[v20], &unk_1EB6E2990, &qword_1B0E9B060);
    v30 = *(v22 + 3);
    v38 = *(v22 + 2);
    v39 = v30;
    v31 = *(v22 + 5);
    v40 = *(v22 + 4);
    v41 = v31;
    v32 = *(v22 + 1);
    v36 = *v22;
    v37 = v32;
    sub_1B0398EFC(&v36, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B08A9984(v15, v18);
    v33 = v35;
    sub_1B08A9C20(v18, v35);
    (*(v13 + 56))(v33, 0, 1, v12);
    return sub_1B0C90394(v18, type metadata accessor for IndexableMessageInfo);
  }
}

uint64_t sub_1B0C8D8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v153 = a6;
  v147 = a5;
  v148 = a1;
  v150 = a3;
  v151 = a4;
  v149 = a2;
  v146 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v135 - v8;
  v154 = (type metadata accessor for IndexableMessageInfo.InfoAndListID(0) - 8);
  MEMORY[0x1EEE9AC00](v154);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexableMessageInfo(0);
  v145 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_1B0E43108();
  v18 = *(*(v17 - 8) + 56);
  v142 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[7]];
  *(v19 + 4) = 0u;
  *(v19 + 5) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v143 = v19;
  v144 = v14;
  v20 = &v14[v12[8]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v14[v12[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v14[v12[11]] = 256;
  v22 = &v14[v12[15]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = -1;
  v23 = v9;
  v18(v9, 1, 1, v17);
  v24 = v12[6];
  v18(&v11[v24], 1, 1, v17);
  v25 = &v11[v12[7]];
  *(v25 + 4) = 0u;
  *(v25 + 5) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = &v11[v12[8]];
  v27 = &v11[v12[9]];
  v152 = v12[11];
  v28 = &v11[v12[15]];
  v29 = MEMORY[0x1E69E7CC0];
  *v11 = MEMORY[0x1E69E7CC0];
  *(v11 + 1) = v29;
  sub_1B0C8C870(v23, &v11[v24], &unk_1EB6E2990, &qword_1B0E9B060);
  v30 = *(v25 + 3);
  v206[2] = *(v25 + 2);
  v206[3] = v30;
  v31 = *(v25 + 5);
  v206[4] = *(v25 + 4);
  v206[5] = v31;
  v32 = *(v25 + 1);
  v206[0] = *v25;
  v206[1] = v32;
  sub_1B0398EFC(v206, &qword_1EB6E5F80, &qword_1B0EDF378);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *(v25 + 4) = 0u;
  *(v25 + 5) = 0u;
  *v26 = 0;
  *(v26 + 1) = 0;
  *v27 = 0;
  *(v27 + 1) = 0;
  v138 = v12[10];
  *&v11[v138] = v29;
  *&v11[v152] = 256;
  v136 = v12[12];
  v11[v136] = 0;
  v137 = v12[13];
  v11[v137] = 0;
  v11[v12[14]] = 0;
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = -1;
  v140 = v12;
  *&v11[v12[16]] = v29;
  v152 = *(v154 + 7);
  v154 = v11;
  *&v11[v152] = MEMORY[0x1E69E7CD0];
  v189 = 0;
  v33 = sub_1B0CA3C44(v148, v149, v150, v151);
  v34 = sub_1B0CA3EA4(v29, v33);
  if (v34)
  {
    v36 = v34;
    v37 = v35;
    *&v190 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
    sub_1B0CA4364(v36, v37, 0, &v190, v33);

    v38 = v190;
  }

  else
  {

    v38 = sub_1B0C64CBC(MEMORY[0x1E69E7CC0]);
  }

  v39 = swift_allocObject();
  v141 = &v135;
  *(v39 + 16) = v38;
  MEMORY[0x1EEE9AC00](v39);
  v40 = v153;
  v41 = v147;
  *(&v135 - 4) = v154;
  *(&v135 - 3) = v41;
  *(&v135 - 2) = v40;
  MEMORY[0x1EEE9AC00](v42);
  *(&v135 - 4) = &v189;
  *(&v135 - 3) = v43;
  *(&v135 - 2) = v40;
  v44 = swift_allocObject();
  v45 = v44 + 1;
  sub_1B0C835A8(&v178);
  v46 = v187;
  v44[9] = v186;
  v44[10] = v46;
  v44[11] = *v188;
  *(v44 + 185) = *&v188[9];
  v47 = v183;
  v44[5] = v182;
  v44[6] = v47;
  v48 = v185;
  v44[7] = v184;
  v44[8] = v48;
  v49 = v179;
  v44[1] = v178;
  v44[2] = v49;
  v50 = v181;
  v44[3] = v180;
  v44[4] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = 2;
  v52 = (v51 + 16);
  MEMORY[0x1EEE9AC00](v51);
  *(&v135 - 4) = v44;
  *(&v135 - 3) = v53;
  v139 = v53;
  *(&v135 - 2) = sub_1B0C90760;
  *(&v135 - 1) = (&v135 - 6);
  MEMORY[0x1EEE9AC00](v53);
  *(&v135 - 4) = (v44 + 1);
  *(&v135 - 3) = sub_1B0C9079C;
  *(&v135 - 2) = (&v135 - 6);

  v54 = 0;
  sub_1B0CA33D0(3, v148, v149, v150, v151);
  v201 = MEMORY[0x1E69E7CC0];
  v202 = v55;
  v203 = v56;
  v204 = v57;
  v205 = v58;
  sub_1B0CA286C(sub_1B0C844A0, (&v135 - 6), sub_1B0C844C0, (&v135 - 6), sub_1B0C86A08, v39);
  swift_beginAccess();
  v103 = v153;
  if (*v52 == 2 && (swift_beginAccess(), v104 = v44[10], v105 = v44[8], v164 = v44[9], v165 = v104, v106 = v44[10], v166[0] = v44[11], *(v166 + 9) = *(v44 + 185), v107 = v44[6], v108 = v44[4], v160 = v44[5], v161 = v107, v109 = v44[6], v110 = v44[8], v162 = v44[7], v163 = v110, v111 = v44[2], v157[0] = *v45, v157[1] = v111, v112 = v44[4], v114 = *v45, v113 = v44[2], v158 = v44[3], v159 = v112, v175 = v164, v176 = v106, v177[0] = v44[11], *(v177 + 9) = *(v44 + 185), v171 = v160, v172 = v109, v173 = v162, v174 = v105, v167 = v114, v168 = v113, v169 = v158, v170 = v108, sub_1B03BCF14(&v167) != 1))
  {
    v198 = v175;
    v199 = v176;
    v200[0] = v177[0];
    *(v200 + 9) = *(v177 + 9);
    v194 = v171;
    v195 = v172;
    v196 = v173;
    v197 = v174;
    v190 = v167;
    v191 = v168;
    v192 = v169;
    v193 = v170;

    sub_1B03B5C80(v157, v155, &qword_1EB6E5F00, &unk_1B0EDE440);
    sub_1B0C8E684(v147, &v190, v103);
    sub_1B0398EFC(v157, &qword_1EB6E5F00, &unk_1B0EDE440);
    *v52 = 2;
    v125 = v44[10];
    v155[8] = v44[9];
    v155[9] = v125;
    v156[0] = v44[11];
    *(v156 + 9) = *(v44 + 185);
    v126 = v44[6];
    v155[4] = v44[5];
    v155[5] = v126;
    v127 = v44[8];
    v155[6] = v44[7];
    v155[7] = v127;
    v128 = v44[2];
    v155[0] = *v45;
    v155[1] = v128;
    v129 = v44[4];
    v155[2] = v44[3];
    v155[3] = v129;
    v130 = v187;
    v44[9] = v186;
    v44[10] = v130;
    v44[11] = *v188;
    *(v44 + 185) = *&v188[9];
    v131 = v183;
    v44[5] = v182;
    v44[6] = v131;
    v132 = v185;
    v44[7] = v184;
    v44[8] = v132;
    v133 = v179;
    *v45 = v178;
    v44[2] = v133;
    v134 = v181;
    v44[3] = v180;
    v44[4] = v134;
    sub_1B0398EFC(v155, &qword_1EB6E5F00, &unk_1B0EDE440);

    v54 = 0;
  }

  else
  {
    swift_beginAccess();
    v115 = v44[10];
    v198 = v44[9];
    v199 = v115;
    v200[0] = v44[11];
    *(v200 + 9) = *(v44 + 185);
    v116 = v44[6];
    v194 = v44[5];
    v195 = v116;
    v117 = v44[8];
    v196 = v44[7];
    v197 = v117;
    v118 = v44[2];
    v190 = *v45;
    v191 = v118;
    v119 = v44[4];
    v192 = v44[3];
    v193 = v119;
    v120 = v187;
    v44[9] = v186;
    v44[10] = v120;
    v44[11] = *v188;
    *(v44 + 185) = *&v188[9];
    v121 = v183;
    v44[5] = v182;
    v44[6] = v121;
    v122 = v185;
    v44[7] = v184;
    v44[8] = v122;
    v123 = v179;
    *v45 = v178;
    v44[2] = v123;
    v124 = v181;
    v44[3] = v180;
    v44[4] = v124;

    sub_1B0398EFC(&v190, &qword_1EB6E5F00, &unk_1B0EDE440);
  }

  if ((v189 & 1) == 0)
  {

    sub_1B0C90394(v154, type metadata accessor for IndexableMessageInfo.InfoAndListID);
    sub_1B0398EFC(&v144[v142], &unk_1EB6E2990, &qword_1B0E9B060);
    v63 = *(v143 + 3);
    v169 = *(v143 + 2);
    v170 = v63;
    v64 = *(v143 + 5);
    v171 = *(v143 + 4);
    v172 = v64;
    v65 = *(v143 + 1);
    v167 = *v143;
    v168 = v65;
    sub_1B0398EFC(&v167, &qword_1EB6E5F80, &qword_1B0EDF378);
    return (*(v145 + 56))(v146, 1, 1, v140);
  }

  v59 = *&v154[v138];
  v60 = *(v59 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v60)
  {
LABEL_22:
    v151 = v54;

    goto LABEL_23;
  }

  v61 = 0;
  v62 = v59 + 32;
  v150 = v59 + 32;
  while (1)
  {
    v67 = (v62 + 96 * v61);
    v68 = *v67;
    v168 = v67[1];
    v69 = v67[2];
    v70 = v67[3];
    v71 = v67[5];
    v171 = v67[4];
    v172 = v71;
    v169 = v69;
    v170 = v70;
    v167 = v68;
    v72 = *&v154[v152];
    if (!*(v72 + 16))
    {
      goto LABEL_10;
    }

    v151 = v54;
    v73 = v168;
    sub_1B0E46C28();
    sub_1B0C826C0(&v167, v157);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v74 = sub_1B0E46CB8();
    v75 = -1 << *(v72 + 32);
    v76 = v74 & ~v75;
    if ((*(v72 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
    {
      break;
    }

LABEL_9:

    sub_1B0C8274C(&v167);
    v62 = v150;
    v54 = v151;
LABEL_10:
    if (++v61 == v60)
    {
      goto LABEL_22;
    }
  }

  v77 = ~v75;
  while (1)
  {
    v78 = (*(v72 + 48) + 16 * v76);
    v79 = *v78 == v73 && v78[1] == *(&v73 + 1);
    if (v79 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v76 = (v76 + 1) & v77;
    if (((*(v72 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_1B0C8274C(&v167);

  v154[v136] = 1;
LABEL_23:
  v80 = *(v154 + 1);
  v81 = *(v80 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v81)
  {
LABEL_38:

    goto LABEL_39;
  }

  v82 = 0;
  v83 = v80 + 32;
  v150 = v80 + 32;
  while (2)
  {
    v84 = (v83 + 96 * v82);
    v85 = *v84;
    v168 = v84[1];
    v86 = v84[2];
    v87 = v84[3];
    v88 = v84[5];
    v171 = v84[4];
    v172 = v88;
    v169 = v86;
    v170 = v87;
    v167 = v85;
    v89 = *&v154[v152];
    if (!*(v89 + 16))
    {
LABEL_26:
      if (++v82 == v81)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v90 = v168;
  sub_1B0E46C28();
  sub_1B0C826C0(&v167, v157);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v91 = sub_1B0E46CB8();
  v92 = -1 << *(v89 + 32);
  v93 = v91 & ~v92;
  if (((*(v89 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
  {
LABEL_25:

    sub_1B0C8274C(&v167);
    v83 = v150;
    goto LABEL_26;
  }

  v94 = ~v92;
  while (1)
  {
    v95 = (*(v89 + 48) + 16 * v93);
    v96 = *v95 == v90 && v95[1] == *(&v90 + 1);
    if (v96 || (sub_1B0E46A78() & 1) != 0)
    {
      break;
    }

    v93 = (v93 + 1) & v94;
    if (((*(v89 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  sub_1B0C8274C(&v167);

  v154[v137] = 1;
LABEL_39:
  v97 = v144;
  sub_1B0398EFC(&v144[v142], &unk_1EB6E2990, &qword_1B0E9B060);
  v98 = *(v143 + 3);
  v169 = *(v143 + 2);
  v170 = v98;
  v99 = *(v143 + 5);
  v171 = *(v143 + 4);
  v172 = v99;
  v100 = *(v143 + 1);
  v167 = *v143;
  v168 = v100;
  sub_1B0398EFC(&v167, &qword_1EB6E5F80, &qword_1B0EDF378);
  v101 = v154;
  sub_1B08A9C20(v154, v97);
  sub_1B0C90394(v101, type metadata accessor for IndexableMessageInfo.InfoAndListID);
  v102 = v146;
  sub_1B08A9C20(v97, v146);
  (*(v145 + 56))(v102, 0, 1, v140);
  return sub_1B0C90394(v97, type metadata accessor for IndexableMessageInfo);
}

uint64_t sub_1B0C8E684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1000000000)
  {
    v10 = a1;
    v11 = v3 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
    v12 = *(v11 + 16);
    if (v12 == 255)
    {
      LOBYTE(v14) = 0;
      v16 = v10;
    }

    else
    {
      v4 = *v11;
      v13 = *(v11 + 8);
      sub_1B08AA0C4();
      v14 = sub_1B0E44CF8();
      result = sub_1B0C8CEB8(v4, v13, v12);
      v16 = v10 - v14;
      if (__OFSUB__(v10, v14))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    v17 = (v16 * 5) >> 64;
    v18 = 5 * v16;
    if (v17 != v18 >> 63)
    {
      __break(1u);
LABEL_30:
      result = sub_1B0C81520(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
LABEL_19:
      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        result = sub_1B0C81520((v26 > 1), v27 + 1, 1, v5);
        v28 = v27 + 1;
        v5 = result;
      }

      *(v5 + 16) = v28;
      v29 = v5 + 56 * v27;
      *(v29 + 32) = a3;
      *(v29 + 40) = a2;
      *(v29 + 48) = v10;
      *(v29 + 56) = v12;
      *(v29 + 64) = v14;
      *(v29 + 72) = v4;
      *(v29 + 80) = v30;
      *(v3 + v6) = v5;
      return result;
    }

    v9 = v18 & ~(v18 >> 63);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1B0C83634(a2, v31);
  sub_1B0C85B6C(a2, v9, a3, v32);
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = v32[7];
  v33 = v32[0];
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  result = sub_1B0C8699C(&v33);
  if (result == 1)
  {
    return result;
  }

  v19 = type metadata accessor for IndexableMessageInfo(0);
  v4 = v3 + *(v19 + 60);
  v10 = *v4;
  a2 = *(v4 + 8);
  LODWORD(a3) = *(v4 + 16);
  v31[6] = v39;
  v31[7] = v40;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v20 = sub_1B08C4EF0(v31);
  result = sub_1B0507400(v31);
  if (v20)
  {
    if (v20 == 1)
    {
      v22 = *result;
      v21 = *(result + 8);
      if (a3 != 255)
      {
        if (a3)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          MEMORY[0x1B2726E80](v22, v21);
          sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
          result = sub_1B0C8CEB8(v10, a2, a3);
          *v4 = v10;
          *(v4 + 8) = a2;
LABEL_25:
          *(v4 + 16) = 1;
          return result;
        }

        result = sub_1B0C8CEB8(v10, a2, a3);
      }

      *v4 = v22;
      *(v4 + 8) = v21;
      goto LABEL_25;
    }

    a3 = *(result + 8);
    a2 = *(result + 16);
    v10 = *(result + 24);
    v12 = *(result + 32);
    LOBYTE(v14) = *(result + 40);
    v4 = sub_1B0C7A730(*(result + 72));
    v30 = v25;
    sub_1B07ACBF8(a3, a2, v10, v12, v14);
    sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
    v6 = *(v19 + 64);
    v5 = *(v3 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

LABEL_15:
  v24 = *result;
  v23 = *(result + 8);
  if (a3 == 255)
  {
    *v4 = v24;
    *(v4 + 8) = v23;
  }

  else
  {
    if (a3)
    {
      return sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](2570, 0xE200000000000000);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](v24, v23);
    sub_1B0398EFC(v32, &qword_1EB6E5F30, "nP\b");

    result = sub_1B0C8CEB8(v10, a2, a3);
    *v4 = v10;
    *(v4 + 8) = a2;
  }

  *(v4 + 16) = 0;
  return result;
}

unint64_t sub_1B0C8EA30(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, void *a8)
{
  *a6 = 1;
  if (((1 << (*(result + 32) >> 59)) & 0x1343F1) == 0)
  {
    v8 = result;

    sub_1B0C907A8(v8, v12);
    result = sub_1B0C8A0E8(v8, a8, v10);
    if (v11 != 255)
    {
      v12[2] = v10[2];
      v12[3] = v10[3];
      v12[4] = v10[4];
      v12[5] = v10[5];
      v12[0] = v10[0];
      v12[1] = v10[1];
      v13 = v11;
      sub_1B0C8EB10(v12);
      return sub_1B0398EFC(v10, &qword_1EB6E5F88, &unk_1B0EE0E00);
    }
  }

  return result;
}

void sub_1B0C8EB10(uint64_t *a1)
{
  v3 = a1[1];
  v54 = *a1;
  v4 = sub_1B0E43108();
  *&v53 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  switch(*(a1 + 96))
  {
    case 1:
      v19 = v54;
      v20 = *(type metadata accessor for IndexableMessageInfo(0) + 56);
      if (v19)
      {
        *(v1 + v20) = 1;
      }

      else
      {
        *(v1 + v20) = 0;
      }

      break;
    case 2:
      v21 = v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *v1 = v21;
      break;
    case 3:
      v37 = v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v1[1] = v37;
      break;
    case 0xA:
      v51 = v3;
      sub_1B0C91E60(v54, v3, v12);
      v41 = *(v53 + 48);
      v42 = v41(v12, 1, v4);
      v52 = v41;
      if (v42 == 1)
      {
        sub_1B0C90B4C(v15);
        if (v41(v12, 1, v4) != 1)
        {
          sub_1B0398EFC(v12, &unk_1EB6E2990, &qword_1B0E9B060);
        }
      }

      else
      {
        v47 = v53;
        (*(v53 + 32))(v15, v12, v4);
        (*(v47 + 56))(v15, 0, 1, v4);
      }

      sub_1B03B5C80(v15, v9, &unk_1EB6E2990, &qword_1B0E9B060);
      v48 = 1;
      if (v52(v9, 1, v4) != 1)
      {
        v49 = v53;
        (*(v53 + 32))(v6, v9, v4);
        sub_1B0E43028();
        sub_1B0E43018();
        (*(v49 + 8))(v6, v4);
        v48 = 0;
      }

      sub_1B0398EFC(v15, &unk_1EB6E2990, &qword_1B0E9B060);
      (*(v53 + 56))(v18, v48, 1, v4);
      v50 = type metadata accessor for IndexableMessageInfo(0);
      sub_1B0C8C870(v18, v1 + *(v50 + 24), &unk_1EB6E2990, &qword_1B0E9B060);
      break;
    case 0xB:
      v22 = *(a1 + 3);
      v56 = *(a1 + 2);
      v57 = v22;
      v23 = *(a1 + 5);
      v58 = *(a1 + 4);
      v59 = v23;
      v24 = v1 + *(type metadata accessor for IndexableMessageInfo(0) + 28);
      v25 = *(v24 + 3);
      v60[2] = *(v24 + 2);
      v60[3] = v25;
      v26 = *(v24 + 5);
      v60[4] = *(v24 + 4);
      v60[5] = v26;
      v27 = *(v24 + 1);
      v60[0] = *v24;
      v60[1] = v27;
      v28 = v54;
      v61[0] = v54;
      v61[1] = v3;
      v29 = *(a1 + 2);
      v53 = *(a1 + 1);
      v62 = *(a1 + 1);
      v63 = v29;
      v30 = *(a1 + 3);
      v31 = *(a1 + 4);
      v32 = *(a1 + 5);
      v67 = *(a1 + 96);
      v66 = v32;
      v65 = v31;
      v64 = v30;
      sub_1B0C826C0(v61, &v55);
      sub_1B0398EFC(v60, &qword_1EB6E5F80, &qword_1B0EDF378);
      *v24 = v28;
      *(v24 + 1) = v3;
      v33 = v56;
      v34 = v57;
      *(v24 + 1) = v53;
      *(v24 + 2) = v33;
      v35 = v58;
      v36 = v59;
      *(v24 + 3) = v34;
      *(v24 + 4) = v35;
      *(v24 + 5) = v36;
      break;
    case 0xC:
      type metadata accessor for IndexableMessageInfo.InfoAndListID(0);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C8F0B0(v61, v54, v3);

      break;
    case 0xD:
      v38 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 32));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *v38 = v54;
      v38[1] = v3;
      break;
    case 0xF:
      *(v1 + *(type metadata accessor for IndexableMessageInfo(0) + 44)) = v54;
      break;
    case 0x12:
      sub_1B0C90804(a1, v61);
      v43 = sub_1B0CB6568(v54, v3);
      v45 = v44;
      v46 = (v1 + *(type metadata accessor for IndexableMessageInfo(0) + 36));

      *v46 = v43;
      v46[1] = v45;
      break;
    case 0x13:
      v39 = *(type metadata accessor for IndexableMessageInfo(0) + 40);
      v40 = v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      *(v1 + v39) = v40;
      break;
    default:
      return;
  }
}

uint64_t sub_1B0C8F0B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v8 = sub_1B0E46CB8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0C8F460(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B0C8F200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B0E46C28();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1B0C8F460(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B0C8F200(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1B0C8F5E0();
      goto LABEL_16;
    }

    sub_1B0C8F73C(v8 + 1);
  }

  v10 = *v4;
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v11 = sub_1B0E46CB8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1B0E46B98();
  __break(1u);
}

void sub_1B0C8F5E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1B0C8F73C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5F90, "RQ\b");
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      result = sub_1B0E46CB8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0C8F974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t _s9IMAP2MIME20IndexableMessageInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1B0E43108();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1720, &qword_1B0E99908);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  if ((sub_1B0C789C8(*a1, *a2) & 1) == 0 || (sub_1B0C789C8(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_44;
  }

  v14 = type metadata accessor for IndexableMessageInfo(0);
  v93 = a2;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  v91 = v14;
  v92 = a1;
  sub_1B03B5C80(a1 + v15, v13, &unk_1EB6E2990, &qword_1B0E9B060);
  v17 = v93 + v15;
  v18 = v93;
  sub_1B03B5C80(v17, &v13[v16], &unk_1EB6E2990, &qword_1B0E9B060);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_1B0398EFC(v13, &unk_1EB6E2990, &qword_1B0E9B060);
      goto LABEL_10;
    }

LABEL_8:
    v20 = &qword_1EB6E1720;
    v21 = &qword_1B0E99908;
    v22 = v13;
LABEL_43:
    sub_1B0398EFC(v22, v20, v21);
    goto LABEL_44;
  }

  sub_1B03B5C80(v13, v10, &unk_1EB6E2990, &qword_1B0E9B060);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1B06BC63C();
  v23 = sub_1B0E44A28();
  v24 = *(v5 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_1B0398EFC(v13, &unk_1EB6E2990, &qword_1B0E9B060);
  if ((v23 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_10:
  v25 = v91;
  v26 = (v92 + v91[7]);
  v27 = v26[3];
  v116 = v26[2];
  v117 = v27;
  v28 = v26[5];
  v118 = v26[4];
  v119 = v28;
  v29 = v26[1];
  v115[0] = *v26;
  v115[1] = v29;
  v30 = (v18 + v91[7]);
  v31 = v30[3];
  v120[2] = v30[2];
  v120[3] = v31;
  v32 = v30[5];
  v120[4] = v30[4];
  v120[5] = v32;
  v33 = v30[1];
  v120[0] = *v30;
  v120[1] = v33;
  v34 = v115[0];
  v35 = v29;
  v90 = *(&v119 + 1);
  v36 = *(&v33 + 1);
  if (!*(&v29 + 1))
  {
    if (!*(&v33 + 1))
    {
      v102 = v115[0];
      v103 = v29;
      v104 = v116;
      v105 = v117;
      v106 = v118;
      v107 = __PAIR128__(v90, v119);
      sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
      sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
      v51 = &v102;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (!*(&v33 + 1))
  {
LABEL_22:
    v102 = v115[0];
    v103 = v29;
    v104 = v116;
    v105 = v117;
    v106 = v118;
    *&v107 = v119;
    *(&v107 + 1) = v90;
    v108 = *v30;
    v109 = *(v30 + 2);
    v110 = *(&v33 + 1);
    v52 = v30[2];
    v53 = v30[3];
    v54 = v30[5];
    v113 = v30[4];
    v114 = v54;
    v111 = v52;
    v112 = v53;
    sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
    v20 = &unk_1EB6E5F98;
    v21 = &unk_1B0EDF650;
    v22 = &v102;
    goto LABEL_43;
  }

  v86 = *(&v117 + 1);
  v102 = *v30;
  v37 = *(v30 + 2);
  *&v103 = v37;
  *(&v103 + 1) = *(&v33 + 1);
  v38 = v30[3];
  v104 = v30[2];
  v105 = v38;
  v39 = v30[5];
  v106 = v30[4];
  v107 = v39;
  v41 = *(&v104 + 1);
  v40 = v104;
  v43 = *(&v105 + 1);
  v42 = v105;
  v85 = v119;
  v87 = v118;
  v89 = v117;
  v88 = v116;
  if (!*(&v115[0] + 1))
  {
    v81 = *(&v39 + 1);
    v82 = v39;
    v83 = *(&v106 + 1);
    v84 = v106;
    if (!*(&v102 + 1))
    {
      goto LABEL_16;
    }

LABEL_24:
    sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B0398EFC(&v102, &qword_1EB6E5F80, &qword_1B0EDF378);
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v86;
LABEL_42:
    v99 = v87;
    v100 = v85;
    v101 = v90;
    v22 = &v94;
    v20 = &qword_1EB6E5F80;
    v21 = &qword_1B0EDF378;
    goto LABEL_43;
  }

  if (!*(&v102 + 1))
  {
    goto LABEL_24;
  }

  v81 = *(&v39 + 1);
  v82 = v39;
  v83 = *(&v106 + 1);
  v84 = v106;
  if (v115[0] != v102)
  {
    v79 = v105;
    v80 = v104;
    v78 = *(&v105 + 1);
    v44 = sub_1B0E46A78();
    v43 = v78;
    v42 = v79;
    v40 = v80;
    if ((v44 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  if (v35 != __PAIR128__(v36, v37))
  {
    v80 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = sub_1B0E46A78();
    v43 = v47;
    v42 = v46;
    v41 = v45;
    v40 = v80;
    if ((v48 & 1) == 0)
    {
      sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
      sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
      v49 = v86;
      goto LABEL_41;
    }
  }

  v49 = v86;
  if ((sub_1B0C8C5C0(v88, *(&v88 + 1), v89, v86, v40, v41, v42, v43) & 1) == 0)
  {
    sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
    sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
LABEL_41:
    sub_1B0398EFC(&v102, &qword_1EB6E5F80, &qword_1B0EDF378);
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v49;
    goto LABEL_42;
  }

  v50 = v85;
  LODWORD(v84) = sub_1B0C8C5C0(v87, *(&v87 + 1), v85, v90, v84, v83, v82, v81);
  sub_1B03B5C80(v115, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
  sub_1B03B5C80(v120, &v94, &qword_1EB6E5F80, &qword_1B0EDF378);
  sub_1B0398EFC(&v102, &qword_1EB6E5F80, &qword_1B0EDF378);
  if ((v84 & 1) == 0)
  {
    v94 = v34;
    v95 = v35;
    v96 = v88;
    v97 = v89;
    v98 = v86;
    v99 = v87;
    v100 = v50;
    v101 = v90;
    v20 = &qword_1EB6E5F80;
    v21 = &qword_1B0EDF378;
    v22 = &v94;
    goto LABEL_43;
  }

  v94 = v34;
  v95 = v35;
  v96 = v88;
  v97 = v89;
  v98 = v86;
  v99 = v87;
  v100 = v50;
  v101 = v90;
  v51 = &v94;
LABEL_26:
  sub_1B0398EFC(v51, &qword_1EB6E5F80, &qword_1B0EDF378);
  v55 = v25[8];
  v56 = v92;
  v57 = (v92 + v55);
  v58 = *(v92 + v55 + 8);
  v59 = (v18 + v55);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v60)
  {
    goto LABEL_44;
  }

  v61 = v25[9];
  v62 = (v56 + v61);
  v63 = *(v56 + v61 + 8);
  v64 = (v18 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (v65)
  {
    goto LABEL_44;
  }

  if (sub_1B0C789C8(*(v56 + v25[10]), *(v18 + v25[10])))
  {
    v68 = v25[11];
    v69 = v56 + v68;
    v70 = *(v56 + v68 + 1);
    v71 = v18 + v68;
    v72 = *(v18 + v68 + 1);
    if (v70)
    {
      if (!v72)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (*v69 != *v71)
      {
        LOBYTE(v72) = 1;
      }

      if (v72)
      {
        goto LABEL_44;
      }
    }

    if (*(v56 + v25[12]) != *(v18 + v25[12]) || *(v56 + v25[13]) != *(v18 + v25[13]) || *(v56 + v25[14]) != *(v18 + v25[14]))
    {
      goto LABEL_44;
    }

    v73 = v25[15];
    v74 = (v56 + v73);
    v75 = *(v56 + v73 + 16);
    v76 = (v18 + v73);
    v77 = *(v18 + v73 + 16);
    if (v75 == 255)
    {
      if (v77 == 255)
      {
LABEL_69:
        v66 = sub_1B0C78E5C(*(v92 + v91[16]), *(v93 + v91[16]));
        return v66 & 1;
      }
    }

    else if (v77 != 255)
    {
      if (v75)
      {
        if ((v77 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if (v77)
      {
        goto LABEL_44;
      }

      if (*v74 == *v76 && v74[1] == v76[1] || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_44:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_1B0C90324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C90394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0C9041C(uint64_t a1)
{
  sub_1B0C90608(319, &qword_1EB6DB0B0, &type metadata for EmailAddress, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B04376A0(319);
    if (v2 <= 0x3F)
    {
      sub_1B0C90608(319, &qword_1EB6DB930, &type metadata for EmailAddress, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B0C90608(319, &qword_1EB6DB6A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B0C90608(319, &qword_1EB6DB8D0, &type metadata for Header.Priority, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1B0C90608(319, &qword_1EB6DB8E8, &type metadata for IndexableMessageInfo.Content, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B0C90608(319, &qword_1EB6DB090, &type metadata for IndexableMessageInfo.Attachment, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
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

void sub_1B0C90608(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B0C90674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1B0C906D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

void sub_1B0C90888(uint64_t a1)
{
  type metadata accessor for IndexableMessageInfo(319);
  if (v1 <= 0x3F)
  {
    sub_1B0C9090C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0C9090C(uint64_t a1)
{
  if (!qword_1EB6DAD08)
  {
    sub_1B0C90968();
    v1 = sub_1B0E45588();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DAD08);
    }
  }
}

unint64_t sub_1B0C90968()
{
  result = qword_1EB6DB8C8;
  if (!qword_1EB6DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB8C8);
  }

  return result;
}

uint64_t InternetMessageDate.parse()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  sub_1B0C91E60(a1, a2, &v13[-v7]);
  v9 = sub_1B0E43108();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    sub_1B0C90B4C(a3);
    result = v11(v8, 1, v9);
    if (result != 1)
    {
      return sub_1B0398EFC(v8, &unk_1EB6E2990, &qword_1B0E9B060);
    }
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1B0C90B4C@<X0>(char *a2@<X8>)
{
  v38 = a2;
  v2 = sub_1B0E43108();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v33 - v10;
  v11 = 22;
  v12 = &off_1F2722780;
  do
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B0C92300();
    v14 = sub_1B0E44AC8();

    [v13 setDateFormat_];

    [v13 setLenient_];
    v15 = sub_1B0E44AC8();
    v16 = [v13 dateFromString_];

    if (v16)
    {
      v27 = v37;
      sub_1B0E430D8();

      v28 = *(v40 + 32);
      v29 = v36;
LABEL_12:
      v30 = v27;
      v31 = v39;
      v28(v29, v30, v39);
      v32 = v38;
      v28(v38, v29, v31);
      return (*(v40 + 56))(v32, 0, 1, v31);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  v17 = &off_1F2722780;
  v18 = 22;
  do
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0C92300();
    v20 = sub_1B0E44AC8();

    [v19 setDateFormat_];

    [v19 setLenient_];
    v21 = sub_1B0E44AC8();
    v22 = [v19 dateFromString_];

    if (v22)
    {
      v27 = v35;
      sub_1B0E430D8();

      v28 = *(v40 + 32);
      v29 = v34;
      goto LABEL_12;
    }

    v17 += 2;
    --v18;
  }

  while (v18);
  v23 = v39;
  v24 = *(v40 + 56);
  v25 = v38;

  return v24(v25, 1, 1, v23);
}

uint64_t InternetMessageDate.init(from:calendar:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0C90F74(a2);
  v5 = sub_1B0E43228();
  (*(*(v5 - 8) + 8))(a2, v5);
  v6 = sub_1B0E43108();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v4;
}

uint64_t sub_1B0C90F74(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = sub_1B0E45278();
  *(v2 + 16) = 80;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  sub_1B0C91094(a1, &v6);
  sub_1B0C916D0(&v5, (v2 + 32), &v6, 0x50uLL);
  if (v5 && *(v2 + 16) >= v5)
  {
    v3 = sub_1B0E44D98();

    return v3;
  }

  else
  {
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C91094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v48 - v4;
  v5 = sub_1B0E43358();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E42B78();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FA8, &qword_1B0EDF688);
  v10 = sub_1B0E43218();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B0EDF670;
  v15 = *(v11 + 104);
  v15(v14 + v13, *MEMORY[0x1E6969A98], v10);
  v15(v14 + v13 + v12, *MEMORY[0x1E6969A88], v10);
  v15(v14 + v13 + 2 * v12, *MEMORY[0x1E6969A58], v10);
  v15(v14 + v13 + 3 * v12, *MEMORY[0x1E6969A48], v10);
  v15(v14 + v13 + 4 * v12, *MEMORY[0x1E6969A78], v10);
  v15(v14 + v13 + 5 * v12, *MEMORY[0x1E6969A68], v10);
  v15(v14 + v13 + 6 * v12, *MEMORY[0x1E6969AB0], v10);
  v15(v14 + v13 + 7 * v12, *MEMORY[0x1E6969AC0], v10);
  sub_1B0C926C8(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B0E431D8();

  result = sub_1B0E42B38();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = result;
  }

  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1B0E42B28();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = result;
  }

  if (v20 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = sub_1B0E42AF8();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = result;
  }

  if (v22 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (v22 > 0x7FFFFFFF)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = sub_1B0E42AE8();
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = result;
  }

  if (v24 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = sub_1B0E42B18();
  if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = result;
  }

  if (v26 < 0xFFFFFFFF80000000)
  {
    goto LABEL_50;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  result = sub_1B0E42B08();
  v29 = 100;
  if ((v28 & 1) == 0)
  {
    v29 = result;
  }

  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_53;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v30 = v29 - 1900;
  if (__OFSUB__(v29, 1900))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = sub_1B0E42B48();
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = result;
  }

  if (v32 < 0xFFFFFFFF80000000)
  {
    goto LABEL_56;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  v50 = v34;
  LODWORD(v56) = v30;
  v35 = v55;
  sub_1B0E42B68();
  v36 = v35;
  v37 = v53;
  v38 = v35;
  v39 = v54;
  if ((*(v53 + 48))(v38, 1, v54) == 1)
  {
    (*(v51 + 8))(v9, v52);
    result = sub_1B0398EFC(v36, &qword_1EB6E1C58, &qword_1B0E9B050);
    v40 = 0;
  }

  else
  {
    v41 = *(v37 + 32);
    v48 = v24;
    v42 = v22;
    v43 = v20;
    v44 = v27;
    v45 = v18;
    v18 = v49;
    v41(v49, v36, v39);
    v40 = sub_1B0E43328();
    v46 = v18;
    LODWORD(v18) = v45;
    v27 = v44;
    LODWORD(v20) = v43;
    LODWORD(v22) = v42;
    LODWORD(v24) = v48;
    (*(v37 + 8))(v46, v39);
    result = (*(v51 + 8))(v9, v52);
  }

  *a2 = v18;
  *(a2 + 4) = v20;
  *(a2 + 8) = v22;
  *(a2 + 12) = v24;
  v47 = v56;
  *(a2 + 16) = v27;
  *(a2 + 20) = v47;
  *(a2 + 24) = v50;
  *(a2 + 28) = 0xFFFFFFFF00000000;
  *(a2 + 36) = 0;
  *(a2 + 40) = v40;
  *(a2 + 48) = 0;
  return result;
}

char *sub_1B0C916D0@<X0>(uint64_t *__return_ptr a1@<X8>, char *result@<X0>, tm *a3@<X2>, size_t a4@<X1>)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = result;
  if (qword_1EB6E5CD0 != -1)
  {
    swift_once();
  }

  result = strftime_l(v6, a4, "%a, %d %b %Y %H:%M:%S %z", a3, qword_1EB6E5FA0);
  if (!result)
  {
    goto LABEL_11;
  }

  v8 = result;
  v9 = __OFSUB__(a4, result);
  v10 = a4 - result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = a3->tm_gmtoff / 60 % 60 + 100 * (a3->tm_gmtoff / 3600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55C8, &qword_1B0ED3128);
    result = swift_allocObject();
    *(result + 1) = xmmword_1B0EC1E70;
    v12 = MEMORY[0x1E69E7358];
    *(result + 7) = MEMORY[0x1E69E72F0];
    *(result + 8) = v12;
    if (v11 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        *(result + 8) = v11;
        v13 = sub_1B0E43B28(&v8[v6], v10, "%+05d", v15);

        v14 = &v8[v13];
        if (!__OFADD__(v8, v13))
        {
          goto LABEL_12;
        }

        __break(1u);
LABEL_11:
        v14 = 0;
LABEL_12:
        *a1 = v14;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

locale_t sub_1B0C91878()
{
  result = newlocale(63, 0, 0);
  if (result)
  {
    qword_1EB6E5FA0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C918AC@<X0>(const char *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v35);
  v4 = &v34 - v3;
  v5 = sub_1B0E43108();
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v45 = (v12 + 56);
  v40 = (v12 + 8);
  v41 = (v12 + 32);
  v43 = (v12 + 48);
  v13 = 13;
  v14 = &off_1F2722690;
  v42 = a1;
  v44 = &v34 - v15;
  while (1)
  {
    v16 = *(v14 - 1);
    v17 = *v14;
    MEMORY[0x1EEE9AC00](v11);
    *(&v34 - 4) = a1;
    *(&v34 - 3) = v16;
    *(&v34 - 2) = v17;
    if ((v17 & 0x1000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      *v50 = v16;
      v51 = v17 & 0xFFFFFFFFFFFFFFLL;
      memset(&v52, 0, sizeof(v52));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = strptime_l(a1, v50, &v52, 0);
      if (!v21)
      {
LABEL_17:
        v20 = 1;
LABEL_23:
        (*v45)(v4, v20, 1, v5);

        a1 = v42;
        goto LABEL_24;
      }

      v22 = v21;
      v39 = &v34;
      v23 = v9;
      mktime(&v52);
      v24 = v38;
      sub_1B0E430A8();
      if (*v22)
      {
        v48 = v16;
        v49 = v17;
        v46 = 31269;
        v47 = 0xE200000000000000;
        sub_1B07C7F5C();
        if ((sub_1B0E45F58() & 1) == 0 || (sub_1B0C92128(v22) & 1) == 0)
        {
          (*v40)(v38, v5);
          v20 = 1;
LABEL_22:
          v9 = v23;
          goto LABEL_23;
        }

        (*v41)(v4, v38, v5);
      }

      else
      {
        (*v41)(v4, v24, v5);
      }

      v20 = 0;
      goto LABEL_22;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      memset(&v52, 0, sizeof(v52));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = strptime_l(a1, ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32), &v52, 0);
      if (v18)
      {
        v19 = v18;
        mktime(&v52);
        sub_1B0E430A8();
        if (!*v19 || (*v50 = v16, v51 = v17, v48 = 31269, v49 = 0xE200000000000000, sub_1B07C7F5C(), (sub_1B0E45F58() & 1) != 0) && (sub_1B0C92128(v19) & 1) != 0)
        {
          (*v41)(v4, v9, v5);
          v20 = 0;
        }

        else
        {
          (*v40)(v9, v5);
          v20 = 1;
        }

        goto LABEL_23;
      }

      goto LABEL_17;
    }

LABEL_27:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = v37;
    sub_1B0E46258();
    v37 = v29;

LABEL_24:
    v25 = (*v43)(v4, 1, v5);
    v26 = v44;
    if (v25 != 1)
    {
      break;
    }

    v11 = sub_1B0398EFC(v4, &unk_1EB6E2990, &qword_1B0E9B060);
LABEL_3:
    v14 += 2;
    if (!--v13)
    {
      v30 = 1;
      v31 = v36;
      return (*v45)(v31, v30, 1, v5);
    }
  }

  v27 = *v41;
  (*v41)(v44, v4, v5);
  sub_1B0E43028();
  if (v28 <= -900000000.0)
  {
    v11 = (*v40)(v26, v5);
    goto LABEL_3;
  }

  v32 = v36;
  v27(v36, v26, v5);
  v31 = v32;
  v30 = 0;
  return (*v45)(v31, v30, 1, v5);
}

void *sub_1B0C91E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_1B0C918AC(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    return sub_1B0E46258();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1B0C918AC(v3, a3);
}

uint64_t sub_1B0C91F14@<X0>(const char *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v19, 0, sizeof(v19));
  v14 = strptime_l(a2, a1, &v19, 0);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = v14;
  mktime(&v19);
  sub_1B0E430A8();
  if (*v15)
  {
    v18[2] = a3;
    v18[3] = a4;
    v18[0] = 31269;
    v18[1] = 0xE200000000000000;
    sub_1B07C7F5C();
    if ((sub_1B0E45F58() & 1) == 0 || (sub_1B0C92128(v15) & 1) == 0)
    {
      (*(v11 + 8))(v13, v10);
LABEL_7:
      v16 = 1;
      return (*(v11 + 56))(a5, v16, 1, v10);
    }
  }

  (*(v11 + 32))(a5, v13, v10);
  v16 = 0;
  return (*(v11 + 56))(a5, v16, 1, v10);
}

id sub_1B0C92128(uint64_t a1)
{
  v1 = sub_1B0E429A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44D88();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v6 = sub_1B0E44AC8();

  v7 = [v5 initWithString_];

  sub_1B0E45D28();

  sub_1B0E45D08();
  if (v8 && (, sub_1B0E42978(), sub_1B0E45D18(), v10 = v9, v11 = *(v2 + 8), v11(v4, v1), v10) && (, sub_1B0E45D08(), v12))
  {

    sub_1B0E42988();
    sub_1B0E45D18();

    v11(v4, v1);
    v13 = [v7 isAtEnd];

    return v13;
  }

  else
  {

    return 0;
  }
}

id sub_1B0C92300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C58, &qword_1B0E9B050);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v22 - v1;
  v3 = sub_1B0E431A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0BD84D8(0, &qword_1EB6DA598, 0x1E696AEC0);
  v7 = sub_1B0E45CE8();
  v8 = objc_opt_self();
  v9 = [v8 currentThread];
  v10 = [v9 threadDictionary];

  v11 = v7;
  v12 = [v10 objectForKeyedSubscript_];

  if (v12)
  {
    sub_1B0E45FE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_1B0BD84D8(0, &qword_1EB6DAB68, 0x1E696AB78);
    if (swift_dynamicCast())
    {

      return v22[1];
    }
  }

  else
  {
    sub_1B0398EFC(v25, &qword_1EB6E29B0, &qword_1B0E9F008);
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1B0E43168();
  v14 = sub_1B0E43178();
  (*(v4 + 8))(v6, v3);
  [v13 setLocale_];

  sub_1B0E43338();
  v15 = sub_1B0E43358();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v2, 1, v15) != 1)
  {
    v17 = sub_1B0E43348();
    (*(v16 + 8))(v2, v15);
  }

  [v13 setTimeZone_];

  v18 = [v8 currentThread];
  v19 = [v18 threadDictionary];

  v20 = v11;
  [v19 setObject:v13 forKeyedSubscript:v20];

  return v13;
}

uint64_t sub_1B0C926C8(uint64_t a1)
{
  v2 = sub_1B0E43218();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5FB0, &unk_1B0EDF690);
    v9 = sub_1B0E46228();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B0C929C0(&qword_1EB6DECD8, MEMORY[0x1E6969AD8]);
      v16 = sub_1B0E447B8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1B0C929C0(&qword_1EB6DECD0, MEMORY[0x1E6969AE0]);
          v23 = sub_1B0E44A28();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B0C929C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B0E43218();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16IMAP2Persistence11EnvironmentV24AvailableFileSystemSpaceO9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(unsigned int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v11 = sub_1B0E443C8();
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Message.Data(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a1;
  v45 = a2;
  v55[16] = a1;
  v55[17] = a2;
  v17 = a3;
  v55[18] = a3;
  v46 = a4;
  v47 = a5;
  v56 = a4;
  v57 = a5;
  result = Message.isEmpty.getter();
  if ((result & 1) == 0)
  {
    sub_1B0C934C4(v5, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v48;
      v20 = (*(v48 + 32))(v13, v16, v11);
      MEMORY[0x1EEE9AC00](v20);
      *(&v43 - 4) = v13;
      *(&v43 - 3) = sub_1B0C92EA0;
      v42 = v55;
      sub_1B0E44328();
      return (*(v19 + 8))(v13, v11);
    }

    v22 = *v16;
    v21 = v16[1];
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        return sub_1B0391D50(v22, v21);
      }

      v31 = *(v22 + 16);
      v32 = *(v22 + 24);
      v33 = sub_1B0E42A98();
      if (v33)
      {
        v34 = sub_1B0E42AC8();
        if (__OFSUB__(v31, v34))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
        }

        v33 += v31 - v34;
      }

      v35 = __OFSUB__(v32, v31);
      v36 = v32 - v31;
      if (v35)
      {
        goto LABEL_38;
      }

      v37 = sub_1B0E42AB8();
      if (v37 >= v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = v37;
      }

      if (v33)
      {
        v24 = v38;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else if (!v23)
    {
      v49 = *v16;
      v50 = v21;
      v51 = BYTE2(v21);
      v52 = BYTE3(v21);
      v24 = BYTE6(v21);
      v53 = BYTE4(v21);
      v54 = BYTE5(v21);
      v42 = &v49 + BYTE6(v21);
      v25 = a3 & 1;
      v26 = &v49;
      v27 = v44;
      v28 = v45;
      v29 = v46;
      v30 = v47;
LABEL_34:
      sub_1B0C92F04(v27, v28, v25, v29, v30, 0, v24, v26, v42);
      return sub_1B0391D50(v22, v21);
    }

    if (v22 >> 32 >= v22)
    {
      v33 = sub_1B0E42A98();
      if (v33)
      {
        v39 = sub_1B0E42AC8();
        if (__OFSUB__(v22, v39))
        {
          goto LABEL_41;
        }

        v33 += v22 - v39;
      }

      v40 = sub_1B0E42AB8();
      if (v40 >= (v22 >> 32) - v22)
      {
        v38 = (v22 >> 32) - v22;
      }

      else
      {
        v38 = v40;
      }

      if (v33)
      {
        v24 = v38;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
LABEL_31:
        v41 = v38 + v33;
        if (!v33)
        {
          v41 = 0;
        }

        v42 = v41;
        v25 = v17 & 1;
        v27 = v44;
        v28 = v45;
        v29 = v46;
        v30 = v47;
        v26 = v33;
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

char *sub_1B0C92EA0(char *result, uint64_t a2)
{
  if (result)
  {
    v3 = (a2 - result);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return sub_1B0C92F04(*(v2 + 16), *(v2 + 17), *(v2 + 18), *(v2 + 24), *(v2 + 32), 0, v3, result, a2);
  }

  __break(1u);
  return result;
}

char *sub_1B0C92F04(char *result, char a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a6 == a7)
  {
    return result;
  }

  v11 = a6;
  v15 = result;
  if (!a2)
  {
    return sub_1B0C9365C(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
  }

  if (a2 != 1)
  {
    v45 = 10;
    while (1)
    {
      if (v15 > 1u)
      {
        if (v15 == 2)
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v36 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v37 = (result - v36);
          if (result - v36 < 0)
          {
            goto LABEL_115;
          }

          v38 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_130;
          }

          if (a7 - v11 < v38)
          {
            goto LABEL_115;
          }

          v34 = &v11[v37];
          if (__OFADD__(v37, v11))
          {
            goto LABEL_138;
          }

          v35 = &v11[v38];
          if (__OFADD__(v38, v11))
          {
            goto LABEL_148;
          }

          if (v38 < v37 || v35 < v34)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if (!a8)
          {
            goto LABEL_115;
          }

          v42 = &v11[a8];
          result = memchr(&v11[a8], 10, a7 - v11);
          if (!result)
          {
            goto LABEL_115;
          }

          v43 = (result - v42);
          if (result - v42 < 0)
          {
            goto LABEL_115;
          }

          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_134;
          }

          if (a7 - v11 < v44)
          {
            goto LABEL_115;
          }

          v34 = &v11[v43];
          if (__OFADD__(v43, v11))
          {
            goto LABEL_136;
          }

          v35 = &v11[v44];
          if (__OFADD__(v44, v11))
          {
            goto LABEL_146;
          }

          if (v44 < v43 || v35 < v34)
          {
            goto LABEL_154;
          }

          if (v11 < v34)
          {
            if (v34 > a7)
            {
              goto LABEL_160;
            }

            if (*(a8 + v34 - 1) == 13)
            {
              --v34;
            }
          }
        }
      }

      else if (v15)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v39 = &v11[a8];
        result = memchr(&v11[a8], 13, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v40 = (result - v39);
        if (result - v39 < 0)
        {
          goto LABEL_115;
        }

        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_132;
        }

        if (a7 - v11 < v41)
        {
          goto LABEL_115;
        }

        v34 = &v11[v40];
        if (__OFADD__(v40, v11))
        {
          goto LABEL_140;
        }

        v35 = &v11[v41];
        if (__OFADD__(v41, v11))
        {
          goto LABEL_144;
        }

        if (v41 < v40 || v35 < v34)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v31 = &v11[a8];
        result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_115;
        }

        v32 = (result - v31);
        if (result - v31 < 0)
        {
          goto LABEL_115;
        }

        v33 = v32 + 2;
        if (__OFADD__(v32, 2))
        {
          goto LABEL_128;
        }

        if (a7 - v11 < v33)
        {
          goto LABEL_115;
        }

        v34 = &v11[v32];
        if (__OFADD__(v32, v11))
        {
          goto LABEL_142;
        }

        v35 = &v11[v33];
        if (__OFADD__(v33, v11))
        {
          goto LABEL_150;
        }

        if (v33 < v32 || v35 < v34)
        {
          goto LABEL_158;
        }
      }

      if (v34 < v11)
      {
        goto LABEL_122;
      }

      if (v34 > a7)
      {
        goto LABEL_124;
      }

      if (v34 != v11)
      {
        a4(&v11[a8], a8 + v34);
      }

      result = a4(&v45, &v46);
      if (v35 > a7)
      {
        goto LABEL_126;
      }

      v30 = v35 < v11;
      v11 = v35;
      if (v30)
      {
        __break(1u);
LABEL_115:
        if (a7 != v11)
        {
          if (a8)
          {
            result = a4(&v11[a8], &a7[a8]);
          }

          if (a3)
          {
            return a4(&v45, &v46);
          }
        }

        return result;
      }
    }
  }

  v45 = 13;
  do
  {
    if (v15 > 1u)
    {
      if (v15 == 2)
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v21 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v22 = (result - v21);
        if (result - v21 < 0)
        {
          goto LABEL_115;
        }

        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_129;
        }

        if (a7 - v11 < v23)
        {
          goto LABEL_115;
        }

        v19 = &v11[v22];
        if (__OFADD__(v22, v11))
        {
          goto LABEL_137;
        }

        v20 = &v11[v23];
        if (__OFADD__(v23, v11))
        {
          goto LABEL_147;
        }

        if (v23 < v22 || v20 < v19)
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (!a8)
        {
          goto LABEL_115;
        }

        v27 = &v11[a8];
        result = memchr(&v11[a8], 10, a7 - v11);
        if (!result)
        {
          goto LABEL_115;
        }

        v28 = (result - v27);
        if (result - v27 < 0)
        {
          goto LABEL_115;
        }

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_133;
        }

        if (a7 - v11 < v29)
        {
          goto LABEL_115;
        }

        v19 = &v11[v28];
        if (__OFADD__(v28, v11))
        {
          goto LABEL_135;
        }

        v20 = &v11[v29];
        if (__OFADD__(v29, v11))
        {
          goto LABEL_145;
        }

        if (v29 < v28 || v20 < v19)
        {
          goto LABEL_153;
        }

        if (v11 < v19)
        {
          if (v19 > a7)
          {
            goto LABEL_159;
          }

          if (*(a8 + v19 - 1) == 13)
          {
            --v19;
          }
        }
      }
    }

    else if (v15)
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v24 = &v11[a8];
      result = memchr(&v11[a8], 13, a7 - v11);
      if (!result)
      {
        goto LABEL_115;
      }

      v25 = (result - v24);
      if (result - v24 < 0)
      {
        goto LABEL_115;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_131;
      }

      if (a7 - v11 < v26)
      {
        goto LABEL_115;
      }

      v19 = &v11[v25];
      if (__OFADD__(v25, v11))
      {
        goto LABEL_139;
      }

      v20 = &v11[v26];
      if (__OFADD__(v26, v11))
      {
        goto LABEL_143;
      }

      if (v26 < v25 || v20 < v19)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!a8)
      {
        goto LABEL_115;
      }

      v16 = &v11[a8];
      result = memmem(&v11[a8], a7 - v11, "\r\n", 2uLL);
      if (!result)
      {
        goto LABEL_115;
      }

      v17 = (result - v16);
      if (result - v16 < 0)
      {
        goto LABEL_115;
      }

      v18 = v17 + 2;
      if (__OFADD__(v17, 2))
      {
        goto LABEL_127;
      }

      if (a7 - v11 < v18)
      {
        goto LABEL_115;
      }

      v19 = &v11[v17];
      if (__OFADD__(v17, v11))
      {
        goto LABEL_141;
      }

      v20 = &v11[v18];
      if (__OFADD__(v18, v11))
      {
        goto LABEL_149;
      }

      if (v18 < v17 || v20 < v19)
      {
        goto LABEL_157;
      }
    }

    if (v19 < v11)
    {
      __break(1u);
LABEL_122:
      __break(1u);
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
    }

    if (v19 > a7)
    {
      goto LABEL_123;
    }

    if (v19 != v11)
    {
      a4(&v11[a8], a8 + v19);
    }

    result = a4(&v45, &v46);
    if (v20 > a7)
    {
      goto LABEL_125;
    }

    v30 = v20 < v11;
    v11 = v20;
  }

  while (!v30);
  __break(1u);
  return sub_1B0C9365C(v15, a3 & 1, v11, a7, a8, a9, a4, a5, "\r\n", "");
}

uint64_t sub_1B0C934C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message.Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0C93528(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  return v3(a1, a1 + v4);
}

unint64_t sub_1B0C93590()
{
  result = qword_1EB6E5FB8;
  if (!qword_1EB6E5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FB8);
  }

  return result;
}

unint64_t sub_1B0C935E8()
{
  result = qword_1EB6E5FC0;
  if (!qword_1EB6E5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5FC0);
  }

  return result;
}

char *sub_1B0C9365C(char *result, char a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a3 != a4)
  {
    v13 = a3;
    v14 = result;
    do
    {
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v20 = &v13[a5];
          result = memchr(&v13[a5], 10, a4 - v13);
          if (!result)
          {
            goto LABEL_57;
          }

          v21 = (result - v20);
          if (result - v20 < 0)
          {
            goto LABEL_57;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }

          if (a4 - v13 < v22)
          {
            goto LABEL_57;
          }

          v18 = &v13[v21];
          if (__OFADD__(v21, v13))
          {
            goto LABEL_71;
          }

          v19 = &v13[v22];
          if (__OFADD__(v22, v13))
          {
            goto LABEL_76;
          }

          if (v22 < v21 || v19 < v18)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (!a5)
          {
            goto LABEL_57;
          }

          v26 = &v13[a5];
          result = memchr(&v13[a5], 10, a4 - v13);
          if (!result)
          {
            goto LABEL_57;
          }

          v27 = (result - v26);
          if (result - v26 < 0)
          {
            goto LABEL_57;
          }

          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_69;
          }

          if (a4 - v13 < v28)
          {
            goto LABEL_57;
          }

          v18 = &v13[v27];
          if (__OFADD__(v27, v13))
          {
            goto LABEL_70;
          }

          v19 = &v13[v28];
          if (__OFADD__(v28, v13))
          {
            goto LABEL_75;
          }

          if (v28 < v27 || v19 < v18)
          {
            goto LABEL_79;
          }

          if (v13 < v18)
          {
            if (v18 > a4)
            {
              goto LABEL_82;
            }

            if (*(a5 + v18 - 1) == 13)
            {
              --v18;
            }
          }
        }
      }

      else if (v14)
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v23 = &v13[a5];
        result = memchr(&v13[a5], 13, a4 - v13);
        if (!result)
        {
          goto LABEL_57;
        }

        v24 = (result - v23);
        if (result - v23 < 0)
        {
          goto LABEL_57;
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_68;
        }

        if (a4 - v13 < v25)
        {
          goto LABEL_57;
        }

        v18 = &v13[v24];
        if (__OFADD__(v24, v13))
        {
          goto LABEL_72;
        }

        v19 = &v13[v25];
        if (__OFADD__(v25, v13))
        {
          goto LABEL_74;
        }

        if (v25 < v24 || v19 < v18)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!a5)
        {
          goto LABEL_57;
        }

        v15 = &v13[a5];
        result = memmem(&v13[a5], a4 - v13, "\r\n", 2uLL);
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = (result - v15);
        if (result - v15 < 0)
        {
          goto LABEL_57;
        }

        v17 = v16 + 2;
        if (__OFADD__(v16, 2))
        {
          goto LABEL_66;
        }

        if (a4 - v13 < v17)
        {
          goto LABEL_57;
        }

        v18 = &v13[v16];
        if (__OFADD__(v16, v13))
        {
          goto LABEL_73;
        }

        v19 = &v13[v17];
        if (__OFADD__(v17, v13))
        {
          goto LABEL_77;
        }

        if (v17 < v16 || v19 < v18)
        {
          goto LABEL_81;
        }
      }

      if (v18 < v13)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        return result;
      }

      if (v18 > a4)
      {
        goto LABEL_64;
      }

      if (v18 != v13)
      {
        a7(&v13[a5], a5 + v18);
      }

      result = a7(a9, a10);
      if (v19 > a4)
      {
        goto LABEL_65;
      }

      v29 = v19 < v13;
      v13 = v19;
    }

    while (!v29);
    __break(1u);
LABEL_57:
    if (a4 != v13)
    {
      if (a5)
      {
        result = a7(&v13[a5], &a4[a5]);
      }

      if (a2)
      {
        return a7(a9, a10);
      }
    }
  }

  return result;
}

uint64_t static ListID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t sub_1B0C939A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = v2 - 1;
  while (1)
  {
LABEL_6:
    if (v4 == v2)
    {
LABEL_15:
      v9 = 1;
      v7 = v2;
      if (v2 < v4)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    else
    {
      v6 = v2 <= v4 ? v4 : v2;
      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          goto LABEL_55;
        }

        v8 = *(result + v7);
        if (v8 == 60 || v8 == 34)
        {
          break;
        }

        if (v2 == ++v7)
        {
          goto LABEL_15;
        }
      }

      v9 = 0;
      if (v7 < v4)
      {
        goto LABEL_55;
      }
    }

    if (v2 < v7)
    {
      goto LABEL_56;
    }

    if (v9)
    {
      return 0;
    }

    if (v7 >= v2)
    {
      goto LABEL_57;
    }

    v10 = *(result + v7);
    if (v10 != 34)
    {
      break;
    }

    v4 = v2;
    v11 = v7;
    if (v7 + 1 != v2)
    {
      while (1)
      {
        if (v5 == v11)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (*(result + 1 + v11) == 34)
        {
          break;
        }

        if (v5 == ++v11)
        {
          v4 = v2;
          goto LABEL_6;
        }
      }

      if (v11 < v7)
      {
        goto LABEL_60;
      }

      v4 = v11 + 2;
    }
  }

  if (v10 != 60)
  {
    return 0;
  }

  v12 = v7 + 1;
  v13 = v7 + 1;
  while (1)
  {
    if (v2 == v13)
    {
      goto LABEL_38;
    }

    if (*(result + v13) == 62)
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_58;
    }

    if (v2 < v13 + 1)
    {
      goto LABEL_59;
    }

    v14 = v13 + 1 <= v13;
    ++v13;
    if (v14)
    {
      __break(1u);
LABEL_38:
      v15 = v2;
      goto LABEL_40;
    }
  }

  v15 = v13;
LABEL_40:
  if (v15 <= v7)
  {
    goto LABEL_64;
  }

  result = 0;
  if (v12 != v15 && v2 != v13)
  {
    if (v15 >= v2)
    {
      goto LABEL_65;
    }

    if (*(v3 + v15) == 62)
    {
      while (v12 < v15)
      {
        if (v12 >= v2)
        {
          goto LABEL_62;
        }

        if (*(v3 + v12) - 127 < 0xFFFFFFA2)
        {
LABEL_51:

          return 0;
        }

        ++v12;
        v16 = sub_1B0E44C78();
        MEMORY[0x1B2726E70](v16);

        if (v15 == v12)
        {
          return 0;
        }
      }

      goto LABEL_61;
    }

    return 0;
  }

  return result;
}

uint64_t ListID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0C93C80()
{
  result = qword_1EB6DB8C0;
  if (!qword_1EB6DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DB8C0);
  }

  return result;
}

void *sub_1B0C93CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = *MEMORY[0x1E69E9840];
  isStackAllocationSafe = a2 - a1;
  if (!isStackAllocationSafe)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v10 = a4 - a3;
  if (!a3)
  {
    v10 = 0;
  }

  v11 = a1;
  while (1)
  {
    if (v11 >= a2)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (a1 < 0 || v11 >= v10)
    {
      goto LABEL_25;
    }

    v12 = *(a3 + v11);
    if (v12 == 13 || v12 == 10)
    {
      break;
    }

    if (a2 == ++v11)
    {
      if (!a3)
      {
        return MEMORY[0x1E69E7CC0];
      }

      result = sub_1B03B7A3C(isStackAllocationSafe, 0);
      v14 = a2 - a1;
      if (a2 <= a1)
      {
        __break(1u);
        return result;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = result;
        memmove(result + 4, (a3 + a1), v14);
        return v15;
      }

LABEL_31:
      __break(1u);
    }
  }

  if (v10 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2 - a1 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (a2 - a1 < 1025)
  {
LABEL_21:
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    result = sub_1B0C94FE4((v19 - v16), a1, a2, a3);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

LABEL_27:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_21;
  }

  v17 = swift_slowAlloc();
  v18 = sub_1B0C94FE4(v17, a1, a2, a3);
  result = MEMORY[0x1B272C230](v17, -1, -1);
  if (!v4)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1B0C93ECC(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v12 = (a3 + a2);
    }

    else
    {
      v12 = 0;
    }

    if (a3)
    {
      v13 = (a3 + isStackAllocationSafe);
    }

    else
    {
      v13 = 0;
    }

    result = sub_1B0C77010(v13, v12, v19);
    if (!v6)
    {
      return v19[0];
    }

    return result;
  }

  v8 = a4 - a3;
  if (!a3)
  {
    v8 = 0;
  }

  v9 = isStackAllocationSafe;
  while (1)
  {
    if (v9 >= a2)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v9 >= v8)
    {
      goto LABEL_28;
    }

    v10 = *(a3 + v9);
    if (v10 == 13 || v10 == 10)
    {
      break;
    }

    if (a2 == ++v9)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = isStackAllocationSafe;
  v5 = a2;
  v4 = a3;
  if (v15 >= 1025)
  {
LABEL_30:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    isStackAllocationSafe = sub_1B0C95098(v15, v7, v5, v4);
    if (v6)
    {
      return MEMORY[0x1B272C230](v15, -1, -1);
    }

LABEL_34:
    v17 = isStackAllocationSafe;
    MEMORY[0x1B272C230](v15, -1, -1);
    return v17;
  }

LABEL_24:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = sub_1B0C95098(&v19[-1] - v16, v7, v5, v4);
  if (v6)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0C940AC(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a2 == isStackAllocationSafe)
  {
LABEL_13:
    if (a3)
    {
      v17 = a3 + a2;
    }

    else
    {
      v17 = 0;
    }

    if (a3)
    {
      v18 = a3 + isStackAllocationSafe;
    }

    else
    {
      v18 = 0;
    }

    return a5(v18, v17);
  }

  v13 = a4 - a3;
  if (!a3)
  {
    v13 = 0;
  }

  v14 = isStackAllocationSafe;
  while (1)
  {
    if (v14 >= a2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (isStackAllocationSafe < 0 || v14 >= v13)
    {
      goto LABEL_27;
    }

    v15 = *(a3 + v14);
    if (v15 == 13 || v15 == 10)
    {
      break;
    }

    if (a2 == ++v14)
    {
      goto LABEL_13;
    }
  }

  if (v13 < a2)
  {
    goto LABEL_28;
  }

  v12 = a2 - isStackAllocationSafe;
  if (a2 - isStackAllocationSafe < 0)
  {
    __break(1u);
  }

  v11 = isStackAllocationSafe;
  v10 = a2;
  v8 = a4;
  v9 = a3;
  v6 = a5;
  if (v12 < 1025)
  {
    goto LABEL_23;
  }

LABEL_29:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v21 = swift_slowAlloc();
    sub_1B0C94C70(v21, v21 + v12, v11, v10, v9, v8, v6);
    return MEMORY[0x1B272C230](v21, -1, -1);
  }

LABEL_23:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = sub_1B0C94C70(v22 - v20, v22 + v12 - v20, v11, v10, v9, v8, v6);
  if (v7)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0C94298(uint64_t result)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  LODWORD(v5) = result;
  if (result <= 1u)
  {
    if (result)
    {
      goto LABEL_20;
    }

    v6 = v1[3] - v4;
    if (!v4)
    {
      v6 = 0;
    }

    if ((v2 & 0x8000000000000000) != 0 || v6 < v2)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if ((v3 & 0x8000000000000000) != 0 || v6 < v3)
    {
      goto LABEL_46;
    }

    if ((v3 - v2) < 2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (*(v4 + v2) != 13)
    {
      return 0;
    }

    v5 = v2 + 1;
    if (v2 + 1 >= v3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v4 = *(v4 + v5);
    if (v4 != 10)
    {
      return 0;
    }

    v2 += 2;
    if (v3 >= v2)
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  if (v5 == 2)
  {
    if (v3 == v2)
    {
      return 0;
    }

    if (v3 <= v2)
    {
      __break(1u);
LABEL_20:
      if (v3 != v2)
      {
        if (v3 > v2)
        {
          if (*(v4 + v2) == 13)
          {
            goto LABEL_41;
          }

          return 0;
        }

        goto LABEL_49;
      }

      return 0;
    }

LABEL_40:
    if (*(v4 + v2) == 10)
    {
LABEL_41:
      ++v2;
      goto LABEL_42;
    }

    return 0;
  }

  v7 = v1[3] - v4;
  if (!v4)
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || v7 < v2)
  {
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) != 0 || v7 < v3)
  {
    goto LABEL_47;
  }

  if ((v3 - v2) < 2)
  {
    if (v3 - v2 != 1)
    {
      return 0;
    }

LABEL_39:
    if (v3 > v2)
    {
      goto LABEL_40;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v3 <= v2)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v4 + v2) != 13)
  {
    goto LABEL_39;
  }

  if (v2 + 1 < v3)
  {
    if (*(v4 + v2 + 1) != 10)
    {
      goto LABEL_39;
    }

    v2 += 2;
    if (v3 < v2)
    {
      __break(1u);
      goto LABEL_39;
    }

LABEL_42:
    *v1 = v2;
    return 1;
  }

LABEL_53:
  __break(1u);
  return result;
}

char *sub_1B0C94424(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return sub_1B0C9456C("\r\n", 2uLL, a2, a3, a4);
    }

    v6 = 13;
    return sub_1B0C94618(v6, a2, a3, a4);
  }

  v6 = 10;
  if (v4 == 2)
  {
    return sub_1B0C94618(v6, a2, a3, a4);
  }

  result = sub_1B0C94618(0xAu, a2, a3, a4);
  if ((v11 & 1) == 0 && result > a2)
  {
    if (result > a3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if (result[a4 - 1] == 13)
    {
      if (v10 >= (result - 1))
      {
        return --result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1B0C944F8(unsigned __int8 a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *v1;
  if (*v1 != v4)
  {
    if (v4 <= result)
    {
      v7 = *v1;
    }

    else
    {
      v7 = v1[1];
    }

    v6 = *v1;
    while (1)
    {
      if (v7 == v6)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (*(v5 + v6) == a1)
      {
        break;
      }

      *v1 = ++v6;
      v1[1] = v4;
      v1[2] = v5;
      if (v4 == v6)
      {
        v6 = v4;
        break;
      }
    }

    if (v6 >= result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_11:
  if (v4 < v6)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

char *sub_1B0C9456C(void *__little, size_t __little_len, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v7 = a5 + a3;
  v8 = a4 - a3;
  result = memmem((a5 + a3), a4 - a3, __little, __little_len);
  if (!result)
  {
    return result;
  }

  v10 = &result[-v7];
  if (&result[-v7] < 0)
  {
    return 0;
  }

  v11 = &v10[__little_len];
  if (__OFADD__(v10, __little_len))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 < v11)
  {
    return 0;
  }

  result = &v10[a3];
  if (__OFADD__(v10, a3))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v11, a3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v11 < v10 || &v11[a3] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_1B0C94618(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4 + a2;
  v6 = a3 - a2;
  result = memchr((a4 + a2), a1, a3 - a2);
  if (!result)
  {
    return result;
  }

  v8 = &result[-v5];
  if (&result[-v5] < 0)
  {
    return 0;
  }

  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < v9)
  {
    return 0;
  }

  result = &v8[a2];
  if (__OFADD__(v8, a2))
  {
    goto LABEL_14;
  }

  if (__OFADD__(v9, a2))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v9 < v8 || &v9[a2] < result)
  {
    goto LABEL_16;
  }

  return result;
}

char *sub_1B0C946BC(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v7 = "\r\n\r\n";
      v8 = 4;
      return sub_1B0C9456C(v7, v8, a2, a3, a4);
    }

    v7 = "\r\r";
LABEL_7:
    v8 = 2;
    return sub_1B0C9456C(v7, v8, a2, a3, a4);
  }

  if (a1 == 2)
  {
    v7 = "\n\n";
    goto LABEL_7;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = a4 + a2;
  v11 = a3 - a2;
  result = memchr((a4 + a2), 10, a3 - a2);
  if (!result)
  {
    return result;
  }

  v13 = &result[-v10];
  if (&result[-v10] < 0)
  {
    return 0;
  }

  v14 = v13 + 1;
  if (__OFADD__(v13, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v11 < v14)
  {
    return 0;
  }

  v15 = &v13[a2];
  if (__OFADD__(v13, a2))
  {
    goto LABEL_48;
  }

  v16 = &v14[a2];
  if (__OFADD__(v14, a2))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v14 < v13 || v16 < v15)
  {
    goto LABEL_50;
  }

  if (v15 > a2)
  {
    if (v15 > a3)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (*(a4 + v15 - 1) == 13)
    {
      --v15;
    }
  }

  if (v16 > a3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v16 < a2)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    if (v12 >= result && v12 <= a3)
    {
      if (v12 >= v16)
      {
        return result;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
    v17 = v15;
    v18 = a4 + v16;
    result = memchr((a4 + v16), 10, a3 - v16);
    if (!result)
    {
      return result;
    }

    v19 = &result[-v18];
    if (&result[-v18] < 0)
    {
      return 0;
    }

    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_47;
    }

    if (a3 - v16 < v20)
    {
      return 0;
    }

    v15 = &v19[v16];
    if (__OFADD__(v19, v16))
    {
      goto LABEL_48;
    }

    v12 = &v20[v16];
    if (__OFADD__(v20, v16))
    {
      goto LABEL_49;
    }

    if (v20 < v19 || v12 < v15)
    {
      goto LABEL_50;
    }

    result = v17;
    if (v16 < v15)
    {
      if (v15 > a3)
      {
        goto LABEL_52;
      }

      if (*(a4 + v15 - 1) == 13)
      {
        --v15;
      }
    }

    if (v16 == v15)
    {
      goto LABEL_43;
    }

    if (v12 > a3)
    {
      goto LABEL_51;
    }

    v21 = v12 < v16;
    v16 += v20;
    if (v21)
    {
      goto LABEL_42;
    }
  }
}

void sub_1B0C948BC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 != v2)
  {
    v3 = v0[2];
    if (v2 <= v1)
    {
      v4 = *v0;
    }

    else
    {
      v4 = v0[1];
    }

    while (v4 != v1)
    {
      v5 = *(v3 + v1);
      v6 = v5 > 0x20;
      v7 = (1 << v5) & 0x100002600;
      if (!v6 && v7 != 0)
      {
        *v0 = ++v1;
        v0[1] = v2;
        if (v2 != v1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1B0C94918(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 0uLL;
  if (*v1 == v3)
  {
LABEL_13:
    v2 = 0;
    v7 = 0;
    v13 = 1;
LABEL_17:
    *a1 = v2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = v13;
    return;
  }

  v5 = *(v1 + 1);
  v6 = v1[2];
  v7 = *v1;
  do
  {
    if (v7 >= v3)
    {
      __break(1u);
      goto LABEL_19;
    }

    v8 = *(v6 + v7);
    if ((v8 - 127) < 0xFFFFFFA2)
    {
      goto LABEL_12;
    }

    v9 = v8 - 34;
    v10 = v9 > 0x3B;
    v11 = (1 << v9) & 0xE0000007F0024C1;
    if (!v10 && v11 != 0)
    {
      goto LABEL_12;
    }

    *v1 = ++v7;
    v1[1] = v3;
    v1[2] = v6;
  }

  while (v3 != v7);
  v7 = v3;
LABEL_12:
  if (v2 == v7)
  {
    goto LABEL_13;
  }

  if (v7 < v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 >= v7)
  {
    v13 = 0;
    v4 = v5;
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1B0C949D8(unsigned __int8 a1, unsigned __int8 a2)
{
  result = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *v2;
  if (*v2 != v6)
  {
    if (v6 <= result)
    {
      v9 = *v2;
    }

    else
    {
      v9 = v2[1];
    }

    v8 = *v2;
    while (1)
    {
      if (v9 == v8)
      {
        __break(1u);
        goto LABEL_17;
      }

      if (*(v7 + v8) == a1 && (result >= v8 || *(v7 + v8 - 1) != a2))
      {
        break;
      }

      *v2 = ++v8;
      v2[1] = v6;
      v2[2] = v7;
      if (v6 == v8)
      {
        v8 = v6;
        break;
      }
    }

    if (v8 >= result)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_14:
  if (v6 < v8)
  {
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0C94A74(uint64_t result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  if (result <= 1u)
  {
    if (!result)
    {
      v6 = v5 - v4;
      if (!v4)
      {
        v6 = 0;
      }

      if ((v3 & 0x8000000000000000) == 0 && v6 >= v3)
      {
        if ((v2 & 0x8000000000000000) == 0 && v6 >= v2)
        {
          if (v2 - v3 >= 2)
          {
            v7 = v2 - 2;
            if (v2 - 2 >= v3)
            {
              if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
              {
                goto LABEL_49;
              }

              return 0;
            }

            goto LABEL_63;
          }

          return 0;
        }

        goto LABEL_57;
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_60;
    }

    v10 = v5 - v4;
    if (!v4)
    {
      v10 = 0;
    }

    v11 = v7 >= v2 || v7 < v3;
    if (v11 || v7 < 0 || v7 >= v10)
    {
      goto LABEL_62;
    }

    if (*(v4 + v7) != 13)
    {
      return 0;
    }

LABEL_49:
    v1[1] = v7;
    return 1;
  }

  if (result == 2)
  {
    if (v2 == v3)
    {
      return 0;
    }

    v7 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      goto LABEL_59;
    }

    v8 = v5 - v4;
    if (!v4)
    {
      v8 = 0;
    }

    v9 = v7 >= v2 || v7 < v3;
    if (v9 || v7 < 0 || v7 >= v8)
    {
      goto LABEL_61;
    }

    if (*(v4 + v7) != 10)
    {
      return 0;
    }

    goto LABEL_49;
  }

  v12 = v5 - v4;
  if (!v4)
  {
    v12 = 0;
  }

  if (v3 < 0 || v12 < v3)
  {
    goto LABEL_56;
  }

  if (v2 < 0 || v12 < v2)
  {
    goto LABEL_58;
  }

  if (v2 - v3 < 2)
  {
LABEL_50:
    result = sub_1B0CB4BC4(*v1, v1[1], v1[2], v1[3]);
    if ((result & 0x1FF) == 0xA)
    {
      if (v2 > v3)
      {
        *v1 = v3;
        v1[1] = v2 - 1;
        v1[2] = v4;
        v1[3] = v5;
        return 1;
      }

      goto LABEL_65;
    }

    return 0;
  }

  v7 = v2 - 2;
  if (v2 - 2 >= v3)
  {
    if (*(v4 + v7) == 13 && *(v4 + v2 - 1) == 10)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1B0C94C70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v7 = 0;
  v8 = a4 - a3;
  if (a4 <= a3)
  {
LABEL_11:
    v14 = 0;
    v15 = 0;
    if (!result)
    {
      return a7(v15, v14);
    }

    goto LABEL_15;
  }

  v9 = (a5 + a3);
  do
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 != 13 && v10 != 10)
    {
      *(result + v7) = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    --v8;
  }

  while (v8);
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_15:
      v14 = v7 + result;
      v15 = result;
      return a7(v15, v14);
    }

    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    return a7(v15, v14);
  }

  __break(1u);
  return result;
}

void *sub_1B0C94D10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr))
{
  v6 = 0;
  v7 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v8 = (a4 + a2);
  while (1)
  {
    v10 = *v8++;
    v9 = v10;
    if (v10 != 13 && v9 != 10)
    {
      *(result + v6) = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }

    if (!--v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    result = a5(&var1);
    if (!v5)
    {
      return var1;
    }
  }

  return result;
}

void *sub_1B0C94D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, char *, __n128))
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 == a1)
  {
LABEL_13:
    if (a3)
    {
      v10 = a3 + a2;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      v11 = a3 + a1;
    }

    else
    {
      v11 = 0;
    }

    result = (a5)((&v28 + 7), v11, v10);
    if (!v5)
    {
      return HIBYTE(v28);
    }
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    v7 = a1;
    while (1)
    {
      if (v7 >= a2)
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (a1 < 0 || v7 >= v6)
      {
        goto LABEL_39;
      }

      v8 = *(a3 + v7);
      if (v8 == 13 || v8 == 10)
      {
        break;
      }

      if (a2 == ++v7)
      {
        goto LABEL_13;
      }
    }

    if (v6 < a2)
    {
      goto LABEL_41;
    }

    if (a2 - a1 < 0)
    {
      __break(1u);
    }

    if (a2 - a1 >= 1025)
    {
      goto LABEL_42;
    }

    do
    {
      v13.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
      v15 = &v28 - v14;
      v16 = 0;
      while (1)
      {
        v17 = *(a3 + a1);
        if (v17 != 13 && v17 != 10)
        {
          v15[v16] = v17;
          if (__OFADD__(v16++, 1))
          {
            break;
          }
        }

        if (++a1 >= a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_33:
      if ((v16 & 0x8000000000000000) == 0)
      {
        a5((&v28 + 6), v15, &v15[v16], v13);
        if (v5)
        {
          return swift_willThrow();
        }

        else
        {
          return BYTE6(v28);
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v20 = a1;
      v21 = a2;
      v22 = a5;
      v23 = a3;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      a1 = v20;
    }

    while ((isStackAllocationSafe & 1) != 0);
    v25 = v22;
    v26 = swift_slowAlloc();
    v27 = sub_1B0C94D10(v26, v20, v21, v23, v25);
    result = MEMORY[0x1B272C230](v26, -1, -1);
    if (!v5)
    {
      return v27;
    }
  }

  return result;
}

void *sub_1B0C94FE4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2;
  if (a3 <= a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v6 = (a4 + a2);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    if (v8 != 13 && v7 != 10)
    {
      *(result + v5) = v7;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (!result)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    return MEMORY[0x1E69E7CC0];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      v11 = result;
      v12 = sub_1B03B7A3C(v5, 0);
      memmove(v12 + 4, v11, v5);
      return v12;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1B0C95098(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = a3 - a2;
  if (a3 <= a2)
  {
    goto LABEL_12;
  }

  v7 = (a4 + a2);
  while (1)
  {
    v9 = *v7++;
    v8 = v9;
    if (v9 != 13 && v8 != 10)
    {
      result[v5] = v8;
      if (__OFADD__(v5++, 1))
      {
        break;
      }
    }

    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_12:
    v12 = &result[v5];
    if (result)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    result = sub_1B0C77010(result, v13, &v14);
    if (!v4)
    {
      return v14;
    }
  }

  return result;
}

uint64_t MediaType.init(type:subtype:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = sub_1B0E44B98();
  v13 = v11;
  if ((v12 != 0x72617069746C756DLL || v11 != 0xE900000000000074) && (sub_1B0E46A78() & 1) == 0)
  {
    if (v12 == 0x746163696C707061 && v13 == 0xEB000000006E6F69 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 1;
    }

    else if (v12 == 0x6F69647561 && v13 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 2;
    }

    else if (v12 == 0x6567616D69 && v13 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 3;
    }

    else if (v12 == 0x6567617373656DLL && v13 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 4;
    }

    else if (v12 == 1954047348 && v13 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 5;
    }

    else if (v12 == 0x6F65646976 && v13 == 0xE500000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 6;
    }

    else if (v12 == 1953394534 && v13 == 0xE400000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 7;
    }

    else if (v12 == 0x656C706D617865 && v13 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      v18 = 8;
    }

    else
    {
      if (v12 == 0x6C65646F6DLL && v13 == 0xE500000000000000)
      {
      }

      else
      {
        v19 = sub_1B0E46A78();

        if ((v19 & 1) == 0)
        {
          v18 = 10;
          goto LABEL_19;
        }
      }

      v18 = 9;
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    a2 = 0;
    v18 = 0;
    a1 = a3;
    a3 = 0;
    goto LABEL_19;
  }

  v16 = sub_1B0E44B98();
  v17 = v15;
  if ((v16 != 0x646578696DLL || v15 != 0xE500000000000000) && (sub_1B0E46A78() & 1) == 0)
  {
    if (v16 == 0x747365676964 && v17 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 2;
      goto LABEL_19;
    }

    if (v16 == 0x74616E7265746C61 && v17 == 0xEB00000000657669 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 3;
      goto LABEL_19;
    }

    if (v16 == 0x646574616C6572 && v17 == 0xE700000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 4;
      goto LABEL_19;
    }

    if (v16 == 0x74726F706572 && v17 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 5;
      goto LABEL_19;
    }

    if (v16 == 0x64656E676973 && v17 == 0xE600000000000000 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 6;
      goto LABEL_19;
    }

    if (v16 == 0x6574707972636E65 && v17 == 0xE900000000000064 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 7;
      goto LABEL_19;
    }

    if (v16 == 0x7461642D6D726F66 && v17 == 0xE900000000000061 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 8;
      goto LABEL_19;
    }

    if (v16 == 0x2D646578696D2D78 && v17 == 0xEF6563616C706572 || (sub_1B0E46A78() & 1) != 0)
    {

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 9;
      goto LABEL_19;
    }

    if (v16 == 0x676E617265747962 && v17 == 0xE900000000000065)
    {

LABEL_86:

      a1 = 0;
      a3 = 0;
      a4 = 0;
      v18 = 0;
      a2 = 10;
      goto LABEL_19;
    }

    v20 = sub_1B0E46A78();

    if (v20)
    {
      goto LABEL_86;
    }

    v18 = 0;
LABEL_14:
    a1 = a3;
    a2 = a4;
    a3 = 0;
    a4 = 0;
    goto LABEL_19;
  }

  a1 = 0;
  a3 = 0;
  a4 = 0;
  v18 = 0;
  a2 = 1;
LABEL_19:
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v18;
  return result;
}

uint64_t sub_1B0C95928(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x74616E7265746C61;
    v7 = 0x676E617265747962;
    v8 = 0x747365676964;
    if (a1 != 3)
    {
      v8 = 0x6574707972636E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x756F64656C707061;
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
    v1 = 0x646574616C6572;
    v2 = 0x74726F706572;
    if (a1 != 9)
    {
      v2 = 0x64656E676973;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x7461642D6D726F66;
    v4 = 0x646578696DLL;
    if (a1 != 6)
    {
      v4 = 0x2D646578696D2D78;
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

BOOL sub_1B0C95AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7);
}

unint64_t sub_1B0C95B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C98384(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0C95B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C95928(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0C95BB0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1953394534;
    v6 = 0x656C706D617865;
    if (a1 != 8)
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1954047348;
    if (a1 != 5)
    {
      v7 = 0x6F65646976;
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
    v1 = 0x72617069746C756DLL;
    v2 = 0x6F69647561;
    v3 = 0x6567616D69;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746163696C707061;
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

uint64_t sub_1B0C95CEC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B0E46A78();
  }

  return v12 & 1;
}

uint64_t sub_1B0C95D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1B0E46C28();
  a3(v5);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0C95E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0C95E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1B0E46C28();
  a4(v6);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t sub_1B0C95EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B0C983D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B0C95F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B0C95BB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static MediaType.uniformType(filename:mimeType:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v51 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v50 = sub_1B0E43788();
  v11 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v44 - v16;
  v17 = sub_1B0E44AC8();
  v18 = [v17 pathExtension];

  sub_1B0E44AD8();
  v45 = sub_1B0E44B98();
  v49 = v19;

  v20 = sub_1B0E44AC8();
  v21 = [v20 pathExtension];

  sub_1B0E44AD8();
  v22 = sub_1B0E44B98();
  v24 = v23;

  v53 = a2;
  if ((a2 != 0x746163696C707061 || a3 != 0xEF70697A2F6E6F69) && (sub_1B0E46A78() & 1) == 0)
  {
    goto LABEL_16;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 || v22 == 7367034 && v24 == 0xE300000000000000 || (sub_1B0E46A78() & 1) != 0)
  {
    v26 = sub_1B0E44AC8();
    v27 = [v26 stringByDeletingPathExtension];

    v28 = v50;
    if (!v27)
    {
      sub_1B0E44AD8();
      v27 = sub_1B0E44AC8();
    }

    v29 = [v27 pathExtension];

    sub_1B0E44AD8();
    v22 = sub_1B0E44B98();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v24 = v31;
    }

    else
    {
      v22 = 7367034;

      v24 = 0xE300000000000000;
    }
  }

  else
  {
LABEL_16:
    v28 = v50;
  }

  v33 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v33 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_24;
  }

  String.declaredUTTypeFromExtension.getter(v10);
  if ((*(v11 + 48))(v10, 1, v28) == 1)
  {

    sub_1B075D100(v10);
LABEL_24:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E436D8();
    v34 = v48;
    sub_1B0E435F8();
    if ((*(v11 + 48))(v34, 1, v28) == 1)
    {

      sub_1B075D100(v34);
      return (*(v11 + 56))(v51, 1, 1, v28);
    }

    v35 = *(v11 + 32);
    v36 = v46;
    v35(v46, v34, v28);
    v37 = sub_1B0E43768();

    if (v37)
    {
      (*(v11 + 8))(v36, v28);
      return (*(v11 + 56))(v51, 1, 1, v28);
    }

    v43 = v51;
    v35(v51, v36, v28);
    return (*(v11 + 56))(v43, 0, 1, v28);
  }

  v50 = a3;
  v39 = *(v11 + 32);
  v39(v47, v10, v28);
  v40 = v52;
  sub_1B0E43758();
  v41 = sub_1B0E43738();
  v42 = *(v11 + 8);
  v42(v40, v28);
  if ((v41 & 1) == 0 && (v22 != v45 || v24 != v49) && (sub_1B0E46A78() & 1) == 0)
  {
    if ((sub_1B0E46A78() & 1) == 0)
    {
      String.declaredUTTypeFromExtension.getter(v51);

      return (v42)(v47, v28);
    }

    v42(v47, v28);

    goto LABEL_24;
  }

  v43 = v51;
  v39(v51, v47, v28);
  return (*(v11 + 56))(v43, 0, 1, v28);
}

uint64_t String.declaredUTTypeFromExtension.getter@<X0>(char *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1B0E43788();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E436D8();
  sub_1B0E43638();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B075D100(v6);
LABEL_5:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E43728();
    return sub_1B0E43638();
  }

  v12 = *(v8 + 32);
  v12(v11, v6, v7);
  if (sub_1B0E43768())
  {
    (*(v8 + 8))(v11, v7);
    goto LABEL_5;
  }

  v12(a3, v11, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

uint64_t sub_1B0C9681C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v5 = *(v0 + 32);
  sub_1B07B4718(v4, v3);
  return _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(v4);
}

uint64_t MediaType.Multipart.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2 > 5)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          return 0x2D646578696D2D78;
        case 10:
          return 0x676E617265747962;
        case 11:
          return 0x756F64656C707061;
      }

      goto LABEL_26;
    }

    if (a2 == 6)
    {
      return 0x64656E676973;
    }

    else if (a2 == 7)
    {
      return 0x6574707972636E65;
    }

    else
    {
      return 0x7461642D6D726F66;
    }
  }

  else
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          sub_1B07ACFA8(a1, 0);
          return 0;
        case 1:
          return 0x646578696DLL;
        case 2:
          return 0x747365676964;
      }

LABEL_26:
      sub_1B07ACD88(a1, a2);
      return a1;
    }

    if (a2 == 3)
    {
      return 0x74616E7265746C61;
    }

    else if (a2 == 4)
    {
      return 0x646574616C6572;
    }

    else
    {
      return 0x74726F706572;
    }
  }
}