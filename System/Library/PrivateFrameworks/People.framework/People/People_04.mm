void *LaunchRecorder.init(dataWriter:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_22F036D40(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void sub_22F0369CC()
{
  v2 = v0;
  v3 = v0[6];
  v4 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v1)
  {
  }

  else if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for LaunchDiary();
    swift_allocObject();
    sub_22F00AC04(v7, v8);
    v9 = v7;
    v10 = LaunchDiary.init(withJSON:)(v7, v8);
    sub_22F00AB48(v9, v8);
    v2[2] = v10;
    sub_22F0D00CC();
  }

  if (!v2[2])
  {
    type metadata accessor for LaunchDiary();
    swift_allocObject();
    v2[2] = LaunchDiary.init(withJSON:)(0, 0xF000000000000000);
    sub_22F0D00CC();
  }
}

uint64_t sub_22F036B38()
{
  v2 = *(v0 + 16);
  if (v2)
  {
    sub_22EFFFB40(v0 + 24, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_22F0D016C();
    swift_allocObject();
    sub_22F0CFFAC();
    sub_22F0D015C();
    swift_beginAccess();
    v12 = *(v2 + 16);
    sub_22F0CFF1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F036E04();
    v5 = sub_22F0D014C();
    v7 = v6;

    sub_22F0D00CC();
    if (v1)
    {
      sub_22F0D00CC();
    }

    else
    {
      (*(v4 + 8))(v5, v7, v3, v4);
      sub_22F0D00CC();
      sub_22F00AB5C(v5, v7);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0x7972616964206F4ELL, 0xEA00000000002120, 500);
    return swift_willThrow();
  }
}

uint64_t LaunchRecorder.deinit()
{
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  return v0;
}

uint64_t LaunchRecorder.__deallocating_deinit()
{
  sub_22F0D00CC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

void *sub_22F036D40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[6] = a3;
  a2[7] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 3);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  a2[2] = 0;
  return a2;
}

unint64_t sub_22F036E04()
{
  result = qword_280CBD1A0;
  if (!qword_280CBD1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAA1660, &qword_22F0D74C0);
    sub_22F036E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1A0);
  }

  return result;
}

unint64_t sub_22F036E90()
{
  result = qword_280CBDC10;
  if (!qword_280CBDC10)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDC10);
  }

  return result;
}

uint64_t sub_22F036EE8(unsigned __int8 a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F036FE4(char a1)
{
  sub_22F0D199C();
  if (a1)
  {
    v2 = 0x3FD999999999999ALL;
  }

  else
  {
    v2 = 0x3FF0000000000000;
  }

  MEMORY[0x2318FDEF0](v2);
  return sub_22F0D19CC();
}

uint64_t sub_22F037040(unsigned __int8 a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

char *MessageDetails.queryItems.getter()
{
  v1 = v0;
  v77[2] = *MEMORY[0x277D85DE8];
  v74 = sub_22F0D021C();
  v2 = *(v74 - 8);
  v3 = MEMORY[0x28223BE20](v74);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v65 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v65 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v68 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v65 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v65 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v69 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E20, &qword_22F0D4FF0);
  v21 = *(v2 + 72);
  v76 = v2;
  v22 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v65 = 8 * v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22F0D5A90;
  v75 = v22;
  v24 = v23;
  sub_22F0D01EC();

  sub_22F0D01EC();
  sub_22F0D01EC();
  sub_22F0D01EC();
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  v25 = type metadata accessor for MessageDetails(0);
  sub_22F0D04CC();
  sub_22F0D111C();
  sub_22F0D01EC();

  sub_22F0D01EC();
  v26 = v74;
  sub_22F0D01EC();

  sub_22F0D01EC();
  v27 = v1 + v25[9];
  if (*(v27 + 8))
  {
    v28 = v76;
  }

  else
  {
    v77[0] = *v27;
    sub_22F0D183C();
    sub_22F0D01EC();

    v24 = sub_22F03D7EC(1, 9, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    *(v24 + 2) = 9;
    v28 = v76;
    (*(v76 + 32))(&v24[v75 + v65], v20, v26);
  }

  v29 = v68;
  if (*(v1 + v25[18] + 8))
  {
    sub_22F0D01EC();
    v31 = *(v24 + 2);
    v30 = *(v24 + 3);
    v32 = v75;
    if (v31 >= v30 >> 1)
    {
      v24 = sub_22F03D7EC((v30 > 1), v31 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v31 + 1;
    (*(v28 + 32))(&v24[v32 + v31 * v21], v69, v26);
  }

  else
  {
    v32 = v75;
  }

  if (*(v1 + v25[13] + 8))
  {
    sub_22F0D01EC();
    v34 = *(v24 + 2);
    v33 = *(v24 + 3);
    if (v34 >= v33 >> 1)
    {
      v24 = sub_22F03D7EC((v33 > 1), v34 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v34 + 1;
    (*(v28 + 32))(&v24[v32 + v34 * v21], v70, v26);
  }

  if (*(v1 + v25[20] + 8))
  {
    sub_22F0D01EC();
    v36 = *(v24 + 2);
    v35 = *(v24 + 3);
    if (v36 >= v35 >> 1)
    {
      v24 = sub_22F03D7EC((v35 > 1), v36 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v36 + 1;
    (*(v28 + 32))(&v24[v32 + v36 * v21], v71, v26);
  }

  if (*(v1 + v25[21] + 8))
  {
    sub_22F0D01EC();
    v38 = *(v24 + 2);
    v37 = *(v24 + 3);
    if (v38 >= v37 >> 1)
    {
      v24 = sub_22F03D7EC((v37 > 1), v38 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v38 + 1;
    (*(v28 + 32))(&v24[v32 + v38 * v21], v72, v26);
  }

  MessageDetails.notificationCaption.getter();
  sub_22F0D01EC();

  v40 = *(v24 + 2);
  v39 = *(v24 + 3);
  if (v40 >= v39 >> 1)
  {
    v24 = sub_22F03D7EC((v39 > 1), v40 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
  }

  *(v24 + 2) = v40 + 1;
  v41 = &v24[v32 + v40 * v21];
  v44 = *(v28 + 32);
  v43 = v28 + 32;
  v42 = v44;
  (v44)(v41, v29, v26);
  if (*(v1 + v25[16] + 8))
  {
    sub_22F0D01EC();
    v46 = *(v24 + 2);
    v45 = *(v24 + 3);
    if (v46 >= v45 >> 1)
    {
      v24 = sub_22F03D7EC((v45 > 1), v46 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v46 + 1;
    (v42)(&v24[v32 + v46 * v21], v73, v26);
  }

  v47 = (v1 + v25[14]);
  v48 = v47[1];
  if (v48 >> 60 != 15)
  {
    v76 = v43;
    v49 = *v47;
    sub_22F00AC04(*v47, v48);
    v50 = sub_22F0D046C();
    v77[0] = 0;
    v51 = [v50 compressedDataUsingAlgorithm:3 error:v77];

    v52 = v77[0];
    if (v51)
    {
      v73 = v42;
      v53 = sub_22F0D049C();
      v55 = v54;

      sub_22F0D047C();
      sub_22F0D01EC();

      v57 = *(v24 + 2);
      v56 = *(v24 + 3);
      if (v57 >= v56 >> 1)
      {
        v24 = sub_22F03D7EC((v56 > 1), v57 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
      }

      sub_22F00AB48(v49, v48);
      sub_22F00AB5C(v53, v55);
      *(v24 + 2) = v57 + 1;
      v26 = v74;
      v32 = v75;
      v42 = v73;
      (v73)(&v24[v75 + v57 * v21], v67, v74);
    }

    else
    {
      v58 = v52;
      v59 = sub_22F0D033C();

      swift_willThrow();
      sub_22F00AB48(v49, v48);

      v26 = v74;
      v32 = v75;
    }
  }

  v60 = v1 + v25[10];
  if ((*(v60 + 8) & 1) == 0)
  {
    v77[0] = *v60;
    sub_22F0D183C();
    v61 = v66;
    sub_22F0D01EC();

    v63 = *(v24 + 2);
    v62 = *(v24 + 3);
    if (v63 >= v62 >> 1)
    {
      v24 = sub_22F03D7EC((v62 > 1), v63 + 1, 1, v24, &qword_27DAA0E20, &qword_22F0D4FF0, MEMORY[0x277CC8918]);
    }

    *(v24 + 2) = v63 + 1;
    (v42)(&v24[v32 + v63 * v21], v61, v26);
  }

  return v24;
}

uint64_t static MessageDetails.detailsFrom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187[3] = *MEMORY[0x277D85DE8];
  v5 = sub_22F0D05BC();
  v175 = *(v5 - 8);
  v176 = v5;
  MEMORY[0x28223BE20](v5);
  v174 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for MessageDetails(0);
  MEMORY[0x28223BE20](v182);
  v183 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D021C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v185 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v186 = &v160 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v160 - v14;
  v16 = *(sub_22F005C48(0x756F53746E657665, 0xEB00000000656372) + 2);
  v181 = a2;
  v177 = v15;
  if (v16)
  {
    sub_22F0CFF1C();
  }

  object = String.trimToNil()().value._object;

  if (!object)
  {
    v21 = "Missing event source";
LABEL_14:
    v23 = (v21 - 32) | 0x8000000000000000;
    v24 = 0xD000000000000014;
LABEL_15:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v24, v23, 500);
    return swift_willThrow();
  }

  v18 = sub_22F0D174C();

  if (v18 == 1)
  {
    v20 = 0;
    v19 = 1;
  }

  else
  {
    if (v18 != 2)
    {

      goto LABEL_13;
    }

    v19 = 2;
    v20 = 1;
  }

  v22 = sub_22F0D188C();

  if (v22)
  {
LABEL_13:
    v21 = "Unknown event source";
    goto LABEL_14;
  }

  if (*(sub_22F005C48(0x4974736575716572, 0xE900000000000044) + 2))
  {
    sub_22F0CFF1C();
  }

  v26 = String.trimToNil()();
  v27 = v26.value._object;

  if (!v26.value._object)
  {
    v24 = 0xD000000000000011;
    v23 = 0x800000022F0DE020;
    goto LABEL_15;
  }

  countAndFlagsBits = v26.value._countAndFlagsBits;
  v28 = *(sub_22F005C48(1701667182, 0xE400000000000000) + 2);
  v169 = v2;
  if (v28)
  {
    sub_22F0CFF1C();
  }

  v29 = String.trimToNil()();

  v173 = a1;
  v168 = v19;
  if (v29.value._object)
  {
    v170 = v29;
  }

  else
  {
    type metadata accessor for DaemonConnection();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v170.value._countAndFlagsBits = sub_22F0D031C();
    v33 = v32;

    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v34 = sub_22F0D0A1C();
    __swift_project_value_buffer(v34, qword_27DAA1A28);
    sub_22F0CFF1C();
    v35 = sub_22F0D09FC();
    v36 = sub_22F0D123C();

    v37 = os_log_type_enabled(v35, v36);
    v170.value._object = v33;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v187[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_22F00A560(v170.value._countAndFlagsBits, v33, v187);
      _os_log_impl(&dword_22EFE1000, v35, v36, "Missing child name in URL components. Falling back to %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318FE8B0](v39, -1, -1);
      v40 = v38;
      v27 = v26.value._object;
      MEMORY[0x2318FE8B0](v40, -1, -1);
    }
  }

  v41 = v9;
  if (*(sub_22F005C48(0x4674736575716572, 0xED000074616D726FLL) + 2))
  {
    sub_22F0CFF1C();
  }

  v42 = String.trimToNil()();

  v166 = v42.value._object;
  if (!v42.value._object)
  {

    v24 = 0x20676E697373694DLL;
    v23 = 0xEE0074616D726F66;
    goto LABEL_15;
  }

  LODWORD(v163) = v20;
  v164 = v42.value._countAndFlagsBits;
  v165 = v27;
  v43 = sub_22F0D023C();
  v44 = 0x27DAA0000;
  if (!v43)
  {
    goto LABEL_55;
  }

  v180 = *(v43 + 16);
  if (v180)
  {
    v45 = 0;
    v178 = v41 + 16;
    v171 = v41 + 8;
    v184 = (v41 + 32);
    v46 = MEMORY[0x277D84F90];
    v172 = v41;
    v179 = v43;
    while (1)
    {
      if (v45 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_151;
      }

      v47 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v48 = *(v41 + 72);
      v49 = v8;
      (*(v41 + 16))(v186, v43 + v47 + v48 * v45, v8);
      if (sub_22F0D01FC() == 0x7470697263736564 && v50 == 0xEB000000006E6F69)
      {
        break;
      }

      v51 = sub_22F0D188C();

      if (v51)
      {
        goto LABEL_40;
      }

      v8 = v49;
      (*v171)(v186, v49);
LABEL_34:
      ++v45;
      v43 = v179;
      if (v180 == v45)
      {
        goto LABEL_47;
      }
    }

LABEL_40:
    v52 = *v184;
    (*v184)(v185, v186, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v187[0] = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22EFFC598(0, v46[2] + 1, 1);
      v46 = v187[0];
    }

    v55 = v46[2];
    v54 = v46[3];
    if (v55 >= v54 >> 1)
    {
      sub_22EFFC598((v54 > 1), v55 + 1, 1);
      v46 = v187[0];
    }

    v46[2] = v55 + 1;
    v8 = v49;
    v52(v46 + v47 + v55 * v48, v185, v49);
    v41 = v172;
    goto LABEL_34;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_47:

  if (!v46[2])
  {
    sub_22F0D00CC();
    v44 = 0x27DAA0000uLL;
    goto LABEL_55;
  }

  v56 = v177;
  (*(v41 + 16))(v177, v46 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v8);
  sub_22F0D00CC();
  v186 = sub_22F0D020C();
  v58 = v57;
  (*(v41 + 8))(v56, v8);
  v44 = 0x27DAA0000uLL;
  v185 = v58;
  if (!v58)
  {
LABEL_55:
    if (*(sub_22F005C48(0x656C746974, 0xE500000000000000) + 2))
    {
      sub_22F0CFF1C();
    }

    v63 = String.trimToNil()();
    v186 = v63.value._countAndFlagsBits;

    v185 = v63.value._object;
    if (!v63.value._object)
    {
      if (*(v44 + 1392) != -1)
      {
        swift_once();
      }

      v64 = sub_22F0D0A1C();
      __swift_project_value_buffer(v64, qword_27DAA1A28);
      v65 = sub_22F0D09FC();
      v66 = sub_22F0D123C();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_22EFE1000, v65, v66, "Missing item title in URL components. Falling back to empty string", v67, 2u);
        MEMORY[0x2318FE8B0](v67, -1, -1);
      }

      v185 = 0xE000000000000000;
      v186 = 0;
    }

    goto LABEL_63;
  }

  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v59 = sub_22F0D0A1C();
  __swift_project_value_buffer(v59, qword_27DAA1A28);
  v60 = sub_22F0D09FC();
  v61 = sub_22F0D122C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_22EFE1000, v60, v61, "Old style conversation url", v62, 2u);
    MEMORY[0x2318FE8B0](v62, -1, -1);
  }

LABEL_63:
  if (*(sub_22F005C48(1684632420, 0xE400000000000000) + 2))
  {
    sub_22F0CFF1C();
  }

  v68 = String.trimToNil()();

  if (v68.value._object && (v69 = sub_22F03C308(v68.value._countAndFlagsBits, v68.value._object), (v70 & 1) == 0))
  {
    LODWORD(v172) = 0;
  }

  else
  {
    if (*(v44 + 1392) != -1)
    {
      swift_once();
    }

    v71 = sub_22F0D0A1C();
    __swift_project_value_buffer(v71, qword_27DAA1A28);
    v72 = sub_22F0D09FC();
    v73 = sub_22F0D123C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_22EFE1000, v72, v73, "Missing/invalid dsid in URL components. Falling back to nil", v74, 2u);
      MEMORY[0x2318FE8B0](v74, -1, -1);
    }

    v69 = 0;
    LODWORD(v172) = 1;
  }

  v177 = v69;
  v75 = 0x65726F7453707061;
  if (v163)
  {
    if (*(sub_22F005C48(0x4449656C646E7562, 0xE800000000000000) + 2))
    {
      sub_22F0CFF1C();
    }

    v76 = String.trimToNil()();

    v171 = 0x65726F7453707061;
    if (v76.value._object)
    {
      v179 = v76.value._object;
      v180 = v76.value._countAndFlagsBits;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v184 = 0;
    }

    else
    {
      if (*(v44 + 1392) != -1)
      {
        swift_once();
      }

      v86 = sub_22F0D0A1C();
      __swift_project_value_buffer(v86, qword_27DAA1A28);
      v87 = sub_22F0D09FC();
      v88 = sub_22F0D123C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_22EFE1000, v87, v88, "Missing bundle id in URL components. Falling back to nil", v89, 2u);
        MEMORY[0x2318FE8B0](v89, -1, -1);
      }

      v77 = 0;
      v78 = 0;
      v79 = 0;
      v184 = 0;
      v179 = 0;
      v180 = 0;
    }

    v178 = 0xE800000000000000;
    v90 = v183;
  }

  else
  {
    if (*(sub_22F005C48(0x69616E626D756874, 0xED0000687461506CLL) + 2))
    {
      sub_22F0CFF1C();
    }

    v80 = String.trimToNil()();
    v81 = v80.value._countAndFlagsBits;

    v184 = v80.value._object;
    if (!v80.value._object)
    {
      if (*(v44 + 1392) != -1)
      {
        swift_once();
      }

      v82 = sub_22F0D0A1C();
      __swift_project_value_buffer(v82, qword_27DAA1A28);
      v83 = sub_22F0D09FC();
      v84 = sub_22F0D123C();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_22EFE1000, v83, v84, "Missing thumbnailPath in URL components. Falling back to nil", v85, 2u);
        MEMORY[0x2318FE8B0](v85, -1, -1);
      }

      v81 = 0;
    }

    if (*(sub_22F005C48(0x6E694C65726F7473, 0xE90000000000006BLL) + 2))
    {
      sub_22F0CFF1C();
    }

    v91 = String.trimToNil()();
    v78 = v91.value._object;

    if (v91.value._object)
    {
      v77 = v91.value._countAndFlagsBits;
    }

    else
    {
      v77 = 0;
    }

    if (*(sub_22F005C48(0x54746375646F7270, 0xEB00000000657079) + 2))
    {
      sub_22F0CFF1C();
    }

    v92 = String.trimToNil()();

    v179 = 0;
    v180 = 0;
    if (v92.value._object)
    {
      v75 = v92.value._countAndFlagsBits;
    }

    v171 = v75;
    v93 = 0xE800000000000000;
    if (v92.value._object)
    {
      v93 = v92.value._object;
    }

    v178 = v93;
    v90 = v183;
    v79 = v81;
  }

  v90[16] = 3;
  v94 = v182;
  v162 = v182[8];
  sub_22F0D04EC();
  v95 = &v90[v94[10]];
  *v95 = 0;
  v161 = v95;
  v95[8] = 1;
  v96 = v94[11];
  v90[v96] = 0;
  v97 = v94[12];
  v98 = type metadata accessor for ResolvedFamily(0);
  (*(*(v98 - 8) + 56))(&v90[v97], 1, 1, v98);
  v99 = &v90[v94[14]];
  *v99 = xmmword_22F0D6620;
  v100 = &v90[v94[17]];
  v100->value._countAndFlagsBits = 0;
  v100->value._object = 0xE000000000000000;
  v163 = v100;
  if (*(sub_22F005C48(0x69616E626D756874, 0xED0000617461446CLL) + 2))
  {
    sub_22F0CFF1C();
  }

  v101 = String.trimToNil()().value._object;

  if (v101)
  {
    v102 = sub_22F0D045C();
    v104 = v103;

    if (v104 >> 60 != 15)
    {
      v105 = sub_22F0D046C();
      v187[0] = 0;
      v106 = [v105 decompressedDataUsingAlgorithm:3 error:v187];

      v107 = v187[0];
      if (v106)
      {
        v108 = sub_22F0D049C();
        v160 = v77;
        v109 = v78;
        v110 = v96;
        v112 = v111;
        sub_22F00AB48(v102, v104);

        sub_22F00AB48(*v99, *(v99 + 1));
        *v99 = v108;
        *(v99 + 1) = v112;
        v96 = v110;
        v78 = v109;
        v77 = v160;
      }

      else
      {
        v113 = v107;
        v114 = sub_22F0D033C();

        swift_willThrow();
        sub_22F00AB48(v102, v104);

        v169 = 0;
      }
    }
  }

  v115 = sub_22F005C48(0xD000000000000013, 0x800000022F0DC590);
  v116 = v179;
  if (*(v115 + 2))
  {
    sub_22F0CFF1C();
  }

  v117 = String.trimToNil()().value._object;

  if (v117)
  {
    v118 = String.trimToNil()();
    v119 = v118.value._countAndFlagsBits;
    v120 = v118.value._object;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v121 = &v183[v182[15]];
  *v121 = v119;
  v121[1] = v120;
  if (*(sub_22F005C48(0x6143656C62627562, 0xED00006E6F697470) + 2))
  {
    sub_22F0CFF1C();
  }

  v122 = String.trimToNil()().value._object;

  if (v122)
  {
    v123 = String.trimToNil()();
    v124 = v123.value._countAndFlagsBits;
    v125 = v123.value._object;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v126 = v183;
  v127 = &v183[v182[9]];
  v128 = &v183[v182[13]];
  v129 = &v183[v182[16]];
  v130 = &v183[v182[18]];
  v131 = &v183[v182[19]];
  v132 = &v183[v182[20]];
  v133 = &v183[v182[21]];
  *v129 = v124;
  v129[1] = v125;
  *(v126 + 3) = v164;
  *(v126 + 4) = v166;
  *v131 = v186;
  *(v131 + 1) = v185;
  v126[v96] = 5;
  *v127 = v177;
  v127[8] = v172;
  v126[16] = v168;
  v134 = v165;
  *v126 = countAndFlagsBits;
  *(v126 + 1) = v134;
  v135 = v170.value._object;
  *(v126 + 5) = v170.value._countAndFlagsBits;
  *(v126 + 6) = v135;
  *v130 = v180;
  v130[1] = v116;
  v136 = v184;
  *v128 = v79;
  *(v128 + 1) = v136;
  *v132 = v77;
  v132[1] = v78;
  v137 = v178;
  *v133 = v171;
  v133[1] = v137;
  if (*(sub_22F005C48(0x73556E6F69746361, 0xEE00444953447265) + 2))
  {
    sub_22F0CFF1C();
  }

  v138 = String.trimToNil()();

  if (v138.value._object)
  {
    v139 = sub_22F03C308(v138.value._countAndFlagsBits, v138.value._object);
    if ((v140 & 1) == 0)
    {
      v141 = v161;
      *v161 = v139;
      *(v141 + 8) = 0;
    }
  }

  if (*(sub_22F005C48(0x6C61766F72707061, 0xEC000000656D6954) + 2))
  {
    sub_22F0CFF1C();
  }

  v142 = String.trimToNil()();

  if (v142.value._object)
  {
    *v163 = v142;
  }

  if (*(sub_22F005C48(0x737574617473, 0xE600000000000000) + 2))
  {
    sub_22F0CFF1C();
  }

  v143 = String.trimToNil()();

  if (v143.value._object)
  {
    MessageDetails.EventStatus.init(rawValue:)(v143.value);
    if (LOBYTE(v187[0]) != 6)
    {
      v183[v96] = v187[0];
    }
  }

  if (*(sub_22F005C48(0x73657269707865, 0xE700000000000000) + 2))
  {
    sub_22F0CFF1C();
  }

  v144 = String.trimToNil()();

  if (v144.value._object && (v187[0] = 0, v145 = sub_22F03D9C8(v144.value._countAndFlagsBits, v144.value._object, v187), , v145))
  {
    v146 = v174;
    sub_22F0D04BC();
    (*(v175 + 40))(&v183[v162], v146, v176);
  }

  else
  {
    if (qword_27DAA0570 != -1)
    {
      swift_once();
    }

    v147 = sub_22F0D0A1C();
    __swift_project_value_buffer(v147, qword_27DAA1A28);
    v148 = sub_22F0D09FC();
    v149 = sub_22F0D123C();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_22EFE1000, v148, v149, "Failed to get expiration date from URL", v150, 2u);
      MEMORY[0x2318FE8B0](v150, -1, -1);
    }
  }

  if (qword_27DAA0570 != -1)
  {
LABEL_151:
    swift_once();
  }

  v151 = sub_22F0D0A1C();
  __swift_project_value_buffer(v151, qword_27DAA1A28);
  v152 = sub_22F0D09FC();
  v153 = sub_22F0D122C();
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v187[0] = v155;
    *v154 = 136315138;
    v156 = v183;
    swift_beginAccess();
    v157 = MessageDetails.debugDescription.getter();
    v159 = sub_22F00A560(v157, v158, v187);

    *(v154 + 4) = v159;
    _os_log_impl(&dword_22EFE1000, v152, v153, "Details from URL %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v155);
    MEMORY[0x2318FE8B0](v155, -1, -1);
    MEMORY[0x2318FE8B0](v154, -1, -1);
  }

  else
  {

    v156 = v183;
  }

  swift_beginAccess();
  sub_22F011C4C(v156, v181);
  return sub_22F01DF14(v156, type metadata accessor for MessageDetails);
}

uint64_t MessageDetails.EventSource.rawValue.getter()
{
  v1 = 0x7975426F546B7361;
  if (*v0 != 1)
  {
    v1 = 0x69546E6565726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

double MessageDetails.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v2 = type metadata accessor for MessageDetails(0);
  sub_22F0D04EC();
  v3 = a1 + v2[9];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[10];
  *v4 = 0;
  *(v4 + 8) = 1;
  *(a1 + v2[11]) = 0;
  v5 = v2[12];
  v6 = type metadata accessor for ResolvedFamily(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = (a1 + v2[13]);
  *v7 = 0;
  v7[1] = 0;
  result = 0.0;
  *(a1 + v2[14]) = xmmword_22F0D6620;
  v9 = (a1 + v2[15]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v2[16]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[17]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a1 + v2[18]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v2[19]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (a1 + v2[20]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v2[21]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

People::MessageDetails::EventSource_optional __swiftcall MessageDetails.EventSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F03990C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x7975426F546B7361;
  if (v2 != 1)
  {
    v4 = 0x69546E6565726373;
    v3 = 0xEA0000000000656DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7975426F546B7361;
  if (*a2 != 1)
  {
    v8 = 0x69546E6565726373;
    v7 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22F0D188C();
  }

  return v11 & 1;
}

uint64_t sub_22F039A18()
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

uint64_t sub_22F039AC0(uint64_t a1)
{
  sub_22F0D0D5C();
}

uint64_t sub_22F039B54(uint64_t a1)
{
  sub_22F0D199C();
  sub_22F0D0D5C();

  return sub_22F0D19CC();
}

void sub_22F039C04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x7975426F546B7361;
  if (v2 != 1)
  {
    v5 = 0x69546E6565726373;
    v4 = 0xEA0000000000656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

People::MessageDetails::EventStatus_optional __swiftcall MessageDetails.EventStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F0D174C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MessageDetails.EventStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6465696E6564;
  v4 = 0x64657269707865;
  if (v1 != 4)
  {
    v4 = 0x646567727570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E6570;
  if (v1 != 1)
  {
    v5 = 0x6465766F72707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for MessageDetails(uint64_t a1)
{
  result = qword_27DAA1698;
  if (!qword_27DAA1698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F039DD8(uint64_t a1)
{
  sub_22F0D0D5C();
}

void sub_22F039ED4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465696E6564;
  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (v2 != 4)
  {
    v8 = 0x646567727570;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x676E69646E6570;
  if (v2 != 1)
  {
    v10 = 0x6465766F72707061;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t MessageDetails.requestID.getter()
{
  v1 = *v0;
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.requestID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageDetails.requestFormat.getter()
{
  v1 = *(v0 + 24);
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.requestFormat.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MessageDetails.childName.getter()
{
  v1 = *(v0 + 40);
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.childName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t MessageDetails.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageDetails(0) + 32);
  v4 = sub_22F0D05BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageDetails.expirationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageDetails(0) + 32);
  v4 = sub_22F0D05BC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MessageDetails.userDSID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MessageDetails(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MessageDetails.actionUserDSID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MessageDetails(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MessageDetails.status.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MessageDetails(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t MessageDetails.status.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MessageDetails(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t MessageDetails.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageDetails(0) + 48);

  return sub_22F02D28C(v3, a1);
}

uint64_t MessageDetails.family.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageDetails(0) + 48);

  return sub_22F03DAC0(a1, v3);
}

uint64_t MessageDetails.thumbnailPath.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 52));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.thumbnailPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.thumbnailData.getter()
{
  v1 = v0 + *(type metadata accessor for MessageDetails(0) + 56);
  v2 = *v1;
  sub_22F0303BC(*v1, *(v1 + 8));
  return v2;
}

uint64_t MessageDetails.thumbnailData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for MessageDetails(0) + 56);
  result = sub_22F00AB48(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t MessageDetails._bubbleCaption.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 64));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails._bubbleCaption.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.notificationCaption.getter()
{
  v1 = type metadata accessor for MessageDetails(0);
  v2 = (v0 + *(v1 + 60));
  if (!v2[1])
  {
    if (*(v0 + 16) > 1u)
    {
      if (*(v0 + 16) == 2)
      {
        v4 = v1;
        v7 = (v0 + *(v1 + 72));
        v8 = v7[1];
        if (v8 && (*v7 == 0xD000000000000016 ? (v9 = v8 == 0x800000022F0DD8D0) : (v9 = 0), v9 || (sub_22F0D188C() & 1) != 0))
        {
          type metadata accessor for DaemonConnection();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v6 = [objc_opt_self() bundleForClass_];
          v25 = 0x800000022F0DE080;
        }

        else
        {
          type metadata accessor for DaemonConnection();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v6 = [objc_opt_self() bundleForClass_];
          v25 = 0x800000022F0DE060;
        }

        goto LABEL_16;
      }
    }

    else if (*(v0 + 16))
    {
      v4 = v1;
      type metadata accessor for DaemonConnection();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v25 = 0x800000022F0DE0A0;
LABEL_16:
      sub_22F0D031C();

      type metadata accessor for DaemonConnection();
      v15 = [objc_opt_self() bundleForClass_];
      sub_22F0D031C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_22F0D6710;
      v18 = *(v0 + 40);
      v17 = *(v0 + 48);
      v19 = MEMORY[0x277D837D0];
      *(v16 + 56) = MEMORY[0x277D837D0];
      v20 = sub_22F03DB30();
      *(v16 + 64) = v20;
      *(v16 + 32) = v18;
      *(v16 + 40) = v17;
      v21 = (v0 + *(v4 + 76));
      v22 = *v21;
      v23 = v21[1];
      *(v16 + 96) = v19;
      *(v16 + 104) = v20;
      *(v16 + 72) = v22;
      *(v16 + 80) = v23;
      sub_22F0CFF1C();
      sub_22F0CFF1C();
      v3 = sub_22F0D0CCC();
      goto LABEL_17;
    }

    type metadata accessor for DaemonConnection();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_22F0D031C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_22F0D2BF0;
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_22F03DB30();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;
    sub_22F0CFF1C();
    v3 = sub_22F0D0CCC();
LABEL_17:

    goto LABEL_18;
  }

  v3 = *v2;
LABEL_18:
  sub_22F0CFF1C();
  return v3;
}

uint64_t sub_22F03AC34(uint64_t a1, uint64_t a2)
{
  v3 = String.trimToNil()();
  v4 = (a2 + *(type metadata accessor for MessageDetails(0) + 60));

  *v4 = v3;
  return result;
}

uint64_t MessageDetails.notificationCaption.setter(uint64_t a1, uint64_t a2)
{
  v3 = String.trimToNil()();

  v4 = (v2 + *(type metadata accessor for MessageDetails(0) + 60));

  *v4 = v3;
  return result;
}

uint64_t (*MessageDetails.notificationCaption.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = MessageDetails.notificationCaption.getter();
  a1[1] = v3;
  return sub_22F03AD2C;
}

uint64_t sub_22F03AD2C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    sub_22F0CFF1C();
    v3 = String.trimToNil()();

    v4 = (v2 + *(type metadata accessor for MessageDetails(0) + 60));

    *v4 = v3;
  }

  else
  {
    v6 = String.trimToNil()();

    v7 = (v2 + *(type metadata accessor for MessageDetails(0) + 60));

    *v7 = v6;
  }

  return result;
}

uint64_t MessageDetails.bubbleCaption.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageDetails(0) + 64));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = MessageDetails.notificationCaption.getter();
  }

  sub_22F0CFF1C();
  return v2;
}

uint64_t sub_22F03AE54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MessageDetails(0) + 64));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = MessageDetails.notificationCaption.getter();
  }

  *a2 = v5;
  a2[1] = v6;

  return sub_22F0CFF1C();
}

uint64_t sub_22F03AEBC(uint64_t a1, uint64_t a2)
{
  v3 = String.trimToNil()();
  v4 = (a2 + *(type metadata accessor for MessageDetails(0) + 64));

  *v4 = v3;
  return result;
}

uint64_t MessageDetails.bubbleCaption.setter(uint64_t a1, uint64_t a2)
{
  v3 = String.trimToNil()();

  v4 = (v2 + *(type metadata accessor for MessageDetails(0) + 64));

  *v4 = v3;
  return result;
}

void (*MessageDetails.bubbleCaption.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(type metadata accessor for MessageDetails(0) + 64);
  *(v4 + 8) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = MessageDetails.notificationCaption.getter();
    v7 = 0;
  }

  v4[3] = v7;
  *v4 = v8;
  v4[1] = v9;
  sub_22F0CFF1C();
  return sub_22F03B020;
}

void sub_22F03B020(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 16) + *(*a1 + 32));
  if (a2)
  {
    sub_22F0CFF1C();
    v4 = String.trimToNil()();

    *v3 = v4;
  }

  else
  {
    v5 = String.trimToNil()();

    *v3 = v5;
  }

  free(v2);
}

