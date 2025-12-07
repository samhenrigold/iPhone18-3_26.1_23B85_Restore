void sub_266D78AA8(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v25 = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if (swift_dynamicCast() && (v24 & 1) == 0)
  {
    if (qword_2800C9480 != -1)
    {
      swift_once();
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800CDC28);
    v7 = sub_266DA948C();
    v17 = sub_266DAAAEC();
    if (os_log_type_enabled(v7, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266C08000, v7, v17, "Asset file not found for SIRI_FIND_MY_CONFIGURATION_FILES", v18, 2u);
      v15 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_2800C9480 != -1)
    {
      swift_once();
    }

    v5 = sub_266DA94AC();
    __swift_project_value_buffer(v5, qword_2800CDC28);
    v6 = v3;
    v7 = sub_266DA948C();
    v8 = sub_266DAAAFC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      v11 = v3;
      v12 = sub_266DAA72C();
      v14 = sub_266C22A3C(v12, v13, &v25);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266C08000, v7, v8, "Error parsing asset file: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D5F2480](v10, -1, -1);
      v15 = v9;
LABEL_11:
      MEMORY[0x26D5F2480](v15, -1, -1);
    }
  }

  if (qword_2800C9480 != -1)
  {
    swift_once();
  }

  v19 = sub_266DA94AC();
  __swift_project_value_buffer(v19, qword_2800CDC28);
  v20 = sub_266DA948C();
  v21 = sub_266DAAB0C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_266C08000, v20, v21, "Asset mapping failed to load, falling back to on device file.", v22, 2u);
    MEMORY[0x26D5F2480](v22, -1, -1);
  }

  sub_266D78DD4();
  *a2 = v23;
  *(a2 + 8) = 0;
}

void sub_266D78DD4()
{
  v1 = sub_266DA737C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  type metadata accessor for DeviceMappingProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_266DAA6FC();
  v13 = sub_266DAA6FC();
  v14 = [v11 URLForResource:v12 withExtension:0 subdirectory:v13];

  if (v14)
  {
    sub_266DA734C();

    (*(v3 + 32))(v9, v7, v1);
    sub_266DA738C();
    if (!v0)
    {
      sub_266DA71DC();
      swift_allocObject();
      sub_266DA71CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC50, &unk_266DBDE00);
      sub_266D7A188();
      sub_266DA71BC();

      v16 = OUTLINED_FUNCTION_0_84();
      sub_266C2BB04(v16, v17);
    }

    (*(v3 + 8))(v9, v1);
  }

  else
  {
    sub_266D79DEC();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
  }
}

uint64_t sub_266D790A4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_266D79118(v3);
  v5 = v4;

  return v5;
}

void sub_266D79118(uint64_t a1)
{
  v76 = a1;
  v132[152] = 0;
  v132[144] = 0;
  v132[136] = 0;
  v132[128] = 0;
  __src[0] = xmmword_266DBDCC0;
  *&__src[1] = 0;
  BYTE8(__src[1]) = 0;
  *&__src[3] = 0;
  __src[2] = 0xFFFFFFFFFFFFFFFFLL;
  BYTE8(__src[3]) = 0;
  *&__src[5] = 0;
  __src[4] = 0xFFFFFFFFFFFFFFFFLL;
  BYTE8(__src[5]) = 0;
  *&__src[7] = 0;
  __src[6] = 0xFFFFFFFFFFFFFFFFLL;
  BYTE8(__src[7]) = 0;
  sub_266D7A268(__src);
  sub_266CFBC70(v134);
  LOBYTE(v98[0]) = 1;
  v120 = 258;
  v122 = 0;
  v121 = 0;
  v123 = xmmword_266DBDCD0;
  v124 = xmmword_266DBDCE0;
  v126 = 0;
  v125 = 0;
  v127 = 1;
  v128 = 256;
  v129 = 0u;
  v130 = 0u;
  v131 = 0;
  memcpy(v132, __src, 0x7AuLL);
  v135 = 258;
  v137 = 0;
  v136 = 0;
  v138 = xmmword_266DBDCD0;
  v139 = xmmword_266DBDCE0;
  v141 = 0;
  v140 = 0;
  v142 = 1;
  v143 = 256;
  v144 = 0u;
  v145 = 0u;
  v146 = 0;
  memcpy(v147, __src, sizeof(v147));

  sub_266CFBD3C(&v120, v109);
  sub_266C9D124(&v135);
  sub_266D7805C(&unk_28785CA00, &v76, 0x6F735F7374616562, 0xEA00000000006F6CLL);
  v1 = v76;
  if (*(v76 + 16) && (sub_266D99E08(0x6F735F7374616562), (v2 & 1) != 0))
  {
    sub_266C9D124(&v120);
  }

  else
  {
    sub_266CFBD3C(&v120, v109);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109[0] = v1;
    sub_266D9A34C(&v120, 0x6F735F7374616562, 0xEA00000000006F6CLL, isUniquelyReferenced_nonNull_native);
    sub_266C9D124(&v120);
    v76 = v109[0];
  }

  sub_266D79E4C(0x6F735F7374616562, 0xEA00000000006F6CLL, 0x6E6F687064616568, 0xEA00000000007365);
  LOBYTE(v87[0]) = 1;
  LOWORD(v109[0]) = 258;
  v109[2] = 0;
  v109[1] = 0;
  v110 = xmmword_266DBDCF0;
  v111 = xmmword_266DBDD00;
  v112 = &unk_28785CA70;
  v113 = 0;
  v114 = 1;
  v115 = 0;
  v116 = 0u;
  v117 = 0u;
  v118 = 0;
  memcpy(v119, __src, sizeof(v119));
  v63 = 258;
  v65 = 0;
  v64 = 0;
  v66 = xmmword_266DBDCF0;
  v67 = xmmword_266DBDD00;
  v68 = &unk_28785CA70;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  memcpy(v75, __src, sizeof(v75));
  sub_266CFBD3C(v109, v98);
  sub_266C9D124(&v63);
  sub_266D7805C(&unk_28785CA40, &v76, 0x69705F7374616562, 0xEA00000000006C6CLL);
  v4 = v76;
  if (*(v76 + 16) && (sub_266D99E08(0x69705F7374616562), (v5 & 1) != 0))
  {
    sub_266C9D124(v109);
  }

  else
  {
    sub_266CFBD3C(v109, v98);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v4;
    sub_266D9A34C(v109, 0x69705F7374616562, 0xEA00000000006C6CLL, v6);
    sub_266C9D124(v109);
    v76 = v98[0];
  }

  LOBYTE(v77[0]) = 1;
  LOWORD(v98[0]) = 258;
  v98[2] = 0;
  v98[1] = 0;
  v99 = xmmword_266DBDD10;
  v100 = xmmword_266DBDD20;
  v101 = &unk_28785CAE0;
  v102 = 0;
  v103 = 1;
  v104 = 257;
  v105 = 0u;
  v106 = 0u;
  v107 = 0;
  memcpy(v108, __src, sizeof(v108));
  v50 = 258;
  v52 = 0;
  v51 = 0;
  v53 = xmmword_266DBDD10;
  v54 = xmmword_266DBDD20;
  v55 = &unk_28785CAE0;
  v56 = 0;
  v57 = 1;
  v58 = 257;
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  memcpy(v62, __src, sizeof(v62));
  sub_266CFBD3C(v98, v87);
  sub_266C9D124(&v50);
  sub_266D7805C(&unk_28785CAA0, &v76, 0x6F735F7374616562, 0xEF736475625F6F6CLL);
  v7 = v76;
  if (*(v76 + 16) && (sub_266D99E08(0x6F735F7374616562), (v8 & 1) != 0))
  {
    sub_266C9D124(v98);
  }

  else
  {
    sub_266CFBD3C(v98, v87);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v87[0] = v7;
    sub_266D9A34C(v98, 0x6F735F7374616562, 0xEF736475625F6F6CLL, v9);
    sub_266C9D124(v98);
    v76 = v87[0];
  }

  sub_266D79E4C(0x6F735F7374616562, 0xEF736475625F6F6CLL, 0x6E6F687064616568, 0xEA00000000007365);
  sub_266D79E4C(0x6F735F7374616562, 0xEF736475625F6F6CLL, 0x73647562726165, 0xE700000000000000);
  LOBYTE(v23) = 1;
  LOWORD(v87[0]) = 258;
  v87[2] = 0;
  v87[1] = 0;
  v88 = xmmword_266DBDD30;
  v89 = xmmword_266DBDCE0;
  v90 = &unk_28785CB50;
  v91 = 0;
  v92 = 1;
  v93 = 256;
  v94 = 0u;
  v95 = 0u;
  v96 = 0;
  memcpy(v97, __src, sizeof(v97));
  v37 = 258;
  v39 = 0;
  v38 = 0;
  v40 = xmmword_266DBDD30;
  v41 = xmmword_266DBDCE0;
  v42 = &unk_28785CB50;
  v43 = 0;
  v44 = 1;
  v45 = 256;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  memcpy(v49, __src, sizeof(v49));
  sub_266CFBD3C(v87, v77);
  sub_266C9D124(&v37);
  sub_266D7805C(&unk_28785CB10, &v76, 0x6F735F7374616562, 0xEC000000345F6F6CLL);
  v10 = v76;
  if (*(v76 + 16) && (sub_266D99E08(0x6F735F7374616562), (v11 & 1) != 0))
  {
    sub_266C9D124(v87);
  }

  else
  {
    sub_266CFBD3C(v87, v77);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v10;
    sub_266D9A34C(v87, 0x6F735F7374616562, 0xEC000000345F6F6CLL, v12);
    sub_266C9D124(v87);
    v76 = v77[0];
  }

  sub_266D79E4C(0x6F735F7374616562, 0xEC000000345F6F6CLL, 0x6E6F687064616568, 0xEA00000000007365);
  sub_266D79AB8(0xD000000000000010, 0x8000000266DC4380, 0xD000000000000014, 0x8000000266DC43A0);
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  memset(&v22[1], 0, 17);
  v22[0] = 19;
  memset(&v22[5], 0, 17);
  v22[4] = -1;
  memset(&v22[9], 0, 17);
  v22[8] = -1;
  memset(&v22[13], 0, 17);
  v22[12] = -1;
  sub_266D7A268(v22);
  v17 = 1;
  LOWORD(v77[0]) = 258;
  v77[2] = 0;
  v77[1] = 0;
  v77[3] = 0xD000000000000014;
  v77[4] = 0x8000000266DC43C0;
  v78 = xmmword_266DBDD40;
  v79 = &unk_28785CBB0;
  v80 = 0;
  v81 = 1;
  v82 = 257;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  memcpy(v86, v22, sizeof(v86));
  v23 = 258;
  v24 = 0;
  v25 = 0;
  v26 = 0xD000000000000014;
  v27 = 0x8000000266DC43C0;
  v28 = xmmword_266DBDD40;
  v29 = &unk_28785CBB0;
  v30 = 0;
  v31 = 1;
  v32 = 257;
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  memcpy(v36, v22, sizeof(v36));
  sub_266CFBD3C(v77, v16);
  sub_266C9D124(&v23);
  sub_266D7805C(&unk_28785CB80, &v76, 0xD000000000000014, 0x8000000266DC43C0);
  v13 = v76;
  if (*(v76 + 16) && (sub_266D99E08(0xD000000000000014), (v14 & 1) != 0))
  {
    sub_266C9D124(v77);
  }

  else
  {
    sub_266CFBD3C(v77, v16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = v13;
    sub_266D9A34C(v77, 0xD000000000000014, 0x8000000266DC43C0, v15);
    sub_266C9D124(v77);
    v76 = v16[0];
  }

  sub_266D79E4C(0xD000000000000014, 0x8000000266DC43C0, 0x6E6F687064616568, 0xEA00000000007365);
  sub_266D79E4C(0xD000000000000014, 0x8000000266DC43C0, 0x73647562726165, 0xE700000000000000);
}

void sub_266D79AB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (*(v8 + 16) && (v11 = sub_266D99E08(a3), (v12 & 1) != 0))
  {
    v13 = (*(v8 + 56) + 248 * v11);
    memcpy(__dst, v13, 0xF2uLL);
    v14 = v13[1];
    v29 = *v13;
    v30 = v14;
    v31 = v13[2];
    v32 = *(v13 + 6);
    memcpy(__src, v13 + 4, sizeof(__src));
    if (__dst[7])
    {
      v15 = __dst[7];
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_266DAE4A0;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;
    *&v23[0] = v15;
    sub_266CFBD3C(__dst, v33);

    sub_266C384E4(v16);

    v33[0] = v29;
    v33[1] = v30;
    v33[2] = v31;
    v34 = v32;
    v35 = v15;
    memcpy(v36, __src, sizeof(v36));

    sub_266CFBD3C(v33, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[0] = *v5;
    sub_266D9A34C(v33, a3, a4, isUniquelyReferenced_nonNull_native);

    *v5 = *&v23[0];
    v23[0] = v29;
    v23[1] = v30;
    v23[2] = v31;
    v24 = v32;
    v25 = v15;
    memcpy(v26, __src, sizeof(v26));
    sub_266C9D124(v23);
  }

  else
  {
    if (qword_28156F870 != -1)
    {
      swift_once();
    }

    v18 = sub_266DA94AC();
    __swift_project_value_buffer(v18, &unk_28156FCA8);

    oslog = sub_266DA948C();
    v19 = sub_266DAAAFC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v33[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_266C22A3C(a3, a4, v33);
      _os_log_impl(&dword_266C08000, oslog, v19, "Unable to add product type to semantic %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D5F2480](v21, -1, -1);
      MEMORY[0x26D5F2480](v20, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_266D79DEC()
{
  result = qword_2800CDC48;
  if (!qword_2800CDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDC48);
  }

  return result;
}

void sub_266D79E40(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_266D79E4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = v4;
    v6 = *v4;
    if (*(v6 + 16))
    {
      v10 = result;

      v11 = sub_266D99E08(a3);
      if (v12)
      {
        v13 = memcpy(v28, (*(v6 + 56) + 248 * v11), 0xF2uLL);
        v14 = v28[12];
        if (v28[12])
        {
          v24[0] = v10;
          v24[1] = a2;
          MEMORY[0x28223BE20](v13);
          v23[2] = v24;
          sub_266CFBD3C(v28, v29);
          if (sub_266D2D4E0(sub_266CAB4BC, v23, v14))
          {
            sub_266C9D124(v28);
          }
        }

        else
        {
          sub_266CFBD3C(v28, v29);
        }

        memcpy(v27, v28, sizeof(v27));
        v15 = v28[12];
        memcpy(v26, &v28[13], sizeof(v26));
        if (v14)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_266CFA5E0();
            v15 = v20;
          }

          v16 = v15[2];
          v17 = v16 + 1;
          if (v16 >= v15[3] >> 1)
          {
            v21 = v15[2];
            sub_266CFA5E0();
            v16 = v21;
            v15 = v22;
          }

          v15[2] = v17;
          v18 = &v15[2 * v16];
          v18[4] = v10;
          v18[5] = a2;
        }

        if (!v15)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
          v15 = swift_allocObject();
          *(v15 + 1) = xmmword_266DAE4A0;
          v15[4] = v10;
          v15[5] = a2;
        }

        memcpy(v29, v27, sizeof(v29));
        v30 = v15;
        memcpy(v31, v26, sizeof(v31));
        sub_266CFBD3C(v29, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24[0] = *v5;
        sub_266D9A34C(v29, a3, a4, isUniquelyReferenced_nonNull_native);

        *v5 = v24[0];
        memcpy(v24, v27, 0x60uLL);
        v24[12] = v15;
        memcpy(v25, v26, sizeof(v25));
        return sub_266C9D124(v24);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_266D7A12C(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationFiles(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266D7A188()
{
  result = qword_2800CDC58;
  if (!qword_2800CDC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CDC50, &unk_266DBDE00);
    sub_266D7A214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDC58);
  }

  return result;
}

unint64_t sub_266D7A214()
{
  result = qword_2800CDC60;
  if (!qword_2800CDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDC60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceMappingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D7A350()
{
  result = qword_2800CDC70;
  if (!qword_2800CDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDC70);
  }

  return result;
}

uint64_t sub_266D7A3CC(uint64_t a1, int a2)
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

uint64_t sub_266D7A40C(uint64_t result, int a2, int a3)
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

uint64_t sub_266D7A46C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDC78);
  v1 = __swift_project_value_buffer(v0, qword_2800CDC78);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D7A534()
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC90, &qword_266DBDF38);
  OUTLINED_FUNCTION_3_56();
  MEMORY[0x28223BE20](v3);
  v5 = &__src[-v4 - 8];
  v6 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v7 = sub_266DAA6FC();
  [v6 setDesiredAccuracy_];

  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v6 setMaxAge_];

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v6 setSearchTimeout_];

  sub_266C26B34(v2, __src);
  v10 = swift_allocObject();
  memcpy((v10 + 16), __src, 0x48uLL);
  *(v10 + 88) = v6;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC98, &qword_266DBDF40);
  sub_266C230E8(&qword_2800CDCA0, &qword_2800CDC98, &qword_266DBDF40, MEMORY[0x277CBCEB0]);
  sub_266DA97CC();
  sub_266C26B34(v2, __src);
  v12 = swift_allocObject();
  memcpy((v12 + 16), __src, 0x48uLL);
  v13 = &v5[*(v0 + 44)];
  *v13 = sub_266D7B9B8;
  v13[1] = v12;
  sub_266C230E8(&qword_2800CDCA8, &qword_2800CDC90, &qword_266DBDF38, &protocol conformance descriptor for Publishers.MapResult<A, B>);
  v14 = sub_266DA97EC();

  sub_266D7B9C0(v5);
  return v14;
}

uint64_t sub_266D7A7C4@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = sub_266DA746C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_266DA745C();
  sub_266D7A8AC(v8, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_266D7A8AC@<X0>(void *a1@<X0>, char *a3@<X8>)
{
  v5 = sub_266D7B394(a1);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_266DAA70C();
    OUTLINED_FUNCTION_4_53();
    v11 = v11 && v8 == v10;
    if (v11)
    {

LABEL_16:

      sub_266D7B4C4(a1, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDCB0, &qword_266DBDF48);
      goto LABEL_37;
    }

    v12 = OUTLINED_FUNCTION_1_63(v9);

    if (v12)
    {
      goto LABEL_16;
    }

    sub_266DAA70C();
    OUTLINED_FUNCTION_4_53();
    if (v11 && v8 == v19)
    {
      goto LABEL_34;
    }

    v21 = OUTLINED_FUNCTION_1_63(v18);

    if (v21)
    {
      goto LABEL_35;
    }

    sub_266DAA70C();
    OUTLINED_FUNCTION_4_53();
    if (v11 && v8 == v23)
    {
LABEL_34:

LABEL_35:

      *a3 = 0;
      goto LABEL_36;
    }

    v25 = OUTLINED_FUNCTION_1_63(v22);

    if (v25)
    {
      goto LABEL_35;
    }

    sub_266DAA70C();
    OUTLINED_FUNCTION_4_53();
    if (v11 && v8 == v27)
    {

LABEL_41:

      v17 = 1;
      goto LABEL_14;
    }

    v29 = OUTLINED_FUNCTION_1_63(v26);

    if (v29)
    {
      goto LABEL_41;
    }

    if (qword_2800C9488 != -1)
    {
      OUTLINED_FUNCTION_0_85(&qword_2800C9488);
    }

    v31 = sub_266DA94AC();
    __swift_project_value_buffer(v31, qword_2800CDC78);

    v14 = sub_266DA948C();
    v32 = sub_266DAAAFC();

    if (!os_log_type_enabled(v14, v32))
    {

      goto LABEL_13;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v33 = 136315138;
    v35 = sub_266C22A3C(v7, v8, &v38);

    *(v33 + 4) = v35;
    OUTLINED_FUNCTION_6_40(&dword_266C08000, v36, v37, "Unexpected SASetRequestOrigin status of %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    if (qword_2800C9488 != -1)
    {
      OUTLINED_FUNCTION_0_85(&qword_2800C9488);
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800CDC78);
    v14 = sub_266DA948C();
    v15 = sub_266DAAAFC();
    if (!OUTLINED_FUNCTION_16_0(v15))
    {
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266C08000, v14, v15, "SASetRequestOrigin did not have a status when one is always expected.", v16, 2u);
  }

  OUTLINED_FUNCTION_6_1();
LABEL_13:

  v17 = 2;
LABEL_14:
  *a3 = v17;
LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDCB0, &qword_266DBDF48);
LABEL_37:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266D7AC0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_266C26B34(a1, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x48uLL);
  *(v5 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC98, &qword_266DBDF40);
  swift_allocObject();
  v6 = a2;
  result = sub_266DA97AC();
  *a3 = result;
  return result;
}

uint64_t sub_266D7ACC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &__src[-v9 - 8];
  v11 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_266C26B34(a3, __src);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  memcpy(v12 + 4, __src, 0x48uLL);
  v12[13] = a4;
  v12[14] = a1;
  v12[15] = a2;
  v13 = a4;

  sub_266CD8C08();
}

uint64_t sub_266D7ADE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_266DA7EEC();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D7AEC0);
}

