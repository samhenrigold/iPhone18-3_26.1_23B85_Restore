void sub_22615EBDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v77 - v3;
  v5 = sub_22616F6F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - v10;
  v12 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL;
  swift_beginAccess();
  sub_226150DB0(v1 + v12, v4, &qword_27D78D0A0, &unk_226170E80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22614E1F4(v4, &qword_27D78D0A0, &unk_226170E80);
    sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
    v13 = sub_22616FA58();
    v14 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
    *(v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = v13;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    (*(v6 + 16))(v9, v11, v5);
    v15 = sub_226163960(v9);
    v82 = v1;
    v84 = v11;
    v79 = v6;
    v80 = v5;
    v26 = v15;
    sub_226159CF0(MEMORY[0x277D84F90]);
    v27 = objc_allocWithZone(MEMORY[0x277CBEB38]);
    v28 = MEMORY[0x277D84F70];
    v29 = sub_22616F798();

    v86 = [v27 initWithDictionary_];

    v78 = v26;
    v30 = [v26 modelDescription];
    v31 = [v30 metadata];

    type metadata accessor for MLModelMetadataKey(0);
    v33 = v32;
    sub_22615FD18(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey, &unk_226170644);
    v83 = v33;
    v34 = sub_22616F7B8();

    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v34 + 64);
    v39 = (v36 + 63) >> 6;
    v85 = v34;

    v40 = 0;
    while (v38)
    {
LABEL_16:
      v44 = __clz(__rbit64(v38)) | (v40 << 6);
      v45 = *(v85[6] + 8 * v44);
      sub_22614D234(v85[7] + 32 * v44, v97);
      v96 = v45;
      sub_22614D234(v97, &v91);
      v46 = v45;
      if (swift_dynamicCast())
      {
        v41 = sub_22616F7F8();

        *&v91 = v46;
        v42 = v46;
        [v86 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
      }

      else
      {
        sub_22614D234(v97, &v91);
        sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
        if (swift_dynamicCast())
        {
          v81 = v88;
          v95 = sub_22616FA48();
          sub_22616FA68();
          sub_22615FD18(&qword_27D78D0B0, MEMORY[0x277CC9CC0], MEMORY[0x277CC9CC8]);
          while (1)
          {
            sub_22616FAF8();
            if (!*(&v92 + 1))
            {
              break;
            }

            v88 = v91;
            v89 = v92;
            v90[0] = v93;
            v90[1] = v94;
            sub_22614D234(v90, &v87);
            if (swift_dynamicCast())
            {
              v47 = v28;
              v48 = sub_22616F7F8();

              __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
              [v86 __swift_setObject_forKeyedSubscript_];

              v28 = v47;
              swift_unknownObjectRelease();
            }

            sub_22614E1F4(&v88, &qword_27D78D0B8, &qword_226170E90);
          }
        }
      }

      v38 &= v38 - 1;
      sub_22614E1F4(&v96, &qword_27D78D0A8, &unk_226170F60);
    }

    while (1)
    {
      v43 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        swift_once();
        v16 = sub_22616F788();
        __swift_project_value_buffer(v16, qword_28136D470);
        v17 = &v96;
        v18 = sub_22616F768();
        v19 = sub_22616FA98();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v84 = v39;
          v22 = v21;
          *&v91 = v21;
          *v20 = 136315138;
          swift_getErrorValue();
          v23 = sub_22616FCA8();
          v25 = sub_2261555F8(v23, v24, &v91);

          *(v20 + 4) = v25;
          _os_log_impl(&dword_22614A000, v18, v19, "Error making initial meta data: %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x22AA77C50](v22, -1, -1);
          MEMORY[0x22AA77C50](v20, -1, -1);

          (*(&v88 + 1))(v84, v35);
        }

        else
        {

          (*(&v88 + 1))(v39, v35);
        }

        return;
      }

      if (v43 >= v39)
      {
        break;
      }

      v38 = *(v35 + 8 * v43);
      ++v40;
      if (v38)
      {
        v40 = v43;
        goto LABEL_16;
      }
    }

    v49 = [objc_opt_self() clientWithIdentifier_];
    v50 = sub_22616F7F8();
    v85 = v49;
    v51 = [v49 rolloutIdentifiersWithNamespaceName_];

    if (v51)
    {
      v52 = [v51 rolloutId];
      sub_22616F828();
    }

    v53 = sub_22616F7F8();

    strcpy(&v91, "TrialRolloutID");
    HIBYTE(v91) = -18;
    v54 = MEMORY[0x277D837D0];
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v55 = MEMORY[0x277D849A8];
    if (v51)
    {
      v56 = [v51 deploymentId];
      *(&v89 + 1) = v55;
      LODWORD(v88) = v56;
      sub_22614C5B0(&v88, &v91);
      v54 = *(&v92 + 1);
    }

    else
    {
      *(&v92 + 1) = v54;
      strcpy(&v91, "Unknown");
      *(&v91 + 1) = 0xE700000000000000;
    }

    __swift_project_boxed_opaque_existential_1(&v91, v54);
    v57 = sub_22616FC58();
    __swift_destroy_boxed_opaque_existential_1(&v91);
    *&v91 = 0xD000000000000018;
    *(&v91 + 1) = 0x8000000226171F30;
    [v86 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v51)
    {
      v58 = [v51 factorPackId];
      sub_22616F828();
    }

    v59 = sub_22616F7F8();

    *&v91 = 0xD000000000000011;
    *(&v91 + 1) = 0x8000000226171F50;
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v51)
    {
      v60 = [v51 rampId];
      if (v60)
      {
        v61 = v60;
        sub_22616F828();
      }
    }

    v62 = sub_22616F7F8();

    strcpy(&v91, "TrialRampID");
    HIDWORD(v91) = -352321536;
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v63 = sub_22616F7F8();
    v64 = [v85 experimentIdentifiersWithNamespaceName_];

    if (v64)
    {
      v65 = [v64 experimentId];
      sub_22616F828();
    }

    v67 = v79;
    v66 = v80;
    v68 = sub_22616F7F8();

    *&v91 = 0xD000000000000011;
    *(&v91 + 1) = 0x8000000226171F70;
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v64)
    {
      v69 = [v64 treatmentId];
      sub_22616F828();
    }

    v70 = sub_22616F7F8();

    *&v91 = 0xD000000000000010;
    *(&v91 + 1) = 0x8000000226171F90;
    v71 = MEMORY[0x277D837D0];
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v64)
    {
      v72 = [v64 deploymentId];
      *(&v89 + 1) = MEMORY[0x277D849A8];
      LODWORD(v88) = v72;
      sub_22614C5B0(&v88, &v91);
      v71 = *(&v92 + 1);
    }

    else
    {
      *(&v92 + 1) = v71;
      strcpy(&v91, "Unknown");
      *(&v91 + 1) = 0xE700000000000000;
    }

    v73 = v78;
    __swift_project_boxed_opaque_existential_1(&v91, v71);
    v74 = sub_22616FC58();
    __swift_destroy_boxed_opaque_existential_1(&v91);
    *&v91 = 0xD00000000000001BLL;
    *(&v91 + 1) = 0x8000000226171FB0;
    v75 = sub_22616FC78();
    v76 = v86;
    [v86 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v67 + 8))(v84, v66);
    v14 = *(v82 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
    *(v82 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData) = v76;
  }
}

uint64_t sub_22615F96C()
{

  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__modelURL, &qword_27D78D0A0, &unk_226170E80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligenceTrialModel(uint64_t a1)
{
  result = qword_28136D220;
  if (!qword_28136D220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22615FA64(uint64_t a1)
{
  sub_22615FB28(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22615FB28(uint64_t a1)
{
  if (!qword_28136D468)
  {
    sub_22616F6F8();
    v1 = sub_22616FAD8();
    if (!v2)
    {
      atomic_store(v1, &qword_28136D468);
    }
  }
}

void *sub_22615FBA4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceTrialModel__metaData);
  v2 = v1;
  return v1;
}

uint64_t sub_22615FBD8()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4A0);
  __swift_project_value_buffer(v0, qword_28136D4A0);
  return sub_22616F778();
}

unint64_t sub_22615FC54()
{
  result = qword_28136C3A8;
  if (!qword_28136C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3A8);
  }

  return result;
}

uint64_t sub_22615FCA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0A0, &unk_226170E80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22615FD18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_22615FDAC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel);
  *v5 = 0;
  v5[1] = 0;

  v7 = sub_22614C76C(v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v8 = sub_226155B2C(0x726F66736E617274, 0xEB0000000072656DLL);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_22614D234(*(a1 + 56) + 32 * v8, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0D0, qword_226170F00);
  if (swift_dynamicCast())
  {
    if (*(v33 + 16) && (v10 = sub_226155B2C(0x616C70756B6F6F6CLL, 0xEB000000006C6562), (v11 & 1) != 0))
    {
      v12 = *(*(v33 + 56) + 16 * v10);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v15 = &v7[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel];
    *v15 = v12;
    *(v15 + 1) = v13;

    if (*(v33 + 16) && (v16 = sub_226155B2C(0x616C74757074756FLL, 0xEB000000006C6562), (v17 & 1) != 0))
    {
      v18 = *(*(v33 + 56) + 16 * v16);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v20 = &v7[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel];
    *v20 = v18;
    *(v20 + 1) = v19;

    if (!*(v33 + 16) || (sub_226155B2C(0x4449656C6966, 0xE600000000000000), (v21 & 1) == 0))
    {

      return 0;
    }

    v22 = [objc_opt_self() clientWithIdentifier_];
    v23 = sub_22616F7F8();

    v24 = sub_22616F7F8();
    v25 = [v22 levelForFactor:v23 withNamespaceName:v24];

    if (v25)
    {
      v26 = [v25 fileValue];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 path];

        if (v28)
        {
          v29 = sub_22616F828();
          v31 = v30;

LABEL_25:
          v32 = &v7[OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath];
          *v32 = v29;
          v32[1] = v31;
LABEL_8:

          return v7;
        }
      }
    }

    else
    {
    }

    v29 = 0;
    v31 = 0;
    goto LABEL_25;
  }

  return v7;
}

