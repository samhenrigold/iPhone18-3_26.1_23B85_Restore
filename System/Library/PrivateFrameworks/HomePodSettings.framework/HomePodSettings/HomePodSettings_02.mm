uint64_t sub_2542F6128(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_2543A36E8();
  sub_2542F8CCC(v6, v2);
  sub_2542F8C1C(v6, v3);
  sub_2542F8C1C(v6, v4);
  return sub_2543A3728();
}

uint64_t static CarrySettings.LivabilityTrainAudiences.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (!v8 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v9 = v4 == v6 && v5 == v7;
  if (!v9 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_5_1();

  return sub_2542F5430(v10, v11);
}

uint64_t sub_2542F62A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6E69617274 && a2 == 0xE900000000000065;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65636E6569647561 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_2543A3608();

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

uint64_t sub_2542F63C0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_24_0(a1);
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t sub_2542F6400(char a1)
{
  if (!a1)
  {
    return 0x6D614E6E69617274;
  }

  if (a1 == 1)
  {
    return 0x6D726F6674616C70;
  }

  return 0x65636E6569647561;
}

uint64_t sub_2542F6480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F62A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F64A8(uint64_t a1)
{
  v2 = sub_2542F8FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F64E4(uint64_t a1)
{
  v2 = sub_2542F8FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

void CarrySettings.LivabilityTrainAudiences.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_16_1();
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDC0, &qword_2543A8200);
  OUTLINED_FUNCTION_3();
  v20 = v19;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_3();
  __swift_project_boxed_opaque_existential_0(v17, v17[3]);
  sub_2542F8FD0();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  OUTLINED_FUNCTION_25_1();
  sub_2543A3548();
  if (!v14)
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3548();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F5CF8();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3578();
  }

  (*(v20 + 8))(v15, v18);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityTrainAudiences.hash(into:)(uint64_t a1)
{
  sub_2543A28C8();
  OUTLINED_FUNCTION_46();
  sub_2543A28C8();
  v1 = OUTLINED_FUNCTION_5_1();

  return sub_2542F8C1C(v1, v2);
}

uint64_t CarrySettings.LivabilityTrainAudiences.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_24_0(a1);
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2542F8C1C(v4, v2);
  return sub_2543A3728();
}

void CarrySettings.LivabilityTrainAudiences.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDD0, &qword_2543A8208);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_23_1();
  sub_2542F8FD0();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3768();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v31 = sub_2543A34A8();
    v38 = v32;
    OUTLINED_FUNCTION_26_0();
    v36 = sub_2543A34A8();
    v37 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F8EF8();
    sub_2543A34D8();
    v34 = OUTLINED_FUNCTION_8_3();
    v35(v34, v29);
    *v28 = v31;
    v28[1] = v38;
    v28[2] = v36;
    v28[3] = v37;
    v28[4] = v39;
    sub_2543A2768();
    sub_2543A2768();
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F6A04(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_2543A36E8();
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2542F8C1C(v4, v2);
  return sub_2543A3728();
}

double CarrySettings.LivabilityAudience.type.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_2543A1DF8();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[1];
  *&v18 = *v1;
  *(&v18 + 1) = v9;
  OUTLINED_FUNCTION_17_2();
  v17[2] = v10;
  v17[3] = v11;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_2542F9024();
  OUTLINED_FUNCTION_28_0();
  *&v18 = sub_2543A3138();
  *(&v18 + 1) = v12;
  sub_2543A1DE8();
  v13 = sub_2543A3128();
  v15 = v14;
  (*(v5 + 8))(v8, v3);

  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(v13, v15, &v18);
  result = *&v18;
  *a1 = v18;
  return result;
}

double CarrySettings.LivabilityAudience.AudienceType.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_2543A1DF8();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = a1;
  *(&v22 + 1) = a2;
  OUTLINED_FUNCTION_17_2();
  v21[2] = v12;
  v21[3] = v13;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_2542F9024();
  OUTLINED_FUNCTION_28_0();
  v14 = sub_2543A3138();
  v16 = v15;

  *&v22 = v14;
  *(&v22 + 1) = v16;
  sub_2543A1DE8();
  v17 = sub_2543A3128();
  v19 = v18;
  (*(v8 + 8))(v11, v6);

  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(v17, v19, &v22);
  result = *&v22;
  *a3 = v22;
  return result;
}

uint64_t static CarrySettings.LivabilityAudience.DeviceFamily.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  if (v8 || (v9 = sub_2543A3608(), result = 0, (v9 & 1) != 0))
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_1();

      return sub_2543A3608();
    }
  }

  return result;
}

uint64_t sub_2542F6FE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696C616D726570 && a2 == 0xE90000000000006BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2542F70E4(char a1)
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](a1 & 1);
  return sub_2543A3728();
}

uint64_t sub_2542F712C(char a1)
{
  if (a1)
  {
    return 0x6E696C616D726570;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2542F7184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F6FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F71AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F70B4();
  *a1 = result;
  return result;
}

uint64_t sub_2542F71D4(uint64_t a1)
{
  v2 = sub_2542F9078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F7210(uint64_t a1)
{
  v2 = sub_2542F9078();

  return MEMORY[0x2821FE720](a1, v2);
}

void CarrySettings.LivabilityAudience.DeviceFamily.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_16_1();
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDE0, &qword_2543A8210);
  OUTLINED_FUNCTION_3();
  v23 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_3();
  __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  sub_2542F9078();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4_5();
  sub_2543A3548();
  if (!v16)
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3548();
  }

  (*(v23 + 8))(v17, v20);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.hash(into:)(uint64_t a1)
{
  sub_2543A28C8();
  OUTLINED_FUNCTION_46();

  return sub_2543A28C8();
}

uint64_t CarrySettings.LivabilityAudience.DeviceFamily.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0(a1);
  sub_2543A28C8();
  sub_2543A28C8();
  return sub_2543A3728();
}

void CarrySettings.LivabilityAudience.DeviceFamily.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_1();
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDF0, &qword_2543A8218);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_23_1();
  sub_2542F9078();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_30_0();
  sub_2543A3768();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v28 = sub_2543A34A8();
    v30 = v29;
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_6_5();
    v31 = sub_2543A34A8();
    v33 = v32;
    v36 = v31;
    v34 = OUTLINED_FUNCTION_61_0();
    v35(v34);
    *v26 = v28;
    v26[1] = v30;
    v26[2] = v36;
    v26[3] = v33;
    sub_2543A2768();
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F7608(uint64_t a1)
{
  sub_2543A36E8();
  sub_2543A28C8();
  sub_2543A28C8();
  return sub_2543A3728();
}

uint64_t CarrySettings.LivabilityAudience.identifier.getter()
{
  if (!*(v0 + 56))
  {
    sub_2543A2768();
  }

  sub_2543A2768();
  return OUTLINED_FUNCTION_46();
}

uint64_t CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = &unk_286644C20;
  v6 = 4;
  while (1)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v9 = 0xE700000000000000;
    v10 = 0x656C626176694CLL;
    switch(*v5)
    {
      case 0uLL:
        break;
      case 1uLL:
        v10 = 0xD000000000000013;
        v9 = 0x80000002543B80C0;
        break;
      case 2uLL:
        v9 = 0xE800000000000000;
        v10 = 0x656C626174736554;
        break;
      case 3uLL:
        v9 = 0xE800000000000000;
        v10 = 0x6465747365746E55;
        break;
      default:
        v10 = *(v5 - 1);
        v9 = *v5;
        break;
    }

    if (v10 == a1 && v9 == a2)
    {
      break;
    }

    v12 = sub_2543A3608();
    v13 = OUTLINED_FUNCTION_76();
    sub_2542F46E4(v13, v14);
    v15 = OUTLINED_FUNCTION_76();
    sub_2542F46E4(v15, v16);

    if (v12)
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_76();
    result = sub_2542F90CC(v17, v18);
    v5 += 2;
    if (!--v6)
    {
      v7 = a1;
      v8 = a2;
      goto LABEL_16;
    }
  }

  v20 = OUTLINED_FUNCTION_76();
  sub_2542F46E4(v20, v21);
  v22 = OUTLINED_FUNCTION_76();
  sub_2542F46E4(v22, v23);

LABEL_15:

LABEL_16:
  *a3 = v7;
  a3[1] = v8;
  return result;
}

unint64_t sub_2542F7870()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x656C626176694CLL;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0xD000000000000013;
      break;
    case 2uLL:
      v3 = 0x656C626174736554;
      break;
    case 3uLL:
      v3 = 0x6465747365746E55;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_2542F46E4(v1, v2);
  return v3;
}

unint64_t CarrySettings.LivabilityAudience.AudienceType.permalink.getter()
{
  result = 0x6E656D6D6F636572;
  switch(*(v0 + 8))
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x656C626174736574;
      break;
    case 3:
      result = 0x6465747365746E75;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_2542F7A14(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2542F7A70(char a1)
{
  result = 0x4E65736F70727570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x656964754172736FLL;
      break;
    case 4:
      result = 0x534F656764697262;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6146656369766564;
      break;
    case 7:
      result = 0x6D726F6674616C70;
      break;
    case 8:
      result = 0x55656C69666F7270;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6576697463417369;
      break;
    default:
      return result;
  }

  return result;
}

double sub_2542F7C08@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  CarrySettings.LivabilityAudience.AudienceType.init(rawValue:)(*a1, *(a1 + 8), &v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2542F7C48@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.LivabilityAudience.AudienceType.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2542F7CA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2542F7A14(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2542F7CD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2542F7A70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2542F7D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542F7A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542F7D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F7A64();
  *a1 = result;
  return result;
}

uint64_t sub_2542F7D70(uint64_t a1)
{
  v2 = sub_2542F90E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2542F7DAC(uint64_t a1)
{
  v2 = sub_2542F90E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static CarrySettings.LivabilityAudience.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_19_1(a1);
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  v5 = *(v3 + 32);
  v7 = *(v3 + 40);
  v44 = *(v3 + 48);
  v8 = *(v3 + 56);
  v41 = *(v3 + 64);
  v46 = *(v3 + 72);
  v37 = *(v3 + 80);
  v47 = *(v3 + 88);
  v38 = *(v3 + 96);
  v31 = *(v3 + 104);
  v35 = *(v3 + 112);
  v28 = *(v3 + 120);
  v33 = *(v3 + 128);
  v30 = *(v3 + 136);
  v27 = *(v3 + 137);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 56);
  v43 = *(v2 + 48);
  v40 = *(v2 + 64);
  v45 = *(v2 + 72);
  v14 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  v36 = *(v2 + 80);
  v42 = *(v2 + 88);
  v39 = *(v2 + 96);
  v48 = *(v2 + 104);
  v34 = *(v2 + 112);
  v49 = *(v2 + 120);
  v32 = *(v2 + 128);
  v29 = *(v2 + 136);
  v26 = *(v2 + 137);
  if (!v14 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  v15 = v4 == v10 && v6 == v9;
  if (!v15 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v12)
    {
      return 0;
    }

    v16 = v5 == v11 && v7 == v12;
    if (!v16 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v17 = v44 == v43 && v8 == v13;
    if (!v17 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v46)
  {
    v19 = v48;
    v18 = v49;
    v20 = v47;
    if (!v45)
    {
      return 0;
    }

    v21 = v41 == v40 && v46 == v45;
    if (!v21 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = v48;
    v18 = v49;
    v20 = v47;
    if (v45)
    {
      return 0;
    }
  }

  if (v20)
  {
    if (!v42)
    {
      return 0;
    }

    v22 = v37 == v36 && v20 == v42;
    if (!v22 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (v38)
  {
    if (!v39 || (sub_2542F5540(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  if (v35)
  {
    if (!v34)
    {
      return 0;
    }

    v23 = v31 == v19 && v35 == v34;
    if (!v23 && (sub_2543A3608() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  if (!v33)
  {
    if (!v32)
    {
      goto LABEL_70;
    }

    return 0;
  }

  if (!v32)
  {
    return 0;
  }

  v24 = v28 == v18 && v33 == v32;
  if (!v24 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  if (v30 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }

LABEL_75:
    if (v27 == 2)
    {
      if (v26 != 2)
      {
        return 0;
      }
    }

    else if (v26 == 2 || ((v26 ^ v27) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v29 != 2 && ((v29 ^ v30) & 1) == 0)
  {
    goto LABEL_75;
  }

  return result;
}

void CarrySettings.LivabilityAudience.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFDF8, &qword_2543A8220);
  OUTLINED_FUNCTION_3();
  v26 = v25;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11_3();
  __swift_project_boxed_opaque_existential_0(v23, v23[3]);
  sub_2542F90E0();
  OUTLINED_FUNCTION_31_1();
  sub_2543A3778();
  sub_2543A3548();
  if (!v20)
  {
    OUTLINED_FUNCTION_14_2(1);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3548();
    OUTLINED_FUNCTION_14_2(2);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(3);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(4);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(5);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F9134();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3538();
    OUTLINED_FUNCTION_14_2(7);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_14_2(8);
    OUTLINED_FUNCTION_3_5();
    sub_2543A3518();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3528();
    OUTLINED_FUNCTION_4_5();
    sub_2543A3528();
  }

  (*(v26 + 8))(v21, v24);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_15_3();
}

uint64_t CarrySettings.LivabilityAudience.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  v6 = *(v2 + 72);
  v7 = *(v2 + 88);
  v8 = *(v2 + 112);
  v12 = *(v2 + 96);
  v13 = *(v2 + 128);
  v9 = *(v2 + 136);
  v11 = *(v2 + 137);
  sub_2543A28C8();
  sub_2543A28C8();
  sub_2543A3708();
  if (v4)
  {
    sub_2543A28C8();
  }

  sub_2543A3708();
  if (v5)
  {
    sub_2543A28C8();
  }

  if (v6)
  {
    sub_2543A3708();
    sub_2543A28C8();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2543A3708();
    if (v7)
    {
LABEL_7:
      sub_2543A3708();
      sub_2543A28C8();
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  sub_2543A3708();
  if (v12)
  {
LABEL_8:
    sub_2543A3708();
    sub_2542F920C(a1, v12);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_14:
    sub_2543A3708();
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_13:
  sub_2543A3708();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  sub_2543A3708();
  sub_2543A28C8();
  if (v13)
  {
LABEL_10:
    sub_2543A3708();
    sub_2543A28C8();
    goto LABEL_16;
  }

LABEL_15:
  sub_2543A3708();
LABEL_16:
  if (v9 != 2)
  {
    sub_2543A3708();
  }

  sub_2543A3708();
  if (v11 != 2)
  {
    sub_2543A3708();
  }

  return sub_2543A3708();
}

uint64_t CarrySettings.LivabilityAudience.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_24_0(a1);
  CarrySettings.LivabilityAudience.hash(into:)(v2);
  return sub_2543A3728();
}

void CarrySettings.LivabilityAudience.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE20, &qword_2543A8230);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_3();
  v31 = v26[3];
  v64 = v26;
  v32 = __swift_project_boxed_opaque_existential_0(v26, v31);
  sub_2542F90E0();
  OUTLINED_FUNCTION_21_1();
  sub_2543A3768();
  if (v23)
  {
    OUTLINED_FUNCTION_9_2();
    __swift_destroy_boxed_opaque_existential_0(v64);
    if (v31)
    {

      if ((v28 & 1) == 0)
      {
LABEL_10:
        if (v24)
        {
LABEL_11:

          if ((v32 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_7;
        }

LABEL_6:
        if (!v32)
        {
          goto LABEL_12;
        }

LABEL_7:

        goto LABEL_12;
      }
    }

    else if (!v28)
    {
      goto LABEL_10;
    }

    if (v24)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v33 = v28;
  LOBYTE(v66[0]) = 0;
  OUTLINED_FUNCTION_6_5();
  v34 = sub_2543A34A8();
  v63 = v35;
  OUTLINED_FUNCTION_0_9(1);
  v54 = sub_2543A34A8();
  v62 = v36;
  OUTLINED_FUNCTION_0_9(2);
  v53 = sub_2543A3478();
  v61 = v37;
  OUTLINED_FUNCTION_0_9(3);
  v52 = sub_2543A3478();
  v60 = v38;
  OUTLINED_FUNCTION_0_9(4);
  v51 = sub_2543A3478();
  v59 = v39;
  OUTLINED_FUNCTION_0_9(5);
  v50 = sub_2543A3478();
  v58 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFE08, &qword_2543A8228);
  LOBYTE(v65[0]) = 6;
  sub_2542F92B0();
  OUTLINED_FUNCTION_6_5();
  sub_2543A3498();
  v56 = v66[0];
  OUTLINED_FUNCTION_0_9(7);
  v41 = sub_2543A3478();
  v57 = v42;
  v49 = v41;
  OUTLINED_FUNCTION_0_9(8);
  v48 = sub_2543A3478();
  v55 = v43;
  OUTLINED_FUNCTION_0_9(9);
  v44 = sub_2543A3488();
  OUTLINED_FUNCTION_6_5();
  v45 = sub_2543A3488();
  v46 = OUTLINED_FUNCTION_8_3();
  v47(v46, v29);
  v65[0] = v34;
  v65[1] = v63;
  v65[2] = v54;
  v65[3] = v62;
  v65[4] = v53;
  v65[5] = v61;
  v65[6] = v52;
  v65[7] = v60;
  v65[8] = v51;
  v65[9] = v59;
  v65[10] = v50;
  v65[11] = v58;
  v65[12] = v56;
  v65[13] = v49;
  v65[14] = v57;
  v65[15] = v48;
  v65[16] = v55;
  LOBYTE(v65[17]) = v44;
  BYTE1(v65[17]) = v45;
  memcpy(v33, v65, 0x8AuLL);
  sub_2542F9388(v65, v66);
  __swift_destroy_boxed_opaque_existential_0(v64);
  v66[0] = v34;
  v66[1] = v63;
  v66[2] = v54;
  v66[3] = v62;
  v66[4] = v53;
  v66[5] = v61;
  v66[6] = v52;
  v66[7] = v60;
  v66[8] = v51;
  v66[9] = v59;
  v66[10] = v50;
  v66[11] = v58;
  v66[12] = v56;
  v66[13] = v49;
  v66[14] = v57;
  v66[15] = v48;
  v66[16] = v55;
  v67 = v44;
  v68 = v45;
  sub_2542F93C0(v66);
LABEL_12:
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542F8BDC(uint64_t a1)
{
  sub_2543A36E8();
  CarrySettings.LivabilityAudience.hash(into:)(v2);
  return sub_2543A3728();
}

uint64_t sub_2542F8C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      memcpy(v7, v6, 0x8AuLL);
      memcpy(__dst, v6, sizeof(__dst));
      sub_2542F9388(v7, v8);
      CarrySettings.LivabilityAudience.hash(into:)(a1);
      memcpy(v8, __dst, 0x8AuLL);
      result = sub_2542F93C0(v8);
      v6 += 144;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2542F8CCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v4);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = *(a2 + 32 + 40 * i + 32);
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A28C8();
      sub_2543A28C8();
      MEMORY[0x259C0A1D0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v8 - 1;
        for (j = 32; ; j += 144)
        {
          memcpy(__dst, (v7 + j), 0x8AuLL);
          memcpy(__src, (v7 + j), sizeof(__src));
          sub_2542F9388(__dst, v11);
          CarrySettings.LivabilityAudience.hash(into:)(a1);
          memcpy(v13, __src, 0x8AuLL);
          sub_2542F93C0(v13);
          if (!v9)
          {
            break;
          }

          --v9;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2542F8E20()
{
  result = qword_27F5DFDA0;
  if (!qword_27F5DFDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD68, &qword_2543A81E8);
    sub_2542F8EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDA0);
  }

  return result;
}

unint64_t sub_2542F8EA4()
{
  result = qword_27F5DFDA8;
  if (!qword_27F5DFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDA8);
  }

  return result;
}

unint64_t sub_2542F8EF8()
{
  result = qword_27F5DFDB0;
  if (!qword_27F5DFDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFD80, &qword_2543A81F0);
    sub_2542F8F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDB0);
  }

  return result;
}

unint64_t sub_2542F8F7C()
{
  result = qword_27F5DFDB8;
  if (!qword_27F5DFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDB8);
  }

  return result;
}

unint64_t sub_2542F8FD0()
{
  result = qword_27F5DFDC8;
  if (!qword_27F5DFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDC8);
  }

  return result;
}

unint64_t sub_2542F9024()
{
  result = qword_27F5DFDD8;
  if (!qword_27F5DFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDD8);
  }

  return result;
}

unint64_t sub_2542F9078()
{
  result = qword_27F5DFDE8;
  if (!qword_27F5DFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFDE8);
  }

  return result;
}

uint64_t sub_2542F90CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_2542F90E0()
{
  result = qword_27F5DFE00;
  if (!qword_27F5DFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE00);
  }

  return result;
}

unint64_t sub_2542F9134()
{
  result = qword_27F5DFE10;
  if (!qword_27F5DFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F91B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE10);
  }

  return result;
}

unint64_t sub_2542F91B8()
{
  result = qword_27F5DFE18;
  if (!qword_27F5DFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE18);
  }

  return result;
}

uint64_t sub_2542F920C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C0A1D0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {
      sub_2543A2768();
      sub_2543A2768();
      sub_2543A28C8();
      sub_2543A28C8();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_2542F92B0()
{
  result = qword_27F5DFE28;
  if (!qword_27F5DFE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DFE08, &qword_2543A8228);
    sub_2542F9334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE28);
  }

  return result;
}

unint64_t sub_2542F9334()
{
  result = qword_27F5DFE30;
  if (!qword_27F5DFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE30);
  }

  return result;
}

unint64_t sub_2542F93F4()
{
  result = qword_27F5DFE38;
  if (!qword_27F5DFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE38);
  }

  return result;
}

unint64_t sub_2542F944C()
{
  result = qword_27F5DFE40;
  if (!qword_27F5DFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE40);
  }

  return result;
}

unint64_t sub_2542F94A4()
{
  result = qword_27F5DFE48;
  if (!qword_27F5DFE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE48);
  }

  return result;
}