uint64_t MessageDetails.approvalTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 68));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.approvalTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.bundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 72));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 76));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.storeLink.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 80));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.storeLink.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.productType.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 84));
  sub_22F0CFF1C();
  return v1;
}

uint64_t MessageDetails.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MessageDetails(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MessageDetails.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - v3;
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  strcpy(v61, " eventSource:");
  HIWORD(v61[1]) = -4864;
  LOBYTE(v59) = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1668, &qword_22F0D74C8);
  v5 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v5);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v6 = v61[0];
  v7 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v6;
  v61[1] = v7;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE0C0);
  v8 = type metadata accessor for MessageDetails(0);
  sub_22F0D05BC();
  sub_22F03DB84();
  v9 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v9);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x4953447265737520, 0xEA00000000003A44);
  v10 = v0 + v8[9];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v59 = v11;
  LOBYTE(v60) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1678, &qword_22F0D74D0);
  v12 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v12);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v13 = v61[0];
  v14 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v13;
  v61[1] = v14;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE0E0);
  v15 = v0 + v8[10];
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  v59 = v16;
  LOBYTE(v60) = v15;
  v17 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v17);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v18 = v61[0];
  v19 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v18;
  v61[1] = v19;
  MEMORY[0x2318FD2C0](0x7473657571657220, 0xEC000000203A4449);
  MEMORY[0x2318FD2C0](*v1, v1[1]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v20 = v61[0];
  v21 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  MEMORY[0x2318FD2C0](v20, v21);

  MEMORY[0x2318FD2C0](0x3A73757461747320, 0xE900000000000020);
  LOBYTE(v59) = *(v0 + v8[11]);
  sub_22F0D168C();
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v22 = v61[0];
  v23 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v22;
  v61[1] = v23;
  MEMORY[0x2318FD2C0](0x49656C646E756220, 0xEB00000000203A64);
  v24 = (v0 + v8[18]);
  v25 = v24[1];
  v59 = *v24;
  v60 = v25;
  sub_22F0CFF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA14D8, &unk_22F0D6A00);
  v26 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v26);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v27 = v61[0];
  v28 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v27;
  v61[1] = v28;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE100);
  v29 = (v0 + v8[13]);
  v30 = v29[1];
  v59 = *v29;
  v60 = v30;
  sub_22F0CFF1C();
  v31 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v31);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v32 = v61[0];
  v33 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v32;
  v61[1] = v33;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE120);
  v34 = (v0 + v8[14]);
  v35 = v34[1];
  v59 = *v34;
  v60 = v35;
  sub_22F0303BC(v59, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1680, &qword_22F0D74D8);
  v36 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v36);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v37 = v61[0];
  v38 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v37;
  v61[1] = v38;
  MEMORY[0x2318FD2C0](0xD000000000000010, 0x800000022F0DE140);
  MEMORY[0x2318FD2C0](v1[3], v1[4]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x203A656D616E20, 0xE700000000000000);
  MEMORY[0x2318FD2C0](v1[5], v1[6]);
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x203A656C74697420, 0xE800000000000000);
  MEMORY[0x2318FD2C0](*(v1 + v8[19]), *(v1 + v8[19] + 8));
  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  MEMORY[0x2318FD2C0](0x3A796C696D616620, 0xE900000000000020);
  sub_22F02D28C(v0 + v8[12], v4);
  v39 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v39);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v40 = v61[0];
  v41 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v40;
  v61[1] = v41;
  MEMORY[0x2318FD2C0](0x6C2065726F747320, 0xED0000203A6B6E69);
  v42 = (v0 + v8[20]);
  v43 = v42[1];
  v59 = *v42;
  v60 = v43;
  sub_22F0CFF1C();
  v44 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v44);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v45 = v61[0];
  v46 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v45;
  v61[1] = v46;
  MEMORY[0x2318FD2C0](0x746375646F727020, 0xEF203A6570797420);
  v47 = (v0 + v8[21]);
  v48 = v47[1];
  v59 = *v47;
  v60 = v48;
  sub_22F0CFF1C();
  v49 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v49);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v50 = v61[0];
  v51 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v50;
  v61[1] = v51;
  MEMORY[0x2318FD2C0](0xD000000000000016, 0x800000022F0DE160);
  v52 = MessageDetails.notificationCaption.getter();
  MEMORY[0x2318FD2C0](v52);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  v53 = v61[0];
  v54 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F0D152C();

  v61[0] = v53;
  v61[1] = v54;
  MEMORY[0x2318FD2C0](0xD000000000000011, 0x800000022F0DE180);
  v55 = (v0 + v8[16]);
  v56 = v55[1];
  v59 = *v55;
  v60 = v56;
  sub_22F0CFF1C();
  v57 = sub_22F0D0CFC();
  MEMORY[0x2318FD2C0](v57);

  MEMORY[0x2318FD2C0](32, 0xE100000000000000);
  return v61[0];
}

