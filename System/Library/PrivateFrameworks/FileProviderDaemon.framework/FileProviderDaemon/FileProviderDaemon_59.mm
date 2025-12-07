void sub_1CF664F1C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1CF6651BC(unint64_t a1)
{
  if (((a1 >> 58) & 0x3C | (a1 >> 1) & 3) == 0x1E)
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v2 = v1;
  }

  else
  {
    v4 = swift_allocObject();
    v1 = a1;
    *(v4 + 16) = a1;
    v2 = v4 | 0x7000000000000004;
  }

  sub_1CEFD09A0(v1);
  return v2;
}

uint64_t sub_1CF66523C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v22 = sub_1CF6656D8(a1, a2, a3, a4, a5);
  if (v22)
  {
    v23 = v22;
    v24 = [v22 date];

    sub_1CF9E5CB8();
    (*(v11 + 56))(v21, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v21, 1, 1, v10);
  }

  sub_1CF06EAD4(v21, v18);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1CEFD9E84(v21);
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v26 = v25;
    v27 = *(v11 + 8);
    v11 += 8;
    result = v27(v15, v10);
    v29 = v26 * 1000000000.0;
    if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v29 <= -9.22337204e18)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v29 < 9.22337204e18)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  (*(v11 + 32))(v15, v18, v10);
  v30 = v36;
  (*(v11 + 16))(v36, v15, v10);
  sub_1CF9E5C98();
  v32 = v31;
  v33 = *(v11 + 8);
  v33(v30, v10);
  v33(v15, v10);
  result = sub_1CEFD9E84(v21);
  v34 = v32 * 1000000000.0;
  if (COERCE__INT64(fabs(v32 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  result = sub_1CF668C3C(v37, v38, v39, v40, v41);
  if (v35)
  {
    return 0;
  }

  return result;
}

void sub_1CF6655E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1CF9E7818();
    MEMORY[0x1D386A470](v8);
    v3 = sub_1CF9E7818();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D386A470](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D3869C30](i, a2);
      sub_1CF9E7578();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1CF9E7578();

      --v3;
    }

    while (v3);
  }
}

void *sub_1CF6656D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
      swift_getAssociatedTypeWitness();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      goto LABEL_13;
    case 1uLL:
    case 3uLL:
    case 8uLL:
    case 0x16uLL:
    case 0x24uLL:
      swift_getAssociatedTypeWitness();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      goto LABEL_6;
    case 2uLL:
      v14 = &unk_1EC4C4F40;
      v15 = qword_1CFA0F4C0;
      goto LABEL_27;
    case 4uLL:
    case 5uLL:
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      goto LABEL_6;
    case 6uLL:
    case 7uLL:
    case 0x14uLL:
    case 0x21uLL:
    case 0x25uLL:
    case 0x2CuLL:
      v6 = &qword_1EC4C20E8;
      v7 = &unk_1CFA0F480;
      goto LABEL_11;
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
      swift_getAssociatedTypeWitness();
      goto LABEL_5;
    case 0xEuLL:
    case 0xFuLL:
      v5 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      goto LABEL_15;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      v17[0] = swift_getAssociatedTypeWitness();
      v17[1] = swift_getAssociatedTypeWitness();
      v17[2] = swift_getAssociatedConformanceWitness();
      v17[3] = swift_getAssociatedConformanceWitness();
      type metadata accessor for ReconciliationID(255, v17);
LABEL_5:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
LABEL_6:
      v8 = swift_getTupleTypeMetadata2();
      goto LABEL_12;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v5 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_15;
    case 0x1AuLL:
      v5 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v5)
      {
        return v5;
      }

      goto LABEL_15;
    case 0x20uLL:
      v14 = &unk_1EC4C5210;
      v15 = &unk_1CFA0F4B0;
      goto LABEL_27;
    case 0x23uLL:
      v14 = &unk_1EC4C5200;
      v15 = "hx\t";
      goto LABEL_27;
    case 0x26uLL:
      v14 = &qword_1EC4C20F0;
      v15 = &unk_1CFA0F4A0;
      goto LABEL_27;
    case 0x27uLL:
      v14 = &unk_1EC4C4AF0;
      v15 = "pN\t";
      goto LABEL_27;
    case 0x28uLL:
    case 0x29uLL:
      v6 = &unk_1EC4C51F0;
      v7 = qword_1CFA17B30;
LABEL_11:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
LABEL_12:
      TupleTypeMetadata2 = v8;
LABEL_13:
      v10 = swift_projectBox();
      v11 = *(TupleTypeMetadata2 + 48);
      goto LABEL_14;
    case 0x2AuLL:
      v14 = &unk_1EC4C4B00;
      v15 = &unk_1CFA0F490;
LABEL_27:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v10 = swift_projectBox();
      v11 = *(v16 + 64);
LABEL_14:
      v5 = *(v10 + v11);
LABEL_15:
      v12 = v5;
      break;
    default:
      return v5;
  }

  return v5;
}

char *sub_1CF665B0C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v538 = sub_1CF9E75D8();
  v536 = *(v538 - 8);
  MEMORY[0x1EEE9AC00](v538);
  v537 = &v535 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v543[0] = v12;
  v543[1] = AssociatedTypeWitness;
  v543[2] = AssociatedConformanceWitness;
  v543[3] = v14;
  v539 = v14;
  v15 = type metadata accessor for ReconciliationID(0, v543);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v535 - v17;
  v19 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v535 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v540 = AssociatedTypeWitness;
  v541 = &v535 - v23;
  *&v29 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v257 = swift_projectBox();
      v258 = *(v257 + *(TupleTypeMetadata2 + 48));
      (*(v31 + 16))(v30, v257, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v258;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55EB0);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 2uLL:
      v44 = v25;
      v45 = v28;
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v189 = swift_projectBox();
      v190 = *v189;
      v191 = *(v189 + 1);
      v192 = *(v188 + 48);
      v193 = *&v189[*(v188 + 64)];
      v49 = v541;
      (*(v45 + 16))(v541, &v189[v192], v44);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;

      v50 = v193;
      sub_1CF9E7948();
      v543[1], v194, v195, v196, v197, v198, v199, v200;
      strcpy(v543, "coordination(");
      HIWORD(v543[1]) = -4864;
      MEMORY[0x1D3868CC0](v190, v191);
      v191, v201, v202, v203, v204, v205, v206, v207;
      MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
      v208 = sub_1CF9E5928();
      v209 = [v208 fp_shortDescription];

      v210 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v212 = v211;

      MEMORY[0x1D3868CC0](v210, v212);
      v212, v213, v214, v215, v216, v217, v218, v219;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 3uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v238 = swift_getTupleTypeMetadata2();
      v239 = swift_projectBox();
      v240 = *(v239 + *(v238 + 48));
      (*(v31 + 16))(v30, v239, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v240;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x3E2D44496D657469, 0xEC000000284C5255);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 4uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v160 = v538;
      v161 = swift_getTupleTypeMetadata2();
      v162 = swift_projectBox();
      v163 = *(v162 + *(v161 + 48));
      v32 = v540;
      if ((*(v31 + 48))() == 1)
      {
        v543[0] = 0xD00000000000001ALL;
        v543[1] = 0x80000001CFA55E70;
        v164 = [v163 description];
        goto LABEL_86;
      }

      v517 = v537;
      (*(v536 + 16))(v537, v162, v160);
      (*(v31 + 32))(v30, v517, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x746172656D756E65, 0xEC000000286E6F69);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v518 = [v163 description];
      goto LABEL_89;
    case 5uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v295 = v538;
      v296 = swift_getTupleTypeMetadata2();
      v297 = swift_projectBox();
      v298 = *(v297 + *(v296 + 48));
      v32 = v540;
      if ((*(v31 + 48))() == 1)
      {
        v543[0] = 0xD00000000000001BLL;
        v543[1] = 0x80000001CFA55E50;
        v164 = [v298 description];
        goto LABEL_86;
      }

      v519 = v537;
      (*(v536 + 16))(v537, v297, v295);
      (*(v31 + 32))(v30, v519, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x616572436D657469, 0xED0000286E6F6974);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v518 = [v298 description];
LABEL_89:
      v520 = v518;
      v521 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v523 = v522;

      MEMORY[0x1D3868CC0](v521, v523);
      v523, v524, v525, v526, v527, v528, v529, v530;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
LABEL_69:
      v93 = v543[0];
      (*(v31 + 8))(v30, v32);
      return v93;
    case 6uLL:
      v44 = v25;
      v45 = v28;
      v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v304 = swift_projectBox();
      v305 = *(v304 + *(v303 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v304, v44);
      strcpy(v543, "eviction(");
      WORD1(v543[1]) = 0;
      HIDWORD(v543[1]) = -385875968;
      v50 = v305;
      v306 = sub_1CF9E5928();
      v307 = [v306 fp_shortDescription];

      v308 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v310 = v309;

      MEMORY[0x1D3868CC0](v308, v310);
      v310, v311, v312, v313, v314, v315, v316, v317;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 7uLL:
      v44 = v25;
      v45 = v28;
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v242 = swift_projectBox();
      v243 = *(v242 + *(v241 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v242, v44);
      v543[0] = 0x676E496563726F66;
      v543[1] = 0xEF286E6F69747365;
      v50 = v243;
      v244 = sub_1CF9E5928();
      v245 = [v244 fp_shortDescription];

      v246 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v248 = v247;

      MEMORY[0x1D3868CC0](v246, v248);
      v248, v249, v250, v251, v252, v253, v254, v255;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 8uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v324 = swift_getTupleTypeMetadata2();
      v325 = swift_projectBox();
      v326 = *(v325 + *(v324 + 48));
      (*(v31 + 16))(v30, v325, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v326;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA55EF0);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 9uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v183 = swift_getTupleTypeMetadata2();
      v184 = swift_projectBox();
      v185 = *(v184 + *(v183 + 48));
      (*(v31 + 16))(v30, v184, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v185;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6E6F697463697665, 0xE900000000000028);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0xAuLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v321 = swift_getTupleTypeMetadata2();
      v322 = swift_projectBox();
      v323 = *(v322 + *(v321 + 48));
      (*(v31 + 16))(v30, v322, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v323;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55E30);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0xBuLL:
      v158 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v159 = 0xEB0000000028646ELL;
      goto LABEL_43;
    case 0xCuLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v180 = swift_getTupleTypeMetadata2();
      v181 = swift_projectBox();
      v182 = *(v181 + *(v180 + 48));
      (*(v31 + 16))(v30, v181, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v182;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x286D6574496E6970, 0xE800000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0xDuLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v300 = swift_getTupleTypeMetadata2();
      v301 = swift_projectBox();
      v302 = *(v301 + *(v300 + 48));
      (*(v31 + 16))(v30, v301, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v302;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6574496E69706E75, 0xEA0000000000286DLL);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0xEuLL:
      v120 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v121 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v543, "detachRoots(");
      BYTE5(v543[1]) = 0;
      HIWORD(v543[1]) = -5120;
      if (v120 >> 62)
      {
        v531 = v25;
        v532 = v28;
        v533 = v120;
        v534 = sub_1CF9E7818();
        v120 = v533;
        v28 = v532;
        v122 = v534;
        v25 = v531;
      }

      else
      {
        v122 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v123 = MEMORY[0x1E69E7CC0];
      if (!v122)
      {
        goto LABEL_85;
      }

      v124 = v120;
      v537 = v121;
      v125 = v28;
      v540 = v25;
      v542 = MEMORY[0x1E69E7CC0];
      result = sub_1CEFE95CC(0, v122 & ~(v122 >> 63), 0);
      if (v122 < 0)
      {
        __break(1u);
        return result;
      }

      v127 = 0;
      v123 = v542;
      v128 = v124;
      v538 = v124 & 0xC000000000000001;
      v539 = v124;
      v129 = (v125 + 8);
      v130 = v122;
      do
      {
        if (v538)
        {
          v131 = MEMORY[0x1D3869C30](v127, v128);
        }

        else
        {
          v131 = v128[v127 + 4];
        }

        v132 = v131;
        v133 = [v132 knownFolder];
        v134 = v541;
        sub_1CF9E59D8();

        v135 = sub_1CF9E5928();
        v136 = [v135 fp_shortDescription];

        v137 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v139 = v138;

        (*v129)(v134, v540);
        v542 = v123;
        v141 = *v123->tree;
        v140 = *v123->tester;
        if (v141 >= v140 >> 1)
        {
          sub_1CEFE95CC((v140 > 1), v141 + 1, 1);
          v123 = v542;
        }

        ++v127;
        *v123->tree = v141 + 1;
        v142 = v123 + 16 * v141;
        *(v142 + 4) = v137;
        *(v142 + 5) = v139;
        v128 = v539;
      }

      while (v130 != v127);
      v121 = v537;
LABEL_85:
      v542 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v489 = sub_1CF9E67D8();
      v491 = v490;
      v123, v490, v492, v493, v494, v495, v496, v497;
      MEMORY[0x1D3868CC0](v489, v491);
      v491, v498, v499, v500, v501, v502, v503, v504;
      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v164 = [v121 description];
LABEL_86:
      v505 = v164;
      v506 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v508 = v507;

      MEMORY[0x1D3868CC0](v506, v508);
      v516 = v508;
LABEL_93:
      v516, v509, v510, v511, v512, v513, v514, v515;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      return v543[0];
    case 0xFuLL:
      v220 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v221 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      strcpy(v543, "attachRoots(");
      BYTE5(v543[1]) = 0;
      HIWORD(v543[1]) = -5120;
      v222 = *(v220 + 16);
      v223 = MEMORY[0x1E69E7CC0];
      if (v222)
      {
        v537 = v221;
        v542 = MEMORY[0x1E69E7CC0];
        v540 = v25;
        v224 = v28;
        sub_1CEFE95CC(0, v222, 0);
        v225 = v540;
        v223 = v542;
        v226 = *(v224 + 16);
        v224 += 16;
        v227 = v220 + ((*(v224 + 64) + 32) & ~*(v224 + 64));
        v538 = *(v224 + 56);
        v539 = v226;
        v228 = (v224 - 8);
        do
        {
          v229 = v541;
          (v539)(v541, v227, v225);
          v230 = sub_1CF9E5928();
          v231 = [v230 fp_shortDescription];

          v225 = v540;
          v232 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v234 = v233;

          (*v228)(v229, v225);
          v542 = v223;
          v236 = *v223->tree;
          v235 = *v223->tester;
          if (v236 >= v235 >> 1)
          {
            sub_1CEFE95CC((v235 > 1), v236 + 1, 1);
            v225 = v540;
            v223 = v542;
          }

          *v223->tree = v236 + 1;
          v237 = v223 + 16 * v236;
          *(v237 + 4) = v232;
          *(v237 + 5) = v234;
          v227 += v538;
          --v222;
        }

        while (v222);
        v221 = v537;
      }

      v542 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v473 = sub_1CF9E67D8();
      v475 = v474;
      v223, v474, v476, v477, v478, v479, v480, v481;
      MEMORY[0x1D3868CC0](v473, v475);
      v475, v482, v483, v484, v485, v486, v487, v488;
      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v164 = [v221 description];
      goto LABEL_86;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v98 = v15;
      v99 = swift_getTupleTypeMetadata2();
      v100 = swift_projectBox();
      v101 = *(v100 + *(v99 + 48));
      v102 = v16;
      (*(v16 + 16))(v18, v100, v98);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v103 = v101;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x744965726F6E6769, 0xEB00000000286D65);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v104 = [v103 description];
      goto LABEL_72;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v98 = v15;
      v262 = swift_getTupleTypeMetadata2();
      v263 = swift_projectBox();
      v264 = *(v263 + *(v262 + 48));
      v102 = v16;
      (*(v16 + 16))(v18, v263, v98);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v103 = v264;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x65726F6E67696E75, 0xED0000286D657449);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v104 = [v103 description];
      goto LABEL_72;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v98 = v15;
      v318 = swift_getTupleTypeMetadata2();
      v319 = swift_projectBox();
      v320 = *(v319 + *(v318 + 48));
      v102 = v16;
      (*(v16 + 16))(v18, v319, v98);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v103 = v320;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA55E90);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v104 = [v103 description];
      goto LABEL_72;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v98 = v15;
      v397 = swift_getTupleTypeMetadata2();
      v398 = swift_projectBox();
      v399 = *(v398 + *(v397 + 48));
      v102 = v16;
      (*(v16 + 16))(v18, v398, v98);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v103 = v399;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x6D6574496B6C7562, 0xEF2865676E616843);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v104 = [v103 description];
LABEL_72:
      v400 = v104;
      v401 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v403 = v402;

      MEMORY[0x1D3868CC0](v401, v403);
      v403, v404, v405, v406, v407, v408, v409, v410;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v93 = v543[0];
      (*(v102 + 8))(v18, v98);
      return v93;
    case 0x14uLL:
      v44 = v25;
      v45 = v28;
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v281 = swift_projectBox();
      v282 = *(v281 + *(v280 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v281, v44);
      strcpy(v543, "trashItem(");
      BYTE3(v543[1]) = 0;
      HIDWORD(v543[1]) = -369098752;
      v50 = v282;
      v283 = sub_1CF9E5928();
      v284 = [v283 fp_shortDescription];

      v285 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v287 = v286;

      MEMORY[0x1D3868CC0](v285, v287);
      v287, v288, v289, v290, v291, v292, v293, v294;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x15uLL:
      v299 = swift_projectBox();
      v95 = v16;
      (*(v16 + 16))(v18, v299, v15);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v96 = "alizeParentHierarchy(";
      v97 = 0xD00000000000001BLL;
      goto LABEL_50;
    case 0x16uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v367 = swift_getTupleTypeMetadata2();
      v368 = swift_projectBox();
      v369 = *(v368 + *(v367 + 48));
      (*(v31 + 16))(v30, v368, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v369;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x614264616F6C7075, 0xEE00287265697272);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0x17uLL:
      v439 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v543[0] = 0xD000000000000011;
      v543[1] = 0x80000001CFA55DC0;
      v164 = [v439 description];
      goto LABEL_86;
    case 0x18uLL:
      v187 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v543[0] = 0xD00000000000001ALL;
      v543[1] = 0x80000001CFA55D90;
      v164 = [v187 description];
      goto LABEL_86;
    case 0x19uLL:
      v186 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v543[0] = 0xD000000000000019;
      v543[1] = 0x80000001CFA55D70;
      v164 = [v186 description];
      goto LABEL_86;
    case 0x1AuLL:
      v469 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v543[0] = 0xD00000000000001ELL;
      v543[1] = 0x80000001CFA55D50;
      if (v469)
      {
        v470 = [v469 description];
        v471 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v261 = v472;
      }

      else
      {
        v261 = 0xE600000000000000;
        v471 = 0x29656E6F6E28;
      }

      v259 = v471;
      goto LABEL_92;
    case 0x1BuLL:
      return 0xD000000000000016;
    case 0x1CuLL:
      v440 = 9;
      return (v440 | 0xD000000000000010);
    case 0x1DuLL:
      v38 = &v535 - v26;
      v39 = v27;
      v441 = swift_projectBox();
      v41 = v540;
      (*(v39 + 16))(v38, v441, v540);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v42 = "testingHarnessScheduling";
      v43 = 0xD000000000000016;
      goto LABEL_78;
    case 0x1EuLL:
      v327 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v327);
      v93 = sub_1CF665B0C(v327, a3, a2, a5, a4);
      sub_1CF66DD30(v327);
      return v93;
    case 0x1FuLL:
      v158 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v159 = 0xEF286B726F57646ELL;
LABEL_43:
      v543[0] = 0x756F72676B636162;
      v543[1] = v159;
      v259 = sub_1CF7F5068(v158);
      v261 = v260;
LABEL_92:
      MEMORY[0x1D3868CC0](v259);
      v516 = v261;
      goto LABEL_93;
    case 0x20uLL:
      v328 = v25;
      v329 = v28;
      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v331 = swift_projectBox();
      v332 = *(v331 + *(v330 + 48));
      v333 = *(v331 + *(v330 + 64));
      (*(v329 + 16))(v21, v331, v328);
      strcpy(v543, "itemID(");
      v543[1] = 0xE700000000000000;
      v334 = v333;
      v335 = sub_1CF9E5928();
      v336 = [v335 fp_shortDescription];

      v337 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v339 = v338;

      MEMORY[0x1D3868CC0](v337, v339);
      v339, v340, v341, v342, v343, v344, v345, v346;
      MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA55C70);
      if (v332)
      {
        v347 = 1702195828;
      }

      else
      {
        v347 = 0x65736C6166;
      }

      if (v332)
      {
        v348 = 0xE400000000000000;
      }

      else
      {
        v348 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v347, v348);
      v348, v349, v350, v351, v352, v353, v354, v355;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v356 = [v334 description];
      v357 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v359 = v358;

      MEMORY[0x1D3868CC0](v357, v359);
      v359, v360, v361, v362, v363, v364, v365, v366;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      v93 = v543[0];
      (*(v329 + 8))(v21, v328);
      return v93;
    case 0x21uLL:
      v44 = v25;
      v45 = v28;
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v144 = swift_projectBox();
      v145 = *(v144 + *(v143 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v144, v44);
      v543[0] = 0xD000000000000010;
      v543[1] = 0x80000001CFA55C30;
      v50 = v145;
      v146 = sub_1CF9E5928();
      v147 = [v146 fp_shortDescription];

      v148 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v150 = v149;

      MEMORY[0x1D3868CC0](v148, v150);
      v150, v151, v152, v153, v154, v155, v156, v157;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x22uLL:
      v94 = swift_projectBox();
      v95 = v16;
      (*(v16 + 16))(v18, v94, v15);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v96 = "stabilization(by:";
      v97 = 0xD000000000000025;
LABEL_50:
      MEMORY[0x1D3868CC0](v97, v96 | 0x8000000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v93 = v543[0];
      (*(v95 + 8))(v18, v15);
      return v93;
    case 0x23uLL:
      v44 = v25;
      v45 = v28;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v65 = swift_projectBox();
      v66 = *(v65 + *(v64 + 48));
      v67 = *(v65 + *(v64 + 64));
      v49 = v541;
      (*(v45 + 16))(v541, v65, v44);
      strcpy(v543, "itemForURL(");
      HIDWORD(v543[1]) = -352321536;
      v50 = v67;
      v68 = sub_1CF9E5928();
      v69 = [v68 fp_shortDescription];

      v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v72 = v71;

      MEMORY[0x1D3868CC0](v70, v72);
      v72, v73, v74, v75, v76, v77, v78, v79;
      MEMORY[0x1D3868CC0](0x6E6F6974706F202CLL, 0xED00007830203A73);
      v542 = v66;
      sub_1CF66DD74();
      v80 = sub_1CF9E6B28();
      v82 = v81;
      MEMORY[0x1D3868CC0](v80);
      v82, v83, v84, v85, v86, v87, v88, v89;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x24uLL:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v90 = swift_getTupleTypeMetadata2();
      v91 = swift_projectBox();
      v92 = *(v91 + *(v90 + 48));
      (*(v31 + 16))(v30, v91, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v92;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x55726F466D657469, 0xEB00000000284C52);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v37 = [v36 description];
      goto LABEL_68;
    case 0x25uLL:
      v44 = v25;
      v45 = v28;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v47 = swift_projectBox();
      v48 = *(v47 + *(v46 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v47, v44);
      v543[0] = 0xD000000000000018;
      v543[1] = 0x80000001CFA55C50;
      v50 = v48;
      v51 = sub_1CF9E5928();
      v52 = [v51 fp_shortDescription];

      v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = v54;

      MEMORY[0x1D3868CC0](v53, v55);
      v55, v56, v57, v58, v59, v60, v61, v62;
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x26uLL:
      v44 = v25;
      v45 = v28;
      v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v443 = swift_projectBox();
      v444 = *(v443 + *(v442 + 48));
      v445 = *(v443 + *(v442 + 64));
      v49 = v541;
      (*(v45 + 16))(v541, v443, v44);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v50 = v445;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEE00286573756150);
      v446 = sub_1CF9E5928();
      v447 = [v446 fp_shortDescription];

      v448 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v450 = v449;

      MEMORY[0x1D3868CC0](v448, v450);
      v450, v451, v452, v453, v454, v455, v456, v457;
      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v542 = v444;
      type metadata accessor for FPPauseBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x27uLL:
      v44 = v25;
      v45 = v28;
      v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v382 = swift_projectBox();
      v383 = *(v382 + *(v381 + 48));
      v384 = *(v382 + *(v381 + 64));
      v49 = v541;
      (*(v45 + 16))(v541, v382, v44);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v50 = v384;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x636E7953656C6966, 0xEF28656D75736552);
      v385 = sub_1CF9E5928();
      v386 = [v385 fp_shortDescription];

      v387 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v389 = v388;

      MEMORY[0x1D3868CC0](v387, v389);
      v389, v390, v391, v392, v393, v394, v395, v396;
      MEMORY[0x1D3868CC0](0x697661686562202CLL, 0xEC000000203A726FLL);
      v542 = v383;
      type metadata accessor for FPResumeBehavior(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x28uLL:
      v44 = v25;
      v45 = v28;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v166 = swift_projectBox();
      v167 = *(v166 + *(v165 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v166, v44);
      v543[0] = 0xD000000000000017;
      v543[1] = 0x80000001CFA55C10;
      v50 = v167;
      v168 = sub_1CF9E5928();
      v169 = [v168 fp_shortDescription];

      v170 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v172 = v171;

      MEMORY[0x1D3868CC0](v170, v172);
      v172, v173, v174, v175, v176, v177, v178, v179;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x29uLL:
      v44 = v25;
      v45 = v28;
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v266 = swift_projectBox();
      v267 = *(v266 + *(v265 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v266, v44);
      v543[0] = 0xD000000000000013;
      v543[1] = 0x80000001CFA55BD0;
      v50 = v267;
      v268 = sub_1CF9E5928();
      v269 = [v268 fp_shortDescription];

      v270 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v272 = v271;

      MEMORY[0x1D3868CC0](v270, v272);
      v272, v273, v274, v275, v276, v277, v278, v279;
      MEMORY[0x1D3868CC0](981033504, 0xE400000000000000);
      v63 = [v50 description];
      goto LABEL_80;
    case 0x2AuLL:
      v44 = v25;
      v45 = v28;
      v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v412 = swift_projectBox();
      v413 = *(v412 + *(v411 + 48));
      v414 = *(v412 + *(v411 + 64));
      v49 = v541;
      (*(v45 + 16))(v541, v412, v44);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v415 = v414;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA55BF0);
      v416 = sub_1CF9E5928();
      v417 = [v416 fp_shortDescription];

      v418 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v420 = v419;

      MEMORY[0x1D3868CC0](v418, v420);
      v420, v421, v422, v423, v424, v425, v426, v427;
      MEMORY[0x1D3868CC0](0x7963696C6F70202CLL, 0xEA0000000000203ALL);
      v542 = v413;
      type metadata accessor for NSFileManagerUploadLocalVersionConflictPolicy(0);
      sub_1CF9E7B58();
      MEMORY[0x1D3868CC0](0x203A7962202CLL, 0xE600000000000000);
      v428 = [v415 description];
      v429 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v431 = v430;

      MEMORY[0x1D3868CC0](v429, v431);
      v431, v432, v433, v434, v435, v436, v437, v438;
      goto LABEL_81;
    case 0x2BuLL:
      v38 = &v535 - v26;
      v39 = v27;
      v40 = swift_projectBox();
      v41 = v540;
      (*(v39 + 16))(v38, v40, v540);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v42 = "resolveConflict(";
      v43 = 0xD000000000000013;
LABEL_78:
      MEMORY[0x1D3868CC0](v43, v42 | 0x8000000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v93 = v543[0];
      (*(v39 + 8))(v38, v41);
      return v93;
    case 0x2CuLL:
      v44 = v25;
      v45 = v28;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v106 = swift_projectBox();
      v107 = *(v106 + *(v105 + 48));
      v49 = v541;
      (*(v45 + 16))(v541, v106, v44);
      v543[0] = 0xD000000000000010;
      v543[1] = 0x80000001CFA55B90;
      v50 = v107;
      v108 = sub_1CF9E5928();
      v109 = [v108 fp_shortDescription];

      v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v112 = v111;

      MEMORY[0x1D3868CC0](v110, v112);
      v112, v113, v114, v115, v116, v117, v118, v119;
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v63 = [v50 description];
LABEL_80:
      v458 = v63;
      v459 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v461 = v460;

      MEMORY[0x1D3868CC0](v459, v461);
      v461, v462, v463, v464, v465, v466, v467, v468;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

LABEL_81:
      v93 = v543[0];
      (*(v45 + 8))(v49, v44);
      return v93;
    case 0x2DuLL:
      if (a1 == 0xB000000000000002)
      {
        v440 = 11;
      }

      else
      {
        if (a1 == 0xB00000000000000ALL)
        {
          return 0xD000000000000018;
        }

        v440 = 5;
      }

      return (v440 | 0xD000000000000010);
    default:
      v30 = &v535 - v26;
      v31 = v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v32 = v540;
      v33 = swift_getTupleTypeMetadata2();
      v34 = swift_projectBox();
      v35 = *(v34 + *(v33 + 48));
      (*(v31 + 16))(v30, v34, v32);
      v543[0] = 0;
      v543[1] = 0xE000000000000000;
      v36 = v35;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA55ED0);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
      v37 = [v36 description];
LABEL_68:
      v370 = v37;
      v371 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v373 = v372;

      MEMORY[0x1D3868CC0](v371, v373);
      v373, v374, v375, v376, v377, v378, v379, v380;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      goto LABEL_69;
  }
}

uint64_t sub_1CF668ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11UserRequestOyxq_G(void *a1)
{
  v1 = (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3;
  if (v1 <= 0x2C)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 45;
  }
}

uint64_t sub_1CF668B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x53 && *(a1 + 8))
  {
    return (*a1 + 83);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 1) & 0xFFFFFFBF | ((*a1 & 1) << 6)) ^ 0x7F;
  if (v3 >= 0x52)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF668B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x52)
  {
    *result = a2 - 83;
    if (a3 >= 0x53)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x53)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 6) & 1 | (2 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1CF668BFC(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x2D)
  {
    *result = ((a2 << 58) | (2 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 45)) | 0xB000000000000002;
  }

  return result;
}