unint64_t sub_2542F94FC()
{
  result = qword_27F5DFE50;
  if (!qword_27F5DFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE50);
  }

  return result;
}

unint64_t sub_2542F9554()
{
  result = qword_27F5DFE58;
  if (!qword_27F5DFE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE58);
  }

  return result;
}

uint64_t sub_2542F95B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2542F95F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2542F9650(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_2542F9690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2542F970C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2542F974C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O18LivabilityAudienceV0F4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2542F97B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2542F9804(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2542F9860(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t _s18LivabilityAudienceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18LivabilityAudienceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x2542F99E0);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BetaEnrollment.Availability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18LivabilityAudienceV12DeviceFamilyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2542F9B6CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2542F9BC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2542F9C94);
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

unint64_t sub_2542F9CD0()
{
  result = qword_27F5DFE60;
  if (!qword_27F5DFE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE60);
  }

  return result;
}

unint64_t sub_2542F9D28()
{
  result = qword_27F5DFE68;
  if (!qword_27F5DFE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE68);
  }

  return result;
}

unint64_t sub_2542F9D80()
{
  result = qword_27F5DFE70;
  if (!qword_27F5DFE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE70);
  }

  return result;
}

unint64_t sub_2542F9DD8()
{
  result = qword_27F5DFE78;
  if (!qword_27F5DFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE78);
  }

  return result;
}

unint64_t sub_2542F9E30()
{
  result = qword_27F5DFE80;
  if (!qword_27F5DFE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE80);
  }

  return result;
}

unint64_t sub_2542F9E88()
{
  result = qword_27F5DFE88;
  if (!qword_27F5DFE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE88);
  }

  return result;
}

unint64_t sub_2542F9EE0()
{
  result = qword_27F5DFE90;
  if (!qword_27F5DFE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE90);
  }

  return result;
}

unint64_t sub_2542F9F38()
{
  result = qword_27F5DFE98;
  if (!qword_27F5DFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFE98);
  }

  return result;
}

unint64_t sub_2542F9F90()
{
  result = qword_27F5DFEA0;
  if (!qword_27F5DFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEA0);
  }

  return result;
}

unint64_t sub_2542F9FE8()
{
  result = qword_27F5DFEA8;
  if (!qword_27F5DFEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEA8);
  }

  return result;
}

unint64_t sub_2542FA040()
{
  result = qword_27F5DFEB0;
  if (!qword_27F5DFEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DFEB0);
  }

  return result;
}

unint64_t sub_2542FA098()
{
  result = qword_27F5DFEB8[0];
  if (!qword_27F5DFEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5DFEB8);
  }

  return result;
}

void *OUTLINED_FUNCTION_24_0(uint64_t a1, ...)
{

  return sub_2543A36E8();
}

uint64_t sub_2542FA2CC(void *a1, uint64_t a2)
{

  *a1 = a2;

  return sub_2543A2768();
}

uint64_t static TransportObservationUpdate<>.updateObservedValue(_:withUpdate:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 8))(a1, AssociatedTypeWitness);
  v8 = *(v10 + 16);

  return v8(a1, a2, AssociatedTypeWitness);
}

uint64_t sub_2542FA3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2542FD940(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02C0, qword_2543A9470);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t static TransportObservationUpdate<>.value(from:targeting:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return __swift_storeEnumTagSinglePayload(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_2542FA4DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2542FA5A0(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2542FA5E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2542FA6EC(uint64_t a1)
{
  sub_2543A36E8();
  sub_2542F70BC(v3, *v1);
  return sub_2543A3728();
}

uint64_t sub_2542FA760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542FA4DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542FA7DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F70B4();
  *a1 = result;
  return result;
}

uint64_t sub_2542FA818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FA86C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FA950(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FA9A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FAA68(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void, void))
{
  sub_2543A36E8();
  a4(v7, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8]);
  return sub_2543A3728();
}

uint64_t sub_2542FAB64()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0();
  return OUTLINED_FUNCTION_25_2(v1);
}

uint64_t sub_2542FAB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FABF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void UpdateResult.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v77 = v0;
  v2 = v1;
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[7];
  v75 = v8;
  v76 = v5;
  v9 = OUTLINED_FUNCTION_13_4();
  updated = type metadata accessor for UpdateResult.FailureCodingKeys(v9, v10);
  OUTLINED_FUNCTION_6_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v67 = updated;
  v65 = v12;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v69 = v14;
  v70 = v13;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v66 = v16;
  OUTLINED_FUNCTION_0_2();
  v68 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v64 = v20 - v19;
  v21 = OUTLINED_FUNCTION_13_4();
  v23 = type metadata accessor for UpdateResult.UpdateCodingKeys(v21, v22);
  OUTLINED_FUNCTION_10_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v60 = v23;
  v58 = v24;
  v63 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v62 = v25;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_0();
  v59 = v27;
  OUTLINED_FUNCTION_0_2();
  v61 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  v57 = v31 - v30;
  OUTLINED_FUNCTION_0_2();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_9();
  v37 = v36 - v35;
  v73 = v6;
  v74 = v4;
  v78 = v4;
  v79 = v3;
  v71 = v3;
  v72 = v7;
  v80 = v76;
  v81 = v6;
  v38 = OUTLINED_FUNCTION_13_4();
  type metadata accessor for UpdateResult.CodingKeys(v38, v39);
  OUTLINED_FUNCTION_9_3();
  swift_getWitnessTable();
  v40 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v76 = v41;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v42);
  v44 = &v56 - v43;
  __swift_project_boxed_opaque_existential_0(v75, v75[3]);
  sub_2543A3778();
  (*(v33 + 16))(v37, v77, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v68;
    v46 = v64;
    v47 = v71;
    (*(v68 + 32))(v64, v37, v71);
    LOBYTE(v78) = 1;
    v48 = v66;
    v49 = v40;
    sub_2543A3508();
    v50 = v70;
    sub_2543A3578();
    (*(v69 + 8))(v48, v50);
    (*(v45 + 8))(v46, v47);
    v40 = v49;
  }

  else
  {
    v51 = v61;
    v52 = v57;
    v53 = v74;
    (*(v61 + 32))(v57, v37, v74);
    LOBYTE(v78) = 0;
    v54 = v59;
    sub_2543A3508();
    v55 = v63;
    sub_2543A3578();
    (*(v62 + 8))(v54, v55);
    (*(v51 + 8))(v52, v53);
  }

  (*(v76 + 8))(v44, v40);
  OUTLINED_FUNCTION_15_3();
}

void UpdateResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  v114 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v122 = v35;
  v108 = v36;
  *&v117 = v33;
  *(&v117 + 1) = v31;
  *&v118 = v29;
  *(&v118 + 1) = v27;
  v119 = v25;
  v120 = v23;
  v121 = v21;
  updated = type metadata accessor for UpdateResult.FailureCodingKeys(255, &v117);
  OUTLINED_FUNCTION_6_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v105 = updated;
  v104 = v38;
  v97 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v96 = v39;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_0();
  v106 = v41;
  v42 = OUTLINED_FUNCTION_16_2();
  v44 = type metadata accessor for UpdateResult.UpdateCodingKeys(v42, v43);
  OUTLINED_FUNCTION_10_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v102 = v44;
  v101 = v45;
  v95 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v94 = v46;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_0();
  v103 = v48;
  v49 = OUTLINED_FUNCTION_16_2();
  type metadata accessor for UpdateResult.CodingKeys(v49, v50);
  OUTLINED_FUNCTION_9_3();
  WitnessTable = swift_getWitnessTable();
  v109 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v112 = v51;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v52);
  v54 = &v91 - v53;
  v98 = v34;
  *&v117 = v34;
  *(&v117 + 1) = v32;
  v111 = v32;
  v100 = v30;
  *&v118 = v30;
  *(&v118 + 1) = v28;
  v99 = v26;
  v119 = v26;
  v120 = v24;
  v121 = v22;
  v55 = type metadata accessor for UpdateResult(0, &v117);
  OUTLINED_FUNCTION_3();
  v107 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v58);
  v60 = &v91 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v91 - v62;
  __swift_project_boxed_opaque_existential_0(v122, v122[3]);
  v110 = v54;
  v64 = v114;
  sub_2543A3768();
  if (!v64)
  {
    v93 = v34;
    WitnessTable = v60;
    v92 = v63;
    v114 = v55;
    v65 = v110;
    v66 = v109;
    *&v115 = sub_2543A34E8();
    sub_2543A2B38();
    OUTLINED_FUNCTION_11_4();
    swift_getWitnessTable();
    *&v117 = sub_2543A3178();
    *(&v117 + 1) = v67;
    *&v118 = v68;
    *(&v118 + 1) = v69;
    sub_2543A3168();
    OUTLINED_FUNCTION_12_5();
    sub_2543A2F68();
    v70 = v115;
    if (v115 == 2 || (v91 = v117, v115 = v117, v116 = v118, (sub_2543A2F88() & 1) == 0))
    {
      v80 = sub_2543A32E8();
      swift_allocError();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
      *v82 = v114;
      v83 = sub_2543A3468();
      OUTLINED_FUNCTION_27_2(v83);
      (*(*(v80 - 8) + 104))(v82, *MEMORY[0x277D84160], v80);
      swift_willThrow();
      (*(v112 + 8))(v65, v66);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v70)
      {
        LOBYTE(v115) = 1;
        sub_2543A3458();
        v72 = v107;
        v71 = v108;
        v73 = v97;
        sub_2543A34D8();
        v74 = OUTLINED_FUNCTION_2_7();
        v75(v74, v73);
        v76 = OUTLINED_FUNCTION_20_2();
        v77(v76);
        OUTLINED_FUNCTION_17_3(&v118);
        swift_unknownObjectRelease();
        v78 = v93;
      }

      else
      {
        LOBYTE(v115) = 0;
        sub_2543A3458();
        v72 = v107;
        v71 = v108;
        v84 = v95;
        sub_2543A34D8();
        v85 = OUTLINED_FUNCTION_2_7();
        v86(v85, v84);
        v87 = OUTLINED_FUNCTION_20_2();
        v88(v87);
        OUTLINED_FUNCTION_17_3(&v118);
        swift_unknownObjectRelease();
        v78 = WitnessTable;
      }

      v79 = v114;
      swift_storeEnumTagMultiPayload();
      v89 = *(v72 + 32);
      v90 = v92;
      v89(v92, v78, v79);
      v89(v71, v90, v79);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v122);
  OUTLINED_FUNCTION_15_3();
}

