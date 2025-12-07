void *sub_297893AE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_297890404(a1, a4);
  sub_2978970FC(v7, *(a1 + 8), a2, a3);
  return v7;
}

float sub_297893B60(int a1, unsigned int a2)
{
  if (a1 > 5)
  {
    if (a1 == 6)
    {
      return a2;
    }

    else
    {
      result = 0.0;
      if (a2)
      {
        return 1.0;
      }
    }
  }

  else if ((a1 - 3) >= 2)
  {
    return a2;
  }

  else
  {
    return *&a2;
  }

  return result;
}

uint64_t sub_297893BA8(int a1, unsigned int a2)
{
  v2 = a2 & 1;
  if ((a1 - 5) < 2)
  {
    v2 = a2;
  }

  if (a1 <= 4)
  {
    return *&a2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_297893BD4(int a1, unsigned int a2)
{
  v2 = a2 & 1;
  if ((a1 - 5) < 2)
  {
    v2 = a2;
  }

  if (a1 <= 4)
  {
    return *&a2;
  }

  else
  {
    return v2;
  }
}

BOOL sub_297893C00(int a1, uint64_t a2)
{
  v2 = a2 != 0;
  v3 = a2 != 0;
  if (a1 != 6)
  {
    v3 = a2;
  }

  if (a1 != 5)
  {
    v2 = v3;
  }

  v4 = *&a2 != 0.0;
  if (a1 != 3)
  {
    v4 = *&a2 != 0.0;
  }

  if (a1 <= 4)
  {
    return v4;
  }

  return v2;
}

uint64_t sub_297893C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  if (!sub_2978903F4(v5))
  {
    v6 = sub_2977FD5B0(a2);
    v22 = sub_29788C170(v6);
    v7 = sub_2977FB720(&v22);
    v8 = sub_297890568(v7);
    v9 = sub_2977FB7B8(v8);
    v10 = sub_297803A7C(v9 + 16);
    sub_297888490(v9 + 16);
    v11 = 0;
    while (1)
    {
      v12 = *v10;
      v13 = sub_2978862BC(*v10);
      v14 = sub_2978862C0(v12);
      if (v13 != v14)
      {
        break;
      }

LABEL_7:
      ++v10;
    }

    v15 = v14;
    while (1)
    {
      v16 = sub_29788709C(*v13);
      v18 = v17;
      v19 = sub_29788A810(a2);
      if (sub_297804D28(v16, v18, v19, v20))
      {
        return *sub_29782DEAC(v5, v11);
      }

      ++v11;
      if (++v13 == v15)
      {
        goto LABEL_7;
      }
    }
  }

  return v5;
}

_DWORD *sub_297893D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  if (!sub_2978903F4(v5))
  {
    v19[0] = sub_29788A810(a2);
    v19[1] = v6;
    if (sub_2977FB7B8(v19) == 1)
    {
      v7 = sub_297803A20(v19, 0);
      v8 = sub_2978A3BB4(v7);
      v9 = sub_297887A44(v5, v8);
      return sub_297893E98(a1, *v9);
    }

    else
    {
      v10 = sub_297890404(a1, 3);
      v11 = sub_2977FB720(v19);
      v12 = sub_2977FB728(v19);
      if (v11 != v12)
      {
        v13 = v12;
        v14 = 0;
        do
        {
          v15 = *v11++;
          v16 = sub_2978A3BB4(v15);
          v17 = sub_297887A44(v5, v16);
          *sub_297887A44(v10, v14++) = *v17;
        }

        while (v11 != v13);
      }
    }

    return v10;
  }

  return v5;
}

_DWORD *sub_297893E98(uint64_t a1, int a2)
{
  result = sub_297890404(a1, 1);
  *result = a2;
  return result;
}

unsigned int *sub_297893EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FD5B0(a2);
  v5 = sub_297890358(a1, v4);
  v6 = sub_29783CFFC(a2);
  v7 = sub_297890358(a1, v6);
  if (!sub_2978903F4(v5))
  {
    if (sub_2978903F4(v7))
    {
      return v7;
    }

    v8 = sub_2977FD5B0(a2);
    v36 = sub_29788C170(v8);
    v9 = sub_2977FB720(&v36);
    if (sub_2978876EC(v9))
    {
      v10 = sub_29783CFFC(a2);
      v36 = sub_29788C170(v10);
      v11 = sub_2977FB720(&v36);
      v12 = sub_2978875FC(v11);
      sub_29788862C(v12);
      v13 = sub_297887A44(v5, *v7);
      return sub_297893E98(a1, *v13);
    }

    v15 = sub_2977FD5B0(a2);
    v36 = sub_29788C170(v15);
    v16 = sub_2977FB720(&v36);
    v17 = sub_2978877CC(v16);
    if (!v17)
    {
      v29 = sub_2977FD5B0(a2);
      v36 = sub_29788C170(v29);
      v30 = sub_297891438(&v36);
      v31 = sub_29783CFFC(a2);
      v36 = sub_29788C170(v31);
      v32 = sub_2977FB720(&v36);
      v33 = sub_2978875FC(v32);
      sub_29788862C(v33);
      v34 = *v7;
      if (v34 < sub_29782AFB0(v30))
      {
        return *sub_29782DEAC(v5, v34);
      }

      return sub_297891404(a1, a2);
    }

    v18 = v17;
    v19 = sub_297890404(a1, 3);
    v20 = sub_29783CFFC(a2);
    v36 = sub_29788C170(v20);
    v21 = sub_2977FB720(&v36);
    v22 = sub_2978875FC(v21);
    sub_29788862C(v22);
    v23 = *v7;
    v24 = sub_297887B08(v18);
    if (v24)
    {
      v25 = 0;
      v26 = v5 + 16 * v23;
      v27 = v24;
      do
      {
        v28 = sub_297887A44(v26, v25);
        *sub_297887A44(v19, v25++) = *v28;
      }

      while (v27 != v25);
    }

    return v19;
  }

  return v5;
}

uint64_t sub_2978940CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FD5B0(a2);
  v14 = sub_29788C170(v3);
  v4 = sub_297891438(&v14);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = sub_2977FB720(&v14);
  result = sub_2978876EC(v6);
  if (result)
  {
    goto LABEL_6;
  }

  v8 = sub_2977FB720(&v14);
  result = sub_2978877CC(v8);
  if (result)
  {
    goto LABEL_6;
  }

  v9 = sub_2977FB720(&v14);
  v10 = sub_297888660(v9);
  v13 = sub_2977FB7B8(v10);
  v4 = sub_297891438(&v13);
  if (v4)
  {
LABEL_2:
    v5 = sub_29782AFB0(v4);
    return sub_297890DC0(a1, v5);
  }

  v13 = sub_2977FB7B8(v10);
  v11 = sub_2977FB720(&v13);
  result = sub_2978876EC(v11);
  if (result || (v13 = sub_2977FB7B8(v10), v12 = sub_2977FB720(&v13), (result = sub_2978877CC(v12)) != 0))
  {
LABEL_6:
    v5 = sub_297887A38(result);
    return sub_297890DC0(a1, v5);
  }

  return result;
}

float *sub_2978941B0(uint64_t a1, uint64_t a2)
{
  v263 = *MEMORY[0x29EDCA608];
  switch(sub_29788A888(a2))
  {
    case 1u:
      sub_297895DE0(v262);
      v2 = sub_297895D20(a1, a2, v262);
      v5 = v262;
      goto LABEL_179;
    case 2u:
      sub_297895DE8(v261);
      v2 = sub_297895D20(a1, a2, v261);
      v5 = v261;
      goto LABEL_179;
    case 3u:
      sub_297895DEC(v260);
      v2 = sub_297895D20(a1, a2, v260);
      v5 = v260;
      goto LABEL_179;
    case 4u:
      sub_297895DF0(v259);
      v2 = sub_297895D20(a1, a2, v259);
      v5 = v259;
      goto LABEL_179;
    case 5u:
      sub_297895DF4(v258);
      v2 = sub_297895D20(a1, a2, v258);
      v5 = v258;
      goto LABEL_179;
    case 6u:
      sub_297895DF8(v257);
      v2 = sub_297895D20(a1, a2, v257);
      v5 = v257;
      goto LABEL_179;
    case 7u:
      sub_297895DFC(v256);
      v2 = sub_297895D20(a1, a2, v256);
      v5 = v256;
      goto LABEL_179;
    case 8u:
      sub_297895F04(v255);
      v2 = sub_297895E00(a1, a2, v255);
      v22 = v255;
      goto LABEL_226;
    case 9u:
      sub_297895F08(v254);
      v2 = sub_297895D20(a1, a2, v254);
      v5 = v254;
      goto LABEL_179;
    case 0xAu:
      sub_297895F0C(v253);
      v2 = sub_297895D20(a1, a2, v253);
      v5 = v253;
      goto LABEL_179;
    case 0xBu:
      sub_297895F10(v252);
      v2 = sub_297895D20(a1, a2, v252);
      v5 = v252;
      goto LABEL_179;
    case 0xCu:
      sub_297895F14(v251);
      v2 = sub_297895D20(a1, a2, v251);
      v5 = v251;
      goto LABEL_179;
    case 0xDu:
      sub_297895F18(v250);
      v2 = sub_297895D20(a1, a2, v250);
      v5 = v250;
      goto LABEL_179;
    case 0xEu:
      sub_297895F1C(v249);
      v2 = sub_297895D20(a1, a2, v249);
      v5 = v249;
      goto LABEL_179;
    case 0xFu:
      sub_297895F20(v248);
      v2 = sub_297895D20(a1, a2, v248);
      v5 = v248;
      goto LABEL_179;
    case 0x10u:
      sub_297895F24(v247);
      v2 = sub_297895E00(a1, a2, v247);
      v22 = v247;
      goto LABEL_226;
    case 0x11u:
      sub_297895F28(v246);
      v2 = sub_297895D20(a1, a2, v246);
      v5 = v246;
      goto LABEL_179;
    case 0x12u:
      sub_297895F2C(v245);
      v2 = sub_297895D20(a1, a2, v245);
      v5 = v245;
      goto LABEL_179;
    case 0x13u:
      sub_297895F30(v244);
      v2 = sub_297895D20(a1, a2, v244);
      v5 = v244;
      goto LABEL_179;
    case 0x14u:
      sub_297895F34(v243);
      v2 = sub_297895D20(a1, a2, v243);
      v5 = v243;
      goto LABEL_179;
    case 0x15u:
      sub_297895F38(v242);
      v2 = sub_297895D20(a1, a2, v242);
      v5 = v242;
      goto LABEL_179;
    case 0x16u:
      sub_297895F3C(v241);
      v2 = sub_297895D20(a1, a2, v241);
      v5 = v241;
      goto LABEL_179;
    case 0x17u:
      v111 = sub_2977FD5B0(a2);
      if (sub_297895F40(v111))
      {
        sub_297895F88(v240);
        v2 = sub_297895D20(a1, a2, v240);
        v5 = v240;
      }

      else
      {
        sub_297895F8C(v239);
        v2 = sub_297895D20(a1, a2, v239);
        v5 = v239;
      }

      goto LABEL_179;
    case 0x18u:
      v112 = sub_2977FD5B0(a2);
      if (sub_297895F40(v112))
      {
        sub_297895F90(v238);
        v2 = sub_297895D20(a1, a2, v238);
        v5 = v238;
      }

      else
      {
        sub_297895F94(v237);
        v2 = sub_297895D20(a1, a2, v237);
        v5 = v237;
      }

      goto LABEL_179;
    case 0x19u:
      sub_297895F98(v236);
      v2 = sub_297895D20(a1, a2, v236);
      v5 = v236;
      goto LABEL_179;
    case 0x1Au:
      sub_297895F9C(v235);
      v2 = sub_297895D20(a1, a2, v235);
      v5 = v235;
      goto LABEL_179;
    case 0x1Bu:
      sub_297895FA0(v234);
      v2 = sub_297895D20(a1, a2, v234);
      v5 = v234;
      goto LABEL_179;
    case 0x1Cu:
      sub_297895FA4(v233);
      v2 = sub_297895D20(a1, a2, v233);
      v5 = v233;
      goto LABEL_179;
    case 0x1Du:
      sub_297895FA8(v232);
      v2 = sub_297895D20(a1, a2, v232);
      v5 = v232;
      goto LABEL_179;
    case 0x1Eu:
      sub_297895FAC(v231);
      v2 = sub_297895D20(a1, a2, v231);
      v5 = v231;
      goto LABEL_179;
    case 0x1Fu:
      sub_297895FB0(v230);
      v2 = sub_297895E00(a1, a2, v230);
      v22 = v230;
      goto LABEL_226;
    case 0x20u:
      v98 = *sub_29788A818(a2 + 8, 1u);

      return sub_297891404(a1, v98);
    case 0x21u:
      v104 = sub_2977FD5B0(a2);
      if (sub_297895F40(v104))
      {
        sub_297895FB4(v229);
        v2 = sub_297895E00(a1, a2, v229);
        v22 = v229;
      }

      else
      {
        v148 = sub_2977FD5B0(a2);
        if (sub_297895FB8(v148))
        {
          sub_297896000(v228);
          v2 = sub_297895E00(a1, a2, v228);
          v22 = v228;
        }

        else
        {
          sub_297896004(v227);
          v2 = sub_297895E00(a1, a2, v227);
          v22 = v227;
        }
      }

      goto LABEL_226;
    case 0x22u:
      v53 = sub_2977FD5B0(a2);
      if (sub_297895F40(v53))
      {
        sub_297896008(v226);
        v2 = sub_297895E00(a1, a2, v226);
        v22 = v226;
      }

      else
      {
        v143 = sub_2977FD5B0(a2);
        if (sub_297895FB8(v143))
        {
          sub_29789600C(v225);
          v2 = sub_297895E00(a1, a2, v225);
          v22 = v225;
        }

        else
        {
          sub_297896010(v224);
          v2 = sub_297895E00(a1, a2, v224);
          v22 = v224;
        }
      }

      goto LABEL_226;
    case 0x23u:
      v47 = sub_2977FD5B0(a2);
      if (sub_297895F40(v47))
      {
        sub_2978963D0(v223);
        v2 = sub_297896014(a1, a2, v223);
        v38 = v223;
      }

      else
      {
        v140 = sub_2977FD5B0(a2);
        if (sub_297895FB8(v140))
        {
          sub_2978963D8(v222);
          v2 = sub_297896014(a1, a2, v222);
          v38 = v222;
        }

        else
        {
          sub_2978963DC(v221);
          v2 = sub_297896014(a1, a2, v221);
          v38 = v221;
        }
      }

      goto LABEL_192;
    case 0x24u:
      sub_2978963E0(v220);
      v2 = sub_297896014(a1, a2, v220);
      v38 = v220;
      goto LABEL_192;
    case 0x25u:
      v39 = sub_29788A818(a2 + 8, 0);
      v40 = sub_297890358(a1, *v39);
      v41 = sub_29788A818(a2 + 8, 1u);
      v42 = sub_297890358(a1, *v41);
      v43 = sub_29788A818(a2 + 8, 2u);
      v44 = sub_297890358(a1, *v43);
      v2 = v40;
      if (!sub_2978903F4(v40))
      {
        v2 = v42;
        if (!sub_2978903F4(v42))
        {
          if (sub_2978903F4(v44))
          {
            return v44;
          }

          else
          {
            v183[0] = sub_2977FD5B0(a2);
            v170 = sub_2977FB720(v183);
            if (sub_297890438(v170))
            {
              if (*v44)
              {
                return v42;
              }

              else
              {
                return v40;
              }
            }

            else
            {
              v174 = sub_2977FB720(v183);
              v175 = sub_297890568(v174);
              v2 = sub_297890404(a1, 3);
              v176 = sub_297887A38(v175);
              if (v176)
              {
                v177 = 0;
                v178 = v176;
                do
                {
                  if (*sub_297887A44(v44, v177))
                  {
                    v179 = v42;
                  }

                  else
                  {
                    v179 = v40;
                  }

                  v180 = sub_297887A44(v179, v177);
                  *sub_297887A44(v2, v177++) = *v180;
                }

                while (v178 != v177);
              }
            }
          }
        }
      }

      return v2;
    case 0x26u:
      sub_2978963E4(v219);
      v2 = sub_297895E00(a1, a2, v219);
      v22 = v219;
      goto LABEL_226;
    case 0x27u:
      sub_2978963E8(v218);
      v2 = sub_297896014(a1, a2, v218);
      v38 = v218;
LABEL_192:
      sub_2978963D4(v38);
      return v2;
    case 0x28u:
      sub_2978963EC(v217);
      v2 = sub_297895D20(a1, a2, v217);
      v5 = v217;
      goto LABEL_179;
    case 0x29u:
      sub_2978963F0(v216);
      v2 = sub_297895D20(a1, a2, v216);
      v5 = v216;
      goto LABEL_179;
    case 0x2Au:
    case 0x2Bu:
      sub_2978963F4(v215);
      v2 = sub_297895D20(a1, a2, v215);
      v5 = v215;
      goto LABEL_179;
    case 0x2Cu:
    case 0x2Du:
      sub_2978963F8(v214);
      v2 = sub_297895D20(a1, a2, v214);
      v5 = v214;
      goto LABEL_179;
    case 0x2Eu:
      v100 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v100);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      for (i = 0; i != 2; ++i)
      {
        v102 = sub_297887A44(v2, i);
        *(v183 + i) = llroundf(sub_2978963FC(*v102, -1.0, 1.0) * 32767.0);
      }

      goto LABEL_112;
    case 0x2Fu:
      v28 = sub_297890404(a1, 3);
      v119 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v119);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v120 = 0;
      *v183 = *v2;
      do
      {
        v121 = sub_2978963FC(*(v183 + v120) / 32767.0, -1.0, 1.0);
        *sub_297887A44(v28, v120++) = v121;
      }

      while (v120 != 2);
      return v28;
    case 0x30u:
      v17 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v17);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      for (j = 0; j != 2; ++j)
      {
        v19 = sub_297887A44(v2, j);
        *(v183 + j) = llroundf(sub_2978963FC(*v19, 0.0, 1.0) * 65535.0);
      }