ssize_t sub_2261600E8(uint64_t a1, uint64_t a2)
{
  v166 = a1;
  __linep[1] = *MEMORY[0x277D85DE8];
  v165 = sub_22616F648();
  v4 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v2 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath);
  if (*(v2 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__filePath + 8))
  {
    v7 = (sub_22616F888() + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = fopen(v7, "r");
  swift_unknownObjectRelease();
  if (!v8)
  {
    if (qword_28136C3F0 != -1)
    {
LABEL_103:
      swift_once();
    }

    v40 = sub_22616F788();
    __swift_project_value_buffer(v40, qword_28136C3F8);
    v41 = sub_22616F768();
    v42 = sub_22616FA98();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_22;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_22614A000, v41, v42, "Could not open file ", v43, 2u);
    goto LABEL_21;
  }

  v167 = v2;
  __linep[0] = 0;
  __linecapp = 0;
  result = getline(__linep, &__linecapp, v8);
  v10 = v6[1];
  if (!v10)
  {
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v11 = result;
  v12 = *v6;
  v13 = qword_28136C3F0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_22616F788();
  v15 = __swift_project_value_buffer(v14, qword_28136C3F8);

  v163 = v15;
  v16 = sub_22616F768();
  v17 = sub_22616FA88();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v174 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v11;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2261555F8(v12, v10, &v174);
    _os_log_impl(&dword_22614A000, v16, v17, "Bytes read: %ld from %s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA77C50](v19, -1, -1);
    MEMORY[0x22AA77C50](v18, -1, -1);
  }

  if (v11 <= 0)
  {

    goto LABEL_39;
  }

  result = __linep[0];
  if (!__linep[0])
  {
    goto LABEL_108;
  }

  v161 = v4;
  v154 = v10;
  v158 = a2;
  v174 = sub_22616F8F8();
  v175 = v20;
  v171 = 606826076;
  v172 = 0xE400000000000000;
  v169 = 0;
  v170 = 0xE000000000000000;
  v148 = sub_22615FC54();
  v162 = v148;
  v145 = MEMORY[0x277D837D0];
  v146 = v148;
  v21 = sub_22616FB18();
  v23 = v22;

  v174 = 44;
  v175 = 0xE100000000000000;
  MEMORY[0x28223BE20](v24);
  v147 = &v174;

  v153 = v23;
  v25 = sub_226161F74(0x7FFFFFFFFFFFFFFFLL, 1, sub_226162F44, &v145, v21, v23, &v177);
  v168 = 0;
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v8;
    v174 = MEMORY[0x277D84F90];
    sub_226162418(0, v26, 0);
    v28 = v174;
    v29 = (v25 + 56);
    do
    {
      v30 = *(v29 - 3);
      v31 = *(v29 - 2);
      v32 = *(v29 - 1);
      v33 = *v29;

      v34 = MEMORY[0x22AA77220](v30, v31, v32, v33);
      v36 = v35;

      v174 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_226162418((v37 > 1), v38 + 1, 1);
        v28 = v174;
      }

      *(v28 + 16) = v38 + 1;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v29 += 4;
      --v26;
    }

    while (v26);

    v8 = v27;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v44 = v167;
  v45 = (v167 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel);
  v46 = *(v167 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__lookupLabel + 8);
  if (!v46)
  {
    goto LABEL_109;
  }

  v47 = *(v28 + 16);
  if (!v47)
  {
LABEL_34:

    v52 = sub_22616F768();
    v53 = sub_22616FA98();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_38;
    }

    v54 = swift_slowAlloc();
    result = swift_slowAlloc();
    v174 = result;
    *v54 = 136315138;
    v55 = v45[1];
    if (v55)
    {
      v56 = result;
      v57 = *v45;

      v58 = sub_2261555F8(v57, v55, &v174);

      *(v54 + 4) = v58;
      v59 = "Lookup column not found in CSV:%s";
      goto LABEL_37;
    }

    goto LABEL_111;
  }

  v48 = 0;
  v49 = 0;
  v50 = *v45;
  while (1)
  {
    result = *(v28 + v48 + 32);
    if (result == v50 && v46 == *(v28 + v48 + 40))
    {
      break;
    }

    result = sub_22616FC68();
    if (result)
    {
      break;
    }

    ++v49;
    v48 += 16;
    if (v47 == v49)
    {
      goto LABEL_34;
    }
  }

  v60 = (v44 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel);
  v61 = *(v44 + OBJC_IVAR____TtC16MapsIntelligence37MapsIntelligenceFileLookupTransformer__returnLabel + 8);
  if (!v61)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v62 = 0;
  v63 = 0;
  v157 = v60;
  v64 = *v60;
  while (1)
  {
    v65 = *(v28 + v62 + 32) == v64 && v61 == *(v28 + v62 + 40);
    if (v65 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

    ++v63;
    v62 += 16;
    if (v47 == v63)
    {

      v52 = sub_22616F768();
      v53 = sub_22616FA98();

      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_38;
      }

      v54 = swift_slowAlloc();
      result = swift_slowAlloc();
      v174 = result;
      *v54 = 136315138;
      v66 = v157[1];
      if (v66)
      {
        v56 = result;
        v67 = *v157;

        v68 = sub_2261555F8(v67, v66, &v174);

        *(v54 + 4) = v68;
        v59 = "Result column not found in CSV:%s";
LABEL_37:
        _os_log_impl(&dword_22614A000, v52, v53, v59, v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x22AA77C50](v56, -1, -1);
        MEMORY[0x22AA77C50](v54, -1, -1);
LABEL_38:

LABEL_39:
        fclose(v8);
        if (__linep[0])
        {
          MEMORY[0x22AA77C50](__linep[0], -1, -1);
        }

        return 0;
      }

LABEL_114:
      __break(1u);
      return result;
    }
  }

  v69 = sub_22616F768();
  v70 = sub_22616FA88();

  v71 = os_log_type_enabled(v69, v70);
  v159 = v63;
  v160 = v49;
  v150 = v62;
  v152 = v48;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v174 = v73;
    *v72 = 136315138;
    v74 = MEMORY[0x22AA77340](v28, MEMORY[0x277D837D0]);
    v76 = v8;
    v77 = sub_2261555F8(v74, v75, &v174);

    *(v72 + 4) = v77;
    v8 = v76;
    _os_log_impl(&dword_22614A000, v69, v70, "Colums: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    MEMORY[0x22AA77C50](v73, -1, -1);
    MEMORY[0x22AA77C50](v72, -1, -1);
  }

  v78 = sub_22616F768();
  v79 = sub_22616FA88();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = v8;
    v81 = swift_slowAlloc();
    result = swift_slowAlloc();
    v174 = result;
    *v81 = 136315394;
    v82 = v45[1];
    if (v82)
    {
      v83 = result;
      v84 = *v45;

      v85 = sub_2261555F8(v84, v82, &v174);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2048;
      *(v81 + 14) = v160;
      _os_log_impl(&dword_22614A000, v78, v79, "lookup: %s: %ld", v81, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x22AA77C50](v83, -1, -1);
      MEMORY[0x22AA77C50](v81, -1, -1);

      v8 = v80;
      goto LABEL_59;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

LABEL_59:

  v86 = sub_22616F768();
  v87 = sub_22616FA88();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v158;
  if (v88)
  {
    v90 = swift_slowAlloc();
    result = swift_slowAlloc();
    v174 = result;
    *v90 = 136315394;
    v91 = v157[1];
    if (v91)
    {
      v92 = result;
      v93 = *v157;

      v94 = sub_2261555F8(v93, v91, &v174);

      *(v90 + 4) = v94;
      *(v90 + 12) = 2048;
      v95 = v159;
      *(v90 + 14) = v159;
      _os_log_impl(&dword_22614A000, v86, v87, "result: %s: %ld", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x22AA77C50](v92, -1, -1);
      MEMORY[0x22AA77C50](v90, -1, -1);

      goto LABEL_63;
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v95 = v159;
LABEL_63:
  v96 = sub_22616F768();
  v97 = sub_22616FA88();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v160;
  if (v98)
  {
    v100 = swift_slowAlloc();
    *v100 = 134218240;
    *(v100 + 4) = v99;
    *(v100 + 12) = 2048;
    *(v100 + 14) = v95;
    _os_log_impl(&dword_22614A000, v96, v97, "Going to search column: %ld fetching from column: %ld", v100, 0x16u);
    MEMORY[0x22AA77C50](v100, -1, -1);
  }

  if (getline(__linep, &__linecapp, v8) < 1)
  {
LABEL_90:

    fclose(v8);
    if (__linep[0])
    {
      MEMORY[0x22AA77C50](__linep[0], -1, -1);
    }

    v41 = sub_22616F768();
    v133 = sub_22616FA98();

    if (!os_log_type_enabled(v41, v133))
    {
      goto LABEL_22;
    }

    v43 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v174 = v134;
    *v43 = 136315138;
    *(v43 + 4) = sub_2261555F8(v166, v89, &v174);
    _os_log_impl(&dword_22614A000, v41, v133, "found no match: .%s.", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v134);
    MEMORY[0x22AA77C50](v134, -1, -1);
LABEL_21:
    MEMORY[0x22AA77C50](v43, -1, -1);
LABEL_22:

    return 0;
  }

  v157 = (v161 + 8);
  if (v95 <= v99)
  {
    v102 = v99;
  }

  else
  {
    v102 = v95;
  }

  v156 = v102;
  *&v101 = 136315138;
  v151 = v101;
  v155 = v8;
  while (1)
  {
    if (!__linep[0])
    {
      goto LABEL_106;
    }

    v174 = sub_22616F8F8();
    v175 = v103;
    v104 = v164;
    sub_22616F638();
    v105 = sub_22616FB08();
    v107 = v106;
    (*v157)(v104, v165);

    v174 = 44;
    v175 = 0xE100000000000000;
    MEMORY[0x28223BE20](v108);
    v147 = &v174;

    v161 = v105;
    v167 = v107;
    v109 = v168;
    v111 = sub_226161F74(0x7FFFFFFFFFFFFFFFLL, 1, sub_226162FB8, &v145, v105, v107, v110);
    v168 = v109;
    v112 = *(v111 + 16);
    if (v112)
    {
      v174 = MEMORY[0x277D84F90];
      sub_226162418(0, v112, 0);
      v113 = v174;
      v114 = (v111 + 56);
      do
      {
        v115 = *(v114 - 3);
        v116 = *(v114 - 2);
        v118 = *(v114 - 1);
        v117 = *v114;

        v119 = MEMORY[0x22AA77220](v115, v116, v118, v117);
        v121 = v120;

        v174 = v113;
        v123 = *(v113 + 16);
        v122 = *(v113 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_226162418((v122 > 1), v123 + 1, 1);
          v113 = v174;
        }

        *(v113 + 16) = v123 + 1;
        v124 = v113 + 16 * v123;
        *(v124 + 32) = v119;
        *(v124 + 40) = v121;
        v114 += 4;
        --v112;
      }

      while (v112);

      v8 = v155;
      v89 = v158;
      v95 = v159;
      v99 = v160;
    }

    else
    {

      v113 = MEMORY[0x277D84F90];
    }

    v125 = getline(__linep, &__linecapp, v8);
    v126 = v167;
    if (*(v113 + 16) < v156)
    {

      v127 = sub_22616F768();
      v128 = sub_22616FA98();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v174 = v130;
        *v129 = v151;
        v131 = sub_2261555F8(v161, v126, &v174);

        *(v129 + 4) = v131;
        v99 = v160;
        _os_log_impl(&dword_22614A000, v127, v128, "Invalid row format: %s", v129, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v130);
        v132 = v130;
        v95 = v159;
        MEMORY[0x22AA77C50](v132, -1, -1);
        MEMORY[0x22AA77C50](v129, -1, -1);
      }

      else
      {
      }

      if (__linep[0])
      {
        MEMORY[0x22AA77C50](__linep[0], -1, -1);
      }

      goto LABEL_70;
    }

    if (v99 >= *(v113 + 16))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (*(v113 + v152 + 32) == v166 && *(v113 + v152 + 40) == v89 || (sub_22616FC68() & 1) != 0)
    {
      break;
    }

LABEL_70:
    if (v125 <= 0)
    {
      goto LABEL_90;
    }
  }

  v135 = sub_22616F768();
  v136 = sub_22616FA88();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v174 = v138;
    *v137 = 136315394;
    *(v137 + 4) = sub_2261555F8(v166, v89, &v174);
    *(v137 + 12) = 2080;
    if (v95 < *(v113 + 16))
    {
      v139 = *(v113 + v150 + 32);
      v140 = *(v113 + v150 + 40);

      v141 = sub_2261555F8(v139, v140, &v174);

      *(v137 + 14) = v141;
      _os_log_impl(&dword_22614A000, v135, v136, "found match: .%s. -- %s", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA77C50](v138, -1, -1);
      MEMORY[0x22AA77C50](v137, -1, -1);

      v95 = v159;
      goto LABEL_98;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

LABEL_98:
  fclose(v8);
  if (__linep[0])
  {
    MEMORY[0x22AA77C50](__linep[0], -1, -1);
  }

  if (v95 >= *(v113 + 16))
  {
    __break(1u);
    goto LABEL_105;
  }

  v143 = *(v113 + v150 + 32);
  v142 = *(v113 + v150 + 40);

  v174 = v143;
  v175 = v142;
  v171 = 606826076;
  v172 = 0xE400000000000000;
  v169 = 0;
  v170 = 0xE000000000000000;
  v147 = v162;
  v148 = v162;
  v146 = v162;
  v145 = MEMORY[0x277D837D0];
  v144 = sub_22616FB18();

  return v144;
}

id sub_2261613A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v4[-1].Description;
  MEMORY[0x28223BE20](v4);
  v7 = &v58[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  dispatch thunk of MapsIntelligenceClientSignal.type()(v8, v9);
  v10 = Description[11](v7, v4);
  if (!v10)
  {
    return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        return [objc_opt_self() undefinedFeatureValueWithType_];
      }

      goto LABEL_108;
    }

    sub_22614E190(a1, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
    type metadata accessor for MapsIntelligenceStringSignal(0);
    swift_dynamicCast();
    v15 = v63;
    v16 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_2261623A8(v15 + v16, v59);

    if (v60)
    {
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_22614D2DC(v59);
    }

    return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
  }

  sub_22614E190(a1, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
  type metadata accessor for MapsIntelligenceDoubleSignal(0);
  swift_dynamicCast();
  v12 = v63;
  v61 = 0;
  v62 = 0xE000000000000000;
  v13 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_2261623A8(v12 + v13, v59);
  if (v60)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      v14 = v58[0];
      [v58[0] doubleValue];
    }
  }

  else
  {
    sub_22614D2DC(v59);
  }

  sub_22616FA18();

LABEL_15:
  v17 = sub_2261600E8(v61, v62);
  if (!v18)
  {

    return 0;
  }

  v19 = v18;
  v20 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType);
  v21 = *(v2 + OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__outputType + 8);
  if (v20 != 7630409 || v21 != 0xE300000000000000)
  {
    v22 = v17;
    v23 = sub_22616FC68();
    v17 = v22;
    if ((v23 & 1) == 0)
    {
      if (v20 == 0x656C62756F44 && v21 == 0xE600000000000000 || (v36 = sub_22616FC68(), v17 = v22, (v36 & 1) != 0))
      {
        v64[0] = 0;
        if (sub_22614DFC0(v17, v19, v64))
        {

          return [objc_opt_self() featureValueWithDouble_];
        }

        goto LABEL_107;
      }

      if (v20 == 0x676E69727453 && v21 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
      {
        v48 = sub_22616F7F8();

        v49 = [objc_opt_self() featureValueWithString_];

        return v49;
      }

      if (qword_28136C3F0 == -1)
      {
LABEL_94:
        v50 = sub_22616F788();
        __swift_project_value_buffer(v50, qword_28136C3F8);

        v51 = sub_22616F768();
        v52 = sub_22616FA78();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v64[0] = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_2261555F8(v20, v21, v64);
          _os_log_impl(&dword_22614A000, v51, v52, "Unsupported output type: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x22AA77C50](v54, -1, -1);
          MEMORY[0x22AA77C50](v53, -1, -1);
        }

        return [objc_allocWithZone(MEMORY[0x277CBFEF8]) init];
      }

LABEL_105:
      swift_once();
      goto LABEL_94;
    }
  }

  v24 = HIBYTE(v19) & 0xF;
  v25 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v26 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    __break(1u);
LABEL_98:
    v55 = sub_226162544(v17, v19, 10);
    if ((v56 & 1) == 0)
    {
      v29 = v55;
      goto LABEL_88;
    }

    goto LABEL_106;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    goto LABEL_98;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    v64[0] = v17;
    v64[1] = v19 & 0xFFFFFFFFFFFFFFLL;
    if (v17 == 43)
    {
      if (v24)
      {
        if (--v24)
        {
          v29 = 0;
          v40 = v64 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++v40;
            if (!--v24)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_86;
      }

      goto LABEL_104;
    }

    if (v17 != 45)
    {
      if (v24)
      {
        v29 = 0;
        v45 = v64;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          v45 = (v45 + 1);
          if (!--v24)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v24)
    {
      if (--v24)
      {
        v29 = 0;
        v33 = v64 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v24)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_102;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    v27 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v27 = sub_22616FBB8();
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v37 = v27 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_86;
            }

            v39 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_86;
            }

            v29 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_86;
            }

            ++v37;
            if (!--v24)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_86;
    }

    goto LABEL_103;
  }

  if (v28 == 45)
  {
    if (v25 >= 1)
    {
      v24 = v25 - 1;
      if (v25 != 1)
      {
        v29 = 0;
        if (v27)
        {
          v30 = v27 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_86;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_86;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_86;
            }

            ++v30;
            if (!--v24)
            {
              goto LABEL_87;
            }
          }
        }

LABEL_78:
        LOBYTE(v24) = 0;
        goto LABEL_87;
      }

      goto LABEL_86;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v25)
  {
    v29 = 0;
    if (v27)
    {
      while (1)
      {
        v43 = *v27 - 48;
        if (v43 > 9)
        {
          goto LABEL_86;
        }

        v44 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          goto LABEL_86;
        }

        v29 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          goto LABEL_86;
        }

        ++v27;
        if (!--v25)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_86:
  v29 = 0;
  LOBYTE(v24) = 1;
LABEL_87:
  v59[0] = v24;
  if ((v24 & 1) == 0)
  {
LABEL_88:

    return [objc_opt_self() featureValueWithInt64_];
  }

LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  result = sub_22616FBD8();
  __break(1u);
  return result;
}