void *sub_1CF668C3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v15 <= 27)
  {
    switch(v15)
    {
      case 21:
        goto LABEL_12;
      case 26:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x18);
      case 27:
        return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }
  }

  else
  {
    if (v15 <= 30)
    {
      if (v15 != 28)
      {
        if (v15 == 30)
        {
          v16 = *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
          sub_1CEFD09A0(v16);
          v17 = sub_1CF668C3C(v16, a3, a2, a5, a4);
          sub_1CF66DD30(v16);
          return v17;
        }

        goto LABEL_13;
      }

      return *((a1 & 0xFFFFFFFFFFFFFF9) + 0x10);
    }

    if (v15 == 31)
    {
      return 0;
    }

    if (v15 == 34)
    {
LABEL_12:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v22 = swift_getAssociatedConformanceWitness();
      v34[0] = AssociatedTypeWitness;
      v34[1] = v20;
      v34[2] = AssociatedConformanceWitness;
      v34[3] = v22;
      type metadata accessor for ReconciliationID(255, v34);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return *(swift_projectBox() + *(TupleTypeMetadata2 + 48));
    }
  }

LABEL_13:
  v24 = v12;
  result = sub_1CF6656D8(a1, a2, a3, a4, a5);
  if (result)
  {
    v25 = result;
    v26 = [result qos];
    v27 = 0x6000000000000000;
    v28 = 0x4000000000000000;
    if (v26 <= 0x14)
    {
      v28 = (v26 - 17 < 0xFFFFFFF0) << 61;
    }

    if (v26 <= 0x18)
    {
      v27 = v28;
    }

    if (v26 <= 0x20)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0x8000000000000000;
    }

    v30 = [v25 date];
    sub_1CF9E5CB8();

    sub_1CF9E5C98();
    v32 = v31;

    result = (*(v11 + 8))(v14, v24);
    v33 = v32 * 1000000000.0;
    if (COERCE__INT64(fabs(v32 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        return ((v33 & ~(v33 >> 63)) + v29);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF668FD8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v537 = a2;
  v538 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v526 = a5;
  v524 = a3;
  v525 = a6;
  v523 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v532 = AssociatedTypeWitness;
  v539[0] = AssociatedTypeWitness;
  v539[1] = v11;
  v539[2] = AssociatedConformanceWitness;
  v540 = swift_getAssociatedConformanceWitness();
  v535 = v540;
  v12 = type metadata accessor for ReconciliationID(0, v539);
  v533 = *(v12 - 8);
  v534 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v520[0] = v477 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v519 = v477 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v516 = v477 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v515 = v477 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v521[1] = v477 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v522 = v477 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v520[1] = v477 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v521[0] = v477 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v517 = v477 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v518 = v477 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v513 = v477 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v514 = v477 - v35;
  v36 = sub_1CF9E75D8();
  v529 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v477[2] = v477 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v477[1] = v477 - v39;
  v530 = v40;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v478 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v512 = v477 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v511 = v477 - v43;
  v44 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v48);
  MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v509[1] = v477 - v51;
  MEMORY[0x1EEE9AC00](v52);
  MEMORY[0x1EEE9AC00](v53);
  v510 = v477 - v54;
  MEMORY[0x1EEE9AC00](v55);
  MEMORY[0x1EEE9AC00](v56);
  v508 = v477 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v509[0] = v477 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v504 = v477 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v506 = v477 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v505 = v477 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v507 = v477 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v500 = v477 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v502 = v477 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v501 = v477 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v503 = v477 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v498 = v477 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v499 = v477 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v495 = v477 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v496 = v477 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v493 = v477 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v494 = v477 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v497 = v477 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v527 = v477 - v91;
  v536 = v11;
  MEMORY[0x1EEE9AC00](v92);
  v486 = v477 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v485 = v477 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v491 = v477 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v492 = v477 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v481 = v477 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v480 = v477 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v489 = v477 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v490 = v477 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v487 = v477 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v488 = v477 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v483 = v477 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v484 = v477 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v482 = v477 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v479 = v477 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v122 = v477 - v121;
  MEMORY[0x1EEE9AC00](v123);
  v125 = v477 - v124;
  MEMORY[0x1EEE9AC00](v126);
  v128 = v477 - v127;
  MEMORY[0x1EEE9AC00](v129);
  v131 = v477 - v130;
  MEMORY[0x1EEE9AC00](v132);
  v477[0] = v477 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v477 - v135;
  MEMORY[0x1EEE9AC00](v137);
  v139 = v477 - v138;
  MEMORY[0x1EEE9AC00](v140);
  v142 = v477 - v141;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v477 - v144;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v477 - v147;
  MEMORY[0x1EEE9AC00](v149);
  v162 = v477 - v161;
  switch((v538 >> 58) & 0x3C | (v538 >> 1) & 3)
  {
    case 1uLL:
      v322 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v323 = swift_getTupleTypeMetadata2();
      v324 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 1)
      {
        goto LABEL_167;
      }

      v325 = *(v323 + 48);
      v326 = v324;
      v327 = swift_projectBox();
      v328 = *(v327 + v325);
      v329 = *(v322 + 16);
      v171 = v536;
      v329(v145, v326, v536);
      v329(v142, v327, v171);
      v330 = v328;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v174 = *(v322 + 8);
        v174(v142, v171);
        v175 = v145;
        goto LABEL_59;
      }

      v451 = *(v322 + 8);
      v451(v142, v171);
      v452 = v145;
      goto LABEL_158;
    case 2uLL:
      v536 = v150;
      v283 = v158;
      v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v285 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 2)
      {
        goto LABEL_167;
      }

      v286 = *v285;
      v287 = v285[1];
      v288 = v284[16];
      v289 = v284[20];
      v290 = *(v285 + v289);
      v534 = *(v285 + v288);
      v535 = v290;
      v291 = v284[12];
      v292 = v285;
      v293 = swift_projectBox();
      v294 = *(v293 + v288);
      v295 = *v293;
      v296 = v293[1];
      v537 = *(v293 + v289);
      v538 = v294;
      v297 = *(v283 + 16);
      v298 = v292 + v291;
      v299 = v536;
      v297(v527, v298, v536);
      v300 = v293 + v291;
      v301 = v497;
      v297(v497, v300, v299);
      if (v286 == v295 && v287 == v296 || (sub_1CF9E8048() & 1) != 0)
      {
        v302 = v538;
        v303 = v527;
        if (sub_1CF9E59A8())
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v304 = sub_1CF9E7568();

          v305 = *(v283 + 8);
          v306 = v536;
          v305(v301, v536);
          v305(v303, v306);
          v173 = v304 & (v535 == v537);
          return v173 & 1;
        }

        v460 = *(v283 + 8);
        v207 = v536;
        v460(v301, v536);
        v461 = v303;
      }

      else
      {
        v460 = *(v283 + 8);
        v207 = v536;
        v460(v301, v536);
        v461 = v527;
      }

      goto LABEL_162;
    case 3uLL:
      v307 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v308 = swift_getTupleTypeMetadata2();
      v309 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 3)
      {
        goto LABEL_167;
      }

      v310 = *(v308 + 48);
      v311 = v309;
      v312 = swift_projectBox();
      v313 = *(v312 + v310);
      v314 = *(v307 + 16);
      v315 = v536;
      v314(v139, v311, v536);
      v314(v136, v312, v315);
      v316 = v313;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v317 = *(v307 + 8);
        v317(v136, v315);
        v317(v139, v315);
        return v173 & 1;
      }

      v463 = *(v307 + 8);
      v463(v136, v315);
      v463(v139, v315);
      goto LABEL_167;
    case 4uLL:
      v248 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v249 = v530;
      v250 = swift_getTupleTypeMetadata2();
      v251 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 4)
      {
        goto LABEL_167;
      }

      v252 = *(v250 + 48);
      v538 = *(v251 + v252);
      v253 = v251;
      v254 = swift_projectBox();
      v255 = *(v254 + v252);
      v256 = *(TupleTypeMetadata2 + 48);
      v257 = *(v529 + 16);
      v258 = v511;
      v257(v511, v253, v249);
      v257(&v258[v256], v254, v249);
      v259 = *(v248 + 48);
      v260 = v536;
      if (v259(v258, 1, v536) == 1)
      {
        goto LABEL_70;
      }

      v537 = v255;
      v261 = &v508;
      goto LABEL_147;
    case 5uLL:
      v248 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v249 = v530;
      v341 = swift_getTupleTypeMetadata2();
      v342 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 5)
      {
        goto LABEL_167;
      }

      v343 = *(v341 + 48);
      v538 = *(v342 + v343);
      v344 = v342;
      v345 = swift_projectBox();
      v255 = *(v345 + v343);
      v256 = *(TupleTypeMetadata2 + 48);
      v257 = *(v529 + 16);
      v258 = v512;
      v257(v512, v344, v249);
      v257(&v258[v256], v345, v249);
      v259 = *(v248 + 48);
      v260 = v536;
      if (v259(v258, 1, v536) != 1)
      {
        v537 = v255;
        v261 = v509;
LABEL_147:
        v464 = *(v261 - 32);
        v257(v464, v258, v249);
        if (v259(&v258[v256], 1, v260) == 1)
        {
          (*(v248 + 8))(v464, v260);
          goto LABEL_149;
        }

        v465 = v248;
        v466 = v477[0];
        (*(v248 + 32))(v477[0], &v258[v256], v260);
        v467 = v537;
        v468 = v537;
        v469 = sub_1CF9E6868();
        v470 = *(v465 + 8);
        v470(v466, v260);
        v471 = v464;
        v255 = v467;
        v470(v471, v260);
        (*(v529 + 8))(v258, v249);
        if (v469)
        {
          goto LABEL_151;
        }

LABEL_167:
        v173 = 0;
        return v173 & 1;
      }

LABEL_70:
      if (v259(&v258[v256], 1, v260) != 1)
      {
LABEL_149:
        (*(v478 + 8))(v258, TupleTypeMetadata2);
        goto LABEL_167;
      }

      v346 = *(v529 + 8);
      v347 = v255;
      v346(v258, v249);
LABEL_151:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v173 = sub_1CF9E7568();

      return v173 & 1;
    case 6uLL:
      v183 = v150;
      v184 = v158;
      v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v360 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 6)
      {
        goto LABEL_167;
      }

      v361 = *(v359 + 48);
      v362 = v360;
      v189 = swift_projectBox();
      v190 = *(v189 + v361);
      v191 = *(v184 + 16);
      v192 = v494;
      v191(v494, v362, v183);
      v193 = &v522;
      goto LABEL_80;
    case 7uLL:
      v183 = v150;
      v184 = v158;
      v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v319 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 7)
      {
        goto LABEL_167;
      }

      v320 = *(v318 + 48);
      v321 = v319;
      v189 = swift_projectBox();
      v190 = *(v189 + v320);
      v191 = *(v184 + 16);
      v192 = v496;
      v191(v496, v321, v183);
      v193 = &v524;
      goto LABEL_80;
    case 8uLL:
      v374 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v375 = swift_getTupleTypeMetadata2();
      v376 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 8)
      {
        goto LABEL_167;
      }

      v377 = *(v375 + 48);
      v378 = v376;
      v379 = swift_projectBox();
      v380 = *(v379 + v377);
      v381 = *(v374 + 16);
      v382 = v536;
      v381(v131, v378, v536);
      v381(v128, v379, v382);
      v383 = v380;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v384 = *(v374 + 8);
        v384(v128, v382);
        v384(v131, v382);
        return v173 & 1;
      }

      v472 = *(v374 + 8);
      v472(v128, v382);
      v472(v131, v382);
      goto LABEL_167;
    case 9uLL:
      v270 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v271 = swift_getTupleTypeMetadata2();
      v272 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 9)
      {
        goto LABEL_167;
      }

      v273 = *(v271 + 48);
      v274 = v272;
      v275 = swift_projectBox();
      v276 = *(v275 + v273);
      v277 = *(v270 + 16);
      v278 = v125;
      v279 = v274;
      v280 = v536;
      v277(v125, v279, v536);
      v277(v122, v275, v280);
      v281 = v276;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v282 = *(v270 + 8);
        v282(v122, v280);
        v282(v278, v280);
        return v173 & 1;
      }

      v462 = *(v270 + 8);
      v462(v122, v280);
      v462(v125, v280);
      goto LABEL_167;
    case 0xAuLL:
      v209 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v369 = swift_getTupleTypeMetadata2();
      v370 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0xA)
      {
        goto LABEL_167;
      }

      v371 = *(v369 + 48);
      v372 = v370;
      v214 = swift_projectBox();
      v215 = *(v214 + v371);
      v216 = *(v209 + 16);
      v217 = v479;
      v373 = v372;
      v218 = v536;
      v216(v479, v373, v536);
      v219 = &v513;
      goto LABEL_103;
    case 0xBuLL:
      v220 = v537;
      if (((v220 >> 58) & 0x3C | (v220 >> 1) & 3) != 0xB)
      {
        goto LABEL_167;
      }

      goto LABEL_122;
    case 0xCuLL:
      v209 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v266 = swift_getTupleTypeMetadata2();
      v267 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0xC)
      {
        goto LABEL_167;
      }

      v268 = *(v266 + 48);
      v269 = v267;
      v214 = swift_projectBox();
      v215 = *(v214 + v268);
      v216 = *(v209 + 16);
      v217 = v484;
      v218 = v536;
      v216(v484, v269, v536);
      v219 = &v514;
      goto LABEL_103;
    case 0xDuLL:
      v209 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v355 = swift_getTupleTypeMetadata2();
      v356 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0xD)
      {
        goto LABEL_167;
      }

      v357 = *(v355 + 48);
      v358 = v356;
      v214 = swift_projectBox();
      v215 = *(v214 + v357);
      v216 = *(v209 + 16);
      v217 = v488;
      v218 = v536;
      v216(v488, v358, v536);
      v219 = &v518;
      goto LABEL_103;
    case 0xEuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0xE || (sub_1CF6BEDC4(*((v538 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v537 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_120;
    case 0xFuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0xF || (sub_1CF6BF014(*((v538 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v537 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_120;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v183 = v534;
      v233 = swift_getTupleTypeMetadata2();
      v234 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x10)
      {
        goto LABEL_167;
      }

      v235 = *(v233 + 48);
      v236 = v234;
      v237 = swift_projectBox();
      v238 = *(v237 + v235);
      v184 = v533;
      v239 = *(v533 + 16);
      v192 = v514;
      v239(v514, v236, v183);
      v240 = &v541;
      goto LABEL_113;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v183 = v534;
      v331 = swift_getTupleTypeMetadata2();
      v332 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x11)
      {
        goto LABEL_167;
      }

      v333 = *(v331 + 48);
      v334 = v332;
      v237 = swift_projectBox();
      v238 = *(v237 + v333);
      v184 = v533;
      v239 = *(v533 + 16);
      v192 = v518;
      v239(v518, v334, v183);
      v240 = &v543;
      goto LABEL_113;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v183 = v534;
      v365 = swift_getTupleTypeMetadata2();
      v366 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x12)
      {
        goto LABEL_167;
      }

      v367 = *(v365 + 48);
      v368 = v366;
      v237 = swift_projectBox();
      v238 = *(v237 + v367);
      v184 = v533;
      v239 = *(v533 + 16);
      v192 = v521[0];
      v239(v521[0], v368, v183);
      v240 = &v545;
      goto LABEL_113;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v183 = v534;
      v422 = swift_getTupleTypeMetadata2();
      v423 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x13)
      {
        goto LABEL_167;
      }

      v424 = *(v422 + 48);
      v425 = v423;
      v237 = swift_projectBox();
      v238 = *(v237 + v424);
      v184 = v533;
      v239 = *(v533 + 16);
      v192 = v522;
      v239(v522, v425, v183);
      v240 = &v546;
LABEL_113:
      v241 = *(v240 - 32);
      v239(v241, v237, v183);
      v363 = v238;
      if ((sub_1CF024490(v192, v241, v532, v536) & 1) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_82;
    case 0x14uLL:
      v183 = v150;
      v184 = v158;
      v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v338 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x14)
      {
        goto LABEL_167;
      }

      v339 = *(v337 + 48);
      v340 = v338;
      v189 = swift_projectBox();
      v190 = *(v189 + v339);
      v191 = *(v184 + 16);
      v192 = v499;
      v191(v499, v340, v183);
      v193 = &v527;
      goto LABEL_80;
    case 0x15uLL:
      v221 = v534;
      v348 = swift_getTupleTypeMetadata2();
      v349 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x15)
      {
        goto LABEL_167;
      }

      v350 = *(v348 + 48);
      v225 = *(v349 + v350);
      v351 = v349;
      v227 = swift_projectBox();
      v228 = *(v227 + v350);
      v229 = v533;
      v230 = *(v533 + 16);
      v231 = v515;
      v230(v515, v351, v221);
      v232 = &v542;
      goto LABEL_74;
    case 0x16uLL:
      v209 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v401 = swift_getTupleTypeMetadata2();
      v402 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x16)
      {
        goto LABEL_167;
      }

      v403 = *(v401 + 48);
      v404 = v402;
      v214 = swift_projectBox();
      v215 = *(v214 + v403);
      v216 = *(v209 + 16);
      v217 = v490;
      v218 = v536;
      v216(v490, v404, v536);
      v219 = v520;
      goto LABEL_103;
    case 0x17uLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) == 0x17)
      {
        goto LABEL_120;
      }

      goto LABEL_167;
    case 0x18uLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x18)
      {
        goto LABEL_167;
      }

      goto LABEL_120;
    case 0x19uLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x19)
      {
        goto LABEL_167;
      }

LABEL_120:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v173 = sub_1CF9E7568();
      return v173 & 1;
    case 0x1AuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x1A)
      {
        goto LABEL_167;
      }

      v453 = *((v538 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v454 = *((v538 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v455 = *((v537 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v456 = *((v537 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v453)
      {
        if (!v455)
        {
          goto LABEL_167;
        }

        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v457 = v455;
        v458 = v453;
        v459 = sub_1CF9E7568();

        if ((v459 & 1) == 0)
        {
          goto LABEL_167;
        }
      }

      else if (v455)
      {
        goto LABEL_167;
      }

      v173 = v454 == v456;
      return v173 & 1;
    case 0x1BuLL:
      v220 = v537;
      if (((v220 >> 58) & 0x3C | (v220 >> 1) & 3) != 0x1B)
      {
        goto LABEL_167;
      }

      goto LABEL_122;
    case 0x1CuLL:
      v220 = v537;
      if (((v220 >> 58) & 0x3C | (v220 >> 1) & 3) == 0x1C)
      {
        goto LABEL_122;
      }

      goto LABEL_167;
    case 0x1DuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x1D)
      {
        goto LABEL_167;
      }

      v176 = v159;
      v442 = swift_projectBox();
      v178 = swift_projectBox();
      v179 = *(v176 + 16);
      v180 = v480;
      v181 = v536;
      v179(v480, v442, v536);
      v182 = &v512;
      goto LABEL_125;
    case 0x1EuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x1E)
      {
        goto LABEL_167;
      }

      v385 = *((v538 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v386 = *((v537 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v386);
      v173 = sub_1CF668FD8(v385, v386, v523, v524, v525, v526);
      sub_1CF66DD30(v386);
      return v173 & 1;
    case 0x1FuLL:
      v220 = v537;
      if (((v220 >> 58) & 0x3C | (v220 >> 1) & 3) != 0x1F)
      {
        goto LABEL_167;
      }

LABEL_122:
      v173 = *((v538 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v220 & 0xFFFFFFFFFFFFFF9) + 0x10);
      return v173 & 1;
    case 0x20uLL:
      v194 = v150;
      v195 = v158;
      v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v388 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x20)
      {
        goto LABEL_167;
      }

      v389 = *(v387 + 48);
      LODWORD(v538) = *(v388 + v389);
      v390 = *(v387 + 64);
      v536 = *(v388 + v390);
      v391 = v388;
      v392 = swift_projectBox();
      LODWORD(v537) = *(v392 + v389);
      v393 = *(v392 + v390);
      v203 = v195;
      v394 = *(v195 + 16);
      v205 = v503;
      v395 = v391;
      v207 = v194;
      v394(v503, v395, v194);
      v396 = v501;
      v394(v501, v392, v194);
      v397 = v393;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_136;
      }

      if (v538 == v537)
      {
        goto LABEL_95;
      }

      goto LABEL_130;
    case 0x21uLL:
      v183 = v150;
      v184 = v158;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v245 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x21)
      {
        goto LABEL_167;
      }

      v246 = *(v244 + 48);
      v247 = v245;
      v189 = swift_projectBox();
      v190 = *(v189 + v246);
      v191 = *(v184 + 16);
      v192 = v502;
      v191(v502, v247, v183);
      v193 = &v529;
      goto LABEL_80;
    case 0x22uLL:
      v221 = v534;
      v222 = swift_getTupleTypeMetadata2();
      v223 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x22)
      {
        goto LABEL_167;
      }

      v224 = *(v222 + 48);
      v225 = *(v223 + v224);
      v226 = v223;
      v227 = swift_projectBox();
      v228 = *(v227 + v224);
      v229 = v533;
      v230 = *(v533 + 16);
      v231 = v519;
      v230(v519, v226, v221);
      v232 = &v544;
LABEL_74:
      v352 = *(v232 - 32);
      v230(v352, v227, v221);
      v353 = sub_1CF024490(v231, v352, v532, v536);
      v354 = *(v229 + 8);
      v354(v352, v221);
      v354(v231, v221);
      if ((v353 & 1) == 0)
      {
        goto LABEL_167;
      }

      v173 = v225 == v228;
      return v173 & 1;
    case 0x23uLL:
      v194 = v150;
      v195 = v158;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v197 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x23)
      {
        goto LABEL_167;
      }

      v198 = *(v196 + 48);
      v538 = *(v197 + v198);
      v199 = *(v196 + 64);
      v536 = *(v197 + v199);
      v200 = v197;
      v201 = swift_projectBox();
      v537 = *(v201 + v198);
      v202 = *(v201 + v199);
      v203 = v195;
      v204 = *(v195 + 16);
      v205 = v507;
      v206 = v200;
      v207 = v194;
      v204(v507, v206, v194);
      v208 = &v534;
      goto LABEL_128;
    case 0x24uLL:
      v209 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v210 = swift_getTupleTypeMetadata2();
      v211 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x24)
      {
        goto LABEL_167;
      }

      v212 = *(v210 + 48);
      v213 = v211;
      v214 = swift_projectBox();
      v215 = *(v214 + v212);
      v216 = *(v209 + 16);
      v217 = v492;
      v218 = v536;
      v216(v492, v213, v536);
      v219 = v521;
LABEL_103:
      v405 = *(v219 - 32);
      v216(v405, v214, v218);
      v406 = v215;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v407 = *(v209 + 8);
        v407(v405, v218);
        v407(v217, v218);
        return v173 & 1;
      }

      v408 = *(v209 + 8);
      v408(v405, v218);
      v408(v217, v218);
      goto LABEL_167;
    case 0x25uLL:
      v183 = v150;
      v184 = v158;
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v186 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x25)
      {
        goto LABEL_167;
      }

      v187 = *(v185 + 48);
      v188 = v186;
      v189 = swift_projectBox();
      v190 = *(v189 + v187);
      v191 = *(v184 + 16);
      v192 = v506;
      v191(v506, v188, v183);
      v193 = &v533;
      goto LABEL_80;
    case 0x26uLL:
      v194 = v150;
      v195 = v158;
      v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v446 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x26)
      {
        goto LABEL_167;
      }

      v447 = *(v445 + 48);
      v538 = *(v446 + v447);
      v448 = *(v445 + 64);
      v536 = *(v446 + v448);
      v449 = v446;
      v201 = swift_projectBox();
      v537 = *(v201 + v447);
      v202 = *(v201 + v448);
      v203 = v195;
      v204 = *(v195 + 16);
      v205 = v509[0];
      v450 = v449;
      v207 = v194;
      v204(v509[0], v450, v194);
      v208 = &v537;