uint64_t sub_266D7AEC0()
{
  if (qword_2800C9488 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_2800C9488);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800CDC78);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "Submitting SAGetRequestOrigin", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v5 = v0[3];

  v7 = v5[7];
  v6 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v7);
  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = sub_266D7BBB4();
  *v8 = v0;
  v8[1] = sub_266D7B024;
  v10 = v0[4];

  return MEMORY[0x2821BB6A0](v10, v7, v9, v6);
}

uint64_t sub_266D7B024(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_266D7B1FC;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_266D7B14C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_266D7B14C()
{
  v7 = v0;
  v1 = v0[5];
  v5 = v0[14];
  v6 = 0;
  v2 = v5;
  v1(&v5);

  sub_266C9D0D4(v5, v6);

  v3 = v0[1];

  return v3();
}

uint64_t sub_266D7B1FC()
{
  v16 = v0;
  v1 = *(v0 + 104);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 104);
  if (v3)
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);

    (*(v8 + 32))(v5, v7, v9);
    (*(v8 + 16))(v6, v5, v9);
    sub_266D7C3E4(v6, &v15);
    OUTLINED_FUNCTION_5_45();
    v10();
    (*(v8 + 8))(v5, v9);
    v11 = *(v0 + 16);
  }

  else
  {
    v12 = *(v0 + 40);

    OUTLINED_FUNCTION_5_45();
    v12();
    v11 = v4;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_266D7B394(void *a1)
{
  result = sub_266D7BA28(a1);
  if (!v3)
  {
    [a1 latitude];
    if (v4 == 0.0)
    {
      return 0;
    }

    [a1 longitude];
    if (v5 == 0.0)
    {
      return 0;
    }

    else
    {
      if (qword_2800C9488 != -1)
      {
        swift_once();
      }

      v6 = sub_266DA94AC();
      __swift_project_value_buffer(v6, qword_2800CDC78);
      v7 = sub_266DA948C();
      v8 = sub_266DAAB0C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266C08000, v7, v8, "SASetRequestOrigin did not have a status, but did have non-zero lat and long. Setting status to valid.", v9, 2u);
        MEMORY[0x26D5F2480](v9, -1, -1);
      }

      return sub_266DAA70C();
    }
  }

  return result;
}

void sub_266D7B4C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_3_56();
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_266DA746C();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 preciseLocationEnabled];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 BOOLValue];
  }

  else
  {
    if (qword_2800C9488 != -1)
    {
      OUTLINED_FUNCTION_0_85(&qword_2800C9488);
    }

    v19 = sub_266DA94AC();
    __swift_project_value_buffer(v19, qword_2800CDC78);
    v17 = sub_266DA948C();
    v20 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266C08000, v17, v20, "Could not tell is precise location is enabled or disabled. Defaulting to coarse.", v21, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v18 = 0;
  }

  [a1 latitude];
  v23 = v22;
  [a1 longitude];
  v25 = v24;
  v26 = 0;
  v27 = 0;
  if (v18)
  {
    [a1 horizontalAccuracy];
    v26 = v28;
    [a1 verticalAccuracy];
    v27 = v29;
  }

  v57 = v9;
  v54 = v18 ^ 1;
  v30 = [a1 age];
  if (v30)
  {
    v31 = v30;
    [v30 doubleValue];
  }

  sub_266DA73EC();
  v32 = type metadata accessor for Address(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v32);
  v33 = v2[8];
  v34 = v2[9];
  *(a2 + v34) = 6;
  v35 = (a2 + v33);
  v36 = v12;
  v37 = v2[10];
  *(a2 + v37) = 4;
  v38 = v15;
  v39 = v2[11];
  __swift_storeEnumTagSinglePayload(a2 + v39, 1, 1, v32);
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v54;
  (*(v55 + 32))(a2 + v2[7], v38, v56);
  *v35 = 0;
  v35[1] = 0;
  *(a2 + v34) = 6;
  *(a2 + v37) = 4;
  sub_266C60554(v36, a2 + v39);
  v40 = (a2 + v2[12]);
  *v40 = 1701736302;
  v40[1] = 0xE400000000000000;
  if (qword_2800C9488 != -1)
  {
    OUTLINED_FUNCTION_0_85(&qword_2800C9488);
  }

  v41 = sub_266DA94AC();
  __swift_project_value_buffer(v41, qword_2800CDC78);
  v42 = v57;
  sub_266C24F5C(a2, v57);
  v43 = sub_266DA948C();
  v44 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v58 = v46;
    *v45 = 136315138;
    sub_266C24F5C(v42, v53);
    v47 = sub_266DAA72C();
    v49 = v48;
    sub_266C24C6C(v42);
    v50 = sub_266C22A3C(v47, v49, &v58);

    *(v45 + 4) = v50;
    OUTLINED_FUNCTION_6_40(&dword_266C08000, v51, v52, "Got User location: %s");
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    sub_266C24C6C(v42);
  }
}

uint64_t sub_266D7B9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDC90, &qword_266DBDF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D7BA28(void *a1)
{
  v1 = [a1 status];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA70C();

  return v3;
}

uint64_t objectdestroyTm_14()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266D7BAE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[15];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266C29DCC;

  return sub_266D7ADE4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

unint64_t sub_266D7BBB4()
{
  result = qword_2800CDCB8;
  if (!qword_2800CDCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CDCB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_85(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_63(uint64_t a1)
{

  return sub_266DAB17C();
}

void OUTLINED_FUNCTION_6_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_266D7BC9C(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_266D7BCCC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_266D7BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266D7BE74();
  v5 = sub_266D7BEC8();

  return MEMORY[0x2821C21F0](a1, a2, v4, v5);
}

unint64_t sub_266D7BD70()
{
  result = qword_2800CDCC0;
  if (!qword_2800CDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDCC0);
  }

  return result;
}

unint64_t sub_266D7BDC8()
{
  result = qword_2800CDCC8;
  if (!qword_2800CDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDCC8);
  }

  return result;
}

unint64_t sub_266D7BE20()
{
  result = qword_2800CDCD0;
  if (!qword_2800CDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDCD0);
  }

  return result;
}

unint64_t sub_266D7BE74()
{
  result = qword_2800CDCD8;
  if (!qword_2800CDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDCD8);
  }

  return result;
}

unint64_t sub_266D7BEC8()
{
  result = qword_2800CDCE0;
  if (!qword_2800CDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDCE0);
  }

  return result;
}

uint64_t sub_266D7BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC6C8, &unk_266DBE1C0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D7C024);
}

uint64_t sub_266D7C024()
{
  v0[2] = (*(v0[5] + 8))(v0[4]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CC2D0, &qword_266DAF900);
  v2 = sub_266D7C918();
  MEMORY[0x26D5F0220](v1, v2);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_266D7C138;
  v4 = v0[10];

  return (sub_266CF27F4)(v4);
}

uint64_t sub_266D7C138()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_266D7C378;
  }

  else
  {
    v3 = sub_266D7C27C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D7C27C()
{
  v1 = v0[10];
  v2 = type metadata accessor for Location(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_266D7C97C(v1);
    sub_266CD9BA0();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
  }

  else
  {
    sub_266C234EC(v1, v0[3]);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_266D7C378()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266D7C3E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_266DA7EEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C9490 != -1)
  {
    swift_once();
  }

  v8 = sub_266DA94AC();
  __swift_project_value_buffer(v8, qword_2800CDCE8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_266DA948C();
  v10 = sub_266DAAAEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_266CC78E0();
    v14 = sub_266DAB13C();
    v16 = v15;
    v23 = a2;
    v17 = *(v5 + 8);
    v17(v7, v4);
    v18 = sub_266C22A3C(v14, v16, &v24);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_266C08000, v9, v10, "SAGetRequestOrigin failed with %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D5F2480](v13, -1, -1);
    MEMORY[0x26D5F2480](v12, -1, -1);

    result = (v17)(v22, v4);
    a2 = v23;
  }

  else
  {

    v20 = *(v5 + 8);
    v20(a1, v4);
    result = (v20)(v7, v4);
  }

  *a2 = 2;
  return result;
}

uint64_t sub_266D7C660()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDCE8);
  v1 = __swift_project_value_buffer(v0, qword_2800CDCE8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UserLocationError.hashValue.getter()
{
  v1 = *v0;
  sub_266DAB2AC();
  MEMORY[0x26D5F1C20](v1);
  return sub_266DAB2DC();
}

unint64_t sub_266D7C7C0()
{
  result = qword_2800CDD00;
  if (!qword_2800CDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDD00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserLocationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D7C918()
{
  result = qword_2800C9EA8;
  if (!qword_2800C9EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2800CC2D0, &qword_266DAF900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800C9EA8);
  }

  return result;
}

uint64_t sub_266D7C97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D7C9E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD50, &qword_266DBE278);
    v2 = sub_266DAAF6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_266C23550(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_266C6DF38(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_266C6DF38(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_266C6DF38(v31, v32);
    result = sub_266DAAD7C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_266C6DF38(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_266D7CCA8()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CDD08);
  v1 = __swift_project_value_buffer(v0, qword_2800CDD08);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D7CDE8()
{
  v1 = (v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText);
  v2 = *(v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText);
  v3 = *(v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_266D7D054();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_266C488A0(v5, v6);
  }

  sub_266C488E8(v2, v3);
  return v4;
}

uint64_t sub_266D7CEF8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText);
  v4 = *(v2 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText);
  v5 = *(v2 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_266C488A0(v4, v5);
}

uint64_t sub_266D7CF18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_266D7CEF8(v1, v2);
}

id SFMExampleUtterance.init(forRole:)(uint64_t a1)
{
  v5[3] = &unk_287867DD0;
  v5[4] = &off_287867DE0;
  v2 = objc_allocWithZone(type metadata accessor for SFMExampleUtterance());
  __swift_mutable_project_boxed_opaque_existential_1(v5, &unk_287867DD0);
  v3 = sub_266D7E33C(a1, 0, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_266D7D054()
{
  v1 = *(v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_role);
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_languageProvider), *(v0 + OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_languageProvider + 24));
    v2 = v1;
    v3 = sub_266D7DDD4();
    if (v4)
    {
      sub_266D7D3D8(v2, v3, v4, v28);
      v5 = v28[1];
      v6 = v29;

      if ((v30 & 1) == 0)
      {

        return OUTLINED_FUNCTION_11_12();
      }

      if (qword_2800C9498 != -1)
      {
        OUTLINED_FUNCTION_0_86(&qword_2800C9498);
      }

      v7 = sub_266DA94AC();
      __swift_project_value_buffer(v7, qword_2800CDD08);
      v8 = OUTLINED_FUNCTION_11_12();
      sub_266D7E438(v8, v9, v5, *(&v5 + 1), v6);
      v10 = sub_266DA948C();
      v11 = sub_266DAAAEC();
      sub_266D7E498(v28);
      if (!os_log_type_enabled(v10, v11))
      {

        sub_266D7E498(v28);
        return OUTLINED_FUNCTION_11_12();
      }

      v12 = OUTLINED_FUNCTION_14_0();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      v14 = OUTLINED_FUNCTION_11_12();
      sub_266D7E438(v14, v15, v5, *(&v5 + 1), v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD58, &qword_266DBE280);
      v16 = sub_266DAA72C();
      v18 = sub_266C22A3C(v16, v17, &v27);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_266C08000, v10, v11, "SFMExampleUtterance: Failed to execute CAT: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
      sub_266D7E498(v28);
    }

    else
    {
      if (qword_2800C9498 != -1)
      {
        OUTLINED_FUNCTION_0_86(&qword_2800C9498);
      }

      v23 = sub_266DA94AC();
      __swift_project_value_buffer(v23, qword_2800CDD08);
      v10 = sub_266DA948C();
      v24 = sub_266DAAADC();
      if (os_log_type_enabled(v10, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_266C08000, v10, v24, "SFMExampleUtterance: Could not get an appropriate Siri language", v25, 2u);
        OUTLINED_FUNCTION_6_1();
      }
    }
  }

  else
  {
    if (qword_2800C9498 != -1)
    {
      OUTLINED_FUNCTION_0_86(&qword_2800C9498);
    }

    v19 = sub_266DA94AC();
    __swift_project_value_buffer(v19, qword_2800CDD08);
    v20 = sub_266DA948C();
    v21 = sub_266DAAAEC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266C08000, v20, v21, "SFMExampleUtterance: role is nil", v22, 2u);
      OUTLINED_FUNCTION_6_1();
    }
  }

  return OUTLINED_FUNCTION_11_12();
}

void sub_266D7D3D8(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v85 = a2;
  v86 = a3;
  v8 = sub_266DA737C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v81 - v13;
  v87 = v5;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_266C39CC0(v16, &selRef_resourcePath);
  v18 = v17;
  if (!v17)
  {

    v47 = 0;
LABEL_16:
    v40 = 0;
    v41 = 0;
    v49 = 1;
    v50 = 2;
LABEL_77:
    *a4 = v47;
    *(a4 + 8) = v18;
    *(a4 + 16) = v40;
    *(a4 + 24) = v41;
    *(a4 + 32) = v50;
    *(a4 + 33) = v49;
    return;
  }

  v19 = sub_266C39CC0(v16, &selRef_bundleIdentifier);
  if (!v20)
  {

    v47 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v84 = v16;
  v81 = a4;
  v83 = v19;
  v82 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD40, &qword_266DBE268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 32) = 0x6449656C6F72;
  *(inited + 40) = 0xE600000000000000;
  v22 = [a1 roleId];
  type metadata accessor for SPBeaconRoleId(0);
  *(inited + 72) = v23;
  *(inited + 48) = v22;
  v24 = sub_266DAA6CC();
  v25 = [objc_allocWithZone(MEMORY[0x277D05290]) init];
  sub_266DA731C();

  sub_266DA733C();
  v26 = *(v9 + 8);
  v26(v12, v8);
  v27 = sub_266DA735C();
  v29 = v28;
  v26(v14, v8);
  sub_266CC0208(v27, v29, v25, &selRef_setTemplateDir_);
  sub_266CC0208(0xD00000000000002BLL, 0x8000000266DC44B0, v25, &selRef_setCatId_);
  v30 = sub_266D7C9E4(v24);

  sub_266D7E1E8(v30, v25, &selRef_setParameters_);
  v31 = MEMORY[0x277D84F90];
  v32 = sub_266DAA6CC();
  sub_266D7E1E8(v32, v25, &selRef_setGlobalParameters_);
  sub_266CC0208(v83, v82, v25, &selRef_setPluginName_);
  sub_266D7E270(v85, v86, v25);
  v33 = v87[OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_isTesting];
  [v25 setDebug_];
  OUTLINED_FUNCTION_11_31([v25 setTest_], sel_setResetState_);
  v34 = OUTLINED_FUNCTION_11_31([v25 setEnableUpdates_], sel_setMultiuser_);
  OUTLINED_FUNCTION_11_31(v34, sel_setGrounding_);
  sub_266CC0208(0x6E776F6E6B6E75, 0xE700000000000000, v25, &selRef_setVoiceGender_);
  OUTLINED_FUNCTION_11_31(v35, sel_setRandomSeed_);
  v87 = v25;
  v36 = [v25 execute];
  v37 = v36;
  if (v36 && (v38 = sub_266C22F60(v36, &selRef_status), v39))
  {
    v40 = v38;
    v41 = v39;
    OUTLINED_FUNCTION_8_21();
    if (v43 == v44 && v42 == 0xE700000000000000)
    {

LABEL_23:
      v85 = v37;
      v54 = sub_266D7E2C8(v37);
      if (v54)
      {
        v48 = v54;
      }

      else
      {
        v48 = v31;
      }

      goto LABEL_26;
    }

    v46 = v84;
  }

  else
  {

    v40 = 0;
    v41 = 0xE000000000000000;
    v46 = v84;
    OUTLINED_FUNCTION_8_21();
  }

  if ((sub_266DAB17C() & 1) == 0)
  {
    if (v37 && (v51 = v37, v52 = sub_266C22F60(v51, &selRef_error), v53))
    {
      v47 = v52;
      v18 = v53;
    }

    else
    {

      v47 = 0;
      v18 = 0xE000000000000000;
    }

    a4 = v81;
    v50 = 0;
    v49 = 1;
    goto LABEL_77;
  }

  if (v37)
  {
    goto LABEL_23;
  }

  v85 = 0;
  v48 = MEMORY[0x277D84F90];
LABEL_26:
  v55 = 0;
  v56 = *(v48 + 16);
  v57 = v48 + 32;
  while (1)
  {
    if (v56 == v55)
    {
      v55 = v56;
      goto LABEL_38;
    }

    if (*(*(v48 + 8 * v55 + 32) + 16))
    {
      v58 = sub_266D99E08(1701869940);
      if (v59)
      {
        OUTLINED_FUNCTION_3_57(v58);
        OUTLINED_FUNCTION_1_64();
        if (swift_dynamicCast())
        {
          if (v88 == 0x676F6C616964 && v89 == 0xE600000000000000)
          {
            goto LABEL_80;
          }

          v61 = OUTLINED_FUNCTION_10_24(v88);

          if (v61)
          {
            break;
          }
        }
      }
    }

    ++v55;
  }

  while (1)
  {
LABEL_38:
    v86 = v48;
    v62 = *(v48 + 16);
    v48 = MEMORY[0x277D837D0];
LABEL_39:
    if (v55 == v62)
    {
      v55 = v62;
LABEL_62:
      v72 = *(v86 + 16);
      if (v55 == v72)
      {

        v47 = 0;
        v18 = 0;
      }

      else
      {
        v73 = v84;
        if (v55 >= v72)
        {
          goto LABEL_82;
        }

        v74 = *(*(v57 + 8 * v55) + 16);
        v75 = v85;
        if (v74 && (v76 = OUTLINED_FUNCTION_5_46(), (v77 & 1) != 0) && (OUTLINED_FUNCTION_3_57(v76), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD48, &qword_266DBE270), OUTLINED_FUNCTION_1_64(), swift_dynamicCast()))
        {
          v78 = v88;
        }

        else
        {
          v78 = sub_266DAA6CC();
        }

        if (*(v78 + 16) && (v79 = sub_266D99E08(0x746E697270), (v80 & 1) != 0) && (sub_266C23550(*(v78 + 56) + 32 * v79, v90), OUTLINED_FUNCTION_1_64(), swift_dynamicCast()))
        {
          v47 = v88;
          v18 = v89;
        }

        else
        {

          v47 = 0;
          v18 = 0xE000000000000000;
        }
      }

      v40 = 0;
      v41 = 0;
      v50 = 0;
      v49 = 0;
      a4 = v81;
      goto LABEL_77;
    }

    if (v55 >= v62)
    {
      break;
    }

    if (*(*(v57 + 8 * v55) + 16) && (v63 = OUTLINED_FUNCTION_5_46(), (v64 & 1) != 0) && (OUTLINED_FUNCTION_3_57(v63), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD48, &qword_266DBE270), OUTLINED_FUNCTION_1_64(), swift_dynamicCast()))
    {
      v65 = v88;
    }

    else
    {
      v65 = sub_266DAA6CC();
    }

    v66 = *(v65 + 16);

    v67 = v55;
    if (v66)
    {
      goto LABEL_62;
    }

    while (1)
    {
      v55 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v55 == v62)
      {
        v55 = v62;
        goto LABEL_39;
      }

      if (v55 >= v62)
      {
        goto LABEL_79;
      }

      if (*(*(v57 + 8 * v55) + 16))
      {
        v68 = sub_266D99E08(1701869940);
        if (v69)
        {
          OUTLINED_FUNCTION_3_57(v68);
          OUTLINED_FUNCTION_1_64();
          if (swift_dynamicCast())
          {
            if (v88 == 0x676F6C616964 && v89 == 0xE600000000000000)
            {

              goto LABEL_39;
            }

            v71 = OUTLINED_FUNCTION_10_24(v88);

            if (v71)
            {
              goto LABEL_39;
            }
          }
        }
      }

      ++v67;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
  }

  __break(1u);