uint64_t sub_226161CE0()
{
}

uint64_t sub_226161D3C()
{

  v1 = OBJC_IVAR____TtC16MapsIntelligence31MapsIntelligenceBaseTransformer__signalType;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsIntelligenceFileLookupTransformer(uint64_t a1)
{
  result = qword_28136C978;
  if (!qword_28136C978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226161EF4()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136C3F8);
  __swift_project_value_buffer(v0, qword_28136C3F8);
  return sub_22616F778();
}

unint64_t sub_226161F74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_22616F988();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22616B160(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_22616B160((a7 > 1), v10, 1, v14);
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
        v19 = sub_22616F968();
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

        v14 = sub_22616F8C8();
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
        v18 = sub_22616F8C8();
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
          v7 = sub_22616F988();
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

        v14 = sub_22616B160(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22616F988();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22616B160(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22616B160((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22616F8C8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_226162334(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFD8, &qword_226170D28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2261623A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEE0, &unk_226170C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_226162418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226162438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226162438(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE0, &unk_226170D30);
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

unsigned __int8 *sub_226162544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22616F978();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_226162AD0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22616FBB8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_226162AD0(uint64_t a1, unint64_t a2)
{
  v2 = sub_22616F988();
  v6 = sub_226162B50(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_226162B50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22616FAE8();
    if (!v9 || (v10 = v9, v11 = sub_226162334(v9, 0), v12 = sub_226162CA8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22616F8A8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22616F8A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22616FBB8();
LABEL_4:

  return sub_22616F8A8();
}

unint64_t sub_226162CA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_226162EC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22616F938();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22616FBB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_226162EC8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22616F918();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_226162EC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22616F948();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA772B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_226162F60(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22616FC68() & 1;
  }
}

uint64_t sub_226163020(uint64_t a1, uint64_t a2)
{
  v82[5] = *MEMORY[0x277D85DE8];
  v4 = sub_22616F6F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  v82[0] = 0x736C616E676953;
  v82[1] = 0xE700000000000000;
  *&v80 = a1;
  *(&v80 + 1) = a2;

  *&v80 = sub_22616F978();
  *(&v80 + 1) = v11;
  sub_22616F8D8();
  type metadata accessor for MapsIntelligenceSignalProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_22616F7F8();

  v15 = sub_22616F7F8();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    goto LABEL_40;
  }

  sub_22616F6A8();

  (*(v5 + 32))(v10, v8, v4);
  v17 = sub_22616F708();
  v19 = v18;
  v20 = objc_opt_self();
  v21 = sub_22616F718();
  v82[0] = 0;
  v22 = [v20 propertyListWithData:v21 options:1 format:0 error:v82];

  if (!v22)
  {
    v65 = v82[0];
    sub_22616F658();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
LABEL_46:
    result = sub_22616FC98();
    __break(1u);
    return result;
  }

  v23 = v82[0];
  sub_22616FB28();
  swift_unknownObjectRelease();
  if (!swift_dynamicCast())
  {
    (*(v5 + 8))(v10, v4);
    sub_226163834(v17, v19);
LABEL_40:

    return 0;
  }

  v70 = v17;
  v71 = v13;
  v72 = v10;
  v73 = v5;
  v24 = v80;
  type metadata accessor for MapsIntelligenceSignalPack();
  inited = swift_initStackObject();
  v26 = MEMORY[0x277D84F90];
  v27 = sub_226159E2C(MEMORY[0x277D84F90]);
  v74 = inited;
  *(inited + 16) = v27;
  v28 = swift_allocObject();
  v29 = sub_226159E2C(v26);
  v69 = v28;
  *(v28 + 16) = v29;
  v30 = (v28 + 16);
  v31 = *(v24 + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v24 + 32;
    v68 = v4;
    v67 = v19;
    v76 = v24;
    v75 = v24 + 32;
    do
    {
      if (v32 >= *(v24 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
      }

      v34 = *(v33 + 8 * v32);
      if (*(v34 + 16))
      {

        v35 = sub_226155B2C(1701667182, 0xE400000000000000);
        if (v36)
        {
          v37 = (*(v34 + 56) + 16 * v35);
          v38 = *v37;
          v39 = v37[1];

          if (!*(v27 + 16))
          {
            goto LABEL_22;
          }

          v40 = sub_226155B2C(v38, v39);
          if ((v41 & 1) == 0)
          {

LABEL_22:

            memset(v82, 0, 40);
LABEL_23:
            sub_226163888(v82);
            v24 = v76;
            v33 = v75;
            goto LABEL_7;
          }

          sub_22614E190(*(v27 + 56) + 40 * v40, v82);

          sub_226163888(v82);
          sub_226154CAC(v38, v39, 1, v82);
          v42 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v42 = v38 & 0xFFFFFFFFFFFFLL;
          }

          if (!v42)
          {

            goto LABEL_23;
          }

          sub_2261638F0(v82, &v80);
          swift_beginAccess();
          if (v81)
          {
            sub_226150EFC(&v80, v78);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = *v30;
            v44 = v77;
            v46 = sub_226155B2C(v38, v39);
            v47 = v44[2];
            v48 = (v45 & 1) == 0;
            v49 = v47 + v48;
            if (__OFADD__(v47, v48))
            {
              goto LABEL_43;
            }

            v50 = v45;
            if (v44[3] >= v49)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22614FDFC();
              }
            }

            else
            {
              sub_226150400(v49, isUniquelyReferenced_nonNull_native);
              v51 = sub_226155B2C(v38, v39);
              if ((v50 & 1) != (v52 & 1))
              {
                goto LABEL_46;
              }

              v46 = v51;
            }

            v58 = v77;
            if (v50)
            {
              v59 = (v77[7] + 40 * v46);
              __swift_destroy_boxed_opaque_existential_1(v59);
              sub_226150EFC(v78, v59);
            }

            else
            {
              v77[(v46 >> 6) + 8] |= 1 << v46;
              v60 = (v58[6] + 16 * v46);
              *v60 = v38;
              v60[1] = v39;
              sub_226150EFC(v78, v58[7] + 40 * v46);
              v61 = v58[2];
              v62 = __OFADD__(v61, 1);
              v63 = v61 + 1;
              if (v62)
              {
                goto LABEL_44;
              }

              v58[2] = v63;
            }

            *v30 = v58;
            v4 = v68;
            v19 = v67;
          }

          else
          {
            sub_226163888(&v80);
            v53 = sub_226155B2C(v38, v39);
            if (v54)
            {
              v55 = v53;
              v56 = swift_isUniquelyReferenced_nonNull_native();
              v57 = *v30;
              v77 = *v30;
              if (!v56)
              {
                sub_22614FDFC();
                v57 = v77;
              }

              sub_226150EFC((*(v57 + 56) + 40 * v55), v78);
              sub_22616B788(v55, v57);
              *v30 = v57;
            }

            else
            {
              v79 = 0;
              memset(v78, 0, sizeof(v78));
            }

            sub_226163888(v78);
          }

          v33 = v75;
          swift_endAccess();

          sub_226163888(v82);
          v24 = v76;
        }

        else
        {
        }
      }

LABEL_7:
      ++v32;
    }

    while (v31 != v32);
  }

  sub_226163834(v70, v19);

  (*(v73 + 8))(v72, v4);
  return v69;
}

uint64_t sub_226163834(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_226163888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFB0, &unk_226170C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2261638F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFB0, &unk_226170C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_226163960(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22616F688();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_22616F6F8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_22616F658();

    swift_willThrow();
    v9 = sub_22616F6F8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t MapsIntelligenceLoadedModel.init(path:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22616F6F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  if (a2)
  {
    v40 = v7;
    v10 = swift_allocBox();
    v12 = v11;
    sub_22616F678();

    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v41 = v2;
    v13 = sub_22616F788();
    v14 = __swift_project_value_buffer(v13, qword_28136D470);

    v39 = v14;
    v15 = sub_22616F768();
    v16 = sub_22616FA88();
    v42 = v10;

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43[0] = v18;
      *v17 = 136315138;
      swift_beginAccess();
      (*(v5 + 16))(v9, v12, v4);
      sub_226164C98(&qword_27D78D0E0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v19 = sub_22616FC48();
      v21 = v20;
      (*(v5 + 8))(v9, v4);
      v22 = sub_2261555F8(v19, v21, v43);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_22614A000, v15, v16, "loading model from URL: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x22AA77C50](v18, -1, -1);
      MEMORY[0x22AA77C50](v17, -1, -1);
    }

    v23 = dispatch_semaphore_create(0);
    sub_226154868(0, &qword_28136C388, 0x277CBFF20);
    swift_beginAccess();
    v24 = *(v5 + 16);
    v24(v9, v12, v4);
    v25 = swift_allocObject();
    *(v25 + 16) = v42;
    *(v25 + 24) = v23;

    v26 = v23;
    sub_22616FAC8();

    (*(v5 + 8))(v9, v4);
    sub_22616FAA8();
    v27 = v40;
    v24(v40, v12, v4);
    v28 = sub_226163960(v27);
    v33 = v41;
    *(v41 + 16) = v28;
    v34 = sub_22616F768();
    v35 = sub_22616FA88();
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22614A000, v34, v35, "Loaded model successfully", v37, 2u);
      MEMORY[0x22AA77C50](v37, -1, -1);
    }

    return v33;
  }

  else
  {
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v29 = sub_22616F788();
    __swift_project_value_buffer(v29, qword_28136D470);
    v30 = sub_22616F768();
    v31 = sub_22616FA98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22614A000, v30, v31, "Error loading model: Empty path", v32, 2u);
      MEMORY[0x22AA77C50](v32, -1, -1);
    }

    type metadata accessor for MapsIntelligenceLoadedModel();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_22616416C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22616F6F8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v23[-1] - v8);
  v10 = swift_projectBox();
  sub_226164D54(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v12 = sub_22616F788();
    __swift_project_value_buffer(v12, qword_28136D470);
    v13 = v11;
    v14 = sub_22616F768();
    v15 = sub_22616FA98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_22616FCA8();
      v20 = sub_2261555F8(v18, v19, v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_22614A000, v14, v15, "Error Compiling model: %s, lets just load it", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AA77C50](v17, -1, -1);
      MEMORY[0x22AA77C50](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    swift_beginAccess();
    (*(v4 + 40))(v10, v6, v3);
  }

  return sub_22616FAB8();
}

id sub_226164454(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v18[0] = 0;
  v4 = [v3 predictionFromFeatures:a1 error:v18];
  v5 = v18[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3C8 != -1)
    {
      swift_once();
    }

    v8 = sub_22616F788();
    __swift_project_value_buffer(v8, qword_28136D470);
    v9 = v7;
    v10 = sub_22616F768();
    v11 = sub_22616FA98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_22616FCA8();
      v16 = sub_2261555F8(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22614A000, v10, v11, "Error making prediction: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x22AA77C50](v13, -1, -1);
      MEMORY[0x22AA77C50](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

id sub_226164658()
{
  v27 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = [*(v0 + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_226164C98(&qword_27D78CEA0, type metadata accessor for MLModelMetadataKey, &unk_226170644);
  v3 = sub_22616F7B8();

  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v26 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v26 + 48) + 8 * v13);
    sub_22614D234(*(v26 + 56) + 32 * v13, v38);
    v37 = v14;
    sub_22614D234(v38, &v32);
    v15 = v14;
    if (swift_dynamicCast())
    {
      v10 = sub_22616F7F8();

      *&v32 = v15;
      v11 = v15;
      [v27 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_22614D234(v38, &v32);
      sub_226154868(0, &qword_28136C3A0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v25 = v29;
        v36 = sub_22616FA48();
        sub_22616FA68();
        sub_226164C98(&qword_27D78D0B0, MEMORY[0x277CC9CC0], MEMORY[0x277CC9CC8]);
        while (1)
        {
          sub_22616FAF8();
          if (!*(&v33 + 1))
          {
            break;
          }

          v29 = v32;
          v30 = v33;
          v31[0] = v34;
          v31[1] = v35;
          sub_22614D234(v31, v28);
          if (swift_dynamicCast())
          {
            v16 = sub_22616F7F8();

            __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
            [v27 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }

          sub_22614E1F4(&v29, &qword_27D78D0B8, &qword_226170E90);
        }
      }
    }

    v7 &= v7 - 1;
    sub_22614E1F4(&v37, &qword_27D78D0A8, &unk_226170F60);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  if (qword_28136C3C8 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v17 = sub_22616F788();
  __swift_project_value_buffer(v17, qword_28136D470);
  v18 = v27;
  v19 = sub_22616F768();
  v20 = sub_22616FA88();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_22614A000, v19, v20, "metaData:%@", v21, 0xCu);
    sub_22614E1F4(v22, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v22, -1, -1);
    MEMORY[0x22AA77C50](v21, -1, -1);
  }

  return v18;
}

uint64_t MapsIntelligenceLoadedModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226164BEC()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D470);
  __swift_project_value_buffer(v0, qword_28136D470);
  return sub_22616F778();
}

uint64_t sub_226164C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226164D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0C8, &unk_226170FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapsIntelligenceDoubleSignal.__allocating_init(_:expiration:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  MapsIntelligenceDoubleSignal.init(_:expiration:)(a1, a2);
  return v4;
}

MapsIntelligenceClientInterface::MapsIntelligenceClientSignalType __swiftcall GetMapsIntelligenceClientSignalType(from:)(Swift::String_optional from)
{
  v2 = v1;
  v3 = &enum case for MapsIntelligenceClientSignalType.unknown(_:);
  if (from.value._object)
  {
    v5 = sub_22616F878();
    v6 = v4;
    if (v5 == 0x6E776F6E6B6E75 && v4 == 0xE700000000000000 || (sub_22616FC68() & 1) != 0)
    {
    }

    else if (v5 == 0x656C62756F64 && v6 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.double(_:);
    }

    else if (v5 == 0x676E69727473 && v6 == 0xE600000000000000 || (sub_22616FC68() & 1) != 0)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.string(_:);
    }

    else if (v5 == 0x3436746E69 && v6 == 0xE500000000000000)
    {

      v3 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
    }

    else
    {
      v11 = sub_22616FC68();

      if (v11)
      {
        v3 = &enum case for MapsIntelligenceClientSignalType.int64(_:);
      }
    }
  }

  v7 = *v3;
  v8 = type metadata accessor for MapsIntelligenceClientSignalType();
  v9 = *(v8[-1].Description + 13);

  return v9(v2, v7, v8);
}

Swift::String __swiftcall GetMapsIntelligenceClientSignalTypeString(from:)(MapsIntelligenceClientInterface::MapsIntelligenceClientSignalType from)
{
  v1 = from;
  v2 = 0x6E776F6E6B6E75;
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v6, v1, v3);
  v7 = (Description[11])(v6, v3);
  if (v7)
  {
    switch(v7)
    {
      case 1:
        v8 = 0xE600000000000000;
        v2 = 0x656C62756F64;
        goto LABEL_9;
      case 2:
        v8 = 0xE600000000000000;
        v2 = 0x676E69727473;
        goto LABEL_9;
      case 3:
        v8 = 0xE500000000000000;
        v2 = 0x3436746E69;
        goto LABEL_9;
    }

    (Description[1])(v6, v3);
  }

  v8 = 0xE700000000000000;
LABEL_9:
  v9 = v2;
  result._object = v8;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t MapsIntelligenceBaseSignal.__allocating_init(type:expiration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = (v4 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  v7 = sub_22616F758();
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v9 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v9[-1].Description;
  Description[2](v4 + v8, a1, v9);
  sub_22616F748();
  (Description[1])(a1, v9);
  swift_beginAccess();
  sub_226157F18(a2, v4 + v6, &qword_27D78CFE8, "6)");
  swift_endAccess();
  return v4;
}

uint64_t MapsIntelligenceBaseSignal.init(type:expiration:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_22616F758();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  (*(v6 + 56))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v5);
  v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v12 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v12[-1].Description;
  Description[2](v2 + v11, a1, v12);
  sub_22616F748();
  (Description[1])(a1, v12);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v8, v5);
  swift_beginAccess();
  sub_226157F18(a2, v2 + v10, &qword_27D78CFE8, "6)");
  swift_endAccess();
  return v2;
}

uint64_t sub_226165510(unsigned __int8 *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v6, v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v3);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v6, a1);
  (Description[1])(v6, v3);
  return a1 & 1;
}

double sub_226165610@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v5[-1].Description;
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v8, v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v5);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v8, a1);
  (Description[1])(v8, v5);
  if (a1)
  {
    v9 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_226150DB0(v2 + v9, a2, &qword_27D78CEE0, &unk_226170C20);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22616575C()
{
  v1 = sub_22616F758();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  swift_beginAccess();
  sub_226150DB0(v0 + v11, v10, &qword_27D78CFE8, "6)");
  v12 = *(v2 + 48);
  v13 = v12(v10, 1, v1);
  sub_22614E1F4(v10, &qword_27D78CFE8, "6)");
  if (v13 == 1)
  {
    v14 = 0;
    return v14 & 1;
  }

  sub_226150DB0(v0 + v11, v8, &qword_27D78CFE8, "6)");
  result = v12(v8, 1, v1);
  if (result != 1)
  {
    sub_22616F748();
    v14 = sub_22616F738();
    v16 = *(v2 + 8);
    v16(v4, v1);
    v16(v8, v1);
    return v14 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_226165994@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v4 = type metadata accessor for MapsIntelligenceClientSignalType();
  v5 = *(v4[-1].Description + 2);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_226165A38(unsigned __int8 *a1)
{
  v3 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v3[-1].Description;
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v6, *v1 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v3);
  LOBYTE(a1) = static MapsIntelligenceClientSignalType.== infix(_:_:)(v6, a1);
  (Description[1])(v6, v3);
  return a1 & 1;
}

double sub_226165B3C@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v5[-1].Description;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Description[2](v8, *v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v5);
  v10 = static MapsIntelligenceClientSignalType.== infix(_:_:)(v8, a1);
  (Description[1])(v8, v5);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    sub_226150DB0(v9 + v11, a2, &qword_27D78CEE0, &unk_226170C20);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_226165CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v5 = type metadata accessor for MapsIntelligenceClientSignalType();
  v6 = *(v5[-1].Description + 2);

  return v6(a1, v3 + v4, v5);
}

void sub_226165D38()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v3, &qword_27D78CEE0, &unk_226170C20);
  if (v4)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      [v2 doubleValue];
    }
  }

  else
  {
    sub_22614E1F4(v3, &qword_27D78CEE0, &unk_226170C20);
  }
}