uint64_t MessageDetails.actioned.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessageDetails(0) + 44));
  if (v1 == 2)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = sub_22F0D188C();

  if ((v3 & 1) == 0)
  {
    if (v1 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_22F0D188C();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t MessageDetails.isExpired.getter()
{
  v0 = sub_22F0D05BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F0D05AC();
  type metadata accessor for MessageDetails(0);
  v4 = sub_22F0D052C();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t MessageDetails.TTL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      if (qword_280CBE748 != -1)
      {
        swift_once();
      }

      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
      v4 = v3;
      v5 = qword_280CBE750;
      goto LABEL_10;
    }
  }

  else if (*(v1 + 16))
  {
    if (qword_280CBE790 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
    v4 = v3;
    v5 = qword_280CBE798;
LABEL_10:
    v6 = __swift_project_value_buffer(v3, v5);
    v13 = *(v4 - 8);
    (*(v13 + 16))(a1, v6, v4);
    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v4;
    goto LABEL_12;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a1;
  v9 = 1;
LABEL_12:

  return v7(v8, v9, 1, v10);
}

uint64_t MessageDetails.updateFromDetails(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ResolvedFamily(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F011C4C(v3, a2);
  v13 = type metadata accessor for MessageDetails(0);
  v14 = v13[12];
  sub_22F03DBDC(a1 + v14, a2 + v14);
  sub_22F02D28C(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22F03DC4C(v8);
  }

  else
  {
    sub_22F03DCB4(v8, v12);
    v15 = FAFamilyMember.displayNameWithFallback.getter();
    v17 = v16;
    sub_22F01DF14(v12, type metadata accessor for ResolvedFamily);

    *(a2 + 40) = v15;
    *(a2 + 48) = v17;
  }

  v18 = v13[10];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = a2 + v18;
  *v21 = v19;
  *(v21 + 8) = v20;
  *(a2 + v13[11]) = *(a1 + v13[11]);
  v22 = v13[17];
  v23 = a1 + v22;
  v25 = *(a1 + v22);
  v24 = *(v23 + 8);
  v26 = (a2 + v22);
  sub_22F0CFF1C();

  *v26 = v25;
  v26[1] = v24;
  return result;
}

unint64_t sub_22F03C308(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22F0D15DC();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_22F0BE920(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

char *sub_22F03C658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16D8, &qword_22F0DBF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22F03C784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03C890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0E28, &qword_22F0D4FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F03C9B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA13A0, &qword_22F0D6218);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_22F03CB24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22F03CC6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1728, &qword_22F0D7738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1730, &qword_22F0D7740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CDA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0D90, &qword_22F0D4F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CEB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1720, &qword_22F0D7730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03CFCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1718, &qword_22F0D7728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03D0D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D68, &qword_22F0D4F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03D20C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0D60, &qword_22F0D4F48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22F03D340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA16F0, &qword_22F0D7708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F03D494(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_22F03D6A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0CB0, &qword_22F0D4F30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22F03D7EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

BOOL sub_22F03D9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22F0D151C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_22F03DAC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F03DB30()
{
  result = qword_280CBD1B0;
  if (!qword_280CBD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBD1B0);
  }

  return result;
}

unint64_t sub_22F03DB84()
{
  result = qword_27DAA1670;
  if (!qword_27DAA1670)
  {
    sub_22F0D05BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1670);
  }

  return result;
}

uint64_t sub_22F03DBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F03DC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F03DCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedFamily(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F03DD1C()
{
  result = qword_27DAA1688;
  if (!qword_27DAA1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1688);
  }

  return result;
}

unint64_t sub_22F03DD74()
{
  result = qword_27DAA1690;
  if (!qword_27DAA1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1690);
  }

  return result;
}

void sub_22F03DDF0(uint64_t a1)
{
  sub_22F03DFB0(319, &qword_27DAA16A8);
  if (v1 <= 0x3F)
  {
    sub_22F0D05BC();
    if (v2 <= 0x3F)
    {
      sub_22F03DFB0(319, &qword_27DAA16B0);
      if (v3 <= 0x3F)
      {
        sub_22F03DF58(319);
        if (v4 <= 0x3F)
        {
          sub_22F03DFB0(319, &qword_280CBD180);
          if (v5 <= 0x3F)
          {
            sub_22F03DFB0(319, &qword_27DAA16C0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22F03DF58(uint64_t a1)
{
  if (!qword_27DAA16B8)
  {
    type metadata accessor for ResolvedFamily(255);
    v1 = sub_22F0D132C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAA16B8);
    }
  }
}

void sub_22F03DFB0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22F0D132C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *sub_22F03E01C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t dispatch thunk of ItemIndexer.startBatchMode(forBundle:protectionClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22F00CD54;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ItemIndexer.endBatchMode(forBundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22F00CD54;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ItemFetcher.fetchItem(itemID:indexBundleId:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_22F01F1CC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t LinearScale.init(from:to:validRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v13 = type metadata accessor for LinearScale(0, a4, a5, v12);
  v11(a6 + *(v13 + 36), a2, a4);
  v14 = *(v13 + 40);
  sub_22F0D0C1C();
  v15 = sub_22F0D132C();
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v14, a3, v15);
}

double LinearScale.ratio(for:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v12 - v8;
  MEMORY[0x28223BE20](v7);
  sub_22F0D16CC();
  sub_22F0D16CC();
  sub_22F0D0B6C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v9, v2);
  sub_22F03E770();
  sub_22F0D0ACC();
  return *&v12[1];
}

unint64_t sub_22F03E770()
{
  result = qword_27DAA1758;
  if (!qword_27DAA1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1758);
  }

  return result;
}

uint64_t LinearScale.value(forRatio:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v44 = a2;
  v5 = *(a1 + 16);
  v43 = *(a1 + 24);
  v37 = a1;
  v36 = *(*(*(v43 + 2) + 24) + 8);
  v39 = sub_22F0D0C1C();
  v42 = sub_22F0D132C();
  v38 = *(v42 - 8);
  v6 = MEMORY[0x28223BE20](v42);
  v40 = &v33 - v7;
  v41 = *(v39 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = &v33 - v9;
  v10 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  sub_22F0D16CC();
  sub_22F0D0ADC();
  sub_22F0D117C();
  v34 = v10;
  v22 = *(v10 + 8);
  v23 = v13;
  v24 = v38;
  v22(v23, v5);
  v25 = v16;
  v26 = v42;
  v22(v25, v5);
  v43 = v21;
  v27 = v39;
  sub_22F0D16BC();
  v28 = v40;
  v22(v19, v5);
  v29 = v41;
  (*(v24 + 16))(v28, v4 + *(v37 + 40), v26);
  if ((*(v29 + 48))(v28, 1, v27) == 1)
  {
    (*(v24 + 8))(v28, v26);
    return (*(v34 + 32))(v44, v43, v5);
  }

  else
  {
    v31 = v35;
    (*(v29 + 32))(v35, v28, v27);
    v32 = v43;
    sub_22F0D18DC();
    sub_22F0D18EC();
    v22(v19, v5);
    (*(v29 + 8))(v31, v27);
    return (v22)(v32, v5);
  }
}

uint64_t LinearScale.convert<A>(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  LinearScale.ratio(for:)(a1, a2);
  v9 = type metadata accessor for LinearScale(0, a3, a4, v8);
  return LinearScale.value(forRatio:)(v9, a5);
}

uint64_t LinearScale.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 + 16);
  v19 = *(a1 + 24);
  sub_22F0D0C1C();
  v5 = sub_22F0D132C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  v16 = *(v10 + 16);
  v16(&v18 - v14, v2 + *(a1 + 36), v4);
  v16(v13, v2, v4);
  (*(v6 + 16))(v9, v2 + *(a1 + 40), v5);
  return LinearScale.init(from:to:validRange:)(v15, v13, v9, v4, v19, v18);
}

uint64_t sub_22F03EE58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_22F0D0C1C();
    result = sub_22F0D132C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F03EF00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = (v6 + v7) & ~v7;
  v9 = v8 + v6;
  if (v5)
  {
    v10 = v8 + v6;
  }

  else
  {
    v10 = v9 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v12 = v10 + ((v9 + v7) & ~v7);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_14:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v5 + (v12 | v16) + 1;
}

char *sub_22F03F064(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = (v8 + v7) & ~v7;
  if (!v6)
  {
    ++v8;
  }

  v10 = v8 + v9;
  v11 = a3 >= v6;
  v12 = a3 - v6;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v17 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v6 < a2)
  {
    v14 = ~v6 + a2;
    if (v10 < 4)
    {
      v16 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v19 = v14 & ~(-1 << (8 * v10));
        v20 = result;
        bzero(result, v10);
        result = v20;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_41:
              if (v13 == 2)
              {
                *&result[v10] = v16;
              }

              else
              {
                *&result[v10] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v10);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v13)
    {
      result[v10] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v10] = 0;
  }

  else if (v13)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v21 = *(v5 + 56);

  return v21();
}

uint64_t sub_22F03F290(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  *(v4 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v5 = type metadata accessor for ResolvedFamily(0);
  *(v4 + 120) = v5;
  *(v4 + 128) = *(v5 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for MessageDetails(0);
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F03F42C, 0, 0);
}

uint64_t sub_22F03F42C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_22F040184(*(v0 + 64), v2, type metadata accessor for MessageDetails);
  v3 = v2 + *(v1 + 36);
  v4 = *v3;
  *(v0 + 168) = *v3;
  v5 = *(v0 + 160);
  if (*(v3 + 8))
  {
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE1A0, 500);
    swift_willThrow();
    sub_22F01DF14(v5, type metadata accessor for MessageDetails);

    v6 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 216);
  v8 = v5 + *(*(v0 + 152) + 40);
  v9 = *v8;
  *(v0 + 176) = *v8;
  v10 = *(v8 + 8);
  *(v0 + 217) = v10;
  if (v7 == 1)
  {
    if (qword_27DAA0688 != -1)
    {
      swift_once();
    }

    *(v0 + 184) = qword_27DAA2360;

    return MEMORY[0x2822009F8](sub_22F03F70C);
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *(v12 + 16) = v4;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    v13 = swift_task_alloc();
    *(v0 + 200) = v13;
    *v13 = v0;
    v13[1] = sub_22F03FA70;
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);

    return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v12, v15);
  }
}

uint64_t sub_22F03F70C()
{
  sub_22F0B301C(*(v0 + 168), *(v0 + 104));

  return MEMORY[0x2822009F8](sub_22F03F77C, 0, 0);
}

uint64_t sub_22F03F77C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 128) + 48))(v1, 1, *(v0 + 120)) == 1)
  {
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v2 = *(v0 + 217);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 56);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v6 + 32) = v2;
    *(v6 + 40) = v5;
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_22F03FA70;
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);

    return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F040104, v6, v9);
  }

  else
  {
    sub_22F03DCB4(v1, *(v0 + 112));
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = *(v0 + 120);
    v14 = *(v0 + 112);
    v15 = *(v0 + 48);
    v16 = *(*(v0 + 128) + 56);
    v16(v14, 0, 1, v13);
    sub_22F03DCB4(v14, v12);
    v17 = *(v10 + 48);
    sub_22F003A4C(v11 + v17, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F040184(v12, v11 + v17, type metadata accessor for ResolvedFamily);
    v16(v11 + v17, 0, 1, v13);
    v18 = FAFamilyMember.displayNameWithFallback.getter();
    v20 = v19;
    sub_22F01DF14(v12, type metadata accessor for ResolvedFamily);

    *(v11 + 40) = v18;
    *(v11 + 48) = v20;
    sub_22F040184(v11, v15, type metadata accessor for MessageDetails);
    sub_22F01DF14(v11, type metadata accessor for MessageDetails);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_22F03FA70()
{

  return MEMORY[0x2822009F8](sub_22F03FB88, 0, 0);
}

uint64_t sub_22F03FB88()
{
  sub_22F040114(v0[11], v0[10]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[15];
    v2 = v0[16];
    v3 = v0[14];
    v4 = v0[10];
    v5 = v0[11];
    v6 = *v4;
    v0[5] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();
    sub_22F003A4C(v5, &qword_27DAA1760, &unk_22F0D77D8);

    (*(v2 + 56))(v3, 1, 1, v1);
    sub_22F003A4C(v3, &qword_27DAA1448, &unk_22F0D6640);
    v7 = v0[20];
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE1A0, 500);
    swift_willThrow();
    sub_22F01DF14(v7, type metadata accessor for MessageDetails);

    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  sub_22F03DCB4(v0[10], v0[17]);
  if (qword_27DAA0688 != -1)
  {
    swift_once();
  }

  v0[26] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F03FDE8);
}

uint64_t sub_22F03FDE8()
{
  v1 = [**(v0 + 136) dsid];
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = v1;
    v7 = [v1 integerValue];
    sub_22F040184(v2, v5, type metadata accessor for ResolvedFamily);
    (*(v3 + 56))(v5, 0, 1, v4);
    swift_beginAccess();
    sub_22F046214(v5, v7);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F03FF14, 0, 0);
}