LABEL_82:
  __break(1u);
}

id SFMExampleUtterance.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFMExampleUtterance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFMExampleUtterance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266D7DD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_266DAB17C();
  }

  return 1;
}

uint64_t sub_266D7DDD4()
{
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedPreferences];
  sub_266C39CC0(v1, &selRef_languageCode);
  if (v2)
  {
    if (qword_2800C9498 != -1)
    {
      OUTLINED_FUNCTION_0_86(&qword_2800C9498);
    }

    v3 = sub_266DA94AC();
    __swift_project_value_buffer(v3, qword_2800CDD08);

    v4 = sub_266DA948C();
    v5 = sub_266DAAB0C();

    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_14_0();
    v6 = OUTLINED_FUNCTION_6_41();
    v45 = v6;
    *v0 = 136446210;
    v7 = OUTLINED_FUNCTION_11_12();
    *(v0 + 4) = sub_266C22A3C(v7, v8, v9);
    v12 = "Siri is enabled with language code %{public}s";
LABEL_18:
    OUTLINED_FUNCTION_6_40(&dword_266C08000, v10, v11, v12);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
LABEL_19:

    return OUTLINED_FUNCTION_11_12();
  }

  v44 = 0;
  v13 = [v1 allSiriLanguageCodesForSystemLanguageCode:0 isGoodFit:&v44];
  if (v13)
  {
    v14 = v13;
    v15 = sub_266DAA93C();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_266D7E168(v15);
  v18 = v17;
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    if (qword_2800C9498 != -1)
    {
      OUTLINED_FUNCTION_0_86(&qword_2800C9498);
    }

    v34 = sub_266DA94AC();
    __swift_project_value_buffer(v34, qword_2800CDD08);

    v4 = sub_266DA948C();
    v35 = sub_266DAAB0C();
    v36 = OUTLINED_FUNCTION_11_12();
    sub_266D7E514(v36, v37, 0);
    if (!os_log_type_enabled(v4, v35))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_14_0();
    v6 = OUTLINED_FUNCTION_6_41();
    v45 = v6;
    *v0 = 136446210;
    v38 = OUTLINED_FUNCTION_11_12();
    *(v0 + 4) = sub_266C22A3C(v38, v39, v40);
    v12 = "SFMExampleUtterance: found %{public}s as a good fit for the current configuration";
    goto LABEL_18;
  }

  if (qword_2800C9498 != -1)
  {
    OUTLINED_FUNCTION_0_86(&qword_2800C9498);
  }

  v21 = sub_266DA94AC();
  __swift_project_value_buffer(v21, qword_2800CDD08);
  v22 = OUTLINED_FUNCTION_11_12();
  sub_266D7E500(v22, v23);
  v24 = sub_266DA948C();
  v25 = sub_266DAAAEC();
  v26 = OUTLINED_FUNCTION_11_12();
  sub_266D7E514(v26, v27, 1);
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_14_0();
    v28 = OUTLINED_FUNCTION_6_41();
    v46 = v18;
    v47[0] = v28;
    *v0 = 136446210;
    v45 = v16;
    v29 = sub_266DAA72C();
    v31 = sub_266C22A3C(v29, v30, v47);

    *(v0 + 4) = v31;
    OUTLINED_FUNCTION_6_40(&dword_266C08000, v32, v33, "SFMExampleUtterance: Could not find a good fit Siri language. Error: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    v42 = OUTLINED_FUNCTION_11_12();
    sub_266D7E514(v42, v43, 1);
  }

  return OUTLINED_FUNCTION_11_12();
}

uint64_t sub_266D7E168(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      v1 = *(a1 + 32);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_266D7E1E8(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_266DAA69C();

  [a2 *a3];
}

void sub_266D7E270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setLocale_];
}

uint64_t sub_266D7E2C8(void *a1)
{
  v2 = [a1 response];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD48, &qword_266DBE270);
  v3 = sub_266DAA93C();

  return v3;
}

id sub_266D7E33C(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &unk_287867DD0;
  v7[4] = &off_287867DE0;
  *&a3[OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance____lazy_storage___utteranceText] = xmmword_266DAFA10;
  *&a3[OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_role] = a1;
  a3[OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_isTesting] = a2;
  sub_266C233D0(v7, &a3[OBJC_IVAR____TtC10SiriFindMy19SFMExampleUtterance_languageProvider]);
  v6.receiver = a3;
  v6.super_class = type metadata accessor for SFMExampleUtterance();
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v4;
}

id sub_266D7E438(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {

    return result;
  }

  else if (!a5)
  {
  }

  return result;
}

uint64_t sub_266D7E498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD58, &qword_266DBE280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266D7E500(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_266D7E514(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_266D7E524(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_266D7E524(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy32ExampleUtteranceLanguageProviderV0F12SupportErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy19SFMExampleUtteranceC17CATExecutionErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t OUTLINED_FUNCTION_0_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_57(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_266C23550(v4, v2 - 200);
}

unint64_t OUTLINED_FUNCTION_5_46()
{

  return sub_266D99E08(0x746E65746E6F63);
}

uint64_t OUTLINED_FUNCTION_6_41()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_24(uint64_t a1)
{

  return sub_266DAB17C();
}

id OUTLINED_FUNCTION_11_31(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_266D7E674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = 1;
    v4 = &unk_28156F000;
    do
    {
      v5 = sub_266DA821C();
      if (v4[270] != -1)
      {
        swift_once();
      }

      v6 = sub_266DA94AC();
      __swift_project_value_buffer(v6, &unk_28156FCA8);
      sub_266C233D0(v2, v25);
      sub_266C233D0(v2, v24);
      v7 = sub_266DA948C();
      v8 = sub_266DAAB0C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v22 = v5;
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 136315650;
        __swift_project_boxed_opaque_existential_1(v25, v25[3]);
        OUTLINED_FUNCTION_17_15();
        sub_266DA822C();
        v11 = sub_266DAAE0C();
        v13 = v12;
        __swift_destroy_boxed_opaque_existential_0(v25);
        sub_266C22A3C(v11, v13, &v23);
        OUTLINED_FUNCTION_17_15();

        *(v9 + 4) = v11;
        *(v9 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        OUTLINED_FUNCTION_17_15();
        sub_266DA823C();
        v14 = sub_266DAAE0C();
        v16 = v15;
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_266C22A3C(v14, v16, &v23);
        OUTLINED_FUNCTION_17_15();

        *(v9 + 14) = v14;
        *(v9 + 22) = 2080;
        if (v22)
        {
          v17 = 28271;
        }

        else
        {
          v17 = 6710895;
        }

        if (v22)
        {
          v18 = 0xE200000000000000;
        }

        else
        {
          v18 = 0xE300000000000000;
        }

        v19 = sub_266C22A3C(v17, v18, &v23);

        *(v9 + 24) = v19;
        v4 = &unk_28156F000;
        _os_log_impl(&dword_266C08000, v7, v8, "FeatureFlag: %s/%s=%s", v9, 0x20u);
        swift_arrayDestroy();
        v20 = v10;
        v5 = v22;
        MEMORY[0x26D5F2480](v20, -1, -1);
        MEMORY[0x26D5F2480](v9, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v25);
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v3 &= v5;
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_266D7E93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v84 = sub_266DA9BDC();
  OUTLINED_FUNCTION_0_2();
  v74 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v72 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v73 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC120, &qword_266DB5C88);
  v10 = OUTLINED_FUNCTION_4_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_5();
  v82 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v83 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA710, &qword_266DB6040);
  v16 = OUTLINED_FUNCTION_4_3(v15);
  MEMORY[0x28223BE20](v16);
  v85 = &v72 - v17;
  v18 = sub_266DA9D9C();
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = sub_266DA9A3C();
  OUTLINED_FUNCTION_0_2();
  v77 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDD60, &qword_266DBE520);
  v34 = OUTLINED_FUNCTION_4_3(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_0_5();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v72 - v39;
  v41 = sub_266DA9F0C();
  v80 = v42;
  v81 = v41;
  v43 = sub_266DA9F3C();
  v78 = v44;
  v79 = v43;
  v86 = a1;
  sub_266DA9F4C();
  sub_266CE5D14(v40, v37, &qword_2800CDD60, &qword_266DBE520);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v28);
  v46 = 0;
  v87 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v47 = v77;
    (*(v77 + 32))(v32, v37, v28);
    v46 = sub_266DA9A2C();
    v87 = v48;
    (*(v47 + 8))(v32, v28);
  }

  v77 = v46;
  sub_266C1825C(v40, &qword_2800CDD60, &qword_266DBE520);
  v49 = v86;
  v50 = sub_266DA9F1C();
  sub_266DA9F2C();
  sub_266DA9D8C();
  sub_266D7EF60();
  v76 = OUTLINED_FUNCTION_4_54();
  v51 = *(v20 + 8);
  v51(v24, v18);
  v51(v27, v18);
  sub_266DA9F2C();
  sub_266DA9D7C();
  v52 = OUTLINED_FUNCTION_4_54();
  v51(v24, v18);
  v51(v27, v18);
  v53 = v83;
  sub_266DA9F5C();
  v54 = v82;
  sub_266CE5D14(v53, v82, &qword_2800CC120, &qword_266DB5C88);
  v55 = v84;
  if (__swift_getEnumTagSinglePayload(v54, 1, v84) == 1)
  {
    sub_266DA9F6C();
    OUTLINED_FUNCTION_0();
    (*(v56 + 8))(v49);
    v57 = 1;
    v58 = v85;
  }

  else
  {
    v60 = v73;
    v59 = v74;
    (*(v74 + 32))(v73, v54, v55);
    v61 = v50;
    v62 = v72;
    (*(v59 + 16))(v72, v60, v55);
    v58 = v85;
    v63 = v62;
    v50 = v61;
    sub_266D7EFB8(v63, v85);
    sub_266DA9F6C();
    OUTLINED_FUNCTION_0();
    (*(v64 + 8))(v49);
    (*(v59 + 8))(v60, v55);
    v57 = 0;
  }

  sub_266C1825C(v53, &qword_2800CC120, &qword_266DB5C88);
  v65 = type metadata accessor for FriendLocation(0);
  __swift_storeEnumTagSinglePayload(v58, v57, 1, v65);
  v66 = *(type metadata accessor for Friend(0) + 40);
  v67 = v75;
  __swift_storeEnumTagSinglePayload(v75 + v66, 1, 1, v65);
  v68 = v80;
  *v67 = v81;
  *(v67 + 8) = v68;
  v69 = v78;
  *(v67 + 16) = v79;
  *(v67 + 24) = v69;
  v70 = v87;
  *(v67 + 32) = v77;
  *(v67 + 40) = v70;
  *(v67 + 48) = v50;
  *(v67 + 56) = v76 & 1;
  *(v67 + 57) = v52 & 1;
  return sub_266D7F19C(v58, v67 + v66, &qword_2800CA710, &qword_266DB6040);
}

unint64_t sub_266D7EF60()
{
  result = qword_2800CDD68[0];
  if (!qword_2800CDD68[0])
  {
    sub_266DA9D9C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800CDD68);
  }

  return result;
}

uint64_t sub_266D7EFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA9BDC();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v11 = OUTLINED_FUNCTION_4_3(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v24 = sub_266DA9B2C();
  v15 = v14;
  v16 = sub_266DA9B5C();
  v17 = sub_266DA9B6C();
  v18 = sub_266DA9B3C();
  (*(v6 + 16))(v9, a1, v4);
  sub_266D2955C(v9, v13);
  LOBYTE(v9) = sub_266DA9B9C();
  (*(v6 + 8))(a1, v4);
  v19 = type metadata accessor for FriendLocation(0);
  v20 = *(v19 + 32);
  v21 = type metadata accessor for Location(0);
  __swift_storeEnumTagSinglePayload(a2 + v20, 1, 1, v21);
  *a2 = v24;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 17) = v17 & 1;
  *(a2 + 18) = v18 & 1;
  result = sub_266D7F19C(v13, a2 + v20, &qword_2800C9B20, &unk_266DB1EC0);
  *(a2 + *(v19 + 36)) = v9 & 1;
  return result;
}

uint64_t sub_266D7F19C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_13_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_4_54()
{

  return sub_266DAACEC();
}

uint64_t sub_266D7F20C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_266DA737C();
  __swift_allocate_value_buffer(v3, qword_2800E6560);
  v4 = __swift_project_value_buffer(v3, qword_2800E6560);
  sub_266DA736C();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_266D7F32C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_266D7F388(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_266D7F500(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
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

        break;
    }
  }

  else
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
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_266D7F738(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_266DA969C();
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
}

uint64_t sub_266D7F7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v37 = &v36 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  sub_266DA8F0C();
  swift_allocObject();
  sub_266DA8EFC();
  sub_266DA8EEC();
  OUTLINED_FUNCTION_3_58();
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_0_87();
  v38 = v5;
  if (v19)
  {
    sub_266DAA77C();
    v20 = sub_266DA919C();
    v21 = 0;
  }

  else
  {
    v20 = sub_266DA919C();
    v21 = 1;
  }

  v22 = 1;
  __swift_storeEnumTagSinglePayload(v18, v21, 1, v20);
  sub_266DA8EAC();
  OUTLINED_FUNCTION_2_69();
  sub_266C55ECC(v18);
  OUTLINED_FUNCTION_0_87();
  if (v23)
  {
    sub_266DAA77C();
    v22 = 0;
  }

  sub_266DA919C();
  v24 = 1;
  OUTLINED_FUNCTION_1_65(v16, v22);
  sub_266DA8EBC();
  OUTLINED_FUNCTION_3_58();
  sub_266C55ECC(v16);
  OUTLINED_FUNCTION_0_87();
  if (v25)
  {
    sub_266DAA77C();
    v24 = 0;
  }

  v26 = 1;
  OUTLINED_FUNCTION_1_65(v13, v24);
  sub_266DA8ECC();
  OUTLINED_FUNCTION_2_69();
  sub_266C55ECC(v13);
  sub_266DA8E8C();
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_0_87();
  if (v27)
  {
    sub_266DAA77C();
    v26 = 0;
  }

  v28 = 1;
  OUTLINED_FUNCTION_1_65(v10, v26);
  sub_266DA8EDC();
  OUTLINED_FUNCTION_2_69();
  sub_266C55ECC(v10);
  OUTLINED_FUNCTION_0_87();
  v30 = v37;
  if (v29)
  {
    sub_266DAA77C();
    v28 = 0;
  }

  v31 = 1;
  OUTLINED_FUNCTION_1_65(v30, v28);
  sub_266DA8E7C();
  OUTLINED_FUNCTION_3_58();
  sub_266C55ECC(v30);
  OUTLINED_FUNCTION_0_87();
  v33 = v38;
  if (v32)
  {
    sub_266DAA77C();
    v31 = 0;
  }

  OUTLINED_FUNCTION_1_65(v33, v31);
  sub_266DA8E9C();
  OUTLINED_FUNCTION_2_69();
  sub_266C55ECC(v33);
  v34 = sub_266DA8F1C();
  sub_266D7FB28(a1);
  return v34;
}

