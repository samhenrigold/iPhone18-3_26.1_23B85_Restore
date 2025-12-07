BOOL sub_2978C8E7C(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29784FF04((a1 + 8), 64);
  if (!sub_29784FF04((a1 + 8), 64))
  {
    return v6;
  }

  while (1)
  {
    sub_2978C75A0(a1);
    if (sub_297850F64((a1 + 8), 6))
    {
      sub_2978C765C(a1, a1 + 8, 8, v13);
      sub_297869528(v13, 6u);
      sub_29782963C(v13);
      return 0;
    }

    v7 = sub_29784F384((a1 + 8));
    v8 = sub_2978C77C0(a1);
    if (sub_29784FF04((a1 + 8), 19))
    {
      break;
    }

    sub_2978C8538(v13, a2, v7, v8);
    v15.n128_u64[0] = sub_2978C94E8(a1, v13);
    if (v15.n128_u64[0])
    {
      v10 = &v15;
LABEL_12:
      sub_2978040A4(a3, v10);
    }

LABEL_13:
    if (!sub_29784FF04((a1 + 8), 64))
    {
      return v6;
    }
  }

  v9 = sub_297806460(a2);
  if (!sub_2978B810C(v9))
  {
    sub_2978C6E08(&v15);
    sub_2978C856C(a1, &v15);
    if (sub_29784FF04((a1 + 8), 19))
    {
      sub_2978C765C(a1, a1 + 8, 929, v14);
      sub_29782963C(v14);
      while (sub_29784FF04((a1 + 8), 19))
      {
        sub_2978C6E08(v13);
        sub_2978C856C(a1, v13);
      }
    }

    sub_2978C863C(v13, a2, v7, v8, &v15);
    v12 = sub_2978C94E8(a1, v13);
    if (!v12)
    {
      goto LABEL_13;
    }

    v10 = &v12;
    goto LABEL_12;
  }

  sub_2978C765C(a1, a1 + 8, 929, v16);
  sub_29782963C(v16);
  while (sub_29784FF04((a1 + 8), 19))
  {
    sub_2978C6E08(v13);
    sub_2978C856C(a1, v13);
  }

  return 0;
}

uint64_t sub_2978C90A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v28[27] = *MEMORY[0x29EDCA608];
  if (!sub_29784FF04(a1 + 32, 61))
  {
    if (sub_297850F64(a1 + 32, 6))
    {
      sub_2978C765C(a1, (a1 + 32), 8, v28);
      sub_297869528(v28, 6u);
      v9 = v28;
      goto LABEL_7;
    }

    v11 = sub_29784F384(a1 + 32);
    v12 = sub_2978C77C0(a1);
    if (!sub_29784FF04(a1 + 32, 21))
    {
      sub_2978C6E08(&v26);
      if (sub_29784FF04(a1 + 32, 19))
      {
        v13 = sub_297806460(a3);
        if (sub_2978B810C(v13))
        {
          v14 = sub_2977FB5F0((a1 + 32));
          sub_2978CFEF4(a1, v14, 929, v22);
          v9 = v22;
          goto LABEL_7;
        }

        result = sub_2978C856C(a1, &v26);
        if (result)
        {
          return result;
        }

        if (sub_29784FF04(a1 + 32, 19))
        {
          v16 = sub_2977FB5F0((a1 + 32));
          sub_2978CFEF4(a1, v16, 929, v21);
          v9 = v21;
          goto LABEL_7;
        }
      }

      sub_2978C863C(v25, a3, v11, v12, &v26);
      v20 = sub_2978C94E8(a1, v25);
      if (v20)
      {
        sub_2978040A4(a2, &v20);
      }

      if (!sub_2978C8E7C(a1, a3, a2))
      {
        return sub_2978D58A8(a1);
      }

      if (!sub_297850F64(a1 + 32, 61))
      {
        return sub_2978C75A0(a1);
      }

      sub_2978C765C(a1, (a1 + 32), 1013, v24);
      v17 = sub_2977FB5F0((a1 + 32));
      sub_2977FB7B4(v19, ";");
      sub_297852794(v17, v19[0], v19[1], 0, v28);
      sub_297852754(v24, v28);
      sub_29782AC18(v28);
      v9 = v24;
LABEL_7:
      sub_29782963C(v9);
      return sub_2978D58A8(a1);
    }

    sub_2978B65DC(v19, *(a1 + 8), 9);
    sub_2978C77C4(v28, a3, v11, v12);
    sub_2978C77CC(a1, v28);
    if (sub_29784FF04(a1 + 32, 61))
    {
      sub_2978C75A0(a1);
      v25[0] = sub_2978B9B10(*(a1 + 8), v28);
      if (v25[0])
      {
        sub_2978040A4(a2, v25);
      }

      sub_2978CFF00(a1);
    }

    else
    {
      if (a5)
      {
        if (!sub_297850F64(a1 + 32, 23))
        {
          v25[0] = sub_2978C804C(a1, v28);
          if (v25[0])
          {
            sub_2978040A4(a2, v25);
          }

          goto LABEL_35;
        }

        sub_2978CFF00(a1);
        sub_2978C765C(a1, (a1 + 32), 979, v23);
        v15 = v23;
      }

      else
      {
        sub_2978CFF00(a1);
        sub_2978C765C(a1, (a1 + 32), 1013, &v26);
        v18 = sub_2977FB5F0((a1 + 32));
        sub_2977FB7B4(v24, ";");
        sub_297852794(v18, v24[0], v24[1], 0, v25);
        sub_297852754(&v26, v25);
        sub_29782AC18(v25);
        v15 = &v26;
      }

      sub_29782963C(v15);
      sub_2978D58A8(a1);
    }

LABEL_35:
    sub_2978C80D0(v28);
    return sub_2978B6620(v19);
  }

  if (sub_2978BA734(a3) == 1)
  {
    if (sub_2978B9058(a3))
    {
      v28[0] = sub_297805510(a3);
      sub_2978040A4(a2, v28);
    }

    else
    {
      sub_2978C765C(a1, (a1 + 32), 925, v27);
      sub_29782963C(v27);
    }

    return sub_2978C75A0(a1);
  }

  return sub_2978C75A0(a1);
}

unsigned __int8 *sub_2978C94E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB7B8(a2);
  v14[0] = sub_297828314(v4);
  v14[1] = v5;
  if (sub_2977FB7B8(v14) >= 0x401)
  {
    v6 = sub_29782AFB0(a2);
    sub_2978CFEF4(a1, v6, 1043, v13);
    sub_29782963C(v13);
  }

  v7 = sub_2978B8748(*(a1 + 8), a2, 0);
  if (sub_29784FF04(a1 + 32, 62))
  {
    v8 = sub_2978C75A0(a1);
    v9 = sub_2978CC164(a1);
    if (v9)
    {
      v7 = sub_2978B95FC(*(a1 + 8), v7, v9, v8);
    }
  }

  else
  {
    v10 = sub_2977FB720(a2);
    if (sub_2978B80F0(v10) == 2)
    {
      sub_2978C765C(a1, (a1 + 32), 947, v12);
      sub_29782963C(v12);
      return 0;
    }
  }

  if (v7)
  {
    sub_2978B9A6C(*(a1 + 8), v7);
  }

  return v7;
}

uint64_t sub_2978C9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  switch(v4)
  {
    case 327:
      v5 = 3;
      goto LABEL_7;
    case 379:
      v5 = 1;
      goto LABEL_7;
    case 392:
      v5 = 2;
LABEL_7:
      sub_2978CA54C(a2, v5);
      sub_2978C77C0(a1);
      return 1;
  }

  return 0;
}

uint64_t sub_2978C9684(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978C75A0(a1);
  v7 = sub_2977FB5F0(a1 + 8);
  sub_297829180(&v23);
  if (sub_2978CFC00(a1, 21, 992, "layout", 61))
  {
LABEL_19:
    v8 = 1;
    return v8 & 1;
  }

  v8 = 0;
  do
  {
    while (sub_29784FF04((a1 + 8), 6))
    {
      v9 = sub_29784F384((a1 + 8));
      sub_297828314(v9);
      v10 = sub_2978C9AF0();
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v12 = sub_2978C75A0(a1);
      sub_2978CA278(&v21, v12, v11);
      if (sub_29784FF04((a1 + 8), 62))
      {
        sub_2978C75A0(a1);
        if (sub_297850F64((a1 + 8), 8))
        {
          sub_2978C765C(a1, a1 + 8, 991, v20);
          sub_29782963C(v20);
          v19 = 1441856;
          sub_2977FB8D0(v18, &v19);
          v13 = v18[0];
          v14 = v18[1];
          goto LABEL_9;
        }

        v16 = sub_2978CD190(a1);
        sub_2977FE390(&v21, v16);
      }

      sub_297803F88(a3, &v21);
      if (sub_297850F64((a1 + 8), 64))
      {
        v15 = 3;
        goto LABEL_16;
      }

      sub_2978C75A0(a1);
    }

    sub_2978C765C(a1, a1 + 8, 987, v22);
    sub_29782963C(v22);
    LODWORD(v18[0]) = 1441856;
    sub_2977FB8D0(&v21, v18);
    v14 = *(&v21 + 1);
    v13 = v21;
LABEL_9:
    sub_2978D56B8(a1, v13, v14, 1, 1);
    if (sub_29784FF04((a1 + 8), 64))
    {
      sub_2978C84FC(a1);
      v15 = 2;
      v8 = 1;
    }

    else
    {
      sub_2978C8368(a1, 22, v7, &v23);
      v15 = 1;
    }

LABEL_16:
    ;
  }

  while (v15 == 2);
  if (v15 != 3 || sub_2978C8368(a1, 22, v7, &v23))
  {
    goto LABEL_19;
  }

  sub_29781601C(&v21, a3);
  sub_2978CA280(a2, v6, v21, *(&v21 + 1));
  return v8 & 1;
}

uint64_t sub_2978C98E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FB5F0((a1 + 32));
  v5 = sub_2978503FC(a1 + 32);
  result = 0;
  if (v5 <= 356)
  {
    switch(v5)
    {
      case 79:
        v7 = 2;
        break;
      case 296:
        v7 = 1;
        break;
      case 302:
        sub_2978C75A0(a1);
        if (sub_2978503FC(a1 + 32) == 357)
        {
          v7 = 5;
        }

        else
        {
          if (sub_2978503FC(a1 + 32) != 395)
          {
            v8 = sub_2977FB5F0((a1 + 32));
            sub_2978CFEF4(a1, v8, 985, v9);
            sub_29782963C(v9);
            return 0;
          }

          v7 = 6;
        }

        break;
      default:
        return result;
    }
  }

  else if (v5 > 437)
  {
    if (v5 == 438)
    {
      v7 = 7;
    }

    else
    {
      if (v5 != 454)
      {
        return result;
      }

      v7 = 8;
    }
  }

  else if (v5 == 357)
  {
    v7 = 3;
  }

  else
  {
    if (v5 != 395)
    {
      return result;
    }

    v7 = 4;
  }

  sub_2978C8430(a2, v4, v7);
  sub_2978C77C0(a1);
  return 1;
}

BOOL sub_2978C9A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  if (v4 == 361)
  {
    sub_2978CA28C(a2, 1);
    sub_2978C75A0(a1);
  }

  return v4 == 361;
}

uint64_t sub_2978C9A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978503FC(a1 + 32);
  if (v4 == 423)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (v4 == 323)
  {
    v5 = 2;
LABEL_5:
    sub_2978CA29C(a2, v5);
    sub_2978C77C0(a1);
    return 1;
  }

  return 0;
}

uint64_t sub_2978C9AF0()
{
  v0 = sub_2978102C8();
  v158 = 1;
  v1 = sub_297810504(v0, "shared", &v158);
  v157 = 2;
  v2 = sub_297810504(v1, "packed", &v157);
  v156 = 3;
  v3 = sub_297810504(v2, "std140", &v156);
  v155 = 4;
  v4 = sub_297810504(v3, "std430", &v155);
  v154 = 5;
  v5 = sub_297812160(v4, "row_major", &v154);
  v153 = 6;
  v6 = sub_2978121D4(v5, "column_major", &v153);
  v152 = 7;
  v7 = sub_2978102CC(v6, "rgba32f", &v152);
  v151 = 8;
  v8 = sub_2978102CC(v7, "rgba16f", &v151);
  v150 = 9;
  v9 = sub_2978103B4(v8, "rg32f", &v150);
  v149 = 10;
  v10 = sub_2978103B4(v9, "rg16f", &v149);
  v148 = 11;
  v11 = sub_297812248(v10, "r11f_g11f_b10f", &v148);
  v147 = 12;
  v12 = sub_29781049C(v11, "r32f", &v147);
  v146 = 13;
  v13 = sub_29781049C(v12, "r16f", &v146);
  v145 = 14;
  v14 = sub_297810504(v13, "rgba16", &v145);
  v144 = 15;
  v15 = sub_297810578(v14, "rgb10_a2", &v144);
  v143 = 16;
  v16 = sub_2978103B4(v15, "rgba8", &v143);
  v142 = 17;
  v17 = sub_29781049C(v16, "rg16", &v142);
  v141 = 18;
  v18 = sub_297810428(v17, "rg8", &v141);
  v140 = 19;
  v19 = sub_297810428(v18, "r16", &v140);
  v139 = 20;
  v20 = sub_29781243C(v19, "r8", &v139);
  v138 = 21;
  v21 = sub_2978121D4(v20, "rgba16_snorm", &v138);
  v137 = 22;
  v22 = sub_297811E3C(v21, "rgba8_snorm", &v137);
  v136 = 23;
  v23 = sub_297810340(v22, "rg16_snorm", &v136);
  v135 = 24;
  v24 = sub_297812160(v23, "rg8_snorm", &v135);
  v134 = 25;
  v25 = sub_297812160(v24, "r16_snorm", &v134);
  v133 = 26;
  v26 = sub_297810578(v25, "r8_snorm", &v133);
  v132 = 27;
  v27 = sub_2978102CC(v26, "rgba32i", &v132);
  v131 = 28;
  v28 = sub_2978102CC(v27, "rgba16i", &v131);
  v130 = 29;
  v29 = sub_297810504(v28, "rgba8i", &v130);
  v129 = 30;
  v30 = sub_2978103B4(v29, "rg32i", &v129);
  v128 = 31;
  v31 = sub_2978103B4(v30, "rg16i", &v128);
  v127 = 32;
  v32 = sub_29781049C(v31, "rg8i", &v127);
  v126 = 33;
  v33 = sub_29781049C(v32, "r32i", &v126);
  v125 = 34;
  v34 = sub_29781049C(v33, "r16i", &v125);
  v124 = 35;
  v35 = sub_297810428(v34, "r8i", &v124);
  v123 = 36;
  v36 = sub_297810578(v35, "rgba32ui", &v123);
  v122 = 37;
  v37 = sub_297810578(v36, "rgba16ui", &v122);
  v121 = 38;
  v38 = sub_297810340(v37, "rgb10_a2ui", &v121);
  v120 = 39;
  v39 = sub_2978102CC(v38, "rgba8ui", &v120);
  v119 = 40;
  v40 = sub_297810504(v39, "rg32ui", &v119);
  v118 = 41;
  v41 = sub_297810504(v40, "rg16ui", &v118);
  v117 = 42;
  v42 = sub_2978103B4(v41, "rg8ui", &v117);
  v116 = 43;
  v43 = sub_2978103B4(v42, "r32ui", &v116);
  v115 = 44;
  v44 = sub_2978103B4(v43, "r16ui", &v115);
  v114 = 45;
  v45 = sub_29781049C(v44, "r8ui", &v114);
  v113 = 46;
  v46 = sub_297810578(v45, "location", &v113);
  v112 = 47;
  v47 = sub_2978102CC(v46, "binding", &v112);
  v111 = 48;
  v48 = sub_297812160(v47, "triangles", &v111);
  v110 = 49;
  v49 = sub_2978103B4(v48, "quads", &v110);
  v109 = 50;
  v50 = sub_297810578(v49, "isolines", &v109);
  v108 = 51;
  v51 = sub_297828618(v50, "equal_spacing", &v108);
  v107 = 52;
  v52 = sub_2978284B4(v51, "fractional_even_spacing", &v107);
  v106 = 53;
  v53 = sub_297828770(v52, "fractional_odd_spacing", &v106);
  v105 = 54;
  v54 = sub_29781243C(v53, "cw", &v105);
  v104 = 55;
  v55 = sub_297810428(v54, "ccw", &v104);
  v103 = 56;
  v56 = sub_297810340(v55, "point_mode", &v103);
  v102 = 57;
  v57 = sub_297810504(v56, "points", &v102);
  v101 = 58;
  v58 = sub_2978103B4(v57, "lines", &v101);
  v100 = 59;
  v59 = sub_2978285A4(v58, "lines_adjacency", &v100);
  v99 = 60;
  v60 = sub_2978288D8(v59, "triangles_adjacency", &v99);
  v98 = 61;
  v61 = sub_297811E3C(v60, "invocations", &v98);
  v97 = 62;
  v62 = sub_29782868C(v61, "origin_upper_left", &v97);
  v96 = 63;
  v63 = sub_29782852C(v62, "pixel_center_integer", &v96);
  v95 = 64;
  v64 = sub_29782852C(v63, "early_fragment_tests", &v95);
  v94 = 65;
  v65 = sub_2978121D4(v64, "local_size_x", &v94);
  v93 = 66;
  v66 = sub_2978121D4(v65, "local_size_y", &v93);
  v92 = 67;
  v67 = sub_2978121D4(v66, "local_size_z", &v92);
  v91 = 68;
  v68 = sub_297810578(v67, "depthAny", &v91);
  v90 = 69;
  v69 = sub_297828618(v68, "depth_greater", &v90);
  v89 = 70;
  v70 = sub_297812160(v69, "depthLess", &v89);
  v88 = 71;
  v71 = sub_2978285A4(v70, "depth_unchanged", &v88);
  v87 = 72;
  v72 = sub_2978103B4(v71, "index", &v87);
  v86 = 73;
  v73 = sub_297810578(v72, "vertices", &v86);
  v85 = 74;
  v74 = sub_297810340(v73, "line_strip", &v85);
  v84 = 75;
  v75 = sub_297812248(v74, "triangle_strip", &v84);
  v83 = 76;
  v76 = sub_2978121D4(v75, "max_vertices", &v83);
  v82 = 77;
  v77 = sub_297810504(v76, "stream", &v82);
  v81 = 78;
  v78 = sub_297810504(v77, "offset", &v81);
  v80 = 0;
  return sub_297828CA4(v78, &v80);
}

uint64_t sub_2978CA280(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *(result + 8) = a2;
  *(result + 40) = a3;
  *(result + 48) = a4;
  return result;
}

BOOL sub_2978CA2AC(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  if (v2 <= 328)
  {
    if (v2 > 268)
    {
      if (v2 > 298)
      {
        return v2 == 299 || v2 == 327 || v2 == 328;
      }

      v5 = v2 == 297 || v2 == 298;
      v6 = v2 == 269;
    }

    else if (v2 > 100)
    {
      v5 = v2 == 106 || v2 == 123;
      v6 = v2 == 101;
    }

    else
    {
      if (v2 == 6)
      {
        v7 = *(a1 + 8);
        v8 = sub_29784F384(a1 + 32);
        sub_2977FB5F0((a1 + 32));
        return sub_2978BF178(v7, v8) != 0;
      }

      v5 = v2 == 92;
      v6 = v2 == 87;
    }

    return v6 || v5;
  }

  v3 = v2 - 375;
  result = 0;
  switch(v3)
  {
    case 0:
    case 1:
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 28:
    case 33:
    case 62:
    case 76:
    case 77:
    case 78:
    case 80:
    case 81:
    case 82:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
      return 1;
    case 3:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 83:
    case 84:
    case 85:
      return result;
    default:
      v5 = 0;
      v6 = 0;
      return v6 || v5;
  }

  return result;
}

BOOL sub_2978CA408(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  result = 1;
  if (v2 <= 436)
  {
    if (v2 <= 356)
    {
      if (((v2 - 269) > 0x3D || ((1 << (v2 - 13)) & 0x3C00000270000001) == 0) && ((v2 - 87) > 0x24 || ((1 << (v2 - 87)) & 0x1000084021) == 0))
      {
        if (v2 == 6)
        {
          v5 = *(a1 + 8);
          v6 = sub_29784F384(a1 + 32);
          sub_2977FB5F0((a1 + 32));
          return sub_2978BF178(v5, v6) != 0;
        }

        return 0;
      }
    }

    else
    {
      v4 = v2 - 357;
      if (v4 > 0x33 || ((1 << v4) & 0x8444FFFDC0003) == 0)
      {
        return 0;
      }
    }
  }

  else if (((v2 - 437) > 0x37 || ((1 << (v2 + 75)) & 0xFFFFFFFF1DC001) == 0) && v2 != 521)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2978CA564(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a1;
  v32 = a3;
  while (1)
  {
    while (1)
    {
      v6 = sub_2978503FC(a1 + 32);
      if (v6 > 327)
      {
        if (v6 > 374)
        {
          switch(v6)
          {
            case 375:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 14);
              v16 = a1;
              goto LABEL_85;
            case 376:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 15);
              v16 = a1;
              goto LABEL_85;
            case 377:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 16);
              v16 = a1;
              goto LABEL_85;
            case 380:
            case 381:
            case 483:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 23);
              v16 = a1;
              goto LABEL_85;
            case 382:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 26);
              v16 = a1;
              goto LABEL_85;
            case 383:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 27);
              v16 = a1;
              goto LABEL_85;
            case 384:
            case 386:
            case 484:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 24);
              v16 = a1;
              goto LABEL_85;
            case 385:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 28);
              v16 = a1;
              goto LABEL_85;
            case 387:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 29);
              v16 = a1;
              goto LABEL_85;
            case 388:
            case 391:
            case 485:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 25);
              v16 = a1;
              goto LABEL_85;
            case 389:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 30);
              v16 = a1;
              goto LABEL_85;
            case 390:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 31);
              v16 = a1;
              goto LABEL_85;
            case 403:
            case 463:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 41);
              v16 = a1;
              goto LABEL_85;
            case 408:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 43);
              v16 = a1;
              goto LABEL_85;
            case 437:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 6);
              v16 = a1;
              goto LABEL_85;
            case 451:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 17);
              v16 = a1;
              goto LABEL_85;
            case 452:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 18);
              v16 = a1;
              goto LABEL_85;
            case 453:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 19);
              v16 = a1;
              goto LABEL_85;
            case 455:
            case 477:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 8);
              v16 = a1;
              goto LABEL_85;
            case 456:
            case 478:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 9);
              v16 = a1;
              goto LABEL_85;
            case 457:
            case 461:
            case 479:
            case 491:
            case 492:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 10);
              v16 = a1;
              goto LABEL_85;
            case 462:
            case 482:
              goto LABEL_30;
            case 464:
            case 489:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 42);
              v16 = a1;
              goto LABEL_85;
            case 465:
            case 466:
            case 486:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 32);
              v16 = a1;
              goto LABEL_85;
            case 467:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 35);
              v16 = a1;
              goto LABEL_85;
            case 468:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 36);
              v16 = a1;
              goto LABEL_85;
            case 469:
            case 471:
            case 487:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 33);
              v16 = a1;
              goto LABEL_85;
            case 470:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 37);
              v16 = a1;
              goto LABEL_85;
            case 472:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 38);
              v16 = a1;
              goto LABEL_85;
            case 473:
            case 476:
            case 488:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 34);
              v16 = a1;
              goto LABEL_85;
            case 474:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 39);
              v16 = a1;
              goto LABEL_85;
            case 475:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 40);
              v16 = a1;
              goto LABEL_85;
            case 480:
              goto LABEL_74;
            case 481:
              goto LABEL_75;
            case 490:
              sub_2978CB0D4(&v31);
              sub_2978C84CC(a2, 44);
              v16 = a1;
              goto LABEL_85;
            default:
              goto LABEL_42;
          }
        }

        if (v6 == 328)
        {
LABEL_74:
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 11);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 == 329)
        {
LABEL_75:
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 12);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 != 330)
        {
          goto LABEL_42;
        }