uint64_t sub_22F03FF14()
{
  v1 = v0[17];
  v2 = v0[14];
  sub_22F003A4C(v0[11], &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F03DCB4(v1, v2);
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[14];
  v8 = v0[6];
  v9 = *(v0[16] + 56);
  v9(v7, 0, 1, v6);
  sub_22F03DCB4(v7, v5);
  v10 = *(v3 + 48);
  sub_22F003A4C(v4 + v10, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F040184(v5, v4 + v10, type metadata accessor for ResolvedFamily);
  v9(v4 + v10, 0, 1, v6);
  v11 = FAFamilyMember.displayNameWithFallback.getter();
  v13 = v12;
  sub_22F01DF14(v5, type metadata accessor for ResolvedFamily);

  *(v4 + 40) = v11;
  *(v4 + 48) = v13;
  sub_22F040184(v4, v8, type metadata accessor for MessageDetails);
  sub_22F01DF14(v4, type metadata accessor for MessageDetails);

  v14 = v0[1];

  return v14();
}

uint64_t sub_22F040114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F040184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F0401EC()
{
  v0 = sub_22F0D005C();
  __swift_allocate_value_buffer(v0, qword_27DAA1768);
  __swift_project_value_buffer(v0, qword_27DAA1768);
  return sub_22F0D003C();
}

uint64_t static QuickActionAppHandle.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static QuickActionAppHandle.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static QuickActionAppHandle.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v1 = sub_22F0D005C();
  __swift_project_value_buffer(v1, qword_27DAA1768);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F040498@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_22F040558(uint64_t a1)
{
  if (qword_27DAA04F8 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0D005C();
  v3 = __swift_project_value_buffer(v2, qword_27DAA1768);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_22F040654(void *a1, uint64_t *a2)
{
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F040744(void *a1, uint64_t *a2)
{
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

uint64_t sub_22F040824(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_22F036154(a1, &v10 - v7);
  sub_22F036154(v8, v6);
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFE1C();
  sub_22F009070(v8);

  sub_22F0D00CC();
  sub_22F0D00CC();
  return sub_22F0D00CC();
}

void QuickActionAppHandle.displayRepresentation.getter(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1538, &unk_22F0D6FA0);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1540, &qword_22F0DB420);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = v31 - v5;
  v6 = sub_22F0D036C();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D0C6C();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  sub_22F0CFE0C();
  v12 = v40;
  if (v40)
  {
    v31[1] = v10;
    v13 = v39;
    sub_22F0CFE0C();
    if (v40)
    {
      if (v11)
      {
        v31[0] = v39;
        v14 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        sub_22F0CFF1C();
        v15 = sub_22F041518(v13, v12, 0);
        if (v15)
        {
          v26 = v15;
          sub_22F0D0C5C();
          sub_22F0D0C4C();
          sub_22F0D0C3C();

          sub_22F0D0C4C();
          sub_22F0D035C();
          sub_22F0D0C5C();
          sub_22F0D0C4C();
          v27 = [v26 localizedName];
          sub_22F0D0CAC();

          sub_22F0D0C3C();

          sub_22F0D0C4C();
          v28 = v35;
          sub_22F0D035C();
          (*(v32 + 56))(v28, 0, 1, v33);
          v29 = v36;
          sub_22F0CFF5C();
          v30 = sub_22F0CFF6C();
          (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
          sub_22F0CFF7C();

          return;
        }
      }
    }
  }

  if (qword_280CBEC38 != -1)
  {
    swift_once();
  }

  v16 = sub_22F0D0A1C();
  __swift_project_value_buffer(v16, qword_280CBEC40);
  sub_22F0CFF1C();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  sub_22F0CFFAC();
  v17 = sub_22F0D09FC();
  v18 = sub_22F0D123C();

  sub_22F0D00CC();
  sub_22F0D00CC();
  sub_22F0D00CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136315138;
    sub_22F0CFE0C();
    if (v40)
    {
      v21 = v39;
    }

    else
    {
      v21 = 0;
    }

    if (v40)
    {
      v22 = v40;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_22F00A560(v21, v22, &v38);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_22EFE1000, v17, v18, "Error finding LSApplicationRecord for bundleID: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x2318FE8B0](v20, -1, -1);
    MEMORY[0x2318FE8B0](v19, -1, -1);
  }

  sub_22F0CFE0C();
  sub_22F0CFE0C();
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  sub_22F0D035C();
  sub_22F0D0C5C();
  sub_22F0D0C4C();
  sub_22F0D0C3C();

  sub_22F0D0C4C();
  v24 = v35;
  sub_22F0D035C();
  (*(v32 + 56))(v24, 0, 1, v33);
  v25 = sub_22F0CFF6C();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  sub_22F0CFF7C();
}

uint64_t QuickActionAppHandle.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = sub_22F0D036C();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = a1[3];
  v21 = a1[2];
  *v22 = v11;
  *(&v22[1] + 2) = *(a1 + 58);
  v12 = a1[1];
  v19 = *a1;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1780, &qword_22F0D77E8);
  sub_22F0D034C();
  *a2 = sub_22F0CFE4C();
  sub_22F0D034C();
  a2[1] = sub_22F0CFE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1788, &qword_22F0D77F0);
  sub_22F0D034C();
  a2[2] = sub_22F0CFE3C();
  v17[0] = *&v22[1];
  sub_22F0CFF1C();
  sub_22F0CFE1C();
  v17[0] = __PAIR128__(v22[0], *(&v21 + 1));
  sub_22F0CFF1C();
  sub_22F0CFE1C();
  v17[2] = v21;
  v18[0] = *v22;
  *(v18 + 10) = *(&v22[1] + 2);
  v17[0] = v19;
  v17[1] = v20;
  QuickAction.url.getter(v9);
  sub_22F036154(v9, v7);
  sub_22F0CFE1C();
  sub_22F009070(v9);
  if (v19 <= 1u)
  {
    v13 = 0xEA00000000006C6CLL;
    if (v19)
    {
      v15 = 0x2E6F65646976;
    }

    else
    {
      v15 = 0x2E656E6F6870;
    }

    v14 = v15 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  else if (v19 == 2)
  {
    v13 = 0xEC0000006C6C6966;
    v14 = 0x2E6567617373656DLL;
  }

  else if (v19 == 3)
  {
    v13 = 0xED00006C6C69662ELL;
    v14 = 0x65706F6C65766E65;
  }

  else
  {
    v13 = 0x800000022F0DDD40;
    v14 = 0xD000000000000012;
  }

  result = sub_22F0415F4(&v19);
  a2[3] = v14;
  a2[4] = v13;
  return result;
}

uint64_t QuickActionAppHandle.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22F0D036C();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1780, &qword_22F0D77E8);
  sub_22F0D034C();
  *a1 = sub_22F0CFE4C();
  sub_22F0D034C();
  a1[1] = sub_22F0CFE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1788, &qword_22F0D77F0);
  sub_22F0D034C();
  result = sub_22F0CFE3C();
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = result;
  return result;
}

uint64_t sub_22F0413E4(uint64_t a1)
{
  v2 = sub_22F041B30();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_22F041430(uint64_t a1)
{
  sub_22F041B30();

  return sub_22F0CFD4C();
}

uint64_t sub_22F04147C(uint64_t a1)
{
  v2 = sub_22F04164C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_22F0414CC(uint64_t a1)
{
  v2 = sub_22F0418FC();

  return MEMORY[0x28210C4B8](a1, v2);
}

id sub_22F041518(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22F0D0C7C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_22F0D033C();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_22F04164C()
{
  result = qword_280CBDE00;
  if (!qword_280CBDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE00);
  }

  return result;
}

unint64_t sub_22F0416A4()
{
  result = qword_280CBDE08;
  if (!qword_280CBDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE08);
  }

  return result;
}

unint64_t sub_22F0416FC()
{
  result = qword_280CBDDF0;
  if (!qword_280CBDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDF0);
  }

  return result;
}

unint64_t sub_22F041754()
{
  result = qword_280CBDDC8;
  if (!qword_280CBDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDC8);
  }

  return result;
}

unint64_t sub_22F0417FC()
{
  result = qword_280CBDDE8;
  if (!qword_280CBDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDE8);
  }

  return result;
}

unint64_t sub_22F041850()
{
  result = qword_280CBDDE0;
  if (!qword_280CBDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDE0);
  }

  return result;
}

unint64_t sub_22F0418A4()
{
  result = qword_280CBDDF8;
  if (!qword_280CBDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDF8);
  }

  return result;
}

unint64_t sub_22F0418FC()
{
  result = qword_280CBDDD8;
  if (!qword_280CBDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDD8);
  }

  return result;
}

unint64_t sub_22F041954()
{
  result = qword_27DAA1798;
  if (!qword_27DAA1798)
  {
    sub_22F0D05EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1798);
  }

  return result;
}

uint64_t sub_22F0419F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F041A3C()
{
  result = qword_280CBDDD0;
  if (!qword_280CBDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDDD0);
  }

  return result;
}

uint64_t sub_22F041A90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F041AD8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22F041B30()
{
  result = qword_280CBDE10;
  if (!qword_280CBDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBDE10);
  }

  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v3;
  v15[1] = v2;
  sub_22F0D01CC();
  sub_22F00901C();
  v8 = sub_22F0D136C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v8 = 0;
    v10 = 0;
  }

  v12 = v8;
  v13 = v10;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::Bool __swiftcall String.isSuitableForVerticalLayout(maxCount:)(Swift::Int maxCount)
{
  v1 = sub_22F0D0C7C();
  IsSuitableForVerticalLayout = CTStringIsSuitableForVerticalLayout();

  return IsSuitableForVerticalLayout;
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_22F0D031C();

  return v4;
}

uint64_t String.urlSafeString.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = a1;
  v14[3] = a2;
  sub_22F00901C();
  v8 = sub_22F0D139C();
  if (v9)
  {
    v14[0] = v8;
    v14[1] = v9;
    sub_22F0D01BC();
    v10 = sub_22F0D138C();
    v12 = v11;
    (*(v5 + 8))(v7, v4);

    if (v12)
    {
      return v10;
    }
  }

  sub_22F0CFF1C();
  return a1;
}

Swift::String __swiftcall String.trim()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_22F0D01DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v3;
  v14[1] = v2;
  sub_22F0D01CC();
  sub_22F00901C();
  v8 = sub_22F0D136C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t String.splitWith(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23[0] = a1;
  v23[1] = a2;
  v22[2] = v23;
  sub_22F0CFF1C();
  v7 = sub_22F042274(0x7FFFFFFFFFFFFFFFLL, 1, sub_22F04268C, v22, a3, a4, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23[0] = MEMORY[0x277D84F90];
    sub_22EFFC4E8(0, v8, 0);
    v9 = v23[0];
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      sub_22F0CFF1C();
      v15 = MEMORY[0x2318FD270](v11, v12, v13, v14);
      v17 = v16;

      v23[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22EFFC4E8((v18 > 1), v19 + 1, 1);
        v9 = v23[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t String.rebrand.getter(uint64_t a1, unint64_t a2)
{
  v9 = &type metadata for AppleAccountFeatures;
  v10 = sub_22F0426E4();
  v4 = sub_22F0D070C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v7);
  if ((v4 & 1) != 0 && (v7 = a1, v8 = a2, sub_22F00901C(), (sub_22F0D13BC() & 1) == 0))
  {
    v7 = 0x444E41524245525FLL;
    v8 = 0xE800000000000000;
    sub_22F0CFF1C();
    v6 = sub_22F0D0E3C();
    sub_22F0D0D7C();
    return v6;
  }

  else
  {
    sub_22F0CFF1C();
  }

  return a1;
}

unint64_t sub_22F042274@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22F0D0E4C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22F03CFCC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22F03CFCC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22F0D0E2C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22F0D0D6C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22F0D0D6C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22F0D0E4C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22F03CFCC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22F0D0E4C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22F03CFCC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22F03CFCC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22F0D0D6C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F042634(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C() & 1;
  }
}

uint64_t sub_22F04268C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F0D188C() & 1;
  }
}

unint64_t sub_22F0426E4()
{
  result = qword_27DAA17B0;
  if (!qword_27DAA17B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17B0);
  }

  return result;
}

uint64_t sub_22F042738(void *a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280CBDB90 != -1)
  {
    swift_once();
  }

  v4 = sub_22F0D0A1C();
  __swift_project_value_buffer(v4, qword_280CBDB98);
  Logger.ifError(_:message:)(a1, 0x7265207865646E49, 0xEF4025203A726F72);
  return a2(a1);
}

uint64_t sub_22F04280C(void *a1, void **a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v83 = a4;
  v84 = a5;
  v75 = a3;
  v7 = sub_22F0D05BC();
  v85 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v82 = a2[1];
  v11 = a2[2];
  v12 = [a1 idsHandle];
  v13 = sub_22F0D0CAC();
  v76 = v14;
  v77 = v13;

  sub_22F0D05AC();
  v15 = [a1 locationChangeType];
  v16 = [a1 motionActivityState];
  v17 = [a1 latitude];
  v18 = [a1 longitude];
  type metadata accessor for FindMyItem(0);
  v19 = swift_allocObject();
  v78 = v15;
  *(v19 + OBJC_IVAR____TtC6People10FindMyItem_type) = v15;
  v20 = (v19 + OBJC_IVAR____TtC6People10FindMyItem_contactPerson);
  v21 = v10;
  v22 = v82;
  *v20 = v10;
  v20[1] = v22;
  v20[2] = v11;
  *(v19 + OBJC_IVAR____TtC6People10FindMyItem_motionState) = v16;
  *(v19 + OBJC_IVAR____TtC6People10FindMyItem_latitude) = v17;
  *(v19 + OBJC_IVAR____TtC6People10FindMyItem_longitude) = v18;
  type metadata accessor for DaemonConnection();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = v21;
  sub_22F0CFF1C();
  v79 = v17;
  v80 = v18;
  v26 = [v24 bundleForClass_];
  v27 = sub_22F0D031C();
  v29 = v28;

  v30 = v85;
  v31 = *(v85 + 16);
  v81 = v9;
  v31(v19 + OBJC_IVAR____TtC6People13IndexableItem_eventDate, v9, v7);
  v32 = *(v30 + 56);
  v82 = v7;
  v32(v19 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, 1, 1, v7);
  v33 = OBJC_IVAR____TtC6People13IndexableItem_keywordStrings;
  v34 = MEMORY[0x277D84F90];
  *(v19 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings) = MEMORY[0x277D84F90];
  v35 = (v19 + OBJC_IVAR____TtC6People13IndexableItem_title);
  *v35 = v27;
  v35[1] = v29;
  v36 = (v19 + OBJC_IVAR____TtC6People13IndexableItem_description);
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  *(v19 + 16) = v21;
  v37 = (v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
  v38 = v76;
  *v37 = v77;
  v37[1] = v38;
  swift_beginAccess();
  *(v19 + v33) = v34;
  v39 = v25;
  sub_22F0CFFAC();
  v40 = sub_22F03C784(0, 1, 1, v34);
  *(v19 + v33) = v40;
  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_22F03C784((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v43 = &v40[16 * v42];
  *(v43 + 4) = 0x6E6F697461636F6CLL;
  *(v43 + 5) = 0xE800000000000000;
  *(v19 + v33) = v40;
  swift_endAccess();
  sub_22F0D00CC();
  if (v78 == 2)
  {
    swift_beginAccess();
    v44 = *(v19 + v33);
    sub_22F0CFFAC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + v33) = v44;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_22F03C784(0, *(v44 + 2) + 1, 1, v44);
      *(v19 + v33) = v44;
    }

    v48 = v84;
    v59 = *(v44 + 2);
    v58 = *(v44 + 3);
    if (v59 >= v58 >> 1)
    {
      v44 = sub_22F03C784((v58 > 1), v59 + 1, 1, v44);
    }

    *(v44 + 2) = v59 + 1;
    v60 = &v44[16 * v59];
    *(v60 + 4) = 0xD000000000000011;
    *(v60 + 5) = 0x800000022F0DE260;
LABEL_24:
    *(v19 + v33) = v44;
    swift_endAccess();

    (*(v85 + 8))(v81, v82);
    sub_22F0D00CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F0D6C00;
    *(inited + 32) = v19;
    swift_retain_n();
    v62 = sub_22F0220A0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v62 >> 62)
    {
      if (sub_22F0D143C() == 1)
      {
        goto LABEL_26;
      }
    }

    else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_26:
      if (*(v19 + OBJC_IVAR____TtC6People10FindMyItem_type) != 2)
      {
        sub_22F0D00CC();
        v71 = v75[3];
        v72 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v71);
        v73 = swift_allocObject();
        *(v73 + 16) = v83;
        *(v73 + 24) = v48;
        v74 = *(v72 + 24);
        sub_22F0CFFAC();
        v74(v62, 0xD000000000000017, 0x800000022F0DCC10, sub_22F0431D0, v73, v71, v72);
        sub_22F0D00CC();
        sub_22F0D00CC();
      }

      v63 = v75[3];
      v64 = v75[4];
      __swift_project_boxed_opaque_existential_1(v75, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_22F0D2BF0;
      v67 = *(v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
      v66 = *(v19 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
      sub_22F0CFF1C();
      sub_22F0D00CC();
      *(v65 + 32) = v67;
      *(v65 + 40) = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = v83;
      *(v68 + 24) = v48;
      v69 = *(v64 + 32);
      sub_22F0CFFAC();
      v69(v65, 0xD000000000000017, 0x800000022F0DCC10, sub_22F0431EC, v68, v63, v64);

      sub_22F0D00CC();
      return sub_22F0D00CC();
    }

    sub_22F0D00CC();
    if (qword_27DAA05A0 != -1)
    {
      swift_once();
    }

    v83(qword_27DAACED0);
    return sub_22F0D00CC();
  }

  if (v78 == 1)
  {
    swift_beginAccess();
    v44 = *(v19 + v33);
    sub_22F0CFFAC();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + v33) = v44;
    if ((v51 & 1) == 0)
    {
      v44 = sub_22F03C784(0, *(v44 + 2) + 1, 1, v44);
      *(v19 + v33) = v44;
    }

    v48 = v84;
    v53 = *(v44 + 2);
    v52 = *(v44 + 3);
    if (v53 >= v52 >> 1)
    {
      v44 = sub_22F03C784((v52 > 1), v53 + 1, 1, v44);
    }

    *(v44 + 2) = v53 + 1;
    v49 = &v44[16 * v53];
    v50 = 0xEE00646572616853;
    goto LABEL_16;
  }

  if (!v78)
  {
    swift_beginAccess();
    v44 = *(v19 + v33);
    sub_22F0CFFAC();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + v33) = v44;
    if ((v45 & 1) == 0)
    {
      v44 = sub_22F03C784(0, *(v44 + 2) + 1, 1, v44);
      *(v19 + v33) = v44;
    }

    v47 = *(v44 + 2);
    v46 = *(v44 + 3);
    if (v47 >= v46 >> 1)
    {
      v44 = sub_22F03C784((v46 > 1), v47 + 1, 1, v44);
    }

    v48 = v84;
    *(v44 + 2) = v47 + 1;
    v49 = &v44[16 * v47];
    v50 = 0xEF64657461647055;
LABEL_16:
    *(v49 + 4) = 0x6E6F697461636F6CLL;
    *(v49 + 5) = v50;
    *(v19 + v33) = v44;
    v55 = *(v44 + 2);
    v54 = *(v44 + 3);
    if (v55 >= v54 >> 1)
    {
      v44 = sub_22F03C784((v54 > 1), v55 + 1, 1, v44);
    }

    *(v44 + 2) = v55 + 1;
    v56 = &v44[16 * v55];
    *(v56 + 4) = 0x794D646E6946;
    *(v56 + 5) = 0xE600000000000000;
    goto LABEL_24;
  }

  (*(v85 + 8))(v81, v82);
  sub_22F0D00CC();

  if (qword_27DAA0598 != -1)
  {
    swift_once();
  }

  return (v83)(qword_27DAACEC8);
}

void sub_22F0431F0(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v5 = sub_22F0D0A1C();
    __swift_project_value_buffer(v5, qword_280CBDB98);
    v6 = a1;
    v7 = sub_22F0D09FC();
    v8 = sub_22F0D123C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_22F0D192C();
      v13 = sub_22F00A560(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22EFE1000, v7, v8, "Index error %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318FE8B0](v10, -1, -1);
      MEMORY[0x2318FE8B0](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    v15 = sub_22F0454B0();
    a2(v15, 0);
  }
}

void sub_22F0433F4(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    v5 = sub_22F0454B0();
    a2(v5, 0);
  }
}