uint64_t sub_266D7FB28(uint64_t a1)
{
  v2 = type metadata accessor for Address(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_65(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_2_69()
{
}

uint64_t OUTLINED_FUNCTION_3_58()
{
}

void sub_266D7FBD8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  v12 = [v1 name];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 spokenPhrase];
    sub_266DAA70C();

    sub_266D81FE0(v13, &selRef_pronunciationHint);
    sub_266DA916C();

    v15 = sub_266DA919C();
    v16 = 0;
  }

  else
  {
    v15 = sub_266DA919C();
    v16 = 1;
  }

  v17 = 1;
  __swift_storeEnumTagSinglePayload(v11, v16, 1, v15);
  v18 = sub_266D319E0(v1);
  v69 = v19;
  v70 = v18;
  v20 = sub_266D81FE0(v1, &selRef_subThoroughfare);
  v67 = v21;
  v68 = v20;
  v22 = sub_266D319EC(v1);
  v65 = v23;
  v66 = v22;
  v24 = [v1 locality];
  v71 = v11;
  if (v24)
  {
    v25 = v24;
    v26 = [v24 spokenPhrase];
    sub_266DAA70C();

    sub_266D81FE0(v25, &selRef_pronunciationHint);
    sub_266DA916C();

    v17 = 0;
  }

  v27 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v8, v17, 1, v27);
  v28 = sub_266D31A68(v1);
  v63 = v29;
  v64 = v28;
  v30 = sub_266D31A74(v1);
  v61 = v31;
  v62 = v30;
  v32 = sub_266D31A80(v1);
  v59 = v33;
  v60 = v32;
  v34 = sub_266D31A8C(v1);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v35 = v34;
  }

  v58 = v35;

  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  v39 = type metadata accessor for Address(0);
  v40 = (v3 + v39[5]);
  v41 = (v3 + v39[6]);
  v42 = v39[8];
  v43 = (v3 + v39[7]);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v27);
  v47 = (v3 + v39[9]);
  v48 = (v3 + v39[10]);
  v49 = v39[11];
  v50 = v39[12];
  v51 = (v3 + v49);
  sub_266C64CA4(v71, v3);
  v52 = v69;
  *v40 = v70;
  v40[1] = v52;
  v53 = v67;
  *v41 = v68;
  v41[1] = v53;
  v54 = v65;
  *v43 = v66;
  v43[1] = v54;
  sub_266C64CA4(v8, v3 + v42);
  v55 = v63;
  *v47 = v64;
  v47[1] = v55;
  v56 = v61;
  *v48 = v62;
  v48[1] = v56;
  v57 = v59;
  *v51 = v60;
  v51[1] = v57;
  *(v3 + v50) = v58;
  OUTLINED_FUNCTION_5();
}

uint64_t Address.init(name:thoroughfare:subThoroughfare:fullThoroughfare:locality:administrativeArea:country:countryCode:areasOfInterest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = sub_266DA919C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = type metadata accessor for Address(0);
  v23 = (a9 + v22[5]);
  v24 = (a9 + v22[6]);
  v25 = v22[8];
  v26 = (a9 + v22[7]);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v18);
  v30 = (a9 + v22[9]);
  v31 = (a9 + v22[10]);
  v32 = v22[11];
  v33 = v22[12];
  v34 = (a9 + v32);
  sub_266C64CA4(a1, a9);
  *v23 = a2;
  v23[1] = a3;
  *v24 = a4;
  v24[1] = a5;
  *v26 = a6;
  v26[1] = a7;
  result = sub_266C64CA4(a8, a9 + v25);
  *v30 = a10;
  v30[1] = a11;
  *v31 = a12;
  v31[1] = a13;
  *v34 = a14;
  v34[1] = a15;
  *(a9 + v33) = a16;
  return result;
}

uint64_t type metadata accessor for Address(uint64_t a1)
{
  result = qword_2800CDE10;
  if (!qword_2800CDE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266D80070()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v7 = OUTLINED_FUNCTION_4_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_5();
  v67 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = sub_266DA919C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for Address(0);
  v18 = (v5 + v17[5]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v5 + v17[6]);
  *v19 = 0;
  v19[1] = 0;
  OUTLINED_FUNCTION_26_14(v17[7]);
  v62 = v20;
  v63 = *(v21 + 32);
  OUTLINED_FUNCTION_43();
  v69 = v13;
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v13);
  OUTLINED_FUNCTION_26_14(v17[9]);
  v64 = v25;
  OUTLINED_FUNCTION_26_14(v17[10]);
  v65 = v26;
  OUTLINED_FUNCTION_26_14(v17[11]);
  v66 = v27;
  v68 = v17[12];
  *(v5 + v68) = 0;
  v28 = [v3 name];
  if (v28)
  {
    v29 = v28;
    sub_266DAA70C();
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v70 = v1;
  sub_266DA74CC();
  v32 = sub_266DAA6FC();

  v33 = [v3 spokenNameForLocale_];

  if (v33)
  {
    sub_266DAA70C();

    if (v31)
    {
LABEL_6:
      sub_266DA916C();
      v34 = 0;
      goto LABEL_9;
    }
  }

  else if (v31)
  {
    goto LABEL_6;
  }

  v34 = 1;
LABEL_9:
  v35 = v69;
  __swift_storeEnumTagSinglePayload(v12, v34, 1, v69);
  sub_266C64CA4(v12, v5);
  v36 = [v3 geoAddress];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 structuredAddress];

    v39 = v70;
    if (v38)
    {
      *v19 = sub_266D81FE0(v38, &selRef_subThoroughfare);
      v19[1] = v40;
      *v18 = sub_266D81FE0(v38, &selRef_thoroughfare);
      v18[1] = v41;
      v42 = sub_266D81FE0(v38, &selRef_fullThoroughfare);
      v43 = v62;
      *v62 = v42;
      v43[1] = v44;
      sub_266D81FE0(v38, &selRef_locality);
      if (v45)
      {
        v46 = v67;
        sub_266DA915C();
        v47 = 0;
      }

      else
      {
        v47 = 1;
        v46 = v67;
      }

      __swift_storeEnumTagSinglePayload(v46, v47, 1, v35);
      sub_266C64CA4(v46, v5 + v63);
      v50 = sub_266D81FE0(v38, &selRef_administrativeArea);
      v51 = v64;
      *v64 = v50;
      v51[1] = v52;
      v53 = sub_266D81FE0(v38, &selRef_country);
      v54 = v65;
      *v65 = v53;
      v54[1] = v55;
      v56 = sub_266D81FE0(v38, &selRef_countryCode);
      v57 = v66;
      *v66 = v56;
      v57[1] = v58;
      v59 = [v38 areaOfInterests];
      sub_266DA750C();
      OUTLINED_FUNCTION_8_0();
      (*(v60 + 8))(v39);
      if (v59)
      {
        v71 = 0;
        sub_266DAA92C();
        swift_unknownObjectRelease();

        v61 = v71;
      }

      else
      {
        swift_unknownObjectRelease();

        v61 = 0;
      }

      *(v5 + v68) = v61;
    }

    else
    {
      sub_266DA750C();
      OUTLINED_FUNCTION_8_0();
      (*(v49 + 8))(v39);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_266DA750C();
    OUTLINED_FUNCTION_8_0();
    (*(v48 + 8))(v70);
  }

  OUTLINED_FUNCTION_5();
}

uint64_t Address.thoroughfare.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.thoroughfare.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.thoroughfare.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.subThoroughfare.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.subThoroughfare.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.subThoroughfare.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.fullThoroughfare.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.fullThoroughfare.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.fullThoroughfare.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.locality.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Address(0) + 32);

  return sub_266C64D14(v3, a1);
}

uint64_t Address.locality.setter()
{
  v2 = OUTLINED_FUNCTION_7_8();
  v3 = v1 + *(type metadata accessor for Address(v2) + 32);

  return sub_266C64CA4(v0, v3);
}

uint64_t Address.locality.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.administrativeArea.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.administrativeArea.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.country.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.country.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.country.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.countryCode.getter()
{
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_12_26();
  return OUTLINED_FUNCTION_4_4();
}