LABEL_128:
      v396 = *(v208 - 32);
      v204(v396, v201, v194);
      v397 = v202;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
LABEL_136:

        v460 = *(v203 + 8);
        v460(v396, v207);
        v461 = v205;
        goto LABEL_162;
      }

      if (v538 == v537)
      {
LABEL_95:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v398 = *(v195 + 8);
        v398(v396, v194);
        v399 = v205;
        goto LABEL_110;
      }

LABEL_130:

      v451 = *(v195 + 8);
      v451(v396, v194);
      v452 = v205;
      goto LABEL_165;
    case 0x27uLL:
      v536 = v156;
      v194 = v150;
      v409 = v158;
      v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v411 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x27)
      {
        goto LABEL_167;
      }

      v412 = *(v410 + 48);
      v538 = *(v411 + v412);
      v413 = *(v410 + 64);
      v535 = *(v411 + v413);
      v414 = v411;
      v415 = swift_projectBox();
      v537 = *(v415 + v412);
      v416 = *(v415 + v413);
      v417 = *(v409 + 16);
      v418 = v536;
      v419 = v414;
      v207 = v194;
      v417(v536, v419, v194);
      v420 = v510;
      v417(v510, v415, v194);
      v421 = v416;
      if ((sub_1CF9E59A8() & 1) == 0)
      {

        v460 = *(v409 + 8);
        v460(v420, v194);
        goto LABEL_155;
      }

      if (v538 == v537)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v398 = *(v409 + 8);
        v398(v420, v194);
        v399 = v536;
LABEL_110:
        v398(v399, v194);
        return v173 & 1;
      }

      v451 = *(v409 + 8);
      v451(v420, v194);
      v452 = v536;
LABEL_165:
      v473 = v194;
      goto LABEL_166;
    case 0x28uLL:
      v192 = v157;
      v183 = v150;
      v184 = v158;
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v263 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x28)
      {
        goto LABEL_167;
      }

      v264 = *(v262 + 48);
      v265 = v263;
      v189 = swift_projectBox();
      v190 = *(v189 + v264);
      v191 = *(v184 + 16);
      v191(v192, v265, v183);
      v193 = v539;
LABEL_80:
      v241 = *(v193 - 32);
      goto LABEL_81;
    case 0x29uLL:
      v241 = v155;
      v192 = v154;
      v183 = v150;
      v184 = v158;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v243 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) == 0x29)
      {
        goto LABEL_65;
      }

      goto LABEL_167;
    case 0x2AuLL:
      v534 = v152;
      v535 = v160;
      v536 = v150;
      v427 = v158;
      v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v429 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x2A)
      {
        goto LABEL_167;
      }

      v430 = *(v428 + 48);
      v538 = *(v429 + v430);
      v431 = *(v428 + 64);
      v533 = *(v429 + v431);
      v432 = v429;
      v433 = swift_projectBox();
      v434 = *(v433 + v430);
      v435 = *(v433 + v431);
      v436 = *(v427 + 16);
      v418 = v535;
      v437 = v432;
      v207 = v536;
      v436(v535, v437, v536);
      v438 = v534;
      v436(v534, v433, v207);
      v439 = v435;
      if (sub_1CF9E59A8())
      {
        if (v538 == v434)
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v173 = sub_1CF9E7568();

          v440 = *(v427 + 8);
          v441 = v536;
          v440(v534, v536);
          v440(v535, v441);
          return v173 & 1;
        }

        v475 = *(v427 + 8);
        v476 = v536;
        v475(v534, v536);
        v475(v535, v476);
      }

      else
      {

        v460 = *(v427 + 8);
        v460(v438, v207);
LABEL_155:
        v461 = v418;
LABEL_162:
        v460(v461, v207);
      }

      goto LABEL_167;
    case 0x2BuLL:
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x2B)
      {
        goto LABEL_167;
      }

      v176 = v159;
      v177 = swift_projectBox();
      v178 = swift_projectBox();
      v179 = *(v176 + 16);
      v180 = v485;
      v181 = v536;
      v179(v485, v177, v536);
      v182 = &v517;
LABEL_125:
      v443 = *(v182 - 32);
      v179(v443, v178, v181);
      v173 = sub_1CF9E6868();
      v444 = *(v176 + 8);
      v444(v443, v181);
      v444(v180, v181);
      return v173 & 1;
    case 0x2CuLL:
      v241 = v153;
      v192 = v151;
      v183 = v150;
      v184 = v158;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v243 = swift_projectBox();
      if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x2C)
      {
        goto LABEL_167;
      }

LABEL_65:
      v335 = *(v242 + 48);
      v336 = v243;
      v189 = swift_projectBox();
      v190 = *(v189 + v335);
      v191 = *(v184 + 16);
      v191(v192, v336, v183);
LABEL_81:
      v191(v241, v189, v183);
      v363 = v190;
      if (sub_1CF9E59A8())
      {
LABEL_82:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v364 = *(v184 + 8);
        v364(v241, v183);
        v364(v192, v183);
        return v173 & 1;
      }

LABEL_114:

      v426 = *(v184 + 8);
      v426(v241, v183);
      v426(v192, v183);
      goto LABEL_167;
    case 0x2DuLL:
      if (v538 == 0xB000000000000002)
      {
        if (((v537 >> 58) & 0x3C | (v537 >> 1) & 3) != 0x2D || v537 != 0xB000000000000002)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v400 = (v537 >> 58) & 0x3C | (v537 >> 1) & 3;
        if (v538 == 0xB00000000000000ALL)
        {
          if (v400 != 45 || v537 != 0xB00000000000000ALL)
          {
            goto LABEL_167;
          }
        }

        else if (v400 != 45 || v537 != 0xB000000000000012)
        {
          goto LABEL_167;
        }
      }

      v173 = 1;
      return v173 & 1;
    default:
      v163 = v159;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v164 = swift_getTupleTypeMetadata2();
      v165 = swift_projectBox();
      if ((v537 >> 58) & 0x3C | (v537 >> 1) & 3)
      {
        goto LABEL_167;
      }

      v166 = *(v164 + 48);
      v167 = v165;
      v168 = swift_projectBox();
      v169 = *(v168 + v166);
      v170 = *(v163 + 16);
      v171 = v536;
      v170(v162, v167, v536);
      v170(v148, v168, v171);
      v172 = v169;
      if (sub_1CF9E6868())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v173 = sub_1CF9E7568();

        v174 = *(v163 + 8);
        v174(v148, v171);
        v175 = v162;
LABEL_59:
        v174(v175, v171);
        return v173 & 1;
      }

      v451 = *(v163 + 8);
      v451(v148, v171);
      v452 = v162;
LABEL_158:
      v473 = v171;
LABEL_166:
      v451(v452, v473);
      goto LABEL_167;
  }
}

void sub_1CF66C37C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v177 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v178[0] = AssociatedTypeWitness;
  v178[1] = v12;
  v178[2] = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v175 = AssociatedConformanceWitness;
  v13 = type metadata accessor for ReconciliationID(0, v178);
  v173 = *(v13 - 8);
  v174 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v170 - v14;
  v15 = sub_1CF9E75D8();
  v171 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v170 - v16;
  v18 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v170 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v31 = MEMORY[0x1EEE9AC00](v25);
  v176 = a2;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v123 = swift_projectBox();
      v36 = *(v123 + *(TupleTypeMetadata2 + 48));
      (*(v32 + 16))(v33, v123, v12);
      v37 = 1;
      goto LABEL_49;
    case 2uLL:
      v92 = v26;
      v93 = v29;
      v94 = v28;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v96 = swift_projectBox();
      v97 = *(v96 + 8);
      v98 = v95[12];
      v99 = *(v96 + v95[16]);
      v100 = *(v96 + v95[20]);
      (*(v93 + 16))(v94, v96 + v98, v92);
      MEMORY[0x1D386A470](2);

      v101 = v99;
      sub_1CF9E69C8();
      v97, v102, v103, v104, v105, v106, v107, v108;
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v100);

      (*(v93 + 8))(v94, v92);
      return;
    case 3uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v118 = swift_getTupleTypeMetadata2();
      v119 = swift_projectBox();
      v36 = *(v119 + *(v118 + 48));
      (*(v32 + 16))(v33, v119, v12);
      v37 = 3;
      goto LABEL_49;
    case 4uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v80 = swift_getTupleTypeMetadata2();
      v81 = swift_projectBox();
      v82 = *(v81 + *(v80 + 48));
      v83 = v171;
      (*(v171 + 16))(v17, v81, v15);
      v84 = 4;
      goto LABEL_33;
    case 5uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v130 = swift_getTupleTypeMetadata2();
      v131 = swift_projectBox();
      v82 = *(v131 + *(v130 + 48));
      v83 = v171;
      (*(v171 + 16))(v17, v131, v15);
      v84 = 5;
LABEL_33:
      MEMORY[0x1D386A470](v84);
      v132 = v82;
      sub_1CF9E75E8();
      sub_1CF9E7578();
      (*(v83 + 8))(v17, v15);
      goto LABEL_39;
    case 6uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v139 = swift_projectBox();
      v47 = *(v139 + *(v138 + 48));
      (*(v43 + 16))(v44, v139, v42);
      v48 = 6;
      goto LABEL_38;
    case 7uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v121 = swift_projectBox();
      v47 = *(v121 + *(v120 + 48));
      (*(v43 + 16))(v44, v121, v42);
      v48 = 7;
      goto LABEL_38;
    case 8uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v144 = swift_getTupleTypeMetadata2();
      v145 = swift_projectBox();
      v36 = *(v145 + *(v144 + 48));
      (*(v32 + 16))(v33, v145, v12);
      v37 = 8;
      goto LABEL_49;
    case 9uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v89 = swift_getTupleTypeMetadata2();
      v90 = swift_projectBox();
      v36 = *(v90 + *(v89 + 48));
      (*(v32 + 16))(v33, v90, v12);
      v37 = 9;
      goto LABEL_49;
    case 0xAuLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v142 = swift_getTupleTypeMetadata2();
      v143 = swift_projectBox();
      v36 = *(v143 + *(v142 + 48));
      (*(v32 + 16))(v33, v143, v12);
      v37 = 10;
      goto LABEL_49;
    case 0xBuLL:
      v58 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = 11;
      goto LABEL_57;
    case 0xCuLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v87 = swift_getTupleTypeMetadata2();
      v88 = swift_projectBox();
      v36 = *(v88 + *(v87 + 48));
      (*(v32 + 16))(v33, v88, v12);
      v37 = 12;
      goto LABEL_49;
    case 0xDuLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v136 = swift_getTupleTypeMetadata2();
      v137 = swift_projectBox();
      v36 = *(v137 + *(v136 + 48));
      (*(v32 + 16))(v33, v137, v12);
      v37 = 13;
      goto LABEL_49;
    case 0xEuLL:
      v76 = v177;
      v77 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](14, v31);
      sub_1CF6655E8(v76, v77);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v109 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v176 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v110 = v26;
      v111 = v29;
      MEMORY[0x1D386A470](15, v31);
      MEMORY[0x1D386A470](*(v109 + 16));
      v112 = *(v109 + 16);
      if (v112)
      {
        v115 = *(v111 + 16);
        v113 = v111 + 16;
        v114 = v115;
        v116 = v109 + ((*(v113 + 64) + 32) & ~*(v113 + 64));
        v117 = *(v113 + 56);
        do
        {
          v114(v23, v116, v110);
          sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1CF9E6758();
          (*(v113 - 8))(v23, v110);
          v116 += v117;
          --v112;
        }

        while (v112);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v67 = v174;
      v68 = swift_getTupleTypeMetadata2();
      v69 = swift_projectBox();
      v70 = *(v69 + *(v68 + 48));
      v72 = v172;
      v71 = v173;
      (*(v173 + 16))(v172, v69, v67);
      v73 = 16;
      goto LABEL_52;
    case 0x11uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v67 = v174;
      v124 = swift_getTupleTypeMetadata2();
      v125 = swift_projectBox();
      v70 = *(v125 + *(v124 + 48));
      v72 = v172;
      v71 = v173;
      (*(v173 + 16))(v172, v125, v67);
      v73 = 17;
      goto LABEL_52;
    case 0x12uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v67 = v174;
      v140 = swift_getTupleTypeMetadata2();
      v141 = swift_projectBox();
      v70 = *(v141 + *(v140 + 48));
      v72 = v172;
      v71 = v173;
      (*(v173 + 16))(v172, v141, v67);
      v73 = 18;
      goto LABEL_52;
    case 0x13uLL:
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v67 = v174;
      v158 = swift_getTupleTypeMetadata2();
      v159 = swift_projectBox();
      v70 = *(v159 + *(v158 + 48));
      v72 = v172;
      v71 = v173;
      (*(v173 + 16))(v172, v159, v67);
      v73 = 19;
LABEL_52:
      v160 = v177;
      MEMORY[0x1D386A470](v73);
      v161 = v70;
      sub_1CF01D348(v160, v67);
      sub_1CF9E7578();
      (*(v71 + 8))(v72, v67);

      return;
    case 0x14uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v129 = swift_projectBox();
      v47 = *(v129 + *(v128 + 48));
      (*(v43 + 16))(v44, v129, v42);
      v48 = 20;
      goto LABEL_38;
    case 0x15uLL:
      v60 = v174;
      v133 = swift_getTupleTypeMetadata2();
      v134 = swift_projectBox();
      v63 = *(v134 + *(v133 + 48));
      v65 = v172;
      v64 = v173;
      (*(v173 + 16))(v172, v134, v60);
      v66 = 21;
      goto LABEL_35;
    case 0x16uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v153 = swift_getTupleTypeMetadata2();
      v154 = swift_projectBox();
      v36 = *(v154 + *(v153 + 48));
      (*(v32 + 16))(v33, v154, v12);
      v37 = 22;
      goto LABEL_49;
    case 0x17uLL:
      v91 = 23;
      goto LABEL_55;
    case 0x18uLL:
      v91 = 24;
      goto LABEL_55;
    case 0x19uLL:
      v91 = 25;
LABEL_55:
      MEMORY[0x1D386A470](v91, v31);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v168 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v167 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v31);
      sub_1CF9E81F8();
      if (v168)
      {
        v169 = v168;
        sub_1CF9E7578();
      }

      v152 = v167;
      goto LABEL_58;
    case 0x1BuLL:
      v58 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = 27;
      goto LABEL_57;
    case 0x1CuLL:
      v58 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = 28;
      goto LABEL_57;
    case 0x1DuLL:
      v38 = v30;
      v39 = &v170 - v27;
      v164 = swift_projectBox();
      (*(v38 + 16))(v39, v164, v12);
      v41 = 30;
      goto LABEL_60;
    case 0x1EuLL:
      v146 = v177;
      v147 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v31);
      sub_1CEFD09A0(v147);
      sub_1CF66C37C(v146, v147, a4, a3, a6, a5);
      sub_1CF66DD30(v147);
      return;
    case 0x1FuLL:
      v58 = *((v176 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v59 = 33;
LABEL_57:
      MEMORY[0x1D386A470](v59, v31);
      v152 = v58;
      goto LABEL_58;
    case 0x20uLL:
      v49 = v26;
      v50 = v29;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v149 = swift_projectBox();
      v150 = *(v149 + *(v148 + 64));
      (*(v50 + 16))(v20, v149, v49);
      MEMORY[0x1D386A470](35);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v151 = v150;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      goto LABEL_63;
    case 0x21uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v79 = swift_projectBox();
      v47 = *(v79 + *(v78 + 48));
      (*(v43 + 16))(v44, v79, v42);
      v48 = 36;
      goto LABEL_38;
    case 0x22uLL:
      v60 = v174;
      v61 = swift_getTupleTypeMetadata2();
      v62 = swift_projectBox();
      v63 = *(v62 + *(v61 + 48));
      v65 = v172;
      v64 = v173;
      (*(v173 + 16))(v172, v62, v60);
      v66 = 37;
LABEL_35:
      v135 = v177;
      MEMORY[0x1D386A470](v66);
      sub_1CF01D348(v135, v60);
      MEMORY[0x1D386A470](v63);
      (*(v64 + 8))(v65, v60);
      return;
    case 0x23uLL:
      v49 = v26;
      v50 = v29;
      v20 = v28;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v52 = swift_projectBox();
      v53 = *(v52 + *(v51 + 48));
      v54 = *(v52 + *(v51 + 64));
      (*(v50 + 16))(v20, v52, v49);
      v55 = 38;
      goto LABEL_62;
    case 0x24uLL:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v56 = swift_getTupleTypeMetadata2();
      v57 = swift_projectBox();
      v36 = *(v57 + *(v56 + 48));
      (*(v32 + 16))(v33, v57, v12);
      v37 = 39;
      goto LABEL_49;
    case 0x25uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v46 = swift_projectBox();
      v47 = *(v46 + *(v45 + 48));
      (*(v43 + 16))(v44, v46, v42);
      v48 = 40;
      goto LABEL_38;
    case 0x26uLL:
      v49 = v26;
      v50 = v29;
      v20 = v28;
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v166 = swift_projectBox();
      v53 = *(v166 + *(v165 + 48));
      v54 = *(v166 + *(v165 + 64));
      (*(v50 + 16))(v20, v166, v49);
      v55 = 41;
      goto LABEL_62;
    case 0x27uLL:
      v49 = v26;
      v50 = v29;
      v20 = v28;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v157 = swift_projectBox();
      v53 = *(v157 + *(v156 + 48));
      v54 = *(v157 + *(v156 + 64));
      (*(v50 + 16))(v20, v157, v49);
      v55 = 42;
      goto LABEL_62;
    case 0x28uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v86 = swift_projectBox();
      v47 = *(v86 + *(v85 + 48));
      (*(v43 + 16))(v44, v86, v42);
      v48 = 43;
      goto LABEL_38;
    case 0x29uLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v127 = swift_projectBox();
      v47 = *(v127 + *(v126 + 48));
      (*(v43 + 16))(v44, v127, v42);
      v48 = 44;
      goto LABEL_38;
    case 0x2AuLL:
      v49 = v26;
      v50 = v29;
      v20 = v28;
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v163 = swift_projectBox();
      v53 = *(v163 + *(v162 + 48));
      v54 = *(v163 + *(v162 + 64));
      (*(v50 + 16))(v20, v163, v49);
      v55 = 45;
LABEL_62:
      MEMORY[0x1D386A470](v55);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v151 = v54;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v53);
LABEL_63:
      sub_1CF9E7578();
      (*(v50 + 8))(v20, v49);

      break;
    case 0x2BuLL:
      v38 = v30;
      v39 = &v170 - v27;
      v40 = swift_projectBox();
      (*(v38 + 16))(v39, v40, v12);
      v41 = 46;
LABEL_60:
      MEMORY[0x1D386A470](v41);
      sub_1CF9E6758();
      (*(v38 + 8))(v39, v12);
      break;
    case 0x2CuLL:
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v75 = swift_projectBox();
      v47 = *(v75 + *(v74 + 48));
      (*(v43 + 16))(v44, v75, v42);
      v48 = 47;
LABEL_38:
      MEMORY[0x1D386A470](v48);
      sub_1CF66DDC8(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v132 = v47;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v43 + 8))(v44, v42);
LABEL_39:

      break;
    case 0x2DuLL:
      if (v176 == 0xB000000000000002)
      {
        v152 = 29;
      }

      else if (v176 == 0xB00000000000000ALL)
      {
        v152 = 31;
      }

      else
      {
        v152 = 34;
      }

LABEL_58:
      MEMORY[0x1D386A470](v152, v31);
      break;
    default:
      v32 = v30;
      v33 = &v170 - v27;
      sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
      v34 = swift_getTupleTypeMetadata2();
      v35 = swift_projectBox();
      v36 = *(v35 + *(v34 + 48));
      (*(v32 + 16))(v33, v35, v12);
      v37 = 0;
LABEL_49:
      MEMORY[0x1D386A470](v37);
      v155 = v36;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v32 + 8))(v33, v12);

      break;
  }
}

uint64_t sub_1CF66DBFC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E81D8();
  sub_1CF66C37C(v11, a1, a2, a3, a4, a5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF66DCB0(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E81D8();
  sub_1CF66C37C(v5, *v2, a2[2], a2[3], a2[4], a2[5]);
  return sub_1CF9E8228();
}

double sub_1CF66DD30(unint64_t a1)
{
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CF66DD74()
{
  result = qword_1EC4C20F8;
  if (!qword_1EC4C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C20F8);
  }

  return result;
}

uint64_t sub_1CF66DDC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CF66DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 112))
  {
    sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
  }

  v13 = *(a1 + 96);
  v14 = v13 & a3;
  v22 = *(a1 + 104);

  if (v14)
  {
    v26 = v13;
    v21 = a5;
    while (1)
    {
      v16 = v14 & -v14;
      sub_1CF67141C(v16, a1, a2, a4, a5, a6, a7);
      if (v7)
      {
        break;
      }

      if (v17)
      {
        v18 = -1;
        if ((v26 & v16) != 0)
        {
          v18 = ~v16;
        }

        v23 = *(a1 + 104);
        v24 = *(a1 + 96);
        v26 &= v18;
        *(a1 + 96) = v26;
        *(a1 + 104) = v22;
        v19 = *(a1 + 112);
        *(a1 + 112) = 0;
        sub_1CF03C530(v13, v22, 0);
        v20 = v19;
        a5 = v21;
        sub_1CF03D7A8(v24, v23, v20);
      }

      v15 = v14 == v16;
      v14 ^= v16;
      if (v15)
      {
        return;
      }
    }

    sub_1CF03D7A8(v13, v22, 0);
  }
}