uint64_t sub_22F0434F8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v129 = a2;
  v130 = a4;
  v128 = a3;
  v5 = sub_22F0D01DC();
  v122 = *(v5 - 8);
  v123 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = &v106[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v106[-v9];
  v11 = sub_22F0D05BC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v106[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v106[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v106[-v19];
  [a1 eventTime];
  sub_22F0D04BC();
  v21 = [a1 requestID];
  v22 = sub_22F0D0CAC();
  v126 = v23;
  v127 = v22;

  v24 = *(v12 + 16);
  v132 = v18;
  v124 = v24;
  v125 = v12 + 16;
  v24(v18, v20, v11);
  if (qword_27DAA0538 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_27DAACE80);
  v25 = [objc_opt_self() seconds];
  sub_22F0D019C();

  sub_22F0D018C();
  (*(v8 + 8))(v10, v7);
  sub_22F0D054C();
  v26 = [a1 thumbnailPath];
  v27 = sub_22F0D0CAC();
  v119 = v28;

  v29 = [a1 storeLink];
  v131 = v20;
  if (v29)
  {
    v30 = v29;
    v118 = sub_22F0D0CAC();
    v117 = v31;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  v32 = [a1 productType];
  sub_22F0D0CAC();

  v33 = String.trimToNil()();
  object = v33.value._object;

  if (v33.value._object)
  {
    countAndFlagsBits = v33.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (!v33.value._object)
  {
    object = 0xE000000000000000;
  }

  sub_22F01B924(0, &unk_27DAA23F0, 0x277CF1910);
  static BMAskToBuyEvent.productType(withCode:)(countAndFlagsBits, object, v137);

  v133 = v15;
  v120 = v27;
  v110 = v12;
  if (v137[0] <= 1u)
  {
    if (v137[0])
    {
      v114 = 0xE600000000000000;
      v36 = 0x73656E755469;
    }

    else
    {
      v114 = 0xE500000000000000;
      v36 = 0x736B6F6F62;
    }
  }

  else if (v137[0] == 2)
  {
    v114 = 0xE800000000000000;
    v36 = 0x65726F7453707061;
  }

  else if (v137[0] == 3)
  {
    v114 = 0xED0000736E6F6974;
    v36 = 0x7069726373627573;
  }

  else
  {
    v114 = 0xE700000000000000;
    v36 = 0x5654656C707061;
  }

  v113 = v36;
  v37 = [a1 itemTitle];
  v116 = sub_22F0D0CAC();
  v115 = v38;

  v39 = [a1 status];
  v40 = [a1 itemLocalizedPrice];
  v109 = sub_22F0D0CAC();
  v108 = v41;

  v42 = [a1 itemDescription];
  v112 = sub_22F0D0CAC();
  v111 = v43;

  v44 = [a1 itemStarRating];
  v45 = [a1 itemAgeRating];
  v46 = sub_22F0D0CAC();
  v48 = v47;

  v49 = [a1 productType];
  sub_22F0D0CAC();

  v50 = String.trimToNil()();

  if (v50.value._object)
  {
    v51 = v50.value._countAndFlagsBits;
  }

  else
  {
    v51 = 0;
  }

  if (v50.value._object)
  {
    v52 = v50.value._object;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  static BMAskToBuyEvent.productType(withCode:)(v51, v52, &v136);

  v107 = v136;
  type metadata accessor for AskToBuyItem(0);
  v53 = swift_allocObject();
  v54 = v39;
  v55 = v39 == 1;
  v56 = v128;
  if (!v55 && !v128)
  {
    if (qword_280CBDB90 != -1)
    {
      swift_once();
    }

    v57 = sub_22F0D0A1C();
    __swift_project_value_buffer(v57, qword_280CBDB98);
    v58 = sub_22F0D09FC();
    v59 = sub_22F0D122C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22EFE1000, v58, v59, "AskToBuy responding user missing!", v60, 2u);
      MEMORY[0x2318FE8B0](v60, -1, -1);
    }
  }

  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_starRating) = v44;
  v134 = v46;
  v135 = v48;
  v61 = v44;
  v62 = v121;
  sub_22F0D01CC();
  sub_22F00901C();
  v63 = sub_22F0D136C();
  v65 = v64;
  (*(v122 + 8))(v62, v123);
  v66 = v133;
  if (v63 == 48 && v65 == 0xE100000000000000)
  {
  }

  else
  {
    v67 = sub_22F0D188C();

    if ((v67 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v46 = 0;
  v48 = 0xE000000000000000;
LABEL_38:
  v68 = (v53 + OBJC_IVAR____TtC6People12AskToBuyItem_ageRating);
  *v68 = v46;
  v68[1] = v48;
  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_status) = v54;
  v69 = (v53 + OBJC_IVAR____TtC6People12AskToBuyItem_thumbnailPath);
  v70 = v119;
  *v69 = v120;
  v69[1] = v70;
  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember) = v56;
  v71 = v129;
  v72 = v130;
  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_familyMember) = v129;
  v73 = (v53 + OBJC_IVAR____TtC6People12AskToBuyItem_localizedPrice);
  v74 = v108;
  *v73 = v109;
  v73[1] = v74;
  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_requestApprovers) = v72;
  v75 = (v53 + OBJC_IVAR____TtC6People12AskToBuyItem_storeLink);
  v76 = v117;
  *v75 = v118;
  v75[1] = v76;
  v77 = (v53 + OBJC_IVAR____TtC6People12AskToBuyItem_productTypeCode);
  v78 = v114;
  *v77 = v113;
  v77[1] = v78;
  *(v53 + OBJC_IVAR____TtC6People12AskToBuyItem_mappedProductType) = v107;
  v79 = v56;
  v80 = v71;
  sub_22F0CFF1C();
  v81 = [v80 contactIncludingImage_];
  v82 = v132;
  v83 = v124;
  v124(v53 + OBJC_IVAR____TtC6People13IndexableItem_eventDate, v132, v11);
  v84 = OBJC_IVAR____TtC6People13IndexableItem_expirationDate;
  v83(v53 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate, v66, v11);
  v85 = v110;
  (*(v110 + 56))(v53 + v84, 0, 1, v11);
  v86 = OBJC_IVAR____TtC6People13IndexableItem_keywordStrings;
  v87 = MEMORY[0x277D84F90];
  *(v53 + OBJC_IVAR____TtC6People13IndexableItem_keywordStrings) = MEMORY[0x277D84F90];
  v88 = (v53 + OBJC_IVAR____TtC6People13IndexableItem_title);
  v89 = v115;
  *v88 = v116;
  v88[1] = v89;
  v90 = (v53 + OBJC_IVAR____TtC6People13IndexableItem_description);
  v91 = v111;
  *v90 = v112;
  v90[1] = v91;
  *(v53 + 16) = v81;
  v92 = (v53 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
  v93 = v126;
  *v92 = v127;
  v92[1] = v93;
  swift_beginAccess();
  sub_22F0CFFAC();
  v94 = sub_22F03C784(0, 1, 1, v87);
  v96 = *(v94 + 2);
  v95 = *(v94 + 3);
  if (v96 >= v95 >> 1)
  {
    v94 = sub_22F03C784((v95 > 1), v96 + 1, 1, v94);
  }

  *(v94 + 2) = v96 + 1;
  v97 = &v94[16 * v96];
  *(v97 + 4) = 0x74736575716572;
  *(v97 + 5) = 0xE700000000000000;
  *(v53 + v86) = v94;
  v99 = *(v94 + 2);
  v98 = *(v94 + 3);
  if (v99 >= v98 >> 1)
  {
    v94 = sub_22F03C784((v98 > 1), v99 + 1, 1, v94);
  }

  *(v94 + 2) = v99 + 1;
  v100 = &v94[16 * v99];
  *(v100 + 4) = 0x7975426F546B7341;
  *(v100 + 5) = 0xE800000000000000;
  *(v53 + v86) = v94;
  v102 = *(v94 + 2);
  v101 = *(v94 + 3);
  if (v102 >= v101 >> 1)
  {
    v94 = sub_22F03C784((v101 > 1), v102 + 1, 1, v94);
  }

  *(v94 + 2) = v102 + 1;
  v103 = &v94[16 * v102];
  *(v103 + 4) = 0x6573616863727550;
  *(v103 + 5) = 0xEF74736575716552;
  *(v53 + v86) = v94;
  swift_endAccess();

  v104 = *(v85 + 8);
  v104(v66, v11);
  v104(v82, v11);
  v104(v131, v11);
  sub_22F0D00CC();
  return v53;
}

uint64_t sub_22F0440B0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v149 = a5;
  v13 = sub_22F0D05BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F0434F8(a1, a2, a3, a4);
  if (v17)
  {
    v18 = v17;
    v147 = a1;
    v148 = v16;
    v19 = *(v17 + OBJC_IVAR____TtC6People12AskToBuyItem_status);
    if (v19 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F0D6C00;
      *(inited + 32) = v18;
      sub_22F0CFFAC();
      v21 = sub_22F0220A0(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v21 >> 62)
      {
        if (sub_22F0D143C() == 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_5:
        v22 = v149[3];
        v23 = v149[4];
        __swift_project_boxed_opaque_existential_1(v149, v22);
        v24 = v18;
        v25 = swift_allocObject();
        v25[2] = a6;
        v25[3] = a7;
        v25[4] = v24;
        v26 = *(v23 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v26(v21, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F84, v25, v22, v23);

        sub_22F0D00CC();
        return sub_22F0D00CC();
      }

      if (qword_27DAA05A0 != -1)
      {
        swift_once();
      }

      a6(qword_27DAACED0, 1);
      return sub_22F0D00CC();
    }

    v146 = v14;
    v28 = OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember;
    if (!*(v17 + OBJC_IVAR____TtC6People12AskToBuyItem_actionFamilyMember))
    {
      if (qword_280CBDB90 != -1)
      {
        swift_once();
      }

      v32 = sub_22F0D0A1C();
      __swift_project_value_buffer(v32, qword_280CBDB98);
      sub_22F0CFFAC();
      v33 = sub_22F0D09FC();
      v34 = sub_22F0D122C();
      sub_22F0D00CC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v152 = v36;
        *v35 = 136315138;
        v37 = v18 + OBJC_IVAR____TtC6People13IndexableItem_indexableID;
        v38 = v18;
        v39 = *(v18 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
        v40 = *(v37 + 8);
        sub_22F0CFF1C();
        v41 = sub_22F00A560(v39, v40, &v152);

        *(v35 + 4) = v41;
        v18 = v38;
        _os_log_impl(&dword_22EFE1000, v33, v34, "Deleting askToBuy %s - no actionFamilyMember!", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x2318FE8B0](v36, -1, -1);
        MEMORY[0x2318FE8B0](v35, -1, -1);
      }

      v42 = v149[4];
      v148 = v149[3];
      __swift_project_boxed_opaque_existential_1(v149, v148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_22F0D2BF0;
      v44 = (v18 + OBJC_IVAR____TtC6People13IndexableItem_indexableID);
      v45 = v18;
      v46 = *(v18 + OBJC_IVAR____TtC6People13IndexableItem_indexableID + 8);
      *(v43 + 32) = *v44;
      *(v43 + 40) = v46;
      v47 = swift_allocObject();
      v47[2] = a6;
      v47[3] = a7;
      v47[4] = v45;
      v48 = *(v42 + 32);
      sub_22F0CFFAC();
      sub_22F0CFFAC();
      sub_22F0CFF1C();
      v48(v43, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F64, v47, v148, v42);

      sub_22F0D00CC();

      return sub_22F0D00CC();
    }

    v145 = a6;
    v143 = a7;
    v29 = v13;
    if (v19 == 2)
    {
      v30 = 0xED00006465696E65;
      v31 = 0x4474736575716572;
    }

    else
    {
      if (v19 != 3)
      {
        v52 = MEMORY[0x277D84F98];
LABEL_24:
        [v147 eventTime];
        v55 = v148;
        sub_22F0D04BC();
        v56 = sub_22F0D0CAC();
        v58 = v57;
        v153 = v29;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v152);
        v60 = *(v146 + 16);
        v60(boxed_opaque_existential_1Tm, v55, v29);
        sub_22EFFFA24(&v152, v151);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v52;
        sub_22F018078(v151, v56, v58, isUniquelyReferenced_nonNull_native);

        v62 = v150;
        v63 = sub_22F0D0CAC();
        v65 = v64;
        v153 = v29;
        v66 = __swift_allocate_boxed_opaque_existential_1Tm(&v152);
        v144 = v29;
        v60(v66, v55, v29);
        sub_22EFFFA24(&v152, v151);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v62;
        sub_22F018078(v151, v63, v65, v67);

        v68 = v150;
        v69 = sub_22F0D0CAC();
        v71 = v70;
        v153 = MEMORY[0x277D849A8];
        LODWORD(v152) = v19;
        sub_22EFFFA24(&v152, v151);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v68;
        sub_22F018078(v151, v69, v71, v72);

        v73 = v150;
        v74 = *(v18 + v28);
        if (v74)
        {
          v75 = v74;
          v76 = [v75 dsid];
          if (v76)
          {
            v77 = v76;
            v78 = sub_22F0D0CAC();
            v80 = v79;
            v153 = sub_22F01B924(0, &qword_27DAA1850, 0x277CCABB0);
            *&v152 = v77;
            sub_22EFFFA24(&v152, v151);
            v81 = v77;
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v150 = v73;
            sub_22F018078(v151, v78, v80, v82);

            v73 = v150;
          }

          v83 = [v75 contactIncludingImage_];
          if (v83)
          {
            v84 = v83;
            v85 = [v83 identifier];
            v86 = sub_22F0D0CAC();
            v88 = v87;

            v153 = MEMORY[0x277D837D0];
            *&v152 = v86;
            *(&v152 + 1) = v88;
            sub_22EFFFA24(&v152, v151);
            v89 = swift_isUniquelyReferenced_nonNull_native();
            v150 = v73;
            sub_22F018078(v151, 0xD00000000000001DLL, 0x800000022F0DCF70, v89);
            v90 = v150;
            *&v142 = sub_22F0D0CAC();
            v92 = v91;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_22F0D2BF0;
            v94 = [v84 identifier];
            v95 = sub_22F0D0CAC();
            v97 = v96;

            *(v93 + 32) = v95;
            *(v93 + 40) = v97;
            v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
            *&v152 = v93;
            sub_22EFFFA24(&v152, v151);
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v150 = v90;
            sub_22F018078(v151, v142, v92, v98);

            v73 = v150;
          }

          v141 = sub_22F0D0CAC();
          v100 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
          v101 = swift_allocObject();
          v142 = xmmword_22F0D2BF0;
          *(v101 + 16) = xmmword_22F0D2BF0;
          v102 = [v75 fullName];
          if (v102)
          {
            v103 = v102;
            v104 = sub_22F0D0CAC();
            v106 = v105;
          }

          else
          {
            v104 = 0;
            v106 = 0xE000000000000000;
          }

          *(v101 + 32) = v104;
          *(v101 + 40) = v106;
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
          v153 = v107;
          *&v152 = v101;
          sub_22EFFFA24(&v152, v151);
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v150 = v73;
          sub_22F018078(v151, v141, v100, v108);

          v109 = v150;
          v110 = sub_22F0D0CAC();
          v112 = v111;
          v113 = swift_allocObject();
          *(v113 + 16) = v142;
          v114 = [v75 appleID];
          if (v114)
          {
            v115 = v114;
            v116 = sub_22F0D0CAC();
            v118 = v117;
          }

          else
          {
            v116 = 0;
            v118 = 0xE000000000000000;
          }

          *(v113 + 32) = v116;
          *(v113 + 40) = v118;
          v153 = v107;
          *&v152 = v113;
          sub_22EFFFA24(&v152, v151);
          v119 = swift_isUniquelyReferenced_nonNull_native();
          v150 = v109;
          sub_22F018078(v151, v110, v112, v119);

          v73 = v150;
        }

        v120 = *(v18 + 16);
        v121 = v147;
        sub_22F0CFFAC();
        if (v120)
        {
          v122 = [v120 identifier];
          sub_22F0D0CAC();
        }

        object = String.trimToNil()().value._object;
        sub_22F0D00CC();

        if (object)
        {
        }

        else
        {
          v124 = sub_22F0D0CAC();
          v126 = v125;
          v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA0DE0, &unk_22F0D4FB0);
          *&v152 = MEMORY[0x277D84F90];
          sub_22EFFFA24(&v152, v151);
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v150 = v73;
          sub_22F018078(v151, v124, v126, v127);

          v73 = v150;
        }

        v128 = [v121 requestID];
        v129 = sub_22F0D0CAC();
        v131 = v130;

        sub_22F022C68(v129, v131, 1, v73);
        v133 = v132;

        v134 = v149[4];
        v147 = v149[3];
        __swift_project_boxed_opaque_existential_1(v149, v147);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA18B0, &unk_22F0D7AC0);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_22F0D6C00;
        *(v135 + 32) = v133;
        v136 = swift_allocObject();
        v137 = v143;
        v136[2] = v145;
        v136[3] = v137;
        v136[4] = v18;
        v138 = *(v134 + 24);
        sub_22F0CFFAC();
        sub_22F0CFFAC();
        v139 = v133;
        v138(v135, 0xD000000000000020, 0x800000022F0DCBB0, sub_22F044F90, v136, v147, v134);

        sub_22F0D00CC();

        sub_22F0D00CC();
        return (*(v146 + 8))(v148, v144);
      }

      v30 = 0xEF6465766F727070;
      v31 = 0x4174736575716572;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_22F0D2BF0;
    *(v49 + 32) = v31;
    v50 = v49 + 32;
    *(v49 + 40) = v30;
    v51 = sub_22F05BB98(v49);
    swift_setDeallocating();
    sub_22F022C14(v50);
    v52 = MEMORY[0x277D84F98];
    if (v51)
    {
      v153 = sub_22F01B924(0, &qword_27DAA1508, 0x277CC3440);
      *&v152 = v51;
      sub_22EFFFA24(&v152, v151);
      v53 = v51;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v52;
      sub_22F018078(v151, 0xD00000000000001ELL, 0x800000022F0DCF50, v54);

      v52 = v150;
    }

    goto LABEL_24;
  }

  if (qword_27DAA05A0 != -1)
  {
    swift_once();
  }

  return (a6)(qword_27DAACED0, 1);
}

People::ContactFormatter __swiftcall ContactFormatter.init(style:fallback:)(People::ContactFormatter::Style style, Swift::String fallback)
{
  object = fallback._object;
  countAndFlagsBits = fallback._countAndFlagsBits;
  v5 = v2;
  v6 = *style;
  v7 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v8 = v7;
  if (v6)
  {
    v9 = 1000;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 setStyle_];
  *v5 = countAndFlagsBits;
  v5[1] = object;
  v5[2] = v8;
  result.formatter.super.super.isa = v12;
  result.fallback._object = v11;
  result.fallback._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall ContactFormatter.displayName(for:includePhone:)(CNContact a1, Swift::Bool includePhone)
{
  isa = a1.super.isa;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = [*(v2 + 16) stringFromContact_];
  if (v7)
  {
    v8 = v7;
    v5 = sub_22F0D0CAC();
    v6 = v9;

    goto LABEL_24;
  }

  v10 = [isa emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1480, &qword_22F0D7B10);
  v11 = sub_22F0D0F4C();

  if (v11 >> 62)
  {
    if (sub_22F0D143C())
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2318FDAB0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v18 = sub_22F0D143C();
      if (v18)
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 value];

  if (v14)
  {
    v5 = sub_22F0D0CAC();
    v6 = v15;

    goto LABEL_24;
  }

LABEL_12:
  if (!includePhone)
  {
LABEL_23:
    sub_22F0CFF1C();
    goto LABEL_24;
  }

  v16 = [isa phoneNumbers];
  isa = sub_22F0D0F4C();

  if (isa >> 62)
  {
    goto LABEL_21;
  }

  v18 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_15:
  if ((isa & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2318FDAB0](0, isa);
  }

  else
  {
    if (!*((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v19 = *(isa + 32);
  }

  v20 = v19;

  v21 = [v20 value];

  v22 = [v21 stringValue];
  v5 = sub_22F0D0CAC();
  v6 = v23;

LABEL_24:
  v18 = v5;
  v17 = v6;
LABEL_27:
  result._object = v17;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t ContactFormatter.Style.hashValue.getter()
{
  v1 = *v0;
  sub_22F0D199C();
  MEMORY[0x2318FDEE0](v1);
  return sub_22F0D19CC();
}

Swift::String __swiftcall ContactFormatter.displayName(for:)(CNContact a1)
{
  v3 = ContactFormatter.displayName(for:includePhone:)(a1, 1);
  object = v3._object;
  countAndFlagsBits = v3._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_22F045348()
{
  result = qword_27DAA17B8;
  if (!qword_27DAA17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17B8);
  }

  return result;
}

uint64_t sub_22F045408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F045450(uint64_t result, int a2, int a3)
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

char *sub_22F0454B0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6People12AskToBuyItem_familyMember) contactsIncludingImage_];
  sub_22F0459DC();
  v2 = sub_22F0D0F4C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_22F0D143C();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_22EFFC4E8(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2318FDAB0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = sub_22F0D0CAC();
      v12 = v11;

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22EFFC4E8((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F045658()
{
}

uint64_t sub_22F04571C()
{
  v1 = OBJC_IVAR____TtC6People13IndexableItem_eventDate;
  v2 = sub_22F0D05BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F01B96C(v0 + OBJC_IVAR____TtC6People13IndexableItem_expirationDate);

  return v0;
}

uint64_t sub_22F04589C()
{
  sub_22F04571C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AskToBuyItem(uint64_t a1)
{
  result = qword_27DAA17C0;
  if (!qword_27DAA17C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F0459DC()
{
  result = qword_280CBDC30;
  if (!qword_280CBDC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CBDC30);
  }

  return result;
}

uint64_t static PeopleSharedDirectory.groupContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_22F0D0C7C();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_22F0D03EC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_22F0D043C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t static PeopleSharedDirectory.cacheFolder(create:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA10F8, &qword_22F0D5320);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_22F0D043C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  static PeopleSharedDirectory.groupContainer.getter(v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22F009070(v9);
    v18 = 1;
  }

  else
  {
    sub_22F0D03BC();
    v23 = v14;
    v24 = v7;
    v19 = a1;
    v20 = a2;
    v21 = *(v11 + 8);
    v21(v9, v10);
    sub_22F0D03BC();
    v21(v16, v10);
    a2 = v20;
    a1 = v19;
    v14 = v23;
    v7 = v24;
    v18 = 0;
  }

  result = (*(v11 + 56))(a2, v18, 1, v10);
  if (a1)
  {
    sub_22F036154(a2, v7);
    if (v17(v7, 1, v10) == 1)
    {
      return sub_22F009070(v7);
    }

    else
    {
      (*(v11 + 32))(v14, v7, v10);
      sub_22F046064();
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t static PeopleSharedDirectory.tempFolder(hint:create:)@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v5 = sub_22F0D05EC();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F0D043C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_22F0D03EC();
  if (!a2)
  {
    sub_22F0CFD4C();
    sub_22F0D05CC();
    (*(v20 + 8))(v7, v5);
  }

  sub_22F0CFF1C();
  sub_22F0D03BC();

  (*(v9 + 8))(v12, v8);
  if (v21)
  {
    sub_22F046064();
  }

  v17 = v22;
  (*(v9 + 32))(v22, v14, v8);
  return (*(v9 + 56))(v17, 0, 1, v8);
}

void sub_22F046064()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_22F0D03AC();
  v9[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v9];

  v3 = v9[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v9[0];
    v6 = sub_22F0D033C();

    swift_willThrow();
    if (qword_280CBEC38 != -1)
    {
      swift_once();
    }

    v7 = sub_22F0D0A1C();
    __swift_project_value_buffer(v7, qword_280CBEC40);
    v8 = v6;
    Logger.ifError(_:message:)(v6, 0xD000000000000026, 0x800000022F0DE350);
  }
}

uint64_t sub_22F046214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ResolvedFamily(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA1448, &unk_22F0D6640);
    v13 = sub_22EFFDADC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F06026C();
        v17 = v21;
      }

      sub_22F04A06C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for ResolvedFamily);
      sub_22F05F284(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22F003A4C(v8, &qword_27DAA1448, &unk_22F0D6640);
  }

  else
  {
    sub_22F04A06C(a1, v12, type metadata accessor for ResolvedFamily);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22F017F24(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_22F046468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1440, &unk_22F0D65F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_22F0D05BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA1440, &unk_22F0D65F0);
    sub_22F0178D0(a2, a3, v9);

    return sub_22F003A4C(v9, &qword_27DAA1440, &unk_22F0D65F0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22F0181C8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_22F046640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA17E8, &qword_22F0D7CC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PeopleLocation(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_22F003A4C(a1, &qword_27DAA17E8, &qword_22F0D7CC8);
    sub_22F017A40(a2, a3, v9);

    return sub_22F003A4C(v9, &qword_27DAA17E8, &qword_22F0D7CC8);
  }

  else
  {
    sub_22F04A06C(a1, v12, type metadata accessor for PeopleLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22F018348(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t static SpotlightHelper.fillinDetailsFromSpotlight(withDetails:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v2[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1760, &unk_22F0D77D8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for ResolvedFamily(0);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1448, &unk_22F0D6640);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for MessageDetails(0);
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F046A14, 0, 0);
}

uint64_t sub_22F046A14()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  sub_22F040184(*(v0 + 168), v1, type metadata accessor for MessageDetails);
  v6 = *(v2 + 48);
  *(v0 + 480) = v6;
  sub_22F049FF4(v1 + v6, v3, &qword_27DAA1448, &unk_22F0D6640);
  v7 = *(v5 + 48);
  *(v0 + 344) = v7;
  *(v0 + 352) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v1) = v7(v3, 1, v4);
  sub_22F003A4C(v3, &qword_27DAA1448, &unk_22F0D6640);
  if (v1 != 1)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v12, &qword_27DAA1448, &unk_22F0D6640);
    if (v11(v12, 1, v13) == 1)
    {
      sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
      swift_willThrow();
      goto LABEL_27;
    }

    sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
    v14 = String.trimToNil()();
    *(v0 + 392) = v14;
    if (v14.value._object)
    {
      if (*(*(v0 + 336) + 16) > 1u)
      {
        if (*(*(v0 + 336) + 16) == 2)
        {
          v15 = ".askToBuyRequest";
          if (qword_27DAA0508 != -1)
          {
            swift_once();
          }

          v16 = &qword_27DAA17D8;
LABEL_22:
          v20 = *v16;
          *(v0 + 408) = v15;
          *(v0 + 416) = v20;
          sub_22F0CFF1C();
          v21 = swift_task_alloc();
          *(v0 + 424) = v21;
          *v21 = v0;
          v21[1] = sub_22F048290;

          JUMPOUT(0x22F02D6A0);
        }
      }

      else if (*(*(v0 + 336) + 16))
      {
        v15 = "d";
        if (qword_27DAA0510 != -1)
        {
          swift_once();
        }

        v16 = &qword_27DAA17E0;
        goto LABEL_22;
      }

      v17 = *(v0 + 248);

      v19 = 0xD000000000000013;
      v18 = 0x800000022F0DE3E0;
    }

    else
    {
      v17 = *(v0 + 248);
      v18 = 0x800000022F0DE3B0;
      v19 = 0xD000000000000020;
    }

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v19, v18, 500);
    swift_willThrow();
    sub_22F01DF14(v17, type metadata accessor for ResolvedFamily);
LABEL_27:
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v22 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 336) + *(*(v0 + 328) + 36);
  *(v0 + 360) = *v8;
  *(v0 + 484) = *(v8 + 8);
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v9 = qword_280CBEC30;
  *(v0 + 40) = type metadata accessor for ContactFetcher();
  *(v0 + 48) = &protocol witness table for ContactFetcher;
  *(v0 + 16) = v9;
  v10 = qword_27DAA0688;
  sub_22F0CFFAC();
  if (v10 != -1)
  {
    swift_once();
  }

  *(v0 + 368) = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F046FB4);
}

uint64_t sub_22F046FB4()
{
  if (*(v0 + 484))
  {
    v1 = -1;
  }

  else
  {
    v1 = *(v0 + 360);
  }

  sub_22F0B301C(v1, *(v0 + 304));

  return MEMORY[0x2822009F8](sub_22F04702C, 0, 0);
}

uint64_t sub_22F04702C()
{
  v1 = *(v0 + 304);
  if ((*(v0 + 344))(v1, 1, *(v0 + 216)) == 1)
  {
    if (*(v0 + 484))
    {
      v2 = -1;
    }

    else
    {
      v2 = *(v0 + 360);
    }

    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    *(v3 + 32) = 1;
    *(v3 + 40) = v0 + 16;
    v4 = swift_task_alloc();
    *(v0 + 384) = v4;
    *v4 = v0;
    v4[1] = sub_22F04761C;
    v5 = *(v0 + 208);
    v6 = *(v0 + 176);

    return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F049FF0, v3, v6);
  }

  sub_22F04A06C(v1, *(v0 + 312), type metadata accessor for ResolvedFamily);
  v7 = *(v0 + 480);
  v8 = *(v0 + 336);
  v9 = *(v0 + 312);
  v10 = *(v0 + 264);
  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  sub_22F04A06C(v9, v10, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v8 + v7, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v10, v8 + v7, type metadata accessor for ResolvedFamily);
  v13(v8 + v7, 0, 1, v11);
  v14 = *(v0 + 344);
  v15 = *(v0 + 288);
  v16 = *(v0 + 216);
  sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v15, &qword_27DAA1448, &unk_22F0D6640);
  if (v14(v15, 1, v16) == 1)
  {
    sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
    swift_willThrow();
LABEL_26:
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v28 = *(v0 + 8);

    return v28();
  }

  sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
  v17 = String.trimToNil()();
  *(v0 + 392) = v17;
  if (!v17.value._object)
  {
    v23 = *(v0 + 248);
    v24 = 0x800000022F0DE3B0;
    v25 = 0xD000000000000020;
LABEL_25:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v25, v24, 500);
    swift_willThrow();
    sub_22F01DF14(v23, type metadata accessor for ResolvedFamily);
    goto LABEL_26;
  }

  if (*(*(v0 + 336) + 16) > 1u)
  {
    if (*(*(v0 + 336) + 16) == 2)
    {
      countAndFlagsBits = v17.value._countAndFlagsBits;
      object = v17.value._object;
      v21 = ".askToBuyRequest";
      if (qword_27DAA0508 != -1)
      {
        swift_once();
      }

      v20 = 0xD000000000000022;
      v22 = &qword_27DAA17D8;
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (!*(*(v0 + 336) + 16))
  {
LABEL_24:
    v23 = *(v0 + 248);

    v25 = 0xD000000000000013;
    v24 = 0x800000022F0DE3E0;
    goto LABEL_25;
  }

  countAndFlagsBits = v17.value._countAndFlagsBits;
  object = v17.value._object;
  v20 = 0xD000000000000020;
  v21 = "d";
  if (qword_27DAA0510 != -1)
  {
    swift_once();
  }

  v22 = &qword_27DAA17E0;
LABEL_21:
  v26 = *v22;
  *(v0 + 408) = v21;
  *(v0 + 416) = v26;
  sub_22F0CFF1C();
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_22F048290;

  return sub_22F02D6A0(countAndFlagsBits, object, v20, v21 | 0x8000000000000000, v26);
}

uint64_t sub_22F04761C()
{

  return MEMORY[0x2822009F8](sub_22F047734, 0, 0);
}

uint64_t sub_22F047734()
{
  sub_22F049FF4(*(v0 + 208), *(v0 + 200), &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 312);
    v2 = *(v0 + 216);
    v3 = *(v0 + 224);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *v4;
    *(v0 + 144) = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v5, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    (*(v3 + 56))(v1, 1, 1, v2);
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v7 = *(v0 + 344);
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v8, &qword_27DAA1448, &unk_22F0D6640);
    if (v7(v8, 1, v9) == 1)
    {
      sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
      swift_willThrow();
      goto LABEL_23;
    }

    sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
    v11 = String.trimToNil()();
    *(v0 + 392) = v11;
    if (v11.value._object)
    {
      if (*(*(v0 + 336) + 16) > 1u)
      {
        if (*(*(v0 + 336) + 16) == 2)
        {
          v12 = ".askToBuyRequest";
          if (qword_27DAA0508 != -1)
          {
            swift_once();
          }

          v13 = &qword_27DAA17D8;
LABEL_18:
          v17 = *v13;
          *(v0 + 408) = v12;
          *(v0 + 416) = v17;
          sub_22F0CFF1C();
          v18 = swift_task_alloc();
          *(v0 + 424) = v18;
          *v18 = v0;
          v18[1] = sub_22F048290;

          JUMPOUT(0x22F02D6A0);
        }
      }

      else if (*(*(v0 + 336) + 16))
      {
        v12 = "d";
        if (qword_27DAA0510 != -1)
        {
          swift_once();
        }

        v13 = &qword_27DAA17E0;
        goto LABEL_18;
      }

      v14 = *(v0 + 248);

      v16 = 0xD000000000000013;
      v15 = 0x800000022F0DE3E0;
    }

    else
    {
      v14 = *(v0 + 248);
      v15 = 0x800000022F0DE3B0;
      v16 = 0xD000000000000020;
    }

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v16, v15, 500);
    swift_willThrow();
    sub_22F01DF14(v14, type metadata accessor for ResolvedFamily);
LABEL_23:
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v19 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 368);
  sub_22F04A06C(*(v0 + 200), *(v0 + 256), type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F047C80, v10, 0);
}

uint64_t sub_22F047C80()
{
  v1 = [**(v0 + 256) dsid];
  if (v1)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 256);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    v6 = v1;
    v7 = [v1 integerValue];
    sub_22F040184(v3, v2, type metadata accessor for ResolvedFamily);
    (*(v5 + 56))(v2, 0, 1, v4);
    swift_beginAccess();
    sub_22F046214(v2, v7);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F047DAC, 0, 0);
}