uint64_t MapsIntelligenceDoubleSignal.init(_:expiration:)(uint64_t a1, double a2)
{
  v21 = a1;
  v5 = sub_22616F758();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10 + 16;
  v12 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v12[-1].Description;
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  Description[13](v15, 1, v12);
  sub_226150DB0(a1, v11, &qword_27D78CFE8, "6)");
  v16 = (v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
  (*(v6 + 56))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v5);
  Description[2]((v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type), v15, v12);
  sub_22616F748();
  (Description[1])(v15, v12);
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v8, v5);
  swift_beginAccess();
  sub_226157F18(v11, v2 + v17, &qword_27D78CFE8, "6)");
  swift_endAccess();
  v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);

  v19 = [v18 initWithDouble_];
  v22[3] = sub_22614C5C0();
  v22[0] = v19;
  sub_22614E1F4(v21, &qword_27D78CFE8, "6)");
  swift_beginAccess();
  sub_226157F18(v22, v16, &qword_27D78CEE0, &unk_226170C20);
  swift_endAccess();

  return v2;
}

uint64_t sub_226166168()
{
  v6 = 0;
  v7 = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CEE0, &unk_226170C20);
  if (v5)
  {
    sub_22614C5C0();
    if (swift_dynamicCast())
    {
      [v3 doubleValue];
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CEE0, &unk_226170C20);
  }

  sub_22616FA18();
  return v6;
}

uint64_t _s16MapsIntelligence0aB10BaseSignalCfd_0()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value, &qword_27D78CEE0, &unk_226170C20);
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate;
  v4 = sub_22616F758();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, &qword_27D78CFE8, "6)");
  return v0;
}

uint64_t _s16MapsIntelligence0aB10BaseSignalCfD_0()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type;
  v2 = type metadata accessor for MapsIntelligenceClientSignalType();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value, &qword_27D78CEE0, &unk_226170C20);
  v3 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate;
  v4 = sub_22616F758();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22614E1F4(v0 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, &qword_27D78CFE8, "6)");

  return swift_deallocClassInstance();
}

uint64_t sub_226166490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  type metadata accessor for MapsIntelligenceDoubleSignal(0);
  v6 = swift_allocObject();
  result = MapsIntelligenceDoubleSignal.init(_:expiration:)(a1, a3);
  *a2 = v6;
  return result;
}

uint64_t MapsIntelligenceStringSignal.init(_:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v6 = sub_22616F758();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v13[-1].Description;
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    Description[13](v16, 2, v13);
    sub_226150DB0(a3, v12, &qword_27D78CFE8, "6)");
    v20 = a2;
    v21 = a3;
    v17 = (v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v17 = 0u;
    v17[1] = 0u;
    v18 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    (*(v7 + 56))(v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v6);
    Description[2]((v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type), v16, v13);
    sub_22616F748();
    (Description[1])(v16, v13);
    (*(v7 + 32))(v3 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v9, v6);
    swift_beginAccess();
    sub_226157F18(v12, v3 + v18, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v23[3] = MEMORY[0x277D837D0];
    v23[0] = v22;
    v23[1] = v20;

    sub_22614E1F4(v21, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(v23, v17, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();
  }

  else
  {
    sub_22614E1F4(a3, &qword_27D78CFE8, "6)");
    type metadata accessor for MapsIntelligenceStringSignal(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_226166920()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CEE0, &unk_226170C20);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CEE0, &unk_226170C20);
    return 0;
  }
}

unint64_t sub_226166A10()
{
  result = qword_28136CFF8[0];
  if (!qword_28136CFF8[0])
  {
    type metadata accessor for MapsIntelligenceDoubleSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136CFF8);
  }

  return result;
}

uint64_t sub_226166AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226166AE8(uint64_t a1)
{
  type metadata accessor for MapsIntelligenceClientSignalType();
  if (v1 <= 0x3F)
  {
    sub_22616F758();
    if (v2 <= 0x3F)
    {
      sub_226166CD4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_226166CD4(uint64_t a1)
{
  if (!qword_28136D460)
  {
    sub_22616F758();
    v1 = sub_22616FAD8();
    if (!v2)
    {
      atomic_store(v1, &qword_28136D460);
    }
  }
}

id sub_226166E2C()
{
  v1 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__model;
  swift_beginAccess();
  sub_226150DB0(v0 + v1, v4, &qword_27D78CF88, &unk_226170B00);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F0, &unk_226171148);
    type metadata accessor for MapsIntelligenceTrialModel(0);
    if (swift_dynamicCast())
    {

      v2 = sub_22615A83C();

      return v2;
    }
  }

  else
  {
    sub_22614E1F4(v4, &qword_27D78CF88, &unk_226170B00);
  }

  return 0;
}

uint64_t sub_226166F14(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = sub_22616F858();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for AutocompleteRankerRequest();
  v2[30] = v4;
  v2[31] = v4[-1].Description;
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F8, &qword_226171158);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226167080, 0, 0);
}