uint64_t Address.countryCode.setter()
{
  OUTLINED_FUNCTION_11_32();
  result = OUTLINED_FUNCTION_25_15();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Address.countryCode.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Address.areasOfInterest.getter()
{
  type metadata accessor for Address(0);
}

uint64_t Address.areasOfInterest.setter()
{
  v2 = OUTLINED_FUNCTION_7_8();
  v3 = *(type metadata accessor for Address(v2) + 48);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Address.areasOfInterest.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Address(v0);
  return OUTLINED_FUNCTION_11_4();
}

void static Address.== infix(_:_:)()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v12 = OUTLINED_FUNCTION_4_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_5();
  v84 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v81[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC18, &unk_266DB86B8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_5();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v81[-v24];
  v26 = *(v23 + 48);
  sub_266C64D14(v3, &v81[-v24]);
  sub_266C64D14(v1, &v25[v26]);
  OUTLINED_FUNCTION_1_46(v25);
  if (v27)
  {
    OUTLINED_FUNCTION_1_46(&v25[v26]);
    if (v27)
    {
      v83 = v21;
      sub_266C47654(v25, &qword_2800CA038, &unk_266DAFBF0);
      goto LABEL_13;
    }

LABEL_9:
    v28 = v25;
LABEL_10:
    sub_266C47654(v28, &qword_2800CCC18, &unk_266DB86B8);
    goto LABEL_11;
  }

  sub_266C64D14(v25, v17);
  OUTLINED_FUNCTION_1_46(&v25[v26]);
  if (v27)
  {
    (*(v6 + 8))(v17, v4);
    goto LABEL_9;
  }

  v83 = v21;
  (*(v6 + 32))(v10, &v25[v26], v4);
  OUTLINED_FUNCTION_0_88();
  sub_266D82160(v29, v30, MEMORY[0x277D55C58]);
  v82 = sub_266DAA6EC();
  v31 = *(v6 + 8);
  v31(v10, v4);
  v31(v17, v4);
  sub_266C47654(v25, &qword_2800CA038, &unk_266DAFBF0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v32 = type metadata accessor for Address(0);
  OUTLINED_FUNCTION_1_66();
  if (v35)
  {
    if (!v33)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_55(v34);
    v38 = v27 && v36 == v37;
    if (!v38 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v33)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_66();
  if (v41)
  {
    if (!v39)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_55(v40);
    v44 = v27 && v42 == v43;
    if (!v44 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v39)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_66();
  if (v47)
  {
    if (!v45)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_55(v46);
    v50 = v27 && v48 == v49;
    if (!v50 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v45)
  {
    goto LABEL_11;
  }

  v51 = *(v32 + 32);
  v52 = *(v18 + 48);
  v53 = v83;
  sub_266C64D14(v3 + v51, v83);
  sub_266C64D14(v1 + v51, v53 + v52);
  OUTLINED_FUNCTION_1_46(v53);
  if (!v27)
  {
    v54 = v84;
    sub_266C64D14(v53, v84);
    OUTLINED_FUNCTION_1_46(v53 + v52);
    if (!v55)
    {
      (*(v6 + 32))(v10, v53 + v52, v4);
      OUTLINED_FUNCTION_0_88();
      sub_266D82160(v56, v57, MEMORY[0x277D55C58]);
      v58 = sub_266DAA6EC();
      v59 = *(v6 + 8);
      v59(v10, v4);
      v59(v54, v4);
      sub_266C47654(v53, &qword_2800CA038, &unk_266DAFBF0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_50;
    }

    (*(v6 + 8))(v54, v4);
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_1_46(v53 + v52);
  if (!v27)
  {
LABEL_48:
    v28 = v53;
    goto LABEL_10;
  }

  sub_266C47654(v53, &qword_2800CA038, &unk_266DAFBF0);
LABEL_50:
  OUTLINED_FUNCTION_1_66();
  if (v62)
  {
    if (!v60)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_55(v61);
    v65 = v27 && v63 == v64;
    if (!v65 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v60)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_66();
  if (v68)
  {
    if (!v66)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_4_55(v67);
    v71 = v27 && v69 == v70;
    if (!v71 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v66)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_66();
  if (!v74)
  {
    if (v72)
    {
      goto LABEL_11;
    }

    goto LABEL_77;
  }

  if (v72)
  {
    OUTLINED_FUNCTION_4_55(v73);
    v77 = v27 && v75 == v76;
    if (v77 || (sub_266DAB17C() & 1) != 0)
    {
LABEL_77:
      v78 = *(v32 + 48);
      v79 = *(v3 + v78);
      v80 = *(v1 + v78);
      if (v79 && v80)
      {
        sub_266D71FE0(v79, v80);
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D80FD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F726F6854627573 && a2 == 0xEF65726166686775;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000266DC44E0 == a2;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x8000000266DC4500 == a2;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
                if (v12 || (sub_266DAB17C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x49664F7361657261 && a2 == 0xEF7473657265746ELL)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_266DAB17C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_266D812B8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6867756F726F6874;
      break;
    case 2:
      result = 0x6F726F6854627573;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x7974696C61636F6CLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7972746E756F63;
      break;
    case 7:
      result = 0x437972746E756F63;
      break;
    case 8:
      result = 0x49664F7361657261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D813E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D80FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D81410(uint64_t a1)
{
  v2 = sub_266D81720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D8144C(uint64_t a1)
{
  v2 = sub_266D81720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Address.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDDF0, &qword_266DBE588);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D81720();
  sub_266DAB36C();
  LOBYTE(v17) = 0;
  sub_266DA919C();
  OUTLINED_FUNCTION_0_88();
  sub_266D82160(v11, v12, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_1_15(v3);
  if (!v2)
  {
    v13 = type metadata accessor for Address(0);
    OUTLINED_FUNCTION_16_20(v13[5]);
    OUTLINED_FUNCTION_3_59(1);
    OUTLINED_FUNCTION_16_20(v13[6]);
    OUTLINED_FUNCTION_3_59(2);
    OUTLINED_FUNCTION_16_20(v13[7]);
    OUTLINED_FUNCTION_3_59(3);
    v14 = v13[8];
    LOBYTE(v17) = 4;
    OUTLINED_FUNCTION_1_15(v3 + v14);
    OUTLINED_FUNCTION_16_20(v13[9]);
    OUTLINED_FUNCTION_3_59(5);
    OUTLINED_FUNCTION_16_20(v13[10]);
    OUTLINED_FUNCTION_3_59(6);
    OUTLINED_FUNCTION_16_20(v13[11]);
    OUTLINED_FUNCTION_3_59(7);
    v17 = *(v3 + v13[12]);
    v16[15] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    sub_266CFBD74(&qword_2800CC828, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_266DAB0DC();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_266D81720()
{
  result = qword_2800CDDF8;
  if (!qword_2800CDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDDF8);
  }

  return result;
}

void Address.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  OUTLINED_FUNCTION_7_8();
  v25 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_6();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v33 = OUTLINED_FUNCTION_4_3(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_5();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_266C64D14(v24, &a9 - v38);
  if (__swift_getEnumTagSinglePayload(v39, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    (*(v27 + 32))(v31, v39, v25);
    OUTLINED_FUNCTION_4_50();
    v40 = sub_266DA917C();
    OUTLINED_FUNCTION_8_22(v40, v41);

    v42 = sub_266DA918C();
    OUTLINED_FUNCTION_8_22(v42, v43);

    (*(v27 + 8))(v31, v25);
  }

  v44 = type metadata accessor for Address(0);
  if (*(v24 + v44[5] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_21_20();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  if (*(v24 + v44[6] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_21_20();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  if (*(v24 + v44[7] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_21_20();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  sub_266C64D14(v24 + v44[8], v36);
  if (__swift_getEnumTagSinglePayload(v36, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_3_52();
  }

  else
  {
    (*(v27 + 32))(v31, v36, v25);
    OUTLINED_FUNCTION_4_50();
    v45 = sub_266DA917C();
    OUTLINED_FUNCTION_8_22(v45, v46);

    v47 = sub_266DA918C();
    OUTLINED_FUNCTION_8_22(v47, v48);

    (*(v27 + 8))(v31, v25);
  }

  if (*(v24 + v44[9] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_0_79();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  if (*(v24 + v44[10] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_0_79();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  if (*(v24 + v44[11] + 8))
  {
    OUTLINED_FUNCTION_4_50();
    OUTLINED_FUNCTION_0_79();
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  v49 = *(v24 + v44[12]);
  if (v49)
  {
    OUTLINED_FUNCTION_4_50();
    sub_266D8203C(v20, v49);
  }

  else
  {
    OUTLINED_FUNCTION_3_52();
  }

  OUTLINED_FUNCTION_5();
}

uint64_t Address.hashValue.getter()
{
  sub_266DAB2AC();
  Address.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_266DAB2DC();
}

uint64_t Address.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v4 = OUTLINED_FUNCTION_4_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_5();
  v65 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v68 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE00, &qword_266DBE590);
  OUTLINED_FUNCTION_0_2();
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  v74 = &v58 - v11;
  v12 = type metadata accessor for Address(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = sub_266DA919C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = (v16 + v13[7]);
  *v21 = 0;
  v21[1] = 0;
  v66 = v21;
  v67 = v17;
  v22 = (v16 + v13[8]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v16 + v13[9]);
  *v23 = 0;
  v23[1] = 0;
  v64 = v13[10];
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v17);
  v27 = (v16 + v13[11]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v16 + v13[12]);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v16 + v13[13]);
  *v29 = 0;
  v29[1] = 0;
  v30 = v13[14];
  v72 = v16;
  *(v16 + v30) = 0;
  v31 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_266D81720();
  v32 = v71;
  sub_266DAB34C();
  if (v32)
  {
    v40 = v72;
  }

  else
  {
    v33 = v66;
    v71 = v22;
    v61 = v28;
    v62 = v27;
    v59 = v30;
    v60 = v29;
    LOBYTE(v76) = 0;
    OUTLINED_FUNCTION_0_88();
    sub_266D82160(v34, v35, MEMORY[0x277D55C60]);
    v36 = v68;
    v37 = v69;
    OUTLINED_FUNCTION_24_14();
    v39 = v36;
    v40 = v72;
    sub_266C64CA4(v39, v72);
    *v33 = OUTLINED_FUNCTION_2_70(1);
    v33[1] = v41;
    v42 = OUTLINED_FUNCTION_2_70(2);
    v43 = v71;
    *v71 = v42;
    v43[1] = v44;
    *v23 = OUTLINED_FUNCTION_2_70(3);
    v23[1] = v45;
    LOBYTE(v76) = 4;
    v46 = v65;
    OUTLINED_FUNCTION_24_14();
    sub_266C64CA4(v46, v40 + v64);
    v47 = OUTLINED_FUNCTION_2_70(5);
    v48 = v62;
    *v62 = v47;
    v48[1] = v49;
    v50 = OUTLINED_FUNCTION_2_70(6);
    v51 = v70;
    v52 = v61;
    *v61 = v50;
    v52[1] = v53;
    v54 = OUTLINED_FUNCTION_2_70(7);
    v55 = v60;
    *v60 = v54;
    v55[1] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC808, &qword_266DB6BF8);
    v75 = 8;
    sub_266CFBD74(&qword_2800CC810, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v57 = v74;
    sub_266DAB00C();
    (*(v51 + 8))(v57, v37);
    *(v40 + v59) = v76;
    sub_266D820B4(v40, v63);
  }

  __swift_destroy_boxed_opaque_existential_0(v73);
  return sub_266D7FB28(v40);
}

uint64_t sub_266D81F74(uint64_t a1)
{
  sub_266DAB2AC();
  Address.hash(into:)(v10, v1, v2, v3, v4, v5, v6, v7, v9, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10]);
  return sub_266DAB2DC();
}

uint64_t sub_266D81FE0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_4_4();
}

uint64_t sub_266D8203C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D5F1C20](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_266DAA7BC();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_266D820B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Address(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D82160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266D821D0(uint64_t a1)
{
  sub_266C63E94(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_266C2AA28();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_266D82298(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_266D82298(uint64_t a1)
{
  if (!qword_2800CDE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC808, &qword_266DB6BF8);
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CDE20);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Address.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D823DC()
{
  result = qword_2800CDE28;
  if (!qword_2800CDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE28);
  }

  return result;
}

unint64_t sub_266D82434()
{
  result = qword_2800CDE30;
  if (!qword_2800CDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE30);
  }

  return result;
}

unint64_t sub_266D8248C()
{
  result = qword_2800CDE38;
  if (!qword_2800CDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_70@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_266DAAFCC();
}

uint64_t OUTLINED_FUNCTION_3_59@<X0>(char a3@<W8>)
{
  *(v3 - 72) = a3;

  return sub_266DAB09C();
}

uint64_t OUTLINED_FUNCTION_8_22(uint64_t a1, uint64_t a2)
{

  return sub_266DAA7BC();
}

uint64_t OUTLINED_FUNCTION_11_32()
{

  return type metadata accessor for Address(0);
}

uint64_t OUTLINED_FUNCTION_12_26()
{
}

uint64_t OUTLINED_FUNCTION_21_20()
{

  return sub_266DAA7BC();
}

void *OUTLINED_FUNCTION_24_14()
{

  return sub_266DAB00C();
}

uint64_t OUTLINED_FUNCTION_25_15()
{
}

void OUTLINED_FUNCTION_26_14(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t SharedLocationVisibility.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6C62697369766E69;
    case 1:
      return 0x656C6269736976;
  }

  result = sub_266DAB1DC();
  __break(1u);
  return result;
}

uint64_t sub_266D826D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
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

uint64_t sub_266D82714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266D8279C()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_62();
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D82844()
{
  v1 = v0[3];
  v2 = *(v0[4] + 40);
  type metadata accessor for FindFriendIntent();

  v3 = v2;
  v4 = v1;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v5 = sub_266DA7A8C();
  v6 = OUTLINED_FUNCTION_42();
  v7(v6);

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_266D82934()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v4);
  v1[5] = OUTLINED_FUNCTION_62();
  v5 = sub_266DA737C();
  v1[6] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_64();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D82A20()
{
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33(&qword_2800C9430);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E64F0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "FindFriend.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE48, &unk_266DBE958);
  v5 = sub_266DA7FCC();
  v0[11] = v5;
  v6 = OUTLINED_FUNCTION_40_3();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  OUTLINED_FUNCTION_83();
  if (sub_266DA7B7C())
  {
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      v10 = OUTLINED_FUNCTION_11();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "Punching out to friend.", v10, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    v11 = [v5 friend];
    if (v11)
    {
      sub_266C22F3C(v11);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (qword_2800C94A0 != -1)
    {
      swift_once();
    }

    v17 = v0[9];
    v19 = v0[6];
    v18 = v0[7];
    v20 = __swift_project_value_buffer(v19, qword_2800E6560);
    v21 = *(v18 + 16);
    (v21)(v17, v20, v19);
    OUTLINED_FUNCTION_61_5();
    v21();
    if (v13)
    {

      sub_266DA733C();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    __swift_storeEnumTagSinglePayload(v0[5], v22, 1, v25);
    v26 = *(v24 + 8);
    v26(v23, v25);
    v27 = OUTLINED_FUNCTION_78();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, v28, v25);
    v30 = v0[6];
    if (EnumTagSinglePayload == 1)
    {
      (*(v0[7] + 32))(v0[10], v0[9], v0[6]);
      v31 = OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_61(v31, v32, v30);
      if (!v33)
      {
        sub_266C47654(v0[5], &qword_2800C9C48, &unk_266DAEBA0);
      }
    }

    else
    {
      v26(v0[9], v0[6]);
      v34 = OUTLINED_FUNCTION_40_3();
      v35(v34);
    }

    v36 = v0[10];
    v37 = v0[6];
    v38 = v0[2];
    v39 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    v40 = sub_266DA732C();
    [v39 setPunchOutUri_];

    v26(v36, v37);

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
    v42 = OUTLINED_FUNCTION_101(v41);
    *(v42 + 16) = xmmword_266DAE3B0;
    *(v42 + 32) = v39;
    v43 = sub_266DA820C();
    v44 = MEMORY[0x277D5C1D8];
    v38[3] = v43;
    v38[4] = v44;
    __swift_allocate_boxed_opaque_existential_1(v38);
    sub_266DA81FC();

    OUTLINED_FUNCTION_15_4();

    return v45();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[12] = v14;
    *v14 = v15;
    v14[1] = sub_266D82ED0;

    return sub_266D830E0();
  }
}

uint64_t sub_266D82ED0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D82FCC()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D83054()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D830E0()
{
  OUTLINED_FUNCTION_22_0();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = sub_266DA80AC();
  v1[45] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_64();
  v1[48] = swift_task_alloc();
  v6 = sub_266DA7C0C();
  v1[49] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[50] = v7;
  v1[51] = OUTLINED_FUNCTION_64();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v8);
  v1[54] = OUTLINED_FUNCTION_64();
  v1[55] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v9);
  v1[56] = OUTLINED_FUNCTION_64();
  v1[57] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v10);
  v1[58] = v11;
  v1[59] = *(v12 + 64);
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v13 = type metadata accessor for Snippets(0);
  v1[74] = v13;
  OUTLINED_FUNCTION_4_3(v13);
  v1[75] = OUTLINED_FUNCTION_64();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v14 = sub_266DA7E5C();
  v1[84] = v14;
  OUTLINED_FUNCTION_11_3(v14);
  v1[85] = v15;
  v1[86] = OUTLINED_FUNCTION_62();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  OUTLINED_FUNCTION_4_3(v16);
  v1[87] = OUTLINED_FUNCTION_62();
  v17 = type metadata accessor for Friend(0);
  v1[88] = v17;
  OUTLINED_FUNCTION_4_3(v17);
  v1[89] = OUTLINED_FUNCTION_62();
  v18 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_266D83480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE48, &unk_266DBE958);
  v39 = sub_266DA7FCC();
  v38[90] = v39;
  v40 = sub_266DA7FBC();
  v38[91] = v40;
  v41 = [v39 friend];
  v38[92] = v41;
  if (!v41)
  {
    goto LABEL_5;
  }

  v42 = v38[88];
  v43 = v38[87];
  v44 = v41;
  Friend.init(from:friendLocation:)(v44, [v40 friendLocation], v43);
  OUTLINED_FUNCTION_61(v43, 1, v42);
  if (v104)
  {
    v45 = v38[87];

    sub_266C47654(v45, &qword_2800CA8C8, &unk_266DB2130);
LABEL_5:
    if (qword_2800C9430 != -1)
    {
      OUTLINED_FUNCTION_11_33(&qword_2800C9430);
    }

    v46 = sub_266DA94AC();
    __swift_project_value_buffer(v46, qword_2800E64F0);
    v47 = sub_266DA948C();
    v48 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_16_0(v48))
    {
      v49 = OUTLINED_FUNCTION_11();
      *v49 = 0;
      _os_log_impl(&dword_266C08000, v47, v48, "Intent's friend is nil", v49, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266DA7C4C();
    sub_266DA7C3C();

    OUTLINED_FUNCTION_1_67();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_16_11();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  OUTLINED_FUNCTION_23_21();
  sub_266D8C990();
  v59 = OUTLINED_FUNCTION_75();
  sub_266D86900(v59, v60, v61);
  v62 = [v39 friend];
  if (v62)
  {
    v62 = sub_266CA1908(v62);
  }

  v38[93] = v62;
  v63 = v38[83];
  v64 = [v40 userLocation];
  sub_266D86D08(v64, v63);

  v65 = sub_266DA7FBC();
  v66 = [v65 friendLocation];

  v67 = sub_266D86F44(v66);
  if (v67)
  {
    if (v67 == 1)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v38[108] = v68;
      *v68 = v69;
      v68[1] = sub_266D86460;
      OUTLINED_FUNCTION_106_2();
      OUTLINED_FUNCTION_16_11();

      return sub_266D879D4();
    }

    v74 = v38[86];
    v75 = v38[85];
    v76 = v38[84];
    v77 = v38[74];
    v78 = v38[56];
    v166 = *(v38[44] + 224);
    OUTLINED_FUNCTION_8_23();
    sub_266D8CAB8();
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v77);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v77);
    (*(v75 + 16))(v78, v74, v76);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v76);
    sub_266DA7C7C();
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    sub_266DA7BCC();
    v92 = MEMORY[0x277D84F90];
    if (sub_266C3A14C())
    {
      OUTLINED_FUNCTION_63();
      sub_266CB9F54();
      if (v92 >> 62)
      {
        v93 = MEMORY[0x26D5F1780](0, MEMORY[0x277D84F90]);
      }

      else
      {
        v93 = *(v92 + 32);
      }

      v94 = v93;
      v95 = [v93 catId];

      v159 = sub_266DAA70C();
      v161 = v96;
    }

    else
    {
      v159 = 0;
      v161 = 0;
    }

    v162 = v38[74];
    v158 = v38[65];
    v160 = v38[63];
    v155 = v38[56];
    v156 = v38[54];
    v97 = v38[52];
    v98 = v38[50];
    v153 = v38[49];
    v154 = v38[51];
    v157 = v38[47];
    sub_266D1CAC8();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_86_3();
    v99 = swift_allocObject();
    v38[103] = v99;
    *(v99 + 16) = v166;
    sub_266D1CB20();
    sub_266D1CB20();
    (*(v98 + 16))(v97, v154, v153);
    v100 = swift_task_alloc();
    *(v100 + 16) = 0;
    *(v100 + 24) = 0;
    *(v100 + 32) = 0;
    *(v100 + 40) = v159;
    *(v100 + 48) = v161;
    *(v100 + 56) = v155;
    *(v100 + 64) = 514;
    *(v100 + 72) = sub_266C48BBC;
    *(v100 + 80) = v99;
    *(v100 + 88) = v156;

    sub_266DA800C();

    sub_266D1CAC8();
    v101 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_61(v101, v102, v162);
    if (v104)
    {
      v103 = v38 + 63;
    }

    else
    {
      OUTLINED_FUNCTION_8_23();
      sub_266D8C990();
      OUTLINED_FUNCTION_42();
      sub_266D1CAC8();
      OUTLINED_FUNCTION_30_13();
      if (!v104)
      {
        v124 = v38[74];
        OUTLINED_FUNCTION_6_42();
        sub_266D8C990();
        v38[15] = v124;
        OUTLINED_FUNCTION_3_60();
        v127 = sub_266D8CA74(v125, v126);
        OUTLINED_FUNCTION_95_1(v127);
        OUTLINED_FUNCTION_41();
        sub_266D8CAB8();
        v38[20] = v124;
        v38[21] = v99;
        __swift_allocate_boxed_opaque_existential_1(v38 + 17);
        OUTLINED_FUNCTION_50_7();
        OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
        v165 = v128;
        swift_task_alloc();
        OUTLINED_FUNCTION_24_1();
        v38[104] = v129;
        *v129 = v130;
        v129[1] = sub_266D8575C;
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_16_11();

        return v136(v131, v132, v133, v134, v135, v136, v137, v138, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v153, v154, v155, v156, v157, v158, v159, v160, v161, v165, v166, a35, a36, a37, a38);
      }

      v103 = v38 + 62;
      OUTLINED_FUNCTION_0_89();
      sub_266D8C9E8(v105, v106);
    }

    OUTLINED_FUNCTION_77_2(*v103);
    OUTLINED_FUNCTION_34_5();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (!v104)
    {
      v118 = v38[74];
      OUTLINED_FUNCTION_7_36();
      sub_266D8C990();
      v38[10] = v118;
      OUTLINED_FUNCTION_3_60();
      v38[11] = sub_266D8CA74(v119, v120);
      __swift_allocate_boxed_opaque_existential_1(v38 + 7);
      OUTLINED_FUNCTION_41();
      sub_266D8CAB8();
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
      v164 = v121;
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v38[105] = v122;
      *v122 = v123;
      v122[1] = sub_266D85AE0;
LABEL_43:
      OUTLINED_FUNCTION_16_11();

      return v149(v145, v146, v147, v148, v149, v150, v151, v152, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v153, v154, v155, v156, v157, v158, v159, v160, v161, v164, v166, a35, a36, a37, a38);
    }

    OUTLINED_FUNCTION_77_2(v38[61]);
    OUTLINED_FUNCTION_34_5();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (!v104)
    {
      v139 = v38[74];
      OUTLINED_FUNCTION_7_36();
      sub_266D8C990();
      v38[5] = v139;
      OUTLINED_FUNCTION_3_60();
      v38[6] = sub_266D8CA74(v140, v141);
      __swift_allocate_boxed_opaque_existential_1(v38 + 2);
      OUTLINED_FUNCTION_41();
      sub_266D8CAB8();
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
      v164 = v142;
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v38[106] = v143;
      *v143 = v144;
      v143[1] = sub_266D85DF4;
      goto LABEL_43;
    }

    sub_266C47654(v38[60], &qword_2800CA050, &qword_266DB0080);
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
    v163 = v107;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v38[107] = v108;
    *v108 = v109;
    v108[1] = sub_266D86108;
    OUTLINED_FUNCTION_16_11();

    return v113(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v153, v154, v155, v156, v157, v158, v159, v160, v161, v163, v166, a35, a36, a37, a38);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v38[44] + 96), *(v38[44] + 120));
    v71 = v44;
    v72 = swift_task_alloc();
    v38[94] = v72;
    *v72 = v38;
    OUTLINED_FUNCTION_88_0(v72);
    OUTLINED_FUNCTION_16_11();

    return sub_266D26A40();
  }
}

uint64_t sub_266D83FD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v5 = *(v4 + 736);
  v6 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v7 = v6;
  *(v9 + 760) = v8;
  *(v9 + 768) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D840EC()
{
  OUTLINED_FUNCTION_27_14(*(v3 + 768));

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v6, v9);
  (*(v1 + 8))(v7, v0);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v8, v10);

  OUTLINED_FUNCTION_28();

  return v11();
}

void sub_266D842C0()
{
  v1 = v0[95];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[74];
  v6 = v0[57];
  v89 = *(v0[44] + 224);
  OUTLINED_FUNCTION_8_23();
  sub_266D8CAB8();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v14 = OUTLINED_FUNCTION_101(v13);
  v0[97] = v14;
  *(v14 + 16) = xmmword_266DAE3B0;
  *(v14 + 32) = v1;
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = v1;
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    OUTLINED_FUNCTION_63();
    sub_266CB9F54();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x26D5F1780](0, v14);
    }

    else
    {
      v23 = *(v14 + 32);
    }

    v24 = v23;
    v25 = [v23 catId];

    sub_266DAA70C();
    v87 = v26;
  }

  else
  {
    v87 = 0;
  }

  v88 = v0[74];
  v84 = v0[57];
  v86 = v0[55];
  v27 = v0[52];
  v28 = v0[50];
  v80 = v0[49];
  v82 = v0[53];
  sub_266D1CAC8();
  OUTLINED_FUNCTION_75();
  sub_266D1CAC8();
  v29 = swift_allocObject();
  v0[98] = v29;
  *(v29 + 16) = v89;
  sub_266D1CB20();
  sub_266D1CB20();
  (*(v28 + 16))(v27, v82, v80);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_65_2(v30);
  *(v31 + 40) = v32;
  *(v31 + 48) = v87;
  v40 = OUTLINED_FUNCTION_33_11(v31, v33, v34, v35, v36, v37, v38, v39, v78, v80, v82, v84);
  *(v40 + 72) = sub_266C48BBC;
  *(v40 + 80) = v29;
  OUTLINED_FUNCTION_111_3(v40, v41, v42, v43, v44, v45, v46, v47, v79, v81, v83, v85, v86);

  OUTLINED_FUNCTION_103_2();
  sub_266DA800C();

  sub_266D1CAC8();
  v48 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v48, v49, v88);
  if (v51)
  {
    v50 = v0 + 69;
  }

  else
  {
    OUTLINED_FUNCTION_8_23();
    sub_266D8C990();
    OUTLINED_FUNCTION_42();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (!v51)
    {
      v63 = v0[74];
      OUTLINED_FUNCTION_6_42();
      sub_266D8C990();
      v0[35] = v63;
      OUTLINED_FUNCTION_3_60();
      v66 = sub_266D8CA74(v64, v65);
      v0[36] = v66;
      __swift_allocate_boxed_opaque_existential_1(v0 + 32);
      OUTLINED_FUNCTION_41();
      sub_266D8CAB8();
      v0[40] = v63;
      v0[41] = v66;
      __swift_allocate_boxed_opaque_existential_1(v0 + 37);
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[99] = v67;
      *v67 = v68;
      v67[1] = sub_266D849CC;
      OUTLINED_FUNCTION_105_2();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v50 = v0 + 68;
    OUTLINED_FUNCTION_0_89();
    sub_266D8C9E8(v52, v53);
  }

  OUTLINED_FUNCTION_77_2(*v50);
  OUTLINED_FUNCTION_34_5();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_30_13();
  if (v51)
  {
    OUTLINED_FUNCTION_77_2(v0[67]);
    OUTLINED_FUNCTION_34_5();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (v51)
    {
      sub_266C47654(v0[66], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[102] = v54;
      *v54 = v55;
      v54[1] = sub_266D853E4;
      OUTLINED_FUNCTION_106_2();
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v71 = v0[74];
    OUTLINED_FUNCTION_7_36();
    sub_266D8C990();
    v0[25] = v71;
    OUTLINED_FUNCTION_3_60();
    v0[26] = sub_266D8CA74(v72, v73);
    __swift_allocate_boxed_opaque_existential_1(v0 + 22);
    OUTLINED_FUNCTION_41();
    sub_266D8CAB8();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[101] = v74;
    *v74 = v75;
    v74[1] = sub_266D850AC;
  }

  else
  {
    v58 = v0[74];
    OUTLINED_FUNCTION_7_36();
    sub_266D8C990();
    v0[30] = v58;
    OUTLINED_FUNCTION_3_60();
    v0[31] = sub_266D8CA74(v59, v60);
    __swift_allocate_boxed_opaque_existential_1(v0 + 27);
    OUTLINED_FUNCTION_41();
    sub_266D8CAB8();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[100] = v61;
    *v61 = v62;
    v61[1] = sub_266D84D74;
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D849CC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D84AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v40 = v39[81];
  v68 = v39[72];
  v69 = v39[73];
  v41 = v39[53];
  v43 = v39[49];
  v42 = v39[50];
  v44 = v39[48];
  v46 = v39[45];
  v45 = v39[46];

  OUTLINED_FUNCTION_53_7();
  sub_266D8C9E8(v40, v47);
  v48 = OUTLINED_FUNCTION_4_4();
  sub_266D8C9E8(v48, v49);
  (*(v45 + 8))(v44, v46);
  (*(v42 + 8))(v41, v43);
  OUTLINED_FUNCTION_84_0(v68);
  OUTLINED_FUNCTION_84_0(v69);
  v50 = v39[95];
  v51 = v39[92];
  v52 = v39[91];
  v53 = v39[90];
  OUTLINED_FUNCTION_83_3();
  v54 = v39[85];
  v67 = v39[84];
  v55 = v39[83];
  v56 = v39[57];
  sub_266C47654(v39[55], &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v56, &qword_2800CA048, &unk_266DAFC00);

  sub_266D8C9E8(v55, v38);
  (*(v54 + 8))(v68, v67);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v69, v57);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v67, v68, v69, a35, a36, a37, a38);
}

uint64_t sub_266D84D74()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D84E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v44 = *(v39 + 640);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_0_89();
  v64 = v45;
  sub_266D8C9E8(v44, v46);
  v47 = OUTLINED_FUNCTION_59_6();
  v48(v47);
  v49 = OUTLINED_FUNCTION_22_5();
  v50(v49);
  OUTLINED_FUNCTION_77_5();
  v51 = OUTLINED_FUNCTION_75();
  sub_266C47654(v51, v52, &qword_266DB0080);
  v53 = OUTLINED_FUNCTION_47_9();
  sub_266C47654(v53, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v41, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_118_1();
  (*(v40 + 8))(a32, &qword_266DB0080);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(a33, v54);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_266D850AC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D851AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v44 = *(v39 + 632);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_0_89();
  v64 = v45;
  sub_266D8C9E8(v44, v46);
  v47 = OUTLINED_FUNCTION_59_6();
  v48(v47);
  v49 = OUTLINED_FUNCTION_22_5();
  v50(v49);
  OUTLINED_FUNCTION_77_5();
  v51 = OUTLINED_FUNCTION_75();
  sub_266C47654(v51, v52, &qword_266DB0080);
  v53 = OUTLINED_FUNCTION_47_9();
  sub_266C47654(v53, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v41, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_118_1();
  (*(v40 + 8))(a32, &qword_266DB0080);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(a33, v54);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

uint64_t sub_266D853E4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D854E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();

  v39 = OUTLINED_FUNCTION_83();
  v40(v39);
  v41 = OUTLINED_FUNCTION_38();
  v42(v41);
  v43 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v43, v44, v45);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v46, v47, v48);
  v49 = v38[95];
  v50 = v38[92];
  v51 = v38[91];
  v52 = v38[90];
  OUTLINED_FUNCTION_83_3();
  v53 = v38[85];
  v54 = v38[84];
  v55 = v38[83];
  v56 = v38[57];
  sub_266C47654(v38[55], &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v56, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v55, v57);
  (*(v53 + 8))(a33, v54);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(a34, v58);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266D8575C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D85848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v40 = v39[77];
  v67 = v39[64];
  v68 = v39[65];
  v41 = v39[50];
  v42 = v39[51];
  v43 = v39[49];
  v44 = v39[46];
  v45 = v39[47];
  v46 = v39[45];

  OUTLINED_FUNCTION_53_7();
  sub_266D8C9E8(v40, v47);
  v48 = OUTLINED_FUNCTION_4_4();
  sub_266D8C9E8(v48, v49);
  (*(v44 + 8))(v45, v46);
  (*(v41 + 8))(v42, v43);
  OUTLINED_FUNCTION_84_0(v67);
  OUTLINED_FUNCTION_84_0(v68);
  v50 = v39[92];
  v51 = v39[91];
  v52 = v39[90];
  OUTLINED_FUNCTION_83_3();
  v53 = v39[85];
  v54 = v39[84];
  v55 = v39[83];
  v56 = v39[56];
  sub_266C47654(v39[54], &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v56, &qword_2800CA048, &unk_266DAFC00);

  sub_266D8C9E8(v55, v38);
  (*(v53 + 8))(v67, v54);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v68, v57);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v67, v68, a35, a36, a37, a38);
}

uint64_t sub_266D85AE0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D85BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v43 = *(v39 + 608);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_0_89();
  v65 = v44;
  sub_266D8C9E8(v43, v45);
  v46 = OUTLINED_FUNCTION_59_6();
  v47(v46);
  v48 = OUTLINED_FUNCTION_22_5();
  v49(v48);
  OUTLINED_FUNCTION_77_5();
  v50 = OUTLINED_FUNCTION_75();
  sub_266C47654(v50, v51, &qword_266DB0080);
  v52 = OUTLINED_FUNCTION_49_9();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v40, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_118_1();
  v53 = OUTLINED_FUNCTION_40_3();
  v54(v53);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(a33, v55);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v65, a35, a36, a37, a38);
}

uint64_t sub_266D85DF4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D85ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v43 = *(v39 + 600);
  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_0_89();
  v65 = v44;
  sub_266D8C9E8(v43, v45);
  v46 = OUTLINED_FUNCTION_59_6();
  v47(v46);
  v48 = OUTLINED_FUNCTION_22_5();
  v49(v48);
  OUTLINED_FUNCTION_77_5();
  v50 = OUTLINED_FUNCTION_75();
  sub_266C47654(v50, v51, &qword_266DB0080);
  v52 = OUTLINED_FUNCTION_49_9();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v40, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_118_1();
  v53 = OUTLINED_FUNCTION_40_3();
  v54(v53);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(a33, v55);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v65, a35, a36, a37, a38);
}

uint64_t sub_266D86108()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D861EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();

  v39 = OUTLINED_FUNCTION_83();
  v40(v39);
  v41 = OUTLINED_FUNCTION_38();
  v42(v41);
  v43 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v43, v44, v45);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v46, v47, v48);
  v49 = v38[92];
  v50 = v38[91];
  v51 = v38[90];
  v67 = v38[89];
  v52 = v38[83];
  v53 = v38[56];
  sub_266C47654(v38[54], &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v53, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v52, v54);
  v55 = OUTLINED_FUNCTION_38();
  v56(v55);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v67, v57);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v67, a35, a36, a37, a38);
}

uint64_t sub_266D86460()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 872) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D8655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v39 = *(v38 + 736);
  v40 = *(v38 + 720);
  v41 = *(v38 + 712);
  v42 = *(v38 + 664);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v42, v43);
  v44 = OUTLINED_FUNCTION_38();
  v45(v44);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v41, v46);
  OUTLINED_FUNCTION_1_67();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_16_11();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_266D8672C()
{
  OUTLINED_FUNCTION_27_14(*(v3 + 872));

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v6, v9);
  (*(v1 + 8))(v7, v0);
  OUTLINED_FUNCTION_4_56();
  sub_266D8C9E8(v8, v10);

  OUTLINED_FUNCTION_28();

  return v11();
}