uint64_t sub_22F047DAC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  sub_22F003A4C(*(v0 + 208), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F04A06C(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 480);
  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v9 = *(v8 + 56);
  v9(v5, 0, 1, v7);
  sub_22F04A06C(v5, v6, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v6, v4 + v3, type metadata accessor for ResolvedFamily);
  v9(v4 + v3, 0, 1, v7);
  v10 = *(v0 + 344);
  v11 = *(v0 + 288);
  v12 = *(v0 + 216);
  sub_22F049FF4(*(v0 + 336) + *(v0 + 480), v11, &qword_27DAA1448, &unk_22F0D6640);
  if (v10(v11, 1, v12) == 1)
  {
    sub_22F003A4C(*(v0 + 288), &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000020, 0x800000022F0DE380, 500);
    swift_willThrow();
LABEL_19:
    sub_22F01DF14(*(v0 + 336), type metadata accessor for MessageDetails);

    v25 = *(v0 + 8);

    return v25();
  }

  sub_22F04A06C(*(v0 + 288), *(v0 + 248), type metadata accessor for ResolvedFamily);
  v13 = String.trimToNil()();
  *(v0 + 392) = v13;
  if (!v13.value._object)
  {
    v19 = *(v0 + 248);
    v20 = 0x800000022F0DE3B0;
    v21 = 0xD000000000000020;
LABEL_18:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v21, v20, 500);
    swift_willThrow();
    sub_22F01DF14(v19, type metadata accessor for ResolvedFamily);
    goto LABEL_19;
  }

  if (*(*(v0 + 336) + 16) > 1u)
  {
    if (*(*(v0 + 336) + 16) == 2)
    {
      countAndFlagsBits = v13.value._countAndFlagsBits;
      object = v13.value._object;
      v17 = ".askToBuyRequest";
      if (qword_27DAA0508 != -1)
      {
        swift_once();
      }

      v16 = 0xD000000000000022;
      v18 = &qword_27DAA17D8;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!*(*(v0 + 336) + 16))
  {
LABEL_17:
    v19 = *(v0 + 248);

    v21 = 0xD000000000000013;
    v20 = 0x800000022F0DE3E0;
    goto LABEL_18;
  }

  countAndFlagsBits = v13.value._countAndFlagsBits;
  object = v13.value._object;
  v16 = 0xD000000000000020;
  v17 = "d";
  if (qword_27DAA0510 != -1)
  {
    swift_once();
  }

  v18 = &qword_27DAA17E0;
LABEL_14:
  v22 = *v18;
  *(v0 + 408) = v17;
  *(v0 + 416) = v22;
  sub_22F0CFF1C();
  v23 = swift_task_alloc();
  *(v0 + 424) = v23;
  *v23 = v0;
  v23[1] = sub_22F048290;

  return sub_22F02D6A0(countAndFlagsBits, object, v16, v17 | 0x8000000000000000, v22);
}

uint64_t sub_22F048290(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return MEMORY[0x2822009F8](sub_22F0483CC, 0, 0);
}