uint64_t sub_226167080()
{
  v1 = *(v0 + 208);
  v3 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource);
  v2 = *(v1 + OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__signalResource + 8);

  v4 = sub_226163020(v3, v2);

  v5 = OBJC_IVAR____TtC16MapsIntelligence33MapsIntelligenceSearchRankManager__autocompleteRanker;
  swift_beginAccess();
  sub_226150DB0(v1 + v5, v0 + 56, &qword_27D78D108, &qword_226171160);
  if (*(v0 + 80))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 256);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    sub_22614B9FC((v0 + 56), v0 + 16);
    v10 = type metadata accessor for AutocompleteRankerResponse();
    *(v0 + 288) = v10;
    Description = v10[-1].Description;
    *(v0 + 296) = Description;
    v12 = Description[7];
    *(v0 + 304) = v12;
    *(v0 + 312) = (Description + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    v13 = [v8 serializedData];
    v14 = sub_22616F728();
    v16 = v15;

    AutocompleteRankerRequest.init(serializedRequest:)(v14, v16, v7);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    *(v0 + 120) = type metadata accessor for MapsIntelligenceSearchRankManager();
    *(v0 + 128) = sub_2261686C8(&qword_27D78D110, v19, type metadata accessor for MapsIntelligenceSearchRankManager, &protocol conformance descriptor for MapsIntelligenceSearchRankManager);
    *(v0 + 96) = v9;
    if (v4)
    {
      v20 = type metadata accessor for MapsIntelligenceSignalPack();
      v21 = sub_2261686C8(&qword_27D78D120, 255, type metadata accessor for MapsIntelligenceSignalPack, &protocol conformance descriptor for MapsIntelligenceSignalPack);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
    }

    *(v0 + 320) = v4;
    v33 = *(v0 + 208);
    *(v0 + 136) = v4;
    *(v0 + 160) = v20;
    *(v0 + 168) = v21;
    v34 = v33;

    v35 = swift_task_alloc();
    *(v0 + 328) = v35;
    *v35 = v0;
    v35[1] = sub_22616746C;
    v36 = *(v0 + 272);
    v37 = *(v0 + 256);

    return dispatch thunk of AutocompleteRanker.rank(requestData:manager:signals:)(v36, v37, v0 + 96, v0 + 136, v17, v18);
  }

  else
  {
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 216);
    sub_22614E1F4(v0 + 56, &qword_27D78D108, &qword_226171160);
    sub_22616F848();
    v25 = sub_22616F838();
    v27 = v26;
    result = (*(v23 + 8))(v22, v24);
    if (v27 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v29 = objc_allocWithZone(MEMORY[0x277D0EB90]);
      v30 = sub_22616F718();
      v31 = [v29 initWithSerializedResponseData_];

      sub_226168620(v25, v27);

      v32 = *(v0 + 8);

      return v32(v31);
    }
  }

  return result;
}

uint64_t sub_22616746C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2261677A0;
  }

  else
  {
    sub_22614E1F4(v2 + 136, &qword_27D78D118, &qword_226171168);
    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    v3 = sub_2261675A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2261675A0()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  sub_22614E1F4(v4, &qword_27D78D0F8, &qword_226171158);
  v1(v5, 0, 1, v2);
  sub_226168658(v5, v4);
  sub_226150DB0(v4, v6, &qword_27D78D0F8, &qword_226171158);
  result = (*(v3 + 48))(v6, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[36];
    v8 = v0[37];
    v21 = v0[35];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[30];
    v13 = v0[31];
    v14 = AutocompleteRankerResponse.serializedResponse.getter();
    v16 = v15;
    (*(v8 + 8))(v10, v9);
    v17 = objc_allocWithZone(MEMORY[0x277D0EB90]);
    v18 = sub_22616F718();
    v19 = [v17 initWithSerializedResponseData_];

    sub_226163834(v14, v16);

    (*(v13 + 8))(v11, v12);
    sub_22614E1F4(v21, &qword_27D78D0F8, &qword_226171158);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v20 = v0[1];

    return v20(v19);
  }

  return result;
}

uint64_t sub_2261677A0()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  sub_22614E1F4(v1, &qword_27D78D0F8, &qword_226171158);
  sub_22614E1F4((v0 + 17), &qword_27D78D118, &qword_226171168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2261678AC(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_226151E50(a1, v1);

  return v3;
}

void *MapsIntelligenceSearchRankManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = v1 + OBJC_IVAR____TtC16MapsIntelligence33MapsIntelligenceSearchRankManager__autocompleteRanker;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = swift_allocObject();
  v8 = sub_22616F9F8();
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v7 + 16) = 0u;
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v6;

  v10 = v6;
  sub_226167FD8(0, 0, v4, &unk_226171180, v9);

  sub_22616FAA8();
  swift_beginAccess();
  sub_226150DB0(v7 + 16, &v27, &qword_27D78D108, &qword_226171160);
  if (v28)
  {
    sub_22614B9FC(&v27, &v29);
    sub_22614E190(&v29, &v27);
    swift_beginAccess();
    sub_2261688C4(&v27, v5);
    swift_endAccess();
    v12 = *(&v30 + 1);
    v11 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    LODWORD(v12) = dispatch thunk of ModuleProviding.projectId()(v12, *(v11 + 8));
    v14 = *(&v30 + 1);
    v13 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v15 = dispatch thunk of ModuleProviding.namespace()(v14, *(v13 + 8));
    v17 = v16;
    v19 = *(&v30 + 1);
    v18 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    v20 = dispatch thunk of ModuleProviding.modelFactor()(v19, *(v18 + 8));
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    LOBYTE(v27) = 0;
    v23 = MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(v12, v15, v17, v20, v22, &v29, 0xD000000000000019, 0x8000000226172310);
    v24 = v23;

    if (v23)
    {
    }
  }

  else
  {

    sub_22614E1F4(&v27, &qword_27D78D108, &qword_226171160);

    sub_22614E1F4(v5, &qword_27D78D108, &qword_226171160);
    type metadata accessor for MapsIntelligenceSearchRankManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v23;
}

uint64_t sub_226167C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for ModuleType();
  v5[17] = v6;
  v5[18] = v6[-1].Description;
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226167D1C, 0, 0);
}

uint64_t sub_226167D1C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  type metadata accessor for ModuleRegistry(0);
  v4 = swift_allocObject();
  v0[20] = v4;
  swift_defaultActor_initialize();
  sub_22616F778();
  *(v4 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles) = 0;
  (*(v2 + 104))(v1, 0, v3);

  return MEMORY[0x2822009F8](sub_226167E24, v4, 0);
}

uint64_t sub_226167E24()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  sub_22614EAF0(v1, (v0 + 7));
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_226167EB8, 0, 0);
}

uint64_t sub_226167EB8()
{
  if (*(v0 + 80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D130, &qword_226171220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D138, qword_226171228);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }
  }

  else
  {
    sub_22614E1F4(v0 + 56, &qword_27D78CF08, &qword_226170A10);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_2261688C4(v0 + 16, v1 + 16);
  sub_22616FAB8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226167FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_226150DB0(a3, v25 - v10, &qword_27D78D128, &qword_226171170);
  v12 = sub_22616F9F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22614E1F4(v11, &qword_27D78D128, &qword_226171170);
  }

  else
  {
    sub_22616F9E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22616F9D8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22616F888() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22614E1F4(a3, &qword_27D78D128, &qword_226171170);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22614E1F4(a3, &qword_27D78D128, &qword_226171170);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id MapsIntelligenceSearchRankManager.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsIntelligenceSearchRankManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2261683A4(uint64_t a1)
{
  v3 = *v1;
  swift_getObjectType();
  v4 = sub_226151E50(a1, v3);

  return v4;
}

uint64_t sub_226168430(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226168528;

  return v6(a1);
}

uint64_t sub_226168528()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226168620(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226163834(result, a2);
  }

  return result;
}

uint64_t sub_226168658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D0F8, &qword_226171158);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2261686C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226168710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2261687D0;

  return sub_226167C5C(a1, v4, v5, v7, v6);
}

uint64_t sub_2261687D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2261688C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D108, &qword_226171160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of MapsIntelligenceSearchRankManager.rank(requestData:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226168AC0;

  return v7(a1);
}

uint64_t sub_226168AC0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_226168C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226168D7C;

  return sub_226168430(a1, v4);
}

uint64_t sub_226168CC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2261687D0;

  return sub_226168430(a1, v4);
}

uint64_t dispatch thunk of MIFAutocompleteRanker.rank(_:useClientEchoRanker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226168AC0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_226168EE0()
{
  if (qword_27D78CE78 != -1)
  {
    swift_once();
  }

  v1 = sub_22616F788();
  __swift_project_value_buffer(v1, qword_27D78DCC8);
  v2 = sub_22616F768();
  v3 = sub_22616FA78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22614A000, v2, v3, "Framework ranker is being called, no ranking logic implemented. Response will be empty.", v4, 2u);
    MEMORY[0x22AA77C50](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  AutocompleteRankerResponse.init(serializedResponse:)(0, 0xC000000000000000, v5);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_226169034()
{
  result = qword_28136C4D8[0];
  if (!qword_28136C4D8[0])
  {
    type metadata accessor for MIFPersonalizedAutocompleteRankerModule();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136C4D8);
  }

  return result;
}

uint64_t sub_226169088@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ModuleType();
  v3 = *(v2[-1].Description + 13);

  return v3(a1, 0, v2);
}

uint64_t sub_226169124(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2261687D0;

  return sub_226168EC0(a1);
}

void *MapsIntelligenceTransportModePredictionManager.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D128, &qword_226171170);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3];
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor) = 0;
  *(v1 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers) = 0;
  v5 = OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore;
  *(v1 + v5) = dispatch_semaphore_create(1);
  v6 = dispatch_semaphore_create(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = sub_22616F9F8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v6;

  v10 = v6;
  sub_226167FD8(0, 0, v4, &unk_226171300, v9);

  sub_22616FAA8();
  swift_beginAccess();
  v11 = *(v7 + 16);
  if (v11)
  {
    v12 = type metadata accessor for MapsIntelligenceHandWrittenTMPModel();
    v13 = swift_allocObject();
    v24[3] = v12;
    v24[4] = &off_283959120;
    v24[0] = v13;

    v23[12] = 0;
    v14 = MapsIntelligenceBaseManager.init(trialProjectId:trialNamespaceName:modelFactor:defaultModel:signalResource:)(325, 0xD000000000000010, 0x8000000226171C50, 0xD000000000000012, 0x8000000226171C30, v24, 0xD000000000000017, 0x8000000226172470);
    if (v14)
    {
      *&v14[OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor] = v11;
      v15 = v14;

      v16 = v15;

      v17 = sub_22616AAE8();

      *&v16[OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers] = v17;

      return v15;
    }
  }

  else
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v19 = sub_22616F788();
    __swift_project_value_buffer(v19, qword_28136D4B8);
    v20 = sub_22616F768();
    v21 = sub_22616FA98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22614A000, v20, v21, "Unable to load TransportModePredictonModule", v22, 2u);
      MEMORY[0x22AA77C50](v22, -1, -1);
    }

    type metadata accessor for MapsIntelligenceTransportModePredictionManager();
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t sub_2261695A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for ModuleType();
  v5[13] = v6;
  v5[14] = v6[-1].Description;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226169660, 0, 0);
}

uint64_t sub_226169660()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  type metadata accessor for ModuleRegistry(0);
  v4 = swift_allocObject();
  v0[16] = v4;
  swift_defaultActor_initialize();
  sub_22616F778();
  *(v4 + OBJC_IVAR____TtC16MapsIntelligence14ModuleRegistry____lazy_storage___availableModuleBundles) = 0;
  (*(v2 + 104))(v1, 1, v3);

  return MEMORY[0x2822009F8](sub_226169768, v4, 0);
}

uint64_t sub_226169768()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  sub_22614EAF0(v1, (v0 + 2));
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2261697FC, 0, 0);
}

uint64_t sub_2261697FC()
{
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D130, &qword_226171220);
    type metadata accessor for MIFTransportModePredictonModule();
    if (swift_dynamicCast())
    {
      v1 = v0[10];
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    sub_22614E1F4((v0 + 2), &qword_27D78CF08, &qword_226170A10);
    v1 = 0;
  }

  v2 = v0[11];
  swift_beginAccess();
  *(v2 + 16) = v1;

  sub_22616FAB8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22616990C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2261687D0;

  return sub_2261695A0(a1, v4, v5, v7, v6);
}

uint64_t sub_2261699CC()
{
  sub_226151694();
  sub_22616FAA8();
  *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers) = sub_22616AAE8();

  return sub_22616FAB8();
}

