uint64_t sub_237B9082C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D870, &unk_237C14EB0);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90908(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

uint64_t sub_237B90994(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_26_24();

  return swift_deallocClassInstance();
}

void sub_237B90A1C(uint64_t a1)
{
  sub_237B90AE0();
  if (v1 <= 0x3F)
  {
    sub_237A6191C();
    if (v2 <= 0x3F)
    {
      sub_237B6215C(319);
      if (v3 <= 0x3F)
      {
        sub_237B90BDC();
        if (v4 <= 0x3F)
        {
          sub_237B62370();
          if (v5 <= 0x3F)
          {
            sub_237B90C44(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_237B90AE0()
{
  if (!qword_27DE9D858)
  {
    MEMORY[0x28223BE20](0);
    sub_237C05ADC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27DE9D858);
    }
  }
}

void sub_237B90BDC()
{
  if (!qword_27DE9D860)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D860);
    }
  }
}

void sub_237B90C44(uint64_t a1)
{
  if (!qword_27DE9D868)
  {
    sub_237C05DBC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DE9D868);
    }
  }
}

void OUTLINED_FUNCTION_16_30()
{
  *(v2 - 320) = v0 + 64;
  *(v2 - 168) = v1 + 16;
  *(v2 - 160) = v1 + 8;
}

uint64_t OUTLINED_FUNCTION_20_32()
{
  v3 = *(v1 - 192);

  return sub_237B5DD44(v0, 0x7461506567616D69, 0xE900000000000068, v3);
}

void OUTLINED_FUNCTION_21_34()
{
  *(v2 - 280) = v0;
  v3 = *(v1 + 72);
  *(v2 - 152) = *(v1 + 16);
  *(v2 - 144) = v3;
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return sub_237B845E8(v0 - 296, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
}

void OUTLINED_FUNCTION_28_21()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = *(v4 - 136);
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_46_16()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_53_12(uint64_t result)
{
  v2 = *(v1 - 320);
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_6(uint64_t result)
{
  *(v2 - 304) = result;
  *(v2 - 312) = v1;
  return result;
}

void OUTLINED_FUNCTION_72_8()
{

  sub_237AC8A74();
}

uint64_t OUTLINED_FUNCTION_73_5()
{

  return swift_arrayDestroy();
}

uint64_t sub_237B91000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      if (*(a1 + 48) == *(a2 + 48))
      {
        if (*(a1 + 56) == *(a2 + 56))
        {
          if (*(a1 + 64) == *(a2 + 64))
          {
            v6 = *(a1 + 72);
            v7 = 1702195828;
            v8 = *(a2 + 72);
            if (*(a1 + 72))
            {
              v9 = 1702195828;
            }

            else
            {
              v9 = 0x65736C6166;
            }

            if (*(a1 + 72))
            {
              v10 = 0xE400000000000000;
            }

            else
            {
              v10 = 0xE500000000000000;
            }

            if (*(a2 + 72))
            {
              v11 = 0xE400000000000000;
            }

            else
            {
              v7 = 0x65736C6166;
              v11 = 0xE500000000000000;
            }

            if (v6 == v8)
            {
              v12 = 0;
            }

            else
            {
              v12 = 0x2065727574616546;
            }

            if (v6 == v8)
            {
              v13 = 0;
            }

            else
            {
              v13 = 0xEF676E696C616373;
            }

            if (v6 == v8)
            {
              v3 = 0;
            }

            else
            {
              v3 = v9;
            }

            if (v6 == v8)
            {
              v4 = 0;
            }

            else
            {
              v4 = v10;
            }

            if (v6 == v8)
            {
              result = 0;
            }

            else
            {
              result = v7;
            }

            if (v6 == v8)
            {
              v15 = 0;
            }

            else
            {
              v15 = v11;
            }
          }

          else
          {
            v13 = 0x8000000237C1B920;
            sub_237C08A6C();
            result = OUTLINED_FUNCTION_0_54();
            v12 = 0xD000000000000015;
          }
        }

        else
        {
          sub_237C08A6C();
          result = OUTLINED_FUNCTION_0_54();
          v13 = 0xE900000000000065;
          v12 = 0x7A69732070657453;
        }
      }

      else
      {
        v13 = 0xEA00000000007974;
        sub_237C08A6C();
        result = OUTLINED_FUNCTION_0_54();
        v12 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v13 = 0xEA00000000007974;
      v12 = 0x6C616E657020314CLL;
      sub_237C08A6C();
      result = OUTLINED_FUNCTION_0_54();
    }
  }

  else
  {
    v3 = sub_237C0924C();
    v4 = v16;
    result = sub_237C0924C();
    v13 = 0xEF736E6F69746172;
    v12 = 0x657469202E78614DLL;
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v3;
  a3[3] = v4;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

uint64_t sub_237B9122C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B912B8()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B9133C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B913C0()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_3_80();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_79(v1);

  return v4(v3);
}

uint64_t sub_237B91444()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_65(v0);
  *v1 = v2;
  v1[1] = sub_237A6ECB4;

  return j__OUTLINED_FUNCTION_2_76();
}

uint64_t OUTLINED_FUNCTION_3_80()
{

  return swift_task_alloc();
}

uint64_t sub_237B91530()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_237B915D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v12 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB350(v12);
  sub_2379FC064(v10);
  if (v11)
  {

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_59_11(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_17_27(v23);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v25);
  }
}

uint64_t sub_237B916E8()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v4 + 128) = v0;

  if (!v0)
  {
    *(v4 + 136) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237B917EC()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_237B9188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v12 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB36C(v12);
  sub_2379FC064(v10);
  if (v11)
  {

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_59_11(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_17_27(v23);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v25);
  }
}

uint64_t sub_237B919A4()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_237B91A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v12 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB398(v12);
  sub_2379FC064(v10);
  if (v11)
  {

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_59_11(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_17_27(v23);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v25);
  }
}

uint64_t sub_237B91B5C()
{
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_85_5();
  v0[12] = v1;
  OUTLINED_FUNCTION_1(v1);
  v0[13] = v2;
  v0[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_237B91D14()
{
  v1[11] = v0;
  v2 = sub_237C07F1C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B91DD4);
}

uint64_t sub_237B91DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_70_7();
  OUTLINED_FUNCTION_27();
  v11 = OUTLINED_FUNCTION_72_9();
  sub_237C086EC();
  OUTLINED_FUNCTION_45_16();

  OUTLINED_FUNCTION_62_9();
  v12 = OUTLINED_FUNCTION_5_66("A model trained using CreateML for use with CoreML.");
  sub_2379FB6A4(v12);
  sub_2379FC064(v10);
  if (v11)
  {

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_40_17();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }

  else
  {
    sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_59_11(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_17_27(v23);
    OUTLINED_FUNCTION_40_17();

    return sub_237A4288C(v25);
  }
}

uint64_t sub_237B91EEC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v4 + 128) = v0;

  if (!v0)
  {
    *(v4 + 136) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237B91FF0()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];
  v2 = v0[17];

  return v1(v2);
}

uint64_t sub_237B92070()
{
  OUTLINED_FUNCTION_9();
  (*(v0[13] + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237B920E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v7 = sub_237C0602C();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_237C05DBC();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[18] = v9;
  sub_237AAA8FC(a2, v9);
  v5[19] = 0;

  return MEMORY[0x2822009F8](sub_237B92254);
}

uint64_t sub_237B92254()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_237C05DFC();
  sub_237B635F0();
  v5 = v4;
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[15];
    v8 = v0[13];
    sub_237C05DFC();
    sub_237B635F0();
    v10 = v9;
    v6(v7, v8);
    if (v10)
    {
      v11 = v0[17];
      v32 = v0[16];
      v34 = v0[18];
      v12 = v0[8];
      v30 = v0[9];

      v0[3] = v5;
      v0[4] = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      sub_237A48144();
      sub_237B979F8();
      OUTLINED_FUNCTION_61_9();
      sub_237C06EDC();
      v13 = v0[2];
      v0[6] = v5;
      v0[7] = v10;
      OUTLINED_FUNCTION_61_9();
      sub_237C06EEC();
      OUTLINED_FUNCTION_0_82();
      sub_237B979A4();
      v14 = *(v11 + 8);
      v14(v30, v32);
      v14(v34, v32);

      v15 = v0[5];
      *v12 = v13;
      *(v12 + 8) = v15;
      *(v12 + 16) = 0;

      OUTLINED_FUNCTION_8();
      goto LABEL_7;
    }

    v24 = v0[17];
    v25 = v0[15];
    v37 = v0[16];
    v31 = v0[13];
    v33 = v0[9];

    OUTLINED_FUNCTION_78_5();
    OUTLINED_FUNCTION_68_4();
    sub_237C05DFC();

    sub_237C05FFC();
    v6(v25, v31);
    v26 = sub_237C094DC();
    MEMORY[0x2383DC360](v26);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_43_12(v27, v28);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    v23 = *(v24 + 8);
    v23(v33, v37);
  }

  else
  {
    v17 = v0[17];
    v18 = v0[15];
    v19 = v0[13];
    v35 = v0[9];
    v36 = v0[16];
    OUTLINED_FUNCTION_78_5();
    OUTLINED_FUNCTION_68_4();
    sub_237C05DFC();

    sub_237C05FFC();
    v6(v18, v19);
    v20 = sub_237C094DC();
    MEMORY[0x2383DC360](v20);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v21 = swift_allocError();
    OUTLINED_FUNCTION_43_12(v21, v22);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    v23 = *(v17 + 8);
    v23(v35, v36);
  }

  v23(v0[18], v0[16]);

  OUTLINED_FUNCTION_8();
LABEL_7:

  return v16();
}

uint64_t sub_237B92648()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[17];
  OUTLINED_FUNCTION_0_82();
  sub_237B979A4();
  (*(v1 + 8))(v0[9], v0[16]);

  OUTLINED_FUNCTION_8();

  return v2();
}

void MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v161 = v0;
  v2 = v1;
  v162 = v3;
  v165 = v4;
  v159 = v5;
  v171 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLLinearRegressor(0);
  OUTLINED_FUNCTION_0();
  v144 = v10;
  MEMORY[0x28223BE20](v11);
  v146 = v12;
  OUTLINED_FUNCTION_77_0(&v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v166 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v15);
  v143 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v18);
  v19 = _s5ModelVMa_2(0);
  v20 = OUTLINED_FUNCTION_1(v19);
  v148 = v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v22);
  v149 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v25);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v155 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v138 - v29;
  v153 = _s9RegressorVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v33 - v32);
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  v39 = &v138 - v38;
  v40 = v8 + *(v9 + 36);
  *v40 = 0;
  *(v40 + 8) = 0;
  v41 = v40;
  *(v40 + 16) = 0;
  v151 = v9;
  v42 = *(v9 + 40);
  v152 = v8;
  v43 = v8 + v42;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v44 = swift_allocError();
  *v45 = 0xD0000000000000C0;
  v45[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v44, v45);
  *v43 = v46;
  *(v43 + 8) = 0;
  v160 = v43;
  *(v43 + 16) = 1;
  v164 = v2;
  sub_2379FC864(v2, &v167, &qword_27DE9A998, &unk_237C0C100);
  if (v168)
  {
    v47 = *(v35 + 48);
    sub_2379DAD24(&v167, &v169);
    swift_dynamicCast();
    v48 = v161;
    sub_237B655DC(v39, &v39[v47], v171);
    v49 = v41;
    if (v48)
    {

      OUTLINED_FUNCTION_72_4();
      v50 = OUTLINED_FUNCTION_38_1();
      sub_237A68B6C(v50);
      v51 = OUTLINED_FUNCTION_25_29();
      v52(v51);
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
    }

    else
    {
      v140 = v41;
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
      v53 = v159;
      v54 = v165;
      v55 = v39;
      sub_237B19700(v39, v159, v165, v162);
      v161 = 0;
      v57 = v56;
      v139 = v35;

      v58 = v164;
      sub_237B0B0C8(v164, &v169);
      v59 = v157;
      *v157 = v53;
      v59[1] = v54;
      v59[2] = v57;
      sub_237B0B0C8(&v169, (v59 + 3));
      sub_237B0B0C8(&v169, &v167);
      sub_237A20BBC();

      sub_237C06C3C();
      v60 = v156;
      v162 = v57;
      sub_237C06BEC();
      sub_237C06C1C();
      sub_237C06C2C();
      sub_237C06C0C();
      sub_237C06BFC();
      sub_237A68B6C(&v167);
      v61 = v155;
      (v155)[2](v154, v30, v60);
      sub_237C06E5C();
      (v61[1])(v30, v60);
      sub_237A68B6C(&v169);
      v62 = v55 + v47;
      v63 = v158;
      v64 = v161;
      sub_237B730D8(v55, v62, 0, 0, v158);
      if (v64)
      {

        OUTLINED_FUNCTION_72_4();
        sub_237A68B6C(v58);
        v65 = OUTLINED_FUNCTION_25_29();
        v66(v65);
        OUTLINED_FUNCTION_3_81();
        sub_237B979A4();
        sub_2379D9054(v55, &qword_27DE9ADC0, &unk_237C0BF40);
        v49 = v140;
      }

      else
      {
        v156 = v55;
        v67 = v58;
        v68 = sub_237A37A64();
        v49 = v140;
        if ((v68 & 1) == 0)
        {
          v69 = sub_237C05D3C();
          v54 = v165;
          sub_237A37AEC(6, 0xD000000000000015, 0x8000000237C17C00, v69);
        }

        v70 = v151;
        v71 = v152;
        v72 = (v152 + v151[6]);
        *v72 = v159;
        v72[1] = v54;
        v159 = v70[8];
        sub_237B0B0C8(v67, v71 + v159);
        *(v71 + v70[7]) = v162;
        OUTLINED_FUNCTION_4_68();
        v73 = v150;
        sub_237B94874(v63, v150, v74);
        OUTLINED_FUNCTION_74_8();
        swift_allocObject();
        OUTLINED_FUNCTION_27_19();
        sub_237B97948(v73, v75, v76);
        sub_2379DD56C();
        v155 = v77;

        *(v71 + v70[5]) = v155;
        OUTLINED_FUNCTION_4_68();
        v78 = OUTLINED_FUNCTION_46_8();
        sub_237B94874(v78, v71, v79);
        v80 = v166;
        v81 = *(v166 + 2);
        v82 = v145;
        v83 = v163;
        v151 = (v166 + 16);
        v154 = v81;
        v81(v145, v156, v163);
        OUTLINED_FUNCTION_14_35();
        sub_237B94874(v71, v147, v84);
        v85 = *(v80 + 80);
        v86 = (v85 + 16) & ~v85;
        v87 = *(v144 + 80);
        v88 = (v143 + v87 + v86) & ~v87;
        v153 = v85 | v87;
        v89 = swift_allocObject();
        v90 = v80;
        v91 = v83;
        v92 = *(v90 + 4);
        v93 = v82;
        v94 = v90 + 32;
        v92(v89 + v86, v93, v91);
        OUTLINED_FUNCTION_12_46();
        sub_237B97948(v147, v89 + v88, v95);
        sub_2379DDFE8(&unk_237C14F50, v89, v96, v97, v98, v99, v100, v101, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
        v161 = 0;
        v149 = v92;
        v150 = v86;

        v102 = v169;
        LOBYTE(v71) = v170;
        sub_2379F8918(*v49, *(v49 + 8), *(v49 + 16));
        *v49 = v102;
        v103 = v163;
        *(v49 + 16) = v71;
        v104 = v156;
        v105 = v141;
        sub_2379FC864(v156, v141, &qword_27DE9ADC0, &unk_237C0BF40);
        v106 = *(v139 + 48);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105 + v106, 1, v103);
        v108 = (v166 + 8);
        if (EnumTagSinglePayload == 1)
        {
          v109 = OUTLINED_FUNCTION_38_1();
          sub_237A68B6C(v109);
          v110 = v103;
          v111 = *v108;
          (*v108)(v171, v110);
          OUTLINED_FUNCTION_0_82();
          OUTLINED_FUNCTION_46_8();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          OUTLINED_FUNCTION_71_9();
          sub_2379D9054(v104, &qword_27DE9ADC0, &unk_237C0BF40);
          sub_2379D9054(v105 + v106, &qword_27DE9A9A0, &qword_237C0BF60);
          v111(v105, v110);
          goto LABEL_7;
        }

        v112 = v105 + v106;
        v113 = v142;
        v114 = v149;
        v149(v142, v112, v103);
        v166 = *v108;
        v166(v105, v103);
        v148 = v94;
        v115 = v88;
        v116 = v145;
        v154(v145, v113, v103);
        OUTLINED_FUNCTION_14_35();
        v117 = v152;
        v118 = v147;
        sub_237B94874(v152, v147, v119);
        v120 = swift_allocObject();
        v114(v120 + v150, v116, v103);
        OUTLINED_FUNCTION_12_46();
        sub_237B97948(v118, v120 + v115, v121);
        v122 = v161;
        sub_2379DDFE8(&unk_237C14F60, v120, v123, v124, v125, v126, v127, v128, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
        if (!v122)
        {

          v132 = OUTLINED_FUNCTION_38_1();
          sub_237A68B6C(v132);
          v133 = v166;
          v166(v171, v103);
          v133(v142, v103);
          OUTLINED_FUNCTION_0_82();
          OUTLINED_FUNCTION_46_8();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          v134 = OUTLINED_FUNCTION_71_9();
          OUTLINED_FUNCTION_82_7(v134, &qword_27DE9ADC0, &unk_237C0BF40);
          v135 = v169;
          v136 = v170;
          v137 = v160;
          sub_2379F8918(*v160, *(v160 + 8), *(v160 + 16));
          *v137 = v135;
          *(v137 + 16) = v136;
          goto LABEL_7;
        }

        v129 = OUTLINED_FUNCTION_38_1();
        sub_237A68B6C(v129);
        v130 = v166;
        v166(v171, v103);
        v130(v142, v103);
        OUTLINED_FUNCTION_0_82();
        OUTLINED_FUNCTION_46_8();
        sub_237B979A4();
        OUTLINED_FUNCTION_3_81();
        v131 = OUTLINED_FUNCTION_71_9();
        OUTLINED_FUNCTION_82_7(v131, &qword_27DE9ADC0, &unk_237C0BF40);
        OUTLINED_FUNCTION_0_82();
        sub_237B979A4();
        OUTLINED_FUNCTION_72_4();

        sub_237A68B6C(v117 + v159);
      }
    }

    sub_2379F8918(*v49, *(v49 + 8), *(v49 + 16));
    sub_2379F8918(*v160, *(v160 + 8), *(v160 + 16));
LABEL_7:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for MLLinearRegressor(uint64_t a1)
{
  result = qword_27DE9D8A8;
  if (!qword_27DE9D8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MLLinearRegressor.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLLinearRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 36));

  return sub_2379F7AF4(v2, v3, v4);
}

id MLLinearRegressor.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLLinearRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 40));

  return sub_2379F7AF4(v2, v3, v4);
}