uint64_t sub_1CF66E048(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v6 = v5;
  v66 = a4;
  v63 = a3;
  v62 = a2;
  v69 = a1;
  v7 = *v5;
  v8 = *(*v5 + 104);
  v9 = *(*v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v54 - v11;
  v12 = *(v7 + 96);
  v13 = *(v7 + 80);
  v14 = swift_getAssociatedTypeWitness();
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v67.i64[0] = v14;
  v67.i64[1] = AssociatedTypeWitness;
  v68.i64[0] = AssociatedConformanceWitness;
  v68.i64[1] = v17;
  v18 = type metadata accessor for ReconciliationID(255, &v67);
  v19 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v54 - v20;
  v22.i64[0] = v13;
  v22.i64[1] = v9;
  v23.i64[0] = v12;
  v23.i64[1] = v8;
  v60 = v23;
  v61 = v22;
  v67 = v22;
  v68 = v23;
  type metadata accessor for ItemJob(0, &v67);
  v24 = v69;
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = sub_1CF03D760();
    v28 = (*(*v6 + 360))(v27, &v26[*(*v26 + 576)], *(v26 + 15), v62 & 1, v63, v66, v64);
  }

  else
  {
    v54 = AssociatedTypeWitness;
    v55 = v6;
    v29 = v62;
    v30 = v63;
    v31 = v64;
    v32 = v66;
    v67 = vextq_s8(v61, v61, 8uLL);
    v68 = vextq_s8(v60, v60, 8uLL);
    type metadata accessor for Propagation.PropagationJob(0, &v67);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      v35 = sub_1CF03D760();
      v28 = (*(*v55 + 368))(v35, &v34[*(*v34 + 576)], *(v34 + 15), v29 & 1, v30, v32, v31);
    }

    else
    {
      (*(*v24 + 440))();
      if ((*(*(v18 - 8) + 48))(v21, 1, v18) == 1)
      {
        v28 = 0;
      }

      else if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = v58;
        v38 = v59;
        v39 = v54;
        (*(v59 + 32))(v58, v21, v54);
        v40 = v69;
        v41 = sub_1CF03D760();
        v42 = v65;
        v43 = (*(*v55 + 368))(v41, v37, *(v40 + 120), v29 & 1, v30, v66, v31);
        if (v42)
        {
          v28 = (*(v38 + 8))(v37, v39);
        }

        else
        {
          v51 = v43;
          (*(v38 + 8))(v37, v39);
          v28 = v51;
        }
      }

      else
      {
        v44 = v56;
        v45 = v57;
        v46 = v14;
        (*(v57 + 32))(v56, v21, v14);
        v47 = v69;
        v48 = sub_1CF03D760();
        v49 = v65;
        v50 = (*(*v55 + 360))(v48, v44, *(v47 + 120), v29 & 1, v30, v66, v31);
        if (v49)
        {
          v28 = (*(v45 + 8))(v44, v46);
        }

        else
        {
          v52 = v44;
          v53 = v50;
          (*(v45 + 8))(v52, v46);
          v28 = v53;
        }
      }
    }
  }

  return v28 & 1;
}