__CFString *sub_226169A34(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  *&v64 = 0x6570795470614DLL;
  *(&v64 + 1) = 0xE700000000000000;
  v19 = [a1 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (!v19)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_22616FB28();
  swift_unknownObjectRelease();
  sub_22614C5B0(v63, &v64);
  swift_dynamicCast();
  v21 = v62;
  if (!*(v8 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor))
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v27 = sub_22616F788();
    __swift_project_value_buffer(v27, qword_28136D4B8);
    v28 = sub_22616F768();
    v29 = sub_22616FA98();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22614A000, v28, v29, "No module loaded, Falling back to default model", v30, 2u);
      MEMORY[0x22AA77C50](v30, -1, -1);
    }

    return sub_22616A234(v21, a4, a5, a6, a7);
  }

  *&v64 = 0;

  sub_22616F7A8();
  result = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v22 = _s16MapsIntelligence0aB10SignalPackC10dictionaryACSDySSSdG_tcfC_0(v64);
  v23 = sub_22616F758();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = type metadata accessor for MapsIntelligenceStringSignal(0);
  swift_allocObject();

  v25 = MapsIntelligenceStringSignal.init(_:expiration:)(a2, a3, v18);
  v26 = v25;
  if (v25)
  {
    v25 = sub_22616DDA4(qword_28136CE90, type metadata accessor for MapsIntelligenceStringSignal);
  }

  else
  {
    v24 = 0;
    *(&v64 + 1) = 0;
    v65 = 0;
  }

  *&v64 = v26;
  v66 = v24;
  v67 = v25;
  sub_226150DB0(&v64, v63, &qword_27D78CFB0, &unk_226170C10);
  swift_beginAccess();
  sub_226154920(v63, 0x34687361486F6547, 0xE800000000000000);
  swift_endAccess();
  sub_22614E1F4(&v64, &qword_27D78CFB0, &unk_226170C10);
  sub_226154ED8();
  sub_22616BF80(v22);
  sub_226154ED8();
  sub_22616FAA8();
  v32 = *(v8 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformers);

  sub_22616FAB8();

  sub_226153DCC(v32, v22, v8);
  v31 = v33;
  v35 = v34;

  if ((v31 & 0x100000000) != 0)
  {
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v44 = sub_22616F788();
    __swift_project_value_buffer(v44, qword_28136D4B8);
    v45 = sub_22616F768();
    v46 = sub_22616FA98();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22614A000, v45, v46, "Prediction failed, trying default model", v47, 2u);
      MEMORY[0x22AA77C50](v47, -1, -1);
    }

    v31 = sub_22616A234(v21, a4, a5, a6, a7);

    return v31;
  }

  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v36 = sub_22616F788();
  __swift_project_value_buffer(v36, qword_28136D4B8);
  v37 = v35;
  v38 = sub_22616F768();
  v39 = sub_22616FA78();

  v61 = v38;
  if (!os_log_type_enabled(v38, v39))
  {

    return v31;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *&v64 = v42;
  *v40 = 136315394;
  v60 = v39;
  v58 = v41;
  v59 = v42;
  if (v31 > 2)
  {
    if (v31 <= 4)
    {
      if (v31 == 3)
      {
        v43 = @"BICYCLE";
      }

      else
      {
        v43 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_38;
    }

    if (v31 == 5)
    {
      v43 = @"FERRY";
      goto LABEL_38;
    }

    if (v31 == 6)
    {
      v43 = @"RIDESHARE";
      goto LABEL_38;
    }

LABEL_34:
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v31];
    goto LABEL_39;
  }

  if (!v31)
  {
    v43 = @"AUTOMOBILE";
    goto LABEL_38;
  }

  if (v31 == 1)
  {
    v43 = @"TRANSIT";
    goto LABEL_38;
  }

  if (v31 != 2)
  {
    goto LABEL_34;
  }

  v43 = @"WALKING";
LABEL_38:
  v48 = v43;
LABEL_39:
  result = v43;
  if (result)
  {
    v49 = result;
    v50 = sub_22616F828();
    v52 = v51;

    v53 = sub_2261555F8(v50, v52, &v64);

    *(v40 + 4) = v53;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    v54 = v58;
    *v58 = v35;
    v55 = v37;
    v56 = v61;
    _os_log_impl(&dword_22614A000, v61, v60, "Predicted %s with :%@", v40, 0x16u);
    sub_22614E1F4(v54, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v54, -1, -1);
    v57 = v59;
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x22AA77C50](v57, -1, -1);
    MEMORY[0x22AA77C50](v40, -1, -1);

    return v31;
  }

LABEL_44:
  __break(1u);
  return result;
}

__CFString *sub_22616A234(int a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_22616DDF8(a1, a2, a3, a4, a5);
  v7 = OBJC_IVAR____TtC16MapsIntelligence27MapsIntelligenceBaseManager__defaultModel;
  swift_beginAccess();
  sub_226150DB0(v5 + v7, &v32, &qword_27D78CF88, &unk_226170B00);
  if (v33)
  {
    sub_22614B9FC(&v32, v34);
    v8 = v35;
    v9 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = (*(v9 + 8))(v6, v8, v9);
    v11 = v35;
    v12 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v13 = (*(v12 + 16))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_22614E1F4(&v32, &qword_27D78CF88, &unk_226170B00);
    v10 = 0;
    v13 = 0;
  }

  v14 = sub_22616BE00(v10);
  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v15 = sub_22616F788();
  __swift_project_value_buffer(v15, qword_28136D4B8);
  v16 = v13;
  v17 = sub_22616F768();
  v18 = sub_22616FA78();

  if (!os_log_type_enabled(v17, v18))
  {

LABEL_27:
    swift_unknownObjectRelease();
    return v14;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34[0] = v21;
  *v19 = 136315394;
  v31 = v21;
  if (v14 > 2)
  {
    if (v14 <= 4)
    {
      if (v14 == 3)
      {
        v22 = @"BICYCLE";
      }

      else
      {
        v22 = @"UNKNOWN_TRANSPORT_TYPE";
      }

      goto LABEL_24;
    }

    if (v14 == 5)
    {
      v22 = @"FERRY";
      goto LABEL_24;
    }

    if (v14 == 6)
    {
      v22 = @"RIDESHARE";
      goto LABEL_24;
    }

LABEL_20:
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v14];
    goto LABEL_25;
  }

  if (!v14)
  {
    v22 = @"AUTOMOBILE";
    goto LABEL_24;
  }

  if (v14 == 1)
  {
    v22 = @"TRANSIT";
    goto LABEL_24;
  }

  if (v14 != 2)
  {
    goto LABEL_20;
  }

  v22 = @"WALKING";
LABEL_24:
  v23 = v22;
LABEL_25:
  result = v22;
  if (result)
  {
    v25 = result;
    v26 = sub_22616F828();
    v28 = v27;

    v29 = sub_2261555F8(v26, v28, v34);

    *(v19 + 4) = v29;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v16;
    *v20 = v13;
    v30 = v16;
    _os_log_impl(&dword_22614A000, v17, v18, "Predicted %s with :%@", v19, 0x16u);
    sub_22614E1F4(v20, &qword_27D78D0E8, &qword_226170F70);
    MEMORY[0x22AA77C50](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x22AA77C50](v31, -1, -1);
    MEMORY[0x22AA77C50](v19, -1, -1);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void *sub_22616A5F8(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = sub_22616F6F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22616F678();
  v8 = sub_22616F708();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v11 = objc_opt_self();
  v12 = sub_22616F718();
  *&v33 = 0;
  v13 = [v11 JSONObjectWithData:v12 options:0 error:&v33];

  if (!v13)
  {
    v20 = v33;
    v21 = sub_22616F658();

    swift_willThrow();
    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v22 = sub_22616F788();
    __swift_project_value_buffer(v22, qword_28136D4B8);
    v23 = v21;
    v24 = sub_22616F768();
    v25 = sub_22616FA98();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&dword_22614A000, v24, v25, "Error parsing JSON: %@", v26, 0xCu);
      sub_22614E1F4(v27, &qword_27D78D0E8, &qword_226170F70);
      MEMORY[0x22AA77C50](v27, -1, -1);
      MEMORY[0x22AA77C50](v26, -1, -1);
      sub_226163834(v8, v10);
    }

    else
    {
      sub_226163834(v8, v10);
    }

    return 0;
  }

  v14 = v33;
  sub_22616FB28();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D160, &unk_226171358);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_226163834(v8, v10);
    return 0;
  }

  v15 = *(*&v36[0] + 16);
  if (!v15)
  {
    sub_226163834(v8, v10);
LABEL_25:

    return 0;
  }

  v31 = v8;
  v32 = v10;
  v6 = MEMORY[0x277D84F90];
  v16 = 32;
  do
  {

    sub_22616AD28(v17, &v33);

    if (v34)
    {
      sub_22614C5B0(&v33, v36);
      sub_22614D234(v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D168, &qword_226171368);
      swift_dynamicCast();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22616B594(0, v6[2] + 1, 1, v6);
      }

      v19 = v6[2];
      v18 = v6[3];
      if (v19 >= v18 >> 1)
      {
        v6 = sub_22616B594((v18 > 1), v19 + 1, 1, v6);
      }

      __swift_destroy_boxed_opaque_existential_1(v36);
      v6[2] = v19 + 1;
      sub_22614B9FC(&v33, &v6[5 * v19 + 4]);
    }

    else
    {
      sub_22614E1F4(&v33, &qword_27D78CEE0, &unk_226170C20);
    }

    v16 += 8;
    --v15;
  }

  while (v15);
  sub_226163834(v31, v32);

  if (!v6[2])
  {
    goto LABEL_25;
  }

  return v6;
}

void *sub_22616AAE8()
{
  if (*(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__predictor))
  {
    v1 = objc_opt_self();

    v2 = [v1 clientWithIdentifier_];
    v3 = sub_22616F7F8();
    v4 = sub_22616F7F8();
    v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

    v6 = [v5 fileValue];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 path];
      if (v8)
      {
        v9 = v8;
        v10 = sub_22616F828();
        v12 = v11;

        v13 = sub_22616A5F8(v10, v12);

        return v13;
      }
    }

    if (qword_28136C3E0 != -1)
    {
      swift_once();
    }

    v15 = sub_22616F788();
    __swift_project_value_buffer(v15, qword_28136D4B8);
    v16 = sub_22616F768();
    v17 = sub_22616FA98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22614A000, v16, v17, "Unable to find transformer file path", v18, 2u);
      MEMORY[0x22AA77C50](v18, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_22616AD28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v3 = result;
    result = sub_226155B2C(0x726F66736E617274, 0xEB0000000072656DLL);
    if (v4)
    {
      sub_22614D234(*(v3 + 56) + 32 * result, v14);
      sub_22614C5B0(v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D158, &qword_226171350);
      swift_dynamicCast();
      if (*(v13 + 16) && (v5 = sub_226155B2C(1701869940, 0xE400000000000000), (v6 & 1) != 0))
      {
        sub_22614D234(*(v13 + 56) + 32 * v5, v15);

        result = swift_dynamicCast();
        if (result)
        {
          v7 = v14[0];
          if (v14[0] == __PAIR128__(0xE800000000000000, 0x7572687473736170) || (sub_22616FC68() & 1) != 0)
          {

            v8 = type metadata accessor for MapsIntelligencePassThruTransformer(0);
            swift_allocObject();

            result = sub_22614C76C(v9);
            if (result)
            {
LABEL_9:
              *(a2 + 24) = v8;
              *a2 = result;
              return result;
            }

            goto LABEL_11;
          }

          if (v7 != __PAIR128__(0xE500000000000000, 0x686374616DLL) && (sub_22616FC68() & 1) == 0)
          {
            if (v7 == __PAIR128__(0xE600000000000000, 0x70756B6F6F6CLL))
            {
            }

            else
            {
              v11 = sub_22616FC68();

              if ((v11 & 1) == 0)
              {
                goto LABEL_11;
              }
            }

            v8 = type metadata accessor for MapsIntelligenceFileLookupTransformer(0);
            swift_allocObject();

            result = sub_22615FDAC(v12);
            if (result)
            {
              goto LABEL_9;
            }

            goto LABEL_11;
          }

          result = sub_22614DDD8(v3);
          if (result)
          {
            v10 = result;
            result = type metadata accessor for MapsIntelligenceBaseTransformer(0);
            *(a2 + 24) = result;
            *a2 = v10;
            return result;
          }
        }
      }

      else
      {
      }

LABEL_11:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22616AFDC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MapsIntelligence46MapsIntelligenceTransportModePredictionManager__transformersSemaphore);
}

id MapsIntelligenceTransportModePredictionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsIntelligenceTransportModePredictionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22616B0BC()
{
  v0 = sub_22616F788();
  __swift_allocate_value_buffer(v0, qword_28136D4B8);
  __swift_project_value_buffer(v0, qword_28136D4B8);
  return sub_22616F778();
}

char *sub_22616B160(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D178, &qword_226171378);
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