uint64_t MLLinearRegressor.targetColumn.getter()
{
  type metadata accessor for MLLinearRegressor(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLLinearRegressor.featureColumns.getter()
{
  type metadata accessor for MLLinearRegressor(0);
}

id MLLinearRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLinearRegressor(0) + 20));

  return v1;
}

void MLLinearRegressor.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLLinearRegressor(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLLinearRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLLinearRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLLinearRegressor(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLLinearRegressor.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLLinearRegressor(v0);
  return nullsub_1;
}

uint64_t MLLinearRegressor.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLLinearRegressor(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLLinearRegressor.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLLinearRegressor(v0);
  return nullsub_1;
}

uint64_t MLLinearRegressor.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLLinearRegressor(v2) + 32);

  return sub_237B0B0C8(v3, v0);
}

uint64_t sub_237B93844()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9D878);
  v1 = __swift_project_value_buffer(v0, qword_27DE9D878);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLLinearRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A6D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9D878);
  OUTLINED_FUNCTION_1_80();
  return sub_237B94874(v3, a1, v4);
}

uint64_t sub_237B93938(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B939E0;

  return sub_237B91D14();
}

uint64_t sub_237B939E0()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_237B93B14()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = _s5ModelVMa_2(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237B93938(v5);
}

uint64_t sub_237B93BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  _s5ModelVMa_2(0);
  v3[5] = swift_task_alloc();
  v4 = sub_237C05DBC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B93CC0);
}

uint64_t sub_237B93CC0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  v2 = (v1 + *(type metadata accessor for MLLinearRegressor(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  OUTLINED_FUNCTION_4_68();
  v5 = OUTLINED_FUNCTION_37_0();
  sub_237B94874(v5, v6, v7);

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_237B93DC8;
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[2];

  return sub_237B920E4(v11, v9, v3, v4, v10);
}

uint64_t sub_237B93DC8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237B93EF4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_237B93F5C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_58_11();
  v0 = sub_237C05DBC();
  OUTLINED_FUNCTION_1(v0);
  v1 = type metadata accessor for MLLinearRegressor(0);
  OUTLINED_FUNCTION_20(v1);
  OUTLINED_FUNCTION_55_10();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_23_32(v3);

  return sub_237B93BD0(v5, v6, v7);
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  LOBYTE(v10) = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  sub_237A70ED4(&v13, v11);
  sub_237B0B0C8(a5, &v13);
  MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237A68B6C(a5);
}

void MLLinearRegressor.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v93 = v21;
  v24 = v23;
  v25 = OUTLINED_FUNCTION_146();
  v26 = _s5ModelVMa_2(v25);
  v27 = OUTLINED_FUNCTION_1(v26);
  v87 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_77_0(v29);
  v88 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE08, &unk_237C12E60);
  OUTLINED_FUNCTION_0();
  v92 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  v38 = &v83 - v37;
  v95 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v40);
  v90 = _s9RegressorVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v42 = OUTLINED_FUNCTION_47_3();
  v43 = type metadata accessor for MLLinearRegressor(v42);
  v44 = v20 + *(v43 + 36);
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v85 = v43;
  v45 = *(v43 + 40);
  v86 = v20;
  v46 = v20 + v45;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v47 = swift_allocError();
  *v48 = 0xD0000000000000C0;
  v48[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v47, v48);
  *v46 = v49;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  switch(*(v24 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v50 = sub_237C0929C();

      if (v50)
      {
LABEL_4:
        OUTLINED_FUNCTION_66_9();
        v52 = *(v51 - 256);
        swift_storeEnumTagMultiPayload();
        v97 = 0u;
        v98 = 0u;
        v99 = 10;
        v84 = xmmword_237C0CFC0;
        v100 = xmmword_237C0CFC0;
        v83 = xmmword_237C0CFD0;
        v101 = xmmword_237C0CFD0;
        v102 = 1;
        v53 = OUTLINED_FUNCTION_28_22();
        v55 = *(v54 - 256);
        sub_237B94874(v53, v55, v56);
        v96[3] = v52;
        __swift_allocate_boxed_opaque_existential_0(v96);
        OUTLINED_FUNCTION_32_19();
        sub_237B97948(v55, v57, v58);
        OUTLINED_FUNCTION_2_77();
        sub_237B979A4();
        sub_2379DAE54(v96, &v97);
        *v22 = 0;
        v22[1] = 0xE000000000000000;
        v22[2] = MEMORY[0x277D84F90];
        sub_237B0B0C8(&v97, (v22 + 3));
        sub_237B0B0C8(&v97, v96);
        sub_237A20BBC();
        sub_237C06C3C();
        sub_237C06BEC();
        sub_237C06C1C();
        sub_237C06C2C();
        sub_237C06C0C();
        sub_237C06BFC();
        sub_237A68B6C(v96);
        v59 = v92;
        (*(v92 + 16))(v91, v38, v33);
        sub_237C06E5C();
        (*(v59 + 8))(v38, v33);
        sub_237A68B6C(&v97);
        sub_237B948D0();
        v60 = v94;
        v61 = v93;
        sub_237C0743C();
        if (!v61)
        {
          OUTLINED_FUNCTION_4_68();
          v64 = v89;
          sub_237B94874(v60, v89, v65);
          OUTLINED_FUNCTION_74_8();
          swift_allocObject();
          OUTLINED_FUNCTION_27_19();
          sub_237B97948(v64, v66, v67);
          sub_2379DD56C();
          v69 = v68;

          v70 = v85;
          v71 = v86;
          *(v86 + v85[5]) = v69;
          OUTLINED_FUNCTION_4_68();
          sub_237B94874(v60, v71, v72);
          OUTLINED_FUNCTION_66_9();
          v74 = *(v73 - 256);
          swift_storeEnumTagMultiPayload();
          v75 = v71 + v70[8];
          *v75 = 0u;
          *(v75 + 16) = 0u;
          *(v75 + 32) = 10;
          *(v75 + 40) = v84;
          *(v75 + 56) = v83;
          *(v75 + 72) = 1;
          v76 = OUTLINED_FUNCTION_28_22();
          v78 = *(v77 - 256);
          sub_237B94874(v76, v78, v79);
          *(&v98 + 1) = v74;
          __swift_allocate_boxed_opaque_existential_0(&v97);
          OUTLINED_FUNCTION_32_19();
          sub_237B97948(v78, v80, v81);
          OUTLINED_FUNCTION_2_77();
          sub_237B979A4();
          sub_2379DAE54(&v97, v75);
          v82 = (v71 + v70[6]);
          *v82 = 0;
          v82[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_7_51();
          sub_237B979A4();
          OUTLINED_FUNCTION_0_82();
          sub_237B979A4();
          OUTLINED_FUNCTION_3_81();
          sub_237B979A4();
          *(v71 + v70[7]) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_7_51();
        sub_237B979A4();
        OUTLINED_FUNCTION_3_81();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v62 = swift_allocError();
        *v63 = 0xD00000000000003BLL;
        v63[1] = 0x8000000237C1DCA0;
        OUTLINED_FUNCTION_23_3(v62, v63);
        swift_willThrow();
        OUTLINED_FUNCTION_7_51();
      }

      sub_237B979A4();
      sub_2379F8918(*v44, *(v44 + 8), *(v44 + 16));
      sub_2379F8918(*v46, *(v46 + 8), *(v46 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237B94874(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

unint64_t sub_237B948D0()
{
  result = qword_27DE9D890;
  if (!qword_27DE9D890)
  {
    _s9RegressorVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D890);
  }

  return result;
}

uint64_t sub_237B94928(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237B50114;

  return sub_237B91D14();
}

uint64_t objectdestroyTm_9()
{
  _s5ModelVMa_2(0);
  OUTLINED_FUNCTION_65_7();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  if (*(v3 + 16))
  {
  }

  v4 = *(v0 + 24);
  sub_237C0707C();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v3 + v4);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_237B94AB8()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = _s5ModelVMa_2(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237B94928(v5);
}

void static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t *a1)
{
  static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
    OUTLINED_FUNCTION_91(v2);
    sub_237BECE6C();
  }
}

void static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v57 = v0;
  v53 = v1;
  v54 = v2;
  v4 = v3;
  v51 = v5;
  v52 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v12);
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v55 = v16;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v17);
  v56 = &v45 - v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  v63 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = (v26 - v25);
  v28 = *(v8 + 8);
  *&v58 = *v8;
  BYTE8(v58) = v28;
  sub_2379DBCF4(v58, v28);
  sub_237A70ED4(&v58, v27);
  v49 = v4;
  sub_2379FC864(v4, &v61, &qword_27DE9A998, &unk_237C0C100);
  if (v62)
  {
    v29 = *(v14 + 48);
    sub_2379DAD24(&v61, &v58);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    v30 = v57;
    sub_237B655DC(v21, &v21[v29], v27);
    if (v30)
    {
      (*(v23 + 8))(v27, v63);
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
    }

    else
    {
      v47 = v23;
      OUTLINED_FUNCTION_2_77();
      sub_237B979A4();
      v31 = v56;
      sub_2379FC864(v21, v56, &qword_27DE9ADC0, &unk_237C0BF40);
      v57 = *(v14 + 48);
      v32 = v55;
      sub_2379FC864(v21, v55, &qword_27DE9ADC0, &unk_237C0BF40);
      v46 = *(v14 + 48);
      v33 = OUTLINED_FUNCTION_38_1();
      sub_237B0B0C8(v33, v34);
      OUTLINED_FUNCTION_1_80();
      v35 = v50;
      sub_237B94874(v54, v50, v36);
      v37 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v37);
      v38 = v53;

      v39 = v52;

      v40 = sub_237B07DFC(v31, v32 + v46, v51, v39, v38, &v58, v35);
      v41 = *(v47 + 8);
      v41(v55, v63);
      sub_2379D9054(v56 + v57, &qword_27DE9A9A0, &qword_237C0BF60);
      v59 = v37;
      v60 = &off_284AC4910;
      *&v58 = v40;
      OUTLINED_FUNCTION_1_80();
      v42 = v48;
      sub_237B94874(v54, v48, v43);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
      OUTLINED_FUNCTION_91(v44);
      sub_2379E43D0(&v58, v42, 6);
      sub_2379D9054(v21, &qword_27DE9ADC0, &unk_237C0BF40);
      v41(v27, v63);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

{
  OUTLINED_FUNCTION_74();
  v38 = v1;
  v39 = v2;
  v4 = v3;
  v36 = v5;
  v37 = v6;
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for MLTrainingSessionParameters(v7);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v34 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v35 = v12;
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  sub_2379FC864(v4, &v43, &qword_27DE9A998, &unk_237C0C100);
  if (v44)
  {
    sub_2379DAD24(&v43, &v40);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_2_77();
    sub_237B979A4();
    if (!v0)
    {
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_57_10();
      v23 = *(v14 + 48);
      sub_237B0B0C8(v4, &v40);
      OUTLINED_FUNCTION_1_80();
      sub_237B94874(v39, v35, v24);
      v25 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v25);
      v26 = v38;

      OUTLINED_FUNCTION_41_15();
      if (v26)
      {
        sub_2379D9054(v22, &qword_27DE9ADC0, &unk_237C0BF40);
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v28 = (*(v27 + 8))(v18);
        OUTLINED_FUNCTION_83_5(v28, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        OUTLINED_FUNCTION_46();
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v30 = (*(v29 + 8))(v18);
        OUTLINED_FUNCTION_83_5(v30, &qword_27DE9A9A0, &qword_237C0BF60);
        v41 = v25;
        v42 = &off_284AC4910;
        *&v40 = v23;
        OUTLINED_FUNCTION_1_80();
        sub_237B94874(v39, v34, v31);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
        OUTLINED_FUNCTION_91(v32);

        OUTLINED_FUNCTION_81_5();
        sub_2379D9054(v22, &qword_27DE9ADC0, &unk_237C0BF40);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLinearRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
  OUTLINED_FUNCTION_91(v1);

  sub_237BECE6C();
}

void static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v39 = v1;
  v40 = v2;
  v4 = v3;
  v37 = v5;
  v38 = v6;
  v7 = OUTLINED_FUNCTION_46();
  v8 = type metadata accessor for MLTrainingSessionParameters(v7);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  v35 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v36 = v12;
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  sub_2379FC864(v4, &v44, &qword_27DE9A998, &unk_237C0C100);
  if (v45)
  {
    sub_2379DAD24(&v44, &v41);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_80_5();
    OUTLINED_FUNCTION_2_77();
    sub_237B979A4();
    if (!v0)
    {
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_57_10();
      v23 = *(v14 + 48);
      sub_237B0B0C8(v4, &v41);
      OUTLINED_FUNCTION_1_80();
      sub_237B94874(v40, v36, v24);
      v25 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v25);
      v26 = v39;

      OUTLINED_FUNCTION_41_15();
      if (v26)
      {
        sub_2379D9054(v22, &qword_27DE9ADC0, &unk_237C0BF40);
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v28 = (*(v27 + 8))(v18);
        OUTLINED_FUNCTION_83_5(v28, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        OUTLINED_FUNCTION_46();
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v30 = (*(v29 + 8))(v18);
        OUTLINED_FUNCTION_83_5(v30, &qword_27DE9A9A0, &qword_237C0BF60);
        v42 = v25;
        v43 = &off_284AC4910;
        *&v41 = v23;
        OUTLINED_FUNCTION_1_80();
        sub_237B94874(v40, v35, v31);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
        OUTLINED_FUNCTION_91(v32);

        OUTLINED_FUNCTION_81_5();
        sub_2379D9054(v22, &qword_27DE9ADC0, &unk_237C0BF40);

        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D898, &qword_237C14F78);
        OUTLINED_FUNCTION_91(v33);
        sub_237BECE6C();
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLinearRegressor.restoreTrainingSession(sessionParameters:)()
{
  v2 = OUTLINED_FUNCTION_58_11();
  v3 = type metadata accessor for MLTrainingSessionParameters(v2);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-1] - v9;
  OUTLINED_FUNCTION_1_80();
  sub_237B94874(v1, v10, v11);
  v12 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237B07D30(v10);
  if (!v0)
  {
    v17[3] = v12;
    v17[4] = &off_284AC4910;
    v17[0] = v13;
    OUTLINED_FUNCTION_1_80();
    sub_237B94874(v1, v7, v14);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8A0, &unk_237C14F80);
    OUTLINED_FUNCTION_91(v15);
    sub_2379E43D0(v17, v7, 6);
  }
}

uint64_t sub_237B95900(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v24[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9D8B8, &qword_237C15058);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    v19 = OUTLINED_FUNCTION_58_11();
    type metadata accessor for LinearRegressorTrainingSessionDelegate(v19);
    swift_dynamicCast();
    v20 = v23;
    v21 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a4;
    v22[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C15068, v22);
  }
}

uint64_t sub_237B95AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237B95BAC);
}

uint64_t sub_237B95BAC()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237B95C4C;

  return sub_237B95EC0();
}

uint64_t sub_237B95C4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237B95D4C()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_237B978D8(v3, v4);
  OUTLINED_FUNCTION_69_8();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9D8B8, &qword_237C15058);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237B95E08()
{
  OUTLINED_FUNCTION_33();
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_69_8();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9D8B8, &qword_237C15058);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237B95EC0()
{
  OUTLINED_FUNCTION_9();
  v0[28] = v1;
  v0[29] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CDE8, &qword_237C12E30);
  OUTLINED_FUNCTION_20(v3);
  v0[30] = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MLLinearRegressor(0);
  v0[31] = v4;
  OUTLINED_FUNCTION_20(v4);
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CE00, &qword_237C15080);
  OUTLINED_FUNCTION_20(v5);
  v0[34] = OUTLINED_FUNCTION_19();
  v6 = _s20PersistentParametersVMa_3(0);
  v0[35] = v6;
  OUTLINED_FUNCTION_20(v6);
  v0[36] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237B95FD0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 232);
  v4 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9CE00, &qword_237C15080);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  sub_237B97948(*(v0 + 272), v6, _s20PersistentParametersVMa_3);
  sub_237B0B0C8(v6 + v7[8], v0 + 16);
  v10 = (v6 + v7[6]);
  v12 = *v10;
  v11 = v10[1];
  *(v0 + 296) = v11;
  v13 = *(v6 + v7[7]);
  *(v0 + 304) = v13;
  v14 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v9 + v14, v8, &qword_27DE9CDE8, &qword_237C12E30);
  v15 = _s5ModelVMa_2(0);
  result = __swift_getEnumTagSinglePayload(v8, 1, v15);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 240);
  sub_237B0B0C8(v0 + 16, v0 + 96);
  v19 = v17[9];
  *(v0 + 92) = v19;
  v20 = v16 + v19;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = v17[10];
  *(v0 + 172) = v21;
  v22 = v16 + v21;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v23 = swift_allocError();
  *v24 = 0xD0000000000000C0;
  v24[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v23, v24);
  *v22 = v25;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  OUTLINED_FUNCTION_4_68();
  sub_237B94874(v18, v16, v26);
  *(v16 + v17[7]) = v13;
  v27 = (v16 + v17[6]);
  *v27 = v12;
  v27[1] = v11;
  v28 = swift_task_alloc();
  *(v0 + 312) = v28;
  *v28 = v0;
  v28[1] = sub_237B96258;

  return sub_237B91D14();
}

