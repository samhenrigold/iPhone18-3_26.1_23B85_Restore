uint64_t sub_18AE79B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18AE79BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 56)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18AE79CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18AE79D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 56));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18AE79E1C(uint64_t a1)
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_18AE79E88(uint64_t a1)
{
  sub_18AF4B4F4(319, &qword_1ED56B0C0, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_18AF4B548(319, &qword_1ED56B0D8, &type metadata for GlassMaterialProvider.OptimizationLevel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_18AF4B548(319, &qword_1ED56B090, &type metadata for GlassMaterialProvider.HysteresisRange, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_18AF4B548(319, &qword_1ED56B088, &_s4TintVN, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_18AF4B548(319, qword_1ED56AFC8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_18AF4B548(319, &qword_1EA99B638, &_s4TintV5StyleON, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_18AF4B4F4(319, qword_1ED56AF28, _s14CustomFillBaseCMa);
              if (v7 <= 0x3F)
              {
                sub_18AF4B548(319, &qword_1ED56AFC0, &_s10CustomGlowVN, MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
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

void sub_18AE7A100(uint64_t a1)
{
  if (!qword_1ED56B0C0)
  {
    sub_18AFCBB34();
    v1 = sub_18AFCE074();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED56B0C0);
    }
  }
}

uint64_t type metadata accessor for GlassMaterialProvider.ResolvedStyle(uint64_t a1)
{
  result = qword_1ED56AF18;
  if (!qword_1ED56AF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18AE7A260()
{
  result = qword_1ED56B0E0;
  if (!qword_1ED56B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56B0E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary21GlassMaterialProviderV13ConfigurationV4BaseO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_18AE7A30C()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED56C9B0;
  v1 = sub_18AFCDE04();
  LODWORD(v0) = [v0 BOOLForKey_];

  v2 = 2;
  if (!v0)
  {
    v2 = 0;
  }

  qword_1ED56C8D8 = v2;
}

uint64_t sub_18AE7A3E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_18AE7AFD4(v7, a4, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

BOOL _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v72[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0, &qword_18AFDB768);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-1] - v12;
  if ((sub_18AE7B530(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*(a1 + 32) == 1)
  {
    if (*&v15 > 1uLL)
    {
      if (*&v15 ^ 2 | *&v14)
      {
        if (!*(a2 + 32) || __PAIR128__(*&v16, *&v17) < 3)
        {
          return 0;
        }

        goto LABEL_22;
      }

      if (!*(a2 + 32))
      {
        return 0;
      }

      *&v17 ^= 2uLL;
    }

    else if (*&v15 | *&v14)
    {
      if (!*(a2 + 32))
      {
        return 0;
      }

      *&v17 ^= 1uLL;
    }

    else if (!*(a2 + 32))
    {
      return 0;
    }

    if (*&v17 | *&v16)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    result = 0;
    if (v15 != v17 || v14 != v16)
    {
      return result;
    }
  }

LABEL_22:
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v71 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v19 = v71[10];
  v20 = *(v11 + 48);
  sub_18AE7BA10(a1 + v19, v13);
  sub_18AE7BA10(a2 + v19, &v13[v20]);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_18AE7BA80(v13, &qword_1EA99B5F0, &qword_18AFDAF70);
      goto LABEL_33;
    }

LABEL_29:
    sub_18AE7BA80(v13, &qword_1EA99B6A0, &qword_18AFDB768);
    return 0;
  }

  sub_18AE7BA10(v13, v10);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_29;
  }

  (*(v5 + 32))(v7, &v13[v20], v4);
  sub_18AF4B160(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v22 = sub_18AFCDDF4();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  sub_18AE7BA80(v13, &qword_1EA99B5F0, &qword_18AFDAF70);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v24 = v71;
  v25 = v71[11];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 == 3)
  {
    if (v27 != 3)
    {
      return 0;
    }
  }

  else if (v26 != v27)
  {
    return 0;
  }

  if (*(a1 + v71[12]) != *(a2 + v71[12]))
  {
    return 0;
  }

  v28 = v71[13];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 16);
  v31 = a2 + v28;
  if (v30)
  {
    if ((*(v31 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v31 + 16))
    {
      return 0;
    }

    result = 0;
    if (COERCE_FLOAT(*v29) != COERCE_FLOAT(*v31))
    {
      return result;
    }

    if (COERCE_FLOAT(HIDWORD(*v29)) != COERCE_FLOAT(HIDWORD(*v31)))
    {
      return result;
    }

    result = 0;
    v35 = v29[1];
    v36 = *(v31 + 8);
    if (*&v35 != *&v36 || *(&v35 + 1) != *(&v36 + 1))
    {
      return result;
    }
  }

  if ((sub_18AE7BB5C(*(a1 + v71[14]), *(a2 + v71[14])) & 1) == 0)
  {
    return 0;
  }

  v32 = v24[15];
  v33 = *(a2 + v32);
  if (*(a1 + v32))
  {
    if (!v33)
    {
      return 0;
    }

    v34 = sub_18AFCCD04();

    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v71[16];
  v39 = *(a1 + v37);
  v38 = *(a1 + v37 + 8);
  v40 = *(a1 + v37 + 20);
  v41 = *(a1 + v37 + 16) | (*(a1 + v37 + 20) << 32);
  v42 = a2 + v37;
  v44 = *v42;
  v43 = *(v42 + 8);
  v45 = *(v42 + 16) | (*(v42 + 20) << 32);
  if (v40 <= 0xFEuLL)
  {
    if (BYTE4(v45) != 255)
    {
      if ((v41 & 0x100000000) != 0)
      {
        v72[0] = v39;
        v72[1] = v38;
        v73 = v41;
        if ((v45 & 0x100000000) == 0)
        {
          return 0;
        }

        v74[0] = v44;
        v74[1] = v43;
        v75 = v45;
        if ((MEMORY[0x18CFEC270](v72, v74) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if ((v45 & 0x100000000) != 0)
        {
          return 0;
        }

        sub_18AF4BC28(v44, v43, v45);
        sub_18AF4BC28(v39, v38, v41);
        v52 = sub_18AFCCD04();
        sub_18AF4B128(v44, v43, v45);
        sub_18AF4B128(v39, v38, v41);
        if ((v52 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_54;
    }

LABEL_59:
    sub_18AF4BC28(v44, v43, v45);
    sub_18AF4BC28(v39, v38, v41);
    sub_18AF4B128(v39, v38, v41);
    sub_18AF4B128(v44, v43, v45);
    return 0;
  }

  if (BYTE4(v45) != 255)
  {
    goto LABEL_59;
  }

LABEL_54:
  v46 = v71[17];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = a2 + v46;
  v50 = *(a2 + v46);
  v51 = *(v49 + 4);
  if (!v48)
  {
    result = 0;
    if (v51)
    {
      return result;
    }

    goto LABEL_68;
  }

  if (v48 == 1)
  {
    result = 0;
    if (v51 != 1)
    {
      return result;
    }

LABEL_68:
    v53 = v47 == v50;
    v54 = v71;
    if (!v53)
    {
      return result;
    }

    goto LABEL_72;
  }

  result = 0;
  if (v51 == 2)
  {
    v54 = v71;
    if (v50 == 0.0)
    {
LABEL_72:
      v55 = v54[18];
      v56 = *(a1 + v55);
      v57 = *(a2 + v55);
      if (v56)
      {
        if (!v57)
        {
          return 0;
        }

        v58 = *(*v56 + 80);

        v60 = v58(v59);

        if ((v60 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v57)
      {
        return 0;
      }

      v61 = v71[19];
      v62 = a1 + v61;
      v63 = *(a1 + v61);
      v64 = (a2 + v61);
      v65 = *v64;
      if (v63)
      {
        if (v65 == 0.0)
        {
          return 0;
        }

        v66 = *(v62 + 8);
        v67 = v64[1];
        v68 = *(*v63 + 80);

        v70 = v68(v69);

        return (v70 & 1) != 0 && v66 == v67;
      }

      return v65 == 0.0;
    }
  }

  return result;
}

void sub_18AE7AC70(uint64_t a1)
{
  sub_18AFAF898(319, &qword_1ED56AA08, &_s10DimensionsVN, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_18AFAF898(319, qword_1ED56ADC8, &_s12ResolvedTintVN, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_18AFCBB34();
      if (v3 <= 0x3F)
      {
        sub_18AFAF840(319);
        if (v4 <= 0x3F)
        {
          sub_18AFAF898(319, &qword_1ED56AFC0, &_s10CustomGlowVN, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for GlassMaterialProvider.ResolvedStyle(319);
            if (v6 <= 0x3F)
            {
              sub_18AFAF898(319, &qword_1ED56AB20, MEMORY[0x1E6981540], MEMORY[0x1E69E6720]);
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

void sub_18AE7AE8C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_18AFCDE04();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1ED56C9B0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18AE7AF04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7AF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7AFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7B10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_18AE7B188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_18AFCBB34();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18AE7B2C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18AFCBB34();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_18AE7B454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AE7B4B8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_18AE7B4B8()
{
  result = qword_1ED56AE90[0];
  if (!qword_1ED56AE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED56AE90);
  }

  return result;
}

BOOL sub_18AE7B530(unint64_t a1, unint64_t a2)
{
  v4 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v11 != 2)
    {
      switch(__ROR8__(a1 + 0x4000000000000000, 3))
      {
        case 1:
          return a2 == 0xC000000000000008;
        case 2:
          return a2 == 0xC000000000000010;
        case 3:
          return a2 == 0xC000000000000018;
        case 4:
          return a2 == 0xC000000000000020;
        case 5:
          return a2 == 0xC000000000000028;
        case 6:
          return a2 == 0xC000000000000030;
        case 7:
          return a2 == 0xC000000000000038;
        case 8:
          return a2 == 0xC000000000000040;
        case 9:
          return a2 == 0xC000000000000048;
        case 0xALL:
          return a2 == 0xC000000000000050;
        case 0xBLL:
          v20 = 80;
          break;
        case 0xCLL:
          return a2 == 0xC000000000000060;
        case 0xDLL:
          return a2 == 0xC000000000000068;
        case 0xELL:
          return a2 == 0xC000000000000070;
        case 0xFLL:
          return a2 == 0xC000000000000078;
        case 0x10:
          return a2 == 0xC000000000000080;
        case 0x11:
          return a2 == 0xC000000000000088;
        case 0x12:
          return a2 == 0xC000000000000090;
        case 0x13:
          v20 = 144;
          break;
        case 0x14:
          return a2 == 0xC0000000000000A0;
        case 0x15:
          v20 = 160;
          break;
        case 0x16:
          return a2 == 0xC0000000000000B0;
        default:
          return a2 == 0xC000000000000000;
      }

      return a2 == (v20 | 0xC000000000000008);
    }

    if (a2 >> 62 == 2)
    {
      v14 = v8;
      v15 = swift_projectBox();
      v16 = swift_projectBox();
      sub_18AE7AFD4(v15, v10, _s13ConfigurationV3MixVMa);
      sub_18AE7AFD4(v16, v6, _s13ConfigurationV3MixVMa);
      if (_s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(v10, v6) && _s13DesignLibrary21GlassMaterialProviderV2eeoiySbAC_ACtFZ_0(&v10[*(v14 + 20)], &v6[*(v14 + 20)]))
      {
        v17 = *&v10[*(v14 + 24)];
        sub_18AF4BBC8(v10, _s13ConfigurationV3MixVMa);
        v18 = *&v6[*(v14 + 24)];
        sub_18AF4BBC8(v6, _s13ConfigurationV3MixVMa);
        return v17 == v18;
      }

      sub_18AF4BBC8(v6, _s13ConfigurationV3MixVMa);
      sub_18AF4BBC8(v10, _s13ConfigurationV3MixVMa);
    }
  }

  else if (v11)
  {
    if (a2 >> 62 == 1)
    {
      if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20))
      {
        if ((*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) != 0 || (sub_18AFCDCB4() & 1) == 0)
      {
        return 0;
      }

      return 1;
    }
  }

  else if (!(a2 >> 62))
  {
    v12 = *(a2 + 20);
    v13 = *(a2 + 28);
    if (*(a1 + 20))
    {
      if (!*(a2 + 20))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (*(a1 + 28))
    {
      if ((*(a2 + 28) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 24) != *(a2 + 24))
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_18AE7BA10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE7BA80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_18AE7BAE0(uint64_t a1)
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AE7BB5C(void *a1, void *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (a1[4] != a2[4])
    {
      return 0;
    }

    v3 = a1 + 8;
    v4 = a2 + 8;
    while (1)
    {
      v5 = *(v3 - 2);
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v4 - 4);
      v9 = *(v4 - 2);
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      if (*(v3 - 4))
      {
        v20[0] = *(v3 - 3);
        v20[1] = v6;
        v21 = v5;
        if ((v8 & 1) == 0)
        {
          return 0;
        }

        v22[0] = v10;
        v22[1] = v11;
        v23 = v9;
        sub_18AE91FA0(v10, v11, v9, 1);
        if ((MEMORY[0x18CFEC270](v20, v22) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 4))
        {
          sub_18AE91FA0(v10, v11, v9, 1);
          return 0;
        }

        v12 = *(v4 - 3);
        v13 = *(v4 - 2);
        v14 = *(v4 - 2);
        sub_18AE91FA0(v10, v11, v9, 0);
        sub_18AE91FA0(v7, v6, v5, 0);
        v15 = sub_18AFCCD04();
        sub_18AE92094(v12, v13, v14, 0);
        sub_18AE92094(v7, v6, v5, 0);
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }

      result = 0;
      v18 = *v4;
      v4 += 4;
      v17 = v18;
      v19 = *v3;
      v3 += 4;
      if (v19 != v17)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t type metadata accessor for GlassMaterialProvider(uint64_t a1)
{
  result = qword_1ED56AB90;
  if (!qword_1ED56AB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE7BDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11EnvironmentVMa(uint64_t a1)
{
  result = qword_1ED56AD38;
  if (!qword_1ED56AD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AE7BE94()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCD8, &qword_18AFE01F0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_18AE7BEC4(uint64_t a1)
{
  sub_18AFCBB34();
  if (v1 <= 0x3F)
  {
    sub_18AFCC5C4();
    if (v2 <= 0x3F)
    {
      sub_18AE7C05C(319, &qword_1ED56AB20, MEMORY[0x1E6981540]);
      if (v3 <= 0x3F)
      {
        sub_18AFA7EF0(319);
        if (v4 <= 0x3F)
        {
          sub_18AE7C05C(319, &qword_1ED56AAF8, MEMORY[0x1E69E6448]);
          if (v5 <= 0x3F)
          {
            sub_18AE7C05C(319, &qword_1ED56AA08, &_s10DimensionsVN);
            if (v6 <= 0x3F)
            {
              sub_18AE7C05C(319, &qword_1ED56A7E0, &_s6PocketV18ResolvedParametersVN);
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

void sub_18AE7C05C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_18AFCE074();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18AE7C0A8(uint64_t a1)
{
  sub_18AE7A100(319);
  if (v1 <= 0x3F)
  {
    _s11EnvironmentVMa(319);
    if (v2 <= 0x3F)
    {
      sub_18AFB68E8(319, qword_1ED56ADC8, &_s12ResolvedTintVN, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_18AFB68E8(319, &qword_1ED56AB20, MEMORY[0x1E6981540], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AE7C1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7C230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AE7C2C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t static GlassMaterialProvider.initialState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18AFCBB34();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for GlassMaterialProvider.State(0);
  *(a1 + v3[5]) = 1;
  result = sub_18AFA8190((a1 + v3[6]));
  *(a1 + v3[7]) = 0;
  *(a1 + v3[8]) = MEMORY[0x1E69E7CC0];
  v5 = a1 + v3[9];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t type metadata accessor for GlassMaterialProvider.State(uint64_t a1)
{
  result = qword_1ED56A968;
  if (!qword_1ED56A968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s13DesignLibrary21GlassMaterialProviderV13ConfigurationV8adaptive11colorSchemeAE7SwiftUI05ColorI0O_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_18AE7AFD4(v3, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = *(a2 + 40);
  if ((v6 & 0x4000) == 0)
  {
    *(a2 + 40) = v6 | 0x4000;
  }

  v7 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v7, &qword_1EA99B5F0, &qword_18AFDAF70);
  v8 = sub_18AFCBB34();
  v11 = *(v8 - 8);
  (*(v11 + 16))(a2 + v7, a1, v8);
  v9 = *(v11 + 56);

  return v9(a2 + v7, 0, 1, v8);
}

uint64_t sub_18AE7C544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GlassMaterialProvider.updateState(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v295 = a1;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6A0, &qword_18AFDB768);
  MEMORY[0x1EEE9AC00](v243);
  v246 = &v235 - v5;
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v285 = (&v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v284 = sub_18AFCD424();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v281 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v282 = &v235 - v10;
  v280 = sub_18AFCD2E4();
  v279 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v276 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v277 = &v235 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v271 = &v235 - v15;
  v270 = sub_18AFCC824();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v268 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_18AFCC9A4();
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  *&v266 = &v235 - v19;
  v20 = sub_18AFCC5C4();
  *&v291 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  *&v264 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_18AFCBB34();
  v22 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v235 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v253 = &v235 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v263 = &v235 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v236 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v239 = &v235 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v238 = &v235 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v244 = &v235 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v245 = &v235 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v242 = &v235 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v237 = &v235 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v241 = &v235 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v252 = &v235 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v235 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v235 - v50;
  v290 = sub_18AFCC474();
  v275 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v251 = &v235 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v288 = &v235 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v235 - v56;
  v58 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v58);
  v278 = &v235 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v235 - v61);
  MEMORY[0x1EEE9AC00](v63);
  v274 = &v235 - v64;
  v293 = a2;
  sub_18AFCD594();
  v240 = *(v6 + 40);
  sub_18AE83A40(v3 + v240, v51, &qword_1EA99B5F0, &qword_18AFDAF70);
  v286 = v6;
  v247 = *(v3 + *(v6 + 60));
  v289 = v3;
  v65 = *v3;
  sub_18AE89F60(v65);
  v262 = sub_18AF47DE4(v65);
  v292 = type metadata accessor for GlassMaterialProvider.State(0);
  v66 = v58[10];
  v272 = v295 + *(v292 + 24);
  v67 = (v272 + v66);
  v261 = *v67;
  v287 = v67;
  v260 = *(v67 + 4);
  v68 = *MEMORY[0x1E697DBB8];
  v69 = *(v22 + 104);
  v256 = v58[5];
  v70 = v297;
  v69(v62 + v256, v68, v297);
  v71 = *MEMORY[0x1E697F600];
  v72 = *(v291 + 104);
  v257 = v58[6];
  *&v265 = v20;
  v72(v62 + v257, v71, v20);
  v73 = v62 + v58[7];
  *v73 = 0;
  *(v73 + 1) = 0;
  v73[16] = 1;
  v74 = v58[8];
  v75 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  v76 = *(*(v75 - 8) + 56);
  v258 = v74;
  v76(v62 + v74, 1, 1, v75);
  v259 = v58[12];
  *(v62 + v259) = 0;
  v267 = v58[21];
  *(v62 + v267) = 0;
  sub_18AFCC244();
  v77 = v70;
  *v62 = v78;
  v273 = v51;
  sub_18AE83A40(v51, v48, &qword_1EA99B5F0, &qword_18AFDAF70);
  v79 = *(v22 + 48);
  v80 = v79(v48, 1, v70);
  v254 = v79;
  v296 = v57;
  v294 = v22;
  v255 = v22 + 48;
  if (v80 == 1)
  {
    v81 = v263;
    sub_18AFCC204();
    v77 = v297;
    v82 = v79(v48, 1, v297);
    v83 = v81;
    if (v82 != 1)
    {
      sub_18AE7BA80(v48, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    v83 = v263;
    (*(v22 + 32))(v263, v48, v70);
  }

  (*(v294 + 40))(v62 + v256, v83, v77);
  v84 = v264;
  sub_18AFCC2F4();
  (*(v291 + 40))(v62 + v257, v84, v265);
  sub_18AFAB8BC();
  v85 = v266;
  sub_18AFCC484();
  sub_18AE7E5A4(v85, v62 + v258, &qword_1EA99BBF0, &unk_18AFDFE20);
  if (v65 == 0xC000000000000090)
  {
    if (!v247 && !sub_18AFCC1C4())
    {
      sub_18AFCCCD4();
    }

    sub_18AFCCDC4();
    v265 = v86;
    v291 = v87;
    v264 = v88;
    v266 = v89;

    v90.i64[0] = v265;
    v90.i64[1] = v264;
    *v73 = vorrq_s8(vshll_n_s32(__PAIR64__(v266, v291), 0x20uLL), v90);
    v73[16] = 0;
  }

  else
  {
    sub_18AF4B0F8(v65);
  }

  v91 = v62 + v58[10];
  v92 = v62 + v58[11];
  *v91 = v261;
  v91[4] = v260;
  *v92 = 0;
  *(v92 + 1) = 0;
  *(v92 + 2) = 0;
  *(v92 + 12) = 256;
  sub_18AE7A260();
  sub_18AFCC484();
  *(v62 + v259) = v299;
  if (v262)
  {
    sub_18AFCC974();
    v93 = v248;
    sub_18AFCC984();

    v94 = sub_18AFCC994();
    (*(v249 + 8))(v93, v250);
    v95 = sub_18AF76B64();
    v97 = v96;
    v99 = v98;
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 1;
    v95 = 0.0;
    v97 = 0;
  }

  v102 = v62 + v58[9];
  v103 = v58[13];
  v104 = v58[14];
  v105 = v58[15];
  v106 = v58[16];
  v107 = v58[17];
  *&v265 = v58[18];
  v108 = v58[20];
  *&v266 = v58[19];
  *&v291 = v108;
  *v102 = v95;
  *(v102 + 1) = v97;
  *(v102 + 2) = v99;
  v102[24] = v101 & 1;
  *(v62 + v103) = sub_18AFCC274() & 1;
  *(v62 + v104) = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  *(v62 + v105) = v299;
  v109 = v268;
  sub_18AFCC454();
  v110 = sub_18AFCC814();
  (*(v269 + 8))(v109, v270);
  v111 = *(v110 + 16);

  *(v62 + v106) = v111 != 0;
  *(v62 + v107) = sub_18AFCC354() & 1;
  *(v62 + v265) = sub_18AFCC334() & 1;
  *(v62 + v266) = sub_18AFCC344() & 1;
  *(v62 + v291) = sub_18AFCC424() & 1;
  v112 = v271;
  sub_18AFCC3D4();
  v113 = v279;
  v114 = v277;
  v115 = v280;
  (*(v279 + 16))(v277, v112, v280);
  v116 = v276;
  sub_18AFCD214();
  sub_18AFB68A0(&qword_1ED56A7A0, MEMORY[0x1E69818B0], MEMORY[0x1E69818B8]);
  LOBYTE(v111) = sub_18AFCDDF4();
  v117 = *(v113 + 8);
  v117(v116, v115);
  if (v111)
  {
    v117(v114, v115);
    v117(v112, v115);
    v118 = 1;
  }

  else
  {
    sub_18AFCD234();
    v119 = sub_18AFCDDF4();
    v117(v116, v115);
    v117(v114, v115);
    v117(v112, v115);
    if (v119)
    {
      v118 = 2;
    }

    else
    {
      v118 = 0;
    }
  }

  v120 = v284;
  v121 = v283;
  v122 = v282;
  *(v62 + v267) = v118;
  sub_18AFCC3E4();
  v123 = v281;
  sub_18AFCD414();
  sub_18AFB68A0(&qword_1EA99BC80, MEMORY[0x1E69818D0], MEMORY[0x1E69818D8]);
  v124 = sub_18AFCDDF4();
  v125 = *(v121 + 8);
  v125(v123, v120);
  if ((v124 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v125(v123, v120);
  }

  v125(v122, v120);
  *(v62 + v58[23]) = v124 & 1;
  sub_18AFAB964();
  v126 = v296;
  sub_18AFCC484();
  v127 = v299;
  if (v299)
  {
    swift_getKeyPath();
    v298 = v127;
    sub_18AFB68A0(&qword_1ED56A728, _s6PocketV7StorageCMa, &unk_18AFE02DC);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v127 + 16));
    v128 = *(v127 + 36);
    v129 = *(v127 + 40);
    os_unfair_lock_unlock((v127 + 16));

    sub_18AE7BA80(v273, &qword_1EA99B5F0, &qword_18AFDAF70);
    v130 = *(v275 + 8);
    v131 = v126;
    v132 = v290;
    v130(v131, v290);

    v133 = v129 == 0;
    v134 = v132;
    v135 = 0x100000000;
    if (v133)
    {
      v135 = 0;
    }

    v136 = v135 | v128;
  }

  else
  {
    sub_18AE7BA80(v273, &qword_1EA99B5F0, &qword_18AFDAF70);
    v130 = *(v275 + 8);
    v134 = v290;
    v130(v126, v290);
    v136 = 0;
  }

  v137 = v289;
  v138 = v62 + v58[22];
  v138[4] = BYTE4(v136);
  *v138 = v136;
  v138[5] = v127 == 0;
  v139 = v274;
  sub_18AFB6838(v62, v274, _s11EnvironmentVMa);
  v140 = v272;
  sub_18AE7E60C(v139, v272);
  v141 = v285;
  sub_18AE7B10C(v137, v285, type metadata accessor for GlassMaterialProvider.Configuration);
  v142 = v140;
  v143 = v278;
  sub_18AE7B10C(v142, v278, _s11EnvironmentVMa);
  v144 = sub_18AFA8DFC(v141, v143);
  v145 = v292;
  v146 = v295;
  *(v295 + *(v292 + 28)) = v144;
  v147 = v288;
  sub_18AFCD594();
  v148 = sub_18AE82DD8(v147);
  v130(v147, v134);
  v149 = *(v145 + 32);

  *(v146 + v149) = v148;
  v150 = v286;
  v151 = v137 + *(v286 + 64);
  v152 = *(v151 + 16) | (*(v151 + 20) << 32);
  if (*(v151 + 20) == 255)
  {
    v153 = 0;
    v154 = 0;
  }

  else
  {
    v155 = *v151;
    v156 = *(v151 + 8);
    v157 = v251;
    sub_18AFCD594();
    if ((v152 & 0x100000000) != 0)
    {
      v160 = HIDWORD(v155);
      v163 = HIDWORD(v156);
    }

    else
    {
      sub_18AFCCDC4();
      LODWORD(v155) = v158;
      v160 = v159;
      LODWORD(v156) = v161;
      v163 = v162;
    }

    v130(v157, v290);
    v153 = v155 | (v160 << 32);
    v154 = v156 | (v163 << 32);
    v137 = v289;
  }

  v164 = v146 + *(v292 + 36);
  *v164 = v153;
  *(v164 + 8) = v154;
  *(v164 + 16) = HIDWORD(v152) > 0xFE;
  sub_18AFA9F00(&v299);
  v165 = v297;
  v166 = v294;
  if ((v299 & 0x4000) == 0)
  {
    goto LABEL_35;
  }

  v170 = *(v137 + 16);
  v169 = *(v137 + 24);
  if (*(v137 + 32) != 1)
  {
    v171 = *(v137 + 16);
    if (v169 < v170)
    {
      v171 = *(v137 + 24);
    }

    if (v171 <= 64.0)
    {
      goto LABEL_42;
    }

LABEL_35:
    sub_18AE7BA80(v146, &qword_1EA99B5F0, &qword_18AFDAF70);
    result = (*(v166 + 56))(v146, 1, 1, v165);
    v168 = v287;
    *v287 = 0.0;
    *(v168 + 4) = 1;
    return result;
  }

  if (__PAIR128__((*&v170 != 0) + *&v169 - 1, *&v170 - 1) < 2)
  {
    goto LABEL_35;
  }

LABEL_42:
  v172 = sub_18AFCD5A4();
  v173 = v137 + *(v150 + 68);
  v174 = *v173;
  v175 = *(v173 + 4);
  if (v175 == 1)
  {
    goto LABEL_47;
  }

  if ((v172 & 0x100000000) == 0)
  {
    v176 = v166;
    v177 = 0;
    v174 = *&v172;
LABEL_48:
    v178 = v287;
    goto LABEL_49;
  }

  if (!v175 && *(v146 + *(v292 + 20)))
  {
LABEL_47:
    v176 = v166;
    v177 = 0;
    goto LABEL_48;
  }

  v176 = v166;
  if ((*(v137 + 42) & 0x10) == 0)
  {
    v174 = 0.0;
    v177 = 1;
    goto LABEL_48;
  }

  v178 = v287;
  v174 = *v287;
  v177 = *(v287 + 4);
LABEL_49:
  if ((sub_18AFCD5A4() & 0x100000000) == 0)
  {
    *(v146 + *(v292 + 20)) = 0;
  }

  v179 = *(v178 + 4);
  v180 = v297;
  if ((v179 | v177))
  {
    v181 = v179 & v177;
  }

  else
  {
    v181 = *v178 == v174;
  }

  *v178 = v174;
  *(v178 + 4) = v177;
  v182 = v241;
  sub_18AE83A40(v146, v241, &qword_1EA99B5F0, &qword_18AFDAF70);
  v183 = v254;
  if (v254(v182, 1, v180) == 1)
  {
    LODWORD(v296) = v181;
    v184 = v237;
    sub_18AE83A40(v137 + v240, v237, &qword_1EA99B5F0, &qword_18AFDAF70);
    v185 = v183(v184, 1, v180);
    v186 = v245;
    if (v185 == 1)
    {
      v187 = v288;
      sub_18AFCD594();
      sub_18AFCC204();
      v180 = v297;
      v130(v187, v290);
      v188 = v183(v184, 1, v180);
      v189 = v242;
      if (v188 != 1)
      {
        sub_18AE7BA80(v184, &qword_1EA99B5F0, &qword_18AFDAF70);
      }
    }

    else
    {
      (*(v176 + 32))(v252, v184, v180);
      v189 = v242;
    }

    v191 = v183(v182, 1, v180);
    v190 = v253;
    v181 = v296;
    if (v191 != 1)
    {
      sub_18AE7BA80(v182, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    (*(v176 + 32))(v252, v182, v180);
    v190 = v253;
    v186 = v245;
    v189 = v242;
  }

  LODWORD(v291) = v181 ^ 1;
  v192 = v294;
  v193 = *(v294 + 56);
  v194 = v252;
  v296 = (v294 + 56);
  v292 = v193;
  v193(v252, 0, 1, v180);
  v195 = v194;
  v196 = v295;
  sub_18AE7E5A4(v195, v295, &qword_1EA99B5F0, &qword_18AFDAF70);
  sub_18AE83120(v196, v189);
  v197 = v297;
  if (v183(v189, 1, v297) == 1)
  {
    v198 = v288;
    sub_18AFCD594();
    sub_18AFCC204();
    v197 = v297;
    v199 = v198;
    v192 = v294;
    v130(v199, v290);
    v200 = v183(v189, 1, v197);
    v201 = v244;
    if (v200 != 1)
    {
      sub_18AE7BA80(v189, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    (*(v192 + 32))(v190, v189, v197);
    v201 = v244;
  }

  v203 = *(v137 + 16);
  v202 = *(v137 + 24);
  if (*(v137 + 32) == 1)
  {
    if (__PAIR128__((*&v203 != 0) + *&v202 - 1, *&v203 - 1) >= 2)
    {
      goto LABEL_73;
    }

LABEL_72:
    LODWORD(v291) = 0;
    v205 = v287;
    *v287 = 0.0;
    *(v205 + 4) = 1;
    goto LABEL_73;
  }

  v204 = *(v137 + 16);
  if (v202 < v203)
  {
    v204 = *(v137 + 24);
  }

  if (v204 > 64.0)
  {
    goto LABEL_72;
  }

LABEL_73:
  v206 = *(v192 + 16);
  v290 = v192 + 16;
  v288 = v206;
  (v206)(v186, v190, v197);
  (v292)(v186, 0, 1, v197);
  sub_18AE83A40(v295, v201, &qword_1EA99B5F0, &qword_18AFDAF70);
  v207 = v192;
  v208 = *(v243 + 48);
  v209 = v186;
  v210 = v186;
  v211 = v246;
  sub_18AE83A40(v209, v246, &qword_1EA99B5F0, &qword_18AFDAF70);
  v212 = v297;
  sub_18AE83A40(v201, v211 + v208, &qword_1EA99B5F0, &qword_18AFDAF70);
  v213 = v254;
  if (v254(v211, 1, v212) == 1)
  {
    v214 = v207;
    sub_18AE7BA80(v201, &qword_1EA99B5F0, &qword_18AFDAF70);
    v215 = v246;
    sub_18AE7BA80(v210, &qword_1EA99B5F0, &qword_18AFDAF70);
    if (v213(v215 + v208, 1, v212) == 1)
    {
      sub_18AE7BA80(v215, &qword_1EA99B5F0, &qword_18AFDAF70);
      goto LABEL_85;
    }

    goto LABEL_78;
  }

  v216 = v238;
  sub_18AE83A40(v211, v238, &qword_1EA99B5F0, &qword_18AFDAF70);
  if (v213(v211 + v208, 1, v212) == 1)
  {
    sub_18AE7BA80(v244, &qword_1EA99B5F0, &qword_18AFDAF70);
    v215 = v246;
    sub_18AE7BA80(v245, &qword_1EA99B5F0, &qword_18AFDAF70);
    v214 = v294;
    (*(v294 + 8))(v216, v212);
LABEL_78:
    sub_18AE7BA80(v215, &qword_1EA99B6A0, &qword_18AFDB768);
    goto LABEL_79;
  }

  v225 = v294;
  v226 = v211 + v208;
  v227 = v235;
  (*(v294 + 32))(v235, v226, v212);
  sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v228 = v211;
  v229 = sub_18AFCDDF4();
  v214 = v225;
  v230 = *(v225 + 8);
  v230(v227, v212);
  sub_18AE7BA80(v244, &qword_1EA99B5F0, &qword_18AFDAF70);
  sub_18AE7BA80(v245, &qword_1EA99B5F0, &qword_18AFDAF70);
  v230(v216, v212);
  v137 = v289;
  sub_18AE7BA80(v228, &qword_1EA99B5F0, &qword_18AFDAF70);
  if (v229)
  {
LABEL_85:
    v223 = v253;
    if (v291)
    {
      v221 = 0;
      goto LABEL_87;
    }

    return (*(v214 + 8))(v223, v297);
  }

LABEL_79:
  v217 = v239;
  sub_18AE83A40(v295, v239, &qword_1EA99B5F0, &qword_18AFDAF70);
  v218 = v297;
  v219 = v254;
  v220 = v254(v217, 1, v297);
  sub_18AE7BA80(v217, &qword_1EA99B5F0, &qword_18AFDAF70);
  if (v220 == 1)
  {
    v221 = 0;
  }

  else
  {
    v222 = v236;
    sub_18AE83A40(v137 + v240, v236, &qword_1EA99B5F0, &qword_18AFDAF70);
    v221 = v219(v222, 1, v218) == 1;
    sub_18AE7BA80(v222, &qword_1EA99B5F0, &qword_18AFDAF70);
  }

  v223 = v253;
  v224 = v295;
  sub_18AE7BA80(v295, &qword_1EA99B5F0, &qword_18AFDAF70);
  (v288)(v224, v223, v218);
  (v292)(v224, 0, 1, v218);
  if (v291)
  {
LABEL_87:
    sub_18AFCD5D4();
    v231 = sub_18AFCBBC4();

    if (v231)
    {
    }

    else
    {
      sub_18AFCD5D4();
      v232 = sub_18AFCBBA4();

      if ((v232 & 1) == 0 && (*(v289 + 42) & 0x40) == 0)
      {
        sub_18AFCDB84();
        v233 = sub_18AFCD5C4();
        sub_18AFCBBD4();
        v233(&v299, 0);
        if (v221)
        {
          sub_18AFCD5D4();
          sub_18AFCD5B4();
        }

        else
        {
          v234 = sub_18AFCD5C4();
          MEMORY[0x18CFEAF20](0x3FA1111111111111, 0);
          v234(&v299, 0);
        }

        v223 = v253;
      }
    }
  }

  return (*(v214 + 8))(v223, v297);
}

unint64_t sub_18AE7E48C()
{
  result = qword_1ED56A8A0;
  if (!qword_1ED56A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A8A0);
  }

  return result;
}

unint64_t sub_18AE7E4E4()
{
  result = qword_1ED56A898;
  if (!qword_1ED56A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A898);
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.externalLuminance(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x8000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFF7FFFLL | v6;
  return result;
}

uint64_t sub_18AE7E5A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_18AE7E60C(uint64_t a1, uint64_t a2)
{
  v4 = _s11EnvironmentVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE7E670(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_18AE91E70(0, v5, 0);
  v6 = v28;
  for (i = (a3 + 60); ; i += 32)
  {
    v9 = *(i - 20);
    v10 = *(i - 12);
    v11 = *(i - 1);
    v12 = *i;
    v22[0] = *(i - 28);
    v22[1] = v9;
    v22[2] = v10;
    v23 = v11;
    v24 = v12;
    sub_18AE91FA0(v9, v10, v11, v12);
    a1(&v25, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_18AE92094(v9, v10, v11, v12);
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = v6;
    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v17 >= v16 >> 1)
    {
      v20 = v26;
      sub_18AE91E70((v16 > 1), v17 + 1, 1);
      v14 = v20;
      v6 = v28;
    }

    *(v6 + 16) = v17 + 1;
    v18 = v6 + 32 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 56) = v15;
    if (!--v5)
    {
      return v6;
    }
  }

  sub_18AE92094(v9, v10, v11, v12);

  __break(1u);
  return result;
}

uint64_t sub_18AE7E7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _s11EnvironmentVMa(0);
  sub_18AE83A40(a1 + *(v10 + 32), v9, &qword_1EA99BBF0, &unk_18AFDFE20);
  v11 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    sub_18AE7BA80(v9, &qword_1EA99BBF0, &unk_18AFDFE20);
    return sub_18AE834E4(a1, a2, a3);
  }

  v18 = v3[5];
  sub_18AFB5FE8(v3, a1, &v18, a2, &v19);
  result = sub_18AFAC05C(v9, type metadata accessor for GlassMaterialProvider.ResolvedStyle);
  v13 = v20;
  v14 = v21;
  v16 = v22;
  v15 = v23;
  if (v19 >> 60 == 15 && (v20 & 0xFE00000000) == 0xFE00000000)
  {
    return sub_18AE834E4(a1, a2, a3);
  }

  *a3 = v19;
  *(a3 + 8) = v13;
  *(a3 + 12) = BYTE4(v13);
  *(a3 + 13) = BYTE5(v13);
  *(a3 + 14) = BYTE6(v13);
  *(a3 + 16) = v14;
  *(a3 + 32) = v16;
  *(a3 + 34) = BYTE2(v16);
  *(a3 + 40) = v15;
  return result;
}

uint64_t sub_18AE7E9D4(uint64_t result, unint64_t a2)
{
  if (((a2 >> 38) & 3) == 2)
  {
  }

  return v2;
}

void sub_18AE7E9E8()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED56C9B0;
  v1 = sub_18AFCDE04();
  v2 = [v0 integerForKey_];

  qword_1ED56C4B8 = v2;
}

uint64_t get_enum_tag_for_layout_string_13DesignLibrary21GlassMaterialProviderV21ResolvedConfigurationV4BaseO(uint64_t a1)
{
  v1 = *(a1 + 12) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_18AE7EA9C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v104 = (v7 + 312);
  v9 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v6[1];
  v1027 = *v6;
  v1028 = v12;
  v1029 = v6[2];
  sub_18AF6A99C(v1030);
  *(&v135[6] + 8) = v1030[6];
  *(&v135[7] + 8) = v1030[7];
  *(&v135[8] + 8) = v1030[8];
  BYTE8(v135[9]) = v1031;
  *(&v135[2] + 8) = v1030[2];
  *(&v135[3] + 8) = v1030[3];
  *(&v135[4] + 8) = v1030[4];
  *(&v135[5] + 8) = v1030[5];
  *(v135 + 8) = v1030[0];
  *(&v135[1] + 8) = v1030[1];
  sub_18AF6A96C(v1032);
  memcpy(&v128[22], v1032, 0x101uLL);
  if ((BYTE2(v1028) & 0x20) == 0)
  {
    *&v103 = v4;
    v13 = BYTE12(v1027) >> 6;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v18 = *(v1027 + 80);
        v112 = *(v1027 + 64);
        v113 = v18;
        v114 = *(v1027 + 96);
        v115 = *(v1027 + 112);
        v19 = *(v1027 + 32);
        v109 = *(v1027 + 16);
        v110 = v19;
        v111 = *(v1027 + 48);
        v20 = *(v1027 + 32);
        v891 = *(v1027 + 16);
        v892 = v20;
        v893 = *(v1027 + 48);
        sub_18AF6EE34(v2, v11);
        sub_18AF59FDC(&v109, &v308);
        sub_18AE90E8C(&v109, &v308);
        sub_18AE7EA9C(&v891);
        v891 = v112;
        v892 = v113;
        v893 = v114;
        sub_18AF6EE34(v2, v11);
        sub_18AE90E8C(&v112, &v308);
        sub_18AE7EA9C(&v891);
        sub_18AE93684(&v308);
        sub_18AF5A038(&v109);
        sub_18AF6EE98(v2);
        sub_18AE920D8(&v1027);
        v135[6] = v926;
        v135[7] = v927;
        v135[8] = v928;
        v135[9] = v929;
        v135[2] = v922;
        v135[3] = v923;
        v135[4] = v924;
        v135[5] = v925;
        v134 = *&v919[159];
        v135[0] = v920;
        v135[1] = v921;
        v102 = v933;
        v103 = v930;
        v100 = v932;
        v101 = v931;
        v133[0] = *v936;
        *(v133 + 3) = *&v936[3];
        v98 = v937;
        v99 = v938;
        v96 = v934;
        v97 = v939;
        v75 = v942;
        v131 = v943;
        v132 = v944;
        v94 = v945;
        v95 = v946;
        v92 = v947;
        v93 = v948;
        v89 = v949;
        v90 = v951;
        v91 = v950;
        v129 = v952;
        v130 = v953;
        v87 = v954;
        v88 = v955;
        v85 = v956;
        v86 = v957;
        v83 = v958;
        v84 = v959;
        v82 = v960;
        v81 = v961;
        memcpy(v128, v962, sizeof(v128));
        v126 = v963;
        v127[0] = *v964;
        *(v127 + 15) = *&v964[15];
        v79 = *&v964[31];
        v80 = *&v964[47];
        v15 = v940;
        v77 = v966;
        v78 = v965;
        v76 = v967;
        v14 = v935;
        v16 = v941;
        v17 = v968;
        goto LABEL_8;
      }

      *&v79 = v196;
      switch(v1027)
      {
        case 1:
        case 2:
        case 19:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          sub_18AF97C20(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v135[17];
          v135[7] = v135[18];
          v135[8] = v135[19];
          v135[9] = v135[20];
          v135[2] = v135[13];
          v135[3] = v135[14];
          v135[4] = v135[15];
          v135[5] = v135[16];
          v134 = v135[10];
          v135[0] = v135[11];
          v135[1] = v135[12];
          v102 = v135[24];
          v103 = v135[21];
          v100 = v135[23];
          v101 = v135[22];
          v133[0] = *v138;
          *(v133 + 3) = *&v138[3];
          v98 = v139;
          v99 = v140;
          v96 = v136;
          v97 = v141;
          v15 = v142;
          v75 = v144;
          v131 = v145;
          v132 = v146;
          v94 = v147;
          v95 = v148;
          v92 = v149;
          v93 = v150;
          v89 = v151;
          v90 = v153;
          v91 = v152;
          v129 = v154;
          v130 = v155;
          v87 = v156;
          v88 = v157;
          v85 = v158;
          v86 = v159;
          v83 = v160;
          v84 = v161;
          v82 = v162;
          v81 = v163;
          memcpy(v128, v164, sizeof(v128));
          v126 = v165;
          v127[0] = *v166;
          *(v127 + 15) = *&v166[15];
          v79 = *&v166[31];
          v80 = *&v166[47];
          v14 = v137;
          v16 = v143;
          v77 = v168;
          v78 = v167;
          v76 = v169;
          v17 = v170;
          break;
        case 3:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          sub_18AF7B968(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v265;
          v135[7] = v266;
          v135[8] = v267;
          v103 = v269;
          v135[9] = v268;
          v135[2] = v261;
          v135[3] = v262;
          v135[4] = v263;
          v135[5] = v264;
          v134 = *&v258[159];
          v135[0] = v259;
          v135[1] = v260;
          v101 = v270;
          v102 = v272;
          v14 = v274;
          v133[0] = *v275;
          *(v133 + 3) = *&v275[3];
          v99 = v277;
          v100 = v271;
          v98 = v276;
          v96 = v273;
          v97 = v278;
          v25 = v279;
          v26 = v280;
          v75 = v281;
          v131 = v282;
          v132 = v283;
          v94 = v284;
          v95 = v285;
          v92 = v286;
          v93 = v287;
          v89 = v288;
          v90 = v290;
          v91 = v289;
          v129 = v291;
          v130 = v292;
          v87 = v293;
          v88 = v294;
          v85 = v295;
          v86 = v296;
          v83 = v297;
          v84 = v298;
          v82 = v299;
          v81 = v300;
          memcpy(v128, v301, sizeof(v128));
          v126 = v302;
          v127[0] = *v303;
          *(v127 + 15) = *&v303[15];
          v79 = *&v303[31];
          v80 = *&v303[47];
          v77 = v305;
          v78 = v304;
          v76 = v306;
          v17 = v307;
          goto LABEL_32;
        case 4:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          sub_18AF7A094(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v216;
          v135[7] = v217;
          v135[8] = v218;
          v135[9] = v219;
          v135[2] = v212;
          v135[3] = v213;
          v135[4] = v214;
          v135[5] = v215;
          v134 = *&v209[159];
          v135[0] = v210;
          v135[1] = v211;
          v103 = v220;
          v101 = v221;
          v102 = v223;
          v133[0] = *v226;
          *(v133 + 3) = *&v226[3];
          v99 = v228;
          v100 = v222;
          v98 = v227;
          v96 = v224;
          v97 = v229;
          v15 = v230;
          v75 = v232;
          v131 = v233;
          v132 = v234;
          v94 = v235;
          v95 = v236;
          v92 = v237;
          v93 = v238;
          v89 = v239;
          v90 = v241;
          v91 = v240;
          v129 = v242;
          v130 = v243;
          v87 = v244;
          v88 = v245;
          v85 = v246;
          v86 = v247;
          v83 = v248;
          v84 = v249;
          v82 = v250;
          v81 = v251;
          memcpy(v128, v252, sizeof(v128));
          v126 = v253;
          v127[0] = *v254;
          *(v127 + 15) = *&v254[15];
          v79 = *&v254[31];
          v80 = *&v254[47];
          v77 = v256;
          v78 = v255;
          v76 = v257;
          v17 = v258;
          v14 = v225;
          v16 = v231;
          break;
        case 5:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v465;
          sub_18AF9CE30(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v465[7];
          v135[7] = v465[8];
          v135[8] = v465[9];
          v135[9] = v465[10];
          v135[2] = v465[3];
          v135[3] = v465[4];
          v135[4] = v465[5];
          v135[5] = v465[6];
          v134 = v465[0];
          v135[0] = v465[1];
          v135[1] = v465[2];
          v102 = v465[14];
          v103 = v465[11];
          v100 = v465[13];
          v101 = v465[12];
          v24 = v467;
          v133[0] = *v468;
          *(v133 + 3) = *&v468[3];
          v98 = v469;
          v99 = v470;
          v96 = v466;
          v97 = v471;
          v25 = v472;
          v26 = v473;
          v75 = v474;
          v131 = v475;
          v132 = v476;
          v94 = v477;
          v95 = v478;
          v92 = v479;
          v93 = v480;
          v90 = v483;
          v91 = v482;
          v27 = v465;
          v129 = v484;
          v130 = v485;
          v87 = v486;
          v88 = v487;
          v85 = v488;
          v86 = v489;
          v83 = v490;
          v84 = v491;
          v89 = v481;
          v82 = v492;
          v81 = v493;
          memcpy(v128, v494, sizeof(v128));
          v126 = v495;
          v127[0] = *v496;
          *(v127 + 15) = *&v496[15];
          v79 = *&v496[31];
          v80 = *&v496[47];
          v78 = v497;
          v28 = v498;
          goto LABEL_31;
        case 6:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v499;
          sub_18AF84454(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v499[7];
          v135[7] = v499[8];
          v135[8] = v499[9];
          v103 = v499[11];
          v135[9] = v499[10];
          v135[2] = v499[3];
          v135[3] = v499[4];
          v135[4] = v499[5];
          v135[5] = v499[6];
          v134 = v499[0];
          v135[0] = v499[1];
          v135[1] = v499[2];
          v101 = v499[12];
          v102 = v499[14];
          v24 = v501;
          v133[0] = *v502;
          *(v133 + 3) = *&v502[3];
          v99 = v504;
          v100 = v499[13];
          v98 = v503;
          v96 = v500;
          v97 = v505;
          v25 = v506;
          v26 = v507;
          v75 = v508;
          v131 = v509;
          v132 = v510;
          v94 = v511;
          v95 = v512;
          v92 = v513;
          v93 = v514;
          v90 = v517;
          v91 = v516;
          v27 = v499;
          v129 = v518;
          v130 = v519;
          v87 = v520;
          v88 = v521;
          v85 = v522;
          v86 = v523;
          v83 = v524;
          v84 = v525;
          v89 = v515;
          v82 = v526;
          v81 = v527;
          memcpy(v128, v528, sizeof(v128));
          v126 = v529;
          v127[0] = *v530;
          *(v127 + 15) = *&v530[15];
          v79 = *&v530[31];
          v80 = *&v530[47];
          v78 = v531;
          v28 = v532;
          goto LABEL_31;
        case 7:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v567;
          sub_18AF82700(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v567[7];
          v135[7] = v567[8];
          v135[8] = v567[9];
          v103 = v567[11];
          v135[9] = v567[10];
          v135[2] = v567[3];
          v135[3] = v567[4];
          v135[4] = v567[5];
          v135[5] = v567[6];
          v134 = v567[0];
          v135[0] = v567[1];
          v135[1] = v567[2];
          v101 = v567[12];
          v102 = v567[14];
          v24 = v569;
          v133[0] = *v570;
          *(v133 + 3) = *&v570[3];
          v99 = v572;
          v100 = v567[13];
          v98 = v571;
          v96 = v568;
          v97 = v573;
          v25 = v574;
          v26 = v575;
          v75 = v576;
          v131 = v577;
          v132 = v578;
          v94 = v579;
          v95 = v580;
          v92 = v581;
          v93 = v582;
          v90 = v585;
          v91 = v584;
          v27 = v567;
          v129 = v586;
          v130 = v587;
          v87 = v588;
          v88 = v589;
          v85 = v590;
          v86 = v591;
          v83 = v592;
          v84 = v593;
          v89 = v583;
          v82 = v594;
          v81 = v595;
          memcpy(v128, v596, sizeof(v128));
          v126 = v597;
          v127[0] = *v598;
          *(v127 + 15) = *&v598[15];
          v79 = *&v598[31];
          v80 = *&v598[47];
          v78 = v599;
          v28 = v600;
          goto LABEL_31;
        case 8:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v651;
          sub_18AF89BBC(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v651[7];
          v135[7] = v651[8];
          v135[8] = v651[9];
          v103 = v651[11];
          v135[9] = v651[10];
          v135[2] = v651[3];
          v135[3] = v651[4];
          v135[4] = v651[5];
          v135[5] = v651[6];
          v134 = v651[0];
          v135[0] = v651[1];
          v135[1] = v651[2];
          v101 = v651[12];
          v102 = v651[14];
          v24 = v653;
          v133[0] = *v654;
          *(v133 + 3) = *&v654[3];
          v99 = v656;
          v100 = v651[13];
          v98 = v655;
          v96 = v652;
          v97 = v657;
          v25 = v658;
          v26 = v659;
          v75 = v660;
          v131 = v661;
          v132 = v662;
          v94 = v663;
          v95 = v664;
          v92 = v665;
          v93 = v666;
          v90 = v669;
          v91 = v668;
          v27 = v651;
          v129 = v670;
          v130 = v671;
          v87 = v672;
          v88 = v673;
          v85 = v674;
          v86 = v675;
          v83 = v676;
          v84 = v677;
          v89 = v667;
          v82 = v678;
          v81 = v679;
          memcpy(v128, v680, sizeof(v128));
          v126 = v681;
          v127[0] = *v682;
          *(v127 + 15) = *&v682[15];
          v79 = *&v682[31];
          v80 = *&v682[47];
          v78 = v683;
          v28 = v684;
          goto LABEL_31;
        case 9:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v29 = v685;
          sub_18AF83680(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v685[7];
          v135[7] = v685[8];
          v135[8] = v685[9];
          v135[9] = v685[10];
          v135[2] = v685[3];
          v135[3] = v685[4];
          v135[4] = v685[5];
          v135[5] = v685[6];
          v134 = v685[0];
          v135[0] = v685[1];
          v135[1] = v685[2];
          v102 = v685[14];
          v103 = v685[11];
          v100 = v685[13];
          v101 = v685[12];
          v14 = v687;
          v133[0] = *v688;
          *(v133 + 3) = *&v688[3];
          v98 = v689;
          v99 = v690;
          v96 = v686;
          v97 = v691;
          v16 = v693;
          v75 = v694;
          v131 = v695;
          v132 = v696;
          v94 = v697;
          v95 = v698;
          v92 = v699;
          v93 = v700;
          v30 = v692;
          v89 = v701;
          v90 = v703;
          v91 = v702;
          v31 = v685;
          v129 = v704;
          v130 = v705;
          v87 = v706;
          v88 = v707;
          v85 = v708;
          v86 = v709;
          v83 = v710;
          v84 = v711;
          v82 = v712;
          v81 = v713;
          memcpy(v128, v714, sizeof(v128));
          v126 = v715;
          v127[0] = *v716;
          *(v127 + 15) = *&v716[15];
          v79 = *&v716[31];
          v80 = *&v716[47];
          v78 = v717;
          v32 = v718;
          goto LABEL_29;
        case 10:
          v889[0] = v1027;
          v889[1] = v1028;
          v889[2] = v1029;
          sub_18AF7DBA4(v889, v2, &v308);
          v109 = v1027;
          v110 = v1028;
          v111 = v1029;
          sub_18AF7D4B4(&v109, v2, v889);
          v109 = v1027;
          v110 = v1028;
          v111 = v1029;
          sub_18AF4CBF0(&v109, v2, v103, v311);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v311[7];
          v135[7] = v311[8];
          v135[8] = v311[9];
          v135[9] = v311[10];
          v135[2] = v311[3];
          v135[3] = v311[4];
          v135[4] = v311[5];
          v135[5] = v311[6];
          v134 = v311[0];
          v135[0] = v311[1];
          v135[1] = v311[2];
          v103 = v311[11];
          v101 = v311[12];
          v102 = v311[14];
          v133[0] = *v314;
          *(v133 + 3) = *&v314[3];
          v99 = v316;
          v100 = v311[13];
          v98 = v315;
          v96 = v312;
          v97 = v317;
          v15 = v318;
          v33 = v319;
          v75 = v320;
          v131 = v321;
          v132 = v322;
          v94 = v323;
          v95 = v324;
          v92 = v325;
          v93 = v326;
          v89 = v327;
          v90 = v329;
          v91 = v328;
          v129 = v330;
          v130 = v331;
          v87 = v332;
          v88 = v333;
          v85 = v334;
          v86 = v335;
          v83 = v336;
          v84 = v337;
          v82 = v338;
          v81 = v339;
          memcpy(v128, v340, sizeof(v128));
          v126 = v341;
          v127[0] = *v342;
          *(v127 + 15) = *&v342[15];
          v79 = *&v342[31];
          v80 = *&v342[47];
          v77 = v344;
          v78 = v343;
          v76 = v345;
          v17 = v346;
          v14 = v313;
          goto LABEL_41;
        case 11:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v347;
          sub_18AF7E398(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v347[7];
          v135[7] = v347[8];
          v135[8] = v347[9];
          v103 = v347[11];
          v135[9] = v347[10];
          v135[2] = v347[3];
          v135[3] = v347[4];
          v135[4] = v347[5];
          v135[5] = v347[6];
          v134 = v347[0];
          v135[0] = v347[1];
          v135[1] = v347[2];
          v101 = v347[12];
          v102 = v347[14];
          v24 = v349;
          v133[0] = *v350;
          *(v133 + 3) = *&v350[3];
          v99 = v352;
          v100 = v347[13];
          v98 = v351;
          v96 = v348;
          v97 = v353;
          v25 = v354;
          v26 = v355;
          v75 = v356;
          v131 = v357;
          v132 = v358;
          v94 = v359;
          v95 = v360;
          v92 = v361;
          v93 = v362;
          v90 = v365;
          v91 = v364;
          v27 = v347;
          v129 = v366;
          v130 = v367;
          v87 = v368;
          v88 = v369;
          v85 = v370;
          v86 = v371;
          v83 = v372;
          v84 = v373;
          v89 = v363;
          v82 = v374;
          v81 = v375;
          memcpy(v128, v376, sizeof(v128));
          v126 = v377;
          v127[0] = *v378;
          *(v127 + 15) = *&v378[15];
          v79 = *&v378[31];
          v80 = *&v378[47];
          v78 = v379;
          v28 = v380;
          goto LABEL_31;
        case 12:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          sub_18AF7E524(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v23 = v381;
          v135[6] = v381[7];
          v135[7] = v381[8];
          v135[8] = v381[9];
          v135[9] = v381[10];
          v135[2] = v381[3];
          v135[3] = v381[4];
          v135[4] = v381[5];
          v135[5] = v381[6];
          v134 = v381[0];
          v135[0] = v381[1];
          v135[1] = v381[2];
          v102 = v381[14];
          v103 = v381[11];
          v100 = v381[13];
          v101 = v381[12];
          v24 = v383;
          v133[0] = *v384;
          *(v133 + 3) = *&v384[3];
          v98 = v385;
          v99 = v386;
          v96 = v382;
          v97 = v387;
          v25 = v388;
          v26 = v389;
          v75 = v390;
          v131 = v391;
          v132 = v392;
          v94 = v393;
          v95 = v394;
          v92 = v395;
          v93 = v396;
          v90 = v399;
          v91 = v398;
          v27 = v381;
          v129 = v400;
          v130 = v401;
          v87 = v402;
          v88 = v403;
          v85 = v404;
          v86 = v405;
          v83 = v406;
          v84 = v407;
          v89 = v397;
          v82 = v408;
          v81 = v409;
          memcpy(v128, v410, sizeof(v128));
          v126 = v411;
          v127[0] = *v412;
          *(v127 + 15) = *&v412[15];
          v79 = *&v412[31];
          v80 = *&v412[47];
          v78 = v413;
          v28 = v414;
          goto LABEL_31;
        case 13:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v29 = v753;
          sub_18AF77D10(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v753[7];
          v135[7] = v753[8];
          v135[8] = v753[9];
          v135[9] = v753[10];
          v135[2] = v753[3];
          v135[3] = v753[4];
          v135[4] = v753[5];
          v135[5] = v753[6];
          v134 = v753[0];
          v135[0] = v753[1];
          v135[1] = v753[2];
          v102 = v753[14];
          v103 = v753[11];
          v100 = v753[13];
          v101 = v753[12];
          v14 = v755;
          v133[0] = *v756;
          *(v133 + 3) = *&v756[3];
          v98 = v757;
          v99 = v758;
          v96 = v754;
          v97 = v759;
          v16 = v761;
          v75 = v762;
          v131 = v763;
          v132 = v764;
          v94 = v765;
          v95 = v766;
          v92 = v767;
          v93 = v768;
          v30 = v760;
          v89 = v769;
          v90 = v771;
          v91 = v770;
          v31 = v753;
          v129 = v772;
          v130 = v773;
          v87 = v774;
          v88 = v775;
          v85 = v776;
          v86 = v777;
          v83 = v778;
          v84 = v779;
          v82 = v780;
          v81 = v781;
          memcpy(v128, v782, sizeof(v128));
          v126 = v783;
          v127[0] = *v784;
          *(v127 + 15) = *&v784[15];
          v79 = *&v784[31];
          v80 = *&v784[47];
          v78 = v785;
          v32 = v786;
          goto LABEL_29;
        case 14:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v719;
          sub_18AF7B968(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v719[7];
          v135[7] = v719[8];
          v135[8] = v719[9];
          v103 = v719[11];
          v135[9] = v719[10];
          v135[2] = v719[3];
          v135[3] = v719[4];
          v135[4] = v719[5];
          v135[5] = v719[6];
          v134 = v719[0];
          v135[0] = v719[1];
          v135[1] = v719[2];
          v101 = v719[12];
          v102 = v719[14];
          v24 = v721;
          v133[0] = *v722;
          *(v133 + 3) = *&v722[3];
          v99 = v724;
          v100 = v719[13];
          v98 = v723;
          v96 = v720;
          v97 = v725;
          v25 = v726;
          v26 = v727;
          v75 = v728;
          v131 = v729;
          v132 = v730;
          v94 = v731;
          v95 = v732;
          v92 = v733;
          v93 = v734;
          v90 = v737;
          v91 = v736;
          v27 = v719;
          v129 = v738;
          v130 = v739;
          v87 = v740;
          v88 = v741;
          v85 = v742;
          v86 = v743;
          v83 = v744;
          v84 = v745;
          v89 = v735;
          v82 = v746;
          v81 = v747;
          memcpy(v128, v748, sizeof(v128));
          v126 = v749;
          v127[0] = *v750;
          *(v127 + 15) = *&v750[15];
          v79 = *&v750[31];
          v80 = *&v750[47];
          v78 = v751;
          v28 = v752;
          goto LABEL_31;
        case 15:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v787;
          sub_18AF79140(&v308, v2, v103, v787);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v787[7];
          v135[7] = v787[8];
          v135[8] = v787[9];
          v103 = v787[11];
          v135[9] = v787[10];
          v135[2] = v787[3];
          v135[3] = v787[4];
          v135[4] = v787[5];
          v135[5] = v787[6];
          v134 = v787[0];
          v135[0] = v787[1];
          v135[1] = v787[2];
          v101 = v787[12];
          v102 = v787[14];
          v24 = v789;
          v133[0] = *v790;
          *(v133 + 3) = *&v790[3];
          v99 = v792;
          v100 = v787[13];
          v98 = v791;
          v96 = v788;
          v97 = v793;
          v25 = v794;
          v26 = v795;
          v75 = v796;
          v131 = v797;
          v132 = v798;
          v94 = v799;
          v95 = v800;
          v92 = v801;
          v93 = v802;
          v90 = v805;
          v91 = v804;
          v27 = v787;
          v129 = v806;
          v130 = v807;
          v87 = v808;
          v88 = v809;
          v85 = v810;
          v86 = v811;
          v83 = v812;
          v84 = v813;
          v89 = v803;
          v82 = v814;
          v81 = v815;
          memcpy(v128, v816, sizeof(v128));
          v126 = v817;
          v127[0] = *v818;
          *(v127 + 15) = *&v818[15];
          v79 = *&v818[31];
          v80 = *&v818[47];
          v78 = v819;
          v28 = v820;
          goto LABEL_31;
        case 16:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v29 = v821;
          sub_18AF8BF70(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v821[7];
          v135[7] = v821[8];
          v135[8] = v821[9];
          v135[9] = v821[10];
          v135[2] = v821[3];
          v135[3] = v821[4];
          v135[4] = v821[5];
          v135[5] = v821[6];
          v134 = v821[0];
          v135[0] = v821[1];
          v135[1] = v821[2];
          v102 = v821[14];
          v103 = v821[11];
          v100 = v821[13];
          v101 = v821[12];
          v14 = v823;
          v133[0] = *v824;
          *(v133 + 3) = *&v824[3];
          v98 = v825;
          v99 = v826;
          v96 = v822;
          v97 = v827;
          v16 = v829;
          v75 = v830;
          v131 = v831;
          v132 = v832;
          v94 = v833;
          v95 = v834;
          v92 = v835;
          v93 = v836;
          v30 = v828;
          v89 = v837;
          v90 = v839;
          v91 = v838;
          v31 = v821;
          v129 = v840;
          v130 = v841;
          v87 = v842;
          v88 = v843;
          v85 = v844;
          v86 = v845;
          v83 = v846;
          v84 = v847;
          v82 = v848;
          v81 = v849;
          memcpy(v128, v850, sizeof(v128));
          v126 = v851;
          v127[0] = *v852;
          *(v127 + 15) = *&v852[15];
          v79 = *&v852[31];
          v80 = *&v852[47];
          v78 = v853;
          v32 = v854;
LABEL_29:
          v77 = v32;
          v76 = *(v29 + 872);
          v17 = v31 + 873;
          v15 = v30;
          break;
        case 17:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v855;
          sub_18AFA3510(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v855[7];
          v135[7] = v855[8];
          v135[8] = v855[9];
          v103 = v855[11];
          v135[9] = v855[10];
          v135[2] = v855[3];
          v135[3] = v855[4];
          v135[4] = v855[5];
          v135[5] = v855[6];
          v134 = v855[0];
          v135[0] = v855[1];
          v135[1] = v855[2];
          v101 = v855[12];
          v102 = v855[14];
          v24 = v857;
          v133[0] = *v858;
          *(v133 + 3) = *&v858[3];
          v99 = v860;
          v100 = v855[13];
          v98 = v859;
          v96 = v856;
          v97 = v861;
          v25 = v862;
          v26 = v863;
          v75 = v864;
          v131 = v865;
          v132 = v866;
          v94 = v867;
          v95 = v868;
          v92 = v869;
          v93 = v870;
          v90 = v873;
          v91 = v872;
          v27 = v855;
          v129 = v874;
          v130 = v875;
          v87 = v876;
          v88 = v877;
          v85 = v878;
          v86 = v879;
          v83 = v880;
          v84 = v881;
          v89 = v871;
          v82 = v882;
          v81 = v883;
          memcpy(v128, v884, sizeof(v128));
          v126 = v885;
          v127[0] = *v886;
          *(v127 + 15) = *&v886[15];
          v79 = *&v886[31];
          v80 = *&v886[47];
          v78 = v887;
          v28 = v888;
          goto LABEL_31;
        case 18:
          *&v79 = v906;
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v67 = v103;
          sub_18AF9E898(&v308, v2, v103, v889);
          v109 = v1027;
          v110 = v1028;
          v111 = v1029;
          sub_18AF9DE60(&v109, v2, v67, &v308);
          v109 = v1027;
          v110 = v1028;
          v111 = v1029;
          sub_18AF6FCC0(&v109);
          v109 = v1027;
          v110 = v1028;
          v111 = v1029;
          sub_18AF9ED1C(&v109, v2, &v891);
          v106 = v1027;
          v107 = v1028;
          v108 = v1029;
          sub_18AF9E318(&v106, v67, &v109);
          if ((v67 & 8) != 0)
          {
            memcpy(v105, v890, 0x401uLL);
            if ((v67 & 0x800) == 0)
            {
              sub_18AFA3C7C(v105, v2);
            }
          }

          else
          {
            memcpy(v105, v890, 0x401uLL);
          }

          v106 = v1027;
          v107 = v1028;
          v108 = v1029;
          sub_18AF4CBF0(&v106, v2, v67 | 0x1BE0, v894);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v894[7];
          v135[7] = v894[8];
          v135[8] = v894[9];
          v103 = v894[11];
          v135[9] = v894[10];
          v135[2] = v894[3];
          v135[3] = v894[4];
          v135[4] = v894[5];
          v135[5] = v894[6];
          v134 = v894[0];
          v135[0] = v894[1];
          v135[1] = v894[2];
          v101 = v894[12];
          v102 = v894[14];
          v133[0] = *v897;
          *(v133 + 3) = *&v897[3];
          v99 = v899;
          v100 = v894[13];
          v98 = v898;
          v96 = v895;
          v97 = v900;
          v15 = v901;
          v33 = v902;
          v75 = v903;
          v131 = v904;
          v132 = v905;
          v68 = *(v79 + 16);
          v94 = *v79;
          v95 = v68;
          v69 = *(v79 + 48);
          v92 = *(v79 + 32);
          v93 = v69;
          v90 = v908;
          v91 = v907;
          v129 = v909;
          v130 = v910;
          v70 = *(v79 + 96);
          v87 = *(v79 + 80);
          v88 = v70;
          v71 = *(v79 + 128);
          v85 = *(v79 + 112);
          v86 = v71;
          v72 = *(v79 + 160);
          v83 = *(v79 + 144);
          v84 = v72;
          v89 = v906[8];
          v82 = v911;
          v81 = v912;
          memcpy(v128, v913, sizeof(v128));
          v126 = v914;
          v127[0] = v915[0];
          *(v127 + 15) = *(v915 + 15);
          v73 = *(v79 + 528);
          v79 = *(v79 + 512);
          v80 = v73;
          v77 = v917;
          v78 = v916;
          v76 = v918;
          v17 = v919;
          v14 = v896;
LABEL_41:
          v16 = v33;
          goto LABEL_8;
        case 20:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          sub_18AF9D8C0(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v177;
          v135[7] = v178;
          v135[8] = v179;
          v103 = v181;
          v135[9] = v180;
          v135[2] = v173;
          v135[3] = v174;
          v135[4] = v175;
          v135[5] = v176;
          v134 = *&v170[159];
          v135[0] = v171;
          v135[1] = v172;
          v101 = v182;
          v102 = v184;
          v14 = v186;
          v133[0] = *v187;
          *(v133 + 3) = *&v187[3];
          v99 = v189;
          v100 = v183;
          v98 = v188;
          v96 = v185;
          v97 = v190;
          v25 = v191;
          v26 = v192;
          v75 = v193;
          v131 = v194;
          v132 = v195;
          v34 = *(v79 + 16);
          v94 = *v79;
          v95 = v34;
          v35 = *(v79 + 48);
          v92 = *(v79 + 32);
          v93 = v35;
          v89 = v196[8];
          v90 = v198;
          v91 = v197;
          v129 = v199;
          v130 = v200;
          v36 = *(v79 + 96);
          v87 = *(v79 + 80);
          v88 = v36;
          v37 = *(v79 + 128);
          v85 = *(v79 + 112);
          v86 = v37;
          v38 = *(v79 + 160);
          v83 = *(v79 + 144);
          v84 = v38;
          v82 = v201;
          v81 = v202;
          memcpy(v128, v203, sizeof(v128));
          v126 = v204;
          v127[0] = v205[0];
          *(v127 + 15) = *(v205 + 15);
          v39 = *(v79 + 528);
          v79 = *(v79 + 512);
          v80 = v39;
          v77 = v207;
          v78 = v206;
          v76 = v208;
          v17 = v209;
          goto LABEL_32;
        default:
          v308 = v1027;
          v309 = v1028;
          v310 = v1029;
          v23 = v533;
          sub_18AF87F4C(&v308);
          sub_18AF6EE98(v2);
          sub_18AE920D8(&v1027);
          v135[6] = v533[7];
          v135[7] = v533[8];
          v135[8] = v533[9];
          v135[9] = v533[10];
          v135[2] = v533[3];
          v135[3] = v533[4];
          v135[4] = v533[5];
          v135[5] = v533[6];
          v134 = v533[0];
          v135[0] = v533[1];
          v135[1] = v533[2];
          v102 = v533[14];
          v103 = v533[11];
          v100 = v533[13];
          v101 = v533[12];
          v24 = v535;
          v133[0] = *v536;
          *(v133 + 3) = *&v536[3];
          v98 = v537;
          v99 = v538;
          v96 = v534;
          v97 = v539;
          v25 = v540;
          v26 = v541;
          v75 = v542;
          v131 = v543;
          v132 = v544;
          v94 = v545;
          v95 = v546;
          v92 = v547;
          v93 = v548;
          v90 = v551;
          v91 = v550;
          v27 = v533;
          v129 = v552;
          v130 = v553;
          v87 = v554;
          v88 = v555;
          v85 = v556;
          v86 = v557;
          v83 = v558;
          v84 = v559;
          v89 = v549;
          v82 = v560;
          v81 = v561;
          memcpy(v128, v562, sizeof(v128));
          v126 = v563;
          v127[0] = *v564;
          *(v127 + 15) = *&v564[15];
          v79 = *&v564[31];
          v80 = *&v564[47];
          v78 = v565;
          v28 = v566;
LABEL_31:
          v77 = v28;
          v76 = *(v23 + 872);
          v17 = v27 + 873;
          v14 = v24;
LABEL_32:
          v16 = v26;
          v15 = v25;
          break;
      }
    }

    else
    {
      if (!v13)
      {
        v308 = v1027;
        v309 = v1028;
        v310 = v1029;
        LOBYTE(v889[0]) = BYTE4(v1027) & 1;
        LOBYTE(v109) = BYTE12(v1027) & 1;
        sub_18AF9FFEC(&v308);
        sub_18AF6EE98(v2);
        sub_18AE920D8(&v1027);
        v135[6] = v422;
        v135[7] = v423;
        v135[8] = v424;
        v103 = v426;
        v135[9] = v425;
        v135[2] = v418;
        v135[3] = v419;
        v135[4] = v420;
        v135[5] = v421;
        v134 = v415;
        v135[0] = v416;
        v135[1] = v417;
        v101 = v427;
        v102 = v429;
        v14 = v431;
        v133[0] = *v432;
        *(v133 + 3) = *&v432[3];
        v99 = v434;
        v100 = v428;
        v98 = v433;
        v96 = v430;
        v97 = v435;
        v15 = v436;
        v16 = v437;
        v75 = v438;
        v131 = v439;
        v132 = v440;
        v94 = v441;
        v95 = v442;
        v92 = v443;
        v93 = v444;
        v90 = v447;
        v91 = v446;
        v129 = v448;
        v130 = v449;
        v87 = v450;
        v88 = v451;
        v85 = v452;
        v86 = v453;
        v83 = v454;
        v84 = v455;
        v89 = v445;
        v82 = v456;
        v81 = v457;
        memcpy(v128, v458, sizeof(v128));
        v126 = v459;
        v127[0] = *v460;
        *(v127 + 15) = *&v460[15];
        v79 = *&v460[31];
        v80 = *&v460[47];
        v77 = v462;
        v78 = v461;
        v76 = v463;
        v17 = v464;
LABEL_8:
        v21 = *(v17 + 6);
        v22 = *(v17 + 7);
LABEL_34:
        v122 = v21;
        v123 = v22;
        v124 = *(v17 + 8);
        v125 = *(v17 + 18);
        v40 = *(v17 + 3);
        v118 = *(v17 + 2);
        v119 = v40;
        v41 = *(v17 + 5);
        v120 = *(v17 + 4);
        v121 = v41;
        v42 = *(v17 + 1);
        v116 = *v17;
        v117 = v42;
        goto LABEL_35;
      }

      v308 = v1027;
      v309 = v1028;
      v310 = v1029;
      sub_18AF82D48(&v308);
      sub_18AF6EE98(v2);
      sub_18AE920D8(&v1027);
      v135[6] = v608;
      v135[7] = v609;
      v135[8] = v610;
      v135[9] = v611;
      v135[2] = v604;
      v135[3] = v605;
      v135[4] = v606;
      v135[5] = v607;
      v134 = v601;
      v135[0] = v602;
      v135[1] = v603;
      v102 = v615;
      v103 = v612;
      v100 = v614;
      v101 = v613;
      v133[0] = *v618;
      *(v133 + 3) = *&v618[3];
      v98 = v619;
      v99 = v620;
      v96 = v616;
      v97 = v621;
      v16 = v623;
      v75 = v624;
      v131 = v625;
      v132 = v626;
      v94 = v627;
      v95 = v628;
      v92 = v629;
      v93 = v630;
      v90 = v633;
      v91 = v632;
      v129 = v634;
      v130 = v635;
      v87 = v636;
      v88 = v637;
      v85 = v638;
      v86 = v639;
      v83 = v640;
      v84 = v641;
      v89 = v631;
      v82 = v642;
      v81 = v643;
      memcpy(v128, v644, sizeof(v128));
      v126 = v645;
      v127[0] = *v646;
      *(v127 + 15) = *&v646[15];
      v79 = *&v646[31];
      v80 = *&v646[47];
      v77 = v648;
      v78 = v647;
      v76 = v649;
      v15 = v622;
      v17 = v650;
      v14 = v617;
    }

    v21 = *(v17 + 6);
    v22 = *(v17 + 7);
    goto LABEL_34;
  }

  v308 = v1027;
  v309 = v1028;
  v310 = v1029;
  sub_18AF87F4C(&v308);
  sub_18AF6EE98(v2);
  sub_18AE920D8(&v1027);
  v135[6] = v975;
  v135[7] = v976;
  v135[8] = v977;
  v103 = v979;
  v135[9] = v978;
  v135[2] = v971;
  v135[3] = v972;
  v135[4] = v973;
  v135[5] = v974;
  v134 = *&v968[159];
  v135[0] = v969;
  v135[1] = v970;
  v101 = v980;
  v102 = v982;
  v14 = v984;
  v133[0] = *v985;
  *(v133 + 3) = *&v985[3];
  v99 = v987;
  v100 = v981;
  v98 = v986;
  v96 = v983;
  v97 = v988;
  v16 = v990;
  v75 = v991;
  v131 = v992;
  v132 = v993;
  v94 = v994;
  v95 = v995;
  v92 = v996;
  v93 = v997;
  v90 = v1000;
  v91 = v999;
  v129 = v1001;
  v130 = v1002;
  v87 = v1003;
  v88 = v1004;
  v85 = v1005;
  v86 = v1006;
  v83 = v1007;
  v84 = v1008;
  v89 = v998;
  v82 = v1009;
  v81 = v1010;
  memcpy(v128, v1011, sizeof(v128));
  v126 = v1012;
  v127[0] = *v1013;
  *(v127 + 15) = *&v1013[15];
  v79 = *&v1013[31];
  v80 = *&v1013[47];
  v15 = v989;
  v77 = v1015;
  v78 = v1014;
  v76 = v1016;
  v122 = v1023;
  v123 = v1024;
  v124 = v1025;
  v125 = v1026;
  v118 = v1019;
  v119 = v1020;
  v120 = v1021;
  v121 = v1022;
  v116 = v1017;
  v117 = v1018;
LABEL_35:
  v43 = v135[6];
  v44 = v135[8];
  *(v8 + 128) = v135[7];
  *(v8 + 144) = v44;
  v45 = v135[2];
  v46 = v135[4];
  *(v8 + 64) = v135[3];
  *(v8 + 80) = v46;
  *(v8 + 96) = v135[5];
  *(v8 + 112) = v43;
  v47 = v135[0];
  *v8 = v134;
  *(v8 + 16) = v47;
  *(v8 + 32) = v135[1];
  *(v8 + 48) = v45;
  v49 = v102;
  v48 = v103;
  *(v8 + 160) = v135[9];
  *(v8 + 176) = v48;
  v50 = v100;
  *(v8 + 192) = v101;
  *(v8 + 208) = v50;
  *(v8 + 224) = v49;
  *(v8 + 240) = v96;
  *(v8 + 248) = v14;
  *(v8 + 249) = v133[0];
  *(v8 + 252) = *(v133 + 3);
  v51 = v99;
  *(v8 + 256) = v98;
  *(v8 + 272) = v51;
  *(v8 + 288) = v97;
  *(v8 + 296) = v15;
  *(v8 + 304) = v16;
  *(v8 + 308) = v75;
  *(v8 + 309) = v131;
  *(v8 + 311) = v132;
  v52 = v104;
  v53 = v95;
  *v104 = v94;
  v52[1] = v53;
  v54 = v93;
  v52[2] = v92;
  v52[3] = v54;
  *(v8 + 376) = v89;
  v55 = v90;
  *(v8 + 384) = v91;
  *(v8 + 385) = v55;
  *(v8 + 386) = v129;
  *(v8 + 390) = v130;
  v56 = v88;
  v52[5] = v87;
  v52[6] = v56;
  v57 = v86;
  v52[7] = v85;
  v52[8] = v57;
  v58 = v84;
  v52[9] = v83;
  v52[10] = v58;
  *(v8 + 488) = v82;
  *(v8 + 496) = v81;
  memcpy((v8 + 498), v128, 0x117uLL);
  v59 = v127[0];
  *(v8 + 777) = v126;
  *(v8 + 793) = v59;
  *(v8 + 808) = *(v127 + 15);
  v60 = v80;
  v52[32] = v79;
  v52[33] = v60;
  v61 = v77;
  *(v8 + 856) = v78;
  *(v8 + 864) = v61;
  *(v8 + 872) = v76;
  v62 = v123;
  *(v8 + 969) = v122;
  *(v8 + 985) = v62;
  *(v8 + 1001) = v124;
  *(v8 + 1017) = v125;
  v63 = v119;
  *(v8 + 905) = v118;
  *(v8 + 921) = v63;
  v64 = v121;
  *(v8 + 937) = v120;
  *(v8 + 953) = v64;
  result = v116;
  v66 = v117;
  *(v8 + 873) = v116;
  *(v8 + 889) = v66;
  return result;
}

uint64_t GlassMaterialProvider.resolveProvider(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = _s17ResolvedCompositeV3KeyVMa(0);
  MEMORY[0x1EEE9AC00](v99);
  *&v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v102);
  v107 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v96 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v96 - v10;
  v12 = sub_18AFCBB34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v96 - v16;
  v18 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v18);
  v109 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v96 - v24;
  v103 = type metadata accessor for GlassMaterialProvider.State(0);
  sub_18AE7B10C(a1 + v103[6], v22, _s11EnvironmentVMa);
  v104 = a1;
  sub_18AE83A40(a1, v11, &qword_1EA99B5F0, &qword_18AFDAF70);
  v25 = *(v13 + 48);
  v26 = v25(v11, 1, v12);
  v108 = v18;
  if (v26 == 1)
  {
    (*(v13 + 16))(v17, &v22[*(v18 + 20)], v12);
    v27 = v12;
    if (v25(v11, 1, v12) != 1)
    {
      sub_18AE7BA80(v11, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    v27 = v12;
  }

  v28 = v108;
  (*(v13 + 40))(&v22[v108[5]], v17, v27);
  v29 = v105;
  sub_18AFB6838(v22, v105, _s11EnvironmentVMa);
  v30 = v100;
  v31 = *(v100 + 16);
  v32 = *(v100 + 24);
  v33 = v109;
  v34 = v13;
  if (*(v100 + 32) != 1)
  {
    v36 = *(v100 + 16);
    if (v32 < v31)
    {
      v36 = *(v100 + 24);
    }

    goto LABEL_11;
  }

  v35 = 1;
  if (*&v31 <= 1uLL)
  {
    if (*&v31 | *&v32)
    {
      v36 = 0x4064C00000000000;
    }

    else
    {
      v36 = 0x4048000000000000;
    }

    goto LABEL_11;
  }

  if (!(*&v31 ^ 2 | *&v32))
  {
    v36 = 0x406929999999999ALL;
LABEL_11:
    v35 = 0;
    goto LABEL_12;
  }

  v36 = 0;
LABEL_12:
  v37 = v29 + v28[11];
  *v37 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  *(v37 + 25) = v35;
  v38 = *(v104 + v103[7]);
  sub_18AE83A40(v29 + v28[8], v8, &qword_1EA99BBF0, &unk_18AFDFE20);
  v39 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  if ((*(*(v39 - 8) + 48))(v8, 1, v39) == 1)
  {
    sub_18AE7BA80(v8, &qword_1EA99BBF0, &unk_18AFDFE20);
  }

  else
  {
    *&v111 = v30[5];
    sub_18AFB5FE8(v30, v29, &v111, v38, v114);
    sub_18AFB6938(v8, type metadata accessor for GlassMaterialProvider.ResolvedStyle);
    if (*&v114[0] >> 60 != 15 || (*(&v114[0] + 1) & 0xFE00000000) != 0xFE00000000)
    {
      goto LABEL_17;
    }
  }

  *&v111 = v30[5];
  sub_18AE834E4(v29, v38, v114);
LABEL_17:
  v111 = v114[0];
  v112 = v114[1];
  v113 = v114[2];
  v40 = v107;
  sub_18AE7B10C(v30, v107, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7B10C(v29, v33, _s11EnvironmentVMa);
  v41 = *(v104 + v103[8]);
  v42 = v104 + v103[9];
  v43 = *(v42 + 8);
  v104 = *v42;
  v103 = v43;
  LODWORD(v100) = *(v42 + 16);
  v44 = *v40;
  v45 = v111;
  LODWORD(v43) = DWORD2(v111);
  v46 = BYTE12(v111);
  *(a2 + 32) = *v40;
  *(a2 + 40) = v45;
  *(a2 + 52) = v46;
  *(a2 + 48) = v43;
  v47 = v28[5];
  v48 = *(v34 + 16);
  v49 = v106;
  v50 = v106 + *(v99 + 20);
  v99 = v34 + 16;
  v97 = v48;
  v48(v50, (v33 + v47), v27);
  v51 = v113;
  v49[1] = v112;
  v49[2] = v51;
  *v49 = v111;
  v52 = v33 + v28[10];
  v53 = *(v52 + 4);
  v101 = v27;
  v98 = v47;
  if (v53)
  {
    v54 = v96;
    (*(v34 + 104))(v96, *MEMORY[0x1E697DBA8], v27);
    sub_18AE90E8C(&v111, v110);
    sub_18AE90E8C(&v111, v110);

    sub_18AE89F60(v44);
    sub_18AFB68A0(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    v55 = sub_18AFCDDF4();
    (*(v34 + 8))(v54, v27);
    if (v55)
    {
      v56 = 0.0;
    }

    else
    {
      v56 = 1.0;
    }
  }

  else
  {
    v56 = *v52;
    sub_18AE90E8C(&v111, v110);
    sub_18AE90E8C(&v111, v110);

    sub_18AE89F60(v44);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC90, &qword_18AFDFE30);
  v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BC98, &qword_18AFDFE38) - 8);
  v58 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_18AFD8390;
  v60 = v59 + v58;
  v61 = v57[14];
  v62 = v106;
  sub_18AE7B10C(v106, v60, _s17ResolvedCompositeV3KeyVMa);
  *(v60 + v61) = 0x3FF0000000000000;
  v63 = sub_18AFABA58(v59);
  swift_setDeallocating();
  sub_18AE7BA80(v60, &qword_1EA99BC98, &qword_18AFDFE38);
  swift_deallocClassInstance();
  sub_18AFB6938(v62, _s17ResolvedCompositeV3KeyVMa);
  *a2 = v63;
  *(a2 + 8) = v56;
  *(a2 + 88) = v41;
  v64 = v44 >> 62;
  v65 = *(v40 + 9);
  if (!(v44 >> 62))
  {
    v71 = 0x100000000;
    if (!*(v44 + 20))
    {
      v71 = 0;
    }

    v68 = v71 | *(v44 + 16) | (v65 << 40);
    v66 = v108;
    v67 = v109;
    goto LABEL_37;
  }

  v66 = v108;
  v67 = v109;
  if (v64 == 3)
  {
    if (v44 == 0xC000000000000018 || v44 == 0xC000000000000020)
    {
      v68 = 0x200000000000;
      goto LABEL_37;
    }

    if (v44 == 0xC000000000000038)
    {
      v68 = 0x220000000000;
LABEL_37:
      *(a2 + 96) = v68;
      *(a2 + 100) = WORD2(v68);
      goto LABEL_38;
    }
  }

  *(a2 + 96) = 0;
  *(a2 + 100) = 7936;
  if (v64 == 1 && (*((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) & 1) == 0)
  {
    v70 = *((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v69 = *((v44 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_18AFB6938(v105, _s11EnvironmentVMa);
    *(a2 + 16) = v70;
    *(a2 + 24) = v69;
    goto LABEL_42;
  }

LABEL_38:
  sub_18AFCDCE4();
  v73 = v72;
  v75 = v74;
  sub_18AFB6938(v105, _s11EnvironmentVMa);
  *(a2 + 16) = v73;
  *(a2 + 24) = v75;
  if (v64 == 3)
  {
    if (v44 == 0xC000000000000018)
    {
      *&v106 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0x4050000000000000;
      v79 = 0x4050000000000000;
      goto LABEL_48;
    }

    if (v44 == 0xC000000000000020)
    {
      *&v106 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0x4064800000000000;
      v79 = 0x4064800000000000;
      goto LABEL_48;
    }
  }

LABEL_42:
  if (v65 == 6)
  {
    *&v106 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0x4020000000000000;
    v79 = 0x4020000000000000;
  }

  else if (v65 == 3)
  {
    *&v106 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0x4028000000000000;
    v79 = 0x4028000000000000;
  }

  else
  {
    v80 = &v67[v66[11]];
    v78 = *v80;
    *&v106 = *(v80 + 1);
    v79 = *(v80 + 2);
    v76 = v80[24];
    v77 = v80[25];
  }

LABEL_48:
  v81 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  v83 = v81[12];
  v82 = v81[13];
  v84 = a2 + v81[15];
  v85 = a2 + v81[17];
  v86 = v106;
  *(a2 + 56) = v78;
  *(a2 + 64) = v86;
  *(a2 + 72) = v79;
  *(a2 + 80) = v76;
  *(a2 + 81) = v77;
  v87 = v109;
  v97(a2 + v81[11], &v109[v98], v101);
  v88 = v102;
  v89 = v107;
  *(a2 + v83) = *(v107 + *(v102 + 72));
  v106 = *(v89 + *(v88 + 76));
  *(a2 + v82) = v106;
  sub_18AFB6838(v89, a2 + v81[14], type metadata accessor for GlassMaterialProvider.Configuration);
  v90 = v87 + v108[7];
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = *(v90 + 16);

  sub_18AFB6938(v87, _s11EnvironmentVMa);
  sub_18AE920D8(&v111);
  *v84 = v91;
  *(v84 + 8) = v92;
  *(v84 + 16) = v93;
  result = sub_18AFA8DB8(SDWORD2(v112));
  *(a2 + v81[16]) = result;
  v95 = v103;
  *v85 = v104;
  *(v85 + 8) = v95;
  *(v85 + 16) = v100;
  return result;
}

uint64_t sub_18AE82D7C(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_18AE82DD8(uint64_t a1)
{
  v3 = sub_18AFCC804();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCC824();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC454();
  v11 = sub_18AFCC814();
  v12 = *(v11 + 16);
  if (v12)
  {
    v30 = v10;
    v31 = v8;
    v32 = v1;
    v33 = v7;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v36 = v14;
    v15 = *(v13 + 64);
    v29 = v11;
    v16 = v11 + ((v15 + 32) & ~v15);
    v17 = *(v13 + 56);
    v34 = a1;
    v35 = v17;
    v18 = (v13 - 8);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      v36(v6, v16, v3);
      v20 = sub_18AFCC7E4();
      sub_18AFCC7F4();
      v37 = v38;
      v21 = v39;
      (*v18)(v6, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_18AE977B4(0, *(v19 + 2) + 1, 1, v19);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_18AE977B4((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      v24 = &v19[32 * v23];
      *(v24 + 4) = v20;
      *(v24 + 40) = v37;
      *(v24 + 14) = v21;
      v16 += v35;
      --v12;
    }

    while (v12);

    v7 = v33;
    a1 = v34;
    v8 = v31;
    v10 = v30;
    if (*(v19 + 2))
    {
      goto LABEL_9;
    }

LABEL_11:
    v25 = type metadata accessor for GlassMaterialProvider.Configuration(0);
    MEMORY[0x1EEE9AC00](v25);
    *(&v29 - 2) = a1;
    v27 = sub_18AE7E670(sub_18AE91FAC, (&v29 - 4), v26);
    (*(v8 + 8))(v10, v7);

    return v27;
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v8 + 8))(v10, v7);
  return v19;
}

uint64_t sub_18AE83120@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v33 = type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_18AFCBB34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  v35 = v2;
  sub_18AE83A40(v2 + v18, v10, &qword_1EA99B5F0, &qword_18AFDAF70);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) != 1)
  {
    v26 = *(v12 + 32);
    v26(v17, v10, v11);
    v26(a2, v17, v11);
LABEL_5:
    v25 = 0;
    return (*(v12 + 56))(a2, v25, 1, v11);
  }

  sub_18AE7BA80(v10, &qword_1EA99B5F0, &qword_18AFDAF70);
  v20 = type metadata accessor for GlassMaterialProvider.State(0);
  v21 = v36;
  v22 = v36 + *(v20 + 24);
  v23 = _s11EnvironmentVMa(0);
  v24 = v22 + *(v23 + 40);
  if ((*(v24 + 4) & 1) == 0)
  {
    v28 = v23;
    v29 = *v24;
    sub_18AE83A40(v21, v7, &qword_1EA99B5F0, &qword_18AFDAF70);
    if (v19(v7, 1, v11) == 1)
    {
      sub_18AE7BA80(v7, &qword_1EA99B5F0, &qword_18AFDAF70);
      v25 = 1;
      return (*(v12 + 56))(a2, v25, 1, v11);
    }

    v30 = *(v12 + 32);
    v30(v14, v7, v11);
    v31 = *(v28 + 20);
    v32 = v34;
    (*(v12 + 16))(v34 + *(v33 + 20), v22 + v31, v11);
    *v32 = v29;
    sub_18AF48428(&v38);
    v37 = v38;
    GlassMaterialProvider.HysteresisRange.modifyColorScheme(_:context:)(v14, v32);
    sub_18AFB6938(v32, type metadata accessor for GlassMaterialProvider.HysteresisRange.Context);
    v30(a2, v14, v11);
    goto LABEL_5;
  }

  v25 = 1;
  return (*(v12 + 56))(a2, v25, 1, v11);
}

uint64_t sub_18AE834E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  sub_18AFA9F00(&v54);
  v15 = v54;
  v16 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v17 = *(v3 + 9);
  v52 = *(v3 + *(v16 + 44));
  v53 = v17;
  if ((v15 & 0x20) == 0)
  {
    v18 = *v3;
    v19 = *v3 >> 62;
    v49 = a1;
    if (v19 <= 1)
    {
      if (!v19)
      {
        v20 = *(v18 + 16);
        v21 = *(v18 + 20);
        v22 = *(v18 + 24);
        v23 = *(v18 + 28);
        if (v21)
        {
          v24 = 0x100000000;
        }

        else
        {
          v24 = 0;
        }

        v50 = v24 | v20;
        if (v23)
        {
          v25 = 0x100000000;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25 | v22;
        goto LABEL_26;
      }

      v26 = 0xC000000000;
      v34 = 6;
      goto LABEL_25;
    }

    if (v19 == 2)
    {
      v31 = swift_projectBox();
      sub_18AE7B03C(v31, v9, _s13ConfigurationV3MixVMa);
      sub_18AFAB3B0(v9, a1);
      v50 = v32;
      v26 = v33;
      sub_18AFAC05C(v9, _s13ConfigurationV3MixVMa);
LABEL_26:
      v35 = a2;
      v48 = sub_18AE83CAC(v3);
      v36 = *(v3 + 9);
      v37 = *(v3 + 8);
      sub_18AE7B03C(v49, v11, _s11EnvironmentVMa);
      if (!v37)
      {
        v37 = v11[*(v51 + 84)];
      }

      sub_18AFAC05C(v11, _s11EnvironmentVMa);
      if (v37 == 1)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2 * (v37 == 2);
      }

      v29 = *(v3 + 48);
      v38 = *(v3 + *(v16 + 48));
      v39 = sub_18AE83B80(v3);
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }
      }

      else if (v38)
      {
        v30 = 0;
      }

      else
      {
        v30 = 2 * (v15 & 1);
      }

      a2 = v35;
      v54 = v15;
      v40 = v50;
      v43 = sub_18AF58948(v50, v26 & 0xFFFFFFFFFFLL, a2, &v54, v30);
      result = (v43 | v39) & ~v48;
      v42 = v53;
      goto LABEL_43;
    }

    v50 = 0;
    v34 = __ROR8__(v18 + 0x4000000000000000, 3);
    v26 = 0xC000000000;
    switch(v34)
    {
      case 1:
        v34 = 3;
        goto LABEL_25;
      case 2:
        v34 = 9;
        goto LABEL_25;
      case 3:
        v34 = 4;
        goto LABEL_25;
      case 4:
      case 7:
        goto LABEL_25;
      case 5:
      case 6:
        v34 = 14;
        goto LABEL_25;
      case 8:
        v34 = 2;
        goto LABEL_25;
      case 9:
        v34 = 16;
        goto LABEL_25;
      case 10:
      case 13:
        goto LABEL_73;
      case 11:
        goto LABEL_26;
      case 12:
        v34 = 8;
        goto LABEL_25;
      case 14:
        v50 = 0;
        v26 = 0x4000000000;
        goto LABEL_26;
      case 15:
        v26 = 0x4000000000;
        v34 = 1;
        goto LABEL_25;
      case 16:
        v34 = 10;
        goto LABEL_25;
      case 17:
        v34 = 11;
        goto LABEL_25;
      case 18:
        v34 = 12;
        goto LABEL_25;
      case 19:
        v34 = 13;
        goto LABEL_25;
      case 20:
        v34 = 15;
        goto LABEL_25;
      case 21:
        goto LABEL_74;
      case 22:
        goto LABEL_72;
      default:
        if ((v15 & 0x40) != 0 && !v53)
        {
          goto LABEL_56;
        }

        if (v53 > 21)
        {
          if (v53 != 22)
          {
            if (v53 == 25)
            {
LABEL_72:
              v34 = 20;
              goto LABEL_25;
            }

            goto LABEL_73;
          }

LABEL_74:
          v34 = 19;
        }

        else
        {
          if (v53 != 9)
          {
            if (v53 == 10)
            {
LABEL_56:
              v34 = 17;
              goto LABEL_25;
            }

LABEL_73:
            v34 = 1;
            goto LABEL_25;
          }

          v34 = 18;
        }

LABEL_25:
        v50 = v34;
        goto LABEL_26;
    }
  }

  v27 = *(v3 + 8);
  sub_18AE7B03C(a1, v14, _s11EnvironmentVMa);
  if (!v27)
  {
    v27 = v14[*(v51 + 84)];
  }

  sub_18AFAC05C(v14, _s11EnvironmentVMa);
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = 2 * (v27 == 2);
  }

  v29 = *(v3 + 48);
  if (*(v3 + *(v16 + 48)) > 1u)
  {
    if (*(v3 + *(v16 + 48)) == 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }
  }

  else if (*(v3 + *(v16 + 48)))
  {
    v30 = 0;
  }

  else
  {
    v30 = 2 * (v15 & 1);
  }

  v54 = v15;
  v40 = 5;
  v26 = 0xC000000000;
  result = sub_18AF58948(5, 0xC000000000uLL, a2, &v54, v30);
  v42 = v53;
  v36 = v53;
LABEL_43:
  *a3 = v40;
  v44 = (v42 - 1) < 3;
  *(a3 + 8) = v26;
  v45 = v52;
  *(a3 + 12) = BYTE4(v26);
  if (v45 == 3)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  *(a3 + 13) = v36;
  *(a3 + 14) = v28;
  if ((v44 & (v15 >> 6)) != 0)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46;
  }

  *(a3 + 16) = v15;
  *(a3 + 24) = a2;
  *(a3 + 32) = v29;
  *(a3 + 33) = v47;
  *(a3 + 34) = v30;
  *(a3 + 40) = result;
  return result;
}

uint64_t sub_18AE83A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_18AE83AA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_18AE83B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 48))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AE83B80(unint64_t *a1)
{
  v2 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1 >> 62;
  if (v6 < 2)
  {
    return 0;
  }

  if (v6 == 2)
  {
    v7 = v3;
    v8 = swift_projectBox();
    sub_18AF5A08C(v8, v5, _s13ConfigurationV3MixVMa);
    v9 = sub_18AE83B80(v5);
    v10 = sub_18AE83B80((v5 + *(v7 + 20)));
    sub_18AF5A0F4(v5, _s13ConfigurationV3MixVMa);
    return v10 | v9;
  }

  v12 = *(a1 + 9);
  v13 = __ROR8__(*a1 + 0x4000000000000000, 3);
  if ((v13 - 3) < 0x14 || v13 == 0)
  {
    return 0;
  }

  if (v13 != 1)
  {
    return 1;
  }

  if (v12 == 26 || v12 == 5)
  {
    return 64;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AE83CAC(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 40);
  v6 = 80;
  if ((v5 & 0x1000) == 0)
  {
    v6 = 64;
  }

  if ((v5 & 0x2000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(a1 + 40) & 0x1000uLL) >> 8;
  }

  if (*a1 >> 62 != 3)
  {
    goto LABEL_35;
  }

  v8 = __ROR8__(*a1 + 0x4000000000000000, 3);
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v12 = *(a1 + 9);
        if (v12 == 21 || v12 == 8)
        {
          goto LABEL_20;
        }
      }

LABEL_35:
      if (qword_1ED56A8C0 != -1)
      {
        swift_once();
      }

      v15 = sub_18AFA46B0();
      v11 = v7 | 0x10;
      if ((v15 & 1) == 0)
      {
        v11 = v7;
      }

      goto LABEL_39;
    }

    v14 = *(a1 + 9);
    if ((v14 - 27) < 3)
    {
      v11 = 80;
      goto LABEL_39;
    }

    if (v14 != 23)
    {
      if (v14 != 24)
      {
        goto LABEL_35;
      }

      v7 += 1098272;
    }

    v11 = v7 | 0x40;
    goto LABEL_39;
  }

  if (v8 == 2)
  {
    if (qword_1ED56A8C0 != -1)
    {
      swift_once();
    }

    v13 = sub_18AFA461C();
    goto LABEL_26;
  }

  if (v8 != 4)
  {
    if (v8 == 3)
    {
      v9 = v7 | 0x600;
      if (qword_1ED56A8C0 != -1)
      {
        swift_once();
      }

      v10 = sub_18AFA4588();
      v11 = 1616;
      if (v10)
      {
        v11 = v9;
      }

      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_20:
  if (qword_1ED56A8C0 != -1)
  {
    swift_once();
  }

  v13 = sub_18AFA4588();
LABEL_26:
  v11 = 80;
  if (v13)
  {
    v11 = v7;
  }

LABEL_39:
  if ((v5 & 0x10) != 0)
  {
    v11 |= 0x2001uLL;
  }

  if ((~v11 & 0xE245F) != 0 && (v5 & 4) != 0)
  {
    v11 |= 0xE245FuLL;
  }

  if ((~v11 & 0x10C320) != 0 && (v5 & 8) != 0)
  {
    v11 |= 0x10C320uLL;
  }

  v18 = v11 | (2 * v5) & 0x100000;
  v19 = (v11 >> 19) & 1;
  if ((v5 & 0x40000) == 0)
  {
    LODWORD(v19) = 1;
  }

  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 | 0x80000;
  }

  sub_18AF5A08C(a1, v4, type metadata accessor for GlassMaterialProvider.Configuration);
  v21 = v4[*(v2 + 48)];
  v22 = *(v4 + 5);
  sub_18AF5A0F4(v4, type metadata accessor for GlassMaterialProvider.Configuration);
  if ((v21 - 2) >= 2)
  {
    if (v21)
    {
      if ((v5 & 0x10000) == 0)
      {
        return v20;
      }
    }

    else if (v5 & 0x10000) == 0 || (v22)
    {
      return v20;
    }

    return v20 | 0x100;
  }

  return v20;
}

uint64_t sub_18AE83FF0(uint64_t result, unint64_t a2)
{
  if (((a2 >> 38) & 3) == 2)
  {
  }

  return v2;
}

unint64_t sub_18AE84004()
{
  result = qword_1ED56AD68;
  if (!qword_1ED56AD68)
  {
    sub_18AFCBB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD68);
  }

  return result;
}

uint64_t sub_18AE8405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v548 = a1;
  v539 = a2;
  v3 = sub_18AFCD8B4();
  v520 = *(v3 - 8);
  v521 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v519 = &v476 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v518 = &v476 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B718, &qword_18AFDBED8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v507 = &v476 - v8;
  v523 = sub_18AFCDAC4();
  v531 = *(v523 - 8);
  MEMORY[0x1EEE9AC00](v523);
  v508 = &v476 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v522 = &v476 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B720, &qword_18AFDBEE0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v540 = &v476 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v533 = (&v476 - v15);
  v543 = _s14ResolvedRecipeVMa(0);
  MEMORY[0x1EEE9AC00](v543);
  v514 = &v476 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v532 = (&v476 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v541 = &v476 - v20;
  v21 = sub_18AFCBB34();
  v536 = *(v21 - 8);
  v537 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v546 = &v476 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v555 = sub_18AFCD9D4();
  v554 = *(v555 - 8);
  MEMORY[0x1EEE9AC00](v555);
  v511 = &v476 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v516 = &v476 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v476 - v27;
  v29 = sub_18AFCD774();
  v561 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v529 = &v476 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v527 = &v476 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v526 = &v476 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v512 = &v476 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v525 = &v476 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v495 = &v476 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v494 = &v476 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v480 = &v476 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v498 = &v476 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v517 = &v476 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v530 = &v476 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v493 = &v476 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v506 = &v476 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v492 = &v476 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v505 = &v476 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v504 = &v476 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v503 = &v476 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v490 = &v476 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v479 = &v476 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v497 = &v476 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v488 = &v476 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v476 = &v476 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v486 = &v476 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v501 = &v476 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v499 = &v476 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v542 = (&v476 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v502 = &v476 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v487 = &v476 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v524 = &v476 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v513 = &v476 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v545 = &v476 - v90;
  v551 = sub_18AFCCCF4();
  v558 = *(v551 - 8);
  MEMORY[0x1EEE9AC00](v551);
  v92 = &v476 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_18AFCD704();
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v478 = (&v476 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v96);
  v98 = (&v476 - v97);
  v99 = sub_18AFCDA04();
  v534 = *(v99 - 8);
  v535 = v99;
  MEMORY[0x1EEE9AC00](v99);
  v509 = &v476 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v101);
  v510 = &v476 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v496 = &v476 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v515 = &v476 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v489 = &v476 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v477 = &v476 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v485 = &v476 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v500 = &v476 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v544 = &v476 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v119 = &v476 - v118;
  v120 = sub_18AE8C6D8(0, 2, 0, MEMORY[0x1E69E7CC0]);
  v619 = v120;
  v550 = type metadata accessor for GlassMaterialProvider.Resolved(0);
  v121 = *(v2 + v550[12]);
  v557 = v2;
  v547 = v28;
  v122 = v561;
  v556 = v29;
  v559 = v93;
  v552 = v94;
  v553 = v98;
  v549 = v92;
  v528 = v121;
  if (v121)
  {
    (*(*v121 + 96))(&v626);
    sub_18AF5A1A0(&v626, &v591);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698, &qword_18AFDB760);
    v123 = *(v122 + 72);
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v484 = swift_allocObject();
    *(v484 + 16) = xmmword_18AFCEB10;
    v491 = v124;
    sub_18AFCD804();
    *v98 = 0;
    v125 = *MEMORY[0x1E6981BB8];
    v126 = v93;
    v560 = v120;
    v127 = *(v94 + 104);
    v128 = v125;
    v127(v98);
    v483 = v127;
    sub_18AFCD784();
    (*(v558 + 104))(v549, *MEMORY[0x1E69814D8], v551);
    sub_18AFCCDE4();
    sub_18AFCD864();
    *v98 = 22;
    (v127)(v98, v128, v126);
    v538 = v123;
    sub_18AFCD784();
    v129 = v554;
    v130 = v547;
    v131 = v555;
    (*(v554 + 104))(v547, *MEMORY[0x1E6981C40], v555);
    sub_18AFCD874();

    (*(v129 + 8))(v130, v131);
    *v98 = 0;
    v483(v98, v128, v126);
    v120 = v560;
    v132 = v545;
    sub_18AFCD784();
    v134 = v120[2];
    v133 = v120[3];
    v135 = MEMORY[0x1E69814D8];
    if (v134 >= v133 >> 1)
    {
      v120 = sub_18AE8C6D8((v133 > 1), v134 + 1, 1, v120);
    }

    v136 = __swift_destroy_boxed_opaque_existential_1(&v591);
    v120[2] = v134 + 1;
    v29 = v556;
    (*(v561 + 32))(v120 + v491 + v134 * v538, v132, v556, v136);
    v619 = v120;
    v137 = v557;
  }

  else
  {
    v137 = v2;
    v135 = MEMORY[0x1E69814D8];
  }

  v138 = *(v137 + v550[13]);
  v538 = v119;
  v545 = v138;
  if (v138)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698, &qword_18AFDB760);
    v139 = *(v561 + 72);
    v140 = (*(v561 + 80) + 32) & ~*(v561 + 80);
    v141 = swift_allocObject();
    v560 = v120;
    *(v141 + 16) = xmmword_18AFCEB10;
    v484 = v140;
    v482 = v141 + v140;
    (*(*v545 + 96))(&v591);

    sub_18AFCD804();
    v142 = __swift_destroy_boxed_opaque_existential_1(&v591);
    v143 = v553;
    *v553 = 0;
    v144 = *MEMORY[0x1E6981BB8];
    v483 = *(v552 + 104);
    v481 = v144;
    (v483)(v143, v144, v559, v142);
    sub_18AFCD784();
    (*(v558 + 104))(v549, *v135, v551);
    sub_18AFCCDE4();
    sub_18AFCD884();
    *v143 = 22;
    v145 = v144;
    v146 = v559;
    v147 = v483;
    v483(v143, v145, v559);
    v491 = v139;
    sub_18AFCD784();
    v148 = v554;
    v149 = v547;
    v150 = v555;
    (*(v554 + 104))(v547, *MEMORY[0x1E6981C40], v555);
    sub_18AFCD874();
    v120 = v560;

    (*(v148 + 8))(v149, v150);
    *v143 = 0;
    v147(v143, v481, v146);
    v151 = v513;
    sub_18AFCD784();
    v153 = v120[2];
    v152 = v120[3];
    if (v153 >= v152 >> 1)
    {
      v120 = sub_18AE8C6D8((v152 > 1), v153 + 1, 1, v120);
    }

    v120[2] = v153 + 1;
    v29 = v556;
    (*(v561 + 32))(v120 + v484 + v153 * v491, v151, v556);
    v619 = v120;
    v137 = v557;
  }

  v154 = v551;
  v560 = v120;
  v155 = v532;
  sub_18AFAFC30(v137[7], v137[8], v137[9], *(v137 + 80) | (*(v137 + 81) << 8), *(v137 + v550[15]), *(v137 + v550[15] + 8), *(v137 + v550[15] + 16), v532, 14, *v137);
  v156 = v543;
  v157 = *(v543 + 32);
  v158 = v155[v157];
  v159 = v540;
  if (v155[v157])
  {
    v160 = v514;
    sub_18AF5A08C(v155, v514, _s14ResolvedRecipeVMa);
    if (v158 == 2)
    {
      sub_18AFB5644();
    }

    sub_18AFB5AFC();
    sub_18AF5A0F4(v155, _s14ResolvedRecipeVMa);
  }

  else
  {
    v160 = v155;
  }

  v161 = v160;
  v162 = v541;
  sub_18AF56E9C(v161, v541);
  memcpy(v655, v162, sizeof(v655));
  v163 = v162[129];
  v164 = v162[130];
  LODWORD(v491) = *(v162 + *(v156 + 36));
  (*(v536 + 32))(v546, v162 + *(v156 + 28), v537);
  v543 = v164;
  v165 = sub_18AF58CA8(v548, v164);
  v166 = v165;
  v167 = (v137 + v550[17]);
  v168 = v167[1];
  v513 = *v167;
  v514 = v168;
  v169 = *(v167 + 16);
  v550 = v163;
  if ((v163 & 0x80000) != 0)
  {
    v163 = v29;
    v170 = v159;
    v171 = v165;
    sub_18AF55E5C(v655, v524);
    v173 = v560[2];
    v172 = v560[3];
    v174 = v154;
    if (v173 >= v172 >> 1)
    {
      v560 = sub_18AE8C6D8((v172 > 1), v173 + 1, 1, v560);
    }

    v175 = v560;
    v560[2] = v173 + 1;
    v176 = v163;
    (*(v561 + 32))(v175 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v173, v524, v163);
    v619 = v175;
    LODWORD(v163) = v550;
    v166 = v171;
    v159 = v170;
    v29 = v176;
    v154 = v174;
  }

  v177 = *MEMORY[0x1E69814D8];
  v541 = &v655[308];
  v178 = *(v558 + 104);
  LODWORD(v524) = v177;
  v558 += 104;
  v532 = v178;
  (v178)(v549);
  sub_18AFCCDE4();
  sub_18AFCD864();
  LODWORD(v545) = v166;
  if (v169)
  {
    if ((v166 & ((v163 & 0x5F) != 0)) == 1)
    {
      sub_18AF4FCA0(v655, v163, v543, v538);
      v179 = v553;
      *v553 = 0;
      (*(v552 + 104))(v179, *MEMORY[0x1E6981BB8], v559);
      sub_18AFCD784();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B728, &qword_18AFDBEE8);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_18AFCEB10;
      v181 = sub_18AFCD724();
      *(v180 + 32) = v181;
      v182 = sub_18AFCD734();
      *(v180 + 36) = v182;
      v183 = sub_18AFCD744();
      sub_18AFCD744();
      if (sub_18AFCD744() != v181)
      {
        v183 = sub_18AFCD744();
      }

      sub_18AFCD744();
      if (sub_18AFCD744() != v182)
      {
        v183 = sub_18AFCD744();
      }

      v184 = sub_18AFCD764();
      v186 = v185;
      sub_18AFCD744();
      if (sub_18AFCD744() != v183)
      {
        *v186 = sub_18AFCD744();
      }

      v184(&v591, 0);
      (*(v561 + 16))(v499, v542, v29);
      v188 = v560[2];
      v187 = v560[3];
      v189 = v159;
      if (v188 >= v187 >> 1)
      {
        v560 = sub_18AE8C6D8((v187 > 1), v188 + 1, 1, v560);
      }

      LODWORD(v163) = v550;
      v190 = v551;
      v191 = v561;
      (*(v561 + 8))(v542, v29);
      v192 = v560;
      v560[2] = v188 + 1;
      (*(v191 + 32))(v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v188, v499, v29);
      v619 = v192;
      v159 = v189;
      v154 = v190;
    }

    if ((v163 & 0x2000) == 0)
    {
      v193 = v545;
      if (v545)
      {
        v194 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
        v195 = v560;
        goto LABEL_113;
      }

      sub_18AF5031C(v655, v477);
      v226 = v478;
      *v478 = 1;
      (*(v552 + 104))(v226, *MEMORY[0x1E6981BB8], v559);
      *&v594[16] = *&v655[88];
      *&v594[32] = *&v655[104];
      *&v594[48] = *&v655[120];
      *&v594[64] = *&v655[136];
      v591 = *&v655[24];
      v592 = *&v655[40];
      v593 = *&v655[56];
      *v594 = *&v655[72];
      *&v594[89] = *&v655[161];
      *&v594[84] = *&v655[156];
      *&v594[80] = *&v655[152];
      sub_18AF4FB80(&v591);
      sub_18AFCD784();
      v195 = v560;
      v228 = v560[2];
      v227 = v560[3];
      if (v228 >= v227 >> 1)
      {
        v195 = sub_18AE8C6D8((v227 > 1), v228 + 1, 1, v560);
      }

      *(v195 + 16) = v228 + 1;
      (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v228, v486, v29);
      v619 = v195;
      v194 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
      if ((v163 & 2) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    }

    (v532)(v549, v524, v154);
    sub_18AFCCDE4();
    *&v698[64] = *&v655[144];
    *(v688.i64 + 5) = *&v655[161];
    v688.i64[0] = *&v655[156];
    v693 = *&v655[40];
    v694 = *&v655[56];
    *&v698[32] = *&v655[112];
    *&v698[48] = *&v655[128];
    *v698 = *&v655[80];
    *&v698[16] = *&v655[96];
    v592 = *&v655[40];
    v593 = *&v655[56];
    *&v594[56] = *&v655[128];
    v218 = *&v655[24];
    v219 = *&v655[32];
    *&v594[40] = *&v655[112];
    v220 = *&v655[72];
    *&v594[24] = *&v655[96];
    v221 = *&v655[152];
    v591 = *&v655[24];
    *v594 = *&v655[72];
    *&v594[72] = *&v655[144];
    *&v594[8] = *&v655[80];
    *&v594[80] = *&v655[152];
    *&v594[89] = *&v655[161];
    *&v594[84] = *&v655[156];
    sub_18AF4FB80(&v591);
    sub_18AFCD884();
    v626.i64[0] = v218;
    v626.i64[1] = v219;
    v627 = v693;
    v628 = v694;
    *v629 = v220;
    *&v629[24] = *&v698[16];
    v630 = *&v698[32];
    *v631 = *&v698[48];
    *&v631[16] = *&v698[64];
    *&v629[8] = *v698;
    *&v631[24] = v221;
    *&v631[33] = *(v688.i64 + 5);
    *&v631[28] = v688.i64[0];
    sub_18AF4FB80(&v626);
    v222 = v553;
    *v553 = 0;
    (*(v552 + 104))(v222, *MEMORY[0x1E6981BB8], v559);
    sub_18AFCD784();
    v195 = v560;
    v224 = v560[2];
    v223 = v560[3];
    v193 = v545;
    if (v224 >= v223 >> 1)
    {
      v195 = sub_18AE8C6D8((v223 > 1), v224 + 1, 1, v560);
    }

    *(v195 + 16) = v224 + 1;
    (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v224, v501, v29);
    v619 = v195;
    v194 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
    if ((v193 & 1) == 0)
    {
      if ((v163 & 2) == 0)
      {
LABEL_52:
        v241 = *v541;
        if ((v241 & 1) == 0 && *&v655[264] != 0.0 && *&v655[256] != 0.0)
        {
          goto LABEL_62;
        }

        v225.n128_u64[0] = *&v655[280];
        if (*&v655[280] == 0.0)
        {
          v242 = 1;
        }

        else
        {
          v242 = *v541;
        }

        if (*&v655[272] == 0.0)
        {
          v242 = 1;
        }

        if (((v241 | v242) & 1) == 0)
        {
          v225.n128_u32[0] = *&v655[304];
          if (*&v655[304] != 0.0)
          {
LABEL_62:
            sub_18AF51520(v655, v538);
            v243 = v553;
            *v553 = 0;
            (*(v552 + 104))(v243, *MEMORY[0x1E6981BB8], v559);
            sub_18AFCD784();
            v245 = v194[2];
            v244 = v194[3];
            if (v245 >= v244 >> 1)
            {
              v194 = sub_18AE8C6D8((v244 > 1), v245 + 1, 1, v194);
            }

            v194[2] = v245 + 1;
            (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v245, v497, v29);
          }
        }

        if ((v163 & 4) != 0)
        {
          v542 = v194;
          v246 = v195;
          (*(v534 + 16))(v489, v544, v535, v225);
          if (v655[385])
          {
            v247 = 0;
            HIDWORD(v248) = 0;
            v513 = 0;
            v514 = 0;
            v249 = 1;
            v591.i8[0] = 1;
            v626.i8[0] = 1;
            v698[0] = 1;
            v250 = 0.0;
            v251 = 1;
            LODWORD(v560) = 1;
            v252 = 0.0;
            v253 = 0.0;
          }

          else
          {
            LODWORD(v560) = v655[384];
            v513 = *&v655[368];
            v514 = *&v655[376];
            v251 = v655[364];
            v248 = *(v541 + 6);
            v249 = v655[344];
            v247 = *&v655[340];
            v253 = *&v655[324];
            v252 = *&v655[320];
            v250 = *&v655[316];
          }

          *&v698[20] = 0x3F80000000000000;
          *&v698[44] = 0x3F80000000000000;
          *&v698[4] = 0uLL;
          *&v698[28] = 0uLL;
          memset(&v698[52], 0, 20);
          *v698 = 1065353216;
          v699 = 1065353216;
          sub_18AFBE6B4(1, v625, v250, v252, v253);
          if (v249)
          {
            v593 = v625[2];
            *v594 = v625[3];
            *&v594[16] = v625[4];
            v591 = v625[0];
            v592 = v625[1];
          }

          else
          {
            sub_18AE97674(&v591, v247);
          }

          LODWORD(v163) = v550;
          v288 = v479;
          v695 = v593;
          v696 = *v594;
          v697 = *&v594[16];
          v694 = v592;
          v693 = v591;
          if (v251)
          {
            v628 = v593;
            *v629 = *v594;
            *&v629[16] = *&v594[16];
            v627 = v592;
            v626 = v591;
          }

          else
          {
            sub_18AE8C178(&v626, *(&v248 + 1));
          }

          v29 = v556;
          v195 = v246;
          v690 = v628;
          v691 = *v629;
          v692 = *&v629[16];
          v689 = v627;
          v688 = v626;
          v289 = v545;
          v194 = v542;
          if (v560)
          {
            v679 = v628;
            v680 = *v629;
            v681 = *&v629[16];
            v678 = v627;
            v677 = v626;
          }

          else
          {
            sub_18AFBEA34(&v677, *(&v514 + 1));
          }

          v685 = v679;
          v686 = v680;
          v687 = v681;
          v684 = v678;
          v683 = v677;
          v290 = swift_allocObject();
          LODWORD(v291) = 730643660;
          LODWORD(v292) = 953267991;
          sub_18AE8C368(v682, v291, v292, v293);
          v294 = v682[3];
          *(v290 + 48) = v682[2];
          *(v290 + 64) = v294;
          *(v290 + 80) = v682[4];
          v295 = v682[1];
          *(v290 + 16) = v682[0];
          *(v290 + 32) = v295;
          v296 = v553;
          *v553 = v290;
          (*(v552 + 104))(v296, *MEMORY[0x1E6981BA8], v559);
          sub_18AFCD784();
          v298 = v194[2];
          v297 = v194[3];
          if (v298 >= v297 >> 1)
          {
            v194 = sub_18AE8C6D8((v297 > 1), v298 + 1, 1, v194);
          }

          v194[2] = v298 + 1;
          (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v298, v288, v29);
          v193 = v289;
          v159 = v540;
        }

        if ((v163 & 0x40) != 0)
        {
          sub_18AF52438(v655, v490);
          v300 = v194[2];
          v299 = v194[3];
          if (v300 >= v299 >> 1)
          {
            v194 = sub_18AE8C6D8((v299 > 1), v300 + 1, 1, v194);
          }

          v194[2] = v300 + 1;
          (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v300, v490, v29);
        }

        goto LABEL_113;
      }

LABEL_44:
      if ((v543 & 0x10) != 0 && (v163 & 0x800000) != 0)
      {
        v229 = v29;
        v230 = v547;
        *v547 = 1048576000;
        v231 = v194;
        v232 = v554;
        v233 = v555;
        (*(v554 + 104))(v230, *MEMORY[0x1E6981C50], v555);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
        sub_18AFCD6C4();
        *(swift_allocObject() + 16) = xmmword_18AFD8390;
        sub_18AFCD654();
        sub_18AFCD874();

        v234 = v232;
        v194 = v231;
        (*(v234 + 8))(v230, v233);
        v235 = v553;
        *v553 = 0;
        (*(v552 + 104))(v235, *MEMORY[0x1E6981BB8], v559);
        v236 = v476;
        sub_18AFCD784();
        v238 = v231[2];
        v237 = v231[3];
        if (v238 >= v237 >> 1)
        {
          v194 = sub_18AE8C6D8((v237 > 1), v238 + 1, 1, v231);
        }

        v29 = v229;
        v194[2] = v238 + 1;
        (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v238, v236, v229);
        LODWORD(v163) = v550;
        v159 = v540;
        v193 = v545;
      }

      sub_18AF50F40(v655, v488);
      v240 = v194[2];
      v239 = v194[3];
      if (v240 >= v239 >> 1)
      {
        v194 = sub_18AE8C6D8((v239 > 1), v240 + 1, 1, v194);
      }

      v194[2] = v240 + 1;
      (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v240, v488, v29);
      goto LABEL_52;
    }
  }

  else
  {
    v196 = &unk_18AFDB000;
    if (v163)
    {
      (v532)(v549, v524, v154);
      sub_18AFCCDE4();
      LODWORD(v542) = v197;
      LODWORD(v501) = v198;
      v199 = *&v655[24];
      v200 = *&v655[32];
      v667 = *&v655[40];
      v668 = *&v655[56];
      v201 = *&v655[72];
      v202 = *&v655[80];
      v203 = *&v655[84];
      v204 = *&v655[88];
      v205 = *&v655[92];
      v206 = *&v655[100];
      v207 = v655[108];
      v562.i8[2] = v655[111];
      v562.i16[0] = *&v655[109];
      v208 = *&v655[112];
      v209 = *&v655[120];
      v210 = v655[128];
      BYTE2(v661[0]) = v655[131];
      LOWORD(v661[0]) = *&v655[129];
      v211 = *&v655[132];
      v212 = *&v655[140];
      v213 = v655[148];
      v624 = *&v655[165];
      v623 = *&v655[149];
      v591 = *&v655[24];
      v592 = *&v655[40];
      v593 = *&v655[56];
      *v594 = *&v655[72];
      *&v594[8] = *&v655[80];
      *&v594[12] = *&v655[84];
      *&v594[16] = *&v655[88];
      *&v594[20] = *&v655[92];
      *&v594[28] = *&v655[100];
      v594[36] = v655[108];
      v594[39] = v655[111];
      *&v594[37] = *&v655[109];
      *&v594[40] = *&v655[112];
      *&v594[48] = *&v655[120];
      v594[56] = v655[128];
      v594[59] = v655[131];
      *&v594[57] = *&v655[129];
      *&v594[60] = *&v655[132];
      *&v594[68] = *&v655[140];
      v594[76] = v655[148];
      *&v594[93] = *&v655[165];
      *&v594[77] = *&v655[149];
      sub_18AF4FB80(&v591);
      sub_18AFCD884();
      v626.i64[0] = v199;
      v626.i64[1] = v200;
      v627 = v667;
      v628 = v668;
      *v629 = v201;
      *&v629[8] = v202;
      *&v629[12] = v203;
      *&v629[16] = v204;
      v497 = v205;
      *&v629[20] = v205;
      v490 = v206;
      *&v629[28] = v206;
      v214 = v207;
      v629[36] = v207;
      *&v629[37] = v562.i16[0];
      v629[39] = v562.i8[2];
      *&v630 = v208;
      v215 = v210;
      v501 = v209;
      *(&v630 + 1) = v209;
      v631[0] = v210;
      *&v631[1] = LOWORD(v661[0]);
      v631[3] = BYTE2(v661[0]);
      v542 = v211;
      *&v631[4] = v211;
      v216 = v213;
      *&v631[12] = v212;
      v631[20] = v213;
      *&v631[21] = v623;
      *&v631[37] = v624;
      if (sub_18AF4FB80(&v626) == 1)
      {
        v499 = 0;
        v542 = 0;
        v501 = 0;
        v217 = 0;
        v698[0] = 1;
        v693.i8[0] = 1;
        v688.i8[0] = 1;
        v214 = 1;
        v215 = 1;
        v204 = 0.0;
        v216 = 1;
        v203 = 0.0;
        v202 = 0.0;
      }

      else
      {
        v499 = v212;
        v217 = HIDWORD(v490);
      }

      *&v698[4] = 0uLL;
      *&v698[20] = 0x3F80000000000000;
      *&v698[28] = 0uLL;
      *&v698[44] = 0x3F80000000000000;
      memset(&v698[52], 0, 20);
      *v698 = 1065353216;
      v699 = 1065353216;
      sub_18AFBE6B4(1, v620, v202, v203, v204);
      v254 = v560;
      v255 = v556;
      if (v214)
      {
        v682[2] = v620[2];
        v682[3] = v620[3];
        v682[4] = v620[4];
        v682[1] = v620[1];
        v682[0] = v620[0];
      }

      else
      {
        sub_18AE97674(v682, v217);
      }

      v695 = v682[2];
      v696 = v682[3];
      v697 = v682[4];
      v694 = v682[1];
      v693 = v682[0];
      if (v215)
      {
        v679 = v682[2];
        v680 = v682[3];
        v681 = v682[4];
        v678 = v682[1];
        v677 = v682[0];
      }

      else
      {
        sub_18AE8C178(&v677, *(&v501 + 1));
      }

      v256 = v561;
      v257 = v552;
      v258 = v559;
      v690 = v679;
      v691 = v680;
      v692 = v681;
      v689 = v678;
      v688 = v677;
      if (v216)
      {
        v674 = v679;
        v675 = v680;
        v676 = v681;
        v673 = v678;
        v672 = v677;
      }

      else
      {
        sub_18AFBEA34(&v672, *(&v499 + 1));
      }

      v685 = v674;
      v686 = v675;
      v687 = v676;
      v684 = v673;
      v683 = v672;
      v259 = swift_allocObject();
      LODWORD(v260) = 730643660;
      LODWORD(v261) = 953267991;
      sub_18AE8C368(v621, v260, v261, v262);
      v263 = v621[3];
      *(v259 + 48) = v621[2];
      *(v259 + 64) = v263;
      *(v259 + 80) = v621[4];
      v264 = v621[1];
      *(v259 + 16) = v621[0];
      *(v259 + 32) = v264;
      v265 = v553;
      *v553 = v259;
      (*(v257 + 104))(v265, *MEMORY[0x1E6981BA8], v258);
      v266 = v487;
      sub_18AFCD784();
      v268 = v254[2];
      v267 = v254[3];
      if (v268 >= v267 >> 1)
      {
        v254 = sub_18AE8C6D8((v267 > 1), v268 + 1, 1, v254);
      }

      v254[2] = v268 + 1;
      v269 = *(v256 + 32);
      v270 = (*(v256 + 80) + 32) & ~*(v256 + 80);
      v560 = v254;
      v269(v254 + v270 + *(v256 + 72) * v268, v266, v255);
      v196 = &unk_18AFDB000;
    }

    if (v655[385])
    {
      v271 = 0;
      HIDWORD(v272) = 0;
      v500 = 0;
      v501 = 0;
      v273 = 1;
      v591.i8[0] = 1;
      v626.i8[0] = 1;
      v682[0].i8[0] = 1;
      v274 = 0.0;
      v275 = 1;
      LODWORD(v542) = 1;
      v276 = 0.0;
      v277 = 0.0;
    }

    else
    {
      LODWORD(v542) = v655[384];
      v500 = *&v655[368];
      v501 = *&v655[376];
      v275 = v655[364];
      v272 = *(v541 + 6);
      v273 = v655[344];
      v271 = *&v655[340];
      v277 = *&v655[324];
      v276 = *&v655[320];
      v274 = *&v655[316];
    }

    *(v682[1].i64 + 4) = 0x3F80000000000000;
    *(&v682[2].i64[1] + 4) = 0x3F80000000000000;
    *(&v682[0].i64[1] + 4) = 0;
    *(v682[0].i64 + 4) = 0;
    *(v682[2].i64 + 4) = 0;
    *(&v682[1].i64[1] + 4) = 0;
    *(&v682[3].i64[1] + 4) = 0;
    *(v682[3].i64 + 4) = 0;
    v682[0].i32[0] = 1065353216;
    v682[4].i32[1] = 0;
    v682[4].i64[1] = v196[413];
    sub_18AFBE6B4(1, v622, v274, v276, v277);
    if (v273)
    {
      v593 = v622[2];
      *v594 = v622[3];
      *&v594[16] = v622[4];
      v591 = v622[0];
      v592 = v622[1];
    }

    else
    {
      sub_18AE97674(&v591, v271);
    }

    LODWORD(v163) = v550;
    v279 = v502;
    v679 = v593;
    v680 = *v594;
    v681 = *&v594[16];
    v678 = v592;
    v677 = v591;
    if (v275)
    {
      v628 = v593;
      *v629 = *v594;
      *&v629[16] = *&v594[16];
      v627 = v592;
      v626 = v591;
    }

    else
    {
      sub_18AE8C178(&v626, *(&v272 + 1));
    }

    v29 = v556;
    v195 = v560;
    v674 = v628;
    v675 = *v629;
    v676 = *&v629[16];
    v673 = v627;
    v672 = v626;
    v280 = v545;
    if (v542)
    {
      v564 = v628;
      v565 = *v629;
      v566 = *&v629[16];
      v562 = v626;
      v563 = v627;
    }

    else
    {
      sub_18AFBEA34(&v562, *(&v501 + 1));
    }

    v669 = v564;
    v670 = v565;
    v671 = v566;
    HIDWORD(v282) = v562.i32[1];
    HIDWORD(v281) = v563.i32[1];
    v668 = v563;
    v667 = v562;
    v283 = v513;
    v284 = v514;
    LODWORD(v281) = 730643660;
    LODWORD(v282) = 953267991;
    sub_18AE8C368(&v623, v281, v282, v278);
    sub_18AFBE4C0(v623.f32, *&v283, *(&v283 + 1), *&v284, *(&v284 + 1));
    sub_18AFCD864();
    v285 = v553;
    *v553 = 0;
    (*(v552 + 104))(v285, *MEMORY[0x1E6981BB8], v559);
    sub_18AFCD784();
    v287 = *(v195 + 16);
    v286 = *(v195 + 24);
    if (v287 >= v286 >> 1)
    {
      v195 = sub_18AE8C6D8((v286 > 1), v287 + 1, 1, v195);
    }

    *(v195 + 16) = v287 + 1;
    (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v287, v279, v29);
    v619 = v195;
    v194 = sub_18AE8C6D8(0, 10, 0, MEMORY[0x1E69E7CC0]);
    v193 = v280;
    v159 = v540;
  }

LABEL_113:
  if ((v163 & 0x20000) != 0)
  {
    v310 = v194;
    sub_18AF5A768(v655, v546, v543, v193 & 1, v533);
    v311 = v561;
    if ((*(v561 + 48))(v533, 1, v29) == 1)
    {
      sub_18AE7BA80(v533, &qword_1EA99B720, &qword_18AFDBEE0);
      v194 = v310;
      v159 = v540;
      if ((v163 & 0x400) != 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v322 = *(v311 + 32);
      v323 = v503;
      v322(v503, v533, v29);
      (*(v311 + 16))(v504, v323, v29);
      v325 = v310[2];
      v324 = v310[3];
      if (v325 >= v324 >> 1)
      {
        v310 = sub_18AE8C6D8((v324 > 1), v325 + 1, 1, v310);
      }

      v163 = v561 + 8;
      (*(v561 + 8))(v503, v29);
      v310[2] = v325 + 1;
      v326 = v310 + ((*(v163 + 72) + 32) & ~*(v163 + 72)) + *(v163 + 64) * v325;
      v194 = v310;
      v322(v326, v504, v29);
      LOWORD(v163) = v550;
      v159 = v540;
      v193 = v545;
      if ((v550 & 0x400) != 0)
      {
        goto LABEL_132;
      }
    }

LABEL_115:
    if ((v163 & 0x1000) == 0)
    {
      goto LABEL_116;
    }

LABEL_140:
    v336 = v193;
    (v532)(v549, v524, v551);
    sub_18AFCCDE4();
    sub_18AFCD864();
    v337 = v553;
    *v553 = 0;
    (*(v552 + 104))(v337, *MEMORY[0x1E6981BB8], v559);
    v338 = v506;
    sub_18AFCD784();
    v340 = v194[2];
    v339 = v194[3];
    if (v340 >= v339 >> 1)
    {
      v194 = sub_18AE8C6D8((v339 > 1), v340 + 1, 1, v194);
    }

    v301 = v531;
    v194[2] = v340 + 1;
    (*(v561 + 32))(v194 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v340, v338, v29);
    v193 = v336;
    if ((v336 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_143:
    v321 = 0;
    goto LABEL_144;
  }

  if ((v163 & 0x400) == 0)
  {
    goto LABEL_115;
  }

LABEL_132:
  v327 = v193;
  v328 = v194;
  sub_18AF792A8(*(v557[11] + 16) == 0, v327 & 1, v159);
  v329 = v561;
  if ((*(v561 + 48))(v159, 1, v29) == 1)
  {
    sub_18AE7BA80(v159, &qword_1EA99B720, &qword_18AFDBEE0);
    v194 = v328;
    v193 = v327;
    if ((v163 & 0x1000) != 0)
    {
      goto LABEL_140;
    }
  }

  else
  {
    v330 = v505;
    v560 = *(v329 + 32);
    (v560)(v505, v159, v29);
    v331 = v492;
    (*(v329 + 16))(v492, v330, v29);
    v333 = v328[2];
    v332 = v328[3];
    if (v333 >= v332 >> 1)
    {
      v328 = sub_18AE8C6D8((v332 > 1), v333 + 1, 1, v328);
    }

    v334 = v561 + 8;
    (*(v561 + 8))(v505, v29);
    v328[2] = v333 + 1;
    v335 = v328 + ((*(v334 + 72) + 32) & ~*(v334 + 72)) + *(v334 + 64) * v333;
    v194 = v328;
    (v560)(v335, v331, v29);
    v193 = v545;
    if ((v550 & 0x1000) != 0)
    {
      goto LABEL_140;
    }
  }

LABEL_116:
  v301 = v531;
  if (v193)
  {
    goto LABEL_143;
  }

LABEL_117:
  v542 = v194;
  v302 = v507;
  sub_18AFCDA84();
  v303 = v301[6];
  v304 = v523;
  v305 = v303(v302, 1, v523);
  v306 = MEMORY[0x1E6981C70];
  if (v305 == 1)
  {
    v307 = *MEMORY[0x1E6981C70];
    v308 = v301[13];
    v308(v522, v307, v304);
    if (v303(v302, 1, v304) != 1)
    {
      sub_18AE7BA80(v302, &qword_1EA99B718, &qword_18AFDBED8);
    }

    v309 = v522;
    v304 = v523;
    v301 = v531;
  }

  else
  {
    v309 = v522;
    (v301[4])(v522, v302, v304);
    v307 = *v306;
    v308 = v301[13];
  }

  v29 = v556;
  v312 = v508;
  v308(v508, v307, v304);
  v313 = sub_18AFCDAB4();
  v314 = v301[1];
  v314(v312, v304);
  v314(v309, v304);
  if (v313)
  {
    (*(v534 + 16))(v538, v544, v535);
    v315 = v553;
    *v553 = 22;
    (*(v552 + 104))(v315, *MEMORY[0x1E6981BB8], v559);
    v316 = v493;
    sub_18AFCD784();
    v318 = v542[2];
    v317 = v542[3];
    if (v318 >= v317 >> 1)
    {
      v542 = sub_18AE8C6D8((v317 > 1), v318 + 1, 1, v542);
    }

    v319 = v545;
    v320 = v542;
    v542[2] = v318 + 1;
    v194 = v320;
    (*(v561 + 32))(v320 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v318, v316, v29);
    v321 = 1;
    v193 = v319;
  }

  else
  {
    v321 = 0;
    v193 = v545;
    v194 = v542;
  }

LABEL_144:
  v341 = v194[2];
  v542 = v194;
  if (!v341)
  {
    goto LABEL_153;
  }

  v342 = v193 | ~v321;
  v343 = v554;
  v344 = *(v554 + 104);
  v345 = (v342 & 1) == 0;
  v346 = MEMORY[0x1E6981C40];
  if (!v345)
  {
    v346 = MEMORY[0x1E6981C48];
  }

  v347 = *v346;
  v348 = v516;
  v349 = v555;
  v533 = *(v554 + 104);
  v344(v516, v347, v555);
  sub_18AFCD874();
  v531 = *(v343 + 8);
  (v531)(v348, v349);
  v350 = v553;
  *v553 = 0;
  v351 = *(v552 + 104);
  LODWORD(v560) = *MEMORY[0x1E6981BB8];
  v540 = v351;
  (v351)(v350);
  sub_18AFCD784();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
  }

  v352 = v561;
  v354 = *(v195 + 16);
  v353 = *(v195 + 24);
  if (v354 >= v353 >> 1)
  {
    v195 = sub_18AE8C6D8((v353 > 1), v354 + 1, 1, v195);
  }

  *(v195 + 16) = v354 + 1;
  v357 = *(v352 + 32);
  v356 = v352 + 32;
  v355 = v357;
  v358 = (*(v356 + 48) + 32) & ~*(v356 + 48);
  v524 = *(v356 + 40);
  (v357)(v195 + v358 + v524 * v354, v530, v556);
  v619 = v195;
  if ((v545 | v321))
  {
    v29 = v556;
LABEL_153:
    LODWORD(v359) = v550;
    v360 = v551;
    if ((v550 & 0x100) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_171;
  }

  v530 = v358;
  v545 = v355;
  v370 = v547;
  v371 = v555;
  (v533)(v547, *MEMORY[0x1E6981C48], v555);
  v372 = MEMORY[0x1E69E7CC0];
  v373 = v496;
  sub_18AFCD874();

  (v531)(v370, v371);
  sub_18AFCD854();
  (*(v534 + 8))(v373, v535);
  v374 = v553;
  *v553 = 0;
  (v540)(v374, v560, v559);
  sub_18AFCD784();
  v375 = sub_18AE8C6D8(0, 1, 1, v372);
  v377 = v375[2];
  v376 = v375[3];
  v195 = v375;
  if (v377 >= v376 >> 1)
  {
    v195 = sub_18AE8C6D8((v376 > 1), v377 + 1, 1, v375);
  }

  v29 = v556;
  LODWORD(v359) = v550;
  v360 = v551;
  *(v195 + 16) = v377 + 1;
  (v545)(&v530[v195 + v377 * v524], v517, v29);
  v619 = v195;
  if ((v359 & 0x100) == 0)
  {
LABEL_154:
    if ((v359 & 0x100000) == 0)
    {
      goto LABEL_155;
    }

    goto LABEL_199;
  }

LABEL_171:
  if ((v359 & 0x20) != 0)
  {
    if (v491 == 2 || ((v541[564] & 1) == 0 ? (v388 = *&v655[864], v389 = *&v655[868], v386 = *&v655[856], v387 = *&v655[860], v390 = *&v655[848], v384 = *&v655[840], v385 = *&v655[844], v382 = *&v655[832], v383 = *&v655[836], v380 = *&v655[824], v381 = *&v655[828]) : (v380 = 0.0, v381 = 0.0, v382 = 0.0, v383 = 0.0, v384 = 0.0, v385 = 0.0, v386 = 0, v387 = 0, v388 = 0, v389 = 0, v390 = 0), v661[0] = v380, v661[1] = v381, v661[2] = v382, v661[3] = v383, v661[4] = v384, v661[5] = v385, v662 = v390, v663 = v386, v664 = v387, v665 = v388, v666 = v389, v562 = 0u, v563 = 0u, v564 = 0u, !sub_18AE92DBC(v661, v562.f32)))
    {
      v395 = sub_18AF58F08(v548, v543);
      sub_18AF534EC(v655, v395 & 1, v498);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
      }

      v397 = *(v195 + 16);
      v396 = *(v195 + 24);
      if (v397 >= v396 >> 1)
      {
        v195 = sub_18AE8C6D8((v396 > 1), v397 + 1, 1, v195);
      }

      *(v195 + 16) = v397 + 1;
      (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v397, v498, v29);
    }

    else
    {
      sub_18AF54A4C(v655, v480);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
      }

      v394 = *(v195 + 16);
      v393 = *(v195 + 24);
      if (v394 >= v393 >> 1)
      {
        v195 = sub_18AE8C6D8((v393 > 1), v394 + 1, 1, v195);
      }

      *(v195 + 16) = v394 + 1;
      (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v394, v480, v29);
    }
  }

  else if ((v359 & 0x100000) != 0)
  {
    sub_18AF550D0(v494);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
    }

    v392 = *(v195 + 16);
    v391 = *(v195 + 24);
    if (v392 >= v391 >> 1)
    {
      v195 = sub_18AE8C6D8((v391 > 1), v392 + 1, 1, v195);
    }

    *(v195 + 16) = v392 + 1;
    (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v392, v494, v29);
  }

  else
  {
    sub_18AF54620(v655, v495);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
    }

    v379 = *(v195 + 16);
    v378 = *(v195 + 24);
    if (v379 >= v378 >> 1)
    {
      v195 = sub_18AE8C6D8((v378 > 1), v379 + 1, 1, v195);
    }

    *(v195 + 16) = v379 + 1;
    (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v379, v495, v29);
  }

  v619 = v195;
  if ((v359 & 0x100000) == 0)
  {
LABEL_155:
    if ((v359 & 0x4000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_204;
  }

LABEL_199:
  sub_18AF55690(v655, v525);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
  }

  v399 = *(v195 + 16);
  v398 = *(v195 + 24);
  if (v399 >= v398 >> 1)
  {
    v195 = sub_18AE8C6D8((v398 > 1), v399 + 1, 1, v195);
  }

  *(v195 + 16) = v399 + 1;
  (*(v561 + 32))(v195 + ((*(v561 + 80) + 32) & ~*(v561 + 80)) + *(v561 + 72) * v399, v525, v29);
  v619 = v195;
  if ((v359 & 0x4000) == 0)
  {
LABEL_156:
    v361 = v561;
    if ((v359 & 0x400000) != 0)
    {
      goto LABEL_157;
    }

LABEL_215:
    v362 = v29;
    v365 = v555;
    v366 = v554;
    v367 = v547;
    if ((v359 & 0x200000) != 0)
    {
      goto LABEL_162;
    }

LABEL_216:

    if ((v359 & 0x200) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_217;
  }

LABEL_204:
  v400 = *MEMORY[0x1E6981C40];
  v401 = *(v554 + 104);
  v402 = v552;
  v403 = v511;
  v560 = v195;
  v401(v511, v400, v555);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698, &qword_18AFDB760);
  v404 = (*(v561 + 80) + 32) & ~*(v561 + 80);
  v558 = *(v561 + 72);
  v405 = swift_allocObject();
  v406.n128_u64[1] = 2;
  *(v405 + 16) = xmmword_18AFD8390;
  v406.n128_u64[0] = *&v655[976];
  if (v541[676])
  {
    v407 = 0.0;
  }

  else
  {
    v407 = *&v655[968];
  }

  (v532)(v549, *MEMORY[0x1E69814C8], v360, v406);
  sub_18AFCCDE4();
  v656 = v410;
  v657 = v411;
  if (v407 <= 1.0)
  {
    v412 = NAN;
  }

  else
  {
    v412 = v407;
  }

  v658 = v408;
  v659 = v409;
  v660 = v412;
  sub_18AFCD9F4();
  v413 = v553;
  *v553 = 27;
  v414 = *MEMORY[0x1E6981BB8];
  v415 = *(v402 + 104);
  v416 = v559;
  v415(v413, v414, v559);
  v552 = v404;
  sub_18AFCD784();
  sub_18AFCD874();

  v417 = v560;
  (*(v554 + 8))(v403, v555);
  *v413 = 0;
  v418 = v416;
  v195 = v417;
  v415(v413, v414, v418);
  v359 = v512;
  sub_18AFCD784();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = sub_18AE8C6D8(0, v417[2] + 1, 1, v417);
  }

  v420 = *(v195 + 16);
  v419 = *(v195 + 24);
  v29 = v556;
  v361 = v561;
  if (v420 >= v419 >> 1)
  {
    v195 = sub_18AE8C6D8((v419 > 1), v420 + 1, 1, v195);
  }

  *(v195 + 16) = v420 + 1;
  (*(v361 + 32))(v195 + v552 + v420 * v558, v359, v29);
  v619 = v195;
  LODWORD(v359) = v550;
  if ((v550 & 0x400000) == 0)
  {
    goto LABEL_215;
  }

LABEL_157:
  sub_18AF59168(v526);
  v362 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
  }

  v364 = *(v195 + 16);
  v363 = *(v195 + 24);
  v365 = v555;
  v366 = v554;
  v367 = v547;
  if (v364 >= v363 >> 1)
  {
    v195 = sub_18AE8C6D8((v363 > 1), v364 + 1, 1, v195);
  }

  *(v195 + 16) = v364 + 1;
  (*(v361 + 32))(v195 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v364, v526, v362);
  v619 = v195;
  if ((v359 & 0x200000) == 0)
  {
    goto LABEL_216;
  }

LABEL_162:
  sub_18AF8BBD0(v527);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v195 = sub_18AE8C6D8(0, *(v195 + 16) + 1, 1, v195);
  }

  v369 = *(v195 + 16);
  v368 = *(v195 + 24);
  if (v369 >= v368 >> 1)
  {
    v195 = sub_18AE8C6D8((v368 > 1), v369 + 1, 1, v195);
  }

  *(v195 + 16) = v369 + 1;
  (*(v361 + 32))(v195 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v369, v527, v362);

  v619 = v195;
  if ((v359 & 0x200) != 0)
  {
LABEL_217:
    v421 = *(v541 + 35);
    v422 = *(v541 + 36);
    v590 = v655[607];
    v589 = *&v655[605];
    v588 = v655[627];
    v587 = *&v655[625];
    v423 = *(v541 + 40);
    v424 = *(v541 + 41);
    LODWORD(v553) = v655[644];
    v586 = v655[647];
    v585 = *&v655[645];
    v425 = *&v655[664];
    v426 = *&v655[672];
    v427 = *&v655[680];
    v428 = *&v655[688];
    v429 = *&v655[696];
    v430 = *&v655[700];
    v431 = *&v655[704];
    v433 = *(v541 + 50);
    v432 = *(v541 + 51);
    v584 = v655[727];
    v583 = *&v655[725];
    v552 = *&v655[728];
    v434 = *&v655[736];
    v435 = v655[744];
    v582 = v655[747];
    v581 = *&v655[745];
    v436 = *(v541 + 55);
    v437 = *(v541 + 56);
    v438 = v655[764];
    v580 = v655[767];
    v579 = *&v655[765];
    v439 = *&v655[768];
    LODWORD(v531) = *&v655[520];
    v591 = *&v655[520];
    LODWORD(v560) = *&v655[524];
    v530 = *&v655[528];
    v527 = *&v655[536];
    v592 = *&v655[536];
    LODWORD(v526) = *&v655[544];
    LODWORD(v559) = *&v655[548];
    v524 = *&v655[560];
    v525 = *&v655[552];
    v593 = *&v655[552];
    v523 = *&v655[568];
    *v594 = *&v655[568];
    LODWORD(v522) = *&v655[576];
    *&v594[8] = *&v655[576];
    LODWORD(v517) = *&v655[580];
    *&v594[12] = *&v655[580];
    LODWORD(v516) = *&v655[584];
    *&v594[16] = *&v655[584];
    v551 = v421;
    *&v594[20] = v421;
    v549 = v422;
    *&v594[28] = v422;
    LODWORD(v512) = v655[604];
    v594[36] = v655[604];
    v594[39] = v655[607];
    *&v594[37] = *&v655[605];
    v545 = *&v655[608];
    *&v594[40] = *&v655[608];
    v542 = *&v655[616];
    *&v594[48] = *&v655[616];
    LODWORD(v513) = v655[624];
    v594[56] = v655[624];
    v440 = v655[644];
    v441 = v655[724];
    v594[59] = v655[627];
    *&v594[57] = *&v655[625];
    v540 = v423;
    *&v594[60] = v423;
    v538 = v424;
    *&v594[68] = v424;
    v594[76] = v655[644];
    v594[79] = v655[647];
    *&v594[77] = *&v655[645];
    v514 = *&v655[656];
    v515 = *&v655[648];
    *&v594[80] = *&v655[648];
    *&v594[88] = *&v655[656];
    *&v594[96] = *&v655[664];
    LODWORD(v558) = *&v655[668];
    v595 = *&v655[668];
    v596 = *&v655[672];
    v597 = *&v655[680];
    v598 = *&v655[688];
    v599 = *&v655[696];
    v600 = *&v655[700];
    v601 = *&v655[704];
    v532 = v432;
    v533 = v433;
    v602 = v433;
    v603 = v432;
    v359 = *&v655[728];
    v604 = v655[724];
    v606 = v655[727];
    v605 = *&v655[725];
    v607 = *&v655[728];
    v608 = *&v655[736];
    v609 = v655[744];
    v611 = v655[747];
    v610 = *&v655[745];
    v612 = v436;
    v613 = v437;
    v614 = v655[764];
    v616 = v655[767];
    v615 = *&v655[765];
    v617 = *&v655[768];
    v618 = v655[776];
    v442 = sub_18AF4FB9C(&v591);
    if (v442 == 1)
    {
      v443 = 0;
      v444 = 0;
      v445 = 0;
      v446 = 0;
      v447 = 0;
      v448 = 0;
      v449 = 0;
      v450 = 0;
      v359 = 0;
      v434 = 0;
      v436 = 0;
      v437 = 0;
      v451 = 0;
      v452 = 0;
      v453 = 0;
      v454 = 0;
      v455 = 0;
      v456 = 0;
      v457 = 0;
      v458 = 0;
      v459 = 0;
      v460 = 0;
      v461 = 0;
      v462 = 1;
      v626.i8[0] = 1;
      LOBYTE(v577) = 1;
      v463 = 0;
      v425 = 0;
      v426 = 0;
      LOBYTE(v575) = 1;
      v440 = 1;
      v427 = 0;
      v428 = 0;
      v429 = 0;
      v430 = 0;
      v431 = 0;
      v441 = 1;
      v435 = 1;
      v438 = 1;
      v439 = 0;
    }

    else
    {
      v577 = v589;
      v578 = v590;
      v575 = v587;
      v576 = v588;
      v573 = v585;
      v574 = v586;
      v572 = v584;
      v571 = v583;
      v570 = v582;
      v569 = v581;
      v568 = v580;
      v567 = v579;
      v443 = v551;
      v444 = v549;
      v445 = v545;
      v446 = v542;
      v447 = v540;
      v448 = v538;
      v450 = v532;
      v449 = v533;
      v452 = v531;
      v451 = v530;
      v453 = v527;
      v454 = v526;
      v456 = v524;
      v455 = v525;
      v457 = v523;
      v458 = v522;
      v459 = v517;
      v460 = v516;
      v463 = v514;
      v461 = v515;
      LOBYTE(v442) = v513;
      v462 = v512;
    }

    v626.i64[0] = __PAIR64__(v560, v452);
    v626.i64[1] = v451;
    v627.i64[0] = v453;
    v627.i64[1] = __PAIR64__(v559, v454);
    v628.i64[0] = v455;
    v628.i64[1] = v456;
    *v629 = v457;
    *&v629[8] = v458;
    *&v629[12] = v459;
    *&v629[16] = v460;
    *&v629[20] = v443;
    *&v629[28] = v444;
    v629[36] = v462;
    *&v629[37] = v577;
    v629[39] = v578;
    *&v630 = v445;
    *(&v630 + 1) = v446;
    v631[0] = v442;
    *&v631[1] = v575;
    v631[3] = v576;
    *&v631[4] = v447;
    *&v631[12] = v448;
    v631[20] = v440;
    *&v631[21] = v573;
    v631[23] = v574;
    *&v631[24] = v461;
    *&v631[32] = v463;
    *&v631[40] = v425;
    v632 = v558;
    v633 = v426;
    v634 = v427;
    v635 = v428;
    v636 = v429;
    v637 = v430;
    v638 = v431;
    v639 = v449;
    v640 = v450;
    v641 = v441;
    v643 = v572;
    v642 = v571;
    v644 = v359;
    v645 = v434;
    v646 = v435;
    v648 = v570;
    v647 = v569;
    v649 = v436;
    v650 = v437;
    v651 = v438;
    v653 = v568;
    v652 = v567;
    v654 = v439;
    sub_18AF56FD4(v548, &v619, v543, &v626, (v543 & 0x820) == 2048, v557[2], v557[3], 0);
    v365 = v555;
    v366 = v554;
    v367 = v547;
    v362 = v556;
    v361 = v561;
    LOWORD(v359) = v550;
  }

LABEL_221:
  v464 = MEMORY[0x1E6981C48];
  if ((v359 & 0x8000) != 0)
  {
    v465 = *&v655[952];
    if (v541[652])
    {
      v465 = 0.0;
    }

    sub_18AF59778(v529, v465);
    v466 = v619;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v466 = sub_18AE8C6D8(0, v466[2] + 1, 1, v466);
    }

    v468 = v466[2];
    v467 = v466[3];
    if (v468 >= v467 >> 1)
    {
      v466 = sub_18AE8C6D8((v467 > 1), v468 + 1, 1, v466);
    }

    v466[2] = v468 + 1;
    (*(v361 + 32))(v466 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v468, v529, v362);
    v619 = v466;
  }

  (*(v366 + 104))(v367, *v464, v365);
  sub_18AFCD874();

  (*(v366 + 8))(v367, v365);
  if ((v543 & 0x20000) == 0)
  {
    sub_18AFCD834();
  }

  if (v528)
  {
    v469 = v519;
    sub_18AFCD8A4();
    v470 = sub_18AFCD8C4();
    v471 = v518;
    sub_18AF58654(v518, v469);
    v472 = *(v520 + 8);
    v473 = v469;
    v474 = v521;
    v472(v473, v521);
    v472(v471, v474);
    v470(&v591, 0);
  }

  (*(v534 + 8))(v544, v535);
  return (*(v536 + 8))(v546, v537);
}

uint64_t GlassMaterialProvider.Resolved.resolveLayers(in:)(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_18AFCDA04();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCDB04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = sub_18AFCDAF4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA50 != -1)
  {
    swift_once();
  }

  if (byte_1EA9B0050)
  {
    v17 = v24;

    return sub_18AF5656C(v17);
  }

  else
  {
    v22[0] = v3;
    v22[1] = v2;
    (*(v14 + 104))(v16, *MEMORY[0x1E6981CB0], v13);
    sub_18AFCDAE4();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981CB8], v6);
    sub_18AE88AD4(&qword_1ED56AB18, MEMORY[0x1E6981CC0], MEMORY[0x1E6981CC8]);
    v19 = sub_18AFCDDF4();
    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);
    (*(v14 + 8))(v16, v13);
    if (v19)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
      sub_18AFCDA34();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_18AFD8390;
      sub_18AE8405C(v24, v5);
      sub_18AFCD5F4();
      (*(v23 + 8))(v5, v22[0]);
      return v21;
    }
  }
}

uint64_t sub_18AE88890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s11EnvironmentVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18AE889B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s11EnvironmentVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18AE88AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AE88BAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_18AE88C0C@<X0>(int a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v5 = a3;
  if ((a2 & 4) != 0)
  {
    memcpy(__src, v3, sizeof(__src));
    if ((a1 & 0x2001) != 0)
    {
      if ((a1 & 2) != 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *&__src[24];
      v7 = *&__src[32];
      v9 = *&__src[40];
      v10 = *&__src[48];
      v12 = *&__src[56];
      v11 = *&__src[64];
      v13 = *&__src[72];
      v14 = __src[148];
      v15 = *(v3 + 109);
      __dst[0] = *&__src[24];
      __dst[1] = *&__src[32];
      __dst[2] = *&__src[40];
      __dst[3] = *&__src[48];
      __dst[4] = *&__src[56];
      __dst[5] = *&__src[64];
      __dst[6] = *&__src[72];
      v186 = *&__src[80];
      __dst[7] = *&__src[80];
      v188 = *&__src[84];
      v191 = *&__src[88];
      LODWORD(__dst[8]) = *&__src[88];
      v194 = *&__src[92];
      v197 = *&__src[100];
      *(&__dst[8] + 4) = *&__src[92];
      *(&__dst[9] + 4) = *&__src[100];
      v182 = __src[108];
      BYTE4(__dst[10]) = __src[108];
      *(&__dst[10] + 5) = v15;
      HIBYTE(__dst[10]) = *(v3 + 111);
      v201 = *&__src[112];
      v204 = *&__src[120];
      __dst[11] = *&__src[112];
      __dst[12] = *&__src[120];
      v184 = __src[128];
      LOBYTE(__dst[13]) = __src[128];
      v16 = *(v3 + 149);
      *(&__dst[13] + 1) = *(v3 + 129);
      BYTE3(__dst[13]) = *(v3 + 131);
      v17 = *&__src[132];
      *(&__dst[13] + 4) = *&__src[132];
      v18 = *&__src[140];
      *(&__dst[14] + 4) = *&__src[140];
      BYTE4(__dst[15]) = __src[148];
      HIBYTE(__dst[15]) = *(v3 + 151);
      *(&__dst[15] + 5) = v16;
      __dst[16] = *&__src[152];
      v208 = *&__src[156];
      v19 = *&__src[160];
      __dst[17] = *&__src[160];
      LOBYTE(__dst[18]) = __src[168];
      if (sub_18AF4FB80(__dst) == 1)
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        v19 = 0.0;
        v26 = 0.0;
        v27 = 0.0;
        v13 = 0.0;
        v14 = 1;
        LOBYTE(v256) = 1;
        LOBYTE(v234) = 1;
        LOBYTE(v252) = 1;
        v28 = 1;
        v29 = 1;
        v11 = 0.0;
        v12 = 0.0;
        v10 = 0.0;
        v9 = 0.0;
        v7 = 0.0;
        v8 = 0.0;
      }

      else
      {
        v216 = *(v3 + 109);
        v217 = *(v3 + 111);
        v214 = *(v3 + 129);
        v215 = *(v3 + 131);
        v212 = *(v3 + 149);
        v213 = *(v3 + 151);
        v20 = v17;
        v22 = v201;
        v21 = v204;
        v24 = v194;
        v23 = v197;
        v25 = v191;
        v26 = v188;
        v27 = v186;
        v28 = v184;
        v29 = v182;
      }

      v4 = v3;
      if (v8 == 0.0 && v7 == 0.0 && v9 == 0.0 && v10 == 0.0 && v12 == 0.0 && v11 == 0.0 && v13 == 0.0 && v27 == 0.0 && v26 == 0.0 && v25 == 0.0 && (v29 & 1) != 0 && (v28 & 1) != 0 && (v14 & 1) != 0 && v19 == 0.0)
      {
        sub_18AF6A99C(&v256);
      }

      else
      {
        *&v234 = v8;
        *(&v234 + 1) = v7;
        *&v235 = v9;
        *(&v235 + 1) = v10;
        *&v236 = v12;
        *(&v236 + 1) = v11;
        *&v237 = v13;
        *(&v237 + 1) = __PAIR64__(LODWORD(v26), LODWORD(v27));
        *v238 = v25;
        *&v238[4] = v24;
        *&v238[12] = v23;
        v238[20] = v29;
        *&v238[21] = v216;
        v238[23] = v217;
        *&v238[24] = v22;
        *v239 = v21;
        v239[8] = v28;
        v239[11] = v215;
        *&v239[9] = v214;
        *&v239[12] = v20;
        *&v239[20] = v18;
        v239[28] = v14;
        v239[31] = v213;
        *&v239[29] = v212;
        LODWORD(v240) = 0;
        DWORD1(v240) = v208;
        *(&v240 + 1) = v19;
        sub_18AF6A9C0(&v234);
        *v261 = *v239;
        *&v261[16] = *&v239[16];
        v262 = v240;
        LOBYTE(v263) = v241;
        v258 = v236;
        v259 = v237;
        *v260 = *v238;
        *&v260[16] = *&v238[16];
        v256 = v234;
        v257 = v235;
      }

      *&__src[120] = *v261;
      *&__src[136] = *&v261[16];
      *&__src[152] = v262;
      *&__src[56] = v258;
      *&__src[72] = v259;
      *&__src[88] = *v260;
      *&__src[104] = *&v260[16];
      *&__src[24] = v256;
      __src[168] = v263;
      *&__src[40] = v257;
      if ((a1 & 2) != 0)
      {
LABEL_5:
        if ((a1 & 4) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_43;
      }
    }

    v30 = *&__src[216];
    v31 = *&__src[240];
    v32 = vdup_n_s32(__src[248]);
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vcgezq_s64(vshlq_n_s64(v33, 0x3FuLL));
    v35 = vandq_s8(*&__src[184], v34);
    v36 = vandq_s8(*&__src[200], v34);
    if (__src[248])
    {
      v30 = 0.0;
    }

    v37 = vandq_s8(*&__src[224], vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(__src[248])), 0x1FuLL)));
    v38 = 0.0;
    if (__src[248])
    {
      v31 = 0.0;
    }

    else
    {
      v38 = *&__src[244];
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v35), vceqzq_f64(v36))))) & 1) == 0 && v30 == 0.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(v37)))) & 1) == 0 && v31 == 0.0 && v38 == 0.0)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 1;
      v35 = 0uLL;
      v30 = 0.0;
      v36 = 0uLL;
    }

    else
    {
      v42 = 0;
      v40 = v37.i64[1];
      v39 = v37.i64[0];
      v41 = LODWORD(v31) | (LODWORD(v38) << 32);
    }

    *&__src[176] = 0;
    *&__src[184] = v35;
    *&__src[200] = v36;
    *&__src[216] = v30;
    *&__src[224] = v39;
    *&__src[232] = v40;
    *&__src[240] = v41;
    __src[248] = v42;
    if ((a1 & 4) != 0)
    {
LABEL_6:
      if ((a1 & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_47;
    }

LABEL_43:
    if (__src[385])
    {
      v43 = 0;
    }

    else
    {
      v43 = (*&__src[345] << 8) | (__src[347] << 24);
    }

    LOBYTE(__dst[0]) = 1;
    LOBYTE(v256) = 1;
    LOBYTE(v234) = 1;
    *&__src[312] = 0;
    *&__src[320] = 0x3F8000003F800000;
    *&__src[328] = 0;
    *&__src[336] = 0;
    *&__src[344] = v43 | 1;
    *&__src[352] = 0;
    *&__src[368] = 0;
    *&__src[376] = 0;
    *&__src[360] = 0x100000000;
    *&__src[384] = 1;
    if ((a1 & 8) != 0)
    {
LABEL_7:
      if ((a1 & 0x10) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_55;
    }

LABEL_47:
    v44 = *&__src[304];
    if (__src[308])
    {
      v44 = 0.0;
      v45 = -1;
    }

    else
    {
      v45 = 0;
    }

    v46 = vdupq_n_s64(v45);
    v47 = vbicq_s8(*&__src[272], v46);
    v48 = vbicq_s8(*&__src[288], v46);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v47), vceqzq_f64(v48))))) & 1) != 0 || v44 != 0.0)
    {
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v47 = 0uLL;
      v44 = 0.0;
      v48 = 0uLL;
    }

    *&__src[256] = 0;
    *&__src[264] = 0;
    *&__src[272] = v47;
    *&__src[288] = v48;
    *&__src[304] = v44;
    __src[308] = v49;
    if ((a1 & 0x10) != 0)
    {
LABEL_8:
      if ((a1 & 0x20) != 0)
      {
        goto LABEL_89;
      }

LABEL_63:
      if ((a1 & 0x100000) != 0)
      {
        if ((a1 & 0x40) == 0)
        {
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (__src[872])
      {
        v58 = 0;
        v59 = 0;
        v60 = 0.0;
        v61 = 0.0;
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0;
      }

      else
      {
        v59 = *&__src[848];
        v64 = vmovn_s64(*&__src[856]);
        v58 = vshrn_n_s64(*&__src[856], 0x20uLL);
        v60 = *&__src[824];
        v61 = *&__src[832];
        v62 = *&__src[836];
        v63 = *&__src[844];
      }

      if (v60 == 0.0 && v61 == 0.0 && v62 == 0.0 && v63 == 0.0 && (v205 = v64, v209 = v58, v65 = sub_18AFCCCB4(), v64 = v205, v58 = v209, (v65 & 1) != 0) && *v205.i32 == 0.0 && *v209.i32 == 0.0 && (v66 = vceqz_f32(vzip2_s32(v209, v205)), (v66.i32[1] & v66.i32[0] & 1) != 0))
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0uLL;
        v71 = 1;
        v59 = 0;
      }

      else
      {
        v71 = 0;
        v67 = LODWORD(v60);
        v68 = LODWORD(v61) | (LODWORD(v62) << 32);
        v69 = LODWORD(v63) << 32;
        v72.i64[0] = v64.u32[0];
        v72.i64[1] = v64.u32[1];
        v70 = vorrq_s8(vshll_n_s32(v58, 0x20uLL), v72);
      }

      *&__src[824] = v67;
      *&__src[832] = v68;
      *&__src[840] = v69;
      *&__src[848] = v59;
      *&__src[856] = v70;
      __src[872] = v71;
LABEL_89:
      memset(&__src[880], 0, 24);
      __src[904] = 1;
      if ((a1 & 0x40) == 0)
      {
LABEL_90:
        v73 = __src[497];
        if (__src[497] == 2)
        {
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v73 = 0;
          v77 = 0uLL;
          v78 = 0.0;
          v79 = 0.0;
          v80 = 1;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v256) = 1;
          LOBYTE(v234) = 1;
          v81 = 0.0;
          v82 = 0.0;
          v83 = 0.0;
          v84 = 0.0;
          v85 = 0.0;
          v86 = 1;
          v87 = 1;
          v88 = 0uLL;
        }

        else
        {
          v80 = __src[456];
          v77 = *&__src[440];
          v85 = *&__src[436];
          v84 = *&__src[432];
          v83 = *&__src[428];
          v82 = *&__src[424];
          v81 = *&__src[420];
          v78 = *&__src[416];
          v79 = *&__src[408];
          v87 = __src[496];
          v88 = *&__src[480];
          v86 = __src[476];
          v75 = *&__src[464];
          v74 = (*&__src[457] << 8) | ((*&__src[461] | (__src[463] << 16)) << 40);
          v76 = *&__src[472];
        }

        v254 = 1;
        v200 = a1;
        if (v79 == 0.0 && v78 == 0.0 && v81 == 0.0 && v82 == 0.0 && v83 == 0.0 && v84 == 0.0 && v85 == 0.0 && (v80 & 1) != 0 && (v86 & 1) != 0 && (v87 & 1) != 0 && (v73 & 1) == 0)
        {
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v75 = 0;
          v93 = 0;
          v77 = 0uLL;
          v79 = 0.0;
          v88 = 0uLL;
          v94 = 512;
        }

        else
        {
          v89 = LODWORD(v78) | (LODWORD(v81) << 32);
          v90 = LODWORD(v82) | (LODWORD(v83) << 32);
          v91 = LODWORD(v84) | (LODWORD(v85) << 32);
          v92 = v74 | v80;
          v93 = ((*&__src[477] | (__src[479] << 16)) << 40) | (v86 << 32) | v76;
          v94 = v87 | (v73 << 8);
        }

        *&__src[392] = 0;
        *&__src[400] = 0;
        *&__src[408] = v79;
        *&__src[416] = v89;
        *&__src[424] = v90;
        *&__src[432] = v91;
        *&__src[440] = v77;
        *&__src[456] = v92;
        *&__src[464] = v75;
        *&__src[472] = v93;
        *&__src[480] = v88;
        *&__src[496] = v94;
        v95 = *&__src[24];
        v96 = *&__src[32];
        v97 = *&__src[40];
        v98 = *&__src[48];
        v99 = *&__src[56];
        v100 = *&__src[64];
        v101 = *&__src[72];
        v252 = *&__src[109];
        v253 = __src[111];
        v250 = *&__src[129];
        v251 = __src[131];
        v102 = __src[148];
        v249 = __src[151];
        v248 = *&__src[149];
        __dst[0] = *&__src[24];
        __dst[1] = *&__src[32];
        __dst[2] = *&__src[40];
        __dst[3] = *&__src[48];
        __dst[4] = *&__src[56];
        __dst[5] = *&__src[64];
        __dst[6] = *&__src[72];
        v195 = *&__src[80];
        __dst[7] = *&__src[80];
        v192 = *&__src[84];
        v189 = *&__src[88];
        LODWORD(__dst[8]) = *&__src[88];
        v202 = *&__src[92];
        *(&__dst[8] + 4) = *&__src[92];
        v198 = *&__src[100];
        *(&__dst[9] + 4) = *&__src[100];
        v103 = __src[108];
        BYTE4(__dst[10]) = __src[108];
        HIBYTE(__dst[10]) = __src[111];
        *(&__dst[10] + 5) = *&__src[109];
        v104 = *&__src[112];
        __dst[11] = *&__src[112];
        __dst[12] = *&__src[120];
        v105 = *&__src[120];
        v106 = __src[128];
        LOBYTE(__dst[13]) = __src[128];
        BYTE3(__dst[13]) = __src[131];
        *(&__dst[13] + 1) = *&__src[129];
        v107 = *&__src[132];
        *(&__dst[13] + 4) = *&__src[132];
        v108 = *&__src[140];
        *(&__dst[14] + 4) = *&__src[140];
        BYTE4(__dst[15]) = __src[148];
        HIBYTE(__dst[15]) = __src[151];
        *(&__dst[15] + 5) = *&__src[149];
        v109 = *&__src[152];
        __dst[16] = *&__src[152];
        v206 = *&__src[156];
        __dst[17] = *&__src[160];
        LOBYTE(__dst[18]) = __src[168];
        if (sub_18AF4FB80(__dst) == 1)
        {
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v115 = 0;
          v103 = 1;
          v106 = 1;
          v116 = 0.0;
          v95 = 0.0;
          v96 = 0.0;
          v97 = 0.0;
          v98 = 0.0;
          v102 = v254;
          v99 = 0.0;
          v100 = 0.0;
          v101 = 0.0;
          v117 = 0.0;
          v118 = 0.0;
          v109 = 0.0;
          a1 = v200;
        }

        else
        {
          v246 = v252;
          v247 = v253;
          v244 = v250;
          v245 = v251;
          v242 = v248;
          v243 = v249;
          v110 = v107;
          v111 = v108;
          v112 = v104;
          v113 = v105;
          a1 = v200;
          v114 = v202;
          v115 = v198;
          v116 = v195;
          v117 = v192;
          v118 = v189;
        }

        if (v95 == 0.0 && v96 == 0.0 && v97 == 0.0 && v98 == 0.0 && v99 == 0.0 && v100 == 0.0 && v101 == 0.0 && v116 == 0.0 && v117 == 0.0 && v118 == 0.0 && (v103 & 1) != 0 && (v106 & 1) != 0 && (v102 & 1) != 0 && v109 == 0.0)
        {
          sub_18AF6A99C(&v256);
        }

        else
        {
          *&v234 = v95;
          *(&v234 + 1) = v96;
          *&v235 = v97;
          *(&v235 + 1) = v98;
          *&v236 = v99;
          *(&v236 + 1) = v100;
          *&v237 = v101;
          *(&v237 + 1) = __PAIR64__(LODWORD(v117), LODWORD(v116));
          *v238 = v118;
          *&v238[4] = v114;
          *&v238[12] = v115;
          v238[20] = v103;
          *&v238[21] = v246;
          v238[23] = v247;
          *&v238[24] = v112;
          *v239 = v113;
          v239[8] = v106;
          v239[11] = v245;
          *&v239[9] = v244;
          *&v239[12] = v110;
          *&v239[20] = v111;
          v239[28] = v102;
          v239[31] = v243;
          *&v239[29] = v242;
          v240 = __PAIR64__(v206, LODWORD(v109));
          sub_18AF6A9C0(&v234);
          *v261 = *v239;
          *&v261[16] = *&v239[16];
          v262 = v240;
          LOBYTE(v263) = v241;
          v258 = v236;
          v259 = v237;
          *v260 = *v238;
          *&v260[16] = *&v238[16];
          v256 = v234;
          v257 = v235;
        }

        v4 = v3;
        *&__src[120] = *v261;
        *&__src[136] = *&v261[16];
        *&__src[152] = v262;
        *&__src[56] = v258;
        *&__src[72] = v259;
        *&__src[88] = *v260;
        *&__src[104] = *&v260[16];
        *&__src[24] = v256;
        __src[168] = v263;
        *&__src[40] = v257;
        if ((a1 & 0x200) == 0)
        {
LABEL_126:
          v119 = __src[604];
          BYTE2(v234) = __src[607];
          LOWORD(v234) = *&__src[605];
          v253 = __src[627];
          v252 = *&__src[625];
          v251 = __src[647];
          v250 = *&__src[645];
          v249 = __src[727];
          v248 = *&__src[725];
          v233 = __src[747];
          v232 = *&__src[745];
          v231 = __src[767];
          v230 = *&__src[765];
          HIBYTE(__dst[10]) = __src[607];
          *(&__dst[10] + 5) = *&__src[605];
          BYTE3(__dst[13]) = __src[627];
          v120 = __src[724];
          *(&__dst[13] + 1) = *&__src[625];
          HIBYTE(__dst[15]) = __src[647];
          *(&__dst[15] + 5) = *&__src[645];
          HIBYTE(__dst[25]) = __src[727];
          *(&__dst[25] + 5) = *&__src[725];
          BYTE3(__dst[28]) = __src[747];
          v121 = __src[744];
          *(&__dst[28] + 1) = *&__src[745];
          HIBYTE(__dst[30]) = __src[767];
          *(&__dst[30] + 5) = *&__src[765];
          v122 = *&__src[768];
          v123 = *&__src[528];
          __dst[1] = *&__src[528];
          __dst[2] = *&__src[536];
          v181 = *&__src[536];
          v124 = *&__src[552];
          __dst[4] = *&__src[552];
          __dst[5] = *&__src[560];
          v125 = *&__src[560];
          v126 = *&__src[568];
          __dst[6] = *&__src[568];
          v196 = *&__src[596];
          v199 = *&__src[588];
          *(&__dst[8] + 4) = *&__src[588];
          *(&__dst[9] + 4) = *&__src[596];
          v190 = *&__src[616];
          v193 = *&__src[608];
          __dst[11] = *&__src[608];
          __dst[12] = *&__src[616];
          v185 = *&__src[636];
          v187 = *&__src[628];
          *(&__dst[13] + 4) = *&__src[628];
          *(&__dst[14] + 4) = *&__src[636];
          v178 = *&__src[648];
          v179 = *&__src[656];
          __dst[16] = *&__src[648];
          __dst[17] = *&__src[656];
          v176 = *&__src[680];
          v177 = *&__src[672];
          __dst[19] = *&__src[672];
          __dst[20] = *&__src[680];
          v175 = *&__src[688];
          __dst[21] = *&__src[688];
          v183 = *&__src[708];
          *(&__dst[23] + 4) = *&__src[708];
          v170 = *&__src[728];
          v171 = *&__src[716];
          *(&__dst[24] + 4) = *&__src[716];
          __dst[26] = *&__src[728];
          __dst[27] = *&__src[736];
          v168 = *&__src[748];
          v169 = *&__src[736];
          *(&__dst[28] + 4) = *&__src[748];
          v167 = *&__src[756];
          *(&__dst[29] + 4) = *&__src[756];
          __dst[31] = *&__src[768];
          LOBYTE(__dst[32]) = __src[776];
          v127 = __src[764];
          v128 = *&__src[520];
          __dst[0] = *&__src[520];
          v210 = *&__src[524];
          __dst[3] = *&__src[544];
          v207 = *&__src[548];
          v129 = *&__src[576];
          __dst[7] = *&__src[576];
          v130 = *&__src[580];
          v180 = *&__src[584];
          LODWORD(__dst[8]) = *&__src[584];
          BYTE4(__dst[10]) = __src[604];
          v131 = __src[624];
          LOBYTE(__dst[13]) = __src[624];
          v132 = __src[644];
          BYTE4(__dst[15]) = __src[644];
          __dst[18] = *&__src[664];
          v203 = *&__src[668];
          v173 = *&__src[700];
          v174 = *&__src[696];
          __dst[22] = *&__src[696];
          v172 = *&__src[704];
          LODWORD(__dst[23]) = *&__src[704];
          BYTE4(__dst[25]) = __src[724];
          LOBYTE(__dst[28]) = __src[744];
          BYTE4(__dst[30]) = __src[764];
          if (sub_18AF4FB9C(__dst) == 1)
          {
            v133 = 0;
            v134 = 0;
            v135 = 0;
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v123 = 0;
            v128 = 0;
            v145 = 0;
            v124 = 0;
            v125 = 0;
            v126 = 0;
            v129 = 0;
            v130 = 0;
            v146 = 0;
            v119 = 1;
            LOBYTE(v256) = 1;
            v254 = 1;
            v147 = 0;
            v148 = 0;
            v149 = 0;
            v131 = 1;
            v132 = 1;
            v150 = 0;
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v154 = 0;
            v120 = 1;
            v121 = 1;
            v127 = 1;
            v122 = 0;
          }

          else
          {
            v228 = v234;
            v229 = BYTE2(v234);
            v226 = v252;
            v227 = v253;
            v224 = v250;
            v225 = v251;
            v223 = v249;
            v222 = v248;
            v221 = v233;
            v220 = v232;
            v219 = v231;
            v218 = v230;
            v134 = v196;
            v133 = v199;
            v136 = v190;
            v135 = v193;
            v138 = v185;
            v137 = v187;
            v139 = v183;
            v145 = v181;
            v146 = v180;
            v147 = v178;
            v148 = v179;
            v150 = v176;
            v149 = v177;
            v151 = v175;
            v153 = v173;
            v152 = v174;
            v154 = v172;
            v141 = v170;
            v140 = v171;
            v143 = v168;
            v142 = v169;
            v144 = v167;
          }

          *&v256 = __PAIR64__(v210, v128);
          *(&v256 + 1) = v123;
          *&v257 = v145;
          DWORD2(v257) = 0;
          HIDWORD(v257) = v207;
          *&v258 = v124;
          *(&v258 + 1) = v125;
          *&v259 = v126;
          *(&v259 + 1) = __PAIR64__(v130, v129);
          *v260 = v146;
          *&v260[4] = v133;
          *&v260[12] = v134;
          v260[20] = v119;
          *&v260[21] = v228;
          v260[23] = v229;
          *&v260[24] = v135;
          *v261 = v136;
          v261[8] = v131;
          v261[11] = v227;
          *&v261[9] = v226;
          *&v261[12] = v137;
          *&v261[20] = v138;
          v261[28] = v132;
          v261[31] = v225;
          *&v261[29] = v224;
          *&v262 = v147;
          *(&v262 + 1) = v148;
          v263 = 0;
          v264 = v203;
          v265 = v149;
          v266 = v150;
          v267 = v151;
          v268 = v152;
          v269 = v153;
          v270 = v154;
          v271 = v139;
          v272 = v140;
          v273 = v120;
          v275 = v223;
          v274 = v222;
          v276 = v141;
          v277 = v142;
          v278 = v121;
          v280 = v221;
          v279 = v220;
          v281 = v143;
          v282 = v144;
          v283 = v127;
          v285 = v219;
          v284 = v218;
          v286 = v122;
          sub_18AF6B330(&v256);
          v4 = v3;
          if ((a1 & 0x4000) == 0)
          {
LABEL_130:
            v155 = *(v4 + 976);
            v156 = *(v4 + 968);
            if (*(v4 + 984))
            {
              v156 = 0.0;
              v155 = 0.0;
            }

            if (v156 == 0.0 && v155 == 0.0)
            {
              v157 = 0;
            }

            else
            {
              v157 = LODWORD(v156);
            }

            if (v156 == 0.0 && v155 == 0.0)
            {
              v158 = 0.0;
            }

            else
            {
              v158 = v155;
            }

            *&__src[968] = v157;
            *&__src[976] = v158;
            __src[984] = v156 == 0.0 && v155 == 0.0;
            if ((a1 & 0x8000) == 0)
            {
LABEL_139:
              v159 = *(v4 + 952);
              v160 = *(v4 + 944);
              if (*(v4 + 960))
              {
                v160 = 0.0;
                v159 = 0.0;
              }

              if (v160 == 0.0 && v159 == 0.0)
              {
                v161 = 0;
              }

              else
              {
                v161 = LODWORD(v160);
              }

              if (v160 == 0.0 && v159 == 0.0)
              {
                v162 = 0.0;
              }

              else
              {
                v162 = v159;
              }

              *&__src[944] = v161;
              *&__src[952] = v162;
              __src[960] = v160 == 0.0 && v159 == 0.0;
              if ((a1 & 0x10000) == 0)
              {
LABEL_148:
                v163 = *(v4 + 1008);
                v164 = *(v4 + 1016);
                if (*(v4 + 1024))
                {
                  v163 = 0.0;
                  v164 = 0.0;
                }

                if (v163 == 0.0 && v164 == 0.0)
                {
                  v165 = 0.0;
                }

                else
                {
                  v165 = v163;
                }

                if (v163 == 0.0 && v164 == 0.0)
                {
                  v166 = 0.0;
                }

                else
                {
                  v166 = v164;
                }

                *&__src[992] = 0u;
                *&__src[1008] = v165;
                *&__src[1016] = v166;
                __src[1024] = v163 == 0.0 && v164 == 0.0;
                if ((a1 & 0x40000) != 0)
                {
                  goto LABEL_73;
                }

                goto LABEL_70;
              }

LABEL_69:
              if ((a1 & 0x40000) != 0)
              {
LABEL_73:
                sub_18AF5EDE8();
                memcpy(__dst, __src, 0x401uLL);
                v5 = a3;
                return memcpy(v5, __dst, 0x401uLL);
              }

LABEL_70:
              v56 = *(v4 + 784);
              if (*(v4 + 816))
              {
                v56 = 0;
              }

              *&__src[784] = v56;
              *&__src[792] = 1065353216;
              memset(&__src[800], 0, 17);
              goto LABEL_73;
            }

LABEL_68:
            if ((a1 & 0x10000) == 0)
            {
              goto LABEL_148;
            }

            goto LABEL_69;
          }

LABEL_67:
          if ((a1 & 0x8000) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_68;
        }

LABEL_66:
        if ((a1 & 0x4000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_67;
      }

LABEL_65:
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_66;
    }

LABEL_55:
    v50 = *&__src[304];
    if (__src[308])
    {
      v50 = 0.0;
      v51 = -1;
    }

    else
    {
      v51 = 0;
    }

    v52 = vdupq_n_s64(v51);
    v53 = vbicq_s8(*&__src[256], v52);
    v54 = vbicq_s8(*&__src[288], v52);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v53), vceqzq_f64(v54))))) & 1) != 0 || v50 != 0.0)
    {
      v55 = 0;
    }

    else
    {
      v55 = 1;
      v53 = 0uLL;
      v50 = 0.0;
      v54 = 0uLL;
    }

    *&__src[256] = v53;
    *&__src[272] = 0;
    *&__src[280] = 0;
    *&__src[288] = v54;
    *&__src[304] = v50;
    __src[308] = v55;
    if ((a1 & 0x20) != 0)
    {
      goto LABEL_89;
    }

    goto LABEL_63;
  }

  memcpy(__dst, v3, 0x401uLL);
  return memcpy(v5, __dst, 0x401uLL);
}

unint64_t sub_18AE89F60(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t GlassMaterialProvider.init(_:options:size:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v9) = *a1;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v18 = v9;
  sub_18AE8A0A4(v10);
  sub_18AE7B03C(v10, a4, type metadata accessor for GlassMaterialProvider.Configuration);
  if (v12 == 1)
  {
    sub_18AE8E22C(*v10, &v17);
    v11 = v17;
  }

  *(a4 + 40) = v11;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  return sub_18AFAC05C(v10, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AE8A0A4@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (qword_1ED56A750 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A758;
      break;
    case 2:
      if (qword_1EA997660 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997668;
      break;
    case 3:
      if (qword_1EA997700 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997708;
      break;
    case 4:
      if (qword_1EA997640 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997648;
      break;
    case 5:
      if (qword_1ED56A590 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A548;
      break;
    case 6:
      if (qword_1ED56A748 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A730;
      break;
    case 7:
      if (qword_1EA9978F0 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B518;
      break;
    case 8:
      if (qword_1ED56A708 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A710;
      break;
    case 9:
      if (qword_1EA9978F8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B530;
      break;
    case 0xA:
      if (qword_1EA997620 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997628;
      break;
    case 0xB:
      if (qword_1EA997900 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B548;
      break;
    case 0xC:
      if (qword_1ED56A6C8 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A6D0;
      break;
    case 0xD:
    case 0xE:
      if (qword_1EA997908 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B560;
      break;
    case 0xF:
      if (qword_1ED56A5C0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5C8;
      break;
    case 0x10:
      if (qword_1ED56A528 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A530;
      break;
    case 0x11:
      if (qword_1ED56A560 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A568;
      break;
    case 0x12:
      if (qword_1EA997918 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B590;
      break;
    case 0x13:
      if (qword_1ED56A5A0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5A8;
      break;
    case 0x14:
      if (qword_1EA997720 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA997728;
      break;
    case 0x15:
      if (qword_1ED56A5F0 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56A5F8;
      break;
    case 0x16:
      if (qword_1EA997920 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B5A8;
      break;
    case 0x17:
      if (qword_1EA997928 != -1)
      {
        swift_once();
      }

      v3 = qword_1EA99B5C0;
      break;
    default:
      if (qword_1ED56AA10 != -1)
      {
        swift_once();
      }

      v3 = qword_1ED56AA18;
      break;
  }

  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = __swift_project_value_buffer(v4, v3);
  return sub_18AE7B03C(v5, a1, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AE8A6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v112 = a3;
  v98 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v88 - v6;
  v7 = sub_18AFCD244();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD2E4();
  v105 = *(v9 - 8);
  v106 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v88 - v14;
  v93 = sub_18AFCD2B4();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v88 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA0, &qword_18AFE1220);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v91 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v88 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA8, &unk_18AFE1228);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v108 = &v88 - v23;
  v111 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v107 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v100 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10, &qword_18AFD9A30);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v88 - v28;
  v30 = sub_18AFCD3A4();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v37 = sub_18AFCDAD4();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v94 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v88 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v88 - v44;
  v110 = a1;
  sub_18AFCD3C4();
  sub_18AFCD304();
  v46 = v36;
  v47 = v37;
  (*(v31 + 8))(v46, v30);
  v48 = v38;
  if ((*(v38 + 48))(v29, 1, v37) == 1)
  {
    v49 = v42;
    sub_18AE7BA80(v29, &qword_1EA99AF10, &qword_18AFD9A30);
    sub_18AFCD3C4();
    v50 = v108;
    sub_18AE8B3A0(v33, v108);
    if ((*(v107 + 48))(v50, 1, v111) == 1)
    {
      sub_18AE7BA80(v50, &qword_1EA99BDA8, &unk_18AFE1228);
      sub_18AFCD524();
      v51 = v112;
      sub_18AFCD3D4();
    }

    else
    {
      v88 = v48;
      v107 = v47;
      v52 = v104;
      sub_18AE7C230(v50, v104, type metadata accessor for GlassMaterialProvider.Configuration);
      v53 = v109;
      sub_18AFCD204();
      v54 = v91;
      sub_18AE8C078(v53, v91);
      v55 = v92;
      v56 = v93;
      v57 = v42;
      if ((*(v92 + 48))(v54, 1, v93) == 1)
      {
        LODWORD(v108) = 5;
      }

      else
      {
        v58 = v90;
        (*(v55 + 32))(v90, v54, v56);
        v59 = v89;
        (*(v55 + 16))(v89, v58, v56);
        sub_18AE96EAC(v59, v114);
        LODWORD(v108) = LOBYTE(v114[0]);
        (*(v55 + 8))(v58, v56);
      }

      v61 = v105;
      v60 = v106;
      v63 = v102;
      v62 = v103;
      v64 = v101;
      sub_18AE7BA80(v109, &qword_1EA99BDA0, &qword_18AFE1220);
      if (sub_18AFCD434())
      {
        sub_18AFCCCE4();
        v65 = v114[0];
        v66 = v114[1];
        v67 = v115;
        v68 = v100;
        sub_18AE7AF6C(v52, v100, type metadata accessor for GlassMaterialProvider.Configuration);
        v69 = *(v111 + 56);
        v70 = *(v68 + v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_18AE91D64(0, *(v70 + 2) + 1, 1, v70);
        }

        v72 = *(v70 + 2);
        v71 = *(v70 + 3);
        if (v72 >= v71 >> 1)
        {
          v70 = sub_18AE91D64((v71 > 1), v72 + 1, 1, v70);
        }

        v73 = v104;
        sub_18AE8BFB4(v104, type metadata accessor for GlassMaterialProvider.Configuration);
        *(v70 + 2) = v72 + 1;
        v74 = &v70[32 * v72];
        *(v74 + 4) = -1;
        *(v74 + 5) = v65;
        *(v74 + 6) = v66;
        *(v74 + 14) = v67;
        v74[60] = 1;
        v75 = v100;
        *(v100 + v69) = v70;
        v52 = v73;
        sub_18AE7C230(v75, v73, type metadata accessor for GlassMaterialProvider.Configuration);
        v61 = v105;
        v60 = v106;
        v63 = v102;
        v62 = v103;
        v64 = v101;
        v57 = v49;
      }

      if (!*(v52 + 8))
      {
        sub_18AFCC3D4();
        (*(v61 + 16))(v63, v62, v60);
        sub_18AFCD214();
        v110 = sub_18AE8C130(&qword_1ED56A7A0, MEMORY[0x1E69818B0], MEMORY[0x1E69818B8]);
        v76 = sub_18AFCDDF4();
        v77 = *(v61 + 8);
        v77(v64, v60);
        if (v76)
        {
          v77(v63, v60);
          v77(v62, v60);
          v78 = 1;
        }

        else
        {
          sub_18AFCD234();
          v79 = sub_18AFCDDF4();
          v77(v64, v60);
          v77(v63, v60);
          v77(v62, v60);
          if (v79)
          {
            v78 = 2;
          }

          else
          {
            v78 = 0;
          }
        }

        *(v52 + 8) = v78;
        v57 = v49;
      }

      v80 = v96;
      sub_18AFCD254();
      sub_18AFB7738(v80, &v113);
      *(v52 + *(v111 + 48)) = v113;
      v81 = v108;
      if (v108 == 5)
      {
        v81 = 0;
      }

      *(v52 + 48) = v81;
      v82 = v99;
      sub_18AE7AF6C(v52, v99, type metadata accessor for GlassMaterialProvider.Configuration);
      sub_18AE7AF6C(v82, v97, type metadata accessor for GlassMaterialProvider);
      sub_18AE8C130(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider, &protocol conformance descriptor for GlassMaterialProvider);
      sub_18AE8C130(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved, &protocol conformance descriptor for GlassMaterialProvider.Resolved);
      sub_18AFCD5E4();
      v83 = v57;
      v84 = v88;
      v85 = v107;
      (*(v88 + 16))(v94, v83, v107);
      v51 = v112;
      sub_18AFCD3D4();
      (*(v84 + 8))(v83, v85);
      sub_18AE8BFB4(v82, type metadata accessor for GlassMaterialProvider);
      sub_18AE8BFB4(v52, type metadata accessor for GlassMaterialProvider.Configuration);
    }
  }

  else
  {
    (*(v38 + 32))(v45, v29, v37);
    (*(v38 + 16))(v42, v45, v37);
    v51 = v112;
    sub_18AFCD3D4();
    (*(v48 + 8))(v45, v37);
  }

  v86 = sub_18AFCD3E4();
  return (*(*(v86 - 8) + 56))(v51, 0, 1, v86);
}

uint64_t sub_18AE8B3A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v106 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDC0, &qword_18AFE1238);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v88 - v3;
  v4 = type metadata accessor for GlassMaterialProvider(0);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10, &qword_18AFD9A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v88 - v7;
  v97 = sub_18AFCDAD4();
  v94 = *(v97 - 1);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCD3A4();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA8, &unk_18AFE1228);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDC8, &unk_18AFE1240);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v88 - v18;
  v20 = sub_18AFCD354();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v24 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v98 = &v88 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v88 - v31;
  *(v32 + 4) = 0;
  v32[48] = 0;
  v34 = *(v33 + 40);
  v35 = sub_18AFCBB34();
  v36 = *(*(v35 - 8) + 56);
  v101 = v34;
  v37 = &v32[v34];
  v38 = v20;
  v39 = v21;
  v36(v37, 1, 1, v35);
  v32[v23[11]] = 3;
  v32[v23[12]] = 0;
  v40 = &v32[v23[13]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v40[16] = 1;
  *&v32[v23[14]] = MEMORY[0x1E69E7CC0];
  *&v32[v23[15]] = 0;
  v41 = &v32[v23[16]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[20] = -1;
  *(v41 + 4) = 0;
  v42 = &v32[v23[17]];
  *v42 = 0;
  v42[4] = 2;
  *&v32[v23[18]] = 0;
  v43 = &v32[v23[19]];
  *v43 = 0;
  *(v43 + 1) = 0;
  sub_18AFCD364();
  v44 = (*(v21 + 48))(v19, 1, v38);
  v104 = v24;
  if (v44 == 1)
  {
    v45 = &qword_1EA99BDC8;
    v46 = &unk_18AFE1240;
    v47 = v19;
  }

  else
  {
    v48 = *(v21 + 32);
    v49 = v100;
    v48(v100, v19, v38);
    sub_18AFCD334();
    sub_18AE8B3A0(v11, v16);
    v50 = *(v24 + 48);
    if (v50(v16, 1, v23) == 1)
    {
      (*(v39 + 8))(v49, v38);
      v45 = &qword_1EA99BDA8;
      v46 = &unk_18AFE1228;
      v47 = v16;
    }

    else
    {
      v51 = v16;
      v52 = v98;
      sub_18AE7C230(v51, v98, type metadata accessor for GlassMaterialProvider.Configuration);
      sub_18AFCD324();
      v53 = v99;
      sub_18AE8B3A0(v11, v99);
      if (v50(v53, 1, v23) != 1)
      {
        v65 = v95;
        sub_18AE7C230(v53, v95, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AFCD344();
        v67 = v66;
        v68 = _s13ConfigurationV3MixVMa(0);
        v99 = swift_allocBox();
        v70 = v69;
        v97 = type metadata accessor for GlassMaterialProvider.Configuration;
        sub_18AE7AF6C(v52, v69, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AE7AF6C(v65, v70 + *(v68 + 20), type metadata accessor for GlassMaterialProvider.Configuration);
        *(v70 + *(v68 + 24)) = v67;
        v71 = v96;
        v72 = sub_18AF4884C(v99 | 0x8000000000000000, v96);
        (*(v102 + 8))(v106, v103, v72);
        sub_18AE8BFB4(v65, type metadata accessor for GlassMaterialProvider.Configuration);
        sub_18AE8BFB4(v52, type metadata accessor for GlassMaterialProvider.Configuration);
        (*(v39 + 8))(v49, v38);
        sub_18AE7BA80(&v32[v101], &qword_1EA99B5F0, &qword_18AFDAF70);
        v73 = v71;
        v74 = v32;
        v75 = v97;
        goto LABEL_22;
      }

      sub_18AE8BFB4(v52, type metadata accessor for GlassMaterialProvider.Configuration);
      (*(v39 + 8))(v49, v38);
      v45 = &qword_1EA99BDA8;
      v46 = &unk_18AFE1228;
      v47 = v53;
    }
  }

  sub_18AE7BA80(v47, v45, v46);
  sub_18AFCD394();
  v54 = v106;
  v55 = MEMORY[0x18CFEC680](v106, v11);
  v56 = v103;
  v57 = *(v102 + 8);
  v57(v11, v103);
  if (v55)
  {
    if (qword_1ED56A6C8 != -1)
    {
      swift_once();
    }

    v57(v54, v56);
    v58 = qword_1ED56A6D0;
LABEL_19:
    v61 = __swift_project_value_buffer(v23, v58);
    sub_18AE7BA80(&v32[v101], &qword_1EA99B5F0, &qword_18AFDAF70);
    sub_18AE7AF6C(v61, v32, type metadata accessor for GlassMaterialProvider.Configuration);
LABEL_20:
    v63 = v104;
    v62 = v105;
    sub_18AE7AF6C(v32, v105, type metadata accessor for GlassMaterialProvider.Configuration);
    (*(v63 + 56))(v62, 0, 1, v23);
    return sub_18AE8BFB4(v32, type metadata accessor for GlassMaterialProvider.Configuration);
  }

  sub_18AFCD384();
  v59 = MEMORY[0x18CFEC680](v54, v11);
  v57(v11, v56);
  if (v59)
  {
    if (qword_1ED56AA10 != -1)
    {
      swift_once();
    }

    v57(v54, v56);
    v58 = qword_1ED56AA18;
    goto LABEL_19;
  }

  sub_18AFCD374();
  v60 = MEMORY[0x18CFEC680](v54, v11);
  v57(v11, v56);
  if (v60)
  {
    if (qword_1ED56A750 != -1)
    {
      swift_once();
    }

    v57(v54, v56);
    v58 = qword_1ED56A758;
    goto LABEL_19;
  }

  v76 = v92;
  sub_18AFCD304();
  v77 = v94;
  v78 = v97;
  if ((*(v94 + 48))(v76, 1, v97) != 1)
  {
    (*(v77 + 32))(v93, v76, v78);
    sub_18AE8C130(&qword_1EA99BDD0, type metadata accessor for GlassMaterialProvider, &protocol conformance descriptor for GlassMaterialProvider);
    v83 = v90;
    v82 = v91;
    v84 = v93;
    sub_18AFCDA94();
    v57(v54, v56);
    (*(v77 + 8))(v84, v97);
    if ((*(v89 + 48))(v82, 1, v83) == 1)
    {
      v79 = &qword_1EA99BDC0;
      v80 = &qword_18AFE1238;
      v81 = v82;
      goto LABEL_27;
    }

    v86 = v82;
    v87 = v88;
    sub_18AE7C230(v86, v88, type metadata accessor for GlassMaterialProvider);
    sub_18AE7BA80(&v32[v101], &qword_1EA99B5F0, &qword_18AFDAF70);
    v75 = type metadata accessor for GlassMaterialProvider.Configuration;
    v73 = v87;
    v74 = v32;
LABEL_22:
    sub_18AE7C230(v73, v74, v75);
    goto LABEL_20;
  }

  v57(v54, v56);
  v79 = &qword_1EA99AF10;
  v80 = &qword_18AFD9A30;
  v81 = v76;
LABEL_27:
  sub_18AE7BA80(v81, v79, v80);
  v85 = v104;
  sub_18AE7BA80(&v32[v101], &qword_1EA99B5F0, &qword_18AFDAF70);
  return (*(v85 + 56))(v105, 1, 1, v23);
}

uint64_t sub_18AE8BFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AE8C014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE8C078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BDA0, &qword_18AFE1220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AE8C0E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AE8C130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_18AE8C178@<Q0>(uint64_t a1@<X8>, float a5@<S3>)
{
  sub_18AFCCE24();
  v8 = v7 * a5;
  if (v8 <= 0.99609)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.99609;
  }

  sub_18AFCCE54();
  v11 = v10 * a5;
  if (v11 <= 0.99609)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.99609;
  }

  sub_18AFCCE34();
  v14 = v13 * a5;
  if (v14 > 0.99609)
  {
    v14 = 0.99609;
  }

  v18 = (v9 / (1.0 - v9)) + 1.0;
  v20 = 0;
  v19 = 0;
  v21 = 0;
  v22 = (v12 / (1.0 - v12)) + 1.0;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v26 = (v14 / (1.0 - v14)) + 1.0;
  v28 = 0;
  v27 = 0;
  v29 = 0;
  v30 = 1065353216;
  sub_18AFCBCB4(v17);
  v15 = v17[3];
  *(a1 + 32) = v17[2];
  *(a1 + 48) = v15;
  *(a1 + 64) = v17[4];
  result = v17[1];
  *a1 = v17[0];
  *(a1 + 16) = result;
  return result;
}

double sub_18AE8C2E8()
{
  xmmword_1ED56C950 = xmmword_18AFE22F0;
  unk_1ED56C960 = xmmword_18AFE2300;
  xmmword_1ED56C970 = xmmword_18AFE2310;
  unk_1ED56C980 = xmmword_18AFE2320;
  result = 0.0;
  xmmword_1ED56C990 = xmmword_18AFDC150;
  return result;
}

double sub_18AE8C328()
{
  xmmword_1ED56C900 = xmmword_18AFE2330;
  *algn_1ED56C910 = xmmword_18AFE2340;
  xmmword_1ED56C920 = xmmword_18AFE2350;
  unk_1ED56C930 = xmmword_18AFE2360;
  result = 0.0;
  xmmword_1ED56C940 = xmmword_18AFDC150;
  return result;
}

float32x4_t sub_18AE8C368@<Q0>(float32x4_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *&a4 = -*&a2;
  v5 = vdupq_lane_s32(*&a2, 0);
  v6 = vdupq_lane_s32(*&a4, 0);
  v7 = vdupq_lane_s32(*&a3, 0);
  v8 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[1], vandq_s8(vcgtq_f32(v5, v4[1]), vcgtq_f32(v4[1], v6))), v7)), *&a3);
  *a1 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(*v4, vandq_s8(vcgtq_f32(v5, *v4), vcgtq_f32(*v4, v6))), v7)), *&a3);
  a1[1] = v8;
  v9 = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[3], vandq_s8(vcgtq_f32(v5, v4[3]), vcgtq_f32(v4[3], v6))), v7)), *&a3);
  a1[2] = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[2], vandq_s8(vcgtq_f32(v5, v4[2]), vcgtq_f32(v4[2], v6))), v7)), *&a3);
  a1[3] = v9;
  result = vmulq_n_f32(vrndaq_f32(vdivq_f32(vbicq_s8(v4[4], vandq_s8(vcgtq_f32(v5, v4[4]), vcgtq_f32(v4[4], v6))), v7)), *&a3);
  a1[4] = result;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.tint(_:color:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  sub_18AE7AFD4(v4, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  v10 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 56);
  v11 = *(a3 + v10);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18AE91D64(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_18AE91D64((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  v15 = v11 + 32 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = v7;
  *(v15 + 48) = v8;
  *(v15 + 56) = v9;
  *(v15 + 60) = 1;
  *(a3 + v10) = v11;
  return result;
}

void sub_18AE8C53C(float a1)
{
  v3 = *v1;
  v2 = *(v1 + 4);
  v4 = sqrt(((v2 - *v1) * (v2 - *v1)));
  v5 = 0.0;
  if (v4 > 0.0000000149011612)
  {
    v6 = sqrt(((a1 - v3) * (a1 - v3)));
    if (v3 > a1)
    {
      v6 = -v6;
    }

    v5 = v6 / v4;
  }

  if ((*(v1 + 32) & 1) == 0 && (*(v1 + 24) & 1) == 0 && v5 > 1.0)
  {
    v7 = *(v1 + 28);
    v8 = v2 + v7;
    if (v2 > (v2 + v7))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v1 + 20);
    if (sqrt(((v8 - v2) * (v8 - v2))) <= 0.0000000149011612)
    {
      if ((*(v1 + 16) & 1) == 0)
      {
LABEL_11:
        if (*(v1 + 12) <= v9)
        {
          return;
        }

        goto LABEL_18;
      }
    }

    else if ((*(v1 + 16) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v9 > *(v1 + 8))
    {
LABEL_19:
      __break(1u);
    }
  }
}

void *sub_18AE8C700(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_18AE8C904()
{
  result = qword_1ED56AD50;
  if (!qword_1ED56AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD50);
  }

  return result;
}

unint64_t sub_18AE8C95C()
{
  result = qword_1ED56AD48;
  if (!qword_1ED56AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AD48);
  }

  return result;
}

void sub_18AE8C9B0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 104);
  v20[4] = *(v0 + 88);
  v20[5] = v2;
  v3 = *(v0 + 136);
  v20[6] = *(v0 + 120);
  v20[7] = v3;
  v4 = *(v0 + 40);
  v20[0] = *(v0 + 24);
  v20[1] = v4;
  v5 = *(v0 + 72);
  v20[2] = *(v0 + 56);
  v20[3] = v5;
  v6 = *(v0 + 156);
  v21 = v1;
  v22[0] = v6;
  *(v22 + 5) = *(v0 + 161);
  v7 = 0.0;
  if (sub_18AF4FB80(v20) == 1)
  {
    v8 = 0.0;
  }

  else
  {
    v15 = v1 == 0.0;
    v8 = 0.0;
    if (!v15)
    {
      sub_18AF6C6A0();
      v8 = fmin(v10, 0.0);
      v7 = v9 < 0.0 ? 0.0 : v9;
      if (v8 > v7)
      {
        goto LABEL_54;
      }
    }
  }

  if ((*(v0 + 248) & 1) == 0 && *(v0 + 244) != 0.0 && *(v0 + 176) != 0.0)
  {
    v11 = COERCE_DOUBLE(sub_18AF6C730());
    if ((v13 & 1) == 0)
    {
      if (v8 > v11)
      {
        v8 = v11;
      }

      if (v7 <= v12)
      {
        v7 = v12;
      }

      if (v8 > v7)
      {
        goto LABEL_51;
      }
    }
  }

  if ((*(v0 + 308) & 1) == 0)
  {
    v14 = (*(v0 + 280) & 0x7FFFFFFFFFFFFFFFLL) != 0;
    if ((*(v0 + 272) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v14 = 0;
    }

    if ((*(v0 + 304) & 0x7FFFFFFF) == 0)
    {
      v14 = 0;
    }

    v15 = (*(v0 + 256) & 0x7FFFFFFFFFFFFFFFLL) == 0 || (*(v0 + 264) & 0x7FFFFFFFFFFFFFFFLL) == 0;
    if (!v15 || v14)
    {
      sub_18AE8CCB8();
      if (v16 < v8)
      {
        v8 = v16;
      }

      if (v7 <= v17)
      {
        v7 = v17;
      }

      if (v8 > v7)
      {
        goto LABEL_52;
      }
    }
  }

  if ((*(v0 + 496) & 0xFF00) != 0x200 && COERCE_FLOAT(*(v0 + 416)) != 0.0 && *(v0 + 392) != 0.0 && *(v0 + 400) != 0.0)
  {
    sub_18AF6C7A0();
    if (v18 < v8)
    {
      v8 = v18;
    }

    if (v7 <= v19)
    {
      v7 = v19;
    }

    if (v8 > v7)
    {
      goto LABEL_53;
    }
  }

  if ((*(v0 + 385) & 1) == 0 && *(v0 + 312) != 0.0)
  {
    if (v8 > -1.0)
    {
      v8 = -1.0;
    }

    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }

    if (v8 > v7)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }
}

void sub_18AE8CCB8()
{
  v1 = fabs(*v0);
  v2 = fabs(*(v0 + 16));
  if (v2 > v1)
  {
    v1 = v2;
  }

  if (v1 < 0.0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v3 = -v1;
  if (*(v0 + 48) == 0.0)
  {
    return;
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  if (v4 > v5)
  {
    return;
  }

  v6 = v5 + 1.0;
  if (v4 > v5 + 1.0)
  {
    goto LABEL_14;
  }

  if (v4 < v3)
  {
    v3 = *(v0 + 32);
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  if (v3 > v6)
  {
    goto LABEL_15;
  }
}

id sub_18AE8D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_18AFCBF64();
  v5 = sub_18AFCDE04();

  _CAFilterSetInput(v4, v5, 54);

  LOBYTE(v5) = v3[92];
  v6 = sub_18AFCE034();
  _CAFilterSetInput(v4, v6, 50);

  v7 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v7, 42);

  v8 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v8, 49);

  v9 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v9, 48);

  v10 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v10, 43);

  v11 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v11, 52);

  v12 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v12, 44);

  v13 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v13, 47);

  v14 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v14, 46);

  if (v5)
  {
    v15 = 0;
  }

  else
  {
    v63 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v15 = sub_18AFCE254();
  }

  _CAFilterSetInput(v4, v15, 45);
  swift_unknownObjectRelease();
  v16 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v16, 51);

  v17 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v17, 53);

  v18 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v18, 21);

  v19 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v19, 11);

  v20 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v20, 12);

  v21 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v21, 13);

  v22 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v22, 14);

  v23 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v23, 15);

  v24 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v24, 16);

  v25 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v25, 17);

  v26 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v26, 18);

  v27 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v27, 19);

  v28 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v28, 20);

  v29 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v29, 29);

  v30 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v30, 30);

  v31 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v31, 32);

  v32 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v32, 33);

  v33 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v33, 34);

  v34 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v34, 35);

  v35 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v35, 36);

  v36 = v3[308];
  v37 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v37, 28);

  v38 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v38, 24);

  v39 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v39, 27);

  v40 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v40, 26);

  if (v36)
  {
    v41 = 0;
  }

  else
  {
    v64 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v41 = sub_18AFCE254();
  }

  _CAFilterSetInput(v4, v41, 25);
  swift_unknownObjectRelease();
  v42 = v3[416];
  v43 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v43, 0);

  v44 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v44, 9);

  v45 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v45, 1);

  v46 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v46, 10);

  v47 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v47, 7);

  v48 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v48, 8);

  v49 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v49, 2);

  v50 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v50, 5);

  v51 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v51, 4);

  if (v42)
  {
    v52 = 0;
  }

  else
  {
    v65 = sub_18AFCCDD4();
    type metadata accessor for CGColor(0);
    v52 = sub_18AFCE254();
  }

  _CAFilterSetInput(v4, v52, 3);
  swift_unknownObjectRelease();
  v53 = sub_18AFCDEC4();
  _CAFilterSetInput(v4, v53, 6);

  v54 = sub_18AFCDEC4();
  _CAFilterSetInput(v4, v54, 39);

  v55 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v55, 31);

  v56 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v56, 37);

  v57 = sub_18AFCBA04();
  _CAFilterSetInput(v4, v57, 38);

  v58 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v58, 40);

  v59 = sub_18AFCDFA4();
  _CAFilterSetInput(v4, v59, 41);

  if ((sub_18AF4FBC0() & 0x100000000) == 0)
  {
    v60 = sub_18AFCDFA4();
    _CAFilterSetInput(v4, v60, 22);

    v61 = sub_18AFCDEC4();
    _CAFilterSetInput(v4, v61, 23);
  }

  return v4;
}

