void sub_26B15E17C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  v5 = 0;
  switch(a3 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        goto LABEL_42;
      }

      v5 = v5;
      goto LABEL_6;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_43;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(a3);
LABEL_6:
      if (!result)
      {
        goto LABEL_40;
      }

      if (v5 == 0x8000000000000000 && result == -1)
      {
        goto LABEL_41;
      }

      v25 = BYTE6(a3);
      sub_26B16A72C();
      v11 = v10;
      v12 = 0;
      v14 = v25;
      v13 = a2;
      v15 = 0;
      switch(v3)
      {
        case 1:
          v15 = a2;
          v12 = a2 >> 32;
          break;
        case 2:
          v15 = *(a2 + 16);
          v12 = *(a2 + 24);
          break;
        case 3:
          break;
        default:
          v15 = 0;
          v12 = v25;
          break;
      }

      v16 = 0;
      break;
  }

  while (1)
  {
    v17 = v12 >= v15;
    if (result > 0)
    {
      v17 = v15 >= v12;
    }

    if (v17)
    {
      break;
    }

    v18 = v15 + result;
    if (__OFADD__(v15, result))
    {
      v19 = ((v15 + result) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v19 = v15 + result;
    }

    if (__OFADD__(v15, result))
    {
      goto LABEL_38;
    }

LABEL_26:
    v20 = 0;
    switch(v3)
    {
      case 1:
        v20 = a2 >> 32;
        break;
      case 2:
        v20 = *(v13 + 24);
        break;
      case 3:
        break;
      default:
        v20 = v14;
        break;
    }

    if (v20 >= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if (v21 < v15)
    {
      goto LABEL_39;
    }

    v22 = *(v11 + 16);
    if (v22 >= *(v11 + 24) >> 1)
    {
      sub_26B16A72C();
      v14 = v25;
      v13 = a2;
      v11 = v24;
    }

    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v15;
    *(v23 + 40) = v21;
    v15 = v19;
  }

  if ((v15 != v12) | v16 & 1)
  {
    return;
  }

  v18 = v15 + result;
  if (!__OFADD__(v15, result))
  {
    v16 = 1;
    v19 = v15;
    goto LABEL_26;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t Data.HexLine.offset.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Data.HexLine.hex.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Data.HexLine.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Data.HexLine.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * v3, 8))
  {
    sub_26B14FCC8();
    v4 = sub_26B2134D0();
    v6 = v5;
    sub_26B2128F0();
    MEMORY[0x26D670040](8250, 0xE200000000000000);
    MEMORY[0x26D670040](v4, v6);

    MEMORY[0x26D670040](32, 0xE100000000000000);
    MEMORY[0x26D670040](v1, v2);
    return;
  }

  __break(1u);
}

uint64_t Data.hexLines(bytesPerRow:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = Data.chunked(by:)(a1, a2, a3);
  v4 = *(v3 + 16);
  if (v4)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_26B15B218(0, v4, 0);
    v6 = 0;
    v7 = v37;
    v34 = v4;
    v8 = (v3 + 40);
    while (v4 != v6)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = OUTLINED_FUNCTION_7_3();
      sub_26B14F044(v11, v12);
      v13 = OUTLINED_FUNCTION_7_3();
      sub_26B14F044(v13, v14);
      v15 = OUTLINED_FUNCTION_7_3();
      sub_26B14FF4C(v15, v16);
      sub_26B15E7B4(v6, v9, v10, a1, v36);
      v17 = OUTLINED_FUNCTION_7_3();
      result = sub_26B14FF4C(v17, v18);
      v19 = v36[0];
      v20 = v36[1];
      v21 = v36[2];
      v22 = v36[3];
      v23 = v36[4];
      v24 = v36[5];
      v25 = v36[6];
      v37 = v7;
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = OUTLINED_FUNCTION_8_3(v26);
        v32 = v31;
        v33 = v30;
        result = sub_26B15B218(v29, v27 + 1, 1);
        v25 = v32;
        v23 = v33;
        v7 = v37;
      }

      ++v6;
      *(v7 + 16) = v27 + 1;
      v28 = (v7 + 56 * v27);
      v28[4] = v19;
      v28[5] = v20;
      v28[6] = v21;
      v28[7] = v22;
      v28[8] = v23;
      v28[9] = v24;
      v28[10] = v25;
      v8 += 2;
      v4 = v34;
      if (v34 == v6)
      {

        return v7;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26B15E7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v106 = *MEMORY[0x277D85DE8];
  sub_26B15FDE4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26B2162F0;
  if ((a1 * a4) >> 64 != (a1 * a4) >> 63)
  {
    goto LABEL_107;
  }

  v82 = a4;
  v10 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v10;
  *(v9 + 32) = a1 * a4;
  v11 = sub_26B212AB0();
  v80 = v12;
  v81 = v11;
  v87 = a2;
  v13 = Data.chunked(by:)(2, a2, a3);
  v14 = *(v13 + 16);
  v88 = a3;
  if (!v14)
  {

    v16 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v105 = MEMORY[0x277D84F90];
  sub_26B15B06C();
  v15 = 0;
  v16 = v105;
  v85 = v13;
  v86 = v13 + 32;
  v84 = v14;
  do
  {
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_97;
    }

    v89 = v15 + 1;
    v90 = v16;
    v17 = (v86 + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    v21 = MEMORY[0x277D84F90];
    v22 = HIDWORD(*v17);
    switch(v19 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(v22, v18))
        {
          goto LABEL_106;
        }

        v23 = v22 - v18;
LABEL_11:
        v26 = v22;
        sub_26B14F044(v18, v19);
        LOBYTE(v22) = v26;
        if (!v23)
        {
          goto LABEL_43;
        }

LABEL_12:
        v92 = v22;
        v104 = MEMORY[0x277D84F90];
        sub_26B15B06C();
        if (v20)
        {
          if (v20 == 2)
          {
            v27 = *(v18 + 16);
          }

          else
          {
            v27 = v18;
          }
        }

        else
        {
          v27 = 0;
        }

        v97 = v27;
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        v28 = 0;
        v21 = v104;
        v91 = &v98 + v27;
        v95 = v23;
        break;
      case 2uLL:
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        v23 = v24 - v25;
        if (!__OFSUB__(v24, v25))
        {
          goto LABEL_11;
        }

        goto LABEL_105;
      case 3uLL:
        goto LABEL_43;
      default:
        v23 = BYTE6(v19);
        if (!BYTE6(v19))
        {
          goto LABEL_43;
        }

        goto LABEL_12;
    }

    do
    {
      if (v28 >= v23)
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
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
      }

      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_90;
      }

      v30 = v97 + v28;
      if (v20 == 2)
      {
        if (v30 < *(v18 + 16))
        {
          goto LABEL_92;
        }

        if (v30 >= *(v18 + 24))
        {
          goto LABEL_94;
        }

        v36 = sub_26B211D10();
        if (!v36)
        {
          goto LABEL_112;
        }

        v33 = v36;
        v37 = sub_26B211D40();
        v35 = v30 - v37;
        if (__OFSUB__(v30, v37))
        {
          goto LABEL_96;
        }

        goto LABEL_36;
      }

      if (v20 == 1)
      {
        if (v30 < v18 || v30 >= v18 >> 32)
        {
          goto LABEL_93;
        }

        v32 = sub_26B211D10();
        if (!v32)
        {
          goto LABEL_111;
        }

        v33 = v32;
        v34 = sub_26B211D40();
        v35 = v30 - v34;
        if (__OFSUB__(v30, v34))
        {
          goto LABEL_95;
        }

LABEL_36:
        v38 = *(v33 + v35);
        goto LABEL_39;
      }

      if (v30 >= BYTE6(v19))
      {
        goto LABEL_91;
      }

      LOWORD(v98) = v18;
      BYTE2(v98) = BYTE2(v18);
      BYTE3(v98) = BYTE3(v18);
      BYTE4(v98) = v92;
      BYTE5(v98) = BYTE5(v18);
      BYTE6(v98) = BYTE6(v18);
      HIBYTE(v98) = HIBYTE(v18);
      v99 = v19;
      v100 = BYTE2(v19);
      v101 = BYTE3(v19);
      v102 = BYTE4(v19);
      v103 = BYTE5(v19);
      v38 = v91[v28];
LABEL_39:
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_26B2162F0;
      *(v39 + 56) = MEMORY[0x277D84B78];
      *(v39 + 64) = MEMORY[0x277D84BC0];
      *(v39 + 32) = v38;
      v40 = sub_26B212AB0();
      v42 = v41;
      v104 = v21;
      v43 = *(v21 + 16);
      if (v43 >= *(v21 + 24) >> 1)
      {
        sub_26B15B06C();
        v21 = v104;
      }

      *(v21 + 16) = v43 + 1;
      v44 = v21 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v42;
      ++v28;
      v23 = v95;
      LODWORD(v20) = v19 >> 62;
    }

    while (v29 != v95);
    a3 = v88;
LABEL_43:
    v98 = v21;
    v45 = MEMORY[0x277D837D0];
    sub_26B15FC94(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_26B15FCE4(&qword_2803E6DB0, &qword_2803E6D38, v45, MEMORY[0x277D83958]);
    v46 = sub_26B2129F0();
    v48 = v47;
    sub_26B14FF4C(v18, v19);

    v16 = v90;
    v105 = v90;
    v49 = *(v90 + 16);
    if (v49 >= *(v90 + 24) >> 1)
    {
      sub_26B15B06C();
      v16 = v105;
    }

    *(v16 + 16) = v49 + 1;
    v50 = v16 + 16 * v49;
    *(v50 + 32) = v46;
    *(v50 + 40) = v48;
    v15 = v89;
    v13 = v85;
  }

  while (v89 != v84);

LABEL_48:
  v98 = v16;
  v51 = MEMORY[0x277D837D0];
  sub_26B15FC94(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_26B15FCE4(&qword_2803E6DB0, &qword_2803E6D38, v51, MEMORY[0x277D83958]);
  v52 = sub_26B2129F0();
  v54 = v53;

  v55 = a3 >> 62;
  v56 = MEMORY[0x277D84F90];
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(v87), v87))
      {
        goto LABEL_109;
      }

      v57 = HIDWORD(v87) - v87;
LABEL_53:
      if (!v57)
      {
        goto LABEL_88;
      }

      v105 = MEMORY[0x277D84F90];
      sub_26B15B238(0, v57 & ~(v57 >> 63), 0);
      v60 = v87;
      if (v55)
      {
        if (v55 == 2)
        {
          v61 = *(v87 + 16);
        }

        else
        {
          v61 = v87;
        }
      }

      else
      {
        v61 = 0;
      }

      if (v57 < 0)
      {
        goto LABEL_108;
      }

      v96 = BYTE6(a3);
      v94 = v52;
      v93 = v54;
      v56 = v105;
      break;
    case 2uLL:
      v59 = *(v87 + 16);
      v58 = *(v87 + 24);
      v57 = v58 - v59;
      if (!__OFSUB__(v58, v59))
      {
        goto LABEL_53;
      }

      goto LABEL_110;
    case 3uLL:
      goto LABEL_88;
    default:
      v57 = BYTE6(a3);
      goto LABEL_53;
  }

  while (2)
  {
    if (v55 == 1)
    {
      if (v61 < v87 || v61 >= v87 >> 32)
      {
        goto LABEL_101;
      }

      v64 = sub_26B211D10();
      if (!v64)
      {
        goto LABEL_113;
      }

      v65 = v64;
      v66 = sub_26B211D40();
      v67 = v61 - v66;
      if (__OFSUB__(v61, v66))
      {
        goto LABEL_103;
      }

LABEL_78:
      v62 = *(v65 + v67);
      goto LABEL_79;
    }

    if (v55)
    {
      if (v61 < *(v60 + 16))
      {
        goto LABEL_99;
      }

      if (v61 >= *(v60 + 24))
      {
        goto LABEL_102;
      }

      v68 = sub_26B211D10();
      if (!v68)
      {
        goto LABEL_114;
      }

      v65 = v68;
      v69 = sub_26B211D40();
      v67 = v61 - v69;
      if (__OFSUB__(v61, v69))
      {
        goto LABEL_104;
      }

      goto LABEL_78;
    }

    if (v61 >= v96)
    {
      goto LABEL_100;
    }

    LOWORD(v98) = v60;
    BYTE2(v98) = BYTE2(v60);
    BYTE3(v98) = BYTE3(v60);
    BYTE4(v98) = BYTE4(v87);
    BYTE5(v98) = BYTE5(v60);
    BYTE6(v98) = BYTE6(v60);
    HIBYTE(v98) = HIBYTE(v60);
    v99 = a3;
    v100 = BYTE2(a3);
    v101 = BYTE3(a3);
    v102 = BYTE4(a3);
    v103 = BYTE5(a3);
    v62 = *(&v98 + v61);
LABEL_79:
    if (isprint(v62))
    {
      v70 = ((v62 >> 6) & 0xFFFFC0FF | ((v62 & 0x3F) << 8)) + 33217;
      if ((v62 & 0x80) == 0)
      {
        v70 = v62 + 1;
      }

      v98 = (v70 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v70) >> 3))));
      v71 = sub_26B212B60();
      v73 = v72;
    }

    else
    {
      v73 = 0xE100000000000000;
      v71 = 46;
    }

    v60 = v87;
    v105 = v56;
    v75 = *(v56 + 16);
    v74 = *(v56 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_26B15B238(v74 > 1, v75 + 1, 1);
      v60 = v87;
      v56 = v105;
    }

    *(v56 + 16) = v75 + 1;
    v76 = v56 + 16 * v75;
    *(v76 + 32) = v71;
    *(v76 + 40) = v73;
    ++v61;
    --v57;
    a3 = v88;
    if (v57)
    {
      continue;
    }

    break;
  }

  v52 = v94;
  v54 = v93;