uint64_t sub_237B96258()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_19_30();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v4 + 320) = v0;

  if (!v0)
  {
    *(v4 + 328) = v1;
  }

  OUTLINED_FUNCTION_18_35();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237B9635C()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[41];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  OUTLINED_FUNCTION_0_82();
  sub_237B979A4();
  *(v2 + *(v4 + 20)) = v1;
  memcpy((v2 + *(v4 + 32)), v0 + 12, 0x49uLL);
  sub_237B97948(v2, v3, type metadata accessor for MLLinearRegressor);
  result = sub_237B97948(v3, v5, type metadata accessor for MLLinearRegressor);
  v8 = v6 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  v9 = *(v6 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v9 == 255)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[31];
    v12 = v0[28];
    v11 = v0[29];
    v14 = *v8;
    v13 = *(v8 + 8);
    v15 = v9 & 1;
    sub_2379F7AF4(*v8, v13, v9 & 1);
    sub_237A68B6C((v0 + 2));
    OUTLINED_FUNCTION_33_24();
    sub_237B979A4();
    v16 = v12 + *(v10 + 36);
    sub_2379F8918(*v16, *(v16 + 8), *(v16 + 16));
    *v16 = v14;
    *(v16 + 8) = v13;
    *(v16 + 16) = v15;
    v18 = *(v11 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
    v17 = *(v11 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
    v19 = *(v11 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v18, v17, *(v11 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v19 != 255)
    {
      v20 = v0[28] + *(v0[31] + 40);
      sub_2379F8918(*v20, *(v20 + 8), *(v20 + 16));
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19 & 1;
    }

    OUTLINED_FUNCTION_8();

    return v21();
  }

  return result;
}

uint64_t sub_237B96538()
{
  v1 = *(v0 + 256);
  v2 = v1 + *(v0 + 92);
  v3 = v1 + *(v0 + 172);
  sub_237A68B6C(v0 + 96);
  sub_237B979A4();
  sub_237B979A4();

  sub_2379F8918(*v2, *(v2 + 8), *(v2 + 16));
  sub_2379F8918(*v3, *(v3 + 8), *(v3 + 16));

  sub_237A68B6C(v0 + 16);
  OUTLINED_FUNCTION_33_24();
  sub_237B979A4();

  OUTLINED_FUNCTION_8();

  return v4();
}

void MLLinearRegressor.predictions(from:)()
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v6 = OUTLINED_FUNCTION_47_3();
  type metadata accessor for MLLinearRegressor(v6);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237AAA8FC(v7, v8);
    sub_237C05DFC();
    (*(v4 + 8))(v1, v2);
  }
}

uint64_t MLLinearRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = sub_237C0602C();
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = *(a1 + 8);
  v16 = *a1;
  v17 = v14;
  sub_2379DBCF4(v16, v14);
  sub_237A70ED4(&v16, v3);
  MLLinearRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v7 + 8))(v3, v5);
  }

  (*(v7 + 8))(v3, v5);
  return sub_237A72900(v13, 1, v1);
}

uint64_t MLLinearRegressor.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for MLLinearRegressor(0);
  OUTLINED_FUNCTION_0();
  v40 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_43_0();
  v41 = a1;
  sub_2379F2DA4();
  v36 = v7;
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v11;
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v16 = (v2 + *(v4 + 24));
  v17 = v16[1];
  *(inited + 32) = *v16;
  *(inited + 40) = v17;

  v18 = v41;
  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  v20 = v37;
  v19 = v38;
  v21 = v18;
  v22 = v9;
  (*(v38 + 16))(v37, v21, v9);
  OUTLINED_FUNCTION_14_35();
  v23 = v39;
  sub_237B94874(v2, v39, v24);
  v25 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v26 = (v13 + *(v40 + 80) + v25) & ~*(v40 + 80);
  v27 = swift_allocObject();
  (*(v19 + 32))(v27 + v25, v20, v22);
  OUTLINED_FUNCTION_12_46();
  sub_237B97948(v23, v27 + v26, v28);
  sub_2379DDFE8(&unk_237C14F90, v27, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1], v43[2], v43[3], v43[4]);
}

{
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  v11 = *(a1 + 8);
  v13 = *a1;
  v14 = v11;
  sub_2379DBCF4(v13, v11);
  sub_237A70ED4(&v13, v10);
  MLLinearRegressor.evaluation(on:)(v10, a2);
  return (*(v6 + 8))(v10, v4);
}

void MLLinearRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v45 = v0;
  v3 = v2;
  v4 = _s5ModelVMa_2(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = v3;
  v23 = v22 - v21;
  memcpy(v44, v20, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v36 = v11;
    v37 = v18;
    OUTLINED_FUNCTION_4_68();
    sub_237B94874(v45, v8, v24);
    v25 = *(&v44[0] + 1);
    if (*(&v44[0] + 1))
    {
      v26 = *&v44[0];
      v27 = *(&v44[1] + 1);
      v28 = *&v44[1];
      v29 = v44[2];
      v30 = *(&v44[3] + 1);
      v31 = *&v44[3];
      v32 = *&v44[4];
    }

    else
    {
      v33 = v23;
      v34 = NSFullUserName();
      v26 = sub_237C086EC();
      v25 = v35;

      v23 = v33;
      v32 = 0;
      v27 = 0x8000000237C17C90;
      v29 = 0uLL;
      v30 = 0xE100000000000000;
      v28 = 0xD000000000000033;
      v31 = 49;
    }

    v39[0] = v26;
    v39[1] = v25;
    v39[2] = v28;
    v39[3] = v27;
    v40 = v29;
    v41 = v31;
    v42 = v30;
    v43 = v32;
    sub_2379FC864(v44, &v38, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB6A4(v39);
    OUTLINED_FUNCTION_0_82();
    sub_237B979A4();
    sub_2379FC064(v39);
    sub_237C07E5C();
    (*(v36 + 8))(v15, v9);
    (*(v37 + 8))(v23, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLLinearRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v24[1] = v3;
  v25 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v17 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v26, v5, sizeof(v26));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLLinearRegressor.write(to:metadata:)();
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_73();
}

unint64_t MLLinearRegressor.description.getter()
{
  v3 = type metadata accessor for MLLinearRegressor(0);
  MLLinearRegressor.ModelParameters.description.getter();
  OUTLINED_FUNCTION_45_16();
  v4 = MLRegressorMetrics.description.getter();
  v6 = v5;
  v7 = *(v0 + *(v3 + 40) + 16);
  v8 = MLRegressorMetrics.description.getter();
  v10 = v9;
  MEMORY[0x2383DC360](v1, v2);

  MEMORY[0x2383DC360](v4, v6);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if ((v7 & 1) == 0)
  {
    MEMORY[0x2383DC360](v8, v10);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD00000000000001CLL;
}

id MLLinearRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLLinearRegressor.description.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MLLinearRegressor(0);
  OUTLINED_FUNCTION_65_7();
  v9 = (v5 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + v9;

  if (*(v1 + v9 + 16))
  {
  }

  v11 = *(_s5ModelVMa_2(0) + 24);
  sub_237C0707C();
  OUTLINED_FUNCTION_4();
  (*(v12 + 8))(v10 + v11);

  v13 = (v10 + v0[8]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  sub_2379F8918(*(v10 + v0[9]), *(v10 + v0[9] + 8), *(v10 + v0[9] + 16));
  sub_2379F8918(*(v10 + v0[10]), *(v10 + v0[10] + 8), *(v10 + v0[10] + 16));

  return MEMORY[0x2821FE8E8](v1);
}

id sub_237B97564@<X0>(void *a1@<X8>)
{
  result = MLLinearRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237B975A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = _s5ModelVMa_2(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_237B97664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s5ModelVMa_2(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_237B9770C(uint64_t a1)
{
  _s5ModelVMa_2(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237B977D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237B9781C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237B95AF0(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_237B978D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8B8, &qword_237C15058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237B97948(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237B979A4()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_237B979F8()
{
  result = qword_27DE9B840;
  if (!qword_27DE9B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B828, &qword_237C0DFE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B840);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_66@<X0>(uint64_t a1@<X8>)
{
  v1[2] = 0xD000000000000033;
  v1[3] = (a1 - 32) | 0x8000000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = 49;
  v1[7] = 0xE100000000000000;
  v1[8] = 0;
  return v1;
}

uint64_t *OUTLINED_FUNCTION_41_15()
{
  v8 = *(v6 - 232);

  return sub_237B07DFC(v5, v2 + v0, v8, v3, v1, (v6 - 200), v4);
}

uint64_t OUTLINED_FUNCTION_43_12(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_57_10()
{
  *(v5 - 72) = *(v4 + 48);

  return sub_2379FC864(v3, v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_66_9()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 256;
  return v0;
}

void OUTLINED_FUNCTION_68_4()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_69_8()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_237B978D8(v2, v3);
}

uint64_t OUTLINED_FUNCTION_71_9()
{

  return sub_237B979A4();
}

NSString *OUTLINED_FUNCTION_72_9()
{

  return NSFullUserName();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_237C08EDC();
}

uint64_t OUTLINED_FUNCTION_79_6()
{

  return sub_2379FC864(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_80_5()
{

  return sub_237B655DC(v2, (v2 + v1), v0);
}

void OUTLINED_FUNCTION_81_5()
{

  sub_2379E43D0((v1 - 200), v0, 6);
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 336);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_83_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3 + *(v4 - 72);

  return sub_2379D9054(v6, a2, a3);
}

uint64_t OUTLINED_FUNCTION_85_5()
{
  *(v1 + 88) = v0;

  return sub_237C07F1C();
}

uint64_t getEnumTagSinglePayload for ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
        JUMPOUT(0x237B98024);
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237B98060()
{
  result = qword_27DE9D8C0;
  if (!qword_27DE9D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D8C0);
  }

  return result;
}

void sub_237B980B4(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 27:
      return;
    case 4:
    case 25:
      OUTLINED_FUNCTION_8_47(21);
      break;
    case 13:
      OUTLINED_FUNCTION_10_45(21);
      break;
    case 22:
      OUTLINED_FUNCTION_9_51(21);
      break;
    case 26:
      OUTLINED_FUNCTION_3_82(0x6147u);
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      break;
  }
}

void sub_237B983D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_67();
  switch(v2)
  {
    case 6:
    case 7:
    case 8:
    case 9:
    case 12:
    case 13:
    case 16:
    case 17:
    case 19:
    case 20:
    case 25:
      OUTLINED_FUNCTION_12_47();
      break;
    case 10:
      return;
    case 11:
      OUTLINED_FUNCTION_6_62();
      break;
    case 14:
      OUTLINED_FUNCTION_7_52();
      break;
    case 15:
    case 23:
      OUTLINED_FUNCTION_10_45(24);
      break;
    case 18:
      OUTLINED_FUNCTION_9_51(24);
      break;
    case 21:
    case 22:
    case 24:
      OUTLINED_FUNCTION_8_47(24);
      break;
    case 26:
      OUTLINED_FUNCTION_3_82(0x6167u);
      break;
    case 27:
      OUTLINED_FUNCTION_4_69();
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      break;
  }
}

uint64_t sub_237B98710(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x8000000237C1DF90 == a2;
  if (v3 || (OUTLINED_FUNCTION_0_83(a1, 0x8000000237C1DF90) & 1) != 0)
  {

    return 2;
  }

  else
  {
    OUTLINED_FUNCTION_1_81();
    v8 = v3 && v7 == a2;
    if (v8 || (OUTLINED_FUNCTION_0_83(v6, v7) & 1) != 0)
    {

      return 3;
    }

    else
    {
      OUTLINED_FUNCTION_1_81();
      v11 = v3 && v10 == a2;
      if (v11 || (OUTLINED_FUNCTION_0_83(v9, v10) & 1) != 0)
      {

        return 4;
      }

      else
      {
        OUTLINED_FUNCTION_1_81();
        v14 = v3 && v13 == a2;
        if (v14 || (OUTLINED_FUNCTION_0_83(v12, v13) & 1) != 0)
        {

          return 5;
        }

        else
        {
          OUTLINED_FUNCTION_1_81();
          v17 = v3 && v16 == a2;
          if (v17 || (OUTLINED_FUNCTION_0_83(v15, v16) & 1) != 0)
          {

            return 0;
          }

          else
          {
            OUTLINED_FUNCTION_1_81();
            v20 = v3 && v19 == a2;
            if (v20 || (OUTLINED_FUNCTION_0_83(v18, v19) & 1) != 0)
            {

              return 1;
            }

            else
            {
              v21 = a1 == 0xD00000000000001CLL && 0x8000000237C1DE80 == a2;
              if (v21 || (OUTLINED_FUNCTION_8_20(0xD00000000000001CLL, 0x8000000237C1DE80) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v22 = a1 == 0xD00000000000001FLL && 0x8000000237C1DE60 == a2;
                if (v22 || (OUTLINED_FUNCTION_8_20(0xD00000000000001FLL, 0x8000000237C1DE60) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v23 = a1 == 0xD00000000000001ELL && 0x8000000237C1DED0 == a2;
                  if (v23 || (OUTLINED_FUNCTION_8_20(0xD00000000000001ELL, 0x8000000237C1DED0) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v24 = a1 == 0xD000000000000021 && 0x8000000237C1DEA0 == a2;
                    if (v24 || (OUTLINED_FUNCTION_8_20(0xD000000000000021, 0x8000000237C1DEA0) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v25 = OUTLINED_FUNCTION_5_67();
                      v27 = a1 == v25 && a2 == v26;
                      if (v27 || (OUTLINED_FUNCTION_8_20(v25, v26) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v28 = OUTLINED_FUNCTION_6_62();
                        v30 = a1 == v28 && a2 == v29;
                        if (v30 || (OUTLINED_FUNCTION_8_20(v28, v29) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v31 = a1 == 0xD000000000000010 && 0x8000000237C1DE40 == a2;
                          if (v31 || (OUTLINED_FUNCTION_8_20(0xD000000000000010, 0x8000000237C1DE40) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v32 = a1 == 0xD000000000000012 && 0x8000000237C1DE20 == a2;
                            if (v32 || (OUTLINED_FUNCTION_8_20(0xD000000000000012, 0x8000000237C1DE20) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v33 = OUTLINED_FUNCTION_7_52();
                              v35 = a1 == v33 && a2 == v34;
                              if (v35 || (OUTLINED_FUNCTION_8_20(v33, v34) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v36 = a1 == 0xD000000000000012 && 0x8000000237C1DDE0 == a2;
                                if (v36 || (OUTLINED_FUNCTION_8_20(0xD000000000000012, 0x8000000237C1DDE0) & 1) != 0)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v37 = a1 == 0xD000000000000014 && 0x8000000237C1DE00 == a2;
                                  if (v37 || (OUTLINED_FUNCTION_8_20(0xD000000000000014, 0x8000000237C1DE00) & 1) != 0)
                                  {

                                    return 15;
                                  }

                                  else
                                  {
                                    v38 = a1 == 0xD000000000000011 && 0x8000000237C1DDC0 == a2;
                                    if (v38 || (OUTLINED_FUNCTION_8_20(0xD000000000000011, 0x8000000237C1DDC0) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v39 = a1 == 0xD000000000000013 && 0x8000000237C1DDA0 == a2;
                                      if (v39 || (OUTLINED_FUNCTION_8_20(0xD000000000000013, 0x8000000237C1DDA0) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_1_81();
                                        v41 = v3 && v40 == a2;
                                        if (v41 || (OUTLINED_FUNCTION_8_20(0xD000000000000010, v40) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v42 = a1 == 0xD000000000000019 && 0x8000000237C1DD80 == a2;
                                          if (v42 || (OUTLINED_FUNCTION_8_20(0xD000000000000019, 0x8000000237C1DD80) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v43 = a1 == 0xD000000000000017 && 0x8000000237C1DD60 == a2;
                                            if (v43 || (OUTLINED_FUNCTION_8_20(0xD000000000000017, 0x8000000237C1DD60) & 1) != 0 || (OUTLINED_FUNCTION_8_20(0xD000000000000017, 0x8000000237C1DD60) & 1) != 0)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v44 = a1 == 0xD000000000000014 && 0x8000000237C1DD40 == a2;
                                              if (v44 || (OUTLINED_FUNCTION_8_20(0xD000000000000014, 0x8000000237C1DD40) & 1) != 0)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_1_81();
                                                v46 = v3 && v45 == a2;
                                                if (v46 || (OUTLINED_FUNCTION_8_20(0xD000000000000017, v45) & 1) != 0)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v47 = a1 == 0xD000000000000016 && 0x8000000237C1DD00 == a2;
                                                  if (v47 || (OUTLINED_FUNCTION_8_20(0xD000000000000016, 0x8000000237C1DD00) & 1) != 0)
                                                  {

                                                    return 25;
                                                  }

                                                  else
                                                  {
                                                    v48 = a1 == 0x65657474657A6167 && a2 == 0xE900000000000072;
                                                    if (v48 || (OUTLINED_FUNCTION_8_20(0x65657474657A6167, 0xE900000000000072) & 1) != 0)
                                                    {

                                                      return 26;
                                                    }

                                                    else
                                                    {
                                                      v49 = OUTLINED_FUNCTION_4_69();
                                                      if (a1 == v49 && a2 == v50)
                                                      {

                                                        return 27;
                                                      }

                                                      else
                                                      {
                                                        v52 = OUTLINED_FUNCTION_8_20(v49, v50);

                                                        if (v52)
                                                        {
                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          return 28;
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
      }
    }
  }
}

unint64_t sub_237B98CF0@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_237B980B4(a1);
  v4 = v3;
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_237A02218(v4, v6, 0);
  result = sub_237A022C0();
  a2[3] = result;
  *a2 = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_83(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

void sub_237B98E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_15();
  if (*(v11 + 16))
  {
    OUTLINED_FUNCTION_35_19();
    sub_237BC246C();
    OUTLINED_FUNCTION_16_31();
    sub_237BA2134(v12, v13, v14, v15);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v16)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0F80(v17);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

void sub_237B98EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_15();
  if (*(v11 + 16))
  {
    v12 = OUTLINED_FUNCTION_35_19();
    sub_237BC24D0(v12, v13);
    OUTLINED_FUNCTION_16_31();
    sub_237BA221C(v14, v15, v16, v17);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v18)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0FEC(v19);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

void sub_237B98F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39_15();
  if (*(v11 + 16))
  {
    v12 = OUTLINED_FUNCTION_35_19();
    sub_237BC24D0(v12, v13);
    OUTLINED_FUNCTION_16_31();
    sub_237BA237C(v14, v15, v16, v17);
    OUTLINED_FUNCTION_22_31();
    OUTLINED_FUNCTION_20_33();
    if (!v18)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_34_20();
  sub_237BA0FEC(v19);
  if (v10)
  {

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_38_19();
  }
}

uint64_t sub_237B98FFC(uint64_t a1, char a2)
{
  v2 = a1;
  switch(a2)
  {
    case 4:
      return *(a1 + 16);
    case 5:
      v4 = *(a1 + 16);
      if (v4)
      {
        v16 = MEMORY[0x277D84F90];
        sub_237AC8A34(0, v4, 0);
        v5 = v16;
        v6 = (v2 + 56);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;

          sub_237A1E09C(v7, v8);
          v9 = sub_237B98FFC(v7, v8);

          sub_237A1E0B0(v7, v8);
          v11 = *(v16 + 16);
          v10 = *(v16 + 24);
          v12 = v11 + 1;
          if (v11 >= v10 >> 1)
          {
            sub_237AC8A34(v10 > 1, v11 + 1, 1);
          }

          v6 += 32;
          *(v16 + 16) = v12;
          *(v16 + 8 * v11 + 32) = v9;
          --v4;
        }

        while (v4);
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
        v12 = *(MEMORY[0x277D84F90] + 16);
        if (!v12)
        {

          return 0;
        }
      }

      v2 = 0;
      v13 = 32;
      do
      {
        v14 = *(v5 + v13);
        v15 = __OFADD__(v2, v14);
        v2 += v14;
        if (v15)
        {
          __break(1u);
          JUMPOUT(0x237B99188);
        }

        v13 += 8;
        --v12;
      }

      while (v12);

      return v2;
    case 6:
      return 1;
    default:
      return v2;
  }
}

uint64_t sub_237B991A4@<X0>(uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v25[1] = a5;
  v7 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a4)
  {
    case 1:
      v20 = MEMORY[0x277D250F8];
      goto LABEL_7;
    case 2:
      v20 = MEMORY[0x277D25100];
      goto LABEL_7;
    case 3:
      v20 = MEMORY[0x277D250F0];
      goto LABEL_7;
    case 4:

      sub_237C0756C();
      (*(v15 + 104))(v19, *MEMORY[0x277D25130], v13);
      return sub_237C07B3C();
    case 5:

      sub_237C075CC();
      return sub_237C07B3C();
    case 6:

      v22 = (v15 + 104);
      if (a3)
      {
        sub_237C0755C();
        v23 = MEMORY[0x277D25128];
      }

      else
      {
        sub_237C0751C();
        v23 = MEMORY[0x277D25118];
      }

      (*v22)(v19, *v23, v13);
      return sub_237C07B3C();
    default:
      v20 = MEMORY[0x277D250E8];
LABEL_7:
      (*(v9 + 104))(v12, *v20, v7, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_237C0B660;
      *(v21 + 32) = a3;

      sub_237C0750C();

      (*(v9 + 8))(v12, v7);
      return sub_237C07B3C();
  }
}

void sub_237B99480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_14();
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24;
    v33 = MEMORY[0x277D84F90];
    v27 = OUTLINED_FUNCTION_18_36();
    sub_237AC8BB4(v27, v28, v29);
    v30 = v26 + 32;
    do
    {
      v30 += 8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B380, &qword_237C0CC20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B370, &qword_237C153A0);
      swift_dynamicCast();
      v32 = *(v33 + 16);
      v31 = *(v33 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_237AC8BB4(v31 > 1, v32 + 1, 1);
      }

      *(v33 + 16) = v32 + 1;
      *(v33 + 8 * v32 + 32) = a11;
      --v25;
    }

    while (v25);
  }

  OUTLINED_FUNCTION_59_12();
}

uint64_t sub_237B9958C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8C54();
    v2 = v13;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D839F8];
    v6 = MEMORY[0x277D83A38];
    do
    {
      v7 = *v4;
      v13 = v2;
      v8 = *(v2 + 16);
      if (v8 >= *(v2 + 24) >> 1)
      {
        sub_237AC8C54();
        v2 = v13;
      }

      v11 = v5;
      v12 = v6;
      *&v10 = v7;
      *(v2 + 16) = v8 + 1;
      sub_237A1FCF0(&v10, v2 + 40 * v8 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99678(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    v4 = OUTLINED_FUNCTION_18_36();
    sub_237AC8EB4(v4, v5, v6);
    v7 = a1 + 56;
    v2 = v16;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA10, &unk_237C15390);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B298, &qword_237C0CB48);
      swift_dynamicCast();
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_237AC8EB4(v8 > 1, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      v10 = (v16 + 32 * v9);
      v10[4] = v12;
      v10[5] = v13;
      v10[6] = v14;
      v10[7] = v15;
      v7 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B997AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2379F6D68(v4, v9);
      v10 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_237AC8ED4();
        v2 = v10;
      }

      *(v2 + 16) = v5 + 1;
      v6 = v2 + 32 * v5;
      v7 = v9[1];
      *(v6 + 32) = v9[0];
      *(v6 + 48) = v7;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B9987C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B9998C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      ++v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_237B99DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_18_36();
    sub_237AC8ED4();
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
      swift_dynamicCast();
      v5 = *(v10 + 16);
      if (v5 >= *(v10 + 24) >> 1)
      {
        sub_237AC8ED4();
      }

      *(v10 + 16) = v5 + 1;
      v6 = v10 + 32 * v5;
      *(v6 + 32) = v8;
      *(v6 + 48) = v9;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_237B99ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v22;
  a20 = v23;
  v298[0] = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  v27 = OUTLINED_FUNCTION_0_26(v26, &v290);
  v263[24] = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  v32 = OUTLINED_FUNCTION_0_26(v31, &v288);
  v263[20] = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  v37 = OUTLINED_FUNCTION_0_26(v36, &v284);
  v263[16] = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  v42 = OUTLINED_FUNCTION_0_26(v41, &v280);
  v263[12] = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  v47 = OUTLINED_FUNCTION_0_26(v46, &v276);
  v263[8] = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  v52 = OUTLINED_FUNCTION_0_26(v51, v275);
  v263[5] = v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0_26(v56, v270);
  v263[2] = v57;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8C8, &qword_237C15208);
  OUTLINED_FUNCTION_20(v60);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0_26(v63, &v294);
  v266 = v64;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v66);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  OUTLINED_FUNCTION_0_26(v69, v298);
  v269 = v70;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8D0, &unk_237C15218);
  OUTLINED_FUNCTION_20(v73);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0_26(v76, &a9);
  v273 = v77;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v79);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  OUTLINED_FUNCTION_0_26(v82, &a14);
  v275[3] = v83;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8D8, &qword_237C15228);
  OUTLINED_FUNCTION_20(v86);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_23();
  v282 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A8, &unk_237C15230);
  OUTLINED_FUNCTION_0_26(v89, &a18);
  v279 = v90;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v92);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B108, &qword_237C0CA10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_23();
  v281 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C8, &qword_237C15240);
  OUTLINED_FUNCTION_0();
  v284 = v96;
  v285 = v95;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_23();
  v283 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8E0, &qword_237C15248);
  OUTLINED_FUNCTION_20(v99);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_23();
  v291 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  OUTLINED_FUNCTION_0();
  v288 = v103;
  v289 = v102;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_23();
  v287 = v105;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_23();
  v290 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D3C8, &unk_237C15260);
  OUTLINED_FUNCTION_0();
  v292 = v109;
  v293 = v108;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_37_15();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC8, &qword_237C0EC28);
  OUTLINED_FUNCTION_0();
  v294 = v112;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v113);
  v115 = v263 - v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  OUTLINED_FUNCTION_0();
  v295 = v117;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v118);
  v120 = v263 - v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v296 = v122;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v123);
  v125 = v263 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v126);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_36_0();
  v297 = sub_237C0600C();
  v298[1] = v128;
  a10 = v25;
  sub_237C05FFC();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    goto LABEL_4;
  }

  if (swift_dynamicCastMetatype())
  {
    v130 = a10;
    sub_237C05FEC();
    v299 = 0;
    v300 = 0xE000000000000000;
    sub_2379D9224(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0, MEMORY[0x277CE18F0]);
    sub_237C05EAC();
    v296[1](v125, v121);
    v131 = sub_237B43058();
    sub_237B98EF8(v131, v132, v133, v134, v135, v136, v137, v138, v263[0], v263[1]);

    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v139 + 8))(v130);
    goto LABEL_5;
  }

  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  if (OUTLINED_FUNCTION_51_2(v140))
  {
    OUTLINED_FUNCTION_28_23();
    v141 = sub_237B3B4E8();
    (*(v295 + 8))(v120, v116);
    if (v141 != 1)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
  if (OUTLINED_FUNCTION_51_2(v142))
  {
    OUTLINED_FUNCTION_28_23();
    v141 = sub_237B3B504();
    (*(v294 + 8))(v115, v111);
    if (v141 != 1)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D300, &qword_237C137F8);
  if (OUTLINED_FUNCTION_51_2(v143))
  {
    OUTLINED_FUNCTION_28_23();
    v141 = sub_237B3B5E0();
    (*(v292 + 8))(v21, v293);
    if (v141 != 1)
    {
LABEL_20:
      sub_237C0602C();
      OUTLINED_FUNCTION_12_0();
      (*(v144 + 8))(v121);
      if (!v141)
      {
        goto LABEL_5;
      }

      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_128;
  }

  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  if (OUTLINED_FUNCTION_51_2(v145))
  {
    v146 = v287;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B5FC(v147);
    (*(v288 + 8))(v146, v289);
    v148 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v148, v149, v286) != 1)
    {
      sub_237BA0F20(v291, v290, &qword_27DE9B0F8, &qword_237C0CA08);
      OUTLINED_FUNCTION_17_28();
      if (v150)
      {
        sub_237A7B808(v290, &qword_27DE9B0F8, &qword_237C0CA08);
      }

      else
      {
        sub_237C082AC();
        OUTLINED_FUNCTION_23_13();
        v155 = OUTLINED_FUNCTION_58_0();
        v156(v155);
      }

      OUTLINED_FUNCTION_47_18();
      if (!v158)
      {
        if (v157)
        {
          goto LABEL_88;
        }

        goto LABEL_57;
      }

      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_132;
  }

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D8, &qword_237C0CA00);
  if (OUTLINED_FUNCTION_51_2(v151))
  {
    v152 = v283;
    OUTLINED_FUNCTION_12_48();
    v153 = sub_237B3B6DC();
    (*(v284 + 8))(v152, v285);
    if (v153 == 1)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v154 + 8))(a10);
    if (!v153)
    {
      goto LABEL_5;
    }

LABEL_62:
    v185 = OUTLINED_FUNCTION_42_15();
    sub_237BA0F10(v185);
    goto LABEL_5;
  }

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E8, &unk_237C152A0);
  if (OUTLINED_FUNCTION_51_2(v161))
  {
    v162 = v278;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B6F8(v163);
    OUTLINED_FUNCTION_36_3();
    v164(v162, v280);
    v165 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v165, v166, v277) == 1)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    sub_237BA0F20(v282, v281, &qword_27DE9B108, &qword_237C0CA10);
    OUTLINED_FUNCTION_17_28();
    if (v150)
    {
      sub_237A7B808(v281, &qword_27DE9B108, &qword_237C0CA10);
    }

    else
    {
      sub_237C082AC();
      OUTLINED_FUNCTION_23_13();
      v171 = OUTLINED_FUNCTION_58_0();
      v172(v171);
    }

    OUTLINED_FUNCTION_47_18();
    if (!v158)
    {
      if (v173)
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

LABEL_33:

    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v159 = swift_allocError();
    OUTLINED_FUNCTION_26_25(v159, v160);
LABEL_4:
    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v129 + 8))(a10);
LABEL_5:
    OUTLINED_FUNCTION_73();
    return;
  }

  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  if (OUTLINED_FUNCTION_51_2(v167))
  {
    OUTLINED_FUNCTION_5_68();
    v168 = sub_237B3B7D8();
    OUTLINED_FUNCTION_36_3();
    v169(v21, v276);
    if (v168 == 1)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v170 + 8))(a10);
    if (!v168)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  if (OUTLINED_FUNCTION_51_2(v174))
  {
    v175 = v272;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B7F4(v176);
    OUTLINED_FUNCTION_36_3();
    v177(v175, v274);
    v178 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v178, v179, v271) == 1)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    sub_237BA0F20(v275[1], v275[0], &qword_27DE9B118, &qword_237C0CA18);
    OUTLINED_FUNCTION_17_28();
    if (v150)
    {
      sub_237A7B808(v275[0], &qword_27DE9B118, &qword_237C0CA18);
    }

    else
    {
      sub_237C082AC();
      OUTLINED_FUNCTION_23_13();
      v186 = OUTLINED_FUNCTION_58_0();
      v187(v186);
    }

    OUTLINED_FUNCTION_47_18();
    if (!v158)
    {
      if (v188)
      {
        goto LABEL_88;
      }

      goto LABEL_57;
    }

    goto LABEL_33;
  }

  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  if (OUTLINED_FUNCTION_51_2(v181))
  {
    OUTLINED_FUNCTION_5_68();
    v182 = sub_237B3B8D4();
    OUTLINED_FUNCTION_36_3();
    v183(v21, v270[0]);
    if (v182 == 1)
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v184 + 8))(a10);
    if (!v182)
    {
      goto LABEL_5;
    }

    goto LABEL_62;
  }

  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  if (OUTLINED_FUNCTION_51_2(v189))
  {
    v190 = v265;
    OUTLINED_FUNCTION_12_48();
    OUTLINED_FUNCTION_58_12();
    sub_237B3B8F0(v191);
    OUTLINED_FUNCTION_36_3();
    v192(v190, v267);
    v193 = OUTLINED_FUNCTION_1_21();
    if (__swift_getEnumTagSinglePayload(v193, v194, v264) != 1)
    {
      sub_237BA0F20(v270[1], v268, &qword_27DE9B120, &qword_237C0CA20);
      OUTLINED_FUNCTION_17_28();
      if (v150)
      {
        sub_237A7B808(v268, &qword_27DE9B120, &qword_237C0CA20);
      }

      else
      {
        sub_237C082AC();
        OUTLINED_FUNCTION_23_13();
        v209 = OUTLINED_FUNCTION_58_0();
        v210(v209);
      }

      OUTLINED_FUNCTION_47_18();
      if (!v158)
      {
        if (v211)
        {
LABEL_88:
          OUTLINED_FUNCTION_64_7();
          sub_237C0602C();
          OUTLINED_FUNCTION_12_0();
          (*(v212 + 8))(a10);
          goto LABEL_5;
        }

LABEL_57:
        sub_237C0602C();
        OUTLINED_FUNCTION_12_0();
        (*(v180 + 8))(a10);

        goto LABEL_5;
      }

      goto LABEL_33;
    }

    goto LABEL_138;
  }

  v195 = sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  if (!OUTLINED_FUNCTION_51_2(v195))
  {
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
    if (OUTLINED_FUNCTION_51_2(v213))
    {
      OUTLINED_FUNCTION_5_68();
      OUTLINED_FUNCTION_29_19();
      v214 = OUTLINED_FUNCTION_8_48();
      v215(v214);
      v216 = OUTLINED_FUNCTION_25_30();
      sub_237B9C29C(v216);
      OUTLINED_FUNCTION_31_22();
      if (v20)
      {

        sub_237C0602C();
      }

      else
      {
        OUTLINED_FUNCTION_23_33();
      }

      OUTLINED_FUNCTION_12_0();
      (*(v217 + 8))(a10);
      v218 = OUTLINED_FUNCTION_51_9();
    }

    else
    {
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B180, &unk_237C152B0);
      if (OUTLINED_FUNCTION_51_2(v229))
      {
        OUTLINED_FUNCTION_5_68();
        OUTLINED_FUNCTION_29_19();
        v230 = OUTLINED_FUNCTION_8_48();
        v231(v230);
        v232 = OUTLINED_FUNCTION_25_30();
        sub_237B9CB58(v232);
        OUTLINED_FUNCTION_31_22();
        if (v20)
        {

          sub_237C0602C();
        }

        else
        {
          OUTLINED_FUNCTION_23_33();
        }

        OUTLINED_FUNCTION_12_0();
        (*(v233 + 8))(a10);
        v218 = OUTLINED_FUNCTION_54_5();
      }

      else
      {
        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B188, &qword_237C0CA58);
        if (OUTLINED_FUNCTION_51_2(v240))
        {
          OUTLINED_FUNCTION_5_68();
          OUTLINED_FUNCTION_29_19();
          v241 = OUTLINED_FUNCTION_8_48();
          v242(v241);
          v243 = OUTLINED_FUNCTION_25_30();
          sub_237B9D414(v243);
          OUTLINED_FUNCTION_31_22();
          if (v20)
          {

            sub_237C0602C();
          }

          else
          {
            OUTLINED_FUNCTION_23_33();
          }

          OUTLINED_FUNCTION_12_0();
          (*(v244 + 8))(a10);
          v218 = OUTLINED_FUNCTION_53_13();
        }

        else
        {
          v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
          if (OUTLINED_FUNCTION_51_2(v245))
          {
            OUTLINED_FUNCTION_5_68();
            OUTLINED_FUNCTION_29_19();
            v246 = OUTLINED_FUNCTION_8_48();
            v247(v246);
            v248 = OUTLINED_FUNCTION_25_30();
            sub_237B9DCD0(v248);
            OUTLINED_FUNCTION_31_22();
            if (v20)
            {

              sub_237C0602C();
            }

            else
            {
              OUTLINED_FUNCTION_23_33();
            }

            OUTLINED_FUNCTION_12_0();
            (*(v249 + 8))(a10);
            v218 = OUTLINED_FUNCTION_52_16();
          }

          else
          {
            v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
            if (OUTLINED_FUNCTION_51_2(v250))
            {
              OUTLINED_FUNCTION_5_68();
              OUTLINED_FUNCTION_29_19();
              v251 = OUTLINED_FUNCTION_8_48();
              v252(v251);
              v253 = OUTLINED_FUNCTION_25_30();
              sub_237B9E58C(v253);
              OUTLINED_FUNCTION_31_22();
              if (v20)
              {

                sub_237C0602C();
              }

              else
              {
                OUTLINED_FUNCTION_23_33();
              }

              OUTLINED_FUNCTION_12_0();
              (*(v254 + 8))(a10);
              v218 = OUTLINED_FUNCTION_50_14();
            }

            else
            {
              v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
              if (!OUTLINED_FUNCTION_51_2(v255))
              {
LABEL_128:

                v299 = 0;
                v300 = 0xE000000000000000;
                sub_237C08EDC();

                v261 = OUTLINED_FUNCTION_27_20(v260);
                MEMORY[0x2383DC360](v261);

                MEMORY[0x2383DC360](0xD000000000000021, 0x8000000237C1E090);
                sub_237C05FFC();
                v262 = sub_237C094DC();
                MEMORY[0x2383DC360](v262);

                v223 = OUTLINED_FUNCTION_57_11();
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_5_68();
              OUTLINED_FUNCTION_29_19();
              v256 = OUTLINED_FUNCTION_8_48();
              v257(v256);
              v258 = OUTLINED_FUNCTION_25_30();
              sub_237B9EE48(v258);
              OUTLINED_FUNCTION_31_22();
              if (v20)
              {

                sub_237C0602C();
              }

              else
              {
                OUTLINED_FUNCTION_23_33();
              }

              OUTLINED_FUNCTION_12_0();
              (*(v259 + 8))(a10);
              v218 = OUTLINED_FUNCTION_49_11();
            }
          }
        }
      }
    }

    v219(v218, *(v220 - 256));
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_5_68();
  v196 = sub_237B3B9D0();
  OUTLINED_FUNCTION_36_3();
  v197(v21, v263[3]);
  v296 = v196;
  if (!v196)
  {

    v299 = 0;
    v300 = 0xE000000000000000;
    sub_237C08EDC();

    v222 = OUTLINED_FUNCTION_27_20(v221);
    MEMORY[0x2383DC360](v222);

    v223 = 0xD000000000000017;
    v224 = 0x8000000237C1E0C0;
LABEL_94:
    MEMORY[0x2383DC360](v223, v224);
    v225 = v299;
    v226 = v300;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    *v227 = v225;
    *(v227 + 8) = v226;
    *(v227 + 16) = 0u;
    *(v227 + 32) = 0u;
    *(v227 + 48) = 1;
    swift_willThrow();
    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v228 + 8))(v21);
    goto LABEL_5;
  }

  if (v296 == 1)
  {
    goto LABEL_139;
  }

  v198 = [v296 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v199 = sub_237C0893C();

  v200 = sub_237A254D8(v199);
  if (v200)
  {
    v201 = v200;
    v299 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v200 & ~(v200 >> 63), 0);
    if (v201 < 0)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v202 = 0;
    v203 = v299;
    do
    {
      if ((v199 & 0xC000000000000001) != 0)
      {
        v204 = MEMORY[0x2383DCAF0](v202, v199);
      }

      else
      {
        v204 = *(v199 + 8 * v202 + 32);
      }

      v205 = v204;
      v206 = [v204 integerValue];

      v299 = v203;
      v208 = *(v203 + 16);
      v207 = *(v203 + 24);
      if (v208 >= v207 >> 1)
      {
        sub_237AC8A34(v207 > 1, v208 + 1, 1);
        v203 = v299;
      }

      ++v202;
      *(v203 + 16) = v208 + 1;
      *(v203 + 8 * v208 + 32) = v206;
    }

    while (v201 != v202);
  }

  OUTLINED_FUNCTION_42_15();

  if (v199 > 1)
  {

    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v234 = swift_allocError();
    OUTLINED_FUNCTION_26_25(v234, v235);
    sub_237BA0F00(v296);
    goto LABEL_4;
  }

  sub_237BA0EF0(v296);
  v236 = OUTLINED_FUNCTION_25_30();
  sub_237B9BF3C(v236);
  if (v20)
  {
    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v238 + 8))(a10);
    sub_237BA0F00(v296);

    goto LABEL_5;
  }

  if (v237 != -1)
  {
    sub_237C0602C();
    OUTLINED_FUNCTION_12_0();
    (*(v239 + 8))(a10);
    sub_237BA0F00(v296);
    goto LABEL_5;
  }

LABEL_140:
  __break(1u);
}

uint64_t sub_237B9BEC4(uint64_t a1, char a2)
{
  result = 4;
  switch(a2)
  {
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237B9BF3C(void *a1)
{
  v2 = a1;
  v3 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0893C();

  v5 = sub_237A254D8(v4);
  if (v5)
  {
    v6 = v5;
    v18 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v17 = v2;
    v7 = 0;
    v8 = v18;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383DCAF0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_237AC8A34(v12 > 1, v13 + 1, 1);
      }

      ++v7;
      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v11;
    }

    while (v6 != v7);

    v2 = v17;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  if (*(v8 + 16) > 1uLL)
  {

    return 0;
  }

  v1 = &off_278A42000;
  v14 = [v2 dataType];
  if (v14 == 65552)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

LABEL_22:
    OUTLINED_FUNCTION_66_10();

    return v4;
  }

  if (v14 == 65568)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v14 == 131104)
  {
    if (*(v8 + 16))
    {
      goto LABEL_22;
    }

LABEL_25:

    return 1;
  }

  if (v14 == 65600)
  {
    if (!*(v8 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_28:
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1E140);
  [v2 v1[305]];
  type metadata accessor for MLMultiArrayDataType(0);
  sub_237C0907C();
  v16 = OUTLINED_FUNCTION_57_11();
  MEMORY[0x2383DC360](v16);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237B9C29C(uint64_t a1)
{
  v92 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8F0, &qword_237C152E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v90 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8F8, &qword_237C152E8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - v7;
  v101 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  sub_2379D9224(&qword_27DE9D900, &qword_27DE9B130, &qword_237C0CA28, MEMORY[0x277CE18F0]);
  v91 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v95 = sub_2379D9224(&qword_27DE9D908, &qword_27DE9D8F0, &qword_237C152E0, MEMORY[0x277CE18B0]);
  v96 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v93 = v8;
  v94 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v8[v96] == v101)
  {
    sub_237A7B808(v8, &qword_27DE9D8F8, &qword_237C152E8);

    sub_237B98F7C(v54, v55, v56, v57, v58, v59, v60, v61, v90, v91);
    v63 = v62;

    v64 = 0;
    v96 = *(v63 + 16);
    v97 = v63;
    v65 = (v63 + 40);
    v103 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v96 == v64)
      {
        (*(*(v91 - 8) + 8))(v92);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v103;
      }

      if (v64 >= *(v97 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_43;
      }

      v99 = v64;
      v26 = *(v65 - 1);
      v66 = *v65;

      sub_237ACAC78(v26, v66);
      if ((v67 & 1) == 0)
      {
        goto LABEL_44;
      }

      v100 = v66;

      v69 = sub_237B99CB4(v68);

      v70 = sub_237B9FEA0(v69);
      if (v71 == -1)
      {
        goto LABEL_38;
      }

      v72 = v70;
      v73 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC1FD4(0, *(v103 + 16) + 1, 1, v103);
        v103 = v81;
      }

      v76 = *(v103 + 16);
      v75 = *(v103 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_237BC1FD4(v75 > 1, v76 + 1, 1, v103);
        v103 = v82;
      }

      v77 = v103;
      *(v103 + 16) = v76 + 1;
      v78 = v77 + 32 * v76;
      v79 = v99;
      v80 = v100;
      *(v78 + 32) = v98;
      *(v78 + 40) = v80;
      *(v78 + 48) = v72;
      *(v78 + 56) = v73;
      v65 += 2;
      v64 = v79 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v15 = sub_237C08B9C();
    v103 = v11;
    v16 = v13;
    v17 = v12;
    v19 = *v18;

    v15(&v101, 0);
    sub_237C08B6C();
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v98 = v19 + 64;
    v99 = v19;
    v23 = *(v19 + 32);
    v12 = v17;
    v13 = v16;
    v11 = v103;
    v24 = 1 << v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v97 = v27;
    if ((v25 & v21) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = (*(v99 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v100 = *(*(v99 + 56) + 8 * v29);

      sub_237A560B8(v11);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_237BA0370;
      *(v33 + 24) = 0;
      v103 = v33;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v101 = v14;
      v34 = sub_237ACAC78(v32, v31);
      if (__OFADD__(v14[2], (v35 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D910, &unk_237C152F0);
      v38 = sub_237C090AC();
      v14 = v101;
      if (v38)
      {
        v39 = sub_237ACAC78(v32, v31);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_45;
        }

        v36 = v39;
      }

      if ((v37 & 1) == 0)
      {
        v41 = (*(v103 + 16))();
        v14[(v36 >> 6) + 8] |= 1 << v36;
        v42 = (v14[6] + 16 * v36);
        *v42 = v32;
        v42[1] = v31;
        *(v14[7] + 8 * v36) = v41;
        v43 = v14[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_41;
        }

        v14[2] = v45;
      }

      v46 = v14[7];
      v47 = *(v46 + 8 * v36);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 8 * v36) = v47;
      if ((v48 & 1) == 0)
      {
        sub_237BC0EB4(0, *(v47 + 16) + 1, 1, v47);
        v47 = v52;
        *(v46 + 8 * v36) = v52;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_237BC0EB4(v49 > 1, v50 + 1, 1, v47);
        *(v46 + 8 * v36) = v53;
      }

      v26 &= v26 - 1;

      v51 = *(v46 + 8 * v36);
      *(v51 + 16) = v50 + 1;
      *(v51 + 8 * v50 + 32) = v100;
      v12 = sub_237BA2F54;
      v11 = sub_237BA0370;
      v13 = v103;
      v27 = v97;
      v22 = v98;
    }

    while (v26);
LABEL_7:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v8 = v93;
        goto LABEL_2;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v26, v100);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v84 = v91;
    v83 = v92;
    v85 = sub_237C05F0C();
    MEMORY[0x2383DC360](v85);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v86 = v101;
    v87 = v102;
    sub_2379E8AF0();
    swift_allocError();
    *v88 = v86;
    *(v88 + 8) = v87;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0;
    swift_willThrow();
    (*(*(v84 - 8) + 8))(v83, v84);

    sub_237A560B8(v11);
    sub_237A560B8(v12);
    return v103;
  }

  return result;
}

uint64_t sub_237B9CB58(uint64_t a1)
{
  v91 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D918, &qword_237C15300);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v89 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D920, &qword_237C15308);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v89 - v7;
  v100 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B178, &qword_237C15200);
  sub_2379D9224(&qword_27DE9D928, &qword_27DE9B178, &qword_237C15200, MEMORY[0x277CE18F0]);
  v90 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v94 = sub_2379D9224(&qword_27DE9D930, &qword_27DE9D918, &qword_237C15300, MEMORY[0x277CE18B0]);
  v95 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v92 = v8;
  v93 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v8[v95] == v100)
  {
    sub_237A7B808(v8, &qword_27DE9D920, &qword_237C15308);

    sub_237B98F7C(v53, v54, v55, v56, v57, v58, v59, v60, v89, v90);
    v62 = v61;

    v63 = 0;
    v95 = *(v62 + 16);
    v96 = v62;
    v64 = (v62 + 40);
    v102 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v95 == v63)
      {
        (*(*(v90 - 8) + 8))(v91);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v102;
      }

      if (v63 >= *(v96 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_43;
      }

      v98 = v63;
      v26 = *(v64 - 1);
      v65 = *v64;

      sub_237ACAC78(v26, v65);
      if ((v66 & 1) == 0)
      {
        goto LABEL_44;
      }

      v99 = v65;

      v68 = sub_237B99BA8(v67);

      v69 = sub_237B9FEA0(v68);
      if (v70 == -1)
      {
        goto LABEL_38;
      }

      v71 = v69;
      v72 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC1FD4(0, *(v102 + 16) + 1, 1, v102);
        v102 = v80;
      }

      v75 = *(v102 + 16);
      v74 = *(v102 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_237BC1FD4(v74 > 1, v75 + 1, 1, v102);
        v102 = v81;
      }

      v76 = v102;
      *(v102 + 16) = v75 + 1;
      v77 = v76 + 32 * v75;
      v78 = v98;
      v79 = v99;
      *(v77 + 32) = v97;
      *(v77 + 40) = v79;
      *(v77 + 48) = v71;
      *(v77 + 56) = v72;
      v64 += 2;
      v63 = v78 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v15 = sub_237C08B9C();
    v102 = v11;
    v16 = v13;
    v17 = v12;
    v19 = *v18;

    v15(&v100, 0);
    sub_237C08B6C();
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v97 = v19 + 64;
    v98 = v19;
    v23 = *(v19 + 32);
    v12 = v17;
    v13 = v16;
    v11 = v102;
    v24 = 1 << v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v96 = v27;
    if ((v25 & v21) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = (*(v98 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      LODWORD(v99) = *(*(v98 + 56) + v29);

      sub_237A560B8(v11);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_237BA0370;
      *(v33 + 24) = 0;
      v102 = v33;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v100 = v14;
      v34 = sub_237ACAC78(v32, v31);
      if (__OFADD__(v14[2], (v35 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D938, &qword_237C15310);
      v38 = sub_237C090AC();
      v14 = v100;
      if (v38)
      {
        v39 = sub_237ACAC78(v32, v31);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_45;
        }

        v36 = v39;
      }

      if ((v37 & 1) == 0)
      {
        v41 = (*(v102 + 16))();
        v14[(v36 >> 6) + 8] |= 1 << v36;
        v42 = (v14[6] + 16 * v36);
        *v42 = v32;
        v42[1] = v31;
        *(v14[7] + 8 * v36) = v41;
        v43 = v14[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_41;
        }

        v14[2] = v45;
      }

      v46 = v14[7];
      v47 = *(v46 + 8 * v36);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 8 * v36) = v47;
      if ((v48 & 1) == 0)
      {
        sub_237BC22E4();
        v47 = v51;
        *(v46 + 8 * v36) = v51;
      }

      v49 = *(v47 + 16);
      if (v49 >= *(v47 + 24) >> 1)
      {
        sub_237BC22E4();
        *(v46 + 8 * v36) = v52;
      }

      v26 &= v26 - 1;

      v50 = *(v46 + 8 * v36);
      *(v50 + 16) = v49 + 1;
      *(v50 + v49 + 32) = v99;
      v12 = sub_237BA2F54;
      v11 = sub_237BA0370;
      v13 = v102;
      v27 = v96;
      v22 = v97;
    }

    while (v26);
LABEL_7:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v8 = v92;
        goto LABEL_2;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v100 = 0;
    v101 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v26, v99);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v83 = v90;
    v82 = v91;
    v84 = sub_237C05F0C();
    MEMORY[0x2383DC360](v84);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v85 = v100;
    v86 = v101;
    sub_2379E8AF0();
    swift_allocError();
    *v87 = v85;
    *(v87 + 8) = v86;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 0u;
    *(v87 + 48) = 0;
    swift_willThrow();
    (*(*(v83 - 8) + 8))(v82, v83);

    sub_237A560B8(v11);
    sub_237A560B8(v12);
    return v102;
  }

  return result;
}

uint64_t sub_237B9D414(uint64_t a1)
{
  v92 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D940, &qword_237C15318);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v90 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D948, &qword_237C15320);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v90 - v7;
  v101 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B170, &qword_237C0CA50);
  sub_2379D9224(&qword_27DE9D950, &qword_27DE9B170, &qword_237C0CA50, MEMORY[0x277CE18F0]);
  v91 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v95 = sub_2379D9224(&qword_27DE9D958, &qword_27DE9D940, &qword_237C15318, MEMORY[0x277CE18B0]);
  v96 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v93 = v8;
  v94 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v8[v96] == v101)
  {
    sub_237A7B808(v8, &qword_27DE9D948, &qword_237C15320);

    sub_237B98F7C(v54, v55, v56, v57, v58, v59, v60, v61, v90, v91);
    v63 = v62;

    v64 = 0;
    v96 = *(v63 + 16);
    v97 = v63;
    v65 = (v63 + 40);
    v103 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v96 == v64)
      {
        (*(*(v91 - 8) + 8))(v92);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v103;
      }

      if (v64 >= *(v97 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_43;
      }

      v99 = v64;
      v26 = *(v65 - 1);
      v66 = *v65;

      sub_237ACAC78(v26, v66);
      if ((v67 & 1) == 0)
      {
        goto LABEL_44;
      }

      v100 = v66;

      v69 = sub_237B99A9C(v68);

      v70 = sub_237B9FEA0(v69);
      if (v71 == -1)
      {
        goto LABEL_38;
      }

      v72 = v70;
      v73 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC1FD4(0, *(v103 + 16) + 1, 1, v103);
        v103 = v81;
      }

      v76 = *(v103 + 16);
      v75 = *(v103 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_237BC1FD4(v75 > 1, v76 + 1, 1, v103);
        v103 = v82;
      }

      v77 = v103;
      *(v103 + 16) = v76 + 1;
      v78 = v77 + 32 * v76;
      v79 = v99;
      v80 = v100;
      *(v78 + 32) = v98;
      *(v78 + 40) = v80;
      *(v78 + 48) = v72;
      *(v78 + 56) = v73;
      v65 += 2;
      v64 = v79 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v15 = sub_237C08B9C();
    v103 = v11;
    v16 = v13;
    v17 = v12;
    v19 = *v18;

    v15(&v101, 0);
    sub_237C08B6C();
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v98 = v19 + 64;
    v99 = v19;
    v23 = *(v19 + 32);
    v12 = v17;
    v13 = v16;
    v11 = v103;
    v24 = 1 << v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v97 = v27;
    if ((v25 & v21) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = (*(v99 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      LODWORD(v100) = *(*(v99 + 56) + 4 * v29);

      sub_237A560B8(v11);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_237BA0370;
      *(v33 + 24) = 0;
      v103 = v33;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v101 = v14;
      v34 = sub_237ACAC78(v32, v31);
      if (__OFADD__(v14[2], (v35 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D960, &qword_237C15328);
      v38 = sub_237C090AC();
      v14 = v101;
      if (v38)
      {
        v39 = sub_237ACAC78(v32, v31);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_45;
        }

        v36 = v39;
      }

      if ((v37 & 1) == 0)
      {
        v41 = (*(v103 + 16))();
        v14[(v36 >> 6) + 8] |= 1 << v36;
        v42 = (v14[6] + 16 * v36);
        *v42 = v32;
        v42[1] = v31;
        *(v14[7] + 8 * v36) = v41;
        v43 = v14[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_41;
        }

        v14[2] = v45;
      }

      v46 = v14[7];
      v47 = *(v46 + 8 * v36);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 8 * v36) = v47;
      if ((v48 & 1) == 0)
      {
        sub_237BC21E8(0, *(v47 + 16) + 1, 1, v47);
        v47 = v52;
        *(v46 + 8 * v36) = v52;
      }

      v50 = *(v47 + 16);
      v49 = *(v47 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_237BC21E8(v49 > 1, v50 + 1, 1, v47);
        *(v46 + 8 * v36) = v53;
      }

      v26 &= v26 - 1;

      v51 = *(v46 + 8 * v36);
      *(v51 + 16) = v50 + 1;
      *(v51 + 4 * v50 + 32) = v100;
      v12 = sub_237BA2F54;
      v11 = sub_237BA0370;
      v13 = v103;
      v27 = v97;
      v22 = v98;
    }

    while (v26);
LABEL_7:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v8 = v93;
        goto LABEL_2;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v26, v100);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v84 = v91;
    v83 = v92;
    v85 = sub_237C05F0C();
    MEMORY[0x2383DC360](v85);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v86 = v101;
    v87 = v102;
    sub_2379E8AF0();
    swift_allocError();
    *v88 = v86;
    *(v88 + 8) = v87;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0;
    swift_willThrow();
    (*(*(v84 - 8) + 8))(v83, v84);

    sub_237A560B8(v11);
    sub_237A560B8(v12);
    return v103;
  }

  return result;
}

uint64_t sub_237B9DCD0(uint64_t a1)
{
  v93 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D968, &qword_237C15330);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v91 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D970, &qword_237C15338);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v91 - v7;
  v102 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  sub_2379D9224(&qword_27DE9D978, &qword_27DE9B140, &unk_237C151F0, MEMORY[0x277CE18F0]);
  v92 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v96 = sub_2379D9224(&qword_27DE9D980, &qword_27DE9D968, &qword_237C15330, MEMORY[0x277CE18B0]);
  v97 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v94 = v8;
  v95 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v8[v97] == v102)
  {
    sub_237A7B808(v8, &qword_27DE9D970, &qword_237C15338);

    sub_237B98F7C(v55, v56, v57, v58, v59, v60, v61, v62, v91, v92);
    v64 = v63;

    v65 = 0;
    v96 = *(v64 + 16);
    v97 = v64;
    v66 = (v64 + 40);
    v101 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v96 == v65)
      {
        (*(*(v92 - 8) + 8))(v93);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v101;
      }

      if (v65 >= *(v97 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_43;
      }

      v99 = v65;
      v26 = *(v66 - 1);
      v67 = *v66;

      sub_237ACAC78(v26, v67);
      if ((v68 & 1) == 0)
      {
        goto LABEL_44;
      }

      v100 = v67;

      v70 = sub_237B9998C(v69);

      v71 = sub_237B9FEA0(v70);
      if (v72 == -1)
      {
        goto LABEL_38;
      }

      v73 = v71;
      v74 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC1FD4(0, *(v101 + 16) + 1, 1, v101);
        v101 = v82;
      }

      v77 = *(v101 + 16);
      v76 = *(v101 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_237BC1FD4(v76 > 1, v77 + 1, 1, v101);
        v101 = v83;
      }

      v78 = v101;
      *(v101 + 16) = v77 + 1;
      v79 = v78 + 32 * v77;
      v80 = v99;
      v81 = v100;
      *(v79 + 32) = v98;
      *(v79 + 40) = v81;
      *(v79 + 48) = v73;
      *(v79 + 56) = v74;
      v66 += 2;
      v65 = v80 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v15 = sub_237C08B9C();
    v101 = v11;
    v16 = v13;
    v17 = v12;
    v19 = *v18;

    v15(&v102, 0);
    sub_237C08B6C();
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v99 = v19 + 64;
    v100 = v19;
    v23 = *(v19 + 32);
    v12 = v17;
    v13 = v16;
    v11 = v101;
    v24 = 1 << v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v98 = v27;
    if ((v25 & v21) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = (*(v100 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(*(v100 + 56) + 8 * v29);

      sub_237A560B8(v11);
      v34 = swift_allocObject();
      *(v34 + 16) = sub_237BA0370;
      *(v34 + 24) = 0;
      v101 = v34;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v102 = v14;
      v35 = sub_237ACAC78(v32, v31);
      if (__OFADD__(v14[2], (v36 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
      v39 = sub_237C090AC();
      v14 = v102;
      if (v39)
      {
        v40 = sub_237ACAC78(v32, v31);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_45;
        }

        v37 = v40;
      }

      if ((v38 & 1) == 0)
      {
        v42 = (*(v101 + 16))();
        v14[(v37 >> 6) + 8] |= 1 << v37;
        v43 = (v14[6] + 16 * v37);
        *v43 = v32;
        v43[1] = v31;
        *(v14[7] + 8 * v37) = v42;
        v44 = v14[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_41;
        }

        v14[2] = v46;
      }

      v47 = v14[7];
      v48 = *(v47 + 8 * v37);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 8 * v37) = v48;
      if ((v49 & 1) == 0)
      {
        sub_237BC0EDC(0, *(v48 + 16) + 1, 1, v48);
        v48 = v53;
        *(v47 + 8 * v37) = v53;
      }

      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_237BC0EDC(v50 > 1, v51 + 1, 1, v48);
        *(v47 + 8 * v37) = v54;
      }

      v26 &= v26 - 1;

      v52 = *(v47 + 8 * v37);
      *(v52 + 16) = v51 + 1;
      *(v52 + 8 * v51 + 32) = v33;
      v12 = sub_237BA24E8;
      v11 = sub_237BA0370;
      v13 = v101;
      v27 = v98;
      v22 = v99;
    }

    while (v26);
LABEL_7:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v8 = v94;
        goto LABEL_2;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v102 = 0;
    v103 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v26, v100);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v85 = v92;
    v84 = v93;
    v86 = sub_237C05F0C();
    MEMORY[0x2383DC360](v86);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v87 = v102;
    v88 = v103;
    sub_2379E8AF0();
    swift_allocError();
    *v89 = v87;
    *(v89 + 8) = v88;
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0;
    swift_willThrow();
    (*(*(v85 - 8) + 8))(v84, v85);

    sub_237A560B8(v11);
    sub_237A560B8(v12);
    return v101;
  }

  return result;
}