LABEL_30:
        sub_2978CB0D4(&v31);
        sub_2978C84CC(a2, 13);
        v16 = a1;
        goto LABEL_85;
      }

      if (v6 <= 122)
      {
        break;
      }

      if (v6 <= 297)
      {
        if (v6 == 123)
        {
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 7);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 == 269)
        {
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 4);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 != 297)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v31);
        sub_2978C84CC(a2, 20);
        v16 = a1;
LABEL_85:
        sub_2978C75A0(v16);
        return 0;
      }

      if (v6 != 302)
      {
        if (v6 == 298)
        {
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 21);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 == 299)
        {
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 22);
          v16 = a1;
          goto LABEL_85;
        }

LABEL_42:
        if (a3)
        {
LABEL_43:
          sub_2978C765C(a1, (a1 + 32), 1018, v26);
          v18 = v26;
LABEL_44:
          sub_29782963C(v18);
        }

        return 1;
      }

      if (!a3)
      {
        return 1;
      }

      v7 = sub_2978B80F0(a2);
      if (v7 > 8 || ((1 << v7) & 0x118) == 0)
      {
        goto LABEL_43;
      }

      sub_2978C765C(a1, (a1 + 32), 945, v27);
      sub_29782963C(v27);
      sub_2978C77C0(a1);
    }

    if (v6 > 86)
    {
      if (v6 > 100)
      {
        if (v6 == 101)
        {
          v20 = sub_2978CB164(a1);
          if (!v20)
          {
            return 1;
          }

          v21 = sub_29781BF50(v20);
          sub_2978C84CC(a2, 1);
          sub_2978CB4A8(a2, v21);
          sub_2978CB4B0(a2);
          return 0;
        }

        if (v6 != 106)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v31);
        sub_2978C84CC(a2, 2);
        v16 = a1;
      }

      else
      {
        if (v6 == 87)
        {
          sub_2978CB0D4(&v31);
          sub_2978C84CC(a2, 3);
          v16 = a1;
          goto LABEL_85;
        }

        if (v6 != 92)
        {
          goto LABEL_42;
        }

        sub_2978CB0D4(&v31);
        sub_2978C84CC(a2, 5);
        v16 = a1;
      }

      goto LABEL_85;
    }

    if (v6 != 6)
    {
      goto LABEL_42;
    }

    sub_2978B84F4(&v30, 1, 0, 0);
    v8 = *(a1 + 8);
    v9 = sub_29784F384(a1 + 32);
    v10 = sub_2977FB5F0((a1 + 32));
    v29[0] = sub_2978BF04C(v8, v9, v10, &v30);
    v29[1] = v11;
    v12 = sub_2977FB5F0(v29);
    if (v12 != 1)
    {
      break;
    }

    v13 = sub_2977FB7B8(v29);
    sub_2977FD5DC(a1 + 32, v13);
    v14 = sub_2977FB7B8(v29);
    v15 = sub_297871628(v14);
    sub_297853640(a1 + 32, v15);
    sub_2978CB4C0(*a1, a1 + 32);
  }

  if (v12 > 2 || !v12)
  {
    if (a3)
    {
      sub_2978C765C(a1, (a1 + 32), 3137, v28);
      v17 = sub_29784F384(a1 + 32);
      sub_297869558(v28, v17);
      v18 = v28;
      goto LABEL_44;
    }

    return 1;
  }

  v28[0] = sub_2978CB514();
  v22 = sub_2977FB720(v28);
  v23 = sub_297887DB4(v22);
  if (!v23)
  {
    return 1;
  }

  v24 = v23;
  sub_2978C84CC(a2, 1);
  v25 = sub_2977FB7B8(v24);
  sub_2978CB4A8(a2, v25);
  sub_2978C77C0(a1);
  return 0;
}

char *sub_2978CB0D4(char *result)
{
  if (result[8] == 1)
  {
    v8[4] = v1;
    v8[5] = v2;
    v3 = *result;
    v4 = sub_2978503FC(*result + 32);
    result = sub_29784833C(v4);
    if (result)
    {
      v5 = sub_2978503FC(v3 + 32);
      result = sub_297882A94(v5, *(v3 + 16));
      if ((result & 1) == 0)
      {
        sub_2978C765C(v3, (v3 + 32), 1169, v8);
        v6 = sub_297882B50(*(v3 + 16));
        v7 = sub_297883C6C(v6);
        sub_29785965C(v8, v7);
        return sub_29782963C(v8);
      }
    }
  }

  return result;
}

uint64_t sub_2978CB164(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = sub_2978C75A0(a1);
  if (sub_297850F64(a1 + 32, 23) && sub_297850F64(a1 + 32, 6))
  {
    sub_2978C765C(a1, (a1 + 32), 11, v21);
    v3 = sub_297869528(v21, 6u);
    sub_297869528(v3, 0x17u);
    v4 = v21;
LABEL_11:
    sub_29782963C(v4);
    return 0;
  }

  sub_297829180(&v19);
  if (sub_29784FF04(a1 + 32, 6))
  {
    v5 = sub_29784F384(a1 + 32);
    v19 = sub_2978C75A0(a1);
    if (sub_297850F64(a1 + 32, 23))
    {
      if (v5)
      {
        v6 = sub_2978BF178(*(a1 + 8), v5);
        if (v6)
        {
          v7 = v6;
          sub_2978CFEF4(a1, v2, 4735, v20);
          v8 = sub_297869558(v20, v5);
          sub_2978634C0(&v18, v2);
          sub_2978CB540(v18, v21);
          sub_297852754(v8, v21);
          sub_29782AC18(v21);
          sub_29782963C(v20);
          return v7;
        }
      }

LABEL_10:
      sub_2978C765C(a1, (a1 + 32), 1155, v17);
      v4 = v17;
      goto LABEL_11;
    }
  }

  else
  {
    if (sub_297850F64(a1 + 32, 23))
    {
      goto LABEL_10;
    }

    v5 = 0;
  }

  sub_297829180(&v16);
  sub_2978D58FC(a1, 0x17u, &v16);
  if (sub_29784FF04(a1 + 32, 24))
  {
    sub_2978C765C(a1, (a1 + 32), 964, v15);
    sub_29782963C(v15);
  }

  sub_29788E11C(v21);
  sub_2978B65DC(&v18, *(a1 + 8), 24);
  sub_29788E11C(v20);
  while (sub_297850F64(a1 + 32, 24))
  {
    if (!sub_297850F64(a1 + 32, 1))
    {
      break;
    }

    sub_2978CFF00(a1);
    sub_2978CB57C(a1, v20);
    if (sub_29780406C(v20))
    {
      v14 = sub_2978BFAAC(*(a1 + 8), v20);
      sub_2977FD800(v20);
      if (v14)
      {
        sub_2978040A4(v21, &v14);
      }
    }

    else
    {
      sub_2978CFF00(a1);
    }
  }

  sub_2977FD134(v20);
  sub_2978B6620(&v18);
  sub_297829180(&v18);
  if (sub_2978C8368(a1, 24, v16, &v18))
  {
    v7 = 0;
  }

  else
  {
    sub_29784FF04(a1 + 32, 6);
    v9 = *(a1 + 8);
    v10 = v19;
    v11 = v16;
    v12 = v18;
    sub_29780B1E8(v20, v21);
    v7 = sub_2978B7B98(v9, v2, v10, v5, v11, v12, v20[0], v20[1]);
  }

  sub_2977FD134(v21);
  return v7;
}

__n128 sub_2978CB4C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1984))
  {
    if (sub_297866DE0(a1))
    {
      v5 = sub_29783E88C(a1 + 1928, *(a1 + 1984) - 1);
      v6 = *(a2 + 15);
      result = *a2;
      *v5 = *a2;
      *(v5 + 15) = v6;
    }
  }

  return result;
}

uint64_t sub_2978CB540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_297859984(a1);

  return sub_297854790(v3, v4, a2);
}

uint64_t sub_2978CB57C(uint64_t a1, uint64_t a2)
{
  if (sub_2978C75A4(a1))
  {
    sub_2978C765C(a1, (a1 + 32), 1158, v14);
    v4 = v14;
LABEL_3:
    sub_29782963C(v4);
    return sub_2978D58A8(a1);
  }

  v5 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v13, v5);
  if (!sub_2978C76B4(a1, v13, 1))
  {
    v12 = sub_2978CB708(a1, v13);
    v7 = v12 == 0;
    if (v12)
    {
      sub_2978040A4(a2, &v12);
    }

    while (sub_29784FF04(a1 + 32, 64))
    {
      sub_2978C75A0(a1);
      v12 = sub_2978CB708(a1, v13);
      if (v12)
      {
        sub_2978040A4(a2, &v12);
      }

      else
      {
        v7 = 1;
      }
    }

    if (!sub_297850F64(a1 + 32, 61))
    {
      return sub_2978C75A0(a1);
    }

    if (!v7)
    {
      sub_2978C765C(a1, (a1 + 32), 1013, v11);
      v8 = sub_2977FB5F0((a1 + 32));
      sub_2977FB7B4(v9, ";");
      sub_297852794(v8, v9[0], v9[1], 0, v10);
      sub_297852754(v11, v10);
      sub_29782AC18(v10);
      v4 = v11;
      goto LABEL_3;
    }
  }

  return sub_2978D58A8(a1);
}

unsigned int *sub_2978CB708(uint64_t a1, uint64_t a2)
{
  v4 = sub_297806460(a2);
  if (sub_2978B810C(v4))
  {
    sub_297806460(a2);
    sub_29784DD58();
    if (!v5)
    {
      sub_2978C765C(a1, (a1 + 32), 1156, v19);
      sub_29782963C(v19);
    }
  }

  if (sub_297850F64(a1 + 32, 6))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v14);
    sub_297869528(v14, 6u);
    v6 = v14;
LABEL_6:
    sub_29782963C(v6);
    return 0;
  }

  v9 = sub_29784F384(a1 + 32);
  v10 = sub_2978C75A0(a1);
  sub_2978C6E08(&v18);
  if (!sub_29784FF04(a1 + 32, 19))
  {
LABEL_17:
    if (sub_29784FF04(a1 + 32, 19))
    {
      sub_2978C765C(a1, (a1 + 32), 929, v15);
      sub_29782963C(v15);
      while (sub_29784FF04(a1 + 32, 19))
      {
        sub_2978C6E08(v14);
        sub_2978C856C(a1, v14);
      }

      return 0;
    }

    sub_2978C863C(v14, a2, v9, v10, &v18);
    v7 = sub_2978B8748(*(a1 + 8), v14, 1);
    if (!sub_29784FF04(a1 + 32, 62))
    {
      return v7;
    }

    sub_2978C765C(a1, (a1 + 32), 1157, v13);
    v6 = v13;
    goto LABEL_6;
  }

  v11 = sub_297806460(a2);
  if (sub_2978B810C(v11))
  {
    sub_2978C765C(a1, (a1 + 32), 929, v17);
    sub_29782963C(v17);
    while (sub_29784FF04(a1 + 32, 19))
    {
      sub_2978C6E08(v14);
      sub_2978C856C(a1, v14);
    }

    return 0;
  }

  if ((sub_2978C856C(a1, &v18) & 1) == 0)
  {
    sub_29784DD58();
    if (!v12)
    {
      sub_2978C765C(a1, (a1 + 32), 1156, v16);
      sub_29782963C(v16);
    }

    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_2978CB944(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = sub_2978CB980(a1, a2, a3, a4);
  sub_29788E11C(v5 + 40);
  sub_29788E11C(a1 + 128);
  return a1;
}

uint64_t sub_2978CB980(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_2978C6E08(a1 + 24);
  return a1;
}

uint64_t sub_2978CB9B4(uint64_t a1)
{
  sub_2977FD134(a1 + 128);
  sub_2977FD134(a1 + 40);
  return a1;
}

uint64_t sub_2978CB9E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2978CB9F8(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 8);
  sub_2978CBA48(a1, a3);
  *(a1 + 8) |= a3 & a2;
  return v6;
}

uint64_t sub_2978CBA58(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[3];
  sub_2978CBB20((a1 + 1));

  return MEMORY[0x2A1C6FDE8](a1, a2 + 1);
}

uint64_t sub_2978CBB24(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9570] + 16;
  std::string::~string((a1 + 64));

  return MEMORY[0x2A1C6FED0](a1);
}

__n128 sub_2978CBB78(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __n128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  result = *a5;
  *(a1 + 24) = *a5;
  return result;
}

uint64_t sub_2978CBB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978A19CC(a1 + 8);
  sub_2978A19CC(a1 + 12);
  sub_297829180((a1 + 16));
  sub_297829180((a1 + 20));
  sub_2978B80F0(a3);
  *(a1 + 12) = *(a2 + 440);
  *(a1 + 16) = *(a2 + 444);
  *(a1 + 20) = *(a2 + 448);
  sub_2978C3150(a2, a3, (a1 + 8), (a2 + 444), (a2 + 448));
  if (sub_297887D4C((a1 + 8)))
  {
    v6 = sub_297887D70((a1 + 8));
    sub_2978B7170((a2 + 440), v6);
  }

  if (sub_297887D7C((a1 + 8)))
  {
    v7 = sub_297887D88((a1 + 8));
    sub_2978B7188((a2 + 440), v7);
  }

  return a1;
}

uint64_t *sub_2978CBC58(uint64_t *result)
{
  *(*result + 440) = *(result + 6);
  v1 = *result;
  *(v1 + 444) = *(result + 4);
  *(v1 + 448) = *(result + 5);
  return result;
}

uint64_t sub_2978CBC7C(uint64_t result, int a2, char a3)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 12) = a3;
  return result;
}

uint64_t *sub_2978CBC8C(uint64_t *a1, int a2, int a3)
{
  v6 = sub_29780AE44(a1);
  *(v6 + 8) = a2;
  *(v6 + 12) = a3;
  sub_2978C6E50(v6, 1u);
  sub_29783EB08(a1);
  return a1;
}

void *sub_2978CBCE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    sub_29788CF50();
    return sub_2978CBD28();
  }
}

void *sub_2978CBD28(void *a1)
{
  result = sub_2978CBE28(a1);
  *result = MEMORY[0x29EDC95B8] + 16;
  return result;
}

uint64_t *sub_2978CBD5C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[1];
  sub_2978CBE4C((a1 + *(*a1 - 24)), a3);
  return a1;
}

void *sub_2978CBE28(void *result)
{
  *result = MEMORY[0x29EDC95B0] + 16;
  result[6] = 0;
  return result;
}

uint64_t sub_2978CBE4C(std::ios_base *a1, void *a2)
{
  std::ios_base::init(a1, a2);
  a1[1].__vftable = 0;

  return sub_2978CBE88(&a1[1].__fmtflags_);
}

uint64_t sub_2978CBE88(_DWORD *a1)
{
  result = sub_29782AFA4();
  *a1 = result;
  return result;
}

uint64_t sub_2978CBEB0(uint64_t a1, int a2)
{
  v4 = std::streambuf::basic_streambuf();
  *v4 = MEMORY[0x29EDC9570] + 16;
  sub_297802744((v4 + 8));
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  sub_2978CBF0C(a1);
  return a1;
}

unint64_t sub_2978CBF0C(uint64_t a1)
{
  *(a1 + 88) = 0;
  sub_2978037CC(a1 + 64);
  v3 = v2;
  result = sub_2978032A4(a1 + 64);
  v5 = result;
  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v3 + result;
    result = sub_2978CC00C(a1, v3, v3, v3 + result);
    v6 = *(a1 + 96);
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v3 + v5;
    v7 = sub_297818B9C(a1 + 64);
    sub_297803274((a1 + 64), v7);
    v8 = sub_2978032A4(a1 + 64);
    result = sub_2978CC018(a1, v3, v3 + v8);
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        do
        {
          sub_2978CC024(a1, 0x7FFFFFFF);
          v5 -= 0x7FFFFFFFLL;
        }

        while (v5 >> 31);
      }

      else if (!v5)
      {
        return result;
      }

      return sub_2978CC024(a1, v5);
    }
  }

  return result;
}

void *sub_2978CC00C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

void *sub_2978CC018(void *result, uint64_t a2, uint64_t a3)
{
  result[5] = a2;
  result[6] = a2;
  result[7] = a3;
  return result;
}

uint64_t sub_2978CC034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  return v2;
}

uint64_t sub_2978CC044(int a1)
{
  if ((a1 - 27) > 0x2F)
  {
    return 0;
  }

  else
  {
    return dword_2978FC0D0[(a1 - 27)];
  }
}

uint64_t sub_2978CC094(int a1)
{
  if (a1 == 58)
  {
    v1 = 8;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 55)
  {
    v2 = 11;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 49)
  {
    v3 = 5;
  }

  else
  {
    v3 = 9;
  }

  if (a1 == 45)
  {
    v4 = 6;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 54)
  {
    v2 = v4;
  }

  if (a1 == 38)
  {
    v5 = 10;
  }

  else
  {
    v5 = 3;
  }

  if (a1 == 34)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1 == 29)
  {
    v7 = 2;
  }

  else
  {
    v7 = 7;
  }

  if (a1 <= 33)
  {
    v6 = v7;
  }

  if (a1 <= 44)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

unsigned int *sub_2978CC114(uint64_t a1)
{
  result = sub_2978CC164(a1);
  if (result)
  {

    return sub_2978CC1B4(a1, result, 1);
  }

  return result;
}

unsigned int *sub_2978CC164(uint64_t a1)
{
  result = sub_2978CC34C(a1);
  if (result)
  {

    return sub_2978CC1B4(a1, result, 2);
  }

  return result;
}

unsigned int *sub_2978CC1B4(uint64_t a1, unsigned int *a2, int a3)
{
  v6 = sub_2978503FC(a1 + 32);
  if (a2)
  {
    v7 = sub_2978CC044(v6);
    while (v7 >= a3)
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 48);
      sub_2978C77C0(a1);
      if (v7 == 3)
      {
        v25 = v27;
        v26 = v28;
        a2 = sub_2978CC954(a1, a2, &v25);
        v8 = sub_2978503FC(a1 + 32);
        v9 = sub_2978CC044(v8);
      }

      else
      {
        v10 = sub_2978CC34C(a1);
        if (!v10)
        {
          return 0;
        }

        v11 = v10;
        v12 = sub_2978503FC(a1 + 32);
        v13 = sub_2978CC044(v12);
        v15 = v7 != 2 || v13 != 2;
        if (v7 < v13 || !v15)
        {
          if (v7 == 2)
          {
            v16 = 2;
          }

          else
          {
            v16 = v7 + 1;
          }

          v17 = sub_2978CC1B4(a1, v11, v16);
          if (!v17)
          {
            return 0;
          }

          v11 = v17;
          v18 = sub_2978503FC(a1 + 32);
          v13 = sub_2978CC044(v18);
        }

        v9 = v13;
        v19 = *(a1 + 8);
        v20 = sub_2977FB5F0(&v27);
        v21 = sub_2978503FC(&v27);
        if (v7 == 2)
        {
          v23 = sub_2978CC094(v21);
          return sub_2978BC760(v19, v20, v23, a2, v11);
        }

        v22 = sub_2978CC06C(v21);
        a2 = sub_2978BC33C(v19, v20, v22, a2, v11);
      }

      v7 = v9;
      if (!a2)
      {
        return a2;
      }
    }
  }

  return a2;
}