uint64_t sub_2542FB8C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465677261746E75 && a2 == 0xEA00000000006465;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746567726174 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2542FB990(char a1)
{
  if (a1)
  {
    return 0x6465746567726174;
  }

  else
  {
    return 0x7465677261746E75;
  }
}

uint64_t sub_2542FBA50(uint64_t a1)
{
  sub_2543A36E8();
  sub_2542F70BC(v3, *v1);
  return sub_2543A3728();
}

uint64_t sub_2542FBAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542FB8C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2542FBB10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2542F70B4();
  *a1 = result;
  return result;
}

uint64_t sub_2542FBB44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBB98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FBC1C(uint64_t a1)
{
  sub_2543A36E8();
  sub_2542E1334();
  return sub_2543A3728();
}

uint64_t sub_2542FBCBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBD10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2542FBDF8()
{
  OUTLINED_FUNCTION_24_1();
  v1 = v0();
  return OUTLINED_FUNCTION_25_2(v1);
}

uint64_t sub_2542FBE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2542FBE7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void ObservationUpdateScope.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v61 = v0;
  v62 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = OUTLINED_FUNCTION_21_2();
  updated = type metadata accessor for ObservationUpdateScope.TargetedCodingKeys(v9, v10);
  OUTLINED_FUNCTION_8_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v55 = updated;
  v53 = v12;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v57 = v14;
  v58 = v13;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  v54 = v16;
  OUTLINED_FUNCTION_0_2();
  v56 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v52 = v20 - v19;
  v21 = OUTLINED_FUNCTION_21_2();
  v23 = type metadata accessor for ObservationUpdateScope.UntargetedCodingKeys(v21, v22);
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v51 = v23;
  v49 = v24;
  v50 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v48 = v25;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_0();
  v47 = v27;
  OUTLINED_FUNCTION_0_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9();
  v33 = v32 - v31;
  v63 = v7;
  v64 = v6;
  v59 = v8;
  v34 = OUTLINED_FUNCTION_21_2();
  type metadata accessor for ObservationUpdateScope.CodingKeys(v34, v35);
  OUTLINED_FUNCTION_5_5();
  swift_getWitnessTable();
  v65 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v60 = v36;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v37);
  v39 = &v46 - v38;
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_2543A3778();
  (*(v29 + 16))(v33, v61, v3);
  v61 = v7;
  if (__swift_getEnumTagSinglePayload(v33, 1, v7) == 1)
  {
    LOBYTE(v63) = 0;
    v40 = v47;
    sub_2543A3508();
    (*(v48 + 8))(v40, v50);
    (*(v60 + 8))(v39, v65);
  }

  else
  {
    v41 = v60;
    v42 = v56;
    v43 = v52;
    (*(v56 + 32))(v52, v33, v61);
    LOBYTE(v63) = 1;
    v44 = v54;
    sub_2543A3508();
    v45 = v58;
    sub_2543A3578();
    (*(v57 + 8))(v44, v45);
    (*(v42 + 8))(v43, v61);
    (*(v41 + 8))(v39, v65);
  }

  OUTLINED_FUNCTION_15_3();
}

void ObservationUpdateScope.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v98 = v30;
  *&v107 = v26;
  *(&v107 + 1) = v24;
  *&v108 = v31;
  *(&v108 + 1) = v32;
  updated = type metadata accessor for ObservationUpdateScope.TargetedCodingKeys(255, &v107);
  OUTLINED_FUNCTION_8_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v95 = v34;
  v96 = updated;
  v90 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v89 = v35;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_0();
  v97 = v37;
  OUTLINED_FUNCTION_19_2();
  v39 = type metadata accessor for ObservationUpdateScope.UntargetedCodingKeys(255, v38);
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v93 = v40;
  v94 = v39;
  v88 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v87 = v41;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_0();
  v92 = v43;
  OUTLINED_FUNCTION_19_2();
  type metadata accessor for ObservationUpdateScope.CodingKeys(255, v44);
  OUTLINED_FUNCTION_5_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  v99 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v102 = v45;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v46);
  v48 = &v84 - v47;
  v100 = v25;
  v101 = v27;
  OUTLINED_FUNCTION_19_2();
  v50 = type metadata accessor for ObservationUpdateScope(0, v49);
  OUTLINED_FUNCTION_3();
  v91 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v53);
  v55 = &v84 - v54;
  __swift_project_boxed_opaque_existential_0(v29, v29[3]);
  v103 = v48;
  v56 = a10;
  sub_2543A3768();
  v57 = v29;
  if (!v56)
  {
    v85 = v21;
    v86 = v55;
    WitnessTable = v50;
    v58 = v101;
    a10 = v29;
    v59 = v99;
    v60 = v103;
    *&v105 = sub_2543A34E8();
    OUTLINED_FUNCTION_45_0();
    sub_2543A2B38();
    OUTLINED_FUNCTION_11_4();
    swift_getWitnessTable();
    *&v107 = sub_2543A3178();
    *(&v107 + 1) = v61;
    *&v108 = v62;
    *(&v108 + 1) = v63;
    OUTLINED_FUNCTION_45_0();
    sub_2543A3168();
    OUTLINED_FUNCTION_12_5();
    sub_2543A2F68();
    v64 = v105;
    if (v105 == 2 || (v84 = v107, v105 = v107, v106 = v108, (sub_2543A2F88() & 1) == 0))
    {
      v67 = sub_2543A32E8();
      swift_allocError();
      v69 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
      *v69 = WitnessTable;
      v70 = sub_2543A3468();
      OUTLINED_FUNCTION_27_2(v70);
      (*(*(v67 - 8) + 104))(v69, *MEMORY[0x277D84160], v67);
      swift_willThrow();
      (*(v102 + 8))(v60, v59);
      swift_unknownObjectRelease();
    }

    else if (v64)
    {
      LOBYTE(v105) = 1;
      sub_2543A3458();
      v65 = v98;
      v66 = v102;
      v73 = v58;
      v74 = v90;
      sub_2543A34D8();
      v78 = OUTLINED_FUNCTION_2_7();
      v79(v78, v74);
      (*(v66 + 8))(v103, v59);
      OUTLINED_FUNCTION_17_3(&a9);
      swift_unknownObjectRelease();
      v80 = v85;
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v73);
      v81 = *(v91 + 32);
      v82 = v86;
      v83 = WitnessTable;
      v81(v86, v80, WitnessTable);
      v81(v65, v82, v83);
    }

    else
    {
      LOBYTE(v105) = 0;
      sub_2543A3458();
      v71 = v98;
      v72 = v102;
      v75 = OUTLINED_FUNCTION_2_7();
      v76(v75, v88);
      (*(v72 + 8))(v60, v59);
      OUTLINED_FUNCTION_17_3(&a9);
      swift_unknownObjectRelease();
      v77 = v86;
      __swift_storeEnumTagSinglePayload(v86, 1, 1, v58);
      (*(v91 + 32))(v71, v77, WitnessTable);
    }

    v57 = a10;
  }

  __swift_destroy_boxed_opaque_existential_0(v57);
  OUTLINED_FUNCTION_15_3();
}

uint64_t static ObservationUpdateScope.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_2();
  v41 = v6;
  v42 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9();
  v38 = v10 - v9;
  v39 = v8;
  v43[0] = v11;
  v43[1] = v12;
  v43[2] = v13;
  v43[3] = v8;
  updated = type metadata accessor for ObservationUpdateScope(0, v43);
  OUTLINED_FUNCTION_3();
  v16 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  OUTLINED_FUNCTION_45_0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3();
  v22 = v21;
  OUTLINED_FUNCTION_134();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v37 - v25;
  v28 = *(v27 + 48);
  v40 = v16;
  v29 = *(v16 + 16);
  v29(&v37 - v25, a1, updated, v24);
  (v29)(&v26[v28], v42, updated);
  OUTLINED_FUNCTION_14_0(v26);
  if (v31)
  {
    v30 = 1;
    OUTLINED_FUNCTION_14_0(&v26[v28]);
    if (v31)
    {
      goto LABEL_10;
    }
  }

  else
  {
    (v29)(v19, v26, updated);
    OUTLINED_FUNCTION_14_0(&v26[v28]);
    if (!v31)
    {
      v32 = v41;
      v33 = &v26[v28];
      v34 = v38;
      (*(v41 + 32))(v38, v33, a3);
      v30 = sub_2543A2848();
      v35 = *(v32 + 8);
      v35(v34, a3);
      v35(v19, a3);
LABEL_10:
      v22 = v40;
      goto LABEL_11;
    }

    (*(v41 + 8))(v19, a3);
  }

  v30 = 0;
  updated = TupleTypeMetadata2;
LABEL_11:
  (*(v22 + 8))(v26, updated);
  return v30 & 1;
}

uint64_t sub_2542FCD0C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2542FCD88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_2542FCECC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x2542FD0A0);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2542FD0C8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2542FD124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2542FD2AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2542FD4CCLL);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

_BYTE *sub_2542FD560(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2542FD62CLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2542FD664(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2542FD700);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2542FD910@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2542FA43C();
  *a1 = result;
  return result;
}

uint64_t sub_2542FD940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02C0, qword_2543A9470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  *(v3 - 112) = v0;
  *(v3 - 104) = v2;
  *(v3 - 96) = v1;
  return 255;
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  *(v7 - 144) = v5;
  *(v7 - 136) = v4;
  *(v7 - 128) = v6;
  *(v7 - 120) = v3;
  *(v7 - 112) = v1;
  *(v7 - 104) = v2;
  *(v7 - 96) = v0;
  return 255;
}

void OUTLINED_FUNCTION_19_2()
{
  *(v4 - 128) = v1;
  *(v4 - 120) = v2;
  *(v4 - 112) = v3;
  *(v4 - 104) = v0;
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  *(v2 - 104) = v1;
  *(v2 - 96) = v0;
  return 255;
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1)
{

  return sub_2543A32D8();
}

uint64_t dispatch thunk of MemberObserving.observation<A>(ofType:forMemberID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_11(v8);

  return v11(v10);
}

{
  OUTLINED_FUNCTION_4_6(a1, a2, a3, a4, a5, a6, a7);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_17(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_11(v8);

  return v11(v10);
}

uint64_t dispatch thunk of MemberObserving.observation<A>(ofType:forMemberID:targeting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_8(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_6();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_10(v9);

  return v12(v11);
}

{
  OUTLINED_FUNCTION_2_8(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_5_6();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_17(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_0_10(v9);

  return v12(v11);
}

uint64_t dispatch thunk of MemberObserving.sendObservationUpdate<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_6();
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2542FE124;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2542FE124(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2542FE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_2543A2148();

  return v9;
}

uint64_t Publisher<>.asyncStream.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v3 = sub_2543A2D08();
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_9();
  sub_2542FE93C(v2);
  OUTLINED_FUNCTION_3_6();
  return sub_2543A2D88();
}

{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_7();
  v3 = sub_2543A2BF8();
  v4 = OUTLINED_FUNCTION_110(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_9();
  sub_2542FEED4(v2);
  OUTLINED_FUNCTION_3_6();
  return sub_2543A2C38();
}

uint64_t sub_2542FE44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v24 = a1;
  v21 = a4;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v7 = sub_2543A2D38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v22 = *(v8 + 16);
  v22(&v21 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = *(v8 + 32);
  v14(v13 + v12, v11, v7);
  (v22)(v11, v24, v7);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = a3;
  *(v15 + 24) = v16;
  v14(v15 + v12, v11, v7);
  v17 = a3;
  v18 = sub_2543A2118();

  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v16;
  v19[4] = v18;
  return sub_2543A2CF8();
}

uint64_t sub_2542FE6C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4)
  {
    v5 = v4;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2D38();
  return sub_2543A2D28();
}

uint64_t sub_2542FE770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v15 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v9 = sub_2543A2CE8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness, v11);
  sub_2543A2D38();
  sub_2543A2D18();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2542FE93C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v3 = sub_2543A2D08();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2542FEA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v23 = a3;
  v24 = a4;
  swift_getAssociatedTypeWitness();
  v22 = sub_2543A2C28();
  v7 = *(v22 - 8);
  v8 = MEMORY[0x28223BE20](v22);
  v10 = &v22 - v9;
  v25 = *(v7 + 16);
  v26 = a1;
  v25(&v22 - v9, a1, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v13 = *(v7 + 32);
  v14 = v22;
  v13(v12 + v11, v10, v22);
  (v25)(v10, a1, v14);
  v15 = swift_allocObject();
  v17 = v23;
  v16 = v24;
  *(v15 + 16) = v23;
  *(v15 + 24) = v16;
  v13(v15 + v11, v10, v14);
  v18 = v17;
  v19 = sub_2543A2118();

  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v16;
  v20[4] = v19;
  return sub_2543A2BE8();
}

uint64_t sub_2542FECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_2543A2C28();
  return sub_2543A2C18();
}

uint64_t sub_2542FED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = sub_2543A2BD8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness, v11);
  sub_2543A2C28();
  sub_2543A2C08();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_2542FEED4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  sub_2543A2BF8();
  OUTLINED_FUNCTION_26();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_2542FEF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, AssociatedTypeWitness);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  *(v18 + 6) = v21;
  *(v18 + 7) = a3;
  (*(v10 + 32))(&v18[v17], v12, AssociatedTypeWitness);

  sub_2542CCD54(0, 0, v15);
}

uint64_t sub_2542FF138()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542FF17C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_2542DF754;

  return v10(a6);
}

uint64_t sub_2542FF274()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542FF354(uint64_t a1)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_110(AssociatedTypeWitness);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2542DF754;

  return sub_2542FF17C(a1, v8, v9, v10, v11, v1 + v7);
}

uint64_t sub_2542FF484()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7(v0, v1, v2, MEMORY[0x277CBCF00], MEMORY[0x277CBCAC8]);
  v3 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v3);
  v4 = OUTLINED_FUNCTION_0_11();

  return sub_2542FECF0(v4, v5, v6, v7);
}

uint64_t objectdestroy_7Tm()
{
  swift_getAssociatedTypeWitness();
  sub_2543A2C28();
  OUTLINED_FUNCTION_26();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542FF5A8()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7(v0, v1, v2, MEMORY[0x277CBCF00], MEMORY[0x277CBCAC8]);
  v3 = sub_2543A2C28();
  OUTLINED_FUNCTION_110(v3);
  v4 = OUTLINED_FUNCTION_0_11();

  return sub_2542FED40(v4, v5, v6, v7);
}

uint64_t sub_2542FF628()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542FF664()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7(v0, v1, v2, MEMORY[0x277CBCF00], MEMORY[0x277CBCAC8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v3 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v3);
  v4 = OUTLINED_FUNCTION_0_11();

  return sub_2542FE6C4(v4, v5, v6, v7);
}

uint64_t objectdestroy_16Tm()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  sub_2543A2D38();
  OUTLINED_FUNCTION_26();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2542FF7D0()
{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_5_7(v0, v1, v2, MEMORY[0x277CBCF00], MEMORY[0x277CBCAC8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_4_7();
  v3 = sub_2543A2D38();
  OUTLINED_FUNCTION_110(v3);
  v4 = OUTLINED_FUNCTION_0_11();

  return sub_2542FE770(v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  *(v3 - 80) = v2;
  *(v3 - 72) = v1;
  *(v3 - 64) = v0;

  return swift_checkMetadataState();
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

id static NSError.hpsError(_:localizedDescription:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E02E8, &qword_2543B39E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2543A7E00;
    *(inited + 32) = sub_2543A2878();
    *(inited + 40) = v7;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = a2;
    *(inited + 56) = v3;
    sub_2543A2768();
    v3 = sub_2543A2748();
  }

  result = sub_2543A2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    v11 = v9;
    v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    return sub_2542FFD9C(v10, v11, a1, v3);
  }

  return result;
}

id sub_2542FFA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = static NSError.hpsError(_:localizedDescription:)(a3, v5, v7);

  return v8;
}

id static NSError.hpsError(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  result = sub_2543A2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2543A2768();
    return sub_2542FFD9C(v6, v7, a1, a2);
  }

  return result;
}