void *sub_22616B26C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D188, &unk_226171390);
  Description = type metadata accessor for ModuleType()[-1].Description;
  v11 = Description[9];
  v12 = (*(Description + 80) + 32) & ~*(Description + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = type metadata accessor for ModuleType()[-1].Description;
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + v15[9] * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_22616B444(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D180, &unk_226171380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CF48, &qword_226170A58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22616B594(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D170, &qword_226171370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D168, &qword_226171368);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_22616B6DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_226155B2C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22614FDFC();
      v10 = v12;
    }

    sub_22614B9FC((*(v10 + 56) + 40 * v8), a3);
    sub_22616B788(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22616B788(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22616FB38() + 1) & ~v5;
    do
    {
      sub_22616FCB8();

      sub_22616F8B8();
      v11 = sub_22616FCD8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22616B944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22616FB38() + 1) & ~v5;
    do
    {
      sub_22616FCB8();

      sub_22616F8B8();
      v9 = sub_22616FCD8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22616BAF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_226155B2C(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_22614B9FC(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_22614FDFC();
    goto LABEL_7;
  }

  sub_226150400(v20, a4 & 1);
  v26 = sub_226155B2C(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22616FC98();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_22616BD28(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t sub_22616BD28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_22614B9FC(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

unint64_t sub_22616BE00(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v2 = sub_22616F7F8();
    v3 = [a1 featureValueForName_];

    if (v3)
    {
      result = sub_22614D5C0([v3 int64Value]);
      if (result == 4)
      {
        __break(1u);
      }

      else
      {
        v5 = result;
        swift_unknownObjectRelease();

        return dword_2261713A0[v5];
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_28136C3E0 != -1)
  {
    swift_once();
  }

  v6 = sub_22616F788();
  __swift_project_value_buffer(v6, qword_28136D4B8);
  v7 = sub_22616F768();
  v8 = sub_22616FA98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22614A000, v7, v8, "Prediction failed, falling back to unknown transport type", v9, 2u);
    MEMORY[0x22AA77C50](v9, -1, -1);
  }

  return 4;
}

void sub_22616BF80(uint64_t a1)
{
  v187 = sub_22616F758();
  v2 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v184 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for MapsIntelligenceClientSignalType();
  Description = v183[-1].Description;
  MEMORY[0x28223BE20](v183);
  v182 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CFE8, "6)");
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v181 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v194 = &v164 - v9;
  type metadata accessor for MapsIntelligenceSignalPack();
  v10 = swift_allocObject();
  v11 = sub_226159E2C(MEMORY[0x277D84F90]);
  v169 = v10;
  *(v10 + 16) = v11;
  v12 = v10 + 16;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v188 = 0x8000000226172580;
  v171 = 0x80000002261725C0;
  v172 = 0x80000002261725A0;
  v170 = 0x80000002261725E0;
  v167 = 0x8000000226172620;
  v168 = 0x8000000226172600;
  v165 = 0x8000000226172660;
  v166 = 0x8000000226172640;
  v164 = 0x8000000226172680;
  v186 = (v2 + 56);
  v179 = 1;
  v177 = (Description + 16);
  v178 = (Description + 104);
  v175 = (v2 + 32);
  v176 = (Description + 8);
  v174 = v13;

  v19 = 0;
  v173 = v12;
  v185 = v18;
  v180 = v14;
  while (v17)
  {
    v20 = v19;
LABEL_13:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = v23 | (v20 << 6);
    v25 = (*(v174 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_22614E190(*(v174 + 56) + 40 * v24, &v202);
    *&v205 = v27;
    *(&v205 + 1) = v26;
    sub_22614B9FC(&v202, &v206);

LABEL_14:
    v209 = v205;
    v210[0] = v206;
    v210[1] = v207;
    v211 = v208;
    v28 = *(&v205 + 1);
    if (!*(&v205 + 1))
    {

      return;
    }

    v29 = v209;
    sub_22614B9FC(v210, &v205);
    v195 = v28;
    v192 = v17;
    v193 = v19;
    if ((v29 != 0xD000000000000016 || v188 != v28) && (sub_22616FC68() & 1) == 0 && (v29 != 0xD00000000000001FLL || v172 != v28) && (sub_22616FC68() & 1) == 0 && (v29 != 0xD000000000000018 || v171 != v28))
    {
      v61 = sub_22616FC68();
      v62 = v29 == 0xD000000000000016 && v170 == v28;
      v63 = v62;
      if ((v61 & 1) == 0 && !v63 && (sub_22616FC68() & 1) == 0 && (v29 != 0xD00000000000001DLL || v168 != v28) && (sub_22616FC68() & 1) == 0)
      {
        if (v29 != 0xD000000000000019 || v167 != v28)
        {
          v69 = sub_22616FC68();
          v70 = v29 == 0xD000000000000019 && v166 == v28;
          v71 = v70;
          if ((v69 & 1) == 0 && !v71 && (sub_22616FC68() & 1) == 0)
          {
            if (v29 == 0xD000000000000010 && v165 == v28 || (sub_22616FC68() & 1) != 0)
            {
              sub_22614E190(&v205, &v202);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
              v190 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
              swift_dynamicCast();
              v72 = v200;
              v73 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
              swift_beginAccess();
              v191 = v72;
              sub_226150DB0(v72 + v73, &v202, &qword_27D78CEE0, &unk_226170C20);
              if (v203)
              {
                sub_22614C5C0();
                if (swift_dynamicCast())
                {
                  v74 = v200;
                  [v200 doubleValue];
                  v76 = v75;

                  goto LABEL_98;
                }
              }

              else
              {
                sub_22614E1F4(&v202, &qword_27D78CEE0, &unk_226170C20);
              }

              v76 = 0.0;
LABEL_98:
              v93 = v76 / 1800.0;
              if (COERCE__INT64(fabs(v76 / 1800.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_178;
              }

              if (v93 <= -9.22337204e18)
              {
                goto LABEL_179;
              }

              if (v93 >= 9.22337204e18)
              {
                goto LABEL_180;
              }

              v94 = v93 * 1800.0 / 3600.0;
              v95 = v194;
              (*v186)(v194, 1, 1, v187);
              v96 = v190;
              swift_allocObject();
              v97 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v95, v94);
              v203 = v96;
              v204 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
              *&v202 = v97;
              v98 = HIBYTE(v195) & 0xF;
              if ((v195 & 0x2000000000000000) == 0)
              {
                v98 = v29 & 0xFFFFFFFFFFFFLL;
              }

              if (!v98)
              {
LABEL_134:

                __swift_destroy_boxed_opaque_existential_1(&v205);
                goto LABEL_48;
              }

              sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
              v99 = v173;
              swift_beginAccess();
              v189 = v97;
              if (v201)
              {
                sub_22614B9FC(&v200, v197);

                v100 = v195;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v196 = *v99;
                v102 = v198;
                v103 = v199;
                v104 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
                v190 = &v164;
                MEMORY[0x28223BE20](v104);
                v106 = v17;
                v107 = &v164 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v108 + 16))(v107);
                v109 = v107;
                v17 = v106;
                v110 = v103;
                v18 = v185;
                sub_22616BAF4(v109, v29, v100, isUniquelyReferenced_nonNull_native, &v196, v102, v110);
                __swift_destroy_boxed_opaque_existential_1(v197);

                v19 = v193;
                *v99 = v196;
              }

              else
              {

                v117 = v195;

                sub_22614E1F4(&v200, &qword_27D78CFB0, &unk_226170C10);
                sub_22616B6DC(v29, v117, v197);

                sub_22614E1F4(v197, &qword_27D78CFB0, &unk_226170C10);
              }

LABEL_136:
              swift_endAccess();

LABEL_47:

              __swift_destroy_boxed_opaque_existential_1(&v205);
              goto LABEL_48;
            }

            if ((v29 != 0x664F65636E616843 || v28 != 0xEC000000776F6E53) && (sub_22616FC68() & 1) == 0 && (v29 != 0xD000000000000015 || v164 != v28))
            {
              v138 = sub_22616FC68();
              v139 = v29 == 0x664F65636E616843 && v28 == 0xEC0000006E696152;
              v140 = v139;
              if ((v138 & 1) == 0 && !v140 && (sub_22616FC68() & 1) == 0)
              {
                v141 = v29;
                if (v29 == 0x74617265706D6554 && v28 == 0xEB00000000657275 || (sub_22616FC68() & 1) != 0)
                {
                  sub_22614E190(&v205, &v202);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
                  v142 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
                  swift_dynamicCast();
                  v143 = v200;
                  v144 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
                  swift_beginAccess();
                  sub_226150DB0(v143 + v144, &v202, &qword_27D78CEE0, &unk_226170C20);
                  if (v203)
                  {
                    sub_22614C5C0();
                    if (swift_dynamicCast())
                    {
                      v145 = v200;
                      [v200 doubleValue];
                      v147 = v146;

LABEL_154:
                      if ((~*&v147 & 0x7FF0000000000000) != 0 || (*&v147 & 0xFFFFFFFFFFFFFLL) == 0)
                      {
                        v148 = v147 - fmod(v147, 5.0);
                      }

                      else
                      {
                        v148 = NAN;
                      }

                      v149 = v194;
                      (*v186)(v194, 1, 1, v187);
                      swift_allocObject();
                      v150 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v149, v148);
                      v203 = v142;
                      v204 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
                      *&v202 = v150;
                      v151 = HIBYTE(v195) & 0xF;
                      if ((v195 & 0x2000000000000000) == 0)
                      {
                        v151 = v29 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v151)
                      {
                        sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
                        swift_beginAccess();
                        v152 = v195;

                        sub_226154920(&v200, v141, v152);
                        swift_endAccess();
                      }

                      else
                      {
                      }

                      __swift_destroy_boxed_opaque_existential_1(&v205);
                      sub_22614E1F4(&v202, &qword_27D78CFB0, &unk_226170C10);
LABEL_172:
                      v18 = v185;
                      v17 = v192;
                      v19 = v193;
                      continue;
                    }
                  }

                  else
                  {
                    sub_22614E1F4(&v202, &qword_27D78CEE0, &unk_226170C20);
                  }

                  v147 = 0.0;
                  goto LABEL_154;
                }

                sub_22614E190(&v205, &v202);
                v153 = HIBYTE(v28) & 0xF;
                if ((v28 & 0x2000000000000000) == 0)
                {
                  v153 = v29 & 0xFFFFFFFFFFFFLL;
                }

                if (v153)
                {
                  sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
                  swift_beginAccess();
                  if (v201)
                  {
                    sub_22614B9FC(&v200, v197);
                    v154 = v195;

                    v155 = v173;
                    v156 = swift_isUniquelyReferenced_nonNull_native();
                    v196 = *v155;
                    v157 = v198;
                    v158 = v199;
                    v159 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
                    MEMORY[0x28223BE20](v159);
                    v161 = &v164 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v162 + 16))(v161);
                    sub_22616BAF4(v161, v141, v154, v156, &v196, v157, v158);
                    __swift_destroy_boxed_opaque_existential_1(v197);

                    *v155 = v196;
                  }

                  else
                  {
                    v163 = v195;

                    sub_22614E1F4(&v200, &qword_27D78CFB0, &unk_226170C10);
                    sub_22616B6DC(v29, v163, v197);

                    sub_22614E1F4(v197, &qword_27D78CFB0, &unk_226170C10);
                  }

                  swift_endAccess();
                }

                sub_22614E1F4(&v202, &qword_27D78CFB0, &unk_226170C10);
                __swift_destroy_boxed_opaque_existential_1(&v205);
                goto LABEL_172;
              }
            }

            sub_22614E190(&v205, &v202);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
            v111 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
            swift_dynamicCast();
            v112 = v200;
            v113 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
            swift_beginAccess();
            sub_226150DB0(v112 + v113, &v202, &qword_27D78CEE0, &unk_226170C20);
            if (v203)
            {
              sub_22614C5C0();
              if (swift_dynamicCast())
              {
                v114 = v200;
                [v200 doubleValue];
                v116 = v115;

                goto LABEL_117;
              }
            }

            else
            {
              sub_22614E1F4(&v202, &qword_27D78CEE0, &unk_226170C20);
            }

            v116 = 0.0;
LABEL_117:
            v191 = v112;
            if ((~*&v116 & 0x7FF0000000000000) != 0 || (*&v116 & 0xFFFFFFFFFFFFFLL) == 0)
            {
              v118 = 0.0;
              if (v116 >= 25.0)
              {
                v118 = 25.0;
                if (v116 >= 50.0)
                {
                  v118 = 50.0;
                  if (v116 >= 75.0)
                  {
                    if (v116 >= 100.0 || v116 < 75.0)
                    {
                      v118 = 100.0;
                    }

                    else
                    {
                      v118 = 75.0;
                    }
                  }
                }
              }
            }

            else
            {
              v118 = NAN;
            }

            v120 = v194;
            (*v186)(v194, 1, 1, v187);
            swift_allocObject();
            v121 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v120, v118);
            v203 = v111;
            v204 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
            *&v202 = v121;
            v122 = HIBYTE(v195) & 0xF;
            if ((v195 & 0x2000000000000000) == 0)
            {
              v122 = v29 & 0xFFFFFFFFFFFFLL;
            }

            if (!v122)
            {
              goto LABEL_134;
            }

            v123 = v121;
            sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
            v124 = v173;
            swift_beginAccess();
            v190 = v123;
            if (v201)
            {
              sub_22614B9FC(&v200, v197);
              v125 = v195;

              v126 = v124;
              v127 = swift_isUniquelyReferenced_nonNull_native();
              v196 = *v126;
              v128 = v198;
              v129 = v199;
              v130 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
              v189 = &v164;
              MEMORY[0x28223BE20](v130);
              v132 = v17;
              v133 = &v164 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v134 + 16))(v133);
              v135 = v133;
              v17 = v132;
              v136 = v129;
              v18 = v185;
              sub_22616BAF4(v135, v29, v125, v127, &v196, v128, v136);
              __swift_destroy_boxed_opaque_existential_1(v197);

              v19 = v193;
              *v126 = v196;
            }

            else
            {
              v137 = v195;

              sub_22614E1F4(&v200, &qword_27D78CFB0, &unk_226170C10);
              sub_22616B6DC(v29, v137, v197);

              sub_22614E1F4(v197, &qword_27D78CFB0, &unk_226170C10);
            }

            goto LABEL_136;
          }
        }

        sub_22614E190(&v205, &v202);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
        v190 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
        swift_dynamicCast();
        v64 = v200;
        v65 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
        swift_beginAccess();
        v191 = v64;
        sub_226150DB0(v64 + v65, &v202, &qword_27D78CEE0, &unk_226170C20);
        if (v203)
        {
          sub_22614C5C0();
          if (swift_dynamicCast())
          {
            v66 = v200;
            [v200 doubleValue];
            v68 = v67;

            goto LABEL_86;
          }
        }

        else
        {
          sub_22614E1F4(&v202, &qword_27D78CEE0, &unk_226170C20);
        }

        v68 = 0.0;
LABEL_86:
        v77 = v68 / 60.0;
        if (COERCE__INT64(fabs(v68 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_175;
        }

        if (v77 <= -9.22337204e18)
        {
          goto LABEL_176;
        }

        if (v77 >= 9.22337204e18)
        {
          goto LABEL_177;
        }

        v78 = v77 * 60.0 / 3600.0;
        v79 = v194;
        (*v186)(v194, 1, 1, v187);
        v80 = v190;
        swift_allocObject();
        v81 = MapsIntelligenceDoubleSignal.init(_:expiration:)(v79, v78);
        v203 = v80;
        v204 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
        *&v202 = v81;
        v82 = HIBYTE(v195) & 0xF;
        if ((v195 & 0x2000000000000000) == 0)
        {
          v82 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {
          goto LABEL_134;
        }

        sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
        v83 = v173;
        swift_beginAccess();
        if (v201)
        {
          sub_22614B9FC(&v200, v197);

          LODWORD(v190) = swift_isUniquelyReferenced_nonNull_native();
          v196 = *v83;
          v84 = v198;
          v85 = v199;
          v86 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
          MEMORY[0x28223BE20](v86);
          v88 = v17;
          v89 = &v164 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v90 + 16))(v89);
          v91 = v89;
          v17 = v88;
          v92 = v85;
          v18 = v185;
          sub_22616BAF4(v91, v29, v195, v190, &v196, v84, v92);
          __swift_destroy_boxed_opaque_existential_1(v197);
          v19 = v193;
          *v83 = v196;
        }

        else
        {

          sub_22614E1F4(&v200, &qword_27D78CFB0, &unk_226170C10);
          sub_22616B6DC(v29, v195, v197);
          sub_22614E1F4(v197, &qword_27D78CFB0, &unk_226170C10);
        }

        swift_endAccess();

LABEL_46:

        goto LABEL_47;
      }
    }

    v30 = v29;
    sub_22614E190(&v205, &v202);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78CEF0, &qword_226170C40);
    v31 = type metadata accessor for MapsIntelligenceDoubleSignal(0);
    swift_dynamicCast();
    v32 = v200;
    v33 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value;
    swift_beginAccess();
    v190 = v32;
    sub_226150DB0(v32 + v33, &v202, &qword_27D78CEE0, &unk_226170C20);
    if (v203)
    {
      sub_22614C5C0();
      if (swift_dynamicCast())
      {
        v34 = v200;
        [v200 doubleValue];
        v36 = v35;

        goto LABEL_28;
      }
    }

    else
    {
      sub_22614E1F4(&v202, &qword_27D78CEE0, &unk_226170C20);
    }

    v36 = 0.0;
LABEL_28:
    v191 = v30;
    if ((~*&v36 & 0x7FF0000000000000) != 0 || (v37 = 0.0, (*&v36 & 0xFFFFFFFFFFFFFLL) == 0))
    {
      if (v36 < 0.0 || (v37 = 1.0, v36 >= 500.0))
      {
        if (v36 >= 4000.0 || v36 < 500.0)
        {
          v37 = 3.0;
        }

        else
        {
          v37 = 2.0;
        }
      }
    }

    v39 = v187;
    v40 = *v186;
    v41 = v194;
    (*v186)(v194, 1, 1, v187);
    v189 = v31;
    v42 = swift_allocObject();
    v43 = v182;
    v44 = v183;
    (*v178)(v182, v179, v183);
    v45 = v181;
    sub_226150DB0(v41, v181, &qword_27D78CFE8, "6)");
    v46 = (v42 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_value);
    *v46 = 0u;
    v46[1] = 0u;
    v47 = OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate;
    v40(v42 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_expirationDate, 1, 1, v39);
    (*v177)(v42 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal__type, v43, v44);
    v48 = v184;
    sub_22616F748();
    (*v176)(v43, v44);
    (*v175)(v42 + OBJC_IVAR____TtC16MapsIntelligence26MapsIntelligenceBaseSignal_creationDate, v48, v39);
    swift_beginAccess();
    sub_226157F18(v45, v42 + v47, &qword_27D78CFE8, "6)");
    swift_endAccess();
    v49 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v50 = [v49 initWithDouble_];
    v203 = sub_22614C5C0();
    *&v202 = v50;
    sub_22614E1F4(v194, &qword_27D78CFE8, "6)");
    swift_beginAccess();
    sub_226157F18(&v202, v46, &qword_27D78CEE0, &unk_226170C20);
    swift_endAccess();

    v203 = v189;
    v204 = sub_22616DDA4(qword_28136CFF8, type metadata accessor for MapsIntelligenceDoubleSignal);
    *&v202 = v42;
    v51 = HIBYTE(v195) & 0xF;
    v52 = v191;
    if ((v195 & 0x2000000000000000) == 0)
    {
      v51 = v191 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      sub_226150DB0(&v202, &v200, &qword_27D78CFB0, &unk_226170C10);
      v53 = v173;
      swift_beginAccess();
      if (v201)
      {
        sub_22614B9FC(&v200, v197);

        v54 = swift_isUniquelyReferenced_nonNull_native();
        v196 = *v53;
        v55 = v198;
        v56 = v199;
        v57 = __swift_mutable_project_boxed_opaque_existential_1(v197, v198);
        MEMORY[0x28223BE20](v57);
        v59 = &v164 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v60 + 16))(v59);
        sub_22616BAF4(v59, v52, v195, v54, &v196, v55, v56);
        __swift_destroy_boxed_opaque_existential_1(v197);
        *v53 = v196;
      }

      else
      {

        sub_22614E1F4(&v200, &qword_27D78CFB0, &unk_226170C10);
        sub_22616B6DC(v52, v195, v197);
        sub_22614E1F4(v197, &qword_27D78CFB0, &unk_226170C10);
      }

      v14 = v180;
      v18 = v185;
      v17 = v192;
      v19 = v193;
      swift_endAccess();

      goto LABEL_46;
    }

    __swift_destroy_boxed_opaque_existential_1(&v205);
    v14 = v180;
    v18 = v185;
    v17 = v192;
    v19 = v193;