unsigned int *sub_2978CC34C(uint64_t a1)
{
  v2 = sub_2977FB5F0((a1 + 32));
  sub_2978C6DA8(v50, v2);
  if (sub_297850F64(a1 + 32, 6) && !sub_2978C76B4(a1, v50, 0))
  {
    if (!sub_297850F64(a1 + 32, 21))
    {
      v13 = *(a1 + 8);
      sub_2977FB7B4(&v47, &byte_2978FC3E5);
      v14 = sub_2978C1AC4(v13, v50, v47, v48);
      v15 = sub_2977FB5F0(v50);
      v16 = sub_2978CCB78(a1, v14, v15);
      v17 = a1;
      return sub_2978CCC68(v17, v16);
    }

    sub_2978C765C(a1, (a1 + 32), 993, v49);
    v11 = v49;
    goto LABEL_45;
  }

  v3 = sub_2978503FC(a1 + 32);
  if (v3 > 98)
  {
    if (v3 <= 130)
    {
      if (v3 == 99)
      {
        sub_2978C765C(a1, (a1 + 32), 1040, &v47);
        v12 = "'sizeof'";
        goto LABEL_43;
      }

      if (v3 == 105)
      {
        sub_2978C765C(a1, (a1 + 32), 1039, &v47);
        v18 = sub_29783F028(&v47, "'unsigned'");
        v12 = "'uint'";
LABEL_44:
        sub_29783F028(v18, v12);
        v11 = &v47;
        goto LABEL_45;
      }
    }

    else
    {
      if (v3 == 131 || v3 == 145)
      {
        v20 = sub_2978503FC(a1 + 32);
        v21 = *(a1 + 8);
        v22 = sub_2978C77C0(a1);
        result = sub_2978BB160(v21, v20, v22);
        goto LABEL_33;
      }

      if (v3 == 361)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_41;
  }

  if (v3 > 12)
  {
    if (v3 <= 0x3D)
    {
      if (((1 << v3) & 0x1AB00000000) != 0)
      {
        v4 = sub_2978503FC(a1 + 32);
        v5 = sub_2978C77C0(a1);
        v6 = sub_2978CC34C(a1);
        if (!v6)
        {
          v19 = 0;
LABEL_34:
          v17 = a1;
          v16 = v19;
          return sub_2978CCC68(v17, v16);
        }

        v7 = v6;
        v8 = *(a1 + 8);
        v9 = sub_2978CC080(v4);
        result = sub_2978BB898(v8, v5, v9, v7, 0);
LABEL_33:
        v19 = result;
        goto LABEL_34;
      }

      if (((1 << v3) & 0x2000000000100000) != 0)
      {
LABEL_22:
        sub_2978C765C(a1, (a1 + 32), 976, v45);
        v11 = v45;
LABEL_45:
        sub_29782963C(v11);
        return 0;
      }

      if (v3 == 21)
      {
        sub_297829180(&v47);
        sub_2978D58FC(a1, 0x15u, &v47);
        v19 = sub_2978CC114(a1);
        sub_297829180(&v44);
        if (!sub_2978C8368(a1, 22, v47, &v44))
        {
          goto LABEL_34;
        }

        return 0;
      }
    }

    if (v3 == 13)
    {
      sub_2978C765C(a1, (a1 + 32), 1040, &v47);
      v12 = "string literals";
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v3 != 6)
  {
    if (v3 == 8)
    {
      result = sub_2978CD190(a1);
      goto LABEL_33;
    }

    if (v3 == 9)
    {
      sub_2978C765C(a1, (a1 + 32), 1040, &v47);
      v12 = "char constants";
LABEL_43:
      v18 = &v47;
      goto LABEL_44;
    }

LABEL_41:
    sub_2978C765C(a1, (a1 + 32), 976, v46);
    v11 = v46;
    goto LABEL_45;
  }

  v23 = sub_2977FB5F0((a1 + 32));
  v24 = sub_29784F384(a1 + 32);
  sub_2978C75A0(a1);
  if (!sub_297850F64(a1 + 32, 21) || !sub_297850F64(a1 + 32, 19))
  {
    if (sub_29784FF04(a1 + 32, 21))
    {
      sub_2978B84F4(v41, 1, 1, 1);
      v47 = sub_2978BF04C(*(a1 + 8), v24, v23, v41);
      v48 = v25;
      v26 = sub_2977FB5F0(&v47);
      v19 = 0;
      v27 = 2;
      if (v26 > 2)
      {
        if (v26 != 3)
        {
          if (v26 == 4)
          {
            v37 = sub_2977FB7B8(&v47);
            v29 = sub_2978CCF80(a1, v37, v23);
          }

          else
          {
            if (v26 != 5)
            {
              goto LABEL_75;
            }

            v32 = sub_2978B8578(&v47);
            v29 = sub_2978CD068(a1, v32, v23);
          }

          goto LABEL_72;
        }

        sub_2978C765C(a1, (a1 + 32), 982, v43);
        v36 = v43;
LABEL_69:
        sub_29782963C(v36);
        v27 = 1;
        sub_2978CFD74(a1, 61, 1, 1);
        v19 = 0;
        goto LABEL_75;
      }

      if (v26 >= 2)
      {
        if (v26 != 2)
        {
          goto LABEL_75;
        }

        v28 = sub_2978CB514();
        v29 = sub_2978CCB78(a1, v28, v23);
LABEL_72:
        v19 = v29;
        goto LABEL_75;
      }

      v33 = (a1 + 32);
      v34 = a1;
      v35 = 1185;
LABEL_68:
      sub_2978C765C(v34, v33, v35, &v44);
      sub_297869558(&v44, v24);
      v36 = &v44;
      goto LABEL_69;
    }

    sub_2978B84F4(&v42, 1, 1, 0);
    v47 = sub_2978BF04C(*(a1 + 8), v24, v23, &v42);
    v48 = v30;
    v31 = sub_2977FB5F0(&v47);
    v19 = 0;
    if (v31 <= 2)
    {
      if (v31 >= 2)
      {
        if (v31 == 2)
        {
          sub_2978C6E08(&v44);
          if (sub_2978C856C(a1, &v44))
          {
            v19 = 0;
LABEL_65:
            v27 = 1;
            goto LABEL_75;
          }

          v38 = *(a1 + 8);
          v39 = sub_2978CB514();
          sub_2977FB7B4(v41, &byte_2978FC3E5);
          v40 = sub_2978C1780(v38, &v44, v39, v41[0], v41[1]);
          v19 = sub_2978CCB78(a1, v40, v23);
        }

LABEL_74:
        v27 = 2;
LABEL_75:
        if (v27 == 2)
        {
          goto LABEL_34;
        }

        return 0;
      }

LABEL_66:
      v33 = (a1 + 32);
      v34 = a1;
      v35 = 1186;
      goto LABEL_68;
    }

    if (v31 != 3)
    {
      if (v31 == 4)
      {
        goto LABEL_66;
      }

      if (v31 != 5)
      {
        goto LABEL_74;
      }
    }

    v19 = sub_2978BAE44(*(a1 + 8), v23, v24);
    if (!v19)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  result = sub_2978BAE44(*(a1 + 8), v23, v24);
  if (result)
  {
    goto LABEL_33;
  }

  return result;
}

_DWORD *sub_2978CC954(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  result = sub_2978CC114(a1);
  if (result)
  {
    v7 = result;
    sub_297829180(&v24);
    if (sub_29784FF04((a1 + 8), 60))
    {
      v8 = sub_2978C77C0(a1);
    }

    else
    {
      v23 = sub_2977FB5F0(a1 + 8);
      v9 = sub_29781F408(*a1);
      if ((sub_29782D9A0(&v23) || sub_2978CCB60(*a1, v23, &v23)) && (v21[0] = 0, v10 = sub_297840FC8(&v23, -1), v11 = sub_297841788(v9, v10, v21), (v21[0] & 1) == 0) && *v11 == 32 && (v12 = sub_297840FC8(&v23, -2), v13 = sub_297841788(v9, v12, v21), (v21[0] & 1) == 0) && *v13 == 32)
      {
        v23 = sub_297840FC8(&v23, -1);
        v14 = ":";
      }

      else
      {
        v14 = ": ";
      }

      sub_2978C765C(a1, a1 + 8, 8, v22);
      v15 = sub_297869528(v22, 0x3Cu);
      v16 = v23;
      sub_2977FB7B4(v20, v14);
      sub_297852794(v16, v20[0], v20[1], 0, v21);
      sub_297852754(v15, v21);
      sub_29782AC18(v21);
      sub_29782963C(v22);
      sub_2978C765C(a1, a3, 50, v21);
      sub_29783F028(v21, "?");
      sub_29782963C(v21);
      v8 = sub_2977FB5F0(a1 + 8);
    }

    v24 = v8;
    result = sub_2978CC164(a1);
    if (result)
    {
      v17 = result;
      v18 = *(a1 + 1);
      v19 = sub_2977FB5F0(a3);
      return sub_2978BC5A4(v18, v19, v24, a2, v7, v17);
    }
  }

  return result;
}

uint64_t sub_2978CCB78(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v14);
  sub_297813788(v13);
  sub_297829180(&v12);
  sub_297829180(&v11);
  if (sub_2978CD5D8(a1, v14, v13, &v12, &v11))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = v12;
    sub_2978CD694(v10, v14);
    v6 = sub_2978C4EDC(v7, a2, a3, v8, v10[0], v10[1], v11);
  }

  sub_2977FD134(v13);
  sub_2977FD134(v14);
  return v6;
}

unsigned int *sub_2978CCC68(uint64_t a1, unsigned int *a2)
{
  v2 = a2;
  if (a2)
  {
    HIDWORD(v5) = sub_2978503FC(a1 + 32) - 19;
    LODWORD(v5) = HIDWORD(v5);
    v4 = v5 >> 1;
    if (v4 > 6)
    {
      if (v4 == 7 || v4 == 9)
      {
        v12 = *(a1 + 8);
        v13 = sub_2977FB5F0((a1 + 32));
        v14 = sub_2978503FC(a1 + 32);
        v15 = sub_2978CC080(v14);
        v16 = sub_2978BB898(v12, v13, v15, v2, 1);
        sub_2978C77C0(a1);
        return sub_2978CCC68(a1, v16);
      }
    }

    else
    {
      if (!v4)
      {
        v17 = sub_2978CD4A0(a1);
        sub_297829180(v35);
        v18 = sub_2978CC114(a1);
        if (v18 && (v19 = v18, sub_29784FF04(a1 + 32, 20)))
        {
          LODWORD(v35[0]) = sub_2977FB5F0((a1 + 32));
          v16 = sub_2978BBF5C(*(a1 + 8), v2, v17, v19, v35[0]);
        }

        else
        {
          v16 = 0;
        }

        sub_2978C8368(a1, 20, v17, v35);
        return sub_2978CCC68(a1, v16);
      }

      if (v4 == 3)
      {
        v6 = sub_2978C75A0(a1);
        if (sub_29784FF04(a1 + 32, 3))
        {
          v35[0] = sub_29788C170(v2);
          v7 = sub_2977FB720(v35);
          v8 = sub_2978876EC(v7);
          if (v8)
          {
            v9 = sub_297887A38(v8);
            v10 = sub_297806460(*(a1 + 8));
            sub_2978CD240(v9, v10, a1 + 80);
          }

          else
          {
            v35[0] = sub_29788C170(v2);
            v25 = sub_2977FB720(v35);
            v26 = sub_297887DB4(v25);
            if (v26)
            {
              v27 = sub_2977FB7B8(v26);
              v28 = sub_2978BBBF0(v27 + 16);
              v30 = v29;
              v31 = sub_297806460(*(a1 + 8));
              sub_2978CD3D4(v28, v30, v31, a1 + 80);
            }
          }

          sub_2978C77C0(a1);
          goto LABEL_26;
        }

        if (sub_29784FF04(a1 + 32, 6))
        {
          v20 = sub_29784F384(a1 + 32);
          v21 = sub_2978C77C0(a1);
          v22 = sub_297828314(v20);
          v24 = v23;
          sub_2977FB7B4(v35, "length");
          if (sub_297804D28(v22, v24, v35[0], v35[1]))
          {
            if (sub_297850F64(a1 + 32, 21))
            {
              sub_2978C765C(a1, (a1 + 32), 8, v35);
              sub_297869528(v35, 0x15u);
              sub_29782963C(v35);
              sub_2978CFD74(a1, 22, 0, 0);
              goto LABEL_26;
            }

            v34 = sub_2978C80DC(a1);
            sub_297829180(v35);
            if (sub_2978C8368(a1, 22, v34, v35))
            {
              goto LABEL_26;
            }

            v33 = sub_2978BBC88(*(a1 + 8), v2, v6, v35[0]);
          }

          else
          {
            v33 = sub_2978BB930(*(a1 + 8), v2, v6, v20, v21);
          }

          v16 = v33;
          return sub_2978CCC68(a1, v16);
        }

LABEL_26:
        v16 = 0;
        return sub_2978CCC68(a1, v16);
      }
    }
  }

  return v2;
}

unsigned int *sub_2978CCF80(uint64_t a1, uint64_t a2, int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v13);
  sub_297813788(v12);
  sub_297829180(&v11);
  sub_297829180(&v10);
  if (sub_2978CD5D8(a1, v13, v12, &v11, &v10))
  {
    v6 = 0;
  }

  else
  {
    v7 = *(a1 + 8);
    sub_2978CD694(v9, v13);
    v6 = sub_2978BC8AC(v7, a3, a2, v9[0], v9[1], v10);
  }

  sub_2977FD134(v12);
  sub_2977FD134(v13);
  return v6;
}

uint64_t sub_2978CD068(uint64_t a1, unsigned int a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v15);
  sub_297813788(v14);
  sub_297829180(&v13);
  sub_297829180(&v12);
  if (a2 != 76)
  {
    if (sub_2978CD5D8(a1, v15, v14, &v13, &v12))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = *(a1 + 8);
    v9 = v12;
    sub_2978CD694(v11, v15);
    v7 = sub_2978BD120(v8, a3, v9, a2, v11[0], v11[1]);
    goto LABEL_6;
  }

  sub_2978B65E0(v11, *(a1 + 8));
  v6 = sub_2978CD5D8(a1, v15, v14, &v13, &v12);
  sub_2978B6624(v11);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 0;
LABEL_6:
  sub_2977FD134(v14);
  sub_2977FD134(v15);
  return v7;
}

_DWORD *sub_2978CD190(uint64_t a1)
{
  sub_297806EC8(v12);
  v2 = sub_297847BE0(a1 + 32);
  sub_297806DA4(v12, v2 + 1);
  v11 = 0;
  v3 = sub_29787BB08(*a1, (a1 + 32), v12, &v11);
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v8 = *(a1 + 8);
    v9 = sub_2978C77C0(a1);
    v5 = sub_2978BB1F0(v8, v6, v7, v9);
  }

  sub_297801F60(v12);
  return v5;
}

uint64_t sub_2978CD240(unsigned int a1, uint64_t a2, uint64_t a3)
{
  sub_297804560(&v13);
  sub_297804560(&v12);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      sub_2977FB7B4(&v11, "xyz");
      v13 = v11;
      v6 = "rgb";
    }

    else
    {
      sub_2977FB7B4(&v11, "xyzw");
      v13 = v11;
      v6 = "rgba";
    }
  }

  else if (a1 == 1)
  {
    sub_2977FB7B4(&v11, "x");
    v13 = v11;
    v6 = "r";
  }

  else
  {
    sub_2977FB7B4(&v11, "xy");
    v13 = v11;
    v6 = "rg";
  }

  sub_2977FB7B4(&v11, v6);
  v12 = v11;
  v7 = 1;
  do
  {
    v8 = v13;
    sub_2977FB7B4(&v11, &byte_2978FC3E5);
    sub_2978CD698(v8, *(&v8 + 1), v7, v11, *(&v11 + 1), a2, a3);
    v9 = v12;
    sub_2977FB7B4(&v11, &byte_2978FC3E5);
    sub_2978CD698(v9, *(&v9 + 1), v7, v11, *(&v11 + 1), a2, a3);
    v7 = (v7 + 1);
  }

  while (v7 <= a1);
  *&v11 = "length()";
  return sub_29781B720(a3, &v11);
}

uint64_t *sub_2978CD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v6 = sub_2977FB720(v17);
  result = sub_2978130B8(v17);
  if (v6 != result)
  {
    v8 = result;
    do
    {
      v9 = *v6;
      v10 = sub_2978862BC(*v6);
      result = sub_2978862C0(v9);
      for (i = result; v10 != i; result = sub_29781B720(a4, &v15))
      {
        v12 = *v10++;
        v13 = sub_29788709C(v12);
        sub_2978CD79C(&v16, a3, v13, v14);
        v15 = sub_2978CD7A0(&v16);
      }

      ++v6;
    }

    while (v6 != v8);
  }

  return result;
}

uint64_t sub_2978CD4A0(uint64_t a1)
{
  if (sub_29784FF04(a1 + 32, 19))
  {
    v2 = 1;
LABEL_5:
    *(a1 + 64) += v2;
    goto LABEL_6;
  }

  if (*(a1 + 60))
  {
    v2 = -1;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

BOOL sub_2978CD50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v11 = sub_2978CC164(a1);
    if (sub_2978CD5D0(*(a1 + 8)))
    {
      v6 = sub_2978CD5D0(*(a1 + 8));
      v7 = sub_2978B6588(v6) == 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v11 != 0 || v7;
    if (v11 == 0 && !v7)
    {
      break;
    }

    sub_2978040A4(a2, &v11);
    if (sub_297850F64(a1 + 32, 64))
    {
      break;
    }

    v10 = sub_2978C75A0(a1);
    sub_297803988(a3, &v10);
  }

  return !v8;
}

BOOL sub_2978CD5D8(unsigned int *a1, uint64_t a2, uint64_t a3, unsigned int *a4, _DWORD *a5)
{
  sub_2978D58FC(a1, 0x15u, a4);
  if (sub_297850F64((a1 + 8), 22) && sub_2978CD50C(a1, a2, a3))
  {
    sub_2978CFD74(a1, 22, 1, 0);
    return 1;
  }

  else
  {
    v11 = *a4;

    return sub_2978C8368(a1, 22, v11, a5);
  }
}

char *sub_2978CD698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v23 = a2;
  v20 = a4;
  v21 = a5;
  if (sub_2977FB7B8(&v20) >= a3)
  {
    sub_2978CD79C(v18, a6, v20, v21);
    v19 = sub_2978CD7A0(v18);
    return sub_29781B720(a7, &v19);
  }

  else
  {
    v10 = sub_2977FB720(&v22);
    result = sub_2977FB728(&v22);
    if (v10 != result)
    {
      v12 = result;
      do
      {
        v13 = *v10++;
        sub_2978CD7F0(v18, v20, v21);
        sub_29784CE18(v18, v13);
        v14 = v22;
        v15 = v23;
        v16 = sub_2978059B8(v18);
        sub_2978CD698(v14, v15, a3, v16, v17, a6, a7);
        result = sub_297801F60(v18);
      }

      while (v10 != v12);
    }
  }

  return result;
}

char *sub_2978CD7A0(void *a1)
{
  if (sub_29783E4C0(a1))
  {
    return &byte_2978FC3E5;
  }

  return sub_297887B84(a1);
}

uint64_t *sub_2978CD7F4(uint64_t *a1, uint64_t *a2, const void *a3, const void *a4)
{
  v15[0] = a3;
  v15[1] = a4;
  *a1 = 0;
  sub_2977FB7B4(v14, &byte_2978FC3E5);
  if (!sub_297804D28(a3, a4, v14[0], v14[1]))
  {
    v8 = sub_2977FB7B8(v15);
    *a1 = sub_297803E1C(a2, (v8 + 5), 4uLL);
    **a1 = sub_2977FB7B8(v15);
    v9 = sub_297887BC0(a1);
    v10 = sub_2977FB720(v15);
    v11 = sub_2977FB7B8(v15);
    memcpy(v9, v10, v11);
    v12 = sub_297887BC0(a1);
    *(v12 + sub_2977FB7B8(v15)) = 0;
  }

  return a1;
}

uint64_t sub_2978CD8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2978CD924(a1, v4, v5);
}

uint64_t sub_2978CD924(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408(a1, 4u);
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t sub_2978CD96C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  v13 = *a4;
  v14 = *(a4 + 2);
  sub_29787B54C(v15);
  v5 = sub_2977FB5F0(&v13);
  sub_2978CDAD8(521, v5, v12);
  sub_2978405F8(v15, v12);
  while (sub_297850F64(&v13, 2))
  {
    sub_2978405F8(v15, &v13);
    sub_2978692B0(a2, &v13);
  }

  v6 = sub_2977FB5F0(&v13);
  sub_2978CDAD8(522, v6, v12);
  sub_2978405F8(v15, v12);
  v7 = sub_29783E83C(v15);
  v12[0] = sub_2978CDB3C(v7, a2);
  v12[1] = v8;
  sub_2977FB720(v15);
  sub_2977FB7B8(v15);
  sub_297803A7C(v12);
  sub_297859C14();
  v9 = sub_297803A7C(v12);
  v10 = sub_29783E83C(v15);
  sub_2978727D0(a2, v9, v10, 1, 0);
  return sub_2977FD134(v15);
}

_DWORD *sub_2978CDAD8@<X0>(__int16 a1@<W0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  sub_29784FB00(a3);
  sub_297853ED0(a3);
  sub_297853640(a3, a1);

  return sub_29780819C(a3, a2);
}

uint64_t sub_2978CDB3C(unsigned int a1, uint64_t a2)
{
  v3 = sub_2978CE65C(a2);
  v4 = sub_29781C25C();
  v5 = sub_297803E1C(v3, 24 * a1, v4);
  sub_2978CE664(&v7, v5, a1);
  return v7;
}

uint64_t sub_2978CDBB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2977FA198();
  sub_2978CDBF8();

  return sub_29787ADE0(v1, v2);
}

uint64_t sub_2978CDBFC(uint64_t a1)
{
  sub_2978CDF90(v21, a1);
  sub_2978C75A0(a1);
  v19[1] = a1;
  v20 = a1;
  v18[1] = a1;
  v19[0] = a1;
  v18[0] = a1;
  v2 = sub_29784F384(a1 + 32);
  if (!v2)
  {
    v12 = "pragma";
    goto LABEL_10;
  }

  v3 = v2;
  if (!sub_2978CE00C(v2, "optimize") && !sub_2978CE05C(v3, "debug"))
  {
    if (!sub_2978CE05C(v3, "STDGL"))
    {
      sub_2978C765C(a1, (a1 + 32), 875, v17);
      sub_297869558(v17, v3);
      goto LABEL_19;
    }

    sub_2978C75A0(a1);
    if (sub_297850F64(a1 + 32, 361))
    {
      v13 = 361;
LABEL_22:
      sub_2978CE0B8(v19, v13);
      goto LABEL_23;
    }

    sub_2978C75A0(a1);
    if (sub_297850F64(a1 + 32, 21))
    {
LABEL_21:
      v13 = 21;
      goto LABEL_22;
    }

    sub_2978C77C0(a1);
    if (sub_297850F64(a1 + 32, 6))
    {
      v13 = 6;
      goto LABEL_22;
    }

    v16 = sub_29784F384(a1 + 32);
    if (sub_29787AD84(v16, "all"))
    {
      sub_2978C75A0(a1);
      if (sub_297850F64(a1 + 32, 22))
      {
        v13 = 22;
      }

      else
      {
        sub_2978C77C0(a1);
        if (!sub_297850F64(a1 + 32, 522))
        {
          sub_2978C75A0(a1);
          sub_2978CE16C(*(a1 + 8), 1);
          goto LABEL_23;
        }

        v13 = 2;
      }

      goto LABEL_22;
    }

    v12 = "all";
LABEL_10:
    sub_2977FB7B4(v17, v12);
    sub_2978CDF94(v18, v17[0], v17[1]);
    goto LABEL_23;
  }

  v4 = sub_2978CE00C(v3, "optimize");
  v5 = sub_2978C75A0(a1);
  if (!sub_29784FF04(a1 + 32, 21))
  {
    goto LABEL_21;
  }

  v6 = sub_2978C77C0(a1);
  v7 = sub_29784F384(a1 + 32);
  if (!v7 || (v8 = v7, sub_297850F64(a1 + 32, 6)))
  {
    v9 = (a1 + 32);
    v10 = a1;
    v11 = 639;
LABEL_8:
    sub_2978C765C(v10, v9, v11, v17);
    sub_29785965C(v17, !v4);
LABEL_19:
    sub_29782963C(v17);
    sub_2978CE128(&v20);
    goto LABEL_23;
  }

  if (!sub_29787AD34(v8, "on") && !sub_29787AD84(v8, "off"))
  {
    goto LABEL_25;
  }

  sub_29787AD34(v8, "on");
  sub_2978C75A0(a1);
  if (sub_297850F64(a1 + 32, 22))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v17);
    sub_297869528(v17, 0x16u);
    sub_29782963C(v17);
    sub_2978CFEF4(a1, v6, 50, v17);
    sub_297869528(v17, 0x15u);
    goto LABEL_19;
  }

  sub_2978C77C0(a1);
  if (sub_297850F64(a1 + 32, 522))
  {
LABEL_25:
    v9 = (a1 + 32);
    v10 = a1;
    v11 = 640;
    goto LABEL_8;
  }

  sub_2978C75A0(a1);
  v15 = *(a1 + 8);
  if (v4)
  {
    sub_2978BF638(v15, v5);
  }

  else
  {
    sub_2978BF698(v15, v5);
  }

LABEL_23:
  sub_2978CE174(v21);
  return 0;
}

uint64_t sub_2978CDF94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 1;
  v6 = *a1;
  v7 = sub_297876C1C(*a1);
  sub_2978C765C(v6, v7, 8, v9);
  sub_2978295C0(v9, a2, a3);
  sub_29782963C(v9);
  return sub_2978CE128(v5);
}

BOOL sub_2978CE05C(uint64_t a1, uint64_t a2)
{
  if (sub_297828CD0(a1) != 5)
  {
    return 0;
  }

  v4 = sub_297828CB8(a1);
  return *v4 == *a2 && *(v4 + 4) == *(a2 + 4);
}

uint64_t sub_2978CE0B8(uint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = *a1;
  v5 = sub_297876C1C(*a1);
  sub_2978C765C(v4, v5, 8, v7);
  sub_297869528(v7, a2);
  sub_29782963C(v7);
  return sub_2978CE128(v3);
}

uint64_t sub_2978CE128(uint64_t *a1)
{
  v1 = *a1;
  sub_2978CE6B4(*a1, 522);

  return sub_2978C75A0(v1);
}