LABEL_88:
  v98 = v56;
  v77 = MEMORY[0x277D835B0];
  sub_26B15FC94(0, &qword_2803E6D90, MEMORY[0x277D835B0], MEMORY[0x277D83940]);
  sub_26B15FCE4(&qword_2803E6D98, &qword_2803E6D90, v77, MEMORY[0x277D83970]);
  result = sub_26B212CE0();
  *a5 = v81;
  a5[1] = v80;
  a5[2] = v52;
  a5[3] = v54;
  a5[4] = result;
  a5[5] = v79;
  a5[6] = v82;
  return result;
}

void Data.hexDescription.getter(uint64_t a1, unint64_t a2)
{
  sub_26B2136C0();

  v66 = 0x3C2061746144;
  v67 = 0xE600000000000000;
  MEMORY[0x26D66F450](a1, a2);
  v4 = sub_26B213B90();
  MEMORY[0x26D670040](v4);

  MEMORY[0x26D670040](0xA3E736574796220, 0xE800000000000000);
  v5 = Data.chunked(by:)(16, a1, a2);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    sub_26B15B218(0, v6, 0);
    v8 = 0;
    v9 = (v5 + 40);
    v63 = v6;
    while (v6 != v8)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = OUTLINED_FUNCTION_6_3();
      v14 = v13;
      sub_26B14F044(v12, v15);
      v16 = OUTLINED_FUNCTION_6_3();
      sub_26B14F044(v16, v17);
      v18 = OUTLINED_FUNCTION_6_3();
      sub_26B14FF4C(v18, v19);
      sub_26B15E7B4(v8, v10, v11, 16, &v66);
      v20 = OUTLINED_FUNCTION_6_3();
      sub_26B14FF4C(v20, v21);
      v22 = v14;
      v23 = v66;
      v24 = v67;
      v25 = v68;
      v26 = v69;
      v28 = v70;
      v27 = v71;
      v29 = v72;
      v64 = v14;
      v30 = *(v14 + 16);
      v31 = *(v22 + 24);
      if (v30 >= v31 >> 1)
      {
        v33 = OUTLINED_FUNCTION_8_3(v31);
        v61 = v35;
        v62 = v34;
        sub_26B15B218(v33, v30 + 1, 1);
        v29 = v61;
        v25 = v62;
        v22 = v64;
      }

      ++v8;
      *(v22 + 16) = v30 + 1;
      v32 = (v22 + 56 * v30);
      v32[4] = v23;
      v32[5] = v24;
      v32[6] = v25;
      v32[7] = v26;
      v32[8] = v28;
      v32[9] = v27;
      v32[10] = v29;
      v9 += 2;
      v6 = v63;
      if (v63 == v8)
      {
        v36 = v22;

        v37 = v36;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_9:
  v38 = *(v37 + 16);
  if (v38)
  {
    v65 = v7;
    v39 = v37;
    sub_26B15B06C();
    v40 = v65;
    v41 = (v39 + 80);
    while (1)
    {
      v42 = *(v41 - 6);
      v43 = *(v41 - 5);
      v44 = *(v41 - 3);
      v45 = *(v41 - 2);
      v46 = *(v41 - 1);
      v47 = *v41;
      v66 = *(v41 - 4);
      v67 = v44;
      if (v47 + 0x4000000000000000 < 0)
      {
        break;
      }

      if (__OFADD__(2 * v47, 8))
      {
        goto LABEL_21;
      }

      sub_26B14FCC8();
      v48 = sub_26B2134D0();
      v50 = v49;
      v66 = v42;
      v67 = v43;
      sub_26B2128F0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);
      MEMORY[0x26D670040](v48, v50);

      MEMORY[0x26D670040](32, 0xE100000000000000);
      MEMORY[0x26D670040](v45, v46);
      v51 = v66;
      v52 = v67;
      v54 = *(v65 + 16);
      v53 = *(v65 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_8_3(v53);
        sub_26B15B06C();
      }

      v41 += 7;
      *(v65 + 16) = v54 + 1;
      v55 = v65 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      if (!--v38)
      {

        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v40 = MEMORY[0x277D84F90];
LABEL_18:
  v66 = v40;
  v56 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_0_8();
  sub_26B15FC94(0, &qword_2803E6D38, v56, v57);
  sub_26B15FCE4(&qword_2803E6DB0, &qword_2803E6D38, v56, MEMORY[0x277D83958]);
  v58 = sub_26B2129F0();
  v60 = v59;

  v66 = 0x3C2061746144;
  v67 = 0xE600000000000000;
  sub_26B2128F0();
  MEMORY[0x26D670040](v58, v60);
}

void sub_26B15F540(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {

    sub_26B15B06C();
  }
}

unsigned __int8 *sub_26B15F5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;
  sub_26B2128F0();
  result = sub_26B212CF0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26B1653B0(result, v5);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B213780();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            LOBYTE(v14) = 0;
            v25 = result + 1;
            v16 = 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v14 * a3;
              if ((v28 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v14 = v28 + (v26 + v27);
              if ((v14 >> 8))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          LOBYTE(v32) = 0;
          v16 = 1;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a3;
            if ((v35 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if ((v32 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v32;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          LOBYTE(v14) = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v14 = v20 - (v17 + v18);
            if ((v14 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v63 = v6;
  v64 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v38)
      {
        LOBYTE(v40) = 0;
        v56 = a3 + 48;
        v57 = a3 + 55;
        v58 = a3 + 87;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v63;
        v16 = 1;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a3;
          if ((v62 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if ((v40 >> 8))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        LOBYTE(v40) = 0;
        v41 = a3 + 48;
        v42 = a3 + 55;
        v43 = a3 + 87;
        if (a3 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v63 + 1;
        v16 = 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a3;
          if ((v47 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if ((v40 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      LOBYTE(v40) = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v63 + 1;
      v16 = 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a3;
        if ((v55 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if ((v40 >> 8))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v16 = 0;
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void *sub_26B15FB88(unint64_t a1, unint64_t a2)
{
  v4 = sub_26B212BB0();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_26B15FF64(v4, 0);
  sub_26B2128F0();
  v7 = sub_26B15FE98(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t sub_26B15FC18()
{
  result = qword_2803E6DA8;
  if (!qword_2803E6DA8)
  {
    sub_26B15FC94(255, &qword_2803E6DA0, MEMORY[0x277D84B78], MEMORY[0x277D84220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DA8);
  }

  return result;
}

void sub_26B15FC94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B15FCE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_8();
    sub_26B15FC94(255, v6, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t sub_26B15FD48(uint64_t a1, int a2)
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

uint64_t sub_26B15FD88(uint64_t result, int a2, int a3)
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

void sub_26B15FDE4(uint64_t a1)
{
  if (!qword_2803E6DB8)
  {
    sub_26B15FE3C();
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6DB8);
    }
  }
}

unint64_t sub_26B15FE3C()
{
  result = qword_2803E6DC0;
  if (!qword_2803E6DC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E6DC0);
  }

  return result;
}

uint64_t sub_26B15FE98(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_26B212C30();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26B15FF64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26B15FC94(0, &qword_2803E6D50, MEMORY[0x277D835B0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t NSProcessInfo.isDebugging.getter()
{
  if (qword_2803E6AD0 != -1)
  {
    swift_once();
  }

  sub_26B1620DC(0, &qword_2803E6DC8, MEMORY[0x277D849A8]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26B216370;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  sub_26B160108(v0, v2);

  return (v3 >> 11) & 1;
}

uint64_t sub_26B160108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x288uLL);
  v6 = a1;
  v7 = 648;
  sub_26B2128F0();
  sub_26B16256C(__src, &v6, &v7);
  if (!v2)
  {
    memcpy(a2, __src, 0x288uLL);
  }
}

uint64_t KernelError.message.getter()
{
  v1 = *(v0 + 8);
  sub_26B2128F0();
  return v1;
}

uint64_t KernelError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t NSThread.ThreadInfo.name.getter()
{
  v1 = *(v0 + 16);
  sub_26B2128F0();
  return v1;
}

uint64_t NSThread.ThreadInfo.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NSThread.info.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = sub_26B2140A0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = thread_info_out - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *thread_info_out = 0u;
  thread_info_outCnt[0] = 28;
  v8 = pthread_self();
  v9 = pthread_mach_thread_np(v8);
  v10 = thread_info(v9, 5u, thread_info_out, thread_info_outCnt);
  if (v10)
  {
    v11 = v10;
    sub_26B161D38();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0xD00000000000001BLL;
    *(v12 + 16) = 0x800000026B21F600;
    return swift_willThrow();
  }

  else
  {
    v30 = sub_26B161D8C(0);
    v14 = swift_allocObject();
    *thread_info_outCnt = v14;
    v15 = v26;
    v14[1] = v25;
    v14[2] = v15;
    v16 = v28;
    v14[3] = v27;
    v14[4] = v16;
    sub_26B214080();
    sub_26B214090();
    v17 = sub_26B160634(sub_26B1605F8, 0);

    v18 = sub_26B1606C4(v17);
    v20 = v19;
    result = (*(v4 + 8))(v7, v2);
    v21 = HIDWORD(v24);
    *a1 = *(&v24 + 4);
    *(a1 + 8) = v21;
    *(a1 + 16) = v18;
    *(a1 + 24) = v20;
  }

  return result;
}

uint64_t sub_26B1605A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26B15CF98(a3, v5);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_26B1605F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26B1605A8(*a1, a1[1], (a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_26B160634(uint64_t a1, uint64_t a2)
{
  result = sub_26B2138D0();
  if (v2)
  {
    sub_26B162128();
    swift_dynamicCast();
    result = swift_willThrowTypedImpl();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1606C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
LABEL_6:
      v5 = sub_26B212B50();

      return v5;
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t waitForDebugger(for:)()
{
  OUTLINED_FUNCTION_25();
  v0[9] = v1;
  v0[10] = v2;
  v3 = sub_26B212FB0();
  v0[11] = v3;
  OUTLINED_FUNCTION_1_7(v3);
  v0[12] = v4;
  v0[13] = OUTLINED_FUNCTION_31();
  v5 = sub_26B2126F0();
  v0[14] = v5;
  OUTLINED_FUNCTION_1_7(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_31();
  v7 = sub_26B212720();
  v0[17] = v7;
  OUTLINED_FUNCTION_1_7(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v9, v10, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_21(v11);
  v0[20] = OUTLINED_FUNCTION_31();
  v12 = sub_26B213880();
  v0[21] = v12;
  OUTLINED_FUNCTION_1_7(v12);
  v0[22] = v13;
  v0[23] = *(v14 + 64);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v15 = sub_26B2138A0();
  v0[26] = v15;
  OUTLINED_FUNCTION_1_7(v15);
  v0[27] = v16;
  v0[28] = *(v17 + 64);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1609A0, 0, 0);
}

uint64_t sub_26B1609A0()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[24];
  v34 = v1;
  v35 = v0[23];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  v36 = v0[28];
  v37 = v0[9];
  v39 = v0[10];
  sub_26B213890();
  sub_26B213840();
  v10 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v8 + 16))(v6, v5, v7);
  (*(v3 + 16))(v1, v2, v4);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = (v35 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v8 + 32))(v13 + v11, v6, v7);
  (*(v3 + 32))(v13 + v12, v34, v4);
  v14 = (v13 + ((v36 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = v37;
  v14[1] = v39;
  sub_26B161608();
  v16 = v15;
  v0[31] = v15;
  LODWORD(v9) = isatty(0);
  sub_26B1620DC(0, &qword_2803E6DE8, MEMORY[0x277D84F70] + 8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B2162F0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  if (v9 == 1)
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[16];
    v21 = v0[15];
    v38 = v0[14];
    v40 = v0[17];
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_0(v22);
    sub_26B214020();

    v23 = sub_26B2126C0();
    fflush(v23);
    v24 = sub_26B2126E0();
    v25 = signal(2, v24);
    sub_26B162184();
    v26 = sub_26B213350();
    swift_getObjectType();
    v0[6] = sub_26B1621C8;
    v0[7] = v16;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26B161BE4;
    v0[5] = &block_descriptor;
    v27 = _Block_copy(v0 + 2);

    sub_26B212710();
    sub_26B161C28();
    sub_26B213360();
    _Block_release(v27);
    (*(v21 + 8))(v20, v38);
    (*(v19 + 8))(v18, v40);

    sub_26B213380();
  }

  else
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_24_0(v28);
    sub_26B214020();

    v25 = 0;
    v26 = 0;
  }

  v0[32] = v25;
  v0[33] = v26;
  v29 = swift_task_alloc();
  v0[34] = v29;
  v30 = sub_26B162128();
  v0[35] = v30;
  *v29 = v0;
  v29[1] = sub_26B160DB4;
  v31 = MEMORY[0x277D84950];
  v32 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v30, v16, v32, v30, v31);
}

uint64_t sub_26B160DB4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_22();
  *v5 = v4;
  *(v6 + 288) = v0;

  if (v0)
  {
    v7 = sub_26B161034;
  }

  else
  {
    v7 = sub_26B160EBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26B160EBC()
{
  if (*(v0 + 264))
  {
    swift_getObjectType();
    sub_26B213370();
  }

  if (isatty(0) == 1)
  {
    v4 = *(v0 + 256);
    if (!v4)
    {
      v4 = sub_26B2126D0();
    }

    signal(2, v4);
    sub_26B1620DC(0, &qword_2803E6DE8, MEMORY[0x277D84F70] + 8);
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_6_4(v5, MEMORY[0x277D837D0], xmmword_26B2162F0);

    v6 = sub_26B2126C0();
    fflush(v6);
  }

  OUTLINED_FUNCTION_3_7();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);
  v7 = OUTLINED_FUNCTION_23();
  v8(v7);

  OUTLINED_FUNCTION_10_0();

  return v9();
}

void sub_26B161034()
{
  v4 = *(v0 + 288);
  *(v0 + 64) = v4;
  v5 = v4;
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);

    (*(v7 + 8))(v6, v8);
    if (*(v0 + 264))
    {
      swift_getObjectType();
      sub_26B213370();
    }

    if (isatty(0) == 1)
    {
      v9 = *(v0 + 256);
      if (!v9)
      {
        v9 = sub_26B2126D0();
      }

      signal(2, v9);
      sub_26B1620DC(0, &qword_2803E6DE8, MEMORY[0x277D84F70] + 8);
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_6_4(v10, MEMORY[0x277D837D0], xmmword_26B2162F0);

      v11 = sub_26B2126C0();
      fflush(v11);
    }

    OUTLINED_FUNCTION_3_7();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v1, v2);
    v12 = OUTLINED_FUNCTION_23();
    v13(v12);

    OUTLINED_FUNCTION_10_0();

    v14();
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_26B161220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_26B213880();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26B1612F0, 0, 0);
}

uint64_t sub_26B1612F0(uint64_t a1)
{
  OUTLINED_FUNCTION_18(a1);
  sub_26B213870();
  v3 = OUTLINED_FUNCTION_8_4();
  v2(v3);
  OUTLINED_FUNCTION_6_3();
  if (sub_26B214140() & 1) == 0 || (v4 = [objc_opt_self() processInfo], v5 = NSProcessInfo.isDebugging.getter(), v4, (v5))
  {

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_20_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_30_1(v6);
  OUTLINED_FUNCTION_14_0();
  v9 = OUTLINED_FUNCTION_23();
  v2(v9);
  v10 = swift_task_alloc();
  *(v1 + 96) = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_2_8(v10);
  OUTLINED_FUNCTION_20_0();

  return MEMORY[0x282200618]();
}

uint64_t sub_26B161438()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  (*(v2 + 80))(*(v2 + 64), *(v2 + 48));
  if (v0)
  {
    v5 = sub_26B1615A4;
  }

  else
  {
    v5 = sub_26B1612F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B1615A4()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

void sub_26B161608()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v6, v7, MEMORY[0x277D83D88]);
  v9 = OUTLINED_FUNCTION_21(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v3, v1);
  v10 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v10);
  if (v4 == 1)
  {
    sub_26B16239C(v1);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v11 = OUTLINED_FUNCTION_6_3();
    v12(v11);
  }

  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = v14;
    sub_26B212F70();
    OUTLINED_FUNCTION_19_0();
    if (v2)
    {
LABEL_6:
      sub_26B212B10();
      v16 = OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        OUTLINED_FUNCTION_13_1();
      }

      else
      {
        v17 = 0;
      }

      v20[0] = 7;
      v20[1] = v17;
      v20[2] = v14;
      OUTLINED_FUNCTION_9_4(v16, v20, MEMORY[0x277D84F78] + 8);

      sub_26B16239C(v3);

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v18 = sub_26B16239C(v3);
  if (v13 | v15)
  {
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v19 = 0;
  }

  OUTLINED_FUNCTION_9_4(v18, v19, MEMORY[0x277D84F78] + 8);
LABEL_15:
  OUTLINED_FUNCTION_28();
}

void sub_26B1617D0()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v6, v7, MEMORY[0x277D83D88]);
  v9 = OUTLINED_FUNCTION_21(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v3, v1);
  v10 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v10);
  if (v4 == 1)
  {
    sub_26B16239C(v1);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v11 = OUTLINED_FUNCTION_6_3();
    v12(v11);
  }

  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = v14;
    sub_26B212F70();
    OUTLINED_FUNCTION_19_0();
    if (v2)
    {
LABEL_6:
      sub_26B212B10();
      v16 = OUTLINED_FUNCTION_29_0();
      if (v5)
      {
        OUTLINED_FUNCTION_13_1();
      }

      else
      {
        v17 = 0;
      }

      v20[0] = 7;
      v20[1] = v17;
      v20[2] = v14;
      OUTLINED_FUNCTION_9_4(v16, v20, &type metadata for OSState.Snapshot);

      sub_26B16239C(v3);

      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v18 = sub_26B16239C(v3);
  if (v13 | v15)
  {
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v19 = 0;
  }

  OUTLINED_FUNCTION_9_4(v18, v19, &type metadata for OSState.Snapshot);
LABEL_15:
  OUTLINED_FUNCTION_28();
}

void sub_26B161990()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_0_9();
  sub_26B162480(0, v8, v9, MEMORY[0x277D83D88]);
  v11 = OUTLINED_FUNCTION_21(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_2();
  sub_26B162308(v5, v0);
  v12 = sub_26B213020();
  OUTLINED_FUNCTION_4_7(v12);
  if (v1 == 1)
  {
    sub_26B16239C(v0);
  }

  else
  {
    sub_26B213010();
    OUTLINED_FUNCTION_7_4();
    v13 = OUTLINED_FUNCTION_6_3();
    v14(v13);
  }

  v16 = *(v3 + 16);
  v15 = *(v3 + 24);
  swift_unknownObjectRetain();

  if (!v16)
  {
    v17 = 0;
    v15 = 0;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_26B16239C(v5);
    v18 = type metadata accessor for SQLDatabase(0);
    v19 = v18;
    if (v15 | v17)
    {
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_9_4(v18, v20, v19);
    goto LABEL_14;
  }

  swift_getObjectType();
  v17 = v16;
  sub_26B212F70();
  OUTLINED_FUNCTION_19_0();
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_26B212B10();
  type metadata accessor for SQLDatabase(0);

  if (v15 | v17)
  {
    OUTLINED_FUNCTION_13_1();
  }

  swift_task_create();

  sub_26B16239C(v5);

LABEL_14:
  OUTLINED_FUNCTION_28();
}

uint64_t sub_26B161B90(uint64_t a1)
{
  sub_26B162128();

  return sub_26B2130E0();
}

uint64_t sub_26B161BE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26B161C28()
{
  sub_26B2126F0();
  sub_26B162428();
  sub_26B162480(0, &qword_2803E6E00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_26B1624E4();
  return sub_26B2135B0();
}

void sub_26B161CD4(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_26B16A808();
    v3 = v4;
  }

  *v1 = v3;
}

unint64_t sub_26B161D38()
{
  result = qword_2803E6DD0;
  if (!qword_2803E6DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DD0);
  }

  return result;
}

uint64_t sub_26B161D8C(uint64_t a1)
{
  v1 = qword_2803E6DD8;
  if (!qword_2803E6DD8)
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v1 = TupleTypeMetadata;
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2803E6DD8);
    }
  }

  return v1;
}

uint64_t sub_26B161E7C()
{
  v1 = sub_26B213880();
  OUTLINED_FUNCTION_1_7(v1);
  v2 = sub_26B2138A0();
  OUTLINED_FUNCTION_1_7(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_26B161FF4;
  OUTLINED_FUNCTION_20_0();

  return sub_26B161220(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_26B161FF4()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_22();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

void sub_26B1620DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26B213BA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26B162128()
{
  result = qword_280D2DA78;
  if (!qword_280D2DA78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280D2DA78);
  }

  return result;
}

unint64_t sub_26B162184()
{
  result = qword_2803E6DF0;
  if (!qword_2803E6DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803E6DF0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B1621E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26B162228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B162278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26B1622B8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26B162308(uint64_t a1, uint64_t a2)
{
  sub_26B162480(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B16239C(uint64_t a1)
{
  sub_26B162480(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B162428()
{
  result = qword_2803E6DF8;
  if (!qword_2803E6DF8)
  {
    sub_26B2126F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DF8);
  }

  return result;
}

void sub_26B162480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26B1624E4()
{
  result = qword_2803E6E08;
  if (!qword_2803E6E08)
  {
    sub_26B162480(255, &qword_2803E6E00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E08);
  }

  return result;
}

uint64_t sub_26B16256C(uint64_t result, void *a2, size_t *a3)
{
  v3 = *(*a2 + 16);
  if (HIDWORD(v3))
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    sub_26B161CD4(0);
    result = sysctl((*a2 + 32), v3, v6, a3, 0, 0);
    v7 = result;
    if (result || *a3 != 648)
    {
      sub_26B2136C0();

      v8 = sub_26B2128F0();
      v9 = MEMORY[0x26D670290](v8, MEMORY[0x277D849A8]);
      v11 = v10;

      MEMORY[0x26D670040](v9, v11);

      sub_26B161D38();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = 0xD000000000000020;
      *(v12 + 16) = 0x800000026B21F670;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_26B1626B4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (v2)
  {
    return swift_allocError();
  }

  *a2 = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return MEMORY[0x282200638](100000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_26B213840();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_24_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return sub_26B213840();
}

uint64_t UUID.v7Precision.hashValue.getter(unsigned __int8 a1)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  return sub_26B214070();
}

uint64_t sub_26B1628EC(uint64_t a1)
{
  v2 = *v1;
  sub_26B214030();
  UUID.v7Precision.hash(into:)(v4, v2);
  return sub_26B214070();
}

void static UUID.v7(precision:)(uint64_t a1)
{
  v1 = a1;
  if (qword_2803E6A70 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2803E6E10);
  sub_26B1629CC(&unk_2803E6E18, v1);

  os_unfair_lock_unlock(&dword_2803E6E10);
}

uint64_t sub_26B1629CC(unint64_t *a1, char a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v5 = v4 / 0x3B9ACA00;
  v6 = v4 % 0x3B9ACA00;
  v15 = 0;
  result = MEMORY[0x26D672400](&v15, 8);
  if (!a2)
  {
    v10 = v6 / 0xF4240;
    if (*a1 != v5 || a1[1] != v10)
    {
      *a1 = v5;
      a1[1] = v10;
      a1[4] = 0;
      return sub_26B2120B0();
    }

    v11 = a1[4];
    if (!__OFADD__(v11, 1))
    {
      a1[4] = v11 + 1;
      return sub_26B2120B0();
    }

    goto LABEL_20;
  }

  if (a2 == 1)
  {
    v8 = v6 / 0x3E8;
    if (*a1 != v5 || a1[2] != v8)
    {
      *a1 = v5;
      a1[2] = v8;
      a1[4] = 0;
      return sub_26B2120B0();
    }

    v9 = a1[4];
    if (!__OFADD__(v9, 1))
    {
      a1[4] = v9 + 1;
      return sub_26B2120B0();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*a1 != v5 || a1[3] != v6)
  {
    *a1 = v5;
    a1[3] = v6;
    a1[4] = 0;
    return sub_26B2120B0();
  }

  v12 = a1[4];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    a1[4] = v14;
    return sub_26B2120B0();
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t static UUID._v7<A>(precision:ns:random:counters:)(char a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = a2 / 0x3B9ACA00;
  v9 = a2 % 0x3B9ACA00;
  result = sub_26B212980();
  if (!a1)
  {
    v13 = v9 / 0xF4240;
    if (*a4 != v8 || a4[1] != v13)
    {
      *a4 = v8;
      a4[1] = v13;
      a4[4] = 0;
      return sub_26B2120B0();
    }

    v14 = a4[4];
    if (!__OFADD__(v14, 1))
    {
      a4[4] = v14 + 1;
      return sub_26B2120B0();
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    v11 = v9 / 0x3E8;
    if (*a4 != v8 || a4[2] != v11)
    {
      *a4 = v8;
      a4[2] = v11;
      a4[4] = 0;
      return sub_26B2120B0();
    }

    v12 = a4[4];
    if (!__OFADD__(v12, 1))
    {
      a4[4] = v12 + 1;
      return sub_26B2120B0();
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*a4 != v8 || a4[3] != v9)
  {
    *a4 = v8;
    a4[3] = v9;
    a4[4] = 0;
    return sub_26B2120B0();
  }

  v15 = a4[4];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    a4[4] = v17;
    return sub_26B2120B0();
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_26B162E98()
{
  dword_2803E6E10 = 0;
  result = 0.0;
  unk_2803E6E18 = 0u;
  unk_2803E6E28 = 0u;
  qword_2803E6E38 = 0;
  return result;
}

uint64_t UUID.UUIDVersion.init(rawValue:)(char a1)
{
  if ((a1 - 1) >= 0xFu)
  {
    return 15;
  }

  else
  {
    return (a1 - 1);
  }
}

uint64_t sub_26B162EFC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = UUID.UUIDVersion.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26B162F28@<X0>(_BYTE *a1@<X8>)
{
  result = UUID.UUIDVersion.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t UUID.version.getter()
{
  v0 = sub_26B2120C0();
  result = UUID.UUIDVersion.init(rawValue:)((v0 >> 52) & 0xF);
  if (result == 15)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26B162F88()
{
  result = qword_2803E6E40;
  if (!qword_2803E6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E40);
  }

  return result;
}

unint64_t sub_26B162FE0()
{
  result = qword_2803E6E48;
  if (!qword_2803E6E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E48);
  }

  return result;
}

uint64_t _s11v7PrecisionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11v7PrecisionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B1631A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B1631C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t _s11UUIDVersionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11UUIDVersionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

void Error.encodedOnionDescription.getter()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1();
  v47 = *(v6 + 16);
  v48 = v1;
  v47(v0, v1, v4);
  OUTLINED_FUNCTION_26_0();
  v9 = sub_26B213DE0();
  if (v9)
  {
    v1 = v9;
    v10 = OUTLINED_FUNCTION_26_0();
    v11(v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_3();
    v14 = OUTLINED_FUNCTION_25_0(v12, v13);
    (*(v6 + 32))(v14, v0, v4);
  }

  v15 = sub_26B211DF0();

  if (qword_2803E6A78 != -1)
  {
    OUTLINED_FUNCTION_4_8();
    swift_once();
  }

  v16 = off_2803E6E50;
  v17 = [v15 domain];
  v18 = sub_26B212A80();
  v20 = v19;

  sub_26B15CE28(v18, v20, v16);

  v21 = sub_26B213B90();
  MEMORY[0x26D670040](v21);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  [v15 code];
  v22 = sub_26B213B90();
  MEMORY[0x26D670040](v22);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v23 = &v49;
  MEMORY[0x26D670040](40, 0xE100000000000000);

  v47(v2, v48, v4);
  OUTLINED_FUNCTION_16_0();
  v24 = sub_26B213DE0();
  if (v24)
  {
    v23 = v24;
    v25 = OUTLINED_FUNCTION_16_0();
    v26(v25);
  }

  else
  {
    v27 = OUTLINED_FUNCTION_5_3();
    v29 = OUTLINED_FUNCTION_25_0(v27, v28);
    (*(v6 + 32))(v29, v2, v4);
  }

  v30 = sub_26B211DF0();

  v31 = [v30 underlyingErrors];
  sub_26B162128();
  v32 = sub_26B212E40();

  if (*(v32 + 16))
  {
    v46 = v30;
    OUTLINED_FUNCTION_21_0(MEMORY[0x277D84F90]);
    do
    {
      OUTLINED_FUNCTION_28_0();
      OUTLINED_FUNCTION_9_0();
      MEMORY[0x28223BE20](v33);
      v35 = OUTLINED_FUNCTION_8_5(v34, v46);
      v36(v35);
      v37 = 0xE100000000000000;
      Error.encodedOnionDescription.getter();
      v38 = OUTLINED_FUNCTION_19_1();
      v39(v38);

      OUTLINED_FUNCTION_18_0();
      if (v40)
      {
        OUTLINED_FUNCTION_23_0();
      }

      OUTLINED_FUNCTION_13_2();
    }

    while (!v41);

    v30 = v46;
  }

  else
  {
  }

  sub_26B165308();
  v42 = sub_26B165358();
  v43 = OUTLINED_FUNCTION_22_2(v42);
  v45 = v44;

  MEMORY[0x26D670040](v43, v45);

  OUTLINED_FUNCTION_28();
}

void Error.onionDescription.getter()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17_1();
  v9 = *(v6 + 16);
  v46 = v1;
  v9(v0, v1, v4);
  OUTLINED_FUNCTION_26_0();
  v10 = sub_26B213DE0();
  if (v10)
  {
    v1 = v10;
    v11 = OUTLINED_FUNCTION_26_0();
    v12(v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_5_3();
    v15 = OUTLINED_FUNCTION_25_0(v13, v14);
    (*(v6 + 32))(v15, v0, v4);
  }

  v16 = sub_26B211DF0();

  v17 = [v16 domain];
  v18 = sub_26B212A80();
  v20 = v19;

  MEMORY[0x26D670040](v18, v20);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  [v16 code];
  v21 = sub_26B213B90();
  MEMORY[0x26D670040](v21);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v22 = &v47;
  MEMORY[0x26D670040](40, 0xE100000000000000);

  v9(v2, v46, v4);
  OUTLINED_FUNCTION_16_0();
  v23 = sub_26B213DE0();
  if (v23)
  {
    v22 = v23;
    v24 = OUTLINED_FUNCTION_16_0();
    v25(v24);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_5_3();
    v28 = OUTLINED_FUNCTION_25_0(v26, v27);
    (*(v6 + 32))(v28, v2, v4);
  }

  v29 = sub_26B211DF0();

  v30 = [v29 underlyingErrors];
  sub_26B162128();
  v31 = sub_26B212E40();

  if (*(v31 + 16))
  {
    v45 = v29;
    OUTLINED_FUNCTION_21_0(MEMORY[0x277D84F90]);
    do
    {
      OUTLINED_FUNCTION_28_0();
      OUTLINED_FUNCTION_9_0();
      MEMORY[0x28223BE20](v32);
      v34 = OUTLINED_FUNCTION_8_5(v33, v45);
      v35(v34);
      v36 = 0xE100000000000000;
      Error.onionDescription.getter();
      v37 = OUTLINED_FUNCTION_19_1();
      v38(v37);

      OUTLINED_FUNCTION_18_0();
      if (v39)
      {
        OUTLINED_FUNCTION_23_0();
      }

      OUTLINED_FUNCTION_13_2();
    }

    while (!v40);

    v29 = v45;
  }

  else
  {
  }

  sub_26B165308();
  v41 = sub_26B165358();
  v42 = OUTLINED_FUNCTION_22_2(v41);
  v44 = v43;

  MEMORY[0x26D670040](v42, v44);

  OUTLINED_FUNCTION_28();
}

void sub_26B163BB0(uint64_t a1, unint64_t a2)
{
  v132 = sub_26B211BE0();
  v4 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26B212C90() & 1) == 0)
  {
    return;
  }

  v6 = sub_26B212CA0();
  v7 = MEMORY[0x277D84F90];
  if ((v6 & 1) == 0)
  {
    return;
  }

  v122 = v4;
  sub_26B2128F0();
  v8 = sub_26B16CD98(1uLL, a1, a2);
  *&v137 = sub_26B19B2C8(1, v8, v9, v10, v11);
  *(&v137 + 1) = v12;
  v138 = v13;
  v139 = v14;
  v135 = 10281;
  v136 = 0xE200000000000000;
  sub_26B1668E4();
  sub_26B166938();
  v15 = sub_26B213230();

  v16 = *(v15 + 16);
  if (v16)
  {
    *&v137 = v7;
    sub_26B15B2C8(0, v16, 0);
    v17 = 0;
    v18 = v137;
    v19 = v15 + 32;
    v124 = v16;
    v125 = v15;
    v123 = v15 + 32;
    do
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_131;
      }

      v20 = (v19 + 32 * v17);
      v21 = *v20;
      v22 = v20[1] >> 14;
      v23 = v7;
      if (v22 != *v20 >> 14)
      {
        v128 = v17;
        v129 = v18;
        v133 = v20[2];
        sub_26B2128F0();
        v24 = v21;
        v130 = v7;
LABEL_8:
        for (i = v24; ; i = sub_26B2133F0())
        {
          v26 = i >> 14;
          v27 = v24 >> 14;
          if (i >> 14 == v22)
          {
            break;
          }

          if (sub_26B213440() == 44 && v28 == 0xE100000000000000)
          {

LABEL_17:
            if (v27 != v26)
            {
              if (v26 < v27)
              {
                goto LABEL_133;
              }

              v31 = sub_26B213450();
              v33 = v32;
              v126 = v35;
              v127 = v34;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26B16A990();
                v130 = v40;
              }

              v36 = *(v130 + 16);
              if (v36 >= *(v130 + 24) >> 1)
              {
                sub_26B16A990();
                v130 = v41;
              }

              v37 = v130;
              *(v130 + 16) = v36 + 1;
              v38 = (v37 + 32 * v36);
              v38[4] = v31;
              v38[5] = v33;
              v39 = v126;
              v38[6] = v127;
              v38[7] = v39;
            }

            v24 = sub_26B2133F0();
            goto LABEL_8;
          }

          v30 = sub_26B213E30();

          if (v30)
          {
            goto LABEL_17;
          }
        }

        if (v27 == v22)
        {

          v7 = MEMORY[0x277D84F90];
          v17 = v128;
          v18 = v129;
          v16 = v124;
          v15 = v125;
          v19 = v123;
          v23 = v130;
        }

        else
        {
          if (v22 < v27)
          {
            goto LABEL_134;
          }

          v42 = sub_26B213450();
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v49 = v130;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B16A990();
            v49 = v57;
          }

          v18 = v129;
          v50 = *(v49 + 16);
          v51 = v49;
          if (v50 >= *(v49 + 24) >> 1)
          {
            sub_26B16A990();
            v51 = v58;
          }

          v23 = v51;
          *(v51 + 16) = v50 + 1;
          v52 = (v51 + 32 * v50);
          v52[4] = v42;
          v52[5] = v44;
          v52[6] = v46;
          v52[7] = v48;
          v7 = MEMORY[0x277D84F90];
          v16 = v124;
          v15 = v125;
          v17 = v128;
          v19 = v123;
        }
      }

      *&v137 = v18;
      v54 = *(v18 + 16);
      v53 = *(v18 + 24);
      if (v54 >= v53 >> 1)
      {
        v55 = v19;
        v56 = v23;
        sub_26B15B2C8(v53 > 1, v54 + 1, 1);
        v23 = v56;
        v19 = v55;
        v18 = v137;
      }

      ++v17;
      *(v18 + 16) = v54 + 1;
      *(v18 + 8 * v54 + 32) = v23;
    }

    while (v17 != v16);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v59 = *(v18 + 16);
  if (v59)
  {
    v135 = v7;
    sub_26B15B27C(0, v59, 0);
    v60 = 0;
    v61 = v135;
    v127 = v18 + 32;
    v62 = (v122 + 8);
    v129 = v18;
    v126 = v59;
    do
    {
      if (v60 >= *(v18 + 16))
      {
        goto LABEL_132;
      }

      v63 = *(v127 + 8 * v60);
      v64 = *(v63 + 16);
      if (v64)
      {
        v130 = v60;
        v133 = v61;
        v134 = v7;
        sub_26B2128F0();
        sub_26B15B06C();
        v65 = v134;
        v128 = v63;
        v66 = (v63 + 56);
        do
        {
          v67 = *(v66 - 1);
          v68 = *v66;
          v137 = *(v66 - 3);
          v138 = v67;
          v139 = v68;
          sub_26B2128F0();
          v69 = v131;
          sub_26B211BA0();
          sub_26B16698C();
          v70 = sub_26B213490();
          v72 = v71;
          (*v62)(v69, v132);

          v134 = v65;
          v73 = *(v65 + 16);
          if (v73 >= *(v65 + 24) >> 1)
          {
            sub_26B15B06C();
            v65 = v134;
          }

          *(v65 + 16) = v73 + 1;
          v74 = v65 + 16 * v73;
          *(v74 + 32) = v70;
          *(v74 + 40) = v72;
          v66 += 4;
          --v64;
        }

        while (v64);

        v7 = MEMORY[0x277D84F90];
        v61 = v133;
        v18 = v129;
        v60 = v130;
        v59 = v126;
      }

      else
      {
        v65 = v7;
      }

      v135 = v61;
      v76 = *(v61 + 16);
      v75 = *(v61 + 24);
      if (v76 >= v75 >> 1)
      {
        v77 = v60;
        sub_26B15B27C(v75 > 1, v76 + 1, 1);
        v60 = v77;
        v61 = v135;
      }

      ++v60;
      *(v61 + 16) = v76 + 1;
      *(v61 + 8 * v76 + 32) = v65;
    }

    while (v60 != v59);
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v78 = 0;
  v79 = *(v61 + 16);
  v80 = v61 + 32;
  v81 = &v137 + 1;
  v133 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v78 == v79)
    {

      return;
    }

    if (v78 >= *(v61 + 16))
    {
      break;
    }

    v82 = *(v80 + 8 * v78++);
    v83 = v82[2];
    if (v83)
    {
      v84 = v82[4];
      v85 = &v82[2 * v83 + 4];
      v86 = *(v85 - 16);
      v87 = *(v85 - 8);
      v88 = HIBYTE(v87) & 0xF;
      v89 = v86 & 0xFFFFFFFFFFFFLL;
      if ((v87 & 0x2000000000000000) != 0 ? HIBYTE(v87) & 0xF : v86 & 0xFFFFFFFFFFFFLL)
      {
        v91 = v61;
        v92 = v82[5];
        if ((v87 & 0x1000000000000000) != 0)
        {
          sub_26B2128F0();
          sub_26B2128F0();
          sub_26B2128F0();
          v95 = sub_26B16583C(v86, v87, 10);
          LODWORD(v132) = v114;

          if ((v132 & 1) == 0)
          {
            goto LABEL_122;
          }

LABEL_120:

          v61 = v91;
        }

        else
        {
          if ((v87 & 0x2000000000000000) != 0)
          {
            *&v137 = v86;
            *(&v137 + 1) = v87 & 0xFFFFFFFFFFFFFFLL;
            if (v86 == 43)
            {
              if (!v88)
              {
                goto LABEL_135;
              }

              if (--v88)
              {
                v95 = 0;
                v105 = v81;
                while (1)
                {
                  v106 = *v105 - 48;
                  if (v106 > 9)
                  {
                    break;
                  }

                  v107 = 10 * v95;
                  if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                  {
                    break;
                  }

                  v95 = v107 + v106;
                  if (__OFADD__(v107, v106))
                  {
                    break;
                  }

                  ++v105;
                  if (!--v88)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v86 == 45)
            {
              if (!v88)
              {
                goto LABEL_138;
              }

              if (--v88)
              {
                v95 = 0;
                v99 = v81;
                while (1)
                {
                  v100 = *v99 - 48;
                  if (v100 > 9)
                  {
                    break;
                  }

                  v101 = 10 * v95;
                  if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                  {
                    break;
                  }

                  v95 = v101 - v100;
                  if (__OFSUB__(v101, v100))
                  {
                    break;
                  }

                  ++v99;
                  if (!--v88)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v88)
            {
              v95 = 0;
              v110 = &v137;
              while (1)
              {
                v111 = *v110 - 48;
                if (v111 > 9)
                {
                  break;
                }

                v112 = 10 * v95;
                if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                {
                  break;
                }

                v95 = v112 + v111;
                if (__OFADD__(v112, v111))
                {
                  break;
                }

                ++v110;
                if (!--v88)
                {
                  goto LABEL_119;
                }
              }
            }
          }

          else
          {
            if ((v86 & 0x1000000000000000) != 0)
            {
              v93 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v93 = sub_26B213780();
            }

            v94 = *v93;
            if (v94 == 43)
            {
              if (v89 < 1)
              {
                goto LABEL_137;
              }

              v88 = v89 - 1;
              if (v89 != 1)
              {
                v95 = 0;
                if (!v93)
                {
                  goto LABEL_110;
                }

                v102 = v93 + 1;
                while (1)
                {
                  v103 = *v102 - 48;
                  if (v103 > 9)
                  {
                    break;
                  }

                  v104 = 10 * v95;
                  if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                  {
                    break;
                  }

                  v95 = v104 + v103;
                  if (__OFADD__(v104, v103))
                  {
                    break;
                  }

                  ++v102;
                  if (!--v88)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v94 == 45)
            {
              if (v89 < 1)
              {
                goto LABEL_136;
              }

              v88 = v89 - 1;
              if (v89 != 1)
              {
                v95 = 0;
                if (!v93)
                {
                  goto LABEL_110;
                }

                v96 = v93 + 1;
                while (1)
                {
                  v97 = *v96 - 48;
                  if (v97 > 9)
                  {
                    break;
                  }

                  v98 = 10 * v95;
                  if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                  {
                    break;
                  }

                  v95 = v98 - v97;
                  if (__OFSUB__(v98, v97))
                  {
                    break;
                  }

                  ++v96;
                  if (!--v88)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else if (v89)
            {
              v95 = 0;
              if (!v93)
              {
LABEL_110:
                LOBYTE(v88) = 0;
                goto LABEL_119;
              }

              while (1)
              {
                v108 = *v93 - 48;
                if (v108 > 9)
                {
                  break;
                }

                v109 = 10 * v95;
                if ((v95 * 10) >> 64 != (10 * v95) >> 63)
                {
                  break;
                }

                v95 = v109 + v108;
                if (__OFADD__(v109, v108))
                {
                  break;
                }

                ++v93;
                if (!--v89)
                {
                  goto LABEL_110;
                }
              }
            }
          }

          v95 = 0;
          LOBYTE(v88) = 1;
LABEL_119:
          LOBYTE(v135) = v88;
          v113 = v88;
          sub_26B2128F0();
          if (v113)
          {
            goto LABEL_120;
          }

LABEL_122:
          v115 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26B16A8C0();
            v133 = v119;
          }

          v116 = *(v133 + 16);
          if (v116 >= *(v133 + 24) >> 1)
          {
            sub_26B16A8C0();
            v133 = v120;
          }

          v117 = v133;
          *(v133 + 16) = v116 + 1;
          v118 = (v117 + 24 * v116);
          v118[4] = v84;
          v118[5] = v92;
          v118[6] = v95;
          v61 = v91;
          v81 = v115;
        }
      }
    }
  }

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
}

void sub_26B164680(uint64_t a1, unint64_t a2)
{
  sub_26B163BB0(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    return;
  }

  v52 = MEMORY[0x277D84F90];
  sub_26B15B314(0, v4, 0);
  v5 = 0;
  v6 = v52;
  while (v5 < *(v3 + 16))
  {
    v7 = (v3 + 32 + 24 * v5);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      sub_26B2128F0();
      goto LABEL_66;
    }

    if ((v8 & 0x1000000000000000) == 0)
    {
      if ((v8 & 0x2000000000000000) != 0)
      {
        v50[0] = v9;
        v50[1] = v8 & 0xFFFFFFFFFFFFFFLL;
        if (v9 == 43)
        {
          if (!v11)
          {
            goto LABEL_90;
          }

          if (--v11)
          {
            v16 = 0;
            v26 = v50 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v9 == 45)
        {
          if (!v11)
          {
            goto LABEL_92;
          }

          if (--v11)
          {
            v16 = 0;
            v20 = v50 + 1;
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v22 - v21;
              if (__OFSUB__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v11)
        {
          v16 = 0;
          v31 = v50;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v14 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v14 = sub_26B213780();
        }

        v15 = *v14;
        if (v15 == 43)
        {
          if (v12 < 1)
          {
            goto LABEL_93;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (!v14)
            {
              goto LABEL_56;
            }

            v23 = v14 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                break;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                break;
              }

              ++v23;
              if (!--v11)
              {
                goto LABEL_65;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (v12 < 1)
          {
            goto LABEL_91;
          }

          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (v14)
            {
              v17 = v14 + 1;
              while (1)
              {
                v18 = *v17 - 48;
                if (v18 > 9)
                {
                  goto LABEL_64;
                }

                v19 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_64;
                }

                v16 = v19 - v18;
                if (__OFSUB__(v19, v18))
                {
                  goto LABEL_64;
                }

                ++v17;
                if (!--v11)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v11) = 0;
LABEL_65:
            v51 = v11;
            v34 = v11;
            sub_26B2128F0();
            if ((v34 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_64;
          }

          v16 = 0;
          if (!v14)
          {
            goto LABEL_56;
          }

          while (1)
          {
            v29 = *v14 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_56;
            }
          }
        }
      }

LABEL_64:
      v16 = 0;
      LOBYTE(v11) = 1;
      goto LABEL_65;
    }

    swift_bridgeObjectRetain_n();
    v16 = sub_26B16583C(v9, v8, 10);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
LABEL_72:
      if (qword_2803E6A78 != -1)
      {
        swift_once();
      }

      v40 = 0;
      v41 = 1 << *(off_2803E6E50 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & *(off_2803E6E50 + 8);
      v44 = (v41 + 63) >> 6;
      while (v43)
      {
        v45 = v40;
LABEL_84:
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v47 = v46 | (v45 << 6);
        if (*(*(off_2803E6E50 + 7) + 8 * v47) == v16)
        {
          v48 = (*(off_2803E6E50 + 6) + 16 * v47);
          v9 = *v48;
          v49 = v48[1];
          sub_26B2128F0();

          v8 = v49;
          goto LABEL_66;
        }
      }

      while (1)
      {
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v45 >= v44)
        {
          goto LABEL_66;
        }

        v43 = *(off_2803E6E50 + v45 + 8);
        ++v40;
        if (v43)
        {
          v40 = v45;
          goto LABEL_84;
        }
      }

      __break(1u);
      break;
    }

LABEL_66:
    v52 = v6;
    v36 = *(v6 + 16);
    v35 = *(v6 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_26B15B314(v35 > 1, v36 + 1, 1);
      v6 = v52;
    }

    ++v5;
    *(v6 + 16) = v36 + 1;
    v37 = (v6 + 24 * v36);
    v37[4] = v9;
    v37[5] = v8;
    v37[6] = v10;
    if (v5 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void static SonicErrorOnion.decodeOnionPairs(_:)(uint64_t a1, unint64_t a2)
{
  sub_26B163BB0(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
LABEL_76:

    return;
  }

  v48 = MEMORY[0x277D84F90];
  sub_26B15B378(0, v4, 0);
  v5 = 0;
  while (v5 < *(v3 + 16))
  {
    v6 = (v3 + 32 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = HIBYTE(v7) & 0xF;
    v11 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          if (v8 == 43)
          {
            if (!v10)
            {
              goto LABEL_97;
            }

            if (v10 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v26 + v25);
                if (__OFADD__(v26, v25))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v8 == 45)
          {
            if (!v10)
            {
              goto LABEL_99;
            }

            if (v10 != 1)
            {
              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v22 - v21);
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v10)
          {
            while (1)
            {
              OUTLINED_FUNCTION_3_8();
              if (!v17 & v16)
              {
                break;
              }

              OUTLINED_FUNCTION_0_10();
              if (!v17)
              {
                break;
              }

              v15 = (v30 + v29);
              if (__OFADD__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_20_1();
              if (v17)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v13 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_26B213780();
          }

          v14 = *v13;
          if (v14 == 43)
          {
            if (v11 < 1)
            {
              goto LABEL_100;
            }

            if (v11 != 1)
            {
              v15 = 0;
              if (!v13)
              {
                goto LABEL_60;
              }

              while (1)
              {
                OUTLINED_FUNCTION_3_8();
                if (!v17 & v16)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_10();
                if (!v17)
                {
                  break;
                }

                v15 = (v24 + v23);
                if (__OFADD__(v24, v23))
                {
                  break;
                }

                OUTLINED_FUNCTION_20_1();
                if (v17)
                {
                  goto LABEL_70;
                }
              }
            }
          }

          else if (v14 == 45)
          {
            if (v11 < 1)
            {
              goto LABEL_98;
            }

            if (v11 != 1)
            {
              v15 = 0;
              if (v13)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_3_8();
                  if (!v17 & v16)
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_0_10();
                  if (!v17)
                  {
                    goto LABEL_69;
                  }

                  v15 = (v19 - v18);
                  if (__OFSUB__(v19, v18))
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_20_1();
                  if (v17)
                  {
                    goto LABEL_70;
                  }
                }
              }

LABEL_60:
              v20 = 0;
LABEL_70:
              v31 = v20;
              sub_26B2128F0();
              if ((v31 & 1) == 0)
              {
                goto LABEL_79;
              }

LABEL_71:

              goto LABEL_72;
            }
          }

          else
          {
            if (!v11)
            {
              goto LABEL_69;
            }

            v15 = 0;
            if (!v13)
            {
              goto LABEL_60;
            }

            while (1)
            {
              v27 = *v13 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = (v28 + v27);
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_60;
              }
            }
          }
        }

LABEL_69:
        v15 = 0;
        v20 = 1;
        goto LABEL_70;
      }

      sub_26B2128F0();
      v37 = sub_26B16583C(v8, v7, 10);
      if ((v38 & 1) == 0)
      {
        v15 = v37;
LABEL_79:
        if (qword_2803E6A78 != -1)
        {
          OUTLINED_FUNCTION_4_8();
          swift_once();
        }

        v39 = 0;
        v40 = 1 << *(off_2803E6E50 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v42 = v41 & *(off_2803E6E50 + 8);
        v43 = (v40 + 63) >> 6;
        while (v42)
        {
          v44 = v39;
LABEL_91:
          v45 = __clz(__rbit64(v42));
          v42 &= v42 - 1;
          v46 = v45 | (v44 << 6);
          if (*(*(off_2803E6E50 + 7) + 8 * v46) == v15)
          {
            v47 = (*(off_2803E6E50 + 6) + 16 * v46);
            v32 = *v47;
            v33 = v47[1];
            sub_26B2128F0();

            goto LABEL_73;
          }
        }

        while (1)
        {
          v44 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v44 >= v43)
          {
            goto LABEL_71;
          }

          v42 = *(off_2803E6E50 + v44 + 8);
          ++v39;
          if (v42)
          {
            v39 = v44;
            goto LABEL_91;
          }
        }

        __break(1u);
        break;
      }

      goto LABEL_71;
    }

LABEL_72:
    v32 = 0;
    v33 = 0;
LABEL_73:
    v35 = *(v48 + 16);
    v34 = *(v48 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_26B15B378(v34 > 1, v35 + 1, 1);
    }

    ++v5;
    *(v48 + 16) = v35 + 1;
    v36 = (v48 + 24 * v35);
    v36[4] = v32;
    v36[5] = v33;
    v36[6] = v9;
    if (v5 == v4)
    {
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
}

id static SonicErrorOnion.decodeOnion(_:)(uint64_t a1, unint64_t a2)
{
  sub_26B164680(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v2 + 24 * v4 + 24);
    while (v4 <= *(v3 + 16))
    {
      v13 = *v6;
      sub_26B2128F0();
      sub_26B2128C0();
      if (v5)
      {
        sub_26B212A80();
        v16 = sub_26B165DC4();
        *&v15 = v5;
        sub_26B165E08(&v15, &v14);
        v7 = v5;
        swift_isUniquelyReferenced_nonNull_native();
        sub_26B165EF4();
      }

      --v4;
      v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_26B2128F0();
      v9 = sub_26B212A50();

      v10 = sub_26B212890();

      v11 = [v8 initWithDomain:v9 code:v13 userInfo:v10];

      v6 -= 3;
      v5 = v11;
      if (!v4)
      {

        return v11;
      }
    }

    __break(1u);
  }

  return 0;
}

void *sub_26B16519C()
{
  result = sub_26B2128C0();
  off_2803E6E50 = result;
  return result;
}

uint64_t sub_26B165200()
{
  v1 = [v0 underlyingErrors];
  sub_26B162128();
  v2 = sub_26B212E40();

  return v2;
}

id sub_26B165258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B212A50();

  if (a4)
  {
    v8 = sub_26B212890();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_26B165308()
{
  if (!qword_2803E6D38)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D38);
    }
  }
}

unint64_t sub_26B165358()
{
  result = qword_2803E6DB0;
  if (!qword_2803E6DB0)
  {
    sub_26B165308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6DB0);
  }

  return result;
}

uint64_t sub_26B1653B0(uint64_t a1, unint64_t a2)
{
  v2 = sub_26B16541C(sub_26B165418, 0, a1, a2);
  v6 = sub_26B165450(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26B165450(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26B213420();
    if (!v9 || (v10 = v9, v11 = sub_26B2072D4(v9, 0), v12 = sub_26B1655B0(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_26B2128F0(), , v12 == v10))
    {
      v13 = sub_26B212B60();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26B212B60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26B213780();
LABEL_4:

  return sub_26B212B60();
}

unint64_t sub_26B1655B0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26B1657C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26B212C70();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26B213780();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26B1657C0(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26B212C50();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_26B1657C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26B212C80();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D670090](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_26B16583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_26B2128F0();
  result = sub_26B212CF0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26B1653B0(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26B213780();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_26B165DC4()
{
  result = qword_280D2DA98;
  if (!qword_280D2DA98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D2DA98);
  }

  return result;
}

_OWORD *sub_26B165E08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SonicErrorOnion(_BYTE *result, int a2, int a3)
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

_OWORD *sub_26B165EF4()
{
  OUTLINED_FUNCTION_27_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (v3)(v7, v5);
  OUTLINED_FUNCTION_1_8();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B166880();
  if (sub_26B2139B0())
  {
    v12 = OUTLINED_FUNCTION_16_0();
    v4(v12);
    OUTLINED_FUNCTION_6_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v2 = v13;
  }

  v15 = *v0;
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v15 + 56) + 32 * v2));
    OUTLINED_FUNCTION_28();

    return sub_26B165E08(v16, v17);
  }

  else
  {
    sub_26B1664B4(v2, v8, v6, v10, v15);
    OUTLINED_FUNCTION_28();

    return sub_26B2128F0();
  }
}

uint64_t sub_26B166014(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_2_9(a1, a2);
  sub_26B16E800(v6, v7);
  OUTLINED_FUNCTION_1_8();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1666F4(0);
  if (OUTLINED_FUNCTION_11_3(v9))
  {
    v10 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v10, v11);
    OUTLINED_FUNCTION_6_5();
    if (!v13)
    {
      goto LABEL_14;
    }

    v5 = v12;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 8 * v5) = v2;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_7_5();
    sub_26B1664F8(v15, v16, v17, v18, v19);

    return sub_26B2128F0();
  }
}

void sub_26B1660EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_26B16E800(v15, v13);
  OUTLINED_FUNCTION_1_8();
  if (v23)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v21;
  v25 = v22;
  sub_26B1667B4(0, &qword_2803E6E88, sub_26B166828, MEMORY[0x277D843B8]);
  if ((sub_26B2139B0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v26 = sub_26B16E800(v16, v14);
  if ((v25 & 1) != (v27 & 1))
  {
LABEL_13:
    sub_26B213F10();
    __break(1u);
    return;
  }

  v24 = v26;
LABEL_5:
  v28 = *v12;
  if (v25)
  {
    v29 = v28[7] + 16 * v24;
    *v29 = v20;
    *(v29 + 8) = v18;
    OUTLINED_FUNCTION_28();

    sub_26B166870(v30, v31);
  }

  else
  {
    sub_26B166540(v24, v16, v14, v20, v18, v28);
    OUTLINED_FUNCTION_28();

    sub_26B2128F0();
  }
}

uint64_t sub_26B166268()
{
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  v7 = v6;
  v10 = OUTLINED_FUNCTION_2_9(v8, v9);
  sub_26B16E800(v10, v11);
  OUTLINED_FUNCTION_1_8();
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1667B4(0, v7, v5, MEMORY[0x277D843B8]);
  if (OUTLINED_FUNCTION_11_3(v13))
  {
    v14 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v14, v15);
    OUTLINED_FUNCTION_6_5();
    if (!v17)
    {
      goto LABEL_14;
    }

    v3 = v16;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_28();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_7_5();
    sub_26B166590(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_28();

    return sub_26B2128F0();
  }
}

uint64_t sub_26B166378(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_2_9(a1, a2);
  sub_26B16E800(v6, v7);
  OUTLINED_FUNCTION_1_8();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26B213F10();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_27_1();
  sub_26B1667B4(0, &qword_2803E6E58, sub_26B166480, MEMORY[0x277D843B8]);
  if (OUTLINED_FUNCTION_11_3(v9))
  {
    v10 = OUTLINED_FUNCTION_15_0();
    sub_26B16E800(v10, v11);
    OUTLINED_FUNCTION_6_5();
    if (!v13)
    {
      goto LABEL_14;
    }

    v5 = v12;
  }

  if (v4)
  {
    v14 = *(*v3 + 56) + 8 * v5;

    return sub_26B16662C(v2, v14);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_7_5();
    sub_26B1665C0(v16, v17, v18, v19, v20);

    return sub_26B2128F0();
  }
}

_OWORD *sub_26B1664B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_10_5(a1, a2, a3, a4, a5);
  result = sub_26B165E08(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

unint64_t sub_26B1664F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_26B166540(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_26B166590(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_10_5(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

uint64_t sub_26B1665C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B166690(a4, a5[7] + 8 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26B16662C(uint64_t a1, uint64_t a2)
{
  sub_26B166480(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B166690(uint64_t a1, uint64_t a2)
{
  sub_26B166480(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B1666F4(uint64_t a1)
{
  if (!qword_2803E6E78)
  {
    _s9StatementCMa();
    sub_26B166760();
    v1 = sub_26B2139D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6E78);
    }
  }
}

unint64_t sub_26B166760()
{
  result = qword_2803E6E80;
  if (!qword_2803E6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E80);
  }

  return result;
}

void sub_26B1667B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26B166828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280D2DAA0[0])
  {
    v4 = type metadata accessor for Task<>.Condition(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, qword_280D2DAA0);
    }
  }
}

void sub_26B166870(id a1, char a2)
{
  if (!a2)
  {
  }
}

void sub_26B166880()
{
  if (!qword_280D2DA90)
  {
    v0 = sub_26B2139D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280D2DA90);
    }
  }
}

unint64_t sub_26B1668E4()
{
  result = qword_2803E6E90;
  if (!qword_2803E6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E90);
  }

  return result;
}

unint64_t sub_26B166938()
{
  result = qword_2803E6E98;
  if (!qword_2803E6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6E98);
  }

  return result;
}

unint64_t sub_26B16698C()
{
  result = qword_280D2DB58;
  if (!qword_280D2DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_3()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_10_5(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

void OUTLINED_FUNCTION_21_0(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1;

  sub_26B15B06C();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  return sub_26B2129F0();
}

void OUTLINED_FUNCTION_23_0()
{

  sub_26B15B06C();
}

uint64_t sub_26B166B3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26B2135F0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26B166BE4(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  v8 = (*(a2 + 24))(a1, a2);
  MEMORY[0x26D670040](v8);

  MEMORY[0x26D670040](46, 0xE100000000000000);
  sub_26B213DF0();
  MEMORY[0x26D670040](10272, 0xE200000000000000);
  sub_26B212DF0();
  swift_getAssociatedConformanceWitness();
  sub_26B213E00();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v10[0];
}

uint64_t *SonicError.init(stringLiteral:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_26B212BB0();
  SonicError.Interpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  SonicError.Interpolation.appendLiteral(_:)(v8);

  return SonicError.init(stringInterpolation:)(&v10, a3, a4);
}

void SonicError.Interpolation.init(literalCapacity:interpolationCount:)()
{
  OUTLINED_FUNCTION_38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v18[0] = v2;
  v18[1] = v2;
  v18[2] = v0;
  v18[3] = v0;
  v6 = type metadata accessor for SonicError.Interpolation.State(0, v18);
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  *v5 = MEMORY[0x277D84F90];
  sub_26B16775C(v3, v3, v1, v1, v18 - v14);
  sub_26B16A3B4();
  v16 = *(*v5 + 16);
  sub_26B16A59C(v16);
  (*(v8 + 16))(v12, v15, v6);
  OUTLINED_FUNCTION_1_9();
  WitnessTable = swift_getWitnessTable();
  sub_26B16BC10(v16, v12, v5, v6, WitnessTable);
  (*(v8 + 8))(v15, v6);
  OUTLINED_FUNCTION_39();
}

Swift::Void __swiftcall SonicError.Interpolation.appendLiteral(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_26B211BE0();
  OUTLINED_FUNCTION_9_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v26[0] = v6;
  v26[1] = v4;
  sub_26B211BC0();
  sub_26B14FCC8();
  v14 = sub_26B213490();
  v16 = v15;
  (*(v9 + 8))(v13, v7);

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = *v2;
  v19 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B16BA94();
  v18 = v25;
  *v2 = v25;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v19 <= *(v18 + 16))
  {
    v21 = v18 + 40 * v19;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v21 - 8, v22);
    v24 = (*(v23 + 64))(v26, v22, v23);
    MEMORY[0x26D670040](v6, v4);
    v24(v26, 0);
    *v2 = v18;
LABEL_8:
    OUTLINED_FUNCTION_39();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t *SonicError.init(stringInterpolation:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  sub_26B2128F0();
  v8 = 0;
  v9 = v5 + 40 * v6 - 8;
  while (v6 <= *(v5 + 16))
  {
    sub_26B16BCF8(v9, v29);
    if (v8)
    {
      v10 = v30;
      v11 = v31;
      __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
      v12 = *(v11 + 88);
      v13 = v8;
      v14 = v12(v28, v10, v11);
      v16 = v15;
      v17 = *v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B16AA60(0, *(v17 + 16) + 1, 1, v17, sub_26B173F04);
        v17 = v24;
        *v16 = v24;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26B16AA60(v19 > 1, v20 + 1, 1, v17, sub_26B173F04);
        v17 = v25;
        *v16 = v25;
      }

      *(v17 + 16) = v20 + 1;
      *(v17 + 8 * v20 + 32) = v8;
      v14(v28, 0);
    }

    --v6;
    v21 = v30;
    v22 = v31;
    v23 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v4 = sub_26B168490(v23, a2, v21, a3, v22);

    __swift_destroy_boxed_opaque_existential_1(v29);
    v9 -= 40;
    v8 = v4;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:

  if (v4)
  {

    v29[0] = v4;
    sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
    type metadata accessor for SonicError(0, a2, a3, v26);
    return swift_dynamicCast();
  }

  else
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

id static SonicError.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_36();
  v10 = type metadata accessor for SonicError(v6, v7, v8, v9);
  OUTLINED_FUNCTION_27();
  (*(v11 + 16))(a3, a1, v10);
  v12 = *(v10 + 40);
  sub_26B16A42C();
  v13 = *(*(a3 + v12) + 16);
  sub_26B16A608(v13);
  v14 = *(a3 + v12);
  *(v14 + 16) = v13 + 1;
  *(v14 + 8 * v13 + 32) = a2;
  *(a3 + v12) = v14;

  return a2;
}

uint64_t SonicError.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for SonicError(0, a2, a3, a5);
  OUTLINED_FUNCTION_27();
  v9 = *(v8 + 32);

  return v9(a4, a1, v7);
}

uint64_t sub_26B1674D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  result = type metadata accessor for SonicError(0, a5, a6, v13);
  v15 = (a7 + *(result + 36));
  *v15 = a2;
  v15[1] = a3;
  *(a7 + *(result + 40)) = a4;
  return result;
}

uint64_t sub_26B167574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a2;
  v5 = sub_26B211BE0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  MEMORY[0x28223BE20](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v2, v10);
  v14 = (v2 + *(a1 + 52));
  v15 = v14[1];
  v22 = *v14;
  v23 = v15;
  sub_26B2128F0();
  sub_26B211BC0();
  sub_26B14FCC8();
  v16 = sub_26B213490();
  v18 = v17;
  (*(v6 + 8))(v9, v5);

  sub_26B1674D8(v12, v16, v18, *(v3 + *(a1 + 56)), v10, *(a1 + 40), v21);
  return sub_26B2128F0();
}

uint64_t sub_26B16775C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 32))(a2, a4);
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  result = type metadata accessor for SonicError.Interpolation.State(0, v12);
  v11 = (a5 + *(result + 52));
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(a5 + *(result + 56)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26B1677F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  result = type metadata accessor for SonicError.Interpolation.State(0, v19);
  v18 = (a9 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  *(a9 + *(result + 56)) = a4;
  return result;
}

void SonicError.Interpolation.appendInterpolation(code:)(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  *&v73.val[0].f64[0] = v3;
  v67 = *(v10 + 24);
  *&v73.val[0].f64[1] = v67;
  v73.val[1] = v73.val[0];
  v11 = &v70;
  vst2q_f64(v11, v73);
  v12 = type metadata accessor for SonicError.Interpolation.State(255, &v70);
  v13 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_0();
  v23 = MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v66 = &v63 - v26;
  v68 = v2;
  v27 = *v2;
  v28 = *(*v2 + 16);
  if (!v28)
  {
    __break(1u);
    goto LABEL_12;
  }

  v64 = v25;
  v65 = v24;
  sub_26B16BCF8(v27 + 40 * v28 - 8, &v70);
  sub_26B16C9BC(0, &qword_2803E6EA0, &protocol descriptor for _SonicErrorInterpolationState);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v12);
    v35 = *(v15 + 8);
    v34 = v15 + 8;
    v35(v18, v13);
    (*(v5 + 16))(v9, v69, v3);
    v36 = OUTLINED_FUNCTION_24_1();
    v37 = v67;
    sub_26B1677F4(v36, v38, v39, v40, v41, v42, v67, v67, v43);
    v44 = v68;
    sub_26B16A3B4();
    v45 = *(*v44 + 16);
    sub_26B16A59C(v45);
    v46 = v64;
    (*(v20 + 16))(v64, v34, v12);
    OUTLINED_FUNCTION_1_9();
    WitnessTable = swift_getWitnessTable();
    sub_26B16BC10(v45, v46, v44, v12, WitnessTable);
    (*(v20 + 8))(v34, v12);
    v48._countAndFlagsBits = sub_26B166BE4(v3, v37);
    SonicError.Interpolation.appendLiteral(_:)(v48);

    return;
  }

  __swift_storeEnumTagSinglePayload(v18, 0, 1, v12);
  v29 = v66;
  (*(v20 + 32))(v66, v18, v12);
  v15 = v67;
  (*(v67 + 32))(v3, v67);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v30 = sub_26B213EB0();
  (*(v5 + 8))(v9, v3);
  if (v30)
  {
    (*(v5 + 24))(v29, v69, v3);
    v5 = *(v27 + 16);
    v71 = v12;
    OUTLINED_FUNCTION_1_9();
    v72 = swift_getWitnessTable();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v70);
    (*(v20 + 16))(boxed_opaque_existential_0, v29, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v68;
    *v68 = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    sub_26B16BA94();
    v27 = v62;
    *v13 = v62;
    if (v5)
    {
LABEL_6:
      if (v5 <= *(v27 + 16))
      {
        __swift_destroy_boxed_opaque_existential_1((v27 + 40 * v5 - 8));
        sub_26B150514(&v70, v27 + 40 * v5 - 8);
        *v13 = v27;
        v33._countAndFlagsBits = sub_26B166BE4(v3, v15);
        SonicError.Interpolation.appendLiteral(_:)(v33);

        (*(v20 + 8))(v66, v12);
        return;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  (*(v5 + 16))(v9, v69, v3);
  v49 = OUTLINED_FUNCTION_24_1();
  sub_26B1677F4(v49, v50, v51, v52, v53, v54, v15, v15, v55);
  v56 = v68;
  sub_26B16A3B4();
  v57 = *(*v56 + 16);
  sub_26B16A59C(v57);
  v58 = v64;
  (*(v20 + 16))(v64, v15, v12);
  OUTLINED_FUNCTION_1_9();
  v59 = swift_getWitnessTable();
  sub_26B16BC10(v57, v58, v56, v12, v59);
  v60 = *(v20 + 8);
  v60(v15, v12);
  v61._countAndFlagsBits = sub_26B166BE4(v3, v15);
  SonicError.Interpolation.appendLiteral(_:)(v61);

  v60(v66, v12);
}

uint64_t SonicError.Interpolation.appendInterpolation<A>(underlying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v34 = a1;
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v15 = *(v13 + 24);
  v35[0] = *(v13 + 16);
  v14 = v35[0];
  v35[1] = v16;
  v35[2] = v15;
  v35[3] = v17;
  v18 = type metadata accessor for SonicError.Interpolation.State(0, v35);
  OUTLINED_FUNCTION_9_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v33 - v26;
  (*(v8 + 16))(v12, v34, a3);
  v28 = v33;
  sub_26B1677F4(v12, 0, 0xE000000000000000, MEMORY[0x277D84F90], v14, a3, v15, v33, v27);
  sub_26B16A3B4();
  v29 = *(*v5 + 16);
  sub_26B16A59C(v29);
  (*(v20 + 16))(v24, v27, v18);
  OUTLINED_FUNCTION_1_9();
  WitnessTable = swift_getWitnessTable();
  sub_26B16BC10(v29, v24, v5, v18, WitnessTable);
  (*(v20 + 8))(v27, v18);
  v31._countAndFlagsBits = sub_26B166BE4(a3, v28);
  SonicError.Interpolation.appendLiteral(_:)(v31);
}

void SonicError.Interpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *v2;
  v12 = *(*v2 + 16);
  (*(v6 + 16))(v9 - v8);
  v13 = sub_26B213DE0();
  if (v13)
  {
    v14 = v13;
    (*(v6 + 8))(v10, v4);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v14 = swift_allocError();
    (*(v6 + 32))(v15, v10, v4);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_26B16BA94();
  v11 = v25;
  *v2 = v25;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v12 <= *(v11 + 16))
  {
    v17 = v11 + 40 * v12;
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    __swift_mutable_project_boxed_opaque_existential_1(v17 - 8, v18);
    v20 = (*(v19 + 88))(v26, v18, v19);
    v22 = v21;
    sub_26B16A42C();
    v23 = *(*v22 + 16);
    sub_26B16A608(v23);
    v24 = *v22;
    *(v24 + 16) = v23 + 1;
    *(v24 + 8 * v23 + 32) = v14;
    v20(v26, 0);
    *v2 = v11;
    OUTLINED_FUNCTION_39();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t SonicError.Interpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4._countAndFlagsBits = sub_26B213B90();
  SonicError.Interpolation.appendLiteral(_:)(v4);
}

uint64_t SonicError.Interpolation.appendInterpolation<A>(_:)()
{
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v2 - v1);
  OUTLINED_FUNCTION_19();
  v4._countAndFlagsBits = sub_26B212AE0();
  SonicError.Interpolation.appendLiteral(_:)(v4);
}

uint64_t SonicError.Interpolation.appendInterpolation(_:)(uint64_t a1)
{
  swift_getMetatypeMetadata();
  v1._countAndFlagsBits = sub_26B212AE0();
  SonicError.Interpolation.appendLiteral(_:)(v1);
}

uint64_t sub_26B168490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SonicError(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  swift_getWitnessTable();
  v11 = swift_allocError();
  v7(a3, a5);
  return v11;
}

uint64_t SonicError.debugMessage.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  sub_26B2128F0();
  return v2;
}

uint64_t SonicError.debugMessage.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SonicError.underlyingErrors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t SonicError.withUnderlyingErrors(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, v2, a2);
  v10 = sub_26B2128F0();
  sub_26B1688CC(v10, sub_26B173744);
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v11 = swift_allocError();
  (*(v5 + 32))(v12, v9, a2);
  return v11;
}

void sub_26B168818(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B173774(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B1688CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
  OUTLINED_FUNCTION_25_1(v9);

  if (!v4)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    *(v3 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_26B16898C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26B17378C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26B168A44(uint64_t a1)
{
  v4 = a1;
  v5 = *(*(a1 + 16) + 16);
  v6 = sub_26B166B3C(*v1);
  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26B1737A4(v8, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  v11 = sub_26B20683C(&v18, v3 + 8 * v9 + 32, v10);
  if (v11 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(v3 + 16);
    v7 = __OFADD__(v12, v11);
    v13 = v11 + v12;
    if (v7)
    {
      __break(1u);
LABEL_19:
      *(v10 + 16) = v4;
      goto LABEL_7;
    }

    *(v3 + 16) = v13;
  }

  if (v11 != v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  v4 = *(v3 + 16);
  v15 = sub_26B16A2C8();
  if (v15)
  {
    while (1)
    {
      if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = v15;
        sub_26B212EA0();
        v15 = v17;
      }

      v2 = *v1;
      v10 = *v1 & 0xFFFFFFFFFFFFFF8;
      v16 = *(v10 + 0x18) >> 1;
      while (v4 < v16)
      {
        *(v10 + 32 + 8 * v4++) = v15;
        v15 = sub_26B16A2C8();
        if (!v15)
        {
          goto LABEL_19;
        }
      }

      *(v10 + 16) = v4;
    }
  }

LABEL_7:

  *v1 = v2;
  return result;
}

void sub_26B168BB8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B173844(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B168C58(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(*v1 + 16);
  if (__OFADD__(v7, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v3;
  sub_26B173874(v7 + v6, 1);
  v2 = *v1;
  v9 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  if (v5 == v8)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 < v6)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v6 <= 0)
    {
      goto LABEL_10;
    }

    v10 = *(v2 + 16);
    v11 = __OFADD__(v10, v6);
    v12 = v10 + v6;
    if (!v11)
    {
      *(v2 + 16) = v12;
LABEL_10:
      if (v6 != v9)
      {
LABEL_11:
        swift_unknownObjectRelease();
        *v1 = v2;
        OUTLINED_FUNCTION_39();
        return;
      }

LABEL_15:

      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_26B168D4C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B17388C(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26B16CB10(0, &qword_2803E7060);
  OUTLINED_FUNCTION_25_1(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_26B168E08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26B1738A4(v4, 1);
  OUTLINED_FUNCTION_32();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_26B16C9BC(0, &qword_2803E6FE0, &protocol descriptor for Mergeable);
  OUTLINED_FUNCTION_25_1(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_26B168EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_26B168F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t SonicError.errorCode.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v1 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v2);
  v3 = swift_checkMetadataState();
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22_0();
  v25 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_26B212DF0();
  OUTLINED_FUNCTION_19();
  if (sub_26B213570())
  {
    OUTLINED_FUNCTION_12_4();
    if (sub_26B213560() > 64)
    {
      v26 = 0x8000000000000000;
      v12 = v3;
      OUTLINED_FUNCTION_19();
      if (sub_26B213570())
      {
        OUTLINED_FUNCTION_12_4();
        if (sub_26B213560() < 64)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v12 = v3;
      OUTLINED_FUNCTION_19();
      v13 = sub_26B213570();
      OUTLINED_FUNCTION_12_4();
      v14 = sub_26B213560();
      if (v13)
      {
        if (v14 > 64)
        {
LABEL_8:
          v15 = sub_26B16BD74();
          OUTLINED_FUNCTION_28_1(v15, MEMORY[0x277D83B88], v15);
          sub_26B212A00();
          OUTLINED_FUNCTION_26_1();
          result = v16(v1, v3);
          if ((v12 & 1) == 0)
          {
            goto LABEL_14;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        swift_getAssociatedConformanceWitness();
        sub_26B213ED0();
        v18 = v25;
        sub_26B213E10();
        sub_26B212A00();
        OUTLINED_FUNCTION_26_1();
        result = v19(v18, v3);
        if (v3)
        {
          goto LABEL_25;
        }

LABEL_13:
        OUTLINED_FUNCTION_12_4();
        sub_26B213550();
        goto LABEL_14;
      }

      if (v14 < 64)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_12_4();
  if (sub_26B213560() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_19();
    v20 = sub_26B213570();
    OUTLINED_FUNCTION_12_4();
    v21 = sub_26B213560();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v22 = sub_26B16BD74();
    OUTLINED_FUNCTION_28_1(v22, MEMORY[0x277D83B88], v22);
    sub_26B212A00();
    OUTLINED_FUNCTION_26_1();
    v23(v20, v3);
    if (v3)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_12_4();
      if (sub_26B213560() == 64)
      {
        OUTLINED_FUNCTION_19();
        if ((sub_26B213570() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  OUTLINED_FUNCTION_12_4();
  sub_26B213550();
LABEL_24:
  OUTLINED_FUNCTION_12_4();
  v24 = sub_26B213550();
  (*(v5 + 8))(v11, v3);
  return v24;
}

uint64_t SonicError.errorUserInfo.getter(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D837D0];
  v5 = sub_26B2128C0();
  v6 = (v2 + *(a1 + 36));
  v8 = *v6;
  v7 = v6[1];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = sub_26B212A80();
    v12 = v11;
    v27 = v4;
    *&v26 = v8;
    *(&v26 + 1) = v7;
    sub_26B165E08(&v26, v25);
    sub_26B2128F0();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35();
    sub_26B165E18(v13, v10, v12, v14);

    v5 = v24;
  }

  v15 = *(v2 + *(a1 + 40));
  if (*(v15 + 16))
  {
    v16 = sub_26B212A80();
    v18 = v17;
    v19 = sub_26B16951C(v15);
    sub_26B16C794(0, qword_280D2CCE8, sub_26B165DC4, MEMORY[0x277D83940]);
    v27 = v20;
    *&v26 = v19;
    sub_26B165E08(&v26, v25);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_35();
    sub_26B165E18(v21, v16, v18, v22);

    return v24;
  }

  return v5;
}

uint64_t sub_26B16951C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84948];
    do
    {
      v6 = *v4++;
      v7 = v6;
      sub_26B16C9BC(0, &qword_280D2DA78, v5);
      sub_26B165DC4();
      swift_dynamicCast();
      sub_26B213790();
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t SonicError.description.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  v4 = swift_allocError();
  (*(*(a1 - 8) + 16))(v5, v1, a1);
  sub_26B169728(v4, 0, v3);

  swift_beginAccess();
  v6 = *(v3 + 16);
  sub_26B2128F0();

  return v6;
}

void sub_26B169728(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  if (a2)
  {
    v6 = a2;
    do
    {
      MEMORY[0x26D670040](8224, 0xE200000000000000);
      --v6;
    }

    while (v6);
    v57 = v54;
    swift_beginAccess();
    MEMORY[0x26D670040](10, 0xE100000000000000);
    swift_endAccess();
    MEMORY[0x26D670040](546537698, 0xA400000000000000);
  }

  else
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
  }

  *&v49 = a1;
  v7 = a1;
  sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
  sub_26B16C9BC(0, &qword_280D2DA40, &protocol descriptor for _SonicError);
  if (swift_dynamicCast())
  {
    sub_26B150514(&v51, &v54);
    v8 = v55;
    v9 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v10 = (*(v9 + 24))(v8, v9);
    v12 = v11;
    v13 = v55;
    v14 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    v18 = v57;
    swift_beginAccess();
    MEMORY[0x26D670040](v18, *(&v18 + 1));
    swift_endAccess();

    if ((sub_26B212C90() & 1) == 0)
    {
      *&v51 = v15;
      *(&v51 + 1) = v17;
      sub_26B2128F0();
      MEMORY[0x26D670040](8250, 0xE200000000000000);

      v19 = v51;
      swift_beginAccess();
      MEMORY[0x26D670040](v19, *(&v19 + 1));
      swift_endAccess();
    }

    swift_beginAccess();
    MEMORY[0x26D670040](v10, v12);
    swift_endAccess();

    v21 = v55;
    v20 = v56;
    __swift_project_boxed_opaque_existential_1(&v54, v55);
    v22 = (*(*(v20 + 8) + 8))(v21);
    v23 = *(v22 + 16);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = __OFADD__(a2, 1);
    v25 = a2 + 1;
    if (!v24)
    {
      v26 = (v22 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        sub_26B169728(v27, v25, a3);

        --v23;
      }

      while (v23);
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_26B16CA10(&v51);
  v29 = sub_26B211DF0();
  v30 = [v29 userInfo];
  v31 = sub_26B2128A0();

  sub_26B212A80();
  sub_26B15CE10(&v51, v31);

  if (*(&v52 + 1))
  {
    sub_26B165E08(&v51, &v54);
  }

  else
  {
    v32 = [v29 userInfo];
    v33 = MEMORY[0x277D837D0];
    v34 = sub_26B2128A0();

    sub_26B212A80();
    sub_26B15CE10(&v49, v34);

    if (v50)
    {
      sub_26B165E08(&v49, &v54);
    }

    else
    {
      v55 = v33;
      *&v54 = 0xD00000000000001ELL;
      *(&v54 + 1) = 0x800000026B21F6A0;
    }

    if (*(&v52 + 1))
    {
      sub_26B159D48(&v51);
    }
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  MEMORY[0x26D670040](v57, *(&v57 + 1));

  v35 = [v29 domain];
  v36 = sub_26B212A80();
  v38 = v37;

  MEMORY[0x26D670040](v36, v38);

  MEMORY[0x26D670040](10272, 0xE200000000000000);
  *&v49 = [v29 code];
  v39 = sub_26B213B90();
  MEMORY[0x26D670040](v39);

  MEMORY[0x26D670040](2112041, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1(&v54, v55);
  sub_26B213DF0();
  v41 = *(&v51 + 1);
  v40 = v51;
  swift_beginAccess();
  MEMORY[0x26D670040](v40, v41);
  swift_endAccess();

  v42 = [v29 underlyingErrors];
  v43 = sub_26B212E40();

  v44 = *(v43 + 16);
  if (!v44)
  {
LABEL_26:

LABEL_27:

    __swift_destroy_boxed_opaque_existential_1(&v54);
    return;
  }

  v24 = __OFADD__(a2, 1);
  v45 = a2 + 1;
  if (!v24)
  {
    v46 = (v43 + 32);
    do
    {
      v47 = *v46++;
      v48 = v47;
      sub_26B169728(v47, v45, a3);

      --v44;
    }

    while (v44);
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
}

uint64_t wrappingErrors<A, B>(in:_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a7 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14);
  if (v8)
  {
    v19 = (*(v13 + 16))(v16, a1, a7);
    v20 = a2(v19);
    v22 = v21;
    v23 = OUTLINED_FUNCTION_8_6();
    sub_26B16BDC8(v23, v24, v25, v26, v27);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26B2162F0;
    *(v28 + 32) = v8;
    type metadata accessor for SonicError(0, a7, a8, v29);
    OUTLINED_FUNCTION_2_10();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    sub_26B1674D8(v16, v20, v22, v28, a7, a8, v30);
    return swift_willThrow();
  }

  return result;
}

uint64_t wrappingErrors<A, B>(in:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v15;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[7] = *(a8 - 8);
  v8[8] = swift_task_alloc();
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  v8[9] = v11;
  *v11 = v8;
  v11[1] = sub_26B16A034;

  return v13(a1);
}

uint64_t sub_26B16A034()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B16A170, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26B16A170()
{
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = (*(v0[7] + 16))(v2, v0[2], v4);
  v7 = v5(v6);
  v9 = v8;
  v10 = OUTLINED_FUNCTION_8_6();
  sub_26B16BDC8(v10, v11, v12, v13, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26B2162F0;
  *(v15 + 32) = v1;
  type metadata accessor for SonicError(0, v4, v3, v16);
  OUTLINED_FUNCTION_2_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_0();
  swift_allocError();
  sub_26B1674D8(v2, v7, v9, v15, v4, v3, v17);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

unint64_t sub_26B16A2C8()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 == *(v1 + 16))
  {
    return 0;
  }

  result = sub_26B16BBC0(v0[3], v1);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v0[3] = v2 + 1;
    v6 = v0[4];
    v8[0] = result;
    v8[1] = v4;
    v9 = v5 & 1;
    v6(&v7, v8);

    return v7;
  }

  return result;
}

void sub_26B16A354()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    OUTLINED_FUNCTION_5_4();
    sub_26B16ACD4();
    *v0 = v3;
  }
}

void sub_26B16A3B4()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26B16B970(isUniquelyReferenced_nonNull_native);
    *v0 = v3;
  }
}

void sub_26B16A42C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26B16AA60(0, *(v1 + 16) + 1, 1, v1, sub_26B173F04);
    *v0 = v3;
  }
}

uint64_t sub_26B16A4A4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_26B16A548(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_4();
    sub_26B16ACD4();
    *v1 = v2;
  }
}

void sub_26B16A59C(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_26B16B970(v2 > 1);
    *v1 = v3;
  }
}

void sub_26B16A608(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_26B16AA60(v2 > 1, result + 1, 1, *v1, sub_26B173F04);
    *v1 = v3;
  }
}

uint64_t sub_26B16A674(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_26B16A72C()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      sub_26B16C794(0, &qword_2803E7048, sub_26B16C964, MEMORY[0x277D84560]);
      v7 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v7);
      OUTLINED_FUNCTION_18_1(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B152C58(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16A808()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v3)
    {
      OUTLINED_FUNCTION_0_11(v7, &qword_2803E6DC8, MEMORY[0x277D849A8]);
      v8 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v8);
      OUTLINED_FUNCTION_18_1(v9);
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B173F08(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 4 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16A8C0()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      sub_26B16CA98(0);
      v7 = OUTLINED_FUNCTION_23_1(v6);
      OUTLINED_FUNCTION_6_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_6();
        sub_26B173560(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_26B16CB10(0, &qword_2803E6D18);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16A990()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v6, &qword_280D2DA80, MEMORY[0x277D83E40]);
      v7 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v7);
      OUTLINED_FUNCTION_18_1(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B173588(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16AA60(char a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(a4 + 16);
    if (v8 <= v11)
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      v13 = OUTLINED_FUNCTION_8_6();
      sub_26B16BDC8(v13, v14, v15, v16, v17);
      v18 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_21_1();
      v18[2] = v11;
      v18[3] = v19;
      if (a1)
      {
LABEL_12:
        a5(a4 + 32, v11, v18 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_26B16C9BC(0, &qword_280D2DA78, MEMORY[0x277D84948]);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B16AB90(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B16C794(0, &qword_2803E7038, sub_26B16C8E8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26B173F04((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B16ACD4()
{
  OUTLINED_FUNCTION_12_2();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_26B16CBDC(0, v5, v2, MEMORY[0x277D84560]);
      v12 = OUTLINED_FUNCTION_14();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_37();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B16ADBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B16C794(0, &qword_2803E6FC8, sub_26B16C7F8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26B152C58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B16C848();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B16AF14()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v6, &qword_2803E7018, &unk_287BBEB20);
      v8 = OUTLINED_FUNCTION_23_1(v7);
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B1735E4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16AFCC()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v6, &qword_2803E7020, &type metadata for SQL.Interpolation.Token);
      v8 = OUTLINED_FUNCTION_23_1(v7);
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B173610(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B084()
{
  OUTLINED_FUNCTION_20_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_3_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_26B18DF10(v7, v4);
  v9 = *(type metadata accessor for SQLDatabase.AttachedLocation(0) - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_26B173634(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26B16B158()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      sub_26B16C890(0, &qword_2803E7008);
      v6 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v6);
      OUTLINED_FUNCTION_18_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_6();
        sub_26B173F04(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_26B16CBDC(0, &qword_2803E7010, &type metadata for SQLDynamicValue, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B2A8()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v6, &qword_2803E6FF0, &type metadata for SQLIndexOrderingTerm);
      v8 = OUTLINED_FUNCTION_23_1(v7);
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B173F10(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B360()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v6, &qword_2803E6FF8, &type metadata for SQLIndexConstraint);
      v8 = OUTLINED_FUNCTION_23_1(v7);
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B150634(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B418()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      sub_26B16CB64(0);
      v7 = OUTLINED_FUNCTION_23_1(v6);
      OUTLINED_FUNCTION_6_6(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_6();
        sub_26B173F10(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_26B16CB10(0, &qword_2803E7060);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B510(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_12_2();
  if ((v7 & 1) == 0)
  {
    v8 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(v1 + 16);
    if (v8 <= v11)
    {
      v12 = *(v1 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      sub_26B16CBDC(0, v6, v3, MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v11;
      v13[3] = 2 * ((v14 - 32) / 48);
      if (v4)
      {
LABEL_12:
        v2(v1 + 32, v11, v13 + 4);
        *(v1 + 16) = 0;
LABEL_15:

        OUTLINED_FUNCTION_39();
        return;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (v4)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_37();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v9)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B16B600(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B16C890(0, &qword_2803E7078);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26B173F14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B16CBDC(0, &qword_2803E7080, &type metadata for SQLVirtualTableIndexResults.ConstraintUsage, MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B16B750()
{
  OUTLINED_FUNCTION_20_2();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_9_5();
    if (v2)
    {
      sub_26B16C890(0, &qword_2803E6CC8);
      v6 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v6);
      OUTLINED_FUNCTION_18_1(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_6();
        sub_26B152C58(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_26B16CBDC(0, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26B16B850(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_26B16CBDC(0, a5, a6, MEMORY[0x277D84560]);
      v15 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_21_1();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B970(uint64_t a1)
{
  OUTLINED_FUNCTION_38();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((v13 & 1) == 0)
  {
    v14 = v1;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v15 == v16)
  {
LABEL_7:
    v17 = *(v10 + 16);
    if (v14 <= v17)
    {
      v18 = *(v10 + 16);
    }

    else
    {
      v18 = v14;
    }

    if (v18)
    {
      sub_26B16BDC8(0, v2, v8, v6, MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      v20 = _swift_stdlib_malloc_size(v19);
      v19[2] = v17;
      v19[3] = 2 * ((v20 - 32) / 40);
      if (v12)
      {
LABEL_12:
        v4(v10 + 32, v17, v19 + 4);
        *(v10 + 16) = 0;
LABEL_15:

        OUTLINED_FUNCTION_39();
        return;
      }
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      if (v12)
      {
        goto LABEL_12;
      }
    }

    sub_26B16C9BC(0, v8, v6);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v15)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_26B16BBC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_26B16BC10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26B150514(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26B16BCF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}