BOOL sub_18AE8DA9C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_18AE8DAF4(v4, __dst);
}

BOOL sub_18AE8DAF4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))))
  {
    v10 = *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48);
    if (!v10 && *(a1 + 56) == *(a2 + 56))
    {
      v58 = v7;
      v59 = v6;
      v60 = v5;
      v61 = v4;
      v62 = v2;
      v63 = v3;
      v12 = *(a1 + 144);
      v13 = *(a1 + 136);
      v14 = *(a2 + 144);
      v15 = *(a2 + 136);
      v16 = *(a1 + 112);
      v56[2] = *(a1 + 96);
      v57[0] = v16;
      *(v57 + 13) = *(a1 + 125);
      v17 = *(a1 + 80);
      v18 = a1;
      v56[0] = *(a1 + 64);
      v56[1] = v17;
      v19 = *(a2 + 64);
      v20 = *(a2 + 80);
      v21 = *(a2 + 96);
      v22 = *(a2 + 112);
      *(v55 + 13) = *(a2 + 125);
      v54[2] = v21;
      v55[0] = v22;
      v54[0] = v19;
      v54[1] = v20;
      v24 = sub_18AE8DE28(v56, v54);
      result = 0;
      if ((v24 & 1) != 0 && v13 == v15 && v12 == v14)
      {
        v25 = *(v18 + 168);
        v26 = *(v18 + 200);
        v52[2] = *(v18 + 184);
        v52[3] = v26;
        v53 = *(v18 + 216);
        v52[0] = *(v18 + 152);
        v52[1] = v25;
        v27 = *(a2 + 168);
        v28 = *(a2 + 200);
        v50[2] = *(a2 + 184);
        v50[3] = v28;
        v51 = *(a2 + 216);
        v50[0] = *(a2 + 152);
        v50[1] = v27;
        if (!sub_18AE90DEC(v52, v50) || *(v18 + 224) != *(a2 + 224))
        {
          return 0;
        }

        result = 0;
        if (*(v18 + 232) != *(a2 + 232))
        {
          return result;
        }

        if (*(v18 + 240) != *(a2 + 240))
        {
          return result;
        }

        if (*(v18 + 248) != *(a2 + 248))
        {
          return result;
        }

        result = 0;
        if (*(v18 + 256) != *(a2 + 256) || *(v18 + 264) != *(a2 + 264) || *(v18 + 272) != *(a2 + 272))
        {
          return result;
        }

        if (*(v18 + 276) != *(a2 + 276))
        {
          return 0;
        }

        v29 = *(v18 + 328);
        v48[2] = *(v18 + 312);
        v49[0] = v29;
        *(v49 + 13) = *(v18 + 341);
        v30 = *(v18 + 296);
        v48[0] = *(v18 + 280);
        v48[1] = v30;
        v31 = *(a2 + 328);
        v46[2] = *(a2 + 312);
        v47[0] = v31;
        *(v47 + 13) = *(a2 + 341);
        v32 = *(a2 + 296);
        v46[0] = *(a2 + 280);
        v46[1] = v32;
        if ((sub_18AE8DE28(v48, v46) & 1) == 0)
        {
          return 0;
        }

        v33 = *(v18 + 432);
        v44[4] = *(v18 + 416);
        v45[0] = v33;
        v34 = *(v18 + 368);
        v44[0] = *(v18 + 352);
        v44[1] = v34;
        v35 = *(v18 + 400);
        v44[2] = *(v18 + 384);
        v44[3] = v35;
        *(v45 + 10) = *(v18 + 442);
        v36 = *(a2 + 368);
        v42[0] = *(a2 + 352);
        v42[1] = v36;
        v37 = *(a2 + 384);
        v38 = *(a2 + 400);
        *&v43[10] = *(a2 + 442);
        v39 = *(a2 + 432);
        v42[4] = *(a2 + 416);
        *v43 = v39;
        v42[2] = v37;
        v42[3] = v38;
        if ((sub_18AE8DFB8(v44, v42) & 1) == 0)
        {
          return 0;
        }

        v40 = *(v18 + 464);
        v41 = *(a2 + 464);
        result = 0;
        if (*&v40 == *&v41 && *(&v40 + 1) == *(&v41 + 1) && *(v18 + 472) == *(a2 + 472))
        {
          result = 0;
          if (*(v18 + 480) == *(a2 + 480) && *(v18 + 488) == *(a2 + 488))
          {
            return *(v18 + 496) == *(a2 + 496);
          }
        }
      }
    }
  }

  return result;
}