id sub_2542FFB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2543A2718();
  v6 = static NSError.hpsError(_:userInfo:)(a3, v5);

  return v6;
}

id sub_2542FFBB4()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(14, 0x666C6573206C694ELL, 0xE800000000000000);
  qword_27F5E02C8 = result;
  return result;
}

id sub_2542FFC18()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(9, 0xD000000000000013, 0x80000002543B8220);
  qword_27F5E02D0 = result;
  return result;
}

id sub_2542FFC80()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(5, 0xD000000000000015, 0x80000002543B8200);
  qword_27F5E02D8 = result;
  return result;
}

id sub_2542FFCE8()
{
  sub_2542F464C();
  result = static NSError.hpsError(_:localizedDescription:)(15, 0xD00000000000001BLL, 0x80000002543B81E0);
  qword_27F5E02E0 = result;
  return result;
}

id sub_2542FFD50(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

id sub_2542FFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2543A2858();

  if (a4)
  {
    v8 = sub_2543A2708();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2542FFE54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request;
  swift_beginAccess();
  sub_2543003F4(v1 + v3, &v5);
  if (v6)
  {
    return sub_2542DA8C0(&v5, a1);
  }

  sub_254300464(&v5);
  sub_2543004CC(*(v1 + OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject) + OBJC_IVAR____TtC15HomePodSettings22TransportRequestObject_request, a1);
  sub_2543004CC(a1, &v5);
  swift_beginAccess();
  sub_254300530(&v5, v1 + v3);
  return swift_endAccess();
}

id sub_2542FFF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](ObjectType);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v4[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request];
  type metadata accessor for TransportRequestObject();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  (*(v9 + 16))(v11, a1, a2);
  *&v4[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject] = sub_25435F378(v11, a2, a3);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v9 + 8))(a1, a2);
  return v13;
}

id sub_2543000D4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest____lazy_storage___request];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_25430013C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15HomePodSettings19CoordinationRequest_requestObject);
  v4 = sub_2543A2858();
  [a1 encodeObject:v3 forKey:v4];
}

id sub_254300220(void *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TransportRequestObject();
  v3 = sub_2543A3088();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(ObjectType);
    v6 = sub_2543000D4(v4);

    v7 = swift_getObjectType();
    OUTLINED_FUNCTION_0_12(v7);
  }

  else
  {
    v8 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, 0xD00000000000002BLL, 0x80000002543B82D0, v8 & 1, ObjectType, &off_286646E98);

    v9 = swift_getObjectType();
    OUTLINED_FUNCTION_0_12(v9);
    return 0;
  }

  return v6;
}

uint64_t sub_2543003F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254300464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2543004CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_254300530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0300, &qword_2543B00E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_12(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

void sub_254300608(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void))
{
  v7 = a5();
  v9 = v8;
  objc_allocWithZone(MEMORY[0x277D02878]);
  if (a4)
  {
    v10 = sub_25431CE40(0xD000000000000019, 0x80000002543B7650, v7, v9, 0x10000000);
  }

  else
  {
    v10 = sub_25431CDB8(0xD000000000000019, 0x80000002543B7650, v7, v9);
  }

  v11 = v10;
  v12 = sub_2543A2858();
  [v11 ulog:a1 message:v12];
}

uint64_t sub_2543006F4()
{
  type metadata accessor for TransportObservationsRegister();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0320, &qword_2543A9588);
  result = sub_2543A2748();
  *(v0 + 16) = result;
  qword_27F5E0308 = v0;
  return result;
}

uint64_t static TransportObservationsRegister.shared.getter()
{
  if (qword_27F5DF070 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2543007C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(v6 + 32);
  v8 = v7(a2, v6);
  MEMORY[0x259C093D0](v8);

  v9 = OUTLINED_FUNCTION_0_13();
  sub_254300608(v9, v10, 0x80000002543B8390, 0, v11);

  v12 = v7(a2, v6);
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 16);
  sub_25431982C(sub_254300DC4, v15, v12, v14, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v18;

  return swift_endAccess();
}

uint64_t sub_25430092C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t *a4@<X1>)
{
  v8 = sub_2543A30C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_25430D830(*a4, a4[1], a1, &v14 - v10);
  if (__swift_getEnumTagSinglePayload(v11, 1, a1) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(a1 - 8) + 32))(boxed_opaque_existential_1, v11, a1);
  }

  return result;
}

uint64_t sub_254300A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2543A3298();

  *&v21 = 0xD00000000000002ALL;
  *(&v21 + 1) = 0x80000002543B8360;
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  MEMORY[0x259C093D0](a4, a5);
  v11 = OUTLINED_FUNCTION_0_13();
  sub_254300608(v11, v12, 0x80000002543B8360, 0, v13);

  swift_beginAccess();
  v15 = sub_254396570();
  if (v15)
  {
    v16 = v14;
    swift_endAccess();
    v23 = a3;
    v20[0] = a4;
    v20[1] = a5;
    v15(&v21, &v23, v20);
    sub_2542D7A3C(v15, v16);
    if (v22)
    {
      return sub_2542DA8C0(&v21, a6);
    }

    sub_254300D4C(&v21);
  }

  else
  {
    swift_endAccess();
    a5 = a2;
    a4 = a1;
  }

  sub_254300CF8();
  swift_allocError();
  *v18 = a4;
  *(v18 + 8) = a5;
  *(v18 + 16) = v15 != 0;
  sub_2543A2768();
  return swift_willThrow();
}

uint64_t TransportObservationsRegister.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_254300CF8()
{
  result = qword_27F5E0310;
  if (!qword_27F5E0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0310);
  }

  return result;
}

uint64_t sub_254300D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0318, &qword_2543A9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_254300E4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254300E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_254300F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 40) + **(a9 + 40));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_2542FE220;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_254301074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 48) + **(a7 + 48));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2542DF754;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t Target.isLocal.getter()
{
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t static Target.targetForCurrentDevice()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t sub_254301228(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2543012BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254301228(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543012E8(uint64_t a1)
{
  v2 = sub_2543014B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254301324(uint64_t a1)
{
  v2 = sub_2543014B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Target.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0328, &qword_2543A9698);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543014B0();
  sub_2543A3778();
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  sub_2543A3558();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_2543014B0()
{
  result = qword_27F5E0330;
  if (!qword_27F5E0330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0330);
  }

  return result;
}

uint64_t Target.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Target.init(from:)(a1);
  return v2;
}

void *Target.init(from:)(void *a1)
{
  v3 = v1;
  v13[1] = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0338, &qword_2543A96A0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543014B0();
  sub_2543A3768();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = sub_2543A34B8();
    (*(v7 + 8))(v10, v5);
    *(v3 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2543016E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Target.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static Target.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v4 = 1;
  }

  else
  {
    v3 = a1;
    OUTLINED_FUNCTION_0_14();
    swift_beginAccess();
    LOBYTE(v3) = *(v3 + 16);
    OUTLINED_FUNCTION_0_14();
    swift_beginAccess();
    v4 = v3 ^ *(a2 + 16) ^ 1;
  }

  return v4 & 1;
}

uint64_t Target.hashValue.getter()
{
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v0);
  return sub_2543A3728();
}

uint64_t sub_254301864(uint64_t a1)
{
  v2 = *v1;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v2);
  return sub_2543A3728();
}

uint64_t Target.description.getter()
{
  sub_2543A3298();
  MEMORY[0x259C093D0](60, 0xE100000000000000);
  v1 = sub_2543A37B8();
  MEMORY[0x259C093D0](v1);

  MEMORY[0x259C093D0](32, 0xE100000000000000);
  sub_2543A3358();
  MEMORY[0x259C093D0](0x61636F4C7369203ELL, 0xEC000000203D206CLL);
  OUTLINED_FUNCTION_0_14();
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v2, v3);

  return 0;
}

unint64_t sub_254301A24(uint64_t a1, uint64_t a2)
{
  result = qword_27F5E0340;
  if (!qword_27F5E0340)
  {
    type metadata accessor for Target();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0340);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Target.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x254301B9CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_254301BD8()
{
  result = qword_27F5E0348;
  if (!qword_27F5E0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0348);
  }

  return result;
}

unint64_t sub_254301C30()
{
  result = qword_27F5E0350;
  if (!qword_27F5E0350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0350);
  }

  return result;
}

unint64_t sub_254301C88()
{
  result = qword_27F5E0358;
  if (!qword_27F5E0358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0358);
  }

  return result;
}

uint64_t sub_254301CE8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a1;
  v27 = a3;
  v23 = *(a2 - 8);
  v24 = a2;
  MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v10) != 1)
  {
    (*(v11 + 32))(v14, v18, v10);
    v26(v14, v8);
    (*(v11 + 8))(v14, v10);
    if (v5)
    {
      return (*(v23 + 32))(v25, v8, v24);
    }

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v21, 1, v27);
}

uint64_t ??? infix<A>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_2543A30C8();
  v6 = sub_254301CE8(sub_2543020D0, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v5, v8);
  if (v8[1])
  {
    return v8[0];
  }

  else
  {
    return a2(v6);
  }
}

uint64_t sub_254302000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = sub_2543A2888();
  *a2 = result;
  a2[1] = v7;
  return result;
}

id BetaEnrollment.IdentifyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.IdentifyRequest.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BetaEnrollment.IdentifyRequest.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BetaEnrollment.IdentifyRequest.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t BetaEnrollment.IdentifyRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_2542E1050(v4);
  }

  return 0;
}