uint64_t sub_266D86900@<X0>(void (**a1)(uint64_t, uint64_t, id)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v52 = a1;
  v5 = sub_266DA957C();
  OUTLINED_FUNCTION_0_2();
  v51 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_19();
  v53 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v49 = *(v9 - 8);
  v10 = v49;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v48 - v15;
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));

  sub_266DA7E4C();
  sub_266DA7DCC();
  v48[2] = a3;
  sub_266DA7E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7F0, &unk_266DB6F20);
  v17 = *(v10 + 72);
  v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266DB05C0;
  v48[1] = v19;
  v20 = v19 + v18;
  v21 = [v52 friend];
  if (v21)
  {
    v22 = v21;
    sub_266C70048(v20);
  }

  else
  {
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
  }

  v26 = v5;
  v27 = [v50 friendLocation];
  if (v27 && (v28 = v27, v29 = [v27 location], v28, v29))
  {
    sub_266D6D904(v20 + v17);
  }

  else
  {
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v5);
  }

  v33 = 0;
  v52 = (v51 + 32);
  v34 = MEMORY[0x277D84F90];
  v35 = &qword_2800CA8B8;
  v49 = v17;
  v50 = v5;
  do
  {
    v36 = v33;
    sub_266D1CAC8();
    sub_266D1CB20();
    OUTLINED_FUNCTION_22_17(v13);
    if (v37)
    {
      sub_266C47654(v13, v35, &qword_266DB30F0);
    }

    else
    {
      v38 = v35;
      v39 = v16;
      v40 = v20;
      v41 = *v52;
      (*v52)(v53, v13, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266CF9D4C();
        v34 = v45;
      }

      v43 = *(v34 + 16);
      if (v43 >= *(v34 + 24) >> 1)
      {
        sub_266CF9D4C();
        v34 = v46;
      }

      *(v34 + 16) = v43 + 1;
      v44 = v34 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v43;
      v26 = v50;
      v41(v44, v53, v50);
      v20 = v40;
      v16 = v39;
      v35 = v38;
    }

    v33 = 1;
  }

  while ((v36 & 1) == 0);
  swift_setDeallocating();
  sub_266C6F53C();
  return sub_266DA7DAC();
}

uint64_t sub_266D86D08@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v6 = OUTLINED_FUNCTION_4_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  if (sub_266DA7B9C() & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0), inited = swift_initStackObject(), *(inited + 16) = xmmword_266DAE4A0, *(inited + 56) = &unk_287867F78, *(inited + 64) = sub_266C6F020(), v14 = swift_allocObject(), *(inited + 32) = v14, *(v14 + 16) = "SiriFindMy", *(v14 + 24) = 10, *(v14 + 32) = 2, *(v14 + 40) = "CarPlaySnippets", *(v14 + 48) = 15, *(v14 + 56) = 2, v15 = sub_266D7E674(inited), swift_setDeallocating(), sub_266C6F0B4(), (v15))
  {
    if (a1)
    {
      sub_266C5FF68(a1, v9);
      sub_266D1CB20();
    }

    else
    {
      type metadata accessor for Location(0);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    }

    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_75();
    sub_266D8CAB8();
    v20 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
    type metadata accessor for Location(0);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    sub_266C25700(v12, a2 + v20);
  }

  else
  {
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_75();
    sub_266D8CAB8();
  }

  type metadata accessor for Snippets(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_266D86F44(void *a1)
{
  v2 = sub_266DA8E6C();
  OUTLINED_FUNCTION_0_2();
  v101 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_19();
  v97 = v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA830, &qword_266DB1E38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v94 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA838, &unk_266DB1E40);
  v14 = OUTLINED_FUNCTION_4_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v104 = &v94 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v94 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v100 = &v94 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v94 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v94 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v94 - v32);
  if (a1)
  {
    v34 = [a1 location];
    if (v34)
    {
      v42 = v34;
      if (sub_266D6DE10())
      {
        HIDWORD(v102) = 1;
      }

      else
      {
        HIDWORD(v102) = sub_266D6DE1C();
      }
    }

    else
    {
      HIDWORD(v102) = 0;
    }

    sub_266C25018(v34, v35, v36, v37, v38, v39, v40, v41, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    HIDWORD(v99) = v43;
  }

  else
  {
    HIDWORD(v99) = 0;
    HIDWORD(v102) = 0;
  }

  v44 = v105[27];
  v98 = v17;
  if (v44)
  {
    sub_266DA8DAC();
    sub_266DA93FC();

    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  __swift_storeEnumTagSinglePayload(v33, v45, 1, v2);
  sub_266DA8E3C();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v2);
  v49 = *(v103 + 48);
  sub_266D1CAC8();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_22_17(v12);
  if (v50)
  {
    sub_266C47654(v31, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_22_17(&v12[v49]);
    if (v50)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  sub_266D1CAC8();
  OUTLINED_FUNCTION_22_17(&v12[v49]);
  if (v50)
  {
    sub_266C47654(v31, &qword_2800CA838, &unk_266DB1E40);
    (*(v101 + 8))(v28, v2);
LABEL_21:
    sub_266C47654(v12, &qword_2800CA830, &qword_266DB1E38);
    v51 = v104;
    goto LABEL_22;
  }

  v61 = v101;
  v96 = v23;
  v62 = OUTLINED_FUNCTION_104_3();
  v63(v62);
  OUTLINED_FUNCTION_55_5();
  sub_266D8CA74(v64, v65);
  HIDWORD(v95) = sub_266DAA6EC();
  v66 = *(v61 + 8);
  v67 = v23;
  v23 = v96;
  v66(v67, v2);
  sub_266C47654(v31, &qword_2800CA838, &unk_266DB1E40);
  v66(v28, v2);
  sub_266C47654(v12, &qword_2800CA838, &unk_266DB1E40);
  v51 = v104;
  if ((v95 & 0x100000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_22:
  v52 = v100;
  sub_266DA8E5C();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v2);
  v56 = v33;
  v57 = *(v103 + 48);
  v58 = v56;
  sub_266D1CAC8();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_22_17(v9);
  if (v50)
  {
    sub_266C47654(v52, &qword_2800CA838, &unk_266DB1E40);
    OUTLINED_FUNCTION_22_17(v9 + v57);
    if (!v50)
    {
      goto LABEL_31;
    }

    v12 = v9;
    v33 = v58;
LABEL_27:
    sub_266C47654(v12, &qword_2800CA838, &unk_266DB1E40);
    v51 = v104;
LABEL_39:
    v60 = (v102 & 0x100000000) == 0;
    goto LABEL_40;
  }

  sub_266D1CAC8();
  OUTLINED_FUNCTION_22_17(v9 + v57);
  if (v59)
  {
    sub_266C47654(v52, &qword_2800CA838, &unk_266DB1E40);
    (*(v101 + 8))(v23, v2);
LABEL_31:
    sub_266C47654(v9, &qword_2800CA830, &qword_266DB1E38);
    v33 = v58;
    goto LABEL_32;
  }

  v68 = v101;
  v69 = OUTLINED_FUNCTION_104_3();
  v70(v69);
  OUTLINED_FUNCTION_55_5();
  sub_266D8CA74(v71, v72);
  v73 = sub_266DAA6EC();
  v74 = *(v68 + 8);
  v74(v23, v2);
  sub_266C47654(v100, &qword_2800CA838, &unk_266DB1E40);
  v74(v23, v2);
  sub_266C47654(v9, &qword_2800CA838, &unk_266DB1E40);
  v33 = v58;
  if (v73)
  {
    goto LABEL_39;
  }

LABEL_32:
  __swift_project_boxed_opaque_existential_1(v105, v105[3]);
  OUTLINED_FUNCTION_4_4();
  if (sub_266DA7BBC())
  {
    goto LABEL_39;
  }

  if (BYTE4(v102) & BYTE4(v99))
  {
    v60 = 0;
  }

  else
  {
    v60 = 2;
  }

LABEL_40:
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33(&qword_2800C9430);
  }

  v75 = sub_266DA94AC();
  __swift_project_value_buffer(v75, qword_2800E64F0);
  sub_266D1CAC8();
  sub_266D8CA3C(v105, v108);
  v76 = sub_266DA948C();
  v77 = sub_266DAAB0C();
  if (os_log_type_enabled(v76, v77))
  {
    v105 = v33;
    v78 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v78 = 136447234;
    v106 = v60;
    v79 = sub_266DAA72C();
    v81 = sub_266C22A3C(v79, v80, &v107);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2082;
    v82 = v98;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_22_17(v82);
    if (v50)
    {
      sub_266C47654(v82, &qword_2800CA838, &unk_266DB1E40);
      v85 = 0xE300000000000000;
      v83 = 7104878;
    }

    else
    {
      v83 = sub_266DA8E4C();
      v85 = v84;
      v86 = OUTLINED_FUNCTION_42();
      v87(v86);
    }

    sub_266C47654(v104, &qword_2800CA838, &unk_266DB1E40);
    v88 = sub_266C22A3C(v83, v85, &v107);

    *(v78 + 14) = v88;
    *(v78 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v108, v108[3]);
    OUTLINED_FUNCTION_4_4();
    sub_266DA7BBC();
    sub_266CBC9D8(v108);
    v89 = OUTLINED_FUNCTION_4_4();
    v92 = sub_266C22A3C(v89, v90, v91);

    *(v78 + 24) = v92;
    *(v78 + 32) = 1024;
    *(v78 + 34) = BYTE4(v102) & 1;
    *(v78 + 38) = 1024;
    *(v78 + 40) = BYTE4(v99) & 1;
    _os_log_impl(&dword_266C08000, v76, v77, "[HandleIntentStrategy] Dialog Behavior: %{public}s. { mode = %{public}s, deviceIsVox: %{public}s, speakable: %{BOOL}d, fresh: %{BOOL}d }", v78, 0x2Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    sub_266C47654(v105, &qword_2800CA838, &unk_266DB1E40);
  }

  else
  {

    sub_266C47654(v51, &qword_2800CA838, &unk_266DB1E40);
    sub_266C47654(v33, &qword_2800CA838, &unk_266DB1E40);
    sub_266CBC9D8(v108);
  }

  return v60;
}

uint64_t sub_266D879D4()
{
  OUTLINED_FUNCTION_22_0();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = type metadata accessor for Snippets(0);
  v1[29] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[30] = OUTLINED_FUNCTION_64();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v5 = sub_266DA80AC();
  v1[34] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[35] = v6;
  v1[36] = OUTLINED_FUNCTION_62();
  v7 = sub_266DA7C0C();
  v1[37] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[38] = v8;
  v1[39] = OUTLINED_FUNCTION_64();
  v1[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v9);
  v1[41] = OUTLINED_FUNCTION_62();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v10);
  v1[42] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v11);
  v1[43] = v12;
  v1[44] = *(v13 + 64);
  v1[45] = OUTLINED_FUNCTION_64();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v14 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v14);
  v1[53] = OUTLINED_FUNCTION_62();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE48, &unk_266DBE958);
  v1[54] = v15;
  OUTLINED_FUNCTION_11_3(v15);
  v1[55] = v16;
  v1[56] = OUTLINED_FUNCTION_62();
  v17 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_266D87C9C()
{
  v29 = v0;
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33(&qword_2800C9430);
  }

  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[27];
  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800E64F0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[55];
  v9 = v0[56];
  v11 = v0[54];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    v14 = sub_266DA7FBC();
    v15 = OBJC_IVAR___FindFriendIntentResponse_code;
    swift_beginAccess();
    v16 = *&v14[v15];

    v0[25] = v16;
    v17 = sub_266DAA72C();
    v19 = v18;
    (*(v10 + 8))(v9, v11);
    v20 = sub_266C22A3C(v17, v19, &v28);

    *(v12 + 4) = v20;
    _os_log_impl(&dword_266C08000, v6, v7, "FindFriend.HandleIntentStrategy.makeFailureHandlingIntentResponse() called with response code: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[28];
  sub_266DA900C();
  v22 = sub_266DA7FCC();
  v23 = [v22 friend];

  v24 = [v23 person];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_266DA7AFC();
  v25 = sub_266DA8FBC();
  v0[57] = v25;
  v26 = swift_task_alloc();
  v0[58] = v26;
  *v26 = v0;
  OUTLINED_FUNCTION_88_0(v26);

  return sub_266CB41E8(v25);
}