uint64_t sub_237B9E58C(uint64_t a1)
{
  v93 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D988, &qword_237C15348);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v91 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D990, &qword_237C15350);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v91 - v7;
  v102 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  sub_2379D9224(&qword_27DE9D998, &qword_27DE9B138, &qword_237C0CA30, MEMORY[0x277CE18F0]);
  v92 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v96 = sub_2379D9224(&qword_27DE9D9A0, &qword_27DE9D988, &qword_237C15348, MEMORY[0x277CE18B0]);
  v97 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v94 = v8;
  v95 = v1;
LABEL_2:
  sub_237C08B5C();
  if (*&v8[v97] == v102)
  {
    sub_237A7B808(v8, &qword_27DE9D990, &qword_237C15350);

    sub_237B98F7C(v55, v56, v57, v58, v59, v60, v61, v62, v91, v92);
    v64 = v63;

    v65 = 0;
    v96 = *(v64 + 16);
    v97 = v64;
    v66 = (v64 + 40);
    v101 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v96 == v65)
      {
        (*(*(v92 - 8) + 8))(v93);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v101;
      }

      if (v65 >= *(v97 + 16))
      {
        break;
      }

      if (!v14[2])
      {
        goto LABEL_43;
      }

      v99 = v65;
      v26 = *(v66 - 1);
      v67 = *v66;

      sub_237ACAC78(v26, v67);
      if ((v68 & 1) == 0)
      {
        goto LABEL_44;
      }

      v100 = v67;

      v70 = sub_237B9987C(v69);

      v71 = sub_237B9FEA0(v70);
      if (v72 == -1)
      {
        goto LABEL_38;
      }

      v73 = v71;
      v74 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC1FD4(0, *(v101 + 16) + 1, 1, v101);
        v101 = v82;
      }

      v77 = *(v101 + 16);
      v76 = *(v101 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_237BC1FD4(v76 > 1, v77 + 1, 1, v101);
        v101 = v83;
      }

      v78 = v101;
      *(v101 + 16) = v77 + 1;
      v79 = v78 + 32 * v77;
      v80 = v99;
      v81 = v100;
      *(v79 + 32) = v98;
      *(v79 + 40) = v81;
      *(v79 + 48) = v73;
      *(v79 + 56) = v74;
      v66 += 2;
      v65 = v80 + 1;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v15 = sub_237C08B9C();
    v101 = v11;
    v16 = v13;
    v17 = v12;
    v19 = *v18;

    v15(&v102, 0);
    sub_237C08B6C();
    v20 = 0;
    v22 = v19 + 64;
    v21 = *(v19 + 64);
    v99 = v19 + 64;
    v100 = v19;
    v23 = *(v19 + 32);
    v12 = v17;
    v13 = v16;
    v11 = v101;
    v24 = 1 << v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v21;
    v27 = (v24 + 63) >> 6;
    v98 = v27;
    if ((v25 & v21) == 0)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_11:
      v29 = __clz(__rbit64(v26)) | (v20 << 6);
      v30 = (*(v100 + 48) + 16 * v29);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(*(v100 + 56) + 4 * v29);

      sub_237A560B8(v11);
      v34 = swift_allocObject();
      *(v34 + 16) = sub_237BA0370;
      *(v34 + 24) = 0;
      v101 = v34;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v102 = v14;
      v35 = sub_237ACAC78(v32, v31);
      if (__OFADD__(v14[2], (v36 & 1) == 0))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9A8, &qword_237C15358);
      v39 = sub_237C090AC();
      v14 = v102;
      if (v39)
      {
        v40 = sub_237ACAC78(v32, v31);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_45;
        }

        v37 = v40;
      }

      if ((v38 & 1) == 0)
      {
        v42 = (*(v101 + 16))();
        v14[(v37 >> 6) + 8] |= 1 << v37;
        v43 = (v14[6] + 16 * v37);
        *v43 = v32;
        v43[1] = v31;
        *(v14[7] + 8 * v37) = v42;
        v44 = v14[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_41;
        }

        v14[2] = v46;
      }

      v47 = v14[7];
      v48 = *(v47 + 8 * v37);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 8 * v37) = v48;
      if ((v49 & 1) == 0)
      {
        sub_237BC21C0(0, *(v48 + 16) + 1, 1, v48);
        v48 = v53;
        *(v47 + 8 * v37) = v53;
      }

      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_237BC21C0(v50 > 1, v51 + 1, 1, v48);
        *(v47 + 8 * v37) = v54;
      }

      v26 &= v26 - 1;

      v52 = *(v47 + 8 * v37);
      *(v52 + 16) = v51 + 1;
      *(v52 + 4 * v51 + 32) = v33;
      v12 = sub_237BA2F54;
      v11 = sub_237BA0370;
      v13 = v101;
      v27 = v98;
      v22 = v99;
    }

    while (v26);