uint64_t sub_22F0483CC()
{
  v1 = v0[54];
  v2 = v0[50];
  if (!*(v1 + 16))
  {
    v19 = v0[49];
    v20 = v0[31];

    sub_22F0D152C();

    v85 = 0xD000000000000027;
    v86 = 0x800000022F0DE500;
    v21 = v19;
    v22 = v2;
LABEL_19:
    MEMORY[0x2318FD2C0](v21, v22);

    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v85, v86, 500);

    swift_willThrow();
LABEL_20:
    sub_22F01DF14(v20, type metadata accessor for ResolvedFamily);
    sub_22F01DF14(v0[42], type metadata accessor for MessageDetails);

    v23 = v0[1];
    goto LABEL_21;
  }

  v3 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {

LABEL_18:

    v20 = v0[31];
    v85 = 0x69662074276E6143;
    v86 = 0xEB0000000020646ELL;
    v21 = sub_22F0D0CAC();
    goto LABEL_19;
  }

  sub_22EFFDA80(v3, v4);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v8 = v0[42];
  v0[55] = [v7 integerValue];
  if (*(v8 + 16) <= 1u)
  {
    if (*(v8 + 16))
    {
      v9 = sub_22F0D0CAC();
      if (*(v1 + 16))
      {
        sub_22EFFDA80(v9, v10);
        v12 = v11;

        if (v12)
        {
          swift_unknownObjectRetain();
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = [v13 intValue];
            switch(v14)
            {
              case 3u:
                v37 = v0[41];
                v15 = v0[42];
                swift_unknownObjectRelease();
                v17 = *(v37 + 44);
                v18 = 2;
                break;
              case 2u:
                v36 = v0[41];
                v15 = v0[42];
                swift_unknownObjectRelease();
                v17 = *(v36 + 44);
                v18 = 3;
                break;
              case 1u:
                v16 = v0[41];
                v15 = v0[42];
                swift_unknownObjectRelease();
                v17 = *(v16 + 44);
                v18 = 1;
                break;
              default:
                v20 = v0[31];

                _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DE420, 500);
                swift_willThrow();
                swift_unknownObjectRelease();
                goto LABEL_69;
            }

            *(v15 + v17) = v18;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
      }

      if (*(v0[42] + *(v0[41] + 44)) == 1)
      {

LABEL_50:
        swift_unknownObjectRelease();

        v39 = v0[31];
LABEL_51:
        sub_22F01DF14(v39, type metadata accessor for ResolvedFamily);
        v40 = v0[42];
        sub_22F040184(v40, v0[20], type metadata accessor for MessageDetails);
        sub_22F01DF14(v40, type metadata accessor for MessageDetails);

        v23 = v0[1];
LABEL_21:

        __asm { BRAA            X1, X16 }
      }

      v38 = sub_22F0D188C();

      if (v38)
      {
        goto LABEL_50;
      }

      v41 = sub_22F0D0CAC();
      if (*(v1 + 16))
      {
        sub_22EFFDA80(v41, v42);
        v44 = v43;

        if (v44)
        {
          swift_unknownObjectRetain();

          objc_opt_self();
          v45 = swift_dynamicCastObjCClass();
          if (v45)
          {
            v46 = v45;
            v47 = ResolvedFamily.approverByDSID(with:)([v45 integerValue]);
            if (v47)
            {

              v48 = [v46 integerValue];
              goto LABEL_57;
            }

            v20 = v0[31];
            v63 = "No approver found";
            v62 = 0xD000000000000013;
            goto LABEL_94;
          }

          swift_unknownObjectRelease();
          goto LABEL_66;
        }
      }

      else
      {
      }

LABEL_66:
      v20 = v0[31];
      v35 = "Invalid approval time";
      v34 = 0xD000000000000011;
      goto LABEL_67;
    }

LABEL_32:
    v20 = v0[31];

    v33 = 0x800000022F0DD7C0;
    v34 = 0xD000000000000014;
LABEL_68:
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v34, v33, 500);
    swift_willThrow();
LABEL_69:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  if (*(v8 + 16) != 2)
  {
    goto LABEL_32;
  }

  v24 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {

LABEL_38:

    v20 = v0[31];
    v35 = "Invalid eventSource";
    v34 = 0xD000000000000010;
LABEL_67:
    v33 = v35 | 0x8000000000000000;
    goto LABEL_68;
  }

  sub_22EFFDA80(v24, v25);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v29 = [v28 intValue];
  switch(v29)
  {
    case 3u:
      v54 = v0;
      v56 = v0 + 41;
      v55 = v0[41];
      *(v56[1] + *(v55 + 44)) = 2;
      v82 = v54;
      if (*(v1 + 16))
      {
        sub_22EFFDA80(0xD000000000000022, 0x800000022F0DCFB0);
        if (v57)
        {
          swift_unknownObjectRetain();
          objc_opt_self();
          v58 = swift_dynamicCastObjCClass();
          if (v58)
          {
            v59 = v82[42];
            v60 = [v58 intValue];
            *(v59 + *(v55 + 44)) = 2;
            if (v60 != 3 && v60 != 2)
            {
              v0 = v82;
              if (v60 != 1)
              {
                v20 = v82[31];

                _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000015, 0x800000022F0DE4A0, 500);
                swift_willThrow();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_20;
              }
            }

            v83 = v82[41];
            v84 = v82[42];
            type metadata accessor for DaemonConnection();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v76 = [objc_opt_self() bundleForClass_];
            v77 = sub_22F0D031C();
            v79 = v78;

            swift_unknownObjectRelease();
            v80 = (v84 + *(v83 + 68));

            *v80 = v77;
            v80[1] = v79;
            v0 = v82;
            goto LABEL_42;
          }

          v0 = v82;
          swift_unknownObjectRelease();
        }

        else
        {
          v0 = v82;
        }
      }

      else
      {
        v0 = v54;
      }

      v20 = v0[31];
      v63 = "Family update failed";
      v62 = 0xD000000000000017;
LABEL_94:
      v61 = v63 | 0x8000000000000000;
      goto LABEL_95;
    case 2u:
      v30 = v0[42];
      v31 = *(v0[41] + 44);
      v32 = 3;
      break;
    case 1u:
      v30 = v0[42];
      v31 = *(v0[41] + 44);
      v32 = 1;
      break;
    default:
      v20 = v0[31];

      v61 = 0x800000022F0DE420;
      v62 = 0xD000000000000014;
LABEL_95:
      _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v62, v61, 500);
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_20;
  }

  *(v30 + v31) = v32;
LABEL_42:
  if (*(v0[42] + *(v0[41] + 44)) == 1)
  {

LABEL_83:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v65 = v0[31];

    v39 = v65;
    goto LABEL_51;
  }

  v64 = sub_22F0D188C();

  if (v64)
  {
    goto LABEL_83;
  }

  v66 = sub_22F0D0CAC();
  if (!*(v1 + 16))
  {
    v74 = v0[31];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v39 = v74;
    goto LABEL_51;
  }

  sub_22EFFDA80(v66, v67);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    v71 = v0[31];

LABEL_97:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v39 = v71;
    goto LABEL_51;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  v71 = v0[31];
  if (!v70)
  {
    swift_unknownObjectRelease();
    goto LABEL_97;
  }

  v72 = v70;
  v73 = ResolvedFamily.approverByDSID(with:)([v70 integerValue]);
  if (!v73)
  {
    v20 = v0[31];
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000013, 0x800000022F0DE440, 500);
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v48 = [v72 integerValue];
  swift_unknownObjectRelease();
LABEL_57:
  v0[56] = v48;
  v49 = v0[41];
  v50 = v0[42];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v51 = v50 + *(v49 + 40);
  *v51 = v48;
  *(v51 + 8) = 0;
  if (qword_280CBEC28 != -1)
  {
    swift_once();
  }

  v52 = qword_280CBEC30;
  v0[10] = type metadata accessor for ContactFetcher();
  v0[11] = &protocol witness table for ContactFetcher;
  v0[7] = v52;
  v53 = qword_27DAA0688;
  sub_22F0CFFAC();
  if (v53 != -1)
  {
    swift_once();
  }

  v0[57] = qword_27DAA2360;

  return MEMORY[0x2822009F8](sub_22F0492A0);
}

uint64_t sub_22F0492A0()
{
  sub_22F0B301C(*(v0 + 440), *(v0 + 272));

  return MEMORY[0x2822009F8](sub_22F049310, 0, 0);
}

uint64_t sub_22F049310()
{
  v1 = *(v0 + 272);
  if ((*(v0 + 344))(v1, 1, *(v0 + 216)) == 1)
  {
    v3 = *(v0 + 440);
    v2 = *(v0 + 448);
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    v4 = swift_task_alloc();
    *(v0 + 464) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    *(v4 + 32) = 0;
    *(v4 + 40) = v0 + 56;
    v5 = swift_task_alloc();
    *(v0 + 472) = v5;
    *v5 = v0;
    v5[1] = sub_22F049664;
    v6 = *(v0 + 192);
    v7 = *(v0 + 176);

    return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000043, 0x800000022F0DE1C0, sub_22F04A0D4, v4, v7);
  }

  else
  {
    sub_22F04A06C(v1, *(v0 + 280), type metadata accessor for ResolvedFamily);
    v8 = *(v0 + 480);
    v9 = *(v0 + 336);
    v10 = *(v0 + 280);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    sub_22F01DF14(v11, type metadata accessor for ResolvedFamily);
    v15 = *(v14 + 56);
    v15(v10, 0, 1, v13);
    sub_22F04A06C(v10, v12, type metadata accessor for ResolvedFamily);
    sub_22F003A4C(v9 + v8, &qword_27DAA1448, &unk_22F0D6640);
    sub_22F04A06C(v12, v9 + v8, type metadata accessor for ResolvedFamily);
    v15(v9 + v8, 0, 1, v13);
    v16 = *(v0 + 336);
    sub_22F040184(v16, *(v0 + 160), type metadata accessor for MessageDetails);
    sub_22F01DF14(v16, type metadata accessor for MessageDetails);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22F049664()
{

  return MEMORY[0x2822009F8](sub_22F04977C, 0, 0);
}

uint64_t sub_22F04977C()
{
  sub_22F049FF4(v0[24], v0[23], &qword_27DAA1760, &unk_22F0D77D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[35];
    v2 = v0[31];
    v3 = v0[27];
    v4 = v0[28];
    v5 = v0[23];
    v6 = v0[24];
    v7 = *v5;
    v0[19] = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0870, &qword_22F0D2CB0);
    swift_willThrowTypedImpl();

    sub_22F003A4C(v6, &qword_27DAA1760, &unk_22F0D77D8);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    (*(v4 + 56))(v1, 1, 1, v3);
    sub_22F003A4C(v1, &qword_27DAA1448, &unk_22F0D6640);
    _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000014, 0x800000022F0DE460, 500);
    swift_willThrow();
    sub_22F01DF14(v2, type metadata accessor for ResolvedFamily);
    sub_22F01DF14(v0[42], type metadata accessor for MessageDetails);

    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v9 = v0[57];
  sub_22F04A06C(v0[23], v0[29], type metadata accessor for ResolvedFamily);

  return MEMORY[0x2822009F8](sub_22F049A58, v9, 0);
}

uint64_t sub_22F049A58()
{
  v1 = [**(v0 + 232) dsid];
  if (v1)
  {
    v2 = *(v0 + 296);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = v1;
    v7 = [v1 integerValue];
    sub_22F040184(v3, v2, type metadata accessor for ResolvedFamily);
    (*(v4 + 56))(v2, 0, 1, v5);
    swift_beginAccess();
    sub_22F046214(v2, v7);
    swift_endAccess();
  }

  return MEMORY[0x2822009F8](sub_22F049B84, 0, 0);
}

uint64_t sub_22F049B84()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 232);
  sub_22F003A4C(*(v0 + 192), &qword_27DAA1760, &unk_22F0D77D8);
  sub_22F04A06C(v2, v1, type metadata accessor for ResolvedFamily);
  v3 = *(v0 + 480);
  v4 = *(v0 + 336);
  v5 = *(v0 + 280);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v9 = *(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_22F01DF14(v6, type metadata accessor for ResolvedFamily);
  v10 = *(v9 + 56);
  v10(v5, 0, 1, v8);
  sub_22F04A06C(v5, v7, type metadata accessor for ResolvedFamily);
  sub_22F003A4C(v4 + v3, &qword_27DAA1448, &unk_22F0D6640);
  sub_22F04A06C(v7, v4 + v3, type metadata accessor for ResolvedFamily);
  v10(v4 + v3, 0, 1, v8);
  v11 = *(v0 + 336);
  sub_22F040184(v11, *(v0 + 160), type metadata accessor for MessageDetails);
  sub_22F01DF14(v11, type metadata accessor for MessageDetails);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22F049DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D6710;
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v1;
  result = sub_22F0D0CAC();
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_27DAA17D0 = v0;
  return result;
}

uint64_t sub_22F049E5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D6710;
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v1;
  *(v0 + 48) = 0xD000000000000022;
  *(v0 + 56) = 0x800000022F0DCFB0;
  if (qword_27DAA0500 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0CFF1C();
  result = sub_22F007248(v2);
  qword_27DAA17D8 = v0;
  return result;
}

uint64_t sub_22F049F34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA0DD0, &qword_22F0D4FA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F0D2BF0;
  *(v0 + 32) = sub_22F0D0CAC();
  *(v0 + 40) = v1;
  if (qword_27DAA0500 != -1)
  {
    swift_once();
  }

  v2 = sub_22F0CFF1C();
  result = sub_22F007248(v2);
  qword_27DAA17E0 = v0;
  return result;
}

uint64_t sub_22F049FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22F04A06C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F04A0D8()
{
  sub_22F0D08BC();
  swift_allocObject();
  sub_22F0D08AC();
  sub_22F0D089C();
  swift_allocObject();
  sub_22F0D088C();
  type metadata accessor for DaemonConnection();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = type metadata accessor for PeopleXPCConnectionFactory();
  v2 = swift_allocObject();
  v0[8] = v1;
  v0[9] = &off_2843CCEB0;
  v0[5] = v2;
  sub_22F0D090C();
  swift_allocObject();
  sub_22F04A28C();
  result = sub_22F0D08FC();
  qword_27DAA17F0 = result;
  return result;
}

uint64_t static DaemonMessageSender.shared.getter()
{
  if (qword_27DAA0518 != -1)
  {
    swift_once();
  }

  return sub_22F0CFFAC();
}

unint64_t sub_22F04A28C()
{
  result = qword_27DAA17F8;
  if (!qword_27DAA17F8)
  {
    type metadata accessor for DaemonConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA17F8);
  }

  return result;
}

id ContactPerson.contact.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ContactPerson.idsHandle.getter()
{
  v1 = *(v0 + 8);
  sub_22F0CFF1C();
  return v1;
}

uint64_t ContactPerson.init(contact:idsHandle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_22F04A348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F04A390(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22F04A3E0()
{
  sub_22F0D152C();

  v0 = sub_22F0D183C();
  MEMORY[0x2318FD2C0](v0);

  MEMORY[0x2318FD2C0](0x73656372756F7320, 0xE900000000000029);
  return 0x28206E6F6D656164;
}

uint64_t DaemonStatusFetcher.__allocating_init(statusTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22F04A4D8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_22F04A4F8, 0, 0);
}

uint64_t sub_22F04A4F8()
{
  v1 = v0[15];
  v2 = *(v0[16] + 16);
  v0[17] = v2;
  v3 = qword_27DAA0518;
  sub_22F0CFF1C();
  sub_22F0CFF1C();
  if (v3 != -1)
  {
    swift_once();
    v1 = v0[15];
  }

  v0[12] = v1;
  v0[13] = v2;
  v7 = (*MEMORY[0x277CE4658] + MEMORY[0x277CE4658]);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_22F04AA48();
  *v4 = v0;
  v4[1] = sub_22F04A624;

  return v7(v0 + 14, v0 + 12, &type metadata for FetchContactsStatusMessage, v5);
}

uint64_t sub_22F04A624()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_22F04A9D8;
  }

  else
  {

    v2 = sub_22F04A74C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_22F04A74C()
{
  v1 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA08B0, &qword_22F0D2CE0);
  result = sub_22F0D16FC();
  v3 = result;
  v4 = 0;
  v5 = *(v1 + 64);
  v27 = v1 + 64;
  v28 = result;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v29 = v1;
  v30 = result + 8;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(v1 + 48) + 16 * v13);
      v33 = *v14;
      v15 = *(*(v1 + 56) + 8 * v13);
      v16 = *(v15 + 16);
      if (v16)
      {
        v32 = v8;
        v34 = MEMORY[0x277D84F90];
        v31 = v14[1];
        sub_22F0CFF1C();
        sub_22F0CFF1C();
        v17 = v15;
        sub_22EFFC538(0, v16, 0);
        v18 = v34;
        v19 = v17 + 32;
        do
        {
          sub_22EFFFBA4(v19, v0 + 56);
          sub_22EFE6B9C((v0 + 56), v0 + 16);
          v21 = *(v34 + 16);
          v20 = *(v34 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_22EFFC538((v20 > 1), v21 + 1, 1);
          }

          *(v34 + 16) = v21 + 1;
          sub_22EFE6B9C((v0 + 16), v34 + 40 * v21 + 32);
          v19 += 40;
          --v16;
        }

        while (v16);

        v3 = v28;
        v1 = v29;
        result = v31;
        v8 = v32;
      }

      else
      {
        result = sub_22F0CFF1C();
        v18 = MEMORY[0x277D84F90];
      }

      *(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 16 * v13);
      *v22 = v33;
      v22[1] = result;
      *(v3[7] + 8 * v13) = v18;
      v23 = v3[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v3[2] = v25;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = *(v27 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v26 = *(v0 + 8);

    return v26(v3);
  }

  return result;
}

uint64_t sub_22F04A9D8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22F04AA48()
{
  result = qword_27DAA1800;
  if (!qword_27DAA1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAA1800);
  }

  return result;
}

uint64_t DaemonStatusFetcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F04AB18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22F015708;

  return sub_22F04A4D8(a1);
}

uint64_t sub_22F04ABB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DaemonStatusFetcher();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for DaemonStatusFetcher;
  *a2 = v5;

  return sub_22F0CFF1C();
}

uint64_t dispatch thunk of DaemonStatusFetcher.fetchStatus(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 104) + **(*v1 + 104));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22F015A70;

  return v6(a1);
}

uint64_t static AskToBuyBuilder.createFromAPRequestHandler(withDetails:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22F04AE58, 0, 0);
}

uint64_t sub_22F04AE58()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  *v3 = v0;
  v3[1] = sub_22F04AF60;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000028, 0x800000022F0DD4E0, sub_22F01DF0C, v2, v4);
}

uint64_t sub_22F04AF60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_22F04B074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  type metadata accessor for MessageDetails(0);
  v8 = swift_allocBox();
  sub_22F040184(a2, v9, type metadata accessor for MessageDetails);
  v10 = objc_opt_self();
  sub_22F0CFF1C();
  v11 = sub_22F0D0C7C();

  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  (*(v5 + 32))(v13 + v12, v7, v4);
  aBlock[4] = sub_22F04CE24;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F04CEB4;
  aBlock[3] = &block_descriptor_5;
  v14 = _Block_copy(aBlock);
  sub_22F0CFFAC();
  sub_22F0D00CC();
  [v10 getRequestWithIdentifier:v11 completion:v14];
  _Block_release(v14);
  sub_22F0D00CC();
}