id BetaEnrollment.IdentifyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2543023B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0360, &unk_2543A9900);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  sub_2542EE9CC(&qword_27F5E0378, &qword_27F5DFBC8, &qword_2543A7D38, MEMORY[0x277CFB520]);
  sub_2543A2ED8();
  sub_2543A2F48();
  sub_2542EE9CC(&qword_27F5E0410, &qword_27F5E0360, &unk_2543A9900, MEMORY[0x277CFB500]);
  v7 = sub_2543A2848();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_254302598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarrySettings.DataModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CarrySettings.MessageableDevice.init(model:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_25430360C(a1, a5, type metadata accessor for CarrySettings.DataModel);
  v10 = type metadata accessor for CarrySettings.MessageableDevice(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

void *sub_254302770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CarrySettings.CarryDevice(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CarrySettings.DataModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescriptionBuilder();
  swift_allocObject();
  v11 = sub_2542F4C30(sub_25430298C, 0, 0x65746E6F43206F4ELL, 0xEA0000000000746ELL);
  sub_2542ED4C0(v1, v10);
  sub_25430360C(v10, v7, type metadata accessor for CarrySettings.CarryDevice);
  sub_25430366C(v7, v4);
  v12 = _s20CarryDeviceMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v12);
  sub_2542DE3E4(v4, &qword_27F5E0370, &qword_2543B1EB0);
  v14 = 0x4C45444F4D5F4F4ELL;
  if (EnumTagSinglePayload == 1)
  {
    v14 = 0x43495645445F4F4ELL;
  }

  v15 = 0xE800000000000000;
  if (EnumTagSinglePayload == 1)
  {
    v15 = 0xEE004F464E495F45;
  }

  v11[4] = v14;
  v11[5] = v15;

  return v11;
}

uint64_t sub_25430298C(uint64_t a1, uint64_t a2)
{
  sub_2543A3298();

  strcpy(v5, "<CarryDevice, ");
  MEMORY[0x259C093D0](a1, a2);
  MEMORY[0x259C093D0](15904, 0xE200000000000000);
  return v5[0];
}

uint64_t CarrySettings.MessageableDevice.detailedDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0360, &unk_2543A9900);
  OUTLINED_FUNCTION_3();
  v112 = v2;
  v113 = v1;
  MEMORY[0x28223BE20](v1);
  v123 = &v111 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  OUTLINED_FUNCTION_3();
  v116 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_10();
  v115 = v7 - v8;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v111 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0368, &qword_2543A9910);
  v13 = OUTLINED_FUNCTION_110(v12);
  MEMORY[0x28223BE20](v13);
  v114 = &v111 - v14;
  v15 = type metadata accessor for CarrySettings.CarryDevice(0);
  v16 = OUTLINED_FUNCTION_110(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_10();
  v122 = v17 - v18;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v19);
  v118 = &v111 - v20;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v21);
  v23 = &v111 - v22;
  v24 = type metadata accessor for CarrySettings.DataModel(0);
  v25 = OUTLINED_FUNCTION_110(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_10();
  v119 = v26 - v27;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v28);
  v117 = &v111 - v29;
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v111 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v34 = OUTLINED_FUNCTION_110(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_10();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = (&v111 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = &v111 - v42;
  v120 = sub_254302770();
  v124 = v0;
  sub_2542ED4C0(v0, v32);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v32, v23, v44);
  sub_25430366C(v23, v43);
  v45 = _s20CarryDeviceMergeableVMa(0);
  OUTLINED_FUNCTION_10_5(v43);
  if (v46)
  {
    sub_2542DE3E4(v43, &qword_27F5E0370, &qword_2543B1EB0);
    sub_2543036DC(__dst);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_15();
    sub_254303AF4(v43, v47);
    memcpy(__dst, v145, 0xA8uLL);
  }

  OUTLINED_FUNCTION_7_7(v145);
  OUTLINED_FUNCTION_6_7(v145);
  if (v46)
  {
    v48 = 0;
    v49 = OUTLINED_FUNCTION_9_4();
    v144[2] = 0;
  }

  else
  {
    v48 = v145[7];
    v49 = sub_2543A2768();
    v50 = MEMORY[0x277D837D0];
  }

  v144[0] = v48;
  v144[1] = v49;
  v144[3] = v50;
  sub_2542F4C4C(28014, 0xE200000000000000, v144);
  sub_2542DE3E4(v144, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v143);
  OUTLINED_FUNCTION_6_7(v143);
  if (v46)
  {
    v51 = 0;
    v52 = OUTLINED_FUNCTION_9_4();
    v142[2] = 0;
  }

  else
  {
    v51 = v143[5];
    v52 = sub_2543A2768();
    v53 = MEMORY[0x277D837D0];
  }

  v142[0] = v51;
  v142[1] = v52;
  v142[3] = v53;
  sub_2542F4C4C(0x6C65646F6DLL, 0xE500000000000000, v142);
  sub_2542DE3E4(v142, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v141);
  OUTLINED_FUNCTION_6_7(v141);
  if (v46)
  {
    v54 = 0;
    memset(v139, 0, sizeof(v139));
  }

  else
  {
    v139[0] = v141[112];
    v54 = MEMORY[0x277D839B0];
  }

  v55 = MEMORY[0x277D837D0];
  v140 = v54;
  sub_2542F4C4C(0x65737546646F7270, 0xE900000000000064, v139);
  sub_2542DE3E4(v139, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v138);
  OUTLINED_FUNCTION_6_7(v138);
  if (v46 || !v138[16])
  {
    v136 = 0u;
    v137 = 0u;
  }

  else
  {
    v56 = v138[15];
    v57 = sub_2543A2768();
    *(&v137 + 1) = v55;
    *&v136 = v56;
    *(&v136 + 1) = v57;
  }

  sub_2542F4C4C(1836019570, 0xE400000000000000, &v136);
  sub_2542DE3E4(&v136, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v135);
  OUTLINED_FUNCTION_6_7(v135);
  if (v46 || !v135[1])
  {
    v58 = v11;
    v133 = 0u;
    v134 = 0u;
  }

  else
  {
    v58 = v11;
    v59 = v135[0];
    v60 = sub_2543A2768();
    *(&v134 + 1) = v55;
    *&v133 = v59;
    *(&v133 + 1) = v60;
  }

  sub_2542F4C4C(0x70756F7267, 0xE500000000000000, &v133);
  sub_2542DE3E4(&v133, &unk_27F5DFA00, &unk_2543A76C0);
  OUTLINED_FUNCTION_7_7(v130);
  OUTLINED_FUNCTION_6_7(v130);
  if (v46 || (v61 = v131, v62 = v132, sub_254303B4C(v131, v132), sub_2542DE3E4(__dst, &dword_27F5E0388, &unk_2543A9920), !v62))
  {
    memset(v128, 0, 32);
  }

  else
  {

    *(&v128[1] + 1) = MEMORY[0x277D837D0];
    *&v128[0] = v61;
    *(&v128[0] + 1) = v62;
  }

  v63 = v58;
  sub_2542F4C4C(1919508848, 0xE400000000000000, v128);
  sub_2542DE3E4(v128, &unk_27F5DFA00, &unk_2543A76C0);
  v64 = v124;
  v65 = v117;
  sub_2542ED4C0(v124, v117);
  OUTLINED_FUNCTION_1_12();
  v66 = v65;
  v67 = v118;
  sub_25430360C(v66, v118, v68);
  sub_25430366C(v67, v40);
  OUTLINED_FUNCTION_10_5(v40);
  if (v46)
  {
    v69 = &qword_27F5E0370;
    v70 = &qword_2543B1EB0;
LABEL_30:
    sub_2542DE3E4(v40, v69, v70);
    v76 = v122;
    v77 = v119;
    memset(v128, 0, 32);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v71 = v114;
  sub_2543A2198();
  OUTLINED_FUNCTION_0_15();
  v72 = v40;
  v40 = v71;
  sub_254303AF4(v72, v73);
  v74 = _s29AppleConnectSettingsMergeableVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v74);
  if (EnumTagSinglePayload == 1)
  {
    v69 = &qword_27F5E0368;
    v70 = &qword_2543A9910;
    goto LABEL_30;
  }

  v78 = v4;
  v80 = *v40;
  v79 = v40[1];
  sub_2543A2768();
  sub_254303AF4(v40, _s29AppleConnectSettingsMergeableVMa);
  *(&v128[1] + 1) = MEMORY[0x277D837D0];
  *&v128[0] = v80;
  *(&v128[0] + 1) = v79;
  v4 = v78;
  v76 = v122;
  v77 = v119;
LABEL_32:
  sub_2542F4C4C(25441, 0xE200000000000000, v128);
  sub_2542DE3E4(v128, &unk_27F5DFA00, &unk_2543A76C0);
  sub_2542ED4C0(v64, v77);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v77, v76, v81);
  sub_25430366C(v76, v37);
  OUTLINED_FUNCTION_10_5(v37);
  if (v46)
  {
    v82 = &qword_27F5E0370;
    v83 = &qword_2543B1EB0;
    v84 = v37;
LABEL_58:
    sub_2542DE3E4(v84, v82, v83);
    goto LABEL_59;
  }

  v85 = v115;
  v86 = v116;
  (*(v116 + 16))(v115, v37 + *(v45 + 24), v4);
  OUTLINED_FUNCTION_0_15();
  sub_254303AF4(v37, v87);
  (*(v86 + 32))(v63, v85, v4);
  v88 = sub_2543023B8();
  if (v88)
  {
    (*(v86 + 8))(v63, v4);
LABEL_59:
    v110 = sub_2542F4D58();

    return v110;
  }

  v89 = sub_2542EE9CC(&qword_27F5E0378, &qword_27F5DFBC8, &qword_2543A7D38, MEMORY[0x277CFB520]);
  v90 = sub_2543A2EF8();
  v91 = MEMORY[0x277D84F90];
  if (!v90)
  {
LABEL_57:
    *(&v128[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFC28, &unk_2543A81D0);
    *&v128[0] = v91;
    sub_2542F4C4C(0x73656C69666F7270, 0xE800000000000000, v128);
    (*(v116 + 8))(v63, v4);
    v82 = &unk_27F5DFA00;
    v83 = &unk_2543A76C0;
    v84 = v128;
    goto LABEL_58;
  }

  v92 = v90;
  v129 = MEMORY[0x277D84F90];
  sub_2542F1568(0, v90 & ~(v90 >> 63), 0);
  v91 = v129;
  result = sub_2543A2ED8();
  if ((v92 & 0x8000000000000000) == 0)
  {
    v124 = v92 - 1;
    v121 = v4;
    v122 = v89;
    while (1)
    {
      v94 = sub_2543A2FA8();
      memcpy(v128, v95, sizeof(v128));
      sub_254303A84(v128, &v125);
      v94(&v127, 0);
      v96 = v128[1];
      v97 = LOBYTE(v128[3]);
      v98 = v63;
      v99 = BYTE1(v128[3]);
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_2543A3298();

      v125 = 10320;
      v126 = 0xE200000000000000;
      MEMORY[0x259C093D0](v96, *(&v96 + 1));
      MEMORY[0x259C093D0](0x64656E676973202CLL, 0xEA0000000000203ALL);
      v100 = v97 ? 1702195828 : 0x65736C6166;
      v101 = v97 ? 0xE400000000000000 : 0xE500000000000000;
      MEMORY[0x259C093D0](v100, v101);

      MEMORY[0x259C093D0](0x657473757274202CLL, 0xEB00000000203A64);
      v102 = v99 ? 1702195828 : 0x65736C6166;
      v103 = v99 ? 0xE400000000000000 : 0xE500000000000000;
      MEMORY[0x259C093D0](v102, v103);

      MEMORY[0x259C093D0](41, 0xE100000000000000);
      sub_2542DE3E4(v128, &qword_27F5E0380, &qword_2543A9918);
      v104 = v125;
      v105 = v126;
      v129 = v91;
      v107 = *(v91 + 16);
      v106 = *(v91 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_2542F1568(v106 > 1, v107 + 1, 1);
        v91 = v129;
      }

      *(v91 + 16) = v107 + 1;
      v108 = v91 + 16 * v107;
      *(v108 + 32) = v104;
      *(v108 + 40) = v105;
      v109 = v123;
      v4 = v121;
      sub_2543A2F58();
      v63 = v98;
      if (!v124)
      {
        break;
      }

      --v124;
    }

    (*(v112 + 8))(v109, v113);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

uint64_t sub_25430360C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_26();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_25430366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2543036E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t CarrySettings.MessageableDevice.shortDescription.getter()
{
  v1 = type metadata accessor for CarrySettings.CarryDevice(0);
  v2 = OUTLINED_FUNCTION_110(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarrySettings.DataModel(0);
  v6 = OUTLINED_FUNCTION_110(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0370, &qword_2543B1EB0);
  v10 = OUTLINED_FUNCTION_110(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_254302770();
  sub_2542ED4C0(v0, v8);
  OUTLINED_FUNCTION_1_12();
  sub_25430360C(v8, v4, v13);
  sub_25430366C(v4, v12);
  v14 = _s20CarryDeviceMergeableVMa(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_2542DE3E4(v12, &qword_27F5E0370, &qword_2543B1EB0);
    sub_2543036DC(__dst);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
    sub_2543A2198();
    OUTLINED_FUNCTION_0_15();
    sub_254303AF4(v12, v15);
    memcpy(__dst, v34, sizeof(__dst));
  }

  memcpy(v34, __dst, sizeof(v34));
  OUTLINED_FUNCTION_6_7(v34);
  if (v16)
  {
    v17 = 0;
    v18 = OUTLINED_FUNCTION_9_4();
    v33[2] = 0;
  }

  else
  {
    v17 = v34[7];
    v18 = sub_2543A2768();
    v19 = MEMORY[0x277D837D0];
  }

  v33[0] = v17;
  v33[1] = v18;
  v33[3] = v19;
  sub_2542F4C4C(28014, 0xE200000000000000, v33);
  sub_2542DE3E4(v33, &unk_27F5DFA00, &unk_2543A76C0);
  memcpy(v32, __dst, sizeof(v32));
  OUTLINED_FUNCTION_6_7(v32);
  if (v16)
  {
    v20 = 0;
    v21 = OUTLINED_FUNCTION_9_4();
    v31[2] = 0;
  }

  else
  {
    v20 = v32[5];
    v21 = sub_2543A2768();
    v22 = MEMORY[0x277D837D0];
  }

  v31[0] = v20;
  v31[1] = v21;
  v31[3] = v22;
  sub_2542F4C4C(0x6C65646F6DLL, 0xE500000000000000, v31);
  sub_2542DE3E4(v31, &unk_27F5DFA00, &unk_2543A76C0);
  memcpy(v30, __dst, sizeof(v30));
  OUTLINED_FUNCTION_6_7(v30);
  if (v16 || (v23 = v30[15], v24 = v30[16], sub_254303B4C(v30[15], v30[16]), sub_2542DE3E4(__dst, &dword_27F5E0388, &unk_2543A9920), !v24))
  {
    v28 = 0u;
    v29 = 0u;
  }

  else
  {
    v25 = MEMORY[0x277D837D0];

    *(&v29 + 1) = v25;
    *&v28 = v23;
    *(&v28 + 1) = v24;
  }

  sub_2542F4C4C(1836019570, 0xE400000000000000, &v28);
  sub_2542DE3E4(&v28, &unk_27F5DFA00, &unk_2543A76C0);
  v26 = sub_2542F4D58();

  return v26;
}

uint64_t sub_254303A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0380, &qword_2543A9918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254303AF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_26();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_254303B4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_2543A2768();
    sub_2543A2768();

    return sub_2543A2768();
  }

  return result;
}

uint64_t sub_254303BA4(uint64_t a1)
{
  result = type metadata accessor for CarrySettings.DataModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254303C2C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v4 = *(v44 - 8);
  v5 = *(v4 + 84);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v6 = *(v42 - 8);
  v45 = v5;
  v43 = *(v6 + 84);
  if (v43 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v8 = *(v40 - 8);
  v41 = *(v8 + 84);
  if (v41 > v7)
  {
    v7 = *(v8 + 84);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  if (v16 <= v13 - 1)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  v18 = *(v4 + 64);
  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v10 + 80);
  v24 = *(v15 + 80);
  if (!a2)
  {
    return 0;
  }

  v25 = v9;
  v26 = *(*(v9 - 8) + 64) + 7;
  v27 = ((v26 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & 0xFFFFFFFFFFFFFFF8) + v24 + 8;
  v28 = a1;
  if (a2 <= v17)
  {
    goto LABEL_36;
  }

  v29 = (v27 & ~v24) + *(v15 + 64);
  v30 = 8 * v29;
  if (v29 <= 3)
  {
    v33 = ((a2 - v17 + ~(-1 << v30)) >> v30) + 1;
    if (HIWORD(v33))
    {
      v31 = *(a1 + v29);
      if (!v31)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v33 > 0xFF)
    {
      v31 = *(a1 + v29);
      if (!*(a1 + v29))
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (v33 < 2)
    {
LABEL_36:
      if (v13 - 1 < v16)
      {

        return __swift_getEnumTagSinglePayload((a1 + v27) & ~v24, v16, v14);
      }

      if (v45 == v13)
      {
        v11 = v45;
        v37 = v44;
      }

      else
      {
        v28 = ((a1 + v18 + v19) & ~v19);
        if (v43 == v13)
        {
          v11 = v43;
          v37 = v42;
        }

        else
        {
          v28 = ((v28 + v20 + v21) & ~v21);
          if (v41 == v13)
          {
            v11 = v41;
            v37 = v40;
          }

          else
          {
            v28 = ((v28 + v22 + v23) & ~v23);
            if (v11 != v13)
            {
              v39 = *((v28 + v26) & 0xFFFFFFFFFFFFFFF8);
              if (v39 >= 0xFFFFFFFF)
              {
                LODWORD(v39) = -1;
              }

              EnumTagSinglePayload = v39 + 1;
              goto LABEL_53;
            }

            v37 = v25;
          }
        }
      }

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, v11, v37);
LABEL_53:
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v31 = *(a1 + v29);
  if (!*(a1 + v29))
  {
    goto LABEL_36;
  }

LABEL_26:
  v34 = (v31 - 1) << v30;
  if (v29 > 3)
  {
    v34 = 0;
  }

  if (v29)
  {
    if (v29 <= 3)
    {
      v35 = (v27 & ~v24) + *(v15 + 64);
    }

    else
    {
      v35 = 4;
    }

    switch(v35)
    {
      case 2:
        v36 = *a1;
        break;
      case 3:
        v36 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v36 = *a1;
        break;
      default:
        v36 = *a1;
        break;
    }
  }

  else
  {
    v36 = 0;
  }

  return v17 + (v36 | v34) + 1;
}

void sub_2543040C8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBB8, &qword_2543A7D28);
  v5 = *(v49 - 8);
  v6 = *(v5 + 84);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC0, &qword_2543A7D30);
  v7 = *(v47 - 8);
  v50 = v6;
  v48 = *(v7 + 84);
  if (v48 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBC8, &qword_2543A7D38);
  v9 = *(v45 - 8);
  v46 = *(v9 + 84);
  if (v46 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DFBD0, &qword_2543A7D40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 - 1;
  v16 = *(a4 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  if (v18 <= v14 - 1)
  {
    v19 = v14 - 1;
  }

  else
  {
    v19 = *(v17 + 84);
  }

  v20 = *(v7 + 80);
  v21 = *(v5 + 64) + v20;
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v9 + 64);
  v25 = *(v11 + 80);
  v26 = *(*(v10 - 8) + 64) + 7;
  v27 = ((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = *(v17 + 80);
  v29 = v27 + v28;
  v30 = ((v27 + v28) & ~v28) + *(v17 + 64);
  v31 = 8 * v30;
  if (a3 <= v19)
  {
    v34 = 0;
    v32 = a1;
    v33 = a2;
  }

  else
  {
    v32 = a1;
    v33 = a2;
    if (v30 <= 3)
    {
      v38 = ((a3 - v19 + ~(-1 << v31)) >> v31) + 1;
      if (HIWORD(v38))
      {
        v34 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v34 = v39;
        }

        else
        {
          v34 = 0;
        }
      }
    }

    else
    {
      v34 = 1;
    }
  }

  if (v19 < v33)
  {
    v35 = ~v19 + v33;
    if (v30 < 4)
    {
      v36 = (v35 >> v31) + 1;
      if (v30)
      {
        v40 = v35 & ~(-1 << v31);
        bzero(v32, v30);
        if (v30 == 3)
        {
          *v32 = v40;
          v32[2] = BYTE2(v40);
        }

        else if (v30 == 2)
        {
          *v32 = v40;
        }

        else
        {
          *v32 = v35;
        }
      }
    }

    else
    {
      bzero(v32, v30);
      *v32 = v35;
      v36 = 1;
    }

    switch(v34)
    {
      case 1:
        v32[v30] = v36;
        return;
      case 2:
        *&v32[v30] = v36;
        return;
      case 3:
        goto LABEL_71;
      case 4:
        *&v32[v30] = v36;
        return;
      default:
        return;
    }
  }

  v37 = ~v28;
  switch(v34)
  {
    case 1:
      v32[v30] = 0;
      if (!v33)
      {
        return;
      }

      goto LABEL_38;
    case 2:
      *&v32[v30] = 0;
      if (!v33)
      {
        return;
      }

      goto LABEL_38;
    case 3:
LABEL_71:
      __break(1u);
      JUMPOUT(0x254304608);
    case 4:
      *&v32[v30] = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!v33)
      {
        return;
      }

LABEL_38:
      if (v15 < v18)
      {
        v41 = &v32[v29] & v37;
        v42 = v33;
        v12 = v18;
        goto LABEL_40;
      }

      if (v15 < v33)
      {
        if (((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        v43 = v33 - v14;
LABEL_59:
        bzero(v32, v27);
        *v32 = v43;
        return;
      }

      v43 = v33 - v14;
      if (v33 >= v14)
      {
        if (((v26 + ((v24 + v25 + ((v22 + v23 + (v21 & ~v20)) & ~v23)) & ~v25)) & 0xFFFFFFF8) == 0xFFFFFFF8)
        {
          return;
        }

        goto LABEL_59;
      }

      v42 = (v33 + 1);
      if (v50 == v14)
      {
        v41 = v32;
        v12 = v50;
        v16 = v49;
      }

      else
      {
        v41 = &v32[v21] & ~v20;
        if (v48 == v14)
        {
          v12 = v48;
          v16 = v47;
        }

        else
        {
          v41 = (v41 + v22 + v23) & ~v23;
          if (v46 == v14)
          {
            v12 = v46;
            v16 = v45;
          }

          else
          {
            v41 = (v41 + v24 + v25) & ~v25;
            if (v12 != v14)
            {
              if ((v42 & 0x80000000) != 0)
              {
                v44 = (v33 - 0x7FFFFFFF);
              }

              else
              {
                v44 = v33;
              }

              *((v26 + v41) & 0xFFFFFFFFFFFFFFF8) = v44;
              return;
            }

            v16 = v10;
          }
        }
      }

LABEL_40:

      __swift_storeEnumTagSinglePayload(v41, v42, v12, v16);
      return;
  }
}

void *OUTLINED_FUNCTION_7_7(void *a1)
{

  return memcpy(a1, (v1 - 256), 0xA8uLL);
}

uint64_t BetaEnrollment.StateChangeRequest.desiredState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  result = OUTLINED_FUNCTION_97(v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState, v5);
  *a1 = *(v1 + v3);
  return result;
}

uint64_t BetaEnrollment.StateChangeRequest.desiredState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  result = OUTLINED_FUNCTION_3_2(v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState, v5);
  *(v1 + v3) = v2;
  return result;
}

uint64_t BetaEnrollment.StateChangeRequest.enrollProgramID.getter(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID;
  OUTLINED_FUNCTION_0_16(a1, v4);
  return *v2;
}

uint64_t BetaEnrollment.StateChangeRequest.enrollProgramID.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID;
  result = OUTLINED_FUNCTION_3_2(v5, v7);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id BetaEnrollment.StateChangeRequest.init(desiredState:enrollProgramID:)()
{
  OUTLINED_FUNCTION_3_7();
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
  *v6 = 0;
  *(v6 + 8) = 1;
  v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState] = v5;
  OUTLINED_FUNCTION_3_2(v6, v9);
  *v6 = v2;
  *(v6 + 8) = v0 & 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_254304988(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = sub_2543A2858();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 >= 5)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState] = v6;
    v7 = OUTLINED_FUNCTION_2_11();
    v8 = [a1 containsValueForKey_];

    if (v8)
    {
      v9 = OUTLINED_FUNCTION_2_11();
      v10 = [a1 decodeIntegerForKey_];

      OUTLINED_FUNCTION_3_2(v4, v13);
      *v4 = v10;
      *(v4 + 8) = 0;
    }

    v14.receiver = v1;
    v14.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v14, sel_init);
  }

  return v11;
}

Swift::Void __swiftcall BetaEnrollment.StateChangeRequest.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState, v10);
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeInteger:v4 forKey:v5];

  v6 = v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID;
  OUTLINED_FUNCTION_97(v6, &v9);
  if ((*(v6 + 8) & 1) == 0)
  {
    v7 = *v6;
    v8 = OUTLINED_FUNCTION_2_11();
    [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
  }
}