LABEL_7:
    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        v8 = v94;
        goto LABEL_2;
      }

      v26 = *(v22 + 8 * v28);
      ++v20;
      if (v26)
      {
        v20 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_38:

    v102 = 0;
    v103 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v26, v100);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v85 = v92;
    v84 = v93;
    v86 = sub_237C05F0C();
    MEMORY[0x2383DC360](v86);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v87 = v102;
    v88 = v103;
    sub_2379E8AF0();
    swift_allocError();
    *v89 = v87;
    *(v89 + 8) = v88;
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0;
    swift_willThrow();
    (*(*(v85 - 8) + 8))(v84, v85);

    sub_237A560B8(v11);
    sub_237A560B8(v12);
    return v101;
  }

  return result;
}

uint64_t sub_237B9EE48(uint64_t a1)
{
  v92 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9B0, &qword_237C15360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v91 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9B8, &qword_237C15368);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v91 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  *&v103 = sub_237C085AC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  sub_2379D9224(&qword_27DE9D9C0, &qword_27DE9B168, &unk_237C151E0, MEMORY[0x277CE18F0]);
  v91 = v9;
  sub_237C05EAC();

  (*(v2 + 16))(v8, v4, v1);
  v10 = *(v6 + 44);
  v95 = sub_2379D9224(&qword_27DE9D9C8, &qword_27DE9D9B0, &qword_237C15360, MEMORY[0x277CE18B0]);
  v96 = v10;
  sub_237C08B2C();
  (*(v2 + 8))(v4, v1);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D84F98];
  v93 = v8;
  v94 = v1;