LABEL_112:
      v59 = LODWORD(v183[0]);
      return sub_297890DC0(a1, v59);
    case 0x31u:
      v28 = sub_297890404(a1, 3);
      v50 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v50);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v52 = 0;
      *v183 = *v2;
      do
      {
        LOWORD(v51) = *(v183 + v52);
        *sub_297887A44(v28, v52++) = v51 / 65535.0;
      }

      while (v52 != 2);
      return v28;
    case 0x32u:
      v57 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v57);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      for (k = 0; k != 2; ++k)
      {
        sub_297887A44(v2, k);
        sub_2977FC6C4(v183);
        LOBYTE(v181) = 0;
        sub_2977FAB30(v183, &unk_2978F4C30, 0, &v181);
        sub_2977FA998(v183, v182);
        *&v185[2 * k - 4] = sub_2977FCF34(v182);
        sub_2977FAA04();
        sub_2977FA598();
      }

      v59 = LODWORD(v184);
      return sub_297890DC0(a1, v59);
    case 0x33u:
      v28 = sub_297890404(a1, 3);
      v131 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v131);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v132 = 0;
      v184 = *v2;
      do
      {
        sub_2977FB51C();
        sub_2977FC104(v183, &unk_2978F4C30, v182);
        sub_2977FAA04();
        LOBYTE(v182[0]) = 0;
        sub_2977FAB30(v183, &unk_2978F4C38, 0, v182);
        v133 = sub_2977FBD9C(v183);
        *sub_297887A44(v28, v132) = v133;
        sub_2977FA598();
        ++v132;
      }

      while (v132 != 2);
      return v28;
    case 0x34u:
      v128 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v128);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v129 = sub_29789056C(a2 + 8);
      v130 = sub_29788C170(*v129);
      v31 = sub_297896434(v130, v2);
      goto LABEL_151;
    case 0x35u:
      v122 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v122);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v123 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v123);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v124 = sub_29789056C(a2 + 8);
      v125 = sub_29788C170(*v124);
      sub_2978965E8(v213);
      v2 = sub_297896454(a1, v125, v2, v28, v213);
      sub_297890574(v213);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v126 = sub_297803A7C(a2 + 8);
      v127 = sub_29788C170(*v126);
      v97 = sub_297896434(v127, v2);
      return sub_297890D28(a1, v97);
    case 0x36u:
      v26 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v26);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v27 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v27);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v29 = sub_29789056C(a2 + 8);
      v30 = sub_29788C170(*v29);
      v31 = sub_2978965EC(v30, v2, v28);
LABEL_151:

      return sub_297890D28(a1, v31);
    case 0x37u:
      v113 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v113);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v114 = sub_29788A818(a2 + 8, 1u);
      v115 = sub_297890358(a1, *v114);
      if (sub_2978903F4(v115))
      {
        return v115;
      }

      v62 = sub_297890404(a1, 3);
      v159 = 0;
      v160 = 2;
      do
      {
        v161 = v160 % 3;
        v162 = v159 + 1;
        if (v159 == 2)
        {
          v163 = 0;
        }

        else
        {
          v163 = v159 + 1;
        }

        v164 = *sub_297887A44(v2, v163);
        v165 = *sub_297887A44(v115, v161);
        v166 = *sub_297887A44(v115, v163);
        v167 = (v164 * v165) - (v166 * *sub_297887A44(v2, v161));
        *sub_297887A44(v62, v159) = v167;
        ++v160;
        ++v159;
      }

      while (v162 != 3);
      return v62;
    case 0x38u:
      v116 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v116);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v117 = sub_2977FD5B0(a2);
      LODWORD(v183[0]) = sub_297896434(v117, v2);
      v118 = sub_2977FD5B0(a2);
      sub_2978967A8(v212, v183);
      v2 = sub_2978966B0(a1, v118, v2, v212);
      v5 = v212;
      goto LABEL_179;
    case 0x39u:
      v32 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v32);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v33 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v33);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v34 = sub_29788A818(a2 + 8, 2u);
      v35 = sub_297890358(a1, *v34);
      if (sub_2978903F4(v35))
      {
        return v35;
      }

      v36 = sub_2977FD5B0(a2);
      LOBYTE(v183[0]) = sub_2978965EC(v36, v35, v28) < 0.0;
      v37 = sub_2977FD5B0(a2);
      sub_2978967AC(v211, v183);
      v2 = sub_2978966B0(a1, v37, v2, v211);
      v5 = v211;
      goto LABEL_179;
    case 0x3Au:
      v105 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v105);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v106 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v106);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v107 = sub_2977FD5B0(a2);
      v108 = sub_2978965EC(v107, v28, v2);
      *v183 = v108 + v108;
      sub_2978967B0(v210, v183);
      v2 = sub_297895E00(a1, a2, v210);
      v22 = v210;
      goto LABEL_226;
    case 0x3Bu:
      v54 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v54);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v55 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v55);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v56 = sub_29788A818(a2 + 8, 2u);
      v35 = sub_297890358(a1, *v56);
      if (sub_2978903F4(v35))
      {
        return v35;
      }

      v182[0] = *v35;
      v171 = sub_2977FD5B0(a2);
      v184 = sub_2978965EC(v171, v28, v2);
      v172 = 1.0 - (v182[0] * v182[0]) * (1.0 - (v184 * v184));
      v181 = v172;
      v173 = sub_2977FD5B0(a2);
      if (v172 >= 0.0)
      {
        v183[0] = &v181;
        v183[1] = v182;
        v183[2] = &v184;
        sub_2978967B8(v208, v183);
        v2 = sub_297896454(a1, v173, v2, v28, v208);
        v22 = v208;
LABEL_226:
        sub_297890574(v22);
      }

      else
      {
        sub_2978967B4(v209);
        v2 = sub_2978966B0(a1, v173, v2, v209);
        v5 = v209;
LABEL_179:
        sub_297895DE4(v5);
      }

      return v2;
    case 0x3Cu:
      v183[0] = sub_2977FD5B0(a2);
      v109 = sub_2977FB720(v183);
      v110 = sub_297890568(v109);
      sub_2977FB7B8(v110);
      sub_2977FDEF4();
      if (sub_297892D08(v183[0], 3))
      {
        sub_2978967BC(v207);
        v2 = sub_297890490(a1, a2, v207);
        v22 = v207;
      }

      else
      {
        sub_2977FB7B8(v110);
        sub_2977FDEF4();
        sub_297892D08(v183[0], 4);
        sub_2978967C0(v206);
        v2 = sub_297890490(a1, a2, v206);
        v22 = v206;
      }

      goto LABEL_226;
    case 0x3Du:
      v60 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v60);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v61 = sub_29788A818(a2 + 8, 1u);
      v28 = sub_297890358(a1, *v61);
      if (sub_2978903F4(v28))
      {
        return v28;
      }

      v62 = sub_297890404(a1, 4);
      v183[0] = sub_2977FD5B0(a2);
      v63 = sub_2977FB720(v183);
      v64 = sub_297890568(v63);
      v65 = sub_297887A38(v64);
      if (v65)
      {
        v66 = 0;
        v67 = v65;
        do
        {
          v68 = sub_297887B08(v64);
          if (v68)
          {
            v69 = 0;
            v70 = v68;
            do
            {
              v71 = *sub_297887A44(v2, v69);
              v72 = v71 * *sub_297887A44(v28, v66);
              *sub_297887A44(v62 + 16 * v66, v69++) = v72;
            }

            while (v70 != v69);
          }

          ++v66;
        }

        while (v66 != v67);
      }

      return v62;
    case 0x3Eu:
      v77 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v77);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v62 = sub_297890404(a1, 4);
      v183[0] = sub_2977FD5B0(a2);
      v78 = sub_2977FB720(v183);
      v79 = sub_297890568(v78);
      v80 = sub_297887A38(v79);
      if (v80)
      {
        v81 = 0;
        v82 = v80;
        do
        {
          v83 = sub_297887B08(v79);
          if (v83)
          {
            v84 = 0;
            v85 = v2;
            v86 = v83;
            do
            {
              v87 = *sub_297887A44(v85, v81);
              *sub_297887A44(v62 + 16 * v81, v84++) = v87;
              v85 += 16;
            }

            while (v86 != v84);
          }

          ++v81;
        }

        while (v81 != v82);
      }

      return v62;
    case 0x3Fu:
      v90 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v90);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v91 = sub_29789056C(a2 + 8);
      v183[0] = sub_29788C170(*v91);
      v92 = sub_2977FB720(v183);
      v93 = sub_297890568(v92);
      v94 = sub_297887A38(v93);
      v95 = (v2 + 4);
      if (v94 == 2)
      {
        v97 = sub_2978967C4(v2, v95, 0);
      }

      else
      {
        v96 = (v2 + 8);
        if (v94 == 3)
        {
          v97 = sub_297896850(v2, v95, v96, 0);
        }

        else
        {
          v97 = sub_29789690C(v2, v95, v96, (v2 + 12));
        }
      }

      return sub_297890D28(a1, v97);
    case 0x40u:
      v75 = sub_29789056C(a2 + 8);
      v76 = sub_297890358(a1, *v75);
      if (sub_2978903F4(v76))
      {
        return v76;
      }

      else
      {
        return 0;
      }

    case 0x41u:
      v73 = sub_29789056C(a2 + 8);
      v74 = sub_29788C170(*v73);
      if (sub_297895F40(v74))
      {
        sub_2978969F8(v205);
        v2 = sub_297895E00(a1, a2, v205);
        v22 = v205;
      }

      else
      {
        v144 = sub_29789056C(a2 + 8);
        v145 = sub_29788C170(*v144);
        if (sub_297895FB8(v145))
        {
          sub_2978969FC(v204);
          v2 = sub_297895E00(a1, a2, v204);
          v22 = v204;
        }

        else
        {
          sub_297896A00(v203);
          v2 = sub_297895E00(a1, a2, v203);
          v22 = v203;
        }
      }

      goto LABEL_226;
    case 0x42u:
      v88 = sub_29789056C(a2 + 8);
      v89 = sub_29788C170(*v88);
      if (sub_297895F40(v89))
      {
        sub_297896A04(v202);
        v2 = sub_297895E00(a1, a2, v202);
        v22 = v202;
      }

      else
      {
        v146 = sub_29789056C(a2 + 8);
        v147 = sub_29788C170(*v146);
        if (sub_297895FB8(v147))
        {
          sub_297896A08(v201);
          v2 = sub_297895E00(a1, a2, v201);
          v22 = v201;
        }

        else
        {
          sub_297896A0C(v200);
          v2 = sub_297895E00(a1, a2, v200);
          v22 = v200;
        }
      }

      goto LABEL_226;
    case 0x43u:
      v20 = sub_29789056C(a2 + 8);
      v21 = sub_29788C170(*v20);
      if (sub_297895F40(v21))
      {
        sub_297896A10(v199);
        v2 = sub_297895E00(a1, a2, v199);
        v22 = v199;
      }

      else
      {
        v136 = sub_29789056C(a2 + 8);
        v137 = sub_29788C170(*v136);
        if (sub_297895FB8(v137))
        {
          sub_297896A14(v198);
          v2 = sub_297895E00(a1, a2, v198);
          v22 = v198;
        }

        else
        {
          sub_297896A18(v197);
          v2 = sub_297895E00(a1, a2, v197);
          v22 = v197;
        }
      }

      goto LABEL_226;
    case 0x44u:
      v48 = sub_29789056C(a2 + 8);
      v49 = sub_29788C170(*v48);
      if (sub_297895F40(v49))
      {
        sub_297896A1C(v196);
        v2 = sub_297895E00(a1, a2, v196);
        v22 = v196;
      }

      else
      {
        v141 = sub_29789056C(a2 + 8);
        v142 = sub_29788C170(*v141);
        if (sub_297895FB8(v142))
        {
          sub_297896A20(v195);
          v2 = sub_297895E00(a1, a2, v195);
          v22 = v195;
        }

        else
        {
          sub_297896A24(v194);
          v2 = sub_297895E00(a1, a2, v194);
          v22 = v194;
        }
      }

      goto LABEL_226;
    case 0x45u:
      v134 = sub_29789056C(a2 + 8);
      v135 = sub_29788C170(*v134);
      if (sub_297895F40(v135))
      {
        sub_297896A28(v193);
        v2 = sub_297895E00(a1, a2, v193);
        v22 = v193;
      }

      else
      {
        v149 = sub_29789056C(a2 + 8);
        v150 = sub_29788C170(*v149);
        if (sub_297895FB8(v150))
        {
          sub_297896A2C(v192);
          v2 = sub_297895E00(a1, a2, v192);
          v22 = v192;
        }

        else
        {
          v168 = sub_29789056C(a2 + 8);
          v169 = sub_29788C170(*v168);
          if (sub_297896A30(v169))
          {
            sub_297896A78(v191);
            v2 = sub_297895E00(a1, a2, v191);
            v22 = v191;
          }

          else
          {
            sub_297896A7C(v190);
            v2 = sub_297895E00(a1, a2, v190);
            v22 = v190;
          }
        }
      }

      goto LABEL_226;
    case 0x46u:
      v45 = sub_29789056C(a2 + 8);
      v46 = sub_29788C170(*v45);
      if (sub_297895F40(v46))
      {
        sub_297896A80(v189);
        v2 = sub_297895E00(a1, a2, v189);
        v22 = v189;
      }

      else
      {
        v138 = sub_29789056C(a2 + 8);
        v139 = sub_29788C170(*v138);
        if (sub_297895FB8(v139))
        {
          sub_297896A84(v188);
          v2 = sub_297895E00(a1, a2, v188);
          v22 = v188;
        }

        else
        {
          v157 = sub_29789056C(a2 + 8);
          v158 = sub_29788C170(*v157);
          if (sub_297896A30(v158))
          {
            sub_297896A88(v187);
            v2 = sub_297895E00(a1, a2, v187);
            v22 = v187;
          }

          else
          {
            sub_297896A8C(v186);
            v2 = sub_297895E00(a1, a2, v186);
            v22 = v186;
          }
        }
      }

      goto LABEL_226;
    case 0x47u:
      v6 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v6);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v7 = sub_29789056C(a2 + 8);
      v183[0] = sub_29788C170(*v7);
      v8 = sub_2977FB720(v183);
      if (sub_297890438(v8))
      {
        goto LABEL_19;
      }

      v9 = sub_29789056C(a2 + 8);
      v183[0] = sub_29788C170(*v9);
      v10 = sub_2977FB720(v183);
      v11 = sub_297890568(v10);
      v12 = sub_297887A38(v11);
      if (!v12)
      {
        goto LABEL_10;
      }

      v13 = 0;
      v14 = v12;
      while (*sub_297887A44(v2, v13) != 1)
      {
        if (v14 == ++v13)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_187;
    case 0x48u:
      v23 = sub_29789056C(a2 + 8);
      v2 = sub_297890358(a1, *v23);
      if (sub_2978903F4(v2))
      {
        return v2;
      }

      v24 = sub_29789056C(a2 + 8);
      v183[0] = sub_29788C170(*v24);
      v25 = sub_2977FB720(v183);
      if (sub_297890438(v25))
      {
LABEL_19:
        v16 = *v2;
        v15 = a1;
        return sub_297890E98(v15, v16);
      }

      v151 = sub_29789056C(a2 + 8);
      v183[0] = sub_29788C170(*v151);
      v152 = sub_2977FB720(v183);
      v153 = sub_297890568(v152);
      v154 = sub_297887A38(v153);
      if (!v154)
      {
        goto LABEL_187;
      }

      v155 = 0;
      v156 = v154;
      break;
    case 0x49u:
      sub_297896A90(v185);
      v2 = sub_297895D20(a1, a2, v185);
      v5 = v185;
      goto LABEL_179;
    case 0x4Au:

      return sub_297896A94(a1);
    default:
      return v2;
  }

  do
  {
    if ((*sub_297887A44(v2, v155) & 1) == 0)
    {
LABEL_10:
      v15 = a1;
      v16 = 0;
      return sub_297890E98(v15, v16);
    }

    ++v155;
  }

  while (v156 != v155);
LABEL_187:
  v15 = a1;
  v16 = 1;
  return sub_297890E98(v15, v16);
}

unsigned int *sub_297895D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v6 = sub_29789056C(a2 + 8);
  v7 = sub_297890358(a1, *v6);
  if (!sub_2978903F4(v7))
  {
    v8 = sub_2977FD5B0(a2);
    sub_29789719C(v10, a3);
    v7 = sub_2978966B0(a1, v8, v7, v10);
    sub_297895DE4(v10);
  }

  return v7;
}

int *sub_297895E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = sub_29788A818(a2 + 8, 0);
  v7 = sub_297890358(a1, *v6);
  v8 = sub_29788A818(a2 + 8, 1u);
  v9 = sub_297890358(a1, *v8);
  if (!sub_2978903F4(v7))
  {
    if (sub_2978903F4(v9))
    {
      return v9;
    }

    else
    {
      v10 = sub_2977FD5B0(a2);
      sub_297890570(v12, a3);
      v7 = sub_297896454(a1, v10, v7, v9, v12);
      sub_297890574(v12);
    }
  }

  return v7;
}

uint64_t sub_297895F40(uint64_t a1)
{
  v5 = a1;
  v1 = sub_2977FB720(&v5);
  v2 = sub_297890568(v1);
  v3 = sub_29788862C(v2);
  return (v3 < 0x11) & (0x1C020u >> v3);
}

uint64_t sub_297895FB8(uint64_t a1)
{
  v5 = a1;
  v1 = sub_2977FB720(&v5);
  v2 = sub_297890568(v1);
  v3 = sub_29788862C(v2);
  return (v3 < 0x14) & (0xE0040u >> v3);
}