uint64_t BetaEnrollment.StateChangeRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v17);
  if (v18)
  {
    if (swift_dynamicCast())
    {
      v3 = v16[0];
      if (v16[0] == v1)
      {

        return 1;
      }

      v4 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
      OUTLINED_FUNCTION_97(v16[0] + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState, v17);
      LODWORD(v4) = *(v16[0] + v4);
      v5 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
      v6 = OUTLINED_FUNCTION_97(&v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState], v16);
      if (v4 == v1[v5])
      {
        v7 = &v3[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
        OUTLINED_FUNCTION_0_16(v6, v15);
        v8 = *v7;
        v9 = v7[8];

        v10 = &v1[OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID];
        OUTLINED_FUNCTION_0_16(v11, v14);
        v12 = v10[8];
        if (v9)
        {
          if (!v10[8])
          {
            return 0;
          }
        }

        else
        {
          if (v8 != *v10)
          {
            v12 = 1;
          }

          if (v12)
          {
            return 0;
          }
        }

        return 1;
      }
    }
  }

  else
  {
    sub_2542E1050(v17);
  }

  return 0;
}

uint64_t BetaEnrollment.StateChangeRequest.description.getter()
{
  v1 = v0;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2543A3298();
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8420);
  v2 = OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_desiredState, v10);
  v9[0] = *(v1 + v2);
  sub_2543A3358();
  v3 = MEMORY[0x259C093D0](0xD000000000000018, 0x80000002543B8010);
  v4 = v1 + OBJC_IVAR___HPSBetaEnrollmentStateChangeRequest_enrollProgramID;
  OUTLINED_FUNCTION_0_16(v3, v9);
  if (*(v4 + 8))
  {
    v5 = 0xE400000000000000;
    v6 = 1701736270;
  }

  else
  {
    v6 = sub_2543A35A8();
    v5 = v7;
  }

  MEMORY[0x259C093D0](v6, v5);

  return v11;
}

id BetaEnrollment.StateChangeRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BetaEnrollment.StateChangeRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_11()
{

  return sub_2543A2858();
}

uint64_t sub_2543050A4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_25430519C()
{
  OUTLINED_FUNCTION_88();
  swift_allocObject();
  sub_254305224();
  OUTLINED_FUNCTION_86();
}

void sub_254305224()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v62 = v2;
  v63 = v3;
  v60 = v4;
  v61 = v5;
  v58 = v6;
  v59 = v7;
  v56 = v8;
  v57 = v9;
  v10 = *v0;
  v52 = sub_2543A3068();
  OUTLINED_FUNCTION_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9();
  v16 = v15 - v14;
  v17 = sub_2543A3058();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v18 = sub_2543A2168();
  v19 = OUTLINED_FUNCTION_110(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  swift_defaultActor_initialize();
  v55 = *(v10 + 88);
  v53 = *(v10 + 96);
  v64[0] = *(v10 + 80);
  v51 = v64[0];
  v64[1] = v55;
  v64[2] = v53;
  v65 = *(v10 + 104);
  v54 = v65;
  v20 = type metadata accessor for CoordinationTransportServer(255, v64);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ObservationManager(0, v20, WitnessTable, v22);
  *(v1 + 15) = sub_25431D0D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF270, &qword_2543A6850);
  swift_allocObject();
  *(v1 + 16) = sub_2542D4F6C();
  sub_2542D6250(0, &qword_27F5DF2B0, 0x277D85C78);
  sub_2543A2158();
  v64[0] = MEMORY[0x277D84F90];
  sub_254308E3C(&qword_27F5DF2B8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF2C0, &qword_2543A6870);
  sub_2543094F8();
  sub_2543A3188();
  (*(v12 + 104))(v16, *MEMORY[0x277D85260], v52);
  *(v1 + 17) = sub_2543A3078();
  OUTLINED_FUNCTION_10_6();
  v24 = *(v23 + 192);
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_17_4();
  swift_getTupleTypeMetadata2();
  sub_2543A2A88();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v25, v26, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_17_4();
  *&v1[v24] = sub_2543A2748();
  OUTLINED_FUNCTION_10_6();
  v28 = *(v27 + 200);
  sub_2543A2A88();
  OUTLINED_FUNCTION_17_4();
  *&v1[v28] = sub_2543A2748();
  OUTLINED_FUNCTION_10_6();
  v30 = &v1[*(v29 + 208)];
  OUTLINED_FUNCTION_17_4();
  v34 = sub_2542D6250(v31, v32, v33);
  v35 = *(v53 + 8);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_17_4();
  v40 = sub_2543094B4(v36, v37, v38, v39);
  *v30 = sub_25437D744(v51, v34, v54, v35, v40);
  v30[1] = v41;
  v30[2] = v42;
  OUTLINED_FUNCTION_10_6();
  *&v1[*(v43 + 216)] = 0;
  *&v65 = sub_2542D6250(0, &qword_27F5E04B8, 0x277CFD078);
  v64[0] = v56;
  objc_allocWithZone(MEMORY[0x277CFD0D0]);
  sub_2543A2768();
  *(v1 + 14) = sub_254346FD4(v58, v57, v64);
  OUTLINED_FUNCTION_10_6();
  (*(*(v55 - 8) + 32))(&v1[*(v44 + 160)], v59);
  OUTLINED_FUNCTION_10_6();
  v46 = &v1[*(v45 + 168)];
  *v46 = v60;
  *(v46 + 1) = v61;
  OUTLINED_FUNCTION_10_6();
  v48 = &v1[*(v47 + 176)];
  *v48 = v62;
  *(v48 + 1) = v63;
  OUTLINED_FUNCTION_10_6();
  v50 = &v1[*(v49 + 184)];
  *v50 = v58;
  v50[1] = v57;
  OUTLINED_FUNCTION_86();
}

void sub_254305784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39_1();
  a25 = v27;
  a26 = v28;
  v32 = v29;
  OUTLINED_FUNCTION_97(v26 + *(*v26 + 208), &a11);
  sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v30, &qword_27F5DF368, 0x277CFD0D8, v31);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437D87C(v32);

  OUTLINED_FUNCTION_38_0();
}

void sub_254305A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_39_1();
  a25 = v27;
  a26 = v28;
  v41 = v29;
  v30 = *v26;
  v31 = (v26 + *(*v26 + 208));
  OUTLINED_FUNCTION_97(v31, &a12);
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v30[10];
  v36 = sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  v37 = v30[13];
  v38 = *(v30[12] + 8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v39, &qword_27F5DF368, 0x277CFD0D8, v40);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  sub_25437DB58(v41, v32, v33, v34, v35, v36, v37, v38);

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_254305B70()
{
  OUTLINED_FUNCTION_28();
  v1[27] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[28] = v2;
  v4 = *(v3 + 88);
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254305C54()
{
  v1 = v0;
  v36 = v0 + 2;
  v2 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v0[23] = v4;
  v5 = v0[30];
  v6 = v1[29];
  v7 = v3[10];
  v33 = v3[13];
  v34 = v3[12];
  v8 = v3[14];
  v1[18] = v7;
  v9 = v7;
  v1[19] = v6;
  v1[20] = v34;
  v1[21] = v33;
  v1[22] = v8;
  v10 = type metadata accessor for CoordinationTransportServer(0, (v1 + 18));
  v1[32] = v10;
  extended = sub_2542DF684() & 1;
  *(v1 + 288) = extended;
  v11._countAndFlagsBits = 0x6574617669746361;
  v11._object = 0xEA00000000002928;
  Logging.ulog(_:extended:)(v11, extended);
  OUTLINED_FUNCTION_8_5();
  v13 = (v4 + *(v12 + 176));
  v15 = *v13;
  v14 = v13[1];
  WitnessTable = swift_getWitnessTable();
  sub_25436BAB8(v15, v14, v10, WitnessTable);
  type metadata accessor for MessageSessionConsumerObserver(0, v6, v8, v17);
  OUTLINED_FUNCTION_8_5();
  (*(v5 + 16))(v2, v4 + *(v18 + 160), v6);
  OUTLINED_FUNCTION_67();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v6;
  v20[4] = v34;
  v20[5] = v33;
  v20[6] = v8;
  v20[7] = v19;
  OUTLINED_FUNCTION_67();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v9;
  v22[3] = v6;
  v22[4] = v34;
  v22[5] = v33;
  v22[6] = v8;
  v22[7] = v21;
  v23 = sub_254349AF0();
  v1[33] = v23;
  v24 = *(v4 + 112);
  OUTLINED_FUNCTION_8_5();
  v25 = sub_2543A2858();
  [v24 addSessionConsumerWithSubTopic:v25 delegate:v23 dispatchQueue:*(v4 + 136)];

  OUTLINED_FUNCTION_8_5();
  v27 = *(v26 + 216);
  v28 = *(v4 + v27);
  *(v4 + v27) = v23;
  v29 = v23;

  v1[24] = v4;
  v30._object = 0x80000002543B8720;
  v30._countAndFlagsBits = 0xD000000000000020;
  Logging.ulog(_:extended:)(v30, extended);
  v1[2] = v1;
  v1[3] = sub_254306004;
  v31 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF588, &qword_2543A6D40);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2542C9210;
  v1[13] = &block_descriptor_1;
  v1[14] = v31;
  [v24 activateWithCompletion_];

  return MEMORY[0x282200938](v36);
}

uint64_t sub_254306004()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 48);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_254306388;
  }

  else
  {
    v2 = sub_25430611C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_25430611C()
{
  OUTLINED_FUNCTION_28();
  v1 = *(v0 + 288);
  *(v0 + 200) = *(v0 + 216);
  v2._object = 0x80000002543B8750;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  Logging.ulog(_:extended:)(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = sub_2543061E8;
  v4 = *(v0 + 216);

  return sub_25431D598(v4);
}

uint64_t sub_2543061E8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2543062E0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 288);
  *(v0 + 208) = *(v0 + 216);
  v3._object = 0x80000002543B8770;
  v3._countAndFlagsBits = 0xD000000000000027;
  Logging.ulog(_:extended:)(v3, v2);

  OUTLINED_FUNCTION_27();

  return v4();
}

uint64_t sub_254306388(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_254306400(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_254306420);
}

uint64_t sub_254306420()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_2543064B8()
{
  OUTLINED_FUNCTION_28();
  sub_254307B7C();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_25430651C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_25430653C);
}

uint64_t sub_25430653C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2542E7588;

    return sub_25430805C();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_254306610()
{
  *(v1 + 104) = v0;
  OUTLINED_FUNCTION_19_3();
  *(v1 + 112) = v2;
  return MEMORY[0x2822009F8](sub_254306664);
}

void sub_254306664()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[7] = v2;
  v3 = v1[10];
  v5 = v1[12];
  v4 = v1[13];
  v38 = v1[11];
  v39 = v1[14];
  v0[2] = v3;
  v6 = v3;
  v0[3] = v38;
  v0[4] = v5;
  v7 = v5;
  v37 = v5;
  v0[5] = v4;
  v0[6] = v39;
  v8 = v4;
  v40 = v4;
  type metadata accessor for CoordinationTransportServer(0, (v0 + 2));
  v9 = sub_2542DF684();
  v10._object = 0xEC00000029286574;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0x6176697463616564;
  Logging.ulog(_:extended:)(v10, v11);
  OUTLINED_FUNCTION_8_5();
  v13 = *(v12 + 192);
  OUTLINED_FUNCTION_97(v2 + v13, (v0 + 2));
  v0[7] = *(v2 + v13);
  v14 = swift_task_alloc();
  v14[2] = v6;
  v14[3] = v38;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v39;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v15, v16, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  OUTLINED_FUNCTION_8_5();
  v18 = *(v17 + 200);
  OUTLINED_FUNCTION_97(v2 + v18, (v0 + 7));
  v0[10] = *(v2 + v18);
  v19 = swift_task_alloc();
  v19[2] = v6;
  v19[3] = v38;
  v19[4] = v37;
  v19[5] = v40;
  v19[6] = v39;
  sub_2543A2768();
  sub_2543A29E8();

  sub_254343434();
  OUTLINED_FUNCTION_8_5();
  v21 = *(v20 + 216);
  v22 = *(v2 + v21);
  *(v2 + v21) = 0;

  OUTLINED_FUNCTION_8_5();
  v24 = (v2 + *(v23 + 208));
  OUTLINED_FUNCTION_97(v24, (v0 + 10));
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = sub_2542D6250(0, &qword_27F5DF368, 0x277CFD0D8);
  OUTLINED_FUNCTION_0_17();
  sub_2543094B4(v29, &qword_27F5DF368, 0x277CFD0D8, v30);
  sub_2543A2768();
  sub_2543A2768();
  sub_2543A2768();
  v31 = sub_25437DC0C(v25, v26, v27, v6, v28, v40);

  v32 = sub_254372808(v31);
  for (i = 0; v32 != i; ++i)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x259C09DA0](i, v31);
    }

    else
    {
      if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v34 = *(v31 + 8 * i + 32);
    }

    v35 = v34;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v34 stopWithNotice_];
  }

  OUTLINED_FUNCTION_27();

  v36();
}

uint64_t sub_254306A5C(uint64_t a1, uint64_t a2)
{
  sub_2543A1F88();
  sub_2543A2C28();
  swift_getTupleTypeMetadata2();
  return sub_2543A2C18();
}