_WORD *sub_2978CE178(uint64_t a1)
{
  sub_2978C75A0(a1);
  v2 = sub_2977FB5F0((a1 + 32));
  v9 = a1;
  v3 = sub_2977FB7B8(a1 + 32);
  v4 = sub_297883C7C(v3);
  if (v4)
  {
    v5 = v4;
    sub_2978C75A0(a1);
    sub_2978CE2A4(*(a1 + 16), v5);
    sub_2978C75A0(a1);
    v6 = *(a1 + 8);

    return sub_2978BF6F8(v6, v5, v2);
  }

  else
  {
    sub_2978CFEF4(a1, v2, 432, v8);
    sub_29785965C(v8, v3);
    sub_29782963C(v8);
    sub_2978CE260(&v9);
    return 0;
  }
}

uint64_t sub_2978CE260(uint64_t *a1)
{
  v1 = *a1;
  sub_2978CE6B4(*a1, 2);

  return sub_2978C75A0(v1);
}

unsigned int *sub_2978CE2B4(uint64_t a1)
{
  v25 = a1;
  sub_2978C75A0(a1);
  v2 = sub_2977FB5F0((a1 + 32));
  v3 = sub_29784F384(a1 + 32);
  v4 = sub_297828314(v3);
  v6 = v5;
  sub_2978CFC00(a1, 6, 8, "extension name", 0);
  v7 = sub_29784F384(a1 + 32);
  v8 = sub_297828314(v7);
  v10 = v9;
  sub_2978CFC00(a1, 6, 8, "extension behavior", 0);
  v11 = sub_2978CE4F4();
  if (!v11)
  {
    sub_2978CFEF4(a1, v2, 430, &v23);
    v15 = v8;
    v16 = v10;
LABEL_8:
    sub_2978295C0(&v23, v15, v16);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = sub_2978805C4(*(a1 + 16), v4, v6);
  if (!sub_29786AC48(v13))
  {
    sub_2978CFEF4(a1, v2, 429, &v23);
    v15 = v4;
    v16 = v6;
    goto LABEL_8;
  }

  v14 = sub_29786AC48(v13);
  if (v12 <= 2 && v14 == 178)
  {
    sub_2978CFEF4(a1, v2, 426, &v23);
    sub_2978563C8(&v23, v12 != 1);
LABEL_9:
    sub_29782963C(&v23);
    sub_2978CE260(&v25);
    return 0;
  }

  if (sub_29786AC48(v13) == 180)
  {
    v22 = a1;
    sub_2977FB7B4(&v23, "centroid");
    sub_2978CE590(&v22, 302, v23, v24);
    sub_2977FB7B4(&v23, "smooth");
    sub_2978CE590(&v22, 423, v23, v24);
    v18 = *a1;
    sub_2977FB7B4(&v23, "fwidth");
    v19 = sub_297869520(v18, v23, v24);
    sub_297828E3C(v19, 0);
  }

  sub_2978CE618(v13, v12);
  sub_2978C75A0(a1);
  v20 = *(a1 + 8);
  v21 = sub_29786AC48(v13);
  return sub_2978BF818(v20, v21, v12, v2);
}

uint64_t sub_2978CE4F4()
{
  sub_2978102C8();
  v9 = 2;
  v0 = sub_297810504(v10, "enable", &v9);
  v8 = 1;
  v1 = sub_2978102CC(v0, "require", &v8);
  v7 = 4;
  v2 = sub_29781049C(v1, "warn", &v7);
  v6 = 3;
  v3 = sub_2978102CC(v2, "disable", &v6);
  v5 = 0;
  return sub_2978105E0(v3, &v5);
}

uint64_t sub_2978CE590(uint64_t **a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  result = sub_297882A94(a2, (*a1)[2]);
  if ((result & 1) == 0)
  {
    v8 = sub_297869520(*v6, a3, a4);
    result = sub_297871628(v8);
    if (result != 6)
    {

      return sub_2978CE72C(v8);
    }
  }

  return result;
}

void sub_2978CE634(uint64_t a1)
{
  v1 = sub_2978CE630(a1);

  j__free(v1);
}

void *sub_2978CE668(void *a1)
{
  result = sub_297879FC4(a1);
  *result = &unk_2A1E57E20;
  return result;
}

double sub_2978CE69C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  result = *(a2 + 60);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 68);
  return result;
}

BOOL sub_2978CE6B4(uint64_t a1, int a2)
{
  for (result = sub_297850F64(a1 + 32, a2); result; result = sub_297850F64(a1 + 32, a2))
  {
    result = sub_2978CE708(a1);
    if (result)
    {
      break;
    }

    sub_2978C84FC(a1);
  }

  return result;
}

double sub_2978CE714(double *a1)
{
  v1 = *a1;
  result = a1[1];
  *(v1 + 60) = result;
  *(v1 + 68) = *(a1 + 4);
  return result;
}

_DWORD *sub_2978CE74C(uint64_t a1)
{
  v2 = sub_2978503FC(a1 + 32);
  if (v2 > 81)
  {
    if (v2 <= 95)
    {
      switch(v2)
      {
        case 'R':
          v6 = sub_2978CEFC0(a1);
          v7 = "do/while";
          goto LABEL_45;
        case 'X':

          return sub_2978CF0B4(a1);
        case 'Z':

          return sub_2978CED30(a1);
        default:
          goto LABEL_54;
      }
    }

    else if (v2 > 107)
    {
      if (v2 != 108)
      {
        if (v2 == 305)
        {
          v6 = sub_2978CF748(a1);
          v7 = "discard";
          goto LABEL_45;
        }

        goto LABEL_54;
      }

      return sub_2978CEF04(a1);
    }

    else
    {
      if (v2 == 96)
      {
        v6 = sub_2978CF6C0(a1);
        v7 = "return";
        goto LABEL_45;
      }

      if (v2 != 102)
      {
        goto LABEL_54;
      }

      return sub_2978CF36C(a1);
    }
  }

  else
  {
    if (v2 > 75)
    {
      if (v2 <= 79)
      {
        if (v2 != 76)
        {
          if (v2 == 77)
          {

            return sub_2978CF494(a1);
          }

          goto LABEL_54;
        }

        v6 = sub_2978CF680(a1);
        v7 = "break";
        goto LABEL_45;
      }

      if (v2 != 80)
      {

        return sub_2978CF578(a1);
      }

      v6 = sub_2978CF640(a1);
      v7 = "continue";
LABEL_45:
      if (sub_29784FF04(a1 + 32, 61))
      {
        sub_2978C75A0(a1);
      }

      else if (v6)
      {
        sub_2978CFC00(a1, 61, 1011, v7, 0);
        sub_2978CFD74(a1, 24, 1, 1);
      }

      return v6;
    }

    if (v2 != 23)
    {
      if (v2 == 24)
      {
        sub_2978C765C(a1, (a1 + 32), 1015, v8);
        sub_29782963C(v8);
        return 0;
      }

      if (v2 == 61)
      {
        v4 = *(a1 + 8);
        v5 = sub_2978C75A0(a1);

        return sub_2978BF8D8(v4, v5);
      }

LABEL_54:

      return sub_2978CEA84(a1);
    }

    return sub_2978CECD4(a1);
  }
}

uint64_t sub_2978CEA84(uint64_t a1)
{
  v24[7] = *MEMORY[0x29EDCA608];
  if (sub_29784FF04(a1 + 32, 399))
  {
    v2 = *(a1 + 8);
    v24[0] = sub_2978C8754(a1);
    sub_29784CE50(v23, v24);
    v4 = *(&v23[0] + 1);
    v3 = *&v23[0];
    v5 = v2;
    return sub_2978BF8E4(v5, v3, v4);
  }

  if (!sub_29784FF04(a1 + 32, 521))
  {
    sub_29780B1B8(v24);
    if (sub_2978C75A4(a1))
    {
      sub_2978C6F98(a1, v24, 0);
      v8 = *(a1 + 8);
      sub_29780B1E8(v23, v24);
      v10 = *(&v23[0] + 1);
      v9 = *&v23[0];
LABEL_9:
      v11 = sub_2978BF8E4(v8, v9, v10);
LABEL_20:
      v7 = v11;
      goto LABEL_21;
    }

    if (sub_2978CA2AC(a1))
    {
      v12 = sub_2977FB5F0((a1 + 32));
      sub_2978C6DA8(v23, v12);
      if (sub_2978C76B4(a1, v23, 1))
      {
        goto LABEL_16;
      }

      if (!sub_29784FF04(a1 + 32, 21))
      {
        sub_2978C90A4(a1, v24, v23, 0, 0);
        v8 = *(a1 + 8);
        sub_29780B1E8(&v21, v24);
        v9 = v21;
        v10 = v22;
        goto LABEL_9;
      }

      v13 = *(a1 + 8);
      sub_2977FB7B4(&v21, &byte_2978FC3E5);
      v14 = sub_2978C1AC4(v13, v23, v21, v22);
      v15 = sub_2977FB5F0(v23);
      v16 = sub_2978CCB78(a1, v14, v15);
      if (!v16 || (v17 = sub_2978CCC68(a1, v16)) == 0 || (v18 = sub_2978CC1B4(a1, v17, 1)) == 0)
      {
LABEL_16:
        sub_2978D58A8(a1);
        v7 = 0;
LABEL_21:
        sub_2977FD134(v24);
        return v7;
      }
    }

    else
    {
      v18 = sub_2978CC114(a1);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v19 = v18;
    sub_2978CFC00(a1, 61, 1007, &byte_2978FC3E5, 61);
    v11 = sub_2978BFCE4(*(a1 + 8), v19);
    goto LABEL_20;
  }

  v24[0] = sub_2978CDBFC(a1);
  if (!v24[0])
  {
    return 0;
  }

  v6 = *(a1 + 8);
  sub_29784CE50(v23, v24);
  v4 = *(&v23[0] + 1);
  v3 = *&v23[0];
  v5 = v6;
  return sub_2978BF8E4(v5, v3, v4);
}

uint64_t sub_2978CECD4(uint64_t *a1)
{
  sub_2978B65DC(v4, a1[1], 8);
  v2 = sub_2978CF788(a1);
  if (!v2)
  {
    sub_2978CFF00(a1);
  }

  sub_2978B6620(v4);
  return v2;
}

_DWORD *sub_2978CED30(uint64_t a1)
{
  v2 = sub_2978C75A0(a1);
  sub_297829180(&v14);
  if (!sub_2978D58FC(a1, 0x15u, &v14))
  {
    v3 = sub_2978CC114(a1);
    if (v3)
    {
      v4 = v3;
      sub_297829180(&v13);
      if (!sub_2978C8368(a1, 22, v14, &v13))
      {
        v5 = sub_2977FB5F0((a1 + 32));
        sub_2978B65DC(&v12, *(a1 + 8), 72);
        if (sub_29784FF04(a1 + 32, 23))
        {
          v6 = sub_2978CF788(a1);
        }

        else
        {
          v6 = sub_2978CE74C(a1);
        }

        v7 = v6;
        if (v6)
        {
          sub_2978B6620(&v12);
          v8 = sub_2977FB5F0((a1 + 32));
          if (!sub_29784FF04(a1 + 32, 84))
          {
            v10 = 0;
            return sub_2978BFDD8(*(a1 + 8), v2, v4, v7, v5, v10, v8);
          }

          sub_2978C75A0(a1);
          sub_2978B65DC(&v12, *(a1 + 8), 72);
          if (sub_29784FF04(a1 + 32, 23))
          {
            v9 = sub_2978CF788(a1);
          }

          else
          {
            v9 = sub_2978CE74C(a1);
          }

          v10 = v9;
          if (v9)
          {
            sub_2978B6620(&v12);
            return sub_2978BFDD8(*(a1 + 8), v2, v4, v7, v5, v10, v8);
          }

          sub_2978CFF00(a1);
        }

        else
        {
          sub_2978CFF00(a1);
          if (sub_29784FF04(a1 + 32, 84))
          {
            sub_2978C77C0(a1);
            sub_2978CFF00(a1);
            sub_2978D58A8(a1);
          }
        }

        sub_2978B6620(&v12);
      }
    }

    else
    {
      sub_2978D58A8(a1);
    }
  }

  return 0;
}

_DWORD *sub_2978CEF04(uint64_t *a1)
{
  sub_2978B65DC(v8, a1[1], 78);
  v2 = sub_2978C75A0(a1);
  v3 = sub_2978CF910(a1, 0);
  if (!v3 || ((v4 = v3, !sub_29784FF04((a1 + 4), 23)) ? (v5 = sub_2978CE74C(a1)) : (v5 = sub_2978CF788(a1)), (v6 = sub_2978BFEC8(a1[1], v2, v4, v5)) == 0))
  {
    sub_2978CFF00(a1);
    v6 = 0;
  }

  sub_2978B6620(v8);
  return v6;
}

_DWORD *sub_2978CEFC0(uint64_t a1)
{
  v2 = sub_2978C75A0(a1);
  sub_2978B65DC(v8, *(a1 + 8), 78);
  if (sub_29784FF04(a1 + 32, 23))
  {
    v3 = sub_2978CF788(a1);
  }

  else
  {
    v3 = sub_2978CE74C(a1);
  }

  v4 = v3;
  if (!v3)
  {
    sub_2978CFF00(a1);
    sub_2978B6620(v8);
    return 0;
  }

  sub_2978B6620(v8);
  if (sub_297850F64(a1 + 32, 108))
  {
    sub_2978C765C(a1, (a1 + 32), 1022, v7);
    sub_29782963C(v7);
    return 0;
  }

  sub_2978C75A0(a1);
  v6 = sub_2978CF910(a1, 1);
  return sub_2978BFED4(*(a1 + 8), v2, v4, v6);
}

_DWORD *sub_2978CF0B4(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = sub_2978C75A0(a1);
  sub_2978B65DC(v16, *(a1 + 8), 78);
  sub_297829180(&v15);
  if (sub_2978D58FC(a1, 0x15u, &v15))
  {
    goto LABEL_2;
  }

  if (sub_29784FF04(a1 + 32, 61))
  {
    sub_2978C75A0(a1);
    v3 = 0;
  }

  else if (sub_2978CA408(a1))
  {
    sub_29780B1B8(v17);
    sub_2978C6F98(a1, v17, 0);
    v4 = *(a1 + 8);
    sub_29780B1E8(&v13, v17);
    v3 = sub_2978BF8E4(v4, v13, v14);
    sub_2977FD134(v17);
  }

  else
  {
    v5 = sub_2978CC114(a1);
    v3 = sub_2978BFCE4(*(a1 + 8), v5);
    if (sub_2978CFC00(a1, 61, 1014, &byte_2978FC3E5, 0))
    {
      goto LABEL_2;
    }
  }

  if (sub_29784FF04(a1 + 32, 61))
  {
    sub_2978C75A0(a1);
    v6 = 0;
    goto LABEL_13;
  }

  if (sub_2978CA408(a1))
  {
    sub_29780B1B8(v17);
    sub_2978C6F98(a1, v17, 0);
    v7 = *(a1 + 8);
    sub_29780B1E8(&v13, v17);
    v6 = sub_2978BF8E4(v7, v13, v14);
    sub_2977FD134(v17);
    goto LABEL_13;
  }

  v8 = sub_2978CC114(a1);
  v6 = sub_2978BFCE4(*(a1 + 8), v8);
  if (sub_2978CFC00(a1, 61, 1014, &byte_2978FC3E5, 0))
  {
LABEL_2:
    sub_2978CFF00(a1);
    sub_2978CFD74(a1, 22, 0, 0);
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

LABEL_13:
  if (sub_297850F64(a1 + 32, 22))
  {
    v9 = sub_2978CC114(a1);
  }

  else
  {
    v9 = 0;
  }

  sub_297829180(v17);
  if (sub_2978C8368(a1, 22, v15, v17) || (!sub_29784FF04(a1 + 32, 23) ? (v10 = sub_2978CE74C(a1)) : (v10 = sub_2978CF788(a1)), (v11 = sub_2978BFEBC(*(a1 + 8), v2, v3, v6, v9, v10)) == 0))
  {
    sub_2978CFF00(a1);
    goto LABEL_22;
  }

LABEL_23:
  sub_2978B6620(v16);
  return v11;
}

uint64_t sub_2978CF36C(uint64_t a1)
{
  v2 = sub_2978C75A0(a1);
  sub_297829180(&v11);
  if (sub_2978D58FC(a1, 0x15u, &v11))
  {
    return 0;
  }

  v3 = sub_2978CC114(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_297829180(&v10);
  if (sub_2978C8368(a1, 22, v11, &v10))
  {
    return 0;
  }

  if (sub_297850F64(a1 + 32, 23))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v9);
    sub_297869528(v9, 0x17u);
    sub_29782963C(v9);
    sub_2978D58A8(a1);
    return 0;
  }

  sub_2978B65DC(v9, *(a1 + 8), 34);
  v7 = sub_2978C0040(*(a1 + 8), v2, v4);
  v8 = sub_2978CF788(a1);
  v5 = sub_2978C013C(*(a1 + 8), v7, v8);
  if (!v5)
  {
    sub_2978CFF00(a1);
  }

  sub_2978B6620(v9);
  return v5;
}

_DWORD *sub_2978CF494(uint64_t a1)
{
  v2 = sub_2978C75A0(a1);
  v3 = sub_2978CC114(a1);
  if (sub_297850F64(a1 + 32, 60))
  {
    v4 = sub_2978780B4(*a1, *(a1 + 56), 0);
    sub_2978CFEF4(a1, v4, 9, v9);
    v5 = sub_29783F028(v9, "'case'");
    sub_297869528(v5, 0x3Cu);
    sub_29782963C(v9);
    return 0;
  }

  else
  {
    v7 = sub_2978C75A0(a1);
    v8 = *(a1 + 8);

    return sub_2978C06EC(v8, v2, v7, v3);
  }
}

_DWORD *sub_2978CF578(uint64_t a1)
{
  v2 = sub_2978C75A0(a1);
  if (sub_297850F64(a1 + 32, 60))
  {
    v3 = sub_2978780B4(*a1, *(a1 + 56), 0);
    sub_2978CFEF4(a1, v3, 9, v8);
    v4 = sub_29783F028(v8, "'default'");
    sub_297869528(v4, 0x3Cu);
    sub_29782963C(v8);
    return 0;
  }

  else
  {
    v6 = sub_2978C75A0(a1);
    v7 = *(a1 + 8);

    return sub_2978C088C(v7, v2, v6);
  }
}

_DWORD *sub_2978CF640(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1);

  return sub_2978BFFC0(v1, v2);
}

_DWORD *sub_2978CF680(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1);

  return sub_2978BFF40(v1, v2);
}

_DWORD *sub_2978CF6C0(uint64_t *a1)
{
  v2 = sub_2978C75A0(a1);
  if (sub_297850F64((a1 + 4), 61))
  {
    v3 = sub_2978CC114(a1);
    if (!v3)
    {
      sub_2978CFD74(a1, 61, 0, 1);
      return 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = a1[1];

  return sub_2978C092C(v5, v2, v3);
}

_DWORD *sub_2978CF748(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_2978C75A0(a1);

  return sub_2978C0920(v1, v2);
}

_DWORD *sub_2978CF788(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = sub_2978CF8A4(a1);
  sub_29786EC00(v9);
  while (sub_297850F64(a1 + 32, 24))
  {
    if (!sub_297850F64(a1 + 32, 1))
    {
      break;
    }

    v7[0] = sub_2978CE74C(a1);
    if (v7[0])
    {
      sub_2978040A4(v9, v7);
    }
  }

  sub_297829180(&v8);
  if (sub_2978C8368(a1, 24, v2, &v8))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = v8;
    sub_29780B1E8(v7, v9);
    v3 = sub_2978BFDC8(v4, v2, v5, v7[0], v7[1]);
  }

  sub_2977FD134(v9);
  return v3;
}

uint64_t sub_2978CF8A4(uint64_t a1)
{
  if (sub_29784FF04(a1 + 32, 23))
  {
    v2 = 1;
LABEL_5:
    *(a1 + 68) += v2;
    goto LABEL_6;
  }

  if (*(a1 + 60))
  {
    v2 = -1;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 56) = sub_2977FB5F0((a1 + 32));
  sub_29787C4FC(*a1, (a1 + 32));
  return *(a1 + 56);
}

uint64_t sub_2978CF910(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (sub_297850F64(a1 + 32, 21))
  {
    sub_2978C765C(a1, (a1 + 32), 8, v12);
    sub_297869528(v12, 0x15u);
    v4 = v12;
LABEL_3:
    sub_29782963C(v4);
    sub_2978CFD74(a1, 22, 0, 0);
    return 0;
  }

  v6 = sub_2978C80DC(a1);
  if (sub_2978CA408(a1))
  {
    if (a2)
    {
      sub_2978C765C(a1, (a1 + 32), 954, v11);
      v4 = v11;
      goto LABEL_3;
    }

    sub_29780B1B8(v12);
    sub_2978C6F98(a1, v12, 0);
    v9 = *(a1 + 8);
    sub_29780B1E8(v10, v12);
    v8 = sub_2978BF8E4(v9, v10[0], v10[1]);
    sub_2977FD134(v12);
  }

  else
  {
    v7 = sub_2978CC114(a1);
    v8 = sub_2978BFCE4(*(a1 + 8), v7);
  }

  sub_297829180(v12);
  if (sub_2978C8368(a1, 22, v6, v12))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_2978CFA7C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978CF788(a1);
  if (a2)
  {
    v5 = v4;
    if (!v4)
    {
      sub_2978CFF00(a1);
      v6 = a1[1];
      v7 = sub_297847BE0(a2);
      v8 = sub_297847BE0(a2);
      sub_297804560(v10);
      v5 = sub_2978BFDC8(v6, v7, v8, v10[0], v10[1]);
    }

    sub_2978BA364(a1[1], a2, v5);
  }

  return a2;
}

uint64_t sub_2978CFB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = sub_2977FB7B8(a3);
  *(a1 + 24) = sub_2977FD5B0(a2);
  sub_29784FB00((a1 + 32));
  sub_297829180((a1 + 56));
  *(a1 + 65) = 0;
  *(a1 + 60) = 0;
  sub_297809B88(a1 + 80);
  sub_297853ED0(a1 + 32);
  sub_297853640(a1 + 32, 1);
  return a1;
}

uint64_t sub_2978CFBC8(uint64_t *a1)
{
  sub_2978CDBB0(a1);

  return sub_2978C77C0(a1);
}

BOOL sub_2978CFC00(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v9 = sub_29784FF04((a1 + 8), a2);
  if (v9)
  {
    sub_2978CFCA4(a1);
  }

  else
  {
    sub_2978C765C(a1, a1 + 8, a3, v11);
    sub_29783F028(v11, a4);
    sub_29782963C(v11);
    if (v5)
    {
      sub_2978CFD74(a1, v5, 1, 0);
    }
  }

  return !v9;
}

uint64_t sub_2978CFCA4(_DWORD *a1)
{
  v2 = sub_2978503FC((a1 + 8));
  if (v2 > 21)
  {
    switch(v2)
    {
      case 22:
        v7 = a1[15];
        if (!v7)
        {
          goto LABEL_20;
        }

        v3 = v7 - 1;
        goto LABEL_14;
      case 23:
        v5 = a1[17] + 1;
        break;
      case 24:
        v4 = a1[17];
        if (!v4)
        {
          goto LABEL_20;
        }

        v5 = v4 - 1;
        break;
      default:
        goto LABEL_20;
    }

    a1[17] = v5;
    goto LABEL_20;
  }

  if (v2 == 19)
  {
    v6 = a1[16] + 1;
LABEL_17:
    a1[16] = v6;
    goto LABEL_20;
  }

  if (v2 != 20)
  {
    if (v2 != 21)
    {
      goto LABEL_20;
    }

    v3 = a1[15] + 1;
LABEL_14:
    a1[15] = v3;
    goto LABEL_20;
  }

  v8 = a1[16];
  if (v8)
  {
    v6 = v8 - 1;
    goto LABEL_17;
  }

LABEL_20:

  return sub_2978C84FC(a1);
}

