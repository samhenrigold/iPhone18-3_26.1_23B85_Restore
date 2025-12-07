void sub_1DCF87A10(unsigned __int8 *a1, uint64_t a2)
{
  v76 = *(sub_1DD0DB04C() - 8);
  v86 = *(v76 + 64);
  v73 = sub_1DD0DC76C();
  v82 = *(v73 - 8);
  v72 = v82;
  v2 = *(v82 + 80);
  v71 = sub_1DD0DB1EC();
  v84 = *(v71 - 8);
  v70 = v84;
  v77 = *(v84 + 80) | v2;
  v75 = sub_1DD0DB4BC();
  v80 = *(v75 - 8);
  v91 = v80;
  v3 = *(v80 + 80) & 0xF8;
  v74 = sub_1DD0DB3EC();
  v4 = *(v74 - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v7 = sub_1DD0DD12C();
  v78 = *(v7 - 8);
  v68 = v78;
  v69 = v7;
  v8 = *(v78 + 80);
  v67 = sub_1DD0DD08C();
  v9 = v82;
  v66 = *(v67 - 8);
  v10 = (v77 | (v8 | *(v66 + 80))) & 0xF8 | v6;
  v83 = v86 + v10;
  v11 = (v86 + v10) & ~v10;
  v12 = *(v9 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v84 + 64))
  {
    v12 = *(v84 + 64);
  }

  v85 = *(v80 + 64) + v5;
  v87 = v5;
  v65 = v4;
  v13 = *(v4 + 84);
  v14 = *(v4 + 64);
  if (!v13)
  {
    ++v14;
  }

  v15 = v14 + 7;
  v16 = (v14 + 7 + (v85 & ~v5)) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v12 <= v17)
  {
    v12 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v16 + 31;
  if (v12 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v12 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v19 = *(v78 + 64);
  v20 = v6 + 16;
  v21 = v6;
  v22 = (v6 + 16 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6;
  v23 = *(v80 + 84);
  v81 = *(v4 + 84);
  v24 = v13 != 0;
  v25 = v13 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v79 = v25;
  if (v25 <= v23)
  {
    v25 = v23;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v18 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 <= v27)
  {
    v12 = v27;
  }

  v28 = *(*(v67 - 8) + 64);
  if (v12 > v28)
  {
    v28 = v12;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(*(AssociatedTypeWitness - 8) + 64);
  if (v32 <= 9)
  {
    v32 = 9;
  }

  if (v32 + 1 > v30)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v30;
  }

  if (v33 <= 9)
  {
    v34 = 9;
  }

  else
  {
    v34 = v33;
  }

  v35 = a1[v34];
  v36 = v35 - 4;
  if (v35 >= 4)
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    switch(v37)
    {
      case 1:
        v38 = *a1;
        goto LABEL_42;
      case 2:
        v38 = *a1;
        goto LABEL_42;
      case 3:
        v38 = *a1 | (a1[2] << 16);
        goto LABEL_42;
      case 4:
        v38 = *a1;
LABEL_42:
        if (v34 < 4)
        {
          v38 |= v36 << (8 * v34);
        }

        v35 = v38 + 4;
        break;
      default:
        break;
    }
  }

  v64 = v26;
  v89 = v15;
  v39 = ~v10;
  v40 = v29 + 1;
  switch(v35)
  {
    case 0u:
      v88 = ~v87;
      (*(v76 + 8))();
      v41 = (&a1[v83] & v39);
      v42 = v41[v29];
      v43 = v42 - 10;
      if (v42 >= 0xA)
      {
        if (v29 <= 3)
        {
          v44 = v29;
        }

        else
        {
          v44 = 4;
        }

        switch(v44)
        {
          case 1:
            v45 = *v41;
            goto LABEL_83;
          case 2:
            v45 = *v41;
            goto LABEL_83;
          case 3:
            v45 = *v41 | (v41[2] << 16);
            goto LABEL_83;
          case 4:
            v45 = *v41;
LABEL_83:
            if (v29 < 4)
            {
              v42 = (v45 | (v43 << (8 * v29))) + 10;
            }

            else
            {
              v42 = v45 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v42)
      {
        case 0u:
          goto LABEL_92;
        case 1u:
          goto LABEL_101;
        case 2u:
          goto LABEL_96;
        case 3u:
          goto LABEL_97;
        case 4u:
          goto LABEL_93;
        case 5u:
          goto LABEL_102;
        case 6u:
          goto LABEL_103;
        case 7u:
          goto LABEL_98;
        case 8u:
          goto LABEL_106;
        case 9u:
          goto LABEL_94;
        default:
          goto LABEL_122;
      }

      goto LABEL_122;
    case 1u:
      v88 = ~v87;
      (*(v76 + 8))();
      v41 = (&a1[v83] & v39);
      v50 = v41[v29];
      v51 = v50 - 10;
      if (v50 >= 0xA)
      {
        if (v29 <= 3)
        {
          v52 = v29;
        }

        else
        {
          v52 = 4;
        }

        switch(v52)
        {
          case 1:
            v53 = *v41;
            goto LABEL_88;
          case 2:
            v53 = *v41;
            goto LABEL_88;
          case 3:
            v53 = *v41 | (v41[2] << 16);
            goto LABEL_88;
          case 4:
            v53 = *v41;
LABEL_88:
            if (v29 < 4)
            {
              v50 = (v53 | (v51 << (8 * v29))) + 10;
            }

            else
            {
              v50 = v53 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 2u:
      v46 = a1[v32];
      v47 = v46 - 2;
      if (v46 >= 2)
      {
        if (v32 <= 3)
        {
          v48 = v32;
        }

        else
        {
          v48 = 4;
        }

        switch(v48)
        {
          case 1:
            v49 = *a1;
            goto LABEL_71;
          case 2:
            v49 = *a1;
            goto LABEL_71;
          case 3:
            v49 = *a1 | (a1[2] << 16);
            goto LABEL_71;
          case 4:
            v49 = *a1;
LABEL_71:
            if (v32 < 4)
            {
              v46 = (v49 | (v47 << (8 * v32))) + 2;
            }

            else
            {
              v46 = v49 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v46 == 1)
      {
        goto LABEL_79;
      }

      if (!v46)
      {
        v54 = *(*(AssociatedTypeWitness - 8) + 8);

        v54();
      }

      return;
    case 3u:
LABEL_79:
      v55 = *a1;

      return;
    default:
      return;
  }

LABEL_91:
  switch(v50)
  {
    case 0u:
LABEL_92:
      v57 = v72;
      v56 = v73;
      goto LABEL_95;
    case 1u:
LABEL_101:
      (*(v72 + 8))(v41, v73);

      goto LABEL_122;
    case 2u:
LABEL_96:

      goto LABEL_105;
    case 3u:
LABEL_97:
      swift_unknownObjectRelease();
      goto LABEL_122;
    case 4u:
LABEL_93:
      v57 = v70;
      v56 = v71;
      goto LABEL_95;
    case 5u:
LABEL_102:
      v58 = *v41;
      goto LABEL_121;
    case 6u:
LABEL_103:
      (*(v91 + 8))(v41, v75);
      if (!__swift_getEnumTagSinglePayload(&v41[v85] & v88, 1, v74))
      {
        (*(v65 + 8))(&v41[v85] & v88, v74);
      }

      goto LABEL_105;
    case 7u:
LABEL_98:
      (*(v91 + 8))(v41, v75);
      if (!__swift_getEnumTagSinglePayload(&v41[v85] & v88, 1, v74))
      {
        (*(v65 + 8))(&v41[v85] & v88, v74);
      }

LABEL_105:

      goto LABEL_122;
    case 8u:
LABEL_106:
      (*(v68 + 8))(v41, v69);

      v59 = (v20 + (&v41[v19 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v21;
      if (v23 == v64)
      {
        if (__swift_getEnumTagSinglePayload(v59, v23, v75))
        {
          goto LABEL_120;
        }

        v60 = (v85 + v59) & v88;
        goto LABEL_116;
      }

      v60 = (v85 + v59) & v88;
      if (v79 == v64)
      {
        v61 = v74;
        if (v81 < 2)
        {
LABEL_117:
          (*(v91 + 8))(v59, v75);
          if (!__swift_getEnumTagSinglePayload(v60, 1, v61))
          {
            (*(v65 + 8))(v60, v61);
          }

          goto LABEL_120;
        }

        if (__swift_getEnumTagSinglePayload((v85 + v59) & v88, v81, v74) >= 2)
        {
          goto LABEL_120;
        }

LABEL_116:
        v61 = v74;
        goto LABEL_117;
      }

      v62 = *(((v89 + v60) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v62 >= 0xFFFFFFFF)
      {
        LODWORD(v62) = -1;
      }

      if ((v62 + 1) < 2)
      {
        goto LABEL_116;
      }

LABEL_120:
      v58 = *((v17 + v59 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_121:

LABEL_122:

      v63 = (((&v41[v40 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v63[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      return;
    case 9u:
LABEL_94:
      v57 = v66;
      v56 = v67;
LABEL_95:
      (*(v57 + 8))(v41, v56);
      goto LABEL_122;
    default:
      goto LABEL_122;
  }
}

_BYTE *sub_1DCF884FC(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v200 = *(sub_1DD0DB04C() - 8);
  v213 = *(v200 + 64);
  v197 = sub_1DD0DC76C();
  v207 = *(v197 - 8);
  v196 = v207;
  v3 = *(v207 + 80);
  v195 = sub_1DD0DB1EC();
  v211 = *(v195 - 8);
  v194 = v211;
  v201 = *(v211 + 80) | v3;
  v199 = sub_1DD0DB4BC();
  v205 = *(v199 - 8);
  v221 = v205;
  v4 = *(v205 + 80) & 0xF8;
  v198 = sub_1DD0DB3EC();
  v5 = *(v198 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v203 = *(v8 - 8);
  v192 = v203;
  v193 = v8;
  v9 = *(v203 + 80);
  v191 = sub_1DD0DD08C();
  v10 = v207;
  v190 = *(v191 - 8);
  v11 = (v201 | (v9 | *(v190 + 80))) & 0xF8 | v7;
  v208 = v213 + v11;
  v12 = (v213 + v11) & ~v11;
  v13 = *(v10 + 64);
  v189 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v211 + 64))
  {
    v13 = *(v211 + 64);
  }

  v212 = *(v205 + 64) + v6;
  v214 = v6;
  v187 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  v185 = v15;
  if (!v14)
  {
    ++v15;
  }

  v206 = v15;
  v16 = v15 + 7;
  v202 = v212 & ~v6;
  v17 = (v15 + 7 + v202) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v18)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  if (v13 <= (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = *(v203 + 64);
  v188 = v7 + 16;
  v21 = v7;
  v22 = (v7 + 16 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v23 = *(v221 + 84);
  v186 = v14;
  v24 = v14 != 0;
  v25 = v14 - 1;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v23)
  {
    v27 = *(v221 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v204 = v27;
  v28 = ((v19 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v28)
  {
    v13 = v28;
  }

  v29 = *(*(v191 - 8) + 64);
  if (v13 > v29)
  {
    v29 = v13;
  }

  if (v29 <= 0x18)
  {
    v30 = 24;
  }

  else
  {
    v30 = v29;
  }

  v31 = ((((v30 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v33 + 1 > v31)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v31;
  }

  if (v34 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v34;
  }

  v36 = a2[v35];
  v37 = v36 - 4;
  if (v36 >= 4)
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    switch(v38)
    {
      case 1:
        v39 = *a2;
        goto LABEL_44;
      case 2:
        v39 = *a2;
        goto LABEL_44;
      case 3:
        v39 = *a2 | (a2[2] << 16);
        goto LABEL_44;
      case 4:
        v39 = *a2;
LABEL_44:
        if (v35 < 4)
        {
          v39 |= v37 << (8 * v35);
        }

        v36 = v39 + 4;
        break;
      default:
        break;
    }
  }

  v217 = v16;
  v40 = ~v11;
  v41 = ~v21;
  v42 = v35;
  switch(v36)
  {
    case 0u:
      v181 = ~v214;
      v215 = v30 + 1;
      (*(v200 + 16))(a1);
      v43 = (&a1[v208] & v40);
      v44 = v30;
      v45 = (&a2[v208] & v40);
      v46 = v45[v44];
      v47 = v46 - 10;
      v183 = v44;
      if (v46 < 0xA)
      {
        v49 = v42;
      }

      else
      {
        if (v44 <= 3)
        {
          v48 = v44;
        }

        else
        {
          v48 = 4;
        }

        v49 = v42;
        switch(v48)
        {
          case 1:
            v50 = *v45;
            goto LABEL_89;
          case 2:
            v50 = *v45;
            goto LABEL_89;
          case 3:
            v50 = *(&a2[v208] & v40) | (*((&a2[v208] & v40) + 2) << 16);
            goto LABEL_89;
          case 4:
            v50 = *v45;
LABEL_89:
            if (v183 < 4)
            {
              v46 = (v50 | (v47 << (8 * v183))) + 10;
            }

            else
            {
              v46 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v46)
      {
        case 0u:
          (*(v196 + 16))(v43, v45, v197);
          *(v43 + v183) = 0;
          goto LABEL_123;
        case 1u:
          (*(v196 + 16))(v43, v45, v197);
          *((v43 + v189) & 0xFFFFFFFFFFFFFFF8) = *(&v45[v189] & 0xFFFFFFFFFFFFFFF8);
          *(v43 + v183) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v43 = *v45;
          *((&a1[v208] & v40) + 8) = *((&a2[v208] & v40) + 8);
          *((&a1[v208] & v40) + 0x10) = *((&a2[v208] & v40) + 0x10);
          *(v43 + v183) = 2;

          goto LABEL_123;
        case 3u:
          *v43 = *v45;
          *(v43 + v183) = 3;
          swift_unknownObjectRetain();
          goto LABEL_123;
        case 4u:
          (*(v194 + 16))(v43, v45, v195);
          v71 = 4;
          goto LABEL_103;
        case 5u:
          v79 = *v45;
          *v43 = *v45;
          *(v43 + v183) = 5;
          v80 = v79;
          goto LABEL_123;
        case 6u:
          (*(v221 + 16))(v43, v45, v199);
          v83 = &a1[v208] & v40;
          v84 = ((v43 + v212) & v181);
          v85 = (&v45[v212] & v181);
          if (__swift_getEnumTagSinglePayload(v85, 1, v198))
          {
            memcpy(v84, v85, v206);
          }

          else
          {
            (*(v187 + 16))(v84, v85, v198);
            __swift_storeEnumTagSinglePayload(v84, 0, 1, v198);
          }

          v53 = a1;
          v147 = ((v84 + v217) & 0xFFFFFFFFFFFFFFF8);
          v148 = ((v85 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v147 = *v148;
          v147[1] = v148[1];
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
          v151 = *v150;
          *(v149 + 4) = *(v150 + 4);
          *v149 = v151;
          v43 = v83;
          *(v83 + v183) = 6;
          goto LABEL_156;
        case 7u:
          (*(v221 + 16))(v43, v45, v199);
          v73 = &a1[v208] & v40;
          v74 = ((v43 + v212) & v181);
          v75 = (&v45[v212] & v181);
          if (__swift_getEnumTagSinglePayload(v75, 1, v198))
          {
            memcpy(v74, v75, v206);
          }

          else
          {
            (*(v187 + 16))(v74, v75, v198);
            __swift_storeEnumTagSinglePayload(v74, 0, 1, v198);
          }

          v53 = a1;
          v125 = ((v74 + v217) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v75 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          v125[1] = v126[1];
          v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
          v129 = *v128;
          *(v127 + 4) = *(v128 + 4);
          *v127 = v129;
          v130 = ((v18 + v73 + 7) & 0xFFFFFFFFFFFFFFF8);
          v131 = (&v45[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v130 = *v131;
          v130[1] = v131[1];
          v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
          v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v132 = *v133;
          v132[1] = v133[1];
          v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
          v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v134[1] = v135[1];
          *(v73 + v183) = 7;

          v43 = v73;
LABEL_156:

          goto LABEL_124;
        case 8u:
          v219 = v49;
          (*(v192 + 16))(v43, v45, v193);
          v209 = &a1[v208] & v40;
          v103 = ((v43 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
          v104 = (&v45[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v103 = *v104;
          v103[1] = v104[1];
          v105 = ((v103 + v188) & v41);
          v106 = ((v104 + v188) & v41);

          if (v23 != v204)
          {
            v108 = v212;
            v110 = ((v106 + v212) & v181);
            if (v26 == v204)
            {
              v111 = v198;
              v53 = a1;
              if (v186 < 2)
              {
LABEL_164:
                v112 = v221;
                v109 = v181;
                goto LABEL_165;
              }

              if (__swift_getEnumTagSinglePayload((v106 + v212) & v181, v186, v198) >= 2)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v157 = *(((v110 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v157 >= 0xFFFFFFFF)
              {
                LODWORD(v157) = -1;
              }

              v53 = a1;
              if ((v157 + 1) >= 2)
              {
                goto LABEL_145;
              }
            }

            v111 = v198;
            goto LABEL_164;
          }

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v106, v23, v199);
          v53 = a1;
          v108 = v212;
          if (EnumTagSinglePayload)
          {
LABEL_145:
            memcpy(v105, v106, v18);
            v123 = v202;
LABEL_176:
            v166 = v206;
            goto LABEL_177;
          }

          v109 = v181;
          v110 = ((v106 + v212) & v181);
          v111 = v198;
          v112 = v221;
LABEL_165:
          (*(v112 + 16))(v105, v106, v199);
          v158 = ((v105 + v108) & v109);
          if (__swift_getEnumTagSinglePayload(v110, 1, v111))
          {
            memcpy(v158, v110, v206);
          }

          else
          {
            (*(v187 + 16))(v158, v110, v111);
            __swift_storeEnumTagSinglePayload(v158, 0, 1, v111);
          }

          v123 = v202;
          v161 = ((v158 + v217) & 0xFFFFFFFFFFFFFFF8);
          v162 = ((v110 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v161 = *v162;
          v161[1] = v162[1];
          v163 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
          v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
          v165 = *v164;
          *(v163 + 4) = *(v164 + 4);
          *v163 = v165;

          v166 = v185;
          if (!v186)
          {
            goto LABEL_176;
          }

LABEL_177:
          v167 = (((v123 + v166 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v168 = ((v105 + v167 + 7) & 0xFFFFFFFFFFFFFFF8);
          v169 = *((v106 + v167 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v168 = v169;
          v43 = v209;
          *(v209 + v183) = 8;
          v170 = v169;
          v42 = v219;
LABEL_124:
          v89 = (&v45[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
          v90 = ((v43 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v90 = *v89;
          v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
          v92 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
          v93 = *(v92 + 24);

          if (v93 < 0xFFFFFFFF)
          {
            v94 = *v92;
            v95 = *(v92 + 16);
            *(v91 + 32) = *(v92 + 32);
            *v91 = v94;
            *(v91 + 16) = v95;
          }

          else
          {
            *(v91 + 24) = v93;
            *(v91 + 32) = *(v92 + 32);
            (**(v93 - 8))(v91, v92, v93);
          }

          *(v91 + 40) = *(v92 + 40);
          v53[v42] = 0;
          return v53;
        case 9u:
          (*(v190 + 16))(v43, v45, v191);
          v71 = 9;
LABEL_103:
          *(v43 + v183) = v71;
          goto LABEL_123;
        default:
          memcpy(v43, v45, v215);
LABEL_123:
          v53 = a1;
          goto LABEL_124;
      }

    case 1u:
      v182 = ~v214;
      v216 = v30 + 1;
      (*(v200 + 16))(a1);
      v59 = (&a1[v208] & v40);
      v60 = v30;
      v61 = (&a2[v208] & v40);
      v62 = v61[v60];
      v63 = v62 - 10;
      v184 = v60;
      if (v62 < 0xA)
      {
        v65 = v42;
      }

      else
      {
        if (v60 <= 3)
        {
          v64 = v60;
        }

        else
        {
          v64 = 4;
        }

        v65 = v42;
        switch(v64)
        {
          case 1:
            v66 = *v61;
            goto LABEL_95;
          case 2:
            v66 = *v61;
            goto LABEL_95;
          case 3:
            v66 = *(&a2[v208] & v40) | (*((&a2[v208] & v40) + 2) << 16);
            goto LABEL_95;
          case 4:
            v66 = *v61;
LABEL_95:
            if (v184 < 4)
            {
              v62 = (v66 | (v63 << (8 * v184))) + 10;
            }

            else
            {
              v62 = v66 + 10;
            }

            break;
          default:
            goto LABEL_98;
        }
      }

      break;
    case 2u:
      v51 = a2[v33];
      v52 = v51 - 2;
      v53 = a1;
      if (v51 >= 2)
      {
        if (v33 <= 3)
        {
          v54 = v33;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *a2;
            goto LABEL_77;
          case 2:
            v55 = *a2;
            goto LABEL_77;
          case 3:
            v55 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v55 = *a2;
LABEL_77:
            if (v33 < 4)
            {
              v51 = (v55 | (v52 << (8 * v33))) + 2;
            }

            else
            {
              v51 = v55 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        v68 = *a2;
        v69 = *a2;
        *a1 = v68;
        a1[8] = a2[8];
        a1[v33] = 1;
      }

      else if (v51)
      {
        memcpy(a1, a2, v33 + 1);
      }

      else
      {
        (*(*(AssociatedTypeWitness - 8) + 16))(a1);
        a1[v33] = 0;
      }

      v70 = 2;
      goto LABEL_134;
    case 3u:
      v56 = *a2;
      v57 = v35;
      v58 = *a2;
      v53 = a1;
      *a1 = v56;
      a1[8] = a2[8];
      a1[v57] = 3;
      return v53;
    default:

      return memcpy(a1, a2, v35 + 1);
  }

LABEL_98:
  switch(v62)
  {
    case 0u:
      (*(v196 + 16))(v59, v61, v197);
      *(v59 + v184) = 0;
      goto LABEL_129;
    case 1u:
      (*(v196 + 16))(v59, v61, v197);
      *((v59 + v189) & 0xFFFFFFFFFFFFFFF8) = *(&v61[v189] & 0xFFFFFFFFFFFFFFF8);
      *(v59 + v184) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v59 = *v61;
      *((&a1[v208] & v40) + 8) = *((&a2[v208] & v40) + 8);
      *((&a1[v208] & v40) + 0x10) = *((&a2[v208] & v40) + 0x10);
      *(v59 + v184) = 2;

      goto LABEL_129;
    case 3u:
      *v59 = *v61;
      *(v59 + v184) = 3;
      swift_unknownObjectRetain();
      goto LABEL_129;
    case 4u:
      (*(v194 + 16))(v59, v61, v195);
      v72 = 4;
      goto LABEL_105;
    case 5u:
      v81 = *v61;
      *v59 = *v61;
      *(v59 + v184) = 5;
      v82 = v81;
      goto LABEL_129;
    case 6u:
      (*(v221 + 16))(v59, v61, v199);
      v86 = &a1[v208] & v40;
      v87 = ((v59 + v212) & v182);
      v88 = (&v61[v212] & v182);
      if (__swift_getEnumTagSinglePayload(v88, 1, v198))
      {
        memcpy(v87, v88, v206);
      }

      else
      {
        (*(v187 + 16))(v87, v88, v198);
        __swift_storeEnumTagSinglePayload(v87, 0, 1, v198);
      }

      v53 = a1;
      v152 = ((v87 + v217) & 0xFFFFFFFFFFFFFFF8);
      v153 = ((v88 + v217) & 0xFFFFFFFFFFFFFFF8);
      *v152 = *v153;
      v152[1] = v153[1];
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
      v156 = *v155;
      *(v154 + 4) = *(v155 + 4);
      *v154 = v156;
      v59 = v86;
      *(v86 + v184) = 6;
      goto LABEL_159;
    case 7u:
      (*(v221 + 16))(v59, v61, v199);
      v76 = &a1[v208] & v40;
      v77 = ((v59 + v212) & v182);
      v78 = (&v61[v212] & v182);
      if (__swift_getEnumTagSinglePayload(v78, 1, v198))
      {
        memcpy(v77, v78, v206);
      }

      else
      {
        (*(v187 + 16))(v77, v78, v198);
        __swift_storeEnumTagSinglePayload(v77, 0, 1, v198);
      }

      v53 = a1;
      v136 = ((v77 + v217) & 0xFFFFFFFFFFFFFFF8);
      v137 = ((v78 + v217) & 0xFFFFFFFFFFFFFFF8);
      *v136 = *v137;
      v136[1] = v137[1];
      v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
      v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
      v140 = *v139;
      *(v138 + 4) = *(v139 + 4);
      *v138 = v140;
      v141 = ((v18 + v76 + 7) & 0xFFFFFFFFFFFFFFF8);
      v142 = (&v61[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      v143 = ((v141 + 23) & 0xFFFFFFFFFFFFFFF8);
      v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v143 = *v144;
      v143[1] = v144[1];
      v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
      v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v145 = *v146;
      v145[1] = v146[1];
      *(v76 + v184) = 7;

      v59 = v76;
LABEL_159:

      goto LABEL_130;
    case 8u:
      v220 = v65;
      (*(v192 + 16))(v59, v61, v193);
      v210 = &a1[v208] & v40;
      v113 = ((v59 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
      v114 = (&v61[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v113[1] = v114[1];
      v115 = ((v113 + v188) & v41);
      v116 = ((v114 + v188) & v41);

      if (v23 == v204)
      {
        v117 = __swift_getEnumTagSinglePayload(v116, v23, v199);
        v53 = a1;
        v118 = v212;
        if (!v117)
        {
          v119 = v182;
          v120 = ((v116 + v212) & v182);
          v121 = v198;
          v122 = v221;
          goto LABEL_172;
        }

LABEL_149:
        memcpy(v115, v116, v18);
        v124 = v202;
        goto LABEL_180;
      }

      v118 = v212;
      v120 = ((v116 + v212) & v182);
      if (v26 == v204)
      {
        v121 = v198;
        v53 = a1;
        if (v186 < 2)
        {
LABEL_171:
          v122 = v221;
          v119 = v182;
LABEL_172:
          (*(v122 + 16))(v115, v116, v199);
          v160 = ((v115 + v118) & v119);
          if (__swift_getEnumTagSinglePayload(v120, 1, v121))
          {
            memcpy(v160, v120, v206);
          }

          else
          {
            (*(v187 + 16))(v160, v120, v121);
            __swift_storeEnumTagSinglePayload(v160, 0, 1, v121);
          }

          v124 = v202;
          v171 = ((v160 + v217) & 0xFFFFFFFFFFFFFFF8);
          v172 = ((v120 + v217) & 0xFFFFFFFFFFFFFFF8);
          *v171 = *v172;
          v171[1] = v172[1];
          v173 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
          v174 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
          v175 = *v174;
          *(v173 + 4) = *(v174 + 4);
          *v173 = v175;

          v176 = v185;
          if (v186)
          {
LABEL_181:
            v177 = (((v124 + v176 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v178 = ((v115 + v177 + 7) & 0xFFFFFFFFFFFFFFF8);
            v179 = *((v116 + v177 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v178 = v179;
            v59 = v210;
            *(v210 + v184) = 8;
            v180 = v179;
            v42 = v220;
LABEL_130:
            v96 = (&v61[v216 + 7] & 0xFFFFFFFFFFFFFFF8);
            v97 = ((v59 + v216 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v97 = *v96;
            v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
            v99 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
            v100 = *(v99 + 24);

            if (v100 < 0xFFFFFFFF)
            {
              v101 = *v99;
              v102 = *(v99 + 16);
              *(v98 + 32) = *(v99 + 32);
              *v98 = v101;
              *(v98 + 16) = v102;
            }

            else
            {
              *(v98 + 24) = v100;
              *(v98 + 32) = *(v99 + 32);
              (**(v100 - 8))(v98, v99, v100);
            }

            *(v98 + 40) = *(v99 + 40);
            v70 = 1;
LABEL_134:
            v53[v42] = v70;
            return v53;
          }

LABEL_180:
          v176 = v206;
          goto LABEL_181;
        }

        if (__swift_getEnumTagSinglePayload((v116 + v212) & v182, v186, v198) >= 2)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v159 = *(((v120 + v217) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v159 >= 0xFFFFFFFF)
        {
          LODWORD(v159) = -1;
        }

        v53 = a1;
        if ((v159 + 1) >= 2)
        {
          goto LABEL_149;
        }
      }

      v121 = v198;
      goto LABEL_171;
    case 9u:
      (*(v190 + 16))(v59, v61, v191);
      v72 = 9;
LABEL_105:
      *(v59 + v184) = v72;
      goto LABEL_129;
    default:
      memcpy(v59, v61, v216);
LABEL_129:
      v53 = a1;
      goto LABEL_130;
  }
}

unsigned __int8 *sub_1DCF89AEC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v210 = *(v4 - 8);
  v211 = v4;
  v224 = *(v210 + 64);
  v222 = v3;
  v207 = sub_1DD0DC76C();
  v217 = *(v207 - 8);
  v206 = v217;
  v5 = *(v217 + 80);
  v201 = sub_1DD0DB1EC();
  v219 = *(v201 - 8);
  v200 = v219;
  v212 = *(v219 + 80) | v5;
  v208 = sub_1DD0DB4BC();
  v216 = *(v208 - 8);
  v6 = *(v216 + 80) & 0xF8;
  v209 = sub_1DD0DB3EC();
  v7 = *(v209 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v199 = sub_1DD0DD12C();
  v214 = *(v199 - 8);
  v198 = v214;
  v10 = *(v214 + 80);
  v197 = sub_1DD0DD08C();
  v11 = v217;
  v196 = *(v197 - 8);
  v12 = (v212 | (v10 | *(v196 + 80))) & 0xF8 | v9;
  v218 = v224 + v12;
  v13 = (v224 + v12) & ~v12;
  v14 = *(v11 + 64);
  v195 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v219 + 64))
  {
    v14 = *(v219 + 64);
  }

  v220 = *(v216 + 64) + v8;
  v15 = v8;
  v16 = v220 & ~v8;
  v189 = v7;
  v17 = *(v7 + 84);
  v18 = *(v7 + 64);
  v188 = v18;
  if (!v17)
  {
    ++v18;
  }

  v205 = v18;
  v19 = v18 + 7;
  v202 = v16;
  v20 = (v18 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v21)
  {
    v14 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v22 = v20 + 31;
  if (v14 <= (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v192 = *(v214 + 64);
  v193 = v9 + 16;
  v23 = v9;
  v203 = v17;
  v24 = v17 != 0;
  v25 = v17 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v187 = v25;
  v190 = *(v216 + 84);
  if (v25 <= v190)
  {
    v25 = *(v216 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v194 = v25;
  v26 = ((v22 + ((v9 + 16 + ((v192 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v26)
  {
    v14 = v26;
  }

  v27 = *(*(v197 - 8) + 64);
  if (v14 > v27)
  {
    v27 = v14;
  }

  if (v27 <= 0x18)
  {
    v27 = 24;
  }

  v225 = v27;
  v28 = ((((v27 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v213 = *(AssociatedTypeWitness - 8);
  v215 = AssociatedTypeWitness;
  if (*(v213 + 64) <= 9uLL)
  {
    v30 = 9;
  }

  else
  {
    v30 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v30 + 1 > v28)
  {
    v31 = v30 + 1;
  }

  else
  {
    v31 = v28;
  }

  if (v31 <= 9)
  {
    v32 = 9;
  }

  else
  {
    v32 = v31;
  }

  v33 = v3[v32];
  v34 = v33 - 4;
  if (v33 < 4)
  {
    v36 = a2;
  }

  else
  {
    if (v32 <= 3)
    {
      v35 = v32;
    }

    else
    {
      v35 = 4;
    }

    v36 = a2;
    switch(v35)
    {
      case 1:
        v37 = *v3;
        goto LABEL_43;
      case 2:
        v37 = *v3;
        goto LABEL_43;
      case 3:
        v37 = *v3 | (v3[2] << 16);
        goto LABEL_43;
      case 4:
        v37 = *v3;
LABEL_43:
        if (v32 < 4)
        {
          v37 |= v34 << (8 * v32);
        }

        v33 = v37 + 4;
        break;
      default:
        break;
    }
  }

  v221 = v225 + 1;
  v38 = ~v12;
  v39 = ~v15;
  v191 = ~v23;
  v204 = 8 * v30;
  switch(v33)
  {
    case 0u:
      v184 = v19;
      (*(v210 + 8))(v3, v211);
      v40 = (&v3[v218] & v38);
      v41 = v40[v225];
      v42 = v41 - 10;
      if (v41 >= 0xA)
      {
        if (v225 <= 3)
        {
          v43 = v225;
        }

        else
        {
          v43 = 4;
        }

        switch(v43)
        {
          case 1:
            v44 = *v40;
            goto LABEL_80;
          case 2:
            v44 = *v40;
            goto LABEL_80;
          case 3:
            v44 = *v40 | (*((&v3[v218] & v38) + 2) << 16);
            goto LABEL_80;
          case 4:
            v44 = *v40;
LABEL_80:
            if (v225 < 4)
            {
              v41 = (v44 | (v42 << (8 * v225))) + 10;
            }

            else
            {
              v41 = v44 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v41)
      {
        case 0u:
          goto LABEL_89;
        case 1u:
          goto LABEL_98;
        case 2u:
          goto LABEL_93;
        case 3u:
          goto LABEL_94;
        case 4u:
          goto LABEL_90;
        case 5u:
          goto LABEL_99;
        case 6u:
          goto LABEL_100;
        case 7u:
          goto LABEL_95;
        case 8u:
          goto LABEL_103;
        case 9u:
          goto LABEL_91;
        default:
          goto LABEL_118;
      }

      goto LABEL_118;
    case 1u:
      v184 = v19;
      (*(v210 + 8))(v3, v211);
      v40 = (&v3[v218] & v38);
      v49 = v40[v225];
      v50 = v49 - 10;
      if (v49 >= 0xA)
      {
        if (v225 <= 3)
        {
          v51 = v225;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *v40;
            goto LABEL_85;
          case 2:
            v52 = *v40;
            goto LABEL_85;
          case 3:
            v52 = *v40 | (*((&v3[v218] & v38) + 2) << 16);
            goto LABEL_85;
          case 4:
            v52 = *v40;
LABEL_85:
            if (v225 < 4)
            {
              v49 = (v52 | (v50 << (8 * v225))) + 10;
            }

            else
            {
              v49 = v52 + 10;
            }

            break;
          default:
            goto LABEL_88;
        }
      }

      break;
    case 2u:
      v45 = v3[v30];
      v46 = v45 - 2;
      if (v45 >= 2)
      {
        if (v30 <= 3)
        {
          v47 = v30;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v3;
            goto LABEL_72;
          case 2:
            v48 = *v3;
            goto LABEL_72;
          case 3:
            v48 = *v3 | (v3[2] << 16);
            goto LABEL_72;
          case 4:
            v48 = *v3;
LABEL_72:
            if (v30 < 4)
            {
              v45 = (v48 | (v46 << v204)) + 2;
            }

            else
            {
              v45 = v48 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v45 == 1)
      {
        goto LABEL_78;
      }

      if (!v45)
      {
        (*(v213 + 8))(v3, AssociatedTypeWitness);
      }

      goto LABEL_120;
    case 3u:
LABEL_78:

      goto LABEL_120;
    default:
      goto LABEL_120;
  }

LABEL_88:
  switch(v49)
  {
    case 0u:
LABEL_89:
      v54 = v206;
      v53 = v207;
      goto LABEL_92;
    case 1u:
LABEL_98:
      (*(v206 + 8))(v40, v207);

      goto LABEL_118;
    case 2u:
LABEL_93:

      goto LABEL_102;
    case 3u:
LABEL_94:
      swift_unknownObjectRelease();
      goto LABEL_118;
    case 4u:
LABEL_90:
      v54 = v200;
      v53 = v201;
      goto LABEL_92;
    case 5u:
LABEL_99:
      v55 = *v40;
      goto LABEL_117;
    case 6u:
LABEL_100:
      (*(v216 + 8))(v40, v208);
      if (!__swift_getEnumTagSinglePayload(&v40[v220] & v39, 1, v209))
      {
        (*(v189 + 8))(&v40[v220] & v39, v209);
      }

      goto LABEL_102;
    case 7u:
LABEL_95:
      (*(v216 + 8))(v40, v208);
      if (!__swift_getEnumTagSinglePayload(&v40[v220] & v39, 1, v209))
      {
        (*(v189 + 8))(&v40[v220] & v39, v209);
      }

LABEL_102:

      goto LABEL_118;
    case 8u:
LABEL_103:
      (*(v198 + 8))(v40, v199);

      v56 = (v193 + (&v40[v192 + 7] & 0xFFFFFFFFFFFFFFF8)) & v191;
      if (v190 == v194)
      {
        if (__swift_getEnumTagSinglePayload(v56, v190, v208))
        {
          goto LABEL_116;
        }

        v57 = (v220 + v56) & v39;
        goto LABEL_113;
      }

      v57 = (v220 + v56) & v39;
      if (v187 == v194)
      {
        if (v203 >= 2 && __swift_getEnumTagSinglePayload((v220 + v56) & v39, v203, v209) >= 2)
        {
          goto LABEL_116;
        }

        goto LABEL_113;
      }

      v58 = *(((v184 + v57) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v58 >= 0xFFFFFFFF)
      {
        LODWORD(v58) = -1;
      }

      if ((v58 + 1) < 2)
      {
LABEL_113:
        (*(v216 + 8))(v56, v208);
        if (!__swift_getEnumTagSinglePayload(v57, 1, v209))
        {
          (*(v189 + 8))(v57, v209);
        }
      }

LABEL_116:
      v55 = *((v21 + v56 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_117:

LABEL_118:

      v59 = (((&v40[v221 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v19 = v184;
      v36 = a2;
      if (v59[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
      }

LABEL_120:
      v60 = v36[v32];
      v61 = v60 - 4;
      if (v60 >= 4)
      {
        if (v32 <= 3)
        {
          v62 = v32;
        }

        else
        {
          v62 = 4;
        }

        switch(v62)
        {
          case 1:
            v63 = *v36;
            goto LABEL_129;
          case 2:
            v63 = *v36;
            goto LABEL_129;
          case 3:
            v63 = *v36 | (v36[2] << 16);
            goto LABEL_129;
          case 4:
            v63 = *v36;
LABEL_129:
            if (v32 < 4)
            {
              v60 = (v63 | (v61 << (8 * v32))) + 4;
            }

            else
            {
              v60 = v63 + 4;
            }

            break;
          default:
            goto LABEL_132;
        }
      }

      break;
    case 9u:
LABEL_91:
      v54 = v196;
      v53 = v197;
LABEL_92:
      (*(v54 + 8))(v40, v53);
      goto LABEL_118;
    default:
      goto LABEL_118;
  }

LABEL_132:
  switch(v60)
  {
    case 0u:
      (*(v210 + 16))(v3, v36, v211);
      v64 = (&v36[v218] & v38);
      v65 = v64[v225];
      v66 = v65 - 10;
      if (v65 < 0xA)
      {
        v68 = (&v3[v218] & v38);
      }

      else
      {
        if (v225 <= 3)
        {
          v67 = v225;
        }

        else
        {
          v67 = 4;
        }

        v68 = (&v3[v218] & v38);
        switch(v67)
        {
          case 1:
            v69 = *v64;
            goto LABEL_174;
          case 2:
            v69 = *v64;
            goto LABEL_174;
          case 3:
            v69 = *v64 | (v64[2] << 16);
            goto LABEL_174;
          case 4:
            v69 = *v64;
LABEL_174:
            if (v225 < 4)
            {
              v65 = (v69 | (v66 << (8 * v225))) + 10;
            }

            else
            {
              v65 = v69 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v65)
      {
        case 0u:
          (*(v206 + 16))(v68, v64, v207);
          *(v68 + v225) = 0;
          goto LABEL_247;
        case 1u:
          (*(v206 + 16))(v68, v64, v207);
          *((v68 + v195) & 0xFFFFFFFFFFFFFFF8) = *(&v64[v195] & 0xFFFFFFFFFFFFFFF8);
          *(v68 + v225) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v68 = *v64;
          v68[1] = *(v64 + 1);
          v68[2] = *(v64 + 2);
          *(v68 + v225) = 2;

          goto LABEL_229;
        case 3u:
          *v68 = *v64;
          *(v68 + v225) = 3;
          swift_unknownObjectRetain();
          goto LABEL_247;
        case 4u:
          (*(v200 + 16))(v68, v64, v201);
          v86 = 4;
          goto LABEL_188;
        case 5u:
          v92 = *v64;
          *v68 = *v64;
          *(v68 + v225) = 5;
          v93 = v92;
          goto LABEL_247;
        case 6u:
          (*(v216 + 16))(v68, v64, v208);
          v96 = ((v68 + v220) & v39);
          v97 = (&v64[v220] & v39);
          if (__swift_getEnumTagSinglePayload(v97, 1, v209))
          {
            memcpy(v96, v97, v205);
          }

          else
          {
            (*(v189 + 16))(v96, v97, v209);
            __swift_storeEnumTagSinglePayload(v96, 0, 1, v209);
          }

          v136 = ((v96 + v19) & 0xFFFFFFFFFFFFFFF8);
          v137 = ((v97 + v19) & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v136[1] = v137[1];
          v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = *v139;
          *(v138 + 4) = *(v139 + 4);
          *v138 = v140;
          *(v68 + v225) = 6;
          goto LABEL_229;
        case 7u:
          (*(v216 + 16))(v68, v64, v208);
          v88 = ((v68 + v220) & v39);
          v89 = (&v64[v220] & v39);
          if (__swift_getEnumTagSinglePayload(v89, 1, v209))
          {
            memcpy(v88, v89, v205);
          }

          else
          {
            (*(v189 + 16))(v88, v89, v209);
            __swift_storeEnumTagSinglePayload(v88, 0, 1, v209);
          }

          v114 = ((v88 + v19) & 0xFFFFFFFFFFFFFFF8);
          v115 = ((v89 + v19) & 0xFFFFFFFFFFFFFFF8);
          *v114 = *v115;
          v114[1] = v115[1];
          v116 = (v114 + 19) & 0xFFFFFFFFFFFFFFF8;
          v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
          v118 = *v117;
          *(v116 + 4) = *(v117 + 4);
          *v116 = v118;
          v119 = ((v68 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          v120 = (&v64[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v119 = *v120;
          v119[1] = v120[1];
          v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
          v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v121 = *v122;
          v121[1] = v122[1];
          v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
          v124 = ((v122 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v123 = *v124;
          v123[1] = v124[1];
          *(v68 + v225) = 7;

LABEL_229:

          goto LABEL_247;
        case 8u:
          v185 = v19;
          (*(v198 + 16))(v68, v64, v199);
          v100 = ((v68 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
          v101 = (&v64[v192 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v100 = *v101;
          v100[1] = v101[1];
          v102 = ((v100 + v193) & v191);
          v103 = ((v101 + v193) & v191);

          if (v190 == v194)
          {
            v104 = v220;
            if (!__swift_getEnumTagSinglePayload(v103, v190, v208))
            {
              v105 = v39;
              v106 = ((v103 + v220) & v39);
              goto LABEL_236;
            }

LABEL_218:
            memcpy(v102, v103, v21);
LABEL_245:
            v150 = v205;
            goto LABEL_246;
          }

          v104 = v220;
          v105 = v39;
          v106 = ((v103 + v220) & v39);
          if (v187 != v194)
          {
            v146 = *(((v106 + v185) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v146 >= 0xFFFFFFFF)
            {
              LODWORD(v146) = -1;
            }

            if ((v146 + 1) < 2)
            {
              goto LABEL_236;
            }

            goto LABEL_218;
          }

          if (v203 >= 2 && __swift_getEnumTagSinglePayload(v106, v203, v209) >= 2)
          {
            goto LABEL_218;
          }

LABEL_236:
          (*(v216 + 16))(v102, v103, v208);
          v147 = ((v102 + v104) & v105);
          if (__swift_getEnumTagSinglePayload(v106, 1, v209))
          {
            memcpy(v147, v106, v205);
          }

          else
          {
            (*(v189 + 16))(v147, v106, v209);
            __swift_storeEnumTagSinglePayload(v147, 0, 1, v209);
          }

          v150 = v188;
          v151 = ((v147 + v185) & 0xFFFFFFFFFFFFFFF8);
          v152 = ((v106 + v185) & 0xFFFFFFFFFFFFFFF8);
          *v151 = *v152;
          v151[1] = v152[1];
          v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = *v154;
          *(v153 + 4) = *(v154 + 4);
          *v153 = v155;

          if (!v203)
          {
            goto LABEL_245;
          }

LABEL_246:
          v156 = (((v202 + v150 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v157 = ((v102 + v156 + 7) & 0xFFFFFFFFFFFFFFF8);
          v158 = *((v103 + v156 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v157 = v158;
          *(v68 + v225) = 8;
          v159 = v158;
          v3 = v222;
LABEL_247:
          v160 = (&v64[v221 + 7] & 0xFFFFFFFFFFFFFFF8);
          v161 = ((v68 + v221 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v161 = *v160;
          v162 = (v161 + 15) & 0xFFFFFFFFFFFFFFF8;
          v163 = (v160 + 15) & 0xFFFFFFFFFFFFFFF8;
          v164 = *(v163 + 24);

          if (v164 < 0xFFFFFFFF)
          {
            v165 = *v163;
            v166 = *(v163 + 16);
            *(v162 + 32) = *(v163 + 32);
            *v162 = v165;
            *(v162 + 16) = v166;
          }

          else
          {
            *(v162 + 24) = v164;
            *(v162 + 32) = *(v163 + 32);
            (**(v164 - 8))(v162, v163, v164);
          }

          *(v162 + 40) = *(v163 + 40);
          v3[v32] = 0;
          return v3;
        case 9u:
          (*(v196 + 16))(v68, v64, v197);
          v86 = 9;
LABEL_188:
          *(v68 + v225) = v86;
          goto LABEL_247;
        default:
          memcpy(v68, v64, v221);
          goto LABEL_247;
      }

    case 1u:
      (*(v210 + 16))(v3, v36, v211);
      v77 = (&v36[v218] & v38);
      v78 = v77[v225];
      v79 = v78 - 10;
      if (v78 < 0xA)
      {
        v81 = (&v3[v218] & v38);
      }

      else
      {
        if (v225 <= 3)
        {
          v80 = v225;
        }

        else
        {
          v80 = 4;
        }

        v81 = (&v3[v218] & v38);
        switch(v80)
        {
          case 1:
            v82 = *v77;
            goto LABEL_180;
          case 2:
            v82 = *v77;
            goto LABEL_180;
          case 3:
            v82 = *v77 | (v77[2] << 16);
            goto LABEL_180;
          case 4:
            v82 = *v77;
LABEL_180:
            if (v225 < 4)
            {
              v78 = (v82 | (v79 << (8 * v225))) + 10;
            }

            else
            {
              v78 = v82 + 10;
            }

            break;
          default:
            goto LABEL_183;
        }
      }

      break;
    case 2u:
      v70 = v36[v30];
      v71 = v70 - 2;
      if (v70 >= 2)
      {
        if (v30 <= 3)
        {
          v72 = v30;
        }

        else
        {
          v72 = 4;
        }

        switch(v72)
        {
          case 1:
            v73 = *v36;
            goto LABEL_162;
          case 2:
            v73 = *v36;
            goto LABEL_162;
          case 3:
            v73 = *v36 | (v36[2] << 16);
            goto LABEL_162;
          case 4:
            v73 = *v36;
LABEL_162:
            if (v30 < 4)
            {
              v70 = (v73 | (v71 << v204)) + 2;
            }

            else
            {
              v70 = v73 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v70 == 1)
      {
        v84 = *v36;
        v85 = *v36;
        *v3 = v84;
        v3[8] = v36[8];
        v3[v30] = 1;
      }

      else if (v70)
      {
        memcpy(v3, v36, v30 + 1);
      }

      else
      {
        (*(v213 + 16))(v3, v36, v215);
        v3[v30] = 0;
      }

      v76 = 2;
      goto LABEL_259;
    case 3u:
      v74 = *v36;
      v75 = *v36;
      *v3 = v74;
      v3[8] = v36[8];
      v76 = 3;
      goto LABEL_259;
    default:

      return memcpy(v3, v36, v32 + 1);
  }

LABEL_183:
  switch(v78)
  {
    case 0u:
      (*(v206 + 16))(v81, v77, v207);
      *(v81 + v225) = 0;
      goto LABEL_255;
    case 1u:
      (*(v206 + 16))(v81, v77, v207);
      *((v81 + v195) & 0xFFFFFFFFFFFFFFF8) = *(&v77[v195] & 0xFFFFFFFFFFFFFFF8);
      *(v81 + v225) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v81 = *v77;
      v81[1] = *(v77 + 1);
      v81[2] = *(v77 + 2);
      *(v81 + v225) = 2;

      goto LABEL_232;
    case 3u:
      *v81 = *v77;
      *(v81 + v225) = 3;
      swift_unknownObjectRetain();
      goto LABEL_255;
    case 4u:
      (*(v200 + 16))(v81, v77, v201);
      v87 = 4;
      goto LABEL_190;
    case 5u:
      v94 = *v77;
      *v81 = *v77;
      *(v81 + v225) = 5;
      v95 = v94;
      goto LABEL_255;
    case 6u:
      (*(v216 + 16))(v81, v77, v208);
      v98 = ((v81 + v220) & v39);
      v99 = (&v77[v220] & v39);
      if (__swift_getEnumTagSinglePayload(v99, 1, v209))
      {
        memcpy(v98, v99, v205);
      }

      else
      {
        (*(v189 + 16))(v98, v99, v209);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v209);
      }

      v141 = ((v98 + v19) & 0xFFFFFFFFFFFFFFF8);
      v142 = ((v99 + v19) & 0xFFFFFFFFFFFFFFF8);
      *v141 = *v142;
      v141[1] = v142[1];
      v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
      v144 = (v142 + 19) & 0xFFFFFFFFFFFFFFF8;
      v145 = *v144;
      *(v143 + 4) = *(v144 + 4);
      *v143 = v145;
      *(v81 + v225) = 6;
      goto LABEL_232;
    case 7u:
      (*(v216 + 16))(v81, v77, v208);
      v90 = ((v81 + v220) & v39);
      v91 = (&v77[v220] & v39);
      if (__swift_getEnumTagSinglePayload(v91, 1, v209))
      {
        memcpy(v90, v91, v205);
      }

      else
      {
        (*(v189 + 16))(v90, v91, v209);
        __swift_storeEnumTagSinglePayload(v90, 0, 1, v209);
      }

      v125 = ((v90 + v19) & 0xFFFFFFFFFFFFFFF8);
      v126 = ((v91 + v19) & 0xFFFFFFFFFFFFFFF8);
      *v125 = *v126;
      v125[1] = v126[1];
      v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
      v128 = (v126 + 19) & 0xFFFFFFFFFFFFFFF8;
      v129 = *v128;
      *(v127 + 4) = *(v128 + 4);
      *v127 = v129;
      v130 = ((v81 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      v131 = (&v77[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
      v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
      v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v134 = *v135;
      v134[1] = v135[1];
      *(v81 + v225) = 7;

LABEL_232:

      goto LABEL_255;
    case 8u:
      v186 = v19;
      (*(v198 + 16))(v81, v77, v199);
      v107 = ((v81 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
      v108 = (&v77[v192 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v107 = *v108;
      v107[1] = v108[1];
      v109 = ((v107 + v193) & v191);
      v110 = ((v108 + v193) & v191);

      if (v190 == v194)
      {
        v111 = v220;
        if (!__swift_getEnumTagSinglePayload(v110, v190, v208))
        {
          v112 = v39;
          v113 = ((v110 + v220) & v39);
          goto LABEL_241;
        }
      }

      else
      {
        v111 = v220;
        v112 = v39;
        v113 = ((v110 + v220) & v39);
        if (v187 == v194)
        {
          if (v203 < 2 || __swift_getEnumTagSinglePayload(v113, v203, v209) < 2)
          {
            goto LABEL_241;
          }
        }

        else
        {
          v148 = *(((v113 + v186) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v148 >= 0xFFFFFFFF)
          {
            LODWORD(v148) = -1;
          }

          if ((v148 + 1) < 2)
          {
LABEL_241:
            (*(v216 + 16))(v109, v110, v208);
            v149 = ((v109 + v111) & v112);
            if (__swift_getEnumTagSinglePayload(v113, 1, v209))
            {
              memcpy(v149, v113, v205);
            }

            else
            {
              (*(v189 + 16))(v149, v113, v209);
              __swift_storeEnumTagSinglePayload(v149, 0, 1, v209);
            }

            v167 = v188;
            v168 = ((v149 + v186) & 0xFFFFFFFFFFFFFFF8);
            v169 = ((v113 + v186) & 0xFFFFFFFFFFFFFFF8);
            *v168 = *v169;
            v168[1] = v169[1];
            v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
            v171 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
            v172 = *v171;
            *(v170 + 4) = *(v171 + 4);
            *v170 = v172;

            if (v203)
            {
LABEL_254:
              v173 = (((v202 + v167 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              v174 = ((v109 + v173 + 7) & 0xFFFFFFFFFFFFFFF8);
              v175 = *((v110 + v173 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v174 = v175;
              *(v81 + v225) = 8;
              v176 = v175;
              v3 = v222;
LABEL_255:
              v177 = (&v77[v221 + 7] & 0xFFFFFFFFFFFFFFF8);
              v178 = ((v81 + v221 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v178 = *v177;
              v179 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
              v180 = (v177 + 15) & 0xFFFFFFFFFFFFFFF8;
              v181 = *(v180 + 24);

              if (v181 < 0xFFFFFFFF)
              {
                v182 = *v180;
                v183 = *(v180 + 16);
                *(v179 + 32) = *(v180 + 32);
                *v179 = v182;
                *(v179 + 16) = v183;
              }

              else
              {
                *(v179 + 24) = v181;
                *(v179 + 32) = *(v180 + 32);
                (**(v181 - 8))(v179, v180, v181);
              }

              *(v179 + 40) = *(v180 + 40);
              v76 = 1;
LABEL_259:
              v3[v32] = v76;
              return v3;
            }

LABEL_253:
            v167 = v205;
            goto LABEL_254;
          }
        }
      }

      memcpy(v109, v110, v21);
      goto LABEL_253;
    case 9u:
      (*(v196 + 16))(v81, v77, v197);
      v87 = 9;
LABEL_190:
      *(v81 + v225) = v87;
      goto LABEL_255;
    default:
      memcpy(v81, v77, v221);
      goto LABEL_255;
  }
}

_BYTE *sub_1DCF8B65C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v199 = *(sub_1DD0DB04C() - 8);
  v216 = *(v199 + 64);
  v196 = sub_1DD0DC76C();
  v206 = *(v196 - 8);
  v195 = v206;
  v3 = *(v206 + 80);
  v191 = sub_1DD0DB1EC();
  v208 = *(v191 - 8);
  v190 = v208;
  v200 = *(v208 + 80) | v3;
  v198 = sub_1DD0DB4BC();
  v204 = *(v198 - 8);
  v215 = v204;
  v4 = *(v204 + 80) & 0xF8;
  v197 = sub_1DD0DB3EC();
  v5 = *(v197 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v189 = sub_1DD0DD12C();
  v202 = *(v189 - 8);
  v188 = v202;
  v8 = *(v202 + 80);
  v187 = sub_1DD0DD08C();
  v9 = v206;
  v186 = *(v187 - 8);
  v10 = (v200 | (v8 | *(v186 + 80))) & 0xF8 | v7;
  v207 = v216 + v10;
  v11 = (v216 + v10) & ~v10;
  v12 = *(v9 + 64);
  v185 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v208 + 64))
  {
    v12 = *(v208 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v205 = *(v204 + 64) + v6;
  v209 = v6;
  v182 = v5;
  v14 = *(v5 + 84);
  v180 = *(v5 + 64);
  if (v14)
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = v15 + 7;
  v192 = v205 & ~v6;
  v17 = (v15 + 7 + v192) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v201 = v13;
  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v20 = v17 + 31;
  v194 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v194 > v19)
  {
    v19 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v21 = *(v202 + 64);
  v183 = v7 + 16;
  v22 = v7;
  v23 = (v7 + 16 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v24 = *(v215 + 84);
  v181 = v14;
  v25 = v14 != 0;
  v26 = v14 - 1;
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v24)
  {
    v28 = *(v215 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v28 = 2147483646;
  }

  v184 = v28;
  v29 = ((v20 + v23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v203 = v29;
  if (v29 <= v19)
  {
    v29 = v19;
  }

  v30 = *(*(v187 - 8) + 64);
  v193 = v30;
  if (v30 <= v29)
  {
    v30 = v29;
  }

  v217 = v30;
  v31 = ((((v30 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 9uLL)
  {
    v33 = 9;
  }

  else
  {
    v33 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v33 + 1 > v31)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v31;
  }

  if (v34 <= 9)
  {
    v35 = 9;
  }

  else
  {
    v35 = v34;
  }

  v36 = a2[v35];
  v37 = v36 - 4;
  if (v36 >= 4)
  {
    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    switch(v38)
    {
      case 1:
        v39 = *a2;
        goto LABEL_46;
      case 2:
        v39 = *a2;
        goto LABEL_46;
      case 3:
        v39 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v39 = *a2;
LABEL_46:
        if (v35 < 4)
        {
          v39 |= v37 << (8 * v35);
        }

        v36 = v39 + 4;
        break;
      default:
        break;
    }
  }

  v212 = v15;
  v40 = ~v10;
  v41 = ~v22;
  switch(v36)
  {
    case 0u:
      v42 = v35;
      v43 = ~v209;
      v178 = v16;
      v210 = v217 + 1;
      v44 = a1;
      (*(v199 + 32))(a1);
      v45 = (&a1[v207] & v40);
      v46 = (&a2[v207] & v40);
      v47 = v46[v217];
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v217 <= 3)
        {
          v49 = v217;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v46;
            goto LABEL_91;
          case 2:
            v50 = *v46;
            goto LABEL_91;
          case 3:
            v50 = *(&a2[v207] & v40) | (*((&a2[v207] & v40) + 2) << 16);
            goto LABEL_91;
          case 4:
            v50 = *v46;
LABEL_91:
            if (v217 < 4)
            {
              v47 = (v50 | (v48 << (8 * v217))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          (*(v195 + 32))(v45, v46, v196);
          v45 = (&a1[v207] & v40);
          *(v45 + v217) = 0;
          goto LABEL_148;
        case 1u:
          v66 = &a1[v207] & v40;
          v67 = v217;
          (*(v195 + 32))(v45, v46, v196);
          v45 = v66;
          *((v185 + v66) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v185] & 0xFFFFFFFFFFFFFFF8);
          v68 = 1;
          goto LABEL_115;
        case 2u:
          v72 = *v46;
          *((&a1[v207] & v40) + 0x10) = *((&a2[v207] & v40) + 0x10);
          *v45 = v72;
          v73 = 2;
          goto LABEL_119;
        case 3u:
          *v45 = *v46;
          v73 = 3;
          goto LABEL_119;
        case 4u:
          v66 = &a1[v207] & v40;
          v67 = v217;
          (*(v190 + 32))(v45, v46, v191);
          v45 = v66;
          v68 = 4;
          goto LABEL_115;
        case 5u:
          *v45 = *v46;
          v73 = 5;
LABEL_119:
          *(v45 + v217) = v73;
          goto LABEL_148;
        case 6u:
          (*(v215 + 32))(v45, v46, v198);
          v82 = &a1[v207] & v40;
          v83 = ((v205 + v82) & v43);
          v84 = (&v46[v205] & v43);
          if (__swift_getEnumTagSinglePayload(v84, 1, v197))
          {
            memcpy(v83, v84, v212);
          }

          else
          {
            (*(v182 + 32))(v83, v84, v197);
            __swift_storeEnumTagSinglePayload(v83, 0, 1, v197);
          }

          v136 = ((v83 + v178) & 0xFFFFFFFFFFFFFFF8);
          v137 = ((v84 + v178) & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v138 = (v136 + 19) & 0xFFFFFFFFFFFFFFF8;
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = *v139;
          *(v138 + 4) = *(v139 + 4);
          *v138 = v140;
          v45 = v82;
          *(v82 + v217) = 6;
          goto LABEL_148;
        case 7u:
          (*(v215 + 32))(v45, v46, v198);
          v76 = &a1[v207] & v40;
          v77 = ((v205 + v76) & v43);
          v78 = (&v46[v205] & v43);
          if (__swift_getEnumTagSinglePayload(v78, 1, v197))
          {
            memcpy(v77, v78, v212);
          }

          else
          {
            (*(v182 + 32))(v77, v78, v197);
            __swift_storeEnumTagSinglePayload(v77, 0, 1, v197);
          }

          v118 = ((v77 + v178) & 0xFFFFFFFFFFFFFFF8);
          v119 = ((v78 + v178) & 0xFFFFFFFFFFFFFFF8);
          *v118 = *v119;
          v120 = (v118 + 19) & 0xFFFFFFFFFFFFFFF8;
          v121 = (v119 + 19) & 0xFFFFFFFFFFFFFFF8;
          v122 = *v121;
          *(v120 + 4) = *(v121 + 4);
          *v120 = v122;
          v45 = v76;
          v123 = ((v18 + v76 + 7) & 0xFFFFFFFFFFFFFFF8);
          v124 = (&v46[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v123 = *v124;
          v125 = ((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
          v126 = ((v124 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v125 = *v126;
          *((v125 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
          *(v76 + v217) = 7;
          goto LABEL_148;
        case 8u:
          v218 = &a1[v207] & v40;
          (*(v188 + 32))(v45, v46, v189);
          v90 = ((v21 + v218 + 7) & 0xFFFFFFFFFFFFFFF8);
          v91 = (&v46[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v90 = *v91;
          v92 = ((v90 + v183) & v41);
          v93 = ((v91 + v183) & v41);
          if (v24 == v184)
          {
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v91 + v183) & v41, v24, v198);
            v95 = v205;
            if (!EnumTagSinglePayload)
            {
              v96 = ((v93 + v205) & v43);
LABEL_158:
              v104 = v197;
              goto LABEL_159;
            }

LABEL_137:
            memcpy(v92, v93, v18);
            v88 = v210;
            v105 = v212;
            v106 = v201;
            v107 = v203;
            v109 = v193;
            v108 = v194;
            v110 = v192;
LABEL_169:
            v162 = v105;
            goto LABEL_170;
          }

          v95 = v205;
          v96 = ((v93 + v205) & v43);
          if (v27 != v184)
          {
            v158 = *(((v96 + v178) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v158 >= 0xFFFFFFFF)
            {
              LODWORD(v158) = -1;
            }

            if ((v158 + 1) < 2)
            {
              goto LABEL_158;
            }

            goto LABEL_137;
          }

          v104 = v197;
          if (v181 >= 2)
          {
            if (__swift_getEnumTagSinglePayload((v93 + v205) & v43, v181, v197) < 2)
            {
              goto LABEL_158;
            }

            goto LABEL_137;
          }

LABEL_159:
          (*(v215 + 32))(v92, v93, v198);
          v159 = ((v92 + v95) & v43);
          if (__swift_getEnumTagSinglePayload(v96, 1, v104))
          {
            memcpy(v159, v96, v212);
          }

          else
          {
            (*(v182 + 32))(v159, v96, v104);
            __swift_storeEnumTagSinglePayload(v159, 0, 1, v104);
          }

          v106 = v201;
          v107 = v203;
          v109 = v193;
          v108 = v194;
          v110 = v192;
          v162 = v180;
          v163 = ((v159 + v178) & 0xFFFFFFFFFFFFFFF8);
          v164 = ((v96 + v178) & 0xFFFFFFFFFFFFFFF8);
          *v163 = *v164;
          v165 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = *v165;
          v167 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v167 + 4) = *(v165 + 4);
          *v167 = v166;
          v88 = v210;
          v105 = v212;
          if (!v181)
          {
            goto LABEL_169;
          }

LABEL_170:
          v168 = (((v110 + 7 + v162) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v92 + v168 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v93 + v168 + 7) & 0xFFFFFFFFFFFFFFF8);
          v169 = (((v110 + 7 + v105) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v169 <= v106)
          {
            v169 = v106;
          }

          if (v108 > v169)
          {
            v169 = v108;
          }

          if (v107 > v169)
          {
            v169 = v107;
          }

          if (v109 > v169)
          {
            v169 = v109;
          }

          v45 = v218;
          *(v218 + v169) = 8;
LABEL_149:
          v141 = ((v45 + v88 + 7) & 0xFFFFFFFFFFFFFFF8);
          v142 = (&v46[v88 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v141 = *v142;
          v143 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
          v144 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
          v145 = *v144;
          v146 = *(v144 + 16);
          *(v143 + 32) = *(v144 + 32);
          *v143 = v145;
          *(v143 + 16) = v146;
          *(v143 + 40) = *(v144 + 40);
          a1[v42] = 0;
          return v44;
        case 9u:
          v66 = &a1[v207] & v40;
          v67 = v217;
          (*(v186 + 32))(v45, v46, v187);
          v45 = v66;
          v68 = 9;
LABEL_115:
          *(v66 + v67) = v68;
LABEL_148:
          v88 = v217 + 1;
          goto LABEL_149;
        default:
          memcpy(v45, v46, v210);
          v45 = (&a1[v207] & v40);
          v88 = v217 + 1;
          goto LABEL_149;
      }

    case 1u:
      v56 = v35;
      v57 = ~v209;
      v179 = v16;
      v211 = v217 + 1;
      v44 = a1;
      (*(v199 + 32))(a1);
      v58 = (&a1[v207] & v40);
      v59 = (&a2[v207] & v40);
      v60 = v59[v217];
      v61 = v60 - 10;
      if (v60 >= 0xA)
      {
        if (v217 <= 3)
        {
          v62 = v217;
        }

        else
        {
          v62 = 4;
        }

        switch(v62)
        {
          case 1:
            v63 = *v59;
            goto LABEL_97;
          case 2:
            v63 = *v59;
            goto LABEL_97;
          case 3:
            v63 = *(&a2[v207] & v40) | (*((&a2[v207] & v40) + 2) << 16);
            goto LABEL_97;
          case 4:
            v63 = *v59;
LABEL_97:
            if (v217 < 4)
            {
              v60 = (v63 | (v61 << (8 * v217))) + 10;
            }

            else
            {
              v60 = v63 + 10;
            }

            break;
          default:
            goto LABEL_100;
        }
      }

      break;
    case 2u:
      v51 = a2[v33];
      v52 = v51 - 2;
      v44 = a1;
      if (v51 >= 2)
      {
        if (v33 <= 3)
        {
          v53 = v33;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *a2;
            goto LABEL_77;
          case 2:
            v54 = *a2;
            goto LABEL_77;
          case 3:
            v54 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v54 = *a2;
LABEL_77:
            if (v33 < 4)
            {
              v51 = (v54 | (v52 << (8 * v33))) + 2;
            }

            else
            {
              v51 = v54 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v51 == 1)
      {
        *a1 = *a2;
        a1[8] = a2[8];
        a1[v33] = 1;
      }

      else
      {
        v65 = v35;
        if (v51)
        {
          memcpy(a1, a2, v33 + 1);
        }

        else
        {
          (*(*(AssociatedTypeWitness - 8) + 32))(a1);
          a1[v33] = 0;
        }

        v35 = v65;
      }

      v55 = 2;
      goto LABEL_87;
    case 3u:
      v44 = a1;
      *a1 = *a2;
      a1[8] = a2[8];
      v55 = 3;
LABEL_87:
      v44[v35] = v55;
      return v44;
    default:

      return memcpy(a1, a2, v35 + 1);
  }

LABEL_100:
  switch(v60)
  {
    case 0u:
      (*(v195 + 32))(v58, v59, v196);
      v58 = (&a1[v207] & v40);
      *(v58 + v217) = 0;
      goto LABEL_152;
    case 1u:
      v69 = &a1[v207] & v40;
      v70 = v217;
      (*(v195 + 32))(v58, v59, v196);
      v58 = v69;
      *((v185 + v69) & 0xFFFFFFFFFFFFFFF8) = *(&v59[v185] & 0xFFFFFFFFFFFFFFF8);
      v71 = 1;
      goto LABEL_117;
    case 2u:
      v74 = *v59;
      *((&a1[v207] & v40) + 0x10) = *((&a2[v207] & v40) + 0x10);
      *v58 = v74;
      v75 = 2;
      goto LABEL_121;
    case 3u:
      *v58 = *v59;
      v75 = 3;
      goto LABEL_121;
    case 4u:
      v69 = &a1[v207] & v40;
      v70 = v217;
      (*(v190 + 32))(v58, v59, v191);
      v58 = v69;
      v71 = 4;
      goto LABEL_117;
    case 5u:
      *v58 = *v59;
      v75 = 5;
LABEL_121:
      *(v58 + v217) = v75;
      goto LABEL_152;
    case 6u:
      (*(v215 + 32))(v58, v59, v198);
      v85 = &a1[v207] & v40;
      v86 = ((v205 + v85) & v57);
      v87 = (&v59[v205] & v57);
      if (__swift_getEnumTagSinglePayload(v87, 1, v197))
      {
        memcpy(v86, v87, v212);
      }

      else
      {
        (*(v182 + 32))(v86, v87, v197);
        __swift_storeEnumTagSinglePayload(v86, 0, 1, v197);
      }

      v147 = ((v86 + v179) & 0xFFFFFFFFFFFFFFF8);
      v148 = ((v87 + v179) & 0xFFFFFFFFFFFFFFF8);
      *v147 = *v148;
      v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = *v150;
      *(v149 + 4) = *(v150 + 4);
      *v149 = v151;
      v58 = v85;
      *(v85 + v217) = 6;
      goto LABEL_152;
    case 7u:
      (*(v215 + 32))(v58, v59, v198);
      v79 = &a1[v207] & v40;
      v80 = ((v205 + v79) & v57);
      v81 = (&v59[v205] & v57);
      if (__swift_getEnumTagSinglePayload(v81, 1, v197))
      {
        memcpy(v80, v81, v212);
      }

      else
      {
        (*(v182 + 32))(v80, v81, v197);
        __swift_storeEnumTagSinglePayload(v80, 0, 1, v197);
      }

      v127 = ((v80 + v179) & 0xFFFFFFFFFFFFFFF8);
      v128 = ((v81 + v179) & 0xFFFFFFFFFFFFFFF8);
      *v127 = *v128;
      v129 = (v127 + 19) & 0xFFFFFFFFFFFFFFF8;
      v130 = (v128 + 19) & 0xFFFFFFFFFFFFFFF8;
      v131 = *v130;
      *(v129 + 4) = *(v130 + 4);
      *v129 = v131;
      v58 = v79;
      v132 = ((v18 + v79 + 7) & 0xFFFFFFFFFFFFFFF8);
      v133 = (&v59[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
      v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v134 = *v135;
      *((v134 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v79 + v217) = 7;
      goto LABEL_152;
    case 8u:
      v219 = &a1[v207] & v40;
      (*(v188 + 32))(v58, v59, v189);
      v97 = ((v21 + v219 + 7) & 0xFFFFFFFFFFFFFFF8);
      v98 = (&v59[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v97 = *v98;
      v99 = ((v97 + v183) & v41);
      v100 = ((v98 + v183) & v41);
      if (v24 == v184)
      {
        v101 = __swift_getEnumTagSinglePayload((v98 + v183) & v41, v24, v198);
        v102 = v205;
        if (!v101)
        {
          v103 = ((v100 + v205) & v57);
          goto LABEL_164;
        }
      }

      else
      {
        v102 = v205;
        v103 = ((v100 + v205) & v57);
        if (v27 == v184)
        {
          v111 = v197;
          if (v181 < 2)
          {
            goto LABEL_165;
          }

          if (__swift_getEnumTagSinglePayload((v100 + v205) & v57, v181, v197) < 2)
          {
LABEL_164:
            v111 = v197;
LABEL_165:
            (*(v215 + 32))(v99, v100, v198);
            v161 = ((v99 + v102) & v57);
            if (__swift_getEnumTagSinglePayload(v103, 1, v111))
            {
              memcpy(v161, v103, v212);
            }

            else
            {
              (*(v182 + 32))(v161, v103, v111);
              __swift_storeEnumTagSinglePayload(v161, 0, 1, v111);
            }

            v113 = v201;
            v114 = v203;
            v116 = v193;
            v115 = v194;
            v117 = v192;
            v170 = v180;
            v171 = ((v161 + v179) & 0xFFFFFFFFFFFFFFF8);
            v172 = ((v103 + v179) & 0xFFFFFFFFFFFFFFF8);
            *v171 = *v172;
            v173 = (v172 + 19) & 0xFFFFFFFFFFFFFFF8;
            v174 = *v173;
            v175 = (v171 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v175 + 4) = *(v173 + 4);
            *v175 = v174;
            v89 = v211;
            v112 = v212;
            if (v181)
            {
LABEL_182:
              v176 = (((v117 + 7 + v170) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v99 + v176 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v100 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
              v177 = (((v117 + 7 + v112) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v177 <= v113)
              {
                v177 = v113;
              }

              if (v115 > v177)
              {
                v177 = v115;
              }

              if (v114 > v177)
              {
                v177 = v114;
              }

              if (v116 > v177)
              {
                v177 = v116;
              }

              v58 = v219;
              *(v219 + v177) = 8;
LABEL_153:
              v152 = ((v58 + v89 + 7) & 0xFFFFFFFFFFFFFFF8);
              v153 = (&v59[v89 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v152 = *v153;
              v154 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
              v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF8;
              v156 = *v155;
              v157 = *(v155 + 16);
              *(v154 + 32) = *(v155 + 32);
              *v154 = v156;
              *(v154 + 16) = v157;
              *(v154 + 40) = *(v155 + 40);
              a1[v56] = 1;
              return v44;
            }

LABEL_181:
            v170 = v112;
            goto LABEL_182;
          }
        }

        else
        {
          v160 = *(((v103 + v179) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v160 >= 0xFFFFFFFF)
          {
            LODWORD(v160) = -1;
          }

          if ((v160 + 1) < 2)
          {
            goto LABEL_164;
          }
        }
      }

      memcpy(v99, v100, v18);
      v89 = v211;
      v112 = v212;
      v113 = v201;
      v114 = v203;
      v116 = v193;
      v115 = v194;
      v117 = v192;
      goto LABEL_181;
    case 9u:
      v69 = &a1[v207] & v40;
      v70 = v217;
      (*(v186 + 32))(v58, v59, v187);
      v58 = v69;
      v71 = 9;
LABEL_117:
      *(v69 + v70) = v71;
LABEL_152:
      v89 = v217 + 1;
      goto LABEL_153;
    default:
      memcpy(v58, v59, v211);
      v58 = (&a1[v207] & v40);
      v89 = v217 + 1;
      goto LABEL_153;
  }
}

unsigned __int8 *sub_1DCF8CAA0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v203 = *(v4 - 8);
  v204 = v4;
  v214 = *(v203 + 64);
  v200 = sub_1DD0DC76C();
  v210 = *(v200 - 8);
  v199 = v210;
  v5 = *(v210 + 80);
  v194 = sub_1DD0DB1EC();
  v212 = *(v194 - 8);
  v193 = v212;
  v205 = *(v212 + 80) | v5;
  v201 = sub_1DD0DB4BC();
  v209 = *(v201 - 8);
  v217 = v3;
  v6 = *(v209 + 80) & 0xF8;
  v202 = sub_1DD0DB3EC();
  v7 = *(v202 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v192 = sub_1DD0DD12C();
  v207 = *(v192 - 8);
  v191 = v207;
  v10 = *(v207 + 80);
  v190 = sub_1DD0DD08C();
  v189 = *(v190 - 8);
  v11 = (v205 | (v10 | *(v189 + 80))) & 0xF8 | v9;
  v215 = v214 + v11;
  v12 = *(v210 + 64);
  v188 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v212 + 64))
  {
    v12 = *(v212 + 64);
  }

  if (v12 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = v12;
  }

  v213 = *(v209 + 64) + v8;
  v14 = v8;
  v182 = v7;
  v15 = *(v7 + 84);
  v16 = *(v7 + 64);
  v181 = v16;
  if (!v15)
  {
    ++v16;
  }

  v198 = v16;
  v206 = v16 + 7;
  v195 = v213 & ~v8;
  v17 = (v16 + 7 + v195) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  v180 = v13;
  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v20 = v17 + 31;
  v179 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v179 > v19)
  {
    v19 = (((((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v3 = v217;
  v185 = *(v207 + 64);
  v186 = v9 + 16;
  v21 = v9;
  v196 = *(v7 + 84);
  v22 = v15 != 0;
  v23 = v15 - 1;
  if (!v22)
  {
    v23 = 0;
  }

  v176 = v23;
  v183 = *(v209 + 84);
  if (v23 <= v183)
  {
    v23 = *(v209 + 84);
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v23 = 2147483646;
  }

  v187 = v23;
  v24 = ((v20 + ((v9 + 16 + ((v185 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v178 = v24;
  if (v24 <= v19)
  {
    v24 = v19;
  }

  v177 = *(*(v190 - 8) + 64);
  if (v177 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = *(*(v190 - 8) + 64);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = AssociatedTypeWitness;
  v208 = *(AssociatedTypeWitness - 8);
  if (*(v208 + 64) <= 9uLL)
  {
    v28 = 9;
  }

  else
  {
    v28 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v28 + 1 > ((((v25 + (v215 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = ((((v25 + (v215 & ~v11) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v29 <= 9)
  {
    v30 = 9;
  }

  else
  {
    v30 = v29;
  }

  v31 = v217[v30];
  v32 = v31 - 4;
  if (v31 < 4)
  {
    v34 = a2;
  }

  else
  {
    if (v30 <= 3)
    {
      v33 = v30;
    }

    else
    {
      v33 = 4;
    }

    v34 = a2;
    switch(v33)
    {
      case 1:
        v35 = *v217;
        goto LABEL_46;
      case 2:
        v35 = *v217;
        goto LABEL_46;
      case 3:
        v35 = *v217 | (v217[2] << 16);
        goto LABEL_46;
      case 4:
        v35 = *v217;
LABEL_46:
        if (v30 < 4)
        {
          v35 |= v32 << (8 * v30);
        }

        v31 = v35 + 4;
        break;
      default:
        break;
    }
  }

  v216 = v25 + 1;
  v36 = ~v11;
  v211 = ~v14;
  v184 = ~v21;
  v197 = 8 * v28;
  switch(v31)
  {
    case 0u:
      v175 = AssociatedTypeWitness;
      (*(v203 + 8))(v217, v204);
      v37 = (&v217[v215] & v36);
      v38 = v37[v25];
      v39 = v38 - 10;
      if (v38 >= 0xA)
      {
        if (v25 <= 3)
        {
          v40 = v25;
        }

        else
        {
          v40 = 4;
        }

        switch(v40)
        {
          case 1:
            v41 = *v37;
            goto LABEL_83;
          case 2:
            v41 = *v37;
            goto LABEL_83;
          case 3:
            v41 = *v37 | (*((&v217[v215] & v36) + 2) << 16);
            goto LABEL_83;
          case 4:
            v41 = *v37;
LABEL_83:
            if (v25 < 4)
            {
              v38 = (v41 | (v39 << (8 * v25))) + 10;
            }

            else
            {
              v38 = v41 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v38)
      {
        case 0u:
          goto LABEL_92;
        case 1u:
          goto LABEL_101;
        case 2u:
          goto LABEL_96;
        case 3u:
          goto LABEL_97;
        case 4u:
          goto LABEL_93;
        case 5u:
          goto LABEL_102;
        case 6u:
          goto LABEL_103;
        case 7u:
          goto LABEL_98;
        case 8u:
          goto LABEL_106;
        case 9u:
          goto LABEL_94;
        default:
          goto LABEL_121;
      }

      goto LABEL_121;
    case 1u:
      v175 = AssociatedTypeWitness;
      (*(v203 + 8))(v217, v204);
      v37 = (&v217[v215] & v36);
      v46 = v37[v25];
      v47 = v46 - 10;
      if (v46 >= 0xA)
      {
        if (v25 <= 3)
        {
          v48 = v25;
        }

        else
        {
          v48 = 4;
        }

        switch(v48)
        {
          case 1:
            v49 = *v37;
            goto LABEL_88;
          case 2:
            v49 = *v37;
            goto LABEL_88;
          case 3:
            v49 = *v37 | (*((&v217[v215] & v36) + 2) << 16);
            goto LABEL_88;
          case 4:
            v49 = *v37;
LABEL_88:
            if (v25 < 4)
            {
              v46 = (v49 | (v47 << (8 * v25))) + 10;
            }

            else
            {
              v46 = v49 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 2u:
      v42 = v217[v28];
      v43 = v42 - 2;
      if (v42 >= 2)
      {
        if (v28 <= 3)
        {
          v44 = v28;
        }

        else
        {
          v44 = 4;
        }

        switch(v44)
        {
          case 1:
            v45 = *v217;
            goto LABEL_75;
          case 2:
            v45 = *v217;
            goto LABEL_75;
          case 3:
            v45 = *v217 | (v217[2] << 16);
            goto LABEL_75;
          case 4:
            v45 = *v217;
LABEL_75:
            if (v28 < 4)
            {
              v42 = (v45 | (v43 << v197)) + 2;
            }

            else
            {
              v42 = v45 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v42 == 1)
      {
        goto LABEL_81;
      }

      if (!v42)
      {
        (*(v208 + 8))(v217, AssociatedTypeWitness);
      }

      goto LABEL_123;
    case 3u:
LABEL_81:

      goto LABEL_123;
    default:
      goto LABEL_123;
  }

LABEL_91:
  switch(v46)
  {
    case 0u:
LABEL_92:
      v51 = v199;
      v50 = v200;
      goto LABEL_95;
    case 1u:
LABEL_101:
      (*(v199 + 8))(v37, v200);

      goto LABEL_121;
    case 2u:
LABEL_96:

      goto LABEL_105;
    case 3u:
LABEL_97:
      swift_unknownObjectRelease();
      goto LABEL_121;
    case 4u:
LABEL_93:
      v51 = v193;
      v50 = v194;
      goto LABEL_95;
    case 5u:
LABEL_102:
      v52 = *v37;
      goto LABEL_120;
    case 6u:
LABEL_103:
      (*(v209 + 8))(v37, v201);
      if (!__swift_getEnumTagSinglePayload(&v37[v213] & v211, 1, v202))
      {
        (*(v182 + 8))(&v37[v213] & v211, v202);
      }

      goto LABEL_105;
    case 7u:
LABEL_98:
      (*(v209 + 8))(v37, v201);
      if (!__swift_getEnumTagSinglePayload(&v37[v213] & v211, 1, v202))
      {
        (*(v182 + 8))(&v37[v213] & v211, v202);
      }

LABEL_105:

      goto LABEL_121;
    case 8u:
LABEL_106:
      (*(v191 + 8))(v37, v192);

      v53 = (v186 + (&v37[v185 + 7] & 0xFFFFFFFFFFFFFFF8)) & v184;
      if (v183 == v187)
      {
        if (__swift_getEnumTagSinglePayload(v53, v183, v201))
        {
          goto LABEL_119;
        }

        v54 = (v213 + v53) & v211;
        goto LABEL_116;
      }

      v54 = (v213 + v53) & v211;
      if (v176 == v187)
      {
        if (v196 >= 2 && __swift_getEnumTagSinglePayload((v213 + v53) & v211, v196, v202) >= 2)
        {
          goto LABEL_119;
        }

        goto LABEL_116;
      }

      v55 = *(((v206 + v54) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v55 >= 0xFFFFFFFF)
      {
        LODWORD(v55) = -1;
      }

      if ((v55 + 1) < 2)
      {
LABEL_116:
        (*(v209 + 8))(v53, v201);
        if (!__swift_getEnumTagSinglePayload(v54, 1, v202))
        {
          (*(v182 + 8))(v54, v202);
        }
      }

LABEL_119:
      v52 = *((v18 + v53 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_120:

LABEL_121:

      v56 = (((&v37[v216 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v34 = a2;
      v27 = v175;
      if (v56[3] >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
      }

LABEL_123:
      v57 = v34[v30];
      v58 = v57 - 4;
      if (v57 >= 4)
      {
        if (v30 <= 3)
        {
          v59 = v30;
        }

        else
        {
          v59 = 4;
        }

        switch(v59)
        {
          case 1:
            v60 = *v34;
            goto LABEL_132;
          case 2:
            v60 = *v34;
            goto LABEL_132;
          case 3:
            v60 = *v34 | (v34[2] << 16);
            goto LABEL_132;
          case 4:
            v60 = *v34;
LABEL_132:
            if (v30 < 4)
            {
              v57 = (v60 | (v58 << (8 * v30))) + 4;
            }

            else
            {
              v57 = v60 + 4;
            }

            break;
          default:
            goto LABEL_135;
        }
      }

      break;
    case 9u:
LABEL_94:
      v51 = v189;
      v50 = v190;
LABEL_95:
      (*(v51 + 8))(v37, v50);
      goto LABEL_121;
    default:
      goto LABEL_121;
  }

LABEL_135:
  switch(v57)
  {
    case 0u:
      (*(v203 + 32))(v217, v34, v204);
      v61 = (&v217[v215] & v36);
      v62 = (&v34[v215] & v36);
      v63 = v62[v25];
      v64 = v63 - 10;
      if (v63 >= 0xA)
      {
        if (v25 <= 3)
        {
          v65 = v25;
        }

        else
        {
          v65 = 4;
        }

        switch(v65)
        {
          case 1:
            v66 = *v62;
            goto LABEL_175;
          case 2:
            v66 = *v62;
            goto LABEL_175;
          case 3:
            v66 = *v62 | (*((&v34[v215] & v36) + 2) << 16);
            goto LABEL_175;
          case 4:
            v66 = *v62;
LABEL_175:
            if (v25 < 4)
            {
              v63 = (v66 | (v64 << (8 * v25))) + 10;
            }

            else
            {
              v63 = v66 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v63)
      {
        case 0u:
          (*(v199 + 32))(&v217[v215] & v36, &v34[v215] & v36, v200);
          *(v61 + v25) = 0;
          goto LABEL_229;
        case 1u:
          (*(v199 + 32))(&v217[v215] & v36, &v34[v215] & v36, v200);
          *((v61 + v188) & 0xFFFFFFFFFFFFFFF8) = *(&v62[v188] & 0xFFFFFFFFFFFFFFF8);
          v79 = 1;
          goto LABEL_228;
        case 2u:
          v81 = *v62;
          *((&v217[v215] & v36) + 0x10) = *((&v34[v215] & v36) + 0x10);
          *v61 = v81;
          v79 = 2;
          goto LABEL_228;
        case 3u:
          *v61 = *v62;
          v79 = 3;
          goto LABEL_228;
        case 4u:
          (*(v193 + 32))(&v217[v215] & v36, &v34[v215] & v36, v194);
          v79 = 4;
          goto LABEL_228;
        case 5u:
          *v61 = *v62;
          v79 = 5;
          goto LABEL_228;
        case 6u:
          (*(v209 + 32))(&v217[v215] & v36, &v34[v215] & v36, v201);
          v87 = ((v61 + v213) & v211);
          v88 = (&v62[v213] & v211);
          if (__swift_getEnumTagSinglePayload(v88, 1, v202))
          {
            memcpy(v87, v88, v198);
          }

          else
          {
            (*(v182 + 32))(v87, v88, v202);
            __swift_storeEnumTagSinglePayload(v87, 0, 1, v202);
          }

          v133 = ((v87 + v206) & 0xFFFFFFFFFFFFFFF8);
          v134 = ((v88 + v206) & 0xFFFFFFFFFFFFFFF8);
          *v133 = *v134;
          v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
          v136 = (v134 + 19) & 0xFFFFFFFFFFFFFFF8;
          v137 = *v136;
          *(v135 + 4) = *(v136 + 4);
          *v135 = v137;
          v79 = 6;
          goto LABEL_228;
        case 7u:
          (*(v209 + 32))(&v217[v215] & v36, &v34[v215] & v36, v201);
          v83 = ((v61 + v213) & v211);
          v84 = (&v62[v213] & v211);
          if (__swift_getEnumTagSinglePayload(v84, 1, v202))
          {
            memcpy(v83, v84, v198);
          }

          else
          {
            (*(v182 + 32))(v83, v84, v202);
            __swift_storeEnumTagSinglePayload(v83, 0, 1, v202);
          }

          v115 = ((v83 + v206) & 0xFFFFFFFFFFFFFFF8);
          v116 = ((v84 + v206) & 0xFFFFFFFFFFFFFFF8);
          *v115 = *v116;
          v117 = (v115 + 19) & 0xFFFFFFFFFFFFFFF8;
          v118 = (v116 + 19) & 0xFFFFFFFFFFFFFFF8;
          v119 = *v118;
          *(v117 + 4) = *(v118 + 4);
          *v117 = v119;
          v120 = ((v61 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v121 = (&v62[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v120 = *v121;
          v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
          v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v122 = *v123;
          *((v122 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v123 + 23) & 0xFFFFFFFFFFFFFFF8);
          v79 = 7;
          goto LABEL_228;
        case 8u:
          (*(v191 + 32))(&v217[v215] & v36, &v34[v215] & v36, v192);
          v91 = ((v61 + v185 + 7) & 0xFFFFFFFFFFFFFFF8);
          v92 = (&v62[v185 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v91 = *v92;
          v93 = ((v91 + v186) & v184);
          v94 = ((v92 + v186) & v184);
          if (v183 == v187)
          {
            v95 = v213;
            if (!__swift_getEnumTagSinglePayload(v94, v183, v201))
            {
              v96 = v211;
              v97 = ((v94 + v213) & v211);
              goto LABEL_239;
            }

LABEL_217:
            memcpy(v93, v94, v18);
            v105 = v198;
            v107 = v179;
            v106 = v180;
            v109 = v177;
            v108 = v178;
LABEL_248:
            v159 = v105;
            goto LABEL_249;
          }

          v95 = v213;
          v96 = v211;
          v97 = ((v94 + v213) & v211);
          if (v176 != v187)
          {
            v155 = *(((v97 + v206) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v155 >= 0xFFFFFFFF)
            {
              LODWORD(v155) = -1;
            }

            if ((v155 + 1) < 2)
            {
              goto LABEL_239;
            }

            goto LABEL_217;
          }

          if (v196 >= 2 && __swift_getEnumTagSinglePayload((v94 + v213) & v211, v196, v202) >= 2)
          {
            goto LABEL_217;
          }

LABEL_239:
          (*(v209 + 32))(v93, v94, v201);
          v156 = ((v93 + v95) & v96);
          if (__swift_getEnumTagSinglePayload(v97, 1, v202))
          {
            memcpy(v156, v97, v198);
          }

          else
          {
            (*(v182 + 32))(v156, v97, v202);
            __swift_storeEnumTagSinglePayload(v156, 0, 1, v202);
          }

          v106 = v180;
          v159 = v181;
          v160 = ((v156 + v206) & 0xFFFFFFFFFFFFFFF8);
          v161 = ((v97 + v206) & 0xFFFFFFFFFFFFFFF8);
          *v160 = *v161;
          v162 = (v161 + 19) & 0xFFFFFFFFFFFFFFF8;
          v163 = *v162;
          v164 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
          *(v164 + 4) = *(v162 + 4);
          *v164 = v163;
          v105 = v198;
          v108 = v178;
          v107 = v179;
          v109 = v177;
          if (!v196)
          {
            goto LABEL_248;
          }

LABEL_249:
          v165 = (((v195 + 7 + v159) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          *((v93 + v165 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v94 + v165 + 7) & 0xFFFFFFFFFFFFFFF8);
          v166 = (((v195 + 7 + v105) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
          if (v166 <= v106)
          {
            v166 = v106;
          }

          if (v107 > v166)
          {
            v166 = v107;
          }

          if (v108 > v166)
          {
            v166 = v108;
          }

          if (v109 > v166)
          {
            v166 = v109;
          }

          *(v61 + v166) = 8;
LABEL_229:
          v138 = ((v61 + v216 + 7) & 0xFFFFFFFFFFFFFFF8);
          v139 = (&v62[v216 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v138 = *v139;
          v140 = (v138 + 15) & 0xFFFFFFFFFFFFFFF8;
          v141 = (v139 + 15) & 0xFFFFFFFFFFFFFFF8;
          v142 = *v141;
          v143 = *(v141 + 16);
          *(v140 + 32) = *(v141 + 32);
          *v140 = v142;
          *(v140 + 16) = v143;
          *(v140 + 40) = *(v141 + 40);
          v217[v30] = 0;
          return v3;
        case 9u:
          (*(v189 + 32))(&v217[v215] & v36, &v34[v215] & v36, v190);
          v79 = 9;
LABEL_228:
          *(v61 + v25) = v79;
          goto LABEL_229;
        default:
          memcpy((&v217[v215] & v36), (&v34[v215] & v36), v216);
          goto LABEL_229;
      }

    case 1u:
      (*(v203 + 32))(v217, v34, v204);
      v72 = (&v217[v215] & v36);
      v73 = (&v34[v215] & v36);
      v74 = v73[v25];
      v75 = v74 - 10;
      if (v74 >= 0xA)
      {
        if (v25 <= 3)
        {
          v76 = v25;
        }

        else
        {
          v76 = 4;
        }

        switch(v76)
        {
          case 1:
            v77 = *v73;
            goto LABEL_181;
          case 2:
            v77 = *v73;
            goto LABEL_181;
          case 3:
            v77 = *v73 | (*((&v34[v215] & v36) + 2) << 16);
            goto LABEL_181;
          case 4:
            v77 = *v73;
LABEL_181:
            if (v25 < 4)
            {
              v74 = (v77 | (v75 << (8 * v25))) + 10;
            }

            else
            {
              v74 = v77 + 10;
            }

            break;
          default:
            goto LABEL_184;
        }
      }

      break;
    case 2u:
      v67 = v34[v28];
      v68 = v67 - 2;
      if (v67 >= 2)
      {
        if (v28 <= 3)
        {
          v69 = v28;
        }

        else
        {
          v69 = 4;
        }

        switch(v69)
        {
          case 1:
            v70 = *v34;
            goto LABEL_163;
          case 2:
            v70 = *v34;
            goto LABEL_163;
          case 3:
            v70 = *v34 | (v34[2] << 16);
            goto LABEL_163;
          case 4:
            v70 = *v34;
LABEL_163:
            if (v28 < 4)
            {
              v67 = (v70 | (v68 << v197)) + 2;
            }

            else
            {
              v67 = v70 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v67 == 1)
      {
        *v217 = *v34;
        v217[8] = v34[8];
        v217[v28] = 1;
      }

      else if (v67)
      {
        memcpy(v217, v34, v28 + 1);
      }

      else
      {
        (*(v208 + 32))(v217, v34, v27);
        v217[v28] = 0;
      }

      v71 = 2;
      goto LABEL_234;
    case 3u:
      *v217 = *v34;
      v217[8] = v34[8];
      v71 = 3;
      goto LABEL_234;
    default:

      return memcpy(v217, v34, v30 + 1);
  }

LABEL_184:
  switch(v74)
  {
    case 0u:
      (*(v199 + 32))(&v217[v215] & v36, &v34[v215] & v36, v200);
      *(v72 + v25) = 0;
      goto LABEL_233;
    case 1u:
      (*(v199 + 32))(&v217[v215] & v36, &v34[v215] & v36, v200);
      *((v72 + v188) & 0xFFFFFFFFFFFFFFF8) = *(&v73[v188] & 0xFFFFFFFFFFFFFFF8);
      v80 = 1;
      goto LABEL_232;
    case 2u:
      v82 = *v73;
      *((&v217[v215] & v36) + 0x10) = *((&v34[v215] & v36) + 0x10);
      *v72 = v82;
      v80 = 2;
      goto LABEL_232;
    case 3u:
      *v72 = *v73;
      v80 = 3;
      goto LABEL_232;
    case 4u:
      (*(v193 + 32))(&v217[v215] & v36, &v34[v215] & v36, v194);
      v80 = 4;
      goto LABEL_232;
    case 5u:
      *v72 = *v73;
      v80 = 5;
      goto LABEL_232;
    case 6u:
      (*(v209 + 32))(&v217[v215] & v36, &v34[v215] & v36, v201);
      v89 = ((v72 + v213) & v211);
      v90 = (&v73[v213] & v211);
      if (__swift_getEnumTagSinglePayload(v90, 1, v202))
      {
        memcpy(v89, v90, v198);
      }

      else
      {
        (*(v182 + 32))(v89, v90, v202);
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v202);
      }

      v144 = ((v89 + v206) & 0xFFFFFFFFFFFFFFF8);
      v145 = ((v90 + v206) & 0xFFFFFFFFFFFFFFF8);
      *v144 = *v145;
      v146 = (v144 + 19) & 0xFFFFFFFFFFFFFFF8;
      v147 = (v145 + 19) & 0xFFFFFFFFFFFFFFF8;
      v148 = *v147;
      *(v146 + 4) = *(v147 + 4);
      *v146 = v148;
      v80 = 6;
      goto LABEL_232;
    case 7u:
      (*(v209 + 32))(&v217[v215] & v36, &v34[v215] & v36, v201);
      v85 = ((v72 + v213) & v211);
      v86 = (&v73[v213] & v211);
      if (__swift_getEnumTagSinglePayload(v86, 1, v202))
      {
        memcpy(v85, v86, v198);
      }

      else
      {
        (*(v182 + 32))(v85, v86, v202);
        __swift_storeEnumTagSinglePayload(v85, 0, 1, v202);
      }

      v124 = ((v85 + v206) & 0xFFFFFFFFFFFFFFF8);
      v125 = ((v86 + v206) & 0xFFFFFFFFFFFFFFF8);
      *v124 = *v125;
      v126 = (v124 + 19) & 0xFFFFFFFFFFFFFFF8;
      v127 = (v125 + 19) & 0xFFFFFFFFFFFFFFF8;
      v128 = *v127;
      *(v126 + 4) = *(v127 + 4);
      *v126 = v128;
      v129 = ((v72 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v130 = (&v73[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v129 = *v130;
      v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
      v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v131 = *v132;
      *((v131 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
      v80 = 7;
      goto LABEL_232;
    case 8u:
      (*(v191 + 32))(&v217[v215] & v36, &v34[v215] & v36, v192);
      v98 = ((v72 + v185 + 7) & 0xFFFFFFFFFFFFFFF8);
      v99 = (&v73[v185 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v98 = *v99;
      v100 = ((v98 + v186) & v184);
      v101 = ((v99 + v186) & v184);
      if (v183 == v187)
      {
        v102 = v213;
        if (!__swift_getEnumTagSinglePayload(v101, v183, v201))
        {
          v103 = v211;
          v104 = ((v101 + v213) & v211);
          goto LABEL_244;
        }
      }

      else
      {
        v102 = v213;
        v103 = v211;
        v104 = ((v101 + v213) & v211);
        if (v176 == v187)
        {
          if (v196 < 2 || __swift_getEnumTagSinglePayload((v101 + v213) & v211, v196, v202) < 2)
          {
            goto LABEL_244;
          }
        }

        else
        {
          v157 = *(((v104 + v206) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v157 >= 0xFFFFFFFF)
          {
            LODWORD(v157) = -1;
          }

          if ((v157 + 1) < 2)
          {
LABEL_244:
            (*(v209 + 32))(v100, v101, v201);
            v158 = ((v100 + v102) & v103);
            if (__swift_getEnumTagSinglePayload(v104, 1, v202))
            {
              memcpy(v158, v104, v198);
            }

            else
            {
              (*(v182 + 32))(v158, v104, v202);
              __swift_storeEnumTagSinglePayload(v158, 0, 1, v202);
            }

            v111 = v180;
            v167 = v181;
            v168 = ((v158 + v206) & 0xFFFFFFFFFFFFFFF8);
            v169 = ((v104 + v206) & 0xFFFFFFFFFFFFFFF8);
            *v168 = *v169;
            v170 = (v169 + 19) & 0xFFFFFFFFFFFFFFF8;
            v171 = *v170;
            v172 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
            *(v172 + 4) = *(v170 + 4);
            *v172 = v171;
            v110 = v198;
            v113 = v178;
            v112 = v179;
            v114 = v177;
            if (v196)
            {
LABEL_261:
              v173 = (((v195 + 7 + v167) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              *((v100 + v173 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v101 + v173 + 7) & 0xFFFFFFFFFFFFFFF8);
              v174 = (((v195 + 7 + v110) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
              if (v174 <= v111)
              {
                v174 = v111;
              }

              if (v112 > v174)
              {
                v174 = v112;
              }

              if (v113 > v174)
              {
                v174 = v113;
              }

              if (v114 > v174)
              {
                v174 = v114;
              }

              *(v72 + v174) = 8;
LABEL_233:
              v149 = ((v72 + v216 + 7) & 0xFFFFFFFFFFFFFFF8);
              v150 = (&v73[v216 + 7] & 0xFFFFFFFFFFFFFFF8);
              *v149 = *v150;
              v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
              v152 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
              v153 = *v152;
              v154 = *(v152 + 16);
              *(v151 + 32) = *(v152 + 32);
              *v151 = v153;
              *(v151 + 16) = v154;
              *(v151 + 40) = *(v152 + 40);
              v71 = 1;
LABEL_234:
              v217[v30] = v71;
              return v3;
            }

LABEL_260:
            v167 = v110;
            goto LABEL_261;
          }
        }
      }

      memcpy(v100, v101, v18);
      v110 = v198;
      v112 = v179;
      v111 = v180;
      v114 = v177;
      v113 = v178;
      goto LABEL_260;
    case 9u:
      (*(v189 + 32))(&v217[v215] & v36, &v34[v215] & v36, v190);
      v80 = 9;
LABEL_232:
      *(v72 + v25) = v80;
      goto LABEL_233;
    default:
      memcpy((&v217[v215] & v36), (&v34[v215] & v36), v216);
      goto LABEL_233;
  }
}

uint64_t sub_1DCF8E448(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v36 = *(*(sub_1DD0DB04C() - 8) + 64);
  v34 = *(sub_1DD0DC76C() - 8);
  v3 = *(v34 + 80);
  v35 = *(sub_1DD0DB1EC() - 8);
  v31 = *(v35 + 80) | v3;
  v33 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v33 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v32 = *(sub_1DD0DD12C() - 8);
  v8 = *(v32 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v31 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v36 + v10) & ~v10;
  v12 = *(v34 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v35 + 64))
  {
    v12 = *(v35 + 64);
  }

  v13 = *(v5 + 64) + ((*(v33 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v20 = 9;
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v18;
  }

  if (v21 > 9)
  {
    v20 = v21;
  }

  v22 = (3u >> (8 * v20)) ^ 0xFB;
  if (v20 > 3)
  {
    v22 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v22 >= a2)
  {
    goto LABEL_45;
  }

  v23 = v20 + 1;
  v24 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v27 = ((~(-1 << v24) + a2 - v22) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    if (v27 < 2)
    {
LABEL_45:
      v29 = *(a1 + v20);
      if (v22 <= (v29 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v29);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_45;
  }

LABEL_37:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    switch(v23)
    {
      case 2:
        LODWORD(v23) = *a1;
        break;
      case 3:
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v23) = *a1;
        break;
      default:
        LODWORD(v23) = *a1;
        break;
    }
  }

  return v22 + (v23 | v28) + 1;
}

void sub_1DCF8E904(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(*(sub_1DD0DB04C() - 8) + 64);
  v36 = *(sub_1DD0DC76C() - 8);
  v4 = *(v36 + 80);
  v37 = *(sub_1DD0DB1EC() - 8);
  v33 = *(v37 + 80) | v4;
  v35 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v35 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v34 = *(sub_1DD0DD12C() - 8);
  v9 = *(v34 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v33 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v38 + v11) & ~v11;
  v13 = *(v36 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v37 + 64))
  {
    v13 = *(v37 + 64);
  }

  v14 = *(v6 + 64) + ((*(v35 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v34 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v34 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v19)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v19;
  }

  if (v21 <= 9)
  {
    v21 = 9;
  }

  if (v21 <= 3)
  {
    v22 = (3u >> (8 * v21)) ^ 0xFB;
  }

  else
  {
    v22 = 251;
  }

  v23 = v21 + 1;
  v24 = 8 * (v21 + 1);
  if (v22 >= a3)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v23 <= 3)
    {
      v30 = ((~(-1 << v24) + a3 - v22) >> v24) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v22 >= v26)
  {
    switch(v27)
    {
      case 1:
        v25[v23] = 0;
        if (v26)
        {
          goto LABEL_50;
        }

        break;
      case 2:
        *&v25[v23] = 0;
        if (v26)
        {
          goto LABEL_50;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&v25[v23] = 0;
        goto LABEL_49;
      default:
LABEL_49:
        if (v26)
        {
LABEL_50:
          v25[v21] = -v26;
        }

        break;
    }
  }

  else
  {
    v28 = ~v22 + v26;
    if (v23 < 4)
    {
      v29 = (v28 >> v24) + 1;
      if (v21 != -1)
      {
        v32 = v28 & ~(-1 << v24);
        bzero(v25, v23);
        if (v23 == 3)
        {
          *v25 = v32;
          v25[2] = BYTE2(v32);
        }

        else if (v23 == 2)
        {
          *v25 = v32;
        }

        else
        {
          *v25 = v28;
        }
      }
    }

    else
    {
      bzero(v25, v23);
      *v25 = v28;
      v29 = 1;
    }

    switch(v27)
    {
      case 1:
        v25[v23] = v29;
        break;
      case 2:
        *&v25[v23] = v29;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&v25[v23] = v29;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF8EE38(unsigned __int8 *a1, uint64_t a2)
{
  v29 = *(*(sub_1DD0DB04C() - 8) + 64);
  v27 = *(sub_1DD0DC76C() - 8);
  v2 = *(v27 + 80);
  v28 = *(sub_1DD0DB1EC() - 8);
  v24 = *(v28 + 80) | v2;
  v26 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v26 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v25 = *(sub_1DD0DD12C() - 8);
  v7 = *(v25 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v24 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v29 + v9) & ~v9;
  v11 = *(v27 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v28 + 64))
  {
    v11 = *(v28 + 64);
  }

  v12 = *(v4 + 64) + ((*(v26 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
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

  if (v11 <= ((v14 + ((v6 + ((*(v25 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v25 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v19 = 9;
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v18 + 1 > v17)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v17;
  }

  if (v20 > 9)
  {
    v19 = v20;
  }

  result = a1[v19];
  if (result >= 4)
  {
    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 1:
        v23 = *a1;
        goto LABEL_33;
      case 2:
        v23 = *a1;
        goto LABEL_33;
      case 3:
        v23 = *a1 | (a1[2] << 16);
        goto LABEL_33;
      case 4:
        v23 = *a1;
LABEL_33:
        if (v19 < 4)
        {
          result = (v23 | ((result - 4) << (8 * v19))) + 4;
        }

        else
        {
          result = (v23 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCF8F240(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v54 = a2;
  if (a2 > 3)
  {
    v53 = *(v5 + 64);
    v49 = *(sub_1DD0DC76C() - 8);
    v20 = *(v49 + 80);
    v51 = *(sub_1DD0DB1EC() - 8);
    v43 = *(v51 + 80) | v20;
    v47 = *(sub_1DD0DB4BC() - 8);
    v21 = *(v47 + 80) & 0xF8;
    v22 = *(sub_1DD0DB3EC() - 8);
    v23 = *(v22 + 80);
    v24 = v21 | v23 | 7;
    v45 = *(sub_1DD0DD12C() - 8);
    v25 = *(v45 + 80);
    v26 = *(sub_1DD0DD08C() - 8);
    v27 = (v43 | (v25 | *(v26 + 80))) & 0xF8 | v24;
    v28 = (v53 + v27) & ~v27;
    v29 = *(v49 + 64);
    if (((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v29)
    {
      v29 = ((v29 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v29 <= *(v51 + 64))
    {
      v29 = *(v51 + 64);
    }

    v30 = *(v22 + 64) + ((*(v47 + 64) + v23) & ~v23);
    if (!*(v22 + 84))
    {
      ++v30;
    }

    v31 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 19) | 5;
    if (v29 <= v32)
    {
      v29 = (v31 + 19) | 5;
    }

    v33 = ((((((v31 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v29 <= v33)
    {
      v29 = v33;
    }

    if (v29 <= ((v32 + ((v24 + ((*(v45 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v29 = ((v32 + ((v24 + ((*(v45 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v34 = *(v26 + 64);
    if (v29 > v34)
    {
      v34 = v29;
    }

    if (v34 <= 0x18)
    {
      v34 = 24;
    }

    v35 = ((((v28 + v34 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v36 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v36 <= 9)
    {
      v36 = 9;
    }

    if (v36 + 1 > v35)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = v35;
    }

    if (v37 <= 9)
    {
      v38 = 9;
    }

    else
    {
      v38 = v37;
    }

    v39 = v54 - 4;
    if (v38 < 4)
    {
      v40 = a1;
      a1[v38] = (v39 >> (8 * v38)) + 4;
      if (!v38)
      {
        return;
      }

      v39 &= ~(-1 << (8 * v38));
    }

    else
    {
      v40 = a1;
      a1[v38] = 4;
    }

    if (v38 >= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = v38;
    }

    bzero(v40, v38);
    switch(v41)
    {
      case 2:
        *v40 = v39;
        break;
      case 3:
        *v40 = v39;
        v40[2] = BYTE2(v39);
        break;
      case 4:
        *v40 = v39;
        break;
      default:
        *v40 = v39;
        break;
    }
  }

  else
  {
    v52 = *(sub_1DD0DC76C() - 8);
    v50 = *(sub_1DD0DB1EC() - 8);
    v44 = *(sub_1DD0DB4BC() - 8);
    v42 = *(sub_1DD0DB3EC() - 8);
    v46 = *(sub_1DD0DD12C() - 8);
    v48 = *(sub_1DD0DD08C() - 8);
    v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    v8 = 9;
    if (v7 <= 9)
    {
      v7 = 9;
    }

    v9 = *(v42 + 80);
    v10 = v9 | *(v44 + 80) & 0xF8 | 7;
    v11 = v10 | ((*(v50 + 80) | *(v52 + 80)) | (*(v46 + 80) | *(v48 + 80))) & 0xF8;
    v12 = (*(v6 + 64) + v11) & ~v11;
    v13 = *(v52 + 64);
    if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
    {
      v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v13 <= *(v50 + 64))
    {
      v13 = *(v50 + 64);
    }

    v14 = *(v42 + 64) + ((*(v44 + 64) + v9) & ~v9);
    if (!*(v42 + 84))
    {
      ++v14;
    }

    v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v15 + 19) | 5;
    if (v13 <= v16)
    {
      v13 = (v15 + 19) | 5;
    }

    v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v13 <= v17)
    {
      v13 = v17;
    }

    if (v13 <= ((v16 + ((v10 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v13 = ((v16 + ((v10 + ((*(v46 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v13 <= *(v48 + 64))
    {
      v13 = *(v48 + 64);
    }

    if (v13 <= 0x18)
    {
      v13 = 24;
    }

    v18 = ((((v12 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v7 + 1 > v18)
    {
      v19 = v7 + 1;
    }

    else
    {
      v19 = v18;
    }

    if (v19 > 9)
    {
      v8 = v19;
    }

    a1[v8] = a2;
  }
}

uint64_t sub_1DCF8FA54(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCF8FB00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF82FF8();
}

uint64_t sub_1DCF8FBD8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85798(v3, v4);
}

uint64_t sub_1DCF8FC5C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85B64(v3, v4);
}

uint64_t sub_1DCF8FCE0()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCF85CC0(v2, v4, v3);
}

uint64_t sub_1DCF8FD80()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF858DC(v3, v4);
}

uint64_t sub_1DCF8FE04()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCF85A20(v3, v4);
}

_BYTE *sub_1DCF8FE88(_BYTE *result, int a2, int a3)
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

uint64_t SimpleOutputFlowAsync.__allocating_init(outputPublisher:outputGenerator:)()
{
  OUTLINED_FUNCTION_58_1();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_13_36();
  SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(v1, v2, v3);
  return v0;
}

uint64_t SimpleOutputFlow.__allocating_init(outputGenerator:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_15_60();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  SimpleOutputFlow.init(outputGenerator:outputPublisher:)();
  return v0;
}

uint64_t SimpleOutputFlow.init(outputGenerator:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v1 + 16) = &unk_1DD105868;
  *(v1 + 24) = v4;
  sub_1DCB17CA0(v0, &v8);
  v5 = type metadata accessor for OutputPublisherAsyncAdapter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(&v8, v6 + 16);
  v9 = v5;
  v10 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v8 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  sub_1DCAFF9E8(&v8, v1 + 32);
  return v1;
}

uint64_t sub_1DCF9009C(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t SimpleOutputFlow.__allocating_init(outputPublisher:_:)()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_15_60();
  swift_allocObject();
  OUTLINED_FUNCTION_13_36();
  SimpleOutputFlow.init(outputPublisher:_:)();
  return v0;
}

uint64_t SimpleOutputFlow.init(outputPublisher:_:)()
{
  OUTLINED_FUNCTION_58_1();
  sub_1DCB17CA0(v4, &v9);
  v5 = type metadata accessor for OutputPublisherAsyncAdapter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(&v9, v6 + 16);
  v10 = v5;
  v11 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v9 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  sub_1DCAFF9E8(&v9, v1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;
  *(v1 + 16) = &unk_1DD105878;
  *(v1 + 24) = v7;
  return v1;
}

uint64_t sub_1DCF901FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF90220, 0, 0);
}

uint64_t sub_1DCF90220()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCF90324;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v4, 0, 0, 0xD000000000000018, 0x80000001DD126440, sub_1DCF91C18, v1, v3);
}

uint64_t sub_1DCF90324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCF90420(uint64_t a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(sub_1DCF91C20, v10);
}

uint64_t sub_1DCF90570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25[-v8 - 8];
  sub_1DCB28B08(a1, v28, &qword_1ECCA1F70, &qword_1DD0E2BD0);
  if (v29)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000046, 0x80000001DD126460);
    swift_getErrorValue();
    v11 = sub_1DD0DF18C();
    MEMORY[0x1E12A6780](v11);

    v12 = v26;
    v13 = v27;
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    v15 = __swift_project_value_buffer(v14, qword_1EDE57E00);
    v16 = *(v14 - 8);
    (*(v16 + 16))(v9, v15, v14);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
    sub_1DCB28B08(v9, v6, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_1DCBCF738(v6);
    }

    else
    {

      v17 = sub_1DD0DD8EC();
      v18 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26 = v24;
        *v19 = 136315650;
        v20 = sub_1DD0DEC3C();
        v22 = sub_1DCB10E9C(v20, v21, &v26);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2048;
        *(v19 + 14) = 45;
        *(v19 + 22) = 2080;
        *(v19 + 24) = sub_1DCB10E9C(v12, v13, &v26);
        _os_log_impl(&dword_1DCAFC000, v17, v18, "FatalError at %s:%lu - %s", v19, 0x20u);
        v23 = v24;
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v23, -1, -1);
        MEMORY[0x1E12A8390](v19, -1, -1);
      }

      (*(v16 + 8))(v6, v14);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(v12, v13);
  }

  sub_1DCAFF9E8(v28, &v26);
  sub_1DCB17CA0(&v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  sub_1DD0DE46C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v26);
}

uint64_t SimpleOutputFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF90988()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Publishing output...");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[8];

  v9 = *(v7 + 56);
  v8 = *(v7 + 64);
  __swift_project_boxed_opaque_existential_1((v7 + 32), v9);
  v10 = swift_task_alloc();
  v11 = *(v7 + 16);
  v0[10] = v10;
  *(v10 + 16) = v11;
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF90AF4;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD105890, v10, v9, v8);
}

uint64_t sub_1DCF90AF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {
    v6 = sub_1DCF90CAC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));

    v6 = sub_1DCF90C0C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCF90C0C()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v3, v4, "Output successfully published. Exiting...");
    OUTLINED_FUNCTION_62();
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCF90CAC()
{
  OUTLINED_FUNCTION_39();

  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_50_0();
    *v5 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "SimpleOutputFlow received an unexpected error while publishing output.", v5, 2u);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCF90D88(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCCE3F80;

  return v6(a1);
}

uint64_t SimpleOutputFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t SimpleOutputFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_15_60();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF90F04()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AD3C;

  return SimpleOutputFlow.execute()(v1);
}

uint64_t SimpleOutputFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = sub_1DCF917B8((v1 + 72), v6);
  if (v7)
  {
    if (v7 == 1)
    {
      *a1 = *&v6[0];
    }

    else
    {
      sub_1DCF917F0();
      result = swift_allocError();
      *v5 = 0xD00000000000002DLL;
      v5[1] = 0x80000001DD1263B0;
      *a1 = result;
    }

    v4 = 1;
  }

  else
  {
    result = sub_1DCAFF9E8(v6, a1);
    v4 = 0;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  sub_1DCAFF9E8(a1, v3 + 32);
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0;
  *(v3 + 112) = 2;
  return v3;
}

uint64_t sub_1DCF9108C()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_20_7();

  return v4(v3);
}

uint64_t sub_1DCF9112C()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  v3 = OUTLINED_FUNCTION_20_7();

  return sub_1DCF901FC(v3, v4, v5);
}

uint64_t SimpleOutputFlowAsync.execute()(uint64_t a1)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF911DC()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[27] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Publishing output...");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[26];

  v9 = v7[7];
  v8 = v7[8];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v9);
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  v0[28] = v12;
  *v12 = v0;
  v12[1] = sub_1DCF91324;

  return sub_1DCB63BBC((v0 + 14), v10, v11, v9, v8);
}

uint64_t sub_1DCF91324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 232) = v0;

  if (v0)
  {
    v5 = sub_1DCF91500;
  }

  else
  {
    v5 = sub_1DCF91428;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCF91428()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "Output successfully published. Exiting...");
    OUTLINED_FUNCTION_62();
  }

  v6 = *(v0 + 208);

  sub_1DCAFF9E8((v0 + 112), v0 + 64);
  *(v0 + 104) = 0;
  swift_beginAccess();
  sub_1DCF91844(v0 + 64, v6 + 72);
  swift_endAccess();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCF91500()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "SimpleOutputFlow received an unexpected error while publishing output.");
    OUTLINED_FUNCTION_62();
  }

  v6 = *(v0 + 232);
  v7 = *(v0 + 208);

  *(v0 + 16) = v6;
  *(v0 + 56) = 1;
  swift_beginAccess();
  sub_1DCF91844(v0 + 16, v7 + 72);
  swift_endAccess();
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t SimpleOutputFlowAsync.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_1DCF9187C(v0 + 72);
  return v0;
}

uint64_t SimpleOutputFlowAsync.__deallocating_deinit()
{
  SimpleOutputFlowAsync.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF91664()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v3[1] = sub_1DCB4AE1C;

  return SimpleOutputFlowAsync.execute()(v1);
}

uint64_t sub_1DCF91718()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  v3 = OUTLINED_FUNCTION_20_7();

  return v4(v3);
}

unint64_t sub_1DCF917F0()
{
  result = qword_1ECCAB480;
  if (!qword_1ECCAB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB480);
  }

  return result;
}

void destroy for SimpleOutputFlowAsync.State(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
  }

  else if (!v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t initializeWithCopy for SimpleOutputFlowAsync.State(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v5 = *a2;
    v6 = *a2;
    *a1 = v5;
    *(a1 + 40) = 1;
  }

  else if (v3)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v4 = *(a2 + 3);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    *(a1 + 40) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for SimpleOutputFlowAsync.State(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *a2;
      v8 = v7;
      *a1 = v7;
      *(a1 + 40) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for SimpleOutputFlowAsync.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else
    {
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      if (v5)
      {
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1DCF91C20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);

  return sub_1DCF90570(a1);
}

uint64_t SimpleYesNoPromptFlowStrategy.__allocating_init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_25_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v11 = v10;
  v12 = swift_allocObject();
  v14 = v9[3];
  v13 = v9[4];
  __swift_mutable_project_boxed_opaque_existential_1(v9, v14);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = OUTLINED_FUNCTION_17_48(v17, v29);
  v19(v18);
  v27 = OUTLINED_FUNCTION_24_35(v11, v20, v21, v22, v23, v24, v25, v26, v12, v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v27;
}

uint64_t sub_1DCF91DB4()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_43();
  return v2();
}

uint64_t SimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_25_30(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v14 = *(v9 + 24);
  v13 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v14);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = OUTLINED_FUNCTION_17_48(v17, v29);
  v19(v18);
  v27 = OUTLINED_FUNCTION_24_35(v12, v20, v21, v22, v23, v24, v25, v26, v8, v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v27;
}

uint64_t SimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD0DB6EC();
  v1[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_38();
  v5 = sub_1DD0DB50C();
  v1[7] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_118();
  v1[10] = swift_task_alloc();
  v7 = sub_1DD0DB5BC();
  v1[11] = v7;
  OUTLINED_FUNCTION_99(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_118();
  v1[14] = swift_task_alloc();
  v9 = sub_1DD0DB4DC();
  v1[15] = v9;
  OUTLINED_FUNCTION_99(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_118();
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for NLContextUpdate(0);
  v1[19] = v11;
  OUTLINED_FUNCTION_20_0(v11);
  v1[20] = OUTLINED_FUNCTION_38();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v12);
  v1[21] = OUTLINED_FUNCTION_38();
  v13 = type metadata accessor for OutputGenerationManifest(0);
  v1[22] = v13;
  OUTLINED_FUNCTION_20_0(v13);
  v1[23] = OUTLINED_FUNCTION_38();

  return MEMORY[0x1EEE6DFA0](sub_1DCF9210C, 0, 0);
}

uint64_t sub_1DCF9210C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  sub_1DCF94404(v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_baseManifest, v2, type metadata accessor for OutputGenerationManifest);
  v5 = *(v1 + 48);
  sub_1DCDB1604(v2 + v5, v3);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_1DCB0E9D8(v3, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (v4 == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v31 = v5;
    v32 = v2;
    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "OutputGenerationManifest does not include an NL context update. Will send a standard UserAccepted offer.", v9, 2u);
      MEMORY[0x1E12A8390](v9, -1, -1);
    }

    v10 = v0[20];
    v30 = v0[19];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[15];
    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    v23 = v0[12];
    v24 = v0[11];
    v22 = v0[10];
    v26 = v0[8];
    v27 = v0[9];
    v28 = v0[7];
    v17 = v0[5];
    v25 = v0[6];
    v29 = v0[4];

    NLContextUpdate.init()(v10);
    sub_1DD0DB4CC();
    sub_1DD0DB5AC();
    (*(v14 + 16))(v12, v11, v13);
    sub_1DD0DB59C();
    sub_1DD0DB4FC();
    (*(v23 + 16))(v15, v16, v24);
    sub_1DD0DB4EC();
    sub_1DD0DB6DC();
    (*(v26 + 16))(v27, v22, v28);
    sub_1DD0DB6AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1DD0E07C0;
    (*(v17 + 32))(v19 + v18, v25, v29);
    (*(v26 + 8))(v22, v28);
    (*(v23 + 8))(v16, v24);
    (*(v14 + 8))(v11, v13);

    *(v10 + 216) = v19;
    sub_1DCB0E9D8(v32 + v31, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCF94404(v10, v32 + v31, type metadata accessor for NLContextUpdate);
    __swift_storeEnumTagSinglePayload(v32 + v31, 0, 1, v30);
    sub_1DCF94464(v10, type metadata accessor for NLContextUpdate);
  }

  v33 = (*(v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer) + **(v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer));
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_1DCF9257C;

  return v33();
}

uint64_t sub_1DCF9257C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v4;
  *(v2 + 208) = v0;

  if (v0)
  {
    v5 = sub_1DCF929B4;
  }

  else
  {
    v5 = sub_1DCF92684;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCF92684()
{
  v1 = (v0[3] + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v10 = (*(v3 + 8) + **(v3 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[27] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF927C0;
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[2];

  return v10(v8, v6, v7, v2, v3);
}

uint64_t sub_1DCF927C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = sub_1DCF92AAC;
  }

  else
  {
    v7 = sub_1DCF928C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF928C0()
{
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCF929B4()
{
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DCF92AAC()
{
  v1 = *(v0 + 184);
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t SimpleYesNoPromptFlowStrategy.actionForInput(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v3 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v87 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v87 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v87 - v15;
  v17 = type metadata accessor for USOParse(0);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v88 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v87 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v87 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v87 - v35;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(a1 + v37, v36, v38);
  v90 = v36;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_0_114();
      v48 = v90;
      sub_1DCF94404(v90, v29, v49);
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      v40 = v89;
      if (v50)
      {
        swift_unknownObjectRelease();
        *v40 = 0;
        OUTLINED_FUNCTION_4_107();
        v52 = v48;
        return sub_1DCF94464(v52, v51);
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        swift_unknownObjectRelease();
        if (!v78)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_56;
    }

    v40 = v89;
    if (EnumCaseMultiPayload != 6)
    {
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_0_114();
    sub_1DCF94404(v90, v33, v41);
    OUTLINED_FUNCTION_11_66();
    sub_1DCF945E8(v33, v88, v42);
    v43 = sub_1DD0DB46C();
    v44 = 0;
    v45 = *(v43 + 16);
    while (1)
    {
      if (v45 == v44)
      {

        v61 = sub_1DD0DB46C();
        v62 = 0;
        v16 = *(v61 + 16);
        v63 = v87;
        while (v16 != v62)
        {
          if (v62 >= *(v61 + 16))
          {
            goto LABEL_58;
          }

          OUTLINED_FUNCTION_23_32();
          (*(v5 + 16))(v13, v61 + v64 + *(v5 + 72) * v62++, v3);
          v65 = sub_1DD0DB53C();
          (*(v5 + 8))(v13, v3);
          if (v65)
          {
            goto LABEL_22;
          }
        }

        v13 = sub_1DD0DB46C();
        v68 = 0;
        v16 = *(v13 + 2);
        while (v16 != v68)
        {
          if (v68 >= *(v13 + 2))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_23_32();
          (*(v5 + 16))(v63, &v13[v69 + *(v5 + 72) * v68++], v3);
          v70 = sub_1DD0DB54C();
          (*(v5 + 8))(v63, v3);
          if (v70)
          {
            OUTLINED_FUNCTION_1_123();
            sub_1DCF94464(v88, v71);

            *v89 = 0;
            goto LABEL_52;
          }
        }

        OUTLINED_FUNCTION_1_123();
        sub_1DCF94464(v88, v79);

        v67 = 2;
        goto LABEL_23;
      }

      if (v44 >= *(v43 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_23_32();
      (*(v5 + 16))(v16, v43 + v46 + *(v5 + 72) * v44++, v3);
      v47 = sub_1DD0DB52C();
      (*(v5 + 8))(v16, v3);
      if (v47)
      {
LABEL_22:

        OUTLINED_FUNCTION_1_123();
        sub_1DCF94464(v88, v66);
        v67 = 1;
LABEL_23:
        *v89 = v67;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v13 = v89;
  v16 = v90;
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v16, v25, v53);
  v5 = *v25;
  v3 = v25[1];
  if (qword_1ECCA12E0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v54 = [qword_1ECCA5FD8 identifier];
  v55 = sub_1DD0DDFBC();
  v57 = v56;

  if (v5 == v55 && v3 == v57)
  {

    v60 = v13;
    goto LABEL_25;
  }

  v59 = OUTLINED_FUNCTION_16_55();

  if (v59)
  {
    v60 = v13;
LABEL_25:

    *v60 = 0;
    OUTLINED_FUNCTION_4_107();
    v52 = v16;
    return sub_1DCF94464(v52, v51);
  }

  if (qword_1ECCA12D0 != -1)
  {
    OUTLINED_FUNCTION_15_61(&qword_1ECCA12D0);
  }

  v72 = [qword_1ECCA5FC8 identifier];
  v73 = sub_1DD0DDFBC();
  v75 = v74;

  if (v5 == v73 && v3 == v75)
  {
    goto LABEL_54;
  }

  v77 = OUTLINED_FUNCTION_16_55();

  if (v77)
  {
    v40 = v13;
LABEL_55:

    goto LABEL_56;
  }

  if (qword_1ECCA12D8 != -1)
  {
    OUTLINED_FUNCTION_14_58(&qword_1ECCA12D8);
  }

  v80 = [qword_1ECCA5FD0 identifier];
  v81 = sub_1DD0DDFBC();
  v83 = v82;

  if (v5 == v81 && v3 == v83)
  {
LABEL_54:
    v40 = v13;

    goto LABEL_55;
  }

  v85 = OUTLINED_FUNCTION_16_55();

  v40 = v13;
  if ((v85 & 1) == 0)
  {
LABEL_51:
    *v40 = 2;
LABEL_52:
    v51 = type metadata accessor for Parse;
    v52 = v90;
    return sub_1DCF94464(v52, v51);
  }

LABEL_56:
  result = sub_1DCF94464(v90, type metadata accessor for Parse);
  *v40 = 1;
  return result;
}

uint64_t SimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1DD0DB5BC();
  v0[4] = v3;
  OUTLINED_FUNCTION_99(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_118();
  v0[7] = swift_task_alloc();
  v5 = type metadata accessor for USOParse(0);
  OUTLINED_FUNCTION_20_0(v5);
  v0[8] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for Parse(0);
  v0[9] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v0[10] = OUTLINED_FUNCTION_118();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF933F4, 0, 0);
}

uint64_t sub_1DCF933F4()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 24);
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v3 + v4, v2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v24 = *(v0 + 80);
    OUTLINED_FUNCTION_0_114();
    sub_1DCF94404(v25, v24, v26);
    v28 = *v24;
    v27 = v24[1];
    if (qword_1ECCA12D0 != -1)
    {
      OUTLINED_FUNCTION_15_61(&qword_1ECCA12D0);
    }

    v29 = [qword_1ECCA5FC8 identifier];
    v30 = sub_1DD0DDFBC();
    v32 = v31;

    if (v28 == v30 && v27 == v32)
    {
    }

    else
    {
      v34 = OUTLINED_FUNCTION_26_34();

      if ((v34 & 1) == 0)
      {
        if (qword_1ECCA12D8 != -1)
        {
          OUTLINED_FUNCTION_14_58(&qword_1ECCA12D8);
        }

        v54 = [qword_1ECCA5FD0 identifier];
        v55 = sub_1DD0DDFBC();
        v57 = v56;

        if (v28 == v55 && v27 == v57)
        {
        }

        else
        {
          v59 = OUTLINED_FUNCTION_26_34();

          if ((v59 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_47;
      }
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v7 = *(v0 + 96);
      v8 = *(v0 + 64);
      OUTLINED_FUNCTION_0_114();
      sub_1DCF94404(v9, v7, v10);
      OUTLINED_FUNCTION_11_66();
      sub_1DCF945E8(v7, v8, v11);
      v12 = sub_1DD0DB46C();
      v13 = 0;
      v14 = *(v12 + 16);
      while (v14 != v13)
      {
        if (v13 >= *(v12 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v15 = OUTLINED_FUNCTION_12_64();
        v16(v15);
        ++v13;
        sub_1DD0DB52C();
        v17 = OUTLINED_FUNCTION_29_1();
        v18(v17);
        if (v1)
        {
          v19 = *(v0 + 64);

          OUTLINED_FUNCTION_1_123();
          sub_1DCF94464(v19, v20);
          goto LABEL_26;
        }
      }

      v35 = sub_1DD0DB46C();
      v36 = 0;
      v37 = *(v35 + 16);
      while (v37 != v36)
      {
        if (v36 >= *(v35 + 16))
        {
          goto LABEL_52;
        }

        v38 = OUTLINED_FUNCTION_12_64();
        v39(v38);
        ++v36;
        sub_1DD0DB53C();
        v40 = OUTLINED_FUNCTION_29_1();
        v41(v40);
        if (v1)
        {
          v42 = *(v0 + 64);

          OUTLINED_FUNCTION_1_123();
          sub_1DCF94464(v42, v43);
          goto LABEL_47;
        }
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v46 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v46, qword_1EDE57E00);
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v50, v51, "Unable to parse a confirmation response from the given USO parse");
        MEMORY[0x1E12A8390](v49, -1, -1);
      }

      v52 = *(v0 + 64);

      OUTLINED_FUNCTION_1_123();
      sub_1DCF94464(v52, v53);
LABEL_45:
      v44 = 2;
      goto LABEL_48;
    }

LABEL_41:
    if (qword_1EDE4F900 != -1)
    {
LABEL_53:
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v60 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v60, qword_1EDE57E00);
    v61 = sub_1DD0DD8EC();
    v62 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v64, v65, "Unable to parse a confirmation response from the given parse");
      MEMORY[0x1E12A8390](v63, -1, -1);
    }

    goto LABEL_45;
  }

  v21 = *(v0 + 88);
  OUTLINED_FUNCTION_0_114();
  sub_1DCF94404(v22, v21, v23);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
LABEL_26:
    v44 = 0;
    goto LABEL_48;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    goto LABEL_41;
  }

LABEL_47:
  v44 = 1;
LABEL_48:
  v66 = *(v0 + 104);
  **(v0 + 16) = v44;
  OUTLINED_FUNCTION_4_107();
  sub_1DCF94464(v66, v67);

  OUTLINED_FUNCTION_43();

  return v68();
}

uint64_t SimpleYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF93950()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_6_72();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_39(v1);

  return v4(v3);
}

uint64_t sub_1DCF93A08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1DCF94654;
  }

  else
  {
    v7 = sub_1DCF93B08;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF93B08()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB18FF0((v0 + 16), v1);
    OUTLINED_FUNCTION_43();

    return v2();
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 128) = v4;
    *v4 = v5;
    v4[1] = sub_1DCF94648;

    return sub_1DCCDCA70();
  }
}

uint64_t SimpleYesNoPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF93C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_6_72();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_39(v1);

  return v4(v3);
}

uint64_t sub_1DCF93CC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1DCF93FA0;
  }

  else
  {
    v7 = sub_1DCF93DC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCF93DC8()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1DCB18FF0((v0 + 56), v0 + 16);
    sub_1DCB18FF0((v0 + 16), v1);
    OUTLINED_FUNCTION_43();

    return v2();
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 128) = v4;
    *v4 = v5;
    v4[1] = sub_1DCF93EBC;

    return sub_1DCCDCA70();
  }
}

uint64_t sub_1DCF93EBC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t SimpleYesNoPromptFlowStrategy.deinit()
{
  OUTLINED_FUNCTION_2_107();
  sub_1DCF94464(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator));

  return v0;
}

uint64_t SimpleYesNoPromptFlowStrategy.__deallocating_deinit()
{
  SimpleYesNoPromptFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF94088()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCC467A0;

  return SimpleYesNoPromptFlowStrategy.makePromptForYesNoResponse()();
}

uint64_t sub_1DCF94130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.parseConfirmationResponse(input:)();
}

uint64_t sub_1DCF941D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(a1);
}

uint64_t sub_1DCF94268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCF9464C;

  return SimpleYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1);
}

uint64_t sub_1DCF94300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_responseGenerator);
  v19[3] = a10;
  v19[4] = a11;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a10);
  sub_1DCF945E8(a1, a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_baseManifest, type metadata accessor for OutputGenerationManifest);
  v21 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + OBJC_IVAR____TtC11SiriKitFlow29SimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v23 = a7;
  v23[1] = a8;
  return a9;
}

uint64_t sub_1DCF94404(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DCF94464(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for SimpleYesNoPromptFlowStrategy(uint64_t a1)
{
  result = qword_1ECCAB4B8;
  if (!qword_1ECCAB4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCF94510(uint64_t a1)
{
  result = type metadata accessor for OutputGenerationManifest(319);
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

uint64_t sub_1DCF945E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t static CorrectionsExitValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1DCF94794(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1DCF94794(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = sub_1DD0DF0AC();
      v20 = OUTLINED_FUNCTION_54_1();
      sub_1DCF94780(v20, v21);
      v22 = OUTLINED_FUNCTION_20();
      sub_1DCF94780(v22, v23);
      v24 = OUTLINED_FUNCTION_20();
      sub_1DCF94794(v24, v25);
      v26 = OUTLINED_FUNCTION_54_1();
      sub_1DCF94794(v26, v27);
      return v19 & 1;
    }

    sub_1DCF94780(v17, v3);
    v29 = OUTLINED_FUNCTION_20();
    sub_1DCF94780(v29, v30);
    v31 = OUTLINED_FUNCTION_20();
    sub_1DCF94794(v31, v32);
    v7 = OUTLINED_FUNCTION_20();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = OUTLINED_FUNCTION_54_1();
    sub_1DCF94780(v9, v10);
    v11 = OUTLINED_FUNCTION_20();
    sub_1DCF94780(v11, v12);
    v13 = OUTLINED_FUNCTION_20();
    sub_1DCF94794(v13, v14);
    v15 = OUTLINED_FUNCTION_54_1();
    sub_1DCF94794(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1DCF94794(*a1, 1uLL);
  sub_1DCF94794(v4, 1uLL);
  return v6;
}

double sub_1DCF94780(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1DCF94794(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void SiriEnvironment.correctionsClientProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for SiriCorrectionsClientProvider();
  a1[3] = OUTLINED_FUNCTION_0_115(&qword_1EDE4B5E0);
  sub_1DD0DCA7C();
}

void sub_1DCF948B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  OUTLINED_FUNCTION_54_1();
  sub_1DD0DCEDC();
}

void sub_1DCF94958(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_1_124(qword_1EDE4B5E8);
  sub_1DD0DCECC();
}

void sub_1DCF94A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v7 - v4;
  (*(v6 + 16))(&v7 - v4, a1);
  sub_1DCF94AF4(v5);
}

void sub_1DCF94AF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v7 - v5;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1, v2);
  sub_1DD0DCF8C();
}

void sub_1DCF94C10(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4D8, &qword_1DD105B18);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  sub_1DCE0FD04();
}

void sub_1DCF94CF0(uint64_t a1, char a2)
{
  v2 = *(*a1 + 24);
  if (a2)
  {
    (*(*(*a1 + 16) + 16))(*(*a1 + 24), *(*a1 + 32), *(*a1 + 8));
    sub_1DCF94AF4(v2);
  }

  sub_1DCF94AF4(*(*a1 + 32));
}

void SiriCorrectionsClientProvider.__allocating_init()()
{
  OUTLINED_FUNCTION_5_2();
  v0 = swift_allocObject();
  SiriCorrectionsClientProvider.init()(v0, v1, v2, v3, v4, v5, v6, v7);
}

void SiriCorrectionsClientProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SiriCorrectionsClientProvider.init(storage:)(a1, v2, v3, v4, v5, v6, v7, v8);
}

void SiriCorrectionsClientProvider.init(storage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_105(a1, a2, a3, a4, a5, a6, a7, a8, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4C8, &qword_1DD105AC0);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void sub_1DCF94FB0()
{
  type metadata accessor for SiriCorrectionsClientProvider();

    ;
  }
}

void sub_1DCF94FFC()
{
  type metadata accessor for SiriCorrectionsClientProvider();

  sub_1DD0DCF8C();
}

uint64_t destroy for CorrectionsActionOutcome(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 >= 3)
  {
    v1 = *result + 3;
  }

  v2 = *(result + 24);
  if (v1 == 1)
  {
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(result);
    }
  }

  else if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for CorrectionsActionOutcome(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  v5 = *(a2 + 24);
  if (v4 == 2)
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v11 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v11;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = 2;
  }

  else if (v4 == 1)
  {
    if (v5)
    {
      v6 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v6;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
    }

    v10 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v10;
    *(a1 + 56) = 1;
  }

  else
  {
    if (v5)
    {
      v8 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v8;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for CorrectionsActionOutcome(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    v5 = *(a1 + 24);
    if (v4 == 1)
    {
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    else if (v5)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 56);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    v7 = *(a2 + 3);
    if (v6 == 2)
    {
      if (v7)
      {
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v10 = *a2;
        v11 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v10;
        *(a1 + 16) = v11;
      }

      *(a1 + 56) = 2;
    }

    else if (v6 == 1)
    {
      if (v7)
      {
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v8 = *a2;
        v9 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v8;
        *(a1 + 16) = v9;
      }

      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = 1;
    }

    else
    {
      if (v7)
      {
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v12 = *a2;
        v13 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v12;
        *(a1 + 16) = v13;
      }

      *(a1 + 56) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for CorrectionsActionOutcome(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    v5 = *(a1 + 24);
    if (v4 == 1)
    {
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    else if (v5)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v6 = *(a2 + 56);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    if (v6 == 2)
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 32) = *(a2 + 32);
      v8 = 2;
    }

    else if (v6 == 1)
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 56) = v8;
  }

  return a1;
}

uint64_t sub_1DCF95590(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1DCF955AC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CorrectionsExitValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CorrectionsExitValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void SiriEnvironment.flowTask.modify(void *a1)
{
  a1[1] = v1;
  type metadata accessor for FlowTaskProvider();
  OUTLINED_FUNCTION_1_125(&qword_1EDE4B0C0);
  sub_1DD0DCA7C();
}

void sub_1DCF958AC(uint64_t *a1, char a2)
{
  if (a2)
  {
    sub_1DD0DCF8C();
  }

  SiriEnvironment.flowTask.setter(*a1);
}

void sub_1DCF95930(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_1DCB6CF38(v1, v2);
}

void sub_1DCF95970()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 24);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCF95AA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E0, &qword_1DD105D00);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  OUTLINED_FUNCTION_12_65();
}

void sub_1DCF95B38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4F8, &qword_1DD105F10);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 32);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCF95C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v6 - v4;
  sub_1DCB54EBC(a1, &v6 - v4);
  sub_1DCB71B4C(v5);
}

void sub_1DCF95CD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4E8, &qword_1DD105D08);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_116(&qword_1EDE4B0C8);
  sub_1DD0DCEDC();
}

uint64_t sub_1DCF95D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  (*(v12 + 16))(v7, a1);
  return a7(v7);
}

void sub_1DCF95E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB4F0, &qword_1DD105F08);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11_4(v0 + 40);
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCF95F98()
{
  type metadata accessor for FlowTaskProvider();

    ;
  }
}

void sub_1DCF95FE4()
{
  type metadata accessor for FlowTaskProvider();

  sub_1DD0DCF8C();
}

void SiriEnvironmentProperty.wrappedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1DD0DCA6C();
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentProperty(_BYTE *result, int a2, int a3)
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

id sub_1DCF965C0(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(void, BOOL, uint64_t))
{
  v5 = a1;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_1DD0DEB3C())
  {
    return 0;
  }

LABEL_3:
  if (a2(v5) == 1)
  {
    a3(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      return MEMORY[0x1E12A72C0](0, v5);
    }

    else
    {
      return *(v5 + 32);
    }
  }

  else
  {
  }

  return v5;
}

void *sub_1DCF96688(uint64_t a1)
{
  sub_1DCB17CA0(a1, v7);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  MEMORY[0x1EEE9AC00](v1, v1);
  (*(v3 + 16))(&v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_17_1();
  v4 = sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v4;
}

void sub_1DCF967AC()
{
  OUTLINED_FUNCTION_58_1();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  sub_1DCB4E718(v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  sub_1DD0DCF8C();
}

void sub_1DCF9683C()
{
  OUTLINED_FUNCTION_5_106();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_9_74();

  sub_1DCF98548(v1, v2, v3, v4, v5, v6);
}

void SiriKitAceViewBuilder.__allocating_init()()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
  }

  v0 = qword_1EDE46630;
  sub_1DCB4E718(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  type metadata accessor for SiriKitAceViewBuilder();
  v1 = swift_allocObject();
  sub_1DCF97F3C(v0, v1);
  sub_1DD0DCF8C();
}

void sub_1DCF9691C()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9(v0 + 16, v2);
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96994(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_9(v2 + 40, a2);

  sub_1DCBB91E0(v3);
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF969F0(void *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  v3 = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96A30()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9(v0 + 56, v2);
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96AA8(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  v3 = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96AE8(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

    v5 = sub_1DD0DEE0C();

    v3 = v5;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  }

  OUTLINED_FUNCTION_13_70(v2 + 56, v4);
  *(v2 + 56) = v3;

  sub_1DD0DCF8C();
}

void sub_1DCF96BB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 24, a2);
  *(v2 + 24) = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96C10()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9(v0 + 24, v2);
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96C88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 32, a2);
  *(v2 + 32) = a1;

  sub_1DD0DCF8C();
}

void sub_1DCF96CE0()
{
  OUTLINED_FUNCTION_15_62();
  OUTLINED_FUNCTION_10_9(v0 + 32, v2);
  v3 = v1;
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF96D58()
{
  OUTLINED_FUNCTION_58_1();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_19();

  sub_1DCF97914(v2, v3, v0, v1, v4);
}

void sub_1DCF96DA8()
{
  OUTLINED_FUNCTION_58_1();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_19();

  sub_1DCF97A18(v2, v3, v0, v1, v4);
}

uint64_t sub_1DCF96DF8()
{
  v1 = v0;
  v2 = sub_1DD0DB04C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v8);
  if ((*(v9 + 40))(v8, v9))
  {
    OUTLINED_FUNCTION_156(v0 + 32, v71);

    v11 = sub_1DCF965C0(v10, sub_1DCB08B14, sub_1DCB35460);
    v13 = v12;

    if (v13)
    {
      if (v13 != 1)
      {
        OUTLINED_FUNCTION_7_72();
        OUTLINED_FUNCTION_14_59();

        sub_1DCC341E0(v56);
        OUTLINED_FUNCTION_6_73();

        sub_1DCBB95CC(v11);
        goto LABEL_48;
      }

      v14 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
      sub_1DD0DB03C();
      v15 = sub_1DD0DAFFC();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      sub_1DCB4D8E8(v15, v17, v14);

      v18 = sub_1DCB08B14(v11);
      if (!v18)
      {
        sub_1DCF98814(v11, 1);
        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }

      v19 = v18;
      v65 = v14;
      v70[0] = v7;
      sub_1DD0DED0C();
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E12A72C0](v20, v11);
          }

          else
          {
            v21 = *(v11 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = [objc_allocWithZone(MEMORY[0x1E69C7B70]) init];
          sub_1DCB35468(v22, &selRef_text);
          if (v24)
          {
            v25 = sub_1DD0DDF8C();
          }

          else
          {
            v25 = 0;
          }

          [v23 setTitle_];

          sub_1DCB35468(v22, &selRef_secondaryText);
          if (v26)
          {
            v27 = sub_1DD0DDF8C();
          }

          else
          {
            v27 = 0;
          }

          [v23 setLabel_];

          if (sub_1DCF978A8(v22))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
            v28 = sub_1DD0DE2DC();
          }

          else
          {
            v28 = 0;
          }

          v20 = v20 + 1;
          [v23 setCommands_];

          sub_1DD0DECDC();
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
        }

        while (v19 != v20);
        sub_1DCF98814(v11, 1);
        v29 = v70[0];
        v7 = MEMORY[0x1E69E7CC0];
        v14 = v65;
LABEL_44:
        sub_1DCC363A4(v29, v14);
        v45 = v14;
        MEMORY[0x1E12A6920]();
        OUTLINED_FUNCTION_3_116();
        if (!v31)
        {
LABEL_45:
          OUTLINED_FUNCTION_17_1();
          sub_1DD0DE3AC();
          OUTLINED_FUNCTION_7_72();

          v11 = sub_1DCC341E0(v57);

          sub_1DCBB95CC(v11);

          goto LABEL_48;
        }

LABEL_63:
        OUTLINED_FUNCTION_0_117();
        goto LABEL_45;
      }

      __break(1u);
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69C7B50]) init];
      sub_1DD0DB03C();
      v41 = sub_1DD0DAFFC();
      v7 = v42;
      (*(v3 + 8))(v6, v2);
      sub_1DCB4D8E8(v41, v7, v19);

      [v19 setButtonView_];
      OUTLINED_FUNCTION_7_72();
      v43 = OUTLINED_FUNCTION_14_59();
      if (!sub_1DCB08B14(v43))
      {
LABEL_34:
        v45 = v19;
        MEMORY[0x1E12A6920]();
        if (*(v72 + 16) >= *(v72 + 24) >> 1)
        {
          sub_1DD0DE33C();
        }

        sub_1DD0DE3AC();
        v46 = *(v1 + 5);

        sub_1DCE1871C(1, v46);
        v50 = v49 >> 1;
        v51 = (v49 >> 1) - v48;
        if (!__OFSUB__(v49 >> 1, v48))
        {
          if (v51)
          {
            v52 = v47;
            v7 = v48;
            v69[0] = MEMORY[0x1E69E7CC0];
            result = sub_1DD0DED0C();
            if (v51 < 0)
            {
              __break(1u);
              return result;
            }

            while (v7 < v50)
            {
              v54 = *(v52 + 8 * v7);
              sub_1DD0DECDC();
              sub_1DD0DED1C();
              sub_1DD0DED2C();
              sub_1DD0DECEC();
              if (v50 == ++v7)
              {
                swift_unknownObjectRelease();
                v55 = v69[0];
                goto LABEL_47;
              }
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          swift_unknownObjectRelease();
          v55 = MEMORY[0x1E69E7CC0];
LABEL_47:
          sub_1DCBB95CC(v55);

          sub_1DCF98814(v11, 0);
          v7 = MEMORY[0x1E69E7CC0];
LABEL_48:
          OUTLINED_FUNCTION_156(v1 + 16, v69);

          sub_1DCC341F4(v58);
          OUTLINED_FUNCTION_6_73();

          sub_1DCBB95CC(v11);
          v59 = *(v1 + 6);
          MEMORY[0x1E12A6920]();
          OUTLINED_FUNCTION_3_116();
          if (!v31)
          {
LABEL_49:
            OUTLINED_FUNCTION_17_1();
            sub_1DD0DE3AC();
            OUTLINED_FUNCTION_156(v1 + 56, v68);

            v33 = sub_1DCC34354(v60);
LABEL_50:
            v1 = v33;

            sub_1DCBB95CC(v1);
            goto LABEL_51;
          }

LABEL_61:
          OUTLINED_FUNCTION_0_117();
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1DCB35460(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) == 0)
      {
        v44 = *(v6 + 32);
LABEL_33:
        [v19 setUtteranceView_];

        goto LABEL_34;
      }
    }

    v44 = MEMORY[0x1E12A72C0](0, v6);

    goto LABEL_33;
  }

  if (sub_1DCF976D4())
  {
    v30 = *(v0 + 48);
    MEMORY[0x1E12A6920]();
    OUTLINED_FUNCTION_3_116();
    if (v31)
    {
      OUTLINED_FUNCTION_0_117();
    }

    OUTLINED_FUNCTION_17_1();
    sub_1DD0DE3AC();
    OUTLINED_FUNCTION_156(v0 + 40, v71);
    OUTLINED_FUNCTION_14_59();

    v33 = sub_1DCC341E0(v32);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_156(v0 + 40, v71);
  OUTLINED_FUNCTION_14_59();

  sub_1DCC341E0(v34);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v8);
  OUTLINED_FUNCTION_156(v0 + 16, v70);

  sub_1DCC341F4(v35);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v8);
  OUTLINED_FUNCTION_156(v0 + 24, v69);

  sub_1DCC34368(v36);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v8);
  OUTLINED_FUNCTION_156(v0 + 32, v68);

  sub_1DCC3437C(v37);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v8);
  v38 = *(v0 + 48);
  MEMORY[0x1E12A6920]();
  OUTLINED_FUNCTION_3_116();
  if (v31)
  {
    OUTLINED_FUNCTION_0_117();
  }

  OUTLINED_FUNCTION_17_1();
  sub_1DD0DE3AC();
  OUTLINED_FUNCTION_156(v0 + 56, v67);

  sub_1DCC34354(v39);
  OUTLINED_FUNCTION_6_73();

  sub_1DCBB95CC(v8);
  v40 = *(v0 + 64);
  MEMORY[0x1E12A6920]();
  v1 = *(v72 + 16);
  if (v1 >= *(v72 + 24) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
LABEL_51:
  v61 = 0;
  v62 = v72;
  v66 = v7;
  v63 = *(v72 + 16);
  while (v63 != v61)
  {
    if (v61 >= *(v62 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    v64 = *(v62 + 8 * v61++ + 32);
    if (v64)
    {
      v1 = v64;
      MEMORY[0x1E12A6920]();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_0_117();
      }

      OUTLINED_FUNCTION_19();
      sub_1DD0DE3AC();
      v7 = v66;
    }
  }

  return v7;
}

uint64_t sub_1DCF976D4()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  if (((*(v2 + 32))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = v0[6];
  if (!v3)
  {
    return 0;
  }

  result = sub_1DCF97830(v3);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = sub_1DCB08B14(result);

  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_156((v0 + 5), v7);
  result = sub_1DCB08B14(v0[5]);
  if (result)
  {
    OUTLINED_FUNCTION_156((v0 + 2), &v6);
    return sub_1DCB08B14(v0[2]) == 0;
  }

  return result;
}

uint64_t SiriKitAceViewBuilder.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  return v0;
}

uint64_t SiriKitAceViewBuilder.__deallocating_deinit()
{
  SiriKitAceViewBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF97830(void *a1)
{
  v2 = [a1 items];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1ECCAB500, 0x1E69C7B70);
  v3 = sub_1DD0DE2EC();

  return v3;
}

uint64_t sub_1DCF978A8(void *a1)
{
  v1 = [a1 commands];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCF97914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a4[12];
  v11 = a4[13];
  __swift_project_boxed_opaque_existential_1(a4 + 9, v10);
  if ((*(v11 + 16))(v10, v11))
  {
    sub_1DCF97A18(a1, a2, a3, a4, a5);
  }

  type metadata accessor for SiriKitAceViewBuilder();
  sub_1DCF97B6C(a3, a1, a2);
  v13 = OUTLINED_FUNCTION_10_9((a4 + 4), v12);
  MEMORY[0x1E12A6920](v13);
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_19();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

void sub_1DCF97A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SiriKitAceViewBuilder();
  sub_1DCF97DAC(a3, a1, a2);
  v10 = OUTLINED_FUNCTION_10_9(a4 + 24, v9);
  MEMORY[0x1E12A6920](v10);
  OUTLINED_FUNCTION_10_76();
  sub_1DCBBF95C();
  OUTLINED_FUNCTION_17_1();
  sub_1DD0DE3AC();
  swift_endAccess();
  sub_1DD0DCF8C();
}

id sub_1DCF97AC4()
{
  OUTLINED_FUNCTION_5_106();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DD0E15D0;
  *(v3 + 32) = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
  v5 = v2;
  v6 = [v4 init];
  sub_1DCB72D80(v1, v0, v6);
  v7 = OUTLINED_FUNCTION_19();
  sub_1DCC9DC0C(v7, v8);
  return v6;
}

id sub_1DCF97B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E15D0;
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E69C7B10]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  sub_1DCB72D80(a2, a3, v8);
  sub_1DCC9DC0C(v6, v8);
  return v8;
}

id sub_1DCF97C28(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD0E15D0;
  *(v4 + 32) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  v6 = a1;
  v7 = [v5 init];
  sub_1DCFA3860(v4, v7);
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v8 setCentered_];
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  v10 = OUTLINED_FUNCTION_19();
  sub_1DCB72D80(v10, v11, v9);
  [v8 setDecoratedLabel_];
  [v8 setAction_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E15D0;
  *(v13 + 32) = v8;
  v14 = v8;
  v15 = OUTLINED_FUNCTION_6_73();
  sub_1DCFA387C(v15, v12);

  return v12;
}

id sub_1DCF97DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E15D0;
  *(v6 + 32) = a1;
  v7 = objc_allocWithZone(MEMORY[0x1E69C7A18]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  sub_1DCFA3860(v6, v8);
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7A08]) init];
  [v9 setCentered_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7B38]) init];
  sub_1DCB72D80(a2, a3, v10);
  [v9 setDecoratedLabel_];
  [v9 setAction_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7A20]) init];
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD0E15D0;
  *(v12 + 32) = v9;
  v13 = v9;
  sub_1DCFA387C(v12, v11);

  return v11;
}

void *sub_1DCF97F3C(uint64_t a1, void *a2)
{
  v7 = type metadata accessor for RefreshableDeviceState();
  v8 = &protocol witness table for RefreshableDeviceState;
  *&v6 = a1;
  v4 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v4;
  a2[4] = v4;
  a2[5] = v4;
  a2[6] = 0;
  a2[7] = v4;
  a2[8] = 0;
  sub_1DCB18FF0(&v6, (a2 + 9));
  return a2;
}

void *sub_1DCF97FA8()
{
  OUTLINED_FUNCTION_5_106();
  v9 = v3;
  v10 = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v8);
  (*(*(v0 - 8) + 32))(boxed_opaque_existential_1Tm, v2, v0);
  v6 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v6;
  v1[4] = v6;
  v1[5] = v6;
  v1[6] = 0;
  v1[7] = v6;
  v1[8] = 0;
  sub_1DCB18FF0(&v8, (v1 + 9));
  return v1;
}

void sub_1DCF9803C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4[3];
  v8 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v7);
  if ((*(v8 + 16))(v7, v8))
  {
    sub_1DCB17CA0(a4, v16);
    type metadata accessor for SiriKitAceViewBuilder();
    swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x1EEE9AC00](v9, v9);
    (*(v11 + 16))(&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1DCF97FA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    sub_1DCF97C28(a1, a2);
    sub_1DCF96C10();
  }

  sub_1DCB17CA0(a4, v16);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x1EEE9AC00](v12, v12);
  (*(v14 + 16))(&v16[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  sub_1DCF97AC4();
  sub_1DCF96CE0();
}

void sub_1DCF982BC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = *a4;
  v6 = &protocol witness table for RefreshableDeviceState;
  v4 = a4;
  sub_1DD0DCF8C();
}

void sub_1DCF98548(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v20);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a4, a5);
  if ((*(a6 + 16))(a5, a6))
  {
    sub_1DCB17CA0(v20, v18);
    type metadata accessor for SiriKitAceViewBuilder();
    swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v12, v12);
    (*(v14 + 16))(v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1DCF97FA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    sub_1DCF97C28(a1, a2);
    sub_1DCF96C10();
  }

  sub_1DCB17CA0(v20, v18);
  type metadata accessor for SiriKitAceViewBuilder();
  swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x1EEE9AC00](v15, v15);
  (*(v17 + 16))(v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCF97FA8();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  sub_1DCF97AC4();
  sub_1DCF96CE0();
}

void sub_1DCF98814(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t dispatch thunk of static SiriKitAceViewBuilder.makeBuilderFromLaunchAppCommand(launchAppCommand:buttonLabel:deviceState:)()
{
  return (*(v0 + 160))();
}

{
  return (*(v0 + 168))();
}

void sub_1DCF98AD4(uint64_t a1@<X8>)
{
  v4 = *(v1 + 256);
  v3 = *(v1 + 264);
  v5 = *(v1 + 272);
  if (v5 == 3)
  {
    *a1 = v4;
    *(a1 + 8) = v3 & 1 | 0x40;

    v8 = v4;
  }

  else
  {
    if (v5 != 4)
    {
      goto LABEL_6;
    }

    if (!(v4 ^ 2 | v3))
    {
      __swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
      sub_1DCC56B70();
    }

    if (v4 ^ 3 | v3)
    {
LABEL_6:
      sub_1DCF9D570();
      v6 = swift_allocError();
      *v7 = v4;
      *(v7 + 8) = v3;
      *(v7 + 16) = v5;
      *a1 = v6;
      *(a1 + 8) = 64;

      sub_1DCF9D0F0(v4, v3, v5);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0x80;
    }
  }
}

void sub_1DCF98CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  __swift_project_boxed_opaque_existential_1((v3 + 216), *(v3 + 240));
  v8 = sub_1DCF997A4(a1, a2, v5);
  v10 = v9;
  if (v8 == sub_1DCF997A4(*(v4 + 256), *(v4 + 264), *(v4 + 272)) && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1DD0DF0AC();

    if ((v13 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v14 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v14, qword_1EDE57E00);

      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v15, qword_1EDE57E00);

  sub_1DD0DCF8C();
}

unint64_t sub_1DCF997A4(uint64_t a1, uint64_t a2, char a3)
{
  result = 0x726F7272652ELL;
  switch(a3)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6F4679646165722ELL;
      switch(a1)
      {
        case 1:
          return result;
        case 2:
          result = 0x74656C706D6F632ELL;
          break;
        case 3:
          result = 0x6C6C65636E61632ELL;
          break;
        default:
          result = 0xD000000000000012;
          break;
      }

      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1DCF998D4(void *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 256);
  v5 = *(v3 + 264);
  *(v3 + 256) = a1;
  *(v3 + 264) = a2;
  v6 = *(v3 + 272);
  *(v3 + 272) = a3;
  sub_1DCF9D0F0(a1, a2, a3);
  sub_1DCF98CFC(v4, v5, v6);
}

uint64_t sub_1DCF99964()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_12_42(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "The synchronous version of on was called. Unexpected...", v0, 2u);
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCF99A0C()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  type metadata accessor for Input(0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF99AC4()
{
  v37 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_1DD0DD8FC();
  v0[7] = __swift_project_value_buffer(v4, qword_1EDE57E00);
  sub_1DCC174D4(v3, v2);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v1 = OUTLINED_FUNCTION_83();
    v36 = swift_slowAlloc();
    *v1 = 136315650;
    v7 = sub_1DD0DF2AC();
    v9 = sub_1DCB10E9C(v7, v8, &v36);

    *(v1 + 4) = v9;
    *(v1 + 12) = 2080;
    *(v1 + 14) = sub_1DCB10E9C(0x28636E7973416E6FLL, 0xEF293A7475706E69, &v36);
    *(v1 + 22) = 2080;
    v10 = Input.description.getter();
    v12 = v11;
    OUTLINED_FUNCTION_1_126();
    v13 = sub_1DCB10E9C(v10, v12, &v36);

    *(v1 + 24) = v13;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "%s %s: %s", v1, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {

    OUTLINED_FUNCTION_1_126();
  }

  v14 = v0[3];
  if (*(v14 + 272) != 4)
  {
    goto LABEL_12;
  }

  v15 = *(v14 + 256);
  v16 = *(v14 + 264);
  if (v15 != 1 || v16 != 0)
  {
    if (!(v16 | v15))
    {
      sub_1DCC174D4(v0[2], v0[5]);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_12_42(v29))
      {
        OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_93();
        *v1 = 136315138;
        v30 = Input.description.getter();
        v32 = v31;
        OUTLINED_FUNCTION_1_126();
        v33 = sub_1DCB10E9C(v30, v32, &v36);

        *(v1 + 4) = v33;
        OUTLINED_FUNCTION_88(&dword_1DCAFC000, v34, v35, "AuthoredFlow accepting input %s as it has not started execution and may have been pushed as the first Flow on the Runtime. If this is not desired please investigate why this input was sent to the AuthoredFlow");
        OUTLINED_FUNCTION_60_0();
        OUTLINED_FUNCTION_92_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_126();
      }

      goto LABEL_15;
    }

LABEL_12:
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v19))
    {
      v20 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v20);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v21, v22, "Received input but we are not in the expected state. Ignoring...");
      OUTLINED_FUNCTION_62();
    }

LABEL_15:

    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_96_0();

    __asm { BRAA            X2, X16 }
  }

  __swift_project_boxed_opaque_existential_1((v14 + 216), *(v14 + 240));
  v25 = swift_task_alloc();
  v0[8] = v25;
  *v25 = v0;
  v25[1] = sub_1DCF99E58;
  OUTLINED_FUNCTION_96_0();

  return sub_1DCC538AC();
}

uint64_t sub_1DCF99E58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCF99F40()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v1 + 72);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v6);
      _os_log_impl(&dword_1DCAFC000, v3, v4, "Parser indicates that it will produce an event for the current input. Will process input.", v0, 2u);
      OUTLINED_FUNCTION_62();
    }

    v8 = *(v1 + 72);
    v7 = *(v1 + 80);

    sub_1DCB02C48(v8, v7);
    sub_1DCF998D4(v8, v7, 0);
  }

  if (v5)
  {
    v9 = OUTLINED_FUNCTION_50_0();
    *v9 = 0;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Received input that we cannot process. Ignoring...", v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  v10 = OUTLINED_FUNCTION_129();

  return v11(v10);
}

uint64_t sub_1DCF9A090()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[6] = v2;
  v1[7] = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v1[8] = v4;
  *v4 = v5;
  v4[1] = sub_1DCF9A124;

  return sub_1DCF9A538(v3);
}

uint64_t sub_1DCF9A124()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCF9A238()
{
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[9];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_33_25(4.8149e-34);
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, &v15);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v9, v10, "Unexpected error while executing: %s");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v0[10] = sub_1DD0DDE9C();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v11;
  *v11 = v12;
  v11[1] = sub_1DCF9A3E0;
  OUTLINED_FUNCTION_48();

  return sub_1DCF9BA48();
}

uint64_t sub_1DCF9A3E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF9A4E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9A538(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v2[40] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9A578);
}

uint64_t sub_1DCF9A578()
{
  v26 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_12_42(v3))
  {
    v4 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_1DD0DF2AC();
    v7 = sub_1DCB10E9C(v5, v6, v25);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1DCB10E9C(0xD000000000000013, 0x80000001DD1268B0, v25);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[39];
  v9 = *(v8 + 256);
  v0[41] = v9;
  v10 = *(v8 + 264);
  v0[42] = v10;
  switch(*(v8 + 272))
  {
    case 1:
      OUTLINED_FUNCTION_36_38();

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[46] = v15;
      *v15 = v16;
      v15[1] = sub_1DCF9ADA8;
      OUTLINED_FUNCTION_96_0();

      return sub_1DCC54C64();
    case 2:
      goto LABEL_12;
    case 3:
      if (v10)
      {
        goto LABEL_14;
      }

      v18 = v9;
      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v20))
      {
        v21 = OUTLINED_FUNCTION_50_0();
        *v21 = 0;
        _os_log_impl(&dword_1DCAFC000, v19, v8, "Attempting to handle error with generic dialog.", v21, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      v0[52] = sub_1DD0DDE9C();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[53] = v22;
      *v22 = v23;
      v22[1] = sub_1DCF9B390;
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCF9BA48();
      break;
    case 4:
      if (__PAIR128__((v9 >= 2) + v10 - 1, v9 - 2) < 2)
      {
LABEL_14:
        sub_1DD0DCF8C();
      }

      if (v9 | v10)
      {
LABEL_12:
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_36_38();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[49] = v11;
      *v11 = v12;
      v11[1] = sub_1DCF9B030;
      OUTLINED_FUNCTION_96_0();

      result = sub_1DCC530C0();
      break;
    default:
      OUTLINED_FUNCTION_36_38();
      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCF9AB5C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 352) = v5;
  *v5 = v4;
  v5[1] = sub_1DCF9ACB0;
  v6 = *(v1 + 304);

  return sub_1DCF9C1A8(v6, v2 + 112);
}

uint64_t sub_1DCF9ACB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF9ADA8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 376) = v5;
  *v5 = v4;
  v5[1] = sub_1DCF9AF38;
  v6 = *(v1 + 304);

  return sub_1DCF9C1A8(v6, v2 + 16);
}

uint64_t sub_1DCF9AF38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF9B030()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  v5 = swift_task_alloc();
  *(v2 + 400) = v5;
  *v5 = v4;
  v5[1] = sub_1DCF9B184;
  v6 = *(v1 + 304);

  return sub_1DCF9C1A8(v6, v2 + 208);
}

uint64_t sub_1DCF9B184()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF9B27C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 208);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B2D4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 0);
  sub_1DCC5BF24(v0 + 112);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B338()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}