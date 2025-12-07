void *sub_1DCD2D4E4(unsigned __int8 *a1, uint64_t a2)
{
  v99 = sub_1DD0DB04C();
  v108 = *(v99 - 8);
  v114 = v108;
  v115 = *(v108 + 80);
  v93 = sub_1DD0DC76C();
  v92 = *(v93 - 8);
  v2 = *(v92 + 80);
  v91 = sub_1DD0DB1EC();
  v107 = *(v91 - 8);
  v3 = *(v107 + 80) | v2;
  v95 = sub_1DD0DB4BC();
  v104 = *(v95 - 8);
  v4 = *(v104 + 80) & 0xF8;
  v94 = sub_1DD0DB3EC();
  v100 = *(v94 - 8);
  v5 = v100;
  v6 = *(v100 + 80);
  v7 = v4 | v6 | 7;
  v90 = sub_1DD0DD12C();
  v102 = *(v90 - 8);
  v89 = v102;
  v8 = *(v102 + 80);
  v88 = sub_1DD0DD08C();
  v105 = *(v88 - 8);
  v87 = v105;
  v9 = (v3 | (v8 | *(v105 + 80))) & 0xF8 | v7;
  v10 = v9 | v115;
  v96 = sub_1DD0DB66C();
  v11 = *(v96 - 8);
  v12 = *(v11 + 80);
  v13 = v12 | 7;
  v14 = v9 | v115 | v12;
  v97 = (v9 | v115) + 16;
  v111 = v9 | v115;
  v15 = *(v108 + 64);
  v110 = v9;
  v16 = (v15 + v9) & ~v9;
  v17 = v15 + v9;
  v18 = *(v92 + 64);
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
  {
    v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v107 + 64))
  {
    v18 = *(v107 + 64);
  }

  v19 = *(v104 + 64) + v6;
  v20 = v6;
  v21 = v19 & ~v6;
  v22 = v4 | v6 | 7;
  v85 = v100;
  v23 = *(v100 + 84);
  if (v23)
  {
    v24 = *(v100 + 64);
  }

  else
  {
    v24 = *(v100 + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = (v24 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  if (v18 <= ((v26 + 19) & 0xFFFFFFFFFFFFFFF8 | 5))
  {
    v18 = (v26 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v27 = v26 + 31;
  v28 = ((((((v26 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 <= v28)
  {
    v18 = v28;
  }

  v101 = *(v102 + 64) + 7;
  v29 = *(v104 + 84);
  v109 = *(v5 + 84);
  if (v23)
  {
    v30 = v23 - 1;
  }

  else
  {
    v30 = 0;
  }

  if (v30 <= v29)
  {
    v31 = *(v104 + 84);
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 0x7FFFFFFE)
  {
    v31 = 2147483646;
  }

  v103 = v31;
  v86 = v7 + 16;
  if (v18 <= ((v27 + ((v7 + 16 + (v101 & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v18 = ((v27 + ((v7 + 16 + (v101 & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v18 <= *(v105 + 64))
  {
    v18 = *(v105 + 64);
  }

  if (v18 <= 0x18)
  {
    v32 = 24;
  }

  else
  {
    v32 = v18;
  }

  v33 = (((v32 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v34 = 0x7FFFFFFF;
  }

  else
  {
    v34 = *(v11 + 84);
  }

  v35 = *(*(v96 - 8) + 64) - (((-33 - v12) | v12) + ((-17 - v12) | v13)) + v115 - 2;
  v36 = v115;
  if (-2 - (((-33 - v14) | v14) + ~v15 - (*(v114 + 84) == 0)) - ((((-25 - v12 - ((((v33 + ((v10 + 16) & ~v10) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v13) - v35) | v115) <= 0x49)
  {
    v37 = 73;
  }

  else
  {
    v37 = -2 - (((-33 - v14) | v14) + ~v15 - (*(v114 + 84) == 0)) - ((((-25 - v12 - ((((v33 + ((v10 + 16) & ~v10) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v13) - v35) | v115);
  }

  v38 = a1[v37];
  v39 = v38 - 7;
  if (v38 >= 7)
  {
    if (v37 <= 3)
    {
      v40 = v37;
    }

    else
    {
      v40 = 4;
    }

    switch(v40)
    {
      case 1:
        v41 = *a1;
        goto LABEL_42;
      case 2:
        v41 = *a1;
        goto LABEL_42;
      case 3:
        v41 = *a1 | (a1[2] << 16);
        goto LABEL_42;
      case 4:
        v41 = *a1;
LABEL_42:
        if (v37 < 4)
        {
          v41 |= v39 << (8 * v37);
        }

        v38 = v41 + 7;
        break;
      default:
        break;
    }
  }

  v42 = v10 | v12;
  v43 = ~v14;
  v44 = ~v111;
  v116 = v37;
  switch(v38)
  {
    case 1u:
      v45 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v46 = a2;
      if (*(a1 + 7))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
      }

      goto LABEL_60;
    case 2u:
      v45 = a1;

      goto LABEL_59;
    case 3u:
      v45 = a1;

      goto LABEL_59;
    case 4u:
      v45 = a1;
      sub_1DCD21390(*a1, *(a1 + 1), a1[16]);
      goto LABEL_59;
    case 5u:
      v74 = ~v22;
      v75 = v27;
      v78 = ~v20;
      v81 = v33 + 41;
      v82 = ~v13;
      v76 = v25;
      v79 = ~v12;
      v83 = ~v36;
      v84 = v34;
      v80 = *(v11 + 84);
      v112 = v12 + 16;
      v106 = v35;
      v77 = *(v96 - 8);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v47 = (v97 + (&a1[v42 + 32] & v43)) & v44;
      v98 = *(v114 + 8);
      v98(v47, v99);
      v48 = v47;
      v49 = ((v17 + v47) & ~v110);
      v50 = v49[v32];
      v51 = v50 - 10;
      if (v50 < 0xA)
      {
        v46 = a2;
        v53 = v32 + 1;
      }

      else
      {
        if (v32 <= 3)
        {
          v52 = v32;
        }

        else
        {
          v52 = 4;
        }

        v46 = a2;
        v53 = v32 + 1;
        switch(v52)
        {
          case 1:
            v54 = *v49;
            goto LABEL_67;
          case 2:
            v54 = *v49;
            goto LABEL_67;
          case 3:
            v54 = *v49 | (v49[2] << 16);
            goto LABEL_67;
          case 4:
            v54 = *v49;
LABEL_67:
            if (v32 < 4)
            {
              v50 = (v54 | (v51 << (8 * v32))) + 10;
            }

            else
            {
              v50 = v54 + 10;
            }

            break;
          default:
            goto LABEL_70;
        }
      }

      break;
    case 6u:
      v45 = a1;

      goto LABEL_59;
    default:
      v45 = a1;
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_59:
      v46 = a2;
      goto LABEL_60;
  }

LABEL_70:
  switch(v50)
  {
    case 0u:
      v60 = v92;
      v59 = v93;
      goto LABEL_74;
    case 1u:
      (*(v92 + 8))(v49, v93);

      goto LABEL_102;
    case 2u:

      goto LABEL_102;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_102;
    case 4u:
      v60 = v107;
      v59 = v91;
      goto LABEL_74;
    case 5u:
      v61 = *v49;
      goto LABEL_101;
    case 6u:
      (*(v104 + 8))(v49, v95);
      if (!__swift_getEnumTagSinglePayload(&v49[v19] & v78, 1, v94))
      {
        (*(v85 + 8))(&v49[v19] & v78, v94);
      }

      goto LABEL_84;
    case 7u:
      (*(v104 + 8))(v49, v95);
      if (!__swift_getEnumTagSinglePayload(&v49[v19] & v78, 1, v94))
      {
        (*(v85 + 8))(&v49[v19] & v78, v94);
      }

LABEL_84:

      v53 = v32 + 1;
      goto LABEL_102;
    case 8u:
      (*(v89 + 8))(v49, v90);

      v62 = (v86 + (&v49[v101] & 0xFFFFFFFFFFFFFFF8)) & v74;
      if (v29 == v103)
      {
        v63 = v95;
        if (__swift_getEnumTagSinglePayload(v62, v29, v95))
        {
          goto LABEL_100;
        }

        v64 = (v19 + v62) & v78;
        goto LABEL_96;
      }

      v64 = (v19 + v62) & v78;
      if (v30 == v103)
      {
        v65 = v94;
        if (v109 < 2)
        {
          v63 = v95;
LABEL_97:
          (*(v104 + 8))(v62, v63);
          if (!__swift_getEnumTagSinglePayload(v64, 1, v65))
          {
            (*(v85 + 8))(v64, v65);
          }

          v53 = v32 + 1;
          goto LABEL_100;
        }

        v63 = v95;
        v53 = v32 + 1;
        if (__swift_getEnumTagSinglePayload((v19 + v62) & v78, v109, v94) >= 2)
        {
          goto LABEL_100;
        }

LABEL_96:
        v65 = v94;
        goto LABEL_97;
      }

      v66 = *(((v76 + v64) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v66 >= 0xFFFFFFFF)
      {
        LODWORD(v66) = -1;
      }

      v63 = v95;
      if ((v66 + 1) < 2)
      {
        goto LABEL_96;
      }

LABEL_100:
      v61 = *((v75 + v62) & 0xFFFFFFFFFFFFFFF8);
LABEL_101:

LABEL_102:

      v67 = (((&v49[v53 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v67[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v68 = ((v81 + v48 + 22) & 0xFFFFFFFFFFFFFFF8);

      v69 = (v112 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) & v82;
      v45 = a1;
      if (v84 < 1)
      {
        v71 = (v112 + v69) & v82;
        if (__swift_getEnumTagSinglePayload((v112 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v79, v80, v96) > 1)
        {
          goto LABEL_115;
        }
      }

      else
      {
        LODWORD(v70) = -1;
        if (*(v69 + 8) < 0xFFFFFFFFuLL)
        {
          v70 = *(v69 + 8);
        }

        if ((v70 + 1) > 1)
        {
          goto LABEL_115;
        }

        v71 = (v112 + v69) & v82;
      }

      if ((v80 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v112 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v79, v80, v96))
        {
LABEL_114:

          (*(v77 + 8))((v112 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v79, v96);
        }
      }

      else
      {
        v72 = *(v71 + 8);
        if (v72 >= 0xFFFFFFFF)
        {
          LODWORD(v72) = -1;
        }

        if (v72 == -1)
        {
          goto LABEL_114;
        }
      }

LABEL_115:
      v73 = v106 + v69;
      if (!__swift_getEnumTagSinglePayload(v73 & v83, 1, v99))
      {
        v98(v73 & v83, v99);
      }

LABEL_60:
      v55 = *(*(v46 + 16) - 8);
      v56 = v55 + 8;
      v57 = &v45[v116 + 1 + *(v55 + 80)] & ~*(v55 + 80);
      (*(v55 + 8))(v57);
      result = ((*(v56 + 56) + v57 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (result[3] >= 0xFFFFFFFFuLL)
      {
        return __swift_destroy_boxed_opaque_existential_1Tm(result);
      }

      return result;
    case 9u:
      v60 = v87;
      v59 = v88;
LABEL_74:
      (*(v60 + 8))(v49, v59);
      goto LABEL_102;
    default:
      goto LABEL_102;
  }
}

uint64_t sub_1DCD2E1C0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v211 = sub_1DD0DB04C();
  v237 = *(v211 - 8);
  v220 = *(v237 + 80);
  v205 = sub_1DD0DC76C();
  v204 = *(v205 - 8);
  v3 = *(v204 + 80);
  v203 = sub_1DD0DB1EC();
  v223 = *(v203 - 8);
  v202 = v223;
  v4 = *(v223 + 80) | v3;
  v207 = sub_1DD0DB4BC();
  v217 = *(v207 - 8);
  v233 = v217;
  v5 = *(v217 + 80) & 0xF8;
  v206 = sub_1DD0DB3EC();
  v213 = *(v206 - 8);
  v6 = v213;
  v7 = *(v213 + 80);
  v212 = v5 | v7 | 7;
  v201 = sub_1DD0DD12C();
  v215 = *(v201 - 8);
  v200 = v215;
  v8 = *(v215 + 80);
  v199 = sub_1DD0DD08C();
  v221 = *(v199 - 8);
  v198 = v221;
  v9 = (v4 | (v8 | *(v221 + 80))) & 0xF8 | v5 | v7 | 7;
  v10 = v9 | v220;
  v208 = sub_1DD0DB66C();
  v11 = *(v208 - 8);
  v12 = *(v11 + 80);
  v13 = v12;
  v234 = v10 | v13;
  v14 = ((v10 | v13) + 32) & ~(v10 | v13);
  v209 = (v9 | v220) + 16;
  v230 = v9 | v220;
  v15 = (v10 + 16) & ~v10;
  v16 = *(v237 + 64);
  v228 = v16 + v9;
  v17 = v9;
  v18 = (v16 + v9) & ~v9;
  v19 = *(v204 + 64);
  v197 = v19 + 7;
  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = *(v204 + 64);
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v20 <= *(v223 + 64))
  {
    v20 = *(v223 + 64);
  }

  v227 = *(v217 + 64) + v7;
  v196 = v213;
  v21 = *(v213 + 84);
  v194 = *(v213 + 64);
  if (v21)
  {
    v22 = *(v213 + 64);
  }

  else
  {
    v22 = *(v213 + 64) + 1;
  }

  v23 = v22 + 7;
  v214 = v227 & ~v7;
  v24 = (v22 + 7 + v214) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v20 <= v25)
  {
    v26 = (v24 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v26 = v20;
  }

  v27 = v24 + 31;
  v28 = ((((((v24 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v26;
  }

  v218 = *(v215 + 64) + 7;
  v30 = *(v233 + 84);
  v195 = *(v6 + 84);
  if (v21)
  {
    v31 = v21 - 1;
  }

  else
  {
    v31 = 0;
  }

  if (v31 <= v30)
  {
    v32 = *(v233 + 84);
  }

  else
  {
    v32 = v31;
  }

  if (v32 <= 0x7FFFFFFE)
  {
    v32 = 2147483646;
  }

  v224 = v32;
  v216 = v212 + 16;
  if (v29 <= ((v27 + ((v212 + 16 + (v218 & 0xFFFFFFFFFFFFFFF8)) & ~v212)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v33 = ((v27 + ((v212 + 16 + (v218 & 0xFFFFFFFFFFFFFFF8)) & ~v212)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v33 = v29;
  }

  if (v33 <= *(v221 + 64))
  {
    v34 = *(v221 + 64);
  }

  else
  {
    v34 = v33;
  }

  if (v34 <= 0x18)
  {
    v35 = 24;
  }

  else
  {
    v35 = v34;
  }

  v36 = (((v35 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v38 = v12 + 16;
  v39 = (v38 + ((((((v36 + v15 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v37;
  if (*(v11 + 84) <= 0x7FFFFFFFu)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v40 = *(v11 + 84);
  }

  v229 = v40;
  v41 = *(*(v208 - 8) + 64) + ((v13 + 32) & ~v13);
  v42 = v41 + (v38 & v37);
  v43 = (v42 + v220 + v39) & ~v220;
  if (*(v237 + 84))
  {
    v44 = *(v237 + 64);
  }

  else
  {
    v44 = v16 + 1;
  }

  v45 = v14 + v44 + v43;
  if (v45 + 1 > 0x49)
  {
    v46 = v45 + 1;
  }

  else
  {
    v46 = 73;
  }

  v47 = a2[v46];
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v46 <= 3)
    {
      v49 = v46;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a2;
        goto LABEL_50;
      case 2:
        v50 = *a2;
        goto LABEL_50;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_50;
      case 4:
        v50 = *a2;
LABEL_50:
        if (v46 < 4)
        {
          v50 |= v48 << (8 * v46);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v226 = v22;
  v51 = ~v234;
  v52 = ~v230;
  v53 = ~v17;
  switch(v47)
  {
    case 1u:
      v67 = v46;
      v54 = a2;
      v68 = *(a2 + 3);
      v56 = a1;
      *(a1 + 24) = v68;
      (**(v68 - 8))(a1, a2);
      v69 = *(a2 + 7);
      if (v69)
      {
        v70 = *(a2 + 8);
        *(a1 + 56) = v69;
        *(a1 + 64) = v70;
        (**(v69 - 8))(a1 + 32, a2 + 32);
      }

      else
      {
        v99 = *(a2 + 3);
        *(a1 + 32) = *(a2 + 2);
        *(a1 + 48) = v99;
        *(a1 + 64) = *(a2 + 8);
      }

      v85 = a3;
      *(a1 + 72) = a2[72];
      v58 = v67;
      *(a1 + v67) = 1;
      goto LABEL_69;
    case 2u:
      v54 = a2;
      v64 = *a2;
      v62 = v46;
      v65 = *a2;
      v58 = v62;
      v56 = a1;
      *a1 = v64;
      v63 = 2;
      goto LABEL_57;
    case 3u:
      v66 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 8) = v66;
      *(a1 + v46) = 3;
      sub_1DD0DCF8C();
    case 4u:
      v54 = a2;
      v59 = *a2;
      v60 = *(a2 + 1);
      v61 = a2[16];
      v62 = v46;
      sub_1DCD1B9B8(*a2, v60, v61);
      v58 = v62;
      v56 = a1;
      *a1 = v59;
      *(a1 + 8) = v60;
      *(a1 + 16) = v61;
      v63 = 4;
LABEL_57:
      *(v56 + v62) = v63;
      goto LABEL_68;
    case 5u:
      v180 = ~v212;
      v181 = ~v7;
      v189 = v36 + 41;
      v186 = ~v13;
      v190 = ~v220;
      v191 = v37;
      v184 = v41 + (v38 & v37);
      v187 = *(v11 + 84);
      __n = *(*(v208 - 8) + 64) + ((v13 + 32) & ~v13);
      v222 = v13 + 16;
      v192 = v42 + v220;
      v231 = v44;
      v185 = *(v208 - 8);
      v193 = v46;
      v71 = *(a2 + 3);
      *(a1 + 24) = v71;
      (**(v71 - 8))(a1, a2);
      v72 = ((a1 + v234 + 32) & v51);
      v73 = (&a2[v234 + 32] & v51);
      *v72 = *v73;
      v72[1] = v73[1];
      v74 = (v72 + v209) & v52;
      v75 = (v73 + v209) & v52;
      v76 = *(v237 + 16);

      v76(v74, v75, v211);
      v235 = ((v228 + v74) & v53);
      v210 = v75;
      v77 = ((v228 + v75) & v53);
      v78 = v77[v35];
      v79 = v78 - 10;
      if (v78 >= 0xA)
      {
        if (v35 <= 3)
        {
          v80 = v35;
        }

        else
        {
          v80 = 4;
        }

        switch(v80)
        {
          case 1:
            v81 = *v77;
            goto LABEL_78;
          case 2:
            v81 = *v77;
            goto LABEL_78;
          case 3:
            v81 = *v77 | (v77[2] << 16);
            goto LABEL_78;
          case 4:
            v81 = *v77;
LABEL_78:
            if (v35 < 4)
            {
              v78 = (v81 | (v79 << (8 * v35))) + 10;
            }

            else
            {
              v78 = v81 + 10;
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      break;
    case 6u:
      v54 = a2;
      v82 = *(a2 + 1);
      v56 = a1;
      *a1 = *a2;
      *(a1 + 8) = v82;
      v83 = *(a2 + 3);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = v83;
      *(a1 + v46) = 6;
      v84 = v46;

      v58 = v84;
      goto LABEL_68;
    default:
      v54 = a2;
      v55 = *(a2 + 24);
      v56 = a1;
      *(a1 + 24) = v55;
      v57 = v46;
      (**(v55 - 8))(a1, a2);
      v58 = v57;
      *(a1 + v57) = 0;
LABEL_68:
      v85 = a3;
      goto LABEL_69;
  }

LABEL_81:
  v183 = v76;
  v188 = v74;
  switch(v78)
  {
    case 0u:
      v100 = v235;
      (*(v204 + 16))(v235, v77, v205);
      *(v235 + v35) = 0;
      goto LABEL_92;
    case 1u:
      (*(v204 + 16))(v235, v77, v205);
      *((v235 + v197) & 0xFFFFFFFFFFFFFFF8) = *(&v77[v197] & 0xFFFFFFFFFFFFFFF8);
      *(v235 + v35) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v100 = v235;
      *v235 = *v77;
      v235[1] = *(v77 + 1);
      v235[2] = *(v77 + 2);
      *(v235 + v35) = 2;

      goto LABEL_92;
    case 3u:
      v100 = v235;
      *v235 = *v77;
      *(v235 + v35) = 3;
      swift_unknownObjectRetain();
      goto LABEL_92;
    case 4u:
      v100 = v235;
      (*(v202 + 16))(v235, v77, v203);
      v101 = 4;
      goto LABEL_85;
    case 5u:
      v104 = *v77;
      v100 = v235;
      *v235 = *v77;
      *(v235 + v35) = 5;
      v105 = v104;
      goto LABEL_92;
    case 6u:
      (*(v233 + 16))(v235, v77, v207);
      v139 = ((v235 + v227) & v181);
      v140 = (&v77[v227] & v181);
      if (__swift_getEnumTagSinglePayload(v140, 1, v206))
      {
        memcpy(v139, v140, v226);
      }

      else
      {
        (*(v196 + 16))(v139, v140, v206);
        __swift_storeEnumTagSinglePayload(v139, 0, 1, v206);
      }

      v56 = a1;
      v54 = a2;
      v85 = a3;
      v161 = ((v139 + v23) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v140 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v161[1] = v162[1];
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
      v165 = *v164;
      *(v163 + 4) = *(v164 + 4);
      *v163 = v165;
      *(v235 + v35) = 6;

      v106 = v35 + 1;
      v100 = v235;
      goto LABEL_94;
    case 7u:
      v100 = v235;
      (*(v233 + 16))(v235, v77, v207);
      v102 = ((v235 + v227) & v181);
      v103 = (&v77[v227] & v181);
      if (__swift_getEnumTagSinglePayload(v103, 1, v206))
      {
        memcpy(v102, v103, v226);
      }

      else
      {
        (*(v196 + 16))(v102, v103, v206);
        __swift_storeEnumTagSinglePayload(v102, 0, 1, v206);
      }

      v56 = a1;
      v54 = a2;
      v150 = ((v102 + v23) & 0xFFFFFFFFFFFFFFF8);
      v151 = ((v103 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v150 = *v151;
      v150[1] = v151[1];
      v152 = (v150 + 19) & 0xFFFFFFFFFFFFFFF8;
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = *v153;
      *(v152 + 4) = *(v153 + 4);
      *v152 = v154;
      v155 = ((v235 + v25 + 7) & 0xFFFFFFFFFFFFFFF8);
      v156 = (&v77[v25 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      v159[1] = v160[1];
      *(v235 + v35) = 7;

      goto LABEL_93;
    case 8u:
      (*(v200 + 16))(v235, v77, v201);
      v141 = ((v235 + v218) & 0xFFFFFFFFFFFFFFF8);
      v142 = (&v77[v218] & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      v143 = ((v141 + v216) & v180);
      v144 = ((v142 + v216) & v180);

      if (v30 == v224)
      {
        v100 = v235;
        v56 = a1;
        if (!__swift_getEnumTagSinglePayload(v144, v30, v207))
        {
          v145 = v143;
          v225 = v77;
          v146 = v227;
          v147 = v181;
          v219 = ((v144 + v227) & v181);
          v148 = v206;
          v149 = v233;
          goto LABEL_138;
        }

LABEL_140:
        memcpy(v143, v144, v25);
        v106 = v35 + 1;
        v169 = v214;
        v168 = v226;
LABEL_143:
        v175 = v168;
        goto LABEL_144;
      }

      if (v31 == v224)
      {
        v225 = v77;
        v100 = v235;
        v56 = a1;
        v148 = v206;
        if (v195 < 2)
        {
          v219 = ((v144 + v227) & v181);
          v145 = v143;
          v149 = v233;
          v146 = v227;
          goto LABEL_137;
        }

        v77 = v225;
        if (__swift_getEnumTagSinglePayload((v144 + v227) & v181, v195, v206) >= 2)
        {
          goto LABEL_140;
        }

        v219 = ((v144 + v227) & v181);
        v145 = v143;
      }

      else
      {
        v166 = *(((v23 + ((v144 + v227) & v181)) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v166 >= 0xFFFFFFFF)
        {
          LODWORD(v166) = -1;
        }

        v100 = v235;
        v56 = a1;
        if ((v166 + 1) >= 2)
        {
          goto LABEL_140;
        }

        v219 = ((v144 + v227) & v181);
        v145 = v143;
        v225 = v77;
      }

      v148 = v206;
      v149 = v233;
      v146 = v227;
LABEL_137:
      v147 = v181;
LABEL_138:
      (*(v149 + 16))(v145, v144, v207);
      v167 = ((v145 + v146) & v147);
      if (__swift_getEnumTagSinglePayload(v219, 1, v148))
      {
        v168 = v226;
        memcpy(v167, v219, v226);
        v77 = v225;
      }

      else
      {
        (*(v196 + 16))(v167, v219, v148);
        __swift_storeEnumTagSinglePayload(v167, 0, 1, v148);
        v77 = v225;
        v168 = v226;
      }

      v170 = ((v167 + v23) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v219 + v23) & 0xFFFFFFFFFFFFFFF8);
      *v170 = *v171;
      v170[1] = v171[1];
      v172 = (v170 + 19) & 0xFFFFFFFFFFFFFFF8;
      v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
      v174 = *v173;
      *(v172 + 4) = *(v173 + 4);
      *v172 = v174;

      v106 = v35 + 1;
      v169 = v214;
      v175 = v194;
      v143 = v145;
      if (!v195)
      {
        goto LABEL_143;
      }

LABEL_144:
      v176 = (((v169 + v175 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v177 = ((v143 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
      v178 = *((v144 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v177 = v178;
      *(v100 + v35) = 8;
      v179 = v178;
LABEL_145:
      v54 = a2;
      v85 = a3;
LABEL_94:
      v107 = (&v77[v106 + 7] & 0xFFFFFFFFFFFFFFF8);
      v108 = ((v100 + v106 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v108 = *v107;
      v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v110 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = *(v110 + 24);

      if (v111 < 0xFFFFFFFF)
      {
        v112 = *v110;
        v113 = *(v110 + 16);
        *(v109 + 32) = *(v110 + 32);
        *v109 = v112;
        *(v109 + 16) = v113;
      }

      else
      {
        *(v109 + 24) = v111;
        *(v109 + 32) = *(v110 + 32);
        (**(v111 - 8))(v109, v110, v111);
      }

      *(v109 + 40) = *(v110 + 40);
      *(v189 + v188 + 7) = *(v189 + v210 + 7);
      v114 = ((v189 + v188 + 22) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v189 + v210 + 22) & 0xFFFFFFFFFFFFFFF8);
      v116 = *v115;
      *v114 = *v115;
      v117 = ((v114 + 15) & 0xFFFFFFFFFFFFFFF8);
      v118 = ((v115 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v117 = *v118;
      v117[1] = v118[1];
      v119 = ((v117 + v222) & v191);
      v120 = ((v118 + v222) & v191);

      v121 = v116;

      if (v229 < 1)
      {
        v124 = ((v120 + v222) & v191);
        v123 = v231;
        if (__swift_getEnumTagSinglePayload((v222 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v186, v187, v208) <= 1)
        {
          goto LABEL_103;
        }

LABEL_107:
        v128 = v119;
        v129 = v120;
        v130 = v184;
        goto LABEL_111;
      }

      v122 = v120[1];
      if (v122 >= 0xFFFFFFFF)
      {
        LODWORD(v122) = -1;
      }

      v123 = v231;
      if ((v122 + 1) > 1)
      {
        goto LABEL_107;
      }

      v124 = ((v120 + v222) & v191);
LABEL_103:
      *v119 = *v120;
      v119[1] = v120[1];
      v125 = ((v119 + v222) & v191);

      if ((v187 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v222 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v186, v187, v208);
      }

      else
      {
        v126 = v124[1];
        if (v126 >= 0xFFFFFFFF)
        {
          LODWORD(v126) = -1;
        }

        EnumTagSinglePayload = v126 + 1;
      }

      if (!EnumTagSinglePayload)
      {
        *v125 = *v124;
        *(((v119 + v222) & v191) + 8) = v124[1];
        v133 = ((v125 + 23) & 0xFFFFFFFFFFFFFFF8);
        v134 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v133 = *v134;
        v133[1] = v134[1];
        v135 = v133 + v222;
        v136 = v134 + v222;
        v137 = *(v185 + 16);

        v138 = v135 & v186;
        v123 = v231;
        v137(v138, v136 & v186, v208);
        goto LABEL_112;
      }

      v128 = ((v119 + v222) & v191);
      v129 = v124;
      v130 = __n;
LABEL_111:
      memcpy(v128, v129, v130);
LABEL_112:
      v131 = ((v119 + v192) & v190);
      v132 = ((v120 + v192) & v190);
      if (__swift_getEnumTagSinglePayload(v132, 1, v211))
      {
        memcpy(v131, v132, v123);
      }

      else
      {
        v183(v131, v132, v211);
        __swift_storeEnumTagSinglePayload(v131, 0, 1, v211);
      }

      *(v131 + v123) = *(v132 + v123);
      v58 = v193;
      *(v56 + v193) = 5;
LABEL_69:
      v86 = *(*(v85 + 16) - 8);
      v87 = v86 + 16;
      v88 = *(v86 + 80);
      v89 = v58 + v88 + 1;
      v90 = (v89 + v56) & ~v88;
      v91 = &v54[v89] & ~v88;
      (*(v86 + 16))(v90, v91);
      v92 = *(v87 + 48) + 7;
      v93 = (v92 + v90) & 0xFFFFFFFFFFFFFFF8;
      v94 = (v92 + v91) & 0xFFFFFFFFFFFFFFF8;
      v95 = *(v94 + 24);
      if (v95 < 0xFFFFFFFF)
      {
        v96 = *v94;
        v97 = *(v94 + 16);
        *(v93 + 32) = *(v94 + 32);
        *v93 = v96;
        *(v93 + 16) = v97;
      }

      else
      {
        *(v93 + 24) = v95;
        *(v93 + 32) = *(v94 + 32);
        (**(v95 - 8))(v93, v94);
      }

      *(v93 + 40) = *(v94 + 40);
      return v56;
    case 9u:
      v100 = v235;
      (*(v198 + 16))(v235, v77, v199);
      v101 = 9;
LABEL_85:
      *(v100 + v35) = v101;
LABEL_92:
      v56 = a1;
      v54 = a2;
LABEL_93:
      v85 = a3;
      v106 = v35 + 1;
      goto LABEL_94;
    default:
      v100 = v235;
      v106 = v35 + 1;
      memcpy(v235, v77, v35 + 1);
      v56 = a1;
      goto LABEL_145;
  }
}

unsigned __int8 *sub_1DCD2F590(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_215;
  }

  v250 = sub_1DD0DB04C();
  v282 = *(v250 - 8);
  v3 = *(v282 + 80);
  v230 = sub_1DD0DC76C();
  v229 = *(v230 - 8);
  v4 = *(v229 + 80);
  v225 = sub_1DD0DB1EC();
  v265 = *(v225 - 8);
  v224 = v265;
  v5 = *(v265 + 80) | v4;
  v236 = sub_1DD0DB4BC();
  v259 = *(v236 - 8);
  v277 = v259;
  v6 = *(v259 + 80) & 0xF8;
  v237 = sub_1DD0DB3EC();
  v251 = *(v237 - 8);
  v7 = *(v251 + 80);
  v8 = v6 | v7 | 7;
  v223 = sub_1DD0DD12C();
  v255 = *(v223 - 8);
  v222 = v255;
  v9 = *(v255 + 80);
  v221 = sub_1DD0DD08C();
  v262 = *(v221 - 8);
  v220 = v262;
  v10 = (v5 | (v9 | *(v262 + 80))) & 0xF8 | v8;
  v11 = v3;
  v12 = v10 | v3;
  v13 = sub_1DD0DB66C();
  v14 = v10;
  v15 = v7;
  v16 = v8;
  v243 = v13;
  v17 = *(v13 - 8);
  v18 = v17;
  v19 = *(v17 + 80);
  v20 = v19;
  v21 = v12 | v20;
  v22 = ((v12 | v20) + 32) & ~(v12 | v20);
  v245 = v12 + 16;
  v23 = v12;
  v24 = (v12 + 16) & ~v12;
  v25 = *(v282 + 64);
  v248 = v25 + v14;
  v26 = *(v229 + 64);
  v219 = v26 + 7;
  if (((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v26)
  {
    v26 = ((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v26 <= *(v265 + 64))
  {
    v26 = *(v265 + 64);
  }

  v235 = *(v259 + 64) + v7;
  v214 = v251;
  v27 = *(v251 + 84);
  v213 = *(v251 + 64);
  if (v27)
  {
    v28 = *(v251 + 64);
  }

  else
  {
    v28 = *(v251 + 64) + 1;
  }

  v226 = v235 & ~v7;
  __n = v28;
  v232 = v28 + 7;
  v29 = (v28 + 7 + v226) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v26 <= v30)
  {
    v31 = (v29 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  else
  {
    v31 = v26;
  }

  v32 = v29 + 31;
  v33 = ((((((v29 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v31 <= v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  v217 = *(v255 + 64) + 7;
  v35 = *(v259 + 84);
  v240 = *(v251 + 84);
  if (v27)
  {
    v36 = v27 - 1;
  }

  else
  {
    v36 = 0;
  }

  if (v36 <= v35)
  {
    v37 = *(v259 + 84);
  }

  else
  {
    v37 = v36;
  }

  if (v37 <= 0x7FFFFFFE)
  {
    v37 = 2147483646;
  }

  v218 = v37;
  v216 = v8 + 16;
  if (v34 <= ((v32 + ((v8 + 16 + (v217 & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v34 = ((v32 + ((v8 + 16 + (v217 & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v34 <= *(v262 + 64))
  {
    v38 = *(v262 + 64);
  }

  else
  {
    v38 = v34;
  }

  if (v38 <= 0x18)
  {
    v39 = 24;
  }

  else
  {
    v39 = v38;
  }

  v40 = (((v39 + ((v25 + v14) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = v19 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v42 = (v19 + 16 + ((((((v40 + v24 + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v41;
  v231 = v17;
  if (*(v17 + 84) <= 0x7FFFFFFFu)
  {
    v43 = 0x7FFFFFFF;
  }

  else
  {
    v43 = *(v17 + 84);
  }

  v266 = v43;
  v276 = v20 + 16;
  v272 = v41;
  v228 = *(v17 + 64) + ((v20 + 32) & ~v20);
  v233 = v228 + ((v20 + 16) & v41);
  v268 = v233 + v11;
  if (!*(v282 + 84))
  {
    ++v25;
  }

  v44 = v22 + v25 + ((v233 + v11 + v42) & ~v11);
  if (v44 + 1 > 0x49)
  {
    v45 = v44 + 1;
  }

  else
  {
    v45 = 73;
  }

  v270 = v39 + 1;
  v46 = a1;
  v47 = a1[v45];
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v45 <= 3)
    {
      v49 = v45;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a1;
        goto LABEL_48;
      case 2:
        v50 = *a1;
        goto LABEL_48;
      case 3:
        v50 = *a1 | (a1[2] << 16);
        goto LABEL_48;
      case 4:
        v50 = *a1;
LABEL_48:
        if (v45 < 4)
        {
          v50 |= v48 << (8 * v45);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v51 = ~v21;
  v252 = ~v23;
  v256 = ~v14;
  v234 = ~v15;
  v215 = ~v16;
  v263 = v40 + 41;
  v242 = ~v20;
  v274 = ~v11;
  v260 = v21;
  v244 = *(v18 + 84);
  v238 = ~v21;
  v239 = v25;
  switch(v47)
  {
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (!*(a1 + 7))
      {
        goto LABEL_117;
      }

      v52 = a1 + 32;
LABEL_58:
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      goto LABEL_117;
    case 2u:

      goto LABEL_117;
    case 3u:

      goto LABEL_117;
    case 4u:
      sub_1DCD21390(*a1, *(a1 + 1), a1[16]);
      goto LABEL_117;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v53 = (v245 + (&a1[v260 + 32] & v51)) & v252;
      v211 = *(v282 + 8);
      v211(v53, v250);
      v212 = v53;
      v54 = ((v248 + v53) & v256);
      v55 = v54[v39];
      v56 = v55 - 10;
      if (v55 >= 0xA)
      {
        if (v39 <= 3)
        {
          v57 = v39;
        }

        else
        {
          v57 = 4;
        }

        switch(v57)
        {
          case 1:
            v58 = *v54;
            goto LABEL_69;
          case 2:
            v58 = *v54;
            goto LABEL_69;
          case 3:
            v58 = *v54 | (v54[2] << 16);
            goto LABEL_69;
          case 4:
            v58 = *v54;
LABEL_69:
            if (v39 < 4)
            {
              v55 = (v58 | (v56 << (8 * v39))) + 10;
            }

            else
            {
              v55 = v58 + 10;
            }

            break;
          default:
            goto LABEL_72;
        }
      }

      break;
    case 6u:

      goto LABEL_117;
    default:
      v52 = a1;
      goto LABEL_58;
  }

LABEL_72:
  switch(v55)
  {
    case 0u:
      v60 = v229;
      v59 = v230;
      goto LABEL_76;
    case 1u:
      (*(v229 + 8))(v54, v230);

      goto LABEL_102;
    case 2u:

      goto LABEL_86;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_102;
    case 4u:
      v60 = v224;
      v59 = v225;
      goto LABEL_76;
    case 5u:
      v61 = *v54;
      goto LABEL_101;
    case 6u:
      (*(v277 + 8))(v54, v236);
      if (!__swift_getEnumTagSinglePayload(&v54[v235] & v234, 1, v237))
      {
        (*(v214 + 8))(&v54[v235] & v234, v237);
      }

      goto LABEL_86;
    case 7u:
      (*(v277 + 8))(v54, v236);
      if (!__swift_getEnumTagSinglePayload(&v54[v235] & v234, 1, v237))
      {
        (*(v214 + 8))(&v54[v235] & v234, v237);
      }

LABEL_86:

      goto LABEL_102;
    case 8u:
      (*(v222 + 8))(v54, v223);
      v210 = v54;
      v62 = &v54[v217] & 0xFFFFFFFFFFFFFFF8;

      v63 = (v216 + v62) & v215;
      if (v35 == v218)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v216 + v62) & v215, v35, v236);
        v54 = v210;
        if (EnumTagSinglePayload)
        {
          goto LABEL_100;
        }

        v65 = (v235 + v63) & v234;
        goto LABEL_97;
      }

      v65 = (v235 + v63) & v234;
      if (v36 == v218)
      {
        v54 = v210;
        if (v240 >= 2 && __swift_getEnumTagSinglePayload((v235 + v63) & v234, v240, v237) >= 2)
        {
          goto LABEL_100;
        }

        goto LABEL_97;
      }

      v66 = *(((v232 + v65) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v66 >= 0xFFFFFFFF)
      {
        LODWORD(v66) = -1;
      }

      v54 = v210;
      if ((v66 + 1) < 2)
      {
LABEL_97:
        (*(v277 + 8))(v63, v236);
        if (!__swift_getEnumTagSinglePayload(v65, 1, v237))
        {
          (*(v214 + 8))(v65, v237);
        }
      }

LABEL_100:
      v61 = *((v32 + v63) & 0xFFFFFFFFFFFFFFF8);
LABEL_101:

LABEL_102:

      v67 = (((&v54[v270 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v67[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
      }

      v68 = ((v263 + v212 + 22) & 0xFFFFFFFFFFFFFFF8);

      v69 = (v276 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8)) & v272;
      if (v266 < 1)
      {
        v71 = (v276 + v69) & v272;
        if (__swift_getEnumTagSinglePayload((v276 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v242, v244, v243) > 1)
        {
          goto LABEL_115;
        }
      }

      else
      {
        LODWORD(v70) = -1;
        if (*(v69 + 8) < 0xFFFFFFFFuLL)
        {
          v70 = *(v69 + 8);
        }

        if ((v70 + 1) > 1)
        {
          goto LABEL_115;
        }

        v71 = (v276 + v69) & v272;
      }

      if ((v244 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v276 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v242, v244, v243))
        {
LABEL_114:

          (*(v231 + 8))((v276 + ((v71 + 23) & 0xFFFFFFFFFFFFFFF8)) & v242, v243);
        }
      }

      else
      {
        v72 = *(v71 + 8);
        if (v72 >= 0xFFFFFFFF)
        {
          LODWORD(v72) = -1;
        }

        if (v72 == -1)
        {
          goto LABEL_114;
        }
      }

LABEL_115:
      v73 = v268 + v69;
      if (!__swift_getEnumTagSinglePayload(v73 & v274, 1, v250))
      {
        v211(v73 & v274, v250);
      }

LABEL_117:
      v74 = a2[v45];
      v75 = v74 - 7;
      if (v74 >= 7)
      {
        if (v45 <= 3)
        {
          v76 = v45;
        }

        else
        {
          v76 = 4;
        }

        switch(v76)
        {
          case 1:
            v77 = *a2;
            goto LABEL_126;
          case 2:
            v77 = *a2;
            goto LABEL_126;
          case 3:
            v77 = *a2 | (a2[2] << 16);
            goto LABEL_126;
          case 4:
            v77 = *a2;
LABEL_126:
            if (v45 < 4)
            {
              v74 = (v77 | (v75 << (8 * v45))) + 7;
            }

            else
            {
              v74 = v77 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v74)
      {
        case 1u:
          v86 = *(a2 + 3);
          *(a1 + 3) = v86;
          (**(v86 - 8))(a1, a2);
          v87 = *(a2 + 7);
          if (v87)
          {
            *(a1 + 7) = v87;
            *(a1 + 8) = *(a2 + 8);
            (**(v87 - 8))(a1 + 32, a2 + 32);
          }

          else
          {
            v102 = *(a2 + 2);
            v103 = *(a2 + 3);
            *(a1 + 8) = *(a2 + 8);
            *(a1 + 2) = v102;
            *(a1 + 3) = v103;
          }

          a1[72] = a2[72];
          v82 = 1;
          goto LABEL_214;
        case 2u:
          v83 = *a2;
          v84 = *a2;
          *a1 = v83;
          v82 = 2;
          goto LABEL_214;
        case 3u:
          v85 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v85;
          a1[v45] = 3;
          sub_1DD0DCF8C();
        case 4u:
          v79 = *a2;
          v80 = *(a2 + 1);
          v81 = a2[16];
          sub_1DCD1B9B8(*a2, v80, v81);
          *a1 = v79;
          *(a1 + 1) = v80;
          a1[16] = v81;
          v82 = 4;
          goto LABEL_214;
        case 5u:
          v88 = *(a2 + 3);
          *(a1 + 3) = v88;
          (**(v88 - 8))(a1, a2);
          v89 = (&a1[v260 + 32] & v238);
          v90 = (&a2[v260 + 32] & v238);
          *v89 = *v90;
          v89[1] = v90[1];
          v91 = (v89 + v245) & v252;
          v92 = (v90 + v245) & v252;
          v93 = *(v282 + 16);

          v253 = v93;
          v93(v91, v92, v250);
          v261 = v91;
          v94 = ((v248 + v91) & v256);
          v95 = v92;
          v96 = ((v248 + v92) & v256);
          v97 = v96[v39];
          v98 = v97 - 10;
          if (v97 < 0xA)
          {
            v100 = v240;
            v35 = v35;
          }

          else
          {
            if (v39 <= 3)
            {
              v99 = v39;
            }

            else
            {
              v99 = 4;
            }

            v100 = v240;
            v35 = v35;
            switch(v99)
            {
              case 1:
                v101 = *v96;
                goto LABEL_151;
              case 2:
                v101 = *v96;
                goto LABEL_151;
              case 3:
                v101 = *v96 | (v96[2] << 16);
                goto LABEL_151;
              case 4:
                v101 = *v96;
LABEL_151:
                if (v39 < 4)
                {
                  v97 = (v101 | (v98 << (8 * v39))) + 10;
                }

                else
                {
                  v97 = v101 + 10;
                }

                break;
              default:
                goto LABEL_154;
            }
          }

          break;
        case 6u:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = *(a2 + 2);
          *(a1 + 3) = *(a2 + 3);
          a1[v45] = 6;

          goto LABEL_215;
        default:
          v78 = *(a2 + 3);
          *(a1 + 3) = v78;
          *(a1 + 4) = *(a2 + 4);
          (**(v78 - 8))(a1, a2);
          a1[v45] = 0;
          goto LABEL_215;
      }

      break;
    case 9u:
      v60 = v220;
      v59 = v221;
LABEL_76:
      (*(v60 + 8))(v54, v59);
      goto LABEL_102;
    default:
      goto LABEL_102;
  }

LABEL_154:
  switch(v97)
  {
    case 0u:
      (*(v229 + 16))(v94, v96, v230);
      *(v94 + v39) = 0;
      goto LABEL_193;
    case 1u:
      (*(v229 + 16))(v94, v96, v230);
      *((v94 + v219) & 0xFFFFFFFFFFFFFFF8) = *(&v96[v219] & 0xFFFFFFFFFFFFFFF8);
      *(v94 + v39) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v94 = *v96;
      v94[1] = *(v96 + 1);
      v94[2] = *(v96 + 2);
      *(v94 + v39) = 2;

      goto LABEL_176;
    case 3u:
      *v94 = *v96;
      *(v94 + v39) = 3;
      swift_unknownObjectRetain();
      goto LABEL_193;
    case 4u:
      (*(v224 + 16))(v94, v96, v225);
      v104 = 4;
      goto LABEL_158;
    case 5u:
      v108 = *v96;
      *v94 = *v96;
      v109 = 5;
      goto LABEL_192;
    case 6u:
      (*(v277 + 16))(v94, v96, v236);
      v110 = v94;
      v111 = ((v94 + v235) & v234);
      v112 = (&v96[v235] & v234);
      if (__swift_getEnumTagSinglePayload(v112, 1, v237))
      {
        memcpy(v111, v112, __n);
      }

      else
      {
        (*(v214 + 16))(v111, v112, v237);
        __swift_storeEnumTagSinglePayload(v111, 0, 1, v237);
      }

      v133 = v272;
      v134 = ((v111 + v232) & 0xFFFFFFFFFFFFFFF8);
      v135 = ((v112 + v232) & 0xFFFFFFFFFFFFFFF8);
      *v134 = *v135;
      v134[1] = v135[1];
      v136 = (v134 + 19) & 0xFFFFFFFFFFFFFFF8;
      v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
      v138 = *v137;
      *(v136 + 4) = *(v137 + 4);
      *v136 = v138;
      v94 = v110;
      *(v110 + v39) = 6;

      v139 = v276;
      goto LABEL_194;
    case 7u:
      (*(v277 + 16))(v94, v96, v236);
      v105 = v94;
      v106 = ((v94 + v235) & v234);
      v107 = (&v96[v235] & v234);
      if (__swift_getEnumTagSinglePayload(v107, 1, v237))
      {
        memcpy(v106, v107, __n);
      }

      else
      {
        (*(v214 + 16))(v106, v107, v237);
        __swift_storeEnumTagSinglePayload(v106, 0, 1, v237);
      }

      v122 = ((v106 + v232) & 0xFFFFFFFFFFFFFFF8);
      v123 = ((v107 + v232) & 0xFFFFFFFFFFFFFFF8);
      *v122 = *v123;
      v122[1] = v123[1];
      v124 = (v122 + 19) & 0xFFFFFFFFFFFFFFF8;
      v125 = (v123 + 19) & 0xFFFFFFFFFFFFFFF8;
      v126 = *v125;
      *(v124 + 4) = *(v125 + 4);
      *v124 = v126;
      v127 = ((v105 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
      v128 = (&v96[v30 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v127 = *v128;
      v127[1] = v128[1];
      v129 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
      v130 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v129 = *v130;
      v129[1] = v130[1];
      v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
      v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v131 = *v132;
      v131[1] = v132[1];
      *(v105 + v39) = 7;

      v94 = v105;
LABEL_176:

      goto LABEL_193;
    case 8u:
      (*(v222 + 16))(v94, v96, v223);
      v249 = v94;
      v113 = ((v94 + v217) & 0xFFFFFFFFFFFFFFF8);
      v114 = (&v96[v217] & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v113[1] = v114[1];
      v257 = ((v113 + v216) & v215);
      v115 = ((v114 + v216) & v215);

      if (v35 == v218)
      {
        if (!__swift_getEnumTagSinglePayload(v115, v35, v236))
        {
          v241 = v96;
          v117 = v234;
          v116 = v235;
          v118 = ((v115 + v235) & v234);
          v119 = v115;
          v120 = v237;
          goto LABEL_183;
        }

LABEL_189:
        memcpy(v257, v115, v30);
LABEL_190:
        v143 = __n;
        goto LABEL_191;
      }

      v121 = (v115 + v235) & v234;
      if (v36 == v218)
      {
        v246 = v115;
        v120 = v237;
        if (v100 < 2)
        {
          v241 = v96;
          v117 = v234;
          v116 = v235;
          v118 = v121;
          v119 = v246;
          goto LABEL_183;
        }

        v115 = v246;
        if (__swift_getEnumTagSinglePayload(v121, v100, v237) >= 2)
        {
          goto LABEL_189;
        }
      }

      else
      {
        v140 = *(((v232 + v121) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v140 >= 0xFFFFFFFF)
        {
          LODWORD(v140) = -1;
        }

        if ((v140 + 1) >= 2)
        {
          goto LABEL_189;
        }
      }

      v241 = v96;
      v119 = v115;
      v120 = v237;
      v117 = v234;
      v116 = v235;
      v118 = v121;
LABEL_183:
      v247 = v119;
      (*(v277 + 16))(v257);
      v141 = ((v257 + v116) & v117);
      v142 = v118;
      if (__swift_getEnumTagSinglePayload(v118, 1, v120))
      {
        memcpy(v141, v118, __n);
      }

      else
      {
        (*(v214 + 16))(v141, v118, v120);
        __swift_storeEnumTagSinglePayload(v141, 0, 1, v120);
      }

      v143 = v213;
      v96 = v241;
      v144 = ((v141 + v232) & 0xFFFFFFFFFFFFFFF8);
      v145 = ((v142 + v232) & 0xFFFFFFFFFFFFFFF8);
      *v144 = *v145;
      v144[1] = v145[1];
      v146 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
      v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
      v148 = *v147;
      *(v146 + 4) = *(v147 + 4);
      *v146 = v148;

      v115 = v247;
      if (!v100)
      {
        goto LABEL_190;
      }

LABEL_191:
      v149 = (((v226 + v143 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      v150 = ((v257 + v149 + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = *((v115 + v149 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v150 = v108;
      v109 = 8;
      v94 = v249;
LABEL_192:
      *(v94 + v39) = v109;
      v151 = v108;
LABEL_193:
      v139 = v276;
      v133 = v272;
LABEL_194:
      v152 = (&v96[v270 + 7] & 0xFFFFFFFFFFFFFFF8);
      v153 = ((v94 + v270 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v152;
      v154 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
      v156 = *(v155 + 24);

      if (v156 < 0xFFFFFFFF)
      {
        v157 = *v155;
        v158 = *(v155 + 16);
        *(v154 + 32) = *(v155 + 32);
        *v154 = v157;
        *(v154 + 16) = v158;
      }

      else
      {
        *(v154 + 24) = v156;
        *(v154 + 32) = *(v155 + 32);
        (**(v156 - 8))(v154, v155, v156);
      }

      *(v154 + 40) = *(v155 + 40);
      *(v263 + v261 + 7) = *(v263 + v95 + 7);
      v159 = ((v263 + v261 + 22) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v263 + v95 + 22) & 0xFFFFFFFFFFFFFFF8);
      v161 = *v160;
      *v159 = *v160;
      v162 = ((v159 + 15) & 0xFFFFFFFFFFFFFFF8);
      v163 = ((v160 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v162 = *v163;
      v162[1] = v163[1];
      v164 = ((v162 + v139) & v133);
      v165 = ((v163 + v139) & v133);

      v166 = v161;

      if (v266 >= 1)
      {
        v167 = v165[1];
        if (v167 >= 0xFFFFFFFF)
        {
          LODWORD(v167) = -1;
        }

        if ((v167 + 1) <= 1)
        {
          v168 = ((v165 + v139) & v133);
          goto LABEL_203;
        }

LABEL_208:
        v171 = v164;
        v172 = v165;
        v173 = v233;
        goto LABEL_209;
      }

      v168 = ((v165 + v139) & v133);
      if (__swift_getEnumTagSinglePayload((v139 + ((v168 + 23) & 0xFFFFFFFFFFFFFFF8)) & v242, v244, v243) > 1)
      {
        goto LABEL_208;
      }

LABEL_203:
      *v164 = *v165;
      v164[1] = v165[1];
      v169 = ((v164 + v139) & v133);

      if ((v244 & 0x80000000) != 0)
      {
        if (__swift_getEnumTagSinglePayload((v139 + ((v168 + 23) & 0xFFFFFFFFFFFFFFF8)) & v242, v244, v243))
        {
LABEL_207:
          v171 = ((v164 + v139) & v133);
          v172 = v168;
          v173 = v228;
LABEL_209:
          memcpy(v171, v172, v173);
          goto LABEL_210;
        }
      }

      else
      {
        v170 = v168[1];
        if (v170 >= 0xFFFFFFFF)
        {
          LODWORD(v170) = -1;
        }

        if (v170 != -1)
        {
          goto LABEL_207;
        }
      }

      *v169 = *v168;
      *(((v164 + v139) & v133) + 8) = v168[1];
      v204 = ((v169 + 23) & 0xFFFFFFFFFFFFFFF8);
      v205 = ((v168 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v204 = *v205;
      v204[1] = v205[1];
      v206 = v204 + v139;
      v207 = v205 + v139;
      v208 = *(v231 + 16);

      v209 = v207 & v242;
      v46 = a1;
      v208(v206 & v242, v209, v243);
LABEL_210:
      v174 = ((v164 + v268) & v274);
      v175 = ((v165 + v268) & v274);
      if (__swift_getEnumTagSinglePayload(v175, 1, v250))
      {
        v176 = v239;
        memcpy(v174, v175, v239);
      }

      else
      {
        v253(v174, v175, v250);
        __swift_storeEnumTagSinglePayload(v174, 0, 1, v250);
        v176 = v239;
      }

      *(v174 + v176) = *(v175 + v176);
      v82 = 5;
LABEL_214:
      v46[v45] = v82;
LABEL_215:
      v278 = *(sub_1DD0DB04C() - 8);
      v283 = *(v278 + 80);
      v275 = *(sub_1DD0DC76C() - 8);
      v177 = *(v275 + 80);
      v273 = *(sub_1DD0DB1EC() - 8);
      v254 = *(v273 + 80) | v177;
      v271 = *(sub_1DD0DB4BC() - 8);
      v178 = *(v271 + 80) & 0xF8;
      v264 = *(sub_1DD0DB3EC() - 8);
      v179 = *(v264 + 80);
      v258 = v178 | v179 | 7;
      v269 = *(sub_1DD0DD12C() - 8);
      v180 = *(v269 + 80);
      v267 = *(sub_1DD0DD08C() - 8);
      v181 = (v254 | (v180 | *(v267 + 80))) & 0xF8 | v178 | v179 | 7;
      v183 = *(sub_1DD0DB66C() - 8);
      v185 = *(v275 + 64);
      if (((v185 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v185)
      {
        v185 = ((v185 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v185 <= *(v273 + 64))
      {
        v185 = *(v273 + 64);
      }

      v186 = *(v264 + 64) + ((*(v271 + 64) + v179) & ~v179);
      if (!*(v264 + 84))
      {
        ++v186;
      }

      v187 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
      v188 = (v187 + 19) | 5;
      if (v185 <= v188)
      {
        v185 = (v187 + 19) | 5;
      }

      v189 = ((((((v187 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
      if (v185 <= v189)
      {
        v185 = v189;
      }

      if (v185 <= ((v188 + ((v258 + ((*(v269 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v258) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        v185 = ((v188 + ((v258 + ((*(v269 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v258) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v185 <= *(v267 + 64))
      {
        v185 = *(v267 + 64);
      }

      if (v185 <= 0x18)
      {
        v185 = 24;
      }

      v182 = v181 | v283;
      v184 = *(v183 + 80);
      v190 = -2 - (((-33 - (v182 | v184)) | v182 | v184) + ~*(v278 + 64) - (*(v278 + 84) == 0)) - ((((-25 - v184 - ((((((v182 + 16) & ~v182) + ((((((*(v278 + 64) + v181) & ~v181) + v185 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v184 | 7) - (v283 - (((-33 - v184) | v184) + ((-17 - v184) | v184 | 7)) + *(v183 + 64)) + 2) | v283);
      if (v190 <= 0x49)
      {
        v190 = 73;
      }

      v191 = *(*(a3 + 16) - 8);
      v192 = v191 + 24;
      v193 = *(v191 + 80);
      v194 = v190 + v193 + 1;
      v195 = &a1[v194] & ~v193;
      v196 = &a2[v194] & ~v193;
      (*(v191 + 24))(v195, v196);
      v197 = *(v192 + 40) + 7;
      v198 = (v197 + v195) & 0xFFFFFFFFFFFFFFF8;
      v199 = (v197 + v196) & 0xFFFFFFFFFFFFFFF8;
      v200 = *(v199 + 24);
      if (*(v198 + 24) < 0xFFFFFFFFuLL)
      {
        if (v200 >= 0xFFFFFFFF)
        {
          *(v198 + 24) = v200;
          *(v198 + 32) = *(v199 + 32);
          (**(v200 - 8))(v198, v199);
          goto LABEL_240;
        }

LABEL_239:
        v201 = *v199;
        v202 = *(v199 + 16);
        *(v198 + 32) = *(v199 + 32);
        *v198 = v201;
        *(v198 + 16) = v202;
        goto LABEL_240;
      }

      if (v200 < 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v198);
        goto LABEL_239;
      }

      __swift_assign_boxed_opaque_existential_1(v198, v199);
LABEL_240:
      *(v198 + 40) = *(v199 + 40);
      return a1;
    case 9u:
      (*(v220 + 16))(v94, v96, v221);
      v104 = 9;
LABEL_158:
      *(v94 + v39) = v104;
      goto LABEL_193;
    default:
      memcpy(v94, v96, v270);
      goto LABEL_193;
  }
}

void *sub_1DCD3135C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v209 = sub_1DD0DB04C();
  v229 = *(v209 - 8);
  v235 = v229;
  v236 = *(v229 + 80);
  __dst = *(sub_1DD0DC76C() - 8);
  v3 = *(__dst + 20);
  v226 = *(sub_1DD0DB1EC() - 8);
  v201 = v226;
  v212 = *(v226 + 80) | v3;
  v208 = sub_1DD0DB4BC();
  v220 = *(v208 - 8);
  v232 = v220;
  v4 = *(v220 + 80) & 0xF8;
  v206 = sub_1DD0DB3EC();
  v214 = *(v206 - 8);
  v5 = v214;
  v6 = *(v214 + 80);
  v210 = v4 | v6 | 7;
  v216 = *(sub_1DD0DD12C() - 8);
  v200 = v216;
  v7 = *(v216 + 80);
  v224 = *(sub_1DD0DD08C() - 8);
  v199 = v224;
  v8 = (v212 | (v7 | *(v224 + 80))) & 0xF8 | v4 | v6 | 7;
  v9 = v8 | v236;
  v213 = sub_1DD0DB66C();
  v10 = *(v213 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v13 = v8 | v236 | v11;
  v14 = (v8 | v236) + 16;
  v15 = *(v229 + 64);
  v16 = v8;
  v17 = v15 + v8;
  v18 = *(__dst + 8);
  v198 = v18 + 7;
  if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v18)
  {
    v19 = *(__dst + 8);
  }

  else
  {
    v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v19 <= *(v226 + 64))
  {
    v20 = *(v226 + 64);
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= 0x18)
  {
    v21 = 24;
  }

  else
  {
    v21 = v20;
  }

  v207 = *(v220 + 64) + v6;
  v22 = v6;
  v192 = v214;
  v23 = *(v214 + 84);
  v190 = *(v214 + 64);
  if (v23)
  {
    v24 = *(v214 + 64);
  }

  else
  {
    v24 = *(v214 + 64) + 1;
  }

  __n = v24;
  v215 = v24 + 7;
  v194 = v207 & ~v6;
  v195 = v21;
  v25 = (v24 + 7 + v194) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v26 <= v21)
  {
    v27 = v21;
  }

  else
  {
    v27 = (v25 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v28 = v25 + 31;
  v29 = (((((v25 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = v29 + 16;
  if (v29 + 16 <= v27)
  {
    v31 = v27;
  }

  else
  {
    v31 = v29 + 16;
  }

  v197 = *(v216 + 64) + 7;
  v32 = *(v220 + 84);
  v191 = *(v5 + 84);
  if (v23)
  {
    v33 = v23 - 1;
  }

  else
  {
    v33 = 0;
  }

  if (v33 <= v32)
  {
    v34 = *(v220 + 84);
  }

  else
  {
    v34 = v33;
  }

  if (v34 <= 0x7FFFFFFE)
  {
    v34 = 2147483646;
  }

  v217 = v34;
  v196 = v210 + 16;
  v35 = (v28 + ((v210 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v210)) & 0xFFFFFFFFFFFFFFF8;
  v36 = v35 + 8;
  if (v35 + 8 <= v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = v35 + 8;
  }

  v38 = a2;
  v193 = *(v224 + 64);
  if (v193 <= v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = *(v224 + 64);
  }

  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v40 = 0x7FFFFFFF;
  }

  else
  {
    v40 = *(v10 + 84);
  }

  v228 = v40;
  v41 = *(*(v213 - 8) + 64) + ((v11 + 32) & ~v11);
  v221 = v17;
  v42 = (((v39 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = v11 + 16;
  v230 = v11 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v219 = v41 + (v43 & v230);
  if (*(v235 + 84))
  {
    v44 = v15;
  }

  else
  {
    v44 = v15 + 1;
  }

  v45 = (((v9 | v11) + 32) & ~(v9 | v11)) + v44 + ((v219 + v236 + ((v11 + 16 + ((((((v42 + (v14 & ~v9) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v230)) & ~v236);
  if (v45 + 1 > 0x49)
  {
    v46 = v45 + 1;
  }

  else
  {
    v46 = 73;
  }

  v227 = v39 + 1;
  v47 = a2[v46];
  v48 = v47 - 7;
  if (v47 >= 7)
  {
    if (v46 <= 3)
    {
      v49 = v46;
    }

    else
    {
      v49 = 4;
    }

    switch(v49)
    {
      case 1:
        v50 = *a2;
        goto LABEL_51;
      case 2:
        v50 = *a2;
        goto LABEL_51;
      case 3:
        v50 = *a2 | (a2[2] << 16);
        goto LABEL_51;
      case 4:
        v50 = *a2;
LABEL_51:
        if (v46 < 4)
        {
          v50 |= v48 << (8 * v46);
        }

        v47 = v50 + 7;
        break;
      default:
        break;
    }
  }

  v51 = ~v13;
  v52 = ~v9;
  v53 = ~v16;
  v54 = ~v22;
  v55 = ~v210;
  v225 = v42 + 41;
  v56 = ~v12;
  switch(v47)
  {
    case 1u:
      v59 = a1;
      v60 = v46;
      memcpy(a1, a2, 0x49uLL);
      v46 = v60;
      v38 = a2;
      v57 = 1;
      goto LABEL_67;
    case 2u:
      v59 = a1;
      *a1 = *a2;
      v57 = 2;
      goto LABEL_67;
    case 3u:
      v59 = a1;
      *a1 = *a2;
      v57 = 3;
      goto LABEL_67;
    case 4u:
      v59 = a1;
      *a1 = *a2;
      *(a1 + 16) = a2[16];
      v57 = 4;
      goto LABEL_67;
    case 5u:
      v180 = v36;
      v181 = v30;
      v183 = v56;
      v184 = ~v236;
      v189 = *(v10 + 84);
      v211 = v41;
      v185 = v219 + v236;
      v186 = v44;
      v187 = v46;
      v237 = *(v213 - 8);
      v61 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v61;
      v62 = ((a1 + v13 + 32) & v51);
      v63 = (&a2[v13 + 32] & v51);
      *v62 = *v63;
      v64 = (v62 + v14) & v52;
      v65 = (v63 + v14) & v52;
      v182 = *(v235 + 32);
      v182(v64, v65, v209);
      v188 = v64;
      v66 = v221 + v64;
      v67 = v65;
      v68 = (v66 & v53);
      v69 = ((v221 + v65) & v53);
      v70 = v69[v39];
      v71 = v70 - 10;
      if (v70 >= 0xA)
      {
        if (v39 <= 3)
        {
          v72 = v39;
        }

        else
        {
          v72 = 4;
        }

        switch(v72)
        {
          case 1:
            v73 = *v69;
            goto LABEL_72;
          case 2:
            v73 = *v69;
            goto LABEL_72;
          case 3:
            v73 = *v69 | (v69[2] << 16);
            goto LABEL_72;
          case 4:
            v73 = *v69;
LABEL_72:
            if (v39 < 4)
            {
              v70 = (v73 | (v71 << (8 * v39))) + 10;
            }

            else
            {
              v70 = v73 + 10;
            }

            break;
          default:
            goto LABEL_75;
        }
      }

      break;
    case 6u:
      v74 = *(a2 + 1);
      v59 = a1;
      *a1 = *a2;
      *(a1 + 1) = v74;
      v57 = 6;
      goto LABEL_67;
    default:
      v57 = 0;
      v58 = *(a2 + 1);
      v59 = a1;
      *a1 = *a2;
      *(a1 + 1) = v58;
      a1[4] = *(a2 + 4);
LABEL_67:
      v75 = a3;
      goto LABEL_68;
  }

LABEL_75:
  switch(v70)
  {
    case 0u:
      v88 = v68;
      (*(__dst + 4))();
      v68 = v88;
      *(v88 + v39) = 0;
      goto LABEL_87;
    case 1u:
      v89 = v68;
      (*(__dst + 4))();
      v68 = v89;
      *((v89 + v198) & 0xFFFFFFFFFFFFFFF8) = *(&v69[v198] & 0xFFFFFFFFFFFFFFF8);
      v90 = 1;
      goto LABEL_84;
    case 2u:
      v91 = *v69;
      v68[2] = *(v69 + 2);
      *v68 = v91;
      v92 = 2;
      goto LABEL_86;
    case 3u:
      *v68 = *v69;
      v92 = 3;
      goto LABEL_86;
    case 4u:
      v89 = v68;
      (*(v201 + 32))();
      v68 = v89;
      v90 = 4;
      goto LABEL_84;
    case 5u:
      *v68 = *v69;
      v92 = 5;
LABEL_86:
      *(v68 + v39) = v92;
      goto LABEL_87;
    case 6u:
      v134 = v68;
      (*(v232 + 32))();
      v135 = v134;
      v136 = v69;
      v137 = ((v134 + v207) & v54);
      v138 = v136;
      v139 = (&v136[v207] & v54);
      if (__swift_getEnumTagSinglePayload(v139, 1, v206))
      {
        memcpy(v137, v139, __n);
      }

      else
      {
        (*(v192 + 32))(v137, v139, v206);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v206);
      }

      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v104 = v228;
      v106 = v225;
      v107 = v188;
      v101 = v213;
      v165 = ((v137 + v215) & 0xFFFFFFFFFFFFFFF8);
      v166 = ((v139 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v165 = *v166;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = (v166 + 19) & 0xFFFFFFFFFFFFFFF8;
      v169 = *v168;
      *(v167 + 4) = *(v168 + 4);
      *v167 = v169;
      v68 = v135;
      *(v135 + v39) = 6;
      v102 = v237;
      v99 = v211;
      v103 = v189;
      v105 = v39 + 1;
      v69 = v138;
      goto LABEL_90;
    case 7u:
      v93 = v68;
      (*(v232 + 32))();
      v94 = v93;
      v95 = v69;
      v96 = ((v93 + v207) & v54);
      v222 = v95;
      v97 = (&v95[v207] & v54);
      if (__swift_getEnumTagSinglePayload(v97, 1, v206))
      {
        memcpy(v96, v97, __n);
      }

      else
      {
        (*(v192 + 32))(v96, v97, v206);
        __swift_storeEnumTagSinglePayload(v96, 0, 1, v206);
      }

      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v104 = v228;
      v106 = v225;
      v107 = v188;
      v156 = ((v96 + v215) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v97 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v158 = (v156 + 19) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 19) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      *(v158 + 4) = *(v159 + 4);
      *v158 = v160;
      v68 = v94;
      v161 = ((v94 + v26 + 7) & 0xFFFFFFFFFFFFFFF8);
      v69 = v222;
      v162 = (&v222[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v163 = ((v161 + 23) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v162 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      *((v163 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v164 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v94 + v39) = 7;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v105 = v39 + 1;
      goto LABEL_90;
    case 8u:
      v141 = v68;
      (*(v200 + 32))();
      v142 = ((v141 + v197) & 0xFFFFFFFFFFFFFFF8);
      v223 = v69;
      v143 = (&v69[v197] & 0xFFFFFFFFFFFFFFF8);
      *v142 = *v143;
      __dsta = ((v142 + v196) & v55);
      v144 = ((v143 + v196) & v55);
      __src = v144;
      if (v32 == v217)
      {
        v145 = v54;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, v32, v208);
        v144 = __src;
        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v39 + 1;
        v147 = v207;
        if (!EnumTagSinglePayload)
        {
          v218 = v67;
          v148 = ((__src + v207) & v145);
          goto LABEL_127;
        }

LABEL_118:
        v150 = __dsta;
        memcpy(__dsta, v144, v26);
        v151 = __src;
        v152 = __n;
        v99 = v211;
        v101 = v213;
        v102 = v237;
        v103 = v189;
        v153 = v194;
        v154 = v195;
        v68 = v141;
        v155 = v193;
LABEL_131:
        v177 = v152;
        goto LABEL_132;
      }

      v147 = v207;
      v145 = v54;
      v148 = ((v144 + v207) & v54);
      if (v33 == v217)
      {
        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v227;
        if (v191 >= 2)
        {
          v149 = __swift_getEnumTagSinglePayload(v148, v191, v206);
          v144 = __src;
          if (v149 >= 2)
          {
            goto LABEL_118;
          }
        }
      }

      else
      {
        v170 = *(((v148 + v215) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v170 >= 0xFFFFFFFF)
        {
          LODWORD(v170) = -1;
        }

        v59 = a1;
        v75 = a3;
        v100 = v209;
        v105 = v227;
        if ((v170 + 1) >= 2)
        {
          goto LABEL_118;
        }
      }

      v218 = v67;
LABEL_127:
      (*(v232 + 32))(__dsta, v144, v208);
      v171 = ((__dsta + v147) & v145);
      v152 = __n;
      if (__swift_getEnumTagSinglePayload(v148, 1, v206))
      {
        memcpy(v171, v148, __n);
      }

      else
      {
        (*(v192 + 32))(v171, v148, v206);
        __swift_storeEnumTagSinglePayload(v171, 0, 1, v206);
      }

      v101 = v213;
      v172 = ((v171 + v215) & 0xFFFFFFFFFFFFFFF8);
      v173 = ((v148 + v215) & 0xFFFFFFFFFFFFFFF8);
      *v172 = *v173;
      v174 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
      v175 = *v174;
      v176 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v176 + 4) = *(v174 + 4);
      *v176 = v175;
      v102 = v237;
      v99 = v211;
      v103 = v189;
      v177 = v190;
      v67 = v218;
      v153 = v194;
      v154 = v195;
      v68 = v141;
      v155 = v193;
      v150 = __dsta;
      v151 = __src;
      if (!v191)
      {
        goto LABEL_131;
      }

LABEL_132:
      v178 = v153 + 7;
      *((v150 + ((((v178 + v177) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8) = *((v151 + ((((v178 + v177) & 0xFFFFFFFFFFFFFFF8) + 19) | 5) + 7) & 0xFFFFFFFFFFFFFFF8);
      v179 = (((v178 + v152) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v179 <= v154)
      {
        v179 = v154;
      }

      if (v181 > v179)
      {
        v179 = v181;
      }

      if (v180 > v179)
      {
        v179 = v180;
      }

      if (v155 > v179)
      {
        v179 = v155;
      }

      *(v68 + v179) = 8;
      v98 = v230;
      v104 = v228;
      v69 = v223;
      v106 = v225;
LABEL_89:
      v107 = v188;
LABEL_90:
      v108 = ((v68 + v105 + 7) & 0xFFFFFFFFFFFFFFF8);
      v109 = (&v69[v105 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v108 = *v109;
      v110 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = *v111;
      v113 = *(v111 + 16);
      *(v110 + 32) = *(v111 + 32);
      *v110 = v112;
      *(v110 + 16) = v113;
      *(v110 + 40) = *(v111 + 40);
      *(v106 + v107 + 7) = *(v106 + v67 + 7);
      v114 = ((v106 + v67 + 22) & 0xFFFFFFFFFFFFFFF8);
      v115 = ((v106 + v107 + 22) & 0xFFFFFFFFFFFFFFF8);
      *v115 = *v114;
      v116 = ((v115 + 15) & 0xFFFFFFFFFFFFFFF8);
      v117 = ((v114 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v116 = *v117;
      v118 = ((v116 + v43) & v98);
      v119 = ((v117 + v43) & v98);
      if (v104 >= 1)
      {
        v120 = *(((v117 + v43) & v98) + 8);
        if (v120 >= 0xFFFFFFFF)
        {
          LODWORD(v120) = -1;
        }

        if ((v120 + 1) <= 1)
        {
          v121 = ((v119 + v43) & v98);
          goto LABEL_96;
        }

LABEL_101:
        v125 = v118;
        v126 = v119;
        v127 = v219;
        goto LABEL_102;
      }

      v121 = ((v119 + v43) & v98);
      v122 = __swift_getEnumTagSinglePayload((v43 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) & v183, v103, v101);
      v103 = v189;
      v99 = v211;
      v102 = v237;
      if (v122 > 1)
      {
        goto LABEL_101;
      }

LABEL_96:
      *v118 = *v119;
      v123 = ((v118 + v43) & v98);
      if ((v103 & 0x80000000) == 0)
      {
        v124 = v121[1];
        if (v124 >= 0xFFFFFFFF)
        {
          LODWORD(v124) = -1;
        }

        if (v124 != -1)
        {
          goto LABEL_100;
        }

LABEL_108:
        *v123 = *v121;
        v132 = ((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
        v133 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v132 = *v133;
        (*(v102 + 32))((v132 + v43) & v183, (v133 + v43) & v183, v213);
        goto LABEL_103;
      }

      v131 = __swift_getEnumTagSinglePayload((v43 + ((v121 + 23) & 0xFFFFFFFFFFFFFFF8)) & v183, v103, v213);
      v99 = v211;
      v102 = v237;
      if (!v131)
      {
        goto LABEL_108;
      }

LABEL_100:
      v125 = ((v118 + v43) & v98);
      v126 = v121;
      v127 = v99;
LABEL_102:
      memcpy(v125, v126, v127);
LABEL_103:
      v128 = ((v118 + v185) & v184);
      v129 = ((v119 + v185) & v184);
      if (__swift_getEnumTagSinglePayload(v129, 1, v100))
      {
        v130 = v186;
        memcpy(v128, v129, v186);
      }

      else
      {
        v182(v128, v129, v100);
        __swift_storeEnumTagSinglePayload(v128, 0, 1, v100);
        v130 = v186;
      }

      *(v128 + v130) = *(v129 + v130);
      v57 = 5;
      v38 = a2;
      v46 = v187;
LABEL_68:
      *(v59 + v46) = v57;
      v76 = *(*(v75 + 16) - 8);
      v77 = v76 + 32;
      v78 = *(v76 + 80);
      v79 = v46 + v78 + 1;
      v80 = (v59 + v79) & ~v78;
      v81 = &v38[v79] & ~v78;
      (*(v76 + 32))(v80, v81);
      v82 = *(v77 + 32) + 7;
      v83 = (v82 + v80) & 0xFFFFFFFFFFFFFFF8;
      v84 = (v82 + v81) & 0xFFFFFFFFFFFFFFF8;
      v85 = *v84;
      v86 = *(v84 + 16);
      *(v83 + 32) = *(v84 + 32);
      *v83 = v85;
      *(v83 + 16) = v86;
      *(v83 + 40) = *(v84 + 40);
      return v59;
    case 9u:
      v89 = v68;
      (*(v199 + 32))();
      v68 = v89;
      v90 = 9;
LABEL_84:
      *(v89 + v39) = v90;
LABEL_87:
      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v104 = v228;
      v105 = v39 + 1;
      goto LABEL_88;
    default:
      v140 = v68;
      v105 = v39 + 1;
      memcpy(v68, v69, v227);
      v68 = v140;
      v59 = a1;
      v98 = v230;
      v75 = a3;
      v100 = v209;
      v99 = v211;
      v101 = v213;
      v102 = v237;
      v103 = v189;
      v104 = v228;
LABEL_88:
      v106 = v225;
      goto LABEL_89;
  }
}

unsigned __int8 *sub_1DCD32480(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_167;
  }

  v227 = sub_1DD0DB04C();
  v257 = *(v227 - 8);
  v262 = *(v257 + 80);
  v212 = sub_1DD0DC76C();
  v211 = *(v212 - 8);
  v3 = *(v211 + 80);
  v206 = sub_1DD0DB1EC();
  v248 = *(v206 - 8);
  v205 = v248;
  v230 = *(v248 + 80) | v3;
  v218 = sub_1DD0DB4BC();
  v242 = *(v218 - 8);
  v253 = v242;
  v4 = *(v242 + 80) & 0xF8;
  v219 = sub_1DD0DB3EC();
  v234 = *(v219 - 8);
  v5 = *(v234 + 80);
  v228 = v4 | v5 | 7;
  v204 = sub_1DD0DD12C();
  v238 = *(v204 - 8);
  v203 = v238;
  v6 = *(v238 + 80);
  v202 = sub_1DD0DD08C();
  v245 = *(v202 - 8);
  v201 = v245;
  v7 = (v230 | (v6 | *(v245 + 80))) & 0xF8 | v4 | v5 | 7;
  v8 = v7 | v262;
  v9 = sub_1DD0DB66C();
  v10 = v5;
  v220 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 80);
  v255 = v7 | v262 | v12;
  v13 = *(v257 + 64);
  v14 = *(v211 + 64);
  v200 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v248 + 64))
  {
    v14 = *(v248 + 64);
  }

  if (v14 <= 0x18)
  {
    v15 = 24;
  }

  else
  {
    v15 = v14;
  }

  v217 = *(v242 + 64) + v5;
  v195 = v234;
  v16 = *(v234 + 84);
  v193 = v15;
  v194 = *(v234 + 64);
  if (v16)
  {
    v17 = *(v234 + 64);
  }

  else
  {
    v17 = *(v234 + 64) + 1;
  }

  v214 = v17 + 7;
  v208 = v217 & ~v5;
  v18 = (v17 + 7 + v208) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v19 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = (v18 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v21 = v18 + 31;
  v22 = ((((((v18 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v192 = v22;
  if (v22 <= v20)
  {
    v22 = v20;
  }

  v197 = *(v238 + 64) + 7;
  v199 = v228 + 16;
  v23 = *(v242 + 84);
  v207 = *(v234 + 84);
  if (v16)
  {
    v24 = v16 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= v23)
  {
    v25 = *(v242 + 84);
  }

  else
  {
    v25 = v24;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v198 = v25;
  v191 = ((v21 + ((v228 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v228)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v191 > v22)
  {
    v22 = ((v21 + ((v228 + 16 + (v197 & 0xFFFFFFFFFFFFFFF8)) & ~v228)) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v190 = *(v245 + 64);
  if (v190 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = *(v245 + 64);
  }

  v213 = v11;
  v221 = *(v11 + 84);
  if (v221 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = *(v11 + 84);
  }

  v240 = v27;
  v28 = *(v11 + 64) + ((v12 + 32) & ~v12);
  v29 = (((v26 + ((v13 + v7) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v231 = v8 + 16;
  v235 = v13 + v7;
  v249 = v12 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v251 = v12 + 16;
  v210 = v28;
  v215 = v28 + (v251 & v249);
  v243 = v215 + v262;
  if (*(v257 + 84))
  {
    v30 = *(v257 + 64);
  }

  else
  {
    v30 = v13 + 1;
  }

  v31 = (((v8 | v12) + 32) & ~(v8 | v12)) + v30 + ((v215 + v262 + ((v12 + 16 + ((((((v29 + ((v8 + 16) & ~v8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v249)) & ~v262);
  if (v31 + 1 > 0x49)
  {
    v32 = v31 + 1;
  }

  else
  {
    v32 = 73;
  }

  v246 = v26 + 1;
  v33 = a1[v32];
  v34 = v33 - 7;
  if (v33 >= 7)
  {
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 1:
        v36 = *a1;
        goto LABEL_48;
      case 2:
        v36 = *a1;
        goto LABEL_48;
      case 3:
        v36 = *a1 | (a1[2] << 16);
        goto LABEL_48;
      case 4:
        v36 = *a1;
LABEL_48:
        if (v32 < 4)
        {
          v36 |= v34 << (8 * v32);
        }

        v33 = v36 + 7;
        break;
      default:
        break;
    }
  }

  v222 = ~v255;
  v223 = ~v8;
  v225 = ~v7;
  v216 = ~v10;
  v196 = ~v228;
  v239 = v29 + 41;
  v229 = ~v12;
  v263 = ~v262;
  __n = v17;
  switch(v33)
  {
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v37 = a2;
      if (*(a1 + 7))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1 + 4);
      }

      goto LABEL_66;
    case 2u:

      goto LABEL_65;
    case 3u:

      goto LABEL_65;
    case 4u:
      sub_1DCD21390(*a1, *(a1 + 1), a1[16]);
      goto LABEL_65;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);

      v38 = (v231 + (&a1[v255 + 32] & v222)) & v223;
      v187 = *(v257 + 8);
      v187(v38, v227);
      v39 = ((v235 + v38) & v225);
      v40 = v39[v26];
      v41 = v40 - 10;
      if (v40 >= 0xA)
      {
        if (v26 <= 3)
        {
          v42 = v26;
        }

        else
        {
          v42 = 4;
        }

        switch(v42)
        {
          case 1:
            v43 = *v39;
            goto LABEL_96;
          case 2:
            v43 = *v39;
            goto LABEL_96;
          case 3:
            v43 = *v39 | (v39[2] << 16);
            goto LABEL_96;
          case 4:
            v43 = *v39;
LABEL_96:
            if (v26 < 4)
            {
              v40 = (v43 | (v41 << (8 * v26))) + 10;
            }

            else
            {
              v40 = v43 + 10;
            }

            break;
          default:
            goto LABEL_99;
        }
      }

      break;
    case 6u:

      goto LABEL_65;
    default:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
LABEL_65:
      v37 = a2;
      goto LABEL_66;
  }

LABEL_99:
  switch(v40)
  {
    case 0u:
      v65 = v211;
      v64 = v212;
      goto LABEL_110;
    case 1u:
      (*(v211 + 8))(v39, v212);

      goto LABEL_201;
    case 2u:

      goto LABEL_128;
    case 3u:
      swift_unknownObjectRelease();
      goto LABEL_201;
    case 4u:
      v65 = v205;
      v64 = v206;
      goto LABEL_110;
    case 5u:
      v80 = *v39;
      goto LABEL_200;
    case 6u:
      (*(v253 + 8))(v39, v218);
      if (!__swift_getEnumTagSinglePayload(&v39[v217] & v216, 1, v219))
      {
        (*(v195 + 8))(&v39[v217] & v216, v219);
      }

      goto LABEL_128;
    case 7u:
      (*(v253 + 8))(v39, v218);
      if (!__swift_getEnumTagSinglePayload(&v39[v217] & v216, 1, v219))
      {
        (*(v195 + 8))(&v39[v217] & v216, v219);
      }

LABEL_128:

      goto LABEL_201;
    case 8u:
      (*(v203 + 8))(v39, v204);
      v188 = v39;
      v87 = &v39[v197] & 0xFFFFFFFFFFFFFFF8;

      v88 = (v199 + v87) & v196;
      if (v23 == v198)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v199 + v87) & v196, v23, v218);
        v39 = v188;
        if (EnumTagSinglePayload)
        {
          goto LABEL_199;
        }

        v186 = (v217 + v88) & v216;
        goto LABEL_196;
      }

      if (v24 == v198)
      {
        v39 = v188;
        v186 = (v217 + v88) & v216;
        if (v207 >= 2 && __swift_getEnumTagSinglePayload(v186, v207, v219) >= 2)
        {
          goto LABEL_199;
        }

        goto LABEL_196;
      }

      v166 = *(((v214 + ((v217 + v88) & v216)) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v166 >= 0xFFFFFFFF)
      {
        LODWORD(v166) = -1;
      }

      v39 = v188;
      if ((v166 + 1) < 2)
      {
        v186 = (v217 + v88) & v216;
LABEL_196:
        (*(v253 + 8))(v88, v218);
        if (!__swift_getEnumTagSinglePayload(v186, 1, v219))
        {
          (*(v195 + 8))(v186, v219);
        }
      }

LABEL_199:
      v80 = *((v21 + v88) & 0xFFFFFFFFFFFFFFF8);
LABEL_200:

LABEL_201:

      v167 = (((&v39[v246 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v167[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v167);
      }

      v189 = v30;

      v168 = ((v239 + ((v231 + (&a1[v255 + 32] & v222)) & v223) + 22) & 0xFFFFFFFFFFFFFFF8);

      v169 = (v251 + ((v168 + 15) & 0xFFFFFFFFFFFFFFF8)) & v249;
      v37 = a2;
      if (v240 < 1)
      {
        v171 = (v251 + v169) & v249;
        if (__swift_getEnumTagSinglePayload((v251 + ((v171 + 23) & 0xFFFFFFFFFFFFFFF8)) & v229, v221, v220) > 1)
        {
          goto LABEL_214;
        }
      }

      else
      {
        LODWORD(v170) = -1;
        if (*(v169 + 8) < 0xFFFFFFFFuLL)
        {
          v170 = *(v169 + 8);
        }

        if ((v170 + 1) > 1)
        {
          goto LABEL_214;
        }

        v171 = (v251 + v169) & v249;
      }

      if ((v221 & 0x80000000) != 0)
      {
        if (!__swift_getEnumTagSinglePayload((v251 + ((v171 + 23) & 0xFFFFFFFFFFFFFFF8)) & v229, v221, v220))
        {
LABEL_213:

          (*(v213 + 8))((v251 + ((v171 + 23) & 0xFFFFFFFFFFFFFFF8)) & v229, v220);
        }
      }

      else
      {
        v172 = *(v171 + 8);
        if (v172 >= 0xFFFFFFFF)
        {
          LODWORD(v172) = -1;
        }

        if (v172 == -1)
        {
          goto LABEL_213;
        }
      }

LABEL_214:
      v173 = v243 + v169;
      v30 = v189;
      if (!__swift_getEnumTagSinglePayload(v173 & v263, 1, v227))
      {
        v187(v173 & v263, v227);
      }

LABEL_66:
      v44 = v37[v32];
      v45 = v44 - 7;
      if (v44 >= 7)
      {
        if (v32 <= 3)
        {
          v46 = v32;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v37;
            goto LABEL_75;
          case 2:
            v47 = *v37;
            goto LABEL_75;
          case 3:
            v47 = *v37 | (v37[2] << 16);
            goto LABEL_75;
          case 4:
            v47 = *v37;
LABEL_75:
            if (v32 < 4)
            {
              v44 = (v47 | (v45 << (8 * v32))) + 7;
            }

            else
            {
              v44 = v47 + 7;
            }

            break;
          default:
            break;
        }
      }

      switch(v44)
      {
        case 1u:
          memcpy(a1, v37, 0x49uLL);
          v48 = 1;
          goto LABEL_166;
        case 2u:
          *a1 = *v37;
          v48 = 2;
          goto LABEL_166;
        case 3u:
          *a1 = *v37;
          v48 = 3;
          goto LABEL_166;
        case 4u:
          *a1 = *v37;
          a1[16] = v37[16];
          v48 = 4;
          goto LABEL_166;
        case 5u:
          v50 = *(v37 + 1);
          *a1 = *v37;
          *(a1 + 1) = v50;
          v51 = (&a1[v255 + 32] & v222);
          v52 = (&v37[v255 + 32] & v222);
          *v51 = *v52;
          v53 = (v51 + v231) & v223;
          v54 = (v52 + v231) & v223;
          v55 = *(v257 + 32);
          v55(v53, v54, v227);
          v256 = v53;
          v56 = ((v235 + v53) & v225);
          v57 = v54;
          v58 = ((v235 + v54) & v225);
          v59 = v58[v26];
          v60 = v59 - 10;
          if (v59 >= 0xA)
          {
            if (v26 <= 3)
            {
              v61 = v26;
            }

            else
            {
              v61 = 4;
            }

            switch(v61)
            {
              case 1:
                v62 = *v58;
                goto LABEL_102;
              case 2:
                v62 = *v58;
                goto LABEL_102;
              case 3:
                v62 = *v58 | (*(((v235 + v54) & v225) + 2) << 16);
                goto LABEL_102;
              case 4:
                v62 = *v58;
LABEL_102:
                if (v26 < 4)
                {
                  v59 = (v62 | (v60 << (8 * v26))) + 10;
                }

                else
                {
                  v59 = v62 + 10;
                }

                break;
              default:
                goto LABEL_105;
            }
          }

          break;
        case 6u:
          v63 = *(v37 + 1);
          *a1 = *v37;
          *(a1 + 1) = v63;
          v48 = 6;
          goto LABEL_166;
        default:
          v48 = 0;
          v49 = *(v37 + 1);
          *a1 = *v37;
          *(a1 + 1) = v49;
          *(a1 + 4) = *(v37 + 4);
          goto LABEL_166;
      }

      break;
    case 9u:
      v65 = v201;
      v64 = v202;
LABEL_110:
      (*(v65 + 8))(v39, v64);
      goto LABEL_201;
    default:
      goto LABEL_201;
  }

LABEL_105:
  v232 = v55;
  switch(v59)
  {
    case 0u:
      v66 = v30;
      v67 = v56;
      v68 = v58;
      (*(v211 + 32))(v56, v58, v212);
      v56 = v67;
      v58 = v68;
      *(v67 + v26) = 0;
      goto LABEL_148;
    case 1u:
      v66 = v30;
      v69 = v56;
      v79 = v58;
      (*(v211 + 32))(v56, v58, v212);
      v56 = v69;
      v58 = v79;
      *((v69 + v200) & 0xFFFFFFFFFFFFFFF8) = *(&v79[v200] & 0xFFFFFFFFFFFFFFF8);
      v71 = 1;
      goto LABEL_123;
    case 2u:
      v66 = v30;
      v73 = *v58;
      v56[2] = *(v58 + 2);
      *v56 = v73;
      v74 = 2;
      goto LABEL_147;
    case 3u:
      v66 = v30;
      *v56 = *v58;
      v74 = 3;
      goto LABEL_147;
    case 4u:
      v66 = v30;
      v69 = v56;
      v70 = v58;
      (*(v205 + 32))(v56, v58, v206);
      v56 = v69;
      v58 = v70;
      v71 = 4;
      goto LABEL_123;
    case 5u:
      v66 = v30;
      *v56 = *v58;
      v74 = 5;
      goto LABEL_147;
    case 6u:
      v66 = v30;
      v81 = v56;
      v82 = v58;
      (*(v253 + 32))(v56, v58, v218);
      v83 = ((v81 + v217) & v216);
      v84 = (&v82[v217] & v216);
      if (__swift_getEnumTagSinglePayload(v84, 1, v219))
      {
        memcpy(v83, v84, __n);
      }

      else
      {
        (*(v195 + 32))(v83, v84, v219);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v219);
      }

      v107 = v249;
      v108 = v251;
      v161 = ((v83 + v214) & 0xFFFFFFFFFFFFFFF8);
      v162 = ((v84 + v214) & 0xFFFFFFFFFFFFFFF8);
      *v161 = *v162;
      v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
      v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
      v165 = *v164;
      *(v163 + 4) = *(v164 + 4);
      *v163 = v165;
      v56 = v81;
      *(v81 + v26) = 6;
      v109 = v256;
      v110 = v227;
      v58 = v82;
      goto LABEL_149;
    case 7u:
      v66 = v30;
      v75 = v56;
      v76 = v58;
      (*(v253 + 32))(v56, v58, v218);
      v77 = ((v75 + v217) & v216);
      v78 = (&v76[v217] & v216);
      if (__swift_getEnumTagSinglePayload(v78, 1, v219))
      {
        memcpy(v77, v78, __n);
      }

      else
      {
        (*(v195 + 32))(v77, v78, v219);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v219);
      }

      v98 = ((v77 + v214) & 0xFFFFFFFFFFFFFFF8);
      v99 = ((v78 + v214) & 0xFFFFFFFFFFFFFFF8);
      *v98 = *v99;
      v100 = (v98 + 19) & 0xFFFFFFFFFFFFFFF8;
      v101 = (v99 + 19) & 0xFFFFFFFFFFFFFFF8;
      v102 = *v101;
      *(v100 + 4) = *(v101 + 4);
      *v100 = v102;
      v56 = v75;
      v103 = ((v75 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
      v58 = v76;
      v104 = (&v76[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v103 = *v104;
      v105 = ((v103 + 23) & 0xFFFFFFFFFFFFFFF8);
      v106 = ((v104 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v105 = *v106;
      *((v105 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v106 + 23) & 0xFFFFFFFFFFFFFFF8);
      v74 = 7;
LABEL_147:
      *(v56 + v26) = v74;
      goto LABEL_148;
    case 8u:
      v236 = v56;
      v226 = v58;
      (*(v203 + 32))(v56, v58, v204);
      v90 = ((v236 + v197) & 0xFFFFFFFFFFFFFFF8);
      v91 = (&v226[v197] & 0xFFFFFFFFFFFFFFF8);
      *v90 = *v91;
      v224 = ((v90 + v199) & v196);
      v92 = ((v91 + v199) & v196);
      if (v23 == v198)
      {
        v94 = v216;
        v93 = v217;
        if (!__swift_getEnumTagSinglePayload(v92, v23, v218))
        {
          v95 = ((v92 + v217) & v216);
          goto LABEL_221;
        }

LABEL_228:
        v66 = v30;
        v175 = v92;
        memcpy(v224, v92, v19);
        v107 = v249;
        v177 = __n;
        v109 = v256;
        v58 = v226;
        v110 = v227;
        v56 = v236;
LABEL_229:
        v183 = v177;
        goto LABEL_230;
      }

      v94 = v216;
      v93 = v217;
      v95 = ((v92 + v217) & v216);
      if (v24 != v198)
      {
        v174 = *(((v95 + v214) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v174 >= 0xFFFFFFFF)
        {
          LODWORD(v174) = -1;
        }

        if ((v174 + 1) < 2)
        {
          goto LABEL_221;
        }

        goto LABEL_228;
      }

      v96 = v219;
      if (v207 < 2)
      {
        v97 = ((v91 + v199) & v196);
        goto LABEL_222;
      }

      v92 = ((v91 + v199) & v196);
      if (__swift_getEnumTagSinglePayload(v95, v207, v219) >= 2)
      {
        goto LABEL_228;
      }

LABEL_221:
      v97 = v92;
      v96 = v219;
LABEL_222:
      v175 = v97;
      (*(v253 + 32))(v224);
      v176 = ((v224 + v93) & v94);
      v66 = v30;
      if (__swift_getEnumTagSinglePayload(v95, 1, v96))
      {
        v177 = __n;
        memcpy(v176, v95, __n);
      }

      else
      {
        (*(v195 + 32))(v176, v95, v96);
        __swift_storeEnumTagSinglePayload(v176, 0, 1, v96);
        v177 = __n;
      }

      v109 = v256;
      v58 = v226;
      v110 = v227;
      v178 = ((v176 + v214) & 0xFFFFFFFFFFFFFFF8);
      v179 = ((v95 + v214) & 0xFFFFFFFFFFFFFFF8);
      *v178 = *v179;
      v180 = (v179 + 19) & 0xFFFFFFFFFFFFFFF8;
      v181 = *v180;
      v182 = (v178 + 19) & 0xFFFFFFFFFFFFFFF8;
      *(v182 + 4) = *(v180 + 4);
      *v182 = v181;
      v107 = v249;
      v183 = v194;
      v56 = v236;
      if (!v207)
      {
        goto LABEL_229;
      }

LABEL_230:
      v184 = (((v208 + 7 + v183) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
      *((v224 + v184 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v175 + v184 + 7) & 0xFFFFFFFFFFFFFFF8);
      v185 = (((v208 + 7 + v177) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
      if (v185 <= v193)
      {
        v185 = v193;
      }

      if (v192 > v185)
      {
        v185 = v192;
      }

      if (v191 > v185)
      {
        v185 = v191;
      }

      if (v190 > v185)
      {
        v185 = v190;
      }

      *(v56 + v185) = 8;
      v108 = v251;
LABEL_149:
      v111 = ((v56 + v246 + 7) & 0xFFFFFFFFFFFFFFF8);
      v112 = (&v58[v246 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v111 = *v112;
      v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v114 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
      v115 = *v114;
      v116 = *(v114 + 16);
      *(v113 + 32) = *(v114 + 32);
      *v113 = v115;
      *(v113 + 16) = v116;
      *(v113 + 40) = *(v114 + 40);
      *(v239 + v109 + 7) = *(v239 + v57 + 7);
      v117 = ((v239 + v57 + 22) & 0xFFFFFFFFFFFFFFF8);
      v118 = ((v239 + v109 + 22) & 0xFFFFFFFFFFFFFFF8);
      *v118 = *v117;
      v119 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
      v120 = ((v117 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v119 = *v120;
      v121 = ((v119 + v108) & v107);
      v122 = ((v120 + v108) & v107);
      if (v240 >= 1)
      {
        v123 = *(((v120 + v108) & v107) + 8);
        if (v123 >= 0xFFFFFFFF)
        {
          LODWORD(v123) = -1;
        }

        if ((v123 + 1) <= 1)
        {
          v124 = ((v122 + v108) & v107);
          goto LABEL_155;
        }

LABEL_160:
        v128 = v121;
        v129 = v122;
        v130 = v215;
        goto LABEL_161;
      }

      v124 = ((v122 + v108) & v107);
      v125 = __swift_getEnumTagSinglePayload((v108 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v229, v221, v220);
      v107 = v249;
      if (v125 > 1)
      {
        goto LABEL_160;
      }

LABEL_155:
      *v121 = *v122;
      v126 = ((v121 + v108) & v107);
      if ((v221 & 0x80000000) != 0)
      {
        if (__swift_getEnumTagSinglePayload((v108 + ((v124 + 23) & 0xFFFFFFFFFFFFFFF8)) & v229, v221, v220))
        {
LABEL_159:
          v128 = v126;
          v129 = v124;
          v130 = v210;
LABEL_161:
          memcpy(v128, v129, v130);
          goto LABEL_162;
        }
      }

      else
      {
        v127 = v124[1];
        if (v127 >= 0xFFFFFFFF)
        {
          LODWORD(v127) = -1;
        }

        if (v127 != -1)
        {
          goto LABEL_159;
        }
      }

      *v126 = *v124;
      v159 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
      v160 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v159 = *v160;
      (*(v213 + 32))((v159 + v108) & v229, (v160 + v108) & v229, v220);
LABEL_162:
      v131 = ((v121 + v243) & v263);
      v132 = ((v122 + v243) & v263);
      if (__swift_getEnumTagSinglePayload(v132, 1, v110))
      {
        memcpy(v131, v132, v66);
      }

      else
      {
        v232(v131, v132, v110);
        __swift_storeEnumTagSinglePayload(v131, 0, 1, v110);
      }

      *(v131 + v66) = *(v132 + v66);
      v48 = 5;
LABEL_166:
      a1[v32] = v48;
LABEL_167:
      v258 = *(sub_1DD0DB04C() - 8);
      v264 = *(v258 + 80);
      v254 = *(sub_1DD0DC76C() - 8);
      v133 = *(v254 + 80);
      v252 = *(sub_1DD0DB1EC() - 8);
      v233 = *(v252 + 80) | v133;
      v250 = *(sub_1DD0DB4BC() - 8);
      v134 = *(v250 + 80) & 0xF8;
      v241 = *(sub_1DD0DB3EC() - 8);
      v135 = *(v241 + 80);
      v237 = v134 | v135 | 7;
      v247 = *(sub_1DD0DD12C() - 8);
      v136 = *(v247 + 80);
      v244 = *(sub_1DD0DD08C() - 8);
      v137 = (v233 | (v136 | *(v244 + 80))) & 0xF8 | v134 | v135 | 7;
      v139 = *(sub_1DD0DB66C() - 8);
      v141 = *(v254 + 64);
      if (((v141 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v141)
      {
        v141 = ((v141 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v141 <= *(v252 + 64))
      {
        v141 = *(v252 + 64);
      }

      v142 = *(v241 + 64) + ((*(v250 + 64) + v135) & ~v135);
      if (!*(v241 + 84))
      {
        ++v142;
      }

      v143 = (v142 + 7) & 0xFFFFFFFFFFFFFFF8;
      v144 = (v143 + 19) | 5;
      if (v141 <= v144)
      {
        v141 = (v143 + 19) | 5;
      }

      v145 = ((((((v143 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
      if (v141 <= v145)
      {
        v141 = v145;
      }

      if (v141 <= ((v144 + ((v237 + ((*(v247 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v237) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
      {
        v141 = ((v144 + ((v237 + ((*(v247 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v237) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      if (v141 <= *(v244 + 64))
      {
        v141 = *(v244 + 64);
      }

      if (v141 <= 0x18)
      {
        v141 = 24;
      }

      v138 = v137 | v264;
      v140 = *(v139 + 80);
      v146 = -2 - (((-33 - (v138 | v140)) | v138 | v140) + ~*(v258 + 64) - (*(v258 + 84) == 0)) - ((((-25 - v140 - ((((((v138 + 16) & ~v138) + ((((((*(v258 + 64) + v137) & ~v137) + v141 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v140 | 7) - (v264 - (((-33 - v140) | v140) + ((-17 - v140) | v140 | 7)) + *(v139 + 64)) + 2) | v264);
      if (v146 <= 0x49)
      {
        v146 = 73;
      }

      v147 = *(*(a3 + 16) - 8);
      v148 = v147 + 40;
      v149 = *(v147 + 80);
      v150 = v146 + v149 + 1;
      v151 = &a1[v150] & ~v149;
      v152 = &a2[v150] & ~v149;
      (*(v147 + 40))(v151, v152);
      v153 = *(v148 + 24) + 7;
      v154 = (v153 + v151) & 0xFFFFFFFFFFFFFFF8;
      if (*(v154 + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v154);
      }

      v155 = (v153 + v152) & 0xFFFFFFFFFFFFFFF8;
      v156 = *v155;
      v157 = *(v155 + 16);
      *(v154 + 32) = *(v155 + 32);
      *v154 = v156;
      *(v154 + 16) = v157;
      *(v154 + 40) = *(v155 + 40);
      return a1;
    case 9u:
      v66 = v30;
      v69 = v56;
      v72 = v58;
      (*(v201 + 32))(v56, v58, v202);
      v56 = v69;
      v58 = v72;
      v71 = 9;
LABEL_123:
      *(v69 + v26) = v71;
      goto LABEL_148;
    default:
      v66 = v30;
      v85 = v56;
      v86 = v58;
      memcpy(v56, v58, v246);
      v56 = v85;
      v58 = v86;
LABEL_148:
      v107 = v249;
      v108 = v251;
      v109 = v256;
      v110 = v227;
      goto LABEL_149;
  }
}

uint64_t sub_1DCD3406C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v46 = *(sub_1DD0DB04C() - 8);
  v49 = *(v46 + 80);
  v45 = *(sub_1DD0DC76C() - 8);
  v3 = *(v45 + 80);
  v44 = *(sub_1DD0DB1EC() - 8);
  v38 = *(v44 + 80) | v3;
  v43 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v43 + 80) & 0xF8;
  v40 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v40 + 80);
  v39 = v4 | v5 | 7;
  v42 = *(sub_1DD0DD12C() - 8);
  v6 = *(v42 + 80);
  v41 = *(sub_1DD0DD08C() - 8);
  v7 = (v38 | (v6 | *(v41 + 80))) & 0xF8 | v4 | v5 | 7;
  v8 = *(sub_1DD0DB66C() - 8);
  v9 = *(v8 + 80);
  v10 = *(v45 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v10)
  {
    v10 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v10 <= *(v44 + 64))
  {
    v10 = *(v44 + 64);
  }

  v11 = *(v40 + 64) + ((*(v43 + 64) + v5) & ~v5);
  if (!*(v40 + 84))
  {
    ++v11;
  }

  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 19) | 5;
  if (v10 <= v13)
  {
    v10 = (v12 + 19) | 5;
  }

  v14 = ((((((v12 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 <= v14)
  {
    v10 = v14;
  }

  if (v10 <= ((v13 + ((v39 + ((*(v42 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v39) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v13 + ((v39 + ((*(v42 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v39) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v10 <= *(v41 + 64))
  {
    v10 = *(v41 + 64);
  }

  if (v10 <= 0x18)
  {
    v15 = 24;
  }

  else
  {
    v15 = v10;
  }

  v16 = *(v8 + 64);
  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v19 <= 0x7FFFFFFE)
  {
    v20 = 2147483646;
  }

  else
  {
    v20 = *(v18 + 84);
  }

  v21 = -2 - (((-33 - (v7 | v49 | v9)) | v7 | v49 | v9) + ~*(v46 + 64) - (*(v46 + 84) == 0)) - ((((-25 - v9 - (((((((v7 | v49) + 16) & ~(v7 | v49)) + ((((((*(v46 + 64) + v7) & ~v7) + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v9 | 7) - (v49 - (((-33 - v9) | v9) + ((-17 - v9) | v9 | 7)) + v16) + 2) | v49);
  v22 = 73;
  if (v21 > 0x49)
  {
    v22 = v21;
  }

  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  if (!a2)
  {
    return 0;
  }

  v25 = v22 + v23 + 1;
  v26 = v24 + 7;
  result = a1;
  if (v20 >= a2)
  {
LABEL_45:
    v35 = &a1[v25] & ~v23;
    if (v19 < 0x7FFFFFFE)
    {
      v36 = *(((v26 + v35) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v36 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      if ((v36 + 1) >= 2)
      {
        return v36;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return __swift_getEnumTagSinglePayload(v35, v19, v17);
    }
  }

  else
  {
    v28 = ((v26 + (v25 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v28 <= 3)
    {
      v29 = ((a2 - v20 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    switch(v31)
    {
      case 1:
        v32 = a1[v28];
        if (!a1[v28])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 2:
        v32 = *&a1[v28];
        if (!*&a1[v28])
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      case 3:
        __break(1u);
        return result;
      case 4:
        v32 = *&a1[v28];
        if (!v32)
        {
          goto LABEL_45;
        }

LABEL_41:
        v33 = (v32 - 1) << (8 * v28);
        if (v28 <= 3)
        {
          v34 = *a1;
        }

        else
        {
          v33 = 0;
          v34 = *a1;
        }

        result = v20 + (v34 | v33) + 1;
        break;
      default:
        goto LABEL_45;
    }
  }

  return result;
}

void sub_1DCD34678(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v43 = *(sub_1DD0DB04C() - 8);
  v48 = *(v43 + 80);
  v42 = *(sub_1DD0DC76C() - 8);
  v4 = *(v42 + 80);
  v41 = *(sub_1DD0DB1EC() - 8);
  v35 = *(v41 + 80) | v4;
  v40 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v40 + 80) & 0xF8;
  v37 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v37 + 80);
  v36 = v5 | v6 | 7;
  v39 = *(sub_1DD0DD12C() - 8);
  v7 = *(v39 + 80);
  v38 = *(sub_1DD0DD08C() - 8);
  v8 = (v35 | (v7 | *(v38 + 80))) & 0xF8 | v5 | v6 | 7;
  v9 = *(sub_1DD0DB66C() - 8);
  v10 = *(v9 + 80);
  v11 = *(v42 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v41 + 64))
  {
    v11 = *(v41 + 64);
  }

  v12 = *(v37 + 64) + ((*(v40 + 64) + v6) & ~v6);
  if (!*(v37 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v36 + ((*(v39 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v36 + ((*(v39 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v36) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v38 + 64))
  {
    v11 = *(v38 + 64);
  }

  if (v11 <= 0x18)
  {
    v16 = 24;
  }

  else
  {
    v16 = v11;
  }

  v17 = *(v9 + 64);
  v18 = *(a4 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  if (v20 <= 0x7FFFFFFE)
  {
    v21 = 2147483646;
  }

  else
  {
    v21 = *(v19 + 84);
  }

  v22 = -2 - (((-33 - (v8 | v48 | v10)) | v8 | v48 | v10) + ~*(v43 + 64) - (*(v43 + 84) == 0)) - ((((-25 - v10 - (((((((v8 | v48) + 16) & ~(v8 | v48)) + ((((((*(v43 + 64) + v8) & ~v8) + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v10 | 7) - (v48 - (((-33 - v10) | v10) + ((-17 - v10) | v10 | 7)) + v17) + 2) | v48);
  if (v22 <= 0x49)
  {
    v22 = 73;
  }

  v23 = *(v19 + 80);
  v24 = v22 + v23 + 1;
  v25 = *(v19 + 64) + 7;
  v26 = ((v25 + (v24 & ~v23)) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v21 >= a3)
  {
    v29 = 0;
  }

  else
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v21 + 255) >> 8) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  if (v21 >= a2)
  {
    v32 = ~v23;
    switch(v29)
    {
      case 1:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 2:
        *(a1 + v26) = 0;
        if (a2)
        {
          goto LABEL_50;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *(a1 + v26) = 0;
        goto LABEL_49;
      default:
LABEL_49:
        if (a2)
        {
LABEL_50:
          v33 = (a1 + v24) & v32;
          if (v20 < 0x7FFFFFFE)
          {
            v34 = (v25 + v33) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0x7FFFFFFE)
            {
              *(v34 + 32) = 0;
              *v34 = 0u;
              *(v34 + 16) = 0u;
              *v34 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v34 + 24) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v33, a2, v20, v18);
          }
        }

        break;
    }
  }

  else
  {
    v30 = ~v21 + a2;
    bzero(a1, v26);
    if (v26 <= 3)
    {
      v31 = (v30 >> 8) + 1;
    }

    else
    {
      v31 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v30;
    }

    switch(v29)
    {
      case 1:
        *(a1 + v26) = v31;
        break;
      case 2:
        *(a1 + v26) = v31;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *(a1 + v26) = v31;
        break;
      default:
        return;
    }
  }
}

void sub_1DCD35644(void *a1)
{
  OUTLINED_FUNCTION_35_19();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = a1;
      goto LABEL_14;
    case 1u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      if (a1[7])
      {
        v3 = a1 + 4;
LABEL_14:
        __swift_destroy_boxed_opaque_existential_1Tm(v3);
      }

      goto LABEL_47;
    case 2u:
      OUTLINED_FUNCTION_11_7();

      return;
    case 3u:
      OUTLINED_FUNCTION_11_7();

      return;
    case 4u:
      OUTLINED_FUNCTION_11_7();

      sub_1DCD21390(v4, v5, v6);
      return;
    case 5u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C08, &qword_1DD0EFA20) + 48);

      v12 = type metadata accessor for PluginAction(0);
      v13 = &v11[v12[5]];
      v14 = sub_1DD0DB04C();
      OUTLINED_FUNCTION_2();
      (*(v15 + 8))(v13, v14);
      v16 = type metadata accessor for Input(0);
      v17 = &v13[v16[5]];
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          sub_1DD0DC76C();
          goto LABEL_22;
        case 1u:
          sub_1DD0DC76C();
          OUTLINED_FUNCTION_2();
          (*(v27 + 8))(v17);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_34;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          sub_1DD0DB1EC();
          goto LABEL_22;
        case 5u:
          v28 = *v17;
          goto LABEL_40;
        case 6u:
          sub_1DD0DB4BC();
          OUTLINED_FUNCTION_2();
          (*(v29 + 8))(v17);
          v30 = type metadata accessor for USOParse(0);
          v31 = *(v30 + 20);
          v32 = sub_1DD0DB3EC();
          if (!OUTLINED_FUNCTION_79_6(v32))
          {
            OUTLINED_FUNCTION_112();
            (*(v33 + 8))(v17 + v31, v1);
          }

          v26 = *(v30 + 24);
          goto LABEL_33;
        case 7u:
          sub_1DD0DB4BC();
          OUTLINED_FUNCTION_2();
          (*(v20 + 8))(v17);
          v21 = type metadata accessor for USOParse(0);
          v22 = *(v21 + 20);
          v23 = sub_1DD0DB3EC();
          if (!OUTLINED_FUNCTION_79_6(v23))
          {
            OUTLINED_FUNCTION_112();
            (*(v24 + 8))(v17 + v22, v1);
          }

          OUTLINED_FUNCTION_60_3(*(v21 + 24));

          v25 = type metadata accessor for LinkParse(0);
          OUTLINED_FUNCTION_60_3(v25[5]);

          OUTLINED_FUNCTION_60_3(v25[6]);

          v26 = v25[7];
LABEL_33:
          OUTLINED_FUNCTION_60_3(v26);
LABEL_34:

          break;
        case 8u:
          sub_1DD0DD12C();
          OUTLINED_FUNCTION_2();
          (*(v34 + 8))(v17);
          v35 = type metadata accessor for NLRouterParse(0);
          OUTLINED_FUNCTION_60_3(v35[5]);

          v36 = v17 + v35[6];
          v37 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v36, 1, v37))
          {
            sub_1DD0DB4BC();
            OUTLINED_FUNCTION_2();
            (*(v38 + 8))(v36);
            v39 = *(v37 + 20);
            v40 = sub_1DD0DB3EC();
            v53 = v39;
            v41 = v36 + v39;
            v42 = v40;
            if (!__swift_getEnumTagSinglePayload(v41, 1, v40))
            {
              OUTLINED_FUNCTION_112();
              (*(v43 + 8))(v36 + v53, v42);
            }
          }

          v28 = *(v17 + v35[7]);
LABEL_40:

          break;
        case 9u:
          sub_1DD0DD08C();
LABEL_22:
          OUTLINED_FUNCTION_2();
          (*(v19 + 8))(v17);
          break;
        default:
          break;
      }

      v44 = &v13[v16[7]];
      if (*(v44 + 3))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
      }

      v45 = &v11[v12[9]];
      v46 = type metadata accessor for ActionParaphrase(0);
      if (!OUTLINED_FUNCTION_78_8(v46))
      {

        v47 = &v45[v16[5]];
        v48 = type metadata accessor for ActionParaphrase.VerbEntityParaphrase(0);
        if (!OUTLINED_FUNCTION_78_8(v48))
        {

          v49 = v16[6];
          sub_1DD0DB66C();
          OUTLINED_FUNCTION_2();
          (*(v50 + 8))(&v47[v49]);
        }
      }

      if (!__swift_getEnumTagSinglePayload(&v11[v12[10]], 1, v14))
      {
        OUTLINED_FUNCTION_11_7();

        __asm { BRAA            X2, X16 }
      }

      goto LABEL_47;
    case 6u:

      OUTLINED_FUNCTION_11_7();

      return;
    default:
LABEL_47:
      OUTLINED_FUNCTION_11_7();
      return;
  }
}

uint64_t sub_1DCD37E88(uint64_t a1)
{
  result = type metadata accessor for FlowActionType(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCD37FA4(uint64_t a1)
{
  result = type metadata accessor for FlowActionType(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_1DD0DB3EC();
}

uint64_t static FlowActionBuilder.buildBlock(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DCB17CA0(a1, v5);
  a2[3] = type metadata accessor for Delegate(0);
  a2[4] = &protocol witness table for Delegate;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  sub_1DCAFF9E8(v5, boxed_opaque_existential_1Tm);
  type metadata accessor for FlowActionType(0);
  return swift_storeEnumTagMultiPayload();
}

_BYTE *storeEnumTagSinglePayload for FlowActionBuilder(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD38250()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38294()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCD38324()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38368()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t sub_1DCD383F8()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD3843C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_1DCD3850C()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38550()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1DCD385E0()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

double sub_1DCD386B4()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  return *(v0 + 96);
}

double sub_1DCD38728()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();
  return *(v0 + 104);
}

uint64_t sub_1DCD38758(double a1)
{
  OUTLINED_FUNCTION_47_2();
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1DCD387D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1DCD38820()
{
  OUTLINED_FUNCTION_2_50();
  swift_beginAccess();

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCD38864()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
}

uint64_t DefaultFlowActivity.__allocating_init(activityName:activityType:activityStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_5_11();
  v12 = swift_allocObject();
  DefaultFlowActivity.init(activityName:activityType:activityStartTime:)(v9, v8, v7, v6, a5, a6 & 1);
  return v12;
}

uint64_t sub_1DCD38960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xEC000000656D614ELL;
      if (v7 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD0DF0AC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
            if (v10 || (sub_1DD0DF0AC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
              if (v11 || (sub_1DD0DF0AC() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x7974697669746361 && a2 == 0xEC00000065707954)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD0DF0AC();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DCD38BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD38960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD38C10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCD38BE0();
  *a1 = result;
  return result;
}

uint64_t sub_1DCD38C38(uint64_t a1)
{
  v2 = sub_1DCB2D700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD38C74(uint64_t a1)
{
  v2 = sub_1DCB2D700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DefaultFlowActivity.deinit()
{

  return v0;
}

uint64_t DefaultFlowActivity.__deallocating_deinit()
{
  DefaultFlowActivity.deinit();
  OUTLINED_FUNCTION_5_11();

  return swift_deallocClassInstance();
}

uint64_t DefaultFlowActivity.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_5_11();
  v2 = swift_allocObject();
  DefaultFlowActivity.init(from:)(a1);
  return v2;
}

void *DefaultFlowActivity.init(from:)(void *a1)
{
  v2 = v1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D78, &qword_1DD0EFBB0);
  OUTLINED_FUNCTION_9();
  v25[1] = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v25 - v7;
  OUTLINED_FUNCTION_15_32();
  v30 = v2;
  OUTLINED_FUNCTION_14_33();
  v2[2] = v9;
  v2[3] = v10;
  v11 = v2 + 2;
  v11[2] = v9;
  v11[4] = 0xD000000000000013;
  v11[3] = v10;
  v11[6] = 0;
  v11[5] = 0x80000001DD0EFB70;
  v11[8] = v9;
  v11[7] = 0;
  v11[9] = v10;
  v11[11] = 0xBFF0000000000000;
  v12 = a1[3];
  v28 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DCB2D700();
  v27 = v8;
  v13 = v29;
  sub_1DD0DF23C();
  if (v13)
  {
    v18 = v30;

    type metadata accessor for DefaultFlowActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v11 + 4;
    v28 = v11 + 6;
    v25[0] = v11 + 8;
    v38[0] = 0;
    v15 = sub_1DD0DEF0C();
    v17 = v16;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v18 = v30;
    v30[2] = v15;
    v18[3] = v17;

    v37 = 1;
    v19 = v26;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v18[4] = v11;
    v18[5] = v15;

    v36 = 2;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v18[6] = v11;
    v18[7] = v15;

    v35 = 3;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEEDC();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v18[8] = v11;
    v18[9] = v15;

    v34 = 4;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v18[10] = v11;
    v18[11] = v15;

    v33 = 5;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF2C();
    v18[12] = v20;
    v33 = 6;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF2C();
    v22 = v21;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v11[11] = v22;
    v32 = 7;
    OUTLINED_FUNCTION_0_48();
    sub_1DD0DEF0C();
    OUTLINED_FUNCTION_11_32();
    v23 = OUTLINED_FUNCTION_10_33();
    v24(v23, v19);
    v18[14] = v11;
    v18[15] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v18;
}

uint64_t sub_1DCD394C0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 352))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DCD39520(uint64_t a1)
{
  *(a1 + 8) = sub_1DCD39588(&qword_1EDE4F1A0, &protocol conformance descriptor for DefaultFlowActivity);
  result = sub_1DCD39588(&qword_1EDE4F1A8, &protocol conformance descriptor for DefaultFlowActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCD39588(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DCD39B38()
{
  result = qword_1ECCA4D80;
  if (!qword_1ECCA4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4D80);
  }

  return result;
}

unint64_t sub_1DCD39B90()
{
  result = qword_1EDE4F1B0;
  if (!qword_1EDE4F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1B0);
  }

  return result;
}

unint64_t sub_1DCD39BE8()
{
  result = qword_1EDE4F1B8;
  if (!qword_1EDE4F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4F1B8);
  }

  return result;
}

uint64_t static FlowsBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D88, &qword_1DD0EFDA8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD0E07C0;
  sub_1DCB17CA0(a1, v2 + 32);
  return v2;
}

void sub_1DCD39CDC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = (result + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_1DCE1976C();
        v2 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D90, &qword_1DD0F0AA0);
        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v2 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t static FlowsBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

_BYTE *sub_1DCD39E60(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD39F28()
{
  type metadata accessor for RefreshableFlowContextPublisher();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4D98, &unk_1DD0EFE88);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(v0 + 16) = result;
  qword_1EDE57D90 = v0;
  return result;
}

void static FlowContextPublisher.current.getter()
{
  if (qword_1EDE4AE90 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

uint64_t dispatch thunk of FlowContextPublishing.publish(nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AD3C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FlowContextPublishing.publish(dialogEngineOutput:executionSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCB4AE1C;

  return v12(a1, a2, a3, a4);
}

_BYTE *storeEnumTagSinglePayload for FlowContextPublisher(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD3A300()
{
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD3A380()
{

  return swift_deallocClassInstance();
}

void *sub_1DCD3A3DC()
{
  type metadata accessor for FlowDelegatePluginLoader();
  swift_allocObject();
  result = sub_1DCD3A6F0();
  qword_1EDE4F520 = result;
  return result;
}

void static FlowDelegatePluginLoader.sharedInstance.getter()
{
  if (qword_1EDE4F518 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCD3A474()
{
  v0 = sub_1DD0DAECC();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EDE4F538);
  __swift_project_value_buffer(v0, qword_1EDE4F538);
  v6 = MEMORY[0x1E12A7960]();
  sub_1DD0DDFBC();

  sub_1DD0DAE4C();

  sub_1DD0DAE7C();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_1DCD3A5BC()
{
  v0 = sub_1DD0DDD8C();
  __swift_allocate_value_buffer(v0, qword_1ECCA4DA0);
  *__swift_project_value_buffer(v0, qword_1ECCA4DA0) = 2500;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_1DCD3A694()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    if (qword_1EDE4DD00 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = 1;
    *(v0 + 112) = 1;
  }

  return v1 & 1;
}

void *sub_1DCD3A6F0()
{
  v1 = v0;
  v2 = sub_1DD0DAECC();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v23 - v8 + 16;
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 104) = dispatch_semaphore_create(1);
  *(v0 + 112) = 2;
  sub_1DCC855E4();
  if (qword_1EDE4F530 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDE4F538);
  static FlowDelegatePluginLoader.getSystemPluginCachePathURL()();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v2);
  sub_1DCD3ADF8(v10, v9, v23);
  sub_1DCB16DB0(v9, &unk_1ECCA28C0, &unk_1DD0E1D80);
  v11 = v23[1];
  *(v0 + 16) = v23[0];
  *(v0 + 32) = v11;
  *(v0 + 48) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
  *(v0 + 96) = sub_1DD0DDE9C();
  v12 = [objc_opt_self() processInfo];
  v13 = [v12 environment];

  v14 = sub_1DD0DDE6C();
  sub_1DCB6B180(0xD000000000000021, 0x80000001DD11A8E0, v14);
  v16 = v15;

  if (v16)
  {
    sub_1DD0DAE4C();

    sub_1DCD4BCE4(v5, v25);
    v17 = v25[0];
    v18 = v25[1];
    v22 = v26;
    v19 = v27;
    swift_beginAccess();
    v20 = *(v1 + 56);
    *(v1 + 56) = v17;
    *(v1 + 64) = v18;
    *(v1 + 72) = v22;
    *(v1 + 88) = v19;
    sub_1DCD43E98(v20);
  }

  return v1;
}

void static FlowDelegatePluginLoader.getSystemPluginCachePathURL()()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_10_2();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - v8;
  v10 = sub_1DD0DAECC();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v19 = sub_1DD0DE2EC();

  if (!*(v19 + 16))
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v20 = sub_1DD0DD8FC();
    v21 = __swift_project_value_buffer(v20, qword_1EDE57E00);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v9, v21, v20);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
    sub_1DCB09910(v9, v5, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v20) == 1)
    {
      sub_1DCB16DB0(v5, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_83();
        v30 = swift_slowAlloc();
        *v25 = 136315650;
        v26 = sub_1DD0DEC3C();
        v28 = sub_1DCB10E9C(v26, v27, &v30);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2048;
        *(v25 + 14) = 409;
        *(v25 + 22) = 2080;
        *(v25 + 24) = sub_1DCB10E9C(0xD000000000000023, 0x80000001DD11A710, &v30);
        _os_log_impl(&dword_1DCAFC000, v23, v24, "FatalError at %s:%lu - %s", v25, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_80();
      }

      (*(v22 + 8))(v5, v20);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000023, 0x80000001DD11A710);
  }

  sub_1DD0DAE5C();

  sub_1DD0DAE8C();
  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3ADF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v33 - v11;
  v13 = sub_1DD0DAECC();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v33 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v33 - v24;
  v34 = a2;
  sub_1DCB09910(a2, v12, &unk_1ECCA28C0, &unk_1DD0E1D80);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DCB16DB0(v12, &unk_1ECCA28C0, &unk_1DD0E1D80);
    (*(v14 + 16))(v22, v33, v13);
  }

  else
  {
    (*(v14 + 32))(v25, v12, v13);
    v26 = *(v14 + 16);
    v26(v22, v25, v13);
    sub_1DCD4C41C(v22, v35);
    result = (*(v14 + 8))(v25, v13);
    v28 = v35[0];
    if (v35[0])
    {
      v30 = v35[3];
      v29 = v35[4];
      v32 = v35[1];
      v31 = v35[2];
      goto LABEL_10;
    }

    v26(v22, v33, v13);
  }

  sub_1DCD4BCE4(v22, v36);
  sub_1DCB09910(v34, v9, &unk_1ECCA28C0, &unk_1DD0E1D80);
  if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
  {
    result = sub_1DCB16DB0(v9, &unk_1ECCA28C0, &unk_1DD0E1D80);
  }

  else
  {
    (*(v14 + 32))(v18, v9, v13);
    sub_1DCD4CF58(v18);
    result = (*(v14 + 8))(v18, v13);
  }

  v30 = v36[3];
  v29 = v36[4];
  v32 = v36[1];
  v31 = v36[2];
  v28 = v36[0];
LABEL_10:
  *a3 = v28;
  a3[1] = v32;
  a3[2] = v31;
  a3[3] = v30;
  a3[4] = v29;
  return result;
}

BOOL sub_1DCD3B114(uint64_t a1)
{
  v1 = *(sub_1DCD3E6E0(a1) + 16);

  return v1 != 0;
}

uint64_t sub_1DCD3B154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DB8, &qword_1DD0EFE98);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - v3;
  OUTLINED_FUNCTION_90_0();
  sub_1DCD3B250();
  v5 = type metadata accessor for LoadedFlowInfo(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    sub_1DD0DCF8C();
  }

  sub_1DCB16DB0(v4, &qword_1ECCA4DB8, &qword_1DD0EFE98);
  return 0;
}

void sub_1DCD3B250()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v143 = v3;
  v142 = v4;
  v138 = v5;
  v144 = *v0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v137[8] = v137 - v9;
  v137[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v137 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD0, &unk_1DD0EFEB0);
  OUTLINED_FUNCTION_20_0(v16);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = OUTLINED_FUNCTION_6_36(v137 - v19);
  v147 = type metadata accessor for NamedParseTransformer(v20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_16();
  v25 = OUTLINED_FUNCTION_6_36(v24 - v23);
  v140 = type metadata accessor for FlowSearchResult(v25);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_16();
  v30 = (v29 - v28);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270);
  OUTLINED_FUNCTION_9();
  v155 = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_10_2();
  v154 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = OUTLINED_FUNCTION_6_36(v137 - v38);
  v40 = type metadata accessor for Parse(v39);
  v41 = OUTLINED_FUNCTION_20_0(v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_10_2();
  v139 = v43 - v44;
  v47 = MEMORY[0x1EEE9AC00](v45, v46);
  v49 = v137 - v48;
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = v137 - v51;
  v53 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v54, v55);
  OUTLINED_FUNCTION_16();
  v58 = v57 - v56;
  sub_1DCB29E58(v2, v52);
  OUTLINED_FUNCTION_20_17(v58 + v53[7]);
  v59 = v53[5];
  sub_1DCB29E58(v52, v58 + v59);
  *(v58 + v53[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_0_49();
  v137[10] = v52;
  sub_1DCD44270(v52, v60);
  v137[4] = v53;
  *(v58 + v53[8]) = 0;
  v148 = v0;
  v61 = sub_1DCD3E6E0(v58 + v59);
  v156[2] = v58;
  sub_1DCC346C4(sub_1DCD3F764, v156, v61);
  OUTLINED_FUNCTION_57_5();
  OUTLINED_FUNCTION_17_20();
  v137[3] = v58;
  sub_1DCD44270(v58, v62);
  v63 = 0;
  v137[5] = v11 + 32;
  v137[6] = v11 + 8;
  v165 = v53;
  v163[5] = MEMORY[0x1E69E7CD0];
  v164 = MEMORY[0x1E69E7CD0];
  v153 = v49;
  v145 = v30;
  v137[7] = v15;
LABEL_2:
  if (v63 != 10)
  {
    v149 = v63;
LABEL_4:
    v64 = v150;
    while (1)
    {
      v65 = v165;
      v66 = *(v165 + 2);
      if (!v66)
      {
        break;
      }

      v67 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      v68 = v152;
      sub_1DCB09910(v165 + v67, v152, &unk_1ECCA25C0, &qword_1DD0E5270);
      v69 = (v68 + *(v64 + 48));
      v70 = *v69;
      v71 = v69[1];
      v72 = v69[2];
      v73 = v68;
      v74 = v153;
      sub_1DCD404E0(v73, v153, type metadata accessor for Parse);
      sub_1DCB09910(v65 + v67, v154, &unk_1ECCA25C0, &qword_1DD0E5270);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v66 - 1) > *(v65 + 3) >> 1)
      {
        sub_1DCE18AE4();
        v65 = v75;
      }

      sub_1DCB16DB0(v65 + v67, &unk_1ECCA25C0, &qword_1DD0E5270);
      v76 = v155[9];
      if (v76 > 0 || v65 + v67 >= v65 + v67 + v76 + (*(v65 + 2) - 1) * v76)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v76)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v65 + 2);
      v165 = v65;
      v78 = v154;
      v79 = v154 + *(v64 + 48);

      OUTLINED_FUNCTION_0_49();
      sub_1DCD44270(v78, v80);

      v81 = v72;
      v82 = sub_1DCD402FC(v163, v70, v71, v81);

      if (v82)
      {
        v84 = v164;
        v151 = v71;
        if ((v164 & 0xC000000000000001) != 0)
        {
          v85 = v81;
          v86 = sub_1DD0DEB7C();

          if (v86)
          {
LABEL_26:
            OUTLINED_FUNCTION_0_49();
            sub_1DCD44270(v153, v92);
            OUTLINED_FUNCTION_32_15();

            goto LABEL_4;
          }
        }

        else if (*(v164 + 16))
        {
          sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
          v81;
          v87 = sub_1DD0DE8DC();
          v88 = ~(-1 << *(v84 + 32));
          while (1)
          {
            v89 = v87 & v88;
            if (((*(v84 + 56 + (((v87 & v88) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v87 & v88)) & 1) == 0)
            {
              break;
            }

            v90 = *(*(v84 + 48) + 8 * v89);
            v91 = sub_1DD0DE8EC();

            v87 = v89 + 1;
            if (v91)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v93 = v81;
        }

        v63 = v149 + 1;
        sub_1DCD3DBEC();
        if (!v161)
        {
          OUTLINED_FUNCTION_0_49();
          sub_1DCD44270(v153, v105);
          OUTLINED_FUNCTION_32_15();

          sub_1DCB16DB0(&v160, &qword_1ECCA2F80, &unk_1DD0EFEC0);
          goto LABEL_2;
        }

        sub_1DCAFF9E8(&v160, v163);
        v94 = v145;
        v95 = v153;
        sub_1DCD3C55C(v153, v163, v145);
        if (*v94)
        {
          sub_1DD0DCF8C();
        }

        sub_1DCB09910((v94 + 1), &v157, &qword_1ECCA1D20, &qword_1DD0F0330);
        if (v158)
        {

          sub_1DCAFF9E8(&v157, &v160);
          v117 = OUTLINED_FUNCTION_60_4();
          sub_1DD0DDFBC();
          v119 = v118;

          v120 = v148;
          OUTLINED_FUNCTION_5_35((v148 + 2), &v157);
          sub_1DCD4C370();
          v121 = OUTLINED_FUNCTION_48_1();
          v122 = sub_1DCB90DA0(v121, v119, (v120 + 2));
          swift_endAccess();

          if (v122)
          {
            v123._rawValue = v122;
          }

          else
          {
            v123._rawValue = MEMORY[0x1E69E7CC0];
          }

          v154 = v162;
          v124 = __swift_project_boxed_opaque_existential_1(&v160, v161);
          v155 = v137;
          MEMORY[0x1EEE9AC00](v124, v124);
          OUTLINED_FUNCTION_16();
          (*(v125 + 16))(v127 - v126);
          OUTLINED_FUNCTION_55_11();
          Parse.usoTasks.getter();
          v128 = OUTLINED_FUNCTION_60_4();
          v129 = sub_1DD0DDFBC();
          v131 = v130;

          v158 = &type metadata for FlowPluginBundleImpl;
          v159 = &protocol witness table for FlowPluginBundleImpl;
          v132._countAndFlagsBits = v129;
          v132._object = v131;
          FlowPluginBundleImpl.init(bundlePath:pluginCacheKeys:)(v132, v123);
          v133 = v138;
          LoadedFlowInfo.init<A>(actingFlow:parse:activeTasks:fromBundle:)();
          OUTLINED_FUNCTION_32_15();

          OUTLINED_FUNCTION_3_55();
          sub_1DCD44270(v145, v134);
          __swift_destroy_boxed_opaque_existential_1Tm(v163);
          OUTLINED_FUNCTION_0_49();
          sub_1DCD44270(v95, v135);
          v136 = type metadata accessor for LoadedFlowInfo(0);
          __swift_storeEnumTagSinglePayload(v133, 0, 1, v136);
          __swift_destroy_boxed_opaque_existential_1Tm(&v160);
          goto LABEL_48;
        }

        v149 = v63;
        sub_1DCB16DB0(&v157, &qword_1ECCA1D20, &qword_1DD0F0330);
        v96 = v140;
        if (*(v94 + *(v140 + 28)) == 1)
        {
          sub_1DCD400D8(&v160, v81);
        }

        v97 = v141;
        sub_1DCB09910(v94 + *(v96 + 24), v141, &qword_1ECCA4DD0, &unk_1DD0EFEB0);
        if (__swift_getEnumTagSinglePayload(v97, 1, v147) != 1)
        {
          sub_1DCD404E0(v97, v146, type metadata accessor for NamedParseTransformer);
          if (qword_1EDE4DFB8 != -1)
          {
            swift_once();
          }

          v106 = [v81 bundlePath];
          sub_1DD0DDFBC();

          OUTLINED_FUNCTION_12_31();
          sub_1DCCD3024();

          NamedParseTransformer.resolve()();
        }

        sub_1DCB16DB0(v97, &qword_1ECCA4DD0, &unk_1DD0EFEB0);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v98 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v98, qword_1EDE57E00);
        v99 = sub_1DD0DD8EC();
        v100 = sub_1DD0DE6CC();
        v101 = OUTLINED_FUNCTION_75(v100);
        v63 = v149;
        if (v101)
        {
          v102 = OUTLINED_FUNCTION_50_0();
          *v102 = 0;
          _os_log_impl(&dword_1DCAFC000, v99, v100, "Plugin rejected flow for which it registered; still looking.", v102, 2u);
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_32_15();

        OUTLINED_FUNCTION_3_55();
        sub_1DCD44270(v94, v103);
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        OUTLINED_FUNCTION_0_49();
        sub_1DCD44270(v95, v104);
        goto LABEL_2;
      }

      OUTLINED_FUNCTION_0_49();
      sub_1DCD44270(v74, v83);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v107 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v107, qword_1EDE57E00);
  v108 = sub_1DD0DD8EC();
  v109 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v109))
  {
    v110 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v110);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v111, v112, v113, v114, v115, 2u);
    OUTLINED_FUNCTION_62();
  }

  v116 = type metadata accessor for LoadedFlowInfo(0);
  __swift_storeEnumTagSinglePayload(v138, 1, 1, v116);
LABEL_48:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3C55C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DCB17CA0(a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1DCB16DB0(v12, &qword_1ECCA2F88, &unk_1DD0E8C90);
    v9 = a2[3];
    v10 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v9);
    v11 = (*(v10 + 40))(a1, v9, v10);
    static FlowSearchResult.flow(_:)(v11, a3);
  }

  sub_1DCAFF9E8(v12, v15);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v7 + 16))(a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

id sub_1DCD3C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) + 48));
  v9 = type metadata accessor for Input(0);
  sub_1DCB29E58(a2 + *(v9 + 20), a3);
  *v8 = v6;
  v8[1] = v5;
  v8[2] = v7;

  return v7;
}

double sub_1DCD3C748@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  IntentTopic.makeCacheKeyAndWildcardFallbacks()();
  v5 = sub_1DCD3E8AC(v4);

  if (*(v5 + 16))
  {
    v6 = *(v5 + 48);

    v7 = v6;

    v8 = v7;
    sub_1DCD3DBEC();

    if (*(&v11 + 1))
    {
      sub_1DCAFF9E8(&v10, a2);
      return result;
    }

    sub_1DCB16DB0(&v10, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  }

  else
  {
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DCD3C84C(uint64_t a1)
{
  v2 = sub_1DCD3E6E0(a1);
  if (!v2[2])
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v20))
    {
      v21 = OUTLINED_FUNCTION_151();
      v22 = OUTLINED_FUNCTION_83();
      v43[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DCB10E9C(4999502, 0xE300000000000000, v43);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    return 0;
  }

  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[6];

  v6 = v5;

  v7 = v6;
  sub_1DCD3DBEC();
  if (!v41)
  {
    sub_1DCB16DB0(&v39, &qword_1ECCA2F80, &unk_1DD0EFEC0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v28 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v28, qword_1EDE57E00);

    v29 = v7;
    v30 = sub_1DD0DD8EC();
    v31 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_151();
      v43[0] = OUTLINED_FUNCTION_83();
      *v32 = 136315138;

      v33 = sub_1DCB10E9C(v4, v3, v43);

      *(v32 + 4) = v33;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v34, v35, "FlowDelegatePluginLoader.makeFlowFrame no provider : %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    return 0;
  }

  OUTLINED_FUNCTION_61_11(v8, v9, v10, v11, v12, v13, v14, v15, v39, v40, v41, v42);
  v16 = sub_1DCD3CC08(v43, a1);
  if (!v16)
  {
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v36 = OUTLINED_FUNCTION_90_0();
    v37(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DD8, &qword_1DD0EFED0);
    swift_allocObject();
    sub_1DCD3F130();
  }

  v17 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v17;
}

uint64_t sub_1DCD3CC08(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DDDBC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = type metadata accessor for WithDispatchSemaphoreTimeout(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DEEAC();
  if ((v29[0] & 1) == 0)
  {
    if (qword_1ECCA12B8 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD0DDD8C();
    v24 = __swift_project_value_buffer(v23, qword_1ECCA4DA0);
    (*(*(v23 - 8) + 16))(v16, v24, v23);
    sub_1DCB17CA0(a1, v29);
    sub_1DCB29E58(a2, v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v26 = swift_allocObject();
    sub_1DCAFF9E8(v29, v26 + 16);
    sub_1DCD404E0(v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for Parse);
    sub_1DCB10E5C(0, &qword_1EDE461B0, 0x1E69E9610);
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7F88], v4);
    v27 = sub_1DD0DE7AC();
    (*(v5 + 8))(v8, v4);
    sub_1DCD3D1CC(v27, sub_1DCD44200, v26);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "Calling deprecated FlowPlugin.makeFlowFrame function. Note the time out guard previously surrounding this call was removed due to risk of deadlock (see rdar://79777131). The runtime should no longer execute through this codepath.", v20, 2u);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  return (*(v22 + 32))(a2, v21, v22);
}

uint64_t sub_1DCD3D10C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1DD0DE55C();
  result = __swift_getEnumTagSinglePayload(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1DCD3D164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 32))(a2, v5, v6);
  *a3 = result;
  return result;
}

void sub_1DCD3D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[6] = a1;
  v5 = sub_1DD0DDE1C();
  v18[8] = *(v5 - 8);
  v18[9] = v5;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v18[7] = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v18[5] = v18 - v10;
  v11 = sub_1DD0DDDAC();
  v18[4] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = sub_1DD0DDDFC();
  v18[2] = *(v13 - 8);
  v18[3] = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  v18[1] = v16 + 16;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = v15;
  aBlock[4] = sub_1DCD442D4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCF5B728;
  aBlock[3] = &block_descriptor_5;
  _Block_copy(aBlock);
  sub_1DD0DCF8C();
}

double sub_1DCD3D638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v62 = a1;
  v58 = a3;
  if (qword_1EDE4F900 != -1)
  {
LABEL_45:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  v7 = __swift_project_value_buffer(v6, qword_1EDE57E00);

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();

  v61 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_151();
    v11 = OUTLINED_FUNCTION_83();
    *&v63 = v11;
    *(v10 + 4) = OUTLINED_FUNCTION_54_11(4.8149e-34, v11, v12, v13, v14, v15, v16, v17, v18, v54, v55, v56, v57, v58, v59, v60, a2, v62);
    OUTLINED_FUNCTION_52_12(&dword_1DCAFC000, v19, v20, "%s being loaded...");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  if ((sub_1DCD3A694() & 1) == 0)
  {
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v22))
    {
      v23 = OUTLINED_FUNCTION_50_0();
      *v23 = 0;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Environment should be initialized by this point", v23, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  v56 = v7;
  OUTLINED_FUNCTION_5_35(v4 + 16, &v63);
  v57 = v4;
  v24 = sub_1DCD4C3BC();
  swift_endAccess();
  v4 = 0;
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  a2 = v27 & *(v24 + 64);
  v28 = (v26 + 63) >> 6;
  v59 = v24;
  v54 = v28;
  v55 = v24 + 64;
  do
  {
LABEL_11:
    if (!a2)
    {
      while (1)
      {
        v29 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v29 >= v28)
        {
          goto LABEL_41;
        }

        a2 = *(v25 + 8 * v29);
        ++v4;
        if (a2)
        {
          v4 = v29;
          goto LABEL_16;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_16:
    v30 = *(*(v24 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(a2)))));
    if (v30 >> 62)
    {
      v31 = sub_1DD0DEB3C();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 &= a2 - 1;
  }

  while (!v31);
  v60 = v30 & 0xFFFFFFFFFFFFFF8;

  v32 = 0;
  while (1)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1E12A72C0](v32, v30);
    }

    else
    {
      if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    v36 = sub_1DCD43E34(v33);
    if (!v37)
    {
      goto LABEL_31;
    }

    if (v36 == v62 && v37 == v61)
    {
      break;
    }

    v39 = sub_1DD0DF0AC();

    if (v39)
    {
      goto LABEL_36;
    }

LABEL_31:

    ++v32;
    if (v35 == v31)
    {

      v24 = v59;
      v28 = v54;
      v25 = v55;
      goto LABEL_11;
    }
  }

LABEL_36:

  sub_1DCD3DBEC();
  if (v64)
  {

    sub_1DCAFF9E8(&v63, v58);
    return result;
  }

  sub_1DCB16DB0(&v63, &qword_1ECCA2F80, &unk_1DD0EFEC0);

  v41 = sub_1DD0DD8EC();
  v42 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_151();
    v44 = OUTLINED_FUNCTION_83();
    *&v63 = v44;
    *(v43 + 4) = OUTLINED_FUNCTION_54_11(4.8149e-34, v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    OUTLINED_FUNCTION_52_12(&dword_1DCAFC000, v52, v53, "Didn't find a bundle for input %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

LABEL_41:

  return OUTLINED_FUNCTION_20_17(v58);
}

uint64_t sub_1DCD3DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = sub_1DCD3D638(a1, a2, &v26);
  if (!v28)
  {
    return sub_1DCB16DB0(&v26, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  }

  OUTLINED_FUNCTION_61_11(v6, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, v29, v14);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);

  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_151();
    v19 = OUTLINED_FUNCTION_83();
    *&v26 = v19;
    *v18 = 136315138;
    v20 = OUTLINED_FUNCTION_90_0();
    *(v18 + 4) = sub_1DCB10E9C(v20, v21, v22);
    _os_log_impl(&dword_1DCAFC000, v16, v17, "%s being warmed...", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v23 = v31;
  v24 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v24 + 24))(a3, a4, v23, v24);
  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

void sub_1DCD3DBEC()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v137 = v2;
  v4 = v3;
  v5 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v136 = v12;
  v13 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v15))
  {
    v16 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v16);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v17, v18, v19, v20, v21, 2u);
    OUTLINED_FUNCTION_62();
  }

  sub_1DD0DE83C();
  v22 = sub_1DCD43E34(v137);
  if (!v23)
  {
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v45))
    {
      v46 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v46);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
LABEL_34:
      OUTLINED_FUNCTION_80();
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v24 = v22;
  v25 = v23;

  v26 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  v135 = v7;
  if (OUTLINED_FUNCTION_45_1())
  {
    v27 = OUTLINED_FUNCTION_151();
    v28 = v4;
    v29 = OUTLINED_FUNCTION_83();
    *&v141 = v29;
    *v27 = 136315138;
    *(v27 + 4) = sub_1DCB10E9C(v24, v25, &v141);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v4 = v28;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  swift_beginAccess();

  sub_1DCC18004();

  if (v140)
  {
    sub_1DCAFF9E8(&v139, &v141);

    v35 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();

    if (OUTLINED_FUNCTION_45_1())
    {
      v36 = OUTLINED_FUNCTION_151();
      v37 = OUTLINED_FUNCTION_83();
      *&v139 = v37;
      *v36 = 136315138;
      v38 = sub_1DCB10E9C(v24, v25, &v139);

      *(v36 + 4) = v38;
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    else
    {
    }

    sub_1DCAFF9E8(&v141, v4);
    goto LABEL_36;
  }

  sub_1DCB16DB0(&v139, &qword_1ECCA2F80, &unk_1DD0EFEC0);
  v52 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if ([v137 isLoaded])
  {
LABEL_14:
    if ([v137 principalClass])
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v54 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for FlowPlugin);
      if (v54)
      {
        v56 = v54;
        v57 = v55;
        v58 = *(v55 + 8);
        v142 = v54;
        v143 = v55;
        __swift_allocate_boxed_opaque_existential_1Tm(&v141);
        v58(v56, v57);
        sub_1DCB17CA0(&v141, &v139);
        OUTLINED_FUNCTION_5_35(v1 + 96, &v138);
        sub_1DD06E060();
        swift_endAccess();
        sub_1DCB17CA0(&v141, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(&v141);
        goto LABEL_36;
      }

      v44 = sub_1DD0DD8EC();
      v122 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v122))
      {
        v123 = OUTLINED_FUNCTION_151();
        v124 = OUTLINED_FUNCTION_83();
        *&v141 = v124;
        *v123 = 136315138;
        *&v139 = ObjCClassMetadata;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25D0, &unk_1DD0E5A50);
        v125 = sub_1DD0DE02C();
        v127 = sub_1DCB10E9C(v125, v126, &v141);

        *(v123 + 4) = v127;
        OUTLINED_FUNCTION_13_32();
        _os_log_impl(v128, v129, v130, v131, v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        goto LABEL_33;
      }
    }

    else
    {
      v89 = v52;

      v90 = v137;
      v44 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_45_1())
      {
        v91 = OUTLINED_FUNCTION_151();
        v92 = OUTLINED_FUNCTION_83();
        *&v141 = v92;
        *v91 = 136315138;
        v93 = [v90 v89 + 3448];
        v94 = sub_1DD0DDFBC();
        v96 = v95;

        v97 = sub_1DCB10E9C(v94, v96, &v141);

        *(v91 + 4) = v97;
        OUTLINED_FUNCTION_13_32();
        _os_log_impl(v98, v99, v100, v101, v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
LABEL_33:
        OUTLINED_FUNCTION_80();
        goto LABEL_34;
      }
    }

LABEL_35:

    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    goto LABEL_36;
  }

  v59 = sub_1DD0DD8EC();
  v60 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v60))
  {
    v61 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v61);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v62, v63, v64, v65, v66, 2u);
    OUTLINED_FUNCTION_62();
  }

  v134 = v4;

  sub_1DD0DE7FC();
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1DD0E07C0;
  v68 = [v137 bundlePath];
  v69 = sub_1DD0DDFBC();
  v71 = v70;

  *(v67 + 56) = MEMORY[0x1E69E6158];
  v133 = sub_1DCB34060();
  *(v67 + 64) = v133;
  *(v67 + 32) = v69;
  *(v67 + 40) = v71;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_35_20();
  sub_1DD0DD80C();

  (*(v135 + 8))(v136, v5);
  if ([v137 load])
  {
    sub_1DD0DE7EC();
    v72 = OUTLINED_FUNCTION_58_7();
    *(v72 + 16) = xmmword_1DD0E32B0;
    v4 = [v137 bundlePath];
    v73 = sub_1DD0DDFBC();
    v75 = v74;

    v76 = MEMORY[0x1E69E6158];
    *(v72 + 56) = MEMORY[0x1E69E6158];
    *(v72 + 64) = v133;
    *(v72 + 32) = v73;
    *(v72 + 40) = v75;
    *(v72 + 96) = v76;
    *(v72 + 104) = v133;
    *(v72 + 72) = 0x73736563637553;
    *(v72 + 80) = 0xE700000000000000;
    sub_1DD0DD84C();
    OUTLINED_FUNCTION_27_18();
    OUTLINED_FUNCTION_35_20();
    sub_1DD0DD80C();

    OUTLINED_FUNCTION_51_11();
    v77();
    v78 = v137;
    v79 = sub_1DD0DD8EC();
    sub_1DD0DE70C();

    if (OUTLINED_FUNCTION_45_1())
    {
      v80 = OUTLINED_FUNCTION_151();
      *&v141 = OUTLINED_FUNCTION_83();
      *v80 = 136315138;
      v52 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      v81 = [v78 bundlePath];
      v82 = sub_1DD0DDFBC();
      v84 = v83;

      v4 = sub_1DCB10E9C(v82, v84, &v141);

      *(v80 + 4) = v4;
      OUTLINED_FUNCTION_13_32();
      _os_log_impl(v85, v86, v87, v88, v80, 0xCu);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_80();

      OUTLINED_FUNCTION_28_16();
    }

    else
    {

      OUTLINED_FUNCTION_28_16();
      v52 = 0x1FB44A000;
    }

    goto LABEL_14;
  }

  sub_1DD0DE7EC();
  v102 = OUTLINED_FUNCTION_58_7();
  *(v102 + 16) = xmmword_1DD0E32B0;
  v103 = [v137 bundlePath];
  v104 = sub_1DD0DDFBC();
  v106 = v105;

  v107 = MEMORY[0x1E69E6158];
  *(v102 + 56) = MEMORY[0x1E69E6158];
  *(v102 + 64) = v133;
  *(v102 + 32) = v104;
  *(v102 + 40) = v106;
  *(v102 + 96) = v107;
  *(v102 + 104) = v133;
  *(v102 + 72) = 0x6572756C696146;
  *(v102 + 80) = 0xE700000000000000;
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_35_20();
  sub_1DD0DD80C();

  OUTLINED_FUNCTION_51_11();
  v108();
  v109 = v137;
  v110 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_45_1())
  {
    v111 = OUTLINED_FUNCTION_151();
    v112 = OUTLINED_FUNCTION_83();
    *&v141 = v112;
    *v111 = 136315138;
    v113 = [v109 bundlePath];
    v114 = sub_1DD0DDFBC();
    v116 = v115;

    v117 = sub_1DCB10E9C(v114, v116, &v141);

    *(v111 + 4) = v117;
    OUTLINED_FUNCTION_13_32();
    _os_log_impl(v118, v119, v120, v121, v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_80();
  }

  OUTLINED_FUNCTION_20_17(v134);
LABEL_36:
  sub_1DD0DE84C();
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD3E6E0(uint64_t a1)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v6 = v5 - v4;
  sub_1DCB29E58(a1, v5 - v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_0_49();
  sub_1DCD44270(v6, v8);
  if (EnumCaseMultiPayload != 10)
  {
    static IntentTopic.make(from:)(a1, v9, v10, v11, v12, v13, v14, v15, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v44, v45);
    v27 = v26;
    v28 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v29 = *(v26 + 16);
    for (i = 32; ; i += 64)
    {
      if (v29 == v28)
      {

        v25 = sub_1DCD3E8AC(v43);

        return v25;
      }

      if (v28 >= *(v27 + 16))
      {
        break;
      }

      ++v28;
      IntentTopic.makeCacheKeyAndWildcardFallbacks()();
      sub_1DCBB9238(v31);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_13:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6CC();
  if (OUTLINED_FUNCTION_22(v18))
  {
    v19 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v19);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_62();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DCD3E8AC(void *a1)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);

  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    *v5 = 134217984;
    *(v5 + 4) = a1[2];

    _os_log_impl(&dword_1DCAFC000, v3, v4, "cacheKeys count %ld", v5, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v34 = MEMORY[0x1E69E7CC0];
  v6 = a1[2];
  v7 = a1 + 5;
  for (i = v6; i; --i)
  {
    v9 = *v7;
    v33[0] = *(v7 - 1);
    v33[1] = v9;

    sub_1DCD3EBB0(v33, &v32);

    sub_1DCBB9420(v32);
    v7 += 2;
  }

  v10 = v34;

  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v12))
  {
    v13 = OUTLINED_FUNCTION_151();
    *v13 = 134217984;
    *(v13 + 4) = *(v10 + 16);

    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v14, v15, "Found %ld eligible bundles.");
    OUTLINED_FUNCTION_37();

    if (!v6)
    {
      return v10;
    }
  }

  else
  {

    if (!v6)
    {
      return v10;
    }
  }

  if (!*(v10 + 16))
  {

    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_151();
      v33[0] = OUTLINED_FUNCTION_83();
      *v18 = 136315138;
      v20 = a1[4];
      v19 = a1[5];

      v21 = sub_1DCB10E9C(v20, v19, v33);

      *(v18 + 4) = v21;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v22, v23, "Didn't find a bundle for input %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_37();
    }

    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v25))
    {
      v26 = OUTLINED_FUNCTION_50_0();
      *v26 = 0;
      OUTLINED_FUNCTION_13_32();
      _os_log_impl(v27, v28, v29, v30, v26, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  return v10;
}

void sub_1DCD3EBB0(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v30 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);

  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(v30, v4, v29);
    _os_log_impl(&dword_1DCAFC000, v6, v7, "Searching bundleCache for '%s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v10 = sub_1DCD3A64C(v29);
  if (*v11)
  {
    v12 = sub_1DCD4C3BC();
    v13 = sub_1DCB90DA0(v30, v4, v12);

    (v10)(v29, 0);
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    (v10)(v29, 0);
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_10:
  swift_beginAccess();
  v14 = sub_1DCD4C3BC();
  v15 = sub_1DCB90DA0(v30, v4, v14);
  swift_endAccess();

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v29[0] = v13;
  sub_1DCBB9820(v17);
  v18 = v29[0];
  v19 = sub_1DCB08B14(v29[0]);
  if (!v19)
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *a3 = v22;
    return;
  }

  v20 = v19;
  v29[0] = v16;
  sub_1DCE06C68(0, v19 & ~(v19 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v28 = a3;
    v21 = 0;
    v22 = v29[0];
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E12A72C0](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v29[0] = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);

      if (v26 >= v25 >> 1)
      {
        sub_1DCE06C68(v25 > 1, v26 + 1, 1);
        v22 = v29[0];
      }

      ++v21;
      *(v22 + 16) = v26 + 1;
      v27 = (v22 + 24 * v26);
      v27[4] = v30;
      v27[5] = v4;
      v27[6] = v24;
    }

    while (v20 != v21);

    a3 = v28;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_1DCD3EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1 == a4 && a2 == a5;
  if (!v6 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);
  return sub_1DD0DE8EC() & 1;
}

uint64_t sub_1DCD3EF98(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD3F014(uint64_t a1)
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  return sub_1DD0DF20C();
}

uint64_t FlowDelegatePluginLoader.deinit()
{

  sub_1DCD43E98(*(v0 + 56));

  return v0;
}

uint64_t FlowDelegatePluginLoader.__deallocating_deinit()
{
  FlowDelegatePluginLoader.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCD3F130()
{
  OUTLINED_FUNCTION_31_15();
  *(v0 + 48) = v1;
  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1DD0DCF8C();
}

void sub_1DCD3F214()
{
  OUTLINED_FUNCTION_31_15();
  type metadata accessor for AnyFlow();
  swift_allocObject();
  OUTLINED_FUNCTION_48_1();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD3F364(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v6);
  v3 = v6[0];
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCD442C4(v4);
  return sub_1DD0DE84C();
}

char *sub_1DCD3F3EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F414(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[224 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_34(a3, result, 224 * a2);
  }

  return result;
}

char *sub_1DCD3F440(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_34(a3, result, a2);
  }

  return result;
}

char *sub_1DCD3F464(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F4F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F51C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

char *sub_1DCD3F5B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_51(a3, result);
  }

  return result;
}

void sub_1DCD3F644()
{
  OUTLINED_FUNCTION_48_12();
  if (v3 && (v4 = OUTLINED_FUNCTION_90_0(), __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5), OUTLINED_FUNCTION_2(), v1 + *(v6 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      OUTLINED_FUNCTION_11_33();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_90_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_11_33();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t sub_1DCD3F85C(__int128 *a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v52 = *a2;
  v53 = v5;
  v54[0] = *(a2 + 2);
  *(v54 + 9) = *(a2 + 41);
  sub_1DD0DF1DC();
  IntentTopic.hash(into:)();
  v6 = sub_1DD0DF20C();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v39 = a2;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_78:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52 = *v38;
    sub_1DCB32880(v39, &v49);
    sub_1DCD419F4(v39, v8, isUniquelyReferenced_nonNull_native);
    *v38 = v52;
    v31 = v39[1];
    *a1 = *v39;
    a1[1] = v31;
    a1[2] = v39[2];
    *(a1 + 41) = *(v39 + 41);
    return 1;
  }

  v47 = ~v7;
  v9 = *a2;
  v44 = *(a2 + 1);
  v46 = *(a2 + 2);
  v42 = *(a2 + 3);
  v45 = *(a2 + 4);
  v41 = *(a2 + 5);
  v43 = *(a2 + 6);
  if (a2[1])
  {
    v10 = 1701736302;
  }

  else
  {
    v10 = 0x33764F5355;
  }

  if (a2[1])
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  while (1)
  {
    v12 = (*(v4 + 48) + (v8 << 6));
    v13 = *(v12 + 41);
    v14 = v12[2];
    v15 = *v12;
    v50 = v12[1];
    *v51 = v14;
    v49 = v15;
    *&v51[9] = v13;
    v16 = 0xE400000000000000;
    v17 = 863390798;
    switch(v15)
    {
      case 1:
        v17 = 880168014;
        break;
      case 2:
        v17 = 1885430133;
        break;
      case 3:
        v17 = 0x4974694B69726973;
        v16 = 0xED0000746E65746ELL;
        break;
      case 4:
        v17 = 0xD000000000000010;
        v16 = 0x80000001DD110040;
        break;
      case 5:
        v17 = 0xD000000000000010;
        v16 = 0x80000001DD110060;
        break;
      case 6:
        v16 = 0xE800000000000000;
        v17 = 0x726574756F526C6ELL;
        break;
      case 7:
        v17 = 0x746E65696C436669;
        v16 = 0xEE006E6F69746341;
        break;
      case 8:
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v18 = 0xE400000000000000;
    v19 = 863390798;
    switch(v9)
    {
      case 1:
        v19 = 880168014;
        break;
      case 2:
        v19 = 1885430133;
        break;
      case 3:
        v19 = 0x4974694B69726973;
        v18 = 0xED0000746E65746ELL;
        break;
      case 4:
        v19 = 0xD000000000000010;
        v18 = 0x80000001DD110040;
        break;
      case 5:
        v19 = 0xD000000000000010;
        v18 = 0x80000001DD110060;
        break;
      case 6:
        v18 = 0xE800000000000000;
        v19 = 0x726574756F526C6ELL;
        break;
      case 7:
        v19 = 0x746E65696C436669;
        v18 = 0xEE006E6F69746341;
        break;
      case 8:
        v18 = 0xE700000000000000;
        v19 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v17 == v19 && v16 == v18)
    {
      sub_1DCB32880(&v49, &v52);
    }

    else
    {
      v21 = sub_1DD0DF0AC();
      sub_1DCB32880(&v49, &v52);

      if ((v21 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    v22 = BYTE1(v49) ? 1701736302 : 0x33764F5355;
    v23 = BYTE1(v49) ? 0xE400000000000000 : 0xE500000000000000;
    if (v22 == v10 && v23 == v11)
    {
    }

    else
    {
      v25 = sub_1DD0DF0AC();

      if ((v25 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    if (v50)
    {
      if (!v46)
      {
        goto LABEL_64;
      }

      v26 = *(&v49 + 1) == v44 && v50 == v46;
      if (!v26 && (sub_1DD0DF0AC() & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {

      if (v46)
      {
        goto LABEL_76;
      }
    }

    if (*v51)
    {
      if (!v45)
      {
LABEL_64:

LABEL_76:
        sub_1DCB340B4(&v49);
        goto LABEL_77;
      }

      v27 = *(&v50 + 1) == v42 && *v51 == v45;
      if (!v27 && (sub_1DD0DF0AC() & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_76;
      }
    }

    if (!*&v51[16])
    {
      if (!v43)
      {
        break;
      }

      goto LABEL_76;
    }

    if (!v43)
    {
      goto LABEL_76;
    }

    if (*&v51[8] == v41 && *&v51[16] == v43)
    {
      break;
    }

    v29 = sub_1DD0DF0AC();
    sub_1DCB340B4(&v49);
    if (v29)
    {
      goto LABEL_81;
    }

LABEL_77:
    v8 = (v8 + 1) & v47;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  sub_1DCB340B4(&v49);
LABEL_81:
  sub_1DCB340B4(v39);
  v33 = (*(v4 + 48) + (v8 << 6));
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  *(v54 + 9) = *(v33 + 41);
  v53 = v35;
  v54[0] = v36;
  v52 = v34;
  v37 = v33[1];
  *a1 = *v33;
  a1[1] = v37;
  a1[2] = v33[2];
  *(a1 + 41) = *(v33 + 41);
  sub_1DCB32880(&v52, v48);
  return 0;
}

void sub_1DCD3FE54()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v25 = v3;
  v4 = sub_1DD0DB3AC();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v24 = v0;
  v12 = *v0;
  OUTLINED_FUNCTION_18_26();
  sub_1DCD442F0(v13, v14, MEMORY[0x1E69D0950]);
  v15 = sub_1DD0DDF0C();
  v26 = v12;
  v27 = v12 + 56;
  v16 = ~(-1 << *(v12 + 32));
  while (1)
  {
    v17 = v15 & v16;
    if (((1 << (v15 & v16)) & *(v27 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v11, v2, v4);
      v28 = *v24;
      sub_1DCD41FC8(v11, v17, isUniquelyReferenced_nonNull_native);
      *v24 = v28;
      (*(v6 + 32))(v25, v2, v4);
      goto LABEL_7;
    }

    v18 = *(v6 + 72) * v17;
    v19 = *(v6 + 16);
    v19(v11, *(v26 + 48) + v18, v4);
    OUTLINED_FUNCTION_18_26();
    sub_1DCD442F0(&qword_1ECCA4E10, v20, MEMORY[0x1E69D0958]);
    v21 = sub_1DD0DDF7C();
    v22 = *(v6 + 8);
    v22(v11, v4);
    if (v21)
    {
      break;
    }

    v15 = v17 + 1;
  }

  v22(v2, v4);
  v19(v25, *(v26 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCD400D8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DD0DEB4C();

    if (v9)
    {

      sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1DD0DEB3C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1DCD40620(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1DCD41018(v17 + 1);
        }

        v18 = v8;
        sub_1DCD41970(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
    v11 = sub_1DD0DE8DC();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1DCD42254(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1DD0DE8EC();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_1DCD402FC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *v4;
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  sub_1DD0DE8FC();
  v9 = sub_1DD0DF20C();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v8 + 48) + 24 * v11);
      v14 = v13[2];
      v15 = *v13 == a2 && v13[1] == a3;
      if (v15 || (sub_1DD0DF0AC() & 1) != 0)
      {
        sub_1DCB10E5C(0, &qword_1EDE4D6A8, 0x1E69E58C0);

        v16 = v14;
        v17 = sub_1DD0DE8EC();

        if (v17)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v21 = (*(v8 + 48) + 24 * v11);
    v22 = v21[1];
    v23 = v21[2];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;

    v24 = v23;
    return 0;
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v25;

    v19 = a4;
    sub_1DCD423B8(a2, a3, v19, v11, isUniquelyReferenced_nonNull_native);
    *v25 = v27;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = v19;
    return 1;
  }
}

uint64_t sub_1DCD404E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

BOOL sub_1DCD40540()
{
  OUTLINED_FUNCTION_25_13();
  sub_1DD0DDF2C();
  sub_1DD0DF20C();
  OUTLINED_FUNCTION_30_20();
  while (1)
  {
    OUTLINED_FUNCTION_29_16();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_49_10();
    v6 = *v5 == v3 && v5[1] == v1;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      OUTLINED_FUNCTION_49_10();
      v8 = v7[1];
      *v0 = *v7;
      v0[1] = v8;

      return v4 == 0;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_56_10();
  v9 = OUTLINED_FUNCTION_40_14();
  sub_1DCD425A4(v9, v10, v11, v12);
  *v2 = v14;
  *v0 = v3;
  v0[1] = v1;
  return v4 == 0;
}

uint64_t sub_1DCD40620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
    v2 = sub_1DD0DEBEC();
    v15 = v2;
    sub_1DD0DEAFC();
    while (1)
    {
      if (!sub_1DD0DEB6C())
      {

        return v2;
      }

      sub_1DCB10E5C(0, &qword_1EDE460A8, 0x1E696AAE8);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1DCD41018(v3 + 1);
      }

      v2 = v15;
      result = sub_1DD0DE8DC();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DCD407FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DF8, &qword_1DD0EFFD0);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_35:

    *v2 = v5;
    return result;
  }

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
  v35 = v2;
  v12 = result + 56;
  v36 = v3;
  v37 = result;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      sub_1DCC7243C(0, (v34 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_12:
    v16 = *(v3 + 48) + ((v13 | (v6 << 6)) << 6);
    v17 = *v16;
    v18 = *(v16 + 1);
    v44 = *(v16 + 2);
    v45 = *(v16 + 6);
    v20 = *(v16 + 8);
    v19 = *(v16 + 16);
    v43 = *(v16 + 32);
    v21 = *(v16 + 40);
    v41 = *(v16 + 48);
    v42 = *(v16 + 24);
    v39 = *(v16 + 56);
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();

    v38 = v18;
    sub_1DD0DDF2C();

    if (v19)
    {
      MEMORY[0x1E12A7840](0);
      v22 = v20;
      sub_1DD0DDF2C();
    }

    else
    {
      MEMORY[0x1E12A7840](1);
      v22 = v20;
    }

    if (v43)
    {
      MEMORY[0x1E12A7840](0);
      sub_1DD0DDF2C();
    }

    else
    {
      MEMORY[0x1E12A7840](1);
    }

    sub_1DD0DF1FC();
    if (v41)
    {
      sub_1DD0DDF2C();
    }

    result = sub_1DD0DF20C();
    v5 = v37;
    v23 = -1 << *(v37 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    v27 = v17;
    v28 = v43;
LABEL_29:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v33 = *(v37 + 48) + (v26 << 6);
    *v33 = v27;
    *(v33 + 1) = v38;
    *(v33 + 2) = v44;
    *(v33 + 6) = v45;
    *(v33 + 8) = v22;
    *(v33 + 16) = v19;
    *(v33 + 24) = v42;
    *(v33 + 32) = v28;
    *(v33 + 40) = v21;
    *(v33 + 48) = v41;
    *(v33 + 56) = v39;
    ++*(v37 + 16);
    v3 = v36;
    v10 = v40;
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v23) >> 6;
  v27 = v17;
  v28 = v43;
  while (++v25 != v30 || (v29 & 1) == 0)
  {
    v31 = v25 == v30;
    if (v25 == v30)
    {
      v25 = 0;
    }

    v29 |= v31;
    v32 = *(v12 + 8 * v25);
    if (v32 != -1)
    {
      v26 = __clz(__rbit64(~v32)) + (v25 << 6);
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1DCD40CC0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1DD0DB3AC();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E18, &qword_1DD0EFFE0);
  result = sub_1DD0DEBDC();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v35 = v3 + 32;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1DCC7243C(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48) + *(v3 + 72) * (v16 | (v9 << 6));
    v20 = *(v3 + 32);
    v33 = *(v3 + 72);
    v34 = v20;
    v20(v36, v19, v37);
    sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948], MEMORY[0x1E69D0950]);
    result = sub_1DD0DDF0C();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = v34(*(v8 + 48) + v24 * v33, v36, v37);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DCD41018(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E20, &qword_1DD0EFFE8);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1DCC7243C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_1DD0DE8DC();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DCD4123C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E28, &qword_1DD0EFFF8);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1DCC7243C(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    sub_1DD0DE8FC();
    result = sub_1DD0DF20C();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v5 + 48) + 24 * v23);
    *v28 = v17;
    v28[1] = v18;
    v28[2] = v19;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DCD414B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2870, &qword_1DD0E6B80);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DCC7243C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1DCD41714(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4E00, &qword_1DD0EFFD8);
  result = sub_1DD0DEBDC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1DCC7243C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1DD0DF1DC();
    sub_1DD0DDF2C();
    result = sub_1DD0DF20C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1DCD41970(uint64_t a1, uint64_t a2)
{
  sub_1DD0DE8DC();
  result = sub_1DD0DEADC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DCD419F4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v43 = result;
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD407FC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1DCD4270C();
        goto LABEL_87;
      }

      sub_1DCD43028(v6 + 1);
    }

    v8 = *v3;
    v9 = *(v5 + 1);
    v50[0] = *v5;
    v50[1] = v9;
    v51[0] = *(v5 + 2);
    *(v51 + 9) = *(v5 + 41);
    sub_1DD0DF1DC();
    IntentTopic.hash(into:)();
    result = sub_1DD0DF20C();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = *v5;
      v44 = *(v5 + 1);
      v46 = *(v5 + 2);
      v40 = *(v5 + 3);
      v45 = *(v5 + 4);
      v39 = *(v5 + 5);
      v41 = *(v5 + 6);
      if (v5[1])
      {
        v13 = 1701736302;
      }

      else
      {
        v13 = 0x33764F5355;
      }

      if (v5[1])
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      do
      {
        v15 = (*(v8 + 48) + (a2 << 6));
        v16 = *(v15 + 41);
        v17 = v15[2];
        v18 = *v15;
        v48 = v15[1];
        *v49 = v17;
        v47 = v18;
        *&v49[9] = v16;
        v19 = 0xE400000000000000;
        v20 = 863390798;
        switch(v18)
        {
          case 1:
            v20 = 880168014;
            break;
          case 2:
            v20 = 1885430133;
            break;
          case 3:
            v20 = 0x4974694B69726973;
            v19 = 0xED0000746E65746ELL;
            break;
          case 4:
            v20 = 0xD000000000000010;
            v19 = 0x80000001DD110040;
            break;
          case 5:
            v20 = 0xD000000000000010;
            v19 = 0x80000001DD110060;
            break;
          case 6:
            v19 = 0xE800000000000000;
            v20 = 0x726574756F526C6ELL;
            break;
          case 7:
            v20 = 0x746E65696C436669;
            v19 = 0xEE006E6F69746341;
            break;
          case 8:
            v19 = 0xE700000000000000;
            v20 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v21 = 0xE400000000000000;
        v22 = 863390798;
        switch(v12)
        {
          case 1:
            v22 = 880168014;
            break;
          case 2:
            v22 = 1885430133;
            break;
          case 3:
            v22 = 0x4974694B69726973;
            v21 = 0xED0000746E65746ELL;
            break;
          case 4:
            v22 = 0xD000000000000010;
            v21 = 0x80000001DD110040;
            break;
          case 5:
            v22 = 0xD000000000000010;
            v21 = 0x80000001DD110060;
            break;
          case 6:
            v21 = 0xE800000000000000;
            v22 = 0x726574756F526C6ELL;
            break;
          case 7:
            v22 = 0x746E65696C436669;
            v21 = 0xEE006E6F69746341;
            break;
          case 8:
            v21 = 0xE700000000000000;
            v22 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        if (v20 == v22 && v19 == v21)
        {
          sub_1DCB32880(&v47, v50);
        }

        else
        {
          v24 = sub_1DD0DF0AC();
          sub_1DCB32880(&v47, v50);

          if ((v24 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        if (BYTE1(v47))
        {
          v25 = 1701736302;
        }

        else
        {
          v25 = 0x33764F5355;
        }

        if (BYTE1(v47))
        {
          v26 = 0xE400000000000000;
        }

        else
        {
          v26 = 0xE500000000000000;
        }

        if (v25 == v13 && v26 == v14)
        {
        }

        else
        {
          v28 = sub_1DD0DF0AC();

          if ((v28 & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        if (v48)
        {
          if (!v46)
          {
            goto LABEL_71;
          }

          v29 = *(&v47 + 1) == v44 && v48 == v46;
          if (!v29 && (sub_1DD0DF0AC() & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (v46)
          {
            goto LABEL_82;
          }
        }

        if (*v49)
        {
          if (!v45)
          {
LABEL_71:

LABEL_82:
            result = sub_1DCB340B4(&v47);
            goto LABEL_83;
          }

          v30 = *(&v48 + 1) == v40 && *v49 == v45;
          if (!v30 && (sub_1DD0DF0AC() & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        else
        {

          if (v45)
          {
            goto LABEL_82;
          }
        }

        if (*&v49[16])
        {
          if (!v41)
          {
            goto LABEL_82;
          }

          if (*&v49[8] == v39 && *&v49[16] == v41)
          {
            goto LABEL_90;
          }

          v32 = sub_1DD0DF0AC();
          result = sub_1DCB340B4(&v47);
          if (v32)
          {
            goto LABEL_91;
          }
        }

        else
        {
          result = sub_1DCB340B4(&v47);
          if (!v41)
          {
            goto LABEL_91;
          }
        }

LABEL_83:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_87:
  v33 = *v42;
  *(*v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v34 = (*(v33 + 48) + (a2 << 6));
  v35 = v43[1];
  *v34 = *v43;
  v34[1] = v35;
  v34[2] = v43[2];
  *(v34 + 41) = *(v43 + 41);
  v36 = *(v33 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
LABEL_90:
    sub_1DCB340B4(&v47);
LABEL_91:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v38;
  }

  return result;
}

uint64_t sub_1DCD41FC8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_1DD0DB3AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DCD40CC0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DCD4347C(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_1DCD442F0(&qword_1EDE464E0, MEMORY[0x1E69D0948], MEMORY[0x1E69D0950]);
      v14 = sub_1DD0DDF0C();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DCD442F0(&qword_1ECCA4E10, MEMORY[0x1E69D0948], MEMORY[0x1E69D0958]);
        v16 = sub_1DD0DDF7C();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1DCD4288C();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD0DF11C();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}