uint64_t sub_2978CFD74(uint64_t *a1, int a2, char a3, char a4)
{
  while (sub_297850F64((a1 + 4), a2))
  {
    if (!sub_297850F64((a1 + 4), 1))
    {
      break;
    }

    result = sub_2978503FC((a1 + 4));
    if (result > 21)
    {
      if (result > 23)
      {
        if (result == 24)
        {
          sub_2978CF8A4(a1);
          continue;
        }

        if (result == 61 && (a3 & 1) != 0)
        {
          return result;
        }

LABEL_17:
        sub_2978C77C0(a1);
        continue;
      }

      if (result == 22)
      {
        sub_2978C80DC(a1);
        continue;
      }

      sub_2978CF8A4(a1);
      v9 = a1;
      v10 = 24;
    }

    else if (result > 19)
    {
      if (result == 20)
      {
        sub_2978CD4A0(a1);
        continue;
      }

      sub_2978C80DC(a1);
      v9 = a1;
      v10 = 22;
    }

    else
    {
      if (result == 3)
      {
        sub_2978CFF00(a1);
        continue;
      }

      if (result != 19)
      {
        goto LABEL_17;
      }

      sub_2978CD4A0(a1);
      v9 = a1;
      v10 = 20;
    }

    sub_2978CFD74(v9, v10, 0, 0);
  }

  result = sub_29784FF04((a1 + 4), a2);
  if (result && (a4 & 1) == 0)
  {

    return sub_2978C77C0(a1);
  }

  return result;
}