LABEL_2:
  sub_237C08B5C();
  v15 = *&v8[v96];
  *&v101 = v12;
  if (v15 == v103)
  {
    sub_237A7B808(v8, &qword_27DE9D9B8, &qword_237C15368);

    sub_237B98F7C(v56, v57, v58, v59, v60, v61, v62, v63, v91, v92);
    v65 = v64;

    v66 = 0;
    v96 = *(v65 + 16);
    v97 = v65;
    v67 = (v65 + 40);
    *&v100 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v96 == v66)
      {
        (*(*(v91 - 8) + 8))(v92);

        sub_237A560B8(v11);
        sub_237A560B8(v12);
        return v100;
      }

      if (v66 >= *(v97 + 16))
      {
        goto LABEL_43;
      }

      if (!v14[2])
      {
        goto LABEL_44;
      }

      v68 = *(v67 - 1);
      v69 = *v67;
      v98 = v67;

      sub_237ACAC78(v68, v69);
      if ((v70 & 1) == 0)
      {
        goto LABEL_45;
      }

      v99 = v68;

      v72 = sub_237B997AC(v71);

      v73 = sub_237B9FEA0(v72);
      if (v74 == -1)
      {
        break;
      }

      v75 = v73;
      v76 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237BC1FD4(0, *(v100 + 16) + 1, 1, v100);
        *&v100 = v82;
      }

      v78 = *(v100 + 16);
      v77 = *(v100 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_237BC1FD4(v77 > 1, v78 + 1, 1, v100);
        *&v100 = v83;
      }

      v80 = v99;
      v79 = v100;
      *(v100 + 16) = v78 + 1;
      v81 = v79 + 32 * v78;
      *(v81 + 32) = v80;
      *(v81 + 40) = v69;
      *(v81 + 48) = v75;
      *(v81 + 56) = v76;
      v67 = v98 + 2;
      ++v66;
      v12 = v101;
    }

    *&v103 = 0;
    *(&v103 + 1) = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C1E160);
    MEMORY[0x2383DC360](v99, v69);

    MEMORY[0x2383DC360](0x6C6F63206E692027, 0xED000027206E6D75);
    v84 = v91;
    v85 = v12;
    v86 = v92;
    v87 = sub_237C05F0C();
    MEMORY[0x2383DC360](v87);

    MEMORY[0x2383DC360](0xD000000000000028, 0x8000000237C1E180);
    v88 = v103;
    sub_2379E8AF0();
    swift_allocError();
    *v89 = v88;
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0;
    swift_willThrow();
    (*(*(v84 - 8) + 8))(v86, v84);

    sub_237A560B8(v11);
    sub_237A560B8(v85);
    return v100;
  }

  else
  {
    v16 = sub_237C08B9C();
    v17 = v11;
    v18 = v13;
    v20 = *v19;

    v16(&v103, 0);
    sub_237C08B6C();
    v21 = 0;
    v23 = (v20 + 64);
    v22 = *(v20 + 64);
    v98 = (v20 + 64);
    v99 = v20;
    v24 = *(v20 + 32);
    v13 = v18;
    v11 = v17;
    v12 = v101;
    v25 = 1 << v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;
    v97 = v28;
    if ((v26 & v22) == 0)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_11:
      v30 = __clz(__rbit64(v27)) | (v21 << 6);
      v31 = (*(v99 + 48) + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      sub_2379F6D68(*(v99 + 56) + 32 * v30, &v103);
      v100 = v103;
      v101 = v104;

      if (!v33)
      {
LABEL_25:

        v8 = v93;
        goto LABEL_2;
      }

      v103 = v100;
      v104 = v101;
      sub_237A560B8(v11);
      sub_2379F6D68(&v103, v102);
      v34 = swift_allocObject();
      *(v34 + 16) = sub_237BA0370;
      *(v34 + 24) = 0;
      *&v101 = v34;
      sub_237A560B8(v12);
      swift_isUniquelyReferenced_nonNull_native();
      v105 = v14;
      v35 = sub_237ACAC78(v32, v33);
      if (__OFADD__(v14[2], (v36 & 1) == 0))
      {
        break;
      }

      v37 = v35;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9D0, &qword_237C15370);
      v39 = sub_237C090AC();
      v14 = v105;
      if (v39)
      {
        v40 = sub_237ACAC78(v32, v33);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_46;
        }

        v37 = v40;
      }

      if ((v38 & 1) == 0)
      {
        v42 = (*(v101 + 16))();
        v14[(v37 >> 6) + 8] |= 1 << v37;
        v43 = (v14[6] + 16 * v37);
        *v43 = v32;
        v43[1] = v33;
        *(v14[7] + 8 * v37) = v42;
        v44 = v14[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_42;
        }

        v14[2] = v46;
      }

      v47 = v14[7];
      v48 = *(v47 + 8 * v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 8 * v37) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC20F8();
        v48 = v54;
        *(v47 + 8 * v37) = v54;
      }

      v50 = *(v48 + 16);
      if (v50 >= *(v48 + 24) >> 1)
      {
        sub_237BC20F8();
        *(v47 + 8 * v37) = v55;
      }

      v27 &= v27 - 1;

      sub_237A7B808(&v103, &qword_27DE9A998, &unk_237C0C100);
      v51 = *(v47 + 8 * v37);
      *(v51 + 16) = v50 + 1;
      v52 = v51 + 32 * v50;
      v53 = v102[1];
      *(v52 + 32) = v102[0];
      *(v52 + 48) = v53;
      v12 = sub_237BA2F54;
      v11 = sub_237BA0370;
      v13 = v101;
      v28 = v97;
      v23 = v98;
      if (!v27)
      {
LABEL_7:
        while (1)
        {
          v29 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v29 >= v28)
          {
            goto LABEL_25;
          }

          v27 = v23[v29];
          ++v21;
          if (v27)
          {
            v21 = v29;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_237C0932C();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B9F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v10 = a4;
  v12 = a1 == a5 && a2 == a6;
  if (!v12 && (sub_237C0929C() & 1) == 0)
  {
    return 0;
  }

  return sub_237B9FC2C(a3, v10, a7, v8);
}

uint64_t sub_237B9F808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6373654465707974 && a2 == 0xEE00726F74706972)
  {

    return 1;
  }

  else
  {
    v7 = sub_237C0929C();

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

uint64_t sub_237B9F8D8(char a1)
{
  if (a1)
  {
    return 0x6373654465707974;
  }

  else
  {
    return 1701667182;
  }
}

void sub_237B9F914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_74();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA58, &qword_237C15830);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_37_15();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_237BA2C34();
  sub_237C0949C();
  sub_237C091EC();
  if (!v24)
  {
    sub_237BA2CDC();
    sub_237C0921C();
  }

  v28 = OUTLINED_FUNCTION_58_0();
  v29(v28);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237B9FA84(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9DA40, &qword_237C15828);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36_0();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_237BA2C34();
  OUTLINED_FUNCTION_45_17(&type metadata for ColumnDescriptor.CodingKeys, v6, v5);
  if (!v1)
  {
    OUTLINED_FUNCTION_15_41();
    v4 = sub_237C0918C();
    sub_237BA2C88();
    OUTLINED_FUNCTION_19_31();
    sub_237C091BC();
    v8 = OUTLINED_FUNCTION_4_70();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237B9FC2C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 3:
      if (a4 != 3)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    case 4:
      if (a4 != 4)
      {
        goto LABEL_25;
      }

      result = sub_237AC703C(a1, a3);
      break;
    case 5:
      if (a4 != 5)
      {
        goto LABEL_25;
      }

      result = sub_237AC70C8(a1, a3);
      break;
    case 6:
      switch(a1)
      {
        case 1:
          if (a4 != 6 || a3 != 1)
          {
            goto LABEL_25;
          }

          break;
        case 2:
          if (a4 != 6 || a3 != 2)
          {
            goto LABEL_25;
          }

          break;
        case 3:
          if (a4 != 6 || a3 != 3)
          {
            goto LABEL_25;
          }

          break;
        default:
          if (a4 != 6 || a3 != 0)
          {
            goto LABEL_25;
          }

          break;
      }

      return 1;
    default:
      if (a4)
      {
LABEL_25:
        result = 0;
      }

      else
      {
LABEL_11:
        result = a1 == a3;
      }

      break;
  }

  return result;
}

uint64_t sub_237B9FD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237B9F808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237B9FD94(uint64_t a1)
{
  v2 = sub_237BA2C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237B9FDD0(uint64_t a1)
{
  v2 = sub_237BA2C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237B9FE0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237B9FA84(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_237B9FEA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = MEMORY[0x277D84F90];
    v5 = a1 + 32;
    v6 = *(a1 + 16);
    do
    {
      sub_2379F6D68(v5, &v44);
      v40 = v44;
      v41 = v45;
      if (*(&v45 + 1))
      {
        sub_2379DAD24(&v40, &v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237BC2004(0, *(v4 + 16) + 1, 1, v4);
          v4 = v9;
        }

        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_237BC2004(v7 > 1, v8 + 1, 1, v4);
          v4 = v10;
        }

        *(v4 + 16) = v8 + 1;
        sub_2379DAD24(&v42, (v4 + 32 * v8 + 32));
      }

      else
      {
        sub_237A7B808(&v40, &qword_27DE9A998, &unk_237C0C100);
      }

      v5 += 32;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  sub_237B3B4C8(v4, &v42);

  if (!v43)
  {

    sub_237A7B808(&v42, &qword_27DE9A998, &unk_237C0C100);
    return 0;
  }

  sub_2379DAD24(&v42, &v44);
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  DynamicType = swift_getDynamicType();
  if (!v2)
  {
LABEL_23:
    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v44);

      return 0;
    }

    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v44);

      return 2;
    }

    if (swift_dynamicCastMetatype())
    {
      __swift_destroy_boxed_opaque_existential_1(&v44);

      return 1;
    }

    if (swift_dynamicCastMetatype() || (sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0), swift_dynamicCastMetatype()))
    {
      __swift_destroy_boxed_opaque_existential_1(&v44);

      return 3;
    }

LABEL_34:
    if (swift_dynamicCastMetatype())
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v39 = v3;
        sub_237AC8A74();
        v18 = v3;
        v19 = a1 + 32;
        do
        {
          sub_2379F6D68(v19, &v42);
          sub_2379F6D68(&v42, &v37);
          if (v38)
          {
            sub_2379DAD24(&v37, &v40);
            swift_dynamicCast();
            v20 = v35;
            v21 = v36;
          }

          else
          {
            sub_237A7B808(&v37, &qword_27DE9A998, &unk_237C0C100);
            v20 = 0;
            v21 = 0xE000000000000000;
          }

          sub_237A7B808(&v42, &qword_27DE9A998, &unk_237C0C100);
          v39 = v18;
          v22 = *(v18 + 16);
          v23 = v22 + 1;
          if (v22 >= *(v18 + 24) >> 1)
          {
            v34 = v22 + 1;
            sub_237AC8A74();
            v23 = v22 + 1;
            v18 = v39;
          }

          *(v18 + 16) = v23;
          v24 = v18 + 16 * v22;
          *(v24 + 32) = v20;
          *(v24 + 40) = v21;
          v19 += 32;
          --v17;
        }

        while (v17);
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

      v25 = sub_237B42F98(v18);
      sub_237B98EF8(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35);
      v16 = v33;

      __swift_destroy_boxed_opaque_existential_1(&v44);
      return v16;
    }