uint64_t sub_1CF66E648()
{
  result = (*(*v0 + 136))();
  if (!v1 && result < 0)
  {

    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void *sub_1CF66E6E4(char **a1, char **a2, char *a3, char *a4)
{
  v6 = sub_1CF66FEF4(a1, a2, a3, a4);
  if (!v5)
  {
    if (*v6->tree)
    {
      v4 = *v6[2]._anon_8;
      isa = v6[3].super.isa;
      v15 = v6;
      v16 = v4;

      v15, v17, v18, v19, v20, v21, v22, v23;
      v24 = v4;

      isa, v25, v26, v27, v28, v29, v30, v31;
      if (v4)
      {
        v32 = sub_1CF9E57E8();
        v33 = [v32 userInfo];
        v34 = sub_1CF9E6638();

        if (*v34->tree && (v42 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA54B10), (v35 & 1) != 0))
        {
          sub_1CEFD1104(*v34[1].tester + 32 * v42, v51);

          v34, v43, v44, v45, v46, v47, v48, v49;
          sub_1CF0248E0(v51);
          return 0;
        }

        else
        {
          v34, v35, v36, v37, v38, v39, v40, v41;

          memset(v51, 0, sizeof(v51));
          sub_1CF0248E0(v51);
        }
      }
    }

    else
    {
      v6, v7, v8, v9, v10, v11, v12, v13;
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1CF66E8D8()
{
  v0 = sub_1CF0529A8();

  return v0;
}

uint64_t sub_1CF66ECEC()
{
  v2 = (*(*v0 + 256))();
  if (!v1)
  {
    if (v2)
    {

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1CF66ED58()
{
  v2 = (*(*v0 + 264))();
  if (!v1)
  {
    if (v2)
    {

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1CF66FEF4(char **a1, char **a2, char *a3, char *a4)
{
  v134 = a4;
  v5 = v4;
  v132 = a2;
  v133 = a3;
  v136 = a1;
  v6 = *v4;
  v7 = v6[13];
  v8 = v6[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v131 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v130 = &v121 - v10;
  v11 = v6[12];
  v12 = v6[10];
  v13 = swift_getAssociatedTypeWitness();
  v129 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v121 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v126.i64[0] = v13;
  v126.i64[1] = AssociatedTypeWitness;
  v137.i64[0] = v13;
  v137.i64[1] = AssociatedTypeWitness;
  v122.i64[1] = AssociatedConformanceWitness;
  v138.i64[0] = AssociatedConformanceWitness;
  v138.i64[1] = v16;
  v122.i64[0] = v16;
  v17 = type metadata accessor for ReconciliationID(255, &v137);
  v18 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v121 - v19;
  v123 = v12;
  v21.i64[0] = v12;
  v124 = v11;
  v125 = v8;
  v21.i64[1] = v8;
  v22 = v136;
  v23.i64[0] = v11;
  v23.i64[1] = v7;
  v127 = v23;
  v128 = v21;
  v138 = v23;
  v137 = v21;
  type metadata accessor for ItemJob(0, &v137);
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    v26 = *(*v24 + 576);
    v27 = sub_1CF03D760();
    v28 = v25 + v26;
    v29 = v133;
    v31 = v134;
    v30 = v135;
    v32 = v5;
    v33 = (*(*v5 + 384))(v28, v27, 0, 1, v132, v133, v134);
    if (!v30)
    {
      v139 = v33;
      MEMORY[0x1EEE9AC00](v33);
      v34 = v123;
      v35 = v124;
      v36 = v125;
      *(&v121 - 6) = v123;
      *(&v121 - 5) = v36;
      *(&v121 - 4) = v29;
      *(&v121 - 3) = v35;
      *(&v121 - 2) = v7;
      *(&v121 - 1) = v31;
      v135 = v37;
      KeyPath = swift_getKeyPath();
      v136 = &v121;
      MEMORY[0x1EEE9AC00](KeyPath);
      v39 = &v121 - 10;
      *(&v121 - 8) = v34;
      *(&v121 - 7) = v36;
      *(&v121 - 6) = v29;
      *(&v121 - 5) = v35;
      *(&v121 - 4) = v7;
      *(&v121 - 3) = v31;
      *(&v121 - 2) = v40;
      v137 = v126;
      v138.i64[0] = v122.i64[1];
      v138.i64[1] = v122.i64[0];
      type metadata accessor for ThrottlingKey(255, &v137);
      swift_getTupleTypeMetadata2();
      v41 = sub_1CF9E6E58();
      WitnessTable = swift_getWitnessTable();
      v44 = MEMORY[0x1E69E73E0];
      v45 = MEMORY[0x1E69E7410];
      v46 = sub_1CF677094;
LABEL_7:
      v32 = sub_1CF054A5C(v46, v39, v41, &type metadata for JobThrottle, v44, WitnessTable, v45, v43);
      v135, v64, v65, v66, v67, v68, v69, v70;
    }
  }

  else
  {
    v48 = v129;
    v47 = v130;
    v49 = v131;
    v137 = vextq_s8(v128, v128, 8uLL);
    v138 = vextq_s8(v127, v127, 8uLL);
    type metadata accessor for Propagation.PropagationJob(0, &v137);
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v51 = *(*v50 + 576);
      v52 = v50;
      v53 = sub_1CF03D760();
      v54 = v133;
      v56 = v134;
      v55 = v135;
      v32 = v5;
      v57 = (*(*v5 + 376))(v52 + v51, v53, 0, 1, v132, v133, v134);
      if (!v55)
      {
        v139 = v57;
        MEMORY[0x1EEE9AC00](v57);
        v58 = v123;
        v59 = v124;
        v60 = v125;
        *(&v121 - 6) = v123;
        *(&v121 - 5) = v60;
        *(&v121 - 4) = v54;
        *(&v121 - 3) = v59;
        *(&v121 - 2) = v7;
        *(&v121 - 1) = v56;
        v135 = v61;
        v62 = swift_getKeyPath();
        v136 = &v121;
        MEMORY[0x1EEE9AC00](v62);
        v39 = &v121 - 10;
        *(&v121 - 8) = v58;
        *(&v121 - 7) = v60;
        *(&v121 - 6) = v54;
        *(&v121 - 5) = v59;
        *(&v121 - 4) = v7;
        *(&v121 - 3) = v56;
        *(&v121 - 2) = v63;
        v137.i64[0] = v126.i64[1];
        v137.i64[1] = v126.i64[0];
        v138 = v122;
        type metadata accessor for ThrottlingKey(255, &v137);
        swift_getTupleTypeMetadata2();
        v41 = sub_1CF9E6E58();
        WitnessTable = swift_getWitnessTable();
        v44 = MEMORY[0x1E69E73E0];
        v45 = MEMORY[0x1E69E7410];
        v46 = sub_1CF676BB4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(*v22 + 55))();
      if ((*(*(v17 - 8) + 48))(v20, 1, v17) == 1)
      {
        return MEMORY[0x1E69E7CC0];
      }

      else if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = v49;
        v72 = v47;
        v73 = v20;
        v74 = v126.i64[1];
        (*(v49 + 32))(v47, v73, v126.i64[1]);
        v75 = sub_1CF03D760();
        v76 = v47;
        v77 = v133;
        v79 = v134;
        v78 = v135;
        v32 = v5;
        v80 = (*(*v5 + 376))(v76, v75, 0, 1, v132, v133, v134);
        if (v78)
        {
          (*(v71 + 8))(v72, v74);
        }

        else
        {
          v139 = v80;
          MEMORY[0x1EEE9AC00](v80);
          v89 = v123;
          v90 = v124;
          v91 = v125;
          *(&v121 - 6) = v123;
          *(&v121 - 5) = v91;
          *(&v121 - 4) = v77;
          *(&v121 - 3) = v90;
          *(&v121 - 2) = v7;
          *(&v121 - 1) = v79;
          v135 = v92;
          v93 = swift_getKeyPath();
          v136 = &v121;
          MEMORY[0x1EEE9AC00](v93);
          v132 = &v121 - 10;
          *(&v121 - 8) = v89;
          *(&v121 - 7) = v91;
          *(&v121 - 6) = v77;
          *(&v121 - 5) = v90;
          *(&v121 - 4) = v7;
          *(&v121 - 3) = v79;
          *(&v121 - 2) = v94;
          v137.i64[0] = v74;
          v137.i64[1] = v126.i64[0];
          v138 = v122;
          type metadata accessor for ThrottlingKey(255, &v137);
          swift_getTupleTypeMetadata2();
          v95 = sub_1CF9E6E58();
          v96 = swift_getWitnessTable();
          v32 = sub_1CF054A5C(sub_1CF67707C, v132, v95, &type metadata for JobThrottle, MEMORY[0x1E69E73E0], v96, MEMORY[0x1E69E7410], v97);
          v135, v98, v99, v100, v101, v102, v103, v104;

          (*(v131 + 8))(v130, v74);
        }
      }

      else
      {
        v81 = v121;
        v82 = v126.i64[0];
        (*(v48 + 32))(v121, v20, v126.i64[0]);
        v83 = sub_1CF03D760();
        v84 = v133;
        v86 = v134;
        v85 = v135;
        v32 = v5;
        v87 = (*(*v5 + 384))(v81, v83, 0, 1, v132, v133, v134);
        if (v85)
        {
          (*(v48 + 8))(v81, v82);
        }

        else
        {
          v139 = v87;
          MEMORY[0x1EEE9AC00](v87);
          v105 = v123;
          v106 = v124;
          v107 = v125;
          *(&v121 - 6) = v123;
          *(&v121 - 5) = v107;
          *(&v121 - 4) = v84;
          *(&v121 - 3) = v106;
          *(&v121 - 2) = v7;
          *(&v121 - 1) = v86;
          v135 = v108;
          v109 = swift_getKeyPath();
          v136 = &v121;
          MEMORY[0x1EEE9AC00](v109);
          v132 = &v121 - 10;
          *(&v121 - 8) = v105;
          *(&v121 - 7) = v107;
          *(&v121 - 6) = v84;
          *(&v121 - 5) = v106;
          *(&v121 - 4) = v7;
          *(&v121 - 3) = v86;
          *(&v121 - 2) = v110;
          v137.i64[0] = v82;
          v137.i64[1] = v126.i64[1];
          v138.i64[0] = v122.i64[1];
          v138.i64[1] = v122.i64[0];
          type metadata accessor for ThrottlingKey(255, &v137);
          swift_getTupleTypeMetadata2();
          v111 = sub_1CF9E6E58();
          v112 = swift_getWitnessTable();
          v32 = sub_1CF054A5C(sub_1CF676B48, v132, v111, &type metadata for JobThrottle, MEMORY[0x1E69E73E0], v112, MEMORY[0x1E69E7410], v113);
          v135, v114, v115, v116, v117, v118, v119, v120;

          (*(v129 + 8))(v121, v82);
        }
      }
    }
  }

  return v32;
}

uint64_t sub_1CF670A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  v24[0] = a7;
  v24[1] = a2;
  *&v25 = swift_getAssociatedTypeWitness();
  *(&v25 + 1) = swift_getAssociatedTypeWitness();
  *&v26 = swift_getAssociatedConformanceWitness();
  *(&v26 + 1) = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ThrottlingKey(255, &v25);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  (*(v10 + 16))(v24 - v15, a1, TupleTypeMetadata2, v14);
  v17 = &v16[*(TupleTypeMetadata2 + 48)];
  v29 = *(v17 + 8);
  v18 = *(v17 + 3);
  v27 = *(v17 + 2);
  v28 = v18;
  v19 = *(v17 + 1);
  v25 = *v17;
  v26 = v19;
  v20 = &v12[*(TupleTypeMetadata2 + 48)];
  (*(*(v8 - 8) + 32))(v12, v16, v8);
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = v21;
  *(v20 + 8) = v29;
  v22 = v26;
  *v20 = v25;
  *(v20 + 1) = v22;
  swift_getAtKeyPath();
  return (*(v10 + 8))(v12, TupleTypeMetadata2);
}

uint64_t sub_1CF670CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X8>)
{
  v24[0] = a7;
  v24[1] = a2;
  *&v25 = swift_getAssociatedTypeWitness();
  *(&v25 + 1) = swift_getAssociatedTypeWitness();
  *&v26 = swift_getAssociatedConformanceWitness();
  *(&v26 + 1) = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ThrottlingKey(255, &v25);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  (*(v10 + 16))(v24 - v15, a1, TupleTypeMetadata2, v14);
  v17 = &v16[*(TupleTypeMetadata2 + 48)];
  v29 = *(v17 + 8);
  v18 = *(v17 + 3);
  v27 = *(v17 + 2);
  v28 = v18;
  v19 = *(v17 + 1);
  v25 = *v17;
  v26 = v19;
  v20 = &v12[*(TupleTypeMetadata2 + 48)];
  (*(*(v8 - 8) + 32))(v12, v16, v8);
  v21 = v28;
  *(v20 + 2) = v27;
  *(v20 + 3) = v21;
  *(v20 + 8) = v29;
  v22 = v26;
  *v20 = v25;
  *(v20 + 1) = v22;
  swift_getAtKeyPath();
  return (*(v10 + 8))(v12, TupleTypeMetadata2);
}

unint64_t sub_1CF670F38(char a1)
{
  result = 0x6974696157746F6ELL;
  switch(a1)
  {
    case 1:
      result = 0x6D6574496F6ELL;
      break;
    case 2:
      result = 0x6E55746E65726170;
      break;
    case 3:
    case 37:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x7243746E65726170;
      break;
    case 5:
      result = 0x6544746E65726170;
      break;
    case 6:
      v3 = 9;
      goto LABEL_31;
    case 7:
      result = 0x746544656C637963;
      break;
    case 8:
      result = 0x6144746E65726170;
      break;
    case 9:
    case 10:
      result = 0x6E6572646C696863;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x45676E69646E6570;
      break;
    case 16:
    case 18:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x656C74746F726874;
      break;
    case 19:
      v3 = 13;
LABEL_31:
      result = v3 | 0xD000000000000010;
      break;
    case 20:
      result = 0x656C74746F726874;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
    case 36:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0x6544746E65726170;
      break;
    case 24:
      result = 0x65526D6165727473;
      break;
    case 25:
      result = 0x6374614D68746170;
      break;
    case 26:
      result = 0x676E697473697865;
      break;
    case 27:
      result = 0x6E6F697463697665;
      break;
    case 28:
      result = 0x74616761706F7270;
      break;
    case 29:
      result = 0x746F687370616E73;
      break;
    case 30:
      result = 0x64656E6961746572;
      break;
    case 31:
      result = 0x496465726F6E6769;
      break;
    case 32:
    case 35:
      result = 0xD000000000000018;
      break;
    case 33:
      result = 0x6C62617463697665;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1CF6713B0(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6570;
  if (*v1)
  {
    v2 = 0x6465696669726576;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1CF6713F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CF670F38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1CF67141C(_TtC18FileProviderDaemon8FSTester *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v653 = a1;
  v647 = a6;
  v648 = a7;
  v646 = a5;
  v652 = a4;
  v639 = a3;
  v7 = *a2;
  v8 = *(*a2 + 96);
  v9 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v655 = a2;
  v12 = *(v7 + 104);
  v13 = *(v7 + 88);
  v14 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v656 = AssociatedTypeWitness;
  v657 = v14;
  v658 = AssociatedConformanceWitness;
  v659 = v16;
  v635 = type metadata accessor for ReconciliationID(0, &v656);
  v633 = *(v635 - 1);
  MEMORY[0x1EEE9AC00](v635);
  v564 = &v561 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v566 = &v561 - v19;
  v656 = AssociatedTypeWitness;
  v657 = v14;
  v628 = AssociatedConformanceWitness;
  v658 = AssociatedConformanceWitness;
  v659 = v16;
  v565 = v16;
  v609 = type metadata accessor for ThrottlingKey(0, &v656);
  v608 = *(v609 - 8);
  MEMORY[0x1EEE9AC00](v609);
  v601 = &v561 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v599 = &v561 - v22;
  v656 = v9;
  v657 = v13;
  v658 = v8;
  v659 = v12;
  v640 = type metadata accessor for PersistenceTrigger(255, &v656);
  v23 = sub_1CF9E75D8();
  v656 = v9;
  v657 = v13;
  v658 = v8;
  v659 = v12;
  v561 = type metadata accessor for Job(255, &v656);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v616 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v621 = &v561 - v24;
  v587 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v569 = &v561 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v571 = &v561 - v28;
  v614 = v14;
  v586 = sub_1CF9E75D8();
  v592 = *(v586 - 8);
  MEMORY[0x1EEE9AC00](v586);
  v575 = &v561 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v562 = &v561 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v570 = &v561 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v574 = &v561 - v35;
  v37 = type metadata accessor for SnapshotItem(255, v9, v8, v36);
  v617 = sub_1CF9E75D8();
  v613 = *(v617 - 8);
  MEMORY[0x1EEE9AC00](v617);
  v611 = &v561 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v606 = &v561 - v40;
  v622 = v37;
  v620 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v595 = &v561 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v597 = &v561 - v44;
  v656 = v9;
  v657 = v13;
  v658 = v8;
  v659 = v12;
  v45 = type metadata accessor for ItemReconciliation(255, &v656);
  v619 = sub_1CF9E75D8();
  v618 = *(v619 - 8);
  MEMORY[0x1EEE9AC00](v619);
  v580 = &v561 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v636 = &v561 - v48;
  v632 = v45;
  v631 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v568 = &v561 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v626 = &v561 - v52;
  v650 = v23;
  v651 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v572 = &v561 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v594 = &v561 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v573 = &v561 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v578 = &v561 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v593 = &v561 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v582 = &v561 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v588 = &v561 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v602 = &v561 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v612 = &v561 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v615 = &v561 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v623 = &v561 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v561 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v625 = &v561 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v603 = &v561 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v624 = &v561 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v604 = &v561 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v607 = &v561 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v630 = &v561 - v89;
  MEMORY[0x1EEE9AC00](v90);
  v567 = &v561 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v634 = &v561 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v638 = &v561 - v95;
  v649 = AssociatedTypeWitness;
  v645 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](v96);
  v577 = &v561 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v563 = &v561 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v576 = &v561 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v583 = &v561 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v579 = &v561 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v610 = &v561 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v591 = &v561 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v590 = &v561 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v589 = &v561 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v605 = &v561 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v637 = &v561 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v581 = &v561 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v598 = &v561 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v585 = &v561 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v584 = &v561 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v600 = &v561 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v561 - v129;
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v561 - v132;
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v561 - v135;
  MEMORY[0x1EEE9AC00](v137);
  v596 = &v561 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v627 = &v561 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v561 - v142;
  v643 = v12;
  v644 = v9;
  v656 = v9;
  v657 = v13;
  v144 = v653;
  v641 = v8;
  v642 = v13;
  v658 = v8;
  v659 = v12;
  type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty(0, &v656);
  v145 = swift_dynamicCastClass();
  if (v145 && v144 == 8)
  {
    v146 = *(v652 + 32);
    v147 = v645;
    v148 = v649;
    (*(v645 + 16))(v143, v145 + *(*v145 + 576), v649);
    v149 = *(*v146 + 384);

    v150 = v654;
    v149(v143, 1, v646, v647, v648);
    if (v150)
    {
      (*(v147 + 8))(v143, v148);

      return;
    }

    (*(v147 + 8))(v143, v148);
    goto LABEL_21;
  }

  v151 = v643;
  v152 = v644;
  v154 = v641;
  v153 = v642;
  v656 = v644;
  v657 = v642;
  v658 = v641;
  v659 = v643;
  type metadata accessor for Materialization.MaterializeItem(0, &v656);
  v155 = swift_dynamicCastClass();
  if (!v155 || v144 != 32)
  {
    v656 = v152;
    v657 = v153;
    v658 = v154;
    v659 = v151;
    type metadata accessor for Materialization.EvictItem(0, &v656);
    v171 = v655;
    v172 = swift_dynamicCastClass();
    v173 = v650;
    v174 = v651;
    if (v172)
    {
      v175 = v144 <= 255;
      v176 = v144;
      v177 = v652;
      if (!v175)
      {
        if (v176 != 256)
        {
          if (v176 == 0x40000)
          {
LABEL_36:
            if (!*(v171 + 112) && (*(v171 + 97) & 1) == 0)
            {
              return;
            }

            v208 = *(v651 + 16);
            v209 = v625;
            v208(v625, v639, v650);
            v210 = v173;
            v211 = v640;
            v212 = *(v640 - 8);
            if ((*(v212 + 48))(v209, 1, v640) != 1)
            {
              v208(v77, v209, v210);
              if (swift_getEnumCaseMultiPayload() != 14)
              {
                (*(v212 + 8))(v77, v211);
                (*(v651 + 8))(v209, v210);
                return;
              }

              v260 = v608;
              v261 = v601;
              v262 = v609;
              (*(v608 + 32))(v601, v77, v609);
              v653 = sub_1CF04FB80();
              v656 = v653;
              sub_1CF9E6E58();
              swift_getWitnessTable();
              swift_getWitnessTable();
              v263 = sub_1CF9E6C08();
              v653, v264, v265, v266, v267, v268, v269, v270;
              (*(v260 + 8))(v261, v262);
              v174 = v651;
              if ((v263 & 1) == 0)
              {
                (*(v651 + 8))(v209, v210);
                return;
              }
            }

            (*(v174 + 8))(v209, v210);
            v213 = v655;
            v214 = 1;
LABEL_50:
            sub_1CF66E048(v213, v214, v646, v647, v648);
            return;
          }

LABEL_51:
          v656 = v644;
          v657 = v642;
          v658 = v154;
          v659 = v643;
          type metadata accessor for Materialization.MaterializeParentHierarchy(0, &v656);
          v224 = swift_dynamicCastClass();
          if (v224 && v176 == 2048)
          {
            v225 = v224;
            v226 = *(v174 + 16);
            v227 = v623;
            v226(v623, v639, v173);
            v228 = v173;
            v229 = *(v640 - 8);
            if ((*(v229 + 48))(v227, 1, v640) != 1)
            {
              v226(v615, v227, v173);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload != 48)
              {
                if (EnumCaseMultiPayload != 20)
                {
                  (*(v229 + 8))(v615, v640);
                  goto LABEL_233;
                }

                v231 = v615;
                v232 = *v615;
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                v233 = v635;
                TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
                v235 = *(TupleTypeMetadata3 + 48);
                v236 = *&v231[*(TupleTypeMetadata3 + 64)];

                if (swift_getEnumCaseMultiPayload() == 1)
                {

                  (*(v633 + 8))(&v231[v235], v233);
LABEL_233:
                  v417 = &v655;
                  goto LABEL_234;
                }

                if (qword_1CFA0F608[sub_1CF03D760()] != qword_1CFA0F608[v232])
                {

                  (*(v645 + 8))(&v231[v235], v649);
                  goto LABEL_233;
                }

                v410 = v645;
                v411 = &v231[v235];
                v412 = v583;
                v413 = v649;
                (*(v645 + 32))(v583, v411, v649);
                v414 = v627;
                (*(v410 + 16))(v627, v225 + *(*v225 + 576), v413);
                v415 = sub_1CF9E6868();

                v416 = *(v410 + 8);
                v416(v414, v413);
                v416(v412, v413);
                v227 = v623;
                if ((v415 & 1) == 0)
                {
                  goto LABEL_235;
                }
              }

LABEL_230:
              (*(v651 + 8))(v227, v228);
              return;
            }

            goto LABEL_235;
          }

          v656 = v644;
          v657 = v642;
          v658 = v154;
          v659 = v643;
          type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy(0, &v656);
          v249 = swift_dynamicCastClass();
          if (v249 && v176 == 2048)
          {
            v250 = v249;
            v251 = *(v174 + 16);
            v227 = v612;
            v251(v612, v639, v173);
            v228 = v173;
            v252 = *(v640 - 8);
            if ((*(v252 + 48))(v227, 1, v640) == 1)
            {
              goto LABEL_235;
            }

            v251(v602, v227, v173);
            v253 = swift_getEnumCaseMultiPayload();
            if (v253 == 48)
            {
              goto LABEL_230;
            }

            if (v253 != 20)
            {
              (*(v252 + 8))(v602, v640);
              v417 = &v644;
LABEL_234:
              v227 = *(v417 - 32);
              goto LABEL_235;
            }

            v254 = v602;
            v255 = *v602;
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
            v256 = v635;
            v257 = swift_getTupleTypeMetadata3();
            v258 = *(v257 + 48);
            v259 = *&v254[*(v257 + 64)];

            if (swift_getEnumCaseMultiPayload() == 1)
            {

              (*(v633 + 8))(&v254[v258], v256);
            }

            else
            {
              if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v255])
              {
                v490 = v645;
                v491 = &v254[v258];
                v492 = v576;
                v493 = v649;
                (*(v645 + 32))(v576, v491, v649);
                v494 = v627;
                (*(v490 + 16))(v627, v250 + *(*v250 + 576), v493);
                v495 = sub_1CF9E6868();

                v496 = *(v490 + 8);
                v496(v494, v493);
                v496(v492, v493);
                v227 = v612;
                if (v495)
                {
                  goto LABEL_230;
                }

                goto LABEL_235;
              }

              (*(v645 + 8))(&v254[v258], v649);
            }

            v417 = &v644;
            goto LABEL_234;
          }

          v656 = v644;
          v657 = v642;
          v658 = v154;
          v659 = v643;
          type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v656);
          v287 = swift_dynamicCastClass();
          if (v287)
          {
            if (v176 < 0x20000)
            {
              if (v176 < 0x2000)
              {
                if (v176 != 1)
                {
                  if (v176 == 2048)
                  {
                    v288 = v287;
                    v289 = *(v174 + 16);
                    v227 = v588;
                    v289(v588, v639, v173);
                    v228 = v173;
                    v290 = *(v640 - 8);
                    if ((*(v290 + 48))(v227, 1, v640) != 1)
                    {
                      v289(v582, v227, v173);
                      v291 = swift_getEnumCaseMultiPayload();
                      if (v291 == 48)
                      {
                        goto LABEL_230;
                      }

                      if (v291 != 20)
                      {
                        (*(v290 + 8))(v582, v640);
                        v417 = &v620;
                        goto LABEL_234;
                      }

                      v292 = v582;
                      v293 = *v582;
                      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                      v294 = v635;
                      v295 = swift_getTupleTypeMetadata3();
                      v296 = *(v295 + 48);
                      v297 = *&v292[*(v295 + 64)];

                      if (swift_getEnumCaseMultiPayload() == 1)
                      {

                        (*(v633 + 8))(&v582[v296], v294);
                      }

                      else
                      {
                        if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v293])
                        {
                          v538 = v645;
                          v539 = v563;
                          v540 = v649;
                          (*(v645 + 32))(v563, &v582[v296], v649);
                          v541 = v627;
                          (*(v538 + 16))(v627, v288 + *(*v288 + 576), v540);
                          v542 = sub_1CF9E6868();

                          v543 = *(v538 + 8);
                          v543(v541, v540);
                          v543(v539, v540);
                          v227 = v588;
                          if ((v542 & 1) == 0)
                          {
                            goto LABEL_235;
                          }

                          goto LABEL_230;
                        }

                        (*(v645 + 8))(&v582[v296], v649);
                      }

                      v417 = &v620;
                      goto LABEL_234;
                    }

LABEL_235:
                    (*(v651 + 8))(v227, v228);
                    return;
                  }

LABEL_208:
                  v656 = v644;
                  v657 = v642;
                  v658 = v154;
                  v659 = v643;
                  type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v656);
                  v445 = swift_dynamicCastClass();
                  if (v445)
                  {
                    if (v176 != 0x2000000)
                    {
                      if (v176 != 0x1000000)
                      {
                        if (v176 == 0x800000)
                        {
                          v446 = v445;
                          v421 = v572;
                          (*(v174 + 16))(v572, v639, v173);
                          v447 = v640;
                          v448 = *(v640 - 8);
                          if ((*(v448 + 48))(v421, 1, v640) != 1)
                          {
                            if (swift_getEnumCaseMultiPayload() == 38)
                            {
                              v524 = v635;
                              v525 = v421[*(swift_getTupleTypeMetadata2() + 48)];
                              v526 = v633;
                              v527 = v566;
                              (*(v633 + 32))(v566, v421, v524);
                              if (qword_1CFA0F608[sub_1CF03D760()] == qword_1CFA0F608[v525])
                              {
                                v528 = v564;
                                v529 = v649;
                                (*(v645 + 16))(v564, v446 + *(*v446 + 576), v649);
                                swift_storeEnumTagMultiPayload();
                                sub_1CF024490(v528, v527, v529, v614);
                                v530 = *(v526 + 8);
                                v530(v528, v524);
                                v530(v527, v524);
                              }

                              else
                              {
                                (*(v526 + 8))(v527, v524);
                              }
                            }

                            else
                            {
                              (*(v448 + 8))(v421, v447);
                            }

                            return;
                          }

LABEL_190:
                          (*(v174 + 8))(v421, v173);
                          return;
                        }

LABEL_311:
                        v656 = 0;
                        v657 = 0xE000000000000000;
                        sub_1CF9E7948();
                        MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA45B90);
                        v660 = v171;
                        swift_getWitnessTable();
                        sub_1CF9E7FE8();
                        sub_1CF9E7B68();
                        __break(1u);
                        return;
                      }

LABEL_269:
                      if (qword_1EDEA5A98 != -1)
                      {
                        swift_once();
                      }

                      sub_1CF9615C8(sub_1CF193328, 0);
                      return;
                    }
                  }

                  else if (v176 != 0x2000000)
                  {
                    if (v176 != 0x1000000)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_269;
                  }

                  v512 = v177[3];
                  v513 = v577;
                  sub_1CF046AB4();
                  v656 = v644;
                  v657 = v642;
                  v658 = v154;
                  v659 = v643;
                  v514 = type metadata accessor for Ingestion.DeferredRescan(0, &v656);
                  (*(*v512 + 328))(v513, v514, 0, v646, v647, v648);
                  (*(v645 + 8))(v513, v649);
                  return;
                }

                goto LABEL_196;
              }

              if (v176 == 0x2000)
              {
LABEL_187:
                if (((*(*v177 + 152))() & 0x80) == 0)
                {
                  return;
                }

                v420 = *(v174 + 16);
                v421 = v578;
                v420(v578, v639, v173);
                v422 = v640;
                v423 = *(v640 - 8);
                if ((*(v423 + 48))(v421, 1, v640) != 1)
                {
                  v424 = v573;
                  v420(v573, v421, v173);
                  v425 = swift_getEnumCaseMultiPayload();
                  (*(v423 + 8))(v424, v422);
                  if (v425 == 28)
                  {
                    goto LABEL_190;
                  }
                }

                v339 = *(v174 + 8);
                v340 = v421;
                goto LABEL_251;
              }

LABEL_184:
              if (v176 == 0x10000)
              {
                v418 = *(**(v177[4] + 16) + 848);

                v418(v419);
LABEL_21:

                return;
              }

              goto LABEL_208;
            }
          }

          else if (v176 < 0x20000)
          {
            if (v176 == 1)
            {
LABEL_196:
              v435 = v593;
              (*(v174 + 16))(v593, v639, v173);
              v436 = v640;
              v437 = *(v640 - 8);
              if ((*(v437 + 48))(v435, 1, v640) != 1)
              {
                swift_getEnumCaseMultiPayload();
                (*(v437 + 8))(v435, v436);
                return;
              }

              v339 = *(v174 + 8);
              v340 = v435;
              goto LABEL_251;
            }

            if (v176 == 0x2000)
            {
              goto LABEL_187;
            }

            goto LABEL_184;
          }

          if (v176 >= 0x200000)
          {
            if (v176 == 0x200000)
            {
              if (*(v171 + 136) == 0x8000)
              {
                v438 = v643;
                v439 = v644;
                v440 = v642;
                v656 = v644;
                v657 = v642;
                v658 = v154;
                v659 = v643;
                type metadata accessor for ItemJob(0, &v656);
                if (swift_dynamicCastClass())
                {
                  v656 = v439;
                  v657 = v440;
                  v658 = v154;
                  v659 = v438;
                  type metadata accessor for Ingestion.FetchItemMetadata(0, &v656);
                  if (swift_dynamicCastClass() || (v656 = v439, v657 = v440, v658 = v154, v659 = v438, type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v656), swift_dynamicCastClass()) || (v656 = v439, v657 = v440, v658 = v154, v659 = v438, type metadata accessor for Ingestion.ReSnapshotChildren(0, &v656), swift_dynamicCastClass()))
                  {
                    v441 = qword_1EDEACC50;

                    if (v441 != -1)
                    {
                      swift_once();
                    }

                    sub_1CF9615C8(sub_1CF193328, 0);
                  }
                }
              }

              return;
            }

            if (v176 == 0x400000)
            {
              (*(*v177 + 256))();
              return;
            }

            goto LABEL_208;
          }

          if (v176 != 0x20000)
          {
            if (v176 == 0x80000)
            {
              (*(*v177 + 160))();
              return;
            }

            goto LABEL_208;
          }

          v442 = v594;
          (*(v174 + 16))(v594, v639, v173);
          v443 = v640;
          v444 = *(v640 - 8);
          if ((*(v444 + 48))(v442, 1, v640) != 1)
          {
            if (swift_getEnumCaseMultiPayload() != 24)
            {
              (*(v444 + 8))(v442, v443);
            }

            return;
          }

          v339 = *(v174 + 8);
          v340 = v442;
LABEL_251:
          v279 = v173;
          goto LABEL_123;
        }

LABEL_47:
        if (((*(*v177 + 152))() & 0x100) != 0)
        {
          return;
        }

        v220 = *(v174 + 16);
        v221 = v624;
        v220(v624, v639, v173);
        v222 = v640;
        v223 = *(v640 - 8);
        if ((*(v223 + 48))(v221, 1, v640) == 1)
        {
          goto LABEL_49;
        }

        v308 = v221;
        v309 = v603;
        v220(v603, v308, v173);
        v310 = v309;
        if (swift_getEnumCaseMultiPayload() == 14)
        {
          v311 = v608;
          v312 = v599;
          v313 = v609;
          (*(v608 + 32))(v599, v310, v609);
          v653 = sub_1CF04FB80();
          v656 = v653;
          sub_1CF9E6E58();
          swift_getWitnessTable();
          swift_getWitnessTable();
          v314 = sub_1CF9E6C08();
          v653, v315, v316, v317, v318, v319, v320, v321;
          (*(v311 + 8))(v312, v313);
          v221 = v624;
          if (v314)
          {
LABEL_49:
            (*(v174 + 8))(v221, v173);
            v213 = v655;
            v214 = 0;
            goto LABEL_50;
          }

          v322 = *(v174 + 8);
          v323 = v624;
        }

        else
        {
          (*(v223 + 8))(v309, v222);
          v322 = *(v174 + 8);
          v323 = v624;
        }

        v322(v323, v173);
        return;
      }

      if (v176 == 64)
      {
        v178 = v172;
        v179 = *(v651 + 16);
        v180 = v630;
        v179(v630, v639, v650);
        v181 = *(v640 - 8);
        v182 = (*(v181 + 48))(v180, 1, v640);
        v638 = v178;
        if (v182 == 1)
        {

          v183 = v654;
          goto LABEL_18;
        }

        v271 = v607;
        v179(v607, v180, v173);
        v272 = swift_getEnumCaseMultiPayload();
        if (v272 <= 10)
        {
          v370 = v622;
          v371 = v617;
          if (v272 != 5)
          {
            v183 = v654;
            if (v272 != 6)
            {
LABEL_175:
              (*(v181 + 8))(v271, v640);
              goto LABEL_248;
            }

            v372 = *(swift_getTupleTypeMetadata3() + 48);
            v373 = v271;
            v374 = *(v620 + 48);
            if (v374(v373, 1, v370) != 1)
            {
              if (v374(&v373[v372], 1, v370) != 1)
              {
                (*(v620 + 8))(v373, v370);
                (*(v613 + 8))(&v373[v372], v371);
                goto LABEL_248;
              }

              v472 = *(v645 + 16);
              v473 = v627;
              v474 = v649;
              v472(v627, v373, v649);
              v475 = *(v620 + 8);

              v475(v373, v370);
              v476 = v638;
              v477 = v596;
              v472(v596, &v476[*(*v476 + 576)], v474);
              v478 = sub_1CF9E6868();
              v479 = *(v645 + 8);
              v479(v477, v474);
              v480 = v473;
              v173 = v650;
              v174 = v651;
              v479(v480, v474);
              v178 = v476;
              if ((v478 & 1) == 0)
              {
                goto LABEL_222;
              }

              goto LABEL_18;
            }

            v375 = *(v613 + 8);
            v375(&v373[v372], v371);
            v375(v373, v371);
LABEL_248:
            v173 = v650;
            v174 = v651;
            goto LABEL_249;
          }

          v401 = v635;
          v402 = *(swift_getTupleTypeMetadata2() + 48);
          v403 = swift_getEnumCaseMultiPayload();
          v404 = v630;
          v183 = v654;
          if (v403 == 1)
          {
            v405 = *(v633 + 8);
            v405(&v271[v402], v401);
            v405(v271, v401);
            v340 = v404;
            v173 = v650;
            v174 = v651;
LABEL_250:
            v339 = *(v174 + 8);
            goto LABEL_251;
          }

          v458 = v645;
          v459 = v589;
          v460 = v649;
          (*(v645 + 32))(v589, v271, v649);
          v461 = v627;
          (*(v458 + 16))(v627, &v638[*(*v638 + 576)], v460);

          v462 = sub_1CF9E6868();
          v463 = *(v458 + 8);
          v463(v461, v460);
          v463(v459, v460);
          if ((v462 & 1) == 0)
          {

            (*(v633 + 8))(&v271[v402], v635);
            goto LABEL_248;
          }

          (*(v633 + 8))(&v271[v402], v635);
          v177 = v652;
        }

        else
        {
          if (v272 != 11)
          {
            v183 = v654;
            if (v272 != 15)
            {
              if (v272 == 16)
              {
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                v273 = v635;
                v274 = *&v271[*(swift_getTupleTypeMetadata3() + 48)];

                if (swift_getEnumCaseMultiPayload() != 1)
                {
                  v464 = v645;
                  v465 = v591;
                  v466 = v271;
                  v467 = v649;
                  (*(v645 + 32))(v591, v466, v649);
                  v468 = v627;
                  (*(v464 + 16))(v627, &v638[*(*v638 + 576)], v467);
                  v469 = sub_1CF9E6868();

                  v470 = *(v464 + 8);
                  v471 = v630;
                  v470(v468, v467);
                  v470(v465, v467);
                  v340 = v471;
                  v173 = v650;
                  v174 = v651;
                  if (v469)
                  {
                    (*(v651 + 8))(v340, v650);
                    return;
                  }

                  goto LABEL_250;
                }

                (*(v633 + 8))(v271, v273);
                goto LABEL_248;
              }

              goto LABEL_175;
            }

            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v399 = v635;
            v400 = *&v271[*(swift_getTupleTypeMetadata2() + 48)];

            if (swift_getEnumCaseMultiPayload() == 1)
            {

              (*(v633 + 8))(v271, v399);
LABEL_249:
              v340 = v630;
              goto LABEL_250;
            }

            v449 = v271;
            v450 = v645;
            v451 = v590;
            v452 = v649;
            (*(v645 + 32))(v590, v449, v649);
            v453 = v638;
            v454 = v173;
            v455 = v627;
            (*(v450 + 16))(v627, &v453[*(*v453 + 576)], v452);
            LODWORD(v653) = sub_1CF9E6868();
            v456 = *(v450 + 8);
            v457 = v455;
            v173 = v454;
            v174 = v651;
            v456(v457, v452);
            v456(v451, v452);
            v178 = v453;
            if ((v653 & 1) == 0)
            {
LABEL_222:

              goto LABEL_249;
            }

LABEL_18:
            (*(v174 + 8))(v630, v173);
            v184 = v177[4];
            v185 = v645;
            v186 = *(v645 + 16);
            v651 = *(*v178 + 576);
            v187 = v610;
            v188 = v649;
            v653 = v186;
            (v186)(v610, &v178[v651], v649);
            v189 = *(*v184 + 240);

            v190 = v611;
            v189(v187, 1, v646, v647, v648);
            if (v183)
            {

              (*(v185 + 8))(v187, v188);
            }

            else
            {
              v367 = *(v185 + 8);
              v367(v187, v188);
              v368 = v620;
              v369 = v622;
              if ((*(v620 + 48))(v190, 1, v622) == 1)
              {

                (*(v613 + 8))(v190, v617);
              }

              else
              {
                v654 = v367;
                v380 = v595;
                (*(v368 + 32))(v595, v190, v369);
                WitnessTable = swift_getWitnessTable();
                sub_1CF06D940(v369, WitnessTable, &v656);
                if (v656 == 2)
                {

                  (*(v368 + 8))(v380, v369);
                }

                else if (sub_1CF937C7C(v369, WitnessTable))
                {
                  v432 = v579;
                  v433 = v649;
                  (v653)(v579, &v638[v651], v649);

                  v434 = v580;
                  sub_1CF68DDB0(v432, v646, v647, v648, v580);
                  v654(v432, v433);
                  v519 = v631;
                  v520 = v632;
                  v521 = (*(v631 + 48))(v434, 1, v632);
                  v522 = v620;
                  if (v521 == 1)
                  {
                    (*(v620 + 8))(v380, v622);

                    (*(v618 + 8))(v434, v619);
                  }

                  else
                  {
                    v531 = v568;
                    (*(v519 + 32))(v568, v434, v520);
                    v532 = v519;
                    v533 = sub_1CF07CD80(v520);

                    (*(v522 + 8))(v380, v622);
                    if (v533)
                    {
                      type metadata accessor for ItemReconciliationHalf(0, v642, v643, v534);
                    }

                    (*(v532 + 8))(v531, v520);
                  }
                }

                else
                {

                  (*(v620 + 8))(v380, v369);
                }
              }
            }

            return;
          }

          v393 = v635;
          v656 = v635;
          v657 = sub_1CF9E75D8();
          v658 = &type metadata for ContentStatus;
          v659 = &type metadata for ContentStatus;
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v395 = *(TupleTypeMetadata + 48);
          v396 = v271[*(TupleTypeMetadata + 80)];
          v397 = sub_1CF9E75D8();
          v398 = *(*(v397 - 8) + 8);
          v183 = v654;
          if (v396)
          {
            v398(&v271[v395], v397);
            (*(v633 + 8))(v271, v393);
            goto LABEL_248;
          }

          v398(&v271[v395], v397);
          (*(v633 + 8))(v271, v393);
        }

        v173 = v650;
        v174 = v651;
        v178 = v638;
        goto LABEL_18;
      }
    }

    else
    {
      v201 = v144 == 0x40000;
      v176 = v144;
      v177 = v652;
      if (v201)
      {
        goto LABEL_36;
      }

      if (v176 == 256)
      {
        goto LABEL_47;
      }
    }

    if (v176 == 128)
    {
      if (((*(*v177 + 152))() & 0x100) == 0)
      {
        v202 = *(TupleTypeMetadata2 + 48);
        v203 = *(v174 + 16);
        v204 = v621;
        v203(v621, v639, v173);
        *&v204[v202] = v171;
        v205 = v173;
        v206 = v640;
        v207 = *(v640 - 8);
        if ((*(v207 + 48))(v204, 1, v640) == 1)
        {
        }

        else
        {
          v298 = v604;
          v203(v604, v204, v205);
          v299 = swift_getEnumCaseMultiPayload();
          if (v299 == 12)
          {
            v300 = v651;
            MEMORY[0x1EEE9AC00](v299);
            strcpy(&v561 - 32, " otherID from to ");
            v301 = v298;
            v302 = v635;
            v656 = v635;
            v657 = sub_1CF9E75D8();
            v658 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
            v659 = v658;
            v303 = swift_getTupleTypeMetadata();
            v304 = *(v303 + 48);
            v305 = v301[*(v303 + 80)];
            v656 = v644;
            v657 = v642;
            v658 = v154;
            v659 = v643;
            type metadata accessor for DiskImport.ContinueDiskImport(0, &v656);
            if (swift_dynamicCastClass())
            {
              v306 = sub_1CF9E75D8();
              v307 = *(*(v306 - 8) + 8);

              v307(&v301[v304], v306);
              (*(v633 + 8))(v301, v302);
              v204 = v621;
              if (v305 == 6)
              {

                (*(v300 + 8))(v204, v650);
                return;
              }
            }

            else
            {
              v406 = sub_1CF9E75D8();
              v407 = *(*(v406 - 8) + 8);

              v407(&v301[v304], v406);
              (*(v633 + 8))(v301, v302);
              v204 = v621;
            }
          }

          else
          {
            v366 = *(v207 + 8);

            v366(v298, v206);
          }
        }

        v408 = (*(v616 + 8))(v204, TupleTypeMetadata2);
        v409 = (*(*v652 + 264))(v408);
        sub_1CF9615C8(sub_1CF193328, 0);
      }

      return;
    }

    goto LABEL_51;
  }

  v653 = v155;
  v156 = v650;
  v158 = v651 + 16;
  v157 = *(v651 + 16);
  v159 = v638;
  v157(v638, v639, v650);
  v160 = v640;
  v161 = *(v640 - 8);
  v162 = *(v161 + 6);
  v625 = v161 + 48;
  v624 = v162;
  v163 = (v162)(v159, 1, v640);
  v630 = v161;
  TupleTypeMetadata2 = v158;
  if (v163 != 1)
  {
    v191 = v634;
    v157(v634, v159, v156);
    v192 = swift_getEnumCaseMultiPayload();
    if (v192 <= 14)
    {
      v193 = v635;
      if (v192 <= 10)
      {
        v194 = v630;
        if (v192 != 3)
        {
          if (v192 == 6)
          {
            v623 = v157;
            v195 = v617;
            v196 = *(swift_getTupleTypeMetadata3() + 48);
            v197 = v620;
            v198 = *(v620 + 48);
            v199 = v622;
            if (v198(v191, 1, v622) == 1)
            {
              v200 = *(v613 + 8);
              v200(&v191[v196], v195);
              v200(v191, v195);
LABEL_121:
              v279 = v650;
              v278 = v651;
              goto LABEL_122;
            }

            if (v198(&v191[v196], 1, v199) != 1)
            {
              (*(v197 + 8))(v191, v199);
              (*(v613 + 8))(&v191[v196], v195);
              goto LABEL_121;
            }

            v341 = *(v645 + 16);
            v342 = v627;
            v343 = v197;
            v344 = v199;
            v345 = v649;
            v341(v627, v191, v649);
            v346 = *(v343 + 8);

            v346(v191, v344);
            v347 = v596;
            v341(v596, (v653 + *(*v653 + 576)), v345);
            v348 = sub_1CF9E6868();
            v349 = *(v645 + 8);
            v349(v347, v345);
            v349(v342, v345);
LABEL_127:
            v159 = v638;
            v164 = v637;
            if (v348)
            {
              goto LABEL_10;
            }

LABEL_128:

            goto LABEL_121;
          }

          goto LABEL_95;
        }

        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v623 = v157;
          v324 = v645;
          v325 = v649;
          (*(v645 + 32))(v133, v191, v649);
          v326 = v627;
          (*(v324 + 16))(v627, v653 + *(*v653 + 576), v325);

          v327 = sub_1CF9E6868();
          v328 = *(v324 + 8);
          v328(v326, v325);
          v328(v133, v325);
          v159 = v638;
          v164 = v637;
          if (v327)
          {
            goto LABEL_10;
          }

          goto LABEL_128;
        }

LABEL_88:
        (*(v633 + 8))(v191, v193);
        goto LABEL_121;
      }

      v194 = v630;
      if (v192 == 11)
      {
        v280 = v637;
        v623 = v157;
        v656 = v635;
        v657 = sub_1CF9E75D8();
        v658 = &type metadata for ContentStatus;
        v659 = &type metadata for ContentStatus;
        v281 = swift_getTupleTypeMetadata();
        v282 = *(v281 + 48);
        v283 = v191[*(v281 + 80)];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v284 = v633;
          if ((*(v633 + 48))(&v191[v282], 1, v193) == 1)
          {
            (*(v284 + 8))(v191, v193);
            v285 = sub_1CF9E75D8();
            (*(*(v285 - 8) + 8))(&v191[v282], v285);
          }

          else if (swift_getEnumCaseMultiPayload() == 1)
          {
            v378 = *(v633 + 8);
            v378(&v191[v282], v193);
            v378(v191, v193);
          }

          else if (v283 == 2)
          {
            v426 = v645;
            v427 = &v191[v282];
            v428 = v581;
            v429 = v649;
            (*(v645 + 32))(v581, v427, v649);
            v430 = v627;
            (*(v426 + 16))(v627, v653 + *(*v653 + 576), v429);

            LODWORD(v628) = sub_1CF9E6868();
            v431 = *(v426 + 8);
            v431(v430, v429);
            v431(v428, v429);
            if (v628)
            {
              (*(v633 + 8))(v634, v193);
              v159 = v638;
              v164 = v280;
              goto LABEL_10;
            }

            (*(v633 + 8))(v634, v193);
          }

          else
          {
            (*(v645 + 8))(&v191[v282], v649);
            (*(v633 + 8))(v191, v193);
          }
        }

        else
        {
          v338 = sub_1CF9E75D8();
          (*(*(v338 - 8) + 8))(&v191[v282], v338);
          (*(v633 + 8))(v191, v193);
        }

        goto LABEL_121;
      }

      if (v192 != 12)
      {
        goto LABEL_95;
      }

      v623 = v157;
      MEMORY[0x1EEE9AC00](v192);
      strcpy(&v561 - 32, " otherID from to ");
      v656 = v193;
      v657 = sub_1CF9E75D8();
      v658 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v659 = v658;
      v237 = *(swift_getTupleTypeMetadata() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v238 = sub_1CF9E75D8();
        (*(*(v238 - 8) + 8))(&v191[v237], v238);
        goto LABEL_88;
      }

      v633 = v237;
      v354 = v645;
      v355 = v600;
      v356 = v649;
      (*(v645 + 32))(v600, v191, v649);
      v357 = v627;
      (*(v354 + 16))(v627, v653 + *(*v653 + 576), v356);

      v358 = sub_1CF9E6868();
      v359 = *(v354 + 8);
      v359(v357, v356);
      v359(v355, v356);
      if ((v358 & 1) == 0)
      {

        v379 = sub_1CF9E75D8();
        (*(*(v379 - 8) + 8))(&v191[v633], v379);
        goto LABEL_121;
      }

      v360 = sub_1CF9E75D8();
      (*(*(v360 - 8) + 8))(&v191[v633], v360);
LABEL_133:
      v159 = v638;
      goto LABEL_9;
    }

    v215 = v635;
    if (v192 > 21)
    {
      v194 = v630;
      if (v192 == 22)
      {
        v623 = v157;
        v286 = *(v630 + 1);

        v286(v191, v160);
      }

      else
      {
        if (v192 != 32)
        {
          goto LABEL_95;
        }

        v239 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v240 = *(v633 + 8);
          v240(&v239[v191], v215);
          v240(v191, v215);
          goto LABEL_121;
        }

        v621 = v239;
        v623 = v157;
        v361 = v645;
        v362 = v649;
        (*(v645 + 32))(v136, v191, v649);
        v363 = v627;
        (*(v361 + 16))(v627, v653 + *(*v653 + 576), v362);

        v364 = sub_1CF9E6868();
        v365 = *(v361 + 8);
        v365(v363, v362);
        v365(v136, v362);
        if ((v364 & 1) == 0)
        {

          (*(v633 + 8))(&v621[v191], v215);
          goto LABEL_121;
        }

        (*(v633 + 8))(&v621[v191], v215);
      }

      goto LABEL_133;
    }

    v194 = v630;
    if (v192 != 15)
    {
      if (v192 == 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v216 = *&v191[*(swift_getTupleTypeMetadata3() + 48)];

        if (swift_getEnumCaseMultiPayload() == 1)
        {

          (*(v633 + 8))(v191, v215);
          goto LABEL_121;
        }

        v623 = v157;
        v350 = v645;
        v351 = v649;
        (*(v645 + 32))(v130, v191, v649);
        v352 = v627;
        (*(v350 + 16))(v627, v653 + *(*v653 + 576), v351);
        v348 = sub_1CF9E6868();
        v353 = *(v350 + 8);
        v353(v352, v351);
        v353(v130, v351);
        goto LABEL_127;
      }

LABEL_95:
      (*(v194 + 1))(v191, v160);
      goto LABEL_121;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v275 = *&v191[*(swift_getTupleTypeMetadata2() + 48)];
    v276 = swift_getEnumCaseMultiPayload();
    v277 = v650;
    v278 = v651;
    if (v276 == 1)
    {

      (*(v633 + 8))(v191, v215);
      v279 = v277;
LABEL_122:
      v339 = *(v278 + 8);
      v340 = v638;
LABEL_123:
      v339(v340, v279);
      return;
    }

    v656 = v275;

    v329 = swift_dynamicCast();
    v330 = v645;
    if (v329)
    {
      if (v660 == 5)
      {
        v481 = *(v645 + 16);
        v482 = v585;
        v483 = v649;
        v481(v585, v634, v649);
        v484 = v627;
        v481(v627, (v653 + *(*v653 + 576)), v483);
        LODWORD(v652) = sub_1CF9E6868();
        v335 = *(v330 + 8);
        v335(v484, v483);
        v336 = v482;
        v337 = v483;
      }

      else
      {
        if (v660 != 3)
        {
          goto LABEL_226;
        }

        v331 = *(v645 + 16);
        v332 = v584;
        v333 = v649;
        v331(v584, v634, v649);
        v334 = v627;
        v331(v627, (v653 + *(*v653 + 576)), v333);
        LODWORD(v652) = sub_1CF9E6868();
        v335 = *(v330 + 8);
        v335(v334, v333);
        v336 = v332;
        v337 = v333;
      }

      v335(v336, v337);
      if (v652)
      {

        v335(v634, v649);
        (*(v278 + 8))(v638, v277);
        return;
      }
    }

LABEL_226:

    v485 = v598;
    v486 = v649;
    (*(v330 + 32))(v598, v634, v649);
    v487 = v627;
    (*(v330 + 16))(v627, v653 + *(*v653 + 576), v486);
    v488 = sub_1CF9E6868();

    v489 = *(v330 + 8);
    v489(v487, v486);
    v489(v485, v486);
    v279 = v277;
    if (v488)
    {
      (*(v278 + 8))(v638, v277);
      return;
    }

    goto LABEL_122;
  }

  v623 = v157;