BOOL sub_2978CFF00(uint64_t *a1)
{
  v2 = sub_297850F64((a1 + 4), 3);
  if (!v2)
  {
    v3 = sub_2978BE260(*a1);
    v18 = a1;
    v4 = a1 + 2;
    if (sub_297882A94(75, a1[2]))
    {
      sub_2977FB7B4(&v16, "auto");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(76, *v4))
    {
      sub_2977FB7B4(&v16, "break");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(77, *v4))
    {
      sub_2977FB7B4(&v16, "case");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(78, *v4))
    {
      sub_2977FB7B4(&v16, "char");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(79, *v4))
    {
      sub_2977FB7B4(&v16, "const");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(80, *v4))
    {
      sub_2977FB7B4(&v16, "continue");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(81, *v4))
    {
      sub_2977FB7B4(&v16, "default");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(82, *v4))
    {
      sub_2977FB7B4(&v16, "do");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(83, *v4))
    {
      sub_2977FB7B4(&v16, "double");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(84, *v4))
    {
      sub_2977FB7B4(&v16, "else");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(85, *v4))
    {
      sub_2977FB7B4(&v16, "enum");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(86, *v4))
    {
      sub_2977FB7B4(&v16, "extern");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(87, *v4))
    {
      sub_2977FB7B4(&v16, "float");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(88, *v4))
    {
      sub_2977FB7B4(&v16, "for");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(89, *v4))
    {
      sub_2977FB7B4(&v16, "goto");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(90, *v4))
    {
      sub_2977FB7B4(&v16, "if");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(91, *v4))
    {
      sub_2977FB7B4(&v16, "inline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(92, *v4))
    {
      sub_2977FB7B4(&v16, "int");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(93, *v4))
    {
      sub_2977FB7B4(&v16, "long");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(94, *v4))
    {
      sub_2977FB7B4(&v16, "register");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(95, *v4))
    {
      sub_2977FB7B4(&v16, "restrict");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(96, *v4))
    {
      sub_2977FB7B4(&v16, "return");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(97, *v4))
    {
      sub_2977FB7B4(&v16, "short");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(98, *v4))
    {
      sub_2977FB7B4(&v16, "signed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(99, *v4))
    {
      sub_2977FB7B4(&v16, "sizeof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(100, *v4))
    {
      sub_2977FB7B4(&v16, "static");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(101, *v4))
    {
      sub_2977FB7B4(&v16, "struct");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(102, *v4))
    {
      sub_2977FB7B4(&v16, "switch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(103, *v4))
    {
      sub_2977FB7B4(&v16, "typedef");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(104, *v4))
    {
      sub_2977FB7B4(&v16, "union");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(105, *v4))
    {
      sub_2977FB7B4(&v16, "unsigned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(106, *v4))
    {
      sub_2977FB7B4(&v16, "void");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(107, *v4))
    {
      sub_2977FB7B4(&v16, "volatile");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(108, *v4))
    {
      sub_2977FB7B4(&v16, "while");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(109, *v4))
    {
      sub_2977FB7B4(&v16, "_Alignas");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(110, *v4))
    {
      sub_2977FB7B4(&v16, "_Alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(111, *v4))
    {
      sub_2977FB7B4(&v16, "_Atomic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(112, *v4))
    {
      sub_2977FB7B4(&v16, "_Bool");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(113, *v4))
    {
      sub_2977FB7B4(&v16, "_Complex");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(114, *v4))
    {
      sub_2977FB7B4(&v16, "_Generic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(115, *v4))
    {
      sub_2977FB7B4(&v16, "_Imaginary");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(116, *v4))
    {
      sub_2977FB7B4(&v16, "_Noreturn");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(117, *v4))
    {
      sub_2977FB7B4(&v16, "_Static_assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(118, *v4))
    {
      sub_2977FB7B4(&v16, "_Thread_local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(119, *v4))
    {
      sub_2977FB7B4(&v16, "__func__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(120, *v4))
    {
      sub_2977FB7B4(&v16, "__objc_yes");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(121, *v4))
    {
      sub_2977FB7B4(&v16, "__objc_no");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(122, *v4))
    {
      sub_2977FB7B4(&v16, "asm");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(123, *v4))
    {
      sub_2977FB7B4(&v16, "BOOL");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(124, *v4))
    {
      sub_2977FB7B4(&v16, "catch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(125, *v4))
    {
      sub_2977FB7B4(&v16, "class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(126, *v4))
    {
      sub_2977FB7B4(&v16, "const_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(127, *v4))
    {
      sub_2977FB7B4(&v16, "delete");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(128, *v4))
    {
      sub_2977FB7B4(&v16, "dynamic_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(129, *v4))
    {
      sub_2977FB7B4(&v16, "explicit");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(130, *v4))
    {
      sub_2977FB7B4(&v16, "export");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(131, *v4))
    {
      sub_2977FB7B4(&v16, "false");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(132, *v4))
    {
      sub_2977FB7B4(&v16, "friend");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(133, *v4))
    {
      sub_2977FB7B4(&v16, "mutable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(134, *v4))
    {
      sub_2977FB7B4(&v16, "namespace");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(135, *v4))
    {
      sub_2977FB7B4(&v16, "new");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(136, *v4))
    {
      sub_2977FB7B4(&v16, "operator");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(137, *v4))
    {
      sub_2977FB7B4(&v16, "private");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(138, *v4))
    {
      sub_2977FB7B4(&v16, "protected");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(139, *v4))
    {
      sub_2977FB7B4(&v16, "public");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(140, *v4))
    {
      sub_2977FB7B4(&v16, "reinterpret_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(141, *v4))
    {
      sub_2977FB7B4(&v16, "static_cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(142, *v4))
    {
      sub_2977FB7B4(&v16, "template");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(143, *v4))
    {
      sub_2977FB7B4(&v16, "this");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(144, *v4))
    {
      sub_2977FB7B4(&v16, "throw");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(145, *v4))
    {
      sub_2977FB7B4(&v16, "true");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(146, *v4))
    {
      sub_2977FB7B4(&v16, "try");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(147, *v4))
    {
      sub_2977FB7B4(&v16, "typename");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(148, *v4))
    {
      sub_2977FB7B4(&v16, "typeid");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(149, *v4))
    {
      sub_2977FB7B4(&v16, "using");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(150, *v4))
    {
      sub_2977FB7B4(&v16, "virtual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(151, *v4))
    {
      sub_2977FB7B4(&v16, "wchar_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(152, *v4))
    {
      sub_2977FB7B4(&v16, "alignas");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(153, *v4))
    {
      sub_2977FB7B4(&v16, "alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(154, *v4))
    {
      sub_2977FB7B4(&v16, "char16_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(155, *v4))
    {
      sub_2977FB7B4(&v16, "char32_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(156, *v4))
    {
      sub_2977FB7B4(&v16, "constexpr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(157, *v4))
    {
      sub_2977FB7B4(&v16, "decltype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(158, *v4))
    {
      sub_2977FB7B4(&v16, "noexcept");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(159, *v4))
    {
      sub_2977FB7B4(&v16, "nullptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(160, *v4))
    {
      sub_2977FB7B4(&v16, "static_assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(161, *v4))
    {
      sub_2977FB7B4(&v16, "thread_local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(162, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal32");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(163, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(164, *v4))
    {
      sub_2977FB7B4(&v16, "_Decimal128");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(165, *v4))
    {
      sub_2977FB7B4(&v16, "__null");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(166, *v4))
    {
      sub_2977FB7B4(&v16, "__alignof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(167, *v4))
    {
      sub_2977FB7B4(&v16, "__attribute");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(168, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_choose_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(169, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_offsetof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(170, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_types_compatible_p");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(171, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_va_arg");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(172, *v4))
    {
      sub_2977FB7B4(&v16, "__extension__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(173, *v4))
    {
      sub_2977FB7B4(&v16, "__imag");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(174, *v4))
    {
      sub_2977FB7B4(&v16, "__int128");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(175, *v4))
    {
      sub_2977FB7B4(&v16, "__label__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(176, *v4))
    {
      sub_2977FB7B4(&v16, "__real");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(177, *v4))
    {
      sub_2977FB7B4(&v16, "__thread");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(178, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(179, *v4))
    {
      sub_2977FB7B4(&v16, "__PRETTY_FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(180, *v4))
    {
      sub_2977FB7B4(&v16, "typeof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(181, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCDNAME__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(182, *v4))
    {
      sub_2977FB7B4(&v16, "__FUNCSIG__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(183, *v4))
    {
      sub_2977FB7B4(&v16, "L__FUNCTION__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(184, *v4))
    {
      sub_2977FB7B4(&v16, "__is_interface_class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(185, *v4))
    {
      sub_2977FB7B4(&v16, "__is_sealed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(186, *v4))
    {
      sub_2977FB7B4(&v16, "__is_destructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(187, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_destructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(188, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_assignable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(189, *v4))
    {
      sub_2977FB7B4(&v16, "__is_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(190, *v4))
    {
      sub_2977FB7B4(&v16, "__is_nothrow_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(191, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(192, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_move_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(193, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_copy");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(194, *v4))
    {
      sub_2977FB7B4(&v16, "__has_nothrow_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(195, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(196, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_move_assign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(197, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_copy");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(198, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(199, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_move_constructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(200, *v4))
    {
      sub_2977FB7B4(&v16, "__has_trivial_destructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(201, *v4))
    {
      sub_2977FB7B4(&v16, "__has_virtual_destructor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(202, *v4))
    {
      sub_2977FB7B4(&v16, "__is_abstract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(203, *v4))
    {
      sub_2977FB7B4(&v16, "__is_base_of");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(204, *v4))
    {
      sub_2977FB7B4(&v16, "__is_class");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(205, *v4))
    {
      sub_2977FB7B4(&v16, "__is_convertible_to");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(206, *v4))
    {
      sub_2977FB7B4(&v16, "__is_empty");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(207, *v4))
    {
      sub_2977FB7B4(&v16, "__is_enum");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(208, *v4))
    {
      sub_2977FB7B4(&v16, "__is_final");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(209, *v4))
    {
      sub_2977FB7B4(&v16, "__is_literal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(210, *v4))
    {
      sub_2977FB7B4(&v16, "__is_pod");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(211, *v4))
    {
      sub_2977FB7B4(&v16, "__is_polymorphic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(212, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivial");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(213, *v4))
    {
      sub_2977FB7B4(&v16, "__is_union");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(214, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_constructible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(215, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_copyable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(216, *v4))
    {
      sub_2977FB7B4(&v16, "__is_trivially_assignable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(217, *v4))
    {
      sub_2977FB7B4(&v16, "__underlying_type");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(218, *v4))
    {
      sub_2977FB7B4(&v16, "__is_lvalue_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(219, *v4))
    {
      sub_2977FB7B4(&v16, "__is_rvalue_expr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(220, *v4))
    {
      sub_2977FB7B4(&v16, "__is_arithmetic");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(221, *v4))
    {
      sub_2977FB7B4(&v16, "__is_floating_point");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(222, *v4))
    {
      sub_2977FB7B4(&v16, "__is_integral");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(223, *v4))
    {
      sub_2977FB7B4(&v16, "__is_complete_type");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(224, *v4))
    {
      sub_2977FB7B4(&v16, "__is_void");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(225, *v4))
    {
      sub_2977FB7B4(&v16, "__is_array");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(226, *v4))
    {
      sub_2977FB7B4(&v16, "__is_function");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(227, *v4))
    {
      sub_2977FB7B4(&v16, "__is_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(228, *v4))
    {
      sub_2977FB7B4(&v16, "__is_lvalue_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(229, *v4))
    {
      sub_2977FB7B4(&v16, "__is_rvalue_reference");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(230, *v4))
    {
      sub_2977FB7B4(&v16, "__is_fundamental");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(231, *v4))
    {
      sub_2977FB7B4(&v16, "__is_object");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(232, *v4))
    {
      sub_2977FB7B4(&v16, "__is_scalar");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(233, *v4))
    {
      sub_2977FB7B4(&v16, "__is_compound");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(234, *v4))
    {
      sub_2977FB7B4(&v16, "__is_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(235, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_object_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(236, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_function_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(237, *v4))
    {
      sub_2977FB7B4(&v16, "__is_member_pointer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(238, *v4))
    {
      sub_2977FB7B4(&v16, "__is_const");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(239, *v4))
    {
      sub_2977FB7B4(&v16, "__is_volatile");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(240, *v4))
    {
      sub_2977FB7B4(&v16, "__is_standard_layout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(241, *v4))
    {
      sub_2977FB7B4(&v16, "__is_signed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(242, *v4))
    {
      sub_2977FB7B4(&v16, "__is_unsigned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(243, *v4))
    {
      sub_2977FB7B4(&v16, "__is_same");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(244, *v4))
    {
      sub_2977FB7B4(&v16, "__is_convertible");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(245, *v4))
    {
      sub_2977FB7B4(&v16, "__array_rank");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(246, *v4))
    {
      sub_2977FB7B4(&v16, "__array_extent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(247, *v4))
    {
      sub_2977FB7B4(&v16, "__private_extern__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(248, *v4))
    {
      sub_2977FB7B4(&v16, "__module_private__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(249, *v4))
    {
      sub_2977FB7B4(&v16, "__declspec");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(250, *v4))
    {
      sub_2977FB7B4(&v16, "__cdecl");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(251, *v4))
    {
      sub_2977FB7B4(&v16, "__stdcall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(252, *v4))
    {
      sub_2977FB7B4(&v16, "__fastcall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(253, *v4))
    {
      sub_2977FB7B4(&v16, "__thiscall");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(254, *v4))
    {
      sub_2977FB7B4(&v16, "__forceinline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(255, *v4))
    {
      sub_2977FB7B4(&v16, "__unaligned");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(256, *v4))
    {
      sub_2977FB7B4(&v16, "__global");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(257, *v4))
    {
      sub_2977FB7B4(&v16, "__local");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(258, *v4))
    {
      sub_2977FB7B4(&v16, "__constant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(259, *v4))
    {
      sub_2977FB7B4(&v16, "__private");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(260, *v4))
    {
      sub_2977FB7B4(&v16, "__kernel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(261, *v4))
    {
      sub_2977FB7B4(&v16, "__read_only");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(262, *v4))
    {
      sub_2977FB7B4(&v16, "__write_only");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(263, *v4))
    {
      sub_2977FB7B4(&v16, "__read_write");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(264, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_astype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(265, *v4))
    {
      sub_2977FB7B4(&v16, "vec_step");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(266, *v4))
    {
      sub_2977FB7B4(&v16, "__pascal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(267, *v4))
    {
      sub_2977FB7B4(&v16, "__vector");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(268, *v4))
    {
      sub_2977FB7B4(&v16, "__pixel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(269, *v4))
    {
      sub_2977FB7B4(&v16, "half");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(270, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(271, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_transfer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(272, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_retained");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(273, *v4))
    {
      sub_2977FB7B4(&v16, "__bridge_retain");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(274, *v4))
    {
      sub_2977FB7B4(&v16, "__nonnull");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(275, *v4))
    {
      sub_2977FB7B4(&v16, "__nullable");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(276, *v4))
    {
      sub_2977FB7B4(&v16, "__null_unspecified");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(277, *v4))
    {
      sub_2977FB7B4(&v16, "__ptr64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(278, *v4))
    {
      sub_2977FB7B4(&v16, "__ptr32");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(279, *v4))
    {
      sub_2977FB7B4(&v16, "__sptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(280, *v4))
    {
      sub_2977FB7B4(&v16, "__uptr");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(281, *v4))
    {
      sub_2977FB7B4(&v16, "__w64");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(282, *v4))
    {
      sub_2977FB7B4(&v16, "__uuidof");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(283, *v4))
    {
      sub_2977FB7B4(&v16, "__try");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(284, *v4))
    {
      sub_2977FB7B4(&v16, "__finally");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(285, *v4))
    {
      sub_2977FB7B4(&v16, "__leave");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(286, *v4))
    {
      sub_2977FB7B4(&v16, "uint64_t");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(287, *v4))
    {
      sub_2977FB7B4(&v16, "__if_exists");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(288, *v4))
    {
      sub_2977FB7B4(&v16, "__if_not_exists");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(289, *v4))
    {
      sub_2977FB7B4(&v16, "__single_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(290, *v4))
    {
      sub_2977FB7B4(&v16, "__multiple_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(291, *v4))
    {
      sub_2977FB7B4(&v16, "__virtual_inheritance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(292, *v4))
    {
      sub_2977FB7B4(&v16, "__interface");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(293, *v4))
    {
      sub_2977FB7B4(&v16, "__builtin_convertvector");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(294, *v4))
    {
      sub_2977FB7B4(&v16, "active");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(295, *v4))
    {
      sub_2977FB7B4(&v16, "atomic_uint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(296, *v4))
    {
      sub_2977FB7B4(&v16, "attribute");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(297, *v4))
    {
      sub_2977FB7B4(&v16, "bvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(298, *v4))
    {
      sub_2977FB7B4(&v16, "bvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(299, *v4))
    {
      sub_2977FB7B4(&v16, "bvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(300, *v4))
    {
      sub_2977FB7B4(&v16, "buffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(301, *v4))
    {
      sub_2977FB7B4(&v16, "cast");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(302, *v4))
    {
      sub_2977FB7B4(&v16, "centroid");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(303, *v4))
    {
      sub_2977FB7B4(&v16, "coherent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(304, *v4))
    {
      sub_2977FB7B4(&v16, "common");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(305, *v4))
    {
      sub_2977FB7B4(&v16, "discard");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(306, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(307, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(308, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(309, *v4))
    {
      sub_2977FB7B4(&v16, "dmat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(310, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(311, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(312, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(313, *v4))
    {
      sub_2977FB7B4(&v16, "dmat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(314, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(315, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(316, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(317, *v4))
    {
      sub_2977FB7B4(&v16, "dmat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(318, *v4))
    {
      sub_2977FB7B4(&v16, "dvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(319, *v4))
    {
      sub_2977FB7B4(&v16, "dvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(320, *v4))
    {
      sub_2977FB7B4(&v16, "dvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(321, *v4))
    {
      sub_2977FB7B4(&v16, "filter");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(322, *v4))
    {
      sub_2977FB7B4(&v16, "fixed");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(323, *v4))
    {
      sub_2977FB7B4(&v16, "flat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(324, *v4))
    {
      sub_2977FB7B4(&v16, "fvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(325, *v4))
    {
      sub_2977FB7B4(&v16, "fvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(326, *v4))
    {
      sub_2977FB7B4(&v16, "fvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(327, *v4))
    {
      sub_2977FB7B4(&v16, "highp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(328, *v4))
    {
      sub_2977FB7B4(&v16, "hvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(329, *v4))
    {
      sub_2977FB7B4(&v16, "hvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(330, *v4))
    {
      sub_2977FB7B4(&v16, "hvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(331, *v4))
    {
      sub_2977FB7B4(&v16, "iimage1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(332, *v4))
    {
      sub_2977FB7B4(&v16, "iimage1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(333, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(334, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(335, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(336, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(337, *v4))
    {
      sub_2977FB7B4(&v16, "iimage2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(338, *v4))
    {
      sub_2977FB7B4(&v16, "iimage3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(339, *v4))
    {
      sub_2977FB7B4(&v16, "iimageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(340, *v4))
    {
      sub_2977FB7B4(&v16, "iimageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(341, *v4))
    {
      sub_2977FB7B4(&v16, "iimageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(342, *v4))
    {
      sub_2977FB7B4(&v16, "image1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(343, *v4))
    {
      sub_2977FB7B4(&v16, "image1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(344, *v4))
    {
      sub_2977FB7B4(&v16, "image1DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(345, *v4))
    {
      sub_2977FB7B4(&v16, "image1DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(346, *v4))
    {
      sub_2977FB7B4(&v16, "image2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(347, *v4))
    {
      sub_2977FB7B4(&v16, "image2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(348, *v4))
    {
      sub_2977FB7B4(&v16, "image2DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(349, *v4))
    {
      sub_2977FB7B4(&v16, "image2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(350, *v4))
    {
      sub_2977FB7B4(&v16, "image2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(351, *v4))
    {
      sub_2977FB7B4(&v16, "image2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(352, *v4))
    {
      sub_2977FB7B4(&v16, "image2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(353, *v4))
    {
      sub_2977FB7B4(&v16, "image3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(354, *v4))
    {
      sub_2977FB7B4(&v16, "imageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(355, *v4))
    {
      sub_2977FB7B4(&v16, "imageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(356, *v4))
    {
      sub_2977FB7B4(&v16, "imageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(357, *v4))
    {
      sub_2977FB7B4(&v16, "in");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(358, *v4))
    {
      sub_2977FB7B4(&v16, "inout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(359, *v4))
    {
      sub_2977FB7B4(&v16, "input");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(360, *v4))
    {
      sub_2977FB7B4(&v16, "interface");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(361, *v4))
    {
      sub_2977FB7B4(&v16, "invariant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(362, *v4))
    {
      sub_2977FB7B4(&v16, "isampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(363, *v4))
    {
      sub_2977FB7B4(&v16, "isampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(364, *v4))
    {
      sub_2977FB7B4(&v16, "isampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(365, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(366, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(367, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(368, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(369, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(370, *v4))
    {
      sub_2977FB7B4(&v16, "isampler2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(371, *v4))
    {
      sub_2977FB7B4(&v16, "isampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(372, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(373, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(374, *v4))
    {
      sub_2977FB7B4(&v16, "isamplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(375, *v4))
    {
      sub_2977FB7B4(&v16, "ivec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(376, *v4))
    {
      sub_2977FB7B4(&v16, "ivec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(377, *v4))
    {
      sub_2977FB7B4(&v16, "ivec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(378, *v4))
    {
      sub_2977FB7B4(&v16, "layout");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(379, *v4))
    {
      sub_2977FB7B4(&v16, "lowp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(380, *v4))
    {
      sub_2977FB7B4(&v16, "mat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(381, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(382, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(383, *v4))
    {
      sub_2977FB7B4(&v16, "mat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(384, *v4))
    {
      sub_2977FB7B4(&v16, "mat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(385, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(386, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(387, *v4))
    {
      sub_2977FB7B4(&v16, "mat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(388, *v4))
    {
      sub_2977FB7B4(&v16, "mat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(389, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(390, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(391, *v4))
    {
      sub_2977FB7B4(&v16, "mat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(392, *v4))
    {
      sub_2977FB7B4(&v16, "mediump");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(393, *v4))
    {
      sub_2977FB7B4(&v16, "noinline");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(394, *v4))
    {
      sub_2977FB7B4(&v16, "noperspective");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(395, *v4))
    {
      sub_2977FB7B4(&v16, "out");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(396, *v4))
    {
      sub_2977FB7B4(&v16, "output");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(397, *v4))
    {
      sub_2977FB7B4(&v16, "partition");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(398, *v4))
    {
      sub_2977FB7B4(&v16, "patch");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(399, *v4))
    {
      sub_2977FB7B4(&v16, "precision");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(400, *v4))
    {
      sub_2977FB7B4(&v16, "readonly");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(401, *v4))
    {
      sub_2977FB7B4(&v16, "resource");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(402, *v4))
    {
      sub_2977FB7B4(&v16, "sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(403, *v4))
    {
      sub_2977FB7B4(&v16, "sampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(404, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(405, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(406, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(407, *v4))
    {
      sub_2977FB7B4(&v16, "sampler1DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(408, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(409, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(410, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(411, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(412, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(413, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(414, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DRectShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(415, *v4))
    {
      sub_2977FB7B4(&v16, "sampler2DShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(416, *v4))
    {
      sub_2977FB7B4(&v16, "sampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(417, *v4))
    {
      sub_2977FB7B4(&v16, "sampler3DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(418, *v4))
    {
      sub_2977FB7B4(&v16, "samplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(419, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(420, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(421, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeArrayShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(422, *v4))
    {
      sub_2977FB7B4(&v16, "samplerCubeShadow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(423, *v4))
    {
      sub_2977FB7B4(&v16, "smooth");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(424, *v4))
    {
      sub_2977FB7B4(&v16, "subroutine");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(425, *v4))
    {
      sub_2977FB7B4(&v16, "superp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(426, *v4))
    {
      sub_2977FB7B4(&v16, "uimage1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(427, *v4))
    {
      sub_2977FB7B4(&v16, "uimage1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(428, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(429, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(430, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(431, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(432, *v4))
    {
      sub_2977FB7B4(&v16, "uimage2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(433, *v4))
    {
      sub_2977FB7B4(&v16, "uimage3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(434, *v4))
    {
      sub_2977FB7B4(&v16, "uimageBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(435, *v4))
    {
      sub_2977FB7B4(&v16, "uimageCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(436, *v4))
    {
      sub_2977FB7B4(&v16, "uimageCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(437, *v4))
    {
      sub_2977FB7B4(&v16, "uint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(438, *v4))
    {
      sub_2977FB7B4(&v16, "uniform");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(439, *v4))
    {
      sub_2977FB7B4(&v16, "usampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(440, *v4))
    {
      sub_2977FB7B4(&v16, "usampler1D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(441, *v4))
    {
      sub_2977FB7B4(&v16, "usampler1DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(442, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(443, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(444, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DMS");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(445, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DMSArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(446, *v4))
    {
      sub_2977FB7B4(&v16, "usampler2DRect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(447, *v4))
    {
      sub_2977FB7B4(&v16, "usampler3D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(448, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerBuffer");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(449, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerCube");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(450, *v4))
    {
      sub_2977FB7B4(&v16, "usamplerCubeArray");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(451, *v4))
    {
      sub_2977FB7B4(&v16, "uvec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(452, *v4))
    {
      sub_2977FB7B4(&v16, "uvec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(453, *v4))
    {
      sub_2977FB7B4(&v16, "uvec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(454, *v4))
    {
      sub_2977FB7B4(&v16, "varying");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(455, *v4))
    {
      sub_2977FB7B4(&v16, "vec2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(456, *v4))
    {
      sub_2977FB7B4(&v16, "vec3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(457, *v4))
    {
      sub_2977FB7B4(&v16, "vec4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(458, *v4))
    {
      sub_2977FB7B4(&v16, "writeonly");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(459, *v4))
    {
      sub_2977FB7B4(&v16, "kernel");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(460, *v4))
    {
      sub_2977FB7B4(&v16, "__attribute__");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(461, *v4))
    {
      sub_2977FB7B4(&v16, "sample_f");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(462, *v4))
    {
      sub_2977FB7B4(&v16, "sample_h");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(463, *v4))
    {
      sub_2977FB7B4(&v16, "sampler_f");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(464, *v4))
    {
      sub_2977FB7B4(&v16, "sampler_h");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(465, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(466, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(467, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(468, *v4))
    {
      sub_2977FB7B4(&v16, "hmat2x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(469, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(470, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(471, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(472, *v4))
    {
      sub_2977FB7B4(&v16, "hmat3x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(473, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(474, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(475, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(476, *v4))
    {
      sub_2977FB7B4(&v16, "hmat4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(477, *v4))
    {
      sub_2977FB7B4(&v16, "float2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(478, *v4))
    {
      sub_2977FB7B4(&v16, "float3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(479, *v4))
    {
      sub_2977FB7B4(&v16, "float4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(480, *v4))
    {
      sub_2977FB7B4(&v16, "half2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(481, *v4))
    {
      sub_2977FB7B4(&v16, "half3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(482, *v4))
    {
      sub_2977FB7B4(&v16, "half4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(483, *v4))
    {
      sub_2977FB7B4(&v16, "float2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(484, *v4))
    {
      sub_2977FB7B4(&v16, "float3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(485, *v4))
    {
      sub_2977FB7B4(&v16, "float4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(486, *v4))
    {
      sub_2977FB7B4(&v16, "half2x2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(487, *v4))
    {
      sub_2977FB7B4(&v16, "half3x3");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(488, *v4))
    {
      sub_2977FB7B4(&v16, "half4x4");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(489, *v4))
    {
      sub_2977FB7B4(&v16, "hsampler");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(490, *v4))
    {
      sub_2977FB7B4(&v16, "hsampler2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(491, *v4))
    {
      sub_2977FB7B4(&v16, "__sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(492, *v4))
    {
      sub_2977FB7B4(&v16, "__color");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(493, *v4))
    {
      sub_2977FB7B4(&v16, "__table");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_297882A94(494, *v4))
    {
      sub_2977FB7B4(&v16, "__unknown_anytype");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 3u))
    {
      sub_2977FB7B4(&v16, "radians");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 4u))
    {
      sub_2977FB7B4(&v16, "degrees");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 5u))
    {
      sub_2977FB7B4(&v16, "sin");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 6u))
    {
      sub_2977FB7B4(&v16, "cos");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 7u))
    {
      sub_2977FB7B4(&v16, "tan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 8u))
    {
      sub_2977FB7B4(&v16, "asin");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 9u))
    {
      sub_2977FB7B4(&v16, "acos");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xAu))
    {
      sub_2977FB7B4(&v16, "atan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xBu))
    {
      sub_2977FB7B4(&v16, "atan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xCu))
    {
      sub_2977FB7B4(&v16, "sinh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xDu))
    {
      sub_2977FB7B4(&v16, "cosh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xEu))
    {
      sub_2977FB7B4(&v16, "tanh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0xFu))
    {
      sub_2977FB7B4(&v16, "asinh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x10u))
    {
      sub_2977FB7B4(&v16, "acosh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x11u))
    {
      sub_2977FB7B4(&v16, "atanh");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x12u))
    {
      sub_2977FB7B4(&v16, "pow");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x13u))
    {
      sub_2977FB7B4(&v16, "exp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x14u))
    {
      sub_2977FB7B4(&v16, "log");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x15u))
    {
      sub_2977FB7B4(&v16, "exp2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x16u))
    {
      sub_2977FB7B4(&v16, "log2");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x17u))
    {
      sub_2977FB7B4(&v16, "sqrt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x18u))
    {
      sub_2977FB7B4(&v16, "inversesqrt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x19u))
    {
      sub_2977FB7B4(&v16, "abs");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Au))
    {
      sub_2977FB7B4(&v16, "sign");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Bu))
    {
      sub_2977FB7B4(&v16, "floor");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Cu))
    {
      sub_2977FB7B4(&v16, "trunc");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Du))
    {
      sub_2977FB7B4(&v16, "round");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Eu))
    {
      sub_2977FB7B4(&v16, "roundEven");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x1Fu))
    {
      sub_2977FB7B4(&v16, "ceil");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x20u))
    {
      sub_2977FB7B4(&v16, "fract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x21u))
    {
      sub_2977FB7B4(&v16, "mod");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x22u))
    {
      sub_2977FB7B4(&v16, "modf");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x23u))
    {
      sub_2977FB7B4(&v16, "min");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x24u))
    {
      sub_2977FB7B4(&v16, "max");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x25u))
    {
      sub_2977FB7B4(&v16, "clamp");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x26u))
    {
      sub_2977FB7B4(&v16, "mix");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x27u))
    {
      sub_2977FB7B4(&v16, "mix");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x28u))
    {
      sub_2977FB7B4(&v16, "step");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x29u))
    {
      sub_2977FB7B4(&v16, "smoothstep");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Au))
    {
      sub_2977FB7B4(&v16, "isnan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Bu))
    {
      sub_2977FB7B4(&v16, "isinf");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Cu))
    {
      sub_2977FB7B4(&v16, "floatBitsToInt");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Du))
    {
      sub_2977FB7B4(&v16, "floatBitsToUint");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Eu))
    {
      sub_2977FB7B4(&v16, "intBitsToFloat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x2Fu))
    {
      sub_2977FB7B4(&v16, "uintBitsToFloat");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x30u))
    {
      sub_2977FB7B4(&v16, "packSnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x31u))
    {
      sub_2977FB7B4(&v16, "unpackSnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x32u))
    {
      sub_2977FB7B4(&v16, "packUnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x33u))
    {
      sub_2977FB7B4(&v16, "unpackUnorm2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x34u))
    {
      sub_2977FB7B4(&v16, "packHalf2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x35u))
    {
      sub_2977FB7B4(&v16, "unpackHalf2x16");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x36u))
    {
      sub_2977FB7B4(&v16, "length");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x37u))
    {
      sub_2977FB7B4(&v16, "distance");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x38u))
    {
      sub_2977FB7B4(&v16, "dot");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x39u))
    {
      sub_2977FB7B4(&v16, "cross");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Au))
    {
      sub_2977FB7B4(&v16, "normalize");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Bu))
    {
      sub_2977FB7B4(&v16, "faceforward");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Cu))
    {
      sub_2977FB7B4(&v16, "reflect");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Du))
    {
      sub_2977FB7B4(&v16, "refract");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Eu))
    {
      sub_2977FB7B4(&v16, "matrixCompMult");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x3Fu))
    {
      sub_2977FB7B4(&v16, "outerProduct");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x40u))
    {
      sub_2977FB7B4(&v16, "transpose");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x41u))
    {
      sub_2977FB7B4(&v16, "determinant");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x42u))
    {
      sub_2977FB7B4(&v16, "inverse");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x43u))
    {
      sub_2977FB7B4(&v16, "lessThan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x44u))
    {
      sub_2977FB7B4(&v16, "lessThanEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x45u))
    {
      sub_2977FB7B4(&v16, "greaterThan");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x46u))
    {
      sub_2977FB7B4(&v16, "greaterThanEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x47u))
    {
      sub_2977FB7B4(&v16, "equal");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x48u))
    {
      sub_2977FB7B4(&v16, "notEqual");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x49u))
    {
      sub_2977FB7B4(&v16, "any");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Au))
    {
      sub_2977FB7B4(&v16, "all");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Bu))
    {
      sub_2977FB7B4(&v16, "not");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Cu))
    {
      sub_2977FB7B4(&v16, "$assert");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Du))
    {
      sub_2977FB7B4(&v16, "sample");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Eu))
    {
      sub_2977FB7B4(&v16, "samplerTransform");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x4Fu))
    {
      sub_2977FB7B4(&v16, "samplerExtent");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x50u))
    {
      sub_2977FB7B4(&v16, "samplerCoord");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 0x51u))
    {
      sub_2977FB7B4(&v16, "texture2D");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 1u))
    {
      sub_2977FB7B4(&v16, "ci_outColorF");
      sub_297828D2C(v3, v16, v17);
    }

    if (sub_2978D5644(&v18, 2u))
    {
      sub_2977FB7B4(&v16, "ci_outColorH");
      sub_297828D2C(v3, v16, v17);
    }

    v15 = sub_2978D568C(v3);
    v14 = sub_2978D5690(v3);
    while (sub_29781550C(&v15, &v14))
    {
      v5 = sub_29781AD54(&v15);
      sub_2978B695C(&v16, *(v5 + 8));
      sub_2978B93C8(&v16);
      if (!v6 || !sub_2978D5694(&v16) || sub_2978B8E90(&v16))
      {
        v7 = sub_297806460(a1[1]);
        v8 = sub_29781AD54(&v15);
        v9 = sub_29781ADE4(v8);
        sub_2978CD79C(&v13, v7, v9, v10);
        v12 = sub_2978CD7A0(&v13);
        sub_29781B720((a1 + 10), &v12);
      }

      sub_2978B69A8(&v16);
      sub_29781AE30(&v15);
    }

    sub_2978C77C0(a1);
  }

  return !v2;
}

uint64_t sub_2978D5644(uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  v4 = sub_2977FB720(*(*a1 + 8));
  v5 = sub_29788FA28(v4, a2);
  v6 = *(v3 + 16);

  return sub_29788FAD8(v5, v6);
}

uint64_t sub_2978D56B8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = v12;
  v11[1] = a1;
  while (!sub_2978D5830(v11))
  {
    if (!sub_297850F64((a1 + 4), 1) || !sub_297850F64((a1 + 4), 0))
    {
      break;
    }

    result = sub_2978503FC((a1 + 4));
    if (result > 21)
    {
      if (result > 23)
      {
        if (result == 24)
        {
          sub_2978CF8A4(a1);
          continue;
        }

        if (result == 61 && (a4 & 1) != 0)
        {
          return result;
        }

LABEL_18:
        sub_2978C77C0(a1);
        continue;
      }

      if (result == 22)
      {
        sub_2978C80DC(a1);
        continue;
      }

      sub_2978CF8A4(a1);
      v9 = a1;
      v10 = 24;
    }

    else if (result > 19)
    {
      if (result == 20)
      {
        sub_2978CD4A0(a1);
        continue;
      }

      sub_2978C80DC(a1);
      v9 = a1;
      v10 = 22;
    }

    else
    {
      if (result == 3)
      {
        sub_2978CFF00(a1);
        continue;
      }

      if (result != 19)
      {
        goto LABEL_18;
      }

      sub_2978CD4A0(a1);
      v9 = a1;
      v10 = 20;
    }

    sub_2978CFD74(v9, v10, 0, 0);
  }

  result = sub_2978D5830(v11);
  if (result)
  {
    if ((a5 & 1) == 0)
    {
      return sub_2978C84FC(a1);
    }
  }

  return result;
}

BOOL sub_2978D5830(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2977FB720(*a1);
  v4 = sub_2978D5B54(*a1);
  v7 = sub_2978503FC(v2 + 32);
  v5 = sub_2978D5AEC(v3, v4, &v7);
  return v5 != sub_2978D5B54(*a1);
}

uint64_t sub_2978D58A8(uint64_t *a1)
{
  result = sub_2978CFF00(a1);
  if ((result & 1) == 0)
  {

    return sub_2978CFD74(a1, 61, 0, 0);
  }

  return result;
}

BOOL sub_2978D58FC(unsigned int *a1, unsigned int a2, _DWORD *a3)
{
  v6 = sub_2978503FC((a1 + 8));
  if (v6 == a2)
  {
    if (a2 == 19)
    {
      ++a1[16];
    }

    else if (a2 == 21)
    {
      ++a1[15];
    }

    else
    {
      ++a1[17];
    }

    *a3 = sub_2978C77C0(a1);
  }

  else
  {
    sub_2978C765C(a1, a1 + 8, 8, v8);
    sub_297869528(v8, a2);
    sub_29782963C(v8);
  }

  return v6 != a2;
}

uint64_t sub_2978D59C8(uint64_t a1, unsigned int a2, int a3, _DWORD *a4)
{
  v8 = word_2978FC274[a2 - 20];
  sub_2978C765C(a1, (a1 + 32), 8, v10);
  sub_297869528(v10, a2);
  sub_29782963C(v10);
  sub_2978CFEF4(a1, a3, 50, v10);
  sub_297869528(v10, v8);
  sub_29782963C(v10);
  *a4 = sub_2977FB5F0((a1 + 32));
  sub_2978CFD74(a1, a2, 0, 0);
  result = sub_2978503FC(a1 + 32);
  if (result == a2)
  {
    *a4 = sub_2977FB5F0((a1 + 32));
    return sub_2978C77C0(a1);
  }

  return result;
}

BOOL sub_2978D5AB0(uint64_t a1)
{
  for (result = sub_2978CE708(a1); !result; result = sub_2978CE708(a1))
  {
    sub_2978C6F10(a1);
  }

  return result;
}

uint64_t sub_2978D5AEC(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  j_j_nullsub_1();
  v6 = v5;
  j_j_nullsub_1();
  v8 = sub_2978D5B60(v6, v7, a3, &v10);
  return sub_2977FD98C(a1, v8);
}

uint64_t sub_2978D5B60(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  for (i = a1; i != a2; i += 2)
  {
    if (*sub_297813268(a4, i) == *a3)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2978D5BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  sub_29783DC08(a1 + 16, 0);
  sub_297817C28(a1 + 40);
  sub_29786EC00(a1 + 176);
  sub_29780AE44(a1 + 456);
  sub_29788E11C(a1 + 464);
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  sub_297804638(a1 + 576, "main");
  sub_297802744(a1 + 600);
  *(a1 + 624) = 0;
  *(a1 + 628) = 0;
  sub_2978EF4A0(a3, 0, &v6);
  sub_2978D5C8C((a1 + 456), &v6);
  sub_2978D5CE4(&v6);
  return a1;
}

uint64_t *sub_2978D5C8C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_2978058AC(a2);
  sub_2978D87E8(a1, v3);
  nullsub_1();
  j_nullsub_1();
  return a1;
}

uint64_t sub_2978D5CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v113 = *MEMORY[0x29EDCA608];
  v9 = sub_2977FB720(a1 + 456);
  v10 = sub_2978D65BC(v9);
  sub_2978D65C4(v109, v10);
  v11 = sub_2977FB720(a1 + 456);
  v12 = sub_2978D65C8(v11);
  sub_297829180(&v108);
  v100 = sub_29781F408(v12);
  sub_2978D65D0(v107, a5);
  sub_2978D6614(v106);
  if (!sub_2978D6658(v107, v106))
  {
LABEL_65:
    sub_2978D6C90(v106);
    sub_2978D6C90(v107);
    return 1;
  }

  while (1)
  {
    sub_297806EC8(v105);
    v13 = sub_2978D66B0(v107);
    v14 = sub_2978D6674(v13);
    v101[0] = v14;
    if (v14)
    {
      if (sub_29783CFFC(v14))
      {
        goto LABEL_6;
      }

      v111 = sub_297805510(v101[0]);
      v15 = sub_297896C10(a1 + 16, &v111);
      v16 = v101[0];
      if (v15)
      {
        v111 = sub_297805510(v101[0]);
        v17 = sub_2978D66D0(a1 + 16, &v111);
        sub_29785BC50(v16, *v17);
LABEL_6:
        v18 = 4;
        goto LABEL_7;
      }

      v27 = "filter";
      if (sub_2978D66EC(v101[0]))
      {
        v28 = v101[0];
        sub_2978D66F8(v101[0], &v111);
        sub_2978D67BC(v28, &v102);
        while (sub_2978D6840(&v111, &v102))
        {
          sub_2978D685C(&v111);
          sub_2978D68A0(&v111);
        }

        v27 = "coordinate-transform";
      }

      if (sub_2978D6914(v101[0]))
      {
        v29 = "sample-with-transform";
      }

      else
      {
        v29 = v27;
      }

      v30 = sub_297805510(v101[0]);
      sub_2977FB7B4(&v111, v30);
      sub_2977FB7B4(&v102, v29);
      v31 = sub_297804A04(v111, v112, v102, v103, 0);
      sub_297829180(&v111);
      v32 = sub_29787BEA0(v100, v31, 0, 0, 0, v111);
      sub_29787229C(v12, v32, 0, v108);
      v33 = sub_2978D6920(a4);
      v34 = sub_2977FB720(a1 + 456);
      v35 = sub_2978D6928(v34);
      (*(*v33 + 24))(v33, v35, v12);
      sub_2978D6930(a3);
      sub_29780B1B8(&v111);
      v36 = 0;
      if (!sub_2978CE708(a3))
      {
        v36 = 0;
        do
        {
          while (1)
          {
            v57 = sub_297876C1C(a3);
            if (!sub_29784FF04(v57, 79))
            {
              break;
            }

            sub_2978C6F10(a3);
            if (sub_2978CE708(a3))
            {
              goto LABEL_21;
            }
          }

          v102 = &v111;
          v103 = v12;
          v104 = v101;
          sub_2978D6938(v110, &v102);
          v36 = sub_2978C72F4(a3, v110);
          sub_2978D693C(v110);
          if (!sub_297806904(&v111))
          {
            v58 = sub_29783D2C4(&v111);
            sub_2978B695C(&v102, *v58);
            v59 = sub_297806460(v10);
            sub_2978BDF3C(&v102, v36, v59);
            sub_2978B69A8(&v102);
          }
        }

        while (!sub_2978CE708(a3));
      }

LABEL_21:
      v37 = sub_2977FB720(&v111);
      v38 = sub_2977FB7B8(&v111);
      while (v37 != v38)
      {
        v39 = *v37++;
        sub_2978B695C(&v102, v39);
        sub_2978BE050(&v102);
        sub_2978B69A8(&v102);
      }

      if (v36 && sub_2978CE708(a3))
      {
        v40 = v101[0];
        v41 = sub_29781BF50(v36);
        sub_29785BC50(v40, v41);
        v42 = sub_29783CFFC(v101[0]);
        v102 = sub_297805510(v101[0]);
        *sub_2978D66D0(a1 + 16, &v102) = v42;
        sub_29787BF14(v12);
        v43 = sub_2978D6920(a4);
        (*(*v43 + 32))(v43);
        v18 = 4;
      }

      else
      {
        sub_2978B677C(v10, v108, 2331, &v102);
        v56 = sub_297805510(v101[0]);
        sub_29783F028(&v102, v56);
        sub_29782963C(&v102);
        v18 = 1;
      }

      sub_2977FD134(&v111);
      goto LABEL_7;
    }

    v111 = sub_2978D66B0(v107);
    if (sub_2978D6940(&v111))
    {
      v19 = sub_2978D6944(v107);
      v20 = sub_2978D6948(v19);
      sub_2978D5CEC(a1, v20, a3, a4, a5);
LABEL_56:
      sub_297801F60(v105);
      goto LABEL_57;
    }

    v21 = sub_2978D66B0(v107);
    v22 = sub_2978D697C(v21);
    if (v22)
    {
      v23 = v22;
      sub_2977FB7B4(&v111, "_dc");
      v24 = sub_2978D69B8(v109, v111, v112);
      v25 = sub_29781BF50(v24);
      v26 = v23;
LABEL_55:
      sub_2977FE390(v26, v25);
      goto LABEL_56;
    }

    v44 = sub_2978D66B0(v107);
    v45 = sub_2978D69F4(v44);
    if (v45)
    {
      v46 = v45;
      sub_2978036E0(&v102, "c");
      v47 = sub_2978D6A30(v46);
      sub_2978B5D7C(v101, v47);
      sub_297807128();
      v48 = sub_297812A04(&v111, v105);
      v50 = v49;
      v51 = sub_2978D6A38(v46);
      v52 = sub_29780C788(v46);
      v54 = sub_2978D6A44(v109, v52, v53);
      v55 = sub_2978D6A54(v109, v48, v50, v51, v54, 0, 2);
      if (!v55)
      {
        goto LABEL_66;
      }

      v25 = v55;
      v26 = v46;
      goto LABEL_55;
    }

    v60 = sub_2978D66B0(v107);
    v61 = sub_2978D6AB4(v60);
    if (v61)
    {
      v62 = v61;
      if (sub_2978D66EC(v61))
      {
        v63 = "_t";
      }

      else
      {
        v63 = "_u";
      }

      sub_2978036E0(&v102, v63);
      v64 = sub_2978D6A30(v62);
      sub_2978B5D7C(v101, v64);
      sub_297807128();
      v65 = sub_297812A04(&v111, v105);
      v67 = v66;
      v68 = sub_2978D6BAC(v62);
      v69 = sub_2978D6AF0(v109, v65, v67, v68, 3, 7);
      if (!v69)
      {
        goto LABEL_66;
      }

      v70 = v69;
LABEL_53:
      if (!sub_2978BF928(v10, v70))
      {
        goto LABEL_66;
      }

      v26 = v62;
      v25 = v70;
      goto LABEL_55;
    }

    v71 = sub_2978D66B0(v107);
    v72 = sub_2978D6BB8(v71);
    if (v72)
    {
      break;
    }

    v80 = sub_2978D66B0(v107);
    v81 = sub_2978D6C00(v80);
    if (v81)
    {
      v82 = v81;
      if (sub_2978D6BF4(v81))
      {
        sub_2978036E0(&v102, "_i");
        v83 = sub_2978D6A30(v82);
        sub_2978B5D7C(v101, v83);
        sub_297807128();
        v84 = sub_297812A04(&v111, v105);
        v86 = v85;
        v87 = v84;
        v88 = v86;
        v89 = 44;
      }

      else
      {
        sub_2978036E0(&v102, "_i");
        v94 = sub_2978D6A30(v82);
        sub_2978B5D7C(v101, v94);
        sub_297807128();
        v95 = sub_297812A04(&v111, v105);
        v97 = v96;
        v87 = v95;
        v88 = v97;
        v89 = 43;
      }

      v98 = sub_2978D6AF0(v109, v87, v88, v89, 1, 7);
      if (v98 && sub_2978BF928(v10, v98))
      {
        sub_2977FE390(v82, v98);
        goto LABEL_6;
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

LABEL_7:
    sub_297801F60(v105);
    if (v18 != 4)
    {
      goto LABEL_67;
    }

LABEL_57:
    sub_2978D6C3C(v107);
    if ((sub_2978D6658(v107, v106) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v62 = v72;
  if (sub_2978D6BF4(v72))
  {
    sub_2978036E0(&v102, "_s");
    v73 = sub_2978D6A30(v62);
    sub_2978B5D7C(v101, v73);
    sub_297807128();
    v74 = sub_297812A04(&v111, v105);
    v76 = v75;
    v77 = v74;
    v78 = v76;
    v79 = 42;
  }

  else
  {
    sub_2978036E0(&v102, "_s");
    v90 = sub_2978D6A30(v62);
    sub_2978B5D7C(v101, v90);
    sub_297807128();
    v91 = sub_297812A04(&v111, v105);
    v93 = v92;
    v77 = v91;
    v78 = v93;
    v79 = 41;
  }

  v70 = sub_2978D6AF0(v109, v77, v78, v79, 0, 7);
  if (v70)
  {
    goto LABEL_53;
  }

LABEL_66:
  sub_297801F60(v105);
LABEL_67:
  sub_2978D6C90(v106);
  sub_2978D6C90(v107);
  return 0;
}

uint64_t sub_2978D65D0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>)
{
  sub_2978D8830(a2, v4);
  sub_2978D8874(a1, v4);
  return sub_2978D8588(v4);
}

uint64_t sub_2978D6614@<X0>(uint64_t a1@<X8>)
{
  sub_2978D90DC(v3);
  sub_2978D8874(a1, v3);
  return sub_2978D8588(v3);
}

uint64_t sub_2978D6674(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D8750(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D66F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297806460(v4);
    sub_2978B6CB0(v6);

    return sub_2978D84D4(a2, v5, v7);
  }

  else
  {
    v9 = sub_2978D76E4(a1);
    if (v9)
    {
      v10 = v9;
      v11 = sub_2977FD5B0(v9);

      return sub_2978D84D8(a2, v10, v11);
    }

    else
    {

      return sub_2978D84DC(a2, a1);
    }
  }
}

uint64_t sub_2978D67BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297806460(v4);
    v7 = sub_2978B6D10(v6);

    return sub_2978D84D4(a2, v5, v7);
  }

  else
  {

    return sub_2978D84DC(a2, a1);
  }
}

uint64_t sub_2978D685C(uint64_t a1)
{
  if (sub_29783E2B8((a1 + 8)))
  {
    j_j_nullsub_1();
  }

  else
  {
    sub_29788AA04();
  }

  return *v1;
}

uint64_t *sub_2978D68A0(uint64_t *a1)
{
  if (!sub_2978B78A0())
  {
    if (sub_2978D6674(*a1))
    {
      sub_29788AA04();
      v4 = v2 + 8;
      sub_2978BD908(a1 + 1);
    }

    else
    {
      sub_2978B47C8(&v4);
      a1[1] = v4;
    }
  }

  return a1;
}

uint64_t sub_2978D6948(uint64_t a1)
{
  result = sub_2978D76E4(a1);
  if (result)
  {

    return sub_29783CFFC(result);
  }

  return result;
}

uint64_t sub_2978D697C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D76E0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_2978D69B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2978D74F0(a1, a2, a3);

  return sub_2978D856C(a1, v4);
}

uint64_t sub_2978D69F4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D9720(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_2978D6AF0(a1, a2, a3, a4, a6, a7);
  v10 = sub_2978D8574(a1, v9);
  sub_2978B95FC(*a1, v10, a5, *(a1 + 8));
  return v10;
}

uint64_t sub_2978D6AB4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D76DC(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  sub_2978C1AD4(v16);
  sub_2978CA54C(v16, a5);
  sub_2978C84CC(v16, a4);
  sub_2978C8430(v16, *(a1 + 8), a6);
  v12 = sub_2978D74F0(a1, a2, a3);
  sub_2978C8538(v15, v16, v12, *(a1 + 8));
  v13 = sub_2978B8748(*a1, v15, 1);
  return sub_2978D8574(a1, v13);
}

uint64_t sub_2978D6BB8(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D76D4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D6C00(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D76D8(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2978D6C3C(uint64_t *a1)
{
  sub_297829740((a1 + 1));
  nullsub_1();
  sub_2978D9324(a1 + 1);
  if (!sub_297806904(a1 + 1))
  {
    sub_2978D8928(a1);
  }

  return a1;
}

uint64_t sub_2978D6C94(uint64_t a1)
{
  sub_297829180(&v26);
  v2 = sub_2977FB720(a1 + 456);
  v3 = sub_2978EE93C(v2);
  v4 = sub_2977FB720(a1 + 456);
  v5 = sub_2978D65C8(v4);
  v6 = sub_2977FB720(a1 + 456);
  v7 = sub_2978D65BC(v6);
  sub_2978D65C4(v25, v7);
  v8 = sub_2977FB720(a1 + 456);
  v9 = sub_29787CC6C(v8);
  v10 = sub_29781F408(v5);
  sub_2978B6A00(v7);
  sub_2978D6F10(v25, 3, 3);
  sub_2977FB7B4(&v22, "_dc");
  sub_2978D6F88(v25, v22, v23, 8, 3, 0);
  sub_2977FB7B4(&v22, "p0");
  sub_2978D6F88(v25, v22, v23, 8, 3, 8);
  v11 = sub_2977FB720(a1 + 464);
  v12 = sub_2977FB7B8(a1 + 464);
  if (v11 != v12)
  {
    v13 = v12;
    do
    {
      sub_2977FB7B4(&v22, *v11);
      sub_2977FB7B4(v24, "lib");
      v14 = sub_297804A04(v22, v23, v24[0], v24[1], 0);
      sub_297829180(&v22);
      v15 = sub_29787BEA0(v10, v14, 0, 0, 0, v22);
      sub_29787229C(v5, v15, 0, v26);
      v16 = sub_2978D6920(v3);
      v17 = sub_2977FB720(a1 + 456);
      v18 = sub_2978D6928(v17);
      (*(*v16 + 24))(v16, v18, v5);
      sub_2978D6930(v9);
      while (!sub_2978CE708(v9))
      {
        sub_2978C6F10(v9);
      }

      ++v11;
    }

    while (v11 != v13);
  }

  sub_29788E120(&v22);
  v19 = sub_2978D5CEC(a1, *a1, v9, v3, &v22);
  v20 = sub_2978D6920(v3);
  (*(*v20 + 40))(v20);
  *(a1 + 624) = v19 ^ 1;
  sub_29787B7C8(&v22);
  return v19;
}

uint64_t sub_2978D6F10(uint64_t a1, char a2, char a3)
{
  sub_2978C1AD4(v9);
  sub_2978CA54C(v9, a2);
  sub_2978C84CC(v9, a3);
  v6 = *a1;
  v7 = sub_2978BA59C(*a1, v9, *(a1 + 8));
  return sub_2978BF928(v6, v7);
}

uint64_t sub_2978D6F88(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  v6 = *a1;
  v7 = sub_2978D6AF0(a1, a2, a3, a4, a5, a6);

  return sub_2978BF928(v6, v7);
}

BOOL sub_2978D6FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2977FB720(a1 + 456);
  v8 = sub_2978D65BC(v7);
  sub_2978D65C4(v58, v8);
  sub_297829180(&v57);
  sub_2978D65D0(v56, a4);
  sub_2978D6614(v55);
  if (sub_2978D6658(v56, v55))
  {
    while (1)
    {
      sub_297806EC8(v54);
      v9 = sub_2978D66B0(v56);
      v10 = sub_2978D6674(v9);
      if (v10)
      {
        break;
      }

      v52 = sub_2978D66B0(v56);
      if ((sub_2978D76D4(&v52) & 1) == 0)
      {
        v52 = sub_2978D66B0(v56);
        if ((sub_2978D76D8(&v52) & 1) == 0)
        {
          v31 = sub_2978D66B0(v56);
          v32 = sub_2978D69F4(v31);
          if (v32)
          {
            v51[0] = sub_2977FB720(v32);
            sub_29784CE50(&v52, v51);
            v52 = sub_2978BF8E4(v8, v52, v53);
            if (v52)
            {
              sub_2978040A4(a3, &v52);
              goto LABEL_14;
            }

            goto LABEL_32;
          }

          v52 = sub_2978D66B0(v56);
          if ((sub_2978D76DC(&v52) & 1) == 0)
          {
            v52 = sub_2978D66B0(v56);
            if ((sub_2978D76E0(&v52) & 1) == 0)
            {
              v33 = sub_2978D66B0(v56);
              v30 = sub_2978D76E4(v33);
              if (!v30)
              {
                goto LABEL_33;
              }

              sub_2978036E0(v51, "_pos_");
              v34 = sub_2978D74AC(v30);
              sub_2978B5D7C(v50, v34);
              sub_297807128();
              v35 = sub_297812A04(&v52, v54);
              v37 = v36;
              sub_2977FB7B4(&v52, "_dc");
              v38 = sub_2978D7720(v58, v35, v37, 8, v52, v53, 0, 0);
              if (v38)
              {
                v51[0] = v38;
                sub_29784CE50(&v52, v51);
                v51[0] = sub_2978BF8E4(v8, v52, v53);
                if (v51[0])
                {
                  sub_2978040A4(a3, v51);
                  sub_2977FB7B4(&v52, "_dc");
                  v39 = sub_2977FD5B0(v30);
                  v40 = sub_2978D7810(v39);
                  v42 = sub_2978D779C(v58, v52, v53, v40, v41, 4);
                  if (v42)
                  {
                    v50[0] = sub_2978BFCE4(v8, v42);
                    if (v50[0])
                    {
                      sub_2978040A4(a3, v50);
                      v43 = sub_29783CFFC(v30);
                      if (sub_2978D6FC4(a1, v43, a3, a4))
                      {
                        sub_2977FB7B4(&v52, "_dc");
                        v44 = sub_2978D779C(v58, v52, v53, v35, v37, 4);
                        if (v44)
                        {
                          v52 = sub_2978BFCE4(v8, v44);
                          if (v52)
                          {
                            sub_2978040A4(a3, &v52);
                            v45 = sub_29783CFFC(v30);
                            v29 = sub_2977FB720(v45);
                            v28 = v30;
LABEL_13:
                            sub_2977FE390(v28, v29);
LABEL_14:
                            LODWORD(v30) = 4;
LABEL_33:
                            sub_297801F60(v54);
                            if (v30 != 4)
                            {
                              goto LABEL_36;
                            }

                            goto LABEL_34;
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_32:
              LODWORD(v30) = 1;
              goto LABEL_33;
            }
          }
        }
      }

      sub_297801F60(v54);
LABEL_34:
      sub_2978D6C3C(v56);
      if ((sub_2978D6658(v56, v55) & 1) == 0)
      {
        LODWORD(v30) = 2;
LABEL_36:
        v46 = v30 == 2;
        goto LABEL_39;
      }
    }

    v11 = v10;
    if (sub_2978D66EC(v10))
    {
      v12 = "dc";
    }

    else
    {
      v12 = &byte_2978FC3E5;
    }

    if (sub_2978D6914(v11))
    {
      v12 = "rp";
    }

    sub_2978036E0(v50, "_");
    v13 = sub_2978D74AC(v11);
    sub_2978B5D7C(v49, v13);
    sub_297807128();
    sub_2978036E0(&v48, v12);
    sub_297807128();
    v14 = sub_297812A04(&v52, v54);
    v16 = v15;
    v17 = sub_2978D74B8(v11);
    v18 = sub_2978D6AF0(v58, v14, v16, v17, 0, 0);
    if (!v18 || (v19 = v18, v20 = sub_29783CFFC(v11), v21 = sub_29788709C(v20), v23 = sub_2978D74F0(v58, v21, v22), v24 = sub_297806460(v11), v25 = sub_2978D7644(v24), (v27 = sub_2978D7538(v58, v23, v25, v26)) == 0) || !sub_2978B95FC(v8, v19, v27, v57))
    {
      sub_297801F60(v54);
      v46 = 0;
      goto LABEL_39;
    }

    v51[0] = v19;
    sub_29784CE50(&v52, v51);
    v52 = sub_2978BF8E4(v8, v52, v53);
    if (v52)
    {
      sub_2978040A4(a3, &v52);
      v28 = v11;
      v29 = v19;
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v46 = 1;
LABEL_39:
  sub_2978D6C90(v55);
  sub_2978D6C90(v56);
  return v46;
}

uint64_t sub_2978D74B8(uint64_t a1)
{
  v4 = sub_2978735BC(*(a1 + 24));
  v1 = sub_2977FB720(&v4);
  v2 = sub_297890568(v1);
  return sub_29788862C(v2);
}

uint64_t sub_2978D74F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978A7C00(*a1);
  v6 = sub_2978BE260(v5);

  return sub_297828D2C(v6, a2, a3);
}

uint64_t sub_2978D7538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v18[0] = a3;
  v18[1] = a4;
  sub_29780B1B8(v19);
  v6 = sub_2977FB720(v18);
  v7 = sub_2978130B8(v18);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2978D7810(v9);
      v17[0] = sub_2978D85B8(a1, v10, v11);
      sub_2978040A4(v19, v17);
    }

    while (v6 != v8);
  }

  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2978CD694(v17, v19);
  v14 = sub_2978BC8AC(v12, v13, a2, v17[0], v17[1], *(a1 + 8));
  v15 = sub_2978D8574(a1, v14);
  sub_2977FD134(v19);
  return v15;
}

uint64_t sub_2978D7644(unsigned __int8 *a1)
{
  if (sub_2978B78A0())
  {
    sub_297804560(&v8);
  }

  else if (sub_29783E2B8(a1))
  {
    j_j_nullsub_1();
    sub_29784CE50(&v8, v2);
  }

  else
  {
    sub_29788AA04();
    v4 = v3;
    v5 = sub_2977FB720(v3);
    v6 = sub_2977FB7B8(v4);
    sub_2978A1858(&v8, v5, v6);
  }

  return v8;
}

uint64_t sub_2978D76E4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978D6940(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978D7720(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_2978D85B8(a1, a5, a6);

  return sub_2978D6A54(a1, a2, a3, a4, v14, a7, a8);
}

uint64_t sub_2978D779C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2978D85B8(a1, a2, a3);
  v11 = sub_2978D85B8(a1, a4, a5);

  return sub_2978D8608(a1, v10, v11, a6);
}

uint64_t sub_2978D7810(uint64_t a1)
{
  v1 = sub_2977FB720(a1);

  return sub_29788709C(v1);
}

BOOL sub_2978D7838(uint64_t a1, int a2, int a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v6 = sub_2977FB720(a1 + 456);
  v7 = sub_2978D65BC(v6);
  sub_2978D65C4(v36, v7);
  *(a1 + 628) = a2;
  *(a1 + 632) = a3;
  if (*(a1 + 624))
  {
    return 0;
  }

  v8 = sub_2978A7C00(v7);
  v9 = sub_2977FD5B0(v8);
  if (sub_29786E230(v9))
  {
    return 0;
  }

  sub_297829180(&v35);
  sub_2978C1AD4(v34);
  sub_2978C84CC(v34, 2);
  v11 = sub_2978037C8();
  sub_2977FB7B4(v37, v11);
  v12 = sub_2978D74F0(v36, v37[0], v37[1]);
  sub_2978C77C4(v38, v34, v12, v35);
  sub_2978B65DC(v33, v7, 9);
  v13 = sub_2978BA2D0(v7, v38);
  v14 = sub_29781BF50(v13);
  *(a1 + 8) = v14;
  sub_2978D7B64(v14);
  if (*(a1 + 552) == 1)
  {
    sub_2978D7B70(*(a1 + 8));
  }

  sub_2978D7B7C(*(a1 + 8), *(a1 + 560));
  sub_2978D7B84(*(a1 + 8), *(a1 + 568));
  sub_29786EC00(v37);
  if (!*(a1 + 628))
  {
    sub_2977FB7B4(v30, "_dc");
    sub_2977FB7B4(&v31, "p0");
    v15 = sub_2978D779C(v36, v30[0], v30[1], v31, v32, 4);
    v30[0] = sub_2978BFCE4(v7, v15);
    sub_2978040A4(v37, v30);
  }

  sub_29788E120(v30);
  v10 = sub_2978D6FC4(a1, *a1, v37, v30);
  if (v10)
  {
    v16 = sub_2978D7810(*a1);
    v18 = sub_2978D69B8(v36, v16, v17);
    v31 = sub_29788C514(v18);
    v19 = sub_2977FB720(&v31);
    v20 = sub_2978876EC(v19);
    v21 = sub_2977FB7B8(v20);
    if (sub_2978B5A90(v21))
    {
      sub_2978D7B8C(*(a1 + 8), 0);
      v22 = "ci_outColorF";
    }

    else
    {
      sub_2978B5AB4(v21);
      sub_2978D7B8C(*(a1 + 8), 1);
      v22 = "ci_outColorH";
    }

    sub_2977FB7B4(&v31, v22);
    v23 = sub_2978D7810(*a1);
    v25 = sub_2978D779C(v36, v31, v32, v23, v24, 4);
    v31 = sub_2978BFCE4(v7, v25);
    sub_2978040A4(v37, &v31);
    v26 = *(a1 + 8);
    v27 = v35;
    sub_29780B1E8(&v31, v37);
    v28 = sub_2978BFDC8(v7, v27, v27, v31, v32);
    sub_2978BA364(v7, v26, v28);
  }

  else
  {
    sub_2977FD800(v37);
    sub_2978BF928(v7, *(a1 + 8));
    sub_2978B6D78(v7);
  }

  sub_29787B7C8(v30);
  sub_2977FD134(v37);
  sub_2978B6620(v33);
  if (v10)
  {
    sub_2978BF928(v7, *(a1 + 8));
    sub_2978B6D78(v7);
  }

  sub_2978C80D0(v38);
  return v10;
}

uint64_t sub_2978D7B94(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7BD0(a1, v2);
}

uint64_t sub_2978D7BD0(uint64_t a1, uint64_t a2)
{
  sub_297801F64(a2, "Filter DAG:\n");
  sub_2978D7C68(v6, a1);
  sub_2978D7C6C(v5, a1);
  if (sub_2978D7C70(v6, v5))
  {
    do
    {
      v3 = sub_2978D7C8C(v6);
      sub_2978D7C90(v3);
      sub_2978D7CCC(v6);
    }

    while ((sub_2978D7C70(v6, v5) & 1) != 0);
  }

  sub_2978D7CF4(v5);
  return sub_2978D7CF4(v6);
}

uint64_t sub_2978D7C90(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7EC0(a1, v2);
}

void **sub_2978D7CF8(uint64_t a1)
{
  v2 = sub_29781F06C();

  return sub_2978D7D34(a1, v2);
}

void **sub_2978D7D34(uint64_t a1, void **a2)
{
  v3 = sub_2978D7D74(a1, 0);

  return sub_29780BB74(a2, v3);
}

uint64_t sub_2978D7D74(uint64_t a1, int a2)
{
  sub_297803300(a1 + 600);
  std::string::reserve((a1 + 600), 0x400uLL);
  sub_29783E51C();
  v4 = sub_2977FB720(a1 + 456);
  v5 = sub_2978EE93C(v4);
  if (sub_29786E230(v5))
  {
    sub_297801F64(v22, "// An error occurred, see stderr for the error message");
  }

  else
  {
    v7 = *(a1 + 628);
    switch(v7)
    {
      case 2:
        v16 = sub_2977FB720(a1 + 456);
        v17 = sub_2977FB7B8(v16);
        v20 = sub_2978D7E90(v17);
        v21 = v18;
        v19 = sub_2977FB720(&v20);
        sub_2978A812C(*v19, v22);
        break;
      case 1:
        v12 = sub_2977FB720(a1 + 456);
        v13 = sub_2977FB7B8(v12);
        v20 = sub_2978D7E90(v13);
        v21 = v14;
        v15 = sub_2977FB720(&v20);
        sub_2978AB644(*v15, v22, a2);
        break;
      case 0:
        v8 = sub_2977FB720(a1 + 456);
        v9 = sub_2977FB7B8(v8);
        v20 = sub_2978D7E90(v9);
        v21 = v10;
        v11 = sub_2977FB720(&v20);
        sub_2978A4A80(*v11, v22);
        break;
    }
  }

  sub_29781F160(v22);
  return a1 + 600;
}

uint64_t sub_2978D7EC0(uint64_t a1, void **a2)
{
  v55 = *MEMORY[0x29EDCA608];
  sub_29780B1B8(v54);
  v4 = sub_297801F64(a2, "Node: ");
  v5 = sub_2978D74AC(a1);
  v6 = sub_297801FA0(v4, v5);
  sub_297801F64(v6, "\n");
  v7 = sub_2978D6674(a1);
  if (v7)
  {
    v8 = v7;
    if (sub_2978D66EC(v7))
    {
      sub_297801F64(a2, "  <coordinate transform>\n");
    }

    if (sub_2978D6914(v8))
    {
      sub_297801F64(a2, "  <sample with transform>\n");
    }

    v9 = sub_297801F64(a2, "  original source: ");
    v10 = sub_297805510(v8);
    v11 = sub_297801F64(v9, v10);
    sub_297801F64(v11, "\n");
    if (sub_29783CFFC(v8))
    {
      sub_297801F64(a2, "  printed AST: ");
      v12 = sub_29783CFFC(v8);
      sub_297885CA4(v12, a2);
    }

    sub_297801F64(a2, "  children:");
    sub_2978D8314(v8, v53);
    sub_2978D836C(v8, v52);
    while (sub_2978D6840(v53, v52))
    {
      v13 = sub_2978D83F0(v53);
      v14 = sub_297801F64(a2, " ");
      v15 = sub_2978D74AC(v13);
      sub_297801FA0(v14, v15);
      sub_2978D8434(v53);
    }

    v16 = "\n";
    goto LABEL_11;
  }

  v18 = sub_2978D6BB8(a1);
  if (v18)
  {
    v19 = v18;
    v20 = sub_297801F64(a2, "  sampler: ");
    v21 = sub_2978D6A30(v19);
LABEL_16:
    v23 = sub_297801FA0(v20, v21);
    sub_297801F64(v23, "\n");
    sub_297801F64(a2, "  printed: ");
    v24 = sub_2977FB720(v19);
    sub_297885CA4(v24, a2);
    v17 = a2;
LABEL_17:
    v16 = "\n";
    goto LABEL_18;
  }

  v22 = sub_2978D6C00(a1);
  if (v22)
  {
    v19 = v22;
    v20 = sub_297801F64(a2, "  image: ");
    v21 = sub_2978D6A30(v19);
    goto LABEL_16;
  }

  v30 = sub_2978D69F4(a1);
  if (v30)
  {
    v31 = v30;
    v32 = sub_297801F64(a2, "  constant: ");
    v33 = sub_2978D6A30(v31);
    v34 = sub_297801FA0(v32, v33);
    sub_297801F64(v34, "\n");
    v35 = sub_297801F64(a2, "  value: ");
    v36 = sub_29780C788(v31);
    v17 = sub_297801FA8(v35, v36, v37);
    goto LABEL_17;
  }

  v38 = sub_2978D6AB4(a1);
  if (v38)
  {
    v39 = v38;
    if (sub_2978D66EC(v38))
    {
      sub_297801F64(a2, "  <transform>\n");
    }

    v40 = sub_297801F64(a2, "  uniform: ");
    v41 = sub_2978D6A30(v39);
    v17 = sub_297801FA0(v40, v41);
    v16 = "\n";
    goto LABEL_18;
  }

  v42 = sub_2978D76E4(a1);
  if (!v42)
  {
    v53[0] = a1;
    sub_2978D76E0(v53);
    v16 = "  position use <_dc>\n";
LABEL_11:
    v17 = a2;
LABEL_18:
    sub_297801F64(v17, v16);
    goto LABEL_19;
  }

  v43 = v42;
  v44 = sub_297801F64(a2, "  new position: ");
  v45 = sub_2977FD5B0(v43);
  v46 = sub_2978D74AC(v45);
  v47 = sub_297801FA0(v44, v46);
  sub_297801F64(v47, "\n");
  v48 = sub_297801F64(a2, "  continuation: ");
  v49 = sub_29783CFFC(v43);
  v50 = sub_2978D74AC(v49);
  v51 = sub_297801FA0(v48, v50);
  sub_297801F64(v51, "\n");
  v53[0] = sub_29783CFFC(v43);
  sub_2978040A4(v54, v53);
LABEL_19:
  sub_297801F64(a2, "End Filter Node\n\n");
  v25 = sub_2977FB720(v54);
  v26 = sub_2977FB7B8(v54);
  if (v25 != v26)
  {
    v27 = v26;
    do
    {
      v28 = *v25++;
      sub_2978D7C90(v28);
    }

    while (v25 != v27);
  }

  return sub_2977FD134(v54);
}

uint64_t sub_2978D8314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2978D66F8(a1, &v6);
  v3 = v6;
  v4 = sub_297803A7C(&v7);
  return sub_2978D8698(a2, v3, v4);
}

uint64_t sub_2978D836C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2978D6674(a1);
  if (v4)
  {
    v5 = v4;
    v6 = sub_297806460(v4);
    v7 = sub_2978D86D0(v6);

    return sub_2978D86D4(a2, v5, v7);
  }

  else
  {

    return sub_2978D84DC(a2, a1);
  }
}

uint64_t sub_2978D83F0(uint64_t a1)
{
  if (sub_29783E2B8((a1 + 8)))
  {
    j_j_nullsub_1();
  }

  else
  {
    sub_29783DA74();
  }

  return *v1;
}

uint64_t *sub_2978D8434(uint64_t *a1)
{
  if (!sub_2978642A0())
  {
    if (sub_2978D6674(*a1))
    {
      sub_29783DA74();
      v4 = v2 + 8;
      sub_29786033C(a1 + 1);
    }

    else
    {
      sub_2978B47C8(&v4);
      a1[1] = v4;
    }
  }

  return a1;
}

uint64_t sub_2978D84A8(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_297829180((a1 + 8));
  return a1;
}

void *sub_2978D84E0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978B4BA4((a1 + 1), a3);
  return a1;
}

void *sub_2978D8510(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978B4BA0((a1 + 1), a3);
  return a1;
}

void *sub_2978D8540(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2978B47C8((a1 + 1));
  return a1;
}

uint64_t sub_2978D857C(uint64_t a1)
{
  if (a1)
  {
    return sub_29781BF50(a1);
  }

  return a1;
}

_DWORD *sub_2978D85B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2978D74F0(a1, a2, a3);

  return sub_2978D85F4(a1, v4);
}

uint64_t sub_2978D8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2978BC760(*a1, *(a1 + 8), a4, a2, a3);

  return sub_2978D8574(a1, v5);
}

uint64_t sub_2978D865C(uint64_t a1)
{
  sub_297829360(a1 + 96);

  return sub_2978A5110(a1);
}

void *sub_2978D869C(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = sub_2978B7290(a3);
  return a1;
}

void *sub_2978D86D8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2978D8708((a1 + 1), a3);
  return a1;
}

uint64_t sub_2978D870C()
{
  j_nullsub_1();

  return sub_29785B820();
}

uint64_t *sub_2978D87E8(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978D8800(result, v3);
  }

  return result;
}

uint64_t sub_2978D8800(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978D8830@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  nullsub_1();

  return sub_2978D8878(a2, v4, a1);
}

uint64_t *sub_2978D887C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v5 = sub_2977FE390(a1, a3);
  sub_297809B88((v5 + 1));
  if (sub_2978D8904(a1))
  {
    sub_2978D8924(a2, v7);
    sub_2978D8914(&v9, v7, v8);
    sub_2978D8910((a1 + 1), v8);
    sub_2978D8928(a1);
  }

  return a1;
}

BOOL sub_2978D8928(uint64_t *a1)
{
  v2 = sub_297829740((a1 + 1));
  v3 = sub_297829740((a1 + 1));
  sub_2978D8DE8(*v3, v9);
  for (result = sub_2978D6840((v2 + 8), v9); result; result = sub_2978D6840((v6 + 8), v9))
  {
    v5 = sub_297829740((a1 + 1));
    sub_2978D8DEC((v5 + 8), v9);
    v10 = sub_2978D685C(v9);
    sub_297829740((a1 + 1));
    if (sub_2978D8904(a1))
    {
      sub_2978D8924(v10, v8);
      sub_2978D8914(&v10, v8, v9);
      sub_2978D8910((a1 + 1), v9);
    }

    v6 = sub_297829740((a1 + 1));
    v7 = sub_297829740((a1 + 1));
    sub_2978D8DE8(*v7, v9);
  }

  return result;
}

uint64_t sub_2978D8A18(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978D8AC0(a1, a2);
  }

  else
  {
    sub_2978D8A58(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978D8A58(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v6, a1, 1);
  nullsub_1();
  sub_2978D8B64(a1, v4, a2);
  v7 += 24;
  return sub_297809E88(v6);
}

uint64_t sub_2978D8AC0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  v5 = sub_297809EBC(a1, v4 + 1);
  v6 = sub_297809AF0(a1);
  sub_297809F34(v10, v5, v6, a1);
  nullsub_1();
  sub_2978D8B64(a1, v7, a2);
  v11 += 24;
  sub_2978D8BB8(a1, v10);
  v8 = a1[1];
  sub_29782BB0C(v10);
  return v8;
}

void *sub_2978D8B78(void *a1, void *a2)
{
  *a1 = *a2;
  sub_2978D8BA8((a1 + 1), (a2 + 1));
  return a1;
}

void *sub_2978D8BAC(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  return result;
}

void sub_2978D8BB8(uint64_t *a1, uint64_t *a2)
{
  nullsub_1();
  v4 = a2[1] + *a1 - a1[1];
  nullsub_1();
  v6 = v5;
  nullsub_1();
  v8 = v7;
  nullsub_1();
  sub_2978D8C9C(a1, v6, v8, v9);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_297809AF0(a1);

  nullsub_1();
}

void sub_2978D8C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  sub_29780D0AC(&v9, a1, &v11, &v12);
  sub_29780D074(&v9, &v10);
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      nullsub_1();
      sub_2978D8B64(a1, v8, v7);
      v7 += 24;
      v12 += 24;
    }

    while (v7 != a3);
  }

  sub_29780CE64(&v10);
  sub_2978D8D54(a1, a2, a3);
  j_nullsub_1();
}

void sub_2978D8D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      nullsub_1();
      j_nullsub_1();
      v4 += 24;
    }

    while (v4 != a3);
  }
}

void *sub_2978D8DB4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_2978D8BA8((a1 + 1), a3);
  return a1;
}

uint64_t *sub_2978D8DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2978D8BA8(a2, a1);

  return sub_2978D68A0(a1);
}

void *sub_2978D8E30(void *a1, void *a2)
{
  v4 = sub_29780A32C(a1, a2);
  sub_2978D8E68((v4 + 1), (a2 + 1));
  return a1;
}

uint64_t *sub_2978D8E6C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  nullsub_1();
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_297809AF0(a2);
  sub_2978D8ECC(a1, v4, v5, v6);
  return a1;
}

void sub_2978D8ECC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4();
  sub_29780CD8C(v8, &v9);
  if (a4)
  {
    sub_297855EB4(a1, a4);
    sub_2978D8F54(a1, a2, a3, a4);
  }

  sub_29780CE64(&v9);
  j_nullsub_1();
}

uint64_t sub_2978D8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297809E80(v8, a1, a4);
  v9 = sub_2978D8FBC(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_2978D8FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2977FD8FC(a2, a3);
  v8 = v7;
  j_j_nullsub_1();
  v10 = sub_2978D9030(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

uint64_t sub_2978D9030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  sub_29780D0AC(&v10, a1, &v12, &v13);
  sub_29780D074(&v10, &v11);
  for (; a2 != a3; v13 += 24)
  {
    nullsub_1();
    sub_2978D8B64(a1, v7, a2);
    a2 += 24;
  }

  sub_29780CE64(&v11);
  v8 = v13;
  j_nullsub_1();
  return v8;
}

void *sub_2978D90E8(void *a1, uint64_t a2)
{
  v3 = sub_2977FE390(a1, a2);
  sub_297809B88((v3 + 1));
  return a1;
}

uint64_t sub_2978D9124(void *a1, void *a2)
{
  v3 = sub_297809AF0(a1);
  if (v3 != sub_297809AF0(a2))
  {
    return 0;
  }

  v4 = sub_29780A294();
  v5 = sub_297809B0C();
  v6 = sub_29780A294();

  return sub_2978D91B8(v4, v5, v6);
}

BOOL sub_2978D91BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29780C8A4(a1);
  v6 = sub_29780C8A4(a2);
  v7 = sub_29780C8A4(a3);
  return sub_2978D9220(v5, v6, v7, &v9);
}

BOOL sub_2978D9220(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1;
  do
  {
    result = sub_2978D928C(a4, v7, a3);
    if (!result)
    {
      break;
    }

    v7 += 3;
    a3 += 3;
  }

  while (v7 != a2);
  return result;
}

BOOL sub_2978D92E0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = a1;
  v2 = sub_297803A7C(&v5);
  return v2 == sub_297803A7C(&v4);
}

uint64_t sub_2978D933C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = sub_2978D93C0();
  sub_29784CE50(v7, &v9);
  sub_29788B48C(v8, v4, v7);
  v5 = sub_2977FB720(v8);
  sub_2978D93C4(v5, a2);
  *(a1 + 24) = sub_2978058AC(v8);
  sub_29788B490(v8);
  return a1;
}

void *sub_2978D93C8(void *a1, uint64_t a2)
{
  v4 = sub_2978D9418(a1);
  *v4 = &unk_2A1E57E50;
  sub_29789EEE0((v4 + 1), a2);
  return a1;
}

void sub_2978D943C()
{
  j_j_nullsub_1_124();

  j__free(v0);
}

uint64_t sub_2978D9464(uint64_t a1)
{
  v2 = sub_2978D93C0();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_2978D93C4(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978D9514(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  sub_2978040A4(*a1, &v19);
  sub_297806EC8(v18);
  v3 = sub_2978BE260(*(a1 + 8));
  v15 = sub_297828314(v19);
  v16 = v4;
  sub_2978036E8();
  v13[0] = sub_297828314(v19);
  v13[1] = v5;
  sub_2977FB7B4(v17, "_");
  if (sub_297807C54(v13, v17[0], v17[1]))
  {
    sub_2978036E0(v14, &byte_2978FC3E5);
  }

  else
  {
    sub_2978036E0(v12, "_");
    v6 = sub_2978D74AC(**(a1 + 16));
    sub_2978B5D7C(v11, v6);
    sub_297807128();
  }

  sub_297807128();
  v7 = sub_297812A04(v17, v18);
  v9 = sub_297828D2C(v3, v7, v8);
  sub_297801F60(v18);
  return v9;
}

uint64_t sub_2978D9644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2978D98F0@<X0>(uint64_t a1@<X8>)
{
  nullsub_1();

  return sub_2978D9930(a1, v2);
}

uint64_t sub_2978D9934(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978B78F8(a1);
  sub_297809B88(v4 + 96);
  sub_2978B7978(a1);
  sub_2978BD8A0(v7, a2, 0);
  sub_2978D8924(a2, v6);
  sub_2978D8914(v7, v6, v8);
  sub_2978D8910(a1 + 96, v8);
  return a1;
}

uint64_t sub_2978D99C0(uint64_t a1)
{
  v2 = sub_2978B78F8(a1);
  sub_297809B88(v2 + 96);
  return a1;
}

uint64_t sub_2978D99FC(void *a1, void *a2)
{
  v3 = sub_297809AF0(a1);
  if (v3 != sub_297809AF0(a2))
  {
    return 0;
  }

  v4 = sub_29780A294();
  v5 = sub_297809B0C();
  v6 = sub_29780A294();

  return sub_2978D9A90(v4, v5, v6);
}

BOOL sub_2978D9A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29780C8A4(a1);
  v6 = sub_29780C8A4(a2);
  v7 = sub_29780C8A4(a3);
  return sub_2978D9AF8(v5, v6, v7, &v9);
}

BOOL sub_2978D9AF8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v7 = a1;
  do
  {
    result = sub_2978D9B64(a4, v7, a3);
    if (!result)
    {
      break;
    }

    v7 += 3;
    a3 += 3;
  }

  while (v7 != a2);
  return result;
}

BOOL sub_2978D9B70(void *a1, void *a2)
{
  result = sub_297815520(a1, a2);
  if (result)
  {

    return sub_2978D92BC(a1 + 1, a2 + 1);
  }

  return result;
}

uint64_t sub_2978D9BC0(uint64_t a1)
{
  while (1)
  {
    v2 = sub_297829740(a1 + 96);
    sub_29783D408();
    v4 = v3;
    if (!sub_2978BA7DC(v2))
    {
      sub_2978D8924(v4, v10);
      sub_2978D8BAC(v2 + 1, v10);
      sub_2978C6E50(v2, 1u);
    }

    sub_2978D8DE8(v4, v10);
    if (sub_2978D6840(v2 + 1, v10))
    {
      break;
    }

LABEL_7:
    sub_2978D9324((a1 + 96));
    result = sub_297806904((a1 + 96));
    if (result)
    {
      return result;
    }
  }

  while (1)
  {
    sub_2978D8DEC(v2 + 1, v10);
    v5 = sub_2978D685C(v10);
    if (v5)
    {
      v6 = v5;
      if (!sub_2978B7944(a1))
      {
        break;
      }
    }

    sub_2978D8DE8(v4, v10);
    if (!sub_2978D6840(v2 + 1, v10))
    {
      goto LABEL_7;
    }
  }

  sub_2978B7978(a1);
  sub_2978BD8A0(v9, v6, 0);
  sub_2978D8924(v6, v8);
  sub_2978D8914(v9, v8, v10);
  return sub_2978D8910(a1 + 96, v10);
}

void sub_2978D9CF8(uint64_t a1)
{
  sub_297829740(a1 + 96);

  sub_29783D408();
}

uint64_t fosl_filter_kernelpool_createPool()
{
  v0 = sub_2977FA198();

  return sub_2978D9D58(v0);
}

uint64_t fosl_filter_kernelpool_hasError(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_29786AC48(v1);
}

uint64_t fosl_filter_kernelpool_addLibrary(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978DCDC8(v3, v5[0], v5[1]);
}

uint64_t fosl_filter_kernelpool_addString(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978DC3A4(v3, v5[0], v5[1]);
}

void fosl_filter_kernelpool_destroyPool(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978D9E44();

    j__free(v1);
  }
}

uint64_t fosl_filter_kernelpool_getNumKernels(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_2978D9E70(v1);
}

uint64_t fosl_filter_kernelpool_getNumDiagnostics(uint64_t a1)
{
  v1 = sub_297829064(a1);

  return sub_2978DCF34(v1);
}

uint64_t fosl_filter_kernelpool_lookupKernel(uint64_t a1, char *a2)
{
  v3 = sub_297829064(a1);
  sub_2977FB7B4(v5, a2);
  return sub_2978D9EE4(v3, v5[0], v5[1]);
}

uint64_t fosl_filter_kernelpool_getKernelByIdx(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_297829064(a1);

  return sub_2978D9F3C(v3, v2);
}

_DWORD *fosl_filter_kernelpool_getDiagnosticByIdx(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_297829064(a1);

  return sub_2978DCF80(v3, v2);
}

uint64_t fosl_filter_kernelpool_getKernelReturnType(uint64_t a1)
{
  v5 = sub_2978735BC(*(a1 + 8));
  v1 = sub_2977FB720(&v5);
  v2 = sub_297888658(v1);
  v3 = sub_29788862C(v2);
  return sub_2978D9FE4(v3);
}

uint64_t fosl_filter_kernelpool_getKernelDimensionality(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 2) & 7) == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (((v1 >> 2) & 7) != 0)
  {
    return v2;
  }

  else
  {
    return -1;
  }
}

uint64_t fosl_filter_kernelpool_getParamName(uint64_t a1, unsigned int a2)
{
  v2 = sub_2978DA074((a1 + 48), a2);

  return sub_2977FB720(v2);
}

uint64_t fosl_filter_kernelpool_getParamType(uint64_t a1, unsigned int a2)
{
  v3 = *(sub_2978DA074((a1 + 48), a2) + 16);
  v4 = (v3 >> 7) & 3;
  if (v4)
  {
    v5 = sub_2978DA0F4(v4);
  }

  else
  {
    v5 = sub_2978D9FE4(v3 & 0x7F);
  }

  v6 = v5;
  v7 = sub_29786E230(*(a1 + 8));
  if (v6 == 10)
  {
    v8 = 9;
  }

  else
  {
    v8 = v6;
  }

  if (v8 == 26)
  {
    v8 = 25;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t fosl_filter_kernelpool_getAttributeKeyword(uint64_t a1, unsigned int a2)
{
  v2 = sub_2978BA9D0((a1 + 120), a2);
  v5[0] = sub_297815F90(*v2);
  v5[1] = v3;
  return sub_2977FB720(v5);
}

uint64_t fosl_filter_kernelpool_getAttributeParameters(uint64_t a1, unsigned int a2)
{
  v2 = *sub_2978BA9D0((a1 + 120), a2);

  return sub_297805510(v2);
}

BOOL fosl_filter_kernelpool_hasAttributeParameters(uint64_t a1, unsigned int a2)
{
  v2 = *sub_2978BA9D0((a1 + 120), a2);

  return sub_297888B50(v2);
}

uint64_t fosl_filter_createGraph()
{
  v0 = sub_2977FA198();

  return sub_2978DA1E8(v0);
}

void fosl_filter_destroyGraph(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978DA21C();

    j__free(v1);
  }
}

void *fosl_filter_assignRoot(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2977FE390(v3, a2);
}

uint64_t fosl_filter_addLibraryFunction(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA290(v3, a2);
}

uint64_t fosl_filter_addChild(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29781BF50(a2);
  v6 = sub_2978D65BC(a1);

  return sub_2978DA314(v6, v5, a3);
}

uint64_t fosl_filter_createKernel(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 0, 0);
}

uint64_t sub_2978DA368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29780406C(a1 + 176);
  v9 = sub_2978DB264((a1 + 40), v8, a2, a3, a4);
  v11 = v9;
  sub_2978040A4(a1 + 176, &v11);
  return v9;
}

uint64_t fosl_filter_createSampler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA4A0(v3);

  return sub_2978DA434(v5, a2, v6);
}

uint64_t sub_2978DA434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB398((a1 + 40), v6, a2, a3);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}

uint64_t fosl_filter_createImage(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA4A0(a3);

  return sub_2978DA504(v5, a2, v6);
}

uint64_t sub_2978DA504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB464((a1 + 40), v6, a2, a3);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}

uint64_t fosl_filter_createConstant(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = sub_2978D65BC(a1);
  v8 = sub_2978DA644(v5);

  return sub_2978DA5D0(v7, a2, v8, a4);
}

uint64_t sub_2978DA5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29780406C(a1 + 176);
  v9 = sub_2978DB530((a1 + 40), v8, a2, a3, a4);
  v11 = v9;
  sub_2978040A4(a1 + 176, &v11);
  return v9;
}

uint64_t sub_2978DA644(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 3;
  }

  else
  {
    return dword_2978FC334[a1 - 1];
  }
}

uint64_t fosl_filter_createUniform(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_2978D65BC(a1);
  v6 = sub_2978DA644(a3);

  return sub_2978DA6C0(v5, a2, v6);
}

uint64_t sub_2978DA6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29780406C(a1 + 176);
  v7 = sub_2978DB618((a1 + 40), v6, a2, a3, 0);
  v9 = v7;
  sub_2978040A4(a1 + 176, &v9);
  return v7;
}