uint64_t sub_254306AF8(uint64_t a1, uint64_t *a2)
{
  v23 = a1;
  v21 = *a2;
  v3 = v21;
  v20 = *(v21 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_2543A1F78();
  v19 = *(v8 + 16);
  v19(v10, v13, v7);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = *(v3 + 88);
  *(v15 + 32) = *(v21 + 96);
  *(v15 + 48) = *(v3 + 112);
  *(v15 + 56) = a2;
  (*(v8 + 32))(v15 + v14, v10, v7);

  v16 = v23;
  sub_2543A2BE8();
  v19(v10, v13, v7);
  v17 = v22;
  (*(*(v4 - 8) + 16))(v22, v16, v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_254306E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254306E90);
}

uint64_t sub_254306E90()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_254306F34()
{
  OUTLINED_FUNCTION_28();
  sub_254306FA0();

  return MEMORY[0x2822009F8](sub_2543095A8);
}

void sub_254306FA0()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v14 = sub_2543A2C28();
  v1 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v1);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_31_2(v3, v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18_2(v5);

  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v6, v0, MEMORY[0x277CC9628]);
  v7 = sub_2543A35A8();
  MEMORY[0x259C093D0](v7);

  OUTLINED_FUNCTION_29_1();
  v8 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v8);

  v9 = OUTLINED_FUNCTION_28_1();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_26_1();
  v11 = sub_2543A27B8();
  OUTLINED_FUNCTION_40_0(v11);
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

uint64_t sub_2543071BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_3();
  v2 = sub_2543A2BF8();
  OUTLINED_FUNCTION_110(v2);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  nullsub_1();
  sub_2542FEED4(v5);
  return sub_2543A2C38();
}

uint64_t sub_254307274(uint64_t a1, uint64_t *a2)
{
  v23 = a1;
  v21 = *a2;
  v3 = v21;
  v20 = *(v21 + 80);
  v4 = sub_2543A2C28();
  v5 = sub_2543A30C8();
  MEMORY[0x28223BE20](v5 - 8);
  v22 = &v19 - v6;
  v7 = sub_2543A1F88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  sub_2543A1F78();
  v19 = *(v8 + 16);
  v19(v10, v13, v7);
  v14 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = *(v3 + 88);
  *(v15 + 32) = *(v21 + 96);
  *(v15 + 48) = *(v3 + 112);
  *(v15 + 56) = a2;
  (*(v8 + 32))(v15 + v14, v10, v7);

  v16 = v23;
  sub_2543A2BE8();
  v19(v10, v13, v7);
  v17 = v22;
  (*(*(v4 - 8) + 16))(v22, v16, v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  swift_beginAccess();
  sub_254308E3C(&qword_27F5DF518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2543A27B8();
  sub_2543A27E8();
  swift_endAccess();
  return (*(v8 + 8))(v13, v7);
}

void sub_2543075E4()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v19[0] = *v3;
  v2 = v19[0];
  v19[1] = v4;
  v5 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v11);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  v15 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  OUTLINED_FUNCTION_67();
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v5);
  v17 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v2[10];
  *(v18 + 40) = v2[11];
  *(v18 + 48) = *(v19[0] + 96);
  *(v18 + 64) = v2[14];
  *(v18 + 72) = v16;
  (*(v7 + 32))(v18 + v17, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_2542CD000(0, 0, v14);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_25430780C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_254307834);
}

uint64_t sub_254307834()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_5_9();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v2);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_27();

    return v3();
  }
}

uint64_t sub_2543078D8()
{
  OUTLINED_FUNCTION_28();
  sub_254307978();

  return MEMORY[0x2822009F8](sub_254307944);
}

uint64_t sub_254307944()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_27();
  return v1();
}

void sub_254307978()
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_15_4();
  v14 = sub_2543A2C28();
  v1 = sub_2543A30C8();
  OUTLINED_FUNCTION_110(v1);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_31_2(v3, v12);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18_2(v5);

  OUTLINED_FUNCTION_9_5();
  sub_254308E3C(v6, v0, MEMORY[0x277CC9628]);
  v7 = sub_2543A35A8();
  MEMORY[0x259C093D0](v7);

  OUTLINED_FUNCTION_29_1();
  v8 = sub_2542DF684();
  OUTLINED_FUNCTION_23_2(v8);

  v9 = OUTLINED_FUNCTION_28_1();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_12_6(&qword_27F5DF518);
  OUTLINED_FUNCTION_26_1();
  v11 = sub_2543A27B8();
  OUTLINED_FUNCTION_40_0(v11);
  swift_endAccess();
  OUTLINED_FUNCTION_86();
}

void sub_254307B7C()
{
  OUTLINED_FUNCTION_88();
  v1 = v0;
  v3 = v2;
  v4 = *(*v0 + 80);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  v31 = v0;
  v8 = *(v7 + 88);
  v10 = *(v9 + 96);
  v11 = *(v7 + 112);
  v33._countAndFlagsBits = v4;
  v33._object = v8;
  v28 = v8;
  v30 = v10;
  v34 = v10;
  v35 = v11;
  type metadata accessor for CoordinationTransportServer(0, &v33);
  v12 = sub_2542DF684();
  v13._object = 0x80000002543B8630;
  v13._countAndFlagsBits = 0xD000000000000014;
  Logging.ulog(_:extended:)(v13, v12 & 1);
  OUTLINED_FUNCTION_8_5();
  (*(v0 + *(v14 + 168)))(v3);
  OUTLINED_FUNCTION_34_1();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000024, 0x80000002543B8670);
  sub_2543A35C8();
  Logging.ulog(_:extended:)(v33, v12 & 1);

  v32 = v3;
  OUTLINED_FUNCTION_8_5();
  swift_beginAccess();
  v15 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v16 = *(v30 + 8);
  OUTLINED_FUNCTION_0_17();
  v19 = sub_2543094B4(v17, &qword_27F5DF368, 0x277CFD0D8, v18);
  v33._countAndFlagsBits = v4;
  v33._object = v15;
  *&v34 = *(&v30 + 1);
  *(&v34 + 1) = v16;
  v35 = v19;
  v20 = type metadata accessor for MemberConnectionCache(0, &v33);
  sub_25437DCA0(&v32, v6, v20);
  swift_endAccess();
  OUTLINED_FUNCTION_8_5();
  v22 = *(v21 + 192);
  v23 = OUTLINED_FUNCTION_97(v1 + v22, &v33);
  v31 = *(v1 + v22);
  MEMORY[0x28223BE20](v23);
  *&v24 = v4;
  *(&v24 + 1) = v28;
  v25 = v30;
  *(&v28 - 3) = v24;
  *(&v28 - 2) = v25;
  *(&v28 - 2) = v11;
  *(&v28 - 1) = v6;
  sub_2543A1F88();
  sub_2543A2C28();
  OUTLINED_FUNCTION_1_13();
  sub_254308E3C(v26, v27, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_26_1();
  sub_2543A27B8();
  sub_2543A2768();
  OUTLINED_FUNCTION_3_8();
  swift_getWitnessTable();
  sub_2543A29E8();

  (*(v29 + 8))(v6, v4);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_25430805C()
{
  OUTLINED_FUNCTION_28();
  v1[22] = v2;
  v1[23] = v0;
  OUTLINED_FUNCTION_15_4();
  v1[24] = v3;
  v5 = *(v4 + 80);
  v1[25] = v5;
  v6 = sub_2543A30C8();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = *(v5 - 8);
  v1[30] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2543081A0()
{
  v39 = v0[28];
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v0[18] = v0[23];
  v4 = v1[11];
  v5 = v1[12];
  v7 = v1[13];
  v6 = v1[14];
  v0[2] = v2;
  v38 = v4;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = v7;
  v0[6] = v6;
  v36 = v6;
  v8 = type metadata accessor for CoordinationTransportServer(0, (v0 + 2));
  v9 = sub_2542DF684();
  v10._object = 0x80000002543B85E0;
  v11 = v9 & 1;
  v10._countAndFlagsBits = 0xD000000000000012;
  Logging.ulog(_:extended:)(v10, v11);
  v0[19] = v3;
  OUTLINED_FUNCTION_10_6();
  swift_beginAccess();
  v12 = sub_2542D6250(255, &qword_27F5DF368, 0x277CFD0D8);
  v37 = v5;
  v13 = *(v5 + 8);
  OUTLINED_FUNCTION_0_17();
  v16 = sub_2543094B4(v14, &qword_27F5DF368, 0x277CFD0D8, v15);
  v0[7] = v2;
  v0[8] = v12;
  v0[9] = v7;
  v0[10] = v13;
  v0[11] = v16;
  v17 = type metadata accessor for MemberConnectionCache(0, (v0 + 7));
  sub_25437E024((v0 + 19), v17, v39);
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(v39, 1, v2) == 1)
  {
    v19 = v0[22];
    v18 = v0[23];
    (*(v0[27] + 8))(v0[28], v0[26]);
    v0[20] = v18;
    sub_2543A3298();

    v20 = [v19 member];
    v21 = [v20 description];
    v22 = sub_2543A2878();
    v24 = v23;

    MEMORY[0x259C093D0](v22, v24);

    MEMORY[0x259C093D0](0x2074276E6143202ELL, 0xEE0065766F6D6572);
    v25 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, 0xD000000000000021, 0x80000002543B8600, v25 & 1, v8, &off_286647140);

    OUTLINED_FUNCTION_27();

    return v26();
  }

  else
  {
    v28 = v0[30];
    v29 = v0[25];
    v30 = v0[23];
    (*(v0[29] + 32))(v28, v0[28], v29);
    v31 = *(*v30 + 200);
    OUTLINED_FUNCTION_97(v30 + v31, (v0 + 15));
    v0[21] = *(v30 + v31);
    v32 = swift_task_alloc();
    v32[2] = v29;
    v32[3] = v38;
    v32[4] = v37;
    v32[5] = v7;
    v32[6] = v36;
    v32[7] = v28;
    sub_2543A1F88();
    sub_2543A2C28();
    OUTLINED_FUNCTION_1_13();
    sub_254308E3C(v33, v34, MEMORY[0x277CC9600]);
    OUTLINED_FUNCTION_26_1();
    sub_2543A27B8();
    sub_2543A2768();
    OUTLINED_FUNCTION_3_8();
    swift_getWitnessTable();
    sub_2543A29E8();

    v0[31] = v30[15];
    v35 = OUTLINED_FUNCTION_39_0();

    return MEMORY[0x2822009F8](v35);
  }
}

uint64_t sub_2543085F4()
{
  OUTLINED_FUNCTION_28();
  sub_254325DAC();

  return MEMORY[0x2822009F8](sub_25430865C);
}

uint64_t sub_25430865C()
{
  OUTLINED_FUNCTION_28();
  (*(v0[29] + 8))(v0[30], v0[25]);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_2543086D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_9();
  v8 = v7 - v6;
  v9 = sub_2543A2BD8();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_2543A1F88();
  sub_2543A2C28();
  swift_getTupleTypeMetadata2();
  (*(v5 + 16))(v8, a2, a3);
  sub_2543A2C08();
  return (*(v11 + 8))(v14, v9);
}

uint64_t *sub_254308884()
{
  v1 = *v0;

  OUTLINED_FUNCTION_19_3();
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(v2 + 160));
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_19_3();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2543089F4()
{
  sub_254308884();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254308A80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254305B70();
}

uint64_t sub_254308B0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542D32CC;

  return sub_254306610();
}

uint64_t sub_254308BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254305B70();
}

uint64_t sub_254308C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2542DB160;

  return sub_254306610();
}