LABEL_9:
  v164 = v637;
LABEL_10:
  v165 = v651 + 8;
  v635 = *(v651 + 8);
  (v635)(v159, v650);
  v166 = v645;
  v167 = *(v645 + 16);
  v638 = *(*v653 + 576);
  v168 = v649;
  v167(v164, &v638[v653], v649);

  v169 = v636;
  v170 = v654;
  sub_1CF68DDB0(v164, v646, v647, v648, v636);
  if (v170)
  {

    (*(v166 + 8))(v164, v168);
    return;
  }

  v634 = v167;
  v651 = v165;
  v654 = 0;
  v217 = *(v166 + 8);
  v217(v164, v168);
  v218 = v631;
  v219 = v632;
  if ((*(v631 + 48))(v169, 1, v632) == 1)
  {

    (*(v618 + 8))(v169, v619);
    return;
  }

  v241 = v626;
  (*(v218 + 32))(v626, v169, v219);
  v243 = type metadata accessor for ItemReconciliationHalf(0, v644, v641, v242);
  if (*&v241[*(v243 + 36)])
  {

    (*(v218 + 8))(v241, v219);
    return;
  }

  v644 = *&v241[*(v243 + 36)];
  v645 = v243;
  v244 = *(v652 + 32);
  v245 = v605;
  v246 = v649;
  (v634)(v605, &v638[v653], v649);

  v247 = v606;
  v248 = v654;
  (*(*v244 + 240))(v245, 1, v646, v647, v648);
  v654 = v248;
  if (v248)
  {

    v217(v245, v246);
LABEL_69:
    (*(v631 + 8))(v626, v632);
    return;
  }

  v217(v245, v246);
  v376 = v620;
  v377 = v622;
  if ((*(v620 + 48))(v247, 1, v622) == 1)
  {
    (*(v631 + 8))(v626, v632);

    (*(v613 + 8))(v247, v617);
    return;
  }

  v382 = v597;
  (*(v376 + 32))(v597, v247, v377);
  v383 = swift_getWitnessTable();
  if ((sub_1CF937C7C(v377, v383) & 1) == 0 || v382[*(v377 + 48)] == 2)
  {
    v384 = v632;
    v385 = v626;
    v386 = sub_1CF07CD80(v632);
    v388 = v643;
    if (v386)
    {
      v389 = &v385[*(v384 + 52)];
      if ((v389[*(type metadata accessor for ItemReconciliationHalf(0, v642, v643, v387) + 52)] | 4) == 4)
      {
        goto LABEL_168;
      }
    }

    v390 = v385[*(v645 + 56)];
    if ((v390 | 2) != 6)
    {

      (*(v376 + 8))(v597, v622);
      (*(v631 + 8))(v385, v632);
      return;
    }

    v384 = v632;
    if (sub_1CF07CD80(v632))
    {
      v392 = &v385[*(v384 + 52)];
      if ((v392[*(type metadata accessor for ItemReconciliationHalf(0, v642, v388, v391) + 52)] | 2) == 3)
      {
LABEL_168:

        (*(v376 + 8))(v597, v622);
        (*(v631 + 8))(v385, v384);
        return;
      }
    }

    if (v390 != 4)
    {
      v523 = *(v592 + 16);
      v501 = v632;
      v510 = v614;
      v508 = v587;
      v511 = v626;
      v506 = v586;
      goto LABEL_300;
    }

    v501 = v632;
    v502 = *(v632 + 52);
    v503 = v592;
    v504 = *(v592 + 16);
    v649 = (v592 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v505 = v570;
    v506 = v586;
    v507 = v504;
    v504(v570, &v626[v502], v586);
    v508 = v587;
    v509 = *(v587 + 48);
    v510 = v614;
    v645 = v587 + 48;
    v643 = v509;
    if ((v509)(v505, 1, v614) == 1)
    {
      (*(v503 + 8))(v505, v506);
LABEL_255:
      v511 = v626;
LABEL_299:
      v523 = v507;
LABEL_300:
      v546 = v575;
      v523(v575, &v511[*(v501 + 52)], v506);
      v547 = (*(v508 + 48))(v546, 1, v510);
      v548 = v652;
      v549 = v510;
      v551 = v647;
      v550 = v648;
      v552 = v646;
      if (v547 == 1)
      {

        (*(v620 + 8))(v597, v622);
        (*(v631 + 8))(v511, v501);
        (*(v592 + 8))(v546, v506);
      }

      else
      {
        v553 = v569;
        v554 = v546;
        v555 = v549;
        (*(v508 + 32))(v569, v554, v549);
        v556 = v654;
        v557 = (*(**(v548 + 24) + 256))(v553, v552, v551, v550);
        if (v556)
        {

          (*(v508 + 8))(v553, v555);
          (*(v620 + 8))(v597, v622);
          (*(v631 + 8))(v626, v632);
        }

        else
        {
          v558 = v557;

          if (v558)
          {
          }

          (*(v508 + 8))(v553, v555);
          (*(v620 + 8))(v597, v622);
          (*(v631 + 8))(v626, v632);
        }
      }

      return;
    }

    (*(v508 + 32))(v571, v505, v510);
    v535 = v567;
    v536 = v650;
    (v623)(v567, v639, v650);
    v537 = v640;
    if ((v624)(v535, 1, v640) == 1)
    {
      (v635)(v535, v536);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v508 = v587;
        v510 = v614;
        (*(v587 + 8))(v571, v614);
        (*(v630 + 1))(v535, v537);
        goto LABEL_298;
      }

      (*(v630 + 1))(v535, v537);
    }

    if ((v644 & 0x10) == 0)
    {
      v544 = v654;
      v545 = (*(*v244 + 488))(&v638[v653], v646, v647, v648);
      v654 = v544;
      if (v544)
      {

        (*(v587 + 8))(v571, v614);
        (*(v620 + 8))(v597, v622);
        goto LABEL_69;
      }

      if ((v545 & 1) == 0)
      {
        v559 = v654;
        (*(**(v652 + 40) + 432))(v571, 1, v646, v647, v648);
        v654 = v559;
        v560 = v614;
        (*(v587 + 8))(v571, v614);
        if ((v643)(v562, 1, v560) != 1)
        {

          (*(v620 + 8))(v597, v622);
          (*(v631 + 8))(v626, v632);
          (*(v592 + 8))(v562, v586);
          return;
        }

        v506 = v586;
        (*(v592 + 8))(v562, v586);
        v501 = v632;
        v510 = v614;
        v508 = v587;
        goto LABEL_255;
      }
    }

    v508 = v587;
    v510 = v614;
    (*(v587 + 8))(v571, v614);
LABEL_298:
    v501 = v632;
    v511 = v626;
    v506 = v586;
    goto LABEL_299;
  }

  (*(v376 + 8))(v382, v377);

  v497 = v632;
  v498 = v626;
  v499 = &v626[*(v632 + 52)];
  if (v499[*(type metadata accessor for ItemReconciliationHalf(0, v642, v643, v500) + 52)] == 4 && v498[*(v645 + 44)])
  {
    (*(v631 + 8))(v498, v497);
  }

  else
  {
    v515 = v592;
    v516 = v574;
    v517 = v499;
    v518 = v586;
    (*(v592 + 16))(v574, v517, v586);
    if ((*(v587 + 48))(v516, 1, v614) == 1)
    {
      (*(v515 + 8))(v516, v518);
      (*(v631 + 8))(v498, v497);
    }

    else
    {
      (*(v631 + 8))(v498, v497);
      (*(v515 + 8))(v516, v518);
    }
  }
}

double sub_1CF676BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v42 = a3;
  v43 = a4;
  v46 = a1;
  v7 = *(*a2 + 80);
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 96);
  v47 = *(*a2 + 88);
  v6 = v47;
  v48 = v7;
  v49 = v8;
  v50 = v9;
  v38 = type metadata accessor for PersistenceTrigger(255, &v47);
  v10 = sub_1CF9E75D8();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v47 = v7;
  v48 = v6;
  v49 = v9;
  v50 = v8;
  v13 = type metadata accessor for PersistenceTrigger(255, &v47);
  v14 = sub_1CF9E75D8();
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1CF057B00(v46);
  if (!v18)
  {
    v36 = v9;
    v37 = v8;
    v51 = v46;
    if (v46 < 0)
    {
      v25 = v46 & 0x7FFFFFFFFFFFFFFFLL;
      v47 = v6;
      v48 = v7;
      v49 = v37;
      v50 = v36;
      type metadata accessor for JobRegistry(0, &v47);
      v26 = v12;
      (*(*(v38 - 8) + 56))(v12, 1, 1);
      v27 = qword_1EDEA72F0;
      swift_retain_n();
      v28 = v25;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = qword_1EDEBB8C0;
      v30 = (*(*a2 + 176))();
      v31 = v45;
      sub_1CF66DE54(v28, v26, v29, v30, v42, v43, v44);
      if (v31)
      {

        (*(v39 + 8))(v26, v40);
        goto LABEL_11;
      }

      v45 = 0;
      LODWORD(v44) = v34;
      v42 = v32;
      v43 = v33;
      (*(v39 + 8))(v26, v40);
    }

    else
    {
      v47 = v7;
      v48 = v6;
      v49 = v36;
      v50 = v37;
      type metadata accessor for JobRegistry(0, &v47);
      (*(*(v13 - 8) + 56))(v16, 1, 1, v13);
      v19 = qword_1EDEA72F0;

      if (v19 != -1)
      {
        swift_once();
      }

      v21 = v45;
      sub_1CF66DE54(v20, v16, qword_1EDEBB8C0, a2, v42, v43, v44);
      if (v21)
      {
        (*(v41 + 8))(v16, v14);
LABEL_11:

        return result;
      }

      v45 = 0;
      LODWORD(v44) = v24;
      v42 = v22;
      v43 = v23;
      (*(v41 + 8))(v16, v14);
    }

    v47 = v7;
    v48 = v6;
    v49 = v36;
    v50 = v37;
    type metadata accessor for FSOrFPJob(0, &v47);
    sub_1CF058C24(v42, v43, v44);
  }

  return result;
}