void sub_22F04B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v152 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAA11D0, &qword_22F0D5D88);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v136 - v8;
  v153 = type metadata accessor for MessageDetails(0);
  v151 = *(v153 - 1);
  MEMORY[0x28223BE20](v153);
  v144 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedFamily(0);
  v142 = *(v11 - 8);
  v143 = v11;
  MEMORY[0x28223BE20](v11);
  v141 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAA1170, &unk_22F0D5A60);
  v146 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v136 - v14;
  v16 = sub_22F0D05BC();
  v147 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v136 - v21;
  MEMORY[0x28223BE20](v20);
  v148 = &v136 - v23;
  v145 = a3;
  v149 = swift_projectBox();
  if (!a1)
  {
    v55 = v9;
    if (a2)
    {
      swift_getErrorValue();
      v56 = sub_22F0D192C();
      v58 = v57;
    }

    else
    {
      v58 = 0xED0000726F727245;
      v56 = 0x206E776F6E6B6E55;
    }

    v40 = v153;
    v59 = v149;
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_22F0D152C();

    v162[0] = 0xD000000000000017;
    v162[1] = 0x800000022F0DE5C0;
    swift_beginAccess();
    v60 = *v59;
    v61 = v59[1];
    sub_22F0CFF1C();
    MEMORY[0x2318FD2C0](v60, v61);

    MEMORY[0x2318FD2C0](0x203A656863616320, 0xE800000000000000);
    MEMORY[0x2318FD2C0](v56, v58);

    v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v162[0], v162[1], 500);

    swift_willThrow();
    v9 = v55;
    goto LABEL_33;
  }

  v158 = 0x737574617473;
  v159 = 0xE600000000000000;
  sub_22F0D149C();
  if (*(a1 + 16) && (v150 = a1, v24 = sub_22EFFDA98(&v160), (v25 & 1) != 0))
  {
    sub_22F003598(*(v150 + 56) + 32 * v24, v162);
    sub_22F003484(&v160);
    sub_22F04CF78();
    if (swift_dynamicCast())
    {
      v139 = v16;
      v140 = v9;
      v26 = v158;
      v27 = [v158 integerValue];

      v28 = 0x20301u >> (8 * (v27 + 1));
      if (v27 + 1 >= 3)
      {
        v28 = 5;
      }

      v138 = v28;
      type metadata accessor for DaemonConnection();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v136 = objc_opt_self();
      v137 = ObjCClassFromMetadata;
      v30 = [v136 bundleForClass_];
      v31 = sub_22F0D031C();
      v33 = v32;

      v34 = v149;
      swift_beginAccess();
      *(v34 + 24) = v31;
      *(v34 + 32) = v33;
      v35 = v34;

      v157[3] = 0xD000000000000013;
      v157[4] = 0x800000022F0DE600;
      sub_22F0D149C();
      if (*(v150 + 16) && (v36 = sub_22EFFDA98(&v160), (v37 & 1) != 0))
      {
        sub_22F003598(*(v150 + 56) + 32 * v36, v162);
        sub_22F003484(&v160);
        if (swift_dynamicCast())
        {
          v38 = v148;
          sub_22F0D04BC();
          if (qword_280CBE790 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v13, qword_280CBE798);
          v39 = [objc_opt_self() seconds];
          sub_22F0D019C();

          sub_22F0D018C();
          (*(v146 + 8))(v15, v13);
          sub_22F0D054C();
          swift_beginAccess();
          v40 = v153;
          v41 = v147;
          (*(v147 + 40))(v35 + v153[8], v22, v139);
          strcpy(v157, "requesterDSID");
          HIWORD(v157[1]) = -4864;
          sub_22F0D149C();
          if (*(v150 + 16) && (v42 = sub_22EFFDA98(&v160), (v43 & 1) != 0))
          {
            sub_22F003598(*(v150 + 56) + 32 * v42, v162);
            sub_22F003484(&v160);
            if (swift_dynamicCast())
            {
              v44 = sub_22F0B6FEC(v157[0], v157[1]);
              v46 = v45;

              v9 = v140;
              if ((v46 & 1) == 0)
              {
                swift_beginAccess();
                v47 = v35 + v40[9];
                *v47 = v44;
                *(v47 + 8) = 0;
                if (v138 == 3)
                {
                  swift_beginAccess();
                  v66 = v40[11];
                  v67 = 3;
                }

                else
                {
                  v48 = v139;
                  if (v138 == 2)
                  {
                    swift_beginAccess();
                    v66 = v40[11];
                    v67 = 2;
                  }

                  else
                  {
                    if (v138 == 1)
                    {
                      swift_beginAccess();
                      *(v35 + v40[11]) = 1;
                      strcpy(v162, "productURL");
                      BYTE3(v162[1]) = 0;
                      HIDWORD(v162[1]) = -369098752;
                      sub_22F0D149C();
                      if (*(v150 + 16) && (v49 = sub_22EFFDA98(&v160), (v50 & 1) != 0))
                      {
                        sub_22F003598(*(v150 + 56) + 32 * v49, v162);
                        sub_22F003484(&v160);
                        v51 = swift_dynamicCast();
                        if (v51)
                        {
                          v52 = v155;
                        }

                        else
                        {
                          v52 = 0;
                        }

                        if (v51)
                        {
                          v53 = v156;
                        }

                        else
                        {
                          v53 = 0;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v160);
                        v52 = 0;
                        v53 = 0;
                      }

                      swift_beginAccess();
                      v74 = (v35 + v40[20]);
                      *v74 = v52;
                      v74[1] = v53;

                      strcpy(v162, "productType");
                      HIDWORD(v162[1]) = -352321536;
                      sub_22F0D149C();
                      if (*(v150 + 16) && (v75 = sub_22EFFDA98(&v160), (v76 & 1) != 0))
                      {
                        sub_22F003598(*(v150 + 56) + 32 * v75, v162);
                        sub_22F003484(&v160);
                        v77 = swift_dynamicCast();
                        if (v77)
                        {
                          v78 = v155;
                        }

                        else
                        {
                          v78 = 0;
                        }

                        if (v77)
                        {
                          v79 = v156;
                        }

                        else
                        {
                          v79 = 0;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v160);
                        v78 = 0;
                        v79 = 0;
                      }

                      swift_beginAccess();
                      v80 = (v35 + v40[21]);
                      *v80 = v78;
                      v80[1] = v79;

                      strcpy(v162, "thumbnailURL");
                      BYTE5(v162[1]) = 0;
                      HIWORD(v162[1]) = -5120;
                      sub_22F0D149C();
                      if (*(v150 + 16) && (v81 = sub_22EFFDA98(&v160), (v82 & 1) != 0))
                      {
                        sub_22F003598(*(v150 + 56) + 32 * v81, v162);
                        sub_22F003484(&v160);
                        if (swift_dynamicCast())
                        {
                          v84 = v155;
                          v83 = v156;
LABEL_69:
                          swift_beginAccess();
                          v85 = (v35 + v40[13]);
                          *v85 = v84;
                          v85[1] = v83;
                          sub_22F0CFF1C();

                          object = String.trimToNil()().value._object;

                          if (!object)
                          {
                            v160 = 0;
                            v161 = 0xE000000000000000;
                            sub_22F0D152C();

                            v160 = 0xD00000000000001FLL;
                            v161 = 0x800000022F0DE680;
                            v90 = sub_22F0D0B0C();
                            MEMORY[0x2318FD2C0](v90);

                            v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v160, v161, 500);

                            swift_willThrow();
                            (*(v147 + 8))(v148, v48);
                            goto LABEL_33;
                          }

                          strcpy(v162, "requestString");
                          HIWORD(v162[1]) = -4864;
                          sub_22F0D149C();
                          if (*(v150 + 16) && (v87 = sub_22EFFDA98(&v160), (v88 & 1) != 0))
                          {
                            sub_22F003598(*(v150 + 56) + 32 * v87, v162);
                            sub_22F003484(&v160);
                            swift_dynamicCast();
                            v9 = v140;
                            v40 = v153;
                            v35 = v149;
                          }

                          else
                          {
                            sub_22F003484(&v160);
                          }

                          v112 = String.trimToNil()().value._object;

                          if (!v112)
                          {
                            v160 = 0;
                            v161 = 0xE000000000000000;
                            sub_22F0D152C();

                            v160 = 0xD00000000000002BLL;
                            v161 = 0x800000022F0DE6A0;
                            v126 = sub_22F0D0B0C();
                            MEMORY[0x2318FD2C0](v126);

                            v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v160, v161, 500);

                            swift_willThrow();
                            (*(v147 + 8))(v148, v139);
                            goto LABEL_33;
                          }

                          swift_beginAccess();
                          *(v35 + v40[15]) = String.trimToNil()();
                          swift_endAccess();

                          v162[0] = 0x637365446D657469;
                          v162[1] = 0xEF6E6F6974706972;
                          v113 = MEMORY[0x277D837D0];
                          sub_22F0D149C();
                          if (*(v150 + 16) && (v114 = sub_22EFFDA98(&v160), (v115 & 1) != 0))
                          {
                            sub_22F003598(*(v150 + 56) + 32 * v114, v162);
                            sub_22F003484(&v160);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_22F003484(&v160);
                          }

                          v116 = String.trimToNil()();

                          if (v116.value._object)
                          {
                            v117 = [v136 bundleForClass_];
                            sub_22F0D031C();

                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA07B0, &qword_22F0D2C58);
                            v118 = swift_allocObject();
                            *(v118 + 16) = xmmword_22F0D6710;
                            v119 = v149;
                            swift_beginAccess();
                            v120 = *(v119 + 40);
                            v121 = *(v119 + 48);
                            *(v118 + 56) = v113;
                            v122 = sub_22F03DB30();
                            *(v118 + 32) = v120;
                            *(v118 + 40) = v121;
                            *(v118 + 96) = v113;
                            *(v118 + 104) = v122;
                            *(v118 + 64) = v122;
                            *(v118 + 72) = v116;
                            sub_22F0CFF1C();
                            v123 = sub_22F0D0CCC();
                            v125 = v124;
                          }

                          else
                          {
                            v125 = 0xE300000000000000;
                            v123 = 6235171;
                          }

                          v127 = v149;
                          swift_beginAccess();
                          v128 = (v127 + v153[19]);
                          *v128 = v123;
                          v128[1] = v125;

                          strcpy(v162, "requestSummary");
                          HIBYTE(v162[1]) = -18;
                          sub_22F0D149C();
                          v129 = v150;
                          if (*(v150 + 16) && (v130 = sub_22EFFDA98(&v160), (v131 & 1) != 0))
                          {
                            sub_22F003598(*(v129 + 56) + 32 * v130, v162);
                            sub_22F003484(&v160);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_22F003484(&v160);
                          }

                          v35 = v149;
                          swift_beginAccess();
                          v132 = String.trimToNil()();
                          v40 = v153;
                          *(v35 + v153[16]) = v132;
                          swift_endAccess();

                          v41 = v147;
LABEL_51:
                          swift_beginAccess();
                          if (*(v35 + v40[11]) == 1)
                          {
                            goto LABEL_75;
                          }

                          v89 = sub_22F0D188C();

                          if (v89)
                          {
LABEL_79:
                            if (qword_27DAA0570 != -1)
                            {
                              swift_once();
                            }

                            v92 = sub_22F0D0A1C();
                            __swift_project_value_buffer(v92, qword_27DAA1A28);
                            sub_22F0CFFAC();
                            v93 = sub_22F0D09FC();
                            v94 = sub_22F0D122C();
                            sub_22F0D00CC();
                            if (os_log_type_enabled(v93, v94))
                            {
                              v95 = swift_slowAlloc();
                              v96 = swift_slowAlloc();
                              v154[0] = v96;
                              *v95 = 136315138;
                              swift_beginAccess();
                              v97 = v144;
                              sub_22F040184(v35, v144, type metadata accessor for MessageDetails);
                              v98 = MessageDetails.debugDescription.getter();
                              v100 = v99;
                              sub_22F04CFC4(v97, type metadata accessor for MessageDetails);
                              v101 = sub_22F00A560(v98, v100, v154);

                              *(v95 + 4) = v101;
                              _os_log_impl(&dword_22EFE1000, v93, v94, "Details %s", v95, 0xCu);
                              __swift_destroy_boxed_opaque_existential_1Tm(v96);
                              v102 = v96;
                              v40 = v153;
                              MEMORY[0x2318FE8B0](v102, -1, -1);
                              MEMORY[0x2318FE8B0](v95, -1, -1);
                            }

                            v103 = v140;
                            swift_beginAccess();
                            sub_22F040184(v35, v103, type metadata accessor for MessageDetails);
                            (*(v151 + 56))(v103, 0, 1, v40);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
                            sub_22F0D108C();
                            (*(v41 + 8))(v148, v139);
                            return;
                          }

                          swift_beginAccess();
                          if (*(v35 + v40[11]) == 4)
                          {
LABEL_75:

                            goto LABEL_79;
                          }

                          v91 = sub_22F0D188C();

                          if (v91)
                          {
                            goto LABEL_79;
                          }

                          strcpy(v154, "approverDSID");
                          BYTE5(v154[1]) = 0;
                          HIWORD(v154[1]) = -5120;
                          sub_22F0D149C();
                          if (*(v150 + 16) && (v104 = sub_22EFFDA98(&v160), (v105 & 1) != 0))
                          {
                            sub_22F003598(*(v150 + 56) + 32 * v104, v162);
                            sub_22F003484(&v160);
                            if (swift_dynamicCast())
                            {
                              v106 = sub_22F0B6FEC(v154[0], v154[1]);
                              v108 = v107;

                              v40 = v153;
                              v41 = v147;
                              if ((v108 & 1) == 0)
                              {
                                v109 = v149;
                                swift_beginAccess();
                                v110 = v40[12];
                                if (!(*(v142 + 48))(v109 + v110, 1, v143))
                                {
                                  v133 = v141;
                                  sub_22F040184(v149 + v110, v141, type metadata accessor for ResolvedFamily);
                                  v134 = ResolvedFamily.approverByDSID(with:)(v106);
                                  sub_22F04CFC4(v133, type metadata accessor for ResolvedFamily);
                                  if (v134)
                                  {

                                    v35 = v149;
                                    swift_beginAccess();
                                    v40 = v153;
                                    v135 = v35 + v153[10];
                                    *v135 = v106;
                                    *(v135 + 8) = 0;
                                    v41 = v147;
                                    goto LABEL_79;
                                  }
                                }

                                v162[0] = 0;
                                v162[1] = 0xE000000000000000;
                                sub_22F0D152C();

                                v162[0] = 0xD00000000000001ALL;
                                v162[1] = 0x800000022F0DE660;
                                v111 = sub_22F0D0B0C();
                                MEMORY[0x2318FD2C0](v111);

                                v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v162[0], v162[1], 500);

                                swift_willThrow();
                                (*(v147 + 8))(v148, v139);
                                goto LABEL_38;
                              }
                            }

                            else
                            {
                              v40 = v153;
                              v41 = v147;
                            }
                          }

                          else
                          {
                            sub_22F003484(&v160);
                          }

                          v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000011, 0x800000022F0DE4C0, 500);
                          swift_willThrow();
                          (*(v41 + 8))(v148, v139);
                          v9 = v140;
                          goto LABEL_33;
                        }
                      }

                      else
                      {
                        sub_22F003484(&v160);
                      }

                      v84 = 0;
                      v83 = 0;
                      goto LABEL_69;
                    }

                    swift_beginAccess();
                    (*(v41 + 16))(v22, v35 + v40[8], v48);
                    sub_22F0D05AC();
                    v68 = sub_22F0D053C();
                    v69 = *(v147 + 8);
                    v69(v19, v48);
                    v69(v22, v48);
                    v41 = v147;
                    if ((v68 & 1) == 0)
                    {
                      goto LABEL_51;
                    }

                    if (qword_27DAA0570 != -1)
                    {
                      swift_once();
                    }

                    v70 = sub_22F0D0A1C();
                    __swift_project_value_buffer(v70, qword_27DAA1A28);
                    v71 = sub_22F0D09FC();
                    v72 = sub_22F0D122C();
                    if (os_log_type_enabled(v71, v72))
                    {
                      v73 = swift_slowAlloc();
                      *v73 = 0;
                      _os_log_impl(&dword_22EFE1000, v71, v72, "No status but expired set", v73, 2u);
                      MEMORY[0x2318FE8B0](v73, -1, -1);
                    }

                    swift_beginAccess();
                    v66 = v40[11];
                    v67 = 4;
                  }
                }

                *(v35 + v66) = v67;
                goto LABEL_51;
              }

LABEL_41:
              v160 = 0;
              v161 = 0xE000000000000000;
              sub_22F0D152C();

              v160 = 0xD000000000000017;
              v161 = 0x800000022F0DE640;
              v65 = sub_22F0D0B0C();
              MEMORY[0x2318FD2C0](v65);

              v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v160, v161, 500);

              swift_willThrow();
              (*(v41 + 8))(v38, v139);
              goto LABEL_33;
            }
          }

          else
          {
            sub_22F003484(&v160);
          }

          v9 = v140;
          goto LABEL_41;
        }
      }

      else
      {
        sub_22F003484(&v160);
      }

      v160 = 0;
      v161 = 0xE000000000000000;
      sub_22F0D152C();

      v160 = 0xD000000000000013;
      v161 = 0x800000022F0DE620;
      v64 = sub_22F0D0B0C();
      MEMORY[0x2318FD2C0](v64);

      v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(v160, v161, 500);

      swift_willThrow();
LABEL_38:
      v9 = v140;
      v40 = v153;
      goto LABEL_33;
    }
  }

  else
  {
    sub_22F003484(&v160);
  }

  v54 = _s6People0A6ErrorsO11createError_4codeSo7NSErrorCSS_SitFZ_0(0xD000000000000010, 0x800000022F0DE400, 500);
  swift_willThrow();
  v40 = v153;
LABEL_33:
  if (qword_27DAA0570 != -1)
  {
    swift_once();
  }

  v62 = sub_22F0D0A1C();
  __swift_project_value_buffer(v62, qword_27DAA1A28);
  v63 = v54;
  Logger.ifError(_:message:)(v54, 0xD000000000000015, 0x800000022F0DE5E0);

  (*(v151 + 56))(v9, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAA1808, &unk_22F0D7E40);
  sub_22F0D108C();
}