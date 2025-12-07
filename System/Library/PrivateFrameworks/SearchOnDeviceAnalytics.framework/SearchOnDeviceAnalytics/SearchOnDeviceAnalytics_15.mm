uint64_t AvroPrimitiveSchema.encode(to:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47890, &qword_21B12C2C8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  sub_21B0F4018();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F44();
  sub_21B0F3574(v2);
  sub_21B112B14();
  (*(v6 + 8))(v9, v4);
}

uint64_t AvroRecordSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478C0, &qword_21B12C2E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  sub_21B0F4114();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F44();
  v15 = 0;
  OUTLINED_FUNCTION_50_3();
  sub_21B112B14();
  if (!v2)
  {
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_50_3();
    sub_21B112B14();
    v14 = 2;
    OUTLINED_FUNCTION_50_3();
    sub_21B112AD4();
    v13 = *(v3 + 48);
    v12[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478D0, &qword_21B12C2E8);
    sub_21B0F5718(&qword_27CD478D8, sub_21B0F4168);
    sub_21B112B54();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t AvroSchema.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  OUTLINED_FUNCTION_88_1();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_27(v6, v6[3]);
    sub_21B0F41BC();
    sub_21B112D14();
    OUTLINED_FUNCTION_35_6();
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

uint64_t sub_21B0EF968@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AvroSchema.description.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroArraySchema.description.getter(v9, v10, v8);
      goto LABEL_8;
    case 2uLL:
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroMapSchema.description.getter(v4, v5, v3);
LABEL_8:

      return OUTLINED_FUNCTION_578();
    case 3uLL:
      OUTLINED_FUNCTION_25_5((a1 & 0x1FFFFFFFFFFFFFFFLL));
      sub_21AFC5454(v6, v7);
      AvroRecordSchema.description.getter();
      sub_21B0CAA60(v11);
      return OUTLINED_FUNCTION_52();
    case 4uLL:

      MEMORY[0x21CEE9880](v1, &type metadata for AvroSchema);

      return OUTLINED_FUNCTION_105();
    default:
      v11[0] = *(a1 + 16);
      sub_21B112454();
      return OUTLINED_FUNCTION_52();
  }
}

uint64_t AvroRecordSchema.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AvroRecordSchema.namespace.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AvroRecordSchema.fields.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_21B0EFC70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_21B112D04() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_21B112D04() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_21B112D04();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_21B0EFDDC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0EFE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0EFC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0EFE7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B0EFDD4();
  *a1 = result;
  return result;
}

uint64_t sub_21B0EFEA4(uint64_t a1)
{
  v2 = sub_21B0F4114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0EFEE0(uint64_t a1)
{
  v2 = sub_21B0F4114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvroRecordSchema.Field.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AvroRecordSchema.Field.init(name:type:optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47908, &qword_21B12C2F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21B113DB0;
    if (qword_27CD47840 != -1)
    {
      OUTLINED_FUNCTION_16_11(&qword_27CD47840);
    }

    *(v5 + 32) = static AvroSchema.null;
    *(v5 + 40) = a3;
    OUTLINED_FUNCTION_61();
    v6 = swift_allocObject();
    AvroUnionSchema.init(of:)(v5);
    *(v6 + 16) = v5;
  }

  return OUTLINED_FUNCTION_7();
}

uint64_t sub_21B0F0058(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F0128(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21B0F0150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F0058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F0178(uint64_t a1)
{
  v2 = sub_21B0F5670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F01B4(uint64_t a1)
{
  v2 = sub_21B0F5670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AvroRecordSchema.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (v6)
    {
      v7 = v1[4] == v0[4] && v5 == v6;
      if (v7 || (sub_21B112D04() & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_18:
  v8 = v1[6];
  v9 = v0[6];

  return sub_21B0F1B10(v8, v9);
}

void sub_21B0F02E0(uint64_t a1, uint64_t a2)
{
  v317[9] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16) || !v3 || a1 == a2)
  {
    return;
  }

  v4 = 0;
  v271 = 0;
  v284 = a2 + 32;
  v285 = a1 + 32;
  v274 = *(a1 + 16);
  while (2)
  {
    v5 = 9 * v4++;
    memcpy(__dst, (v285 + 8 * v5), 0x41uLL);
    memcpy(v292, (v284 + 8 * v5), 0x41uLL);
    v6 = *&__dst[0];
    v7 = *&__dst[2];
    v8 = *&__dst[3];
    v9 = *&__dst[4];
    v10 = __dst[5];
    switch(LOBYTE(__dst[8]))
    {
      case 1:
        if (LOBYTE(v292[8]) != 1)
        {
          return;
        }

        OUTLINED_FUNCTION_53_1();
        v45 = v27 && v43 == v44;
        if (!v45 && (sub_21B112D04() & 1) == 0)
        {
          return;
        }

        v46 = OUTLINED_FUNCTION_12_14();
        sub_21B0F6800(v46, v47);
        v48 = OUTLINED_FUNCTION_11_10();
        sub_21B0F6800(v48, v49);
        v50 = OUTLINED_FUNCTION_656();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v51) & 1) == 0)
        {
          goto LABEL_344;
        }

        v52 = v8;
        v53 = v9;
        goto LABEL_167;
      case 2:
        if (LOBYTE(v292[8]) != 2)
        {
          return;
        }

        OUTLINED_FUNCTION_53_1();
        v27 = v27 && v25 == v26;
        if (!v27 && (sub_21B112D04() & 1) == 0)
        {
          return;
        }

        v28 = OUTLINED_FUNCTION_12_14();
        sub_21B0F6800(v28, v29);
        v30 = OUTLINED_FUNCTION_11_10();
        sub_21B0F6800(v30, v31);
        v32 = OUTLINED_FUNCTION_656();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v32, v33) & 1) == 0)
        {
          goto LABEL_344;
        }

        v34 = sub_21B109594(v8, v9);
        goto LABEL_168;
      case 3:
        v273 = *&__dst[7];
        if (LOBYTE(v292[8]) != 3)
        {
          return;
        }

        v278 = v4;
        v35 = v292[2];
        v36 = v292[3];
        v37 = v292[4];
        v2 = v292[5];
        v279 = *&v292[6];
        v280 = *&__dst[6];
        v272 = *&v292[7];
        v38 = *&__dst[0] == *&v292[0] && *&__dst[1] == *&v292[1];
        if (!v38 && (sub_21B112D04() & 1) == 0)
        {
          return;
        }

        v39 = v7 == *&v35 && v8 == *&v36;
        if (!v39 && (OUTLINED_FUNCTION_66_1(v7) & 1) == 0)
        {
          return;
        }

        if (v10 == 0.0)
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 != 0.0)
          {
            return;
          }
        }

        else
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 == 0.0)
          {
            return;
          }

          if (v9 != *&v37 || *&v10 != *&v2)
          {
            OUTLINED_FUNCTION_109();
            if ((sub_21B112D04() & 1) == 0)
            {
              return;
            }
          }
        }

        v54 = v41[2];
        if (v54 != v40[2])
        {
          return;
        }

        if (!v54 || v41 == v40)
        {
          v117 = OUTLINED_FUNCTION_12_14();
          sub_21B0F6800(v117, v118);
          v119 = OUTLINED_FUNCTION_11_10();
          sub_21B0F6800(v119, v120);
LABEL_166:
          v53 = v272;
          v52 = v273;
LABEL_167:
          sub_21B0F02E0(v52, v53);
LABEL_168:
          v121 = v34;
          sub_21AFC54B0(v292);
          sub_21AFC54B0(__dst);
          if ((v121 & 1) == 0)
          {
            return;
          }

LABEL_284:
          if (v4 == v3)
          {
            return;
          }

          continue;
        }

        v55 = v41[4];
        v56 = v41[5];
        v57 = v41[6];
        v58 = v40[5];
        v59 = v40[6];
        v60 = v55 == v40[4] && v56 == v58;
        if (v60 || (OUTLINED_FUNCTION_66_1(v55) & 1) != 0)
        {
          v61 = OUTLINED_FUNCTION_12_14();
          sub_21B0F6800(v61, v62);
          v63 = OUTLINED_FUNCTION_11_10();
          sub_21B0F6800(v63, v64);
          v65 = v41 + 9;
          v66 = v40 + 9;
          v67 = 1;
          v275 = v54;
          while (1)
          {
            v68 = v59 >> 61;
            v283 = v65;
            v281 = v67;
            *&v282 = v66;
            switch(v57 >> 61)
            {
              case 1uLL:
                if (v68 != 1)
                {
                  goto LABEL_344;
                }

                v94 = OUTLINED_FUNCTION_27_7();
                v96 = v27 && v95 == v58;
                if (!v96 && (OUTLINED_FUNCTION_66_1(v94) & 1) == 0)
                {
                  goto LABEL_344;
                }

                v77 = v57 >> 61;
                switch(v54 >> 61)
                {
                  case 1uLL:
                    goto LABEL_116;
                  case 2uLL:
                    goto LABEL_114;
                  case 3uLL:
                    v111 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v293 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v294 = v111;
                    v295 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v296 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                    if (v77 != 3)
                    {
                      goto LABEL_344;
                    }

                    v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                    v112 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v297[0] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v297[1] = v112;
                    v297[2] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v298 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                    sub_21AFC5454(v297, v290);
                    v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                    v80 = v297;
                    break;
                  case 4uLL:
                    goto LABEL_111;
                  default:
                    goto LABEL_105;
                }

LABEL_128:
                sub_21B0CAA60(v80);

                goto LABEL_129;
              case 2uLL:
                if (v68 != 2)
                {
                  goto LABEL_344;
                }

                v74 = OUTLINED_FUNCTION_27_7();
                v76 = v27 && v75 == v58;
                if (!v76 && (OUTLINED_FUNCTION_66_1(v74) & 1) == 0)
                {
                  goto LABEL_344;
                }

                break;
              case 3uLL:
                if (v68 != 3)
                {
                  goto LABEL_344;
                }

                v276 = v56;
                v277 = v58;
                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v81 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v82 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v83 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
                v84 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v85 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
                v269 = v84;
                v270 = *(v54 + 64);
                v86 = (v59 & 0x1FFFFFFFFFFFFFFFLL);
                v87 = v86[4];
                v88 = v86[5];
                v89 = v86[7];
                v268 = v86[6];
                v90 = v86[8];
                v91 = v81 == v86[2] && v82 == v86[3];
                if (!v91 && (sub_21B112D04() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v92 = v83 == v87 && *&v2 == v88;
                if (!v92 && (OUTLINED_FUNCTION_66_1(v83) & 1) == 0)
                {
                  goto LABEL_344;
                }

                if (v85)
                {
                  if (!v89)
                  {
                    goto LABEL_344;
                  }

                  v93 = v269 == v268 && v85 == v89;
                  if (!v93 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                else if (v89)
                {
                  goto LABEL_344;
                }

                sub_21B0F1B10(v270, v90);
                OUTLINED_FUNCTION_58_1();

LABEL_151:

                if ((LOBYTE(v2) & 1) == 0)
                {
                  goto LABEL_344;
                }

                goto LABEL_155;
              case 4uLL:
                if (v68 != 4)
                {
                  goto LABEL_344;
                }

                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v72 = OUTLINED_FUNCTION_35_2();
                _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v72, v73);
                OUTLINED_FUNCTION_58_1();

                goto LABEL_151;
              default:
                if (v68)
                {
                  goto LABEL_344;
                }

                v69 = *(v59 + 16);
                v70 = 0xE400000000000000;
                v71 = 1819047278;
                switch(*(v57 + 16))
                {
                  case 1:
                    v70 = 0xE700000000000000;
                    v71 = OUTLINED_FUNCTION_21_6();
                    break;
                  case 2:
                    v70 = 0xE300000000000000;
                    v71 = 7630441;
                    break;
                  case 3:
                    v71 = 1735290732;
                    break;
                  case 4:
                    v70 = 0xE500000000000000;
                    v71 = OUTLINED_FUNCTION_73_1();
                    break;
                  case 5:
                    v70 = 0xE600000000000000;
                    v71 = OUTLINED_FUNCTION_69_1();
                    break;
                  case 6:
                    v70 = 0xE600000000000000;
                    v71 = OUTLINED_FUNCTION_68_1();
                    break;
                  case 7:
                    v70 = 0xE500000000000000;
                    v71 = OUTLINED_FUNCTION_71_1();
                    break;
                  default:
                    break;
                }

                v54 = 0xE400000000000000;
                v113 = 1819047278;
                switch(v69)
                {
                  case 1:
                    v54 = 0xE700000000000000;
                    OUTLINED_FUNCTION_17_11();
                    break;
                  case 2:
                    v54 = 0xE300000000000000;
                    v113 = 7630441;
                    break;
                  case 3:
                    v113 = 1735290732;
                    break;
                  case 4:
                    v54 = 0xE500000000000000;
                    OUTLINED_FUNCTION_45_2();
                    break;
                  case 5:
                    v54 = 0xE600000000000000;
                    OUTLINED_FUNCTION_43_4();
                    break;
                  case 6:
                    v54 = 0xE600000000000000;
                    OUTLINED_FUNCTION_42_4();
                    break;
                  case 7:
                    v54 = 0xE500000000000000;
                    OUTLINED_FUNCTION_44_3();
                    break;
                  default:
                    break;
                }

                if (v71 != v113 || v70 != v54)
                {
                  v2 = COERCE_DOUBLE(OUTLINED_FUNCTION_51_0(v71));

                  goto LABEL_151;
                }

                goto LABEL_154;
            }

            v77 = v57 >> 61;
            switch(v54 >> 61)
            {
              case 1uLL:
LABEL_116:
                if (v77 != 1)
                {
                  goto LABEL_344;
                }

                goto LABEL_117;
              case 2uLL:
LABEL_114:
                if (v77 != 2)
                {
                  goto LABEL_344;
                }

LABEL_117:
                v108 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v109 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v270 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v54 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v2 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v110 = v108 == *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && v109 == v54;
                if (!v110 && (OUTLINED_FUNCTION_51_0(v108) & 1) == 0)
                {
                  goto LABEL_344;
                }

                LODWORD(v270) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v270, *&v2);

                if ((v270 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              case 3uLL:
                v78 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v299 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v300 = v78;
                v301 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v302 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                if (v77 != 3)
                {
                  goto LABEL_344;
                }

                v54 = v57 & 0x1FFFFFFFFFFFFFFFLL;
                v79 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v303[0] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v303[1] = v79;
                v303[2] = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v304 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                sub_21AFC5454(v303, v290);
                v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                v80 = v303;
                goto LABEL_128;
              case 4uLL:
LABEL_111:
                if (v77 != 4)
                {
                  goto LABEL_344;
                }

                *&v2 = v57 & 0x1FFFFFFFFFFFFFFFLL;

                v106 = OUTLINED_FUNCTION_109();
                v54 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v107);

                if ((v54 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              default:
LABEL_105:
                if (v77)
                {
                  goto LABEL_344;
                }

                v97 = *(v54 + 16);
                v98 = *(v57 + 16);
                v99 = sub_21B0F3574(v97);
                v101 = v100;
                v102 = sub_21B0F3574(v98);
                v54 = v103;
                if (v99 == v102 && v101 == v103)
                {

                  v2 = *&v277;

LABEL_154:
                }

                else
                {
                  v105 = OUTLINED_FUNCTION_105();
                  v2 = COERCE_DOUBLE(OUTLINED_FUNCTION_51_0(v105));

LABEL_129:

                  if ((LOBYTE(v2) & 1) == 0)
                  {
LABEL_337:

                    goto LABEL_344;
                  }

LABEL_130:
                }

LABEL_155:
                if (v275 == v281)
                {
                  v3 = v274;
                  v4 = v278;
                  goto LABEL_166;
                }

                if (v281 >= v275)
                {
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  sub_21B0F68B8(v288);
LABEL_342:
                  sub_21B0F68B8(v289);
                  goto LABEL_343;
                }

                if (v281 >= *(v280 + 16))
                {
                  goto LABEL_339;
                }

                if (v281 >= *(v279 + 16))
                {
                  goto LABEL_340;
                }

                v115 = *(v283 - 2);
                v56 = *(v283 - 1);
                v57 = *v283;
                v58 = *(v282 - 8);
                v59 = *v282;
                v116 = v115 == *(v282 - 16) && v56 == v58;
                if (!v116 && (OUTLINED_FUNCTION_66_1(v115) & 1) == 0)
                {
                  goto LABEL_344;
                }

                v65 = v283 + 3;
                v66 = (v282 + 24);
                v67 = v281 + 1;
                break;
            }
          }
        }

        return;
      case 4:
        if (LOBYTE(v292[8]) != 4)
        {
          return;
        }

        v278 = v4;
        v13 = *(*&__dst[0] + 32);
        *&v282 = *(*&__dst[0] + 40);
        v15 = *(*&__dst[0] + 48);
        v14 = *(*&__dst[0] + 56);
        v16 = *(*&__dst[0] + 64);
        v17 = *(*&__dst[0] + 72);
        v18 = *(*&__dst[0] + 80);
        v19 = *(*&__dst[0] + 88);
        v283 = *(*&__dst[0] + 96);
        v20 = *(*&__dst[0] + 16);
        v2 = *(*&__dst[0] + 24);
        memcpy(v290, (*&v292[0] + 16), sizeof(v290));
        v21 = v290[0];
        sub_21B0F6800(__dst, v289);
        sub_21B0F6800(v292, v289);
        sub_21B0F685C(v290, v289);
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21) & 1) == 0)
        {
          goto LABEL_343;
        }

        switch(v19)
        {
          case 1:
            if (LOBYTE(v290[9]) != 1)
            {
              goto LABEL_343;
            }

            v150 = v290[3];
            v149 = v290[4];
            if (*&v2 != v290[1] || v13 != v290[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v150) & 1) == 0)
            {
              goto LABEL_343;
            }

            sub_21B0F02E0(v15, v149);
            goto LABEL_210;
          case 2:
            if (LOBYTE(v290[9]) != 2)
            {
              goto LABEL_343;
            }

            v140 = v290[3];
            v139 = v290[4];
            if (*&v2 != v290[1] || v13 != v290[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v140) & 1) == 0)
            {
              goto LABEL_343;
            }

            v142 = sub_21B109594(v15, v139);
LABEL_210:
            v152 = v142;
            sub_21B0F68B8(v290);
            sub_21AFC54B0(v292);
            sub_21AFC54B0(__dst);
            v3 = v274;
            v4 = v278;
            if ((v152 & 1) == 0)
            {
              return;
            }

            goto LABEL_283;
          case 3:
            if (LOBYTE(v290[9]) != 3)
            {
              goto LABEL_343;
            }

            v144 = v290[3];
            v143 = v290[4];
            v145 = v290[6];
            v281 = v290[7];
            v279 = v290[5];
            v280 = v290[8];
            if (*&v2 != v290[1] || v13 != v290[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            v147 = v282 == v144 && v15 == v143;
            if (!v147 && (sub_21B112D04() & 1) == 0)
            {
              goto LABEL_343;
            }

            if (v16)
            {
              v4 = v278;
              if (!v145 || (v14 == v279 ? (v148 = v16 == v145) : (v148 = 0), !v148 && (OUTLINED_FUNCTION_109(), (sub_21B112D04() & 1) == 0)))
              {
LABEL_343:
                sub_21B0F68B8(v290);
LABEL_344:
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                return;
              }
            }

            else
            {
              v4 = v278;
              if (v145)
              {
                goto LABEL_343;
              }
            }

            if ((sub_21B0F1B10(v17, v281) & 1) == 0)
            {
              goto LABEL_343;
            }

            sub_21B0F02E0(v18, v280);
            v167 = v166;
            sub_21B0F68B8(v290);
            sub_21AFC54B0(v292);
            sub_21AFC54B0(__dst);
            v3 = v274;
            if ((v167 & 1) == 0)
            {
              return;
            }

LABEL_283:
            if (v283 != v290[10])
            {
              return;
            }

            break;
          case 4:
            if (LOBYTE(v290[9]) != 4)
            {
              goto LABEL_343;
            }

            v123 = *(*&v2 + 32);
            v122 = *(*&v2 + 40);
            v124 = *(*&v2 + 48);
            v282 = *(*&v2 + 56);
            v125 = *(*&v2 + 72);
            v126 = *(*&v2 + 88);
            v127 = *(*&v2 + 96);
            v129 = *&v2 + 16;
            v2 = *(*&v2 + 16);
            v128 = *(v129 + 8);
            memcpy(v289, (v290[1] + 16), sizeof(v289));
            sub_21B0F685C(v289, v288);
            v130 = OUTLINED_FUNCTION_34_3();
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v130, v131))
            {
              switch(v126)
              {
                case 1:
                  if (v289[72] != 1)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v289[32];
                  if (v128 != *&v289[8] || v123 != *&v289[16])
                  {
                    OUTLINED_FUNCTION_578();
                    if ((sub_21B112D04() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v200 = OUTLINED_FUNCTION_9_20();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v200, v201) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v202 = OUTLINED_FUNCTION_81_1();
                  sub_21B0F02E0(v202, v203);
                  goto LABEL_280;
                case 2:
                  if (v289[72] != 2)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v289[32];
                  if (v128 != *&v289[8] || v123 != *&v289[16])
                  {
                    OUTLINED_FUNCTION_578();
                    if ((sub_21B112D04() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v191 = OUTLINED_FUNCTION_9_20();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v191, v192) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v193 = OUTLINED_FUNCTION_81_1();
                  v195 = sub_21B109594(v193, v194);
LABEL_280:
                  v204 = v195;
                  sub_21B0F68B8(v289);
                  sub_21B0F68B8(v290);
                  sub_21AFC54B0(v292);
                  sub_21AFC54B0(__dst);
                  if (v204)
                  {
                    goto LABEL_281;
                  }

                  return;
                case 3:
                  if (v289[72] != 3)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v289[64];
                  v305 = v128;
                  v306 = v123;
                  v307 = v122;
                  v308 = v124;
                  v309 = v282;
                  v310 = v125;
                  v311 = *&v289[8];
                  v312 = *&v289[24];
                  v313 = *&v289[32];
                  v314 = *&v289[40];
                  v315 = *&v289[56];
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v196 = OUTLINED_FUNCTION_656();
                  sub_21B0F02E0(v196, v197);
                  goto LABEL_270;
                case 4:
                  memcpy(v316, (v128 + 24), 0x41uLL);
                  if (v289[72] != 4)
                  {
                    goto LABEL_342;
                  }

                  v186 = *(v128 + 96);
                  memcpy(v288, (*&v289[8] + 16), sizeof(v288));
                  v2 = *v288;
                  sub_21B0F685C(v288, v287);
                  v187 = OUTLINED_FUNCTION_52();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v187, v188) & 1) == 0)
                  {
                    goto LABEL_341;
                  }

                  memcpy(v317, &v288[1], 0x41uLL);
                  v189 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v316, v317);
                  sub_21B0F68B8(v288);
                  sub_21B0F68B8(v289);
                  sub_21B0F68B8(v290);
                  sub_21AFC54B0(v292);
                  sub_21AFC54B0(__dst);
                  v3 = v274;
                  if ((v189 & 1) == 0 || v186 != v288[10])
                  {
                    return;
                  }

                  goto LABEL_281;
                default:
                  if (v289[72])
                  {
                    goto LABEL_342;
                  }

                  v132 = OUTLINED_FUNCTION_578();
                  v138 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v132, v133, v122, v124, v134, v135, v136, v137);
LABEL_270:
                  v198 = v138;
                  sub_21B0F68B8(v289);
                  sub_21B0F68B8(v290);
                  sub_21AFC54B0(v292);
                  sub_21AFC54B0(__dst);
                  v3 = v274;
                  if ((v198 & 1) == 0)
                  {
                    return;
                  }

LABEL_281:
                  v27 = v127 == *&v289[80];
                  v4 = v278;
                  if (!v27)
                  {
                    return;
                  }

                  goto LABEL_283;
              }
            }

            goto LABEL_342;
          default:
            if (LOBYTE(v290[9]))
            {
              goto LABEL_343;
            }

            v22 = *&v290[1];
            v23 = v290[2];
            v24 = LOBYTE(v290[4]);
            v3 = v274;
            switch(v15)
            {
              case 1:
                v4 = v278;
                if (LOBYTE(v290[4]) != 1)
                {
                  goto LABEL_343;
                }

                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                if (LODWORD(v2) != LODWORD(v22))
                {
                  return;
                }

                goto LABEL_283;
              case 2:
                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                v4 = v278;
                if (v24 != 2 || *&v2 != *&v22)
                {
                  return;
                }

                goto LABEL_283;
              case 3:
                v4 = v278;
                if (LOBYTE(v290[4]) != 3)
                {
                  goto LABEL_343;
                }

                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                if (*&v2 != *&v22)
                {
                  return;
                }

                goto LABEL_283;
              case 4:
                v4 = v278;
                if (LOBYTE(v290[4]) != 4)
                {
                  goto LABEL_343;
                }

                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                if (v2 != v22)
                {
                  return;
                }

                goto LABEL_283;
              case 5:
                v4 = v278;
                if (LOBYTE(v290[4]) != 5)
                {
                  goto LABEL_343;
                }

                if (*&v2 == v290[1] && v13 == v290[2])
                {
LABEL_308:
                  sub_21B0F68B8(v290);
                  sub_21AFC54B0(v292);
                  sub_21AFC54B0(__dst);
                }

                else
                {
                  OUTLINED_FUNCTION_34_3();
                  v206 = sub_21B112D04();
                  sub_21B0F68B8(v290);
                  sub_21AFC54B0(v292);
                  sub_21AFC54B0(__dst);
                  if ((v206 & 1) == 0)
                  {
                    return;
                  }
                }

                goto LABEL_283;
              case 6:
                v4 = v278;
                if (LOBYTE(v290[4]) != 6)
                {
                  goto LABEL_343;
                }

                if (((v13 >> 60) & 3) != 0)
                {
                  v207 = OUTLINED_FUNCTION_34_3();
                  sub_21B0F69CC(v207, v208, v282, 6);
                }

                else
                {
                  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                  *&v289[24] = v221;
                  *&v289[32] = sub_21B0F690C();
                  *v289 = v2;
                  v222 = __swift_project_boxed_opaque_existential_0(v289, v221);
                  v223 = *v222 + 32;
                  v224 = *(*v222 + 16);
                  v225 = OUTLINED_FUNCTION_34_3();
                  sub_21B0F69CC(v225, v226, v282, 6);
                  sub_21B10BE70(v223, v223 + v224, v288);
                  if (v271)
                  {
                    goto LABEL_346;
                  }

                  __swift_destroy_boxed_opaque_existential_0(v289);
                }

                OUTLINED_FUNCTION_105();
                v227 = sub_21B110EB4();
                v228 = OUTLINED_FUNCTION_105();
                sub_21AF99728(v228, v229);
                if (((v23 >> 60) & 3) != 0)
                {
                  *&v2 = v23 & 0xCFFFFFFFFFFFFFFFLL;
                  sub_21B0F6800(&v290[1], v289);
                }

                else
                {
                  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                  v288[3] = v230;
                  v288[4] = sub_21B0F690C();
                  *v288 = v22;
                  v231 = __swift_project_boxed_opaque_existential_0(v288, v230);
                  v232 = *v231 + 32;
                  v233 = *(*v231 + 16);
                  sub_21B0F6800(&v290[1], v289);
                  sub_21B10BE70(v232, v232 + v233, v289);
                  if (v271)
                  {
LABEL_346:

                    __break(1u);
                    return;
                  }

                  v2 = *&v289[8];
                  __swift_destroy_boxed_opaque_existential_0(v288);
                }

                OUTLINED_FUNCTION_81_1();
                v234 = sub_21B110EB4();
                v235 = OUTLINED_FUNCTION_81_1();
                sub_21AF99728(v235, v236);
                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                if (v227 != v234)
                {
                  return;
                }

                break;
              case 7:
                v4 = v278;
                if (LOBYTE(v290[4]) != 7 || v290[1] | v290[3] | v290[2])
                {
                  goto LABEL_343;
                }

                goto LABEL_308;
              default:
                sub_21B0F68B8(v290);
                sub_21AFC54B0(v292);
                sub_21AFC54B0(__dst);
                v4 = v278;
                if (v24 || ((LODWORD(v22) ^ LODWORD(v2)) & 1) != 0)
                {
                  return;
                }

                goto LABEL_283;
            }

            goto LABEL_283;
        }

        goto LABEL_284;
      default:
        if (!LOBYTE(v292[8]))
        {
          v11 = *&v292[0];
          v12 = v292[1];
          switch(LOBYTE(__dst[3]))
          {
            case 1:
              if (LOBYTE(v292[3]) != 1 || LODWORD(__dst[0]) != LODWORD(v292[0]))
              {
                return;
              }

              goto LABEL_284;
            case 2:
              if (LOBYTE(v292[3]) != 2 || *&__dst[0] != *&v292[0])
              {
                return;
              }

              goto LABEL_284;
            case 3:
              if (LOBYTE(v292[3]) != 3 || *__dst != *v292)
              {
                return;
              }

              goto LABEL_284;
            case 4:
              if (LOBYTE(v292[3]) != 4 || __dst[0] != v292[0])
              {
                return;
              }

              goto LABEL_284;
            case 5:
              if (LOBYTE(v292[3]) != 5)
              {
                return;
              }

              v157 = *&__dst[0] == *&v292[0] && *&__dst[1] == *&v292[1];
              if (!v157 && (sub_21B112D04() & 1) == 0)
              {
                return;
              }

              goto LABEL_284;
            case 6:
              v158 = v267;
              if (LOBYTE(v292[3]) != 6)
              {
                return;
              }

              if (((*&__dst[1] >> 60) & 3) != 0)
              {
                v159 = *&__dst[1] & 0xCFFFFFFFFFFFFFFFLL;
                v160 = OUTLINED_FUNCTION_12_14();
                sub_21B0F6800(v160, v161);
                v162 = OUTLINED_FUNCTION_12_14();
                sub_21B0F6800(v162, v163);
                v164 = OUTLINED_FUNCTION_11_10();
                sub_21B0F6800(v164, v165);
              }

              else
              {
                v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                *&v289[24] = v168;
                *&v289[32] = sub_21B0F690C();
                *v289 = v6;
                v169 = __swift_project_boxed_opaque_existential_0(v289, v168);
                v177 = *(*v169 + 16);
                if (v177)
                {
                  if (v177 <= 0xE)
                  {
                    OUTLINED_FUNCTION_37_4(v169, v170, v171, v172, v173, v174, v175, v176, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, *v287, *&v287[8], *&v287[16], *&v287[24], *&v287[32], *&v287[40], *&v287[48], *&v287[56], *&v287[64], *&v287[72], *&v287[80], v288[0], v288[1], v288[2], v288[3], v288[4], v288[5], v288[6], v288[7], v288[8], v288[9], v288[10], *v289, *&v289[8], *&v289[16], *&v289[24], *&v289[32], *&v289[40], *&v289[48], *&v289[56], *&v289[64], *&v289[72], *&v289[80]);
                    v6 = v290[0];
                    OUTLINED_FUNCTION_49_3();
                    v215 = OUTLINED_FUNCTION_12_14();
                    sub_21B0F6800(v215, v216);
                    v217 = OUTLINED_FUNCTION_12_14();
                    sub_21B0F6800(v217, v218);
                    v219 = OUTLINED_FUNCTION_11_10();
                    sub_21B0F6800(v219, v220);
                    v159 = v158;
                  }

                  else
                  {
                    v178 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v178);
                    OUTLINED_FUNCTION_85_1();
                    v179 = OUTLINED_FUNCTION_12_14();
                    if (v177 >= v181)
                    {
                      sub_21B0F6800(v179, v180);
                      v237 = OUTLINED_FUNCTION_12_14();
                      sub_21B0F6800(v237, v238);
                      v239 = OUTLINED_FUNCTION_11_10();
                      sub_21B0F6800(v239, v240);
                      OUTLINED_FUNCTION_91_1();
                      OUTLINED_FUNCTION_45();
                      v241 = sub_21B110E04();
                      v6 = OUTLINED_FUNCTION_96_1(v241);
                      *(v6 + 16) = 0;
                      *(v6 + 24) = v177;
                      v159 = *&v2 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_21B0F6800(v179, v180);
                      v182 = OUTLINED_FUNCTION_12_14();
                      sub_21B0F6800(v182, v183);
                      v184 = OUTLINED_FUNCTION_11_10();
                      sub_21B0F6800(v184, v185);
                      v6 = v177 << 32;
                      v159 = OUTLINED_FUNCTION_91_1() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v209 = OUTLINED_FUNCTION_12_14();
                  sub_21B0F6800(v209, v210);
                  v211 = OUTLINED_FUNCTION_12_14();
                  sub_21B0F6800(v211, v212);
                  v213 = OUTLINED_FUNCTION_11_10();
                  sub_21B0F6800(v213, v214);
                  v6 = 0;
                  v159 = 0xC000000000000000;
                }

                v267 = v158;
                __swift_destroy_boxed_opaque_existential_0(v289);
              }

              v242 = sub_21B110EB4();
              sub_21AF99728(v6, v159);
              if (((*&v12 >> 60) & 3) != 0)
              {
                v243 = *&v12 & 0xCFFFFFFFFFFFFFFFLL;
                v244 = OUTLINED_FUNCTION_11_10();
                sub_21B0F6800(v244, v245);
              }

              else
              {
                v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                *&v289[24] = v246;
                *&v289[32] = sub_21B0F690C();
                *v289 = v11;
                v247 = __swift_project_boxed_opaque_existential_0(v289, v246);
                v255 = *(*v247 + 16);
                if (v255)
                {
                  v256 = v266;
                  if (v255 <= 0xE)
                  {
                    OUTLINED_FUNCTION_37_4(v247, v248, v249, v250, v251, v252, v253, v254, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, *v287, *&v287[8], *&v287[16], *&v287[24], *&v287[32], *&v287[40], *&v287[48], *&v287[56], *&v287[64], *&v287[72], *&v287[80], v288[0], v288[1], v288[2], v288[3], v288[4], v288[5], v288[6], v288[7], v288[8], v288[9], v288[10], *v289, *&v289[8], *&v289[16], *&v289[24], *&v289[32], *&v289[40], *&v289[48], *&v289[56], *&v289[64], *&v289[72], *&v289[80]);
                    v11 = v290[0];
                    v243 = v256 & 0xF00000000000000 | LODWORD(v290[1]) | ((WORD2(v290[1]) | (BYTE6(v290[1]) << 16)) << 32);
                    v263 = OUTLINED_FUNCTION_11_10();
                    sub_21B0F6800(v263, v264);
                    v266 = v243;
                  }

                  else
                  {
                    v257 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v257);
                    OUTLINED_FUNCTION_85_1();
                    v258 = OUTLINED_FUNCTION_11_10();
                    if (v255 >= v260)
                    {
                      sub_21B0F6800(v258, v259);
                      OUTLINED_FUNCTION_91_1();
                      OUTLINED_FUNCTION_45();
                      v265 = sub_21B110E04();
                      v11 = OUTLINED_FUNCTION_96_1(v265);
                      *(v11 + 16) = 0;
                      *(v11 + 24) = v255;
                      v243 = v266 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_21B0F6800(v258, v259);
                      v11 = v255 << 32;
                      v243 = OUTLINED_FUNCTION_91_1() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v261 = OUTLINED_FUNCTION_11_10();
                  sub_21B0F6800(v261, v262);
                  v11 = 0;
                  v243 = 0xC000000000000000;
                }

                __swift_destroy_boxed_opaque_existential_0(v289);
              }

              v2 = COERCE_DOUBLE(sub_21B110EB4());
              sub_21AF99728(v11, v243);
              sub_21AFC54B0(v292);
              sub_21AFC54B0(__dst);
              if (v242 != *&v2)
              {
                return;
              }

              goto LABEL_284;
            case 7:
              if (LOBYTE(v292[3]) != 7 || *&v292[0] | *&v292[2] | *&v292[1])
              {
                return;
              }

              goto LABEL_284;
            default:
              if (LOBYTE(v292[3]) || ((LODWORD(v292[0]) ^ LODWORD(__dst[0])) & 1) != 0)
              {
                return;
              }

              goto LABEL_284;
          }
        }

        return;
    }
  }
}

uint64_t sub_21B0F1B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *(v3 - 2);
      v6 = *v3;
      v7 = *i;
      v8 = v5 == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v8 && (OUTLINED_FUNCTION_51_0(v5) & 1) == 0)
      {
        break;
      }

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);

      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v52 = a2 + 32;
  v53 = result + 32;
  while (2)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return result;
    }

    v4 = v3++;
    v5 = *(v53 + 8 * v4);
    v6 = *(v52 + 8 * v4);
    v7 = v6 >> 61;
    switch(v5 >> 61)
    {
      case 1uLL:
        if (v7 != 1)
        {
          return 0;
        }

        goto LABEL_35;
      case 2uLL:
        if (v7 != 2)
        {
          return 0;
        }

LABEL_35:
        v27 = v3;
        v28 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v29 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = v28 == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v31 && (OUTLINED_FUNCTION_51_0(v28) & 1) == 0)
        {
          return 0;
        }

        v32 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v29, v30);

        v3 = v27;
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      case 3uLL:
        if (v7 != 3)
        {
          return 0;
        }

        v14 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
        result = v14[2];
        v15 = v14[3];
        v17 = v14[4];
        v16 = v14[5];
        v18 = v14[6];
        v19 = v14[7];
        v20 = v14[8];
        v22 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v21 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v50 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v51 = v21;
        v54 = v20;
        v55 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        if (result != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || v15 != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
          result = sub_21B112D04();
          v21 = v51;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v17 != v22 || v16 != v21)
        {
          result = sub_21B112D04();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v19)
        {
          if (!v50)
          {
            return 0;
          }

          if (v18 != v23 || v19 != v50)
          {
            result = OUTLINED_FUNCTION_51_0(v18);
            if ((result & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v50)
        {
          return 0;
        }

        v34 = v54;
        v33 = v55;
        v35 = *(v54 + 16);
        if (v35 != *(v55 + 16))
        {
          return 0;
        }

        if (v35)
        {
          v36 = v54 == v55;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
LABEL_80:
          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v48 = v3;
        v49 = v2;

        v37 = 0;
        v38 = (v54 + 48);
        v39 = (v55 + 48);
        while (1)
        {
          if (v37 >= *(v34 + 16))
          {
            goto LABEL_85;
          }

          if (v37 >= *(v33 + 16))
          {
            goto LABEL_86;
          }

          v40 = *v38;
          v41 = *v39;
          v42 = *(v38 - 2) == *(v39 - 2) && *(v38 - 1) == *(v39 - 1);
          if (!v42 && (sub_21B112D04() & 1) == 0)
          {
            break;
          }

          v43 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v41);

          if ((v43 & 1) == 0)
          {
            break;
          }

          ++v37;
          v38 += 3;
          v39 += 3;
          v34 = v54;
          v33 = v55;
          if (v35 == v37)
          {

            v3 = v48;
            v2 = v49;
            goto LABEL_80;
          }
        }

        return 0;
      case 4uLL:
        if (v7 != 4)
        {
          return 0;
        }

        v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v12 = OUTLINED_FUNCTION_35_2();
        _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13);
        OUTLINED_FUNCTION_58_1();

        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      default:
        if (v7)
        {
          return 0;
        }

        v8 = *(v6 + 16);
        v9 = 0xE400000000000000;
        v10 = 1819047278;
        switch(*(v5 + 16))
        {
          case 1:
            v9 = 0xE700000000000000;
            v10 = OUTLINED_FUNCTION_21_6();
            break;
          case 2:
            v9 = 0xE300000000000000;
            v10 = 7630441;
            break;
          case 3:
            v10 = 1735290732;
            break;
          case 4:
            v9 = 0xE500000000000000;
            v10 = OUTLINED_FUNCTION_73_1();
            break;
          case 5:
            v9 = 0xE600000000000000;
            v10 = OUTLINED_FUNCTION_69_1();
            break;
          case 6:
            v9 = 0xE600000000000000;
            v10 = OUTLINED_FUNCTION_68_1();
            break;
          case 7:
            v9 = 0xE500000000000000;
            v10 = OUTLINED_FUNCTION_71_1();
            break;
          default:
            break;
        }

        v44 = 0xE400000000000000;
        v45 = 1819047278;
        switch(v8)
        {
          case 1:
            v44 = 0xE700000000000000;
            OUTLINED_FUNCTION_17_11();
            break;
          case 2:
            v44 = 0xE300000000000000;
            v45 = 7630441;
            break;
          case 3:
            v45 = 1735290732;
            break;
          case 4:
            v44 = 0xE500000000000000;
            OUTLINED_FUNCTION_45_2();
            break;
          case 5:
            v44 = 0xE600000000000000;
            OUTLINED_FUNCTION_43_4();
            break;
          case 6:
            v44 = 0xE600000000000000;
            OUTLINED_FUNCTION_42_4();
            break;
          case 7:
            v44 = 0xE500000000000000;
            OUTLINED_FUNCTION_44_3();
            break;
          default:
            break;
        }

        if (v10 == v45 && v9 == v44)
        {
        }

        else
        {
          v47 = sub_21B112D04();

          if ((v47 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_80;
    }
  }
}

void AvroRecordSchema.hash(into:)(uint64_t a1)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 40))
  {
    sub_21B112EE4();
    OUTLINED_FUNCTION_35_2();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_21B112EE4();
  }

  sub_21B0F55EC();
}

uint64_t AvroRecordSchema.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 40))
  {
    sub_21B112EE4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_21B112EE4();
  }

  sub_21B0F55EC();
  return sub_21B112F14();
}

uint64_t sub_21B0F22A0(uint64_t a1)
{
  sub_21B112EC4();
  AvroRecordSchema.hash(into:)(v2);
  return sub_21B112F14();
}

void sub_21B0F2324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_11();
  v24 = v23;
  v38[1] = v25;
  v39 = v22;
  v38[0] = v26;
  v28 = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_1();
  v33 = v32;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v34);
  v36 = v38 - v35;
  __swift_project_boxed_opaque_existential_0(v28, v28[3]);
  v24();
  sub_21B112F44();
  v37 = v39;
  sub_21B112B14();
  if (!v37)
  {
    v40 = v38[0];
    OUTLINED_FUNCTION_84_1();
    sub_21B0F3FC4();
    sub_21B112B54();
  }

  (*(v33 + 8))(v36, v31);
  OUTLINED_FUNCTION_13();
}

uint64_t AvroRecordSchema.Field.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47920, &qword_21B12C300);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v4 = v0[4];
  v5 = OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_1_27(v5, v6);
  sub_21B0F5670();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F34();
  if (!v1)
  {
    v4 = sub_21B112A94();
    sub_21B0F56C4();
    sub_21B112AC4();
    v8 = OUTLINED_FUNCTION_32_4();
    v9(v8, v2);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v4;
}

void AvroRecordSchema.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_79_1();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47930, &qword_21B12C308);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_1_27(v29, v30);
  sub_21B0F4114();
  sub_21B112F34();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
    v31 = sub_21B112A94();
    v33 = v32;
    v45 = v31;
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_46_3();
    v34 = sub_21B112A94();
    v36 = v35;
    v43 = v34;
    v44 = v27;
    OUTLINED_FUNCTION_46_3();
    v37 = sub_21B112A44();
    v39 = v38;
    v42 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478D0, &qword_21B12C2E8);
    sub_21B0F5718(&qword_27CD47938, sub_21B0F578C);
    sub_21B112AC4();
    v40 = OUTLINED_FUNCTION_10_16();
    v41(v40);

    __swift_destroy_boxed_opaque_existential_0(v24);

    *v44 = v45;
    v44[1] = v33;
    v44[2] = v43;
    v44[3] = v36;
    v44[4] = v42;
    v44[5] = v39;
    v44[6] = v46;
  }

  OUTLINED_FUNCTION_13();
}

double sub_21B0F2970@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  AvroRecordSchema.init(from:)(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SBYTE4(v13), SBYTE5(v13), SBYTE6(v13), SHIBYTE(v13), v15, v16, v18, v19, v21, v22, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v14;
    *(a9 + 16) = v17;
    result = *&v20;
    *(a9 + 32) = v20;
    *(a9 + 48) = v23;
  }

  return result;
}

uint64_t AvroRecordSchema.Field.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  MEMORY[0x21CEE9770](a1, a2);
  MEMORY[0x21CEE9770](8250, 0xE200000000000000);
  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  MEMORY[0x21CEE9770](125, 0xE100000000000000);
  return 123;
}

uint64_t AvroRecordSchema.description.getter()
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_56_0();
  MEMORY[0x21CEE9770](v0[2], v0[3]);
  MEMORY[0x21CEE9770](0x73646C656966202CLL, 0xEA0000000000203ALL);
  MEMORY[0x21CEE9880](v0[6], &type metadata for AvroRecordSchema.Field);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v2;
}

uint64_t AvroArraySchema.type.getter()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

uint64_t sub_21B0F2BAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F2C70(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21B0F2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F2BAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F2CCC(uint64_t a1)
{
  v2 = sub_21B0F406C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F2D08(uint64_t a1)
{
  v2 = sub_21B0F406C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvroArraySchema.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v3 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v4);
}

uint64_t sub_21B0F2E4C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t AvroArraySchema.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_56_0();
  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v5;
}

uint64_t sub_21B0F2F38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F2FFC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_4_24(a1);
  MEMORY[0x21CEEA150](v1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21B0F303C(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21B0F3070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F2F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F3098(uint64_t a1)
{
  v2 = sub_21B0F40C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F30D4(uint64_t a1)
{
  v2 = sub_21B0F40C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_4_24(v1);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v0);
  return sub_21B112F14();
}

uint64_t sub_21B0F31E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_21B112EC4();
  a4(v10, v6, v7, v8);
  return sub_21B112F14();
}

void sub_21B0F32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_11();
  v24 = v23;
  v26 = v25;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30);
  v31 = OUTLINED_FUNCTION_6_24();
  __swift_project_boxed_opaque_existential_0(v31, v32);
  v24();
  sub_21B112F34();
  if (!v22)
  {
    sub_21B112A94();
    OUTLINED_FUNCTION_84_1();
    sub_21B0F56C4();
    sub_21B112AC4();
    v33 = OUTLINED_FUNCTION_32_4();
    v34(v33, v29);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  OUTLINED_FUNCTION_13();
}

unint64_t AvroMapSchema.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return 0xD000000000000012;
}

unint64_t sub_21B0F3528(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B112A34();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21B0F3574(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_21_6();
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = OUTLINED_FUNCTION_73_1();
      break;
    case 5:
      result = OUTLINED_FUNCTION_69_1();
      break;
    case 6:
      result = OUTLINED_FUNCTION_68_1();
      break;
    case 7:
      result = OUTLINED_FUNCTION_71_1();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21B0F3658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0F3528(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_21B0F3688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0F3574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0F3730(uint64_t a1, char a2)
{
  sub_21B112EC4();
  sub_21B0F3574(a2);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

  return sub_21B112F14();
}

uint64_t static AvroPrimitiveSchema.__derived_struct_equals(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1819047278;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1819047278;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_21_6();
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7630441;
      break;
    case 3:
      v5 = 1735290732;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_73_1();
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_69_1();
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_68_1();
      break;
    case 7:
      v3 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_71_1();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_11();
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7630441;
      break;
    case 3:
      v2 = 1735290732;
      break;
    case 4:
      v6 = 0xE500000000000000;
      OUTLINED_FUNCTION_45_2();
      break;
    case 5:
      v6 = 0xE600000000000000;
      OUTLINED_FUNCTION_43_4();
      break;
    case 6:
      v6 = 0xE600000000000000;
      OUTLINED_FUNCTION_42_4();
      break;
    case 7:
      v6 = 0xE500000000000000;
      OUTLINED_FUNCTION_44_3();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

uint64_t sub_21B0F38FC(uint64_t a1, char a2)
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0F39EC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_4_24(a1);
  sub_21B0F3574(v1);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

  return sub_21B112F14();
}

uint64_t sub_21B0F3A58(uint64_t a1)
{
  v2 = *v1;
  sub_21B112EC4();
  AvroPrimitiveSchema.hash(into:)(v4, v2);
  return sub_21B112F14();
}

uint64_t sub_21B0F3B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_51_0(1701869940);
    OUTLINED_FUNCTION_58_1();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21B0F3BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21B0F3BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F3B4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21B0F3C24(uint64_t a1)
{
  v2 = sub_21B0F4018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F3C60(uint64_t a1)
{
  v2 = sub_21B0F4018();

  return MEMORY[0x2821FE720](a1, v2);
}

void AvroPrimitiveSchema.init(from:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47958, &qword_21B12C320);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-1] - v7;
  v9 = OUTLINED_FUNCTION_8_21();
  __swift_project_boxed_opaque_existential_0(v9, v10);
  sub_21B112F24();
  if (v0)
  {
    v11 = OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_1_27(v11, v12);
    sub_21B0F4018();
    sub_21B112F34();
    sub_21B0F57E0();
    sub_21B112AC4();
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    OUTLINED_FUNCTION_1_27(v14, v14[3]);
    sub_21B0F57E0();
    OUTLINED_FUNCTION_78_1();
    sub_21B112D14();
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_13();
}

void sub_21B0F3EAC(_BYTE *a1@<X8>)
{
  AvroPrimitiveSchema.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_21B0F3F14(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

unint64_t sub_21B0F3FC4()
{
  result = qword_27CD47888;
  if (!qword_27CD47888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47888);
  }

  return result;
}

unint64_t sub_21B0F4018()
{
  result = qword_27CD47898;
  if (!qword_27CD47898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47898);
  }

  return result;
}

unint64_t sub_21B0F406C()
{
  result = qword_27CD478A8;
  if (!qword_27CD478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478A8);
  }

  return result;
}

unint64_t sub_21B0F40C0()
{
  result = qword_27CD478B8;
  if (!qword_27CD478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478B8);
  }

  return result;
}

unint64_t sub_21B0F4114()
{
  result = qword_27CD478C8;
  if (!qword_27CD478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478C8);
  }

  return result;
}

unint64_t sub_21B0F4168()
{
  result = qword_27CD478E0;
  if (!qword_27CD478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478E0);
  }

  return result;
}

unint64_t sub_21B0F41BC()
{
  result = qword_27CD478E8;
  if (!qword_27CD478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478E8);
  }

  return result;
}

unint64_t sub_21B0F4210()
{
  result = qword_27CD478F0;
  if (!qword_27CD478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478F0);
  }

  return result;
}

unint64_t sub_21B0F4264()
{
  result = qword_27CD478F8;
  if (!qword_27CD478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478F8);
  }

  return result;
}

unint64_t sub_21B0F42B8()
{
  result = qword_27CD47900;
  if (!qword_27CD47900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47900);
  }

  return result;
}

void AvroUnionSchema.hash(into:)()
{
  OUTLINED_FUNCTION_31_7();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 8;

      v3 = OUTLINED_FUNCTION_105();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v4);

      --v0;
    }

    while (v0);
  }
}

uint64_t sub_21B0F437C()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_4_24(v2);
  v0(v4, v1);
  return sub_21B112F14();
}

uint64_t sub_21B0F43E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_21B112EC4();
  a4(v8, v6);
  return sub_21B112F14();
}

uint64_t AvroUnionSchema.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  OUTLINED_FUNCTION_88_1();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_27(v6, v6[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47968, &qword_21B12C328);
    sub_21B0F5834();
    sub_21B112D14();
    v1 = v5;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

uint64_t sub_21B0F4534@<X0>(uint64_t *a1@<X8>)
{
  result = AvroUnionSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_21B0F4590()
{
  OUTLINED_FUNCTION_31_7();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      v2 += 8;

      v3 = OUTLINED_FUNCTION_105();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v3, v4);

      --v0;
    }

    while (v0);
  }
}

uint64_t sub_21B0F45E4(uint64_t a1, uint64_t a2)
{
  v242 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  result = MEMORY[0x21CEEA150](v4);
  v218 = v4;
  if (v4)
  {
    v6 = 0;
    v217 = a2 + 32;
    do
    {
      v219 = v6;
      v7 = (v217 + 72 * v6);
      memcpy(__dst, v7, 0x41uLL);
      v8 = __dst[0];
      v9 = __dst[1];
      v10 = __dst[3];
      v11 = __dst[5];
      v12 = __dst[6];
      switch(LOBYTE(__dst[8]))
      {
        case 1:
          OUTLINED_FUNCTION_40_4();
          v30 = OUTLINED_FUNCTION_5_33();
          sub_21B0F6800(v30, v31);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          v32 = OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v32, v33);
          v34 = OUTLINED_FUNCTION_2_28();
          sub_21B0F45E4(v34, v35);
          goto LABEL_41;
        case 2:
          OUTLINED_FUNCTION_39_3();
          v20 = OUTLINED_FUNCTION_5_33();
          sub_21B0F6800(v20, v21);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          v22 = OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v22, v23);
          v24 = OUTLINED_FUNCTION_2_28();
          sub_21B10BF04(v24, v25);
          goto LABEL_41;
        case 3:
          memcpy(v239, v7, 0x41uLL);
          OUTLINED_FUNCTION_41_4();
          v26 = OUTLINED_FUNCTION_82_0();
          sub_21B0F6970(v26, v27);
          v28 = OUTLINED_FUNCTION_82_0();
          sub_21B0F6970(v28, v29);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          if (v11)
          {
            OUTLINED_FUNCTION_64_1();
            OUTLINED_FUNCTION_20_8();
          }

          else
          {
            OUTLINED_FUNCTION_63_1();
          }

          v44 = v219;
          MEMORY[0x21CEEA150](*(v12 + 16));
          for (i = *(v12 + 16); i; --i)
          {
            OUTLINED_FUNCTION_18_7();

            OUTLINED_FUNCTION_52();
            _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

            v46 = OUTLINED_FUNCTION_26_5();
            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v46, v47);
            OUTLINED_FUNCTION_62_0();
          }

          v48 = OUTLINED_FUNCTION_8_21();
          sub_21B0F45E4(v48, v49);
          goto LABEL_165;
        case 4:
          memcpy(v239, (__dst[0] + 16), sizeof(v239));
          OUTLINED_FUNCTION_38_5();
          v13 = v239[0];
          MEMORY[0x21CEEA150](*(v239[0] + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 32;
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_97_1();
            v16 = OUTLINED_FUNCTION_82_0();
            sub_21B0F685C(v16, v17);
            do
            {
              v15 += 8;

              v18 = OUTLINED_FUNCTION_52();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v18, v19);

              --v14;
            }

            while (v14);
          }

          else
          {
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_97_1();
            v36 = OUTLINED_FUNCTION_82_0();
            sub_21B0F685C(v36, v37);
          }

          v38 = v239[1];
          v39 = v239[2];
          v40 = v239[4];
          v41 = v239[5];
          v42 = v239[6];
          v43 = v239[7];
          switch(LOBYTE(v239[9]))
          {
            case 1:
              OUTLINED_FUNCTION_40_4();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              v56 = OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v56, v57);
              v58 = OUTLINED_FUNCTION_2_28();
              sub_21B0F45E4(v58, v59);
              goto LABEL_30;
            case 2:
              OUTLINED_FUNCTION_39_3();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              v52 = OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v52, v53);
              v54 = OUTLINED_FUNCTION_2_28();
              sub_21B10BF04(v54, v55);
LABEL_30:
              v44 = v219;
              break;
            case 3:
              OUTLINED_FUNCTION_41_4();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              if (v42)
              {
                OUTLINED_FUNCTION_64_1();
                OUTLINED_FUNCTION_20_8();
              }

              else
              {
                OUTLINED_FUNCTION_63_1();
              }

              v44 = v219;
              v75 = *(v43 + 16);
              MEMORY[0x21CEEA150](v75);
              for (; v75; --v75)
              {
                OUTLINED_FUNCTION_18_7();

                OUTLINED_FUNCTION_52();
                _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                v76 = OUTLINED_FUNCTION_26_5();
                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v76, v77);
                OUTLINED_FUNCTION_62_0();
              }

              v78 = OUTLINED_FUNCTION_8_21();
              sub_21B0F45E4(v78, v79);
              break;
            case 4:
              memcpy(v238, (v239[1] + 16), sizeof(v238));
              OUTLINED_FUNCTION_38_5();
              OUTLINED_FUNCTION_65_0();
              if (v41)
              {
                sub_21B0F685C(v238, &v231);
                do
                {
                  OUTLINED_FUNCTION_70_1();
                  v50 = OUTLINED_FUNCTION_52();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v50, v51);

                  --v41;
                }

                while (v41);
              }

              else
              {
                sub_21B0F685C(v238, &v231);
              }

              v44 = v238[3];
              v69 = v238[4];
              v70 = v238[5];
              v71 = v238[6];
              switch(LOBYTE(v238[9]))
              {
                case 1:
                  OUTLINED_FUNCTION_40_4();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  v98 = OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v98, v99);
                  v100 = OUTLINED_FUNCTION_8_21();
                  sub_21B0F45E4(v100, v101);
                  goto LABEL_64;
                case 2:
                  OUTLINED_FUNCTION_39_3();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  v94 = OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v94, v95);
                  v96 = OUTLINED_FUNCTION_8_21();
                  sub_21B10BF04(v96, v97);
                  goto LABEL_64;
                case 3:
                  OUTLINED_FUNCTION_41_4();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  if (v71)
                  {
                    OUTLINED_FUNCTION_64_1();
                    OUTLINED_FUNCTION_20_8();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_63_1();
                  }

                  OUTLINED_FUNCTION_13_9();
                  for (; v69; --v69)
                  {
                    OUTLINED_FUNCTION_18_7();

                    OUTLINED_FUNCTION_52();
                    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                    v117 = OUTLINED_FUNCTION_26_5();
                    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v117, v118);
                    OUTLINED_FUNCTION_62_0();
                  }

                  v119 = OUTLINED_FUNCTION_9_20();
                  sub_21B0F45E4(v119, v120);
                  goto LABEL_163;
                case 4:
                  OUTLINED_FUNCTION_95_1(&v231);
                  OUTLINED_FUNCTION_38_5();
                  OUTLINED_FUNCTION_65_0();
                  if (v70)
                  {
                    sub_21B0F685C(&v231, v228);
                    do
                    {
                      OUTLINED_FUNCTION_70_1();
                      v92 = OUTLINED_FUNCTION_52();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v92, v93);

                      --v70;
                    }

                    while (v70);
                  }

                  else
                  {
                    sub_21B0F685C(&v231, v228);
                  }

                  v44 = v232;
                  v111 = v233;
                  v112 = v234;
                  v113 = v235;
                  switch(v236)
                  {
                    case 1:
                      OUTLINED_FUNCTION_40_4();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      v139 = OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v139, v140);
                      v141 = OUTLINED_FUNCTION_8_21();
                      sub_21B0F45E4(v141, v142);
                      goto LABEL_98;
                    case 2:
                      OUTLINED_FUNCTION_39_3();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      v135 = OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v135, v136);
                      v137 = OUTLINED_FUNCTION_8_21();
                      sub_21B10BF04(v137, v138);
                      goto LABEL_98;
                    case 3:
                      OUTLINED_FUNCTION_41_4();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      if (v113)
                      {
                        OUTLINED_FUNCTION_64_1();
                        OUTLINED_FUNCTION_20_8();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_63_1();
                      }

                      OUTLINED_FUNCTION_13_9();
                      for (; v111; --v111)
                      {
                        OUTLINED_FUNCTION_18_7();

                        OUTLINED_FUNCTION_52();
                        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                        v158 = OUTLINED_FUNCTION_26_5();
                        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v158, v159);
                        OUTLINED_FUNCTION_62_0();
                      }

                      v160 = OUTLINED_FUNCTION_9_20();
                      sub_21B0F45E4(v160, v161);
                      goto LABEL_162;
                    case 4:
                      OUTLINED_FUNCTION_95_1(v228);
                      OUTLINED_FUNCTION_38_5();
                      OUTLINED_FUNCTION_65_0();
                      if (v112)
                      {
                        sub_21B0F685C(v228, v225);
                        do
                        {
                          OUTLINED_FUNCTION_70_1();
                          v133 = OUTLINED_FUNCTION_52();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v133, v134);

                          --v112;
                        }

                        while (v112);
                      }

                      else
                      {
                        sub_21B0F685C(v228, v225);
                      }

                      v44 = v228[3];
                      v152 = v228[4];
                      v153 = v228[5];
                      v154 = v228[6];
                      switch(v229)
                      {
                        case 1:
                          OUTLINED_FUNCTION_40_4();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          v168 = OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v168, v169);
                          v170 = OUTLINED_FUNCTION_8_21();
                          sub_21B0F45E4(v170, v171);
                          goto LABEL_119;
                        case 2:
                          OUTLINED_FUNCTION_39_3();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          v164 = OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v164, v165);
                          v166 = OUTLINED_FUNCTION_8_21();
                          sub_21B10BF04(v166, v167);
                          goto LABEL_119;
                        case 3:
                          OUTLINED_FUNCTION_41_4();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          if (v154)
                          {
                            OUTLINED_FUNCTION_64_1();
                            OUTLINED_FUNCTION_20_8();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_63_1();
                          }

                          OUTLINED_FUNCTION_13_9();
                          for (; v152; --v152)
                          {
                            OUTLINED_FUNCTION_18_7();

                            OUTLINED_FUNCTION_52();
                            _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                            v183 = OUTLINED_FUNCTION_26_5();
                            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v183, v184);
                            OUTLINED_FUNCTION_62_0();
                          }

                          v185 = OUTLINED_FUNCTION_9_20();
                          sub_21B0F45E4(v185, v186);
                          goto LABEL_161;
                        case 4:
                          OUTLINED_FUNCTION_95_1(v225);
                          OUTLINED_FUNCTION_38_5();
                          OUTLINED_FUNCTION_65_0();
                          if (v153)
                          {
                            sub_21B0F685C(v225, v222);
                            do
                            {
                              OUTLINED_FUNCTION_70_1();
                              v162 = OUTLINED_FUNCTION_52();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v162, v163);

                              --v153;
                            }

                            while (v153);
                          }

                          else
                          {
                            sub_21B0F685C(v225, v222);
                          }

                          v44 = v225[3];
                          v177 = v225[4];
                          v178 = v225[5];
                          v179 = v225[6];
                          switch(v226)
                          {
                            case 1:
                              OUTLINED_FUNCTION_40_4();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              v193 = OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v193, v194);
                              v195 = OUTLINED_FUNCTION_8_21();
                              sub_21B0F45E4(v195, v196);
                              goto LABEL_138;
                            case 2:
                              OUTLINED_FUNCTION_39_3();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              v189 = OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v189, v190);
                              v191 = OUTLINED_FUNCTION_8_21();
                              sub_21B10BF04(v191, v192);
                              goto LABEL_138;
                            case 3:
                              OUTLINED_FUNCTION_41_4();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              if (v179)
                              {
                                OUTLINED_FUNCTION_64_1();
                                OUTLINED_FUNCTION_20_8();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_63_1();
                              }

                              OUTLINED_FUNCTION_13_9();
                              for (; v177; --v177)
                              {
                                OUTLINED_FUNCTION_18_7();

                                OUTLINED_FUNCTION_52();
                                _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                                v201 = OUTLINED_FUNCTION_26_5();
                                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v201, v202);
                                OUTLINED_FUNCTION_62_0();
                              }

                              v203 = OUTLINED_FUNCTION_9_20();
                              sub_21B0F45E4(v203, v204);
                              goto LABEL_160;
                            case 4:
                              OUTLINED_FUNCTION_95_1(v222);
                              OUTLINED_FUNCTION_38_5();
                              OUTLINED_FUNCTION_65_0();
                              if (v178)
                              {
                                sub_21B0F685C(v222, v221);
                                do
                                {
                                  OUTLINED_FUNCTION_70_1();
                                  v187 = OUTLINED_FUNCTION_52();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v187, v188);

                                  --v178;
                                }

                                while (v178);
                              }

                              else
                              {
                                sub_21B0F685C(v222, v221);
                              }

                              v197 = v222[2];
                              v198 = v222[6];
                              switch(v223)
                              {
                                case 1:
                                  OUTLINED_FUNCTION_40_4();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  v211 = OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v211, v212);
                                  v213 = OUTLINED_FUNCTION_9_20();
                                  sub_21B0F45E4(v213, v214);
                                  goto LABEL_154;
                                case 2:
                                  OUTLINED_FUNCTION_39_3();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  v207 = OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v207, v208);
                                  v209 = OUTLINED_FUNCTION_9_20();
                                  sub_21B10BF04(v209, v210);
                                  goto LABEL_154;
                                case 3:
                                  OUTLINED_FUNCTION_41_4();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  if (v198)
                                  {
                                    OUTLINED_FUNCTION_64_1();
                                    OUTLINED_FUNCTION_30_5();
                                    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_63_1();
                                  }

                                  v44 = v219;
                                  OUTLINED_FUNCTION_26_5();
                                  sub_21B0F55EC();
                                  v215 = OUTLINED_FUNCTION_109();
                                  sub_21B0F45E4(v215, v216);
                                  goto LABEL_159;
                                case 4:
                                  memcpy(v221, (v222[1] + 16), sizeof(v221));
                                  OUTLINED_FUNCTION_38_5();
                                  OUTLINED_FUNCTION_65_0();
                                  if (v198)
                                  {
                                    sub_21B0F685C(v221, v220);
                                    v44 = v219;
                                    do
                                    {
                                      OUTLINED_FUNCTION_70_1();
                                      v205 = OUTLINED_FUNCTION_52();
                                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v205, v206);

                                      --v198;
                                    }

                                    while (v198);
                                  }

                                  else
                                  {
                                    sub_21B0F685C(v221, v220);
                                    v44 = v219;
                                  }

                                  memcpy(v241, &v221[1], sizeof(v241));
                                  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
                                  MEMORY[0x21CEEA150](v221[10]);
                                  sub_21B0F68B8(v221);
                                  goto LABEL_159;
                                default:
                                  OUTLINED_FUNCTION_48_3();
                                  v199 = OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v199, v200, v197);
LABEL_154:
                                  v44 = v219;
LABEL_159:
                                  MEMORY[0x21CEEA150](v224);
                                  sub_21B0F68B8(v222);
                                  break;
                              }

                              goto LABEL_160;
                            default:
                              OUTLINED_FUNCTION_48_3();
                              v180 = OUTLINED_FUNCTION_0_29();
                              OUTLINED_FUNCTION_98_1(v180, v181, v182);
LABEL_138:
                              v44 = v219;
LABEL_160:
                              MEMORY[0x21CEEA150](v227);
                              sub_21B0F68B8(v225);
                              break;
                          }

                          goto LABEL_161;
                        default:
                          OUTLINED_FUNCTION_48_3();
                          v155 = OUTLINED_FUNCTION_0_29();
                          OUTLINED_FUNCTION_98_1(v155, v156, v157);
LABEL_119:
                          v44 = v219;
LABEL_161:
                          MEMORY[0x21CEEA150](v230);
                          sub_21B0F68B8(v228);
                          break;
                      }

                      goto LABEL_162;
                    default:
                      OUTLINED_FUNCTION_48_3();
                      v114 = OUTLINED_FUNCTION_0_29();
                      OUTLINED_FUNCTION_98_1(v114, v115, v116);
LABEL_98:
                      v44 = v219;
LABEL_162:
                      MEMORY[0x21CEEA150](v237);
                      sub_21B0F68B8(&v231);
                      break;
                  }

                  goto LABEL_163;
                default:
                  OUTLINED_FUNCTION_48_3();
                  v72 = OUTLINED_FUNCTION_0_29();
                  OUTLINED_FUNCTION_98_1(v72, v73, v74);
LABEL_64:
                  v44 = v219;
LABEL_163:
                  MEMORY[0x21CEEA150](v238[10]);
                  sub_21B0F68B8(v238);
                  break;
              }

              break;
            default:
              OUTLINED_FUNCTION_48_3();
              switch(v40)
              {
                case 1:
                  OUTLINED_FUNCTION_39_3();
                  goto LABEL_73;
                case 2:
                  OUTLINED_FUNCTION_41_4();
                  v102 = v38;
                  goto LABEL_69;
                case 3:
                  OUTLINED_FUNCTION_38_5();
LABEL_73:
                  sub_21B112EF4();
                  goto LABEL_30;
                case 4:
                  MEMORY[0x21CEEA150](5);
                  if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v102 = v38;
                  }

                  else
                  {
                    v102 = 0;
                  }

LABEL_69:
                  MEMORY[0x21CEEA180](v102);
                  goto LABEL_30;
                case 5:
                  MEMORY[0x21CEEA150](6);
                  OUTLINED_FUNCTION_9_20();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  goto LABEL_30;
                case 6:
                  MEMORY[0x21CEEA150](7);
                  if (((v39 >> 60) & 3) != 0)
                  {
                    v103 = OUTLINED_FUNCTION_656();
                    sub_21AF99818(v103, v104);
                    v44 = v219;
                  }

                  else
                  {
                    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                    v232 = v127;
                    v233 = sub_21B0F690C();
                    v231 = v38;
                    v128 = __swift_project_boxed_opaque_existential_0(&v231, v127);
                    v129 = *v128;
                    v130 = *(*v128 + 16);
                    if (v130)
                    {
                      v44 = v219;
                      if (v130 <= 0xE)
                      {
                        *(v238 + 6) = 0;
                        v238[0] = 0;
                        BYTE6(v238[1]) = v130;
                        memcpy(v238, (v129 + 32), v130);
                        OUTLINED_FUNCTION_49_3();
                        OUTLINED_FUNCTION_34_6();
                      }

                      else
                      {
                        v131 = sub_21B110C34();
                        OUTLINED_FUNCTION_93_1(v131);
                        OUTLINED_FUNCTION_85_1();
                        if (v130 >= v132)
                        {
                          OUTLINED_FUNCTION_34_6();
                          OUTLINED_FUNCTION_92_1();
                          OUTLINED_FUNCTION_45();
                          v172 = sub_21B110E04();
                          v173 = OUTLINED_FUNCTION_96_1(v172);
                          *(v173 + 16) = 0;
                          *(v173 + 24) = v130;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_34_6();
                          OUTLINED_FUNCTION_92_1();
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_34_6();
                      v44 = v219;
                    }

                    __swift_destroy_boxed_opaque_existential_0(&v231);
                  }

                  OUTLINED_FUNCTION_656();
                  v174 = sub_21B110EB4();
                  v175 = OUTLINED_FUNCTION_656();
                  sub_21AF99728(v175, v176);
                  MEMORY[0x21CEEA150](v174);
                  goto LABEL_164;
                case 7:
                  OUTLINED_FUNCTION_48_3();
                  goto LABEL_30;
                default:
                  OUTLINED_FUNCTION_40_4();
                  sub_21B112EE4();
                  goto LABEL_30;
              }
          }

LABEL_164:
          MEMORY[0x21CEEA150](v239[10]);
          sub_21B0F68B8(v239);
LABEL_165:
          sub_21AFC54B0(__dst);
          result = sub_21AFC54B0(__dst);
          break;
        default:
          OUTLINED_FUNCTION_48_3();
          switch(v10)
          {
            case 1:
              OUTLINED_FUNCTION_39_3();
              goto LABEL_39;
            case 2:
              OUTLINED_FUNCTION_41_4();
              v60 = v8;
              goto LABEL_35;
            case 3:
              OUTLINED_FUNCTION_38_5();
LABEL_39:
              sub_21B112EF4();
              break;
            case 4:
              MEMORY[0x21CEEA150](5);
              if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v60 = v8;
              }

              else
              {
                v60 = 0;
              }

LABEL_35:
              MEMORY[0x21CEEA180](v60);
              break;
            case 5:
              MEMORY[0x21CEEA150](6);
              v61 = OUTLINED_FUNCTION_5_33();
              sub_21B0F6800(v61, v62);
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              goto LABEL_41;
            case 6:
              MEMORY[0x21CEEA150](7);
              if (((v9 >> 60) & 3) != 0)
              {
                v63 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v63, v64);
                v65 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v65, v66);
                v67 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v67, v68);
                v44 = v219;
              }

              else
              {
                v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                v238[3] = v80;
                v238[4] = sub_21B0F690C();
                v238[0] = v8;
                v81 = __swift_project_boxed_opaque_existential_0(v238, v80);
                v82 = *v81;
                v83 = *(*v81 + 16);
                if (v83)
                {
                  v44 = v219;
                  if (v83 <= 0xE)
                  {
                    *(v239 + 6) = 0;
                    v239[0] = 0;
                    BYTE6(v239[1]) = v83;
                    memcpy(v239, (v82 + 32), v83);
                    OUTLINED_FUNCTION_49_3();
                    v121 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v121, v122);
                    v123 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v123, v124);
                    v125 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v125, v126);
                  }

                  else
                  {
                    v84 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v84);
                    OUTLINED_FUNCTION_85_1();
                    v85 = OUTLINED_FUNCTION_5_33();
                    if (v83 >= v87)
                    {
                      sub_21B0F6800(v85, v86);
                      v143 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v143, v144);
                      v145 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v145, v146);
                      OUTLINED_FUNCTION_92_1();
                      OUTLINED_FUNCTION_45();
                      v147 = sub_21B110E04();
                      v148 = OUTLINED_FUNCTION_96_1(v147);
                      *(v148 + 16) = 0;
                      *(v148 + 24) = v83;
                    }

                    else
                    {
                      sub_21B0F6800(v85, v86);
                      v88 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v88, v89);
                      v90 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v90, v91);
                      OUTLINED_FUNCTION_92_1();
                    }
                  }
                }

                else
                {
                  v105 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v105, v106);
                  v107 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v107, v108);
                  v109 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v109, v110);
                  v44 = v219;
                }

                __swift_destroy_boxed_opaque_existential_0(v238);
              }

              OUTLINED_FUNCTION_656();
              v149 = sub_21B110EB4();
              v150 = OUTLINED_FUNCTION_656();
              sub_21AF99728(v150, v151);
              MEMORY[0x21CEEA150](v149);
              goto LABEL_165;
            case 7:
              OUTLINED_FUNCTION_48_3();
              break;
            default:
              OUTLINED_FUNCTION_40_4();
              sub_21B112EE4();
              break;
          }

          sub_21AFC54B0(__dst);
LABEL_41:
          result = sub_21AFC54B0(__dst);
          v44 = v219;
          break;
      }

      v6 = v44 + 1;
    }

    while (v6 != v218);
  }

  return result;
}

void sub_21B0F55EC()
{
  OUTLINED_FUNCTION_31_7();
  if (v0)
  {
    v3 = (v2 + 48);
    do
    {
      v4 = *v3;
      v3 += 3;

      OUTLINED_FUNCTION_105();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v1, v4);
      OUTLINED_FUNCTION_62_0();

      --v0;
    }

    while (v0);
  }
}

unint64_t sub_21B0F5670()
{
  result = qword_27CD47918;
  if (!qword_27CD47918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47918);
  }

  return result;
}

unint64_t sub_21B0F56C4()
{
  result = qword_27CD47928;
  if (!qword_27CD47928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47928);
  }

  return result;
}

uint64_t sub_21B0F5718(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD478D0, &qword_21B12C2E8);
    a2();
    OUTLINED_FUNCTION_35_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B0F578C()
{
  result = qword_27CD47940;
  if (!qword_27CD47940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47940);
  }

  return result;
}

unint64_t sub_21B0F57E0()
{
  result = qword_27CD47960;
  if (!qword_27CD47960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47960);
  }

  return result;
}

unint64_t sub_21B0F5834()
{
  result = qword_27CD47970;
  if (!qword_27CD47970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47968, &qword_21B12C328);
    sub_21B0F56C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47970);
  }

  return result;
}

unint64_t sub_21B0F58BC()
{
  result = qword_27CD47978;
  if (!qword_27CD47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47978);
  }

  return result;
}

unint64_t sub_21B0F5914()
{
  result = qword_27CD47980;
  if (!qword_27CD47980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47980);
  }

  return result;
}

unint64_t sub_21B0F596C()
{
  result = qword_27CD47988;
  if (!qword_27CD47988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47988);
  }

  return result;
}

unint64_t sub_21B0F59C4()
{
  result = qword_27CD47990;
  if (!qword_27CD47990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47990);
  }

  return result;
}

unint64_t sub_21B0F5A1C()
{
  result = qword_27CD47998;
  if (!qword_27CD47998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47998);
  }

  return result;
}

unint64_t sub_21B0F5A74()
{
  result = qword_27CD479A0;
  if (!qword_27CD479A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479A0);
  }

  return result;
}

unint64_t sub_21B0F5ACC()
{
  result = qword_27CD479A8;
  if (!qword_27CD479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479A8);
  }

  return result;
}

uint64_t sub_21B0F5B44(uint64_t a1, int a2)
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

uint64_t sub_21B0F5B84(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21B0F5C08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21B0F5C48(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21B0F5CAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      return OUTLINED_FUNCTION_76_1(*a1 + 123);
    }

    v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
    if (v3 >= 0x7B)
    {
      return OUTLINED_FUNCTION_76_1(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_76_1(v3);
}

uint64_t sub_21B0F5CFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B0F5D8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_76_1(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_76_1(v8);
}

_BYTE *sub_21B0F5E10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          result = OUTLINED_FUNCTION_39(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AvroRecordSchema.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21B0F5FD0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_76_1(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_76_1((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_76_1(v8);
}

_BYTE *sub_21B0F6054(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_39(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_21B0F612C(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0F61D8()
{
  result = qword_27CD479B0;
  if (!qword_27CD479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479B0);
  }

  return result;
}

unint64_t sub_21B0F6230()
{
  result = qword_27CD479B8;
  if (!qword_27CD479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479B8);
  }

  return result;
}

unint64_t sub_21B0F6288()
{
  result = qword_27CD479C0;
  if (!qword_27CD479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479C0);
  }

  return result;
}

unint64_t sub_21B0F62E0()
{
  result = qword_27CD479C8;
  if (!qword_27CD479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479C8);
  }

  return result;
}

unint64_t sub_21B0F6338()
{
  result = qword_27CD479D0;
  if (!qword_27CD479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479D0);
  }

  return result;
}

unint64_t sub_21B0F6390()
{
  result = qword_27CD479D8;
  if (!qword_27CD479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479D8);
  }

  return result;
}

unint64_t sub_21B0F63E8()
{
  result = qword_27CD479E0;
  if (!qword_27CD479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479E0);
  }

  return result;
}

unint64_t sub_21B0F6440()
{
  result = qword_27CD479E8;
  if (!qword_27CD479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479E8);
  }

  return result;
}

unint64_t sub_21B0F6498()
{
  result = qword_27CD479F0;
  if (!qword_27CD479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479F0);
  }

  return result;
}

unint64_t sub_21B0F64F0()
{
  result = qword_27CD479F8;
  if (!qword_27CD479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD479F8);
  }

  return result;
}

unint64_t sub_21B0F6548()
{
  result = qword_27CD47A00;
  if (!qword_27CD47A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A00);
  }

  return result;
}

unint64_t sub_21B0F65A0()
{
  result = qword_27CD47A08;
  if (!qword_27CD47A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A08);
  }

  return result;
}

unint64_t sub_21B0F65F8()
{
  result = qword_27CD47A10;
  if (!qword_27CD47A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A10);
  }

  return result;
}

unint64_t sub_21B0F6650()
{
  result = qword_27CD47A18;
  if (!qword_27CD47A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A18);
  }

  return result;
}

unint64_t sub_21B0F66A8()
{
  result = qword_27CD47A20;
  if (!qword_27CD47A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A20);
  }

  return result;
}

unint64_t sub_21B0F6700()
{
  result = qword_27CD47A28;
  if (!qword_27CD47A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A28);
  }

  return result;
}

unint64_t sub_21B0F6758()
{
  result = qword_27CD47A30;
  if (!qword_27CD47A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A30);
  }

  return result;
}

unint64_t sub_21B0F67AC()
{
  result = qword_27CD47A38;
  if (!qword_27CD47A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A38);
  }

  return result;
}

unint64_t sub_21B0F690C()
{
  result = qword_27CD47A48;
  if (!qword_27CD47A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47A40, &qword_21B12D320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A48);
  }

  return result;
}

uint64_t sub_21B0F69CC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_21B0F69F0(a1, a2);
  }

  if (a4 == 5)
  {
  }

  return a1;
}

uint64_t sub_21B0F69F0(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_21AF99818(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void sub_21B0F6A44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 0:

      sub_21B0F6B5C(a1, a2, a3, a4);
      break;
    case 1:
    case 2:

      goto LABEL_3;
    case 3:

      break;
    case 4:
LABEL_3:

      break;
    default:
      return;
  }
}

uint64_t sub_21B0F6B5C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 6)
  {
    return sub_21B0F6B80(a1, a2);
  }

  if (a4 == 5)
  {
  }

  return a1;
}

uint64_t sub_21B0F6B80(uint64_t result, unint64_t a2)
{
  switch((a2 >> 60) & 3)
  {
    case 1uLL:
    case 2uLL:
      result = sub_21AF99728(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

void *OUTLINED_FUNCTION_4_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_21B112D14();
}

void OUTLINED_FUNCTION_13_9()
{

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_16_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_20_8()
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

void OUTLINED_FUNCTION_31_7()
{

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_34_6()
{

  return sub_21B0F6800(&STACK[0x2A0], &STACK[0x240]);
}

void *OUTLINED_FUNCTION_37_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(&__dst + 6) = 0;
  *&__dst = 0;
  BYTE14(__dst) = v64;

  return memcpy(&__dst, (v65 + 32), v64);
}

void OUTLINED_FUNCTION_38_5()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_39_3()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_40_4()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x21CEEA150);
}

void OUTLINED_FUNCTION_48_3()
{

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_51_0(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_62_0()
{
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return sub_21B112EE4();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_21B112EE4();
}

void OUTLINED_FUNCTION_65_0()
{

  JUMPOUT(0x21CEEA150);
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_70_1()
{
}

void OUTLINED_FUNCTION_74_0()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_86_1(uint64_t a1, uint64_t a2)
{
}

uint64_t OUTLINED_FUNCTION_87_1(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

void *OUTLINED_FUNCTION_88_1()
{

  return sub_21B112F24();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_21B110BF4();
}

uint64_t OUTLINED_FUNCTION_92_1()
{

  return sub_21B110BF4();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_94_1()
{

  JUMPOUT(0x21CEE9770);
}

void *OUTLINED_FUNCTION_95_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_96_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_97_1()
{

  return sub_21B0F6800(v0 - 240, &STACK[0x240]);
}

uint64_t OUTLINED_FUNCTION_98_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(a1, a2, a3);
}

uint64_t AvroRecord.encodeAsSingleObject(withFingerprint:)(Swift::OpaquePointer a1)
{
  v3 = v1[1];
  v16[0] = *v1;
  v16[1] = v3;
  v4 = v1[3];
  v16[2] = v1[2];
  v16[3] = v4;
  v14 = xmmword_21B117F10;
  v15 = 0;
  ByteBuffer.writeBytes(_:)(&unk_282C971D0);
  ByteBuffer.writeBytes(_:)(a1);
  v17 = 3;
  sub_21B0F6970(v1, &v13);
  ByteBuffer.writeAvroValue(_:)(v16, v5, v6, v7, v8, v9, v10, v11);
  sub_21AFC5398(v1);
  return v14;
}

uint64_t sub_21B0F7374(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21B0F73B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static AvroValue.optionalString(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = 7;
  }

  *(a3 + 24) = v4;
  *(a3 + 64) = 0;
}

uint64_t AvroValue.getPrimitive<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 64))
  {
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, a1);
  }

  else
  {
    return AvroPrimitive.get<A>()(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), a1, a2);
  }
}

Swift::Int __swiftcall ByteBuffer.writeBytes(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {
    return 0;
  }

  sub_21B110E14();
  return *(a1._rawValue + 2);
}

char *Endianness.host.unsafeMutableAddressor()
{
  if (qword_27CD47880 != -1)
  {
    OUTLINED_FUNCTION_4_31(&qword_27CD47880);
  }

  return &static Endianness.host;
}

uint64_t static Endianness.host.getter()
{
  if (qword_27CD47880 != -1)
  {
    OUTLINED_FUNCTION_4_31(&qword_27CD47880);
  }

  return static Endianness.host;
}

uint64_t Endianness.hashValue.getter(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21B0F760C(uint64_t a1)
{
  v2 = *v1;
  sub_21B112EC4();
  Endianness.hash(into:)(v4, v2);
  return sub_21B112F14();
}

double ByteBuffer.readableBytesView.getter@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>)
{
  ByteBufferView.init(_:)(a2, a3, a4, v9);
  v5 = OUTLINED_FUNCTION_7();
  sub_21AF99818(v5, v6);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t ByteBufferView.init(_:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_18;
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      if (v4 < a3)
      {
        __break(1u);
        goto LABEL_16;
      }

      if (a3 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = 0;
      switch(a2 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(HIDWORD(result), result))
          {
            goto LABEL_20;
          }

          v8 = HIDWORD(result) - result;
          break;
        case 2uLL:
          v10 = *(result + 16);
          v9 = *(result + 24);
          v8 = v9 - v10;
          if (__OFSUB__(v9, v10))
          {
            goto LABEL_21;
          }

          break;
        case 3uLL:
          break;
        default:
          v8 = BYTE6(a2);
          break;
      }

      if (v8 >= v4)
      {
        *a4 = result;
        a4[1] = a2;
        a4[2] = a3;
        a4[3] = a3;
        a4[4] = v4;
        return result;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
  }
}

uint64_t ByteBuffer.count.getter(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = __OFSUB__(HIDWORD(a1), a1);
      v5 = HIDWORD(a1) - a1;
      if (v4)
      {
        __break(1u);
        goto LABEL_8;
      }

      result = v5;
      break;
    case 2uLL:
      v8 = a1 + 16;
      v6 = *(a1 + 16);
      v7 = *(v8 + 8);
      result = v7 - v6;
      if (__OFSUB__(v7, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer._toEndianness<A>(value:endianness:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    return sub_21B112974();
  }

  else
  {
    return sub_21B112984();
  }
}

uint64_t sub_21B0F7860(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_9;
      }

      v3 = v3;
      goto LABEL_6;
    case 2uLL:
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
LABEL_6:
      result = v3 - a3;
      if (__OFSUB__(v3, a3))
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
  }
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_21B110E14();
  }

  return 0;
}

uint64_t ByteBuffer.init(data:)()
{
  sub_21AF99728(0, 0xC000000000000000);
  v0 = OUTLINED_FUNCTION_7();
  sub_21AF99818(v0, v1);
  v2 = OUTLINED_FUNCTION_7();
  sub_21AF99728(v2, v3);
  return OUTLINED_FUNCTION_7();
}

uint64_t ByteBuffer.readInteger<A>(endianness:as:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_21B112774();
  OUTLINED_FUNCTION_6_25();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = v3[2];
  ByteBuffer.getInteger<A>(at:endianness:as:)(v12, v12, a2, &v20 - v10, *v3, v3[1]);
  if (__swift_getEnumTagSinglePayload(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v6);
    v13 = a3;
    v14 = 1;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, a2);
  }

  v15 = *(a2 - 8) + 32;
  result = (*v15)(a3, v11, a2);
  v17 = *(v15 + 32);
  v18 = __OFADD__(v12, v17);
  v19 = v12 + v17;
  if (!v18)
  {
    v3[2] = v19;
    v13 = a3;
    v14 = 0;
    return __swift_storeEnumTagSinglePayload(v13, v14, 1, a2);
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.getInteger<A>(at:endianness:as:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v7 = *(*(a3 - 8) + 64);
  if (result < a2 || v7 < 0)
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  else if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84B78];
    if (a3 == MEMORY[0x277D84B78])
    {
      v19 = MEMORY[0x28223BE20](result);
      v25 = v10;
      v26 = v20;
      v27 = v19;
      v28 = v21;
      ByteBuffer.withUnsafeBytes<A>(_:)(sub_21B0F9CF4, v24, a5, a6, v22, v10);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v10);
    }

    else
    {
      v11 = MEMORY[0x28223BE20](result);
      v23[2] = v12;
      v23[3] = v13;
      v24[0] = v11;
      v24[1] = v14;
      v25 = a5;
      v26 = a6;
      v27 = v15;
      LOBYTE(v28) = v16 & 1;
      v17 = sub_21B112774();
      return ByteBuffer.withUnsafeBytes<A>(_:)(sub_21B0F9CBC, v23, a5, a6, v18, v17);
    }
  }

  return result;
}

Swift::Void __swiftcall ByteBuffer.moveReaderIndex(forwardBy:)(Swift::Int forwardBy)
{
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, forwardBy);
  v4 = v2 + forwardBy;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;
  }
}

Swift::String_optional __swiftcall ByteBuffer.readString(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
    v9 = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_11_11();
      length = sub_21B0F7E2C(v4, v5, v6, v7, v8);
      if (v9)
      {
        *(v1 + 16) = v3;
      }
    }
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = length;
  return result;
}

Swift::String_optional __swiftcall ByteBuffer.getString(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at < v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    if ((length & 0x8000000000000000) == 0)
    {
      if (__OFADD__(at, length))
      {
        __break(1u);
      }

      else
      {
        v8 = OUTLINED_FUNCTION_5_34(0, 0, v2);
        v5 = sub_21B0F7E2C(v8, v9, v10, v11, v12);
      }
    }
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.readBytes(length:)(Swift::Int length)
{
  if (length < 0)
  {
    length = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = v2 + length;
    if (__OFADD__(v2, length))
    {
      __break(1u);
    }

    else
    {
      v4 = OUTLINED_FUNCTION_11_11();
      length = sub_21B0F7FAC(v4, v5, v6, v7, v8);
      *(v1 + 16) = v3;
    }
  }

  result.value._rawValue = length;
  result.is_nil = v9;
  return result;
}

Swift::OpaquePointer_optional __swiftcall ByteBuffer.getBytes(at:length:)(Swift::Int at, Swift::Int length)
{
  v5 = 0;
  if (at >= v3 && (length & 0x8000000000000000) == 0)
  {
    if (__OFADD__(at, length))
    {
      __break(1u);
    }

    else
    {
      v6 = OUTLINED_FUNCTION_5_34(0, length, v2);
      v5 = sub_21B0F7FAC(v6, v7, v8, v9, v10);
    }
  }

  result.is_nil = length;
  result.value._rawValue = v5;
  return result;
}

uint64_t sub_21B0F7E2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_16;
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v10;
      return sub_21B0FA124(a1, v8, v7, a4, a5);
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
      return sub_21B0FA124(a1, v8, v7, a4, a5);
    case 3uLL:
      if (!(a5 | a4))
      {
        return sub_21B1124B4();
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    default:
      if (BYTE6(a2) < a4 || BYTE6(a2) < a5)
      {
        goto LABEL_17;
      }

      if (a5 < a4)
      {
LABEL_18:
        __break(1u);
      }

      return sub_21B1124B4();
  }
}

uint64_t sub_21B0F7FAC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v9 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v8 = v9;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v6 = *(result + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v8 = v6;
LABEL_9:
      result = sub_21B0FA22C(result, v8, v7, a4, a5);
      break;
    case 3uLL:
      result = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_21B0F9EE8(result, v5, a4, a5);
      break;
  }

  return result;
}

uint64_t sub_21B0F8040(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_21B0FA2D0(a1, v7, v6, a4);
      break;
    case 3uLL:
      memset(v9, 0, 14);
      result = *(v9 + a4);
      break;
    default:
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = *(v9 + a4);
      break;
  }

  return result;
}

unint64_t sub_21B0F816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  OUTLINED_FUNCTION_3_28(a1, a2, a3, a4, a5, a6, a7);
  v15 = OUTLINED_FUNCTION_60();
  result = sub_21AF99818(v15, v16);
  switch(v13 >> 62)
  {
    case 1uLL:
      v92 = v11;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_21;
      }

      v90 = v14;
      v91 = v12;
      v89 = &v89;
      v56 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v56, v57);
      v58 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v58, v59);
      v60 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v60, v61);
      if (sub_21B110C04())
      {
        result = sub_21B110C24();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_22;
        }
      }

      goto LABEL_15;
    case 2uLL:
      v91 = v12;
      v92 = v11;
      v89 = &v89;
      v90 = v14;
      v33 = *(v8 + 16);
      v34 = *(v8 + 24);
      v35 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v35, v36);
      v37 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v37, v38);
      v39 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v39, v40);
      if (sub_21B110C04() && (result = sub_21B110C24(), __OFSUB__(v33, result)))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      else
      {
        if (__OFSUB__(v34, v33))
        {
          __break(1u);
LABEL_9:
          v41 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v41, v42);
          v43 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v43, v44);
          OUTLINED_FUNCTION_2_29();
          v53 = sub_21B0F9FA0(v45, v46, v47, v48, v49, v50, v51, v52);
          if (v9)
          {
            v54 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v54, v55);
            goto LABEL_16;
          }

          v30 = v53;
          v81 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v81, v82);
        }

        else
        {
LABEL_15:
          sub_21B110C14();
          v62 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v62, v63);
          v64 = OUTLINED_FUNCTION_9_21();
          v65 = v91;
          v30 = sub_21B0F8E50(v64, v66, v67, v92, v10, v7, v90, v68);
          v69 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v69, v70);
          v71 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v71, v72);
          v73 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v73, v74);
          if (v65)
          {
LABEL_16:
            v75 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v75, v76);
            v77 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v77, v78);
            v79 = OUTLINED_FUNCTION_60();
            return sub_21AF99728(v79, v80);
          }
        }

LABEL_19:
        v83 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v83, v84);
        v85 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v85, v86);
        v87 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v87, v88);
        return v30 | ((HIDWORD(v30) & 1) << 32);
      }

      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v18 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v18, v19);
      v20 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v20, v21);
      OUTLINED_FUNCTION_2_29();
      v30 = sub_21B0F9FA0(v22, v23, v24, v25, v26, v27, v28, v29);
      v31 = OUTLINED_FUNCTION_60();
      sub_21AF99728(v31, v32);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
  }
}

uint64_t sub_21B0F83E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  OUTLINED_FUNCTION_3_28(a1, a2, a3, a4, a5, a6, a7);
  v16 = OUTLINED_FUNCTION_60();
  result = sub_21AF99818(v16, v17);
  switch(v14 >> 62)
  {
    case 1uLL:
      v92 = v12;
      if (v8 >> 32 < v8)
      {
        __break(1u);
        goto LABEL_22;
      }

      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v48 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v48, v49);
      v50 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v50, v51);
      v52 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v52, v53);
      if (sub_21B110C04())
      {
        result = sub_21B110C24();
        if (__OFSUB__(v8, result))
        {
          goto LABEL_23;
        }
      }

      goto LABEL_14;
    case 2uLL:
      v92 = v12;
      v90 = v15;
      v91 = v13;
      v89 = &v88;
      v23 = *(v8 + 16);
      v24 = *(v8 + 24);
      v25 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v25, v26);
      v27 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v27, v28);
      v29 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v29, v30);
      if (!sub_21B110C04() || (result = sub_21B110C24(), !__OFSUB__(v23, result)))
      {
        if (__OFSUB__(v24, v23))
        {
          __break(1u);
LABEL_8:
          v31 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v31, v32);
          v33 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v33, v34);
LABEL_9:
          OUTLINED_FUNCTION_2_29();
          v43 = sub_21B0FA068(v35, v36, v37, v38, v39, v40, v41, v42);
          if (v9)
          {
            v44 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v44, v45);
            v46 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v46, v47);
LABEL_16:
            v70 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v70, v71);
            v72 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v72, v73);
            return v11;
          }

          v11 = v43;
          v74 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v74, v75);
        }

        else
        {
LABEL_14:
          sub_21B110C14();
          v54 = OUTLINED_FUNCTION_60();
          sub_21AF99818(v54, v55);
          v56 = OUTLINED_FUNCTION_9_21();
          v57 = v91;
          v61 = sub_21B0F8F14(v56, v58, v59, v92, v10, v7, v90, v60);
          if (v57)
          {
            v62 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v62, v63);
            v64 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v64, v65);
            v66 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v66, v67);
            v68 = OUTLINED_FUNCTION_60();
            sub_21AF99728(v68, v69);
            goto LABEL_16;
          }

          v11 = v61;
          v76 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v76, v77);
          v78 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v78, v79);
          v80 = OUTLINED_FUNCTION_60();
          sub_21AF99728(v80, v81);
        }

        v82 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v82, v83);
        v84 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v84, v85);
        v86 = OUTLINED_FUNCTION_60();
        sub_21AF99728(v86, v87);
        return v11;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_8;
    default:
      v19 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v19, v20);
      v21 = OUTLINED_FUNCTION_60();
      sub_21AF99818(v21, v22);
      goto LABEL_9;
  }
}

uint64_t sub_21B0F86A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a5;
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v29 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a7 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedConformanceWitness();
  sub_21B112E34();
  sub_21B112CD4();
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  sub_21B0F8CD8(v13, sub_21B0FABF8, v24, a7, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v14);
  ByteBuffer._toEndianness<A>(value:endianness:)(v13, v23 & 1, v15, v16, v17, a7, a8);
  (*(v11 + 8))(v13, a7);
  return __swift_storeEnumTagSinglePayload(a6, 0, 1, a7);
}

uint64_t ByteBuffer.writeImmutableBuffer(_:)(uint64_t a1, unint64_t a2)
{
  sub_21B110E94();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

uint64_t ByteBuffer.writeData(_:)(uint64_t a1, unint64_t a2)
{
  sub_21B110E94();
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
        goto LABEL_8;
      }

      result = HIDWORD(a1) - a1;
      break;
    case 2uLL:
      v6 = *(a1 + 16);
      v5 = *(a1 + 24);
      result = v5 - v6;
      if (__OFSUB__(v5, v6))
      {
LABEL_8:
        __break(1u);
      }

      break;
    case 3uLL:
      return result;
    default:
      result = BYTE6(a2);
      break;
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeString(_:)(Swift::String a1)
{
  v1 = sub_21B112444();
  OUTLINED_FUNCTION_6_25();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B112434();
  sub_21B112414();
  (*(v3 + 8))(v6, v1);
  v7 = OUTLINED_FUNCTION_109();
  v9 = ByteBuffer.writeData(_:)(v7, v8);
  v10 = OUTLINED_FUNCTION_109();
  sub_21AF99728(v10, v11);
  return v9;
}

uint64_t ByteBuffer.writeInteger<A>(_:endianness:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_25();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ByteBuffer._toEndianness<A>(value:endianness:)(v6, v9 & 1, v10, v11, v12, v10, v11);
  v19 = v3;
  sub_21B0F8CD8(v8, sub_21B0F9D68, v18, a3, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v13);
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  return v17[1];
}

void sub_21B0F8C70(void *a1@<X8>, _BYTE *a2@<X0>, _BYTE *a3@<X1>)
{
  v4 = sub_21B1061F0(a2, a3);
  if (v4[2])
  {
    sub_21B110E14();
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t sub_21B0F8CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

char *sub_21B0F8DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v4;
  }

  v6 = a4 - a3;
  if (a4 == a3)
  {
    return v4;
  }

  v4 = sub_21B106330();
  result = sub_21B0FAB8C((v4 + 32), v6, (a3 + a1), v6);
  if (v9 == v6)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0F8E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v15 = *MEMORY[0x277D85DE8];
  __dst = 0;
  if (a1)
  {
    memcpy(&__dst, (a1 + a3), a4 - a3);
    v11 = __dst;
  }

  else
  {
    v11 = 0;
  }

  sub_21AF99728(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_21B0F8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  if (a1)
  {
    memcpy(v14, (a1 + a3), a4 - a3);
    v11 = v14[0];
  }

  else
  {
    v11 = 0;
  }

  sub_21AF99728(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t ByteBuffer.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B112EC4();
  sub_21B110E64();
  MEMORY[0x21CEEA150](a3);
  return sub_21B112F14();
}

uint64_t sub_21B0F90C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_21B112EC4();
  ByteBuffer.hash(into:)(v6, v2, v3, v4);
  return sub_21B112F14();
}

uint64_t ByteBufferView._buffer.getter()
{
  v0 = OUTLINED_FUNCTION_109();
  sub_21AF99818(v0, v1);
  return OUTLINED_FUNCTION_109();
}

uint64_t ByteBufferView._buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21AF99728(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

uint64_t ByteBufferView._range.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t ByteBufferView.init(buffer:range:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    switch(a2 >> 62)
    {
      case 1uLL:
        LODWORD(v6) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_11;
        }

        v6 = v6;
        break;
      case 2uLL:
        v8 = *(result + 16);
        v7 = *(result + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (v9)
        {
          goto LABEL_12;
        }

        break;
      case 3uLL:
        break;
      default:
        v6 = BYTE6(a2);
        break;
    }

    if (v6 >= a5)
    {
      *a6 = result;
      a6[1] = a2;
      a6[2] = a3;
      a6[3] = a4;
      a6[4] = a5;
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = v5[1];
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  return ByteBuffer.withUnsafeBytes<A>(_:)(sub_21B0F9D88, v10, v7, v8, a5, a3);
}

char *sub_21B0F92C8(char *result, uint64_t a2, void *(*a3)(void *__return_ptr, char *, char *), uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = *(a5 + 24);
  v9 = *(a5 + 32);
  v10 = __OFSUB__(v9, v8);
  v11 = v9 - v8;
  if (v10)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v12[4] = v6;
  v12[5] = v7;
  result = a3(v12, &result[v8], &result[v8 + v11]);
  if (!v5)
  {
    return v12[0];
  }

  return result;
}

uint64_t sub_21B0F932C(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *(a5 + 24);
    v5 = *(a5 + 32);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      return a3(result + v6, result + v6 + v8);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall ByteBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBufferView.subscript.getter(uint64_t result)
{
  if (v1[3] > result || v1[4] <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = v1[2];
    if (v3 <= result)
    {
      return sub_21B0F8040(*v1, v1[1], v3, result);
    }
  }

  __break(1u);
  return result;
}

uint64_t ByteBufferView.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 8);
    v9 = result;
    v10 = 0;
    switch(v7 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_12;
        }

        v10 = HIDWORD(v5) - v5;
        goto LABEL_7;
      case 2uLL:
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v10 = v11 - v12;
        if (__OFSUB__(v11, v12))
        {
          goto LABEL_13;
        }

LABEL_7:
        v13 = *(v3 + 8);
        result = sub_21B0F9DA8(v3, v14);
        v6 = v13;
        break;
      case 3uLL:
        break;
      default:
        v10 = BYTE6(v7);
        break;
    }

    if (v10 >= a2)
    {
      *a3 = v5;
      *(a3 + 8) = v6;
      *(a3 + 24) = v9;
      *(a3 + 32) = a2;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t ByteBufferView.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  result = ByteBufferView.withUnsafeBytes<A>(_:)(sub_21B0F9DE0, v10, a3, a4, a5);
  if (!v6)
  {
    return __swift_storeEnumTagSinglePayload(a6, 0, 1, a3);
  }

  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v1 = sub_21B0F9598(a1, sub_21B0F9E14, sub_21B0FA4C0);
  result.value.value = v1;
  result.value.is_nil = v2;
  return result;
}

Swift::Int_optional_optional __swiftcall ByteBufferView._customLastIndexOfEquatableElement(_:)(Swift::UInt8 a1)
{
  v1 = sub_21B0F9598(a1, sub_21B0FA4E0, sub_21B0FAC3C);
  result.value.value = v1;
  result.value.is_nil = v2;
  return result;
}

uint64_t sub_21B0F9598(char a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  v8[16] = a1;
  v4 = *v3;
  v5 = v3[1];
  v7[2] = a2;
  v7[3] = v8;
  return sub_21B0F9E48(v4, v5, a3, v7);
}

uint64_t sub_21B0F95E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a3, a1, a2);
  if ((v9 & 1) == 0 && (v10 = *(a4 + 24), v11 = __OFADD__(result, v10), result += v10, v11))
  {
    __break(1u);
  }

  else
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t sub_21B0F9654(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3 == a2)
  {
    return 0;
  }

  v3 = a1;
  result = a3 - a2;
  while (!__OFSUB__(result--, 1))
  {
    if (result < 0 || result >= a3 - a2)
    {
      goto LABEL_12;
    }

    if (*(a2 + result) == v3 || !result)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_21B0F96AC(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result < *(v2 + 24) || *(v2 + 32) < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21B0F96D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v5 < a3 || v4 > a3 || v4 > result || v5 < result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = a3 - result;
  if (__OFSUB__(a3, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v9 <= 0 && v9 > a2)
    {
      return 0;
    }
  }

  else if ((v9 & 0x8000000000000000) == 0 && v9 < a2)
  {
    return 0;
  }

  v11 = __OFADD__(result, a2);
  result += a2;
  if (v11)
  {
    goto LABEL_29;
  }

  if (result < v4 || v5 < result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_21B0F9748@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B0F9790(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B0F9790(uint64_t a1)
{
  v2 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result < *(v1 + 24) || result >= *(v1 + 32))
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_21B0F97B4(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(v1 + 32) && v2 >= *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0F97E0@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21B0F9808@<X0>(uint64_t *a1@<X8>)
{
  result = ByteBufferView.endIndex.getter();
  *a1 = result;
  return result;
}

double sub_21B0F9878@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = *(v2 + 4);
  ByteBufferView.subscript.getter(v5, v4, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_21B0F98D8@<X0>(uint64_t *a6@<X8>)
{
  result = sub_21B0F991C();
  *a6 = result;
  a6[1] = v8;
  return result;
}

uint64_t sub_21B0F991C()
{
  result = *(v0 + 24);
  if (*(v0 + 32) < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0F99CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_21B0F9A24@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_30();
  result = sub_21B0F96D0(v3, v4, v5);
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_21B0F9AB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    v4 = __OFSUB__(result, a3);
    v3 = result - a3 < 0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (v3 == v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0F9B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_21B0F9B6C@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = ByteBufferView.index(after:)(*a1);
  *a2 = result;
  return result;
}

void *sub_21B0F9B98(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_21B0F9BB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 40) = result.n128_u64[0];
  return result;
}

uint64_t sub_21B0F9C0C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0F9DE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 24))(a1, v3);
}

uint64_t sub_21B0F9E48(uint64_t result, unint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *), uint64_t a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v9 = v10;
        goto LABEL_8;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v9 = v7;
LABEL_8:
      result = sub_21B0FA340(result, v9, v8, a3);
      break;
    case 3uLL:
      result = 0;
      v6 = 0;
      v5 = 0;
      goto LABEL_5;
    default:
      v5 = BYTE6(a2);
      v6 = a2 & 0xFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_21B0FA400(result, v6, v5, a3);
      break;
  }

  return result;
}

uint64_t sub_21B0F9EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_21B106330();
  memcpy((v5 + 32), &v8 + a3, v4);
  return v5;
}

uint64_t sub_21B0F9FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  __dst = 0;
  memcpy(&__dst, &v15 + a3, a4 - a3);
  v11 = __dst;
  sub_21AF99728(a5, a6);
  LODWORD(v12) = bswap32(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_21B0FA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = a1;
  v17 = WORD2(a2);
  v16 = a2;
  memcpy(&v14, &v15 + a3, a4 - a3);
  v11 = v14;
  sub_21AF99728(a5, a6);
  v12 = bswap64(v11);
  if (a8)
  {
    return v11;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_21B0FA124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21B110C04();
  v10 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  result = sub_21B110C14();
  if (v10)
  {
    if (result < v12)
    {
      v12 = result;
    }

    v13 = sub_21B0FAB58(0, a4, v10, v10 + v12);
    result = sub_21B0FAB58(a4, a5, v10, v10 + v12);
    if (!__OFADD__(v13, result))
    {
      if (v13 + result >= v13)
      {
        return sub_21B1124B4();
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_21B0FAB58(0, a5, 0, 0);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_21B1124B4();
  }

LABEL_19:
  __break(1u);
  return result;
}

char *sub_21B0FA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_21B110C04();
  v10 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_21B110C14();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return sub_21B0F8DCC(v10, v16, a4, a5);
}

uint64_t sub_21B0FA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_21B110C04();
  if (!v6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v7 = v6;
  result = sub_21B110C24();
  if (!__OFSUB__(a1, result))
  {
    v9 = a1 - result + v7;
LABEL_5:
    sub_21B110C14();
    return *(v9 + a4);
  }

  __break(1u);
  return result;
}

void *sub_21B0FA340(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_21B110C04();
  v9 = result;
  if (result)
  {
    result = sub_21B110C24();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_21B110C14();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = a4(&v16, v9, v15);
  if (!v4)
  {
    return v16;
  }

  return result;
}

void *sub_21B0FA400(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(void *__return_ptr, uint64_t *, char *))
{
  v9[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v8 = WORD2(a2);
  v7 = a2;
  result = a4(v9, &v6, &v6 + a3);
  if (!v4)
  {
    return v9[0];
  }

  return result;
}

char *sub_21B0FA48C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *(*a3)(void *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = sub_21B0F92C8(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

unint64_t sub_21B0FA518()
{
  result = qword_27CD47A50;
  if (!qword_27CD47A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A50);
  }

  return result;
}

unint64_t sub_21B0FA570()
{
  result = qword_27CD47A58;
  if (!qword_27CD47A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A58);
  }

  return result;
}

unint64_t sub_21B0FA5C4()
{
  result = qword_27CD47A60;
  if (!qword_27CD47A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A60);
  }

  return result;
}

unint64_t sub_21B0FA64C()
{
  result = qword_27CD47A78;
  if (!qword_27CD47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A78);
  }

  return result;
}

unint64_t sub_21B0FA6A4()
{
  result = qword_27CD47A80;
  if (!qword_27CD47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A80);
  }

  return result;
}

unint64_t sub_21B0FA6F8()
{
  result = qword_27CD47A88;
  if (!qword_27CD47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A88);
  }

  return result;
}

unint64_t sub_21B0FA784()
{
  result = qword_27CD47A98;
  if (!qword_27CD47A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47A98);
  }

  return result;
}

uint64_t sub_21B0FA818(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47A70, &qword_21B12D578);
    sub_21B0FA64C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B0FA894()
{
  result = qword_27CD47AA8;
  if (!qword_27CD47AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47AB0, &qword_21B12D710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47AA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Endianness(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21B0FA9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_21B0FAA38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t sub_21B0FAAA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 40))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_21B0FAAF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_21B0FAB58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

char *sub_21B0FAB8C(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

void *sub_21B0FABF8(void *result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = (v2 + v1[4]);
  }

  else
  {
    v3 = 0;
  }

  if (result && v3)
  {
    if (v2)
    {
      v4 = v2 + v1[5];
    }

    else
    {
      v4 = 0;
    }

    return memmove(result, v3, v4 - v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{

  return sub_21AF99818(a6, a7);
}

uint64_t OUTLINED_FUNCTION_4_31(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_21B0FAD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = (*(a1 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    v14 = *v13;
    if (*v13 == a2 && v13[1] == a3)
    {
      v14 = a2;
LABEL_17:

LABEL_18:

      return v14;
    }

    v8 &= v8 - 1;
    result = sub_21B112D04();
    if (result)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      v14 = 0;
      goto LABEL_18;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_21B0FAE8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_21B105A7C(*(a1 + 16), 0);
  v4 = sub_21B105DF4(&v6, v3 + 4, v2, a1);
  sub_21AF9C4BC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_21B0FAF1C(void *result)
{
  v1 = result[3];
  v2 = result[4];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v2, v1))
  {
    v4 = result;
    if (v3)
    {
      v5 = sub_21AF98C84(v2 - v1, 0);
      v4 = sub_21B105B30(v6, (v5 + 4), v3);
      sub_21AF99728(v6[0], v6[1]);
      if (v4 == v3)
      {
        return v5;
      }

      __break(1u);
    }

    sub_21B0FC108(v4);
    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t AvroRecordSchema.makeTemplate(withPresetValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  sub_21AFC5454(v5, &v37);
  AvroRecord.init(schema:)(&v39, v5);

  sub_21B0FB250(v7);
  v38 = v8;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_21B112334();
  }

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  for (i = v9; v13; result = sub_21AFC54B0(__dst))
  {
LABEL_11:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v9 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    memcpy(__dst, (*(v9 + 56) + 72 * v18), 0x41uLL);
    v22 = v38;
    swift_bridgeObjectRetain_n();
    sub_21B0F6800(__dst, &v37);
    v23 = sub_21B0FAD44(v22, v20, v21);
    if (v24)
    {
      v26 = v24;
      v27 = v23;
      v28 = sub_21B0FBD2C(v23, v24, v25);
      v35 = v29;
      v36 = v4;
      v31 = v30;

      sub_21B0FBED8(v28, v31, v35);
      AvroRecord.set(_:forField:)(__dst, v27, v26);
      v4 = v36;
      if (v36)
      {
        sub_21AFC54B0(__dst);

        v37 = v39;
        sub_21AFC5398(&v37);
      }
    }

    else
    {
    }

    v9 = i;
    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      result = sub_21B0FAE8C(v38);
      name = v39.schema.name;
      *a2 = v39.schema.type;
      *(a2 + 16) = name;
      v33 = *&v39.schema.fields._rawValue;
      *(a2 + 32) = v39.schema.namespace;
      *(a2 + 48) = v33;
      *(a2 + 64) = result;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_21B0FB250(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21B0FC15C();
  v4 = 0;
  v10[3] = MEMORY[0x21CEE9920](v2, &type metadata for AvroRecordSchema.Field, v3);
  v5 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *(i - 2);

    sub_21B0FB330(v10, v9, v8, v7);
  }

  __break(1u);
}

uint64_t sub_21B0FB330(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v4;
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v25, a4);
  v9 = sub_21B112F14();
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
      if (v15 || (sub_21B112D04() & 1) != 0)
      {

        v16 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14, a4);

        if (v16)
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

    v19 = (*(v8 + 48) + 24 * v11);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    *a1 = v20;
    a1[1] = v21;
    a1[2] = v22;

    return 0;
  }

  else
  {
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *v23;

    sub_21B0FB788(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v23 = v25[0];
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

void sub_21B0FB50C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  v4 = sub_21B1128C4();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

  v31 = v3;
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
  v12 = v4 + 56;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_21B0CFEC4(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
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
    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v32, v19);
    v20 = sub_21B112F14();
    v21 = -1 << *(v5 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v5 + 48) + 24 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    ++*(v5 + 16);
    v3 = v31;
    if (!v10)
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
    v28 = *(v12 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_21B0FB788(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a5)
  {
    sub_21B0FB50C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_21B0FB960();
      goto LABEL_17;
    }

    sub_21B0FBAD0(v9 + 1);
  }

  v11 = *v5;
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v26, a3);
  v12 = sub_21B112F14();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v11 + 48) + 24 * a4);
      v16 = v15[2];
      v17 = *v15 == result && v15[1] == a2;
      if (v17 || (sub_21B112D04() & 1) != 0)
      {

        v18 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v16, a3);

        if (v18)
        {
          goto LABEL_20;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_17:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = (*(v19 + 48) + 24 * a4);
  *v20 = result;
  v20[1] = a2;
  v20[2] = a3;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_20:
  sub_21B112E44();
  __break(1u);
}

void sub_21B0FB960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  v2 = *v0;
  v3 = sub_21B1128B4();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + 8 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + 8 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;
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

void sub_21B0FBAD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AB8, &qword_21B12D8C8);
  v4 = sub_21B1128C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 24 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        sub_21B112EC4();

        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v31, v19);
        v20 = sub_21B112F14();
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 24 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v19;
        ++*(v5 + 16);
        v3 = v30;
        if (!v10)
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
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_21B0FBD2C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v20, a3);
  v8 = sub_21B112F14();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = (*(v7 + 48) + 24 * v10);
    v13 = v12[2];
    v14 = *v12 == a1 && v12[1] == a2;
    if (v14 || (sub_21B112D04() & 1) != 0)
    {

      v15 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v13, a3);

      if (v15)
      {
        break;
      }
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  v20[0] = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21B0FB960();
    v18 = v20[0];
  }

  v16 = *(*(v18 + 48) + 24 * v10);
  sub_21B0FBF1C(v10);
  *v3 = v20[0];
  return v16;
}

double sub_21B0FBED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_21B0FBF1C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21B112874();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 24 * v6 + 16);
        sub_21B112EC4();

        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v23, v10);
        v11 = sub_21B112F14();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v2;
            v17 = (v15 + 24 * v6);
            if (v2 != v6 || v16 >= v17 + 24)
            {
              v19 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v19;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }
}

unint64_t sub_21B0FC15C()
{
  result = qword_27CD47AC0;
  if (!qword_27CD47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47AC0);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __dst[11] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = a1;
  switch(*(a1 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
      ByteBuffer.writeAvroArray(_:)();
      goto LABEL_12;
    case 2:
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v24, v10, v9, v11, *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *&v25[64], v26, v27);
      v14 = ByteBuffer.writeAvroRecord(_:)(v25);
LABEL_9:
      v8 = v14;
LABEL_10:
      sub_21AFC54B0(v12);
      return v8;
    case 4:
      memcpy(__dst, (v10 + 16), 0x58uLL);
      v15 = (2 * __dst[10]) ^ (__dst[10] >> 63);
      sub_21B0F6800(v12, v25);
      sub_21B0F685C(__dst, v25);
      v16 = sub_21B103CA8(v15);
      ByteBuffer.writeBytes(_:)(v16);
      OUTLINED_FUNCTION_84_2();
      memcpy(v25, &__dst[1], 0x41uLL);
      v17 = ByteBuffer.writeAvroValue(_:)(v25);
      sub_21B0F68B8(__dst);
      a1 = sub_21AFC54B0(v12);
      v18 = __OFADD__(v11, v17);
      v8 = v11 + v17;
      if (!v18)
      {
        return v8;
      }

      __break(1u);
LABEL_7:
      OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
      ByteBuffer.writeAvroMap(_:)();
LABEL_12:
      OUTLINED_FUNCTION_118_0();

      return v8;
    default:
      switch(*(a1 + 24))
      {
        case 1u:
          v21 = sub_21B103B80((2 * v10) ^ (v10 >> 31));
          goto LABEL_19;
        case 2u:
          v21 = sub_21B103CA8((2 * v10) ^ (v10 >> 63));
LABEL_19:
          ByteBuffer.writeBytes(_:)(v21);
          OUTLINED_FUNCTION_19_0();

          goto LABEL_10;
        case 3u:
          v22 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, v10);
          v14 = sub_21B0FC468(v22);
          goto LABEL_9;
        case 4u:
          v20 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, *a1);
          v14 = sub_21B0FC4DC(v20);
          goto LABEL_9;
        case 5u:
          OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
          v23._countAndFlagsBits = v10;
          v23._object = v9;
          v14 = ByteBuffer.writeAvroString(_:)(v23);
          goto LABEL_9;
        case 6u:
          OUTLINED_FUNCTION_116_1(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27);
          v14 = sub_21B103AA8(v10, v9, v11);
          goto LABEL_9;
        case 7u:
          sub_21AFC54B0(a1);
          return 0;
        default:
          v13 = OUTLINED_FUNCTION_91_2(a1, a2, a3, a4, a5, a6, a7, a8, v24, *v25, *&v25[8], *&v25[16], *&v25[24], *&v25[32], *&v25[40], *&v25[48], *&v25[56], *&v25[64], v26, v27, v10 & 1);
          v14 = sub_21B0FC3F4(v13);
          goto LABEL_9;
      }
  }
}

uint64_t sub_21B0FC3F4(_BYTE *a1)
{
  v2 = sub_21B10626C(1, 0);
  *(v2 + 32) = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC468(_DWORD *a1)
{
  v2 = sub_21B10626C(4, 0);
  *(v2 + 8) = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC4DC(void *a1)
{
  v2 = sub_21B10626C(8, 0);
  v2[4] = *a1;
  if (v2[2])
  {
    sub_21B110E14();
    v3 = v2[2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_21B0FC550(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v4 < a2 || v3 > a2 || v3 > result || v4 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v8)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0FC57C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

void sub_21B0FC590()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(v2, v1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    sub_21B0FC108(v0);
    return;
  }

  v4 = sub_21B10626C(v2 - v1, 0);
  sub_21B0F9DA8(v0, v6);
  v5 = sub_21B105B30(v6, (v4 + 4), v3);
  sub_21AF99728(v6[0], v6[1]);
  if (v5 == v3)
  {
    sub_21B0FC108(v0);
    return;
  }

LABEL_9:
  __break(1u);
}

Swift::Int ByteBuffer.writeAvroPrimitive(_:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = 0;
  switch(a4)
  {
    case 1:
      v8 = sub_21B103B80((2 * a1) ^ (a1 >> 31));
      goto LABEL_6;
    case 2:
      v8 = sub_21B103CA8((2 * a1) ^ (a1 >> 63));
LABEL_6:
      v9 = ByteBuffer.writeBytes(_:)(v8);

      return v9;
    case 3:
      LODWORD(v26[0]) = a1;
      return sub_21B0FC468(v26);
    case 4:
      v26[0] = a1;
      return sub_21B0FC4DC(v26);
    case 5:
      v22 = OUTLINED_FUNCTION_238();
      sub_21B0F69CC(v22, v23, v24, 5);
      v25._countAndFlagsBits = a1;
      v25._object = a2;
      v17 = ByteBuffer.writeAvroString(_:)(v25);
      v18 = OUTLINED_FUNCTION_238();
      v21 = 5;
      goto LABEL_12;
    case 6:
      v11 = OUTLINED_FUNCTION_238();
      sub_21B0F69CC(v11, v12, v13, 6);
      v14 = OUTLINED_FUNCTION_238();
      v17 = sub_21B103AA8(v14, v15, v16);
      v18 = OUTLINED_FUNCTION_238();
      v21 = 6;
LABEL_12:
      sub_21B0F6B5C(v18, v19, v20, v21);
      return v17;
    case 7:
      return v6;
    default:
      LOBYTE(v26[0]) = a1 & 1;
      return sub_21B0FC3F4(v26);
  }
}

void ByteBuffer.writeAvroArray(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v272[9] = *MEMORY[0x277D85DE8];
  v254 = sub_21B112444();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_1();
  v253 = v6;
  v7 = *(v2 + 16);
  if (!v7)
  {
    OUTLINED_FUNCTION_4_32();
    sub_21B1059A8();
    OUTLINED_FUNCTION_135_0();
    if (!v71)
    {
LABEL_329:
      OUTLINED_FUNCTION_142_0();
      OUTLINED_FUNCTION_19_0();

      goto LABEL_330;
    }

LABEL_337:
    OUTLINED_FUNCTION_13_10(v29);
    sub_21B1059A8();
    goto LABEL_329;
  }

  v8 = sub_21B103CA8(2 * v7);
  v9 = ByteBuffer.writeBytes(_:)(v8);

  v10 = 0;
  v256 = v2 + 32;
  v252 = v4 + 8;
  while (1)
  {
    v11 = v256 + 72 * v10;
    memcpy(v268, v11, sizeof(v268));
    ++v10;
    v12 = *v268;
    v13 = *&v268[24];
    v14 = *&v268[16];
    switch(v268[64])
    {
      case 1:
        OUTLINED_FUNCTION_66_2();
        OUTLINED_FUNCTION_66_2();
        ByteBuffer.writeAvroArray(_:)();
        goto LABEL_18;
      case 2:
        OUTLINED_FUNCTION_66_2();
        OUTLINED_FUNCTION_66_2();
        ByteBuffer.writeAvroMap(_:)();
LABEL_18:
        v28 = v26;
        sub_21AFC54B0(v268);

LABEL_19:

        goto LABEL_211;
      case 3:
        v269.schema.type._countAndFlagsBits = *v268;
        v269.schema.type._object = *&v268[8];
        v269.schema.name = *&v268[16];
        v27 = *(v11 + 48);
        v269.schema.namespace = *(v11 + 32);
        *&v269.schema.fields._rawValue = v27;
        OUTLINED_FUNCTION_66_2();
        v28 = ByteBuffer.writeAvroRecord(_:)(&v269);
        sub_21AFC54B0(v268);
        goto LABEL_211;
      case 4:
        OUTLINED_FUNCTION_95_1(&v264);
        if (((2 * v267) ^ (v267 >> 63)) >= 0x80)
        {
          sub_21B0F6800(v268, &v260);
          sub_21B0F6800(v268, &v260);
          sub_21B0F685C(&v264, &v260);
          OUTLINED_FUNCTION_4_32();
          sub_21B1059A8();
          v17 = v30;
          v31 = *(v30 + 16);
          do
          {
            v32 = *(v17 + 24);
            if (v31 >= v32 >> 1)
            {
              OUTLINED_FUNCTION_13_10(v32);
              OUTLINED_FUNCTION_71_2();
              v17 = v34;
            }

            OUTLINED_FUNCTION_55_0();
          }

          while (v33);
        }

        else
        {
          sub_21B0F6800(v268, &v260);
          sub_21B0F6800(v268, &v260);
          sub_21B0F685C(&v264, &v260);
          v17 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_27();
          sub_21B1059A8();
          v17 = v223;
        }

        v18 = *(v17 + 24);
        if (*(v17 + 16) >= v18 >> 1)
        {
          OUTLINED_FUNCTION_13_10(v18);
          OUTLINED_FUNCTION_71_2();
          v17 = v224;
        }

        break;
      default:
        switch(v268[24])
        {
          case 1:
            OUTLINED_FUNCTION_149_0();
            OUTLINED_FUNCTION_20_9();
            if (!v48)
            {
              goto LABEL_45;
            }

            OUTLINED_FUNCTION_19_8();
LABEL_44:
            sub_21B110E14();
LABEL_45:
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            v28 = *(v13 + 16);

            goto LABEL_211;
          case 2:
            if (((2 * *v268) ^ (*v268 >> 63)) >= 0x80)
            {
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              v13 = v65;
              v66 = *(v65 + 16);
              do
              {
                v67 = *(v13 + 24);
                if (v66 >= v67 >> 1)
                {
                  OUTLINED_FUNCTION_13_10(v67);
                  OUTLINED_FUNCTION_71_2();
                  v13 = v69;
                }

                OUTLINED_FUNCTION_55_0();
              }

              while (v68);
            }

            else
            {
              v13 = MEMORY[0x277D84F90];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v13 = v243;
            }

            v45 = *(v13 + 24);
            if (*(v13 + 16) >= v45 >> 1)
            {
              OUTLINED_FUNCTION_13_10(v45);
              OUTLINED_FUNCTION_71_2();
              v13 = v244;
            }

            OUTLINED_FUNCTION_120_0();
            goto LABEL_44;
          case 3:
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v13 = OUTLINED_FUNCTION_117_0(v46);
            OUTLINED_FUNCTION_9_22(v13);
            *(OUTLINED_FUNCTION_69_2(v47) + 32) = v12;
            goto LABEL_40;
          case 4:
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v13 = OUTLINED_FUNCTION_119_0(v43);
            OUTLINED_FUNCTION_9_22(v13);
            *(OUTLINED_FUNCTION_69_2(v44) + 32) = v12;
            goto LABEL_40;
          case 5:
            if ((*&v268[8] & 0x1000000000000000) != 0)
            {
              v51 = OUTLINED_FUNCTION_146_0();
            }

            else
            {
              OUTLINED_FUNCTION_52_2();
              if (v72)
              {
                v51 = v49;
              }

              else
              {
                v51 = v50;
              }
            }

            v52 = (2 * v51) ^ (v51 >> 63);
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            sub_21B103CA8(v52);
            OUTLINED_FUNCTION_20_9();
            if (v53)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v54 = *(v52 + 16);
            }

            else
            {
              v54 = 0;
            }

            sub_21B112434();
            OUTLINED_FUNCTION_74_1(v253);
            OUTLINED_FUNCTION_45_3();
            v70(v253, v254);
            OUTLINED_FUNCTION_131();
            if (!v72 & v71)
            {
              v73 = 0;
            }

            else
            {
              v73 = v52;
            }

            if (!v72 & v71)
            {
              v13 = 0xC000000000000000;
            }

            else
            {
              v13 = v12;
            }

            OUTLINED_FUNCTION_34_7();
            sub_21B110E94();
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            switch(v13 >> 62)
            {
              case 1uLL:
                v96 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v96, v97);
                LODWORD(v29) = HIDWORD(v73) - v73;
                if (__OFSUB__(HIDWORD(v73), v73))
                {
                  goto LABEL_342;
                }

                v29 = v29;
LABEL_90:
                v28 = v54 + v29;
                if (!__OFADD__(v54, v29))
                {
                  goto LABEL_211;
                }

                goto LABEL_336;
              case 2uLL:
                v91 = *(v73 + 16);
                v90 = *(v73 + 24);
                v92 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v92, v93);
                v29 = v90 - v91;
                if (!__OFSUB__(v90, v91))
                {
                  goto LABEL_90;
                }

                goto LABEL_343;
              case 3uLL:
                v94 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v94, v95);
                v29 = 0;
                goto LABEL_90;
              default:
                v74 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v74, v75);
                v29 = BYTE6(v13);
                goto LABEL_90;
            }

          case 6:
            v55 = (*&v268[8] >> 60) & 3;
            if (v55)
            {
              v13 = *&v268[8] >> 62;
              v251 = HIDWORD(*v268);
              v255 = v268[14];
              if (v55 != 1)
              {
                v79 = 0;
                switch(v13)
                {
                  case 1uLL:
                    if (__OFSUB__(v251, *v268))
                    {
                      goto LABEL_348;
                    }

                    v79 = v251 - *v268;
LABEL_138:
                    OUTLINED_FUNCTION_66_2();
                    OUTLINED_FUNCTION_66_2();
                    OUTLINED_FUNCTION_66_2();
LABEL_139:
                    sub_21B103CA8((2 * v79) ^ (v79 >> 63));
                    OUTLINED_FUNCTION_98_2();
                    if (v122)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v123 = *(v11 + 16);
                    }

                    else
                    {
                      v123 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    sub_21AFC54B0(v268);
                    sub_21AFC54B0(v268);
                    switch(v13)
                    {
                      case 0:
                        sub_21AFC54B0(v268);
                        v29 = v255;
                        goto LABEL_150;
                      case 1:
                        sub_21AFC54B0(v268);
                        LODWORD(v29) = v251 - v12;
                        if (__OFSUB__(v251, v12))
                        {
                          goto LABEL_350;
                        }

                        v29 = v29;
LABEL_150:
                        v28 = v123 + v29;
                        if (!__OFADD__(v123, v29))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_339;
                      case 2:
                        v124 = *(v12 + 16);
                        v13 = *(v12 + 24);
                        sub_21AFC54B0(v268);
                        v29 = v13 - v124;
                        if (!__OFSUB__(v13, v124))
                        {
                          goto LABEL_150;
                        }

                        goto LABEL_349;
                      case 3:
                        sub_21AFC54B0(v268);
                        v29 = 0;
                        goto LABEL_150;
                      default:
LABEL_382:
                        JUMPOUT(0);
                    }

                  case 2uLL:
                    v121 = *(*v268 + 16);
                    v120 = *(*v268 + 24);
                    v79 = v120 - v121;
                    if (!__OFSUB__(v120, v121))
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_347;
                  case 3uLL:
                    goto LABEL_139;
                  default:
                    v79 = v255;
                    goto LABEL_139;
                }
              }

              v56 = 0;
              switch(v13)
              {
                case 1uLL:
                  if (__OFSUB__(v251, *v268))
                  {
                    goto LABEL_346;
                  }

                  v56 = v251 - *v268;
LABEL_128:
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_66_2();
                  OUTLINED_FUNCTION_66_2();
LABEL_129:
                  if (!__OFSUB__(v56, v14))
                  {
                    OUTLINED_FUNCTION_105_1(v56 - v14);
                    OUTLINED_FUNCTION_98_2();
                    if (v118)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v119 = *(v56 + 16);
                    }

                    else
                    {
                      v119 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    sub_21AFC54B0(v268);
                    sub_21AFC54B0(v268);
                    switch(v13)
                    {
                      case 1:
                        sub_21AFC54B0(v268);
                        LODWORD(v29) = v251 - v12;
                        if (__OFSUB__(v251, v12))
                        {
                          goto LABEL_352;
                        }

                        v29 = v29;
LABEL_159:
                        v28 = v119 + v29;
                        if (!__OFADD__(v119, v29))
                        {
                          goto LABEL_211;
                        }

                        goto LABEL_340;
                      case 2:
                        v125 = *(v12 + 16);
                        v13 = *(v12 + 24);
                        sub_21AFC54B0(v268);
                        v29 = v13 - v125;
                        if (!__OFSUB__(v13, v125))
                        {
                          goto LABEL_159;
                        }

                        goto LABEL_351;
                      case 3:
                        sub_21AFC54B0(v268);
                        v29 = 0;
                        goto LABEL_159;
                      default:
                        sub_21AFC54B0(v268);
                        v29 = v255;
                        goto LABEL_159;
                    }
                  }

                  break;
                case 2uLL:
                  v117 = *(*v268 + 16);
                  v116 = *(*v268 + 24);
                  v56 = v116 - v117;
                  if (!__OFSUB__(v116, v117))
                  {
                    goto LABEL_128;
                  }

                  goto LABEL_345;
                case 3uLL:
                  goto LABEL_129;
                default:
                  v56 = v255;
                  goto LABEL_129;
              }

              goto LABEL_338;
            }

            v76 = *(*v268 + 16);
            v13 = 2 * v76;
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            OUTLINED_FUNCTION_66_2();
            sub_21B103CA8(2 * v76);
            OUTLINED_FUNCTION_20_9();
            if (v77)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v78 = *(2 * v76 + 0x10);
            }

            else
            {
              v78 = 0;
            }

            if (*(v12 + 16))
            {
              OUTLINED_FUNCTION_147_0();
            }

            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            v28 = v78 + v76;
            if (!__OFADD__(v78, v76))
            {
              goto LABEL_211;
            }

            __break(1u);
LABEL_338:
            __break(1u);
LABEL_339:
            __break(1u);
LABEL_340:
            __break(1u);
LABEL_341:
            __break(1u);
LABEL_342:
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
            break;
          case 7:
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            v28 = 0;
            goto LABEL_211;
          default:
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v13 = OUTLINED_FUNCTION_114_1(v15);
            OUTLINED_FUNCTION_9_22(v13);
            *(OUTLINED_FUNCTION_69_2(v16) + 32) = v12 & 1;
LABEL_40:
            sub_21B110E14();
            sub_21AFC54B0(v268);
            sub_21AFC54B0(v268);
            v28 = *(v13 + 16);
            goto LABEL_19;
        }

        goto LABEL_354;
    }

    OUTLINED_FUNCTION_120_0();
    sub_21B110E14();
    v255 = *(v17 + 16);

    countAndFlagsBits = v265.schema.type._countAndFlagsBits;
    v20 = v265.schema.name._countAndFlagsBits;
    object = v265.schema.name._object;
    switch(v266)
    {
      case 1:
        v42 = OUTLINED_FUNCTION_15_12();
        sub_21B0F6800(v42, &v260);
        ByteBuffer.writeAvroArray(_:)();
        goto LABEL_30;
      case 2:
        v39 = OUTLINED_FUNCTION_15_12();
        sub_21B0F6800(v39, &v260);
        ByteBuffer.writeAvroMap(_:)();
LABEL_30:
        v13 = v40;
        sub_21B0F68B8(&v264);
        sub_21AFC54B0(v268);

        goto LABEL_115;
      case 3:
        v270 = v265;
        sub_21B0F6800(&v265, &v260);
        v13 = ByteBuffer.writeAvroRecord(_:)(&v270);
        sub_21B0F68B8(&v264);
        sub_21AFC54B0(v268);
        v41 = &v265;
LABEL_114:
        sub_21AFC54B0(v41);
LABEL_115:
        sub_21AFC54B0(v268);
        break;
      case 4:
        OUTLINED_FUNCTION_95_1(&v260);
        v35 = (2 * v263) ^ (v263 >> 63);
        v36 = OUTLINED_FUNCTION_15_12();
        sub_21B0F6800(v36, v258);
        sub_21B0F685C(&v260, v258);
        sub_21B103CA8(v35);
        OUTLINED_FUNCTION_20_9();
        if (v37)
        {
          OUTLINED_FUNCTION_19_8();
          sub_21B110E14();
          v38 = *(v35 + 16);
        }

        else
        {
          v38 = 0;
        }

        v57 = v261.schema.type._countAndFlagsBits;
        v59 = v261.schema.name._countAndFlagsBits;
        v58 = v261.schema.name._object;
        switch(v262)
        {
          case 1:
            v89 = OUTLINED_FUNCTION_28_4();
            sub_21B0F6800(v89, v258);
            ByteBuffer.writeAvroArray(_:)();
            goto LABEL_83;
          case 2:
            v85 = OUTLINED_FUNCTION_28_4();
            sub_21B0F6800(v85, v258);
            ByteBuffer.writeAvroMap(_:)();
LABEL_83:
            v87 = v86;
            sub_21B0F68B8(&v260);
            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);

            goto LABEL_207;
          case 3:
            v271 = v261;
            sub_21B0F6800(&v261, v258);
            v87 = ByteBuffer.writeAvroRecord(_:)(&v271);
            sub_21B0F68B8(&v260);
            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);
            v88 = &v261;
            goto LABEL_206;
          case 4:
            v80 = v38;
            OUTLINED_FUNCTION_95_1(v258);
            v81 = (2 * v259) ^ (v259 >> 63);
            v82 = OUTLINED_FUNCTION_28_4();
            sub_21B0F6800(v82, v257);
            sub_21B0F685C(v258, v257);
            sub_21B103CA8(v81);
            OUTLINED_FUNCTION_20_9();
            if (v83)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v84 = *(v81 + 16);
            }

            else
            {
              v84 = 0;
            }

            OUTLINED_FUNCTION_83_1(v272, v258);
            v113 = ByteBuffer.writeAvroValue(_:)(v272);
            sub_21B0F68B8(v258);
            sub_21B0F68B8(&v260);
            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);
            v114 = OUTLINED_FUNCTION_28_4();
            sub_21AFC54B0(v114);
            v115 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v115);
            sub_21AFC54B0(v268);
            v87 = v84 + v113;
            if (__OFADD__(v84, v113))
            {
              goto LABEL_341;
            }

            v38 = v80;
            goto LABEL_209;
          default:
            switch(LOBYTE(v261.schema.name._object))
            {
              case 1:
                OUTLINED_FUNCTION_149_0();
                goto LABEL_190;
              case 2:
                sub_21B103CA8((2 * v261.schema.type._countAndFlagsBits) ^ (v261.schema.type._countAndFlagsBits >> 63));
LABEL_190:
                OUTLINED_FUNCTION_20_9();
                if (v155)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v87 = v58[2];
                }

                else
                {
                  v87 = 0;
                }

                goto LABEL_204;
              case 3:
                v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v63 = OUTLINED_FUNCTION_117_0(v153);
                OUTLINED_FUNCTION_9_22(v63);
                *(OUTLINED_FUNCTION_69_2(v154) + 32) = v57;
                goto LABEL_187;
              case 4:
                v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v63 = OUTLINED_FUNCTION_119_0(v151);
                OUTLINED_FUNCTION_9_22(v63);
                *(OUTLINED_FUNCTION_69_2(v152) + 32) = v57;
                goto LABEL_187;
              case 5:
                if ((v261.schema.type._object & 0x1000000000000000) != 0)
                {
                  v158 = OUTLINED_FUNCTION_146_0();
                }

                else
                {
                  OUTLINED_FUNCTION_52_2();
                  if (v72)
                  {
                    v158 = v156;
                  }

                  else
                  {
                    v158 = v157;
                  }
                }

                v159 = (2 * v158) ^ (v158 >> 63);
                v160 = OUTLINED_FUNCTION_28_4();
                sub_21B0F6800(v160, v258);
                sub_21B103CA8(v159);
                OUTLINED_FUNCTION_20_9();
                v251 = v38;
                if (v161)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v162 = *(v159 + 16);
                }

                else
                {
                  v162 = 0;
                }

                sub_21B112434();
                OUTLINED_FUNCTION_74_1(v253);
                OUTLINED_FUNCTION_45_3();
                v194(v253, v254);
                OUTLINED_FUNCTION_131();
                if (!v196 & v195)
                {
                  v197 = 0;
                }

                else
                {
                  v197 = v159;
                }

                if (!v196 & v195)
                {
                  v198 = 0xC000000000000000;
                }

                else
                {
                  v198 = v57;
                }

                OUTLINED_FUNCTION_103_1();
                sub_21B110E94();
                switch(v198 >> 62)
                {
                  case 1uLL:
                    v218 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v218, v219);
                    sub_21B0F68B8(&v260);
                    sub_21B0F68B8(&v264);
                    sub_21AFC54B0(v268);
                    v220 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v220);
                    if (__OFSUB__(HIDWORD(v197), v197))
                    {
                      goto LABEL_373;
                    }

                    v202 = HIDWORD(v197) - v197;
LABEL_276:
                    v38 = v251;
                    break;
                  case 2uLL:
                    v209 = v162;
                    v211 = *(v197 + 16);
                    v210 = *(v197 + 24);
                    v212 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v212, v213);
                    sub_21B0F68B8(&v260);
                    sub_21B0F68B8(&v264);
                    sub_21AFC54B0(v268);
                    v214 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v214);
                    v202 = v210 - v211;
                    if (__OFSUB__(v210, v211))
                    {
                      goto LABEL_372;
                    }

                    v38 = v251;
                    v162 = v209;
                    break;
                  case 3uLL:
                    v215 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v215, v216);
                    sub_21B0F68B8(&v260);
                    sub_21B0F68B8(&v264);
                    sub_21AFC54B0(v268);
                    v217 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v217);
                    v202 = 0;
                    goto LABEL_276;
                  default:
                    v199 = OUTLINED_FUNCTION_103_1();
                    sub_21AF99728(v199, v200);
                    sub_21B0F68B8(&v260);
                    sub_21B0F68B8(&v264);
                    sub_21AFC54B0(v268);
                    v201 = OUTLINED_FUNCTION_28_4();
                    sub_21AFC54B0(v201);
                    v202 = BYTE6(v198);
                    goto LABEL_276;
                }

                v221 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v221);
                v87 = v162 + v202;
                if (!__OFADD__(v162, v202))
                {
                  goto LABEL_208;
                }

                goto LABEL_359;
              case 6:
                v163 = (v261.schema.type._object >> 60) & 3;
                if (v163)
                {
                  v164 = v261.schema.type._object >> 62;
                  countAndFlagsBits_high = HIDWORD(v261.schema.type._countAndFlagsBits);
                  v250 = BYTE6(v261.schema.type._object);
                  v251 = v38;
                  v165 = 0;
                  if (v163 != 1)
                  {
                    v208 = v261.schema.type._object >> 62;
                    switch(v164)
                    {
                      case 1uLL:
                        OUTLINED_FUNCTION_121_0();
                        if (v167)
                        {
                          goto LABEL_375;
                        }

                        v165 = v232;
LABEL_299:
                        v235 = OUTLINED_FUNCTION_28_4();
                        sub_21B0F6800(v235, v258);
LABEL_300:
                        sub_21B103CA8((2 * v165) ^ (v165 >> 63));
                        OUTLINED_FUNCTION_20_9();
                        if (v236)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v237 = *(v165 + 16);
                        }

                        else
                        {
                          v237 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v208)
                        {
                          case 0:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v238 = v250;
                            goto LABEL_311;
                          case 1:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            OUTLINED_FUNCTION_121_0();
                            if (v167)
                            {
                              goto LABEL_377;
                            }

                            v238 = v238;
LABEL_311:
                            v87 = v237 + v238;
                            if (__OFADD__(v237, v238))
                            {
                              goto LABEL_370;
                            }

LABEL_321:
                            v38 = v251;
                            break;
                          case 2:
                            v240 = *(v57 + 16);
                            v239 = *(v57 + 24);
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v238 = v239 - v240;
                            if (!__OFSUB__(v239, v240))
                            {
                              goto LABEL_311;
                            }

                            goto LABEL_376;
                          case 3:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v238 = 0;
                            goto LABEL_311;
                          default:
                            goto LABEL_382;
                        }

                        goto LABEL_205;
                      case 2uLL:
                        v234 = *(v261.schema.type._countAndFlagsBits + 16);
                        v233 = *(v261.schema.type._countAndFlagsBits + 24);
                        v165 = v233 - v234;
                        if (!__OFSUB__(v233, v234))
                        {
                          goto LABEL_299;
                        }

                        __break(1u);
LABEL_375:
                        __break(1u);
LABEL_376:
                        __break(1u);
LABEL_377:
                        __break(1u);
LABEL_378:
                        __break(1u);
LABEL_379:
                        __break(1u);
LABEL_380:
                        __break(1u);
LABEL_381:
                        __break(1u);
                        goto LABEL_382;
                      case 3uLL:
                        goto LABEL_300;
                      default:
                        v165 = v250;
                        goto LABEL_300;
                    }
                  }

                  v248 = v261.schema.type._object >> 62;
                  switch(v164)
                  {
                    case 1uLL:
                      OUTLINED_FUNCTION_121_0();
                      if (v167)
                      {
                        goto LABEL_379;
                      }

                      v165 = v225;
LABEL_289:
                      v228 = OUTLINED_FUNCTION_28_4();
                      sub_21B0F6800(v228, v258);
LABEL_290:
                      if (!__OFSUB__(v165, v59))
                      {
                        OUTLINED_FUNCTION_105_1(v165 - v59);
                        OUTLINED_FUNCTION_20_9();
                        if (v229)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v230 = *(v165 + 16);
                        }

                        else
                        {
                          v230 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v248)
                        {
                          case 1:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            OUTLINED_FUNCTION_121_0();
                            if (v167)
                            {
                              goto LABEL_381;
                            }

                            v231 = v231;
LABEL_320:
                            v87 = v230 + v231;
                            if (!__OFADD__(v230, v231))
                            {
                              goto LABEL_321;
                            }

                            goto LABEL_371;
                          case 2:
                            v242 = *(v57 + 16);
                            v241 = *(v57 + 24);
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v231 = v241 - v242;
                            if (!__OFSUB__(v241, v242))
                            {
                              goto LABEL_320;
                            }

                            goto LABEL_380;
                          case 3:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v231 = 0;
                            goto LABEL_320;
                          default:
                            sub_21B0F68B8(&v260);
                            sub_21B0F68B8(&v264);
                            sub_21AFC54B0(v268);
                            v231 = v250;
                            goto LABEL_320;
                        }
                      }

                      break;
                    case 2uLL:
                      v227 = *(v261.schema.type._countAndFlagsBits + 16);
                      v226 = *(v261.schema.type._countAndFlagsBits + 24);
                      v165 = v226 - v227;
                      if (!__OFSUB__(v226, v227))
                      {
                        goto LABEL_289;
                      }

                      goto LABEL_378;
                    case 3uLL:
                      goto LABEL_290;
                    default:
                      v165 = v250;
                      goto LABEL_290;
                  }

                  goto LABEL_369;
                }

                v203 = v38;
                v204 = 2 * *(v261.schema.type._countAndFlagsBits + 16);
                v205 = OUTLINED_FUNCTION_28_4();
                sub_21B0F6800(v205, v258);
                sub_21B103CA8(v204);
                OUTLINED_FUNCTION_20_9();
                if (v206)
                {
                  OUTLINED_FUNCTION_19_8();
                  sub_21B110E14();
                  v207 = *(v204 + 16);
                }

                else
                {
                  v207 = 0;
                }

                if (*(v57 + 16))
                {
                  OUTLINED_FUNCTION_147_0();
                  v222 = *(v57 + 16);
                }

                else
                {
                  v222 = 0;
                }

                sub_21B0F68B8(&v260);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v87 = v207 + v222;
                if (__OFADD__(v207, v222))
                {
                  goto LABEL_368;
                }

                v38 = v203;
LABEL_205:
                v88 = OUTLINED_FUNCTION_28_4();
LABEL_206:
                sub_21AFC54B0(v88);
LABEL_207:
                v166 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v166);
LABEL_208:
                sub_21AFC54B0(v268);
LABEL_209:
                v13 = v38 + v87;
                if (__OFADD__(v38, v87))
                {
                  goto LABEL_333;
                }

                break;
              case 7:
                sub_21B0F68B8(&v260);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v87 = 0;
                goto LABEL_205;
              default:
                v60 = v38;
                v61 = v261.schema.type._countAndFlagsBits & 1;
                v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                v63 = OUTLINED_FUNCTION_114_1(v62);
                OUTLINED_FUNCTION_9_22(v63);
                *(OUTLINED_FUNCTION_69_2(v64) + 32) = v61;
                v38 = v60;
LABEL_187:
                sub_21B110E14();
                v87 = v63[2];

LABEL_204:
                sub_21B0F68B8(&v260);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                goto LABEL_205;
            }

            break;
        }

        break;
      default:
        switch(LOBYTE(v265.schema.name._object))
        {
          case 1:
            OUTLINED_FUNCTION_149_0();
            goto LABEL_99;
          case 2:
            sub_21B103CA8((2 * v265.schema.type._countAndFlagsBits) ^ (v265.schema.type._countAndFlagsBits >> 63));
LABEL_99:
            OUTLINED_FUNCTION_98_2();
            if (v103)
            {
              OUTLINED_FUNCTION_115_1();
              v13 = object[2];
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_113;
          case 3:
            v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_117_0(v100);
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 4;
            *(v24 + 24) = v101;
            *(v24 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 4:
            v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_119_0(v98);
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 8;
            *(v24 + 24) = v99;
            *(v24 + 32) = countAndFlagsBits;
            goto LABEL_96;
          case 5:
            if ((v265.schema.type._object & 0x1000000000000000) != 0)
            {
              v106 = OUTLINED_FUNCTION_146_0();
            }

            else
            {
              OUTLINED_FUNCTION_52_2();
              if (v72)
              {
                v106 = v104;
              }

              else
              {
                v106 = v105;
              }
            }

            v107 = (2 * v106) ^ (v106 >> 63);
            v108 = OUTLINED_FUNCTION_15_12();
            sub_21B0F6800(v108, &v260);
            sub_21B103CA8(v107);
            OUTLINED_FUNCTION_20_9();
            if (v109)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v251 = *(v107 + 16);
            }

            else
            {
              v251 = 0;
            }

            sub_21B112434();
            OUTLINED_FUNCTION_74_1(v253);
            OUTLINED_FUNCTION_45_3();
            v126(v253, v254);
            OUTLINED_FUNCTION_131();
            if (!v128 & v127)
            {
              v129 = 0;
            }

            else
            {
              v129 = v107;
            }

            if (!v128 & v127)
            {
              v130 = 0xC000000000000000;
            }

            else
            {
              v130 = countAndFlagsBits;
            }

            OUTLINED_FUNCTION_34_7();
            sub_21B110E94();
            switch(v130 >> 62)
            {
              case 1uLL:
                v148 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v148, v149);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v150 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v150);
                sub_21AFC54B0(v268);
                LODWORD(v134) = HIDWORD(v129) - v129;
                if (__OFSUB__(HIDWORD(v129), v129))
                {
                  goto LABEL_357;
                }

                v134 = v134;
LABEL_181:
                v13 = v251 + v134;
                if (!__OFADD__(v251, v134))
                {
                  goto LABEL_210;
                }

                goto LABEL_344;
              case 2uLL:
                v141 = *(v129 + 16);
                v140 = *(v129 + 24);
                v142 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v142, v143);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v144 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v144);
                sub_21AFC54B0(v268);
                v134 = v140 - v141;
                if (!__OFSUB__(v140, v141))
                {
                  goto LABEL_181;
                }

                goto LABEL_358;
              case 3uLL:
                v145 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v145, v146);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v147 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v147);
                sub_21AFC54B0(v268);
                v134 = 0;
                goto LABEL_181;
              default:
                v131 = OUTLINED_FUNCTION_34_7();
                sub_21AF99728(v131, v132);
                sub_21B0F68B8(&v264);
                sub_21AFC54B0(v268);
                v133 = OUTLINED_FUNCTION_15_12();
                sub_21AFC54B0(v133);
                sub_21AFC54B0(v268);
                v134 = BYTE6(v130);
                goto LABEL_181;
            }

          case 6:
            v110 = (v265.schema.type._object >> 60) & 3;
            if (v110)
            {
              v111 = v265.schema.type._object >> 62;
              v250 = HIDWORD(v265.schema.type._countAndFlagsBits);
              v251 = BYTE6(v265.schema.type._object);
              if (v110 != 1)
              {
                v139 = 0;
                switch(v111)
                {
                  case 1uLL:
                    if (__OFSUB__(v250, v265.schema.type._countAndFlagsBits))
                    {
                      goto LABEL_363;
                    }

                    v139 = v250 - LODWORD(v265.schema.type._countAndFlagsBits);
LABEL_234:
                    v179 = OUTLINED_FUNCTION_15_12();
                    sub_21B0F6800(v179, &v260);
LABEL_235:
                    sub_21B103CA8((2 * v139) ^ (v139 >> 63));
                    OUTLINED_FUNCTION_98_2();
                    if (v180)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v181 = object[2];
                    }

                    else
                    {
                      v181 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v111)
                    {
                      case 0:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v182 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v182);
                        sub_21AFC54B0(v268);
                        v183 = v251;
                        goto LABEL_246;
                      case 1:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v188 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v188);
                        sub_21AFC54B0(v268);
                        LODWORD(v183) = v250 - countAndFlagsBits;
                        if (__OFSUB__(v250, countAndFlagsBits))
                        {
                          goto LABEL_365;
                        }

                        v183 = v183;
LABEL_246:
                        v13 = v181 + v183;
                        if (!__OFADD__(v181, v183))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_355;
                      case 2:
                        v185 = *(countAndFlagsBits + 16);
                        v184 = *(countAndFlagsBits + 24);
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v186 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v186);
                        sub_21AFC54B0(v268);
                        v183 = v184 - v185;
                        if (!__OFSUB__(v184, v185))
                        {
                          goto LABEL_246;
                        }

                        goto LABEL_364;
                      case 3:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v187 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v187);
                        sub_21AFC54B0(v268);
                        v183 = 0;
                        goto LABEL_246;
                      default:
                        goto LABEL_382;
                    }

                  case 2uLL:
                    v178 = *(v265.schema.type._countAndFlagsBits + 16);
                    v177 = *(v265.schema.type._countAndFlagsBits + 24);
                    v139 = v177 - v178;
                    if (!__OFSUB__(v177, v178))
                    {
                      goto LABEL_234;
                    }

                    goto LABEL_362;
                  case 3uLL:
                    goto LABEL_235;
                  default:
                    v139 = v251;
                    goto LABEL_235;
                }
              }

              v112 = 0;
              switch(v111)
              {
                case 1uLL:
                  if (__OFSUB__(v250, v265.schema.type._countAndFlagsBits))
                  {
                    goto LABEL_361;
                  }

                  v112 = v250 - LODWORD(v265.schema.type._countAndFlagsBits);
LABEL_224:
                  v172 = OUTLINED_FUNCTION_15_12();
                  sub_21B0F6800(v172, &v260);
LABEL_225:
                  if (!__OFSUB__(v112, v20))
                  {
                    OUTLINED_FUNCTION_105_1(v112 - v20);
                    OUTLINED_FUNCTION_98_2();
                    if (v173)
                    {
                      OUTLINED_FUNCTION_115_1();
                      v174 = *(v112 + 16);
                    }

                    else
                    {
                      v174 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v111)
                    {
                      case 1:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v193 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v193);
                        sub_21AFC54B0(v268);
                        LODWORD(v176) = v250 - countAndFlagsBits;
                        if (__OFSUB__(v250, countAndFlagsBits))
                        {
                          goto LABEL_367;
                        }

                        v176 = v176;
LABEL_255:
                        v13 = v174 + v176;
                        if (!__OFADD__(v174, v176))
                        {
                          goto LABEL_210;
                        }

                        goto LABEL_356;
                      case 2:
                        v190 = *(countAndFlagsBits + 16);
                        v189 = *(countAndFlagsBits + 24);
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v191 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v191);
                        sub_21AFC54B0(v268);
                        v176 = v189 - v190;
                        if (!__OFSUB__(v189, v190))
                        {
                          goto LABEL_255;
                        }

                        goto LABEL_366;
                      case 3:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v192 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v192);
                        sub_21AFC54B0(v268);
                        v176 = 0;
                        goto LABEL_255;
                      default:
                        sub_21B0F68B8(&v264);
                        sub_21AFC54B0(v268);
                        v175 = OUTLINED_FUNCTION_15_12();
                        sub_21AFC54B0(v175);
                        sub_21AFC54B0(v268);
                        v176 = v251;
                        goto LABEL_255;
                    }
                  }

                  break;
                case 2uLL:
                  v171 = *(v265.schema.type._countAndFlagsBits + 16);
                  v170 = *(v265.schema.type._countAndFlagsBits + 24);
                  v112 = v170 - v171;
                  if (!__OFSUB__(v170, v171))
                  {
                    goto LABEL_224;
                  }

                  goto LABEL_360;
                case 3uLL:
                  goto LABEL_225;
                default:
                  v112 = v251;
                  goto LABEL_225;
              }

LABEL_354:
              __break(1u);
LABEL_355:
              __break(1u);
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
LABEL_371:
              __break(1u);
LABEL_372:
              __break(1u);
LABEL_373:
              __break(1u);
            }

            v135 = 2 * *(v265.schema.type._countAndFlagsBits + 16);
            v136 = OUTLINED_FUNCTION_15_12();
            sub_21B0F6800(v136, &v260);
            sub_21B103CA8(v135);
            OUTLINED_FUNCTION_20_9();
            if (v137)
            {
              OUTLINED_FUNCTION_19_8();
              sub_21B110E14();
              v138 = *(v135 + 16);
            }

            else
            {
              v138 = 0;
            }

            if (*(countAndFlagsBits + 16))
            {
              OUTLINED_FUNCTION_147_0();
              v168 = *(countAndFlagsBits + 16);
            }

            else
            {
              v168 = 0;
            }

            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);
            v169 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v169);
            sub_21AFC54B0(v268);
            v167 = __OFADD__(v138, v168);
            v13 = v138 + v168;
            if (v167)
            {
              goto LABEL_353;
            }

            break;
          case 7:
            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);
            v102 = OUTLINED_FUNCTION_15_12();
            sub_21AFC54B0(v102);
            sub_21AFC54B0(v268);
            v13 = 0;
            goto LABEL_210;
          default:
            v22 = v265.schema.type._countAndFlagsBits & 1;
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
            v24 = OUTLINED_FUNCTION_114_1(v23);
            OUTLINED_FUNCTION_9_22(v24);
            *(v24 + 16) = 1;
            *(v24 + 24) = v25;
            *(v24 + 32) = v22;
LABEL_96:
            sub_21B110E14();
            v13 = *(v24 + 16);

LABEL_113:
            sub_21B0F68B8(&v264);
            sub_21AFC54B0(v268);
            v41 = OUTLINED_FUNCTION_15_12();
            goto LABEL_114;
        }

        break;
    }

LABEL_210:
    v29 = v255;
    v28 = v255 + v13;
    if (__OFADD__(v255, v13))
    {
      goto LABEL_332;
    }

LABEL_211:
    v167 = __OFADD__(v9, v28);
    v9 += v28;
    if (v167)
    {
      break;
    }

    if (v10 == v7)
    {
      OUTLINED_FUNCTION_4_32();
      sub_21B1059A8();
      v246._rawValue = v245;
      v13 = v245[2];
      v29 = v245[3];
      v10 = v13 + 1;
      if (v13 >= v29 >> 1)
      {
        goto LABEL_334;
      }

      goto LABEL_326;
    }
  }

  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  OUTLINED_FUNCTION_13_10(v29);
  sub_21B1059A8();
  v246._rawValue = v247;
LABEL_326:
  *(v246._rawValue + 2) = v10;
  *(v246._rawValue + v13 + 32) = 0;
  ByteBuffer.writeBytes(_:)(v246);
  OUTLINED_FUNCTION_64_2();

  if (__OFADD__(v9, v0))
  {
    __break(1u);
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

LABEL_330:
  OUTLINED_FUNCTION_77();
}

void ByteBuffer.writeAvroMap(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v166[9] = *MEMORY[0x277D85DE8];
  v154 = sub_21B112444();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_1();
  v153 = v6;
  v7 = *(v2 + 16);
  if (!v7)
  {
    OUTLINED_FUNCTION_4_32();
    sub_21B1059A8();
    OUTLINED_FUNCTION_135_0();
    if (!v28)
    {
LABEL_196:
      OUTLINED_FUNCTION_142_0();
      OUTLINED_FUNCTION_19_0();

      goto LABEL_197;
    }

LABEL_207:
    OUTLINED_FUNCTION_13_10(v100);
    sub_21B1059A8();
    goto LABEL_196;
  }

  v8 = 2 * v7;

  v9 = sub_21B103CA8(v8);
  v10 = ByteBuffer.writeBytes(_:)(v9);

  v11 = 0;
  v12 = v2 + 64;
  v13 = 1 << *(v2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v2 + 64);
  v16 = (v13 + 63) >> 6;
  v151 = v2 + 64;
  v152 = (v4 + 8);
  v149 = v2;
  v150 = v16;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_9:
      v18 = (*(v2 + 48) + 16 * (__clz(__rbit64(v15)) | (v17 << 6)));
      v20 = *v18;
      v19 = v18[1];
      OUTLINED_FUNCTION_60_1();
      memcpy(v163, v21, sizeof(v163));
      if ((v19 & 0x1000000000000000) != 0)
      {
        v22 = sub_21B112514();
      }

      else if ((v19 & 0x2000000000000000) != 0)
      {
        v22 = HIBYTE(v19) & 0xF;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      v23 = (2 * v22) ^ (v22 >> 63);

      OUTLINED_FUNCTION_94_2();
      sub_21B103CA8(v23);
      OUTLINED_FUNCTION_29_7();
      v156 = v10;
      if (v24)
      {
        OUTLINED_FUNCTION_26_6();
        sub_21B110E14();
        v25 = *(v23 + 16);
      }

      else
      {
        v25 = 0;
      }

      v15 &= v15 - 1;

      sub_21B112434();
      OUTLINED_FUNCTION_95_2();
      v26 = sub_21B112414();
      v10 = v27;
      (*v152)(v153, v154);
      OUTLINED_FUNCTION_131();
      if (!v29 & v28)
      {
        v30 = 0;
      }

      else
      {
        v30 = v26;
      }

      if (!v29 & v28)
      {
        v9 = 0xC000000000000000;
      }

      else
      {
        v9 = v10;
      }

      OUTLINED_FUNCTION_3_23();
      sub_21B110E94();

      switch(v9 >> 62)
      {
        case 1uLL:
          v38 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v38, v39);
          v11 = (HIDWORD(v30) - v30);
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_202;
          }

          v11 = v11;
LABEL_30:
          if (__OFADD__(v25, v11))
          {
            goto LABEL_199;
          }

          break;
        case 2uLL:
          v10 = *(v30 + 16);
          v33 = *(v30 + 24);
          v34 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v34, v35);
          v11 = v33 - v10;
          if (!__OFSUB__(v33, v10))
          {
            goto LABEL_30;
          }

          goto LABEL_203;
        case 3uLL:
          v36 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v36, v37);
          v11 = 0;
          goto LABEL_30;
        default:
          v31 = OUTLINED_FUNCTION_3_23();
          sub_21AF99728(v31, v32);
          v11 = BYTE6(v9);
          goto LABEL_30;
      }

      v40 = *v163;
      v41 = *&v163[16];
      v9 = *&v163[24];
      v155 = v25 + v11;
      switch(v163[64])
      {
        case 1:
          OUTLINED_FUNCTION_94_2();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_39;
        case 2:
          OUTLINED_FUNCTION_94_2();
          ByteBuffer.writeAvroMap(_:)();
LABEL_39:
          v48 = v47;
          sub_21AFC54B0(v163);

          goto LABEL_56;
        case 3:
          v164 = *v163;
          OUTLINED_FUNCTION_94_2();
          v48 = ByteBuffer.writeAvroRecord(_:)(&v164);
LABEL_55:
          sub_21AFC54B0(v163);
          sub_21AFC54B0(v163);
LABEL_56:
          v10 = v156;
          goto LABEL_57;
        case 4:
          OUTLINED_FUNCTION_95_1(&v159);
          v45 = (2 * v162) ^ (v162 >> 63);
          sub_21B0F6800(v163, v158);
          sub_21B0F685C(&v159, v158);
          sub_21B103CA8(v45);
          OUTLINED_FUNCTION_29_7();
          if (v46)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
            v147 = *(v45 + 16);
          }

          else
          {
            v147 = 0;
          }

          countAndFlagsBits = v160.schema.type._countAndFlagsBits;
          object = v160.schema.type._object;
          v51 = v160.schema.name._countAndFlagsBits;
          v9 = v160.schema.name._object;
          switch(v161)
          {
            case 1:
              v64 = OUTLINED_FUNCTION_32_5();
              sub_21B0F6800(v64, v158);
              ByteBuffer.writeAvroArray(_:)();
              goto LABEL_50;
            case 2:
              v59 = OUTLINED_FUNCTION_32_5();
              sub_21B0F6800(v59, v158);
              ByteBuffer.writeAvroMap(_:)();
LABEL_50:
              v62 = v60;
              sub_21B0F68B8(&v159);
              sub_21AFC54B0(v163);

              goto LABEL_106;
            case 3:
              v165 = v160;
              sub_21B0F6800(&v160, v158);
              v61 = ByteBuffer.writeAvroRecord(_:)(&v165);
LABEL_48:
              v62 = v61;
              sub_21B0F68B8(&v159);
              sub_21AFC54B0(v163);
              v63 = &v160;
              goto LABEL_105;
            case 4:
              memcpy(v158, (v160.schema.type._countAndFlagsBits + 16), sizeof(v158));
              v55 = (2 * v158[10]) ^ (v158[10] >> 63);
              v56 = OUTLINED_FUNCTION_32_5();
              sub_21B0F6800(v56, v157);
              sub_21B0F685C(v158, v157);
              sub_21B103CA8(v55);
              OUTLINED_FUNCTION_29_7();
              if (v57)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v58 = *(v55 + 16);
              }

              else
              {
                v58 = 0;
              }

              OUTLINED_FUNCTION_83_1(v166, v158);
              v9 = ByteBuffer.writeAvroValue(_:)(v166);
              sub_21B0F68B8(v158);
              sub_21B0F68B8(&v159);
              sub_21AFC54B0(v163);
              v78 = OUTLINED_FUNCTION_32_5();
              sub_21AFC54B0(v78);
              sub_21AFC54B0(v163);
              v62 = v58 + v9;
              if (!__OFADD__(v58, v9))
              {
                goto LABEL_107;
              }

              __break(1u);
              goto LABEL_208;
            default:
              switch(LOBYTE(v160.schema.name._object))
              {
                case 1:
                  sub_21B103B80((2 * LODWORD(v160.schema.type._countAndFlagsBits)) ^ (SLODWORD(v160.schema.type._countAndFlagsBits) >> 31));
                  goto LABEL_117;
                case 2:
                  sub_21B103CA8((2 * v160.schema.type._countAndFlagsBits) ^ (v160.schema.type._countAndFlagsBits >> 63));
LABEL_117:
                  OUTLINED_FUNCTION_29_7();
                  if (v103)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                    v62 = *(v9 + 16);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v2 = v149;

                  sub_21B0F68B8(&v159);
                  sub_21AFC54B0(v163);
                  v109 = OUTLINED_FUNCTION_32_5();
                  sub_21AFC54B0(v109);
                  sub_21AFC54B0(v163);
                  goto LABEL_108;
                case 3:
                  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v9 = OUTLINED_FUNCTION_117_0(v98);
                  OUTLINED_FUNCTION_9_22(v9);
                  *(OUTLINED_FUNCTION_77_2(v99) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 4:
                  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v9 = OUTLINED_FUNCTION_119_0(v96);
                  OUTLINED_FUNCTION_9_22(v9);
                  *(OUTLINED_FUNCTION_77_2(v97) + 32) = countAndFlagsBits;
                  goto LABEL_104;
                case 5:
                  if ((v160.schema.type._object & 0x1000000000000000) != 0)
                  {
                    v104 = sub_21B112514();
                  }

                  else if ((v160.schema.type._object & 0x2000000000000000) != 0)
                  {
                    v104 = (v160.schema.type._object >> 56) & 0xF;
                  }

                  else
                  {
                    v104 = v160.schema.type._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                  }

                  v105 = (2 * v104) ^ (v104 >> 63);
                  v106 = OUTLINED_FUNCTION_32_5();
                  sub_21B0F6800(v106, v158);
                  sub_21B103CA8(v105);
                  OUTLINED_FUNCTION_29_7();
                  if (v107)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                    v108 = *(v105 + 16);
                  }

                  else
                  {
                    v108 = 0;
                  }

                  sub_21B112434();
                  OUTLINED_FUNCTION_95_2();
                  sub_21B112414();
                  v124 = OUTLINED_FUNCTION_81_2();
                  v125(v124);
                  if (v51 >> 60 == 15)
                  {
                    v126 = 0;
                  }

                  else
                  {
                    v126 = v105;
                  }

                  if (v51 >> 60 == 15)
                  {
                    v9 = 0xC000000000000000;
                  }

                  else
                  {
                    v9 = v51;
                  }

                  OUTLINED_FUNCTION_39_4();
                  sub_21B110E94();
                  switch(v9 >> 62)
                  {
                    case 1uLL:
                      v139 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v139, v140);
                      sub_21B0F68B8(&v159);
                      sub_21AFC54B0(v163);
                      v141 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v141);
                      sub_21AFC54B0(v163);
                      LODWORD(v130) = HIDWORD(v126) - v126;
                      if (__OFSUB__(HIDWORD(v126), v126))
                      {
                        goto LABEL_225;
                      }

                      v130 = v130;
LABEL_186:
                      v2 = v149;
                      v16 = v150;
                      v12 = v151;
                      v101 = __OFADD__(v108, v130);
                      v62 = v108 + v130;
                      if (!v101)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_215;
                    case 2uLL:
                      v132 = *(v126 + 16);
                      v131 = *(v126 + 24);
                      v133 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v133, v134);
                      sub_21B0F68B8(&v159);
                      sub_21AFC54B0(v163);
                      v135 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v135);
                      sub_21AFC54B0(v163);
                      v130 = v131 - v132;
                      if (!__OFSUB__(v131, v132))
                      {
                        goto LABEL_186;
                      }

                      goto LABEL_224;
                    case 3uLL:
                      v136 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v136, v137);
                      sub_21B0F68B8(&v159);
                      sub_21AFC54B0(v163);
                      v138 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v138);
                      sub_21AFC54B0(v163);
                      v130 = 0;
                      goto LABEL_186;
                    default:
                      v127 = OUTLINED_FUNCTION_39_4();
                      sub_21AF99728(v127, v128);
                      sub_21B0F68B8(&v159);
                      sub_21AFC54B0(v163);
                      v129 = OUTLINED_FUNCTION_32_5();
                      sub_21AFC54B0(v129);
                      sub_21AFC54B0(v163);
                      v130 = BYTE6(v9);
                      goto LABEL_186;
                  }

                case 6:
                  sub_21B0F6800(&v160, v158);
                  v61 = sub_21B103AA8(countAndFlagsBits, object, v51);
                  goto LABEL_48;
                case 7:
                  sub_21B0F68B8(&v159);
                  sub_21AFC54B0(v163);
                  v102 = OUTLINED_FUNCTION_32_5();
                  sub_21AFC54B0(v102);
                  sub_21AFC54B0(v163);
                  v62 = 0;
                  goto LABEL_107;
                default:
                  v52 = v160.schema.type._countAndFlagsBits & 1;
                  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
                  v9 = OUTLINED_FUNCTION_114_1(v53);
                  OUTLINED_FUNCTION_9_22(v9);
                  *(OUTLINED_FUNCTION_77_2(v54) + 32) = v52;
LABEL_104:
                  sub_21B110E14();
                  v62 = *(v9 + 16);

                  sub_21B0F68B8(&v159);
                  sub_21AFC54B0(v163);
                  v63 = OUTLINED_FUNCTION_32_5();
                  break;
              }

LABEL_105:
              sub_21AFC54B0(v63);
LABEL_106:
              sub_21AFC54B0(v163);
LABEL_107:
              v2 = v149;
LABEL_108:
              v16 = v150;
              v12 = v151;
LABEL_109:
              v100 = v147;
              v48 = v147 + v62;
              if (__OFADD__(v147, v62))
              {
                goto LABEL_206;
              }

              v10 = v156;
              break;
          }

          goto LABEL_111;
        default:
          switch(v163[24])
          {
            case 1:
              OUTLINED_FUNCTION_149_0();
              goto LABEL_61;
            case 2:
              sub_21B103CA8((2 * *v163) ^ (*v163 >> 63));
LABEL_61:
              OUTLINED_FUNCTION_29_7();
              if (v69)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v48 = *(v9 + 16);
              }

              else
              {
                v48 = 0;
              }

              v10 = v156;
              v2 = v149;

              sub_21AFC54B0(v163);
              sub_21AFC54B0(v163);
              goto LABEL_58;
            case 3:
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v9 = OUTLINED_FUNCTION_117_0(v67);
              OUTLINED_FUNCTION_9_22(v9);
              *(OUTLINED_FUNCTION_77_2(v68) + 32) = v40;
              goto LABEL_54;
            case 4:
              v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v9 = OUTLINED_FUNCTION_119_0(v65);
              OUTLINED_FUNCTION_9_22(v9);
              *(OUTLINED_FUNCTION_77_2(v66) + 32) = v40;
              goto LABEL_54;
            case 5:
              if ((*&v163[8] & 0x1000000000000000) != 0)
              {
                v72 = OUTLINED_FUNCTION_146_0();
              }

              else
              {
                OUTLINED_FUNCTION_52_2();
                if (v29)
                {
                  v72 = v70;
                }

                else
                {
                  v72 = v71;
                }
              }

              v73 = (2 * v72) ^ (v72 >> 63);
              OUTLINED_FUNCTION_94_2();
              sub_21B103CA8(v73);
              OUTLINED_FUNCTION_29_7();
              if (v74)
              {
                OUTLINED_FUNCTION_26_6();
                sub_21B110E14();
                v148 = *(v73 + 16);
              }

              else
              {
                v148 = 0;
              }

              sub_21B112434();
              OUTLINED_FUNCTION_74_1(v153);
              v79 = OUTLINED_FUNCTION_81_2();
              v80(v79);
              if (v41 >> 60 == 15)
              {
                v81 = 0;
              }

              else
              {
                v81 = v73;
              }

              if (v41 >> 60 == 15)
              {
                v9 = 0xC000000000000000;
              }

              else
              {
                v9 = v41;
              }

              OUTLINED_FUNCTION_39_4();
              sub_21B110E94();
              v10 = v156;
              switch(v9 >> 62)
              {
                case 1uLL:
                  v94 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v94, v95);
                  sub_21AFC54B0(v163);
                  sub_21AFC54B0(v163);
                  LODWORD(v84) = HIDWORD(v81) - v81;
                  if (__OFSUB__(HIDWORD(v81), v81))
                  {
                    goto LABEL_214;
                  }

                  v84 = v84;
LABEL_98:
                  v2 = v149;
                  v16 = v150;
                  v12 = v151;
                  v48 = v148 + v84;
                  if (!__OFADD__(v148, v84))
                  {
                    goto LABEL_111;
                  }

LABEL_208:
                  __break(1u);
                  break;
                case 2uLL:
                  v89 = *(v81 + 16);
                  v88 = *(v81 + 24);
                  v90 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v90, v91);
                  sub_21AFC54B0(v163);
                  sub_21AFC54B0(v163);
                  v84 = v88 - v89;
                  if (!__OFSUB__(v88, v89))
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_213;
                case 3uLL:
                  v92 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v92, v93);
                  sub_21AFC54B0(v163);
                  sub_21AFC54B0(v163);
                  v84 = 0;
                  goto LABEL_98;
                default:
                  v82 = OUTLINED_FUNCTION_39_4();
                  sub_21AF99728(v82, v83);
                  sub_21AFC54B0(v163);
                  sub_21AFC54B0(v163);
                  v84 = BYTE6(v9);
                  goto LABEL_98;
              }

              goto LABEL_209;
            case 6:
              v75 = (*&v163[8] >> 60) & 3;
              if (v75)
              {
                v76 = *&v163[8] >> 62;
                v77 = v163[14];
                if (v75 == 1)
                {
                  v9 = 0;
                  switch(v76)
                  {
                    case 1:
                      OUTLINED_FUNCTION_121_0();
                      if (v101)
                      {
                        goto LABEL_219;
                      }

                      v9 = v110;
LABEL_138:
                      OUTLINED_FUNCTION_94_2();
LABEL_139:
                      if (!__OFSUB__(v9, v41))
                      {
                        OUTLINED_FUNCTION_105_1(v9 - v41);
                        OUTLINED_FUNCTION_29_7();
                        if (v113)
                        {
                          OUTLINED_FUNCTION_26_6();
                          sub_21B110E14();
                          v114 = *(v9 + 16);
                        }

                        else
                        {
                          v114 = 0;
                        }

                        OUTLINED_FUNCTION_92_2();
                        switch(v76)
                        {
                          case 1:
                            sub_21AFC54B0(v163);
                            sub_21AFC54B0(v163);
                            OUTLINED_FUNCTION_121_0();
                            if (v101)
                            {
                              goto LABEL_223;
                            }

                            v77 = v123;
LABEL_169:
                            v10 = v156;
                            v16 = v150;
                            v12 = v151;
                            v48 = v114 + v77;
                            if (!__OFADD__(v114, v77))
                            {
                              goto LABEL_170;
                            }

                            goto LABEL_212;
                          case 2:
                            v9 = *(v40 + 16);
                            v122 = *(v40 + 24);
                            sub_21AFC54B0(v163);
                            sub_21AFC54B0(v163);
                            v101 = __OFSUB__(v122, v9);
                            v77 = v122 - v9;
                            if (!v101)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_222;
                          case 3:
                            sub_21AFC54B0(v163);
                            sub_21AFC54B0(v163);
                            v77 = 0;
                            goto LABEL_169;
                          default:
                            sub_21AFC54B0(v163);
                            sub_21AFC54B0(v163);
                            goto LABEL_169;
                        }
                      }

                      break;
                    case 2:
                      v112 = *(*v163 + 16);
                      v111 = *(*v163 + 24);
                      v9 = v111 - v112;
                      if (!__OFSUB__(v111, v112))
                      {
                        goto LABEL_138;
                      }

                      goto LABEL_217;
                    case 3:
                      goto LABEL_139;
                    default:
                      v9 = v163[14];
                      goto LABEL_139;
                  }

LABEL_210:
                  __break(1u);
LABEL_211:
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
LABEL_217:
                  __break(1u);
LABEL_218:
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
                }

                v9 = 0;
                switch(v76)
                {
                  case 1:
                    OUTLINED_FUNCTION_121_0();
                    if (v101)
                    {
                      goto LABEL_218;
                    }

                    v9 = v115;
LABEL_148:
                    OUTLINED_FUNCTION_94_2();
LABEL_149:
                    sub_21B103CA8((2 * v9) ^ (v9 >> 63));
                    OUTLINED_FUNCTION_29_7();
                    if (v118)
                    {
                      OUTLINED_FUNCTION_26_6();
                      sub_21B110E14();
                      v119 = *(v9 + 16);
                    }

                    else
                    {
                      v119 = 0;
                    }

                    OUTLINED_FUNCTION_92_2();
                    switch(v76)
                    {
                      case 0:
                        sub_21AFC54B0(v163);
                        sub_21AFC54B0(v163);
                        goto LABEL_160;
                      case 1:
                        sub_21AFC54B0(v163);
                        sub_21AFC54B0(v163);
                        OUTLINED_FUNCTION_121_0();
                        if (v101)
                        {
                          goto LABEL_221;
                        }

                        v77 = v121;
LABEL_160:
                        v10 = v156;
                        v16 = v150;
                        v12 = v151;
                        v48 = v119 + v77;
                        if (__OFADD__(v119, v77))
                        {
                          goto LABEL_211;
                        }

LABEL_170:
                        v2 = v149;
                        break;
                      case 2:
                        v9 = *(v40 + 16);
                        v120 = *(v40 + 24);
                        sub_21AFC54B0(v163);
                        sub_21AFC54B0(v163);
                        v101 = __OFSUB__(v120, v9);
                        v77 = v120 - v9;
                        if (!v101)
                        {
                          goto LABEL_160;
                        }

                        goto LABEL_220;
                      case 3:
                        sub_21AFC54B0(v163);
                        sub_21AFC54B0(v163);
                        v77 = 0;
                        goto LABEL_160;
                      default:
                        JUMPOUT(0);
                    }

                    return;
                  case 2:
                    v117 = *(*v163 + 16);
                    v116 = *(*v163 + 24);
                    v9 = v116 - v117;
                    if (!__OFSUB__(v116, v117))
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_216;
                  case 3:
                    goto LABEL_149;
                  default:
                    v9 = v163[14];
                    goto LABEL_149;
                }
              }

              else
              {
                v85 = 2 * *(*v163 + 16);
                OUTLINED_FUNCTION_94_2();
                sub_21B103CA8(v85);
                OUTLINED_FUNCTION_29_7();
                if (v86)
                {
                  OUTLINED_FUNCTION_26_6();
                  sub_21B110E14();
                  v87 = *(v85 + 16);
                }

                else
                {
                  v87 = 0;
                }

                if (*(v40 + 16))
                {
                  OUTLINED_FUNCTION_147_0();
                  v9 = *(v40 + 16);
                }

                else
                {
                  v9 = 0;
                }

                v10 = v156;
                sub_21AFC54B0(v163);
                sub_21AFC54B0(v163);
                v48 = v87 + v9;
                if (__OFADD__(v87, v9))
                {
LABEL_209:
                  __break(1u);
                  goto LABEL_210;
                }

LABEL_57:
                v2 = v149;
LABEL_58:
                v16 = v150;
                v12 = v151;
              }

LABEL_111:
              v11 = v155 + v48;
              if (__OFADD__(v155, v48))
              {
                goto LABEL_200;
              }

              v101 = __OFADD__(v10, v11);
              v10 += v11;
              if (v101)
              {
                goto LABEL_201;
              }

              v11 = v17;
              if (!v15)
              {
                goto LABEL_6;
              }

              break;
            case 7:
              sub_21AFC54B0(v163);
              sub_21AFC54B0(v163);
              v48 = 0;
              goto LABEL_56;
            default:
              v42 = v163[0] & 1;
              v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
              v9 = OUTLINED_FUNCTION_114_1(v43);
              OUTLINED_FUNCTION_9_22(v9);
              *(OUTLINED_FUNCTION_77_2(v44) + 32) = v42;
LABEL_54:
              sub_21B110E14();
              v48 = *(v9 + 16);

              goto LABEL_55;
          }

          break;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
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
      goto LABEL_204;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v11;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_4_32();
  sub_21B1059A8();
  v143 = v142;
  v144 = *(v142 + 16);
  v11 = *(v142 + 24);
  v9 = v144 + 1;
  if (v144 < v11 >> 1)
  {
    goto LABEL_193;
  }

LABEL_204:
  OUTLINED_FUNCTION_13_10(v11);
  sub_21B1059A8();
  v143 = v146;
LABEL_193:
  *(v143 + 16) = v9;
  v145 = OUTLINED_FUNCTION_87_2();
  ByteBuffer.writeBytes(_:)(v145);
  OUTLINED_FUNCTION_64_2();

  if (__OFADD__(v10, v0))
  {
    __break(1u);
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

LABEL_197:
  OUTLINED_FUNCTION_77();
}

Swift::Int __swiftcall ByteBuffer.writeAvroRecord(_:)(SwiftAvro::AvroRecord *a1)
{
  OUTLINED_FUNCTION_76();
  v5 = v1;
  v7 = v6;
  v816[9] = *MEMORY[0x277D85DE8];
  v752 = sub_21B112444();
  MEMORY[0x28223BE20](v752);
  v751 = &v740 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 56);
  v744 = *(v10 + 16);
  v11 = 0;
  if (!v744)
  {
    goto LABEL_751;
  }

  v12 = 0;
  v742 = v10;
  v743 = v10 + 32;
  v749 = (v8 + 8);
  v766 = v5;
LABEL_3:
  if (v12 >= *(v10 + 16))
  {
    goto LABEL_770;
  }

  v753 = v11;
  v13 = (v743 + 72 * v12);
  memcpy(v776, v13, sizeof(v776));
  v754 = v12 + 1;
  v14 = *v776;
  v15 = *&v776[24];
  v759 = *&v776[24];
  v16 = *&v776[16];
  switch(v776[64])
  {
    case 1:
      v740 = *&v776[16];
      v741 = *&v776[8];
      v282 = *(*&v776[24] + 16);
      if (!v282)
      {
        goto LABEL_608;
      }

      v283 = 2 * v282;
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_65_1();
      v284._rawValue = sub_21B103CA8(v283);
      v285 = v5;
      v286 = ByteBuffer.writeBytes(_:)(v284);

      v287 = *(v15 + 16);
      if (!v287)
      {
        goto LABEL_621;
      }

      v288 = 0;
      v747 = *(v15 + 16);
      v748 = v15 + 32;
      v289 = v287;
      while (2)
      {
        if (v288 >= v289)
        {
          goto LABEL_766;
        }

        v758 = v286;
        v290 = v288;
        v285 = (v748 + 72 * v288);
        memcpy(v771, v285, sizeof(v771));
        v757 = v290 + 1;
        v2 = *v771;
        v291 = *&v771[8];
        v3 = *&v771[24];
        v764 = *&v771[24];
        v292 = *&v771[16];
        switch(v771[64])
        {
          case 1:
            v745 = *&v771[16];
            v746 = *&v771[8];
            v429 = *(*&v771[24] + 16);
            if (!v429)
            {
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29();
              if (v51)
              {
                OUTLINED_FUNCTION_0_31(v559);
                sub_21B1059A8();
                v284._rawValue = v652;
              }

              v304 = v758;
              goto LABEL_452;
            }

            v430 = 2 * v429;
            OUTLINED_FUNCTION_57_1();
            OUTLINED_FUNCTION_57_1();
            v284._rawValue = sub_21B103CA8(v430);
            v431 = v5;
            v432 = ByteBuffer.writeBytes(_:)(v284);

            v433 = *(v3 + 16);
            if (v433)
            {
              v434 = 0;
              v760 = *(v3 + 16);
              v761 = v3 + 32;
              v435 = v433;
              while (2)
              {
                if (v434 >= v435)
                {
                  goto LABEL_757;
                }

                v4 = v5;
                OUTLINED_FUNCTION_143_0(72);
                v765 = v434 + 1;
                v284._rawValue = v767;
                object = v769._object;
                countAndFlagsBits = v769._countAndFlagsBits;
                switch(v770)
                {
                  case 1:
                    v755 = v768;
                    v756 = v769._countAndFlagsBits;
                    v466 = *(v769._object + 2);
                    if (!v466)
                    {
                      v485 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v485, v486);
                      v487 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v487, v488);
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      OUTLINED_FUNCTION_3_29();
                      if (v51)
                      {
                        OUTLINED_FUNCTION_0_31(v489);
                        sub_21B1059A8();
                        v284._rawValue = v544;
                      }

                      OUTLINED_FUNCTION_6_26();
                      v431 = v4;
                      sub_21B110E14();

                      OUTLINED_FUNCTION_58_2();
                      v5 = v4;
LABEL_358:

                      sub_21AFC54B0(&v767);
                      OUTLINED_FUNCTION_30_6();

                      goto LABEL_385;
                    }

                    v467 = 2 * v466;
                    v468 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v468, v469);
                    v470 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v470, v471);
                    sub_21B103CA8(v467);
                    OUTLINED_FUNCTION_22_7();
                    v750 = v432;
                    if (v472)
                    {
                      OUTLINED_FUNCTION_16_12();
                      sub_21B110E14();
                      v473 = *(v284._rawValue + 2);
                    }

                    else
                    {
                      v473 = 0;
                    }

                    v2 = object[2];
                    if (v2)
                    {
                      v514 = (object + 8);
                      while (2)
                      {
                        OUTLINED_FUNCTION_106_1();
                        v515 = *v774;
                        v516 = *&v774[8];
                        v284._rawValue = *&v774[16];
                        v517 = v774[24];
                        switch(v774[64])
                        {
                          case 1:
                            OUTLINED_FUNCTION_56_1();
                            OUTLINED_FUNCTION_56_1();
                            v519 = v4;
                            ByteBuffer.writeAvroArray(_:)();
                            goto LABEL_397;
                          case 2:
                            OUTLINED_FUNCTION_56_1();
                            OUTLINED_FUNCTION_56_1();
                            v519 = v4;
                            ByteBuffer.writeAvroMap(_:)();
LABEL_397:
                            v521 = OUTLINED_FUNCTION_21_7();
                            sub_21AFC54B0(v521);

                            goto LABEL_398;
                          case 3:
                            v777.schema.type._countAndFlagsBits = *v774;
                            v777.schema.type._object = *&v774[8];
                            v777.schema.name = *&v774[16];
                            v520 = *(v514 + 1);
                            v777.schema.namespace = *v514;
                            *&v777.schema.fields._rawValue = v520;
                            OUTLINED_FUNCTION_56_1();
                            v518 = ByteBuffer.writeAvroRecord(_:)(&v777);
                            goto LABEL_394;
                          case 4:
                            OUTLINED_FUNCTION_67_2(v778);
                            OUTLINED_FUNCTION_56_1();
                            sub_21B0F685C(v778, v775);
                            v519 = ByteBuffer.writeAvroUnion(_:)(v778);
                            sub_21B0F68B8(v778);
                            goto LABEL_395;
                          default:
                            OUTLINED_FUNCTION_56_1();
                            v518 = ByteBuffer.writeAvroPrimitive(_:)(v515, v516, v284._rawValue, v517);
LABEL_394:
                            v519 = v518;
LABEL_395:
                            sub_21AFC54B0(v774);
LABEL_398:
                            v66 = __OFADD__(v473, v519);
                            v473 += v519;
                            if (v66)
                            {
                              goto LABEL_753;
                            }

                            v514 += 72;
                            if (!--v2)
                            {
                              break;
                            }

                            continue;
                        }

                        break;
                      }
                    }

                    OUTLINED_FUNCTION_4_32();
                    sub_21B1059A8();
                    OUTLINED_FUNCTION_134();
                    if (v51)
                    {
                      OUTLINED_FUNCTION_0_31(v522);
                      sub_21B1059A8();
                      v284._rawValue = v541;
                    }

                    v3 = v764;
                    *(OUTLINED_FUNCTION_23_7() + v2) = 0;
                    sub_21B110E14();

                    OUTLINED_FUNCTION_58_2();

                    sub_21AFC54B0(&v767);
                    OUTLINED_FUNCTION_30_6();

                    v431 = v473 + v4;
                    if (__OFADD__(v473, v4))
                    {
                      goto LABEL_784;
                    }

                    v432 = v750;
                    v434 = v765;
                    v5 = v4;
LABEL_413:
                    v66 = __OFADD__(v432, v431);
                    v432 += v431;
                    if (v66)
                    {
                      goto LABEL_758;
                    }

                    if (v434 == v760)
                    {
                      break;
                    }

                    v435 = *(v3 + 16);
                    continue;
                  case 2:
                    v755 = v768;
                    v763 = v769._object;
                    v756 = v769._countAndFlagsBits;
                    v455 = *(v769._object + 2);
                    if (!v455)
                    {
                      v480 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v480, v481);
                      v482 = OUTLINED_FUNCTION_17_12();
                      sub_21B0F6800(v482, v483);
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      OUTLINED_FUNCTION_3_29();
                      v5 = v4;
                      if (v51)
                      {
                        OUTLINED_FUNCTION_0_31(v484);
                        sub_21B1059A8();
                        v284._rawValue = v543;
                      }

                      OUTLINED_FUNCTION_6_26();
                      v431 = v4;
                      sub_21B110E14();

                      OUTLINED_FUNCTION_58_2();
                      goto LABEL_358;
                    }

                    v456 = 2 * v455;
                    v457 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v457, v458);
                    v459 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v459, v460);
                    sub_21B103CA8(v456);
                    OUTLINED_FUNCTION_22_7();
                    v750 = v432;
                    if (v461)
                    {
                      OUTLINED_FUNCTION_16_12();
                      v456 = v4;
                      sub_21B110E14();
                      v462 = *(v284._rawValue + 2);
                    }

                    else
                    {
                      v462 = 0;
                    }

                    v490 = v763 + 64;
                    OUTLINED_FUNCTION_1_20();
                    v2 = v492 & v491;
                    v4 = (v493 + 63) >> 6;

                    v494 = 0;
                    if (v2)
                    {
LABEL_361:
                      v762 = v462;
                      v495 = v494;
                      goto LABEL_366;
                    }

                    while (1)
                    {
                      v495 = v494 + 1;
                      if (__OFADD__(v494, 1))
                      {
                        break;
                      }

                      if (v495 >= v4)
                      {

                        OUTLINED_FUNCTION_4_32();
                        sub_21B1059A8();
                        OUTLINED_FUNCTION_3_29();
                        if (v51)
                        {
                          OUTLINED_FUNCTION_0_31(v513);
                          sub_21B1059A8();
                          v284._rawValue = v542;
                        }

                        v5 = v766;
                        v3 = v764;
                        v432 = v750;
                        OUTLINED_FUNCTION_6_26();
                        sub_21B110E14();

                        OUTLINED_FUNCTION_58_2();

                        sub_21AFC54B0(&v767);
                        OUTLINED_FUNCTION_30_6();

                        v431 = v462 + v5;
                        if (!__OFADD__(v462, v5))
                        {
LABEL_385:
                          v434 = v765;
                          goto LABEL_413;
                        }

LABEL_785:
                        __break(1u);
LABEL_786:
                        __break(1u);
LABEL_787:
                        __break(1u);
LABEL_788:
                        __break(1u);
                        goto LABEL_789;
                      }

                      v2 = *(v490 + 8 * v495);
                      ++v494;
                      if (v2)
                      {
                        v762 = v462;
LABEL_366:
                        v496 = (*(v763 + 48) + 16 * (__clz(__rbit64(v2)) | (v495 << 6)));
                        v498 = *v496;
                        v497 = v496[1];
                        OUTLINED_FUNCTION_60_1();
                        memcpy(v774, v499, 0x41uLL);
                        if ((v497 & 0x1000000000000000) != 0)
                        {
                          sub_21B112514();
                        }

                        OUTLINED_FUNCTION_44_4();

                        OUTLINED_FUNCTION_56_1();
                        v500 = sub_21B103CA8(v456);
                        v501 = v766;
                        v502 = ByteBuffer.writeBytes(_:)(v500);

                        v503._countAndFlagsBits = v498;
                        v503._object = v497;
                        ByteBuffer.writeString(_:)(v503);
                        OUTLINED_FUNCTION_64_2();

                        v66 = __OFADD__(v502, v501);
                        v504 = v502 + v501;
                        if (!v66)
                        {
                          v2 &= v2 - 1;
                          v505 = *v774;
                          v506 = *&v774[8];
                          v284._rawValue = *&v774[16];
                          v507 = v774[24];
                          switch(v774[64])
                          {
                            case 1:
                              OUTLINED_FUNCTION_56_1();
                              v456 = v766;
                              ByteBuffer.writeAvroArray(_:)();
                              goto LABEL_377;
                            case 2:
                              OUTLINED_FUNCTION_56_1();
                              v456 = v766;
                              ByteBuffer.writeAvroMap(_:)();
LABEL_377:
                              v511 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v511);

                              goto LABEL_378;
                            case 3:
                              v779 = *v774;
                              OUTLINED_FUNCTION_56_1();
                              v456 = v766;
                              ByteBuffer.writeAvroRecord(_:)(&v779);
                              goto LABEL_374;
                            case 4:
                              OUTLINED_FUNCTION_67_2(v780);
                              OUTLINED_FUNCTION_56_1();
                              sub_21B0F685C(v780, v775);
                              v456 = v766;
                              ByteBuffer.writeAvroUnion(_:)(v780);
                              v509 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v509);
                              sub_21B0F68B8(v780);
                              goto LABEL_375;
                            default:
                              OUTLINED_FUNCTION_56_1();
                              v508 = v505;
                              v456 = v766;
                              ByteBuffer.writeAvroPrimitive(_:)(v508, v506, v284._rawValue, v507);
LABEL_374:
                              v510 = OUTLINED_FUNCTION_21_7();
                              sub_21AFC54B0(v510);
LABEL_375:
                              sub_21AFC54B0(v774);
LABEL_378:
                              v512 = v504 + v456;
                              if (__OFADD__(v504, v456))
                              {
                                goto LABEL_764;
                              }

                              v462 = v762 + v512;
                              if (__OFADD__(v762, v512))
                              {
                                goto LABEL_765;
                              }

                              v494 = v495;
                              if (!v2)
                              {
                                continue;
                              }

                              goto LABEL_361;
                          }
                        }

LABEL_763:
                        __break(1u);
LABEL_764:
                        __break(1u);
LABEL_765:
                        __break(1u);
LABEL_766:
                        __break(1u);
LABEL_767:
                        __break(1u);
LABEL_768:
                        __break(1u);
LABEL_769:
                        __break(1u);
LABEL_770:
                        __break(1u);
LABEL_771:
                        __break(1u);
LABEL_772:
                        __break(1u);
LABEL_773:
                        __break(1u);
                        goto LABEL_774;
                      }
                    }

                    __break(1u);
LABEL_753:
                    __break(1u);
                    goto LABEL_754;
                  case 3:
                    v781.schema.type._countAndFlagsBits = v767;
                    v781.schema.type._object = v768;
                    v781.schema.name = v769;
                    v463 = *(v431 + 48);
                    v781.schema.namespace = *(v431 + 32);
                    *&v781.schema.fields._rawValue = v463;
                    v464 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v464, v465);
                    v5 = v4;
                    v443 = ByteBuffer.writeAvroRecord(_:)(&v781);
                    goto LABEL_343;
                  case 4:
                    OUTLINED_FUNCTION_108_1();
                    OUTLINED_FUNCTION_59_1();
                    v2 = v445 ^ (v444 >> 63);
                    v446 = (v2 & 0x7F);
                    v447 = OUTLINED_FUNCTION_72_1();
                    if (v2 >= 0x80)
                    {
                      sub_21B0F6800(v447, v448);
                      v474 = OUTLINED_FUNCTION_72_1();
                      sub_21B0F6800(v474, v475);
                      OUTLINED_FUNCTION_82_1();
                      OUTLINED_FUNCTION_4_32();
                      sub_21B1059A8();
                      v284._rawValue = v476;
                      v3 = v476[2];
                      v5 = v4;
                      do
                      {
                        v477 = *(v284._rawValue + 3);
                        v431 = v3 + 1;
                        if (v3 >= v477 >> 1)
                        {
                          OUTLINED_FUNCTION_0_31(v477);
                          sub_21B1059A8();
                          v284._rawValue = v479;
                        }

                        OUTLINED_FUNCTION_11_12();
                        ++v3;
                      }

                      while (v478);
                    }

                    else
                    {
                      sub_21B0F6800(v447, v448);
                      v449 = OUTLINED_FUNCTION_72_1();
                      sub_21B0F6800(v449, v450);
                      OUTLINED_FUNCTION_82_1();
                      v284._rawValue = MEMORY[0x277D84F90];
                      v5 = v4;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v284._rawValue = v539;
                    }

                    OUTLINED_FUNCTION_42_5();
                    if (v51)
                    {
                      OUTLINED_FUNCTION_0_31(v451);
                      sub_21B1059A8();
                      v284._rawValue = v540;
                    }

                    v452 = OUTLINED_FUNCTION_23_7();
                    *(v452 + v2) = v446;
                    OUTLINED_FUNCTION_86_2(v452);
                    v453 = *(v284._rawValue + 2);

                    OUTLINED_FUNCTION_96_2();
                    switch(v454)
                    {
                      case 1:
                        v529 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v529, v774);
                        OUTLINED_FUNCTION_41_5();
                        ByteBuffer.writeAvroArray(_:)();
                        goto LABEL_410;
                      case 2:
                        v525 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v525, v774);
                        OUTLINED_FUNCTION_41_5();
                        ByteBuffer.writeAvroMap(_:)();
LABEL_410:
                        OUTLINED_FUNCTION_68_2();
                        sub_21AFC54B0(&v767);

                        goto LABEL_411;
                      case 3:
                        v782.schema.type._countAndFlagsBits = v431;
                        v782.schema.type._object = v2;
                        v782.schema.name._countAndFlagsBits = v284._rawValue;
                        v782.schema.name._object = v3;
                        v526 = OUTLINED_FUNCTION_10_17();
                        v528 = OUTLINED_FUNCTION_38_6(&v782, v526, v527);
                        sub_21B0F6800(v528, v774);
                        v431 = v5;
                        ByteBuffer.writeAvroRecord(_:)(&v782);
                        goto LABEL_408;
                      case 4:
                        OUTLINED_FUNCTION_50_4();
                        OUTLINED_FUNCTION_12_15();
                        v523 = OUTLINED_FUNCTION_14_13();
                        sub_21B0F6800(v523, v773);
                        OUTLINED_FUNCTION_104_1();
                        sub_21B103CA8(v431);
                        OUTLINED_FUNCTION_22_7();
                        if (v524)
                        {
                          OUTLINED_FUNCTION_16_12();
                          v431 = v5;
                          sub_21B110E14();
                          v4 = *(v284._rawValue + 2);
                        }

                        else
                        {
                          v4 = 0;
                        }

                        OUTLINED_FUNCTION_101_1();
                        switch(v530)
                        {
                          case 1:
                            OUTLINED_FUNCTION_31_8();
                            OUTLINED_FUNCTION_41_5();
                            ByteBuffer.writeAvroArray(_:)();
                            goto LABEL_426;
                          case 2:
                            OUTLINED_FUNCTION_31_8();
                            OUTLINED_FUNCTION_41_5();
                            ByteBuffer.writeAvroMap(_:)();
LABEL_426:
                            v537 = OUTLINED_FUNCTION_21_7();
                            sub_21B0F68B8(v537);
                            sub_21B0F68B8(v775);
                            sub_21AFC54B0(&v767);

                            goto LABEL_427;
                          case 3:
                            v783.schema.type._countAndFlagsBits = v431;
                            v783.schema.type._object = v2;
                            v783.schema.name._countAndFlagsBits = v284._rawValue;
                            v783.schema.name._object = v3;
                            v446 = v774;
                            v533 = OUTLINED_FUNCTION_36_6();
                            v535 = OUTLINED_FUNCTION_38_6(&v783, v533, v534);
                            sub_21B0F6800(v535, v773);
                            v431 = v5;
                            ByteBuffer.writeAvroRecord(_:)(&v783);
                            goto LABEL_424;
                          case 4:
                            OUTLINED_FUNCTION_67_2(v773);
                            OUTLINED_FUNCTION_27_8();
                            OUTLINED_FUNCTION_110_1();
                            OUTLINED_FUNCTION_151_0();
                            v531._rawValue = sub_21B103CA8(v431);
                            OUTLINED_FUNCTION_85_2(v531);
                            OUTLINED_FUNCTION_84_2();
                            OUTLINED_FUNCTION_78_2(v784);
                            ByteBuffer.writeAvroValue(_:)(v784);
                            OUTLINED_FUNCTION_150_0();
                            sub_21B0F68B8(v774);
                            sub_21B0F68B8(v775);
                            sub_21AFC54B0(&v767);
                            sub_21AFC54B0(v2 + 8);
                            v532 = OUTLINED_FUNCTION_14_13();
                            sub_21AFC54B0(v532);
                            sub_21AFC54B0(&v767);
                            v66 = __OFADD__(v284._rawValue, v431);
                            v431 += v284._rawValue;
                            if (!v66)
                            {
                              goto LABEL_428;
                            }

                            goto LABEL_818;
                          default:
                            OUTLINED_FUNCTION_80_1();
                            OUTLINED_FUNCTION_18_8();
LABEL_424:
                            v536 = OUTLINED_FUNCTION_21_7();
                            sub_21B0F68B8(v536);
                            sub_21B0F68B8(v775);
                            sub_21AFC54B0(&v767);
                            sub_21AFC54B0((v446 + 8));
LABEL_427:
                            v538 = OUTLINED_FUNCTION_14_13();
                            sub_21AFC54B0(v538);
                            sub_21AFC54B0(&v767);
LABEL_428:
                            v66 = __OFADD__(v4, v431);
                            v431 += v4;
                            v3 = v764;
                            v434 = v765;
                            if (!v66)
                            {
                              goto LABEL_412;
                            }

                            goto LABEL_797;
                        }

                      default:
                        OUTLINED_FUNCTION_43_5();
                        OUTLINED_FUNCTION_18_8();
LABEL_408:
                        OUTLINED_FUNCTION_68_2();
                        sub_21AFC54B0(&v767);
                        sub_21AFC54B0((v446 + 8));
LABEL_411:
                        sub_21AFC54B0(&v767);
                        v3 = v764;
                        v434 = v765;
LABEL_412:
                        v66 = __OFADD__(v453, v431);
                        v431 += v453;
                        if (!v66)
                        {
                          goto LABEL_413;
                        }

                        goto LABEL_775;
                    }

                  default:
                    v438 = OUTLINED_FUNCTION_17_12();
                    sub_21B0F6800(v438, v439);
                    v440 = OUTLINED_FUNCTION_84();
                    v441 = countAndFlagsBits;
                    v5 = v4;
                    v443 = ByteBuffer.writeAvroPrimitive(_:)(v440, v442, v441, object);
LABEL_343:
                    v431 = v443;
                    sub_21AFC54B0(&v767);
                    goto LABEL_385;
                }

                break;
              }
            }

            OUTLINED_FUNCTION_4_32();
            sub_21B1059A8();
            OUTLINED_FUNCTION_3_29();
            if (v51)
            {
              OUTLINED_FUNCTION_0_31(v548);
              sub_21B1059A8();
              v284._rawValue = v651;
            }

            *(v284._rawValue + 2) = v431;
            v549 = OUTLINED_FUNCTION_87_2();
            ByteBuffer.writeBytes(_:)(v549);
            OUTLINED_FUNCTION_118_0();

            sub_21AFC54B0(v771);
            v285 = (v432 + v5);
            if (__OFADD__(v432, v5))
            {
              goto LABEL_795;
            }

            goto LABEL_484;
          case 2:
            v745 = *&v771[16];
            v746 = *&v771[8];
            v309 = *(*&v771[24] + 16);
            if (!v309)
            {
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_57_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29();
              v304 = v758;
              if (v51)
              {
                OUTLINED_FUNCTION_0_31(v557);
                sub_21B1059A8();
                v284._rawValue = v558;
              }

LABEL_452:
              OUTLINED_FUNCTION_6_26();
              v285 = v5;
              sub_21B110E14();

              sub_21AFC54B0(v771);
              OUTLINED_FUNCTION_30_6();

LABEL_453:
              v560 = v759;
LABEL_485:
              v66 = __OFADD__(v304, v285);
              v286 = v285 + v304;
              if (v66)
              {
                goto LABEL_767;
              }

              v288 = v757;
              if (v757 != v747)
              {
                v289 = *(v560 + 16);
                continue;
              }

LABEL_621:
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29();
              if (v51)
              {
                OUTLINED_FUNCTION_0_31(v667);
                sub_21B1059A8();
                v284._rawValue = v738;
              }

              *(v284._rawValue + 2) = v285;
              v668 = OUTLINED_FUNCTION_87_2();
              v669 = ByteBuffer.writeBytes(_:)(v668);

              sub_21AFC54B0(v776);
              v66 = __OFADD__(v286, v669);
              v13 = (v286 + v669);
              if (v66)
              {
                goto LABEL_806;
              }

              goto LABEL_656;
            }

            v310 = 2 * v309;
            OUTLINED_FUNCTION_57_1();
            OUTLINED_FUNCTION_57_1();
            v311._rawValue = sub_21B103CA8(v310);
            OUTLINED_FUNCTION_85_2(v311);
            OUTLINED_FUNCTION_19_0();

            v312 = (v3 + 64);
            OUTLINED_FUNCTION_1_20();
            v4 = v314 & v313;
            v316 = (v315 + 63) >> 6;

            v317 = v316;
            v318 = 0;
            v761 = v316;
            v762 = v3 + 64;
            if (!v4)
            {
              goto LABEL_237;
            }

            while (1)
            {
              v5 = v318;
LABEL_240:
              OUTLINED_FUNCTION_138();
              v320 = *v319;
              v321 = v319[1];
              OUTLINED_FUNCTION_60_1();
              memcpy(v772, v322, sizeof(v772));
              v765 = v320;
              if ((v321 & 0x1000000000000000) != 0)
              {
                v323 = sub_21B112514();
              }

              else if ((v321 & 0x2000000000000000) != 0)
              {
                v323 = HIBYTE(v321) & 0xF;
              }

              else
              {
                v323 = v320 & 0xFFFFFFFFFFFFLL;
              }

              v763 = v310;
              v324 = (2 * v323) ^ (v323 >> 63);
              LOBYTE(v325) = v324 & 0x7F;

              v326 = OUTLINED_FUNCTION_33_7();
              if (v324 >= 0x80)
              {
                sub_21B0F6800(v326, v327);
                OUTLINED_FUNCTION_4_32();
                sub_21B1059A8();
                v328 = v329;
                v330 = *(v329 + 16);
                do
                {
                  v775[0] = v328;
                  OUTLINED_FUNCTION_7_18();
                  sub_21B10606C(v330, v331);
                  v328 = v775[0];
                  v332 = v775[0] + v330++;
                  *(v775[0] + 16) = v330;
                  *(v332 + 32) = v325 | 0x80;
                  v325 = (v324 >> 7) & 0x7F;
                  v333 = v324 >> 14;
                  v324 >>= 7;
                }

                while (v333);
              }

              else
              {
                sub_21B0F6800(v326, v327);
                v328 = MEMORY[0x277D84F90];
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_3_27();
                sub_21B1059A8();
                v328 = v426;
              }

              v335 = *(v328 + 16);
              v334 = *(v328 + 24);
              if (v335 >= v334 >> 1)
              {
                OUTLINED_FUNCTION_0_31(v334);
                sub_21B1059A8();
                v328 = v427;
              }

              v4 &= v4 - 1;
              *(v328 + 16) = v335 + 1;
              *(v328 + 32 + v335) = v325;
              sub_21B110E14();
              v336 = *(v328 + 16);

              v337 = v751;
              sub_21B112434();
              v338 = sub_21B112414();
              v340 = v339;
              OUTLINED_FUNCTION_129_0();
              v341(v337, v752);
              OUTLINED_FUNCTION_137_0();
              v344 = !v343 & v342 ? 0 : v338;
              v345 = !v343 & v342 ? 0xC000000000000000 : v340;
              OUTLINED_FUNCTION_30_2();
              sub_21B110E94();

              switch(v345 >> 62)
              {
                case 1uLL:
                  v355 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v355, v356);
                  LODWORD(v348) = HIDWORD(v344) - v344;
                  if (__OFSUB__(HIDWORD(v344), v344))
                  {
                    goto LABEL_791;
                  }

                  v348 = v348;
LABEL_266:
                  v357 = v336 + v348;
                  v3 = v764;
                  if (__OFADD__(v336, v348))
                  {
                    goto LABEL_772;
                  }

                  break;
                case 2uLL:
                  v350 = *(v344 + 16);
                  v349 = *(v344 + 24);
                  v351 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v351, v352);
                  v348 = v349 - v350;
                  if (!__OFSUB__(v349, v350))
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_792;
                case 3uLL:
                  v353 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v353, v354);
                  v348 = 0;
                  goto LABEL_266;
                default:
                  v346 = OUTLINED_FUNCTION_30_2();
                  sub_21AF99728(v346, v347);
                  v348 = BYTE6(v345);
                  goto LABEL_266;
              }

              v359 = *&v772[8];
              v358 = *v772;
              v361 = *&v772[24];
              v360 = *&v772[16];
              switch(v772[64])
              {
                case 1:
                  v755 = *&v772[8];
                  v756 = *&v772[16];
                  v750 = v336 + v348;
                  if (!*(*&v772[24] + 16))
                  {
                    goto LABEL_305;
                  }

                  v765 = *&v772[24];
                  sub_21B0FAC54(*&v772[24]);
                  OUTLINED_FUNCTION_44_4();
                  v396 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v396, v397);
                  v398._rawValue = sub_21B103CA8(v358);
                  OUTLINED_FUNCTION_93_2(v398);
                  OUTLINED_FUNCTION_84_2();
                  v399 = *(v765 + 16);
                  if (v399)
                  {
                    v400 = v765 + 64;
                    while (2)
                    {
                      OUTLINED_FUNCTION_106_1();
                      v401 = *v774;
                      v402 = *&v774[8];
                      v403 = *&v774[16];
                      v404 = v774[24];
                      switch(v774[64])
                      {
                        case 1:
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_136_0();
                          ByteBuffer.writeAvroArray(_:)();
                          goto LABEL_299;
                        case 2:
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_56_1();
                          OUTLINED_FUNCTION_136_0();
                          ByteBuffer.writeAvroMap(_:)();
LABEL_299:
                          v407 = OUTLINED_FUNCTION_21_7();
                          sub_21AFC54B0(v407);

                          goto LABEL_300;
                        case 3:
                          v785.schema.type._countAndFlagsBits = *v774;
                          v785.schema.type._object = *&v774[8];
                          v785.schema.name = *&v774[16];
                          v406 = *(v400 + 16);
                          v785.schema.namespace = *v400;
                          *&v785.schema.fields._rawValue = v406;
                          OUTLINED_FUNCTION_56_1();
                          v405 = ByteBuffer.writeAvroRecord(_:)(&v785);
                          goto LABEL_296;
                        case 4:
                          OUTLINED_FUNCTION_67_2(v786);
                          OUTLINED_FUNCTION_56_1();
                          sub_21B0F685C(v786, v775);
                          v401 = ByteBuffer.writeAvroUnion(_:)(v786);
                          sub_21B0F68B8(v786);
                          goto LABEL_297;
                        default:
                          OUTLINED_FUNCTION_56_1();
                          v405 = ByteBuffer.writeAvroPrimitive(_:)(v401, v402, v403, v404);
LABEL_296:
                          v401 = v405;
LABEL_297:
                          sub_21AFC54B0(v774);
LABEL_300:
                          v66 = __OFADD__(v359, v401);
                          v359 += v401;
                          if (v66)
                          {
                            goto LABEL_761;
                          }

                          v400 += 72;
                          if (!--v399)
                          {
                            break;
                          }

                          continue;
                      }

                      break;
                    }
                  }

                  v408._rawValue = sub_21B103CA8(0);
                  v409 = OUTLINED_FUNCTION_93_2(v408);

                  OUTLINED_FUNCTION_58_2();

                  sub_21AFC54B0(v772);
                  v66 = __OFADD__(v359, v409);
                  v358 = v359 + v409;
                  if (!v66)
                  {
                    goto LABEL_307;
                  }

                  goto LABEL_803;
                case 2:
                  v755 = *&v772[8];
                  v756 = *&v772[16];
                  v750 = v336 + v348;
                  v374 = *(*&v772[24] + 16);
                  if (!v374)
                  {
LABEL_305:
                    v410 = OUTLINED_FUNCTION_33_7();
                    sub_21B0F6800(v410, v411);
                    OUTLINED_FUNCTION_4_32();
                    sub_21B1059A8();
                    v775[0] = v412;
                    v413 = *(v412 + 16);
                    OUTLINED_FUNCTION_7_18();
                    sub_21B10606C(v413, v414);
                    OUTLINED_FUNCTION_73_2();

                    OUTLINED_FUNCTION_58_2();

                    sub_21AFC54B0(v772);
                    sub_21B0FAC54(v359);
                    OUTLINED_FUNCTION_64_2();

                    goto LABEL_308;
                  }

                  v375 = 2 * v374;
                  v376 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v376, v377);
                  v378._rawValue = sub_21B103CA8(v375);
                  OUTLINED_FUNCTION_93_2(v378);
                  OUTLINED_FUNCTION_19_0();

                  OUTLINED_FUNCTION_1_20();
                  v381 = v380 & v379;
                  v383 = (v382 + 63) >> 6;
                  v765 = v361;

                  v384 = 0;
                  break;
                case 3:
                  v788 = *v772;
                  v394 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v394, v395);
                  v366 = ByteBuffer.writeAvroRecord(_:)(&v788);
                  goto LABEL_287;
                case 4:
                  OUTLINED_FUNCTION_67_2(v775);
                  OUTLINED_FUNCTION_27_8();
                  sub_21B0F6800(v772, v774);
                  OUTLINED_FUNCTION_82_1();
                  sub_21B103CA8(v358);
                  OUTLINED_FUNCTION_29_7();
                  if (v367)
                  {
                    OUTLINED_FUNCTION_26_6();
                    sub_21B110E14();
                  }

                  v368 = sub_21B0FAC54(v361);

                  v369 = v775[1];
                  v370 = *&v775[3];
                  switch(LOBYTE(v775[9]))
                  {
                    case 1:
                      v424 = OUTLINED_FUNCTION_14_13();
                      sub_21B0F6800(v424, v774);
                      OUTLINED_FUNCTION_136_0();
                      ByteBuffer.writeAvroArray(_:)();
                      goto LABEL_316;
                    case 2:
                      v420 = OUTLINED_FUNCTION_14_13();
                      sub_21B0F6800(v420, v774);
                      OUTLINED_FUNCTION_136_0();
                      ByteBuffer.writeAvroMap(_:)();
LABEL_316:
                      OUTLINED_FUNCTION_68_2();
                      sub_21AFC54B0(v772);

                      goto LABEL_317;
                    case 3:
                      v789.schema.type._countAndFlagsBits = v775[1];
                      v789.schema.type._object = v775[2];
                      v789.schema.name = *&v775[3];
                      v421 = OUTLINED_FUNCTION_10_17();
                      v423 = OUTLINED_FUNCTION_38_6(&v789, v421, v422);
                      sub_21B0F6800(v423, v774);
                      v369 = v766;
                      ByteBuffer.writeAvroRecord(_:)(&v789);
                      goto LABEL_314;
                    case 4:
                      OUTLINED_FUNCTION_50_4();
                      OUTLINED_FUNCTION_12_15();
                      sub_21B0F6800(&v775[1], v773);
                      OUTLINED_FUNCTION_104_1();
                      v418._rawValue = sub_21B103CA8(v369);
                      OUTLINED_FUNCTION_93_2(v418);
                      OUTLINED_FUNCTION_152_0();
                      OUTLINED_FUNCTION_83_1(v790, v774);
                      ByteBuffer.writeAvroValue(_:)(v790);
                      v419 = OUTLINED_FUNCTION_21_7();
                      sub_21B0F68B8(v419);
                      sub_21B0F68B8(v775);
                      sub_21AFC54B0(v772);
                      sub_21AFC54B0(&v775[1]);
                      sub_21AFC54B0(v772);
                      v66 = __OFADD__(v370, v369);
                      v369 += v370;
                      if (!v66)
                      {
                        goto LABEL_318;
                      }

                      goto LABEL_816;
                    default:
                      OUTLINED_FUNCTION_43_5();
                      v371 = OUTLINED_FUNCTION_90_1();
                      v369 = v766;
                      ByteBuffer.writeAvroPrimitive(_:)(v371, v372, v373, SBYTE8(v370));
LABEL_314:
                      OUTLINED_FUNCTION_68_2();
                      sub_21AFC54B0(v772);
                      sub_21AFC54B0(v360 + 8);
LABEL_317:
                      sub_21AFC54B0(v772);
LABEL_318:
                      v66 = __OFADD__(v368, v369);
                      v358 = v368 + v369;
                      v3 = v764;
                      v317 = v761;
                      v312 = v762;
                      if (!v66)
                      {
                        goto LABEL_319;
                      }

                      goto LABEL_796;
                  }

                default:
                  v362 = OUTLINED_FUNCTION_33_7();
                  sub_21B0F6800(v362, v363);
                  v364 = OUTLINED_FUNCTION_35_2();
                  v366 = ByteBuffer.writeAvroPrimitive(_:)(v364, v365, v360, v361);
LABEL_287:
                  v358 = v366;
                  sub_21AFC54B0(v772);
                  sub_21AFC54B0(v772);
                  v317 = v761;
                  v312 = v762;
                  goto LABEL_319;
              }

LABEL_275:
              if (v381)
              {
                v760 = v375;
                v385 = v765;
                goto LABEL_282;
              }

              v385 = v765;
              while (1)
              {
                v386 = v384 + 1;
                if (__OFADD__(v384, 1))
                {
                  goto LABEL_759;
                }

                if (v386 >= v383)
                {
                  break;
                }

                v381 = *(v361 + 64 + 8 * v386);
                ++v384;
                if (v381)
                {
                  v760 = v375;
                  v384 = v386;
LABEL_282:
                  v387 = (*(v385 + 48) + 16 * (__clz(__rbit64(v381)) | (v384 << 6)));
                  v388 = *v387;
                  v389 = v387[1];
                  OUTLINED_FUNCTION_60_1();
                  memcpy(v787, v390, 0x41uLL);

                  sub_21B0F6800(v787, v775);
                  v391._countAndFlagsBits = v388;
                  v391._object = v389;
                  ByteBuffer.writeAvroString(_:)(v391);
                  OUTLINED_FUNCTION_152_0();
                  v392 = ByteBuffer.writeAvroValue(_:)(v787);
                  sub_21AFC54B0(v787);
                  v393 = v361 + v392;
                  if (__OFADD__(v361, v392))
                  {
                    goto LABEL_782;
                  }

                  v381 &= v381 - 1;
                  v375 = v760 + v393;
                  if (__OFADD__(v760, v393))
                  {
                    goto LABEL_783;
                  }

                  goto LABEL_275;
                }
              }

              v415 = sub_21B103CA8(0);
              v416 = v375;
              v417 = v766;
              ByteBuffer.writeBytes(_:)(v415);
              OUTLINED_FUNCTION_64_2();

              OUTLINED_FUNCTION_58_2();

              sub_21AFC54B0(v772);
              v66 = __OFADD__(v416, v417);
              v358 = v416 + v417;
              if (v66)
              {
                goto LABEL_804;
              }

LABEL_307:
              v3 = v764;
LABEL_308:
              v317 = v761;
              v312 = v762;
              v357 = v750;
LABEL_319:
              v425 = v357 + v358;
              if (__OFADD__(v357, v358))
              {
                goto LABEL_773;
              }

              v310 = v763 + v425;
              if (__OFADD__(v763, v425))
              {
                break;
              }

              v318 = v5;
              if (!v4)
              {
LABEL_237:
                while (1)
                {
                  v5 = v318 + 1;
                  if (__OFADD__(v318, 1))
                  {
                    break;
                  }

                  if (v5 >= v317)
                  {

                    v775[0] = MEMORY[0x277D84F90];
                    OUTLINED_FUNCTION_1_29();
                    v2 = v310;
                    sub_21B105FC8(v545);
                    v284._rawValue = *(v775[0] + 16);
                    v546 = OUTLINED_FUNCTION_51_1();
                    sub_21B10606C(v546, v312);
                    OUTLINED_FUNCTION_76_2();
                    OUTLINED_FUNCTION_125_0();
                    ByteBuffer.writeBytes(_:)(v547);
                    OUTLINED_FUNCTION_118_0();

                    sub_21AFC54B0(v771);
                    v285 = (v775 + v310);
                    if (!__OFADD__(v2, v775))
                    {
                      goto LABEL_484;
                    }

LABEL_794:
                    __break(1u);
LABEL_795:
                    __break(1u);
LABEL_796:
                    __break(1u);
LABEL_797:
                    __break(1u);
LABEL_798:
                    __break(1u);
LABEL_799:
                    __break(1u);
LABEL_800:
                    __break(1u);
LABEL_801:
                    __break(1u);
LABEL_802:
                    __break(1u);
LABEL_803:
                    __break(1u);
LABEL_804:
                    __break(1u);
LABEL_805:
                    __break(1u);
LABEL_806:
                    __break(1u);
LABEL_807:
                    __break(1u);
LABEL_808:
                    __break(1u);
LABEL_809:
                    __break(1u);
LABEL_810:
                    __break(1u);
LABEL_811:
                    __break(1u);
LABEL_812:
                    __break(1u);
LABEL_813:
                    __break(1u);
LABEL_814:
                    __break(1u);
LABEL_815:
                    __break(1u);
LABEL_816:
                    __break(1u);
LABEL_817:
                    __break(1u);
LABEL_818:
                    __break(1u);
LABEL_819:
                    __break(1u);
LABEL_820:
                    __break(1u);
LABEL_821:
                    __break(1u);
LABEL_822:
                    __break(1u);
LABEL_823:
                    __break(1u);
LABEL_824:
                    __break(1u);
LABEL_825:
                    __break(1u);
LABEL_826:
                    __break(1u);
LABEL_827:
                    __break(1u);
LABEL_828:
                    __break(1u);
LABEL_829:
                    __break(1u);
LABEL_830:
                    __break(1u);
LABEL_831:
                    __break(1u);
LABEL_832:
                    __break(1u);
LABEL_833:
                    __break(1u);
LABEL_834:
                    __break(1u);
LABEL_835:
                    __break(1u);
LABEL_836:
                    __break(1u);
LABEL_837:
                    __break(1u);
LABEL_838:
                    __break(1u);
LABEL_839:
                    __break(1u);
LABEL_840:
                    __break(1u);
LABEL_841:
                    __break(1u);
LABEL_842:
                    __break(1u);
LABEL_843:
                    __break(1u);
LABEL_844:
                    __break(1u);
LABEL_845:
                    __break(1u);
LABEL_846:
                    __break(1u);
LABEL_847:
                    __break(1u);
LABEL_848:
                    __break(1u);
LABEL_849:
                    __break(1u);
LABEL_850:
                    __break(1u);
LABEL_851:
                    __break(1u);
LABEL_852:
                    __break(1u);
LABEL_853:
                    __break(1u);
                  }

                  v4 = *(v312 + v5);
                  ++v318;
                  if (v4)
                  {
                    goto LABEL_240;
                  }
                }

LABEL_754:
                __break(1u);
LABEL_755:
                __break(1u);
LABEL_756:
                __break(1u);
LABEL_757:
                __break(1u);
LABEL_758:
                __break(1u);
LABEL_759:
                __break(1u);
LABEL_760:
                __break(1u);
LABEL_761:
                __break(1u);
LABEL_762:
                __break(1u);
                goto LABEL_763;
              }
            }

LABEL_774:
            __break(1u);
LABEL_775:
            __break(1u);
            break;
          case 3:
            v791.schema.type._countAndFlagsBits = *v771;
            v791.schema.type._object = *&v771[8];
            v791.schema.name = *&v771[16];
            v428 = *(v285 + 3);
            v791.schema.namespace = *(v285 + 2);
            *&v791.schema.fields._rawValue = v428;
            OUTLINED_FUNCTION_57_1();
            v285 = ByteBuffer.writeAvroRecord(_:)(&v791);
            sub_21AFC54B0(v771);
            goto LABEL_484;
          case 4:
            memcpy(v775, (*v771 + 16), sizeof(v775));
            OUTLINED_FUNCTION_59_1();
            v3 = v297 ^ (v296 >> 63);
            v284._rawValue = MEMORY[0x277D84F90];
            v773[0] = MEMORY[0x277D84F90];
            v298 = OUTLINED_FUNCTION_139();
            if (v3 >= 0x80)
            {
              sub_21B0F6800(v298, v299);
              v550 = OUTLINED_FUNCTION_139();
              sub_21B0F6800(v550, v551);
              OUTLINED_FUNCTION_82_1();
              OUTLINED_FUNCTION_1_29();
              v285 = v773;
              sub_21B105FC8(v552);
              OUTLINED_FUNCTION_148_0();
              OUTLINED_FUNCTION_148_0();
              v284._rawValue = v773[0];
              do
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v284._rawValue = v555;
                }

                OUTLINED_FUNCTION_25_6();
                if (v51)
                {
                  OUTLINED_FUNCTION_0_31(v553);
                  sub_21B1059A8();
                  v284._rawValue = v556;
                }

                OUTLINED_FUNCTION_62_1();
              }

              while (v554);
            }

            else
            {
              sub_21B0F6800(v298, v299);
              v300 = OUTLINED_FUNCTION_139();
              sub_21B0F6800(v300, v301);
              OUTLINED_FUNCTION_82_1();
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v284._rawValue = v649;
            }

            v302 = *(v284._rawValue + 2);
            OUTLINED_FUNCTION_25_6();
            v304 = v758;
            if (v51)
            {
              OUTLINED_FUNCTION_0_31(v303);
              sub_21B1059A8();
              v284._rawValue = v650;
            }

            v305 = OUTLINED_FUNCTION_23_7();
            v302[v305] = v3 & 0x7F;
            OUTLINED_FUNCTION_86_2(v305);
            v306 = *(v284._rawValue + 2);

            v2 = v775[1];
            OUTLINED_FUNCTION_133_0();
            switch(v307)
            {
              case 1:
                v567 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v567, v774);
                OUTLINED_FUNCTION_79_2();
                ByteBuffer.writeAvroArray(_:)();
                goto LABEL_460;
              case 2:
                v563 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v563, v774);
                OUTLINED_FUNCTION_79_2();
                ByteBuffer.writeAvroMap(_:)();
LABEL_460:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(v771);

                break;
              case 3:
                v792.schema.type._countAndFlagsBits = v2;
                v792.schema.type._object = v284._rawValue;
                v792.schema.name._countAndFlagsBits = v3;
                v792.schema.name._object = v4;
                v564 = OUTLINED_FUNCTION_10_17();
                v566 = OUTLINED_FUNCTION_38_6(&v792, v564, v565);
                sub_21B0F6800(v566, v774);
                v285 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v792);
LABEL_458:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(v771);
                sub_21AFC54B0((v302 + 8));
                break;
              case 4:
                memcpy(v774, (v2 + 16), sizeof(v774));
                OUTLINED_FUNCTION_12_15();
                v561 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v561, v773);
                OUTLINED_FUNCTION_104_1();
                sub_21B103CA8(v285);
                OUTLINED_FUNCTION_22_7();
                if (v562)
                {
                  OUTLINED_FUNCTION_16_12();
                  v285 = v5;
                  sub_21B110E14();
                  v4 = *(v284._rawValue + 2);
                }

                else
                {
                  v4 = 0;
                }

                OUTLINED_FUNCTION_101_1();
                switch(v581)
                {
                  case 1:
                    OUTLINED_FUNCTION_31_8();
                    OUTLINED_FUNCTION_41_5();
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_532;
                  case 2:
                    OUTLINED_FUNCTION_31_8();
                    OUTLINED_FUNCTION_41_5();
                    ByteBuffer.writeAvroMap(_:)();
LABEL_532:
                    v612 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v612);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);

                    goto LABEL_533;
                  case 3:
                    v793.schema.type._countAndFlagsBits = v285;
                    v793.schema.type._object = v2;
                    v793.schema.name._countAndFlagsBits = v284._rawValue;
                    v793.schema.name._object = v3;
                    v302 = v774;
                    v608 = OUTLINED_FUNCTION_36_6();
                    v610 = OUTLINED_FUNCTION_38_6(&v793, v608, v609);
                    sub_21B0F6800(v610, v773);
                    v285 = v5;
                    ByteBuffer.writeAvroRecord(_:)(&v793);
                    goto LABEL_530;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v773);
                    OUTLINED_FUNCTION_27_8();
                    OUTLINED_FUNCTION_110_1();
                    OUTLINED_FUNCTION_151_0();
                    v606._rawValue = sub_21B103CA8(v285);
                    OUTLINED_FUNCTION_85_2(v606);
                    OUTLINED_FUNCTION_84_2();
                    OUTLINED_FUNCTION_78_2(v794);
                    ByteBuffer.writeAvroValue(_:)(v794);
                    OUTLINED_FUNCTION_150_0();
                    sub_21B0F68B8(v774);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);
                    sub_21AFC54B0(v2 + 8);
                    v607 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v607);
                    sub_21AFC54B0(v771);
                    v66 = __OFADD__(v284._rawValue, v285);
                    v285 = (v285 + v284._rawValue);
                    if (!v66)
                    {
                      goto LABEL_534;
                    }

                    goto LABEL_825;
                  default:
                    OUTLINED_FUNCTION_80_1();
                    OUTLINED_FUNCTION_18_8();
LABEL_530:
                    v611 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v611);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);
                    sub_21AFC54B0((v302 + 8));
LABEL_533:
                    v613 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v613);
                    sub_21AFC54B0(v771);
LABEL_534:
                    v560 = v759;
                    v66 = __OFADD__(v4, v285);
                    v285 = (v285 + v4);
                    if (!v66)
                    {
                      goto LABEL_463;
                    }

                    goto LABEL_807;
                }

              default:
                switch(v4)
                {
                  case 1:
                    sub_21B103B80((2 * v2) ^ (v2 >> 31));
                    goto LABEL_552;
                  case 2:
                    sub_21B103CA8((2 * v2) ^ (v2 >> 63));
LABEL_552:
                    OUTLINED_FUNCTION_22_7();
                    if (v624)
                    {
                      OUTLINED_FUNCTION_16_12();
                      v285 = v5;
                      sub_21B110E14();
                    }

                    v625 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v625);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);
                    OUTLINED_FUNCTION_30_6();

                    goto LABEL_461;
                  case 3:
                    *v774 = v2;
                    v308 = &v774[4];
                    goto LABEL_549;
                  case 4:
                    *v774 = v2;
                    v308 = &v774[8];
                    goto LABEL_549;
                  case 5:
                    if ((v284._rawValue & 0x1000000000000000) != 0)
                    {
                      OUTLINED_FUNCTION_48_1();
                      sub_21B112514();
                    }

                    OUTLINED_FUNCTION_44_4();
                    v3 = v775;
                    sub_21B0F6800(&v775[1], v774);
                    sub_21B0F6800(&v775[1], v774);
                    v626._rawValue = sub_21B103CA8(v285);
                    v765 = OUTLINED_FUNCTION_85_2(v626);

                    v4 = v751;
                    sub_21B112434();
                    v627 = sub_21B112414();
                    OUTLINED_FUNCTION_129_0();
                    v628(v4, v752);
                    OUTLINED_FUNCTION_137_0();
                    if (!v52 & v51)
                    {
                      v284._rawValue = 0;
                    }

                    else
                    {
                      v284._rawValue = v627;
                    }

                    v629 = OUTLINED_FUNCTION_84();
                    v631 = ByteBuffer.writeData(_:)(v629, v630);
                    v632 = OUTLINED_FUNCTION_84();
                    sub_21AF99728(v632, v633);
                    sub_21AFC54B0(&v775[1]);
                    sub_21AFC54B0(&v775[1]);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);
                    sub_21AFC54B0(v771);
                    v66 = __OFADD__(v765, v631);
                    v285 = (v765 + v631);
                    if (!v66)
                    {
                      goto LABEL_462;
                    }

                    goto LABEL_834;
                  case 6:
                    OUTLINED_FUNCTION_43_5();
                    v634 = OUTLINED_FUNCTION_48_1();
                    v285 = v5;
                    sub_21B103AA8(v634, v635, v3);
                    goto LABEL_458;
                  case 7:
                    v623 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v623);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(v771);
                    sub_21AFC54B0(v771);
                    v285 = 0;
                    goto LABEL_462;
                  default:
                    v774[0] = v2 & 1;
                    v308 = &v774[1];
LABEL_549:
                    v621._rawValue = sub_21B1061F0(v774, v308);
                    OUTLINED_FUNCTION_85_2(v621);
                    OUTLINED_FUNCTION_19_0();

                    v622 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v622);
                    sub_21AFC54B0(v771);
                    sub_21B0F68B8(v775);
                    break;
                }

                break;
            }

LABEL_461:
            sub_21AFC54B0(v771);
LABEL_462:
            v560 = v759;
LABEL_463:
            v66 = __OFADD__(v306, v285);
            v285 = (v285 + v306);
            if (!v66)
            {
              goto LABEL_485;
            }

            goto LABEL_786;
          default:
            switch(v771[24])
            {
              case 1:
                v2 = (2 * *v771) ^ (*v771 >> 31);
                v284._rawValue = MEMORY[0x277D84F90];
                v775[0] = MEMORY[0x277D84F90];
                LOBYTE(v569) = ((2 * v771[0]) ^ (*v771 >> 31)) & 0x7F;
                if (v2 >= 0x80)
                {
                  OUTLINED_FUNCTION_8_22();
                  v285 = v775;
                  sub_21B105FC8(v589);
                  v590 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v590);
                  v591 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v591);
                  v284._rawValue = v775[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v284._rawValue = v595;
                    }

                    OUTLINED_FUNCTION_89_1();
                    if (v51)
                    {
                      OUTLINED_FUNCTION_0_31(v592);
                      sub_21B1059A8();
                      v284._rawValue = v596;
                    }

                    v593 = v569 | 0x80;
                    v569 = (v2 >> 7) & 0x7F;
                    v594 = v2 >> 14;
                    v2 = v2 >> 7;
                    *(v284._rawValue + 2) = v775;
                    *(v284._rawValue + v3 + 32) = v593;
                  }

                  while (v594);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v284._rawValue = v655;
                }

                OUTLINED_FUNCTION_42_5();
                if (v51)
                {
                  OUTLINED_FUNCTION_0_31(v573);
                  sub_21B1059A8();
                  v284._rawValue = v656;
                }

                goto LABEL_483;
              case 2:
                v2 = (2 * *v771) ^ (*v771 >> 63);
                v284._rawValue = MEMORY[0x277D84F90];
                v775[0] = MEMORY[0x277D84F90];
                LOBYTE(v569) = v2 & 0x7F;
                if (v2 >= 0x80)
                {
                  OUTLINED_FUNCTION_8_22();
                  v285 = v775;
                  sub_21B105FC8(v582);
                  v583 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v583);
                  v584 = OUTLINED_FUNCTION_51_1();
                  sub_21B105FC8(v584);
                  v284._rawValue = v775[0];
                  do
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_3_27();
                      sub_21B1059A8();
                      v284._rawValue = v587;
                    }

                    OUTLINED_FUNCTION_89_1();
                    if (v51)
                    {
                      OUTLINED_FUNCTION_0_31(v585);
                      sub_21B1059A8();
                      v284._rawValue = v588;
                    }

                    OUTLINED_FUNCTION_11_12();
                  }

                  while (v586);
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_27();
                  sub_21B1059A8();
                  v284._rawValue = v653;
                }

                OUTLINED_FUNCTION_42_5();
                if (v51)
                {
                  OUTLINED_FUNCTION_0_31(v570);
                  sub_21B1059A8();
                  v284._rawValue = v654;
                }

LABEL_483:
                v574 = OUTLINED_FUNCTION_23_7();
                *(v574 + v2) = v569;
                OUTLINED_FUNCTION_86_2(v574);
                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                OUTLINED_FUNCTION_30_6();

                goto LABEL_484;
              case 3:
                LODWORD(v775[0]) = *v771;
                v293 = OUTLINED_FUNCTION_70_2();
                v295 = (v571 + 4);
                goto LABEL_474;
              case 4:
                v775[0] = *v771;
                v293 = OUTLINED_FUNCTION_70_2();
                v295 = (v568 + 8);
                goto LABEL_474;
              case 5:
                if ((*&v771[8] & 0x1000000000000000) != 0)
                {
                  sub_21B112514();
                }

                OUTLINED_FUNCTION_44_4();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                sub_21B103CA8(v285);
                OUTLINED_FUNCTION_22_7();
                if (v575)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v576 = *(v284._rawValue + 2);
                }

                else
                {
                  v576 = 0;
                }

                v3 = v751;
                sub_21B112434();
                v597 = sub_21B112414();
                v284._rawValue = v598;
                OUTLINED_FUNCTION_129_0();
                v599(v3, v752);
                if (v284._rawValue >> 60 == 15)
                {
                  v2 = 0;
                }

                else
                {
                  v2 = v597;
                }

                if (v284._rawValue >> 60 == 15)
                {
                  v284._rawValue = 0xC000000000000000;
                }

                OUTLINED_FUNCTION_48_1();
                sub_21B110E94();
                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                switch(v284._rawValue >> 62)
                {
                  case 1uLL:
                    v619 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v619, v620);
                    LODWORD(v602) = HIDWORD(v2) - v2;
                    if (__OFSUB__(HIDWORD(v2), v2))
                    {
                      goto LABEL_827;
                    }

                    v602 = v602;
LABEL_543:
                    v304 = v758;
                    v285 = (v576 + v602);
                    if (!__OFADD__(v576, v602))
                    {
                      goto LABEL_453;
                    }

                    goto LABEL_814;
                  case 2uLL:
                    v3 = *(v2 + 16);
                    v614 = *(v2 + 24);
                    v615 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v615, v616);
                    v602 = v614 - v3;
                    if (!__OFSUB__(v614, v3))
                    {
                      goto LABEL_543;
                    }

                    goto LABEL_828;
                  case 3uLL:
                    v617 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v617, v618);
                    v602 = 0;
                    goto LABEL_543;
                  default:
                    v600 = OUTLINED_FUNCTION_48_1();
                    sub_21AF99728(v600, v601);
                    v602 = BYTE6(v284._rawValue);
                    goto LABEL_543;
                }

              case 6:
                v577 = (*&v771[8] >> 60) & 3;
                if (v577)
                {
                  v284._rawValue = (*&v771[8] >> 62);
                  v578 = HIDWORD(*v771);
                  v579 = v771[14];
                  if (v577 != 1)
                  {
                    v4 = *&v771[8];
                    v605 = 0;
                    switch(v284._rawValue)
                    {
                      case 1uLL:
                        if (__OFSUB__(*&v771[4], *v771))
                        {
                          goto LABEL_840;
                        }

                        v605 = *&v771[4] - *v771;
LABEL_584:
                        OUTLINED_FUNCTION_57_1();
                        OUTLINED_FUNCTION_57_1();
                        OUTLINED_FUNCTION_57_1();
LABEL_585:
                        sub_21B103CA8((2 * v605) ^ (v605 >> 63));
                        OUTLINED_FUNCTION_20_9();
                        if (v643)
                        {
                          OUTLINED_FUNCTION_19_8();
                          sub_21B110E14();
                          v644 = *(v3 + 16);
                        }

                        else
                        {
                          v644 = 0;
                        }

                        sub_21B110E94();
                        sub_21AFC54B0(v771);
                        sub_21AFC54B0(v771);
                        switch(LODWORD(v284._rawValue))
                        {
                          case 0:
                            sub_21AFC54B0(v771);
                            goto LABEL_596;
                          case 1:
                            sub_21AFC54B0(v771);
                            if (__OFSUB__(v578, v2))
                            {
                              goto LABEL_843;
                            }

                            v579 = v578 - v2;
LABEL_596:
                            v304 = v758;
                            v560 = v759;
                            v285 = (v644 + v579);
                            if (!__OFADD__(v644, v579))
                            {
                              goto LABEL_485;
                            }

                            goto LABEL_823;
                          case 2:
                            v646 = *(v2 + 16);
                            v645 = *(v2 + 24);
                            sub_21AFC54B0(v771);
                            v66 = __OFSUB__(v645, v646);
                            v579 = v645 - v646;
                            if (!v66)
                            {
                              goto LABEL_596;
                            }

                            goto LABEL_842;
                          case 3:
                            sub_21AFC54B0(v771);
                            v579 = 0;
                            goto LABEL_596;
                          default:
                            goto LABEL_854;
                        }

                      case 2uLL:
                        v642 = *(*v771 + 16);
                        v641 = *(*v771 + 24);
                        v605 = v641 - v642;
                        if (!__OFSUB__(v641, v642))
                        {
                          goto LABEL_584;
                        }

                        goto LABEL_839;
                      case 3uLL:
                        goto LABEL_585;
                      default:
                        v605 = v771[14];
                        goto LABEL_585;
                    }
                  }

                  v580 = 0;
                  switch(v284._rawValue)
                  {
                    case 1uLL:
                      if (__OFSUB__(*&v771[4], *v771))
                      {
                        goto LABEL_838;
                      }

                      v636 = *&v771[16];
                      v3 = *&v771[8];
                      v580 = *&v771[4] - *v771;
                      break;
                    case 2uLL:
                      v636 = *&v771[16];
                      v638 = *(*v771 + 16);
                      v637 = *(*v771 + 24);
                      v580 = v637 - v638;
                      if (__OFSUB__(v637, v638))
                      {
                        goto LABEL_841;
                      }

                      v3 = *&v771[8];
                      break;
                    case 3uLL:
                      goto LABEL_575;
                    default:
                      v580 = v771[14];
                      goto LABEL_575;
                  }

                  OUTLINED_FUNCTION_57_1();
                  OUTLINED_FUNCTION_57_1();
                  OUTLINED_FUNCTION_57_1();
                  v291 = v3;
                  v292 = v636;
LABEL_575:
                  if (!__OFSUB__(v580, v292))
                  {
                    v4 = v291;
                    OUTLINED_FUNCTION_105_1(v580 - v292);
                    OUTLINED_FUNCTION_20_9();
                    if (v639)
                    {
                      OUTLINED_FUNCTION_19_8();
                      sub_21B110E14();
                      v640 = *(v3 + 16);
                    }

                    else
                    {
                      v640 = 0;
                    }

                    sub_21B110E94();
                    sub_21AFC54B0(v771);
                    sub_21AFC54B0(v771);
                    switch(LODWORD(v284._rawValue))
                    {
                      case 1:
                        sub_21AFC54B0(v771);
                        if (__OFSUB__(v578, v2))
                        {
                          goto LABEL_845;
                        }

                        v579 = v578 - v2;
LABEL_605:
                        v304 = v758;
                        v560 = v759;
                        v285 = (v640 + v579);
                        if (!__OFADD__(v640, v579))
                        {
                          goto LABEL_485;
                        }

                        goto LABEL_824;
                      case 2:
                        v648 = *(v2 + 16);
                        v647 = *(v2 + 24);
                        sub_21AFC54B0(v771);
                        v66 = __OFSUB__(v647, v648);
                        v579 = v647 - v648;
                        if (!v66)
                        {
                          goto LABEL_605;
                        }

                        goto LABEL_844;
                      case 3:
                        sub_21AFC54B0(v771);
                        v579 = 0;
                        goto LABEL_605;
                      default:
                        sub_21AFC54B0(v771);
                        goto LABEL_605;
                    }
                  }

                  goto LABEL_822;
                }

                v603 = *(*v771 + 16);
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                OUTLINED_FUNCTION_57_1();
                sub_21B103CA8(2 * v603);
                OUTLINED_FUNCTION_22_7();
                if (v604)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v3 = *(v284._rawValue + 2);
                }

                else
                {
                  v3 = 0;
                }

                if (*(v2 + 16))
                {
                  OUTLINED_FUNCTION_26_6();
                  sub_21B110E14();
                }

                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                v285 = (v3 + v603);
                if (__OFADD__(v3, v603))
                {
                  goto LABEL_821;
                }

LABEL_484:
                v304 = v758;
                v560 = v759;
                break;
              case 7:
                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                v285 = 0;
                goto LABEL_484;
              default:
                LOBYTE(v775[0]) = v771[0] & 1;
                v293 = OUTLINED_FUNCTION_70_2();
                v295 = (v294 + 1);
LABEL_474:
                sub_21B1061F0(v293, v295);
                OUTLINED_FUNCTION_22_7();
                if (v572)
                {
                  OUTLINED_FUNCTION_16_12();
                  v285 = v5;
                  sub_21B110E14();
                }

                sub_21AFC54B0(v771);
                sub_21AFC54B0(v771);
                OUTLINED_FUNCTION_30_6();

                goto LABEL_484;
            }

            goto LABEL_485;
        }

        goto LABEL_776;
      }

    case 2:
      v740 = *&v776[16];
      v741 = *&v776[8];
      v28 = *(*&v776[24] + 16);
      if (!v28)
      {
LABEL_608:
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_65_1();
        OUTLINED_FUNCTION_4_32();
        sub_21B1059A8();
        OUTLINED_FUNCTION_3_29();
        if (v51)
        {
          OUTLINED_FUNCTION_0_31(v657);
          sub_21B1059A8();
        }

        OUTLINED_FUNCTION_6_26();
        v13 = v5;
        sub_21B110E14();

LABEL_655:
        sub_21AFC54B0(v776);
        OUTLINED_FUNCTION_30_6();

        goto LABEL_656;
      }

      v29 = *&v776[24];
      v30 = 2 * v28;
      OUTLINED_FUNCTION_65_1();
      OUTLINED_FUNCTION_65_1();
      v31._rawValue = sub_21B103CA8(v30);
      v32 = OUTLINED_FUNCTION_85_2(v31);

      v33 = v15 + 64;
      OUTLINED_FUNCTION_1_20();
      v36 = v35 & v34;
      v38 = ((v37 + 63) >> 6);

      v39 = v36;
      v40 = v38;
      v41 = 0;
      v750 = v38;
      v748 = v29 + 64;
      if (!v36)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      v813.schema.type._countAndFlagsBits = *v776;
      v813.schema.type._object = *&v776[8];
      v813.schema.name = *&v776[16];
      v281 = *(v13 + 3);
      v813.schema.namespace = *(v13 + 2);
      *&v813.schema.fields._rawValue = v281;
      OUTLINED_FUNCTION_65_1();
      v13 = ByteBuffer.writeAvroRecord(_:)(&v813);
      sub_21AFC54B0(v776);
      goto LABEL_656;
    case 4:
      OUTLINED_FUNCTION_108_1();
      OUTLINED_FUNCTION_59_1();
      v3 = v21 ^ (v20 >> 63);
      v22 = MEMORY[0x277D84F90];
      v773[0] = MEMORY[0x277D84F90];
      v2 = v3 & 0x7F;
      if (v3 >= 0x80)
      {
        sub_21B0F6800(v776, v774);
        sub_21B0F6800(v776, v774);
        OUTLINED_FUNCTION_82_1();
        OUTLINED_FUNCTION_1_29();
        v13 = v773;
        sub_21B105FC8(v662);
        OUTLINED_FUNCTION_148_0();
        OUTLINED_FUNCTION_148_0();
        v22 = v773[0];
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_27();
            sub_21B1059A8();
            v22 = v665;
          }

          OUTLINED_FUNCTION_25_6();
          if (v51)
          {
            OUTLINED_FUNCTION_0_31(v663);
            sub_21B1059A8();
            v22 = v666;
          }

          OUTLINED_FUNCTION_62_1();
        }

        while (v664);
      }

      else
      {
        sub_21B0F6800(v776, v774);
        sub_21B0F6800(v776, v774);
        OUTLINED_FUNCTION_82_1();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_27();
        sub_21B1059A8();
        v22 = v736;
      }

      v23 = *(v22 + 16);
      OUTLINED_FUNCTION_25_6();
      if (v51)
      {
        OUTLINED_FUNCTION_0_31(v24);
        sub_21B1059A8();
        v22 = v737;
      }

      v25 = OUTLINED_FUNCTION_23_7();
      v23[v25] = v2;
      OUTLINED_FUNCTION_86_2(v25);
      v26 = *(v22 + 16);

      OUTLINED_FUNCTION_96_2();
      switch(v27)
      {
        case 1:
          v681 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v681, v774);
          OUTLINED_FUNCTION_41_5();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_634;
        case 2:
          v677 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v677, v774);
          OUTLINED_FUNCTION_41_5();
          ByteBuffer.writeAvroMap(_:)();
LABEL_634:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v776);

          goto LABEL_635;
        case 3:
          v814.schema.type._countAndFlagsBits = v13;
          v814.schema.type._object = (v3 & 0x7F);
          v814.schema.name._countAndFlagsBits = v22;
          v814.schema.name._object = v3;
          v678 = OUTLINED_FUNCTION_10_17();
          v680 = OUTLINED_FUNCTION_38_6(&v814, v678, v679);
          sub_21B0F6800(v680, v774);
          v13 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v814);
          goto LABEL_632;
        case 4:
          OUTLINED_FUNCTION_50_4();
          OUTLINED_FUNCTION_12_15();
          v670 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v670, v773);
          OUTLINED_FUNCTION_104_1();
          sub_21B103CA8(v13);
          OUTLINED_FUNCTION_29_7();
          if (v671)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
          }

          v672 = sub_21B0FAC54(v3 & 0x7F);

          v673 = *&v774[8];
          v3 = *&v774[16];
          v2 = *&v774[24];
          v4 = *&v774[32];
          switch(v774[72])
          {
            case 1:
              OUTLINED_FUNCTION_31_8();
              OUTLINED_FUNCTION_79_2();
              ByteBuffer.writeAvroArray(_:)();
              goto LABEL_693;
            case 2:
              OUTLINED_FUNCTION_31_8();
              OUTLINED_FUNCTION_79_2();
              ByteBuffer.writeAvroMap(_:)();
LABEL_693:
              v713 = OUTLINED_FUNCTION_21_7();
              sub_21B0F68B8(v713);
              sub_21B0F68B8(v775);
              sub_21AFC54B0(v776);

              goto LABEL_694;
            case 3:
              v815.schema.type._countAndFlagsBits = *&v774[8];
              v815.schema.type._object = *&v774[16];
              v815.schema.name = *&v774[24];
              v23 = v774;
              v709 = OUTLINED_FUNCTION_36_6();
              v711 = OUTLINED_FUNCTION_38_6(&v815, v709, v710);
              sub_21B0F6800(v711, v773);
              v673 = v5;
              ByteBuffer.writeAvroRecord(_:)(&v815);
              goto LABEL_691;
            case 4:
              OUTLINED_FUNCTION_67_2(v773);
              OUTLINED_FUNCTION_27_8();
              v3 = v774;
              sub_21B0F6800(&v774[8], v772);
              OUTLINED_FUNCTION_151_0();
              v707._rawValue = sub_21B103CA8(v673);
              OUTLINED_FUNCTION_85_2(v707);
              OUTLINED_FUNCTION_152_0();
              OUTLINED_FUNCTION_78_2(v816);
              ByteBuffer.writeAvroValue(_:)(v816);
              OUTLINED_FUNCTION_150_0();
              sub_21B0F68B8(v774);
              sub_21B0F68B8(v775);
              sub_21AFC54B0(v776);
              sub_21AFC54B0(&v774[8]);
              v708 = OUTLINED_FUNCTION_14_13();
              sub_21AFC54B0(v708);
              sub_21AFC54B0(v776);
              v66 = __OFADD__(v2, v673);
              v673 += v2;
              if (!v66)
              {
                goto LABEL_695;
              }

              goto LABEL_835;
            default:
              OUTLINED_FUNCTION_80_1();
              v674 = OUTLINED_FUNCTION_90_1();
              v673 = v5;
              ByteBuffer.writeAvroPrimitive(_:)(v674, v675, v676, v4);
LABEL_691:
              v712 = OUTLINED_FUNCTION_21_7();
              sub_21B0F68B8(v712);
              sub_21B0F68B8(v775);
              sub_21AFC54B0(v776);
              sub_21AFC54B0((v23 + 8));
LABEL_694:
              v714 = OUTLINED_FUNCTION_14_13();
              sub_21AFC54B0(v714);
              sub_21AFC54B0(v776);
LABEL_695:
              v66 = __OFADD__(v672, v673);
              v13 = (v672 + v673);
              if (!v66)
              {
                goto LABEL_636;
              }

              goto LABEL_815;
          }

        default:
          OUTLINED_FUNCTION_43_5();
          OUTLINED_FUNCTION_18_8();
LABEL_632:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v776);
          sub_21AFC54B0((v23 + 8));
LABEL_635:
          sub_21AFC54B0(v776);
LABEL_636:
          v66 = __OFADD__(v26, v13);
          v13 = (v13 + v26);
          v12 = v754;
          if (!v66)
          {
            goto LABEL_657;
          }

          goto LABEL_793;
      }

    default:
      switch(v776[24])
      {
        case 1:
          sub_21B103B80((2 * *v776) ^ (*v776 >> 31));
          OUTLINED_FUNCTION_22_7();
          if (!v686)
          {
            goto LABEL_654;
          }

          OUTLINED_FUNCTION_16_12();
LABEL_653:
          v13 = v5;
          sub_21B110E14();
LABEL_654:
          sub_21AFC54B0(v776);
          goto LABEL_655;
        case 2:
          v2 = (2 * *v776) ^ (*v776 >> 63);
          v775[0] = MEMORY[0x277D84F90];
          if (v2 >= 0x80)
          {
            OUTLINED_FUNCTION_8_22();
            sub_21B105FC8(v699);
            v700 = OUTLINED_FUNCTION_51_1();
            sub_21B105FC8(v700);
            v701 = OUTLINED_FUNCTION_51_1();
            sub_21B105FC8(v701);
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_3_27();
                sub_21B1059A8();
              }

              OUTLINED_FUNCTION_89_1();
              if (v51)
              {
                OUTLINED_FUNCTION_0_31(v702);
                sub_21B1059A8();
              }

              OUTLINED_FUNCTION_11_12();
            }

            while (v703);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_27();
            sub_21B1059A8();
          }

          OUTLINED_FUNCTION_42_5();
          if (v51)
          {
            OUTLINED_FUNCTION_0_31(v683);
            sub_21B1059A8();
          }

          *(OUTLINED_FUNCTION_23_7() + v2) = v2 & 0x7F;
          goto LABEL_653;
        case 3:
          LODWORD(v775[0]) = *v776;
          v17 = OUTLINED_FUNCTION_70_2();
          v19 = (v684 + 4);
          goto LABEL_647;
        case 4:
          v775[0] = *v776;
          v17 = OUTLINED_FUNCTION_70_2();
          v19 = (v682 + 8);
          goto LABEL_647;
        case 5:
          v4 = *&v776[8];
          if ((*&v776[8] & 0x1000000000000000) != 0)
          {
            sub_21B112514();
          }

          OUTLINED_FUNCTION_44_4();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          sub_21B103CA8(v13);
          OUTLINED_FUNCTION_20_9();
          if (v687)
          {
            OUTLINED_FUNCTION_19_8();
            sub_21B110E14();
          }

          v2 = sub_21B0FAC54(v3);

          v688 = v751;
          sub_21B112434();
          v689 = sub_21B112414();
          v691 = v690;
          OUTLINED_FUNCTION_129_0();
          v692(v688, v752);
          if (v691 >> 60 == 15)
          {
            v3 = 0;
          }

          else
          {
            v3 = v689;
          }

          if (v691 >> 60 == 15)
          {
            v691 = 0xC000000000000000;
          }

          OUTLINED_FUNCTION_541();
          sub_21B110E94();
          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          switch(v691 >> 62)
          {
            case 1uLL:
              v721 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v721, v722);
              LODWORD(v695) = HIDWORD(v3) - v3;
              if (__OFSUB__(HIDWORD(v3), v3))
              {
                goto LABEL_836;
              }

              v695 = v695;
LABEL_704:
              v12 = v754;
              v13 = (v2 + v695);
              if (!__OFADD__(v2, v695))
              {
                goto LABEL_657;
              }

              goto LABEL_819;
            case 2uLL:
              v716 = *(v3 + 16);
              v715 = *(v3 + 24);
              v717 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v717, v718);
              v695 = v715 - v716;
              if (!__OFSUB__(v715, v716))
              {
                goto LABEL_704;
              }

              goto LABEL_837;
            case 3uLL:
              v719 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v719, v720);
              v695 = 0;
              goto LABEL_704;
            default:
              v693 = OUTLINED_FUNCTION_541();
              sub_21AF99728(v693, v694);
              v695 = BYTE6(v691);
              goto LABEL_704;
          }

        case 6:
          v696 = (*&v776[8] >> 60) & 3;
          if (v696)
          {
            v2 = *&v776[8] >> 62;
            v4 = HIDWORD(*v776);
            v697 = v776[14];
            if (v696 != 1)
            {
              v706 = 0;
              switch(v2)
              {
                case 1uLL:
                  if (__OFSUB__(*&v776[4], *v776))
                  {
                    goto LABEL_847;
                  }

                  v706 = *&v776[4] - *v776;
LABEL_727:
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_65_1();
                  OUTLINED_FUNCTION_65_1();
LABEL_728:
                  sub_21B103CA8((2 * v706) ^ (v706 >> 63));
                  OUTLINED_FUNCTION_20_9();
                  if (v730)
                  {
                    OUTLINED_FUNCTION_19_8();
                    sub_21B110E14();
                    v731 = *(v3 + 16);
                  }

                  else
                  {
                    v731 = 0;
                  }

                  sub_21B110E94();
                  sub_21AFC54B0(v776);
                  sub_21AFC54B0(v776);
                  switch(v2)
                  {
                    case 0:
                      sub_21AFC54B0(v776);
                      goto LABEL_739;
                    case 1:
                      sub_21AFC54B0(v776);
                      if (__OFSUB__(v4, v14))
                      {
                        goto LABEL_851;
                      }

                      v697 = v4 - v14;
LABEL_739:
                      v12 = v754;
                      v13 = (v731 + v697);
                      if (!__OFADD__(v731, v697))
                      {
                        goto LABEL_657;
                      }

                      goto LABEL_832;
                    case 2:
                      v733 = *(v14 + 16);
                      v732 = *(v14 + 24);
                      sub_21AFC54B0(v776);
                      v66 = __OFSUB__(v732, v733);
                      v697 = v732 - v733;
                      if (!v66)
                      {
                        goto LABEL_739;
                      }

                      goto LABEL_850;
                    case 3:
                      sub_21AFC54B0(v776);
                      v697 = 0;
                      goto LABEL_739;
                    default:
LABEL_854:
                      JUMPOUT(0);
                  }

                case 2uLL:
                  v729 = *(*v776 + 16);
                  v728 = *(*v776 + 24);
                  v706 = v728 - v729;
                  if (!__OFSUB__(v728, v729))
                  {
                    goto LABEL_727;
                  }

                  goto LABEL_849;
                case 3uLL:
                  goto LABEL_728;
                default:
                  v706 = v776[14];
                  goto LABEL_728;
              }
            }

            v698 = 0;
            switch(v2)
            {
              case 1uLL:
                if (__OFSUB__(*&v776[4], *v776))
                {
                  goto LABEL_846;
                }

                v723 = *&v776[16];
                v3 = *&v776[8];
                v698 = *&v776[4] - *v776;
                break;
              case 2uLL:
                v723 = *&v776[16];
                v725 = *(*v776 + 16);
                v724 = *(*v776 + 24);
                v698 = v724 - v725;
                if (__OFSUB__(v724, v725))
                {
                  goto LABEL_848;
                }

                v3 = *&v776[8];
                break;
              case 3uLL:
                goto LABEL_718;
              default:
                v698 = v776[14];
                goto LABEL_718;
            }

            OUTLINED_FUNCTION_65_1();
            OUTLINED_FUNCTION_65_1();
            OUTLINED_FUNCTION_65_1();
            v16 = v723;
LABEL_718:
            if (!__OFSUB__(v698, v16))
            {
              OUTLINED_FUNCTION_105_1(v698 - v16);
              OUTLINED_FUNCTION_20_9();
              if (v726)
              {
                OUTLINED_FUNCTION_19_8();
                sub_21B110E14();
                v727 = *(v3 + 16);
              }

              else
              {
                v727 = 0;
              }

              sub_21B110E94();
              sub_21AFC54B0(v776);
              sub_21AFC54B0(v776);
              switch(v2)
              {
                case 1:
                  sub_21AFC54B0(v776);
                  if (__OFSUB__(v4, v14))
                  {
                    goto LABEL_853;
                  }

                  v697 = v4 - v14;
LABEL_748:
                  v12 = v754;
                  v13 = (v727 + v697);
                  if (!__OFADD__(v727, v697))
                  {
                    goto LABEL_657;
                  }

                  goto LABEL_833;
                case 2:
                  v735 = *(v14 + 16);
                  v734 = *(v14 + 24);
                  sub_21AFC54B0(v776);
                  v66 = __OFSUB__(v734, v735);
                  v697 = v734 - v735;
                  if (!v66)
                  {
                    goto LABEL_748;
                  }

                  goto LABEL_852;
                case 3:
                  sub_21AFC54B0(v776);
                  v697 = 0;
                  goto LABEL_748;
                default:
                  sub_21AFC54B0(v776);
                  goto LABEL_748;
              }
            }

            goto LABEL_831;
          }

          v704 = *(*v776 + 16);
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          OUTLINED_FUNCTION_65_1();
          sub_21B103CA8(2 * v704);
          OUTLINED_FUNCTION_29_7();
          if (v705)
          {
            OUTLINED_FUNCTION_26_6();
            sub_21B110E14();
            v3 = *(v2 + 16);
          }

          else
          {
            v3 = 0;
          }

          if (*(v14 + 16))
          {
            OUTLINED_FUNCTION_16_12();
            sub_21B110E14();
          }

          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          v13 = (v3 + v704);
          if (__OFADD__(v3, v704))
          {
            goto LABEL_830;
          }

          break;
        case 7:
          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          v13 = 0;
          goto LABEL_656;
        default:
          LOBYTE(v775[0]) = v776[0] & 1;
          v17 = OUTLINED_FUNCTION_70_2();
          v19 = (v18 + 1);
LABEL_647:
          sub_21B1061F0(v17, v19);
          OUTLINED_FUNCTION_22_7();
          if (v685)
          {
            OUTLINED_FUNCTION_16_12();
            v13 = v5;
            sub_21B110E14();
          }

          sub_21AFC54B0(v776);
          sub_21AFC54B0(v776);
          OUTLINED_FUNCTION_30_6();

          goto LABEL_656;
      }

      goto LABEL_656;
  }

LABEL_17:
  v42 = v41;
LABEL_21:
  v43 = v39;
  v761 = v42;
  v44 = *(*(v759 + 48) + 16 * (__clz(__rbit64(v39)) | (v42 << 6)) + 8);
  OUTLINED_FUNCTION_60_1();
  memcpy(v771, v45, sizeof(v771));
  if ((v44 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_30_2();
    sub_21B112514();
  }

  OUTLINED_FUNCTION_44_4();

  OUTLINED_FUNCTION_57_1();
  sub_21B103CA8(v33);
  OUTLINED_FUNCTION_22_7();
  if (v46)
  {
    OUTLINED_FUNCTION_16_12();
    sub_21B110E14();
    v4 = *(v29 + 16);
  }

  else
  {
    v4 = 0;
  }

  v762 = (v43 - 1) & v43;

  v47 = v751;
  sub_21B112434();
  OUTLINED_FUNCTION_95_2();
  v48 = sub_21B112414();
  v50 = v49;
  v765 = *v749;
  (v765)(v47, v752);
  OUTLINED_FUNCTION_137_0();
  if (!v52 & v51)
  {
    v53 = 0;
  }

  else
  {
    v53 = v48;
  }

  if (!v52 & v51)
  {
    v54 = 0xC000000000000000;
  }

  else
  {
    v54 = v50;
  }

  OUTLINED_FUNCTION_541();
  sub_21B110E94();

  switch(v54 >> 62)
  {
    case 1uLL:
      v64 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v64, v65);
      LODWORD(v57) = HIDWORD(v53) - v53;
      if (__OFSUB__(HIDWORD(v53), v53))
      {
        goto LABEL_801;
      }

      v57 = v57;
LABEL_40:
      v66 = __OFADD__(v4, v57);
      v67 = v4 + v57;
      if (v66)
      {
        goto LABEL_779;
      }

      break;
    case 2uLL:
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      v60 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v60, v61);
      v57 = v58 - v59;
      if (!__OFSUB__(v58, v59))
      {
        goto LABEL_40;
      }

      goto LABEL_800;
    case 3uLL:
      v62 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v62, v63);
      v57 = 0;
      goto LABEL_40;
    default:
      v55 = OUTLINED_FUNCTION_541();
      sub_21AF99728(v55, v56);
      v57 = BYTE6(v54);
      goto LABEL_40;
  }

  v68 = *v771;
  v29 = *&v771[8];
  v3 = *&v771[24];
  v38 = *&v771[16];
  v760 = v67;
  switch(v771[64])
  {
    case 1:
      v745 = *&v771[8];
      v746 = *&v771[16];
      if (!*(*&v771[24] + 16))
      {
        goto LABEL_197;
      }

      sub_21B0FAC54(*&v771[24]);
      OUTLINED_FUNCTION_44_4();
      OUTLINED_FUNCTION_57_1();
      v157._rawValue = sub_21B103CA8(v68);
      OUTLINED_FUNCTION_85_2(v157);
      OUTLINED_FUNCTION_152_0();
      v158 = *(v3 + 16);
      if (!v158)
      {
        goto LABEL_201;
      }

      v38 = 0;
      v763 = *(v3 + 16);
      v764 = (v3 + 32);
      v159 = v158;
      v747 = v32;
      v755 = v3;
      while (2)
      {
        if (v38 >= v159)
        {
          goto LABEL_768;
        }

        OUTLINED_FUNCTION_143_0(72);
        v765 = v38 + 1;
        v29 = v767;
        v5 = v769._object;
        switch(v770)
        {
          case 1:
            v756 = v768;
            v757 = v769._countAndFlagsBits;
            v195 = *(v769._object + 2);
            if (!v195)
            {
              goto LABEL_128;
            }

            v196 = 2 * v195;
            v197 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v197, v198);
            v199 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v199, v200);
            sub_21B103CA8(v196);
            OUTLINED_FUNCTION_22_7();
            v758 = v44;
            if (v201)
            {
              OUTLINED_FUNCTION_16_12();
              sub_21B110E14();
              v202 = *(v29 + 16);
            }

            else
            {
              v202 = 0;
            }

            v231 = *(v5 + 16);
            if (v231)
            {
              v232 = v5 + 64;
              while (2)
              {
                OUTLINED_FUNCTION_106_1();
                v233 = *v774;
                v29 = *&v774[8];
                v234 = *&v774[16];
                v4 = *&v774[24];
                switch(v774[64])
                {
                  case 1:
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_100_1();
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_164;
                  case 2:
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_56_1();
                    OUTLINED_FUNCTION_100_1();
                    ByteBuffer.writeAvroMap(_:)();
LABEL_164:
                    v239 = OUTLINED_FUNCTION_21_7();
                    sub_21AFC54B0(v239);

                    goto LABEL_165;
                  case 3:
                    v795.schema.type._countAndFlagsBits = *v774;
                    v795.schema.type._object = *&v774[8];
                    v795.schema.name = *&v774[16];
                    v238 = *(v232 + 16);
                    v795.schema.namespace = *v232;
                    *&v795.schema.fields._rawValue = v238;
                    OUTLINED_FUNCTION_56_1();
                    v237 = ByteBuffer.writeAvroRecord(_:)(&v795);
                    goto LABEL_161;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v796);
                    OUTLINED_FUNCTION_56_1();
                    sub_21B0F685C(v796, v775);
                    v233 = ByteBuffer.writeAvroUnion(_:)(v796);
                    sub_21B0F68B8(v796);
                    goto LABEL_162;
                  default:
                    OUTLINED_FUNCTION_56_1();
                    v235 = OUTLINED_FUNCTION_35_2();
                    v237 = ByteBuffer.writeAvroPrimitive(_:)(v235, v236, v234, v4);
LABEL_161:
                    v233 = v237;
LABEL_162:
                    sub_21AFC54B0(v774);
LABEL_165:
                    v66 = __OFADD__(v202, v233);
                    v202 += v233;
                    if (v66)
                    {
                      goto LABEL_760;
                    }

                    v232 += 72;
                    if (!--v231)
                    {
                      break;
                    }

                    continue;
                }

                break;
              }
            }

            OUTLINED_FUNCTION_4_32();
            sub_21B1059A8();
            OUTLINED_FUNCTION_134();
            if (v51)
            {
              OUTLINED_FUNCTION_0_31(v240);
              sub_21B1059A8();
              v29 = v267;
            }

            v3 = v755;
            *(OUTLINED_FUNCTION_23_7() + v231) = 0;
            v241 = v766;
            sub_21B110E14();

            sub_21AFC54B0(&v767);
            OUTLINED_FUNCTION_30_6();

            v66 = __OFADD__(v202, v241);
            v68 = v202 + v241;
            if (!v66)
            {
              goto LABEL_170;
            }

            goto LABEL_798;
          case 2:
            v756 = v768;
            v757 = v769._countAndFlagsBits;
            v183 = *(v769._object + 2);
            if (!v183)
            {
LABEL_128:
              v203 = OUTLINED_FUNCTION_17_12();
              sub_21B0F6800(v203, v204);
              v205 = OUTLINED_FUNCTION_17_12();
              sub_21B0F6800(v205, v206);
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              OUTLINED_FUNCTION_3_29();
              if (v51)
              {
                OUTLINED_FUNCTION_0_31(v207);
                sub_21B1059A8();
                v29 = v266;
              }

              OUTLINED_FUNCTION_6_26();
              v68 = v766;
              sub_21B110E14();
              v5 = v68;

              sub_21AFC54B0(&v767);
              OUTLINED_FUNCTION_30_6();

LABEL_131:
              v38 = v765;
              goto LABEL_180;
            }

            v758 = v44;
            v184 = 2 * v183;
            v185 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v185, v186);
            v187 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v187, v188);
            sub_21B103CA8(v184);
            OUTLINED_FUNCTION_22_7();
            if (v189)
            {
              OUTLINED_FUNCTION_16_12();
              sub_21B110E14();
              v190 = *(v29 + 16);
            }

            else
            {
              v190 = 0;
            }

            OUTLINED_FUNCTION_1_20();
            v218 = v217 & v216;
            v4 = (v219 + 63) >> 6;

            v220 = 0;
            break;
          case 3:
            v798 = v767;
            v799 = v768;
            v800 = v769;
            v191 = *(v68 + 48);
            v801 = *(v68 + 32);
            v802 = v191;
            v192 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v192, v193);
            OUTLINED_FUNCTION_125_0();
            v166 = ByteBuffer.writeAvroRecord(_:)(v194);
            goto LABEL_124;
          case 4:
            v758 = v44;
            v167 = v3;
            OUTLINED_FUNCTION_108_1();
            OUTLINED_FUNCTION_59_1();
            v170 = v169 ^ (v168 >> 63);
            v171 = v170 & 0x7F;
            v172 = OUTLINED_FUNCTION_72_1();
            if (v170 >= 0x80)
            {
              sub_21B0F6800(v172, v173);
              v208 = OUTLINED_FUNCTION_72_1();
              sub_21B0F6800(v208, v209);
              OUTLINED_FUNCTION_82_1();
              OUTLINED_FUNCTION_4_32();
              sub_21B1059A8();
              v176 = v210;
              v211 = *(v210 + 16);
              v5 = v766;
              do
              {
                v212 = *(v176 + 24);
                if (v211 >= v212 >> 1)
                {
                  OUTLINED_FUNCTION_0_31(v212);
                  sub_21B1059A8();
                  v176 = v215;
                }

                v213 = v171 | 0x80;
                v171 = (v170 >> 7) & 0x7F;
                v214 = v170 >> 14;
                v170 >>= 7;
                *(v176 + 16) = v211 + 1;
                *(v176 + v211++ + 32) = v213;
              }

              while (v214);
            }

            else
            {
              sub_21B0F6800(v172, v173);
              v174 = OUTLINED_FUNCTION_72_1();
              sub_21B0F6800(v174, v175);
              OUTLINED_FUNCTION_82_1();
              v176 = MEMORY[0x277D84F90];
              v5 = v766;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_27();
              sub_21B1059A8();
              v176 = v264;
            }

            v178 = *(v176 + 16);
            v177 = *(v176 + 24);
            if (v178 >= v177 >> 1)
            {
              OUTLINED_FUNCTION_0_31(v177);
              sub_21B1059A8();
              v176 = v265;
            }

            *(v176 + 16) = v178 + 1;
            *(v176 + 32 + v178) = v171;
            OUTLINED_FUNCTION_86_2(v176 + 32);
            v4 = *(v176 + 16);

            v179 = v775[1];
            v29 = v775[2];
            v180 = *&v775[3];
            switch(LOBYTE(v775[9]))
            {
              case 1:
                v249 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v249, v774);
                OUTLINED_FUNCTION_41_5();
                ByteBuffer.writeAvroArray(_:)();
                goto LABEL_177;
              case 2:
                v245 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v245, v774);
                OUTLINED_FUNCTION_41_5();
                ByteBuffer.writeAvroMap(_:)();
LABEL_177:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(&v767);

                goto LABEL_178;
              case 3:
                v803.schema.type._countAndFlagsBits = v775[1];
                v803.schema.type._object = v775[2];
                v803.schema.name = *&v775[3];
                v246 = OUTLINED_FUNCTION_10_17();
                v248 = OUTLINED_FUNCTION_38_6(&v803, v246, v247);
                sub_21B0F6800(v248, v774);
                v179 = v5;
                ByteBuffer.writeAvroRecord(_:)(&v803);
                goto LABEL_175;
              case 4:
                OUTLINED_FUNCTION_50_4();
                OUTLINED_FUNCTION_12_15();
                v242 = OUTLINED_FUNCTION_14_13();
                sub_21B0F6800(v242, v773);
                OUTLINED_FUNCTION_104_1();
                sub_21B103CA8(v179);
                OUTLINED_FUNCTION_22_7();
                if (v243)
                {
                  OUTLINED_FUNCTION_16_12();
                  sub_21B110E14();
                  v244 = *(v29 + 16);
                }

                else
                {
                  v244 = 0;
                }

                v250 = *&v774[8];
                v251 = *&v774[24];
                v29 = *&v774[32];
                switch(v774[72])
                {
                  case 1:
                    OUTLINED_FUNCTION_31_8();
                    v253 = v766;
                    ByteBuffer.writeAvroArray(_:)();
                    goto LABEL_193;
                  case 2:
                    OUTLINED_FUNCTION_31_8();
                    v253 = v766;
                    ByteBuffer.writeAvroMap(_:)();
LABEL_193:
                    v262 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v262);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(&v767);

                    goto LABEL_194;
                  case 3:
                    v804.schema.type._countAndFlagsBits = *&v774[8];
                    v804.schema.type._object = *&v774[16];
                    v804.schema.name = *&v774[24];
                    v171 = v774;
                    v258 = OUTLINED_FUNCTION_36_6();
                    v260 = OUTLINED_FUNCTION_38_6(&v804, v258, v259);
                    sub_21B0F6800(v260, v773);
                    v253 = v766;
                    ByteBuffer.writeAvroRecord(_:)(&v804);
                    goto LABEL_191;
                  case 4:
                    OUTLINED_FUNCTION_67_2(v773);
                    OUTLINED_FUNCTION_27_8();
                    OUTLINED_FUNCTION_110_1();
                    OUTLINED_FUNCTION_151_0();
                    v256._rawValue = sub_21B103CA8(v250);
                    OUTLINED_FUNCTION_93_2(v256);
                    OUTLINED_FUNCTION_84_2();
                    OUTLINED_FUNCTION_78_2(v805);
                    ByteBuffer.writeAvroValue(_:)(v805);
                    OUTLINED_FUNCTION_150_0();
                    sub_21B0F68B8(v774);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(&v767);
                    sub_21AFC54B0(v251 + 8);
                    v257 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v257);
                    sub_21AFC54B0(&v767);
                    v66 = __OFADD__(v29, v250);
                    v253 = v29 + v250;
                    if (!v66)
                    {
                      goto LABEL_195;
                    }

                    goto LABEL_829;
                  default:
                    OUTLINED_FUNCTION_80_1();
                    v252 = OUTLINED_FUNCTION_90_1();
                    v253 = v766;
                    ByteBuffer.writeAvroPrimitive(_:)(v252, v254, v255, v29);
LABEL_191:
                    v261 = OUTLINED_FUNCTION_21_7();
                    sub_21B0F68B8(v261);
                    sub_21B0F68B8(v775);
                    sub_21AFC54B0(&v767);
                    sub_21AFC54B0(v171 + 8);
LABEL_194:
                    v263 = OUTLINED_FUNCTION_14_13();
                    sub_21AFC54B0(v263);
                    sub_21AFC54B0(&v767);
LABEL_195:
                    v3 = v167;
                    v44 = v758;
                    v38 = v765;
                    v66 = __OFADD__(v244, v253);
                    v179 = v244 + v253;
                    if (v66)
                    {
                      goto LABEL_813;
                    }

                    v5 = v766;
                    break;
                }

                goto LABEL_179;
              default:
                OUTLINED_FUNCTION_43_5();
                v181 = OUTLINED_FUNCTION_35_2();
                v179 = v5;
                ByteBuffer.writeAvroPrimitive(_:)(v181, v182, v180, SBYTE8(v180));
LABEL_175:
                OUTLINED_FUNCTION_68_2();
                sub_21AFC54B0(&v767);
                sub_21AFC54B0(v171 + 8);
LABEL_178:
                sub_21AFC54B0(&v767);
                v3 = v167;
                v44 = v758;
                v38 = v765;
LABEL_179:
                v66 = __OFADD__(v4, v179);
                v68 = v4 + v179;
                if (!v66)
                {
                  goto LABEL_180;
                }

                goto LABEL_790;
            }

          default:
            v160 = OUTLINED_FUNCTION_17_12();
            sub_21B0F6800(v160, v161);
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_125_0();
            v166 = ByteBuffer.writeAvroPrimitive(_:)(v162, v163, v164, v165);
LABEL_124:
            v68 = v166;
            sub_21AFC54B0(&v767);
            goto LABEL_131;
        }

LABEL_139:
        if (v218)
        {
          goto LABEL_144;
        }

        while (1)
        {
          v221 = v220 + 1;
          if (__OFADD__(v220, 1))
          {
            goto LABEL_755;
          }

          if (v221 >= v4)
          {
            break;
          }

          v218 = *(v5 + 64 + 8 * v221);
          ++v220;
          if (v218)
          {
            v220 = v221;
LABEL_144:
            v222 = (*(v5 + 48) + 16 * (__clz(__rbit64(v218)) | (v220 << 6)));
            v223 = *v222;
            v224 = v222[1];
            OUTLINED_FUNCTION_60_1();
            memcpy(v797, v225, 0x41uLL);

            sub_21B0F6800(v797, v775);
            v226._countAndFlagsBits = v223;
            v226._object = v224;
            ByteBuffer.writeAvroString(_:)(v226);
            OUTLINED_FUNCTION_84_2();
            v227 = ByteBuffer.writeAvroValue(_:)(v797);
            sub_21AFC54B0(v797);
            v228 = v29 + v227;
            if (__OFADD__(v29, v227))
            {
              goto LABEL_777;
            }

            v218 &= v218 - 1;
            v66 = __OFADD__(v190, v228);
            v190 += v228;
            if (v66)
            {
              goto LABEL_778;
            }

            goto LABEL_139;
          }
        }

        OUTLINED_FUNCTION_4_32();
        sub_21B1059A8();
        OUTLINED_FUNCTION_3_29();
        if (v51)
        {
          OUTLINED_FUNCTION_0_31(v229);
          sub_21B1059A8();
          v29 = v268;
        }

        v32 = v747;
        v3 = v755;
        OUTLINED_FUNCTION_6_26();
        v230 = v766;
        sub_21B110E14();

        sub_21AFC54B0(&v767);
        OUTLINED_FUNCTION_30_6();

        v66 = __OFADD__(v190, v230);
        v68 = v190 + v230;
        if (v66)
        {
          goto LABEL_799;
        }

LABEL_170:
        v38 = v765;
        v5 = v766;
        v44 = v758;
LABEL_180:
        v66 = __OFADD__(v44, v68);
        v44 += v68;
        if (v66)
        {
          goto LABEL_769;
        }

        if (v38 != v763)
        {
          v159 = *(v3 + 16);
          continue;
        }

        break;
      }

LABEL_201:
      sub_21B103904(0);
      OUTLINED_FUNCTION_118_0();

      sub_21AFC54B0(v771);
      v156 = v44 + v5;
      if (__OFADD__(v44, v5))
      {
        goto LABEL_811;
      }

      goto LABEL_202;
    case 2:
      v745 = *&v771[8];
      v746 = *&v771[16];
      v79 = *(*&v771[24] + 16);
      if (!v79)
      {
LABEL_197:
        OUTLINED_FUNCTION_57_1();
        v775[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_1_29();
        sub_21B105FC8(v269);
        v29 = *(v775[0] + 16);
        v270 = OUTLINED_FUNCTION_51_1();
        sub_21B10606C(v270, v38);
        v38 = v775[0];
        *(v775[0] + 16) = v29 + 1;
        *(v38 + v29 + 32) = 0;
        v156 = v5;
        sub_21B110E14();

        sub_21AFC54B0(v771);
        sub_21B0FAC54(v38);
        OUTLINED_FUNCTION_19_0();

        goto LABEL_202;
      }

      v80 = 2 * v79;
      OUTLINED_FUNCTION_57_1();
      v81._rawValue = sub_21B103CA8(v80);
      v4 = OUTLINED_FUNCTION_85_2(v81);

      v82 = v3 + 64;
      OUTLINED_FUNCTION_1_20();
      v85 = v84 & v83;
      v87 = (v86 + 63) >> 6;

      v88 = 0;
      v747 = v32;
      v755 = v3;
      v757 = v3 + 64;
      v758 = v87;
      if (!v85)
      {
        goto LABEL_50;
      }

      break;
    case 3:
      v810 = *v771;
      OUTLINED_FUNCTION_57_1();
      v71 = ByteBuffer.writeAvroRecord(_:)(&v810);
      goto LABEL_105;
    case 4:
      OUTLINED_FUNCTION_67_2(v775);
      OUTLINED_FUNCTION_27_8();
      v72 = OUTLINED_FUNCTION_139();
      sub_21B0F6800(v72, v73);
      OUTLINED_FUNCTION_82_1();
      sub_21B103CA8(v68);
      OUTLINED_FUNCTION_22_7();
      if (v74)
      {
        OUTLINED_FUNCTION_16_12();
        sub_21B110E14();
      }

      sub_21B0FAC54(v29);
      OUTLINED_FUNCTION_153_0();
      v75 = v775[1];
      OUTLINED_FUNCTION_133_0();
      switch(v76)
      {
        case 1:
          v279 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v279, v774);
          OUTLINED_FUNCTION_79_2();
          ByteBuffer.writeAvroArray(_:)();
          goto LABEL_210;
        case 2:
          v275 = OUTLINED_FUNCTION_14_13();
          sub_21B0F6800(v275, v774);
          OUTLINED_FUNCTION_79_2();
          ByteBuffer.writeAvroMap(_:)();
LABEL_210:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v771);

          goto LABEL_211;
        case 3:
          v811.schema.type._countAndFlagsBits = v75;
          v811.schema.type._object = v29;
          v811.schema.name._countAndFlagsBits = v3;
          v811.schema.name._object = v4;
          v276 = OUTLINED_FUNCTION_10_17();
          v278 = OUTLINED_FUNCTION_38_6(&v811, v276, v277);
          sub_21B0F6800(v278, v774);
          v75 = v5;
          ByteBuffer.writeAvroRecord(_:)(&v811);
          goto LABEL_208;
        case 4:
          OUTLINED_FUNCTION_50_4();
          OUTLINED_FUNCTION_12_15();
          v3 = v775;
          sub_21B0F6800(&v775[1], v773);
          OUTLINED_FUNCTION_104_1();
          v273._rawValue = sub_21B103CA8(v75);
          OUTLINED_FUNCTION_85_2(v273);
          OUTLINED_FUNCTION_84_2();
          OUTLINED_FUNCTION_83_1(v812, v774);
          ByteBuffer.writeAvroValue(_:)(v812);
          v274 = OUTLINED_FUNCTION_21_7();
          sub_21B0F68B8(v274);
          sub_21B0F68B8(v775);
          sub_21AFC54B0(v771);
          sub_21AFC54B0(&v775[1]);
          sub_21AFC54B0(v771);
          v66 = __OFADD__(v29, v75);
          v75 += v29;
          if (!v66)
          {
            goto LABEL_212;
          }

          goto LABEL_820;
        default:
          OUTLINED_FUNCTION_43_5();
          v77 = OUTLINED_FUNCTION_35_2();
          v75 = v5;
          ByteBuffer.writeAvroPrimitive(_:)(v77, v78, v3, v4);
LABEL_208:
          OUTLINED_FUNCTION_68_2();
          sub_21AFC54B0(v771);
          sub_21AFC54B0(v38 + 8);
LABEL_211:
          sub_21AFC54B0(v771);
LABEL_212:
          v40 = v750;
          v272 = v761;
          v39 = v762;
          v66 = __OFADD__(v44, v75);
          v156 = v44 + v75;
          if (!v66)
          {
            goto LABEL_213;
          }

          goto LABEL_805;
      }

    default:
      OUTLINED_FUNCTION_57_1();
      v69 = OUTLINED_FUNCTION_35_2();
      v71 = ByteBuffer.writeAvroPrimitive(_:)(v69, v70, v38, v3);
LABEL_105:
      v156 = v71;
      sub_21AFC54B0(v771);
      sub_21AFC54B0(v771);
      goto LABEL_202;
  }

  while (2)
  {
    v5 = v88;
LABEL_53:
    OUTLINED_FUNCTION_138();
    v90 = *(v89 + 8);
    OUTLINED_FUNCTION_60_1();
    memcpy(v772, v91, sizeof(v772));
    if ((v90 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_34_7();
      sub_21B112514();
    }

    OUTLINED_FUNCTION_44_4();

    v92 = OUTLINED_FUNCTION_33_7();
    sub_21B0F6800(v92, v93);
    sub_21B103CA8(v82);
    OUTLINED_FUNCTION_22_7();
    v763 = v4;
    if (v94)
    {
      OUTLINED_FUNCTION_16_12();
      sub_21B110E14();
      v764 = *(v29 + 16);
    }

    else
    {
      v764 = 0;
    }

    v85 &= v85 - 1;

    v95 = v751;
    sub_21B112434();
    OUTLINED_FUNCTION_95_2();
    v96 = sub_21B112414();
    v98 = v97;
    (v765)(v95, v752);
    OUTLINED_FUNCTION_137_0();
    if (!v100 & v99)
    {
      v101 = 0;
    }

    else
    {
      v101 = v96;
    }

    if (!v100 & v99)
    {
      v29 = 0xC000000000000000;
    }

    else
    {
      v29 = v98;
    }

    OUTLINED_FUNCTION_107();
    sub_21B110E94();

    v87 = v758;
    switch(v29 >> 62)
    {
      case 1uLL:
        v111 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v111, v112);
        LODWORD(v104) = HIDWORD(v101) - v101;
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          goto LABEL_809;
        }

        v104 = v104;
LABEL_72:
        v38 = (v764 + v104);
        if (__OFADD__(v764, v104))
        {
          goto LABEL_787;
        }

        break;
      case 2uLL:
        v106 = *(v101 + 16);
        v105 = *(v101 + 24);
        v107 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v107, v108);
        v104 = v105 - v106;
        if (!__OFSUB__(v105, v106))
        {
          goto LABEL_72;
        }

        goto LABEL_808;
      case 3uLL:
        v109 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v109, v110);
        v104 = 0;
        goto LABEL_72;
      default:
        v102 = OUTLINED_FUNCTION_107();
        sub_21AF99728(v102, v103);
        v104 = BYTE6(v29);
        goto LABEL_72;
    }

    v114 = *&v772[8];
    v113 = *v772;
    v116 = *&v772[24];
    v115 = *&v772[16];
    switch(v772[64])
    {
      case 1:
        v764 = (v764 + v104);
        if (*(*&v772[24] + 16))
        {
          sub_21B0FAC54(*&v772[24]);
          OUTLINED_FUNCTION_44_4();
          v134 = OUTLINED_FUNCTION_33_7();
          sub_21B0F6800(v134, v135);
          v136._rawValue = sub_21B103CA8(v113);
          v137 = OUTLINED_FUNCTION_93_2(v136);

          v138 = *(v116 + 16);
          if (v138)
          {
            v29 = v116 + 32;
            while (1)
            {
              memcpy(v806, v29, 0x41uLL);
              sub_21B0F6800(v806, v775);
              v139 = ByteBuffer.writeAvroValue(_:)(v806);
              sub_21AFC54B0(v806);
              v66 = __OFADD__(v137, v139);
              v137 += v139;
              if (v66)
              {
                break;
              }

              v29 += 72;
              if (!--v138)
              {
                goto LABEL_88;
              }
            }

LABEL_776:
            __break(1u);
LABEL_777:
            __break(1u);
LABEL_778:
            __break(1u);
LABEL_779:
            __break(1u);
LABEL_780:
            __break(1u);
LABEL_781:
            __break(1u);
LABEL_782:
            __break(1u);
LABEL_783:
            __break(1u);
LABEL_784:
            __break(1u);
            goto LABEL_785;
          }

LABEL_88:
          v140._rawValue = sub_21B103CA8(0);
          v141 = OUTLINED_FUNCTION_93_2(v140);

          sub_21AFC54B0(v772);
          v66 = __OFADD__(v137, v141);
          v113 = v137 + v141;
          if (v66)
          {
            goto LABEL_817;
          }

          v32 = v747;
          v133 = v763;
          v38 = v764;
          v87 = v758;
        }

        else
        {
          v142 = OUTLINED_FUNCTION_33_7();
          sub_21B0F6800(v142, v143);
          OUTLINED_FUNCTION_4_32();
          sub_21B1059A8();
          v775[0] = v144;
          v145 = *(v144 + 16);
          OUTLINED_FUNCTION_7_18();
          sub_21B10606C(v145, v146);
          OUTLINED_FUNCTION_73_2();

          sub_21AFC54B0(v772);
          sub_21B0FAC54(v29);
          OUTLINED_FUNCTION_64_2();

          v32 = v747;
          v133 = v763;
          v38 = v764;
        }

LABEL_100:
        v155 = v38 + v113;
        v3 = v755;
        if (__OFADD__(v38, v113))
        {
          goto LABEL_788;
        }

        v66 = __OFADD__(v133, v155);
        v4 = &v155[v133];
        if (v66)
        {
LABEL_789:
          __break(1u);
LABEL_790:
          __break(1u);
LABEL_791:
          __break(1u);
LABEL_792:
          __break(1u);
LABEL_793:
          __break(1u);
          goto LABEL_794;
        }

        v88 = v5;
        v82 = v757;
        if (v85)
        {
          continue;
        }

        while (1)
        {
LABEL_50:
          v5 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            goto LABEL_762;
          }

          if (v5 >= v87)
          {
            break;
          }

          v85 = *(v82 + 8 * v5);
          ++v88;
          if (v85)
          {
            goto LABEL_53;
          }
        }

        OUTLINED_FUNCTION_125_0();
        sub_21B103904(v271);
        OUTLINED_FUNCTION_118_0();

        sub_21AFC54B0(v771);
        v66 = __OFADD__(v4, v82);
        v156 = v4 + v82;
        if (v66)
        {
          goto LABEL_810;
        }

LABEL_202:
        v40 = v750;
        v272 = v761;
        v39 = v762;
LABEL_213:
        v280 = v760 + v156;
        if (__OFADD__(v760, v156))
        {
          goto LABEL_780;
        }

        v66 = __OFADD__(v32, v280);
        v32 += v280;
        if (v66)
        {
          goto LABEL_781;
        }

        v41 = v272;
        v33 = v748;
        if (v39)
        {
          goto LABEL_17;
        }

        while (1)
        {
LABEL_18:
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_756;
          }

          if (v42 >= v40)
          {
            break;
          }

          v39 = *(v33 + 8 * v42);
          ++v41;
          if (v39)
          {
            goto LABEL_21;
          }
        }

        v2 = v759;

        v775[0] = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_1_29();
        sub_21B105FC8(v658);
        v659 = OUTLINED_FUNCTION_51_1();
        sub_21B10606C(v659, v38);
        v660 = OUTLINED_FUNCTION_76_2();
        v661 = ByteBuffer.writeBytes(_:)(v660);

        sub_21AFC54B0(v776);
        v66 = __OFADD__(v32, v661);
        v13 = (v32 + v661);
        if (v66)
        {
          goto LABEL_802;
        }

LABEL_656:
        v12 = v754;
LABEL_657:
        v11 = v13 + v753;
        if (__OFADD__(v753, v13))
        {
          goto LABEL_771;
        }

        v10 = v742;
        if (v12 != v744)
        {
          goto LABEL_3;
        }

LABEL_751:
        OUTLINED_FUNCTION_77();
        return result;
      case 2:
        v128 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v128, v129);
        OUTLINED_FUNCTION_100_1();
        ByteBuffer.writeAvroMap(_:)();
        v113 = v130;
        sub_21AFC54B0(v772);

        goto LABEL_82;
      case 3:
        v807 = *v772;
        v131 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v131, v132);
        v119 = ByteBuffer.writeAvroRecord(_:)(&v807);
        goto LABEL_81;
      case 4:
        OUTLINED_FUNCTION_67_2(v775);
        OUTLINED_FUNCTION_27_8();
        sub_21B0F6800(v772, v774);
        OUTLINED_FUNCTION_82_1();
        sub_21B103CA8(v113);
        OUTLINED_FUNCTION_22_7();
        if (v120)
        {
          OUTLINED_FUNCTION_16_12();
          sub_21B110E14();
        }

        v121 = sub_21B0FAC54(v29);

        v122 = v775[1];
        v29 = v775[2];
        v123 = *&v775[3];
        switch(LOBYTE(v775[9]))
        {
          case 1:
            v154 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v154, v774);
            OUTLINED_FUNCTION_100_1();
            ByteBuffer.writeAvroArray(_:)();
            goto LABEL_97;
          case 2:
            v150 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v150, v774);
            OUTLINED_FUNCTION_100_1();
            ByteBuffer.writeAvroMap(_:)();
LABEL_97:
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v772);

            goto LABEL_98;
          case 3:
            v808.schema.type._countAndFlagsBits = v775[1];
            v808.schema.type._object = v775[2];
            v808.schema.name = *&v775[3];
            v29 = v38;
            v151 = OUTLINED_FUNCTION_10_17();
            v153 = OUTLINED_FUNCTION_38_6(&v808, v151, v152);
            sub_21B0F6800(v153, v774);
            v122 = v766;
            ByteBuffer.writeAvroRecord(_:)(&v808);
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v772);
            v127 = v38 + 8;
            goto LABEL_95;
          case 4:
            v29 = v38;
            OUTLINED_FUNCTION_50_4();
            OUTLINED_FUNCTION_12_15();
            sub_21B0F6800(&v775[1], v773);
            OUTLINED_FUNCTION_104_1();
            v147._rawValue = sub_21B103CA8(v122);
            v148 = OUTLINED_FUNCTION_93_2(v147);

            OUTLINED_FUNCTION_83_1(v809, v774);
            ByteBuffer.writeAvroValue(_:)(v809);
            v149 = OUTLINED_FUNCTION_21_7();
            sub_21B0F68B8(v149);
            sub_21B0F68B8(v775);
            sub_21AFC54B0(v772);
            sub_21AFC54B0(&v775[1]);
            sub_21AFC54B0(v772);
            v66 = __OFADD__(v148, v122);
            v122 += v148;
            if (v66)
            {
              goto LABEL_826;
            }

            v32 = v747;
            v133 = v763;
            break;
          default:
            v124 = OUTLINED_FUNCTION_14_13();
            sub_21B0F6800(v124, v774);
            v125 = OUTLINED_FUNCTION_35_2();
            v122 = v766;
            ByteBuffer.writeAvroPrimitive(_:)(v125, v126, v123, SBYTE8(v123));
            OUTLINED_FUNCTION_68_2();
            sub_21AFC54B0(v772);
            v127 = OUTLINED_FUNCTION_14_13();
LABEL_95:
            sub_21AFC54B0(v127);
LABEL_98:
            sub_21AFC54B0(v772);
            v32 = v747;
            v133 = v763;
            break;
        }

        v66 = __OFADD__(v121, v122);
        v113 = v121 + v122;
        if (!v66)
        {
          goto LABEL_100;
        }

        goto LABEL_812;
      default:
        v117 = OUTLINED_FUNCTION_33_7();
        sub_21B0F6800(v117, v118);
        v119 = ByteBuffer.writeAvroPrimitive(_:)(v113, v114, v115, v116);
LABEL_81:
        v113 = v119;
        sub_21AFC54B0(v772);
        sub_21AFC54B0(v772);
LABEL_82:
        v32 = v747;
        v133 = v763;
        goto LABEL_100;
    }
  }
}

Swift::Int ByteBuffer.writeAvroUnion(_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_105_1(*(a1 + 80));
  ByteBuffer.writeBytes(_:)(v3);
  OUTLINED_FUNCTION_84_2();
  memcpy(__dst, (a1 + 8), 0x41uLL);
  v4 = ByteBuffer.writeAvroValue(_:)(__dst);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ByteBuffer.writeAvroString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((a1._object & 0x1000000000000000) != 0)
  {
    v4 = sub_21B112514();
  }

  else if ((a1._object & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a1._object) & 0xF;
  }

  else
  {
    v4 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v5 = OUTLINED_FUNCTION_107_1(v4);
  ByteBuffer.writeBytes(_:)(v5);
  OUTLINED_FUNCTION_153_0();
  v6._countAndFlagsBits = countAndFlagsBits;
  v6._object = object;
  v7 = ByteBuffer.writeString(_:)(v6);
  v8 = __OFADD__(v1, v7);
  result = v1 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_21B103904(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_107_1(a1);
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBool(_:)(Swift::Bool a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  return sub_21B0FC3F4(&v2);
}

Swift::Int __swiftcall ByteBuffer.writeAvroInt(_:)(Swift::Int32 a1)
{
  v1 = sub_21B103B80((2 * a1) ^ (a1 >> 31));
  v2 = ByteBuffer.writeBytes(_:)(v1);

  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroFloat(_:)(Swift::Float a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2 = a1;
  return sub_21B0FC468(&v2);
}

Swift::Int __swiftcall ByteBuffer.writeAvroDouble(_:)(Swift::Double a1)
{
  v2[1] = *MEMORY[0x277D85DE8];
  *v2 = a1;
  return sub_21B0FC4DC(v2);
}

char *sub_21B103AA8(char *result, unint64_t a2, uint64_t a3)
{
  v6 = (a2 >> 60) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    v3 = a3;
    v7 = OUTLINED_FUNCTION_140_0();
    v10 = sub_21B0F7860(v7, v8, v9);
    v4 = OUTLINED_FUNCTION_107_1(v10);
    v11 = ByteBuffer.writeBytes(_:)(v4);

    v12 = OUTLINED_FUNCTION_140_0();
    v14 = ByteBuffer.writeImmutableBuffer(_:)(v12, v13);
    v15 = __OFADD__(v11, v14);
    v16 = (v11 + v14);
    if (!v15)
    {
      return v16;
    }

    __break(1u);
  }

  v17 = sub_21B103CA8(2 * *(result + 2));
  ByteBuffer.writeBytes(_:)(v17);
  OUTLINED_FUNCTION_84_2();
  v18 = ByteBuffer.writeBytes(_:)(result);
  v15 = __OFADD__(v3, v18);
  v16 = (v3 + v18);
  if (!v15)
  {
    return v16;
  }

  __break(1u);
LABEL_9:
  v19 = OUTLINED_FUNCTION_140_0();
  v20 = MEMORY[0x21CEE80F0](v19);
  v21 = OUTLINED_FUNCTION_107_1(v20);
  ByteBuffer.writeBytes(_:)(v21);
  OUTLINED_FUNCTION_153_0();
  v22 = OUTLINED_FUNCTION_140_0();
  v24 = ByteBuffer.writeData(_:)(v22, v23);
  v15 = __OFADD__(v4, v24);
  v16 = (v4 + v24);
  if (v15)
  {
    __break(1u);
  }

  return v16;
}

uint64_t sub_21B103B80(unsigned int a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v5 = a1;
    sub_21B1059A8();
    v2 = v6;
    v7 = *(v6 + 16);
    do
    {
      if (v7 >= *(v2 + 24) >> 1)
      {
        sub_21B1059A8();
        v2 = v10;
      }

      v8 = v1 | 0x80;
      v1 = (v5 >> 7) & 0x7F;
      v9 = v5 >> 14;
      v5 >>= 7;
      *(v2 + 16) = v7 + 1;
      *(v2 + v7++ + 32) = v8;
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B1059A8();
    v2 = v11;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_21B1059A8();
    v2 = v12;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + v3 + 32) = v1;
  return v2;
}

uint64_t sub_21B103CA8(unint64_t a1)
{
  LOBYTE(v1) = a1 & 0x7F;
  if (a1 >= 0x80)
  {
    v5 = a1;
    sub_21B1059A8();
    v2 = v6;
    v7 = *(v6 + 16);
    do
    {
      if (v7 >= *(v2 + 24) >> 1)
      {
        sub_21B1059A8();
        v2 = v10;
      }

      v8 = v1 | 0x80;
      v1 = (v5 >> 7) & 0x7F;
      v9 = v5 >> 14;
      v5 >>= 7;
      *(v2 + 16) = v7 + 1;
      *(v2 + v7++ + 32) = v8;
    }

    while (v9);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B1059A8();
    v2 = v11;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_21B1059A8();
    v2 = v12;
  }

  *(v2 + 16) = v3 + 1;
  *(v2 + v3 + 32) = v1;
  return v2;
}

Swift::Int __swiftcall ByteBuffer.writeAvroBytes(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_21B103CA8(2 * *(a1._rawValue + 2));
  ByteBuffer.writeBytes(_:)(v3);
  OUTLINED_FUNCTION_84_2();
  v4 = ByteBuffer.writeBytes(_:)(a1);
  v5 = __OFADD__(v1, v4);
  result = v1 + v4;
  if (v5)
  {
    __break(1u);
  }

  return result;
}

Swift::Int ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = sub_21B0F7860(a1, a2, a3);
  v4 = OUTLINED_FUNCTION_107_1(v3);
  v5 = ByteBuffer.writeBytes(_:)(v4);

  v6 = OUTLINED_FUNCTION_84();
  v8 = ByteBuffer.writeImmutableBuffer(_:)(v6, v7);
  v9 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.writeAvroBytes(_:)(uint64_t a1, unint64_t a2)
{
  v5 = MEMORY[0x21CEE80F0]();
  v6 = OUTLINED_FUNCTION_107_1(v5);
  ByteBuffer.writeBytes(_:)(v6);
  OUTLINED_FUNCTION_153_0();
  v7 = ByteBuffer.writeData(_:)(a1, a2);
  v8 = __OFADD__(v2, v7);
  result = v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B103EF0()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  ByteBufferView.init(_:)(*v0, v2, v0[2], v25);
  v3 = v26;
  v4 = v27;
  v23 = v26 - v27;
  if (v26 != v27)
  {
    v22 = v0;
    v5 = v25[0];
    v6 = v25[1];
    v7 = v25[2];
    sub_21AF99818(v1, v2);
    v8 = 0;
    v24 = v7;
    v9 = v28;
    v10 = v28;
    v11 = v6 >> 62;
    v12 = v23;
    while (1)
    {
      if (v3 + v8 >= v4)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v3 < v7)
      {
        goto LABEL_25;
      }

      switch(v11)
      {
        case 1uLL:
          if (v5 >> 32 < v5)
          {
            goto LABEL_26;
          }

          v18 = sub_21B110C04();
          if (!v18)
          {
            goto LABEL_17;
          }

          v19 = sub_21B110C24();
          if (__OFSUB__(v5, v19))
          {
            goto LABEL_28;
          }

          v18 += v5 - v19;
LABEL_17:
          sub_21B110C14();
          v13 = *(v18 + v3 + v8);
LABEL_18:
          v11 = v6 >> 62;
          v7 = v24;
LABEL_19:
          if ((v13 & 0x80) == 0)
          {
            ByteBufferView.subscript.getter(v3, v3 + v8 + 1, v28);
            v20 = sub_21B0FAF1C(v28);
            sub_21B0FC108(v25);
            v22[2] = v3 + v8 + 1;
            return v20;
          }

          ++v8;
          ++v9;
          ++v10;
          if (!(v12 + v8))
          {
            goto LABEL_21;
          }

          break;
        case 2uLL:
          v14 = v4;
          v15 = *(v5 + 16);
          v16 = sub_21B110C04();
          if (!v16)
          {
            goto LABEL_11;
          }

          v17 = sub_21B110C24();
          if (__OFSUB__(v15, v17))
          {
            goto LABEL_27;
          }

          v16 += v15 - v17;
LABEL_11:
          sub_21B110C14();
          v13 = *(v16 + v3 + v8);
          v4 = v14;
          v12 = v23;
          goto LABEL_18;
        case 3uLL:
          *&v28[6] = 0;
          *v28 = 0;
          v13 = v10[v3];
          goto LABEL_19;
        default:
          *v28 = v5;
          *&v28[8] = v6;
          *&v28[12] = WORD2(v6);
          v13 = v9[v3];
          goto LABEL_19;
      }
    }
  }

  sub_21AF99818(v1, v2);
LABEL_21:
  sub_21B0FC108(v25);
  return 0;
}

uint64_t sub_21B10415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 31;
    do
    {
      v4 = *(v3 + v1) & 0x7F | (v2 << 7);
      v2 = *(v3 + v1--) & 0x7F | (v2 << 7);
    }

    while (v1);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_21B1041AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 31 + v1) & 0x7F | (v2 << 7);
      v2 = v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *ByteBuffer.readAvroValue(_:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_144_0(a1);

      OUTLINED_FUNCTION_130_0();
      ByteBuffer.readAvroArray(_:)();
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_144_0(a1);

      v4 = OUTLINED_FUNCTION_130_0();
      ByteBuffer.readAvroMap(_:)(v4, v5, v6, v7);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10[1] = v8;
      v10[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(v10, __src);
      ByteBuffer.readAvroRecord(_:)();
      sub_21B0CAA60(v10);
      return memcpy(a2, __src, 0x41uLL);
    case 4uLL:

      ByteBuffer.readAvroUnion(_:)(v3, __src);
LABEL_8:

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(a1 + 16), __src);
      break;
  }

  return memcpy(a2, __src, 0x41uLL);
}

uint64_t ByteBuffer.readAvroPrimitive(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  countAndFlagsBits = result;
  v5 = 7;
  object = result;
  switch(result)
  {
    case 1:
      v7 = *(v2 + 16);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_39;
      }

      v9 = sub_21B0F8040(*v2, *(v2 + 8), v7, *(v2 + 16));
      object = 0;
      result = 0;
      v5 = 0;
      *(v2 + 16) = v8;
      countAndFlagsBits = v9 != 0;
      goto LABEL_25;
    case 2:
      v20 = sub_21B103EF0();
      if (!v20)
      {
        goto LABEL_24;
      }

      if (v20[2] >= 6uLL)
      {
        goto LABEL_23;
      }

      v21 = sub_21B10415C(v20);
      object = 0;
      result = 0;
      countAndFlagsBits = -(v21 & 1) ^ (v21 >> 1);
      v5 = 1;
      goto LABEL_25;
    case 3:
      if (!sub_21B103EF0())
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_54_1();
      if (v23)
      {
        goto LABEL_23;
      }

      sub_21B1041AC(v22);
      result = OUTLINED_FUNCTION_49_4();
      countAndFlagsBits = -(v24 & 1) ^ (v24 >> 1);
      v5 = 2;
      goto LABEL_25;
    case 4:
      v10 = *(v2 + 16);
      if (__OFADD__(v10, 4))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v11 = OUTLINED_FUNCTION_30_2();
      sub_21AF99818(v11, v12);
      v13 = OUTLINED_FUNCTION_35_7();
      if ((sub_21B0F816C(v13, v14, v15, v16, v17, v18, v19) & 0x100000000) != 0)
      {
        goto LABEL_24;
      }

      result = OUTLINED_FUNCTION_49_4();
      *(v2 + 16) = v10 + 4;
      countAndFlagsBits = countAndFlagsBits;
      v5 = 3;
      goto LABEL_25;
    case 5:
      v28 = *(v2 + 16);
      if (__OFADD__(v28, 8))
      {
        goto LABEL_40;
      }

      v29 = OUTLINED_FUNCTION_30_2();
      sub_21AF99818(v29, v30);
      v31 = OUTLINED_FUNCTION_35_7();
      sub_21B0F83E4(v31, v32, v33, v34, v35, v36, v37);
      if (v38)
      {
        goto LABEL_24;
      }

      result = OUTLINED_FUNCTION_49_4();
      *(v2 + 16) = v28 + 8;
      v5 = 4;
      goto LABEL_25;
    case 6:
      if (!sub_21B103EF0())
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_54_1();
      if (v23)
      {
        goto LABEL_23;
      }

      v40 = sub_21B1041AC(v39);
      v41 = OUTLINED_FUNCTION_47_4(v40);
      v42 = ByteBuffer.readString(length:)(v41);
      if (v42.value._object)
      {
        countAndFlagsBits = v42.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v42.value._object)
      {
        object = v42.value._object;
      }

      else
      {
        object = 0;
      }

      if (v42.value._object)
      {
        result = 0;
      }

      else
      {
        result = 255;
      }

      if (v42.value._object)
      {
        v5 = 5;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_25;
    case 7:
      if (!sub_21B103EF0())
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_54_1();
      if (v23)
      {
LABEL_23:
      }

      else
      {
        v26 = sub_21B1041AC(v25);
        v27 = OUTLINED_FUNCTION_47_4(v26);
        if (ByteBuffer.readBytes(length:)(v27))
        {
          result = OUTLINED_FUNCTION_49_4();
          v5 = 6;
          goto LABEL_25;
        }
      }

LABEL_24:
      countAndFlagsBits = 0;
      object = 0;
      v5 = 0;
      result = 255;
LABEL_25:
      *a2 = countAndFlagsBits;
      *(a2 + 8) = object;
      *(a2 + 16) = 0;
      *(a2 + 24) = v5;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = result;
      return result;
    default:
      goto LABEL_25;
  }
}

void ByteBuffer.readAvroArray(_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v126 = *MEMORY[0x277D85DE8];
  if (!sub_21B103EF0())
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_54_1();
  if (v10)
  {
LABEL_68:

LABEL_69:
    v6 = 0;
    v4 = 0;
    v2 = 0;
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v19 = -1;
    goto LABEL_70;
  }

  v11 = sub_21B1041AC(v9);
  if (v11)
  {
LABEL_88:
    __break(1u);
LABEL_89:
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
  }

  v12 = -(v11 & 1);
  v13 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  if (v11 >> 1 == v12)
  {

    v14 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v20 = v12 ^ (v11 >> 1);

  v29 = 0;
  v81 = 0;
  v14 = MEMORY[0x277D84F90];
  v88 = v2 >> 61;
  v89 = v0;
  v90 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v87 = v20;
  v82 = v4;
  v83 = v8;
  v79 = v2;
  v80 = v6;
LABEL_10:
  if (v29 >= v20)
  {
    goto LABEL_83;
  }

  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    goto LABEL_84;
  }

  v91 = v31;
  switch(v88)
  {
    case 1:
      OUTLINED_FUNCTION_141_0(isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v27, v28, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89, v90);

      OUTLINED_FUNCTION_132_0();
      ByteBuffer.readAvroArray(_:)();
      v92 = v104[0];
      v94 = v104[1];
      v95 = v104[3];
      v97 = v104[2];
      v32 = v105;
      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_141_0(isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v27, v28, v79, v80, v81, v82, v83, v84, v85, *(&v85 + 1), v86, v87, v88, v89, v90);

      v38 = OUTLINED_FUNCTION_132_0();
      ByteBuffer.readAvroMap(_:)(v38, v39, v40, v41);
      v92 = v106;
      v94 = v107;
      v95 = v109;
      v97 = v108;
      v32 = v110;
LABEL_19:
      v13 = v90;

      v0 = v89;

      goto LABEL_20;
    case 3:
      v42 = *(v13 + 32);
      v121[0] = *(v13 + 16);
      v121[1] = v42;
      v121[2] = *(v13 + 48);
      v122 = *(v13 + 64);
      sub_21AFC5454(v121, v100);
      ByteBuffer.readAvroRecord(_:)();
      v92 = v111[0];
      v94 = v111[1];
      v95 = v111[3];
      v97 = v111[2];
      v32 = v112;
      sub_21B0CAA60(v121);
      goto LABEL_20;
    case 4:
      v86 = *(v13 + 16);
      v33 = *v0;
      v34 = *(v0 + 16);
      v35 = *(v0 + 8);
      v36 = v35 >> 62;
      v37 = 0;
      v85 = v33;
      switch(v35 >> 62)
      {
        case 1uLL:
          if (__OFSUB__(DWORD1(v33), v33))
          {
            goto LABEL_94;
          }

          v50 = DWORD1(v33) - v33;
          sub_21AF99818(v33, v35);
          v37 = v50;
          *&v33 = v85;
          break;
        case 2uLL:
          v52 = *(v33 + 16);
          v51 = *(v33 + 24);
          v53 = v51 - v52;
          if (__OFSUB__(v51, v52))
          {
            goto LABEL_95;
          }

          sub_21AF99818(v33, v35);
          *&v33 = v85;
          v37 = v53;
          break;
        case 3uLL:
          break;
        default:
          v37 = BYTE6(v35);
          break;
      }

      if (v37 < v34)
      {
        goto LABEL_89;
      }

      if (v34 < 0)
      {
        goto LABEL_90;
      }

      break;
    default:
      ByteBuffer.readAvroPrimitive(_:)(*(v2 + 16), v102);
      v92 = v102[0];
      v94 = v102[1];
      v95 = v102[3];
      v97 = v102[2];
      v32 = v103;
LABEL_20:
      if (v32 != 255)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
  }

  v54 = 0;
  switch(v36)
  {
    case 1:
      LODWORD(v54) = DWORD1(v33) - v33;
      if (__OFSUB__(DWORD1(v33), v33))
      {
        goto LABEL_96;
      }

      v54 = v54;
LABEL_38:
      v84 = v14;
      if (v54 < v37)
      {
        goto LABEL_91;
      }

      v57 = v34 - v37;
      if (v34 == v37)
      {
        sub_21AF99728(v33, v35);

        goto LABEL_71;
      }

      v58 = v33;
      v98 = v33;
      v93 = v33 >> 32;
      v96 = v37;

      v59 = v96;
      v60 = 0;
      break;
    case 2:
      v55 = *(v33 + 16);
      v56 = *(v33 + 24);
      v30 = __OFSUB__(v56, v55);
      v54 = v56 - v55;
      if (!v30)
      {
        goto LABEL_38;
      }

      goto LABEL_97;
    case 3:
      goto LABEL_38;
    default:
      v54 = BYTE6(v35);
      goto LABEL_38;
  }

  while (2)
  {
    if (v34 + v60 >= v59)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    switch(v36)
    {
      case 1:
        if (v93 < v98)
        {
          goto LABEL_85;
        }

        v67 = sub_21B110C04();
        if (v67)
        {
          v63 = v67;
          v68 = sub_21B110C24();
          v65 = v98 - v68;
          if (__OFSUB__(v98, v68))
          {
            goto LABEL_87;
          }

LABEL_53:
          v69 = v65 + v63;
        }

        else
        {
LABEL_54:
          v69 = 0;
        }

        sub_21B110C14();
        v66 = *(v69 + v34 + v60);
        v59 = v96;
LABEL_56:
        if (v66 < 0)
        {
          ++v60;
          if (!(v57 + v60))
          {
            sub_21AF99728(v58, v35);

LABEL_71:

            v95 = 0u;
            v97 = 0u;
            v92 = 0u;
            v94 = 0u;
            v8 = v83;
            goto LABEL_81;
          }

          continue;
        }

        v70 = ByteBuffer.count.getter(v58, v35);
        v71 = v34 + v60;
        if (v70 <= v34 + v60)
        {
          goto LABEL_92;
        }

        v72 = v71 + 1;
        v123 = v85;
        v124 = vdupq_n_s64(v34);
        v125 = v71 + 1;
        v73 = sub_21B10626C(v60 + 1, 0);
        v74 = sub_21B105B30(v100, (v73 + 4), v60 + 1) - 1;
        sub_21AF99728(*&v100[0], *(&v100[0] + 1));
        v8 = v83;
        v14 = v84;
        v4 = v82;
        v6 = v80;
        if (v74 != v60)
        {
          goto LABEL_93;
        }

        *(v89 + 16) = v72;
        v2 = v79;
        if (v73[2] >= 0xBuLL)
        {

          goto LABEL_80;
        }

        v75 = sub_21B1041AC(v73);
        if ((v75 & 1) != 0 || (v76 = -(v75 & 1) ^ (v75 >> 1), v76 >= *(v86 + 16)))
        {

          goto LABEL_80;
        }

        v77 = *(v86 + 8 * v76 + 32);

        ByteBuffer.readAvroValue(_:)(v77, &v113);
        if (v117 == 255)
        {
          v95 = v116;
          v97 = v115;
          v92 = v113;
          v94 = v114;

LABEL_73:

          goto LABEL_81;
        }

        __src[0] = v113;
        __src[1] = v114;
        __src[2] = v115;
        __src[3] = v116;
        v120 = v117;

        sub_21B10765C(v118, __src, v78, v76);
        if (v81)
        {

LABEL_80:

          v95 = 0u;
          v97 = 0u;
          v92 = 0u;
          v94 = 0u;
LABEL_81:

          v4 = *(&v92 + 1);
          v6 = v92;
          v17 = v95;
          v14 = *(&v94 + 1);
          v2 = v94;
          v19 = -1;
          v16 = v97;
          goto LABEL_70;
        }

        v81 = 0;

        OUTLINED_FUNCTION_83_1(v100, v118);
        sub_21B0F6800(v100, v99);
        sub_21B0F68B8(v118);
        v92 = v100[0];
        v94 = v100[1];
        v95 = v100[3];
        v97 = v100[2];
        LOBYTE(v32) = v101;
        v0 = v89;
        v13 = v90;
LABEL_21:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_27();
          sub_21B1058B8();
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v44 = *(v14 + 16);
        v43 = *(v14 + 24);
        v46 = v95;
        v45 = v97;
        v48 = v92;
        v47 = v94;
        if (v44 >= v43 >> 1)
        {
          OUTLINED_FUNCTION_13_10(v43);
          sub_21B1058B8();
          v48 = v92;
          v47 = v94;
          v46 = v95;
          v45 = v97;
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v44 + 1;
        v49 = v14 + 72 * v44;
        *(v49 + 32) = v48;
        *(v49 + 48) = v47;
        *(v49 + 64) = v45;
        *(v49 + 80) = v46;
        *(v49 + 96) = v32;
        v20 = v87;
        v29 = v91;
        if (v91 != v87)
        {
          goto LABEL_10;
        }

LABEL_6:
        v15 = sub_21B105564();
        if ((v18 & 1) != 0 || v15)
        {

          goto LABEL_68;
        }

        v19 = 1;
LABEL_70:
        *v8 = v6;
        *(v8 + 8) = v4;
        *(v8 + 16) = v2;
        *(v8 + 24) = v14;
        *(v8 + 32) = v16;
        *(v8 + 48) = v17;
        *(v8 + 64) = v19;
        OUTLINED_FUNCTION_77();
        return;
      case 2:
        v61 = *(v58 + 16);
        v62 = sub_21B110C04();
        if (!v62)
        {
          goto LABEL_54;
        }

        v63 = v62;
        v64 = sub_21B110C24();
        v65 = v61 - v64;
        if (!__OFSUB__(v61, v64))
        {
          goto LABEL_53;
        }

        goto LABEL_86;
      case 3:
        *(v100 + 6) = 0;
        *&v100[0] = 0;
        goto LABEL_49;
      default:
        LOBYTE(v100[0]) = v98;
        BYTE1(v100[0]) = BYTE1(v58);
        BYTE2(v100[0]) = BYTE2(v58);
        BYTE3(v100[0]) = BYTE3(v58);
        BYTE4(v100[0]) = BYTE4(v58);
        BYTE5(v100[0]) = BYTE5(v58);
        BYTE6(v100[0]) = BYTE6(v58);
        BYTE7(v100[0]) = HIBYTE(v58);
        WORD4(v100[0]) = v35;
        BYTE10(v100[0]) = BYTE2(v35);
        BYTE11(v100[0]) = BYTE3(v35);
        BYTE12(v100[0]) = BYTE4(v35);
        BYTE13(v100[0]) = BYTE5(v35);
LABEL_49:
        v66 = *(v100 + v34 + v60);
        goto LABEL_56;
    }
  }
}

void ByteBuffer.readAvroMap(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!sub_21B103EF0())
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_54_1();
  if (v9)
  {
    goto LABEL_29;
  }

  v10 = sub_21B1041AC(v8);
  v11 = sub_21B112334();
  if (v10)
  {
    goto LABEL_34;
  }

  v12 = v11;
  v31 = a2;
  v34 = -(v10 & 1) ^ (v10 >> 1);
  v13 = a3 & 0x1FFFFFFFFFFFFFFFLL;

  v14 = 0;
  v32 = a3;
  v33 = a3 >> 61;
  while (1)
  {
    if (v34 == v14)
    {
      v26 = sub_21B105564();
      if ((v27 & 1) == 0 && !v26)
      {
        v28 = 2;
        v30 = a1;
        v29 = v31;
        goto LABEL_31;
      }

LABEL_25:

LABEL_27:

      goto LABEL_29;
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v15 = sub_21B103EF0();
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    OUTLINED_FUNCTION_54_1();
    if (v9)
    {

      goto LABEL_27;
    }

    v17 = sub_21B1041AC(v16);
    v18 = OUTLINED_FUNCTION_47_4(v17);
    v19 = ByteBuffer.readString(length:)(v18);
    if (!v19.value._object)
    {
      goto LABEL_25;
    }

    switch(v33)
    {
      case 1uLL:

        ByteBuffer.readAvroArray(_:)();

        a3 = v32;
        goto LABEL_17;
      case 2uLL:
        v21 = *(v13 + 16);
        v22 = *(v13 + 24);
        v23 = *(v13 + 32);

        ByteBuffer.readAvroMap(_:)(v21, v22, v23, __src);
        a3 = v32;

        goto LABEL_17;
      case 3uLL:
        v24 = *(v13 + 32);
        v39[0] = *(v13 + 16);
        v39[1] = v24;
        v39[2] = *(v13 + 48);
        v40 = *(v13 + 64);
        sub_21AFC5454(v39, __src);
        ByteBuffer.readAvroRecord(_:)();
        sub_21B0CAA60(v39);
        goto LABEL_18;
      case 4uLL:

        ByteBuffer.readAvroUnion(_:)(v20, __src);
LABEL_17:

LABEL_18:
        memcpy(__dst, __src, sizeof(__dst));
        break;
      default:
        ByteBuffer.readAvroPrimitive(_:)(*(a3 + 16), __dst);
        break;
    }

    if (__dst[64] == 255)
    {
      break;
    }

    v37[0] = *__dst;
    v37[1] = *&__dst[16];
    v37[2] = *&__dst[32];
    v37[3] = *&__dst[48];
    v38 = __dst[64];
    if ((sub_21B0EDF24(v37, a3) & 1) == 0)
    {

      AvroValue.schema.getter();
      sub_21B0CACC8(__dst);

      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v12;
    sub_21B1060B4(v37, v19.value._countAndFlagsBits, v19.value._object, isUniquelyReferenced_nonNull_native);

    v12 = __src[0];
    ++v14;
  }

LABEL_29:

LABEL_30:
  v30 = 0;
  v29 = 0;
  a3 = 0;
  v12 = 0;
  v28 = -1;
LABEL_31:
  *a4 = v30;
  *(a4 + 8) = v29;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = v28;
}

void ByteBuffer.readAvroRecord(_:)()
{
  OUTLINED_FUNCTION_76();
  v33 = v0;
  v2 = v1;
  v31 = v3;
  sub_21AFC5454(v1, v38);
  AvroRecord.init(schema:)(&v37, v2);
  rawValue = v2->fields._rawValue;
  v5 = rawValue[2];
  if (v5)
  {
    v6 = rawValue + 6;
    while (1)
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v10 = *v6;
      v6 += 3;
      v9 = v10;
      switch(v10 >> 61)
      {
        case 1uLL:
          OUTLINED_FUNCTION_111_1();

          OUTLINED_FUNCTION_102_1();
          ByteBuffer.readAvroArray(_:)();
          goto LABEL_9;
        case 2uLL:
          OUTLINED_FUNCTION_111_1();

          v13 = OUTLINED_FUNCTION_102_1();
          ByteBuffer.readAvroMap(_:)(v13, v14, v15, v16);
LABEL_9:

          v8 = v32;
          goto LABEL_10;
        case 3uLL:
          v17 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v40[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v40[1] = v17;
          v40[2] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v41 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

          sub_21AFC5454(v40, __src);
          ByteBuffer.readAvroRecord(_:)();
          sub_21B0CAA60(v40);
          break;
        case 4uLL:

          ByteBuffer.readAvroUnion(_:)(v12, __src);
LABEL_10:

          break;
        default:
          v11 = *(v9 + 16);

          ByteBuffer.readAvroPrimitive(_:)(v11, __src);
          break;
      }

      v18 = memcpy(__dst, __src, 0x41uLL);
      if (LOBYTE(__dst[4]) == 255)
      {
        break;
      }

      v38[0] = __dst[0];
      v38[1] = __dst[1];
      v38[2] = __dst[2];
      v38[3] = __dst[3];
      v39 = __dst[4];
      AvroRecord.set(_:forField:)(v38, v8, v7);
      sub_21B0CACC8(__dst);

      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_109_1(v18, v19, v20, v21, v22, v23, v24, v25, v31, v32, v33, v34, __src[0], __src[1], __src[2], __src[3]);

    type = __dst[0];
    name = __dst[1];
    v29 = __dst[2];
    v30 = __dst[3];
    v28 = __dst[4];
  }

  else
  {
LABEL_13:
    type = v37.schema.type;
    name = v37.schema.name;
    v28 = 3;
    v29 = v37.schema.namespace;
    v30 = *&v37.schema.fields._rawValue;
  }

  *v31 = type;
  *(v31 + 16) = name;
  *(v31 + 32) = v29;
  *(v31 + 48) = v30;
  *(v31 + 64) = v28;
  OUTLINED_FUNCTION_77();
}

void ByteBuffer.readAvroUnion(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_21B103EF0())
  {
    OUTLINED_FUNCTION_88_2();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_54_1();
  if (v5)
  {

LABEL_5:
    OUTLINED_FUNCTION_88_2();
    v10 = 0uLL;
    goto LABEL_7;
  }

  v11 = sub_21B1041AC(v4);
  if (v11)
  {
    goto LABEL_5;
  }

  v12 = -(v11 & 1) ^ (v11 >> 1);
  if (v12 >= *(a1 + 16))
  {
    goto LABEL_5;
  }

  v13 = *(a1 + 8 * v12 + 32);

  ByteBuffer.readAvroValue(_:)(v13, &v21);
  if (v25 == 255)
  {
    v17 = v23;
    v18 = v24;
    v15 = v21;
    v16 = v22;

    v8 = v17;
    v9 = v18;
    v10 = v15;
    v7 = v16;
    v6 = -1;
  }

  else
  {
    __src[0] = v21;
    __src[1] = v22;
    __src[2] = v23;
    __src[3] = v24;
    v29 = v25;

    sub_21B10765C(&v26, __src, v14, v12);

    memcpy(__dst, v27, 0x41uLL);
    sub_21B0F6800(__dst, v19);
    sub_21B0F68B8(&v26);
    v10 = __dst[0];
    v7 = __dst[1];
    v8 = __dst[2];
    v9 = __dst[3];
    v6 = __dst[4];
  }

LABEL_7:
  *a2 = v10;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v6;
}

void *sub_21B105564()
{
  result = sub_21B103EF0();
  if (result)
  {
    OUTLINED_FUNCTION_54_1();
    if (v2)
    {

      return 0;
    }

    else
    {
      v3 = sub_21B1041AC(v1);
      return OUTLINED_FUNCTION_47_4(v3);
    }
  }

  return result;
}

uint64_t sub_21B1055A4(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD000000000000043, 0x800000021B142CF0);
  MEMORY[0x21CEE9770](0x646C656946, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_21B112F84();
  MEMORY[0x21CEE9770](v4);

  result = sub_21B1129D4();
  __break(1u);
  return result;
}

void sub_21B1056F4()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AC8, &qword_21B12D8D0);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_9_22(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void sub_21B1057C8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AD0, &qword_21B12D8D8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_123_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21B1058B8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE0, &qword_21B12D8E8);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_123_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[72 * v7] <= v11)
    {
      memmove(v11, v12, 72 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_21B1059A8()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_7();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_10();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_9_22(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[v7] <= v11)
    {
      memmove(v11, v12, v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, v7);
  }
}

void *sub_21B105A7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE8, &unk_21B12D8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

char *sub_21B105B00(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[72 * a2] <= __dst)
  {
    return memmove(__dst, __src, 72 * a2);
  }

  return __src;
}

uint64_t sub_21B105B30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v5 = v3[3];
  v4 = v3[4];
  v6 = v3[1];
  v25 = *v3;
  v7 = v3[2];
  if (!a2)
  {
    a3 = 0;
    goto LABEL_26;
  }

  if (!a3)
  {
LABEL_26:
    v9 = v3[3];
    goto LABEL_28;
  }

  if (a3 < 0)
  {
    goto LABEL_35;
  }

  v21 = a1;
  v8 = 0;
  v20 = v4 - v5;
  v9 = v3[3];
  v10 = v6 >> 62;
  v23 = a2;
  v24 = a3;
  v22 = v3[2];
  while (2)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
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
    }

    if (v4 == v9)
    {
      v9 = v4;
      a3 = v20;
      a1 = v21;
      break;
    }

    if (v9 >= v4)
    {
      goto LABEL_30;
    }

    if (v5 < v7)
    {
      goto LABEL_31;
    }

    switch(v10)
    {
      case 1uLL:
        if (v25 >> 32 < v25)
        {
          goto LABEL_32;
        }

        v17 = sub_21B110C04();
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = sub_21B110C24();
        if (__OFSUB__(v25, v18))
        {
          goto LABEL_34;
        }

        v17 += v25 - v18;
LABEL_21:
        sub_21B110C14();
        v16 = *(v17 + v9);
LABEL_22:
        a2 = v23;
        a3 = v24;
        v10 = v6 >> 62;
LABEL_23:
        *(a2 + v8++) = v16;
        ++v9;
        if (v11 != a3)
        {
          continue;
        }

        a1 = v21;
        break;
      case 2uLL:
        v12 = v5;
        v13 = *(v25 + 16);
        v14 = sub_21B110C04();
        if (!v14)
        {
          goto LABEL_14;
        }

        v15 = sub_21B110C24();
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_33;
        }

        v14 += v13 - v15;
LABEL_14:
        sub_21B110C14();
        v16 = *(v14 + v9);
        v5 = v12;
        v7 = v22;
        goto LABEL_22;
      case 3uLL:
        memset(v26, 0, 14);
        goto LABEL_16;
      default:
        v26[0] = v25;
        LOWORD(v26[1]) = v6;
        BYTE2(v26[1]) = BYTE2(v6);
        BYTE3(v26[1]) = BYTE3(v6);
        BYTE4(v26[1]) = BYTE4(v6);
        BYTE5(v26[1]) = BYTE5(v6);
LABEL_16:
        v16 = *(v26 + v9);
        goto LABEL_23;
    }

    break;
  }

LABEL_28:
  *a1 = v25;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v5;
  a1[4] = v4;
  a1[5] = v9;
  return a3;
}

void *sub_21B105DF4(void *result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v22 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 24 * (v17 | (v16 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = v19;
      v11[1] = v20;
      v11[2] = v21;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v22;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21B105FC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21B10606C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_21B1060B4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_21AF98B58(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AD8, &qword_21B12D8E0);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_21AF98B58(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    v16 = *(*v5 + 56) + 72 * v12;

    return sub_21B1062D4(a1, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_541();
    sub_21B1105B8(v18, v19, a3, a1, v20);
  }
}

void *sub_21B1061F0(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_21B10626C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = result;
      memmove(result + 4, a1, v4);
      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21B10626C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_22(v4);
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_26()
{
  *(v2 + 16) = v0;
  result = v2 + 32;
  *(v2 + 32 + v1) = 0;
  return result;
}

Swift::Int OUTLINED_FUNCTION_18_8()
{

  return ByteBuffer.writeAvroPrimitive(_:)(v0, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_21B0F6800(v0 + 544, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_38_6@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a1[2] = a2;
  a1[3] = a3;
  return v3 + 8;
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return sub_21B0F6800(v0 + 632, v0 + 536);
}

void *OUTLINED_FUNCTION_50_4()
{

  return memcpy((v0 + 536), (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return sub_21B0F6800(v0 + 536, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_21B0F6800(v0 + 288, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_21B0F6800(v0 + 712, v0 + 624);
}

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_21B0F6800(v0 + 432, v0 + 344);
}

void *OUTLINED_FUNCTION_67_2(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_21B0F68B8(v0 + 624);
}

uint64_t OUTLINED_FUNCTION_69_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void OUTLINED_FUNCTION_71_2()
{

  sub_21B1059A8();
}

uint64_t OUTLINED_FUNCTION_73_2()
{
  v3 = *(v0 + 624);
  *(v3 + 16) = v1 + 1;
  *(v3 + 32 + v1) = 0;

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1)
{

  return sub_21B112414();
}

uint64_t OUTLINED_FUNCTION_76_2()
{
  v2 = *(v0 + 624);
  *(v2 + 16) = v1 + 1;
  *(v2 + v1 + 32) = 0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_77_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return v2;
}

void *OUTLINED_FUNCTION_78_2(void *a1)
{

  return memcpy(a1, (v1 + 456), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_21B0F6800(v0 + 544, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return sub_21B0F685C(v0 + 624, v0 + 536);
}

void *OUTLINED_FUNCTION_83_1@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (a2 + 8), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_84_2()
{
}

Swift::Int OUTLINED_FUNCTION_85_2(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return sub_21B110E94();
}

Swift::Int OUTLINED_FUNCTION_93_2(Swift::OpaquePointer a1)
{

  return ByteBuffer.writeBytes(_:)(a1);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_21B0F6800(v0 + 352, v0 + 264);
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return sub_21B0F685C(v0 + 536, v0 + 448);
}

uint64_t OUTLINED_FUNCTION_105_1@<X0>(uint64_t a1@<X8>)
{

  return sub_21B103CA8((2 * a1) ^ (a1 >> 63));
}

void *OUTLINED_FUNCTION_106_1()
{

  return memcpy((v0 + 536), (v1 - 32), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{
  v2 = (2 * a1) ^ (a1 >> 63);

  return sub_21B103CA8(v2);
}

void *OUTLINED_FUNCTION_108_1()
{

  return memcpy((v0 + 624), (v1 + 16), 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_109_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  v18 = v16[6];
  a13 = v16[5];
  a14 = v18;
  v19 = v16[8];
  a15 = v16[7];
  a16 = v19;

  return sub_21AFC5398(&a13);
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_21B0F6800(v0 + 544, v0 + 360);
}

uint64_t OUTLINED_FUNCTION_111_1()
{
}

uint64_t OUTLINED_FUNCTION_114_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_115_1()
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_116_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  return sub_21B0F6800(v20, va);
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_118_0()
{
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_120_0()
{
  *(v0 + 16) = v2;
  result = v0 + 32;
  *(v0 + 32 + v3) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_141_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
}

Swift::Int OUTLINED_FUNCTION_142_0()
{
  *(v0._rawValue + 2) = v1;
  *(v0._rawValue + v2 + 32) = 0;

  return ByteBuffer.writeBytes(_:)(v0);
}

void *OUTLINED_FUNCTION_143_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 216), (v1 + v3 * a1), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_144_0(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return sub_21B112514();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_21B110E14();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_21B105FC8(v0);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return sub_21B103B80((2 * v0) ^ (v0 >> 31));
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_21B0F68B8(v0 + 448);
}

uint64_t OUTLINED_FUNCTION_151_0()
{

  return sub_21B0F685C(v0 + 448, v0 + 360);
}

uint64_t OUTLINED_FUNCTION_152_0()
{
}

uint64_t OUTLINED_FUNCTION_153_0()
{
}

unint64_t AvroValue.schema.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  switch(*(v0 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_37_5();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_20_10(v19, v20, v21, v22, v23, v24, v25, v26, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_21AFA8918(v32, &qword_27CD47AF8, &qword_21B12D980);
      v8 = v1 | 0x2000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_37_5();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_20_10(v9, v10, v11, v12, v13, v14, v15, v16, v28, *(&v28 + 1), *v29, *&v29[8], *&v29[16], *&v29[24], *&v29[32], v30, v31, v32[0]);
      sub_21AFA8918(v32, &qword_27CD47AF0, &qword_21B12D978);
      v8 = v1 | 0x4000000000000000;
      break;
    case 3:
      *&v28 = *v0;
      *(&v28 + 1) = v2;
      *v29 = v3;
      v29[8] = v4;
      *&v29[9] = *(v0 + 25);
      *&v29[24] = *(v0 + 40);
      v17 = swift_allocObject();
      v18 = *v29;
      *(v17 + 16) = v28;
      *(v17 + 32) = v18;
      *(v17 + 48) = *&v29[16];
      *(v17 + 64) = *&v29[32];
      v8 = v17 | 0x6000000000000000;
      sub_21AFC5454(&v28, v32);
      break;
    case 4:
      v6 = *(*v0 + 16);
      OUTLINED_FUNCTION_61();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v8 = v7 | 0x8000000000000000;

      break;
    default:
      v5 = 6;
      switch(*(v0 + 24))
      {
        case 1:
          sub_21AFC54B0(v0);
          v5 = 2;
          break;
        case 2:
          sub_21AFC54B0(v0);
          v5 = 3;
          break;
        case 3:
          sub_21AFC54B0(v0);
          v5 = 4;
          break;
        case 4:
          sub_21AFC54B0(v0);
          v5 = 5;
          break;
        case 5:
          break;
        case 6:
          v5 = 7;
          break;
        case 7:
          sub_21AFC54B0(v0);
          v5 = 0;
          break;
        default:
          sub_21AFC54B0(v0);
          v5 = 1;
          break;
      }

      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      break;
  }

  return v8;
}

void AvroValue.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  OUTLINED_FUNCTION_31_9(a5);
}

{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  OUTLINED_FUNCTION_31_9(a5);
}

uint64_t AvroMap.init(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  sub_21B112334();
  return v0;
}

void __swiftcall AvroRecord.init(schema:)(SwiftAvro::AvroRecord *__return_ptr retstr, SwiftAvro::AvroRecordSchema *schema)
{
  type = schema->type;
  name = schema->name;
  v13 = schema->namespace;
  rawValue = schema->fields._rawValue;
  v14 = rawValue;
  v4 = *(rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    sub_21AFC5454(schema, __src);
    sub_21B10BC38(0, v4, 0);
    v7 = (rawValue + 48);
    do
    {
      v8 = *v7;

      sub_21B0EE03C(v8, __src);

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_21B10BC38(v9 > 1, v10 + 1, 1);
      }

      v7 += 3;
      v5[2] = v10 + 1;
      memcpy(&v5[9 * v10 + 4], __src, 0x41uLL);
      --v4;
    }

    while (v4);
    sub_21B0CAA60(schema);
  }

  retstr->schema.type = type;
  retstr->schema.name = name;
  retstr->schema.namespace = v13;
  retstr->schema.fields._rawValue = v14;
  retstr->fields._rawValue = v5;
}

void AvroValue.init(_:)(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v3 = a1[3];
  a2[2] = a1[2];
  a2[3] = v3;
  OUTLINED_FUNCTION_31_9(a2);
}

void *AvroValue.init(_:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35_8();
  v3 = swift_allocObject();
  result = OUTLINED_FUNCTION_41_6(v3);
  *a1 = v1;
  *(a1 + 64) = 4;
  return result;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void static AvroValue.int(_:)(unsigned int a1@<W0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  OUTLINED_FUNCTION_0_32(a2);
}

void static AvroValue.float(_:)(void *a1@<X8>, unsigned int a2@<S0>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a2;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t static AvroValue.string(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 5;
  *(a3 + 64) = 0;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 6;
  *(a2 + 64) = 0;
}

void AvroRecord.set(_:forField:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = 0;
  v9 = *(v4 + 48);
  v10 = *(v9 + 16);
  v11 = (v9 + 40);
  for (i = -32; ; i -= 72)
  {
    if (v10 == v8)
    {
      v15 = sub_21B10BC58();
      OUTLINED_FUNCTION_4_0(&type metadata for InvalidFieldError, v15);
      *v16 = a2;
      v16[1] = a3;
      swift_willThrow();

      return;
    }

    if (*(v11 - 1) == a2 && *v11 == a3)
    {
      break;
    }

    OUTLINED_FUNCTION_26_7();
    if (sub_21B112D04())
    {
      break;
    }

    ++v8;
    v11 += 3;
  }

  v14 = *(v4 + 56);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B10BC10();
    v14 = v17;
  }

  if (v8 >= *(v14 + 16))
  {
    __break(1u);
  }

  else
  {
    AvroValue.update(_:)(a1);
    *(v4 + 56) = v14;
  }
}

double static AvroValue.record(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = a1[3];
  v11 = a1[2];
  v12 = v4;
  sub_21B0F6970(a1, &v8);
  v5 = v10;
  *a2 = v9;
  *(a2 + 16) = v5;
  result = *&v11;
  v7 = v12;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = 3;
  return result;
}

uint64_t sub_21B10740C(unint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    v6 = *(v5 + 8 * v3);

    v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, a1);

    if (v7)
    {
      break;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_21B107494(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = a3 - a2;
  if (a2)
  {
    while (1)
    {
      if (v5 == result)
      {
        return 0;
      }

      if (*(a2 + result) == a1)
      {
        return result;
      }

      if (v5 <= result)
      {
        break;
      }

      ++result;
    }

    __break(1u);
  }

  return result;
}

uint64_t AvroMap.set(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  if (sub_21B0EDF24(a1, v7))
  {

    sub_21B0F6800(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v3 + 24);
    sub_21B1060B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 24) = v13[0];
  }

  else
  {

    v10 = AvroValue.schema.getter();
    v11 = sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0(&type metadata for SchemaMismatchError, v11);
    *v12 = v7;
    v12[1] = v10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21B107608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 64) = a5;
}

uint64_t *sub_21B10765C@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X1>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  if (a4 < 0 || *(a3 + 16) <= a4)
  {
    OUTLINED_FUNCTION_47_3();
    sub_21B112904();
    MEMORY[0x21CEE9770](0xD00000000000003CLL, 0x800000021B142E00);

    OUTLINED_FUNCTION_12_7();
    v8 = sub_21B112B84();
    MEMORY[0x21CEE9770](v8);

    MEMORY[0x21CEE9770](0xD000000000000020, 0x800000021B142E40);
    OUTLINED_FUNCTION_12_7();
    v9 = sub_21B112B84();
    MEMORY[0x21CEE9770](v9);

    MEMORY[0x21CEE9770](0xD000000000000026, 0x800000021B142E70);
    v10 = sub_21B10CB5C();
    OUTLINED_FUNCTION_4_0(&type metadata for InternalError, v10);
    *v11 = v12;
    v11[1] = v13;
    swift_willThrow();
    return sub_21AFC54B0(__src);
  }

  else
  {
    *a1 = a3;
    result = memcpy(a1 + 1, __src, 0x41uLL);
    a1[10] = a4;
  }

  return result;
}

uint64_t SchemaMismatchError.description.getter(unint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v4 = AvroSchema.description.getter(a1);
  MEMORY[0x21CEE9770](v4);

  MEMORY[0x21CEE9770](0x6F67207475622027, 0xEB00000000272074);
  AvroSchema.description.getter(a2);
  OUTLINED_FUNCTION_94_1();

  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  return v6;
}

uint64_t static SchemaMismatchError.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4);
}

uint64_t SchemaMismatchError.hash(into:)(uint64_t a1, unint64_t a2)
{
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a2);
  v2 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v3);
}

uint64_t SchemaMismatchError.hashValue.getter()
{
  OUTLINED_FUNCTION_81();
  v2 = OUTLINED_FUNCTION_4_24(v1);
  v10 = OUTLINED_FUNCTION_34_8(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14[0]);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v10, v11);
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v0);
  return sub_21B112F14();
}

uint64_t InvalidFieldError.description.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  MEMORY[0x21CEE9770](a1, a2);
  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  return v5;
}

uint64_t InternalError.description.getter()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

uint64_t InternalError.description.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static InternalError.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_11_13(a1);
  }
}

uint64_t sub_21B107C24()
{
  OUTLINED_FUNCTION_81();
  v1 = OUTLINED_FUNCTION_4_24(v0);
  OUTLINED_FUNCTION_34_8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  return sub_21B112F14();
}

uint64_t _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
  switch(*(a1 + 64))
  {
    case 1:
      if (*(a2 + 64) != 1)
      {
        return 0;
      }

      v30 = *a2;
      v31 = a2[1];
      v32 = a2[3];
      v33 = v30 == v4 && v3 == v31;
      if (!v33 && (sub_21B112D04() & 1) == 0)
      {
        return 0;
      }

      v34 = OUTLINED_FUNCTION_10_18();
      if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v34, v35) & 1) == 0)
      {
        return 0;
      }

      v28 = v6 | (v7 << 8);
      v29 = v32;
      goto LABEL_31;
    case 2:
      if (*(a2 + 64) != 2)
      {
        return 0;
      }

      v21 = *a2;
      v22 = a2[1];
      v23 = a2[3];
      v24 = v21 == v4 && v3 == v22;
      if (!v24 && (sub_21B112D04() & 1) == 0)
      {
        return 0;
      }

      v25 = OUTLINED_FUNCTION_10_18();
      return (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v25, v26) & 1) != 0 && (sub_21B109594(v6 | (v7 << 8), v23) & 1) != 0;
    case 3:
      if (*(a2 + 64) == 3)
      {
        v27 = *(a2 + 1);
        v38[0] = *a2;
        v38[1] = v27;
        v38[2] = *(a2 + 2);
        *&v38[3] = a2[6];
        *&v37[0] = v4;
        *(&v37[0] + 1) = v3;
        *&v37[1] = v5;
        BYTE8(v37[1]) = v6;
        *(&v37[1] + 9) = v7;
        HIBYTE(v37[1]) = BYTE6(v7);
        *(&v37[1] + 13) = WORD2(v7);
        v37[2] = *(a1 + 2);
        *&v37[3] = a1[6];
        if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
        {
          v28 = OUTLINED_FUNCTION_12_7();
LABEL_31:
          sub_21B0F02E0(v28, v29);
          if (v36)
          {
            return 1;
          }
        }
      }

      return 0;
    case 4:
      memcpy(__dst, (v4 + 24), 0x41uLL);
      if (*(a2 + 64) != 4)
      {
        return 0;
      }

      v14 = *(v4 + 96);
      OUTLINED_FUNCTION_25_7();
      memcpy(v15, v16, v17);
      sub_21B0F685C(v38, v37);
      v18 = OUTLINED_FUNCTION_52();
      if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19))
      {
        memcpy(v37, v38 + 8, 0x41uLL);
        v20 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(__dst, v37);
        sub_21B0F68B8(v38);
        if ((v20 & 1) != 0 && v14 == v39)
        {
          return 1;
        }
      }

      else
      {
        sub_21B0F68B8(v38);
      }

      return 0;
    default:
      if (*(a2 + 64))
      {
        return 0;
      }

      v8 = a2[1];
      v9 = a2[2];
      v10 = *a2;
      v11 = *(a2 + 24);
      v12 = *a1;

      return _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v3, v5, v6, v10, v8, v9, v11);
  }
}

void _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 40);
  switch(*(v1 + 64))
  {
    case 1:
      MEMORY[0x21CEEA150](1);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v13 = OUTLINED_FUNCTION_109();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v13, v14);
      goto LABEL_13;
    case 2:
      MEMORY[0x21CEEA150](2);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v8 = OUTLINED_FUNCTION_109();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v8, v9);
      OUTLINED_FUNCTION_21_8();

      sub_21B10BF04(v10, v11);
      break;
    case 3:
      MEMORY[0x21CEEA150](3);
      OUTLINED_FUNCTION_8_23();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      OUTLINED_FUNCTION_109();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      sub_21B112EE4();
      if (v2)
      {
        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      }

      sub_21B0F55EC();
LABEL_13:
      OUTLINED_FUNCTION_21_8();

      sub_21B0F45E4(v15, v16);
      break;
    case 4:
      memcpy(__dst, (*v1 + 16), 0x58uLL);
      MEMORY[0x21CEEA150](4);
      sub_21B0F685C(__dst, v18);
      OUTLINED_FUNCTION_52();
      sub_21B0F4590();
      memcpy(v18, &__dst[1], 0x41uLL);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
      MEMORY[0x21CEEA150](__dst[10]);
      sub_21B0F68B8(__dst);
      OUTLINED_FUNCTION_21_8();
      break;
    default:
      MEMORY[0x21CEEA150](0);
      OUTLINED_FUNCTION_8_23();
      OUTLINED_FUNCTION_21_8();

      _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v4, v5, v6);
      break;
  }
}

uint64_t sub_21B108130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_21B112EC4();
  v13 = OUTLINED_FUNCTION_22_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_21B112F14();
}

uint64_t sub_21B1081C8(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v2);
  return sub_21B112F14();
}

uint64_t sub_21B108220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_21B112EC4();
  a4(v6);
  return sub_21B112F14();
}

uint64_t static AvroPrimitive.string(_:)()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

void AvroValue.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2 | 0x1000000000000000;
  a4[2] = a3;
  OUTLINED_FUNCTION_0_32(a4);
}

uint64_t static AvroPrimitive.bytes(_:)()
{
  OUTLINED_FUNCTION_15_11();
  sub_21AF99818(v1, v2);
  return v0;
}

{
  OUTLINED_FUNCTION_81();
  sub_21AF99818(v1, v2);
  return v0;
}

void AvroValue.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2 | 0x2000000000000000;
  a3[2] = 0;
  OUTLINED_FUNCTION_0_32(a3);
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 | 0x1000000000000000;
  result = sub_21AF99818(a1, a2);
  *a4 = a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = a3;
  *(a4 + 24) = 6;
  *(a4 + 64) = 0;
  return result;
}

uint64_t static AvroValue.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 | 0x2000000000000000;
  result = sub_21AF99818(a1, a2);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = 0;
  *(a3 + 24) = 6;
  *(a3 + 64) = 0;
  return result;
}

void static AvroValue.null.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

uint64_t static AvroValue.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_35_8();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_41_6(v5);
  result = sub_21B0F685C(a1, v7);
  *a2 = v2;
  *(a2 + 64) = 4;
  return result;
}

uint64_t AvroValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result & 1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  return result;
}

void AvroValue.init(integerLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  OUTLINED_FUNCTION_0_32(a2);
}

void AvroValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  OUTLINED_FUNCTION_0_32(a1);
}

void AvroValue.init(stringLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  OUTLINED_FUNCTION_0_32(a3);
}

void AvroValue.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  OUTLINED_FUNCTION_0_32(a2);
}

uint64_t AvroValue.update(_:)(_BYTE *a1)
{
  v3 = v1;
  memcpy(__dst, v1, sizeof(__dst));
  v5 = AvroValue.schema.getter();
  v6 = sub_21B0EDF24(a1, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_46_4(v88);
    if (v89 >= 4u)
    {
      memcpy(v87, (v88[0] + 16), sizeof(v87));
      memcpy(v86, (v88[0] + 16), sizeof(v86));
      sub_21B10BD00(v88, &v75);
      sub_21B0F685C(v87, &v75);
      AvroUnion.update(_:)(a1);
      if (v2)
      {
        OUTLINED_FUNCTION_44_5(&v75, v12, v13, v14, v15, v16, v17, v18, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_21B0F68B8(&v75);
        return sub_21B10BD38(v88);
      }

      else
      {
        OUTLINED_FUNCTION_46_4(&v55);
        sub_21AFC54B0(&v55);
        OUTLINED_FUNCTION_44_5(&v64, v19, v20, v21, v22, v23, v24, v25, v41, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        OUTLINED_FUNCTION_35_8();
        v26 = swift_allocObject();
        OUTLINED_FUNCTION_44_5((v26 + 16), v27, v28, v29, v30, v31, v32, v33, v42, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        OUTLINED_FUNCTION_44_5(&v75, v34, v35, v36, v37, v38, v39, v40, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        sub_21B0F685C(&v64, &v44);
        sub_21B0F68B8(&v75);
        result = sub_21B10BD38(v88);
        *v3 = v26;
        v3[64] = 4;
      }
    }

    else
    {
      sub_21B1062D4(a1, v1);
      return sub_21B0F6800(a1, v87);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4(v90);
    v8 = AvroValue.schema.getter();
    v9 = AvroValue.schema.getter();
    v10 = sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0(&type metadata for SchemaMismatchError, v10);
    *v11 = v8;
    v11[1] = v9;
    return swift_willThrow();
  }

  return result;
}

void AvroUnion.update(_:)(_BYTE *a1)
{
  v2 = v1;
  if (a1[64] == 4)
  {
    OUTLINED_FUNCTION_25_7();
    memcpy(v4, v5, v6);
    sub_21B0F685C(__src, v21);
    v7 = OUTLINED_FUNCTION_12_7();
    if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8))
    {
      memcpy(v21, v2, sizeof(v21));
      sub_21B0F68B8(v21);
      memcpy(v2, __src, 0x58uLL);
      return;
    }

    sub_21B0F68B8(__src);
  }

  v9 = *v2;
  v10 = AvroValue.schema.getter();
  v11 = sub_21B10740C(v10, v9);
  v13 = v12;

  if (v13)
  {
LABEL_10:
    OUTLINED_FUNCTION_61();
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    v17 = v16 | 0x8000000000000000;

    v18 = AvroValue.schema.getter();
    v19 = sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0(&type metadata for SchemaMismatchError, v19);
    *v20 = v17;
    v20[1] = v18;
    swift_willThrow();
    return;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v9 + 16))
  {
    v14 = *(v9 + 8 * v11 + 32);

    v15 = sub_21B0EDF24(a1, v14);

    if (v15)
    {
      memcpy(__src, v2 + 1, 0x41uLL);
      sub_21B0F6800(a1, v21);
      sub_21AFC54B0(__src);
      memcpy(v2 + 1, a1, 0x41uLL);
      v2[10] = v11;
      return;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t AvroValue.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v13 = *(v9 + 24);
  switch(*(v9 + 64))
  {
    case 1:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v20 = OUTLINED_FUNCTION_19_9();
      AvroArray.description.getter(v20, v21, v22, v13);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v17 = OUTLINED_FUNCTION_19_9();
      AvroMap.description.getter(v17, v18, v19, v13);
LABEL_8:
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      return OUTLINED_FUNCTION_12_7();
    case 3:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v11, v10, v12, v13, *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), v32, v33, v34);
      AvroRecord.description.getter();
      goto LABEL_6;
    case 4:
      memcpy(__dst, (v11 + 16), sizeof(__dst));
      sub_21B0F6800(v9, &v24);
      sub_21B0F685C(__dst, &v24);
      AvroUnion.description.getter();
      sub_21B0F68B8(__dst);
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_43_6(a1, a2, a3, a4, a5, a6, a7, a8, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      v14 = OUTLINED_FUNCTION_19_9();
      AvroPrimitive.description.getter(v14, v15, v16, v13);
LABEL_6:
      sub_21AFC54B0(v9);
      return OUTLINED_FUNCTION_12_7();
  }
}

void AvroRecord.subscript.getter()
{
  OUTLINED_FUNCTION_36_7();
  v3 = 0;
  v4 = *(v0 + 48);
  v5 = *(v4 + 16);
  v6 = (v4 + 40);
  for (i = 32; ; i += 72)
  {
    if (v5 == v3)
    {
      OUTLINED_FUNCTION_18_9();
LABEL_15:
      OUTLINED_FUNCTION_14_14(v20, v21, v22);
      return;
    }

    v8 = *(v6 - 1) == v2 && *v6 == v1;
    if (v8 || (sub_21B112D04() & 1) != 0)
    {
      break;
    }

    ++v3;
    v6 += 3;
  }

  v9 = *(v0 + 56);
  if (v3 < *(v9 + 16))
  {
    memcpy(__dst, (v9 + i), 0x41uLL);
    if (LOBYTE(__dst[8]) == 4)
    {
      memcpy(v42, (__dst[0] + 24), 0x41uLL);
      OUTLINED_FUNCTION_6_27(v10, v11, v12, v13, v14, v15, v16, v17, v23, v25, v26, v28, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5]);
    }

    else
    {
      v27 = *&__dst[3];
      v30 = *&__dst[1];
      v24 = *&__dst[5];
      v18 = __dst;
      v19 = v42;
    }

    sub_21B0F6800(v18, v19);
    v22 = v24;
    v21 = v27;
    v20 = v30;
    goto LABEL_15;
  }

  __break(1u);
}

void static AvroRecord.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_81();
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    v2 = *(v1 + 56);
    v3 = *(v0 + 56);

    sub_21B0F02E0(v2, v3);
  }
}

uint64_t AvroRecord.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  sub_21B112EE4();
  if (v4)
  {
    OUTLINED_FUNCTION_35_2();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  sub_21B0F55EC();
  v5 = *(v2 + 56);

  return sub_21B0F45E4(a1, v5);
}

uint64_t AvroRecord.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  v2 = *(v1 + 40);
  v3 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  OUTLINED_FUNCTION_34_8(v3, v4, v5, v6, v7, v8, v9, v10, v20, v22[0]);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (v2)
  {
    sub_21B112EE4();
    v11 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    v11 = sub_21B112EE4();
  }

  OUTLINED_FUNCTION_22_8(v11, v12, v13, v14, v15, v16, v17, v18, v21, v22[0]);
  sub_21B0F55EC();
  sub_21B0F45E4(v22, *(v1 + 56));
  return sub_21B112F14();
}

uint64_t sub_21B108E90(uint64_t a1)
{
  sub_21B112EC4();
  AvroRecord.hash(into:)(v2);
  return sub_21B112F14();
}

uint64_t AvroRecord.description.getter()
{
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v1 = MEMORY[0x21CEE9880](*(v0 + 56), &type metadata for AvroValue);
  MEMORY[0x21CEE9770](v1);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  AvroRecordSchema.description.getter();
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v3;
}

uint64_t AvroArray.append(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (sub_21B0EDF24(a1, v4))
  {
    sub_21B105FB0();
    v5 = *(*(v1 + 24) + 16);
    sub_21B106054(v5);
    v6 = *(v1 + 24);
    *(v6 + 16) = v5 + 1;
    OUTLINED_FUNCTION_46_4((v6 + 72 * v5 + 32));
    *(v2 + 24) = v6;
    return sub_21B0F6800(a1, v11);
  }

  else
  {

    v8 = AvroValue.schema.getter();
    v9 = sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0(&type metadata for SchemaMismatchError, v9);
    *v10 = v4;
    v10[1] = v8;
    return swift_willThrow();
  }
}

uint64_t AvroArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 24);

  sub_21B1125A4();
  if (!v4)
  {
  }

  *(v3 + 24) = v5;
  return swift_willThrow();
}

unint64_t AvroArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = a2 + 72 * result;
  v7 = *(v4 + 32);
  v5 = v4 + 32;
  v6 = v7;
  v8 = *(v5 + 64);
  if (v8 == 4)
  {
    memmove(__dst, (v6 + 24), 0x41uLL);
  }

  else
  {
    __dst[0] = v6;
    v9 = *(v5 + 24);
    *&__dst[1] = *(v5 + 8);
    *&__dst[3] = v9;
    *&__dst[5] = *(v5 + 40);
    __dst[7] = *(v5 + 56);
    LOBYTE(__dst[8]) = v8;
  }

  sub_21B0F6800(__dst, &v10);
  return memcpy(a3, __dst, 0x41uLL);
}

uint64_t AvroArray.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v8 = MEMORY[0x21CEE9880](a4, &type metadata for AvroValue);
  MEMORY[0x21CEE9770](v8);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  AvroArraySchema.description.getter(a1, a2, a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v10;
}

uint64_t sub_21B109388()
{
  OUTLINED_FUNCTION_15_11();

  return v0;
}

void AvroMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a6 + 16))
  {
    v7 = sub_21AF98B58(a1, a2);
    if (v8)
    {
      memcpy(__dst, (*(a6 + 56) + 72 * v7), 0x41uLL);
      if (LOBYTE(__dst[8]) == 4)
      {
        memcpy(v41, (__dst[0] + 24), 0x41uLL);
        OUTLINED_FUNCTION_6_27(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v25, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41[0], v41[1], v41[2], v41[3], v41[4], v41[5]);
      }

      else
      {
        v26 = *&__dst[3];
        v29 = *&__dst[1];
        v23 = *&__dst[5];
        v17 = __dst;
        v18 = v41;
      }

      sub_21B0F6800(v17, v18);
      v21 = v23;
      v20 = v26;
      v19 = v29;
    }

    else
    {
      OUTLINED_FUNCTION_18_9();
      v19 = 0uLL;
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_9();
  }

  OUTLINED_FUNCTION_14_14(v19, v20, v21);
}

uint64_t sub_21B1094EC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  v11 = a1 == a5 && a2 == a6;
  if (!v11 && (sub_21B112D04() & 1) == 0 || (_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a7) & 1) == 0)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_7();

  return a9(v12);
}

uint64_t sub_21B109594(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v393 = a1 + 64;
  OUTLINED_FUNCTION_2_6();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v398 = v9;
  v403 = v4;
  v408 = v2;
  if (v7)
  {
LABEL_4:
    v10 = __clz(__rbit64(v7));
    v413 = (v7 - 1) & v7;
    goto LABEL_10;
  }

  while (2)
  {
    v11 = v3;
    do
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_334:

        goto LABEL_341;
      }

      if (v3 >= v9)
      {
        return 1;
      }

      v12 = *(v393 + 8 * v3);
      ++v11;
    }

    while (!v12);
    v10 = __clz(__rbit64(v12));
    v413 = (v12 - 1) & v12;
LABEL_10:
    v13 = v10 | (v3 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    memcpy(__dst, (*(v4 + 56) + 72 * v13), 0x41uLL);
    v441 = *&__dst[48];
    v454 = *&__dst[16];
    v418 = *&__dst[32];
    v428 = *__dst;
    v17 = __dst[64];

    sub_21B0F6800(__dst, &v470);
    if (!v16)
    {
      return 1;
    }

    v483 = v428;
    v484 = v454;
    v485 = v418;
    v486 = v441;
    v487 = v17;
    v18 = sub_21AF98B58(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_331;
    }

    v21 = memcpy(v482, (*(v2 + 56) + 72 * v18), 0x41uLL);
    v29 = *v482;
    v28 = v482[1];
    v30 = v482[2];
    v31 = v482[4];
    v32 = v482[5];
    v33 = v482[2] >> 61;
    switch(LOBYTE(v482[8]))
    {
      case 1:
        if (v487 != 1)
        {
          goto LABEL_331;
        }

        *&v454 = v482[3];
        v68 = *(&v483 + 1);
        v67 = v483;
        v70 = *(&v484 + 1);
        v69 = v484;
        if (v482[0] != v483 || v482[1] != *(&v483 + 1))
        {
          v21 = sub_21B112D04();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v72 = v69 >> 61;
        switch(v33)
        {
          case 1:
            v145 = v72 == 1;
            goto LABEL_157;
          case 2:
            v145 = v72 == 2;
LABEL_157:
            v2 = v408;
            if (!v145)
            {
              goto LABEL_331;
            }

            v162 = OUTLINED_FUNCTION_12_16();
            if (!v53 || v163 != v20)
            {
              v162 = OUTLINED_FUNCTION_45_4(v162);
              if ((v162 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v171 = OUTLINED_FUNCTION_1_30(v162, v163, v164, v165, v166, v167, v168, v169, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v171, v172);

            LOBYTE(v18) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30);

            goto LABEL_165;
          case 3:
            if (v72 != 3)
            {
              goto LABEL_331;
            }

            *&v441 = v70;
            v146 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v147 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v148 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v149 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v150 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            *&v418 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            *&v428 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v151 = v69 & 0x1FFFFFFFFFFFFFFFLL;
            v152 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v153 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v155 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v154 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
            v156 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v157 = *((v69 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
            v158 = *(v151 + 64);
            if (v146 != v152 || v147 != v153)
            {
              v146 = sub_21B112D04();
              if ((v146 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v148 != v155 || v149 != v154)
            {
              OUTLINED_FUNCTION_26_7();
              v146 = sub_21B112D04();
              if ((v146 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            if (v150)
            {
              if (!v157)
              {
                goto LABEL_331;
              }

              v146 = v418;
              if (v418 != v156 || v150 != v157)
              {
                v146 = sub_21B112D04();
                if ((v146 & 1) == 0)
                {
                  goto LABEL_331;
                }
              }
            }

            else if (v157)
            {
              goto LABEL_331;
            }

            v214 = OUTLINED_FUNCTION_1_30(v146, v147, v152, v68, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v214, v215);

            LOBYTE(v18) = sub_21B0F1B10(v433, v158);

            v2 = v408;
            v70 = v446;
            if ((v18 & 1) == 0)
            {
              goto LABEL_341;
            }

LABEL_283:
            sub_21B0F02E0(v457, v70);
            OUTLINED_FUNCTION_40_5();
            sub_21AFC54B0(v299);
            sub_21AFC54B0(v482);
            if ((v18 & 1) == 0)
            {
              return 0;
            }

            break;
          case 4:
            v2 = v408;
            if (v72 != 4)
            {
              goto LABEL_331;
            }

            v124 = OUTLINED_FUNCTION_1_30(v21, v28, v67, v68, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v124, v125);

            v126 = OUTLINED_FUNCTION_52();
            LOBYTE(v18) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v126, v127);
            goto LABEL_165;
          default:
            v2 = v408;
            if (v72)
            {
              goto LABEL_331;
            }

            v73 = 1819047278;
            v74 = *(v30 + 16);
            v75 = 0xE400000000000000;
            v76 = 1819047278;
            switch(v74)
            {
              case 1:
                v75 = 0xE700000000000000;
                v76 = 0x6E61656C6F6F62;
                break;
              case 2:
                v75 = 0xE300000000000000;
                v76 = 7630441;
                break;
              case 3:
                v76 = 1735290732;
                break;
              case 4:
                v75 = 0xE500000000000000;
                v76 = 0x74616F6C66;
                break;
              case 5:
                v75 = 0xE600000000000000;
                v76 = 0x656C62756F64;
                break;
              case 6:
                v75 = 0xE600000000000000;
                v76 = 0x676E69727473;
                break;
              case 7:
                v75 = 0xE500000000000000;
                v76 = 0x7365747962;
                break;
              default:
                break;
            }

            v285 = 0xE400000000000000;
            switch(*(v69 + 16))
            {
              case 1:
                v285 = 0xE700000000000000;
                v73 = 0x6E61656C6F6F62;
                break;
              case 2:
                v285 = 0xE300000000000000;
                v73 = 7630441;
                break;
              case 3:
                v73 = 1735290732;
                break;
              case 4:
                v285 = 0xE500000000000000;
                v73 = 0x74616F6C66;
                break;
              case 5:
                v285 = 0xE600000000000000;
                v73 = 0x656C62756F64;
                break;
              case 6:
                v285 = 0xE600000000000000;
                v73 = 0x676E69727473;
                break;
              case 7:
                v285 = 0xE500000000000000;
                v73 = 0x7365747962;
                break;
              default:
                break;
            }

            if (v76 == v73 && v75 == v285)
            {
              v297 = OUTLINED_FUNCTION_1_30(v76, v28, v73, v68, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v297, v298);
            }

            else
            {
              OUTLINED_FUNCTION_26_7();
              v287 = sub_21B112D04();
              LOBYTE(v18) = v287;
              v295 = OUTLINED_FUNCTION_1_30(v287, v288, v289, v290, v291, v292, v293, v294, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v295, v296);

LABEL_165:

              if ((v18 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

            goto LABEL_283;
        }

        goto LABEL_327;
      case 2:
        if (v487 != 2)
        {
          goto LABEL_331;
        }

        v49 = v482[3];
        v51 = *(&v483 + 1);
        v50 = v483;
        v52 = v484;
        v53 = v482[0] == v483 && v482[1] == *(&v483 + 1);
        if (!v53)
        {
          v21 = sub_21B112D04();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        v54 = v52 >> 61;
        switch(v33)
        {
          case 1:
            v123 = v54 == 1;
            goto LABEL_124;
          case 2:
            v123 = v54 == 2;
LABEL_124:
            v2 = v408;
            if (!v123)
            {
              goto LABEL_331;
            }

            v132 = OUTLINED_FUNCTION_12_16();
            if (!v53 || v133 != v20)
            {
              v132 = OUTLINED_FUNCTION_45_4(v132);
              if ((v132 & 1) == 0)
              {
                goto LABEL_331;
              }
            }

            v141 = OUTLINED_FUNCTION_1_30(v132, v133, v134, v135, v136, v137, v138, v139, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v141, v142);

            LOBYTE(v18) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30);

            goto LABEL_132;
          case 3:
            v128 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v488 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v489 = v128;
            v490 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v491 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v2 = v408;
            if (v54 != 3)
            {
              goto LABEL_331;
            }

            v129 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v492[0] = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v492[1] = v129;
            v492[2] = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
            v493 = *((v52 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
            v130 = OUTLINED_FUNCTION_1_30(v21, v28, v50, v51, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v130, v131);
            sub_21AFC5454(v492, __dst);
            LOBYTE(v18) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
            sub_21B0CAA60(v492);
            if ((v18 & 1) == 0)
            {
              goto LABEL_341;
            }

            goto LABEL_133;
          case 4:
            v2 = v408;
            if (v54 != 4)
            {
              goto LABEL_331;
            }

            v119 = OUTLINED_FUNCTION_1_30(v21, v28, v50, v51, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
            sub_21B0F6800(v119, v120);

            v121 = OUTLINED_FUNCTION_52();
            LOBYTE(v18) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v121, v122);
            goto LABEL_132;
          default:
            v2 = v408;
            if (v54)
            {
              goto LABEL_331;
            }

            v55 = 1819047278;
            v56 = *(v30 + 16);
            v57 = 0xE400000000000000;
            switch(v56)
            {
              case 1:
                v57 = 0xE700000000000000;
                v55 = 0x6E61656C6F6F62;
                break;
              case 2:
                v57 = 0xE300000000000000;
                v55 = 7630441;
                break;
              case 3:
                v55 = 1735290732;
                break;
              case 4:
                v57 = 0xE500000000000000;
                v55 = 0x74616F6C66;
                break;
              case 5:
                v57 = 0xE600000000000000;
                v55 = 0x656C62756F64;
                break;
              case 6:
                v57 = 0xE600000000000000;
                v55 = 0x676E69727473;
                break;
              case 7:
                v57 = 0xE500000000000000;
                v55 = 0x7365747962;
                break;
              default:
                break;
            }

            v264 = sub_21B0F3574(*(v52 + 16));
            if (v55 == v264 && v57 == v265)
            {
              v283 = OUTLINED_FUNCTION_1_30(v264, v265, v266, v267, v268, v269, v270, v271, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v283, v284);
            }

            else
            {
              OUTLINED_FUNCTION_35_2();
              OUTLINED_FUNCTION_26_7();
              v273 = sub_21B112D04();
              LOBYTE(v18) = v273;
              v281 = OUTLINED_FUNCTION_1_30(v273, v274, v275, v276, v277, v278, v279, v280, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v281, v282);

LABEL_132:

              if ((v18 & 1) == 0)
              {
                goto LABEL_341;
              }
            }

LABEL_133:
            sub_21B109594(v49, *(&v52 + 1));
            OUTLINED_FUNCTION_40_5();
            sub_21AFC54B0(v143);
            v144 = v482;
            break;
        }

        goto LABEL_134;
      case 3:
        v383 = v482[7];
        if (v487 != 3)
        {
          goto LABEL_331;
        }

        *&v428 = v482[6];
        v58 = v482[3];
        v60 = *(&v483 + 1);
        v59 = v483;
        v62 = *(&v484 + 1);
        v61 = v484;
        v63 = v485;
        v377 = *(&v486 + 1);
        *&v418 = v486;
        if (v482[0] != v483 || v482[1] != *(&v483 + 1))
        {
          v21 = sub_21B112D04();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v30 != v61 || v58 != v62)
        {
          v21 = sub_21B112D04();
          if ((v21 & 1) == 0)
          {
            goto LABEL_331;
          }
        }

        if (v32)
        {
          if (!*(&v63 + 1))
          {
            goto LABEL_331;
          }

          if (v31 != v63 || v32 != *(&v63 + 1))
          {
            v21 = sub_21B112D04();
            if ((v21 & 1) == 0)
            {
              goto LABEL_331;
            }
          }
        }

        else if (*(&v63 + 1))
        {
          goto LABEL_331;
        }

        v77 = v428;
        v78 = *(v428 + 16);
        v79 = v418;
        if (v78 != *(v418 + 16))
        {
          goto LABEL_331;
        }

        if (!v78 || v428 == v418)
        {
          v116 = OUTLINED_FUNCTION_1_30(v21, v28, v59, v60, v24, v25, v26, v27, v363, v368, v377, v383, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v116, v117);
LABEL_113:
          sub_21B0F02E0(v382, v376);
          OUTLINED_FUNCTION_40_5();
          sub_21AFC54B0(v118);
          sub_21AFC54B0(v482);
          v2 = v408;
          if ((v61 & 1) == 0)
          {
            return 0;
          }

LABEL_327:
          v4 = v403;
LABEL_328:
          v9 = v398;
          v7 = v413;
          if (v413)
          {
            goto LABEL_4;
          }

          continue;
        }

        result = OUTLINED_FUNCTION_67();
        if ((result & 1) == 0)
        {
          v359 = OUTLINED_FUNCTION_1_30(result, v81, v82, v83, v84, v85, v86, v87, v363, v368, v377, v383, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v359, v360);
          result = sub_21B1055A4(0, v77);
          __break(1u);
          goto LABEL_345;
        }

        if (!*(v428 + 16))
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v88 = *(v428 + 32);
        v89 = *(v428 + 40);
        v90 = *(v428 + 48);
        result = OUTLINED_FUNCTION_67();
        if ((result & 1) == 0)
        {
LABEL_346:
          v361 = OUTLINED_FUNCTION_1_30(result, v81, v82, v83, v84, v85, v86, v87, v363, v368, v377, v383, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
          sub_21B0F6800(v361, v362);

          result = sub_21B1055A4(0, v79);
          __break(1u);
          goto LABEL_347;
        }

        if (!*(v418 + 16))
        {
LABEL_347:
          __break(1u);
          return result;
        }

        v91 = *(v418 + 32);
        v92 = *(v418 + 48);
        if (v88 != v91 || v89 != *(v418 + 40))
        {
          result = OUTLINED_FUNCTION_45_4(v88);
          if ((result & 1) == 0)
          {
LABEL_331:
            v358 = &v483;
            goto LABEL_342;
          }
        }

        v94 = OUTLINED_FUNCTION_1_30(result, v81, v91, v83, v84, v85, v86, v87, v363, v368, v377, v383, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
        sub_21B0F6800(v94, v95);
        v388 = v78;
        v96 = (v430 + 72);
        v97 = (v79 + 72);
        v98 = 1;
        while (2)
        {

          v99 = v92 >> 61;
          v456 = v96;
          v443 = v97;
          switch(v90 >> 61)
          {
            case 1uLL:
              if (v99 == 1)
              {
                goto LABEL_94;
              }

              goto LABEL_332;
            case 2uLL:
              if (v99 != 2)
              {
                goto LABEL_332;
              }

LABEL_94:
              v61 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v110 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v111 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              v112 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v113 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == v110 && *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == v111;
              if (!v113 && (sub_21B112D04() & 1) == 0)
              {
                goto LABEL_334;
              }

              LOBYTE(v61) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v61, v112);

              goto LABEL_100;
            case 3uLL:
              v108 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v494 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v495 = v108;
              v496 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v497 = *((v90 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              if (v99 != 3)
              {
                goto LABEL_332;
              }

              v109 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
              v498[0] = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v498[1] = v109;
              v498[2] = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
              v499 = *((v92 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
              sub_21AFC5454(v498, __dst);
              LOBYTE(v61) = static AvroRecordSchema.__derived_struct_equals(_:_:)();
              sub_21B0CAA60(v498);

              goto LABEL_100;
            case 4uLL:
              if (v99 != 4)
              {
                goto LABEL_332;
              }

              v106 = OUTLINED_FUNCTION_109();
              LOBYTE(v61) = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v107);

LABEL_100:

              if (v61)
              {
                goto LABEL_101;
              }

              goto LABEL_341;
            default:
              if (v99)
              {
LABEL_332:

                goto LABEL_341;
              }

              v100 = *(v90 + 16);
              v101 = *(v92 + 16);
              v61 = sub_21B0F3574(v100);
              v103 = v102;
              if (v61 == sub_21B0F3574(v101) && v103 == v104)
              {
              }

              else
              {
                OUTLINED_FUNCTION_26_7();
                LOBYTE(v61) = sub_21B112D04();

                if ((v61 & 1) == 0)
                {
                  goto LABEL_341;
                }
              }

LABEL_101:
              if (v78 == v98)
              {
                goto LABEL_113;
              }

              if (v98 < v78)
              {
                if (v98 >= *(v430 + 16))
                {
                  goto LABEL_336;
                }

                if (v98 >= *(v419 + 16))
                {
                  goto LABEL_337;
                }

                v114 = *(v456 - 2);
                v90 = *v456;
                v92 = *v443;
                v115 = v114 == *(v443 - 2) && *(v456 - 1) == *(v443 - 1);
                if (!v115 && (OUTLINED_FUNCTION_45_4(v114) & 1) == 0)
                {
                  goto LABEL_341;
                }

                v96 = v456 + 3;
                v97 = v443 + 3;
                ++v98;
                continue;
              }

              __break(1u);
LABEL_336:
              __break(1u);
LABEL_337:
              __break(1u);
LABEL_338:
              sub_21B0F68B8(&v467);
LABEL_339:
              sub_21B0F68B8(&v470);
LABEL_340:
              sub_21B0F68B8(__dst);
LABEL_341:
              sub_21AFC54B0(&v483);
              v358 = v482;
LABEL_342:
              sub_21AFC54B0(v358);
              return 0;
          }
        }

      case 4:
        if (v487 != 4)
        {
          goto LABEL_331;
        }

        v36 = *(v482[0] + 32);
        v37 = *(v482[0] + 40);
        v442 = *(v482[0] + 48);
        v429 = *(v482[0] + 56);
        v38 = *(v482[0] + 72);
        v39 = *(v482[0] + 80);
        v40 = *(v482[0] + 88);
        v455 = *(v482[0] + 96);
        v41 = *(v482[0] + 24);
        OUTLINED_FUNCTION_25_7();
        memcpy(v42, v43, v44);
        sub_21B0F6800(v482, &v470);
        sub_21B0F685C(__dst, &v470);
        v45 = OUTLINED_FUNCTION_109();
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v45, v46) & 1) == 0)
        {
          goto LABEL_340;
        }

        switch(v40)
        {
          case 1:
            v2 = v408;
            if (v480 != 1)
            {
              goto LABEL_340;
            }

            v195 = *&__dst[24];
            v194 = *&__dst[32];
            if (*&v41 != *&__dst[8] || v36 != *&__dst[16])
            {
              OUTLINED_FUNCTION_10_18();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v195) & 1) == 0)
            {
              goto LABEL_340;
            }

            sub_21B0F02E0(v442, v194);
            goto LABEL_192;
          case 2:
            v2 = v408;
            if (v480 != 2)
            {
              goto LABEL_340;
            }

            v188 = *&__dst[24];
            v187 = *&__dst[32];
            if (*&v41 != *&__dst[8] || v36 != *&__dst[16])
            {
              OUTLINED_FUNCTION_10_18();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_340;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v188) & 1) == 0)
            {
              goto LABEL_340;
            }

            v190 = sub_21B109594(v442, v187);
            goto LABEL_192;
          case 3:
            v2 = v408;
            if (v480 != 3)
            {
              goto LABEL_340;
            }

            v191 = *&__dst[64];
            v500 = v41;
            v501 = v36;
            v502 = v37;
            v503 = v442;
            v504 = v429;
            v505 = v38;
            v506 = *&__dst[8];
            v507 = *&__dst[24];
            v508 = *&__dst[32];
            v509 = *&__dst[40];
            v510 = *&__dst[56];
            if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
            {
              goto LABEL_340;
            }

            sub_21B0F02E0(v39, v191);
            v193 = v192;
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            if ((v193 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_305;
          case 4:
            if (v480 != 4)
            {
              goto LABEL_340;
            }

            v174 = *(*&v41 + 32);
            v173 = *(*&v41 + 40);
            v175 = *(*&v41 + 48);
            v431 = *(*&v41 + 56);
            v177 = *(*&v41 + 72);
            v176 = *(*&v41 + 80);
            v178 = *(*&v41 + 88);
            v444 = *(*&v41 + 96);
            v181 = *&v41 + 16;
            v179 = *(*&v41 + 16);
            v180 = *(v181 + 8);
            OUTLINED_FUNCTION_25_7();
            memcpy(v182, v183, v184);
            v185 = v470;
            sub_21B0F685C(&v470, &v467);
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v179, v185))
            {
              switch(v178)
              {
                case 1:
                  if (v477 != 1)
                  {
                    goto LABEL_339;
                  }

                  v262 = v472;
                  v261 = v473;
                  v263 = v180 == v471 && v174 == *(&v471 + 1);
                  if (!v263 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v408;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v173, v262) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  sub_21B0F02E0(v175, v261);
                  goto LABEL_247;
                case 2:
                  if (v477 != 2)
                  {
                    goto LABEL_339;
                  }

                  v255 = v472;
                  v254 = v473;
                  v256 = v180 == v471 && v174 == *(&v471 + 1);
                  if (!v256 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v2 = v408;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v173, v255) & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  v257 = sub_21B109594(v175, v254);
LABEL_247:
                  v186 = v257;
                  sub_21B0F68B8(&v470);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v483);
                  sub_21AFC54B0(v482);
                  goto LABEL_248;
                case 3:
                  if (v477 != 3)
                  {
                    goto LABEL_339;
                  }

                  v258 = v476;
                  v511 = v180;
                  v512 = v174;
                  v513 = v173;
                  v514 = v175;
                  v515 = v431;
                  v516 = v177;
                  v517 = v471;
                  v518 = v472;
                  v519 = v473;
                  v520 = v474;
                  v521 = v475;
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_339;
                  }

                  sub_21B0F02E0(v176, v258);
                  v260 = v259;
                  sub_21B0F68B8(&v470);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v483);
                  sub_21AFC54B0(v482);
                  v2 = v408;
                  if ((v260 & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                case 4:
                  memcpy(v522, (v180 + 24), 0x41uLL);
                  if (v477 != 4)
                  {
                    goto LABEL_339;
                  }

                  v247 = *(v180 + 96);
                  OUTLINED_FUNCTION_25_7();
                  memcpy(v248, v249, v250);
                  sub_21B0F685C(&v467, v466);
                  v251 = OUTLINED_FUNCTION_52();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v251, v252) & 1) == 0)
                  {
                    goto LABEL_338;
                  }

                  memcpy(v523, v468, 0x41uLL);
                  v253 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v522, v523);
                  sub_21B0F68B8(&v467);
                  sub_21B0F68B8(&v470);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v483);
                  sub_21AFC54B0(v482);
                  v2 = v408;
                  if ((v253 & 1) == 0 || v247 != v469)
                  {
                    return 0;
                  }

                  goto LABEL_249;
                default:
                  if (v477)
                  {
                    goto LABEL_339;
                  }

                  v186 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v180, v174, v173, v175, v471, *(&v471 + 1), v472, v473);
                  sub_21B0F68B8(&v470);
                  sub_21B0F68B8(__dst);
                  sub_21AFC54B0(&v483);
                  sub_21AFC54B0(v482);
                  v2 = v408;
LABEL_248:
                  if ((v186 & 1) == 0)
                  {
                    return 0;
                  }

LABEL_249:
                  if (v444 != v478)
                  {
                    return 0;
                  }

                  goto LABEL_305;
              }
            }

            goto LABEL_339;
          default:
            v2 = v408;
            if (v480)
            {
              goto LABEL_340;
            }

            break;
        }

        v47 = *&__dst[8];
        v48 = __dst[32];
        switch(v442)
        {
          case 1:
            if (__dst[32] == 1)
            {
              goto LABEL_295;
            }

            goto LABEL_340;
          case 2:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            if (v48 != 2)
            {
              return 0;
            }

            v300 = *&v41 == v47;
            goto LABEL_296;
          case 3:
            if (__dst[32] != 3)
            {
              goto LABEL_340;
            }

LABEL_295:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            v300 = LODWORD(v41) == v47;
            goto LABEL_296;
          case 4:
            if (__dst[32] != 4)
            {
              goto LABEL_340;
            }

            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            v300 = v41 == *&v47;
LABEL_296:
            if (!v300)
            {
              return 0;
            }

            goto LABEL_305;
          case 5:
            if (__dst[32] != 5)
            {
              goto LABEL_340;
            }

            if (*&v41 == *&__dst[8] && v36 == *&__dst[16])
            {
LABEL_304:
              sub_21B0F68B8(__dst);
              sub_21AFC54B0(&v483);
              sub_21AFC54B0(v482);
            }

            else
            {
              OUTLINED_FUNCTION_10_18();
              v190 = sub_21B112D04();
LABEL_192:
              v197 = v190;
              sub_21B0F68B8(__dst);
              sub_21AFC54B0(&v483);
              sub_21AFC54B0(v482);
              if ((v197 & 1) == 0)
              {
                return 0;
              }
            }

LABEL_305:
            if (v455 != v481)
            {
              return 0;
            }

            break;
          case 6:
            if (__dst[32] != 6)
            {
              goto LABEL_340;
            }

            v302 = OUTLINED_FUNCTION_10_18();
            v190 = sub_21B10B43C(v302, v303, v304, v47, v305);
            goto LABEL_192;
          case 7:
            if (__dst[32] != 7 || *&__dst[8] | *&__dst[24] | *&__dst[16])
            {
              goto LABEL_340;
            }

            goto LABEL_304;
          default:
            sub_21B0F68B8(__dst);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            if (v48 || ((v47 ^ LOBYTE(v41)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_305;
        }

        goto LABEL_327;
      default:
        if (v487)
        {
          goto LABEL_331;
        }

        v34 = *(&v483 + 1);
        v35 = *&v483;
        LODWORD(v18) = BYTE8(v484);
        v2 = v408;
        switch(LOBYTE(v482[3]))
        {
          case 1:
            if (BYTE8(v484) == 1)
            {
              goto LABEL_199;
            }

            goto LABEL_331;
          case 2:
            sub_21AFC54B0(&v483);
            if (v18 != 2)
            {
              return 0;
            }

            v198 = *&v29 == *&v35;
            goto LABEL_325;
          case 3:
            if (BYTE8(v484) != 3)
            {
              goto LABEL_331;
            }

LABEL_199:
            sub_21AFC54B0(&v483);
            v198 = *&v29 == *&v35;
            goto LABEL_325;
          case 4:
            if (BYTE8(v484) != 4)
            {
              goto LABEL_331;
            }

            sub_21AFC54B0(&v483);
            v198 = v29 == v35;
            goto LABEL_325;
          case 5:
            if (BYTE8(v484) != 5)
            {
              goto LABEL_331;
            }

            if (v482[0] == v483 && v482[1] == *(&v483 + 1))
            {
LABEL_211:
              sub_21AFC54B0(&v483);
              v4 = v403;
              goto LABEL_328;
            }

            sub_21B112D04();
            OUTLINED_FUNCTION_40_5();
LABEL_134:
            sub_21AFC54B0(v144);
            if ((v18 & 1) == 0)
            {
              return 0;
            }

            break;
          case 6:
            if (BYTE8(v484) != 6)
            {
              goto LABEL_331;
            }

            if (((v482[1] >> 60) & 3) != 0)
            {
              v200 = v482[1] & 0xCFFFFFFFFFFFFFFFLL;
              v201 = OUTLINED_FUNCTION_1_30(v21, v482[1], v22, v23, v24, v25, v26, v27, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v203 = sub_21B0F6800(v201, v202);
              v211 = OUTLINED_FUNCTION_1_30(v203, v204, v205, v206, v207, v208, v209, v210, v364, v369, v378, v384, v389, v394, v399, v404, v409, v414, v420, v424, v432, v437, v445, v450, v458, v462, *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v211, v212);
              v213 = v370;
              goto LABEL_314;
            }

            v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
            v472 = v216;
            v473 = sub_21B0F690C();
            v470 = *&v29;
            v217 = __swift_project_boxed_opaque_existential_0(&v470, v216);
            v225 = *(*v217 + 16);
            if (v225)
            {
              if (v225 <= 0xE)
              {
                v318 = OUTLINED_FUNCTION_1_30(v217, v218, v219, v220, v221, v222, v223, v224, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                v320 = sub_21B0F6800(v318, v319);
                v328 = OUTLINED_FUNCTION_1_30(v320, v321, v322, v323, v324, v325, v326, v327, v367, v374, v381, v387, v392, v397, v402, v407, v412, v417, v423, v427, v436, v440, v449, v453, v461, v465, *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v328, v329);
                v29 = COERCE_DOUBLE(sub_21B110DA4());
                v213 = v375 & 0xF00000000000000 | v330 & 0xFFFFFFFFFFFFFFLL;
                v200 = v213;
                goto LABEL_313;
              }

              sub_21B110C34();
              v226 = swift_allocObject();
              v234 = OUTLINED_FUNCTION_1_30(v226, v227, v228, v229, v230, v231, v232, v233, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              if (v225 >= v236)
              {
                v331 = sub_21B0F6800(v234, v235);
                v339 = OUTLINED_FUNCTION_1_30(v331, v332, v333, v334, v335, v336, v337, v338, v365, v371, v379, v385, v390, v395, v400, v405, v410, v415, v421, v425, v434, v438, v447, v451, v459, v463, *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v339, v340);
                OUTLINED_FUNCTION_10_18();
                v341 = sub_21B110BF4();
                sub_21B110E04();
                v29 = COERCE_DOUBLE(swift_allocObject());
                *(*&v29 + 16) = 0;
                *(*&v29 + 24) = v225;
                v200 = v341 | 0x8000000000000000;
              }

              else
              {
                v237 = sub_21B0F6800(v234, v235);
                v245 = OUTLINED_FUNCTION_1_30(v237, v238, v239, v240, v241, v242, v243, v244, v365, v371, v379, v385, v390, v395, v400, v405, v410, v415, v421, v425, v434, v438, v447, v451, v459, v463, *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
                sub_21B0F6800(v245, v246);
                OUTLINED_FUNCTION_10_18();
                *&v29 = v225 << 32;
                v200 = sub_21B110BF4() | 0x4000000000000000;
              }
            }

            else
            {
              v306 = OUTLINED_FUNCTION_1_30(v217, v218, v219, v220, v221, v222, v223, v224, v363, v368, v376, v382, v388, v393, v398, v403, v408, v413, v418, *(&v418 + 1), v428, *(&v428 + 1), v441, *(&v441 + 1), v454, *(&v454 + 1), *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              v308 = sub_21B0F6800(v306, v307);
              v316 = OUTLINED_FUNCTION_1_30(v308, v309, v310, v311, v312, v313, v314, v315, v366, v373, v380, v386, v391, v396, v401, v406, v411, v416, v422, v426, v435, v439, v448, v452, v460, v464, *v466, *&v466[8], *&v466[16], *&v466[24], *&v466[32], *&v466[40], *&v466[48], *&v466[56], *&v466[64], *&v466[72], *&v466[80], v467, v468[0], v468[1], v468[2], v468[3], v468[4], v468[5], v468[6], v468[7], v468[8], v469, v470, v471, *(&v471 + 1), v472, v473, v474, *(&v474 + 1), v475, v476, v477, v478, *__dst, *&__dst[8], *&__dst[16], *&__dst[24]);
              sub_21B0F6800(v316, v317);
              v29 = 0.0;
              v200 = 0xC000000000000000;
            }

            v213 = v372;
LABEL_313:
            __swift_destroy_boxed_opaque_existential_0(&v470);
LABEL_314:
            v342 = sub_21B110EB4();
            sub_21AF99728(*&v29, v200);
            v368 = v213;
            if (((v34 >> 60) & 3) != 0)
            {
              v343 = v34 & 0xCFFFFFFFFFFFFFFFLL;
              v344 = OUTLINED_FUNCTION_33_8();
              sub_21B0F6800(v344, v345);
            }

            else
            {
              v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
              v472 = v346;
              v473 = sub_21B0F690C();
              v470 = *&v35;
              v347 = *(*__swift_project_boxed_opaque_existential_0(&v470, v346) + 16);
              if (v347)
              {
                if (v347 <= 0xE)
                {
                  v353 = OUTLINED_FUNCTION_33_8();
                  sub_21B0F6800(v353, v354);
                  v35 = COERCE_DOUBLE(sub_21B110DA4());
                  v343 = v363 & 0xF00000000000000 | v355 & 0xFFFFFFFFFFFFFFLL;
                  v363 = v343;
                }

                else
                {
                  sub_21B110C34();
                  swift_allocObject();
                  v348 = OUTLINED_FUNCTION_33_8();
                  if (v347 >= v350)
                  {
                    sub_21B0F6800(v348, v349);
                    OUTLINED_FUNCTION_35_2();
                    v356 = sub_21B110BF4();
                    sub_21B110E04();
                    v35 = COERCE_DOUBLE(swift_allocObject());
                    *(*&v35 + 16) = 0;
                    *(*&v35 + 24) = v347;
                    v343 = v356 | 0x8000000000000000;
                  }

                  else
                  {
                    sub_21B0F6800(v348, v349);
                    OUTLINED_FUNCTION_35_2();
                    *&v35 = v347 << 32;
                    v343 = sub_21B110BF4() | 0x4000000000000000;
                  }
                }
              }

              else
              {
                v351 = OUTLINED_FUNCTION_33_8();
                sub_21B0F6800(v351, v352);
                v35 = 0.0;
                v343 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_0(&v470);
            }

            v357 = sub_21B110EB4();
            sub_21AF99728(*&v35, v343);
            sub_21AFC54B0(&v483);
            sub_21AFC54B0(v482);
            v198 = v342 == v357;
LABEL_325:
            if (!v198)
            {
              return 0;
            }

            goto LABEL_327;
          case 7:
            if (BYTE8(v484) != 7 || v483 | v484 | *(&v483 + 1))
            {
              goto LABEL_331;
            }

            goto LABEL_211;
          default:
            sub_21AFC54B0(&v483);
            if (v18 || ((LOBYTE(v35) ^ LOBYTE(v29)) & 1) != 0)
            {
              return 0;
            }

            goto LABEL_327;
        }

        goto LABEL_327;
    }
  }
}

uint64_t sub_21B10AE88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a4);

  return a6(a1, a5);
}

uint64_t sub_21B10AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_4_24(a1);
  v6 = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v14 = OUTLINED_FUNCTION_22_8(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28);
  v16 = _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
  v24 = OUTLINED_FUNCTION_34_8(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  a5(v24);
  return sub_21B112F14();
}

uint64_t sub_21B10AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_21B112EC4();
  v13 = OUTLINED_FUNCTION_22_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_21B112F14();
}

uint64_t AvroMap.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_23_8();
  v7 = sub_21B112314();
  MEMORY[0x21CEE9770](v7);

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_29_8();
  AvroMapSchema.description.getter(v5, v4, a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v9;
}

uint64_t _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
      goto LABEL_18;
    case 2:
      if (a8 != 2)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
LABEL_18:
      v8 = v10;
      return v8 & 1;
    case 3:
      if (a8 != 3)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
      goto LABEL_10;
    case 4:
      if (a8 != 4)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
LABEL_10:
      v8 = v9;
      return v8 & 1;
    case 5:
      if (a8 != 5)
      {
        goto LABEL_29;
      }

      if (a1 != a5 || a2 != a6)
      {
        return OUTLINED_FUNCTION_11_13(a1);
      }

LABEL_31:
      v8 = 1;
      return v8 & 1;
    case 6:
      if (a8 != 6)
      {
        goto LABEL_29;
      }

      return sub_21B10B43C(a1, a2, a3, a5, a6);
    case 7:
      if (a8 == 7 && !(a5 | a7 | a6))
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    default:
      if (a8)
      {
LABEL_29:
        v8 = 0;
      }

      else
      {
        v8 = a5 ^ a1 ^ 1;
      }

      return v8 & 1;
  }
}

uint64_t _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  switch(v4)
  {
    case 1:
      MEMORY[0x21CEEA150](2);
      return sub_21B112EF4();
    case 2:
      MEMORY[0x21CEEA150](3);
      v6 = v3;
      goto LABEL_7;
    case 3:
      MEMORY[0x21CEEA150](4);
      return sub_21B112EF4();
    case 4:
      MEMORY[0x21CEEA150](5);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

LABEL_7:
      result = MEMORY[0x21CEEA180](v6);
      break;
    case 5:
      MEMORY[0x21CEEA150](6);
      OUTLINED_FUNCTION_7();

      result = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
    case 6:
      MEMORY[0x21CEEA150](7);
      OUTLINED_FUNCTION_7();

      result = sub_21B10B510();
      break;
    case 7:
      result = MEMORY[0x21CEEA150](0);
      break;
    default:
      MEMORY[0x21CEEA150](1);
      result = sub_21B112EE4();
      break;
  }

  return result;
}

uint64_t sub_21B10B3CC(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3) != 0)
  {
    v2 = OUTLINED_FUNCTION_52();
    sub_21AF99818(v2, v3);
  }

  else
  {

    sub_21B10D004(v4);
  }

  OUTLINED_FUNCTION_52();
  v5 = sub_21B110EB4();
  v6 = OUTLINED_FUNCTION_52();
  sub_21AF99728(v6, v7);
  return v5;
}

BOOL sub_21B10B43C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (((a2 >> 60) & 3) != 0)
  {
    v7 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    sub_21AF99818(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {

    v6 = sub_21B10D004(v8);
    v7 = v9;
  }

  v10 = sub_21B110EB4();
  sub_21AF99728(v6, v7);
  if (((a5 >> 60) & 3) != 0)
  {
    v11 = OUTLINED_FUNCTION_52();
    sub_21AF99818(v11, v12);
  }

  else
  {

    sub_21B10D004(v13);
  }

  OUTLINED_FUNCTION_52();
  v14 = sub_21B110EB4();
  v15 = OUTLINED_FUNCTION_52();
  sub_21AF99728(v15, v16);
  return v10 == v14;
}

uint64_t sub_21B10B510()
{
  OUTLINED_FUNCTION_81();
  if (((v0 >> 60) & 3) != 0)
  {
    v1 = OUTLINED_FUNCTION_109();
    sub_21AF99818(v1, v2);
  }

  else
  {

    sub_21B10D004(v3);
  }

  OUTLINED_FUNCTION_109();
  v4 = sub_21B110EB4();
  v5 = OUTLINED_FUNCTION_109();
  sub_21AF99728(v5, v6);
  return MEMORY[0x21CEEA150](v4);
}

uint64_t sub_21B10B594(uint64_t a1)
{
  sub_21B112EC4();
  sub_21B10B510();
  return sub_21B112F14();
}

uint64_t sub_21B10B60C()
{
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_4_24(v2);
  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v4, v1, v0);
  return sub_21B112F14();
}

uint64_t sub_21B10B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_21B112EC4();
  v13 = OUTLINED_FUNCTION_22_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_21B112F14();
}

uint64_t AvroPrimitive.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1;
  result = 7104878;
  switch(a4)
  {
    case 1:
    case 2:
      result = sub_21B112B84();
      break;
    case 3:
      result = sub_21B112694();
      break;
    case 4:
      result = sub_21B112684();
      break;
    case 5:
      v9 = OUTLINED_FUNCTION_52();
      sub_21B0F69CC(v9, v10, v11, 5);
      result = OUTLINED_FUNCTION_52();
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_52();
      sub_21B0F69CC(v6, v7, v8, 6);
      result = sub_21B112454();
      break;
    case 7:
      return result;
    default:
      if (v4)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
  }

  return result;
}

void AvroUnion.init(schema:value:)(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = AvroValue.schema.getter();
  v7 = sub_21B10740C(v6, a1);
  v9 = v8;

  if (v9)
  {
LABEL_6:
    OUTLINED_FUNCTION_61();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = v12 | 0x8000000000000000;
    v14 = AvroValue.schema.getter();
    v15 = sub_21B10BCAC();
    OUTLINED_FUNCTION_4_0(&type metadata for SchemaMismatchError, v15);
    *v16 = v13;
    v16[1] = v14;
    swift_willThrow();
    sub_21AFC54B0(a2);
    return;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(a1 + 16))
  {
    v10 = *(a1 + 8 * v7 + 32);

    v11 = sub_21B0EDF24(a2, v10);

    if (v11)
    {
      *a3 = a1;
      memcpy(a3 + 1, a2, 0x41uLL);
      a3[10] = v7;
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t AvroUnion.hash(into:)(uint64_t a1)
{
  sub_21B0F4590();
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
  return MEMORY[0x21CEEA150](*(v1 + 80));
}

uint64_t AvroUnion.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24(a1);
  sub_21B0F4590();
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v3);
  MEMORY[0x21CEEA150](*(v1 + 80));
  return sub_21B112F14();
}

uint64_t sub_21B10BA9C(uint64_t a1)
{
  sub_21B112EC4();
  AvroUnion.hash(into:)(v2);
  return sub_21B112F14();
}

unint64_t AvroUnion.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_21B112904();

  OUTLINED_FUNCTION_32_0();
  v1 = memcpy(__dst, v0 + 1, 0x41uLL);
  v9 = AvroValue.description.getter(v1, v2, v3, v4, v5, v6, v7, v8);
  MEMORY[0x21CEE9770](v9);

  MEMORY[0x21CEE9770](0x3A7865646E69202CLL, 0xE900000000000020);
  v10 = sub_21B112B84();
  MEMORY[0x21CEE9770](v10);

  v11 = OUTLINED_FUNCTION_2_30();
  MEMORY[0x21CEE9770](v11, 0xEA0000000000203ALL);
  v12 = MEMORY[0x21CEE9880](*v0, &type metadata for AvroSchema);
  MEMORY[0x21CEE9770](v12);

  MEMORY[0x21CEE9770](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_21B10BC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B10BD68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_21B10BC58()
{
  result = qword_27CD47B00;
  if (!qword_27CD47B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B00);
  }

  return result;
}

unint64_t sub_21B10BCAC()
{
  result = qword_27CD47B08;
  if (!qword_27CD47B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B08);
  }

  return result;
}

uint64_t sub_21B10BD68(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47AE0, &qword_21B12D8E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_21B105B00((a4 + 32), v8, (v10 + 32));
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B10BE70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_21B110DA4();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CEE8030]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CEE8050]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_21B10BF04(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_2_6();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (v7)
  {
    while (1)
    {
      v13 = v12;
LABEL_6:
      v14 = __clz(__rbit64(v7)) | (v13 << 6);
      v15 = *(*(a2 + 48) + 16 * v14 + 8);
      memcpy(__dst, (*(a2 + 56) + 72 * v14), 0x41uLL);
      v19 = *&__dst[48];
      v20 = *&__dst[16];
      v17 = *&__dst[32];
      v18 = *__dst;
      v16 = __dst[64];

      sub_21B0F6800(__dst, __src);
      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      *__src = v18;
      *&__src[16] = v20;
      *&__src[32] = v17;
      *&__src[48] = v19;
      __src[64] = v16;
      memcpy(__dst, a1, sizeof(__dst));
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

      memcpy(v24, __src, sizeof(v24));
      sub_21B0F6800(__src, v21);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(__dst);
      sub_21AFC54B0(__src);
      sub_21AFC54B0(__src);
      result = sub_21B112F14();
      v11 ^= result;
      v12 = v13;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x21CEEA150](v11);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_9;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21B10C0C0()
{
  result = qword_27CD47B10;
  if (!qword_27CD47B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B10);
  }

  return result;
}

unint64_t sub_21B10C118()
{
  result = qword_27CD47B18;
  if (!qword_27CD47B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B18);
  }

  return result;
}

unint64_t sub_21B10C170()
{
  result = qword_27CD47B20;
  if (!qword_27CD47B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B20);
  }

  return result;
}

unint64_t sub_21B10C1C8()
{
  result = qword_27CD47B28;
  if (!qword_27CD47B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B28);
  }

  return result;
}

unint64_t sub_21B10C244()
{
  result = qword_27CD47B30;
  if (!qword_27CD47B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B30);
  }

  return result;
}

unint64_t sub_21B10C2A8()
{
  result = qword_27CD47B38;
  if (!qword_27CD47B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B38);
  }

  return result;
}

unint64_t sub_21B10C318()
{
  result = qword_27CD47B40;
  if (!qword_27CD47B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B40);
  }

  return result;
}

unint64_t sub_21B10C37C()
{
  result = qword_27CD47B48;
  if (!qword_27CD47B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B48);
  }

  return result;
}

unint64_t sub_21B10C3D4()
{
  result = qword_27CD47B50;
  if (!qword_27CD47B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B50);
  }

  return result;
}

unint64_t sub_21B10C42C()
{
  result = qword_27CD47B58;
  if (!qword_27CD47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B58);
  }

  return result;
}

unint64_t sub_21B10C484()
{
  result = qword_27CD47B60;
  if (!qword_27CD47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B60);
  }

  return result;
}

unint64_t sub_21B10C4DC()
{
  result = qword_27CD47B68;
  if (!qword_27CD47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B68);
  }

  return result;
}

uint64_t sub_21B10C530(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 16))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_21B10C584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21B10C5EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_32_6(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_32_6(result, a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftAvro0B9PrimitiveV5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B10C688(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21B10C6C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B10C730(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_32_6(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_32_6(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21B10C79C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21B10C7DC(uint64_t result, int a2, int a3)
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

uint64_t sub_21B10C83C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 7)
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

uint64_t sub_21B10C87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B10C8C4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 7;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_21B10C8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
      {
        v2 = -1;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = *a1 + 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B10C92C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = xmmword_21B12D900;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_21B10C9A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 65))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 4)
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

uint64_t sub_21B10C9E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_21B10CA58()
{
  result = qword_27CD47B70;
  if (!qword_27CD47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B70);
  }

  return result;
}

unint64_t sub_21B10CAB0()
{
  result = qword_27CD47B78;
  if (!qword_27CD47B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B78);
  }

  return result;
}

unint64_t sub_21B10CB08()
{
  result = qword_27CD47B80;
  if (!qword_27CD47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B80);
  }

  return result;
}

unint64_t sub_21B10CB5C()
{
  result = qword_27CD47B88;
  if (!qword_27CD47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B88);
  }

  return result;
}

void OUTLINED_FUNCTION_14_14(__n128 a1, __n128 a2, __n128 a3)
{
  *v3 = v4;
  *(v3 + 8) = a1;
  *(v3 + 24) = a2;
  *(v3 + 40) = a3;
  *(v3 + 56) = v6;
  *(v3 + 64) = v5;
}

uint64_t OUTLINED_FUNCTION_20_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a1[2] = v21;
  a1[3] = v22;
  a1[4] = v20;
  a18 = v18;

  return sub_21B0F6800(v19, &a9);
}

void OUTLINED_FUNCTION_29_8()
{

  JUMPOUT(0x21CEE9770);
}

void *OUTLINED_FUNCTION_41_6(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return sub_21B0F6800(v19, va);
}

void *OUTLINED_FUNCTION_44_5(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va1, a51);
  va_start(__srca, a51);
  __src = va_arg(va1, void);
  v55 = va_arg(va1, void);
  v56 = va_arg(va1, void);
  v57 = va_arg(va1, void);
  v58 = va_arg(va1, void);
  v59 = va_arg(va1, void);
  v60 = va_arg(va1, void);
  v61 = va_arg(va1, void);
  v62 = va_arg(va1, void);
  v63 = va_arg(va1, void);
  v64 = va_arg(va1, void);

  return memcpy(a1, __srca, 0x58uLL);
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1)
{

  return sub_21B112D04();
}

void *OUTLINED_FUNCTION_46_4(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t AvroPrimitive.get<A>()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  switch(a4)
  {
    case 5:
      sub_21B0F69CC(a1, a2, a3, 5);
      goto LABEL_8;
    case 6:
      sub_21B0F69CC(a1, a2, a3, 6);
      if (((a2 >> 60) & 3) == 0)
      {
        sub_21B10D004(a1);
      }

      goto LABEL_8;
    case 7:

      return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
    default:
LABEL_8:
      v11 = swift_dynamicCast();
      return __swift_storeEnumTagSinglePayload(a6, v11 ^ 1u, 1, a5);
  }
}

uint64_t sub_21B10D004(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
  v8 = sub_21B0F690C();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v6, v7);
  sub_21B10BE70(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t AvroSchema.canHold(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v6 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
    if (v6)
    {

      return 1;
    }

    else
    {
      v9 = a1;
      MEMORY[0x28223BE20](v6);
      v8[2] = &v9;
      v7 = sub_21B0F3F14(sub_21B0F6A24, v8, v5);
    }

    return v7;
  }

  else
  {

    return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
  }
}

BOOL AvroSchema.canHold(all:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = a2 & 0x1FFFFFFFFFFFFFFFLL; v3; --v3)
  {
    v6 = *v4;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *(i + 16);

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);
      if (v9)
      {
      }

      else
      {
        v13 = v6;
        MEMORY[0x28223BE20](v9);
        v12[2] = &v13;
        v10 = sub_21B0F3F14(sub_21B10D448, v12, v8);

        if (!v10)
        {
          return v3 == 0;
        }
      }
    }

    else
    {

      v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);

      if ((v7 & 1) == 0)
      {
        return v3 == 0;
      }
    }

    ++v4;
  }

  return v3 == 0;
}

BOOL AvroSchema.canHold(nullable:)(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47908, &qword_21B12C2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113DB0;
  *(inited + 32) = a1;
  v5 = qword_27CD47840;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 40) = static AvroSchema.null;

  v6 = AvroSchema.canHold(all:)(inited, a2);
  swift_setDeallocating();
  sub_21B10D3E0();
  return v6;
}

uint64_t sub_21B10D3E0()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21B10D464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_21B110760(v5, v6, v7);
    v4 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

uint64_t AvroSchemaEncoder.OutputFormatting.indentation.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*AvroSchemaEncoder.OutputFormatting.indentation.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B10D560;
}

uint64_t *sub_21B10D560(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t AvroSchemaEncoder.encodeBytes(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchemaEncoder();
  result = sub_21B10D668(a1);
  if (!v2)
  {
    sub_21B10D774(result, a2);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_21B10D668(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_21B10E8E8();
  swift_beginAccess();
  v4 = *(v3[6] + 16);
  v5 = v3[2];

  sub_21B10E9AC(a1);
  sub_21B10F7F0(v3, v4, v5);

  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    a1 = v3[5];
  }

  return a1;
}

void sub_21B10D774(uint64_t a1, uint64_t a2)
{
  sub_21B10E5F8(a1);
  sub_21B1059A8();
  v5 = v4;
  sub_21B10D464(a1, &v111);
  v6 = a2;
  v115 = v111;
  v7 = v112;
  v8 = v113;
  v9 = *(&v111 + 1);
  v109 = a2;
  v110 = v111;
  v107 = 0;
  v108 = v111 + 32;
  v106 = -a2;
  LOBYTE(v10) = v114;
  while (1)
  {
    if (v10 == 0xFF)
    {
LABEL_117:
      sub_21B1106F8(&v115);
      return;
    }

    v11 = *(v110 + 16);
    v12 = v7;
    v13 = v8;
    v14 = v107;
LABEL_4:
    v15 = v14;
    if (v9 == v11)
    {
      v7 = 0;
      v8 = 0;
      v10 = 255;
      v9 = v11;
      goto LABEL_9;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v110 + 16))
    {
      goto LABEL_121;
    }

    v16 = v9 + 1;
    v17 = v108 + 24 * v9;
    v10 = *(v17 + 16);
    v18 = *v17;
    v19 = *(v17 + 8);
    sub_21B110760(*v17, v19, *(v17 + 16));
    v8 = v19;
    v7 = v18;
    v6 = v109;
    v9 = v16;
LABEL_9:
    switch(v10)
    {
      case 1:
        if (v10 == 1 || v10 == 255)
        {
          if (v12)
          {
            v20 = 125;
          }

          else
          {
            v20 = 93;
          }

          v21 = *(v5 + 16);
          v22 = v21 + 1;
          if (v21 >= *(v5 + 24) >> 1)
          {
            v24 = v8;
            v25 = v7;
            sub_21B1059A8();
            v8 = v24;
            v7 = v25;
            v6 = v109;
            v5 = v26;
          }

          *(v5 + 16) = v22;
          *(v5 + v21 + 32) = v20;
          if (v6 < 1)
          {
            continue;
          }

          if (v10 == 255)
          {
            goto LABEL_117;
          }

          v23 = v15 - v6;
          if (__OFSUB__(v15, v6))
          {
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v23 < 0)
          {
            goto LABEL_119;
          }

          if ((v21 + 2) > *(v5 + 24) >> 1)
          {
            v27 = v8;
            v28 = v7;
            sub_21B1059A8();
            v8 = v27;
            v7 = v28;
            v6 = v109;
            v5 = v29;
          }

          v14 = 0;
          *(v5 + 16) = v21 + 2;
          *(v5 + v22 + 32) = 10;
          v12 = v7;
          v13 = v8;
          if (v23)
          {
            v54 = v21 + 34;
            v55 = v106 + v15;
            do
            {
              if (v54 - 32 >= *(v5 + 24) >> 1)
              {
                v56 = v8;
                v57 = v7;
                sub_21B1059A8();
                v8 = v56;
                v7 = v57;
                v6 = v109;
                v5 = v58;
              }

              *(v5 + 16) = v54 - 31;
              *(v5 + v54++) = 32;
              --v55;
            }

            while (v55);
            goto LABEL_116;
          }

          goto LABEL_4;
        }

        if (v12)
        {
          v59 = 125;
        }

        else
        {
          v59 = 93;
        }

        v60 = *(v5 + 16);
        v61 = *(v5 + 24) >> 1;
        v62 = v60 + 1;
        if (v61 <= v60)
        {
          v90 = v8;
          v91 = v7;
          sub_21B1059A8();
          v8 = v90;
          v7 = v91;
          v6 = v109;
          v5 = v92;
          v61 = *(v92 + 24) >> 1;
        }

        *(v5 + 16) = v62;
        *(v5 + v60 + 32) = v59;
        v63 = v60 + 2;
        if (v61 < (v60 + 2))
        {
          v93 = v8;
          v94 = v7;
          sub_21B1059A8();
          v8 = v93;
          v7 = v94;
          v6 = v109;
          v5 = v95;
        }

        *(v5 + 16) = v63;
        *(v5 + v62 + 32) = 44;
        v107 = v15;
        if (v6 >= 1)
        {
          if ((v60 + 3) > *(v5 + 24) >> 1)
          {
            v100 = v8;
            v101 = v7;
            sub_21B1059A8();
            v8 = v100;
            v7 = v101;
            v6 = v109;
            v5 = v102;
          }

          *(v5 + 16) = v60 + 3;
          *(v5 + v63 + 32) = 10;
          if (v15 < 0)
          {
            goto LABEL_125;
          }

          v107 = 0;
          if (!v15)
          {
            continue;
          }

          v64 = v60 + 35;
          v65 = v15;
          do
          {
            if (v64 - 32 >= *(v5 + 24) >> 1)
            {
              v66 = v8;
              v67 = v7;
              sub_21B1059A8();
              v8 = v66;
              v7 = v67;
              v6 = v109;
              v5 = v68;
            }

            *(v5 + 16) = v64 - 31;
            *(v5 + v64++) = 32;
            --v65;
          }

          while (v65);
LABEL_78:
          v107 = v15;
        }

        break;
      case 2:
        if (v10 && v10 != 3)
        {
          goto LABEL_128;
        }

        v47 = v8;
        v48 = v7;
        v49 = *(v5 + 16);
        if (v49 >= *(v5 + 24) >> 1)
        {
          sub_21B1059A8();
          v5 = v78;
        }

        *(v5 + 16) = v49 + 1;
        *(v5 + v49 + 32) = 34;
        sub_21B10E51C(v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21B1059A8();
          v5 = v79;
        }

        v8 = v47;
        v50 = *(v5 + 16);
        v51 = *(v5 + 24) >> 1;
        v52 = v50 + 1;
        v6 = v109;
        if (v51 <= v50)
        {
          sub_21B1059A8();
          v8 = v47;
          v6 = v109;
          v5 = v80;
          v51 = *(v80 + 24) >> 1;
        }

        *(v5 + 16) = v52;
        *(v5 + v50 + 32) = 34;
        v53 = v50 + 2;
        if (v51 < (v50 + 2))
        {
          sub_21B1059A8();
          v8 = v47;
          v6 = v109;
          v5 = v81;
        }

        *(v5 + 16) = v53;
        *(v5 + v52 + 32) = 58;
        v107 = v15;
        v7 = v48;
        if (v6 < 1)
        {
          continue;
        }

        if ((v50 + 3) > *(v5 + 24) >> 1)
        {
          sub_21B1059A8();
          v8 = v47;
          v7 = v48;
          v6 = v109;
          v5 = v82;
        }

        *(v5 + 16) = v50 + 3;
        *(v5 + v53 + 32) = 32;
        goto LABEL_78;
      case 3:
        v30 = (v10 - 2) < 2 || v10 == 0;
        v104 = v7;
        v105 = v8;
        if (v30)
        {
          v31 = *(v5 + 16);
          if (v31 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v5 = v86;
          }

          *(v5 + 16) = v31 + 1;
          *(v5 + v31 + 32) = 34;
          sub_21B10E51C(v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B1059A8();
            v5 = v87;
          }

          v8 = v105;
          v32 = *(v5 + 16);
          v33 = *(v5 + 24) >> 1;
          v34 = v32 + 1;
          v6 = v109;
          if (v33 <= v32)
          {
            sub_21B1059A8();
            v8 = v105;
            v6 = v109;
            v5 = v88;
            v33 = *(v88 + 24) >> 1;
          }

          *(v5 + 16) = v34;
          *(v5 + v32 + 32) = 34;
          v35 = v32 + 2;
          if (v33 < (v32 + 2))
          {
            sub_21B1059A8();
            v8 = v105;
            v6 = v109;
            v5 = v89;
          }

          *(v5 + 16) = v35;
          *(v5 + v34 + 32) = 44;
          v107 = v15;
          v7 = v104;
          if (v6 >= 1)
          {
            if ((v32 + 3) > *(v5 + 24) >> 1)
            {
              sub_21B1059A8();
              v7 = v104;
              v8 = v105;
              v6 = v109;
              v5 = v99;
            }

            *(v5 + 16) = v32 + 3;
            *(v5 + v35 + 32) = 10;
            if (v15 < 0)
            {
              goto LABEL_124;
            }

            v107 = 0;
            if (v15)
            {
              v36 = v32 + 35;
              v37 = v15;
              do
              {
                if (v36 - 32 >= *(v5 + 24) >> 1)
                {
                  sub_21B1059A8();
                  v7 = v104;
                  v8 = v105;
                  v6 = v109;
                  v5 = v38;
                }

                *(v5 + 16) = v36 - 31;
                *(v5 + v36++) = 32;
                --v37;
              }

              while (v37);
              goto LABEL_78;
            }
          }
        }

        else
        {
          v69 = *(v5 + 16);
          if (v69 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v5 = v96;
          }

          *(v5 + 16) = v69 + 1;
          *(v5 + v69 + 32) = 34;
          sub_21B10E51C(v12, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B1059A8();
            v5 = v97;
          }

          v70 = *(v5 + 16);
          v71 = v70 + 1;
          v6 = v109;
          v7 = v104;
          v8 = v105;
          if (v70 >= *(v5 + 24) >> 1)
          {
            sub_21B1059A8();
            v7 = v104;
            v8 = v105;
            v6 = v109;
            v5 = v98;
          }

          *(v5 + 16) = v71;
          *(v5 + v70 + 32) = 34;
          v107 = v15;
          if (v6 >= 1)
          {
            v23 = v15 - v6;
            if (__OFSUB__(v15, v6))
            {
              goto LABEL_126;
            }

            if (v23 < 0)
            {
              goto LABEL_127;
            }

            if ((v70 + 2) > *(v5 + 24) >> 1)
            {
              sub_21B1059A8();
              v7 = v104;
              v8 = v105;
              v6 = v109;
              v5 = v103;
            }

            v107 = 0;
            *(v5 + 16) = v70 + 2;
            *(v5 + v71 + 32) = 10;
            if (v23)
            {
              v72 = v70 + 34;
              v73 = v23;
              do
              {
                if (v72 - 32 >= *(v5 + 24) >> 1)
                {
                  sub_21B1059A8();
                  v7 = v104;
                  v8 = v105;
                  v6 = v109;
                  v5 = v74;
                }

                *(v5 + 16) = v72 - 31;
                *(v5 + v72++) = 32;
                --v73;
              }

              while (v73);
LABEL_116:
              v107 = v23;
            }
          }
        }

        continue;
      default:
        if (v12)
        {
          v39 = 123;
        }

        else
        {
          v39 = 91;
        }

        v40 = *(v5 + 16);
        v41 = v40 + 1;
        if (v40 >= *(v5 + 24) >> 1)
        {
          v75 = v8;
          v76 = v7;
          sub_21B1059A8();
          v8 = v75;
          v7 = v76;
          v6 = v109;
          v5 = v77;
        }

        *(v5 + 16) = v41;
        *(v5 + v40 + 32) = v39;
        v107 = v15;
        if (v6 < 1)
        {
          continue;
        }

        v23 = v15 + v6;
        if (__OFADD__(v15, v6))
        {
          goto LABEL_122;
        }

        if ((v40 + 2) > *(v5 + 24) >> 1)
        {
          v83 = v8;
          v84 = v7;
          sub_21B1059A8();
          v8 = v83;
          v7 = v84;
          v6 = v109;
          v5 = v85;
        }

        *(v5 + 16) = v40 + 2;
        *(v5 + v41 + 32) = 10;
        if (v23 < 0)
        {
          goto LABEL_123;
        }

        v107 = 0;
        if (!v23)
        {
          continue;
        }

        v42 = v40 + 34;
        v43 = v23;
        do
        {
          if (v42 - 32 >= *(v5 + 24) >> 1)
          {
            v44 = v8;
            v45 = v7;
            sub_21B1059A8();
            v8 = v44;
            v7 = v45;
            v6 = v109;
            v5 = v46;
          }

          *(v5 + 16) = v42 - 31;
          *(v5 + v42++) = 32;
          --v43;
        }

        while (v43);
        goto LABEL_116;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
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
}

uint64_t AvroSchemaEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SchemaEncoder();
  v6 = a1;
  v7 = v5;
  v8 = sub_21B10D668(v6);
  if (!v2)
  {
    sub_21B10D774(v8, a2);

    v7 = sub_21B1124B4();
  }

  return v7;
}

uint64_t _s9SwiftAvro0B13SchemaEncoderV16OutputFormattingV9hashValueSivg_0(uint64_t a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21B10E3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_21B112EC4();
  a4(v8, v6);
  return sub_21B112F14();
}

unint64_t sub_21B10E3F4()
{
  result = qword_27CD47B90;
  if (!qword_27CD47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B90);
  }

  return result;
}

unint64_t sub_21B10E44C()
{
  result = qword_27CD47B98;
  if (!qword_27CD47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47B98);
  }

  return result;
}

void sub_21B10E4B8(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_21B1057C8();
    v3 = v4;
  }

  *v1 = v3;
}

uint64_t sub_21B10E51C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = sub_21B112514();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = *(*v2 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_21B110690(result);
  v6 = *v2;
  result = sub_21B112914();
  if ((v7 & 1) == 0)
  {
    v8 = result;

    if (v8 >= v3)
    {
      if (v8 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v9 = *(v6 + 16);
      v10 = __OFADD__(v9, v8);
      v11 = v9 + v8;
      if (!v10)
      {
        *(v6 + 16) = v11;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B10E5F8(uint64_t result)
{
  v1 = 0;
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      return v1;
    }

    v4 = *v2;
    if (v4 >= 2)
    {
      v6 = *(v2 - 2);
      v7 = *(v2 - 1);
      if (v4 == 2)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = sub_21B112514();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 3;
        if (__OFADD__(result, 3))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = sub_21B112514();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 2;
        if (__OFADD__(result, 2))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = 1;
    }

    v2 += 24;
    v8 = __OFADD__(v1, v5);
    v1 += v5;
  }

  while (!v8);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_21B10E6B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      result = a6 == 1 && ((a4 ^ a1) & 1) == 0;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    case 3:
      if (a6 == 3)
      {
LABEL_6:
        if (a1 == a4 && a2 == a5)
        {
          result = 1;
        }

        else
        {
          result = sub_21B112D04();
        }
      }

      else
      {
LABEL_12:
        result = 0;
      }

      break;
    default:
      if (a6)
      {
        result = 0;
      }

      else
      {
        result = ((a4 ^ a1) & 1) == 0;
      }

      break;
  }

  return result;
}

uint64_t sub_21B10E754(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  switch(a4)
  {
    case 1:
      v5 = 1;
      goto LABEL_9;
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      v6 = 3;
LABEL_5:
      MEMORY[0x21CEEA150](v6);

      result = _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
    default:
      v5 = 0;
LABEL_9:
      MEMORY[0x21CEEA150](v5);
      result = MEMORY[0x21CEEA150](v4 & 1);
      break;
  }

  return result;
}

uint64_t sub_21B10E7FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21B112EC4();
  sub_21B10E754(v7, a1, a2, a3);
  return sub_21B112F14();
}

uint64_t sub_21B10E874(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_21B112EC4();
  sub_21B10E754(v6, v2, v3, v4);
  return sub_21B112F14();
}

void *sub_21B10E8E8()
{
  v1 = v0;
  sub_21B112964();
  v2 = MEMORY[0x277D84F90];
  v1[3] = sub_21B112334();
  v1[4] = sub_21B112334();
  v1[6] = v2;
  v1[2] = v2;
  v1[5] = v2;
  swift_beginAccess();
  sub_21B10E4B8(64);
  swift_endAccess();
  return v1;
}

uint64_t sub_21B10EA30(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v3 = *(v1[6] + 16);
  v4 = v1[2];

  a1(v5);
  sub_21B10F7F0(v1, v3, v4);
}

uint64_t sub_21B10EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v6 = *(*(v3 + 40) + 16);
  sub_21B10603C(v6);
  OUTLINED_FUNCTION_2_31(v6 + 1);
  v9 = v8 + v6 * v7;
  *(v9 + 32) = xmmword_21B12B800;
  *(v9 + 48) = 0;
  *(v3 + 40) = v8;
  swift_endAccess();
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F80();
  v10 = *(*(v3 + 48) + 16);
  sub_21B106024(v10);
  v11 = *(v3 + 48);
  *(v11 + 16) = v10 + 1;
  *(v11 + v10 + 32) = 1;
  *(v3 + 48) = v11;
  swift_endAccess();
  type metadata accessor for KeyedContainer(0, a2, a3, v12);

  swift_getWitnessTable();
  return sub_21B112B64();
}

uint64_t sub_21B10EC08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v4 = *(v1[5] + 16);
  sub_21B10603C(v4);
  v5 = v1[5];
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v1[5] = v5;
  swift_endAccess();
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F80();
  v7 = *(v1[6] + 16);
  sub_21B106024(v7);
  v8 = v1[6];
  *(v8 + 16) = v7 + 1;
  *(v8 + v7 + 32) = 0;
  v1[6] = v8;
  swift_endAccess();
  v9 = v1[2];
  a1[3] = &unk_282C98628;
  a1[4] = sub_21B11054C();
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v2;
}

uint64_t sub_21B10ED04@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = &unk_282C986B0;
  a1[4] = sub_21B10FCA4();
  *a1 = v3;
  a1[1] = v1;
}

uint64_t sub_21B10ED64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();

  sub_21B105F98();
  v5 = *(*(v2 + 40) + 16);
  sub_21B10603C(v5);
  v6 = *(v2 + 40);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 3;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_21B10EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_21B112F54();
  v10 = v9;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v11 = *(*(v5 + 40) + 16);
  sub_21B10603C(v11);
  OUTLINED_FUNCTION_2_31(v11 + 1);
  v14 = v13 + v11 * v12;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  OUTLINED_FUNCTION_3_30(v14, v16);
  return sub_21B10ED64(a1, a2);
}

uint64_t sub_21B10EEB4(unint64_t a1, void *a2)
{
  if (a1 >> 61 == 3)
  {
    v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7[1] = v5;
    v7[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    sub_21AFC5454(v7, v6);
    sub_21B10F508(v7);
    return sub_21B0CAA60(v7);
  }

  else if (a1 >> 61)
  {
    v6[3] = *a2;
    v6[4] = sub_21B110934();
    v6[0] = a2;

    AvroSchema.encode(to:)(v6, a1);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    return sub_21B10F318(*(a1 + 16));
  }
}

void sub_21B10EFA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v19 = *a2;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = *(v8 + 16);
  v15(&v19 - v16, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (v15)(v14, a1, a3);
    if (swift_dynamicCast())
    {
      sub_21B10F318(v20);
      return;
    }

    (v15)(v11, a1, a3);
    if (swift_dynamicCast())
    {
      v26[0] = v20;
      v26[1] = v21;
      v26[2] = v22;
      v27 = v23;
      sub_21B10F508(v26);
      sub_21B0CAA60(v26);
      return;
    }

    *(&v21 + 1) = v19;
    *&v22 = sub_21B110934();
    *&v20 = a2;

    sub_21B112354();
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(&v20);
    return;
  }

  if (v20 >> 61 != 3)
  {
    if (!(v20 >> 61))
    {
      v17 = *(v20 + 16);

      sub_21B10F318(v17);
LABEL_11:

      return;
    }

    *(&v21 + 1) = v19;
    *&v22 = sub_21B110934();
    *&v20 = a2;

    sub_21B112354();

    goto LABEL_14;
  }

  v18 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v24[0] = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v24[1] = v18;
  v24[2] = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v25 = *((v20 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

  sub_21AFC5454(v24, &v20);
  sub_21B10F508(v24);
  if (v4)
  {
    sub_21B0CAA60(v24);
    goto LABEL_11;
  }

  sub_21B0CAA60(v24);
}

uint64_t sub_21B10F318(char a1)
{
  swift_beginAccess();
  if (*(*(v1 + 40) + 16))
  {
    v3 = sub_21B0F6BC8(a1);
    v5 = v4;
    swift_beginAccess();
    sub_21B105F98();
    v6 = *(*(v1 + 40) + 16);
    sub_21B10603C(v6);
    v7 = *(v1 + 40);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 24 * v6;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = 3;
  }

  else
  {
    swift_beginAccess();
    sub_21B105F98();
    v10 = *(*(v1 + 40) + 16);
    sub_21B10603C(v10);
    v11 = *(v1 + 40);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 24 * v10;
    *(v12 + 32) = xmmword_21B12B800;
    *(v12 + 48) = 0;
    *(v1 + 40) = v11;
    sub_21B105F98();
    v13 = *(*(v1 + 40) + 16);
    sub_21B10603C(v13);
    v14 = *(v1 + 40);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 24 * v13;
    *(v15 + 32) = xmmword_21B12F6F0;
    *(v15 + 48) = 2;
    *(v1 + 40) = v14;
    v16 = sub_21B0F6BC8(a1);
    v18 = v17;
    sub_21B105F98();
    v19 = *(*(v1 + 40) + 16);
    sub_21B10603C(v19);
    v20 = *(v1 + 40);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 24 * v19;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    *(v21 + 48) = 3;
    *(v1 + 40) = v20;
    sub_21B105F98();
    v22 = *(*(v1 + 40) + 16);
    sub_21B10603C(v22);
    v7 = *(v1 + 40);
    *(v7 + 16) = v22 + 1;
    v8 = v7 + 24 * v22;
    *(v8 + 32) = xmmword_21B12B800;
    v9 = 1;
  }

  *(v8 + 48) = v9;
  *(v1 + 40) = v7;
  return swift_endAccess();
}

uint64_t sub_21B10F508(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v1;
  swift_beginAccess();
  sub_21AFC5454(a1, v18);
  sub_21B110778(a1, v5, v6, &v19);
  swift_endAccess();
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    *(&v20 + 1) = v7;
    *&v21 = sub_21B110934();
    *&v19 = v3;

    AvroRecordSchema.encode(to:)(&v19);
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  v27 = v2;
  v9 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    sub_21B110988(v9, v8);
    *(&v20 + 1) = v7;
    *&v21 = sub_21B110934();
    *&v19 = v3;

    sub_21B112504();
    return __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  v11 = swift_allocObject();
  v12 = v24;
  *(v11 + 16) = v23;
  *(v11 + 32) = v12;
  *(v11 + 48) = v25;
  *(v11 + 64) = v26;
  v13 = v11 | 0x6000000000000000;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  v16 = v14 | 0x6000000000000000;
  sub_21B10BCAC();
  swift_allocError();
  *v17 = v13;
  v17[1] = v16;
  swift_willThrow();
  return sub_21AFC5454(a1, &v19);
}

uint64_t sub_21B10F72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_21B112F54();
  v12 = v11;
  OUTLINED_FUNCTION_0_33();
  swift_beginAccess();
  sub_21B105F98();
  v13 = *(*(v6 + 40) + 16);
  sub_21B10603C(v13);
  OUTLINED_FUNCTION_2_31(v13 + 1);
  v16 = v15 + v13 * v14;
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  OUTLINED_FUNCTION_3_30(v16, v18);
  return sub_21B10E9F0(a1, a3, a5);
}

void sub_21B10F7F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  while (1)
  {
    v6 = a1[6];
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      a1[2] = a3;

      return;
    }

    swift_beginAccess();
    if (!v7)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[6] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21B10BC24();
      v6 = v18;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9 - 1;
    v11 = *(v6 + v10 + 32);
    *(v6 + 16) = v10;
    a1[6] = v6;
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      v12 = a1[5];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v13 & 1) == 0)
      {
        sub_21B1057C8();
        v12 = v19;
        a1[5] = v19;
      }

      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_21B1057C8();
        v12 = v20;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 24 * v14;
      *(v15 + 32) = xmmword_21B12B800;
    }

    else
    {
      swift_beginAccess();
      v12 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v16 & 1) == 0)
      {
        sub_21B1057C8();
        v12 = v21;
        a1[5] = v21;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_21B1057C8();
        v12 = v22;
      }

      *(v12 + 16) = v17 + 1;
      v15 = v12 + 24 * v17;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
    }

    *(v15 + 48) = 1;
    a1[5] = v12;
    swift_endAccess();
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_21B10FA0C()
{

  return v0;
}

uint64_t sub_21B10FA4C()
{
  sub_21B10FA0C();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

_BYTE *sub_21B10FA80(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B10FB74()
{
  result = qword_27CD47BA0;
  if (!qword_27CD47BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BA0);
  }

  return result;
}

unint64_t sub_21B10FBCC()
{
  result = qword_27CD47BA8;
  if (!qword_27CD47BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BA8);
  }

  return result;
}

unint64_t sub_21B10FCA4()
{
  result = qword_27CD47BB0;
  if (!qword_27CD47BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BB0);
  }

  return result;
}

uint64_t sub_21B1100D8(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    return sub_21B10ED64(result, a2);
  }

  return result;
}

uint64_t sub_21B110118(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    return sub_21B10E9F0(result, a2, a3);
  }

  return result;
}

unint64_t sub_21B11054C()
{
  result = qword_27CD47BB8;
  if (!qword_27CD47BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BB8);
  }

  return result;
}

void *sub_21B1105B8(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 72 * a1), __src, 0x41uLL);
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

unint64_t sub_21B11062C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
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

void sub_21B110690(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    sub_21B1059A8();
    *v1 = v5;
  }
}

uint64_t sub_21B1106F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47BC0, &qword_21B12FA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B110760(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xFE) == 2)
  {
  }

  return result;
}

uint64_t sub_21B110778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v4;
  v9 = sub_21AF98B58(a2, a3);
  if (__OFADD__(v23[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD47BD0, &qword_21B12FA38);
  result = sub_21B112994();
  if (result)
  {
    result = sub_21AF98B58(a2, a3);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = result;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v12)
  {
    v15 = v23[7] + 56 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 48);
    v22 = *(a1 + 16);
    *v15 = *a1;
    *(v15 + 16) = v22;
    *(v15 + 32) = *(a1 + 32);
    *(v15 + 48) = *(a1 + 48);
  }

  else
  {
    sub_21B11062C(v11, a2, a3, a1, v23);

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0uLL;
  }

  *a4 = v16;
  *(a4 + 8) = v17;
  *(a4 + 16) = v18;
  *(a4 + 24) = v19;
  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  *v4 = v23;
  return result;
}

unint64_t sub_21B110934()
{
  result = qword_27CD47BC8;
  if (!qword_27CD47BC8)
  {
    type metadata accessor for SchemaEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47BC8);
  }

  return result;
}

uint64_t sub_21B110988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21B110A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21B110A54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21B110A94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_30@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  *(a1 + 48) = 2;
  *(v3 + 40) = v2;

  return swift_endAccess();
}