unsigned int *sub_297896014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = sub_2977FD5B0(a2);
  v7 = sub_29788A818(a2 + 8, 0);
  v8 = sub_297890358(a1, *v7);
  v9 = sub_29788A818(a2 + 8, 1u);
  v10 = sub_297890358(a1, *v9);
  v11 = sub_29788A818(a2 + 8, 2u);
  v12 = sub_297890358(a1, *v11);
  if (!sub_2978903F4(v8))
  {
    if (sub_2978903F4(v10))
    {
      return v10;
    }

    if (sub_2978903F4(v12))
    {
      return v12;
    }

    v13 = sub_2977FB720(&v46);
    if (sub_297890438(v13))
    {
      v14 = sub_29789724C(a3, *v8, *v10, *v12);
      return sub_297893E98(a1, v14);
    }

    v15 = sub_2977FB720(&v46);
    v16 = sub_297890568(v15);
    v17 = sub_297890404(a1, 3);
    if (*(v8 + 64) == 1)
    {
      v18 = sub_297887A38(v16);
      if (v18)
      {
        v19 = 0;
        v40 = v10;
        v43 = v18;
        v10 = v17;
        do
        {
          v17 = v17 & 0xFFFFFFFF00000000 | *v8;
          v3 = v3 & 0xFFFFFFFF00000000 | *v40;
          v20 = *sub_297887A44(v12, v19);
          v21 = sub_29789724C(a3, v17, v3, v20);
          *sub_297887A44(v10, v19++) = v21;
        }

        while (v43 != v19);
        return v10;
      }
    }

    else
    {
      if (*(v10 + 64) != 1)
      {
        v27 = a3;
        v28 = *(v12 + 64);
        v29 = sub_297887A38(v16);
        if (v28 == 1)
        {
          if (!v29)
          {
            return v17;
          }

          v30 = 0;
          v41 = v29;
          v45 = v17;
          do
          {
            v31 = *sub_297887A44(v8, v30);
            v32 = *sub_297887A44(v10, v30);
            v17 = v17 & 0xFFFFFFFF00000000 | *v12;
            v33 = sub_29789724C(v27, v31, v32, v17);
            *sub_297887A44(v45, v30++) = v33;
          }

          while (v41 != v30);
        }

        else
        {
          if (!v29)
          {
            return v17;
          }

          v34 = 0;
          v42 = v29;
          v45 = v17;
          do
          {
            v35 = *sub_297887A44(v8, v34);
            v36 = *sub_297887A44(v10, v34);
            v37 = *sub_297887A44(v12, v34);
            v38 = sub_29789724C(v27, v35, v36, v37);
            *sub_297887A44(v45, v34++) = v38;
          }

          while (v42 != v34);
        }

        return v45;
      }

      v22 = sub_297887A38(v16);
      if (v22)
      {
        v23 = 0;
        v44 = v22;
        v24 = v10;
        v10 = v17;
        do
        {
          v25 = *sub_297887A44(v8, v23);
          v3 = v3 & 0xFFFFFFFF00000000 | *v24;
          v17 = v17 & 0xFFFFFFFF00000000 | *v12;
          v26 = sub_29789724C(a3, v25, v3, v17);
          *sub_297887A44(v10, v23++) = v26;
        }

        while (v44 != v23);
        return v10;
      }
    }

    return v17;
  }

  return v8;
}

float sub_2978963FC(float a1, float a2, float a3)
{
  v4 = sub_29789D888(a1, a2);

  return sub_29789D454(v4, a3);
}

_DWORD *sub_297896454(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v26 = a2;
  v9 = sub_2977FB720(&v26);
  if (sub_297890438(v9))
  {
    v10 = sub_297890460(a5, *a3, *a4);
    return sub_297893E98(a1, v10);
  }

  else
  {
    v12 = sub_2977FB720(&v26);
    v13 = sub_297890568(v12);
    v11 = sub_297890404(a1, 3);
    v14 = *(a4 + 64);
    v15 = sub_297887A38(v13);
    if (v14 == 1)
    {
      if (v15)
      {
        v16 = 0;
        v17 = v15;
        do
        {
          v18 = *sub_297887A44(a3, v16);
          v14 = v14 & 0xFFFFFFFF00000000 | *a4;
          v19 = sub_297890460(a5, v18, v14);
          *sub_297887A44(v11, v16++) = v19;
        }

        while (v17 != v16);
      }
    }

    else if (v15)
    {
      v20 = 0;
      v21 = v15;
      do
      {
        v22 = *sub_297887A44(a3, v20);
        v23 = *sub_297887A44(a4, v20);
        v24 = sub_297890460(a5, v22, v23);
        *sub_297887A44(v11, v20++) = v24;
      }

      while (v21 != v20);
    }
  }

  return v11;
}

float sub_2978965EC(uint64_t a1, float *a2, float *a3)
{
  v14 = a1;
  v6 = sub_2977FB720(&v14);
  if (sub_297890438(v6))
  {
    return *a2 * *a3;
  }

  v7 = sub_2977FB720(&v14);
  v8 = sub_2978876EC(v7);
  if (v8)
  {
    v9 = sub_297887A38(v8);
    if (v9)
    {
      v10 = 0;
      v11 = v9;
      v3 = 0.0;
      do
      {
        v12 = *sub_297887A44(a2, v10);
        v3 = v3 + (v12 * *sub_297887A44(a3, v10++));
      }

      while (v11 != v10);
    }

    else
    {
      return 0.0;
    }
  }

  return v3;
}

_DWORD *sub_2978966B0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v18 = a2;
  v7 = sub_2977FB720(&v18);
  if (sub_297890438(v7))
  {
    v8 = sub_2978972C8(a4, *a3);
    return sub_297893E98(a1, v8);
  }

  else
  {
    v10 = sub_2977FB720(&v18);
    v11 = sub_297890568(v10);
    v9 = sub_297890404(a1, 3);
    v12 = sub_297887A38(v11);
    if (v12)
    {
      v13 = 0;
      v14 = v12;
      do
      {
        v15 = *sub_297887A44(a3, v13);
        v16 = sub_2978972C8(a4, v15);
        *sub_297887A44(v9, v13++) = v16;
      }

      while (v14 != v13);
    }
  }

  return v9;
}

float sub_2978967C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3;
  v7 = *sub_297887A44(a1, a3);
  v8 = *sub_297887A44(a2, v6);
  v9 = a3 + 1;
  v10 = *sub_297887A44(a1, v9);
  return (v7 * *sub_297887A44(a2, v9)) - (v8 * v10);
}

float sub_297896850(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = a4;
  v9 = *sub_297887A44(a1, a4);
  v10 = *sub_297887A44(a2, v8);
  v11 = *sub_297887A44(a3, v8);
  v12 = sub_2978967C4(a2, a3, a4 + 1);
  v13 = (v9 * v12) - (v10 * sub_2978967C4(a1, a3, a4 + 1));
  return v13 + (v11 * sub_2978967C4(a1, a2, a4 + 1));
}

float sub_29789690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *sub_297887A44(a1, 0);
  v9 = *sub_297887A44(a2, 0);
  v10 = *sub_297887A44(a3, 0);
  v11 = *sub_297887A44(a4, 0);
  v12 = sub_297896850(a2, a3, a4, 1u);
  v13 = (v8 * v12) - (v9 * sub_297896850(a1, a3, a4, 1u));
  v14 = v13 + (v10 * sub_297896850(a1, a2, a4, 1u));
  return v14 - (v11 * sub_297896850(a1, a2, a3, 1u));
}

uint64_t sub_297896A30(uint64_t a1)
{
  v5 = a1;
  v1 = sub_2977FB720(&v5);
  v2 = sub_297890568(v1);
  v3 = sub_29788862C(v2);
  return (v3 < 0x17) & (0x700080u >> v3);
}

uint64_t sub_297896A9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = 0;
  v8 = sub_29788C170(a1);
  v9 = sub_297892D08(v8, 5);
  if ((v9 & 1) != 0 || (v10 = sub_29788C170(a1), result = sub_297892D08(v10, 6), result))
  {
    sub_297896BA4(v14, a2);
    v12 = sub_297890358(v14, a1);
    j_nullsub_1();
    if (sub_2978903F4(v12))
    {
      result = 0;
      *a4 = *v12;
    }

    else if (*(v12 + 64) == 1)
    {
      sub_2977FB51C();
      sub_297871928(v14, &v13, v9 ^ 1u);
      sub_297871760(a3, v14);
      sub_297871794(v14);
      sub_2977FAA04();
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_297896BA8(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  sub_297896BA4(v8, a2);
  v5 = sub_297890358(v8, a1);
  j_nullsub_1();
  v6 = sub_2978903F4(v5);
  if (v6)
  {
    *a3 = *v5;
  }

  return !v6;
}

float *sub_297896C54(uint64_t *a1, uint64_t a2)
{
  result = sub_29787E544(a2);
  switch(result)
  {
    case 0:

      return sub_297890D68(a1);
    case 1:

      return sub_297890E00(a1);
    case 2:

      return sub_297890E58(a1, a2);
    case 3:
      v7 = a1;
      v8 = a2;

      return sub_297890CD4(v7, v8);
    case 4:
      v7 = a1;
      v8 = a2;

      return sub_297890CD4(v7, v8);
    case 5:

      return sub_297890ED8(a1, a2);
    case 6:

      return sub_297891498(a1, a2);
    case 7:

      return sub_297892DBC(a1, a2);
    case 8:
      v5 = a1;
      v6 = a2;

      return sub_297896FE8(v5, v6);
    case 9:
      v5 = a1;
      v6 = a2;

      return sub_297896FE8(v5, v6);
    case 10:

      return sub_297892E78(a1, a2);
    case 11:

      return sub_297892F44(a1, a2);
    case 12:

      return sub_297893014(a1, a2);
    case 13:

      return sub_297893C5C(a1, a2);
    case 14:
      v5 = a1;
      v6 = a2;

      return sub_297896FE8(v5, v6);
    case 15:

      return sub_297893D7C(a1, a2);
    case 16:

      return sub_297893EC4(a1, a2);
    case 17:

      return sub_2978940CC(a1, a2);
    case 18:
      v5 = a1;
      v6 = a2;

      return sub_297896FE8(v5, v6);
    case 19:

      return sub_2978941B0(a1, a2);
    case 20:
      v5 = a1;
      v6 = a2;

      return sub_297896FE8(v5, v6);
    case 21:
      v9 = a1;
      v10 = a2;

      goto LABEL_49;
    case 22:
      v9 = a1;
      v10 = a2;

LABEL_49:
      result = sub_297896FEC(v9, v10);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_297896FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_297890358(a1, v3);
}

uint64_t sub_29789705C(uint64_t result, uint64_t a2)
{
  *(result + 64) = 0;
  *result = a2;
  return result;
}

uint64_t sub_29789706C(uint64_t result, float a2)
{
  *result = a2;
  *(result + 64) = 1;
  return result;
}

uint64_t sub_297897080(uint64_t result, int a2)
{
  *result = a2;
  *(result + 64) = 1;
  return result;
}

_BYTE *sub_297897094(_BYTE *result, char a2)
{
  *result = a2;
  result[64] = 1;
  return result;
}

uint64_t sub_2978970A4(uint64_t a1)
{
  v1 = sub_297869208(0x48uLL, *(a1 + 8));

  return sub_29789702C(v1);
}

void *sub_2978970FC(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  sub_297897194();
  result = sub_2977FB7B8(v11);
  if (result)
  {
    v7 = sub_2977FB7B8(v11);
    v8 = sub_297803E1C(a2, 8 * v7, 8uLL);
    *a1 = v8;
    v9 = sub_2977FB720(v11);
    v10 = sub_2977FB7B8(v11);
    return memcpy(v8, v9, 8 * v10);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_2978971A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      nullsub_1();
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_297897280(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_2978972C8(v5, v6);
  }
}

uint64_t sub_2978972F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_297897338(v5, v6);
  }
}

uint64_t sub_297897338(uint64_t a1, uint64_t a2)
{
  v4 = sub_297897394(a2);
  *a1 = v4;
  *(a1 + 8) = *(v4 + 928) + 1616;
  *(a1 + 16) = *(v4 + 928) + 1752;
  v5 = sub_29789739C(a2);
  *(a1 + 24) = sub_297882B50(v5);
  return a1;
}

uint64_t sub_2978973AC(uint64_t a1)
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

uint64_t sub_29789742C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_297897474(v5, v6);
  }
}

uint64_t sub_29789747C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      nullsub_1();
      *(a1 + 24) = v5;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v5);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_297897528(uint64_t a1)
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

uint64_t sub_2978975A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_2978975F0(v5);
  }
}

uint64_t sub_2978975FC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789761C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897620(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55B40;
  return result;
}

void sub_297897678()
{
  j_j_nullsub_1_5();

  j__free(v0);
}

uint64_t sub_2978976A0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789761C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789775C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789777C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897780(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55BD0;
  return result;
}

void sub_2978977B8()
{
  j_j_nullsub_1_6();

  j__free(v0);
}