void sub_1CF6770AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v1, 0);
    v3 = v66;
    v4 = v2 + 64;
    v5 = sub_1CF9E77C8();
    v6 = 0;
    v7 = *(v2 + 36);
    v59 = v2 + 72;
    v60 = v1;
    v62 = v2 + 64;
    v63 = v2;
    v61 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v7 != *(v2 + 36))
      {
        goto LABEL_31;
      }

      v64 = v6;
      v65 = v3;
      v10 = *(*(v2 + 48) + 16 * v5 + 8);
      v11 = (*(v2 + 56) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];
      swift_bridgeObjectRetain_n();
      sub_1CEFE42D4(v12, v13);
      sub_1CEFE42D4(v12, v13);
      v10, v14, v15, v16, v17, v18, v19, v20;
      sub_1CEFE4714(v12, v13);
      v21 = sub_1CF9E6888();
      v22 = [v21 fp_obfuscatedExtendedAttributeName];

      v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;

      MEMORY[0x1D3868CC0](31546, 0xE200000000000000);
      v26 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v26 == 2 && __OFSUB__(*(v12 + 24), *(v12 + 16)))
        {
          goto LABEL_36;
        }
      }

      else if (v26 && __OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_35;
      }

      v27 = sub_1CF9E7F98();
      v29 = v28;
      MEMORY[0x1D3868CC0](v27);
      v29, v30, v31, v32, v33, v34, v35, v36;
      MEMORY[0x1D3868CC0](125, 0xE100000000000000);
      v10, v37, v38, v39, v40, v41, v42, v43;
      sub_1CEFE4714(v12, v13);
      v3 = v65;
      v50 = *(v65 + 16);
      v49 = *(v65 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1CEFE95CC((v49 > 1), v50 + 1, 1);
        v3 = v65;
      }

      *(v3 + 16) = v50 + 1;
      v51 = v3 + 16 * v50;
      *(v51 + 32) = v23;
      *(v51 + 40) = v25;
      v2 = v63;
      v8 = 1 << *(v63 + 32);
      if (v5 >= v8)
      {
        goto LABEL_32;
      }

      v4 = v62;
      v52 = *(v62 + 8 * v9);
      if ((v52 & (1 << v5)) == 0)
      {
        goto LABEL_33;
      }

      v7 = v61;
      if (v61 != *(v63 + 36))
      {
        goto LABEL_34;
      }

      v53 = v52 & (-2 << (v5 & 0x3F));
      if (v53)
      {
        v8 = __clz(__rbit64(v53)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v54 = v9 << 6;
        v55 = v9 + 1;
        v56 = (v59 + 8 * v9);
        while (v55 < (v8 + 63) >> 6)
        {
          v58 = *v56++;
          v57 = v58;
          v54 += 64;
          ++v55;
          if (v58)
          {
            sub_1CF0663D8(v5, v61, 0, v44, v45, v46, v47, v48);
            v8 = __clz(__rbit64(v57)) + v54;
            goto LABEL_4;
          }
        }

        sub_1CF0663D8(v5, v61, 0, v44, v45, v46, v47, v48);
      }

LABEL_4:
      v6 = v64 + 1;
      v5 = v8;
      if (v64 + 1 == v60)
      {
        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

BOOL sub_1CF677434(char *a1)
{
  v3 = sub_1CF9E7FC8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = *v1;
  if (qword_1CFA0FB98[v15] != qword_1CFA0FB98[*a1])
  {
    return 0;
  }

  v28 = v12;
  v16 = type metadata accessor for ItemMetadata(0);
  v17 = *(v16 + 112);
  v18 = v1[v17];
  if (v18 != a1[v17])
  {
    return 0;
  }

  if (v15 == 1)
  {
    LOBYTE(v18) = 1;
  }

  if ((v18 & 1) == 0 && *&v1[*(v16 + 104)] != *&a1[*(v16 + 104)])
  {
    return 0;
  }

  v20 = v16;
  if ((fpfs_supports_parent_mtime_iopolicy() & 1) == 0 && v15 == 1)
  {
    return 1;
  }

  v27 = *(v20 + 32);
  v26 = *MEMORY[0x1E69E7020];
  v25 = *(v4 + 104);
  v25(v6);
  sub_1CF515680(v6);
  v21 = *(v4 + 8);
  v21(v6, v3);
  (v25)(v6, v26, v3);
  sub_1CF515680(v6);
  v21(v6, v3);
  v22 = sub_1CF9E5CD8();
  v23 = *(v8 + 8);
  v24 = v28;
  v23(v10, v28);
  v23(v14, v24);
  return v22 == 0;
}

void sub_1CF677700(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    do
    {
      v7 = v3 & -v3;
      if (v7 < 0x20000)
      {
        if (v7 <= 255)
        {
          if (v7 > 15)
          {
            if (v7 > 63)
            {
              if (v7 != 64)
              {
                if (v7 != 128)
                {
                  goto LABEL_100;
                }

                v32 = *(type metadata accessor for ItemMetadata(0) + 128);
                goto LABEL_97;
              }

              v10 = *(type metadata accessor for ItemMetadata(0) + 124);
              goto LABEL_66;
            }

            if (v7 == 16)
            {
              v11 = type metadata accessor for ItemMetadata(0);
              *(v2 + v11[26]) = *(a2 + v11[26]);
              *(v2 + v11[27]) = *(a2 + v11[27]);
              *(v2 + v11[20]) = *(a2 + v11[20]);
              *(v2 + v11[28]) = *(a2 + v11[28]);
              v12 = v11[21];
              v13 = *(a2 + v12);
              goto LABEL_85;
            }

            if (v7 != 32)
            {
              goto LABEL_100;
            }

            v45 = type metadata accessor for ItemMetadata(0);
            sub_1CF67B700(a2 + *(v45 + 120), v2 + *(v45 + 120));
          }

          else
          {
            if (v7 > 3)
            {
              if (v7 == 4)
              {
                v19 = *(v2 + 10);
                if ((v19 & 0x38) != 0)
                {
                  v20 = 504;
                }

                else
                {
                  v20 = 448;
                }

                if ((v19 & 7) != 0)
                {
                  v21 = v20 | 7;
                }

                else
                {
                  v21 = v20;
                }

                *(v2 + 10) = v21 & *(a2 + 10);
                goto LABEL_5;
              }

              if (v7 != 8)
              {
                goto LABEL_100;
              }

              v9 = type metadata accessor for ItemMetadata(0);
              *(v2 + v9[26]) = *(a2 + v9[26]);
              *(v2 + v9[27]) = *(a2 + v9[27]);
              goto LABEL_94;
            }

            if (v7 == 1)
            {
              v8 = *(type metadata accessor for ItemMetadata(0) + 56);
LABEL_74:
              v34 = *(a2 + v8);
              v33 = *(a2 + v8 + 8);
              v35 = (v2 + v8);
              v36 = *(v2 + v8 + 8);

              v36, v37, v38, v39, v40, v41, v42, v43;
              *v35 = v34;
              v35[1] = v33;
              goto LABEL_5;
            }

            if (v7 != 2)
            {
              goto LABEL_100;
            }
          }
        }

        else
        {
          if (v7 > 4095)
          {
            if (v7 < 0x4000)
            {
              if (v7 == 4096)
              {
                v5 = *(type metadata accessor for ItemMetadata(0) + 40);
              }

              else
              {
                if (v7 != 0x2000)
                {
                  goto LABEL_100;
                }

                v5 = *(type metadata accessor for ItemMetadata(0) + 52);
              }
            }

            else
            {
              switch(v7)
              {
                case 0x4000:
                  v31 = *(a2 + 8);
                  *(v2 + 4) = *(a2 + 4);
                  *(v2 + 8) = v31;
                  goto LABEL_5;
                case 0x8000:
                  v5 = *(type metadata accessor for ItemMetadata(0) + 144);
                  break;
                case 0x10000:
                  v11 = type metadata accessor for ItemMetadata(0);
                  v12 = v11[21];
                  if (*(a2 + v11[12]) == 1)
                  {
                    v13 = 5;
LABEL_85:
                    *(v2 + v12) = v13;
                    v5 = v11[23];
                  }

                  else
                  {
                    *(v2 + v12) = *(a2 + v12);
                    *(v2 + v11[19]) = *(a2 + v11[19]);
                    v5 = v11[23];
                  }

                  break;
                default:
                  goto LABEL_100;
              }
            }

            goto LABEL_4;
          }

          if (v7 <= 1023)
          {
            if (v7 == 256)
            {
              v10 = *(type metadata accessor for ItemMetadata(0) + 132);
LABEL_66:
              v22 = *(a2 + v10);
              v23 = *(v2 + v10);

              v23, v24, v25, v26, v27, v28, v29, v30;
              *(v2 + v10) = v22;
              goto LABEL_5;
            }

            if (v7 != 512)
            {
              goto LABEL_100;
            }

            v5 = *(type metadata accessor for ItemMetadata(0) + 36);
            goto LABEL_4;
          }

          if (v7 == 1024)
          {
            v18 = *(type metadata accessor for ItemMetadata(0) + 28);
          }

          else
          {
            if (v7 != 2048)
            {
              goto LABEL_100;
            }

            v18 = *(type metadata accessor for ItemMetadata(0) + 32);
          }

          v44 = sub_1CF9E5CF8();
          (*(*(v44 - 8) + 24))(v2 + v18, a2 + v18, v44);
        }
      }

      else if (v7 > 0x1FFFFFFFFFFFLL)
      {
        if (v7 > 0x3FFFFFFFFFFFFLL)
        {
          if (v7 <= 0x1FFFFFFFFFFFFFLL)
          {
            if (v7 == 0x4000000000000)
            {
              goto LABEL_5;
            }

            if (v7 != 0x10000000000000)
            {
              goto LABEL_100;
            }

            v5 = *(type metadata accessor for ItemMetadata(0) + 72);
          }

          else
          {
            switch(v7)
            {
              case 0x20000000000000:
                v5 = *(type metadata accessor for ItemMetadata(0) + 96);
                break;
              case 0x40000000000000:
                v5 = *(type metadata accessor for ItemMetadata(0) + 100);
                break;
              case 0x100000000000000:
                v5 = *(type metadata accessor for ItemMetadata(0) + 88);
                break;
              default:
                goto LABEL_100;
            }
          }

          goto LABEL_4;
        }

        if (v7 <= 0x7FFFFFFFFFFFLL)
        {
          if (v7 != 0x200000000000)
          {
            if (v7 != 0x400000000000)
            {
              goto LABEL_100;
            }

            v32 = *(type metadata accessor for ItemMetadata(0) + 140);
LABEL_97:
            v46 = *(a2 + v32);
            v47 = *(a2 + v32 + 8);
            v48 = v2 + v32;
            *v48 = v46;
            *(v48 + 8) = v47;
            goto LABEL_5;
          }

          v9 = type metadata accessor for ItemMetadata(0);
LABEL_94:
          v5 = v9[28];
LABEL_4:
          *(v2 + v5) = *(a2 + v5);
          goto LABEL_5;
        }

        if (v7 != 0x800000000000)
        {
          if (v7 != 0x1000000000000)
          {
            goto LABEL_100;
          }

          v8 = *(type metadata accessor for ItemMetadata(0) + 152);
          goto LABEL_74;
        }

        v14 = *(type metadata accessor for ItemMetadata(0) + 148);
        v15 = *(a2 + v14);
        v16 = *(a2 + v14 + 4);
        v17 = v2 + v14;
        *v17 = v15;
        *(v17 + 4) = v16;
      }

      else if (v7 <= 0x7FFFFFF)
      {
        if (v7 <= 0xFFFFFF)
        {
          if (v7 == 0x20000)
          {
            v5 = *(type metadata accessor for ItemMetadata(0) + 44);
          }

          else
          {
            if (v7 != 0x800000)
            {
              goto LABEL_100;
            }

            v5 = *(type metadata accessor for ItemMetadata(0) + 64);
          }

          goto LABEL_4;
        }

        if (v7 != 0x1000000 && v7 != 0x4000000)
        {
LABEL_100:
          sub_1CF9E7B68();
          __break(1u);
          return;
        }
      }

      else
      {
        if (v7 > 0x1FFFFFFFFFFLL)
        {
          if (v7 == 0x20000000000 || v7 == 0x80000000000)
          {
            goto LABEL_5;
          }

          if (v7 != 0x100000000000)
          {
            goto LABEL_100;
          }

          v5 = *(type metadata accessor for ItemMetadata(0) + 60);
          goto LABEL_4;
        }

        if (v7 != 0x8000000)
        {
          if (v7 != 0x10000000000)
          {
            goto LABEL_100;
          }

          *v2 = *a2;
        }
      }

LABEL_5:
      v6 = v3 == v7;
      v3 ^= v7;
    }

    while (!v6);
  }
}

BOOL sub_1CF677CD0()
{
  v1 = type metadata accessor for ItemMetadata(0);
  if (*(v0 + *(v1 + 84)))
  {
    v2 = *(v0 + *(v1 + 84)) == 5;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void *sub_1CF677D00@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = __ROR8__(*result, 32);
  *(a2 + 8) = 0;
  return result;
}

void sub_1CF677E50(uint64_t a1)
{
  sub_1CF24F8BC(319, &qword_1EDEAED00, MEMORY[0x1E69E7668]);
  if (v1 <= 0x3F)
  {
    sub_1CF9E5CF8();
    if (v2 <= 0x3F)
    {
      v3 = MEMORY[0x1E69E6370];
      sub_1CF24F8BC(319, &qword_1EDEAEE08, &type metadata for Filename);
      if (v4 <= 0x3F)
      {
        sub_1CF24F8BC(319, &unk_1EDEAED90, v3);
        if (v5 <= 0x3F)
        {
          sub_1CF24F8BC(319, qword_1EDEAEEE8, &type metadata for ResidencyReason);
          if (v6 <= 0x3F)
          {
            sub_1CF678178(319, &qword_1EDEAFE00, MEMORY[0x1E6969530]);
            if (v7 <= 0x3F)
            {
              sub_1CF24F8BC(319, &qword_1EDEAEED8, &type metadata for Tags);
              if (v8 <= 0x3F)
              {
                sub_1CF24F8BC(319, &qword_1EDEAECF8, MEMORY[0x1E69E76D8]);
                if (v9 <= 0x3F)
                {
                  sub_1CF678114(319);
                  if (v10 <= 0x3F)
                  {
                    sub_1CF24F8BC(319, &qword_1EDEAFE08, MEMORY[0x1E6969080]);
                    if (v11 <= 0x3F)
                    {
                      sub_1CF678178(319, &unk_1EDEAED28, type metadata accessor for NSFileProviderTypeAndCreator);
                      if (v12 <= 0x3F)
                      {
                        sub_1CF24F8BC(319, &qword_1EDEAEDB8, MEMORY[0x1E69E6158]);
                        if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1CF678114(uint64_t a1)
{
  if (!qword_1EDEAEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v1 = sub_1CF9E75D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDEAEDC0);
    }
  }
}

void sub_1CF678178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CF9E75D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CF6781CC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v138 = a3;
  v136 = sub_1CF9E7FC8();
  v131 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v134 = *(v8 - 8);
  v135 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v126 - v11;
  if (*(a2 + 8))
  {
    v12 = 0;
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = (*a2 >> 10) & 1;
    v12 = (*a2 >> 11) & 1;
  }

  v14 = qword_1CFA0FB98[*v4] != qword_1CFA0FB98[*a1];
  v15 = type metadata accessor for ItemMetadata(0);
  v16 = v15;
  if ((v4[v15[9]] ^ a1[v15[9]]))
  {
    v17 = ((v14 & 1) << 40) | 0x200;
  }

  else
  {
    v17 = v14 << 40;
  }

  v18 = v15[21];
  v19 = v4[v18];
  v20 = a1[v18];
  if (v19)
  {
    if (!v20 || ((v4[v15[12]] ^ a1[v15[12]]) & 1) != 0 || v19 != v20)
    {
LABEL_17:
      v17 |= 0x10000uLL;
    }
  }

  else if (v20)
  {
    if (a1[v15[12]] != 1 || v20 != 0)
    {
      goto LABEL_17;
    }
  }

  if (((*(a1 + 5) ^ *(v4 + 5)) & 0x1C0) != 0)
  {
    v17 |= 4uLL;
  }

  if ((v4[v15[10]] ^ a1[v15[10]]))
  {
    v17 |= 0x1000uLL;
  }

  if ((v4[v15[13]] ^ a1[v15[13]]))
  {
    v22 = v17 | 0x2000;
  }

  else
  {
    v22 = v17;
  }

  if ((v13 & 1) == 0)
  {
    v129 = v15[7];
    v128 = *MEMORY[0x1E69E7020];
    v130 = v12;
    v23 = v131;
    v127 = *(v131 + 104);
    v24 = v133;
    v25 = v136;
    v127(v133);
    sub_1CF515680(v24);
    v137 = v22;
    v26 = *(v23 + 8);
    v26(v24, v25);
    (v127)(v24, v128, v25);
    v12 = v132;
    sub_1CF515680(v24);
    v26(v24, v25);
    v27 = v135;
    v28 = v139;
    v29 = sub_1CF9E5CD8();
    v30 = *(v134 + 8);
    v31 = v12;
    LOBYTE(v12) = v130;
    v30(v31, v27);
    v30(v28, v27);
    v22 = v137;
    if (v29)
    {
      v22 = v137 | 0x400;
    }
  }

  if ((v12 & 1) == 0)
  {
    v137 = v22;
    if (fpfs_supports_parent_mtime_iopolicy())
    {
      goto LABEL_30;
    }

    if (*v4 == 1)
    {
      v22 = v137;
      goto LABEL_37;
    }

    if (v4[v16[28]] != 1)
    {
LABEL_30:
      v130 = v16[8];
      v32 = *MEMORY[0x1E69E7020];
      v33 = v131;
      v129 = *(v131 + 104);
      v34 = v133;
      v35 = v136;
      v129(v133, v32, v136);
      sub_1CF515680(v34);
      v36 = *(v33 + 8);
      v36(v34, v35);
      v129(v34, v32, v35);
      v37 = v132;
      sub_1CF515680(v34);
      v36(v34, v35);
      v38 = v139;
      v39 = sub_1CF9E5CD8();
      v40 = v135;
      v41 = *(v134 + 8);
      v41(v37, v135);
      v41(v38, v40);
      v22 = v137;
      if (v39)
      {
        v22 = v137 | 0x800;
      }
    }

    else
    {
      v22 = v137;
    }
  }

  if (*v4 != 1 && v4[v16[28]] != 1)
  {
    goto LABEL_44;
  }

LABEL_37:
  v42 = a1[8];
  if (v4[8])
  {
    if (a1[8])
    {
      goto LABEL_44;
    }

LABEL_43:
    v22 |= 0x4000uLL;
    goto LABEL_44;
  }

  if (*(v4 + 1) != *(a1 + 1))
  {
    v42 = 1;
  }

  if (v42)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (sub_1CF51586C(&a1[v16[30]]))
  {
    v43 = v22;
  }

  else
  {
    v43 = v22 | 0x20;
  }

  v44 = v16[31];
  v45 = *&v4[v44];
  v46 = *&a1[v44];
  if (!v45)
  {
    if (!v46)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (!v46 || (, v47 = , sub_1CF6BEA9C(v47, v46), v49 = v48, v45, v50, v51, v52, v53, v54, v55, v56, v46, v57, v58, v59, v60, v61, v62, v63, (v49 & 1) == 0))
  {
LABEL_52:
    v43 |= 0x40uLL;
  }

LABEL_53:
  v64 = v16[32];
  v65 = &v4[v64];
  v66 = v4[v64 + 8];
  v67 = &a1[v64];
  v68 = a1[v64 + 8];
  if (v66)
  {
    if (v68)
    {
      goto LABEL_60;
    }

LABEL_59:
    v43 |= 0x80uLL;
    goto LABEL_60;
  }

  if (*v65 != *v67)
  {
    v68 = 1;
  }

  if (v68)
  {
    goto LABEL_59;
  }

LABEL_60:
  if ((v4[v16[11]] ^ a1[v16[11]]))
  {
    v69 = v43 | 0x20000;
  }

  else
  {
    v69 = v43;
  }

  if ((v4[v16[20]] ^ a1[v16[20]]))
  {
    v69 |= 0x10uLL;
  }

  if ((v4[v16[28]] ^ a1[v16[28]]))
  {
    v69 |= 0x200000000000uLL;
  }

  if ((v4[v16[15]] ^ a1[v16[15]]))
  {
    v69 |= 0x100000000000uLL;
  }

  if ((v4[v16[16]] ^ a1[v16[16]]))
  {
    v70 = v69 | 0x800000;
  }

  else
  {
    v70 = v69;
  }

  v71 = v16[33];
  v142 = *&v4[v71];
  if (v142)
  {

    sub_1CF1CE544(0xD000000000000015, 0x80000001CFA2DDF0, &v141);
    sub_1CEFE48D8(v141, *(&v141 + 1));
    v71 = v16[33];
  }

  v140 = *&a1[v71];
  if (v140)
  {

    sub_1CF1CE544(0xD000000000000015, 0x80000001CFA2DDF0, &v141);
    sub_1CEFE48D8(v141, *(&v141 + 1));
  }

  v72 = v142;
  if (v142)
  {
    v73 = v142;
    v74 = v140;
    if (v140)
    {
LABEL_78:

      v75 = v74;
      goto LABEL_81;
    }
  }

  else
  {
    v73 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
    v74 = v140;
    if (v140)
    {
      goto LABEL_78;
    }
  }

  v75 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
LABEL_81:

  v76 = sub_1CF363560(v73, v75);
  v73, v77, v78, v79, v80, v81, v82, v83;
  v75, v84, v85, v86, v87, v88, v89, v90;
  if (v76)
  {
    v96 = v70;
  }

  else
  {
    v96 = v70 | 0x100;
  }

  v97 = v16[35];
  v98 = &v4[v97];
  v99 = v4[v97 + 8];
  v100 = &a1[v97];
  v101 = a1[v97 + 8];
  if (v99)
  {
    if (v101)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  if (*v98 != *v100)
  {
    v101 = 1;
  }

  if (v101)
  {
LABEL_90:
    v96 |= 0x400000000000uLL;
  }

LABEL_91:
  v102 = v16[37];
  v103 = &v4[v102];
  if ((v4[v102 + 4] & 1) == 0)
  {
    v104 = &a1[v102];
    if ((v104[4] & 1) == 0 && *v103 != *v104)
    {
      v96 |= 0x800000000000uLL;
    }
  }

  v105 = v16[38];
  v106 = &v4[v105];
  v107 = *&v4[v105 + 8];
  v108 = &a1[v105];
  v109 = v108[1];
  if (!v107)
  {
    if (!v109)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  if (!v109 || ((v91 = *v108, *v106 != *v108) || v107 != v109) && (sub_1CF9E8048() & 1) == 0)
  {
LABEL_102:
    v96 |= 0x1000000000000uLL;
  }

LABEL_103:
  v110 = v96 | 0x10000000000000;
  v111 = v16[24];
  v112 = v4[v111];
  v113 = a1[v111];
  if (((v4[v16[18]] ^ a1[v16[18]]) & 1) == 0)
  {
    v110 = v96;
  }

  if ((v112 ^ v113))
  {
    v110 |= 0x20000000000000uLL;
  }

  if ((v4[v16[25]] ^ a1[v16[25]]))
  {
    v114 = v110 | 0x40000000000000;
  }

  else
  {
    v114 = v110;
  }

  v115 = v16[22];
  v116 = v4[v115];
  v117 = a1[v115];
  v74, v107, v91, v109, v92, v93, v94, v95;
  v72, v118, v119, v120, v121, v122, v123, v124;
  v125 = v114 | 0x100000000000000;
  if (v116 == v117)
  {
    v125 = v114;
  }

  *v138 = v125;
}

unint64_t sub_1CF678A54(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x657449646C696863;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6E6F697461657263;
      break;
    case 4:
    case 34:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x64656B636F4C7369;
      break;
    case 6:
      result = 0x6E65646469487369;
      break;
    case 7:
      result = 0x64656E6E69507369;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x6F52636E79537369;
      break;
    case 12:
      result = 0x65726F6E67497369;
      break;
    case 13:
      result = 0x6F6E67496E497369;
      break;
    case 14:
      result = 0x6863617465447369;
      break;
    case 15:
      result = 0x53747365736F6C63;
      break;
    case 16:
      result = 0x656C617461447369;
      break;
    case 17:
    case 18:
      result = 0x6E6F697463697665;
      break;
    case 19:
      result = 0x636E656469736572;
      break;
    case 20:
      result = 0x6150636E79537369;
      break;
    case 21:
      result = 0xD000000000000022;
      break;
    case 22:
      result = 1702521203;
      break;
    case 23:
      result = 0x6C61636973796870;
      break;
    case 24:
      result = 0x67616B6361507369;
      break;
    case 25:
      result = 0x6C646E7542736168;
      break;
    case 26:
      result = 0x646573557473616CLL;
      break;
    case 27:
      result = 1936154996;
      break;
    case 28:
      result = 0x657469726F766166;
      break;
    case 29:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0x69746E6172617571;
      break;
    case 31:
      result = 0x65707954736FLL;
      break;
    case 32:
      result = 0x7272757365527369;
      break;
    case 33:
      result = 0x6E756F436B6E696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF678E60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2130, &qword_1CFA0FA78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF67A624();
  sub_1CF9E82A8();
  LOBYTE(v26) = *v3;
  v28 = 0;
  sub_1CF50D138();
  sub_1CF9E7F08();
  if (!v2)
  {
    v9 = v3[8];
    LOBYTE(v26) = 1;
    v28 = v9;
    sub_1CF9E7E98();
    LOBYTE(v26) = 2;
    sub_1CF9E7F48();
    v11 = type metadata accessor for ItemMetadata(0);
    LOBYTE(v26) = 3;
    sub_1CF9E5CF8();
    sub_1CF67B770(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CF9E7F08();
    LOBYTE(v26) = 4;
    sub_1CF9E7F08();
    LOBYTE(v26) = 5;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 6;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 7;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 8;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 9;
    sub_1CF9E7EC8();
    v12 = &v3[v11[14]];
    v13 = v12[1];
    v26 = *v12;
    v27 = v13;
    v28 = 10;
    sub_1CF1E60E8();

    sub_1CF9E7E68();
    v27, v14, v15, v16, v17, v18, v19, v20;
    LOBYTE(v26) = 11;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 12;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 13;
    sub_1CF9E7E48();
    LOBYTE(v26) = 14;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 15;
    sub_1CF9E7F68();
    LOBYTE(v26) = 16;
    sub_1CF9E7EC8();
    LOBYTE(v26) = v3[v11[21]];
    v28 = 17;
    sub_1CF67B604();
    sub_1CF9E7F08();
    LOBYTE(v26) = v3[v11[22]];
    v28 = 18;
    sub_1CF67B658();
    sub_1CF9E7F08();
    LOBYTE(v26) = v3[v11[23]];
    v28 = 19;
    sub_1CF67B6AC();
    sub_1CF9E7E68();
    LOBYTE(v26) = 20;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 21;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 22;
    sub_1CF9E7F28();
    LOBYTE(v26) = 23;
    sub_1CF9E7F28();
    LOBYTE(v26) = 24;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 25;
    sub_1CF9E7EC8();
    LOBYTE(v26) = 26;
    sub_1CF9E7E68();
    v26 = *&v3[v11[31]];
    v28 = 27;
    sub_1CF1E0CB8();
    sub_1CF9E7E68();
    LOBYTE(v26) = 28;
    sub_1CF9E7EA8();
    v26 = *&v3[v11[33]];
    v28 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    sub_1CF1E0EC0(&qword_1EDEA3840, sub_1CF190A74, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1CF9E7E68();
    v21 = &v3[v11[34]];
    v22 = v21[1];
    v26 = *v21;
    v27 = v22;
    v28 = 30;
    sub_1CEFF05F4(v26, v22);
    sub_1CF190A74();
    sub_1CF9E7E68();
    sub_1CEFE48D8(v26, v27);
    v23 = &v3[v11[35]];
    v24 = *v23;
    LOBYTE(v23) = v23[8];
    v26 = v24;
    LOBYTE(v27) = v23;
    v28 = 31;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    sub_1CF67B770(&qword_1EC4C2150, type metadata accessor for NSFileProviderTypeAndCreator, &protocol conformance descriptor for NSFileProviderTypeAndCreator);
    sub_1CF9E7E68();
    LOBYTE(v26) = 32;
    sub_1CF9E7EC8();
    v25 = v3[v11[37] + 4];
    LOBYTE(v26) = 33;
    v28 = v25;
    sub_1CF9E7E98();
    LOBYTE(v26) = 34;
    sub_1CF9E7E38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF679778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = v82 - v4;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v89 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2100, &qword_1CFA0FA68);
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v82 - v12;
  v14 = type metadata accessor for ItemMetadata(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[v18[14]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v97 = v19;
  v20 = v18[23];
  v17[v20] = 6;
  v21 = v6;
  v22 = *(v6 + 56);
  v94 = v18[30];
  v22(&v17[v94], 1, 1, v5, v15);
  v23 = *(v14 + 136);
  v98 = v17;
  v95 = &v17[v23];
  v96 = a1;
  *v95 = xmmword_1CF9F4E20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF67A624();
  v92 = v13;
  v24 = v93;
  sub_1CF9E8298();
  if (v24)
  {
    v27 = v98;
    __swift_destroy_boxed_opaque_existential_1(v96);
    *(v97 + 1), v28, v29, v30, v31, v32, v33, v34;
    sub_1CEFCCC44(&v27[v94], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    0, v35, v36, v37, v38, v39, v40, v41;
    0, v42, v43, v44, v45, v46, v47, v48;
    return sub_1CEFE48D8(*v95, *(v95 + 1));
  }

  else
  {
    v25 = v10;
    v26 = v89;
    v84 = v20;
    v85 = v21;
    v86 = v14;
    v93 = v5;
    v101 = 0;
    sub_1CF50D0E4();
    sub_1CF9E7D88();
    v49 = v98;
    *v98 = v99;
    LOBYTE(v99) = 1;
    v50 = sub_1CF9E7D28();
    *(v49 + 1) = v50;
    v49[8] = BYTE4(v50) & 1;
    LOBYTE(v99) = 2;
    *(v49 + 5) = sub_1CF9E7DC8();
    LOBYTE(v99) = 3;
    v51 = sub_1CF67B770(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v52 = v93;
    sub_1CF9E7D88();
    v53 = &v49[v86[7]];
    v83 = *(v85 + 32);
    v83(v53, v25, v52);
    LOBYTE(v99) = 4;
    v54 = v26;
    sub_1CF9E7D88();
    v82[1] = v51;
    v55 = v86;
    v83(&v49[v86[8]], v54, v52);
    LOBYTE(v99) = 5;
    v89 = 0;
    v49[v55[9]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 6;
    v49[v55[10]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 7;
    v49[v55[11]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 8;
    v98[v55[12]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 9;
    v98[v86[13]] = sub_1CF9E7D58() & 1;
    v101 = 10;
    sub_1CF1E613C();
    sub_1CF9E7CF8();
    v56 = v99;
    v57 = v100;
    v58 = v97;
    *(v97 + 1), v59, v60, v61, v62, v63, v64, v65;
    *v58 = v56;
    *(v58 + 1) = v57;
    LOBYTE(v99) = 11;
    v98[v86[15]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 12;
    v98[v86[16]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 13;
    v98[v86[17]] = sub_1CF9E7CC8();
    LOBYTE(v99) = 14;
    v98[v86[18]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 15;
    *&v98[v86[19]] = sub_1CF9E7DE8();
    LOBYTE(v99) = 16;
    v98[v86[20]] = sub_1CF9E7D58() & 1;
    v101 = 17;
    sub_1CF67A678();
    sub_1CF9E7D88();
    v98[v86[21]] = v99;
    v101 = 18;
    sub_1CF67A6CC();
    sub_1CF9E7D88();
    v98[v86[22]] = v99;
    v101 = 19;
    sub_1CF67A720();
    sub_1CF9E7CF8();
    v98[v84] = v99;
    LOBYTE(v99) = 20;
    v98[v86[24]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 21;
    v98[v86[25]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 22;
    *&v98[v86[26]] = sub_1CF9E7DA8();
    LOBYTE(v99) = 23;
    *&v98[v86[27]] = sub_1CF9E7DA8();
    LOBYTE(v99) = 24;
    v98[v86[28]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 25;
    v98[v86[29]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 26;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v87, &v98[v94]);
    v101 = 27;
    sub_1CF1E0BB0();
    sub_1CF9E7CF8();
    *&v98[v86[31]] = v99;
    LOBYTE(v99) = 28;
    v66 = sub_1CF9E7D38();
    v67 = &v98[v86[32]];
    *v67 = v66;
    v67[8] = v68 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
    v101 = 29;
    sub_1CF1E0EC0(&qword_1EDEAB688, sub_1CF190888, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1CF9E7CF8();
    *&v98[v86[33]] = v99;
    v101 = 30;
    sub_1CF190888();
    sub_1CF9E7CF8();
    v69 = v99;
    v70 = v100;
    v71 = v95;
    sub_1CEFE48D8(*v95, *(v95 + 1));
    *v71 = v69;
    *(v71 + 1) = v70;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    v101 = 31;
    sub_1CF67B770(&qword_1EC4C2128, type metadata accessor for NSFileProviderTypeAndCreator, &protocol conformance descriptor for NSFileProviderTypeAndCreator);
    sub_1CF9E7CF8();
    v72 = &v98[v86[35]];
    v73 = v100;
    *v72 = v99;
    v72[8] = v73;
    LOBYTE(v99) = 32;
    v98[v86[36]] = sub_1CF9E7D58() & 1;
    LOBYTE(v99) = 33;
    v74 = sub_1CF9E7D28();
    v75 = &v98[v86[37]];
    *v75 = v74;
    v75[4] = BYTE4(v74) & 1;
    LOBYTE(v99) = 34;
    v76 = sub_1CF9E7CB8();
    v78 = v77;
    v79 = v98;
    v80 = &v98[v86[38]];
    (*(v90 + 8))(v92, v91);
    *v80 = v76;
    v80[1] = v78;
    sub_1CEFF4408(v79, v88);
    __swift_destroy_boxed_opaque_existential_1(v96);
    return sub_1CF06DA00(v79);
  }
}

uint64_t sub_1CF67A540@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF67BA10(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF67A574(uint64_t a1)
{
  v2 = sub_1CF67A624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF67A5B0(uint64_t a1)
{
  v2 = sub_1CF67A624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF67A624()
{
  result = qword_1EC4C2108;
  if (!qword_1EC4C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2108);
  }

  return result;
}

unint64_t sub_1CF67A678()
{
  result = qword_1EC4C2110;
  if (!qword_1EC4C2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2110);
  }

  return result;
}

unint64_t sub_1CF67A6CC()
{
  result = qword_1EC4C2118;
  if (!qword_1EC4C2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2118);
  }

  return result;
}

unint64_t sub_1CF67A720()
{
  result = qword_1EC4C2120;
  if (!qword_1EC4C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2120);
  }

  return result;
}

uint64_t sub_1CF67A774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1CF67A7E4(char *a1, char *a2)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v210 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v210 - v13;
  if (qword_1CFA0FB98[*a1] != qword_1CFA0FB98[*a2])
  {
    return 0;
  }

  v15 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (*(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v16 = v12;
  v17 = type metadata accessor for ItemMetadata(0);
  if ((sub_1CF9E5CA8() & 1) == 0 || (sub_1CF9E5CA8() & 1) == 0 || a1[v17[9]] != a2[v17[9]] || a1[v17[10]] != a2[v17[10]] || a1[v17[11]] != a2[v17[11]] || a1[v17[12]] != a2[v17[12]] || a1[v17[13]] != a2[v17[13]])
  {
    return 0;
  }

  v26 = v17[14];
  v27 = &a1[v26];
  v28 = *&a1[v26 + 8];
  v29 = &a2[v26];
  v30 = *(v29 + 1);
  v215 = v28;
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }

    v31 = *v27;
    v213 = *v29;
    v214 = v31;

    v32 = sub_1CEFE7394(v214, v215);
    v212 = v30;
    if (v33)
    {
      if (v32 == 12565487 && v33 == 0xA300000000000000)
      {
        0xA300000000000000, 0xA300000000000000, v34, v35, v36, v37, v38, v39;
LABEL_27:
        v49 = v215;
        v50 = sub_1CF9E69E8();
        v51 = sub_1CF025150(v50, v214, v49);
        v53 = v52;
        v214 = MEMORY[0x1D3868C10](v51);
        v211 = v54;
        v55 = v53;
        v30 = v212;
        v55, v54, v56, v57, v58, v59, v60, v61;
        goto LABEL_29;
      }

      v40 = v33;
      LODWORD(v211) = sub_1CF9E8048();
      v41 = v40;
      v30 = v212;
      v41, v42, v43, v44, v45, v46, v47, v48;
      if (v211)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v62 = sub_1CEFE7394(v213, v30);
    if (v63)
    {
      if (v62 == 12565487 && v63 == 0xA300000000000000)
      {
        0xA300000000000000, 0xA300000000000000, v64, v65, v66, v67, v68, v69;
LABEL_34:
        v79 = sub_1CF9E69E8();
        v80 = sub_1CF025150(v79, v213, v30);
        v210 = v81;
        v82 = MEMORY[0x1D3868C10](v80);
        v213 = v83;
        v210, v83, v84, v85, v86, v87, v88, v89;
        v96 = v213;
LABEL_36:
        v97 = v214 == v82;
        v98 = v82;
        v99 = v211;
        v213 = v96;
        if (v97 && v211 == v96)
        {
          v215, v90, v98, v91, v92, v93, v94, v95;
          v213, v100, v101, v102, v103, v104, v105, v106;
          v99, v107, v108, v109, v110, v111, v112, v113;
          v212, v114, v115, v116, v117, v118, v119, v120;
        }

        else
        {
          LODWORD(v214) = sub_1CF9E8048();
          v215, v121, v122, v123, v124, v125, v126, v127;
          v213, v128, v129, v130, v131, v132, v133, v134;
          v99, v135, v136, v137, v138, v139, v140, v141;
          v212, v142, v143, v144, v145, v146, v147, v148;
          if ((v214 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_41;
      }

      v70 = v63;
      LODWORD(v210) = sub_1CF9E8048();
      v71 = v70;
      v30 = v212;
      v71, v72, v73, v74, v75, v76, v77, v78;
      if (v210)
      {
        goto LABEL_34;
      }
    }

    v96 = v30;
    v82 = v213;
    goto LABEL_36;
  }

  if (v30)
  {
    return 0;
  }

  0, v18, v19, v20, v21, v22, v23, v24;
LABEL_41:
  if (a1[v17[15]] != a2[v17[15]] || a1[v17[16]] != a2[v17[16]])
  {
    return 0;
  }

  v149 = v17[17];
  v150 = a1[v149];
  v151 = a2[v149];
  if (v150 == 2)
  {
    if (v151 != 2)
    {
      return 0;
    }

LABEL_48:
    if (a1[v17[18]] != a2[v17[18]] || *&a1[v17[19]] != *&a2[v17[19]] || a1[v17[20]] != a2[v17[20]] || a1[v17[21]] != a2[v17[21]] || a1[v17[22]] != a2[v17[22]])
    {
      return 0;
    }

    v152 = v17[23];
    v153 = a1[v152];
    v154 = a2[v152];
    if (v153 == 6)
    {
      if (v154 != 6)
      {
        return 0;
      }
    }

    else if (v153 != v154)
    {
      return 0;
    }

    if (a1[v17[24]] != a2[v17[24]] || a1[v17[25]] != a2[v17[25]] || *&a1[v17[26]] != *&a2[v17[26]] || *&a1[v17[27]] != *&a2[v17[27]] || a1[v17[28]] != a2[v17[28]] || a1[v17[29]] != a2[v17[29]])
    {
      return 0;
    }

    v155 = v17[30];
    v156 = *(v16 + 48);
    sub_1CEFCCBDC(&a1[v155], v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v215 = v156;
    sub_1CEFCCBDC(&a2[v155], v156 + v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v157 = *(v5 + 48);
    if (v157(v14, 1, v4) == 1)
    {
      if (v157(v215 + v14, 1, v4) == 1)
      {
        sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        goto LABEL_70;
      }
    }

    else
    {
      sub_1CEFCCBDC(v14, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      if (v157(v215 + v14, 1, v4) != 1)
      {
        (*(v5 + 32))(v7, v215 + v14, v4);
        sub_1CF67B770(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v158 = sub_1CF9E6868();
        v159 = *(v5 + 8);
        v159(v7, v4);
        v159(v10, v4);
        sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((v158 & 1) == 0)
        {
          return 0;
        }

LABEL_70:
        v160 = v17[31];
        v161 = *&a1[v160];
        v162 = *&a2[v160];
        if (v161)
        {
          if (!v162)
          {
            return 0;
          }

          sub_1CF6BEA9C(v161, v162);
          v164 = v163;
          v162, v165, v166, v167, v168, v169, v170, v171;
          if ((v164 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v162)
        {
          return 0;
        }

        v172 = v17[32];
        v173 = &a1[v172];
        v174 = a1[v172 + 8];
        v175 = &a2[v172];
        v176 = a2[v172 + 8];
        if (v174)
        {
          if (!v176)
          {
            return 0;
          }
        }

        else
        {
          if (*v173 != *v175)
          {
            LOBYTE(v176) = 1;
          }

          if (v176)
          {
            return 0;
          }
        }

        v177 = v17[33];
        v178 = *&a1[v177];
        v179 = *&a2[v177];
        if (v178)
        {
          if (!v179)
          {
            return 0;
          }

          v180 = sub_1CF363560(v178, v179);
          v179, v181, v182, v183, v184, v185, v186, v187;
          if (!v180)
          {
            return 0;
          }
        }

        else if (v179)
        {
          return 0;
        }

        v188 = v17[34];
        v190 = *&a1[v188];
        v189 = *&a1[v188 + 8];
        v191 = &a2[v188];
        v193 = *v191;
        v192 = v191[1];
        if (v189 >> 60 == 15)
        {
          if (v192 >> 60 == 15)
          {
            sub_1CEFF05F4(v190, v189);
            sub_1CEFF05F4(v193, v192);
            sub_1CEFE48D8(v190, v189);
LABEL_92:
            v195 = v17[35];
            v196 = &a1[v195];
            v197 = a1[v195 + 8];
            v198 = &a2[v195];
            v199 = a2[v195 + 8];
            if (v197)
            {
              if (!v199)
              {
                return 0;
              }
            }

            else
            {
              if (*v196 != *v198)
              {
                LOBYTE(v199) = 1;
              }

              if (v199)
              {
                return 0;
              }
            }

            if (a1[v17[36]] == a2[v17[36]])
            {
              v200 = v17[37];
              v201 = &a1[v200];
              v202 = a1[v200 + 4];
              v203 = &a2[v200];
              v204 = a2[v200 + 4];
              if (v202)
              {
                if (!v204)
                {
                  return 0;
                }
              }

              else
              {
                if (*v201 != *v203)
                {
                  LOBYTE(v204) = 1;
                }

                if (v204)
                {
                  return 0;
                }
              }

              v205 = v17[38];
              v206 = &a1[v205];
              v207 = *&a1[v205 + 8];
              v208 = &a2[v205];
              v209 = *(v208 + 1);
              if (v207)
              {
                return v209 && (*v206 == *v208 && v207 == v209 || (sub_1CF9E8048() & 1) != 0);
              }

              if (!v209)
              {
                return 1;
              }
            }

            return 0;
          }
        }

        else if (v192 >> 60 != 15)
        {
          sub_1CEFF05F4(v190, v189);
          sub_1CEFF05F4(v193, v192);
          v194 = sub_1CF328660(v190, v189, v193, v192);
          sub_1CEFE48D8(v193, v192);
          sub_1CEFE48D8(v190, v189);
          if (!v194)
          {
            return 0;
          }

          goto LABEL_92;
        }

        sub_1CEFF05F4(v190, v189);
        sub_1CEFF05F4(v193, v192);
        sub_1CEFE48D8(v190, v189);
        sub_1CEFE48D8(v193, v192);
        return 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1CEFCCC44(v14, &qword_1EC4C4CE0, &qword_1CFA0FA70);
    return 0;
  }

  result = 0;
  if (v151 != 2 && ((v151 ^ v150) & 1) == 0)
  {
    goto LABEL_48;
  }

  return result;
}

unint64_t sub_1CF67B204(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF67B224(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1CF67B2DC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1CF9E5AD8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1CF9E5498();
  if (v3)
  {
    result = sub_1CF9E54C8();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1CF9E54B8();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1CF67B224(v3, v7);

  return v8;
}

uint64_t sub_1CF67B3C0(unsigned int a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CF9E5A98();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = bswap32(a1);
  (*(v4 + 104))(v7, *MEMORY[0x1E6969010], v3, v5);
  sub_1CF9E5A88();
  sub_1CF9E54F8();
  swift_allocObject();

  v8 = sub_1CF9E5478();
  v9 = sub_1CF9E54E8();
  *v10 |= 0x8000000000000000;
  v9(v17, 0);
  v11 = sub_1CF67B2DC(v8, 4);
  v13 = v12;

  (*(v4 + 8))(v7, v3);
  sub_1CF9E6908();
  v14 = sub_1CF9E68D8();
  sub_1CEFE4714(v11, v13);
  return v14;
}

unint64_t sub_1CF67B604()
{
  result = qword_1EC4C2138;
  if (!qword_1EC4C2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2138);
  }

  return result;
}

unint64_t sub_1CF67B658()
{
  result = qword_1EC4C2140;
  if (!qword_1EC4C2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2140);
  }

  return result;
}

unint64_t sub_1CF67B6AC()
{
  result = qword_1EC4C2148;
  if (!qword_1EC4C2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2148);
  }

  return result;
}

uint64_t sub_1CF67B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF67B770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ItemMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xDE)
  {
    v4 = 0;
  }

  if (a2 > 0xDD)
  {
    v5 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF67B90C()
{
  result = qword_1EC4C2160;
  if (!qword_1EC4C2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2160);
  }

  return result;
}

unint64_t sub_1CF67B964()
{
  result = qword_1EC4C2168;
  if (!qword_1EC4C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2168);
  }

  return result;
}

unint64_t sub_1CF67B9BC()
{
  result = qword_1EC4C2170;
  if (!qword_1EC4C2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2170);
  }

  return result;
}

uint64_t sub_1CF67BA10(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v9 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE00746E756F436DLL;
    if (a1 == 0x657449646C696863 && a2 == 0xEE00746E756F436DLL || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001CFA56230;
      if (a1 == 0xD000000000000010 && 0x80000001CFA56230 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = 0x80000001CFA3C820;
        if (a1 == 0xD000000000000017 && 0x80000001CFA3C820 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else if (a1 == 0x64656B636F4C7369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 5;
        }

        else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 6;
        }

        else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 7;
        }

        else
        {
          v15 = 0x80000001CFA56250;
          if (a1 == 0xD000000000000010 && 0x80000001CFA56250 == a2 || (sub_1CF9E8048() & 1) != 0)
          {
            a2, v15, a3, a4, a5, a6, a7, a8;
            return 8;
          }

          else
          {
            v16 = 0x80000001CFA56270;
            if (a1 == 0xD000000000000015 && 0x80000001CFA56270 == a2 || (sub_1CF9E8048() & 1) != 0)
            {
              a2, v16, a3, a4, a5, a6, a7, a8;
              return 9;
            }

            else
            {
              v17 = 0x80000001CFA56290;
              if (a1 == 0xD000000000000014 && 0x80000001CFA56290 == a2 || (sub_1CF9E8048() & 1) != 0)
              {
                a2, v17, a3, a4, a5, a6, a7, a8;
                return 10;
              }

              else
              {
                v18 = 0xEA0000000000746FLL;
                if (a1 == 0x6F52636E79537369 && a2 == 0xEA0000000000746FLL || (sub_1CF9E8048() & 1) != 0)
                {
                  a2, v18, a3, a4, a5, a6, a7, a8;
                  return 11;
                }

                else
                {
                  v19 = 0xEC000000746F6F52;
                  if (a1 == 0x65726F6E67497369 && a2 == 0xEC000000746F6F52 || (sub_1CF9E8048() & 1) != 0)
                  {
                    a2, v19, a3, a4, a5, a6, a7, a8;
                    return 12;
                  }

                  else
                  {
                    v20 = 0xEE00746F6F526572;
                    if (a1 == 0x6F6E67496E497369 && a2 == 0xEE00746F6F526572 || (sub_1CF9E8048() & 1) != 0)
                    {
                      a2, v20, a3, a4, a5, a6, a7, a8;
                      return 13;
                    }

                    else if (a1 == 0x6863617465447369 && a2 == 0xEE00746F6F526465 || (sub_1CF9E8048() & 1) != 0)
                    {
                      a2, v20, a3, a4, a5, a6, a7, a8;
                      return 14;
                    }

                    else
                    {
                      v21 = 0xEF746F6F52636E79;
                      if (a1 == 0x53747365736F6C63 && a2 == 0xEF746F6F52636E79 || (sub_1CF9E8048() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 15;
                      }

                      else if (a1 == 0x656C617461447369 && a2 == 0xEA00000000007373 || (sub_1CF9E8048() & 1) != 0)
                      {
                        a2, v21, a3, a4, a5, a6, a7, a8;
                        return 16;
                      }

                      else
                      {
                        v22 = 0xEF79636E65677255;
                        if (a1 == 0x6E6F697463697665 && a2 == 0xEF79636E65677255 || (sub_1CF9E8048() & 1) != 0)
                        {
                          a2, v22, a3, a4, a5, a6, a7, a8;
                          return 17;
                        }

                        else
                        {
                          v23 = 0xEE006E6F73616552;
                          if (a1 == 0x6E6F697463697665 && a2 == 0xEE006E6F73616552 || (sub_1CF9E8048() & 1) != 0)
                          {
                            a2, v23, a3, a4, a5, a6, a7, a8;
                            return 18;
                          }

                          else
                          {
                            v24 = 0xEF6E6F7361655279;
                            if (a1 == 0x636E656469736572 && a2 == 0xEF6E6F7361655279 || (sub_1CF9E8048() & 1) != 0)
                            {
                              a2, v24, a3, a4, a5, a6, a7, a8;
                              return 19;
                            }

                            else
                            {
                              v25 = 0xEC00000064657375;
                              if (a1 == 0x6150636E79537369 && a2 == 0xEC00000064657375 || (sub_1CF9E8048() & 1) != 0)
                              {
                                a2, v25, a3, a4, a5, a6, a7, a8;
                                return 20;
                              }

                              else
                              {
                                v26 = 0x80000001CFA562B0;
                                if (a1 == 0xD000000000000022 && 0x80000001CFA562B0 == a2 || (sub_1CF9E8048() & 1) != 0)
                                {
                                  a2, v26, a3, a4, a5, a6, a7, a8;
                                  return 21;
                                }

                                else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
                                {
                                  a2, v26, a3, a4, a5, a6, a7, a8;
                                  return 22;
                                }

                                else
                                {
                                  v27 = 0xEC000000657A6953;
                                  if (a1 == 0x6C61636973796870 && a2 == 0xEC000000657A6953 || (sub_1CF9E8048() & 1) != 0)
                                  {
                                    a2, v27, a3, a4, a5, a6, a7, a8;
                                    return 23;
                                  }

                                  else if (a1 == 0x67616B6361507369 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
                                  {
                                    a2, v27, a3, a4, a5, a6, a7, a8;
                                    return 24;
                                  }

                                  else
                                  {
                                    v28 = 0xEC00000074694265;
                                    if (a1 == 0x6C646E7542736168 && a2 == 0xEC00000074694265 || (sub_1CF9E8048() & 1) != 0)
                                    {
                                      a2, v28, a3, a4, a5, a6, a7, a8;
                                      return 25;
                                    }

                                    else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_1CF9E8048() & 1) != 0)
                                    {
                                      a2, v28, a3, a4, a5, a6, a7, a8;
                                      return 26;
                                    }

                                    else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1CF9E8048() & 1) != 0)
                                    {
                                      a2, v28, a3, a4, a5, a6, a7, a8;
                                      return 27;
                                    }

                                    else
                                    {
                                      v29 = 0xEC0000006B6E6152;
                                      if (a1 == 0x657469726F766166 && a2 == 0xEC0000006B6E6152 || (sub_1CF9E8048() & 1) != 0)
                                      {
                                        a2, v29, a3, a4, a5, a6, a7, a8;
                                        return 28;
                                      }

                                      else
                                      {
                                        v30 = 0x80000001CFA507D0;
                                        if (a1 == 0xD000000000000012 && 0x80000001CFA507D0 == a2 || (sub_1CF9E8048() & 1) != 0)
                                        {
                                          a2, v30, a3, a4, a5, a6, a7, a8;
                                          return 29;
                                        }

                                        else
                                        {
                                          v31 = 0xEE00626F6C42656ELL;
                                          if (a1 == 0x69746E6172617571 && a2 == 0xEE00626F6C42656ELL || (sub_1CF9E8048() & 1) != 0)
                                          {
                                            a2, v31, a3, a4, a5, a6, a7, a8;
                                            return 30;
                                          }

                                          else if (a1 == 0x65707954736FLL && a2 == 0xE600000000000000 || (sub_1CF9E8048() & 1) != 0)
                                          {
                                            a2, v31, a3, a4, a5, a6, a7, a8;
                                            return 31;
                                          }

                                          else
                                          {
                                            v32 = 0xED00006465746365;
                                            if (a1 == 0x7272757365527369 && a2 == 0xED00006465746365 || (sub_1CF9E8048() & 1) != 0)
                                            {
                                              a2, v32, a3, a4, a5, a6, a7, a8;
                                              return 32;
                                            }

                                            else
                                            {
                                              v33 = 0xE900000000000074;
                                              if (a1 == 0x6E756F436B6E696CLL && a2 == 0xE900000000000074 || (sub_1CF9E8048() & 1) != 0)
                                              {
                                                a2, v33, a3, a4, a5, a6, a7, a8;
                                                return 33;
                                              }

                                              else if (a1 == 0xD000000000000017 && 0x80000001CFA562E0 == a2)
                                              {
                                                a2, 0x80000001CFA562E0, a3, a4, a5, a6, a7, a8;
                                                return 34;
                                              }

                                              else
                                              {
                                                v34 = sub_1CF9E8048();
                                                a2, v35, v36, v37, v38, v39, v40, v41;
                                                if (v34)
                                                {
                                                  return 34;
                                                }

                                                else
                                                {
                                                  return 35;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1CF67C580()
{
  result = qword_1EC4C2178;
  if (!qword_1EC4C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2178);
  }

  return result;
}

unint64_t sub_1CF67C5D8()
{
  result = qword_1EC4C2180;
  if (!qword_1EC4C2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2180);
  }

  return result;
}

unint64_t sub_1CF67C630()
{
  result = qword_1EC4C2188;
  if (!qword_1EC4C2188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2190, &qword_1CFA0FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2188);
  }

  return result;
}

unint64_t sub_1CF67C698()
{
  result = qword_1EC4C2198;
  if (!qword_1EC4C2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2198);
  }

  return result;
}

unint64_t sub_1CF67C6F0()
{
  result = qword_1EC4C21A0;
  if (!qword_1EC4C21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21A0);
  }

  return result;
}

unint64_t sub_1CF67C744(uint64_t a1)
{
  *(a1 + 8) = sub_1CF67C774();
  result = sub_1CF67C7C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF67C774()
{
  result = qword_1EC4C21A8;
  if (!qword_1EC4C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21A8);
  }

  return result;
}

unint64_t sub_1CF67C7C8()
{
  result = qword_1EC4C21B0;
  if (!qword_1EC4C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21B0);
  }

  return result;
}

uint64_t sub_1CF67C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SnapshotItem(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67C8B0@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1CF67C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

double sub_1CF67C9B4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

uint64_t sub_1CF67C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedTypeWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FileItemVersion(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_1CF67CAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[13];
  v5 = v3[11];
  v37 = v3[12];
  v38 = v4;
  v6 = v3[13];
  v39 = v3[14];
  v7 = v3[9];
  v9 = v3[7];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v10 = v3[9];
  v11 = v3[11];
  v35 = v3[10];
  v12 = v35;
  v36 = v11;
  v13 = v3[5];
  v15 = v3[3];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v16 = v3[5];
  v17 = v3[7];
  v31 = v3[6];
  v18 = v31;
  v32 = v17;
  v19 = v3[1];
  v26[0] = *v3;
  v26[1] = v19;
  v20 = v3[3];
  v22 = *v3;
  v21 = v3[1];
  v27 = v3[2];
  v23 = v27;
  v28 = v20;
  *(a2 + 192) = v37;
  *(a2 + 208) = v6;
  *(a2 + 224) = v3[14];
  *(a2 + 128) = v8;
  *(a2 + 144) = v10;
  *(a2 + 160) = v12;
  *(a2 + 176) = v5;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = v18;
  *(a2 + 112) = v9;
  *a2 = v22;
  *(a2 + 16) = v21;
  v40 = *(v3 + 30);
  *(a2 + 240) = *(v3 + 30);
  *(a2 + 32) = v23;
  *(a2 + 48) = v15;
  return sub_1CF67CE84(v26, v25);
}

uint64_t sub_1CF67CBC0(uint64_t a1)
{
  v2 = v1 + *(a1 + 68);
  v3 = *v2;
  sub_1CF658C88(*v2, *(v2 + 8));
  return v3;
}

void sub_1CF67CBFC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    v14 = 0;
    v21 = AssociatedTypeWitness;
    v22 = AssociatedTypeWitness;
    v13[0] = swift_getAssociatedTypeWitness();
    v13[1] = swift_getAssociatedTypeWitness();
    v13[2] = swift_getAssociatedConformanceWitness();
    v13[3] = swift_getAssociatedConformanceWitness();
    v3 = type metadata accessor for FileItemVersion(319, v13);
    if (v4 <= 0x3F)
    {
      v15 = 0;
      v23 = v3;
      v24 = &type metadata for Filename;
      v5 = type metadata accessor for ItemMetadata(319);
      if (v6 <= 0x3F)
      {
        v16 = 0;
        v25 = v5;
        sub_1CF24F8BC(319, &qword_1EDEAEEE0, &type metadata for ItemNonSyncableAttributes);
        if (v8 <= 0x3F)
        {
          v17 = 0;
          v26 = v7;
          sub_1CF24F8BC(319, &qword_1EDEAC210, &type metadata for SnapshotFSRecursiveProperties);
          if (v10 <= 0x3F)
          {
            v18 = 0;
            v27 = v9;
            sub_1CF24F8BC(319, &qword_1EDEAC218, &type metadata for SnapshotFPRecursiveProperties);
            if (v12 <= 0x3F)
            {
              v19 = 0;
              v28 = v11;
              v29 = &type metadata for Fields;
              v20 = 0;
              v30 = &type metadata for Syncability;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1CF67CE48(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF67CE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BECF0, &unk_1CF9FEEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FileProviderDaemon::ResidencyReason_optional __swiftcall ResidencyReason.init(onDiskValue:)(FileProviderDaemon::ResidencyReason_optional onDiskValue)
{
  if (onDiskValue.value <= FileProviderDaemon_ResidencyReason_unknownDefault)
  {
    v2 = 0x5040302010006uLL >> (8 * onDiskValue.value);
  }

  else
  {
    v2 = 6;
  }

  *v1 = v2;
  return onDiskValue;
}

Swift::Void __swiftcall ResidencyReason.convert(to:)(FileProviderDaemon::ResidencyReason_optional to)
{
  v2 = *to.value;
  if (v2 != 6)
  {
    v3 = *v1;
    if (v3 != v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C21B8, &qword_1CFA0FF30);
      if (v3 >= 2)
      {
        if (v2 == 1)
        {
          v4 = 1;
LABEL_6:
          *v1 = v4;
          return;
        }

        if (v3 - 2 >= 2 && v3 != 5)
        {
          if (v3 == 4)
          {
            if (v2 == 3)
            {
              v4 = 3;
            }

            else
            {
              v4 = 4;
            }

            if (v2 == 5)
            {
              v4 = 5;
            }

            goto LABEL_6;
          }

          sub_1CF9E8038();
          __break(1u);
        }
      }
    }
  }
}