uint64_t sub_266D87F88()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 472) = v4;
  *(v2 + 480) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v5);
}

void sub_266D8808C()
{
  v1 = v0[59];
  v2 = v0[51];
  v3 = v0[29];
  v107 = *(v0[28] + 224);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  *v2 = 4;
  *(v2 + 8) = xmmword_266DB2FB0;
  *(v2 + 24) = 0;
  OUTLINED_FUNCTION_40_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v11 = OUTLINED_FUNCTION_101(v10);
  v0[61] = v11;
  *(v11 + 16) = xmmword_266DAE3B0;
  *(v11 + 32) = v1;
  sub_266DA7E5C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_266DA7C7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = v1;
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    OUTLINED_FUNCTION_63();
    sub_266CB9F54();
    if ((v11 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D5F1780](0, v11);
    }

    else
    {
      v21 = *(v11 + 32);
    }

    v22 = v21;
    v23 = [v21 catId];

    sub_266DAA70C();
    v106 = v24;
  }

  else
  {
    v106 = 0;
  }

  v98 = v0[42];
  v101 = v0[41];
  v25 = v0[39];
  v26 = v0[38];
  v92 = v0[37];
  v95 = v0[40];
  v103 = v0[36];
  v104 = v0[52];
  v105 = v0[29];
  sub_266D1CAC8();
  sub_266D1CAC8();
  v27 = swift_allocObject();
  v0[62] = v27;
  *(v27 + 16) = v107;
  sub_266D1CB20();
  sub_266D1CB20();
  (*(v26 + 16))(v25, v95, v92);
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_65_2(v28);
  *(v29 + 40) = v30;
  *(v29 + 48) = v106;
  v38 = OUTLINED_FUNCTION_33_11(v29, v31, v32, v33, v34, v35, v36, v37, v89, v92, v95, v98);
  *(v38 + 72) = sub_266C4764C;
  *(v38 + 80) = v27;
  OUTLINED_FUNCTION_111_3(v38, v39, v40, v41, v42, v43, v44, v45, v90, v93, v96, v99, v101);

  OUTLINED_FUNCTION_103_2();
  sub_266DA800C();

  OUTLINED_FUNCTION_45_8(v46, v47, v48, v49, v50, v51, v52, v53, v91, v94, v97, v100, v102, v103, v104);
  sub_266D1CAC8();
  v54 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v54, v55, v105);
  if (v58)
  {
    v56 = v0 + 48;
  }

  else
  {
    v57 = v0[47];
    OUTLINED_FUNCTION_8_23();
    sub_266D8C990();
    OUTLINED_FUNCTION_32();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_22_17(v57);
    if (!v58)
    {
      v74 = v0[29];
      OUTLINED_FUNCTION_6_42();
      sub_266D8C990();
      v0[15] = v74;
      OUTLINED_FUNCTION_3_60();
      v77 = sub_266D8CA74(v75, v76);
      OUTLINED_FUNCTION_95_1(v77);
      OUTLINED_FUNCTION_41();
      sub_266D8CAB8();
      v0[20] = v74;
      v0[21] = v27;
      __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      OUTLINED_FUNCTION_50_7();
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[63] = v78;
      *v78 = v79;
      v78[1] = sub_266D88748;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_112();

      __asm { BR              X5 }
    }

    v56 = v0 + 47;
    OUTLINED_FUNCTION_0_89();
    sub_266D8C9E8(v59, v60);
  }

  v61 = v0[29];
  OUTLINED_FUNCTION_77_2(*v56);
  OUTLINED_FUNCTION_32();
  sub_266D1CAC8();
  v62 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, v63, v61);
  v65 = v0[29];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_77_2(v0[46]);
    OUTLINED_FUNCTION_34_5();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_30_13();
    if (v58)
    {
      sub_266C47654(v0[45], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_24_1();
      v0[66] = v66;
      *v66 = v67;
      v66[1] = sub_266D88F04;
      OUTLINED_FUNCTION_112();

      __asm { BR              X3 }
    }

    v82 = v0[29];
    OUTLINED_FUNCTION_7_36();
    sub_266D8C990();
    v0[5] = v82;
    OUTLINED_FUNCTION_3_60();
    v0[6] = sub_266D8CA74(v83, v84);
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_41();
    sub_266D8CAB8();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[65] = v85;
    *v85 = v86;
    v85[1] = sub_266D88C78;
  }

  else
  {
    OUTLINED_FUNCTION_6_42();
    sub_266D8C990();
    v0[10] = v65;
    OUTLINED_FUNCTION_3_60();
    v0[11] = sub_266D8CA74(v70, v71);
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_12_4(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[64] = v72;
    *v72 = v73;
    v72[1] = sub_266D889EC;
  }

  OUTLINED_FUNCTION_112();

  __asm { BR              X4 }
}

uint64_t sub_266D88748()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D88850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v30 = *(v27 + 256);
  v31 = *(v27 + 264);

  OUTLINED_FUNCTION_6_42();
  sub_266D8C9E8(v30, v32);
  sub_266D8C9E8(v31, v26);
  v33 = OUTLINED_FUNCTION_9_26();
  v34(v33);
  v35 = OUTLINED_FUNCTION_18_3();
  v36(v35);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v37, v38, v39);
  v40 = OUTLINED_FUNCTION_38();
  sub_266C47654(v40, v41, &qword_266DB0080);
  sub_266C47654(v28, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v29, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D889EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D88AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v29 = *(v26 + 248);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v29, v30);
  v31 = OUTLINED_FUNCTION_9_26();
  v32(v31);
  v33 = OUTLINED_FUNCTION_18_3();
  v34(v33);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_38();
  sub_266C47654(v38, v39, &qword_266DB0080);
  sub_266C47654(v27, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v28, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D88C78()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D88D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();
  v29 = *(v26 + 240);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v29, v30);
  v31 = OUTLINED_FUNCTION_9_26();
  v32(v31);
  v33 = OUTLINED_FUNCTION_18_3();
  v34(v33);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_38();
  sub_266C47654(v38, v39, &qword_266DB0080);
  sub_266C47654(v27, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v28, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D88F04()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D89004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_85();

  v29 = OUTLINED_FUNCTION_9_26();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_3();
  v32(v31);
  OUTLINED_FUNCTION_61_5();
  sub_266C47654(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_38();
  sub_266C47654(v36, v37, &qword_266DB0080);
  sub_266C47654(v27, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v28, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_65();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_266D89180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  v32 = v22[45];
  v33 = v22[42];
  v34 = v22[41];
  v35 = v22[40];
  v36 = v22[39];
  v37 = v22[36];
  v38 = v22[33];
  v39 = v22[32];
  v40 = v22[31];
  v41 = v22[30];

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_25_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, a20, a21, a22);
}

uint64_t sub_266D892BC()
{
  OUTLINED_FUNCTION_22_0();
  v1[43] = v2;
  v1[44] = v0;
  v1[42] = v3;
  v4 = sub_266DA7E5C();
  v1[45] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_62();
  v6 = sub_266DA750C();
  OUTLINED_FUNCTION_4_3(v6);
  v1[48] = OUTLINED_FUNCTION_62();
  v7 = type metadata accessor for Snippets(0);
  v1[49] = v7;
  OUTLINED_FUNCTION_4_3(v7);
  v1[50] = OUTLINED_FUNCTION_64();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v8 = sub_266DA80AC();
  v1[58] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[59] = v9;
  v1[60] = OUTLINED_FUNCTION_64();
  v1[61] = swift_task_alloc();
  v10 = sub_266DA7C0C();
  v1[62] = v10;
  OUTLINED_FUNCTION_11_3(v10);
  v1[63] = v11;
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v12);
  v1[67] = OUTLINED_FUNCTION_64();
  v1[68] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v13);
  v1[69] = OUTLINED_FUNCTION_64();
  v1[70] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v14);
  v1[71] = v15;
  v1[72] = *(v16 + 64);
  v1[73] = OUTLINED_FUNCTION_64();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_266D89620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  if (qword_2800C9430 != -1)
  {
    OUTLINED_FUNCTION_11_33(&qword_2800C9430);
  }

  v37 = sub_266DA94AC();
  __swift_project_value_buffer(v37, qword_2800E64F0);
  v38 = sub_266DA948C();
  v39 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v39))
  {
    v40 = OUTLINED_FUNCTION_11();
    *v40 = 0;
    _os_log_impl(&dword_266C08000, v38, v39, "FindFriend.HandleIntentStrategy.makePreHandleIntentOutput() called", v40, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v41 = v36[44];

  v43 = v41[15];
  v42 = v41[16];
  __swift_project_boxed_opaque_existential_1(v41 + 12, v43);
  (*(*(v42 + 8) + 16))(v43);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  OUTLINED_FUNCTION_40_3();
  if (sub_266DA7B7C())
  {
    __swift_project_boxed_opaque_existential_1(v36[44], v41[3]);
    OUTLINED_FUNCTION_38();
    if (sub_266DA7B7C())
    {
      v44 = v36[49];
      v36[87] = *(v36[44] + 224);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v52 = OUTLINED_FUNCTION_101(v51);
      v36[88] = v52;
      *(v52 + 16) = xmmword_266DAE3B0;
      v53 = swift_task_alloc();
      v36[89] = v53;
      *v53 = v36;
      OUTLINED_FUNCTION_88_0(v53);
      OUTLINED_FUNCTION_43_8();

      return sub_266CB5B70(v54);
    }

    else
    {
      v68 = v36[44];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE48, &unk_266DBE958);
      v69 = sub_266DA7FCC();
      v70 = [v69 friend];
      v36[97] = v70;

      sub_266DA900C();
      v71 = [v70 person];
      __swift_project_boxed_opaque_existential_1(v68, v41[3]);
      sub_266DA7AFC();
      v36[98] = sub_266DA8FBC();
      if (v70)
      {
        v72 = sub_266CA1908(v70);
      }

      else
      {
        v72 = 0;
      }

      v36[99] = v72;
      v73 = v36[49];
      v74 = v36[47];
      v75 = v36[44];
      v76 = sub_266DA7FCC();
      v77 = sub_266DA7FBC();
      sub_266D86900(v76, v77, v74);

      v36[100] = *(v75 + 224);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v73);
      OUTLINED_FUNCTION_43();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v73);
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
      v85 = OUTLINED_FUNCTION_101(v84);
      v36[101] = v85;
      *(v85 + 16) = xmmword_266DAE3B0;
      v86 = swift_task_alloc();
      v36[102] = v86;
      *v86 = v36;
      OUTLINED_FUNCTION_88_0(v86);
      OUTLINED_FUNCTION_43_8();

      return sub_266CB38D4(v87);
    }
  }

  else
  {
    v57 = sub_266DA948C();
    v58 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v58))
    {
      v59 = OUTLINED_FUNCTION_11();
      *v59 = 0;
      _os_log_impl(&dword_266C08000, v57, v58, "Device is not a watch, sending empty pre handle intent output.", v59, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266DA7C4C();
    sub_266DA7C3C();
    OUTLINED_FUNCTION_2_71();

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_43_8();

    return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_266D89B80()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[90] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[85]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[91] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D8A2E0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8A3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v62 = v36[85];
  v63 = v36[86];
  v38 = v36[63];
  v40 = v36[56];
  v39 = v36[57];

  OUTLINED_FUNCTION_54_7();
  sub_266D8C9E8(v40, v41);
  sub_266D8C9E8(v39, v37);
  v42 = OUTLINED_FUNCTION_83();
  v43(v42);
  v44 = OUTLINED_FUNCTION_38();
  v45(v44);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v46, v47, v48);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v38 + 8, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v62, v63, a33, a34, a35, a36);
}

uint64_t sub_266D8A608()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();
  v38 = *(v37 + 440);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v38, v39);
  v40 = OUTLINED_FUNCTION_22_5();
  v41(v40);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v44, v45, v46);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v47, v48, v49);
  v50 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v50, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8A900()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();
  v38 = *(v37 + 432);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v38, v39);
  v40 = OUTLINED_FUNCTION_22_5();
  v41(v40);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v44, v45, v46);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v47, v48, v49);
  v50 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v50, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8ABF8()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D8ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_60_2();

  v37 = OUTLINED_FUNCTION_83();
  v38(v37);
  v39 = OUTLINED_FUNCTION_38();
  v40(v39);
  v41 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v41, v42, v43);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v44, v45, v46);
  v47 = OUTLINED_FUNCTION_108_4();
  sub_266C47654(v47, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v36, &qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8AEE4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[103] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_84_0(v5[77]);
    v9 = OUTLINED_FUNCTION_32();
    sub_266C47654(v9, v10, &qword_266DB0080);
  }

  else
  {
    v5[104] = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D8B65C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8B764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v64 = v36[77];
  v65 = v36[78];
  v38 = v36[58];
  v40 = v36[52];
  v39 = v36[53];

  OUTLINED_FUNCTION_54_7();
  sub_266D8C9E8(v40, v41);
  sub_266D8C9E8(v39, v37);
  v42 = OUTLINED_FUNCTION_83();
  v43(v42);
  v44 = OUTLINED_FUNCTION_38();
  v45(v44);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v46, v47, v48);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v49, v50, v51);
  v52 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v52, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v53 = OUTLINED_FUNCTION_40_3();
  v54(v53);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v64, v65, a33, a34, a35, a36);
}

uint64_t sub_266D8B9AC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8BAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_73_2();
  v38 = *(v36 + 408);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v38, v39);
  v40 = OUTLINED_FUNCTION_22_5();
  v41(v40);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v44, v45, v46);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v47, v48, v49);
  v50 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v50, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v51 = OUTLINED_FUNCTION_40_3();
  v52(v51);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8BCC0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D8BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_73_2();
  v38 = *(v36 + 400);

  OUTLINED_FUNCTION_0_89();
  sub_266D8C9E8(v38, v39);
  v40 = OUTLINED_FUNCTION_22_5();
  v41(v40);
  v42 = OUTLINED_FUNCTION_38();
  v43(v42);
  v44 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v44, v45, v46);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v47, v48, v49);
  v50 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v50, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v51 = OUTLINED_FUNCTION_40_3();
  v52(v51);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8BFD4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D8C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_66_4();
  v37 = *(v36 + 464);

  v38 = OUTLINED_FUNCTION_83();
  v39(v38);
  v40 = OUTLINED_FUNCTION_38();
  v41(v40);
  v42 = OUTLINED_FUNCTION_34_5();
  sub_266C47654(v42, v43, v44);
  OUTLINED_FUNCTION_54();
  sub_266C47654(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_21_21();
  sub_266C47654(v48, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(&qword_2800CA050, &qword_2800CA048, &unk_266DAFC00);

  v49 = OUTLINED_FUNCTION_40_3();
  v50(v49);
  OUTLINED_FUNCTION_2_71();

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_43_8();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_266D8C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v53 = v38[90];
  v49 = v38[77];
  v50 = v38[76];
  v51 = v38[75];
  v52 = v38[74];
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_48_9(v39);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_11();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v53, a35, a36, a37, a38);
}

uint64_t sub_266D8C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_23_6();
  v39 = v38[97];

  v40 = OUTLINED_FUNCTION_42();
  v41(v40);
  v56 = v38[103];
  v52 = v38[77];
  v53 = v38[76];
  v54 = v38[75];
  v55 = v38[74];
  OUTLINED_FUNCTION_5_47();
  OUTLINED_FUNCTION_48_9(v42);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_16_11();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, v54, v55, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v56, a35, a36, a37, a38);
}

uint64_t sub_266D8C69C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D892BC();
}

uint64_t sub_266D8C744()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266D82934();
}

uint64_t sub_266D8C7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266D879D4();
}

uint64_t sub_266D8C894()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C5A320;

  return sub_266D8279C();
}

unint64_t sub_266D8C93C()
{
  result = qword_2800CDE40;
  if (!qword_2800CDE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE40);
  }

  return result;
}

uint64_t sub_266D8C990()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

uint64_t sub_266D8C9E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266D8CA74(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_41();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266D8CAB8()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

uint64_t objectdestroyTm_15()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = (v6 + 24) & ~v6;
  v10 = (v8 + v6 + v9) & ~v6;

  v11 = v0 + v9;
  v12 = type metadata accessor for Snippets(0);
  v13 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v22 + 8))(v2 + v11);
        v21 = v1[7];
        goto LABEL_34;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_35;
      case 4u:

        v11 += *(type metadata accessor for Friend(0) + 40);
        v1 = type metadata accessor for FriendLocation(0);
        v17 = OUTLINED_FUNCTION_55();
        if (__swift_getEnumTagSinglePayload(v17, v18, v1))
        {
          break;
        }

        v19 = v1[8];
LABEL_22:
        v39 = v11 + v19;
        v1 = type metadata accessor for Location(0);
        v40 = OUTLINED_FUNCTION_55();
        if (!__swift_getEnumTagSinglePayload(v40, v41, v1))
        {
          v42 = v1[7];
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v43 + 8))(v39 + v42);
          OUTLINED_FUNCTION_48(v1[8]);

          v2 = (v39 + v1[11]);
          v44 = type metadata accessor for Address(0);
          v45 = OUTLINED_FUNCTION_109();
          if (!__swift_getEnumTagSinglePayload(v45, v46, v44))
          {
            sub_266DA919C();
            v47 = OUTLINED_FUNCTION_109();
            v119 = v48;
            if (!__swift_getEnumTagSinglePayload(v47, v49, v48))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v50 + 8))(v2);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            v51 = OUTLINED_FUNCTION_70();
            if (!OUTLINED_FUNCTION_115(v51, v52, v53, v54, v55, v56, v57, v58, v117, v119))
            {
              OUTLINED_FUNCTION_20_2();
              (*(v59 + 8))(v2 + v3);
            }

            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_70();
          }

          v21 = v1[12];
LABEL_34:
          OUTLINED_FUNCTION_48(v21);