LABEL_44:
    __swift_destroy_boxed_opaque_existential_1(&v44);

    return 0;
  }

  v12 = 0;
  v13 = a1 + 32;
  while (1)
  {
    if (v12 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_2379F6D68(v13, &v42);
    if (v43)
    {
      break;
    }

    sub_237A7B808(&v42, &qword_27DE9A998, &unk_237C0C100);
LABEL_22:
    ++v12;
    v13 += 32;
    if (v2 == v12)
    {
      goto LABEL_23;
    }
  }

  result = sub_2379F6D68(&v42, &v40);
  if (*(&v41 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    v15 = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_237A7B808(&v42, &qword_27DE9A998, &unk_237C0C100);
    if (v15 != DynamicType)
    {
      goto LABEL_44;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t sub_237BA037C(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C0916C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237BA03C8(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = OUTLINED_FUNCTION_24_32();
      break;
    case 9:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237BA0504(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C0916C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237BA0550(char a1)
{
  result = 0x54746E656D656C65;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = OUTLINED_FUNCTION_24_32();
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237BA0604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237BA037C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237BA0634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237BA03C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_237BA0734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237BA0504(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237BA0764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237BA0550(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_237BA0798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237BA0504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237BA07C0(uint64_t a1)
{
  v2 = sub_237BA2518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237BA07FC(uint64_t a1)
{
  v2 = sub_237BA2518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237BA0838(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9D8, &qword_237C15378);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36_0();
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_237BA2518();
  OUTLINED_FUNCTION_45_17(&type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, v6, v5);
  if (!v1)
  {
    sub_237BA256C();
    OUTLINED_FUNCTION_19_31();
    sub_237C091BC();
    switch(v22)
    {
      case 1:
        v16 = OUTLINED_FUNCTION_4_70();
        v17(v16);
        v4 = 1;
        break;
      case 2:
        v12 = OUTLINED_FUNCTION_4_70();
        v13(v12);
        v4 = 2;
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_4_70();
        v15(v14);
        v4 = 3;
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_15_41();
        v4 = sub_237C091AC();
        v18 = OUTLINED_FUNCTION_4_70();
        v19(v18);
        break;
      case 8:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
        sub_237BA2614(&qword_27DE9D9F0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
        OUTLINED_FUNCTION_19_31();
        sub_237C091BC();
        v20 = OUTLINED_FUNCTION_4_70();
        v21(v20);
        v4 = v22;
        break;
      case 9:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
        sub_237B188AC(&qword_27DE9D128, sub_237B18858, MEMORY[0x277D83978]);
        OUTLINED_FUNCTION_19_31();
        sub_237C091BC();
        v10 = OUTLINED_FUNCTION_4_70();
        v11(v10);
        v4 = v22;
        break;
      default:
        v8 = OUTLINED_FUNCTION_4_70();
        v9(v8);
        v4 = 0;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

void sub_237BA0C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_74();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D9F8, &unk_237C15380);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_37_15();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_237BA2518();
  sub_237C0949C();
  sub_237B9BEC4(v27, v25);
  sub_237BA25C0();
  sub_237C0921C();
  if (!v23)
  {
    switch(v25)
    {
      case 4:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
        sub_237BA2614(&qword_27DE9DA08, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
        goto LABEL_6;
      case 5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D120, &qword_237C130E0);
        sub_237B188AC(&qword_27DE9D138, sub_237B18924, MEMORY[0x277D83948]);
LABEL_6:
        sub_237C0921C();
        break;
      case 6:
        break;
      default:
        sub_237C0920C();
        break;
    }
  }

  v31 = OUTLINED_FUNCTION_58_0();
  v32(v31);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237BA0EA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237BA0838(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

id sub_237BA0EF0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_237BA0F00(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_237BA0F10(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_237BA0F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237BA0F80(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC48();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_237BA1058(v6);
  *a1 = v2;
  return result;
}

void sub_237BA0FEC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237A1FC80();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v4;
  sub_237BA114C(v5);
  *a1 = v2;
}

uint64_t sub_237BA1058(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_237C0923C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237AE7450(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_237AE732C(0, v2, 1, a1);
  }

  return result;
}

void sub_237BA114C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_237C0923C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_237C0898C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_237AE78F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_237BA1240();
  }
}

void sub_237BA1240()
{
  OUTLINED_FUNCTION_74();
  if (v2 != v1)
  {
    v4 = v2;
    v5 = v1;
    v6 = *v3;
    v7 = *v3 + 16 * v2;
    v8 = v0 - v2;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      v10 = *v9;
      v11 = v9[1];
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = v10 == *(v13 - 2) && v11 == *(v13 - 1);
        if (v14 || (sub_237C0929C() & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v10 = *v13;
        v11 = v13[1];
        *v13 = *(v13 - 1);
        *(v13 - 1) = v11;
        *(v13 - 2) = v10;
        v13 -= 2;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != v5)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_73();
}

char *sub_237BA130C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_237BA1338(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9D8E8, &qword_237C152D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_237BA1438(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v3;
    a1[1] = v5;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    OUTLINED_FUNCTION_55_11();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v5 == sub_237A2E9F4())
      {
        v7 = v9;
        goto LABEL_13;
      }

      v11 = sub_237A2E9C8(v5);
      if (v4)
      {
        goto LABEL_16;
      }

      v12 = v11;
      v5 = sub_237B6A888(v5);
      *(a2 + 8 * v9++) = v12;
      if (v10 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237BA1520(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_39_15();
  v6 = v5;
  v8 = v7;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v9 = v4;
  if (!v4)
  {
LABEL_12:
    *v8 = v6;
    v8[1] = v9;
    OUTLINED_FUNCTION_38_19();
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v3;
    v11 = 0;
    v2 = 0;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v13 = sub_237A2E9F4();
      if (v11 == OUTLINED_FUNCTION_44_16(v13))
      {
        v9 = v11;
        goto LABEL_12;
      }

      sub_237A2E9C8(v11);
      v14 = sub_237A2DE60();
      v16 = v15;

      v17 = sub_237A2E9F4();
      if (v11 >= OUTLINED_FUNCTION_44_16(v17))
      {
        goto LABEL_14;
      }

      *v10 = v14;
      v10[1] = v16;
      v10 += 2;
      ++v11;
      if (v12 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);

  sub_237C08EDC();

  OUTLINED_FUNCTION_46_17();
  v18 = sub_237C0924C();
  MEMORY[0x2383DC360](v18);

  v19 = OUTLINED_FUNCTION_57_11();
  MEMORY[0x2383DC360](v19);
  OUTLINED_FUNCTION_7_5("Fatal error");
  __break(1u);
}

void sub_237BA16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_14();
  a23 = v26;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  if (!v33)
  {
    v34 = 0;
    goto LABEL_14;
  }

  v34 = v27;
  if (!v27)
  {
LABEL_14:
    *v32 = v30;
    v32[1] = v34;
    OUTLINED_FUNCTION_59_12();
    return;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_55_11();
    while (!__OFADD__(v25, 1))
    {
      v35 = sub_237A2E9F4();
      if (v25 == OUTLINED_FUNCTION_44_16(v35))
      {
        v34 = v25;
        goto LABEL_14;
      }

      v36 = sub_237A2E9C8(v25);
      if (v24)
      {
        goto LABEL_18;
      }

      sub_237AFC548(v36, &a10);
      v37 = sub_237A2E9F4();
      if (v25 >= OUTLINED_FUNCTION_44_16(v37))
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_13();
      if (v38)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_1_44();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237BA1788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v7 = a3;
  if (!a3)
  {
LABEL_15:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v7;
    return v7;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v23 = a1;
    v24 = a5;
    v9 = 0;
    while (!__OFADD__(v9, 1))
    {
      v10 = sub_237A2E9F4();
      v11 = OUTLINED_FUNCTION_44_16(v10);
      v12 = sub_237A2E9F4();
      if (OUTLINED_FUNCTION_44_16(v12) < 0)
      {
        goto LABEL_17;
      }

      v13 = sub_237A2E9F4();
      v14 = OUTLINED_FUNCTION_44_16(v13);
      if (v11 < 0 || v14 < v11)
      {
        goto LABEL_18;
      }

      if (v9 == v11)
      {
        v7 = v9;
LABEL_14:
        a1 = v23;
        a5 = v24;
        goto LABEL_15;
      }

      sub_237A2E9C8(v9);
      v15 = sub_237A2DE60();
      v17 = v16;

      v18 = sub_237A2E9C8(v9);
      sub_237AFC548(v18, v26);
      v19 = v26[0];
      v20 = v26[1];
      v21 = v27;

      sub_2379E9288(v19, v20, v21);

      sub_2379E8CE8(v19, v20, v21);
      *v8 = v15;
      *(v8 + 8) = v17;
      *(v8 + 16) = v19;
      *(v8 + 24) = v20;
      *(v8 + 32) = v21;
      v8 += 40;
      if (++v9 == v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237BA19E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v5 = a4;
  v29 = a4;
  v30 = a5 & 1;
  v31 = 0;
  if (!a2)
  {
    v6 = 0;
    v8 = 0;
LABEL_27:
    *a1 = v5;
    *(a1 + 8) = a5 & 1;
    *(a1 + 16) = v6;
    return v8;
  }

  v6 = a3;
  if (!a3)
  {
    v8 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v21 = a1;
    v8 = 0;
    v26 = a5;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (a5)
      {
        *&v27 = v5;
        sub_2379DBCF4(v5, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        v10 = sub_237C0925C();
        if (v10)
        {
          v11 = v10;
          sub_2379DBC9C(v5, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v11 = swift_allocError();
          *v13 = v5;
        }

        sub_2379F8918(v11, v23, 1);
        if (!v8)
        {
          v6 = v31;
          goto LABEL_25;
        }
      }

      else
      {
        sub_2379DBCF4(v5, 0);
        v12 = sub_237A30330();
        v23 = sub_237A3035C();
        sub_2379DBC9C(v5, 0);
        if (v8 == v12)
        {
          v6 = v8;
LABEL_25:
          v5 = v29;
          a5 = v30;
          goto LABEL_26;
        }
      }

      MLDataTable.Rows.subscript.getter(v8, &v27);
      v25 = v27;
      v14 = v28;
      if (v26)
      {
        *&v27 = v5;
        v15 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        v16 = sub_237C0925C();
        if (v16)
        {
          v17 = v16;
          sub_2379DBC9C(v5, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v17 = swift_allocError();
          *v19 = v5;
        }

        sub_2379F8918(v17, v22, 1);
        v18 = 0;
      }

      else
      {

        v18 = sub_237A30330();
        v22 = sub_237A3035C();
        sub_2379DBC9C(v5, 0);
      }

      if (v8 >= v18)
      {
        goto LABEL_29;
      }

      *v7 = v25;
      *(v7 + 16) = v14;
      v7 += 24;
      ++v8;
      v31 = v9;
      v6 = a3;
      a5 = v26;
      if (v9 == a3)
      {
        v5 = v29;
        a5 = v30;
        v8 = a3;
LABEL_26:
        a1 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237BA1CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_14();
  a23 = v26;
  a24 = v28;
  v30 = v29;
  v32 = v31;
  if (!v33)
  {
    v34 = 0;
    goto LABEL_14;
  }

  v34 = v27;
  if (!v27)
  {
LABEL_14:
    *v32 = v30;
    v32[1] = v34;
    OUTLINED_FUNCTION_59_12();
    return;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_55_11();
    while (!__OFADD__(v25, 1))
    {
      if (v25 == sub_237A2E9F4())
      {
        v34 = v25;
        goto LABEL_14;
      }

      v35 = sub_237A2E9C8(v25);
      if (v24)
      {
        goto LABEL_18;
      }

      sub_237AFC548(v35, &a10);
      if (v25 >= sub_237A2E9F4())
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_43_13();
      if (v36)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
LABEL_18:
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237BA1DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_237B024B4(a4);
  v10 = v9;
  v12 = v11;

  if (!a2)
  {
    a3 = 0;
LABEL_23:
    v14 = a4;
LABEL_26:
    *a1 = v14;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12 & 1;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v14 = a4;
    v42 = a1;
    v15 = 0;
    v47 = a4;
    v48 = a4 + 64;
    v44 = a4 + 72;
    v46 = a3;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12)
      {
        goto LABEL_32;
      }

      v17 = v10;
      if (*(v14 + 36) != v10)
      {
        goto LABEL_28;
      }

      v18 = 1 << *(v14 + 32);
      if (v8 == v18)
      {
        v12 = 0;
        a3 = v15;
LABEL_25:
        a1 = v42;
        goto LABEL_26;
      }

      if ((v8 & 0x8000000000000000) != 0 || v8 >= v18)
      {
        goto LABEL_29;
      }

      v19 = v8 >> 6;
      v20 = *(v48 + 8 * (v8 >> 6));
      if (((v20 >> v8) & 1) == 0)
      {
        goto LABEL_30;
      }

      v49 = v16;
      v50 = *(v14 + 36);
      v21 = *(v14 + 48) + 24 * v8;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v14 + 56) + 24 * v8;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = v20 & (-2 << (v8 & 0x3F));
      if (v29)
      {
        v30 = v17;
        v31 = OUTLINED_FUNCTION_65_8(*v21);
        sub_2379E9288(v31, v27, v28);
        result = sub_2379E8FD0(v8, v30, 0);
        v14 = v47;
        v8 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v32 = v27;
      }

      else
      {
        v45 = *(v25 + 8);
        v33 = v19 << 6;
        v34 = v19 + 1;
        v35 = (v44 + 8 * v19);
        while (v34 < (v18 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v43 = v17;
            v38 = OUTLINED_FUNCTION_65_8(v22);
            sub_2379E9288(v38, v45, v28);
            result = sub_2379E8FD0(v8, v43, 0);
            v39 = __rbit64(v36);
            v32 = v45;
            v8 = __clz(v39) + v33;
            goto LABEL_19;
          }
        }

        v40 = v17;
        v41 = OUTLINED_FUNCTION_65_8(v22);
        v32 = v45;
        sub_2379E9288(v41, v45, v28);
        result = sub_2379E8FD0(v8, v40, 0);
        v8 = v18;
LABEL_19:
        v14 = v47;
      }

      v12 = 0;
      *a2 = v22;
      *(a2 + 8) = v23;
      *(a2 + 16) = v24;
      *(a2 + 24) = v26;
      *(a2 + 32) = v32;
      *(a2 + 40) = v28;
      a2 += 48;
      v10 = v50;
      v15 = v49;
      a3 = v46;
      if (v49 == v46)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237BA2040(void *a1, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
LABEL_13:
    *a1 = v3;
    a1[1] = v5;
    return v7;
  }

  v7 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    OUTLINED_FUNCTION_55_11();
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v5 == sub_237A2EAA4())
      {
        v7 = v9;
        goto LABEL_13;
      }

      v11 = sub_237A2EB64(v5);
      if (v4)
      {
        goto LABEL_16;
      }

      v13 = v11;
      v14 = v12;
      v5 = sub_237B6A974(v5);
      *v8 = v13;
      v8[1] = v14;
      v8 += 2;
      ++v9;
      if (v10 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_237BA2134(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237BA221C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_237BA237C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237BA24E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_237BA2518()
{
  result = qword_27DE9D9E0;
  if (!qword_27DE9D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D9E0);
  }

  return result;
}

unint64_t sub_237BA256C()
{
  result = qword_27DE9D9E8;
  if (!qword_27DE9D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9D9E8);
  }

  return result;
}

unint64_t sub_237BA25C0()
{
  result = qword_27DE9DA00;
  if (!qword_27DE9DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA00);
  }

  return result;
}

uint64_t sub_237BA2614(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.FeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.FeatureType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x237BA27D4);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x237BA28D8);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML16ColumnDescriptorV0c4TypeD0O(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_237BA292C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 9))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 6)
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

uint64_t sub_237BA296C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_237BA29B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_237BA29EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_237BA2A2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237BA2A84()
{
  result = qword_27DE9DA18;
  if (!qword_27DE9DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA18);
  }

  return result;
}

unint64_t sub_237BA2ADC()
{
  result = qword_27DE9DA20;
  if (!qword_27DE9DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA20);
  }

  return result;
}

unint64_t sub_237BA2B34()
{
  result = qword_27DE9DA28;
  if (!qword_27DE9DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA28);
  }

  return result;
}

unint64_t sub_237BA2B8C()
{
  result = qword_27DE9DA30;
  if (!qword_27DE9DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA30);
  }

  return result;
}

unint64_t sub_237BA2BE0()
{
  result = qword_27DE9DA38;
  if (!qword_27DE9DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA38);
  }

  return result;
}

unint64_t sub_237BA2C34()
{
  result = qword_27DE9DA48;
  if (!qword_27DE9DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA48);
  }

  return result;
}

unint64_t sub_237BA2C88()
{
  result = qword_27DE9DA50;
  if (!qword_27DE9DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA50);
  }

  return result;
}

unint64_t sub_237BA2CDC()
{
  result = qword_27DE9DA60;
  if (!qword_27DE9DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ColumnDescriptor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237BA2DFCLL);
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

unint64_t sub_237BA2E38()
{
  result = qword_27DE9DA68;
  if (!qword_27DE9DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA68);
  }

  return result;
}

unint64_t sub_237BA2E90()
{
  result = qword_27DE9DA70;
  if (!qword_27DE9DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA70);
  }

  return result;
}

unint64_t sub_237BA2EE8()
{
  result = qword_27DE9DA78;
  if (!qword_27DE9DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9DA78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_68()
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_12_48()
{

  return sub_237C05FEC();
}

uint64_t OUTLINED_FUNCTION_22_31()
{
}

uint64_t OUTLINED_FUNCTION_23_33()
{

  return sub_237C0602C();
}

uint64_t OUTLINED_FUNCTION_26_25(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD000000000000031;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_27_20(uint64_t a1)
{
  *(v1 - 104) = 0x206E6D756C6F43;
  *(v1 - 96) = 0xE700000000000000;

  return sub_237C0600C();
}

uint64_t OUTLINED_FUNCTION_28_23()
{

  return sub_237C05FEC();
}

void OUTLINED_FUNCTION_43_13()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
}

uint64_t OUTLINED_FUNCTION_44_16(uint64_t a1)
{

  return sub_237A017E8(0, a1);
}

uint64_t OUTLINED_FUNCTION_45_17(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C0946C();
}