uint64_t sub_2978977E0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789777C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897874(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897894(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897898(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55C18;
  return result;
}

void sub_2978978D0()
{
  j_j_nullsub_1_7();

  j__free(v0);
}

uint64_t sub_2978978F8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897894(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978979AC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978979CC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978979D0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55C60;
  return result;
}

void sub_297897A08()
{
  j_j_nullsub_1_8();

  j__free(v0);
}

uint64_t sub_297897A30()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978979CC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897AC4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897AE4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897AE8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55CA8;
  return result;
}

void sub_297897B20()
{
  j_j_nullsub_1_9();

  j__free(v0);
}

uint64_t sub_297897B48()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897AE4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897BFC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897C1C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897C20(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55CF0;
  return result;
}

void sub_297897C58()
{
  j_j_nullsub_1_10();

  j__free(v0);
}

uint64_t sub_297897C80()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897C1C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897D14(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897D34(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897D38(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55D38;
  return result;
}

void sub_297897D70()
{
  j_j_nullsub_1_11();

  j__free(v0);
}

uint64_t sub_297897D98()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897D34(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897E4C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897E6C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897E70(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55D80;
  return result;
}

void sub_297897EA8()
{
  j_j_nullsub_1_12();

  j__free(v0);
}

uint64_t sub_297897ED0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897E6C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297897F84(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297897FA4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297897FA8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55DC8;
  return result;
}

void sub_297897FE0()
{
  j_j_nullsub_1_13();

  j__free(v0);
}

uint64_t sub_297898008()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297897FA4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978980BC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978980DC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978980E0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55E10;
  return result;
}

void sub_297898118()
{
  j_j_nullsub_1_14();

  j__free(v0);
}

uint64_t sub_297898140()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978980DC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978981D4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978981F4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978981F8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55E58;
  return result;
}

void sub_297898230()
{
  j_j_nullsub_1_15();

  j__free(v0);
}

uint64_t sub_297898258()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978981F4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789831C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789833C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898340(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55EA0;
  return result;
}

void sub_297898378()
{
  j_j_nullsub_1_16();

  j__free(v0);
}

uint64_t sub_2978983A0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789833C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898434(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898454(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898458(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55EE8;
  return result;
}

void sub_297898490()
{
  j_j_nullsub_1_17();

  j__free(v0);
}

uint64_t sub_2978984B8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898454(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789854C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789856C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898570(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55F30;
  return result;
}

void sub_2978985A8()
{
  j_j_nullsub_1_18();

  j__free(v0);
}

uint64_t sub_2978985D0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789856C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898664(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898684(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898688(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55F78;
  return result;
}

void sub_2978986C0()
{
  j_j_nullsub_1_19();

  j__free(v0);
}

uint64_t sub_2978986E8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898684(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789879C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978987BC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978987C0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E55FC0;
  return result;
}

void sub_2978987F8()
{
  j_j_nullsub_1_20();

  j__free(v0);
}

uint64_t sub_297898820()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978987BC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978988DC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978988FC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898900(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56008;
  return result;
}

void sub_297898938()
{
  j_j_nullsub_1_21();

  j__free(v0);
}

uint64_t sub_297898960()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978988FC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978989F4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898A14(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898A18(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56050;
  return result;
}

void sub_297898A50()
{
  j_j_nullsub_1_22();

  j__free(v0);
}

uint64_t sub_297898A78()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898A14(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898B0C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898B2C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898B30(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56098;
  return result;
}

void sub_297898B68()
{
  j_j_nullsub_1_23();

  j__free(v0);
}

uint64_t sub_297898B90()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898B2C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898C24(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898C44(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898C48(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E560E0;
  return result;
}

void sub_297898C80()
{
  j_j_nullsub_1_24();

  j__free(v0);
}

uint64_t sub_297898CA8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898C44(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898D5C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898D7C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898D80(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56128;
  return result;
}

void sub_297898DB8()
{
  j_j_nullsub_1_25();

  j__free(v0);
}

uint64_t sub_297898DE0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898D7C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898E74(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898E94(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898E98(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56170;
  return result;
}

void sub_297898ED0()
{
  j_j_nullsub_1_26();

  j__free(v0);
}

uint64_t sub_297898EF8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898E94(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297898FB0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297898FD0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297898FD4(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E561B8;
  return result;
}

void sub_29789900C()
{
  j_j_nullsub_1_27();

  j__free(v0);
}

uint64_t sub_297899034()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297898FD0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978990EC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789910C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899110(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56200;
  return result;
}

void sub_297899148()
{
  j_j_nullsub_1_28();

  j__free(v0);
}

uint64_t sub_297899170()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789910C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789922C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789924C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899250(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56248;
  return result;
}

void sub_297899288()
{
  j_j_nullsub_1_29();

  j__free(v0);
}

uint64_t sub_2978992B0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789924C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899344(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899364(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899368(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56290;
  return result;
}

void sub_2978993A0()
{
  j_j_nullsub_1_30();

  j__free(v0);
}

uint64_t sub_2978993C8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899364(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789945C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789947C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899480(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E562D8;
  return result;
}

void sub_2978994B8()
{
  j_j_nullsub_1_31();

  j__free(v0);
}

uint64_t sub_2978994E0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789947C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899574(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899594(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899598(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56320;
  return result;
}

void sub_2978995D0()
{
  j_j_nullsub_1_32();

  j__free(v0);
}

uint64_t sub_2978995F8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899594(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978996AC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978996CC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978996D0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56368;
  return result;
}

void sub_297899708()
{
  j_j_nullsub_1_33();

  j__free(v0);
}

uint64_t sub_297899730()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978996CC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978997E4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899804(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899808(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E563B0;
  return result;
}

void sub_297899840()
{
  j_j_nullsub_1_34();

  j__free(v0);
}

uint64_t sub_297899868()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899804(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899924(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899944(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899948(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E563F8;
  return result;
}

void sub_297899980()
{
  j_j_nullsub_1_35();

  j__free(v0);
}

uint64_t sub_2978999A8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899944(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899A3C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899A5C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899A60(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56440;
  return result;
}

void sub_297899A98()
{
  j_j_nullsub_1_36();

  j__free(v0);
}

uint64_t sub_297899AC0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899A5C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899B54(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899B74(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899B78(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56488;
  return result;
}

void sub_297899BB0()
{
  j_j_nullsub_1_37();

  j__free(v0);
}

uint64_t sub_297899BD8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899B74(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899C8C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899CAC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899CB0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E564D0;
  return result;
}

void sub_297899CE8()
{
  j_j_nullsub_1_38();

  j__free(v0);
}

uint64_t sub_297899D10()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899CAC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_297899DDC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_297899DFC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_297899E00(void *a1)
{
  result = sub_297899E34(a1);
  *result = &unk_2A1E56518;
  return result;
}

void sub_297899E58()
{
  j_j_nullsub_1_39();

  j__free(v0);
}

uint64_t sub_297899E80()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_297899DFC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_297899F28(int a1, unsigned int a2)
{
  sub_297893B60(a1, a2);

  sub_297898308();
}

uint64_t sub_297899F5C(uint64_t a1)
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

uint64_t sub_297899FE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A008(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A00C(void *a1)
{
  result = sub_297899E34(a1);
  *result = &unk_2A1E565A8;
  return result;
}

void sub_29789A044()
{
  j_j_nullsub_1_40();

  j__free(v0);
}

uint64_t sub_29789A06C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A008(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789A100(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A120(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A124(void *a1)
{
  result = sub_297899E34(a1);
  *result = &unk_2A1E565F0;
  return result;
}

void sub_29789A15C()
{
  j_j_nullsub_1_41();

  j__free(v0);
}

uint64_t sub_29789A184()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A120(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789A224(int a1, unsigned int a2)
{
  sub_297893BA8(a1, a2);

  nullsub_1();
}

uint64_t sub_29789A25C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A27C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A280(void *a1)
{
  result = sub_297899E34(a1);
  *result = &unk_2A1E56638;
  return result;
}

void sub_29789A2B8()
{
  j_j_nullsub_1_42();

  j__free(v0);
}

uint64_t sub_29789A2E0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A27C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789A380(int a1, unsigned int a2)
{
  sub_297893BD4(a1, a2);

  nullsub_1();
}

uint64_t sub_29789A3B8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A3D8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A3DC(void *a1)
{
  result = sub_297899E34(a1);
  *result = &unk_2A1E56680;
  return result;
}

void sub_29789A414()
{
  j_j_nullsub_1_43();

  j__free(v0);
}

uint64_t sub_29789A43C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A3D8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789A4DC(int a1, unsigned int a2)
{
  sub_297893C00(a1, a2);

  nullsub_1();
}

uint64_t sub_29789A514(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A534(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A538(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E566C8;
  return result;
}

void sub_29789A590()
{
  j_j_nullsub_1_44();

  j__free(v0);
}

uint64_t sub_29789A5B8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A534(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789A678(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A698(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A69C(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56758;
  return result;
}

void sub_29789A6D4()
{
  j_j_nullsub_1_45();

  j__free(v0);
}

uint64_t sub_29789A6FC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A698(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789A7B4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A7D4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A7D8(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E567A0;
  return result;
}

void sub_29789A810()
{
  j_j_nullsub_1_46();

  j__free(v0);
}

uint64_t sub_29789A838()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A7D4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789A8D0(int a1)
{
  sinf(*&a1);

  sub_297898308();
}

uint64_t sub_29789A908(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789A928(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789A92C(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E567E8;
  return result;
}

void sub_29789A964()
{
  j_j_nullsub_1_47();

  j__free(v0);
}

uint64_t sub_29789A98C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789A928(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789AA24(int a1)
{
  cosf(*&a1);

  sub_297898308();
}

uint64_t sub_29789AA5C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789AA7C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789AA80(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56830;
  return result;
}

void sub_29789AAB8()
{
  j_j_nullsub_1_48();

  j__free(v0);
}

uint64_t sub_29789AAE0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789AA7C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789AB78(int a1)
{
  tanf(*&a1);

  sub_297898308();
}

uint64_t sub_29789ABB0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789ABD0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789ABD4(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56878;
  return result;
}

void sub_29789AC0C()
{
  j_j_nullsub_1_49();

  j__free(v0);
}

uint64_t sub_29789AC34()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789ABD0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789ACCC(int a1)
{
  asinf(*&a1);

  sub_297898308();
}

uint64_t sub_29789AD04(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789AD24(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789AD28(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E568C0;
  return result;
}

void sub_29789AD60()
{
  j_j_nullsub_1_50();

  j__free(v0);
}

uint64_t sub_29789AD88()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789AD24(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789AE20(int a1)
{
  acosf(*&a1);

  sub_297898308();
}

uint64_t sub_29789AE58(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789AE78(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789AE7C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56908;
  return result;
}

void sub_29789AEB4()
{
  j_j_nullsub_1_51();

  j__free(v0);
}

uint64_t sub_29789AEDC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789AE78(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789AF7C(int a1, int a2)
{
  atanf(*&a1 / *&a2);

  sub_297898308();
}

uint64_t sub_29789AFBC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789AFDC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789AFE0(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56950;
  return result;
}

void sub_29789B018()
{
  j_j_nullsub_1_52();

  j__free(v0);
}

uint64_t sub_29789B040()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789AFDC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B0D8(int a1)
{
  atanf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B110(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B130(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B134(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56998;
  return result;
}

void sub_29789B16C()
{
  j_j_nullsub_1_53();

  j__free(v0);
}

uint64_t sub_29789B194()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B130(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B22C(int a1)
{
  sinhf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B264(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B284(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B288(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E569E0;
  return result;
}

void sub_29789B2C0()
{
  j_j_nullsub_1_54();

  j__free(v0);
}

uint64_t sub_29789B2E8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B284(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B380(int a1)
{
  coshf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B3B8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B3D8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B3DC(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56A28;
  return result;
}

void sub_29789B414()
{
  j_j_nullsub_1_55();

  j__free(v0);
}

uint64_t sub_29789B43C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B3D8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B4D4(int a1)
{
  tanhf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B50C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B52C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B530(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56A70;
  return result;
}

void sub_29789B568()
{
  j_j_nullsub_1_56();

  j__free(v0);
}

uint64_t sub_29789B590()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B52C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B628(int a1)
{
  asinhf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B660(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B680(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B684(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56AB8;
  return result;
}

void sub_29789B6BC()
{
  j_j_nullsub_1_57();

  j__free(v0);
}

uint64_t sub_29789B6E4()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B680(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B77C(int a1)
{
  acoshf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B7B4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B7D4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B7D8(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56B00;
  return result;
}

void sub_29789B810()
{
  j_j_nullsub_1_58();

  j__free(v0);
}

uint64_t sub_29789B838()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B7D4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789B8D0(int a1)
{
  atanhf(*&a1);

  sub_297898308();
}

uint64_t sub_29789B908(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789B928(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789B92C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E56B48;
  return result;
}

void sub_29789B964()
{
  j_j_nullsub_1_59();

  j__free(v0);
}

uint64_t sub_29789B98C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789B928(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789BA2C(int a1, int a2)
{
  powf(*&a1, *&a2);

  sub_297898308();
}

uint64_t sub_29789BA68(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789BA88(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789BA8C(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56B90;
  return result;
}

void sub_29789BAC4()
{
  j_j_nullsub_1_60();

  j__free(v0);
}

uint64_t sub_29789BAEC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789BA88(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789BB84(int a1)
{
  expf(*&a1);

  sub_297898308();
}

uint64_t sub_29789BBBC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789BBDC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789BBE0(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56BD8;
  return result;
}

void sub_29789BC18()
{
  j_j_nullsub_1_61();

  j__free(v0);
}

uint64_t sub_29789BC40()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789BBDC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789BCD8(int a1)
{
  logf(*&a1);

  sub_297898308();
}

uint64_t sub_29789BD10(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789BD30(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789BD34(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56C20;
  return result;
}

void sub_29789BD6C()
{
  j_j_nullsub_1_62();

  j__free(v0);
}

uint64_t sub_29789BD94()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789BD30(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789BE2C(int a1)
{
  exp2f(*&a1);

  sub_297898308();
}

uint64_t sub_29789BE64(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789BE84(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789BE88(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56C68;
  return result;
}

void sub_29789BEC0()
{
  j_j_nullsub_1_63();

  j__free(v0);
}

uint64_t sub_29789BEE8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789BE84(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789BF80(int a1)
{
  log2f(*&a1);

  sub_297898308();
}

uint64_t sub_29789BFB8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789BFD8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789BFDC(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56CB0;
  return result;
}

void sub_29789C014()
{
  j_j_nullsub_1_64();

  j__free(v0);
}

uint64_t sub_29789C03C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789BFD8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C0EC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C10C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C110(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56CF8;
  return result;
}

void sub_29789C148()
{
  j_j_nullsub_1_65();

  j__free(v0);
}

uint64_t sub_29789C170()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C10C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C228(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C248(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C24C(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56D40;
  return result;
}

void sub_29789C284()
{
  j_j_nullsub_1_66();

  j__free(v0);
}

uint64_t sub_29789C2AC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C248(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C35C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C37C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C380(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56D88;
  return result;
}

void sub_29789C3B8()
{
  j_j_nullsub_1_67();

  j__free(v0);
}

uint64_t sub_29789C3E0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C37C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C490(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C4B0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C4B4(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56DD0;
  return result;
}

void sub_29789C4EC()
{
  j_j_nullsub_1_68();

  j__free(v0);
}

uint64_t sub_29789C514()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C4B0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C5CC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C5EC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C5F0(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56E18;
  return result;
}

void sub_29789C628()
{
  j_j_nullsub_1_69();

  j__free(v0);
}

uint64_t sub_29789C650()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C5EC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789C6E8(int a1)
{
  sub_29789C714(*&a1);

  sub_297898308();
}

float sub_29789C714(float a1)
{
  v1 = a1 == 0.0;
  v2 = a1 < 0.0;
  result = 1.0;
  if (v1)
  {
    result = 0.0;
  }

  if (v2)
  {
    return -1.0;
  }

  return result;
}

uint64_t sub_29789C73C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C75C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C760(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56E60;
  return result;
}

void sub_29789C798()
{
  j_j_nullsub_1_70();

  j__free(v0);
}

uint64_t sub_29789C7C0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C75C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C870(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C890(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C894(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56EA8;
  return result;
}

void sub_29789C8CC()
{
  j_j_nullsub_1_71();

  j__free(v0);
}

uint64_t sub_29789C8F4()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C890(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789C9A4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789C9C4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789C9C8(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56EF0;
  return result;
}

void sub_29789CA00()
{
  j_j_nullsub_1_72();

  j__free(v0);
}

uint64_t sub_29789CA28()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789C9C4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789CAD8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789CAF8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789CAFC(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56F38;
  return result;
}

void sub_29789CB34()
{
  j_j_nullsub_1_73();

  j__free(v0);
}

uint64_t sub_29789CB5C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789CAF8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789CBF4(int a1, double a2, int8x16_t a3, double a4, int8x16_t a5)
{
  sub_29789CC20(*&a1, a3, a4, a5);

  sub_297898308();
}

float sub_29789CC20(float a1, int8x16_t a2, double a3, int8x16_t a4)
{
  v4 = fabsf(a1);
  *a2.i32 = floorf(v4);
  if ((v4 - *a2.i32) == 0.5)
  {
    *a4.i32 = *a2.i32 + (truncf(*a2.i32 * 0.5) * -2.0);
    v5.i64[0] = 0x8000000080000000;
    v5.i64[1] = 0x8000000080000000;
    v6 = ceilf(v4);
    if (*vbslq_s8(v5, a4, a2).i32 == 1.0)
    {
      *a2.i32 = v6;
    }
  }

  else
  {
    *a2.i32 = roundf(v4);
  }

  if (a1 >= 0.0)
  {
    return *a2.i32;
  }

  else
  {
    return -*a2.i32;
  }
}

uint64_t sub_29789CC84(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789CCA4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789CCA8(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56F80;
  return result;
}

void sub_29789CCE0()
{
  j_j_nullsub_1_74();

  j__free(v0);
}

uint64_t sub_29789CD08()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789CCA4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789CDB8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789CDD8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789CDDC(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E56FC8;
  return result;
}

void sub_29789CE14()
{
  j_j_nullsub_1_75();

  j__free(v0);
}

uint64_t sub_29789CE3C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789CDD8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789CEF0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789CF10(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789CF14(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57010;
  return result;
}

void sub_29789CF4C()
{
  j_j_nullsub_1_76();

  j__free(v0);
}

uint64_t sub_29789CF74()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789CF10(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789D038(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D058(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D05C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57058;
  return result;
}

void sub_29789D094()
{
  j_j_nullsub_1_77();

  j__free(v0);
}

uint64_t sub_29789D0BC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D058(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D15C(uint64_t a1, int a2)
{
  sub_29789D184(a1, a2);

  nullsub_1();
}

uint64_t sub_29789D184(uint64_t result, int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_29789D19C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D1BC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D1C0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E570A0;
  return result;
}

void sub_29789D1F8()
{
  j_j_nullsub_1_78();

  j__free(v0);
}

uint64_t sub_29789D220()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D1BC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D2C0(uint64_t a1, unsigned int a2)
{
  sub_29789D2E8(a1, a2);

  nullsub_1();
}

uint64_t sub_29789D2E8(uint64_t result, unsigned int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_29789D300(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D320(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D324(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E570E8;
  return result;
}

void sub_29789D35C()
{
  j_j_nullsub_1_79();

  j__free(v0);
}

uint64_t sub_29789D384()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D320(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D424(uint64_t a1, int a2)
{
  sub_29789D454(*&a1, *&a2);

  sub_297898308();
}

float sub_29789D454(float result, float a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t sub_29789D46C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D48C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D490(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57130;
  return result;
}

void sub_29789D4C8()
{
  j_j_nullsub_1_80();

  j__free(v0);
}

uint64_t sub_29789D4F0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D48C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D590(uint64_t a1, int a2)
{
  sub_29789D5B8(a1, a2);

  nullsub_1();
}

uint64_t sub_29789D5B8(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_29789D5D0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D5F0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D5F4(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57178;
  return result;
}

void sub_29789D62C()
{
  j_j_nullsub_1_81();

  j__free(v0);
}

uint64_t sub_29789D654()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D5F0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D6F4(uint64_t a1, unsigned int a2)
{
  sub_29789D71C(a1, a2);

  nullsub_1();
}

uint64_t sub_29789D71C(uint64_t result, unsigned int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t sub_29789D734(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D754(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D758(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E571C0;
  return result;
}

void sub_29789D790()
{
  j_j_nullsub_1_82();

  j__free(v0);
}

uint64_t sub_29789D7B8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D754(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D858(int a1, int a2)
{
  sub_29789D888(*&a1, *&a2);

  sub_297898308();
}

float sub_29789D888(float result, float a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

uint64_t sub_29789D8A0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789D8C0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789D8C4(void *a1)
{
  result = sub_29789D8F8(a1);
  *result = &unk_2A1E57208;
  return result;
}

void sub_29789D91C()
{
  j_j_nullsub_1_83();

  j__free(v0);
}

uint64_t sub_29789D944()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789D8C0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789D9F4(uint64_t a1, int a2, int a3)
{
  sub_29789DA1C(a1, a2, a3);

  nullsub_1();
}

uint64_t sub_29789DA1C(uint64_t a1, int a2, int a3)
{
  v4 = sub_29789D5B8(a1, a2);

  return sub_29789D184(v4, a3);
}

uint64_t sub_29789DA5C(uint64_t a1)
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

uint64_t sub_29789DAE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789DB08(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789DB0C(void *a1)
{
  result = sub_29789D8F8(a1);
  *result = &unk_2A1E57298;
  return result;
}

void sub_29789DB44()
{
  j_j_nullsub_1_84();

  j__free(v0);
}

uint64_t sub_29789DB6C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789DB08(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789DC14(uint64_t a1, unsigned int a2, unsigned int a3)
{
  sub_29789DC3C(a1, a2, a3);

  nullsub_1();
}

uint64_t sub_29789DC3C(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = sub_29789D71C(a1, a2);

  return sub_29789D2E8(v4, a3);
}

uint64_t sub_29789DC80(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789DCA0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789DCA4(void *a1)
{
  result = sub_29789D8F8(a1);
  *result = &unk_2A1E572E0;
  return result;
}

void sub_29789DCDC()
{
  j_j_nullsub_1_85();

  j__free(v0);
}

uint64_t sub_29789DD04()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789DCA0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789DDAC(int a1, int a2, int a3)
{
  sub_2978963FC(*&a1, *&a2, *&a3);

  sub_297898308();
}

uint64_t sub_29789DDEC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789DE0C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789DE10(void *a1)
{
  result = sub_29789D8F8(a1);
  *result = &unk_2A1E57328;
  return result;
}

void sub_29789DE48()
{
  j_j_nullsub_1_86();

  j__free(v0);
}

uint64_t sub_29789DE70()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789DE0C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789DF44(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789DF64(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789DF68(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57370;
  return result;
}

void sub_29789DFA0()
{
  j_j_nullsub_1_87();

  j__free(v0);
}

uint64_t sub_29789DFC8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789DF64(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789E090(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E0B0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E0B4(void *a1)
{
  result = sub_29789D8F8(a1);
  *result = &unk_2A1E573B8;
  return result;
}

void sub_29789E0EC()
{
  j_j_nullsub_1_88();

  j__free(v0);
}

uint64_t sub_29789E114()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E0B0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789E1BC(int a1, int a2, int a3)
{
  sub_2978963FC((*&a3 - *&a1) / (*&a2 - *&a1), 0.0, 1.0);

  sub_297898308();
}

uint64_t sub_29789E224(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E244(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E248(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E57400;
  return result;
}

void sub_29789E280()
{
  j_j_nullsub_1_89();

  j__free(v0);
}

uint64_t sub_29789E2A8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E244(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789E340()
{
  sub_2978049C8();

  nullsub_1();
}

uint64_t sub_29789E378(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E398(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E39C(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E57448;
  return result;
}

void sub_29789E3D4()
{
  j_j_nullsub_1_90();

  j__free(v0);
}

uint64_t sub_29789E3FC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E398(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

void sub_29789E494(int a1)
{
  sub_297804998(*&a1);

  nullsub_1();
}

uint64_t sub_29789E4CC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E4EC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E4F0(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E57490;
  return result;
}

void sub_29789E528()
{
  j_j_nullsub_1_91();

  j__free(v0);
}

uint64_t sub_29789E550()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E4EC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789E5EC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E60C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E610(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E574D8;
  return result;
}

void sub_29789E648()
{
  j_j_nullsub_1_92();

  j__free(v0);
}

uint64_t sub_29789E670()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E60C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789E700(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789E720(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789E724(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57520;
  return result;
}

void sub_29789E75C()
{
  j_j_nullsub_1_93();

  j__free(v0);
}

uint64_t sub_29789E784()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789E720(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789E83C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_29789E85C(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_29789E860(void *a1)
{
  *sub_29789A56C(a1) = &unk_2A1E57568;
  sub_297809B4C();
  return a1;
}

void sub_29789E8B4()
{
  j_j_nullsub_1_94();

  j__free(v0);
}

uint64_t sub_29789E8DC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_29789E85C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_29789E9C8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_29789E9E8(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_29789E9EC(void *a1)
{
  *sub_29789A56C(a1) = &unk_2A1E575B0;
  sub_297809B4C();
  return a1;
}

void sub_29789EA40()
{
  j_j_nullsub_1_95();

  j__free(v0);
}

uint64_t sub_29789EA68(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_29789E9E8(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_29789EB5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_29789EB7C(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_29789EB80(void *a1)
{
  *sub_297897654(a1) = &unk_2A1E575F8;
  sub_297809B4C();
  return a1;
}

void sub_29789EBD4()
{
  j_j_nullsub_1_96();

  j__free(v0);
}

uint64_t sub_29789EBFC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_29789EB7C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_29789ECCC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789ECEC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789ECF0(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E57640;
  return result;
}

void sub_29789ED28()
{
  j_j_nullsub_1_97();

  j__free(v0);
}

uint64_t sub_29789ED50()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789ECEC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789EDF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = sub_29789EE7C();
  sub_29784CE50(v7, &v9);
  sub_29788B48C(v8, v4, v7);
  v5 = sub_2977FB720(v8);
  sub_29789EE80(v5, a2);
  *(a1 + 24) = sub_2978058AC(v8);
  sub_29788B490(v8);
  return a1;
}

void *sub_29789EE90(void *a1, uint64_t a2)
{
  v4 = sub_297897654(a1);
  *v4 = &unk_2A1E57688;
  sub_29789EEE0((v4 + 1), a2);
  return a1;
}

void sub_29789EEE8()
{
  j_j_nullsub_1_98();

  j__free(v0);
}

uint64_t sub_29789EF10(uint64_t a1)
{
  v2 = sub_29789EE7C();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_29789EE80(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

__n128 sub_29789EFA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29789F00C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F02C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F030(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E576D0;
  return result;
}

void sub_29789F068()
{
  j_j_nullsub_1_99();

  j__free(v0);
}

uint64_t sub_29789F090()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F02C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F124(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F144(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F148(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57718;
  return result;
}

void sub_29789F180()
{
  j_j_nullsub_1_100();

  j__free(v0);
}

uint64_t sub_29789F1A8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F144(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F23C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F25C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F260(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57760;
  return result;
}

void sub_29789F298()
{
  j_j_nullsub_1_101();

  j__free(v0);
}

uint64_t sub_29789F2C0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F25C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F378(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F398(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F39C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E577A8;
  return result;
}

void sub_29789F3D4()
{
  j_j_nullsub_1_102();

  j__free(v0);
}

uint64_t sub_29789F3FC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F398(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F4B4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F4D4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F4D8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E577F0;
  return result;
}

void sub_29789F510()
{
  j_j_nullsub_1_103();

  j__free(v0);
}

uint64_t sub_29789F538()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F4D4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F5F8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F618(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F61C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57838;
  return result;
}

void sub_29789F654()
{
  j_j_nullsub_1_104();

  j__free(v0);
}

uint64_t sub_29789F67C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F618(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F734(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F754(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F758(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57880;
  return result;
}

void sub_29789F790()
{
  j_j_nullsub_1_105();

  j__free(v0);
}

uint64_t sub_29789F7B8()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F754(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F870(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F890(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F894(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E578C8;
  return result;
}

void sub_29789F8CC()
{
  j_j_nullsub_1_106();

  j__free(v0);
}

uint64_t sub_29789F8F4()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F890(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789F9B4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789F9D4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789F9D8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57910;
  return result;
}

void sub_29789FA10()
{
  j_j_nullsub_1_107();

  j__free(v0);
}

uint64_t sub_29789FA38()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789F9D4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789FAF0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789FB10(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789FB14(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57958;
  return result;
}

void sub_29789FB4C()
{
  j_j_nullsub_1_108();

  j__free(v0);
}

uint64_t sub_29789FB74()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789FB10(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789FC2C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789FC4C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789FC50(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E579A0;
  return result;
}

void sub_29789FC88()
{
  j_j_nullsub_1_109();

  j__free(v0);
}

uint64_t sub_29789FCB0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789FC4C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789FD70(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789FD90(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789FD94(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E579E8;
  return result;
}

void sub_29789FDCC()
{
  j_j_nullsub_1_110();

  j__free(v0);
}

uint64_t sub_29789FDF4()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789FD90(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789FEAC(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_29789FECC(a1);
  *(result + 24) = result;
  return result;
}

void *sub_29789FED0(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57A30;
  return result;
}

void sub_29789FF08()
{
  j_j_nullsub_1_111();

  j__free(v0);
}

uint64_t sub_29789FF30()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_29789FECC(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_29789FFE8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0008(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A000C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57A78;
  return result;
}

void sub_2978A0044()
{
  j_j_nullsub_1_112();

  j__free(v0);
}

uint64_t sub_2978A006C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0008(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A012C(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A014C(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A0150(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57AC0;
  return result;
}

void sub_2978A0188()
{
  j_j_nullsub_1_113();

  j__free(v0);
}

uint64_t sub_2978A01B0()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A014C(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0268(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0288(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A028C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57B08;
  return result;
}

void sub_2978A02C4()
{
  j_j_nullsub_1_114();

  j__free(v0);
}

uint64_t sub_2978A02EC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0288(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0380(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A03A0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A03A4(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57B50;
  return result;
}

void sub_2978A03DC()
{
  j_j_nullsub_1_115();

  j__free(v0);
}

uint64_t sub_2978A0404()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A03A0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A04C0(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A04E0(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A04E4(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57B98;
  return result;
}

void sub_2978A051C()
{
  j_j_nullsub_1_116();

  j__free(v0);
}

uint64_t sub_2978A0544()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A04E0(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0604(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0624(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A0628(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57BE0;
  return result;
}

void sub_2978A0660()
{
  j_j_nullsub_1_117();

  j__free(v0);
}

uint64_t sub_2978A0688()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0624(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0740(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0760(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A0764(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57C28;
  return result;
}

void sub_2978A079C()
{
  j_j_nullsub_1_118();

  j__free(v0);
}

uint64_t sub_2978A07C4()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0760(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0858(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0878(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A087C(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57C70;
  return result;
}

void sub_2978A08B4()
{
  j_j_nullsub_1_119();

  j__free(v0);
}

uint64_t sub_2978A08DC()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0878(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0994(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A09B4(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A09B8(void *a1)
{
  result = sub_297897654(a1);
  *result = &unk_2A1E57CB8;
  return result;
}

void sub_2978A09F0()
{
  j_j_nullsub_1_120();

  j__free(v0);
}

uint64_t sub_2978A0A18()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A09B4(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0AD8(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978A0AF8(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978A0AFC(void *a1)
{
  result = sub_29789A56C(a1);
  *result = &unk_2A1E57D00;
  return result;
}

void sub_2978A0B34()
{
  j_j_nullsub_1_121();

  j__free(v0);
}

uint64_t sub_2978A0B5C()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978A0AF8(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978A0C20(unsigned __int8 *a1)
{
  v2 = sub_29786AC48(a1);
  if (v2 <= 4)
  {
    if (v2 <= 1)
    {
      if (!v2)
      {
        v3 = sub_29781BF50(a1);

        return sub_2978478EC(v3);
      }

      v7 = sub_29781BF50(a1);

      return sub_2978A0E10(v7);
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          v3 = sub_29781BF50(a1);
        }

        else
        {
          v3 = sub_29781BF50(a1);
        }

        return sub_2978478EC(v3);
      }

      v6 = sub_29781BF50(a1);

      return sub_297816700(v6);
    }
  }

  else
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = sub_29781BF50(a1);
      }

      else if (v2 == 6)
      {
        v3 = sub_29781BF50(a1);
      }

      else
      {
        v3 = sub_29781BF50(a1);
      }

      return sub_2978478EC(v3);
    }

    if (v2 == 8)
    {
      v3 = sub_29781BF50(a1);

      return sub_2978478EC(v3);
    }

    if (v2 == 9)
    {
      v5 = sub_29781BF50(a1);
    }

    else
    {
      v5 = sub_29781BF50(a1);
    }

    return sub_297811C4C(v5);
  }
}

unsigned int *sub_2978A0E14(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  if (sub_29780B1BC(&v16))
  {
    v9 = sub_2977FB720(&v16);
    if (sub_297893B38(v9))
    {
      v10 = sub_2977FB720(&v16);
      v11 = sub_297890568(v10);
      v12 = sub_2977FB7B8(v11);
      sub_2978A0EC4(v12);
    }
  }

  v13 = sub_2978A0C00(40, a1, 8u);
  sub_2978A0ED4(&v15, a1, a3, a4);
  return sub_2978A0ED8(v13, a2, v15, v16);
}

unsigned int *sub_2978A0EE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A0F3C(v7, a2, v5, v4);
}

uint64_t sub_2978A0F44(uint64_t a1, int a2, int a3)
{
  v5 = sub_2978A0C00(24, a1, 8u);

  return sub_2978A0F90(v5, a2, a3);
}

uint64_t sub_2978A0F9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v7 = a7;
  v14 = sub_2978A0C00(32, a1, 8u);
  sub_2978A0ED4(&v16, a1, a3, a4);
  return sub_2978A1038(v14, a2, v16, a5, a6, v7);
}

uint64_t sub_2978A1044(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = sub_2978A0C00(56, a1, 8u);
  sub_2978A0ED4(&v19, a1, a4, a5);
  sub_2978A1104(v17, a2, a3, v19, a6, a7);
  sub_2978A1118((v17 + 16), a1, a9, a10);
  return v17;
}

void *sub_2978A1118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A21B8(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

uint64_t sub_2978A116C(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v16 = a2;
  v18 = sub_2978A0C00(56, a1, 8u);
  sub_2978A0ED4(&v20, a1, a5, a6);
  sub_2978A123C(v18, v16, a3, a4, v20, a7, a8);
  sub_2978A1250((v18 + 16), a1, a9, a10);
  return v18;
}

void *sub_2978A1250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A2264(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

uint64_t sub_2978A12A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2978A0C00(40, a1, 8u);

  return sub_2978A1300(v7, a2, a3, a4);
}

uint64_t sub_2978A1308(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v21 = *MEMORY[0x29EDCA608];
  v17 = sub_2978A0C00(176, a1, 8u);
  sub_2978A0ED4(&v19, a1, a3, a4);
  sub_2978A1400(v20, a9);
  sub_2978A1404(v17, a2, v19, a5, a6, a7, v9, v20);
  sub_2977FD134(v20);
  return v17;
}

uint64_t sub_2978A1414(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = *MEMORY[0x29EDCA608];
  sub_2978A1400(v21, a9);
  v19 = sub_2978A1308(a1, a2, a3, a4, a5, a6, a7, a8, v21);
  sub_2977FD134(v21);
  sub_2978A1504((v19 + 16), a1, a10, a11);
  return v19;
}

void *sub_2978A1504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A227C(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

uint64_t sub_2978A1558(uint64_t a1, uint64_t a2)
{
  v4 = sub_29788709C(a1);
  v6 = v5;
  v7 = sub_29788709C(a2);
  if (sub_297808D64(v4, v6, v7, v8))
  {
    return 0;
  }

  v9 = sub_2978735BC(a1);
  v10 = sub_2978735BC(a2);
  if (!sub_2978A16C0(v9, v10))
  {
    return 0;
  }

  v11 = sub_297803A7C(a1 + 16);
  v12 = sub_297888A34(a1 + 16);
  sub_2978A1858(v26, v11, v12);
  v13 = sub_297803A7C(a2 + 16);
  v14 = sub_297888A34(a2 + 16);
  sub_2978A1858(v25, v13, v14);
  v15 = sub_2977FB7B8(v26);
  if (v15 != sub_2977FB7B8(v25))
  {
    return 0;
  }

  if (!sub_2977FB7B8(v26))
  {
    return 1;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = sub_2977FE5F8(v26, v16);
    v19 = sub_2977FD5B0(*v18);
    v20 = sub_2977FE5F8(v25, v16);
    v21 = sub_2977FD5B0(*v20);
    v22 = sub_2978A16C0(v19, v21);
    if ((v22 & 1) == 0)
    {
      break;
    }

    v16 = v17;
  }

  while (sub_2977FB7B8(v26) > v17++);
  return v22;
}

uint64_t sub_2978A16C0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v2 = sub_2977FB720(&v27);
  v3 = sub_297887990(v2);
  v4 = sub_2977FB720(&v26);
  if (v3 != sub_297887990(v4))
  {
    return 0;
  }

  v5 = sub_2977FB720(&v27);
  v6 = sub_2978876EC(v5);
  if (v6)
  {
    v7 = v6;
    v8 = sub_2977FB720(&v26);
    v9 = sub_2978876EC(v8);
    LODWORD(v7) = sub_297887A38(v7);
    if (v7 != sub_297887A38(v9))
    {
      return 0;
    }
  }

  v10 = sub_2977FB720(&v27);
  v11 = sub_2978877CC(v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_2977FB720(&v26);
    v14 = sub_2978877CC(v13);
    LODWORD(v12) = sub_2978A1DA8(v12);
    if (v12 != sub_2978A1DA8(v14))
    {
      return 0;
    }
  }

  v15 = sub_2977FB720(&v27);
  v16 = sub_297888658(v15);
  v17 = sub_2977FB720(&v26);
  v18 = sub_297888658(v17);
  result = 0;
  if (!v16 || !v18)
  {
    return result;
  }

  if (v16 == v18 || sub_2978B5A90(v16) && (sub_2978B5AB4(v18) & 1) != 0 || sub_2978B5AB4(v16) && (sub_2978B5A90(v18) & 1) != 0)
  {
    return 1;
  }

  v20 = sub_2977FB720(&v27);
  v21 = sub_297888638(v20);
  v22 = sub_2977FB720(&v26);
  v23 = sub_297888638(v22);
  if (!v21)
  {
    return 0;
  }

  v24 = v23;
  if (!v23)
  {
    return 0;
  }

  v25 = sub_29788863C(v21);
  result = sub_29788863C(v24);
  if (v25 == result)
  {
    return 1;
  }

  if (v25 || result != 1)
  {
    return v25 == 1 && !result;
  }

  return result;
}

uint64_t sub_2978A185C(uint64_t a1, int a2)
{
  v3 = sub_2978A0C00(24, a1, 8u);

  return sub_2978A18A0(v3, a2);
}

_WORD *sub_2978A18A8(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A18F4(v5, a2, v3);
}

unsigned int *sub_2978A18FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v7 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A1958(v7, a2, v5, v4);
}

unsigned int *sub_2978A1960(unsigned int *a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2978A19BC(a1, 0, a2, a3);
  *(v6 + 16) = a4;
  *(v6 + 24) = 0;
  sub_2978A19CC(v6 + 32);
  sub_2978A19D0(a1, 0);
  sub_2978A19E0(a1, 0);
  return a1;
}

uint64_t sub_2978A19BC(uint64_t result, __int16 a2, int a3, uint64_t a4)
{
  *(result + 8) = a4;
  *result = 0;
  *(result + 4) = a3;
  *result = a2;
  return result;
}

unsigned int *sub_2978A1A00(unsigned int *a1, int a2, char a3, char a4)
{
  sub_29780AE44(&v10);
  v8 = sub_2978A19BC(a1, 5, a2, v10);
  *a1 = ((a3 & 3) << 17) | ((a4 & 0x7F) << 10) | *a1 & 0xFFF803FF;
  sub_2978A0EC4(v8);
  return a1;
}

uint64_t sub_2978A1A78(uint64_t a1, int a2, int a3)
{
  sub_29780AE44(&v8);
  v6 = sub_2978A19BC(a1, 4, a2, v8);
  *(a1 + 16) = a3;
  sub_2978A0EC4(v6);
  return a1;
}

uint64_t sub_2978A1AD8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  result = sub_2978A19BC(a1, 1, a2, a3);
  *(result + 16) = a4;
  *(result + 24) = a5;
  *result = *result & 0xFFFE07FF | ((a6 & 3) << 14);
  return result;
}

_DWORD *sub_2978A1B30(_DWORD *a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6)
{
  v13 = a3;
  if (sub_297829730(&v13))
  {
    v11 = a2;
  }

  else
  {
    v11 = v13;
  }

  sub_2978A1BC0(a1, 9, v11, a4);
  sub_2978A1BC8((a1 + 4));
  a1[6] = a2;
  a1[7] = a5;
  a1[8] = a6;
  sub_2978A1BCC((a1 + 10), a1);
  return a1;
}

_BYTE *sub_2978A1BD0(_BYTE *a1, uint64_t a2)
{
  result = sub_297884F38(a1, 5);
  *(result + 1) = a2;
  return result;
}

unsigned int *sub_2978A1BFC(unsigned int *a1, char a2, unsigned int a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v12 = sub_2978A1BC0(a1, 10, a4, a5);
  sub_2978A1BC8(v12 + 16);
  a1[6] = a3;
  a1[7] = a6;
  a1[8] = a7;
  sub_2978A19CC((a1 + 9));
  sub_2978A1C80((a1 + 10), a1);
  *a1 = *a1 & 0xFFFFE3FF | ((a2 & 7) << 10);
  return a1;
}

_BYTE *sub_2978A1C84(_BYTE *a1, uint64_t a2)
{
  result = sub_297884F38(a1, 6);
  *(result + 1) = a2;
  return result;
}

uint64_t sub_2978A1CB0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_29780AE44(&v9);
  result = sub_2978A19BC(a1, 3, a2, v9);
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = 0;
  return result;
}

uint64_t sub_2978A1D10(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  v14 = sub_2978A19BC(a1, 2, a2, a3);
  sub_2978A1BC8(v14 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 36) = a6;
  *(a1 + 40) = a5;
  *(a1 + 48) = 0;
  sub_2978A1400(a1 + 56, a8);
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *a1 = *a1 & 0xFFFF63FF | ((a7 & 3) << 10);
  return a1;
}

uint64_t sub_2978A1DBC(uint64_t a1, int a2)
{
  sub_29780AE44(&v5);
  result = sub_2978A19BC(a1, 6, a2, v5);
  *(a1 + 16) = 0;
  *a1 &= 0x83FFu;
  return result;
}

_WORD *sub_2978A1E14(_WORD *a1, int a2, char a3)
{
  sub_29780AE44(&v8);
  v6 = sub_2978A19BC(a1, 7, a2, v8);
  *a1 = *a1 & 0x83FF | ((a3 & 0x1F) << 10);
  sub_2978A0EC4(v6);
  return a1;
}

unsigned int *sub_2978A1E84(unsigned int *a1, int a2, unsigned __int8 a3, char a4)
{
  sub_29780AE44(&v10);
  v8 = sub_2978A19BC(a1, 8, a2, v10);
  *a1 = (a3 << 10) & 0xFFE3FFFF | ((a4 & 7) << 18) | *a1 & 0xFFE003FF;
  sub_2978A0EC4(v8);
  return a1;
}

uint64_t sub_2978A1EFC(uint64_t a1, void *a2)
{
  sub_29780CC38(a1, 8u);
  if (!sub_297806904(a2))
  {
    sub_2978A1F44(a1, a2);
  }

  return a1;
}

uint64_t sub_2978A1F44(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_29780406C(a2);
    v5 = sub_29780406C(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v8 = sub_297819048();
      }

      else
      {
        v8 = sub_2977FB720(a1);
      }

      v14 = v8;
      sub_2977FB7B8(a1);
      nullsub_1();
      v13 = a1;
      v12 = v14;
    }

    else
    {
      v6 = v5;
      if (sub_297864E08(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_297819048();
        }
      }

      else
      {
        sub_2977FB720(a1);
        sub_2977FB7B8(a1);
        nullsub_1();
        v7 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v7);
        sub_297804114(a1, v4);
        v6 = 0;
      }

      v9 = (sub_2977FB720(a2) + 8 * v6);
      v10 = sub_2977FB7B8(a2);
      v11 = sub_2977FB720(a1);
      sub_297807F80(v9, v10, (v11 + 8 * v6));
      v12 = sub_2977FB720(a1) + 8 * v4;
      v13 = a1;
    }

    sub_2977FD5DC(v13, v12);
  }

  return a1;
}

uint64_t *sub_2978A20D8(uint64_t *a1, uint64_t a2, const void *a3, const void *a4)
{
  v15[0] = a3;
  v15[1] = a4;
  *a1 = 0;
  sub_2977FB7B4(v14, &byte_2978FC3E5);
  if (!sub_297804D28(a3, a4, v14[0], v14[1]))
  {
    v8 = sub_2977FB7B8(v15);
    *a1 = sub_2978A0C10(a2, v8 + 5, 4u);
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

void *sub_2978A21C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  nullsub_1();
  result = sub_2977FB7B8(v11);
  if (result)
  {
    v7 = sub_2977FB7B8(v11);
    v8 = sub_2978A0C10(a2, 8 * v7, 8u);
    *a1 = v8;
    v9 = sub_2977FB720(v11);
    v10 = sub_2977FB7B8(v11);
    return memcpy(v8, v9, 8 * v10);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void *sub_2978A228C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = (a3 - a2) >> 3;
  return result;
}

uint64_t sub_2978A229C(uint64_t a1)
{
  switch(sub_29787E544(a1))
  {
    case 1u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 2u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 3u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 4u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 5u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 6u:
      v4 = sub_29781BF50(a1);

      return sub_2978A2614(v4);
    case 7u:
      v4 = sub_29781BF50(a1);

      return sub_2978A2614(v4);
    case 8u:
      v7 = sub_29781BF50(a1);

      return sub_2978A261C(v7);
    case 9u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xAu:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xBu:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xCu:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xDu:
      v5 = sub_29781BF50(a1);

      return sub_2978A2624(v5);
    case 0xEu:
      v5 = sub_29781BF50(a1);

      return sub_2978A2624(v5);
    case 0xFu:
      v5 = sub_29781BF50(a1);

      return sub_2978A2624(v5);
    case 0x10u:
      v4 = sub_29781BF50(a1);

      return sub_2978A2614(v4);
    case 0x11u:
      v4 = sub_29781BF50(a1);

      return sub_2978A2614(v4);
    case 0x12u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0x13u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0x14u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0x15u:
      v6 = sub_29781BF50(a1);

      goto LABEL_49;
    case 0x16u:
      v6 = sub_29781BF50(a1);

LABEL_49:
      result = sub_2978A264C(v6);
      break;
    default:
      v2 = sub_29781BF50(a1);

LABEL_4:
      result = sub_297850AD4(v2);
      break;
  }

  return result;
}

uint64_t sub_2978A2624(uint64_t a1)
{
  v1 = sub_2977FD5B0(a1);

  return sub_2978A229C(v1);
}

uint64_t sub_2978A2654(uint64_t a1)
{
  switch(sub_29787E544(a1))
  {
    case 1u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 2u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 3u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 4u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 5u:
      v8 = sub_29781BF50(a1);

      return sub_2978A29CC(v8);
    case 6u:
      v10 = sub_29781BF50(a1);

      return sub_2978A29D4(v10);
    case 7u:
      v7 = sub_29781BF50(a1);

      return sub_2978A29DC(v7);
    case 8u:
      v8 = sub_29781BF50(a1);

      return sub_2978A29CC(v8);
    case 9u:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xAu:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xBu:
      v2 = sub_29781BF50(a1);

      goto LABEL_4;
    case 0xCu:
      v6 = sub_29781BF50(a1);

      return sub_297811C4C(v6);
    case 0xDu:
      v5 = sub_29781BF50(a1);

      return sub_2978A29E4(v5);
    case 0xEu:
      v5 = sub_29781BF50(a1);

      return sub_2978A29E4(v5);
    case 0xFu:
      v5 = sub_29781BF50(a1);

      return sub_2978A29E4(v5);
    case 0x10u:
      v4 = sub_29781BF50(a1);

      return sub_297816700(v4);
    case 0x11u:
      v6 = sub_29781BF50(a1);

      return sub_297811C4C(v6);
    case 0x12u:
      v6 = sub_29781BF50(a1);

      return sub_297811C4C(v6);
    case 0x13u:
      v6 = sub_29781BF50(a1);

      return sub_297811C4C(v6);
    case 0x14u:
      v6 = sub_29781BF50(a1);

      return sub_297811C4C(v6);
    case 0x15u:
      v9 = sub_29781BF50(a1);

      goto LABEL_49;
    case 0x16u:
      v9 = sub_29781BF50(a1);

LABEL_49:
      result = sub_2978A264C(v9);
      break;
    default:
      v2 = sub_29781BF50(a1);

LABEL_4:
      result = sub_297850AD4(v2);
      break;
  }

  return result;
}

uint64_t sub_2978A29E4(unsigned int *a1)
{
  v4 = sub_2977FB5F0(a1);
  if (!sub_297829730(&v4))
  {
    return v4;
  }

  v2 = sub_2977FD5B0(a1);
  return sub_2978A2654(v2);
}

uint64_t sub_2978A2A34(uint64_t a1)
{
  switch(sub_29787E544(a1))
  {
    case 5u:
      v12 = sub_29781BF50(a1);
      v3 = sub_297850AD4(v12);
      v13 = sub_29781BF50(a1);
      v5 = sub_2978A29CC(v13);
      break;
    case 6u:
      v18 = sub_29781BF50(a1);
      v3 = sub_2978A2614(v18);
      v19 = sub_29781BF50(a1);
      v5 = sub_2978A29D4(v19);
      break;
    case 7u:
      v8 = sub_29781BF50(a1);
      v3 = sub_2978A2614(v8);
      v9 = sub_29781BF50(a1);
      v5 = sub_2978A29DC(v9);
      break;
    case 8u:
      v20 = sub_29781BF50(a1);
      v3 = sub_2978A261C(v20);
      v21 = sub_29781BF50(a1);
      v5 = sub_2978A29CC(v21);
      break;
    case 0xCu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v22 = sub_29781BF50(a1);
      v3 = sub_297850AD4(v22);
      v23 = sub_29781BF50(a1);
      v5 = sub_297811C4C(v23);
      break;
    case 0xDu:
    case 0xEu:
    case 0xFu:
      v16 = sub_29781BF50(a1);
      v3 = sub_2978A2624(v16);
      v17 = sub_29781BF50(a1);
      v5 = sub_2978A29E4(v17);
      break;
    case 0x10u:
      v6 = sub_29781BF50(a1);
      v3 = sub_2978A2614(v6);
      v7 = sub_29781BF50(a1);
      v5 = sub_297816700(v7);
      break;
    case 0x11u:
      v10 = sub_29781BF50(a1);
      v3 = sub_2978A2614(v10);
      v11 = sub_29781BF50(a1);
      v5 = sub_297811C4C(v11);
      break;
    case 0x15u:
    case 0x16u:
      v14 = sub_29781BF50(a1);
      v3 = sub_2978A264C(v14);
      v15 = sub_29781BF50(a1);
      v5 = sub_2978A264C(v15);
      break;
    default:
      v2 = sub_29781BF50(a1);
      v3 = sub_297850AD4(v2);
      v4 = sub_29781BF50(a1);
      v5 = sub_297850AD4(v4);
      break;
  }

  sub_297853514(&v25, v3, v5);
  return v25;
}

uint64_t sub_2978A2D74(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x29EDCA608];
  sub_2978A2DFC(v3, a2);
  sub_29788C880(v4, v3);
  sub_2978854E4(v3);
  sub_29788CF68(v4);
  return sub_2978854E0(v4);
}

uint64_t sub_2978A2E04(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v11 = sub_2978A0C00(24, a1, 8u);

  return sub_2978A2E78(v11, a2, a3, a4, v7, v6);
}

uint64_t sub_2978A2E80(uint64_t a1)
{
  v5 = a1;
  result = sub_29788C710(&v5);
  if ((result & 1) == 0)
  {
    while (1)
    {
      result = sub_29788F9B8(&v5);
      if (result)
      {
        return result;
      }

      v2 = sub_2978A2F14(v5);
      if (v2)
      {
        break;
      }

      v2 = sub_2978A2F50(v5);
      if (v2)
      {
        break;
      }

      v2 = sub_2978A2F8C(v5);
      if (v2)
      {
        break;
      }

      v4 = sub_2978A2FC8(v5);
      if (v4)
      {
        v3 = sub_2977FB7B8(v4);
        goto LABEL_10;
      }

LABEL_11:
      result = sub_29788C710(&v5);
      if (result)
      {
        return result;
      }
    }

    v3 = sub_2977FD5B0(v2);
LABEL_10:
    v5 = v3;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2978A2F14(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A441C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978A2F50(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A447C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978A2F8C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A44DC(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978A2FC8(uint64_t a1)
{
  v2 = a1;
  if (sub_2978A453C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_2978A3004(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v11 = sub_2978A0C00(32, a1, 8u);

  return sub_2978A3078(v11, a2, a3, a4, a5, v6);
}

_DWORD *sub_2978A3080(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2978A0C00(40, a1, 8u);

  return sub_2978A30F4(v11, a2, a3, a4, a5, a6);
}

uint64_t sub_2978A30FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v11 = sub_2978A0C00(24, a1, 8u);

  return sub_2978A3170(v11, a2, a3, a4, v7, v6);
}

_DWORD *sub_2978A3178(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _WORD *a5)
{
  v7 = a3;
  v8 = a2;
  sub_2978A0EC4(a5);
  v10 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A31F0(v10, v8, v7, a4, a5);
}

uint64_t sub_2978A31F8(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v20[1] = a6;
  v21 = a2;
  v20[0] = a5;
  v14 = sub_2978A0C00(32, a1, 8u);
  v15 = sub_2978A32D8(v14, a2, a3, a7);
  *(v15 + 4) = *(v15 + 4) & 0xFFFFE7FF | ((a4 & 3) << 11);
  sub_2978A32E4((v15 + 8), a1, a5, a6);
  if (sub_2977FB7B8(v20))
  {
    v16 = sub_2977FB720(&v21);
    if (sub_2978B5368(v16))
    {
      v17 = sub_2977FB720(v20);
      v18 = sub_29788BC5C(*v17);
      sub_2978A3338(v14, v18);
    }
  }

  return v14;
}

void *sub_2978A32E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A456C(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

_DWORD *sub_2978A3350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = a2;
  v13 = sub_2978A0C00(40, a1, 8u);

  return sub_2978A33CC(v13, v12, a3, a6, a4, a5, a7);
}

_DWORD *sub_2978A33D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v10 = a2;
  v11 = sub_2978A0C00(32, a1, 8u);

  return sub_2978A344C(v11, v10, a3, a4, a5, a6);
}

uint64_t sub_2978A3458(uint64_t a1, _WORD *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_2978A0EC4(a2);
  v12 = sub_2978A0C00(32, a1, 8u);
  v13 = sub_2978A34F0(v12, a2, a3, a6);
  sub_2978A34FC((v13 + 8), a1, a4, a5);
  sub_2978A3550(v12);
  return v12;
}

void *sub_2978A34FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A4584(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

uint64_t sub_2978A3550(uint64_t a1)
{
  result = sub_297888A90(*(a1 + 16) + 16);
  if (result)
  {
    v3 = 0;
    do
    {
      v4 = sub_29788A818(*(a1 + 16) + 16, v3);
      if (sub_2978A35CC(*v4))
      {
        v5 = sub_29788A818(a1 + 8, v3);
        sub_2978A2E80(*v5);
      }

      ++v3;
      result = sub_297888A90(*(a1 + 16) + 16);
    }

    while (v3 < result);
  }

  return result;
}

uint64_t sub_2978A3610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = a4;
  v14 = a2;
  v16 = sub_2978A0C00(32, a1, 8u);
  v17 = sub_2978A36B0(v16, v14, a3, v12, a5, a8);
  sub_2978A36BC((v17 + 8), a1, a6, a7);
  return v16;
}

void *sub_2978A36BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A459C(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

uint64_t sub_2978A3710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = a4;
  v14 = a2;
  v16 = sub_2978A0C00(32, a1, 8u);
  v17 = sub_2978A37B0(v16, v14, a3, v12, a5, a8);
  sub_2978A37BC((v17 + 8), a1, a6, a7);
  return v16;
}

void *sub_2978A37BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v6 = sub_2977FB7B8(&v8);
  sub_2978A45B4(a1, v6);
  return sub_2978A21C0(a1, a2, v8, v9);
}

_DWORD *sub_2978A3810(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = a5 != 1;
  v12 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A3890(v12, a2, v9, a4, v7, v11, v6);
}

_DWORD *sub_2978A3898(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v9 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A38FC(v9, a2, v7, a4, v5);
}

uint64_t sub_2978A3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978A0C00(16, a1, 8u);

  return sub_2978A3950(v5, a2, a3);
}

uint64_t sub_2978A3954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978A0C00(24, a1, 8u);

  return sub_2978A39A0(v5, a2, a3);
}

void *sub_2978A39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a4;
  v12 = a2;
  v14 = sub_2978A0C00(32, a1, 8u);
  v15 = sub_297828314(a6);
  sub_2978A0ED4(&v18, a1, v15, v16);
  return sub_2978A3A4C(v14, v12, a3, v10, a7, a5, v18);
}

void *sub_2978A3A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a4;
  v12 = a2;
  v14 = sub_2978A0C00(32, a1, 8u);
  v15 = sub_297828314(a6);
  sub_2978A0ED4(&v18, a1, v15, v16);
  return sub_2978A3AFC(v14, v12, a3, v10, a7, a5, v18);
}

void *sub_2978A3B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = a4;
  v12 = a2;
  v14 = sub_2978A0C00(32, a1, 8u);
  v15 = sub_297828314(a6);
  sub_2978A0ED4(&v18, a1, v15, v16);
  return sub_2978A3BAC(v14, v12, a3, v10, a7, a5, v18);
}

uint64_t sub_2978A3BC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v12 = sub_29788BC5C(a3);
  sub_2978A3C5C(a1, 8, 0, v12, a2);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  sub_29788BC5C(a3);
  *(a1 + 4) = ((a5 & 0xF) << 11) & 0x7FFF | ((a6 & 3) << 15) | *(a1 + 4) & 0xFFFE07FF;
  sub_2978A2E80(*(a1 + 8));
  return a1;
}

_DWORD *sub_2978A3C5C(_DWORD *result, __int16 a2, char a3, char a4, int a5)
{
  *result = a5;
  result[1] = 0;
  *(result + 2) = a2 & 0xF8FF | ((a3 & 1) << 8) & 0xF9FF | ((a4 & 3) << 9);
  return result;
}

_DWORD *sub_2978A3C70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v14 = a5;
  v11 = sub_2977FB720(&v14);
  if (sub_2978B5368(v11))
  {
    v12 = sub_29788BC5C(a3);
  }

  else
  {
    v12 = 0;
  }

  result = sub_2978A3C5C(a1, 6, 0, v12, a2);
  *(a1 + 8) = v14;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 4) = *(a1 + 4) & 0x7FF | (a6 << 11);
  return result;
}

_DWORD *sub_2978A3D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_29788BC5C(a4);
  result = sub_2978A3C5C(a1, 7, 0, v12, a3);
  *(a1 + 8) = a6;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  return result;
}

uint64_t sub_2978A3D78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = sub_29788BC5C(a3);
  sub_2978A3C5C(a1, 5, 0, v12, a2);
  *(a1 + 8) = a4;
  *(a1 + 16) = a3;
  if (a6)
  {
    v13 = 0x4000;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 4) = v13 & 0xC7FF | ((a5 & 7) << 11) | *(a1 + 4) & 0x87FF;
  if (a5 == 5 || a5 == 3)
  {
    sub_2978A2E80(a3);
  }

  return a1;
}

_DWORD *sub_2978A3E1C(_DWORD *a1, char a2, char a3, int a4, uint64_t a5)
{
  result = sub_2978A3C5C(a1, 11, a2, a3, a4);
  *(result + 1) = a5;
  return result;
}

uint64_t sub_2978A3E58(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_2978A3C5C(a1, 12, 0, 0, a3);
  sub_2978A1BC8((v7 + 2));
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  return a1;
}

_DWORD *sub_2978A3EB0(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = sub_29788BC5C(a5);
  result = sub_2978A3C5C(a1, 16, a2, v14, a4);
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  return result;
}

_DWORD *sub_2978A3F2C(_DWORD *a1, char a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = sub_2978A3C5C(a1, 17, a2, 0, a5);
  *(result + 1) = a3;
  *(result + 2) = a4;
  result[6] = a6;
  return result;
}

uint64_t sub_2978A3F78(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v8 = sub_297888A28(a2);
  sub_2978A3C5C(a1, 20, 0, v8, a3);
  sub_2978A1BC8(a1 + 8);
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  return a1;
}

uint64_t sub_2978A3FE0(uint64_t a1, char a2, uint64_t a3, char a4, int a5, int a6)
{
  v10 = sub_2978A3C5C(a1, 19, 0, a4, a5);
  sub_2978A1BC8((v10 + 2));
  *(a1 + 16) = a3;
  *(a1 + 24) = a6;
  *(a1 + 4) = *(a1 + 4) & 0xFFFC07FF | ((a2 & 0x7F) << 11);
  return a1;
}

uint64_t sub_2978A4044(uint64_t a1, char a2, uint64_t a3, char a4, int a5, int a6)
{
  v10 = sub_2978A3C5C(a1, 18, 0, a4, a5);
  sub_2978A1BC8((v10 + 2));
  *(a1 + 16) = a3;
  *(a1 + 24) = a6;
  *(a1 + 4) = *(a1 + 4) & 0xFFFF07FF | ((a2 & 0x1F) << 11);
  return a1;
}

_DWORD *sub_2978A40A8(_DWORD *a1, int a2, char a3, uint64_t a4, char a5, char a6, char a7)
{
  result = sub_2978A3C5C(a1, 9, a6, a7, a2);
  *(result + 1) = a4;
  result[1] = ((a3 & 0x1F) << 11) | ((a5 & 3) << 16) | result[1] & 0xFFFC07FF;
  return result;
}

_DWORD *sub_2978A4108(_DWORD *a1, int a2, char a3, uint64_t a4, char a5)
{
  result = sub_2978A3C5C(a1, 10, 0, a5, a2);
  *(result + 1) = a4;
  result[1] = result[1] & 0xFFFE07FF | ((a3 & 0x3F) << 11);
  return result;
}

_DWORD *sub_2978A4154(uint64_t a1, char a2, unsigned int *a3)
{
  v6 = sub_29788BD30(a3);
  v7 = sub_2977FB5F0(a3);
  result = sub_2978A3C5C(a1, 21, v6, a2, v7);
  *(a1 + 8) = a3;
  return result;
}

_DWORD *sub_2978A41B4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = sub_29788BD30(a3);
  v7 = sub_29788BC5C(a3);
  v8 = sub_2977FB5F0(a3);
  result = sub_2978A3C5C(a1, 22, v6, v7, v8);
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_2978A4258(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_2978A4278(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_2978A427C(void *a1, uint64_t a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E57D48;
  sub_2978A42CC((v4 + 1), a2);
  return a1;
}

void sub_2978A42D4()
{
  j_j_nullsub_1_122();

  j__free(v0);
}

uint64_t sub_2978A42FC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_2978A4278(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

unint64_t sub_2978A43B0(_DWORD *a1, uint64_t a2)
{
  if (sub_29788BC5C(a2))
  {
    return 0;
  }

  v6 = sub_29788C170(a2);
  v5 = sub_2977FB720(&v6);
  result = sub_2978B5368(v5);
  if (result)
  {
    sub_2978A3338(a2, *a1);
    return 1;
  }

  return result;
}

void *sub_2978A45C4(_DWORD *a1, char a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  result = sub_2978A3C5C(a1, 13, a2, a4, a5);
  result[1] = a3;
  result[2] = a6;
  result[3] = a7;
  return result;
}

void *sub_2978A460C(_DWORD *a1, char a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  result = sub_2978A3C5C(a1, 14, a2, a4, a5);
  result[1] = a3;
  result[2] = a6;
  result[3] = a7;
  return result;
}

void *sub_2978A4654(_DWORD *a1, char a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  result = sub_2978A3C5C(a1, 15, a2, a4, a5);
  result[1] = a3;
  result[2] = a6;
  result[3] = a7;
  return result;
}

uint64_t sub_2978A46A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_297885F38(a1);
  sub_2978A4798(v19, a2, v4);
  v19[71] = sub_2978A479C(a1);
  v19[72] = v5;
  sub_2978A47CC(v19);
  sub_2978A4870(v19);
  v17 = sub_297885F40(a1);
  v18 = v6;
  v7 = sub_2977FB720(&v17);
  v8 = sub_2978130B8(&v17);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978A49A4(v19, v10, 1);
    }

    while (v7 != v9);
  }

  v17 = sub_297886048(a1);
  v18 = v11;
  v12 = sub_2977FB720(&v17);
  v13 = sub_2978130B8(&v17);
  if (v12 != v13)
  {
    v14 = v13;
    do
    {
      v15 = *v12++;
      sub_2978A49A4(v19, v15, 1);
    }

    while (v12 != v14);
  }

  return sub_2978A4A7C(v19);
}

void **sub_2978A47CC(uint64_t *a1)
{
  sub_297801F64(*a1, "precision highp float;\n\n");
  v2 = sub_2977FB720((a1 + 71));
  result = sub_2978130B8(a1 + 71);
  if (v2 != result)
  {
    v4 = result;
    while (1)
    {
      v6 = sub_2977FD5B0(*v2);
      v5 = sub_2977FB720(&v6);
      result = sub_297888638(v5);
      if (result)
      {
        result = sub_297888648(result);
        if (!result)
        {
          break;
        }
      }

      if (++v2 == v4)
      {
        return result;
      }
    }

    return sub_297801F64(*a1, "#define sample(s,p) texture2D(_samplers[s], p)\n#define samplerTransform(s,p) (vec3(p, 1.0) * _transforms[s]).xy\n#define samplerExtent(s) _extents[s]\n\n");
  }

  return result;
}

void **sub_2978A4870(uint64_t *a1)
{
  v2 = sub_2977FB720((a1 + 71));
  result = sub_2978130B8(a1 + 71);
  if (v2 != result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v16 = sub_2977FD5B0(*v2);
      v6 = sub_2977FB720(&v16);
      result = sub_297888638(v6);
      if (result)
      {
        result = sub_297888648(result);
        if (!result)
        {
          ++v5;
        }
      }

      ++v2;
    }

    while (v2 != v4);
    if (v5)
    {
      v7 = sub_297801F64(*a1, "uniform highp sampler2D _samplers [");
      v8 = sub_29781E1EC(v7, v5);
      v9 = sub_297801F64(v8, "];\nuniform highp mat3 _transforms [");
      v10 = sub_29781E1EC(v9, v5);
      v11 = sub_297801F64(v10, "];\nuniform highp vec4 _extents [");
      v12 = sub_29781E1EC(v11, v5);
      sub_297801F64(v12, "];\n\n");
      if (sub_2978A50D4(a1[74]))
      {
        sub_297801F64(*a1, "vec4 _sampler_srgb_to_linear (vec4 s) {\n  s.rgb = sign(s.rgb) * mix(abs(s.rgb) * 0.077399380804954, pow(abs(s.rgb) * 0.947867298578199 + 0.052132701421801, vec3(2.4)), step(0.04045, abs(s.rgb)));\n  return s;\n}\n\n");
      }

      result = sub_2978A50DC(a1[74]);
      if (result)
      {
        v13 = sub_297801F64(*a1, "vec4 _sampler_swizzle(vec4 s) {\n  return ");
        v14 = sub_2978A50DC(a1[74]);
        v15 = sub_297801F64(v13, v14);
        return sub_297801F64(v15, ";\n}\n\n");
      }
    }
  }

  return result;
}

uint64_t sub_2978A49A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v12[5] = *MEMORY[0x29EDCA608];
  sub_297864964(v12);
  v6 = sub_29788A970(a2);
  v7 = sub_29788A974(a2);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v11[0] = v9;
      sub_2978040A4(v12, v11);
    }

    while (v6 != v8);
  }

  if (!sub_297806904(v12))
  {
    sub_29780B1E8(v11, v12);
    sub_2978A4D24(a1, v11[0], v11[1], v3);
  }

  return sub_2977FD134(v12);
}

uint64_t sub_2978A4A80(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = sub_297885F38(a1);
  sub_2978A4798(v26, a2, v4);
  v5 = sub_297886294(a1);
  v26[74] = sub_29788AA68(a1);
  v26[71] = sub_2978A479C(a1);
  v26[72] = v6;
  sub_2978A47CC(v26);
  sub_2978A4870(v26);
  v24 = sub_297885F40(a1);
  v25 = v7;
  v8 = sub_2977FB720(&v24);
  v9 = sub_2978130B8(&v24);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8;
      sub_29780B1B8(v27);
      v12 = sub_2978862BC(v11);
      for (i = sub_2978862C0(v11); v12 != i; ++v12)
      {
        v22 = *v12;
        if ((sub_2978A4CDC(v22) & 1) != 0 || sub_297886348(v5))
        {
          sub_2978040A4(v27, &v22);
        }
      }

      if (sub_29780406C(v27))
      {
        sub_29780B1E8(&v22, v27);
        sub_2978A4D24(v26, v22, v23, 1);
      }

      sub_2977FD134(v27);
      ++v8;
    }

    while (v8 != v10);
  }

  v24 = sub_297886048(a1);
  v25 = v14;
  v15 = sub_2977FB720(&v24);
  v16 = sub_2978130B8(&v24);
  if (v15 != v16)
  {
    v17 = v16;
    do
    {
      v18 = *v15;
      sub_29780B1B8(v27);
      v19 = sub_2978862BC(v18);
      for (j = sub_2978862C0(v18); v19 != j; ++v19)
      {
        v22 = *v19;
        if ((sub_2978A4CDC(v22) & 1) != 0 || sub_297886348(v5))
        {
          sub_2978040A4(v27, &v22);
        }
      }

      if (sub_29780406C(v27))
      {
        sub_29780B1E8(&v22, v27);
        sub_2978A4D24(v26, v22, v23, 1);
      }

      sub_2977FD134(v27);
      ++v15;
    }

    while (v15 != v17);
  }

  return sub_2978A4A7C(v26);
}

uint64_t sub_2978A4CDC(uint64_t a1)
{
  v2 = a1;
  if (sub_29788AB98(&v2) & 1) != 0 || (sub_29788AB9C(&v2))
  {
    return 1;
  }

  else
  {
    return sub_29788ABA0(&v2);
  }
}

uint64_t *sub_2978A4D24(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v48[0] = a2;
  v48[1] = a3;
  v47 = a4;
  v46[0] = v48;
  v46[1] = a1;
  v46[2] = &v47;
  v5 = sub_2977FB7B8(v48);
  v6 = sub_2977FB720(v48);
  v7 = sub_29788AE7C(v6);
  if (v5 == 1)
  {
    if (!v7 || (v8 = sub_2977FB720(v48), v44[0] = sub_29788C514(*v8), v9 = sub_2977FB720(v44), (v10 = sub_297888638(v9)) == 0) || (result = sub_297888648(v10), result))
    {
      v12 = sub_2977FB720(v48);
      sub_2978A5114(a1, *v12);
      return sub_29788ADE8(v46);
    }
  }

  else
  {
    if (!v7)
    {
      v27 = sub_2977FB720(v48);
      if (sub_29788AE80(v27))
      {
        sub_297801F64(*a1, "invariant");
        v28 = sub_2977FB720(v48);
        v29 = sub_2978130B8(v48);
        if (v28 != v29)
        {
          v30 = v29;
          v31 = 1;
          do
          {
            v32 = *v28;
            if ((v31 & 1) == 0)
            {
              sub_297801F64(*a1, ",");
            }

            sub_297801F64(*a1, " ");
            v33 = sub_29781BF50(v32);
            if (sub_2977FD5B0(v33))
            {
              v34 = *a1;
              v35 = sub_2977FD5B0(v33);
              v36 = sub_29788709C(v35);
              sub_297801FA8(v34, v36, v37);
            }

            else
            {
              v38 = sub_297888B98(v33);
              sub_297888B78(a1, v38);
            }

            v31 = 0;
            ++v28;
          }

          while (v28 != v30);
        }
      }

      else
      {
        v39 = sub_2977FB720(v48);
        v40 = sub_2978130B8(v48);
        if (v39 != v40)
        {
          v41 = v40;
          do
          {
            v42 = *v39++;
            sub_2978A5114(a1, v42);
          }

          while (v39 != v41);
        }
      }

      return sub_29788ADE8(v46);
    }

    v13 = sub_2977FB720(v48);
    result = sub_2978130B8(v48);
    if (v13 != result)
    {
      v14 = result;
      v15 = 1;
      while (1)
      {
        v45 = sub_29781BF50(*v13);
        v44[0] = sub_2977FD5B0(v45);
        v16 = sub_2977FB720(v44);
        v17 = sub_297888638(v16);
        if (v17)
        {
          result = sub_297888648(v17);
          if (!result)
          {
            break;
          }
        }

        v18 = a1[2];
        if (v18 && (v44[0] = sub_297886EF0(v18, &v45), v44[1] = v19, v43[0] = sub_297886F58(a1[2]), v43[1] = v20, sub_29782EE3C(v44, v43)))
        {
          v21 = v45;
          v22 = sub_2977FB720(v44);
          sub_2978A512C(a1, v21, *(v22 + 8));
          result = sub_29788ADE8(v46);
        }

        else
        {
          if (v15)
          {
            sub_2978A5220(a1, v45);
            sub_2978A53BC(a1, v45);
          }

          else
          {
            sub_297801F64(*a1, ",");
          }

          v23 = sub_297801F64(*a1, " ");
          v24 = sub_29788709C(v45);
          sub_297801FA8(v23, v24, v25);
          sub_297887314(a1, v45);
          result = sub_29783CFFC(v45);
          if (result)
          {
            sub_297801F64(*a1, " = ");
            v26 = sub_29783CFFC(v45);
            result = sub_2978A5490(a1, v26);
          }

          v15 = 0;
        }

        if (++v13 == v14)
        {
          if ((v15 & 1) == 0)
          {
            return sub_29788ADE8(v46);
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978A506C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = a3;
  sub_2978A50C0(a1 + 24);
  sub_297804560(a1 + 568);
  *(a1 + 584) = 0u;
  return a1;
}

void **sub_2978A5114(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_2978A54A8(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_2978A512C(uint64_t *a1, uint64_t a2, float *a3)
{
  v6 = sub_29783C254(a2);
  v7 = *a1;
  if (v6)
  {
    v8 = sub_29788709C(a2);
    v10 = sub_297801FA8(v7, v8, v9);
  }

  else
  {
    sub_297801F64(*a1, "const ");
    sub_2978A53BC(a1, a2);
    v11 = sub_297801F64(*a1, " ");
    v12 = sub_29788709C(a2);
    sub_297801FA8(v11, v12, v13);
    sub_297887314(a1, a2);
    v10 = *a1;
  }

  sub_297801F64(v10, " = ");
  v14 = sub_2977FD5B0(a2);
  v15 = *a1;

  return sub_297887564(a3, v14, v15);
}

uint64_t *sub_2978A5220(uint64_t *a1, _DWORD *a2)
{
  v4 = sub_297816700(a2);
  sub_2978A6084(a1, v4);
  if (sub_297887CC8(a2) && (sub_297887CD4(a2) & 1) == 0)
  {
    sub_297801F64(*a1, "invariant ");
  }

  v5 = sub_297887CE0(a2);
  if (v5 == 1)
  {
    v6 = "smooth ";
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_9;
    }

    v6 = "flat ";
  }

  sub_297801F64(*a1, v6);
LABEL_9:
  v7 = sub_297887CEC(a2);
  if (v7 > 4)
  {
    if (v7 > 6)
    {
      if (v7 == 7)
      {
        v8 = "uniform ";
      }

      else
      {
        if (v7 != 8)
        {
          goto LABEL_28;
        }

        v8 = "varying ";
      }
    }

    else if (v7 == 5)
    {
      v8 = "centroid in ";
    }

    else
    {
      v8 = "centroid out ";
    }

    goto LABEL_27;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = "in ";
    }

    else
    {
      v8 = "out ";
    }

    goto LABEL_27;
  }

  if (v7 == 1)
  {
    v8 = "attribute ";
    goto LABEL_27;
  }

  if (v7 == 2 && (sub_29783C224(a2) & 1) == 0)
  {
    v8 = "const ";
LABEL_27:
    sub_297801F64(*a1, v8);
  }

LABEL_28:
  result = sub_29783C248(a2);
  if (result)
  {
    v10 = sub_297887D1C(a2);

    return sub_2978A5CC0(a1, v10);
  }

  return result;
}

uint64_t sub_2978A53BC(uint64_t *a1, uint64_t a2)
{
  v13 = sub_2977FD5B0(a2);
  v4 = sub_2977FB720(&v13);
  v5 = sub_297887DB4(v4);
  if (v5)
  {
    v6 = sub_2977FB7B8(v5);
    sub_2978A6C30(a1, v6, a2);
  }

  else
  {
    v13 = sub_2977FD5B0(a2);
    v7 = sub_2977FB720(&v13);
    v8 = sub_297887E3C(v7);
    if (v8)
    {
      v9 = sub_2977FB7B8(v8);
      sub_2978A5F78(a1, v9);
    }

    else
    {
      v10 = sub_2977FD5B0(a2);
      sub_2978A5CE4(a1, v10);
    }
  }

  LODWORD(v13) = 0;
  v11 = sub_2977FD5B0(a2);
  result = sub_2978881F0(v11, &v13);
  if (result)
  {
    result = sub_297888250(a2);
    if ((result & 1) == 0)
    {
      return sub_29788825C(a1, v13);
    }
  }

  return result;
}

void **sub_2978A5490(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    return sub_2978A6CB4(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

void **sub_2978A54A8(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = sub_29786AC48(a2);
  if (v4 <= 4)
  {
    if (v4 <= 1)
    {
      if (v4)
      {

        return sub_2978A57DC(a1, a2);
      }

      else
      {

        return sub_2978A56A0(a1, a2);
      }
    }

    else if (v4 == 2)
    {

      return sub_2978A5918(a1, a2);
    }

    else if (v4 == 3)
    {

      return sub_297886C88(a1, a2);
    }

    else
    {

      return sub_2978A5B8C(a1, a2);
    }
  }

  else if (v4 > 7)
  {
    if (v4 == 8)
    {

      return sub_297886E50(a1, a2);
    }

    else if (v4 == 9)
    {

      return sub_2978A5C58(a1, a2);
    }

    else
    {

      return sub_2978A5C5C(a1, a2);
    }
  }

  else if (v4 == 5)
  {

    return sub_2978A5BDC(a1, a2);
  }

  else if (v4 == 6)
  {

    return sub_297886D58(a1, a2);
  }

  else
  {

    return sub_297886DF8(a1, a2);
  }
}

void **sub_2978A56A0(uint64_t *a1, _DWORD *a2)
{
  v18 = a2;
  v3 = a1[2];
  if (v3)
  {
    v17[0] = sub_297886EF0(v3, &v18);
    v17[1] = v4;
    v16[0] = sub_297886F58(a1[2]);
    v16[1] = v5;
    if (sub_29782EE3C(v17, v16))
    {
      v6 = v18;
      v7 = sub_2977FB720(v17);
      return sub_2978A512C(a1, v6, *(v7 + 8));
    }

    a2 = v18;
  }

  if (sub_29783C254(a2))
  {
    v9 = *a1;
    v10 = sub_29788709C(v18);
    sub_297801FA8(v9, v10, v11);
  }

  else
  {
    sub_2978A5220(a1, v18);
    sub_2978A53BC(a1, v18);
    v12 = sub_297801F64(*a1, " ");
    v13 = sub_29788709C(v18);
    sub_297801FA8(v12, v13, v14);
    sub_297887314(a1, v18);
  }

  result = sub_29783CFFC(v18);
  if (result)
  {
    sub_297801F64(*a1, " = ");
    v15 = sub_29783CFFC(v18);
    return sub_2978A5490(a1, v15);
  }

  return result;
}

uint64_t sub_2978A57DC(uint64_t *a1, _DWORD *a2)
{
  if (sub_297888998(a2))
  {
    sub_297801F64(*a1, "const ");
  }

  sub_2978A5C60(a1, a2);
  if (sub_297887CC8(a2))
  {
    v4 = sub_297888A04(a2);
    sub_2978A5CC0(a1, v4);
  }

  v12 = -1;
  v5 = sub_2977FD5B0(a2);
  sub_2978A5CE4(a1, v5);
  v6 = sub_2977FD5B0(a2);
  if (sub_2978881F0(v6, &v12) && (sub_297888250(a2) & 1) == 0)
  {
    sub_29788825C(a1, v12);
  }

  result = sub_297888470(a2);
  if (result)
  {
    v8 = sub_297801F64(*a1, " ");
    v9 = sub_29788709C(a2);
    sub_297801FA8(v8, v9, v10);
    result = sub_297888250(a2);
    if (result)
    {
      v11 = v12;

      return sub_29788825C(a1, v11);
    }
  }

  return result;
}

uint64_t sub_2978A5918(uint64_t *a1, _DWORD *a2)
{
  a1[73] = a2;
  if (sub_29788AB30(a2))
  {

    return sub_2978A6198(a1, a2);
  }

  else
  {
    v5 = sub_29788709C(a2);
    v7 = v6;
    sub_2977FB7B4(&v24, "destCoord");
    result = sub_297804D28(v5, v7, v24, v25);
    if ((result & 1) == 0)
    {
      if (sub_2978A62C0(a2) && (v24 = sub_297873448((a1 + 3)), v25 = v8, v23[0] = sub_29787347C((a1 + 3)), v23[1] = v9, sub_29781550C(&v24, v23)))
      {
        while (1)
        {
          sub_2978A62CC();
          result = sub_2978A1558(a2, v10);
          if (result)
          {
            break;
          }

          sub_2978734C0(&v24);
          if (!sub_29781550C(&v24, v23))
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        if (sub_297888A1C(a2))
        {
          v11 = sub_297888A28(a2);
          sub_2978A5CC0(a1, v11);
        }

        v12 = sub_2978735BC(a2);
        sub_2978A5CE4(a1, v12);
        LODWORD(v24) = 0;
        v13 = sub_2978735BC(a2);
        if (sub_2978881F0(v13, &v24))
        {
          sub_29788825C(a1, v24);
        }

        v14 = sub_297801F64(*a1, " ");
        v15 = sub_29788709C(a2);
        v17 = sub_297801FA8(v14, v15, v16);
        sub_297801F64(v17, "(");
        v18 = sub_297803A7C((a2 + 4));
        v19 = sub_297888A34((a2 + 4));
        if (v18 != v19)
        {
          v20 = v19;
          v21 = v19 - v18;
          do
          {
            sub_2978A5114(a1, *v18);
            if (v21 >= 9)
            {
              sub_297801F64(*a1, ", ");
            }

            ++v18;
            v21 -= 8;
          }

          while (v18 != v20);
        }

        sub_297801F64(*a1, ")");
        if (sub_297888A68(a2))
        {
          sub_297801F64(*a1, " ");
          v22 = sub_297888A68(a2);
          sub_2978A62D8(a1, v22);
          sub_297801F64(*a1, "\n");
        }

        else
        {
          sub_297888A70(a1, 0);
        }

        return sub_29783DAC8((a1 + 3));
      }
    }
  }

  return result;
}

void **sub_2978A5B8C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_29782AFB0(a2);
  sub_2978A6084(a1, v3);
  v4 = *a1;

  return sub_297801F64(v4, "uniform");
}

void **sub_2978A5BDC(uint64_t *a1, _DWORD *a2)
{
  sub_297801F64(*a1, "precision ");
  v4 = sub_297888B60(a2);
  sub_2978A5CC0(a1, v4);
  v5 = *a1;
  v6 = sub_297888B6C(a2);
  v8 = sub_2978B5BAC(v6);

  return sub_297801FA8(v5, v8, v7);
}

void **sub_2978A5C60(uint64_t *a1, _DWORD *a2)
{
  result = sub_297888A10(a2);
  if ((result - 1) <= 2)
  {
    v4 = (&off_29EE80950)[result - 1];
    v5 = *a1;

    return sub_297801F64(v5, v4);
  }

  return result;
}

uint64_t *sub_2978A5CC0(uint64_t *result, int a2)
{
  if ((a2 - 1) <= 2)
  {
    return sub_297801F64(*result, (&off_29EE80968)[a2 - 1]);
  }

  return result;
}

void **sub_2978A5CE4(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  if (!sub_2977FB720(&v42))
  {
    v9 = *a1;
    v8 = " /* <> */ ";
    return sub_297801F64(v9, v8);
  }

  v3 = sub_2977FB720(&v42);
  v4 = sub_2978878F4(v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_29788862C(v4);
    v7 = *a1;
    if (v6 == 4)
    {
      v8 = "float";
      v9 = v7;
      return sub_297801F64(v9, v8);
    }

    v17 = v5;
    goto LABEL_12;
  }

  v11 = sub_2977FB720(&v42);
  v12 = sub_29788799C(v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_2977FB7B8(v12);
    v15 = sub_29788862C(v14);
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v16 = "u";
      }

      else
      {
        v16 = "b";
      }
    }

    else
    {
      if ((v15 - 3) < 2)
      {
LABEL_21:
        v27 = sub_297801F64(*a1, "vec");
        v26 = sub_297887A38(v13);
        v25 = v27;
        return sub_297801FA0(v25, v26);
      }

      v16 = "i";
    }

    sub_297801F64(*a1, v16);
    goto LABEL_21;
  }

  v20 = sub_2977FB720(&v42);
  v21 = sub_2978877CC(v20);
  if (v21)
  {
    v22 = v21;
    v23 = sub_297887B08(v21);
    LODWORD(v22) = sub_297887A38(v22);
    v24 = sub_297801F64(*a1, "mat");
    result = sub_297801FA0(v24, v22);
    if (v23 == v22)
    {
      return result;
    }

    v25 = sub_297801F64(*a1, "x");
    v26 = v23;
    return sub_297801FA0(v25, v26);
  }

  v28 = sub_2977FB720(&v42);
  v29 = sub_297888638(v28);
  if (!v29)
  {
    v30 = sub_2977FB720(&v42);
    if (sub_297888654(v30))
    {
      v9 = *a1;
      v8 = "void";
      return sub_297801F64(v9, v8);
    }

    v31 = sub_2977FB720(&v42);
    v17 = sub_297888658(v31);
    if (v17)
    {
      v7 = *a1;
LABEL_12:
      v18 = sub_2978B5B84(v17);
      return sub_297801FA8(v7, v18, v19);
    }

    v32 = sub_2977FB720(&v42);
    v33 = sub_29788865C(v32);
    if (v33)
    {
      v34 = sub_2977FB7B8(v33);
    }

    else
    {
      v35 = sub_2977FB720(&v42);
      v36 = sub_297887DB4(v35);
      if (v36)
      {
        v7 = *a1;
        v18 = sub_2978B5410(v36);
        return sub_297801FA8(v7, v18, v19);
      }

      v37 = sub_2977FB720(&v42);
      v38 = sub_297887E3C(v37);
      if (v38)
      {
        v39 = sub_2977FB7B8(v38);
        return sub_2978A5F78(a1, v39);
      }

      v40 = sub_2977FB720(&v42);
      v41 = sub_297888660(v40);
      if (!v41)
      {
        v9 = *a1;
        v8 = " /* <unknown> */ ";
        return sub_297801F64(v9, v8);
      }

      v34 = sub_2977FD5B0(v41);
    }

    return sub_2978A5CE4(a1, v34);
  }

  result = sub_297888648(v29);
  if (result == 1)
  {
    v9 = *a1;
    v8 = "sampler2D";
    return sub_297801F64(v9, v8);
  }

  if (!result)
  {
    v9 = *a1;
    v8 = "int";
    return sub_297801F64(v9, v8);
  }

  return result;
}

void **sub_2978A5F78(uint64_t a1, _DWORD *a2)
{
  v4 = sub_297811C44(a2);
  sub_2978A6084(a1, v4);
  sub_2978885D4(a2);
  sub_297801F64(*a1, "uniform ");
  v5 = *a1;
  v6 = sub_29788709C(a2);
  sub_297801FA8(v5, v6, v7);
  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v8 = sub_297803A7C((a2 + 4));
  v9 = sub_2978885E0((a2 + 4));
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8++;
      sub_2978884C4(a1);
      sub_2978A49A4(a1, v11, 1);
    }

    while (v8 != v10);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v12 = *a1;

  return sub_297801F64(v12, "}");
}

void **sub_2978A6084(uint64_t *a1, int a2)
{
  v8 = a2;
  if (sub_297887D28(&v8) || (result = sub_297887D40(&v8), result))
  {
    sub_297801F64(*a1, "layout(");
    if (sub_297887D28(&v8))
    {
      if (sub_297887D4C(&v8))
      {
        v4 = sub_297887D70(&v8);
        sub_2978A6180(a1, v4);
        if (sub_297887D7C(&v8))
        {
          sub_297801F64(*a1, ", ");
LABEL_9:
          v7 = sub_297887D88(&v8);
          sub_2978A6180(a1, v7);
        }
      }

      else if (sub_297887D7C(&v8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = sub_297801F64(*a1, "location = ");
      v6 = sub_29786AC48(&v8);
      sub_297801FA0(v5, v6);
    }

    return sub_297801F64(*a1, ") ");
  }

  return result;
}

void **sub_2978A6198(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "void main (");
  v4 = sub_297803A7C(a2 + 16);
  v5 = sub_297888A34(a2 + 16);
  if (v4 != v5)
  {
    v6 = v5;
    v7 = v5 - v4;
    do
    {
      sub_2978A5114(a1, *v4);
      if (v7 >= 9)
      {
        sub_297801F64(*a1, ", ");
      }

      ++v4;
      v7 -= 8;
    }

    while (v4 != v6);
  }

  sub_297801F64(*a1, ")");
  if (sub_297888A68(a2))
  {
    sub_297801F64(*a1, " ");
    v8 = sub_297888A68(a2);
    sub_2978A62D8(a1, v8);
    v9 = *a1;

    return sub_297801F64(v9, "\n");
  }

  else
  {

    return sub_297888A70(a1, 0);
  }
}

void **sub_2978A62D8(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    return sub_2978A62F0(a1, a2);
  }

  else
  {
    return sub_297801F64(*a1, " /* <none> */ ");
  }
}

uint64_t sub_2978A62F0(uint64_t *a1, unsigned __int8 *a2)
{
  result = sub_29786AC48(a2);
  switch(result)
  {
    case 0:

      result = sub_2978A6550(a1, a2);
      break;
    case 1:

      result = sub_297888F38(a1);
      break;
    case 2:

      result = sub_2978A6630(a1, a2);
      break;
    case 3:

      result = sub_2978A663C(a1, a2);
      break;
    case 4:

      result = sub_2978A6740(a1, a2);
      break;
    case 5:

      result = sub_2978A67B8(a1, a2);
      break;
    case 6:

      result = sub_297889134(a1);
      break;
    case 7:

      result = sub_2978A681C(a1, a2);
      break;
    case 8:

      result = sub_2978A6934(a1, a2);
      break;
    case 9:

      result = sub_2978A69C0(a1, a2);
      break;
    case 10:

      result = sub_297889390(a1);
      break;
    case 11:

      result = sub_2978893D8(a1);
      break;
    case 12:

      result = sub_297889420(a1);
      break;
    case 13:

      result = sub_2978A6A68(a1, a2);
      break;
    case 14:

      result = sub_2978A6AE4(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

void **sub_2978A6550(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "{\n");
  ++*(a1 + 8);
  v4 = sub_297803A7C(a2 + 8);
  v5 = sub_297889524(a2 + 8);
  if (v4 != v5)
  {
    v6 = v5;
    do
    {
      v7 = *v4++;
      sub_2978884C4(a1);
      sub_2978A62D8(a1, v7);
      sub_297889558(a1, v7);
      sub_297801F64(*a1, "\n");
    }

    while (v4 != v6);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v8 = *a1;

  return sub_297801F64(v8, "}");
}

void **sub_2978A663C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "if (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978A5490(a1, v4);
  }

  sub_297801F64(*a1, ") ");
  if (sub_2977FD5B0(a2))
  {
    v5 = sub_2977FD5B0(a2);
    sub_2978A62D8(a1, v5);
    v6 = sub_2977FD5B0(a2);
    sub_297889558(a1, v6);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  result = sub_29783CFFC(a2);
  if (result)
  {
    sub_297801F64(*a1, " else ");
    v8 = sub_29783CFFC(a2);
    sub_2978A62D8(a1, v8);
    v9 = sub_29783CFFC(a2);

    return sub_297889558(a1, v9);
  }

  return result;
}

uint64_t sub_2978A6740(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "switch (");
  v4 = sub_2977FB7B8(a2);
  sub_2978A5490(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);

  return sub_2978A62D8(a1, v5);
}

void **sub_2978A67B8(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "case ");
  v4 = sub_29783CFFC(a2);
  sub_2978A5490(a1, v4);
  v5 = *a1;

  return sub_297801F64(v5, ": ");
}

void **sub_2978A681C(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "for (");
  if (sub_2977FB7B8(a2))
  {
    v4 = sub_2977FB7B8(a2);
    sub_2978A62D8(a1, v4);
    v5 = sub_2977FB7B8(a2);
    sub_297889558(a1, v5);
  }

  else
  {
    sub_297888A70(a1, 0);
  }

  sub_297801F64(*a1, " ");
  if (sub_2977FD5B0(a2))
  {
    v6 = sub_2977FD5B0(a2);
    sub_2978A62D8(a1, v6);
  }

  sub_297888A70(a1, 1);
  if (sub_29783CFFC(a2))
  {
    v7 = sub_29783CFFC(a2);
    sub_2978A5490(a1, v7);
  }

  sub_297801F64(*a1, ") ");
  v8 = sub_297805510(a2);
  sub_2978A62D8(a1, v8);
  v9 = sub_297805510(a2);

  return sub_297889558(a1, v9);
}

void **sub_2978A6934(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "while (");
  v4 = sub_2977FB7B8(a2);
  sub_2978A62D8(a1, v4);
  sub_297801F64(*a1, ") ");
  v5 = sub_2977FD5B0(a2);
  sub_2978A62D8(a1, v5);
  v6 = sub_2977FD5B0(a2);

  return sub_297889558(a1, v6);
}

void **sub_2978A69C0(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "do ");
  v4 = sub_2977FB7B8(a2);
  sub_2978A62D8(a1, v4);
  v5 = sub_2977FB7B8(a2);
  sub_297889558(a1, v5);
  sub_297801F64(*a1, " while (");
  v6 = sub_2977FD5B0(a2);
  sub_2978A5490(a1, v6);
  sub_297801F64(*a1, ")");

  return sub_297888A70(a1, 0);
}

void **sub_2978A6A68(uint64_t *a1, uint64_t a2)
{
  sub_297801F64(*a1, "return");
  if (sub_2977FB7B8(a2))
  {
    sub_297801F64(*a1, " ");
    v4 = sub_2977FB7B8(a2);
    sub_2978A5490(a1, v4);
  }

  return sub_297888A70(a1, 0);
}

uint64_t sub_2978A6AE4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2977FB7B8(a2);

  return sub_2978A5490(a1, v3);
}

void **sub_2978A6B24(uint64_t a1, uint64_t a2)
{
  sub_297801F64(*a1, "struct");
  if (sub_297888470(a2))
  {
    v4 = sub_297801F64(*a1, " ");
    v5 = sub_29788709C(a2);
    sub_297801FA8(v4, v5, v6);
  }

  sub_297801F64(*a1, " {\n");
  ++*(a1 + 8);
  v7 = sub_297803A7C(a2 + 16);
  v8 = sub_297888490(a2 + 16);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7++;
      sub_2978884C4(a1);
      sub_2978A49A4(a1, v10, 1);
    }

    while (v7 != v9);
  }

  --*(a1 + 8);
  sub_2978884C4(a1);
  v11 = *a1;

  return sub_297801F64(v11, "}");
}

void **sub_2978A6C30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_297888358(a3))
  {

    return sub_2978A6B24(a1, a2);
  }

  else
  {
    v6 = *a1;
    v8 = sub_29788709C(a2);

    return sub_297801FA8(v6, v8, v7);
  }
}

void **sub_2978A6CB4(uint64_t *a1, uint64_t a2)
{
  result = sub_29787E544(a2);
  switch(result)
  {
    case 0:

      return sub_2978899A4(a1, a2);
    case 1:

      return sub_2978A7044(a1);
    case 2:

      return sub_297889A40(a1, a2);
    case 3:
      v7 = a1;
      v8 = a2;

      return sub_297889A94(v7, v8);
    case 4:
      v7 = a1;
      v8 = a2;

      return sub_297889A94(v7, v8);
    case 5:

      return sub_2978A7098(a1, a2);
    case 6:

      return sub_2978A7138(a1, a2);
    case 7:

      return sub_2978A71D4(a1, a2);
    case 8:

      return sub_2978A7260(a1, a2);
    case 9:

      return sub_297889DAC(a1, a2);
    case 10:

      return sub_297889DEC(a2);
    case 11:

      return sub_2978A7334(a1, a2);
    case 12:

      return sub_2978A73F0(a1, a2);
    case 13:
      v5 = a1;
      v6 = a2;

      goto LABEL_10;
    case 14:
      v5 = a1;
      v6 = a2;

      goto LABEL_10;
    case 15:
      v5 = a1;
      v6 = a2;

LABEL_10:
      result = sub_2978A753C(v5, v6);
      break;
    case 16:

      result = sub_2978A75B4(a1, a2);
      break;
    case 17:

      result = sub_2978A762C(a1, a2);
      break;
    case 18:

      result = sub_2978A767C(a1, a2);
      break;
    case 19:

      result = sub_2978A78C0(a1, a2);
      break;
    case 20:

      result = sub_2978A7990(a1, a2);
      break;
    case 21:

      result = sub_2978A6AE4(a1, a2);
      break;
    case 22:

      result = sub_2978A7AB4(a1, a2);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2978A7044(uint64_t *a1)
{
  v1 = *a1;
  sub_29788A390();
  v2 = sub_29788A35C(v1, v4);
  sub_297801F64(v2, "U");
  return sub_2977FAA04();
}

uint64_t sub_2978A7098(uint64_t *a1, uint64_t a2)
{
  if (sub_29788A3A8(a2))
  {
    v4 = sub_2977FD5B0(a2);
    sub_2978A7B2C(a1, v4);
  }

  v5 = sub_29788A44C(a2);
  if (v5 <= 6)
  {
    sub_297801F64(*a1, (&off_29EE809B0)[v5]);
  }

  result = sub_29788A3A8(a2);
  if ((result & 1) == 0)
  {
    v7 = sub_2977FD5B0(a2);

    return sub_2978A7B2C(a1, v7);
  }

  return result;
}