uint64_t sub_254308CC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254308D00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254308D44(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_254308DC4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_254308E3C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254308ED4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_67();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254308F0C()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_36_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_5(v2);

  return sub_25430780C(v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2543090C4()
{
  v0 = sub_2543A1F88();
  OUTLINED_FUNCTION_110(v0);
  sub_2543075E4();
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254309200()
{
  v0 = OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_110(v0);
  OUTLINED_FUNCTION_36_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_39(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_5(v2);

  return sub_254306E68(v4, v5, v6, v7, v8);
}

uint64_t sub_254309314()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_25430934C()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_4(v1);

  return sub_254306400(v3, v4);
}

uint64_t sub_2543093EC()
{
  OUTLINED_FUNCTION_35_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_39(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14_4(v1);

  return sub_25430651C(v3, v4);
}

uint64_t sub_2543094B4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2542D6250(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2543094F8()
{
  result = qword_27F5DF2C8;
  if (!qword_27F5DF2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF2C0, &qword_2543A6870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5DF2C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_12_6(unint64_t *a1)
{
  v3 = MEMORY[0x277CC9600];

  return sub_254308E3C(a1, v1, v3);
}

uint64_t OUTLINED_FUNCTION_18_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 152) = v1 - a1;
  *(v3 - 88) = v2;
  *(v3 - 128) = 0;
  *(v3 - 120) = 0xE000000000000000;

  return sub_2543A3298();
}

void OUTLINED_FUNCTION_23_2(char a1)
{
  v4 = a1 & 1;
  v5 = v2;
  v6 = v1;

  Logging.ulog(_:extended:)(*&v5, v4);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_2543A1F88();
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = *(v0 + 88);
  *(v2 - 104) = *(v0 + 104);
  return type metadata accessor for CoordinationTransportServer(0, v2 - 128);
}

uint64_t OUTLINED_FUNCTION_31_2@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 144) = &a2 - a1;

  return sub_2543A1F88();
}

void OUTLINED_FUNCTION_34_1()
{
  *(v1 - 160) = v0;
  *(v1 - 120) = 0;
  *(v1 - 112) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1)
{

  return sub_2543A27E8();
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_beginAccess();
}

uint64_t sub_2543098B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461657263 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
    if (v6 || (sub_2543A3608() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7373696D736964 && a2 == 0xE700000000000000;
      if (v7 || (sub_2543A3608() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657A6F6F6E73 && a2 == 0xE600000000000000;
        if (v8 || (sub_2543A3608() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2543A3608();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_254309A50(char a1)
{
  result = 0x657461657263;
  switch(a1)
  {
    case 1:
      result = 0x6574656C6564;
      break;
    case 2:
      result = 0x7373696D736964;
      break;
    case 3:
      result = 0x657A6F6F6E73;
      break;
    case 4:
      result = 0x657461647075;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254309AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543098B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254309B1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254309A48();
  *a1 = result;
  return result;
}

uint64_t sub_254309B44(uint64_t a1)
{
  v2 = sub_25430A27C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309B80(uint64_t a1)
{
  v2 = sub_25430A27C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309BBC(uint64_t a1)
{
  v2 = sub_25430A420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309BF8(uint64_t a1)
{
  v2 = sub_25430A420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309C34(uint64_t a1)
{
  v2 = sub_25430A3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309C70(uint64_t a1)
{
  v2 = sub_25430A3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309CAC(uint64_t a1)
{
  v2 = sub_25430A378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309CE8(uint64_t a1)
{
  v2 = sub_25430A378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309D24(uint64_t a1)
{
  v2 = sub_25430A324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309D60(uint64_t a1)
{
  v2 = sub_25430A324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254309D9C(uint64_t a1)
{
  v2 = sub_25430A2D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254309DD8(uint64_t a1)
{
  v2 = sub_25430A2D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HPAlarmOperation.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04C0, &qword_2543A9C40);
  OUTLINED_FUNCTION_3();
  v61 = v4;
  v62 = v3;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0();
  v60 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04C8, &qword_2543A9C48);
  OUTLINED_FUNCTION_3();
  v58 = v8;
  v59 = v7;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v57 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04D0, &qword_2543A9C50);
  OUTLINED_FUNCTION_3();
  v55 = v12;
  v56 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v54 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04D8, &qword_2543A9C58);
  OUTLINED_FUNCTION_3();
  v52 = v16;
  v53 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_0();
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04E0, &qword_2543A9C60);
  OUTLINED_FUNCTION_3();
  v49 = v20;
  v50 = v19;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E04E8, &qword_2543A9C68);
  OUTLINED_FUNCTION_3();
  v26 = v25;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v30 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25430A27C();
  sub_2543A3778();
  v31 = (v26 + 8);
  switch(v30)
  {
    case 1:
      v64 = 1;
      v44 = sub_25430A3CC();
      v33 = v51;
      OUTLINED_FUNCTION_3_9(&type metadata for HPAlarmOperation.DeleteCodingKeys, &v64, v45, v46, v44);
      v37 = v52;
      v36 = v53;
      goto LABEL_7;
    case 2:
      v65 = 2;
      v38 = sub_25430A378();
      v33 = v54;
      OUTLINED_FUNCTION_3_9(&type metadata for HPAlarmOperation.DismissCodingKeys, &v65, v39, v40, v38);
      v37 = v55;
      v36 = v56;
      goto LABEL_7;
    case 3:
      v66 = 3;
      v41 = sub_25430A324();
      v33 = v57;
      OUTLINED_FUNCTION_3_9(&type metadata for HPAlarmOperation.SnoozeCodingKeys, &v66, v42, v43, v41);
      v37 = v58;
      v36 = v59;
      goto LABEL_7;
    case 4:
      v67 = 4;
      v32 = sub_25430A2D0();
      v33 = v60;
      OUTLINED_FUNCTION_3_9(&type metadata for HPAlarmOperation.UpdateCodingKeys, &v67, v34, v35, v32);
      v37 = v61;
      v36 = v62;
LABEL_7:
      (*(v37 + 8))(v33, v36);
      break;
    default:
      v63 = 0;
      sub_25430A420();
      sub_2543A3508();
      (*(v49 + 8))(v23, v50);
      break;
  }

  return (*v31)(v29, v24);
}

unint64_t sub_25430A27C()
{
  result = qword_27F5E04F0;
  if (!qword_27F5E04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E04F0);
  }

  return result;
}

unint64_t sub_25430A2D0()
{
  result = qword_27F5E04F8;
  if (!qword_27F5E04F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E04F8);
  }

  return result;
}

unint64_t sub_25430A324()
{
  result = qword_27F5E0500;
  if (!qword_27F5E0500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0500);
  }

  return result;
}

unint64_t sub_25430A378()
{
  result = qword_27F5E0508;
  if (!qword_27F5E0508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0508);
  }

  return result;
}

unint64_t sub_25430A3CC()
{
  result = qword_27F5E0510;
  if (!qword_27F5E0510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0510);
  }

  return result;
}

unint64_t sub_25430A420()
{
  result = qword_27F5E0518;
  if (!qword_27F5E0518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0518);
  }

  return result;
}

uint64_t HPAlarmOperation.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

uint64_t HPAlarmOperation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0520, &qword_2543A9C70);
  OUTLINED_FUNCTION_3();
  v77 = v3;
  v78 = v4;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_0();
  v83 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0528, &qword_2543A9C78);
  OUTLINED_FUNCTION_3();
  v75 = v7;
  v76 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  v82 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0530, &qword_2543A9C80);
  OUTLINED_FUNCTION_3();
  v73 = v12;
  v74 = v11;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_0();
  v79 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0538, &qword_2543A9C88);
  OUTLINED_FUNCTION_3();
  v71 = v16;
  v72 = v15;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0540, &qword_2543A9C90);
  OUTLINED_FUNCTION_3();
  v70 = v21;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0548, &unk_2543A9C98);
  OUTLINED_FUNCTION_3();
  v81 = v26;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25430A27C();
  v30 = v84;
  sub_2543A3768();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v68 = v20;
  v69 = v24;
  v84 = v19;
  v31 = v82;
  v32 = v83;
  v33 = v29;
  v34 = sub_2543A34E8();
  sub_2542DF254(v34, 0);
  if (v36 == v37 >> 1)
  {
    v38 = v81;
LABEL_9:
    v50 = sub_2543A32E8();
    swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
    *v52 = &type metadata for HPAlarmOperation;
    sub_2543A3468();
    sub_2543A32D8();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v33, v25);
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    JUMPOUT(0x25430AB6CLL);
  }

  v66 = *(v35 + v36);
  v39 = sub_2542DF244(v36 + 1);
  v41 = v40;
  v43 = v42;
  swift_unknownObjectRelease();
  v67 = v39;
  if (v41 != v43 >> 1)
  {
    v38 = v81;
    v33 = v29;
    goto LABEL_9;
  }

  v44 = v80;
  v45 = v81;
  switch(v66)
  {
    case 1:
      v86 = 1;
      v62 = sub_25430A3CC();
      v31 = v84;
      OUTLINED_FUNCTION_1_14(&type metadata for HPAlarmOperation.DeleteCodingKeys, &v86, v63, v64, v62);
      swift_unknownObjectRelease();
      v58 = v71;
      v57 = v72;
      goto LABEL_15;
    case 2:
      v87 = 2;
      v54 = sub_25430A378();
      v31 = v79;
      OUTLINED_FUNCTION_1_14(&type metadata for HPAlarmOperation.DismissCodingKeys, &v87, v55, v56, v54);
      swift_unknownObjectRelease();
      v58 = v73;
      v57 = v74;
      goto LABEL_15;
    case 3:
      v88[0] = 3;
      v59 = sub_25430A324();
      OUTLINED_FUNCTION_1_14(&type metadata for HPAlarmOperation.SnoozeCodingKeys, v88, v60, v61, v59);
      swift_unknownObjectRelease();
      v57 = v75;
      v58 = v76;
LABEL_15:
      (*(v58 + 8))(v31, v57);
      break;
    case 4:
      v88[1] = 4;
      sub_25430A2D0();
      v39 = v29;
      sub_2543A3458();
      swift_unknownObjectRelease();
      (*(v78 + 8))(v32, v77);
      break;
    default:
      v85 = 0;
      v46 = sub_25430A420();
      v47 = v69;
      OUTLINED_FUNCTION_1_14(&type metadata for HPAlarmOperation.CreateCodingKeys, &v85, v48, v49, v46);
      swift_unknownObjectRelease();
      (*(v70 + 8))(v47, v68);
      break;
  }

  (*(v45 + 8))(v39, v25);
  *v44 = v66;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_25430ABC0()
{
  result = qword_27F5E0550;
  if (!qword_27F5E0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BetaEnrollment.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25430ACB4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x25430AD80);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25430AE0C()
{
  result = qword_27F5E0558;
  if (!qword_27F5E0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0558);
  }

  return result;
}

unint64_t sub_25430AE64()
{
  result = qword_27F5E0560;
  if (!qword_27F5E0560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0560);
  }

  return result;
}

unint64_t sub_25430AEBC()
{
  result = qword_27F5E0568;
  if (!qword_27F5E0568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0568);
  }

  return result;
}

unint64_t sub_25430AF14()
{
  result = qword_27F5E0570;
  if (!qword_27F5E0570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0570);
  }

  return result;
}

unint64_t sub_25430AF6C()
{
  result = qword_27F5E0578;
  if (!qword_27F5E0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0578);
  }

  return result;
}

unint64_t sub_25430AFC4()
{
  result = qword_27F5E0580;
  if (!qword_27F5E0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0580);
  }

  return result;
}

unint64_t sub_25430B01C()
{
  result = qword_27F5E0588;
  if (!qword_27F5E0588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0588);
  }

  return result;
}

unint64_t sub_25430B074()
{
  result = qword_27F5E0590;
  if (!qword_27F5E0590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0590);
  }

  return result;
}

unint64_t sub_25430B0CC()
{
  result = qword_27F5E0598;
  if (!qword_27F5E0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0598);
  }

  return result;
}

unint64_t sub_25430B124()
{
  result = qword_27F5E05A0;
  if (!qword_27F5E05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05A0);
  }

  return result;
}

unint64_t sub_25430B17C()
{
  result = qword_27F5E05A8;
  if (!qword_27F5E05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05A8);
  }

  return result;
}

unint64_t sub_25430B1D4()
{
  result = qword_27F5E05B0;
  if (!qword_27F5E05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05B0);
  }

  return result;
}

unint64_t sub_25430B22C()
{
  result = qword_27F5E05B8;
  if (!qword_27F5E05B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3458();
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2543A3508();
}

uint64_t CarrySettings.DataModelUpdateResponse.success.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success, v3);
  return *(v0 + v1);
}

uint64_t CarrySettings.DataModelUpdateResponse.success.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  result = OUTLINED_FUNCTION_2_5(a1);
  *(v1 + v3) = v2;
  return result;
}

void *CarrySettings.DataModelUpdateResponse.error.getter()
{
  v1 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CarrySettings.DataModelUpdateResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_2_5(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CarrySettings.DataModelUpdateResponse.init(result:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error] = 0;
  if (v4 == 1)
  {
    v4 = 0;
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = 1;
  }

  else
  {
    v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = 0;
  }

  swift_beginAccess();
  *&v1[v5] = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CarrySettings.DataModelUpdateResponse.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CarrySettings.DataModelUpdateResponse.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  *&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error] = 0;
  v5 = sub_2543A2858();
  v6 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success] = v6;
  v7 = sub_2543A2858();
  v8 = [a1 decodeObjectForKey_];

  if (v8)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    sub_2542F464C();
    if (swift_dynamicCast())
    {
      v9 = v13;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_2542E1050(v17);
    v9 = 0;
  }

  swift_beginAccess();
  v10 = *&v1[v4];
  *&v1[v4] = v9;

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v14, sel_init);

  return v11;
}

Swift::Void __swiftcall CarrySettings.DataModelUpdateResponse.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success, v10);
  v4 = *(v1 + v3);
  v5 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error, &v9);
  v7 = *(v1 + v6);
  v8 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

uint64_t CarrySettings.DataModelUpdateResponse.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v18);
  if (!v19)
  {
    sub_2542E1050(v18);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v17[0];
    if (v17[0] == v1)
    {
    }

    else
    {
      v4 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success], v18);
      LODWORD(v4) = v1[v4];
      v5 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
      OUTLINED_FUNCTION_97(v17[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success, v17);
      if (v4 != v3[v5])
      {
LABEL_5:

        return 0;
      }

      v7 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error], v16);
      v8 = *&v1[v7];
      v9 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
      OUTLINED_FUNCTION_97(&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error], v15);
      v10 = *&v3[v9];
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_5;
        }

        sub_2542F464C();
        v11 = v10;
        v12 = v8;
        v13 = sub_2543A30B8();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = v10;

        if (v10)
        {
          v3 = v14;
          goto LABEL_5;
        }
      }
    }

    return 1;
  }

  return 0;
}

id CarrySettings.DataModelUpdateResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.DataModelUpdateResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CarrySettings.DataModelUpdateResponse.description.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_error, v15);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = [v3 localizedDescription];
    v5 = sub_2543A2878();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v12[1] = 0xE000000000000000;
  sub_2543A3298();
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD000000000000019, 0x80000002543B8800);
  v12[0] = v1;
  sub_2543A3358();
  MEMORY[0x259C093D0](0x736563637573203ALL, 0xEA00000000003D73);
  v8 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings23DataModelUpdateResponse_success, v12);
  if (*(v1 + v8))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v8))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x259C093D0](v9, v10);

  MEMORY[0x259C093D0](0x3D727265202CLL, 0xE600000000000000);
  MEMORY[0x259C093D0](v5, v7);

  MEMORY[0x259C093D0](62, 0xE100000000000000);
  return v13;
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O23DataModelUpdateResponseC6ResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25430BD74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_25430BDD0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_25430BE30(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_25430BF14;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_25430BF14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE *storeEnumTagSinglePayload for MessageSerializingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x25430C0D4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25430C120()
{
  result = qword_27F5E05D0;
  if (!qword_27F5E05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05D0);
  }

  return result;
}

uint64_t sub_25430C174(uint64_t a1)
{
  v2 = sub_25430C1EC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_25430C1B0(uint64_t a1)
{
  v2 = sub_25430C1EC();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_25430C1EC()
{
  result = qword_27F5E05D8;
  if (!qword_27F5E05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05D8);
  }

  return result;
}

uint64_t CarrySettings.InstallProfileRequest.audienceIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier);
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier, v4);
  v2 = *v1;
  sub_2543A2768();
  return v2;
}

uint64_t CarrySettings.InstallProfileRequest.profileData.getter()
{
  v1 = v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData;
  OUTLINED_FUNCTION_97(v0 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData, v4);
  v2 = *v1;
  sub_2542D61B4(*v1, *(v1 + 8));
  return v2;
}

uint64_t CarrySettings.InstallProfileRequest.profileVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
  result = OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant, v5);
  *a1 = *(v1 + v3);
  return result;
}

id CarrySettings.InstallProfileRequest.init(profileData:variant:audienceIdentifier:)()
{
  OUTLINED_FUNCTION_3_4();
  ObjectType = swift_getObjectType();
  v7 = *v3;
  v8 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
  *v8 = 0;
  v8[1] = 0;
  OUTLINED_FUNCTION_3_10(ObjectType, v9, v10);
  *v8 = v2;
  v8[1] = v0;
  v11 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
  *v11 = v5;
  v11[1] = v4;
  v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant] = v7;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_25430C424(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
  sub_25430CAE0();
  *v5 = 0;
  v5[1] = 0;
  v6 = sub_2543A3088();
  v21 = 0;
  v22 = 0;
  sub_2543A2868();

  OUTLINED_FUNCTION_3_10(v7, v8, v9);
  *v5 = 0;
  v5[1] = 0;

  v10 = sub_25430DA38(25712, 0xE200000000000000);
  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  v13 = 0xC000000000000000;
  if (v11 >> 60 != 15)
  {
    v13 = v11;
  }

  v14 = &v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
  *v14 = v12;
  v14[1] = v13;
  v15 = sub_2543A2858();
  v16 = [a1 decodeIntegerForKey_];

  if (v16 >= 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v2[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant] = v17;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);

  return v18;
}

Swift::Void __swiftcall CarrySettings.InstallProfileRequest.encode(with:)(NSCoder with)
{
  v3 = v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier, v17);
  if (*(v3 + 8))
  {
    sub_2543A2768();
    OUTLINED_FUNCTION_2_12();
    v4 = sub_2543A2858();

    v5 = sub_2543A2858();
    [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  }

  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData, v16);
  v6 = OUTLINED_FUNCTION_2_12();
  sub_2542D61B4(v6, v7);
  OUTLINED_FUNCTION_2_12();
  v8 = sub_2543A1EC8();
  v9 = OUTLINED_FUNCTION_2_12();
  sub_2542D7D40(v9, v10);
  v11 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v11];

  v12 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
  OUTLINED_FUNCTION_97(v1 + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant, v15);
  v13 = *(v1 + v12);
  v14 = sub_2543A2858();
  [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
}

BOOL CarrySettings.InstallProfileRequest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_2542E576C(a1, v26);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v3 = v25[0];
      if (v25[0] == v1)
      {

        return 1;
      }

      v4 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier];
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier], v26);
      v5 = *v4;
      v6 = *(v4 + 1);
      v7 = v25[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier;
      OUTLINED_FUNCTION_97(v25[0] + OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_audienceIdentifier, v25);
      v8 = *(v7 + 1);
      if (v6)
      {
        if (!v8)
        {
          goto LABEL_17;
        }

        v9 = v5 == *v7 && v6 == v8;
        if (!v9 && (sub_2543A3608() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v8)
      {
LABEL_17:

        return 0;
      }

      v11 = &v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
      OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData], v24);
      v13 = *v11;
      v12 = v11[1];
      v14 = &v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData];
      OUTLINED_FUNCTION_97(&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileData], v23);
      v16 = *v14;
      v15 = v14[1];
      sub_2542D61B4(v13, v12);
      sub_2542D61B4(v16, v15);
      v17 = MEMORY[0x259C089B0](v13, v12, v16, v15);
      sub_2542D7D40(v16, v15);
      sub_2542D7D40(v13, v12);
      if (v17)
      {
        v18 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
        OUTLINED_FUNCTION_97(&v1[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant], v22);
        v19 = v1[v18];
        v20 = OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant;
        OUTLINED_FUNCTION_97(&v3[OBJC_IVAR____TtCO15HomePodSettings13CarrySettings21InstallProfileRequest_profileVariant], v21);
        LODWORD(v20) = v3[v20];

        return v19 == v20;
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_2542E1050(v26);
  }

  return 0;
}