LABEL_35:
        }

        break;
      case 5u:

        v26 = v11 + *(type metadata accessor for Friend(0) + 40);
        v27 = type metadata accessor for FriendLocation(0);
        if (!OUTLINED_FUNCTION_66(v27))
        {

          v28 = v26 + v2[8];
          v29 = type metadata accessor for Location(0);
          if (!OUTLINED_FUNCTION_66(v29))
          {
            v30 = v2[7];
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v31 + 8))(v28 + v30);
            OUTLINED_FUNCTION_21_0();
            v32 = v28 + v2[11];
            v3 = type metadata accessor for Address(0);
            v33 = OUTLINED_FUNCTION_78();
            if (!__swift_getEnumTagSinglePayload(v33, v34, v3))
            {
              sub_266DA919C();
              v35 = OUTLINED_FUNCTION_78();
              v118 = v36;
              if (!__swift_getEnumTagSinglePayload(v35, v37, v36))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v38 + 8))(v32);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              v117 = *(v3 + 32);
              if (!__swift_getEnumTagSinglePayload(v32 + v117, 1, v118))
              {
                (*(*(v118 - 8) + 8))(v32 + v117);
              }

              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_89();
            }

            OUTLINED_FUNCTION_21_0();
          }
        }

        v19 = *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_22;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v60);
        }

        goto LABEL_35;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v11 + 40), v23);
        }

        goto LABEL_35;
      case 8u:
        if ((*(v11 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_35;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v20 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(v1[5]);

        v21 = v1[6];
        goto LABEL_34;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_98();
        OUTLINED_FUNCTION_8_0();
        (*(v61 + 8))(v2 + v11);
        OUTLINED_FUNCTION_48(v1[7]);

        v1 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(v1[7]);

        v21 = v1[8];
        goto LABEL_34;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v15 + 8))(v11);
        v1 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v2 = v1[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v16 + 8))(v2 + v11);
        if (*(v11 + v1[6] + 16) == 1)
        {
          break;
        }

        goto LABEL_35;
      default:
        break;
    }
  }

  v62 = v0 + v10;
  v63 = OUTLINED_FUNCTION_55();
  if (!__swift_getEnumTagSinglePayload(v63, v64, v12))
  {
    OUTLINED_FUNCTION_75();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v76 + 8))(v1 + v62);
        goto LABEL_69;
      case 1u:
      case 2u:
      case 3u:
        goto LABEL_69;
      case 4u:

        v69 = v62 + *(type metadata accessor for Friend(0) + 40);
        v70 = type metadata accessor for FriendLocation(0);
        v71 = OUTLINED_FUNCTION_31();
        if (__swift_getEnumTagSinglePayload(v71, v72, v70))
        {
          break;
        }

        v73 = v69 + *(v70 + 32);
LABEL_57:
        v104 = type metadata accessor for Location(0);
        v105 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v105, v106, v104))
        {
          v107 = *(v104 + 28);
          sub_266DA746C();
          OUTLINED_FUNCTION_8_0();
          (*(v108 + 8))(v73 + v107);

          v109 = v73 + *(v104 + 44);
          v110 = type metadata accessor for Address(0);
          if (!OUTLINED_FUNCTION_66(v110))
          {
            v111 = sub_266DA919C();
            if (!__swift_getEnumTagSinglePayload(v109, 1, v111))
            {
              (*(*(v111 - 8) + 8))(v109, v111);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            v112 = v2[8];
            if (!__swift_getEnumTagSinglePayload(v109 + v112, 1, v111))
            {
              (*(*(v111 - 8) + 8))(v109 + v112, v111);
            }

            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_21_0();
          }

LABEL_69:
        }

        break;
      case 5u:

        v78 = v62 + *(type metadata accessor for Friend(0) + 40);
        v79 = type metadata accessor for FriendLocation(0);
        v80 = OUTLINED_FUNCTION_31();
        if (!__swift_getEnumTagSinglePayload(v80, v81, v79))
        {

          v82 = v78 + *(v79 + 32);
          v83 = type metadata accessor for Location(0);
          v84 = OUTLINED_FUNCTION_31();
          if (!__swift_getEnumTagSinglePayload(v84, v85, v83))
          {
            v86 = *(v83 + 28);
            sub_266DA746C();
            OUTLINED_FUNCTION_8_0();
            (*(v87 + 8))(v82 + v86);

            v2 = (v82 + *(v83 + 44));
            v88 = type metadata accessor for Address(0);
            v89 = OUTLINED_FUNCTION_109();
            if (!__swift_getEnumTagSinglePayload(v89, v90, v88))
            {
              sub_266DA919C();
              v91 = OUTLINED_FUNCTION_109();
              v120 = v92;
              if (!__swift_getEnumTagSinglePayload(v91, v93, v92))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v94 + 8))(v2);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              v95 = OUTLINED_FUNCTION_70();
              if (!OUTLINED_FUNCTION_115(v95, v96, v97, v98, v99, v100, v101, v102, v117, v120))
              {
                OUTLINED_FUNCTION_20_2();
                (*(v103 + 8))(v2 + v3);
              }

              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
              OUTLINED_FUNCTION_70();
            }
          }
        }

        v73 = v62 + *(type metadata accessor for Snippets.CarPlayFriendLocation(0) + 20);
        goto LABEL_57;
      case 6u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v62 + 40), v113);
        }

        goto LABEL_69;
      case 7u:

        OUTLINED_FUNCTION_52();
        if (!(!v25 & v24))
        {
          sub_266C2BB04(*(v62 + 40), v77);
        }

        goto LABEL_69;
      case 8u:
        if ((*(v62 + 16) - 1) < 7)
        {
          break;
        }

        goto LABEL_69;
      case 9u:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v74 + 8))(v1 + v62);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v75 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
        OUTLINED_FUNCTION_48(*(v75 + 20));

        goto LABEL_69;
      case 0xAu:

        type metadata accessor for Snippets.Contact(0);
        OUTLINED_FUNCTION_96();
        OUTLINED_FUNCTION_8_0();
        (*(v114 + 8))(v1 + v62);
        OUTLINED_FUNCTION_48(*(v12 + 28));

        v115 = type metadata accessor for Snippets.SetGeoFenceResult(0);
        OUTLINED_FUNCTION_48(*(v115 + 28));

        goto LABEL_69;
      case 0xBu:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
        OUTLINED_FUNCTION_8_0();
        (*(v65 + 8))(v0 + v10);
        v66 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult(0);
        v67 = *(v66 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
        OUTLINED_FUNCTION_8_0();
        (*(v68 + 8))(v62 + v67);
        if (*(v62 + *(v66 + 24) + 16) == 1)
        {
          break;
        }

        goto LABEL_69;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v6 | 7);
}

_BYTE *_s20HandleIntentStrategyV14DialogBehaviorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D8D858()
{
  result = qword_2800CDE50;
  if (!qword_2800CDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_67()
{
  v3 = v0[54];
  *(v1 - 136) = v0[55];
  *(v1 - 128) = v3;
  v4 = v0[52];
  *(v1 - 120) = v0[53];
  *(v1 - 112) = v4;
  v5 = v0[47];
  v6 = v0[48];
  *(v1 - 104) = v0[51];
  *(v1 - 96) = v6;
  *(v1 - 88) = v5;
}

uint64_t OUTLINED_FUNCTION_2_71()
{
  v3 = v0[52];
  *(v1 - 128) = v0[53];
  *(v1 - 120) = v3;
  v4 = v0[50];
  *(v1 - 112) = v0[51];
  *(v1 - 104) = v4;
  v5 = v0[47];
  *(v1 - 96) = v0[48];
  *(v1 - 88) = v5;
}

uint64_t OUTLINED_FUNCTION_9_26()
{
  v2 = v0[36];
  *(v1 - 88) = v0[31];
  *(v1 - 80) = v0[30];
  return v2;
}

uint64_t OUTLINED_FUNCTION_11_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_14@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v5 = v1[56];
  v4 = v1[57];
  *(v2 - 168) = v1[60];
  *(v2 - 160) = v4;
  v7 = v1[54];
  v6 = v1[55];
  *(v2 - 152) = v5;
  *(v2 - 144) = v6;
  v9 = v1[52];
  v8 = v1[53];
  *(v2 - 136) = v7;
  *(v2 - 128) = v8;
  v10 = v1[51];
  *(v2 - 120) = v9;
  *(v2 - 112) = v10;
  v11 = v1[47];
  *(v2 - 104) = v1[48];
  *(v2 - 96) = v11;
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(result + 56) = a12;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_9()
{
  v2 = v0[89];
  *(v1 - 104) = v0[86];
  *(v1 - 96) = v2;
  return v0[55];
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{
  v4 = v1[52];
  *(v2 - 136) = v1[53];
  *(v2 - 128) = v4;
  v5 = v1[50];
  *(v2 - 120) = v1[51];
  *(v2 - 112) = v5;
  v6 = v1[47];
  *(v2 - 104) = v1[48];
  *(v2 - 96) = v6;
  *(a1 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_50_7()
{

  return sub_266D8CAB8();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_5()
{

  return sub_266C47654(v1, v0, v2);
}

void OUTLINED_FUNCTION_83_3()
{
  v2 = *(v0 + 712);
  *(v1 - 96) = *(v0 + 688);
  *(v1 - 88) = v2;
}

uint64_t OUTLINED_FUNCTION_87_1()
{
}

uint64_t OUTLINED_FUNCTION_88_4()
{
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_118_1()
{
  v3 = *(v1 - 88);

  return sub_266D8C9E8(v0, v3);
}

uint64_t type metadata accessor for SiriFindMyCommonCATsSimple(uint64_t a1)
{
  result = qword_2800CDE58;
  if (!qword_2800CDE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D8E028()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266CEE600;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000022, 0x8000000266DC4580, v2);
}

BOOL sub_266D8E0EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  return v2 != 0;
}

BOOL sub_266D8E140@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266D8E0EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266D8E174(uint64_t a1@<X8>)
{
  strcpy(a1, "genitiveName");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_266D8E198(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266D8E1B8);
}

uint64_t sub_266D8E1B8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB5C0, &unk_266DBEA60);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_266DAE4A0;
  *(v2 + 32) = 0x6E6F73726570;
  *(v2 + 40) = 0xE600000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = sub_266DA900C();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_266D8E784();
  *v4 = v0;
  v4[1] = sub_266D8E310;

  return v7(0xD00000000000001DLL, 0x8000000266DC4560, v2, &type metadata for SiriFindMyCommonCATsSimple.GenitiveNameDialogIds, v5);
}

uint64_t sub_266D8E310(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_266D8E468);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_266D8E468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266D8E520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_266CEEA6C(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_266DA91AC();
  (*(v7 + 8))(a2, v3);
  sub_266C2A858(a1);
  return v13;
}

uint64_t sub_266D8E67C(uint64_t a1, uint64_t a2)
{
  sub_266DA926C();
  OUTLINED_FUNCTION_37_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_266DA91BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

unint64_t sub_266D8E784()
{
  result = qword_2800CDE68;
  if (!qword_2800CDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriFindMyCommonCATsSimple.GenitiveNameDialogIds(_BYTE *result, int a2, int a3)
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

unint64_t sub_266D8E888()
{
  result = qword_2800CDE70;
  if (!qword_2800CDE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE70);
  }

  return result;
}

uint64_t sub_266D8E8DC(uint64_t *a1, int a2)
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

uint64_t sub_266D8E91C(uint64_t result, int a2, int a3)
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

uint64_t sub_266D8E980()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C91A0 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_2800C91A0);
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800E61E0);
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v7))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_266C08000, v6, v7, "SetSharedLocationVisibility.FlowStrategy.actionForInput() called", v0, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  sub_266DA816C();
  sub_266CD6764(v4, v27);
  (*(v2 + 8))(v4, v1);
  sub_266C6F230(v27, v25);
  if (v26 == 1)
  {
    sub_266C6F308(v25);
    sub_266C6F230(v27, v25);
    v8 = sub_266DA948C();
    v9 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      sub_266C6F230(v25, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v12 = sub_266C22A3C(v7, v0, &v24);

      *(v10 + 4) = v12;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v13, v14, "SetSharedLocationVisibility.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v25, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  else
  {
    if (v26 == 255)
    {
      sub_266C3A088(v25, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v25);
    }

    sub_266C6F230(v27, v25);
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      sub_266C6F230(v25, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v19 = sub_266C22A3C(v7, v0, &v24);

      *(v17 + 4) = v19;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v20, v21, "SetSharedLocationVisibility.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_33_6();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v25, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  return sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
}

uint64_t sub_266D8ED84(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_266D8EDA8);
}

uint64_t sub_266D8EDA8()
{
  if (qword_2800C91A0 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_2800C91A0);
  }

  v1 = sub_266DA94AC();
  __swift_project_value_buffer(v1, qword_2800E61E0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_16_0(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "SetSharedLocationVisibility.FlowStrategy.makeIntentFromParse() called", v4, 2u);
    OUTLINED_FUNCTION_33_6();
  }

  v5 = *(v0 + 152);

  sub_266CD6764(v5, v0 + 16);
  sub_266C6F230(v0 + 16, v0 + 64);
  v6 = *(v0 + 104);
  if (v6 == 1)
  {
    v7 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    v8 = *(v0 + 160);
    if (v7)
    {
      v9 = *(v0 + 160);
    }

    else
    {
      v9 = [objc_allocWithZone(type metadata accessor for SetSharedLocationVisibilityIntent()) init];
    }

    v13 = *__swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    *(v0 + 88) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
    *(v0 + 96) = &off_287866DF8;
    *(v0 + 64) = v13;
    v14 = *__swift_project_boxed_opaque_existential_1((v0 + 64), &type metadata for SetSharedLocationVisibilityIntentWrapper);
    v15 = v8;
    [v9 setVisibility_];
    __swift_destroy_boxed_opaque_existential_0((v0 + 64));
    v16 = v9;
    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_266C08000, v17, v18, "SetSharedLocationVisibility Intent created: %@", v19, 0xCu);
      sub_266C3A088(v20, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_33_6();
    }

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    OUTLINED_FUNCTION_43_4();

    return v22(v16);
  }

  else
  {
    if (v6 == 255)
    {
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v0 + 64);
    }

    sub_266C4E844();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_266D8F0E8()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D8F1A8);
}

uint64_t sub_266D8F1A8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = **(v0 + 32);
  type metadata accessor for SetSharedLocationVisibilityIntent();

  v6 = v5;
  v7 = v4;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v8 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v9(v8);
}

uint64_t sub_266D8F29C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266D02CA0;

  return sub_266D8ED84(a1, a2);
}

uint64_t sub_266D8F340()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D8F0E8();
}

unint64_t sub_266D8F3E8()
{
  result = qword_2800CDE78;
  if (!qword_2800CDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE78);
  }

  return result;
}

unint64_t sub_266D8F440()
{
  result = qword_2800CDE80;
  if (!qword_2800CDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE80);
  }

  return result;
}

unint64_t sub_266D8F498()
{
  result = qword_2800CDE88;
  if (!qword_2800CDE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_90(uint64_t a1)
{

  return swift_once();
}

int *Snippets.SetGeoFenceResult.init(contact:latitude:longitude:notifyTitle:notifyMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  sub_266D2B9FC(a1, a6);
  result = type metadata accessor for Snippets.SetGeoFenceResult(0);
  *(a6 + result[5]) = a7;
  *(a6 + result[6]) = a8;
  v16 = (a6 + result[7]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[8]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t type metadata accessor for Snippets.SetGeoFenceResult(uint64_t a1)
{
  result = qword_2800CDEA8;
  if (!qword_2800CDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippets.SetGeoFenceResult.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact(0);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v6 + 28));
  v9 = v4 && v7 == v8;
  if (!v9 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Snippets.SetGeoFenceResult(0);
  if (*(a1 + v10[5]) != *(a2 + v10[5]))
  {
    return 0;
  }

  v11 = v10;
  if (*(a1 + v10[6]) != *(a2 + v10[6]))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(v10[7]);
  v14 = v4 && v12 == v13;
  if (!v14 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(v11[8]);
  if (v4 && v15 == v16)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t Snippets.SetGeoFenceResult.latitude.setter(double a1)
{
  result = type metadata accessor for Snippets.SetGeoFenceResult(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.latitude.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceResult(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.longitude.setter(double a1)
{
  result = type metadata accessor for Snippets.SetGeoFenceResult(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.longitude.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceResult(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippets.SetGeoFenceResult(0) + 28));

  return v1;
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceResult(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.notifyTitle.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceResult(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippets.SetGeoFenceResult(0) + 32));

  return v1;
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceResult(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Snippets.SetGeoFenceResult.notifyMessage.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceResult(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_266D8FA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6954796669746F6ELL && a2 == 0xEB00000000656C74;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x654D796669746F6ELL && a2 == 0xED00006567617373)
        {

          return 4;
        }

        else
        {
          v10 = sub_266DAB17C();

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

uint64_t sub_266D8FBEC(char a1)
{
  result = 0x746361746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x656475746974616CLL;
      break;
    case 2:
      result = 0x64757469676E6F6CLL;
      break;
    case 3:
      result = 0x6954796669746F6ELL;
      break;
    case 4:
      result = 0x654D796669746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D8FCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D8FA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D8FCD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266D8FBE4();
  *a1 = result;
  return result;
}

uint64_t sub_266D8FCF8(uint64_t a1)
{
  v2 = sub_266D8FF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D8FD34(uint64_t a1)
{
  v2 = sub_266D8FF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetGeoFenceResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDE90, &qword_266DBECC0);
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D8FF88();
  sub_266DAB36C();
  v12[15] = 0;
  type metadata accessor for Snippets.Contact(0);
  OUTLINED_FUNCTION_1_68();
  sub_266D9048C(v9, v10, &protocol conformance descriptor for Snippets.Contact);
  OUTLINED_FUNCTION_6_43();
  sub_266DAB11C();
  if (!v1)
  {
    type metadata accessor for Snippets.SetGeoFenceResult(0);
    v12[14] = 1;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB10C();
    v12[13] = 2;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB10C();
    v12[12] = 3;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB0EC();
    v12[11] = 4;
    OUTLINED_FUNCTION_6_43();
    sub_266DAB0EC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_266D8FF88()
{
  result = qword_2800CDE98;
  if (!qword_2800CDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CDE98);
  }

  return result;
}

uint64_t Snippets.SetGeoFenceResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[0] = a2;
  type metadata accessor for Snippets.Contact(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CDEA0, &qword_266DBECC8);
  OUTLINED_FUNCTION_0_2();
  v28[1] = v8;
  v28[2] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = type metadata accessor for Snippets.SetGeoFenceResult(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_266D8FF88();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  v34 = 0;
  OUTLINED_FUNCTION_1_68();
  sub_266D9048C(v14, v15, &protocol conformance descriptor for Snippets.Contact);
  sub_266DAB05C();
  sub_266D2B9FC(v6, v12);
  v33 = 1;
  OUTLINED_FUNCTION_2_72();
  sub_266DAB03C();
  *&v12[v9[5]] = v16;
  v32 = 2;
  OUTLINED_FUNCTION_2_72();
  sub_266DAB03C();
  *&v12[v9[6]] = v17;
  v31 = 3;
  OUTLINED_FUNCTION_2_72();
  v18 = sub_266DAB01C();
  v19 = &v12[v9[7]];
  *v19 = v18;
  v19[1] = v20;
  v30 = 4;
  OUTLINED_FUNCTION_2_72();
  v21 = sub_266DAB01C();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_3_61();
  v25(v24);
  v26 = &v12[v9[8]];
  *v26 = v21;
  v26[1] = v23;
  sub_266D90348(v12, v28[0], type metadata accessor for Snippets.SetGeoFenceResult);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_266D903A8();
}