LABEL_48:
    sub_22614E1F4(&v202, &qword_27D78CFB0, &unk_226170C10);
  }

  if (v18 <= v19 + 1)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 - 1;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {
      v17 = 0;
      v208 = 0;
      v206 = 0u;
      v207 = 0u;
      v19 = v22;
      v205 = 0u;
      goto LABEL_14;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

uint64_t sub_22616DDA4(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_22616DDF8(int a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for MapsIntelligenceFeatureProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84FA0];
  *(v10 + 24) = sub_22615A090(MEMORY[0x277D84F90]);
  v11 = objc_opt_self();
  v12 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v10 + 24);
  sub_2261589A4(v13, 0x614C6E696769724FLL, 0xEE00656475746974, isUniquelyReferenced_nonNull_native);
  *(v10 + 24) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v28, 0x614C6E696769724FLL, 0xEE00656475746974);
  swift_endAccess();

  v15 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v16 = v15;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v10 + 24);
  sub_2261589A4(v16, 0x6F4C6E696769724FLL, 0xEF6564757469676ELL, v17);
  *(v10 + 24) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v28, 0x6F4C6E696769724FLL, 0xEF6564757469676ELL);
  swift_endAccess();

  v18 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v10 + 24);
  sub_2261589A4(v19, 0xD000000000000013, 0x80000002261726A0, v20);
  *(v10 + 24) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v28, 0xD000000000000013, 0x80000002261726A0);
  swift_endAccess();

  v21 = [v11 featureValueWithDouble_];
  swift_beginAccess();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v10 + 24);
  sub_2261589A4(v22, 0xD000000000000014, 0x80000002261726C0, v23);
  *(v10 + 24) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v28, 0xD000000000000014, 0x80000002261726C0);
  swift_endAccess();

  v24 = [v11 featureValueWithInt64_];
  swift_beginAccess();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v10 + 24);
  sub_2261589A4(v25, 0x6570795470614DLL, 0xE700000000000000, v26);
  *(v10 + 24) = v28;
  swift_endAccess();
  swift_beginAccess();
  sub_226158CC0(&v28, 0x6570795470614DLL, 0xE700000000000000);
  swift_endAccess();

  return v10;
}

id sub_22616E2D4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v1 = sub_22616F7F8();
  v2 = sub_22616F7F8();
  [v0 setValue:v1 forKey:v2];

  return v0;
}

id sub_22616E364(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22616F798();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22616F658();

    swift_willThrow();
  }

  return v3;
}

void sub_22616E44C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D190, &qword_2261713E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226170920;
  strcpy((inited + 32), "transportType");
  *(inited + 46) = -4864;
  v3 = objc_opt_self();
  v4 = [v3 featureValueWithInt64_];
  v5 = sub_22616E8B0();
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  v6 = sub_226159F60(inited);
  swift_setDeallocating();
  sub_22616E8FC(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v32 = sub_22616E364(v6);
  v8 = sub_22616F7F8();
  v9 = [a1 featureValueForName_];

  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
    v12 = sub_22616F7F8();
    v13 = [a1 featureValueForName_];

    if (!v13)
    {
LABEL_9:

      return;
    }

    [v13 doubleValue];
    v15 = v14;
    v16 = sub_22616F7F8();
    v17 = [a1 featureValueForName_];

    if (!v17)
    {

      return;
    }

    [v17 doubleValue];
    v19 = v18;
    v20 = sub_22616F7F8();
    v21 = [a1 featureValueForName_];

    if (v21)
    {
      [v21 doubleValue];
      v23 = v22;
      v24 = sub_22616F7F8();
      v25 = [a1 featureValueForName_];

      if (!v25)
      {
        v26 = 0;
LABEL_14:
        v27 = [objc_opt_self() idealTransportTypeForOrigin:v26 destination:v11 mapType:{v15, v19, v23}];
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_226170920;
        *(v28 + 32) = 0xD000000000000016;
        *(v28 + 40) = 0x8000000226171CA0;
        v29 = [v3 featureValueWithInt64_];
        *(v28 + 72) = v5;
        *(v28 + 48) = v29;
        v30 = sub_226159F60(v28);
        swift_setDeallocating();
        sub_22616E8FC(v28 + 32);
        v31 = objc_allocWithZone(MEMORY[0x277CBFED0]);
        sub_22616E364(v30);

        return;
      }

      v26 = [v25 int64Value];

      if (v26 >= 0xFFFFFFFF80000000)
      {
        if (v26 > 0x7FFFFFFF)
        {
          __break(1u);
          goto LABEL_9;
        }

        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

unint64_t sub_22616E8B0()
{
  result = qword_28136C398;
  if (!qword_28136C398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136C398);
  }

  return result;
}

uint64_t sub_22616E8FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78D058, &unk_2261713F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutocompleteRankerRequest.serializedRequest.getter()
{
  v1 = *v0;
  sub_22616E998(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_22616E998(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t AutocompleteRankerRequest.init(serializedRequest:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22616EA70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22616EAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t dispatch thunk of AutocompleteRanker.rank(requestData:manager:signals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2261687D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t MapsIntelligenceClientSignalType.hashValue.getter()
{
  v1 = *v0;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v1);
  return sub_22616FCD8();
}

uint64_t sub_22616ED18()
{
  v1 = *v0;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v1);
  return sub_22616FCD8();
}

uint64_t sub_22616ED8C(uint64_t a1)
{
  v2 = *v1;
  sub_22616FCB8();
  MEMORY[0x22AA77650](v2);
  return sub_22616FCD8();
}

uint64_t getEnumTagSinglePayload for MapsIntelligenceClientSignalType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsIntelligenceClientSignalType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

MapsIntelligenceClientInterface::ModuleType_optional __swiftcall ModuleType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22616FC28();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t ModuleType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_22616F0E4()
{
  result = qword_28136C3B0;
  if (!qword_28136C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136C3B0);
  }

  return result;
}

uint64_t sub_22616F138()
{
  sub_22616FCB8();
  sub_22616F8B8();

  return sub_22616FCD8();
}

uint64_t sub_22616F1B8(uint64_t a1)
{
  sub_22616F8B8();
}

uint64_t sub_22616F224(uint64_t a1)
{
  sub_22616FCB8();
  sub_22616F8B8();

  return sub_22616FCD8();
}

uint64_t sub_22616F2A0@<X0>(char *a2@<X8>)
{
  v3 = sub_22616FC28();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22616F300(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "autocompleteRanking";
  }

  else
  {
    v3 = "lligenceHandWrittenTMPModel";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_22616F344()
{
  result = qword_27D78D198;
  if (!qword_27D78D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D78D1A0, &qword_226171738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78D198);
  }

  return result;
}

uint64_t sub_22616F3B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "lligenceHandWrittenTMPModel";
  }

  else
  {
    v4 = "autocompleteRanking";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "autocompleteRanking";
  }

  else
  {
    v7 = "lligenceHandWrittenTMPModel";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22616FC68();
  }

  return v9 & 1;
}

uint64_t getEnumTagSinglePayload for ModuleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModuleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}