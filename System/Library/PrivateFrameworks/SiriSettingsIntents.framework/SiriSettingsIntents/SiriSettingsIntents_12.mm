uint64_t sub_268E5918C(uint64_t a1)
{
  v23 = a1;
  v35 = 0;
  v34 = 0;
  v36 = 0;
  v17 = 0;
  v18 = sub_268F99C24();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v22 = &v14[-v21];
  v36 = &v14[-v21];
  v32 = sub_268F99C34();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v25 = *(v30 + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v23, v32, v5);
  v26 = &v14[-v24];
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v14[-v24], v6, v7, v8);
  v33 = &v14[-v27];
  v35 = v10;
  v34 = v1;
  v28 = *(v30 + 16);
  v29 = v30 + 16;
  v28(v9);
  if ((*(v30 + 88))(v33, v32) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v11 = v22;
  (v28)(v26, v33, v32);
  (*(v30 + 96))(v26, v32);
  (*(v19 + 32))(v11, v26, v18);
  v16 = type metadata accessor for ToggleBinarySetting();
  v12 = sub_268D90E70();
  if ((sub_268F39FF8(v16, v16, v12) & 1) == 0)
  {
    (*(v19 + 8))(v22, v18);
LABEL_5:
    (*(v30 + 8))(v33, v32);
    v15 = 0;
    return v15 & 1;
  }

  v36 = v22;
  (*(v19 + 8))();
  (*(v30 + 8))(v33, v32);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_268E594F4(uint64_t a1)
{
  v23 = a1;
  v35 = 0;
  v34 = 0;
  v36 = 0;
  v17 = 0;
  v18 = sub_268F99C24();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v22 = &v14[-v21];
  v36 = &v14[-v21];
  v32 = sub_268F99C34();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v25 = *(v30 + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v23, v32, v5);
  v26 = &v14[-v24];
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v14[-v24], v6, v7, v8);
  v33 = &v14[-v27];
  v35 = v10;
  v34 = v1;
  v28 = *(v30 + 16);
  v29 = v30 + 16;
  v28(v9);
  if ((*(v30 + 88))(v33, v32) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v11 = v22;
  (v28)(v26, v33, v32);
  (*(v30 + 96))(v26, v32);
  (*(v19 + 32))(v11, v26, v18);
  v16 = type metadata accessor for UndoBinarySetting();
  v12 = sub_268D90EF0();
  if ((sub_268F39FF8(v16, v16, v12) & 1) == 0)
  {
    (*(v19 + 8))(v22, v18);
LABEL_5:
    (*(v30 + 8))(v33, v32);
    v15 = 0;
    return v15 & 1;
  }

  v36 = v22;
  (*(v19 + 8))();
  (*(v30 + 8))(v33, v32);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_268E5985C(uint64_t a1)
{
  v23 = a1;
  v35 = 0;
  v34 = 0;
  v36 = 0;
  v17 = 0;
  v18 = sub_268F99C24();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v22 = &v14[-v21];
  v36 = &v14[-v21];
  v32 = sub_268F99C34();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v25 = *(v30 + 64);
  v24 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v23, v32, v5);
  v26 = &v14[-v24];
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](&v14[-v24], v6, v7, v8);
  v33 = &v14[-v27];
  v35 = v10;
  v34 = v1;
  v28 = *(v30 + 16);
  v29 = v30 + 16;
  v28(v9);
  if ((*(v30 + 88))(v33, v32) != *MEMORY[0x277D5C150])
  {
    goto LABEL_5;
  }

  v11 = v22;
  (v28)(v26, v33, v32);
  (*(v30 + 96))(v26, v32);
  (*(v19 + 32))(v11, v26, v18);
  v16 = type metadata accessor for UndoNumericSetting();
  v12 = sub_268D90F70();
  if ((sub_268F39FF8(v16, v16, v12) & 1) == 0)
  {
    (*(v19 + 8))(v22, v18);
LABEL_5:
    (*(v30 + 8))(v33, v32);
    v15 = 0;
    return v15 & 1;
  }

  v36 = v22;
  (*(v19 + 8))();
  (*(v30 + 8))(v33, v32);
  v15 = 1;
  return v15 & 1;
}

id sub_268E59BC4(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v106 = a2;
  v80 = "Unable to convert uso intent to SiriKit intent: %@ Error: %@";
  v81 = &dword_268CBE000;
  v82 = "Unable to convert NLV3 intent to SiriKit intent: %@";
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v123 = 0;
  v83 = 0;
  v116 = 0;
  v122 = 0;
  v112 = 0;
  v96 = 0;
  v84 = sub_268F99CB4();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v88 = &v49 - v87;
  v89 = sub_268F99C64();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96, v6, v7, v8);
  v93 = &v49 - v92;
  v94 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v49 - v92, v11, v12);
  v95 = &v49 - v94;
  v123 = &v49 - v94;
  v97 = sub_268F9A704();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96, v13, v14, v15);
  v101 = &v49 - v100;
  v102 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, &v49 - v100, v18, v19);
  v103 = &v49 - v102;
  v122 = &v49 - v102;
  v109 = sub_268F99C34();
  v107 = *(v109 - 8);
  v108 = v109 - 8;
  v105 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = MEMORY[0x28223BE20](v109, v104, v109, v20);
  v110 = &v49 - v105;
  v121 = v22;
  v120 = v106;
  v119 = v2;
  (*(v107 + 16))(v21);
  v111 = (*(v107 + 88))(v110, v109);
  if (v111 == *MEMORY[0x277D5C128])
  {
    (*(v107 + 96))(v110, v109);
    (*(v98 + 32))(v103, v110, v97);
    v122 = v103;
    v78 = v114;
    sub_268CDE730(v106, v114);
    v77 = &v113;
    sub_268D8E52C(&v113);
    v79 = sub_268DA7690(v103, v78, v77);
    sub_268D28414(v77);
    sub_268D28414(v78);
    if (v79)
    {
      v76 = v79;
      v74 = v79;
      v112 = v79;
      (*(v98 + 8))(v103, v97);
      return v74;
    }

    else
    {
      v73 = *sub_268DC8EFC();
      MEMORY[0x277D82BE0](v73);
      v71 = sub_268F9B294();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v70 = sub_268F9B734();
      v68 = v23;
      (*(v98 + 16))(v101, v103, v97);
      sub_268DA7B0C();
      v66 = sub_268F9AE74();
      v67 = v24;
      v68[3] = MEMORY[0x277D837D0];
      v25 = sub_268CDD224();
      v26 = v66;
      v27 = v67;
      v28 = v68;
      v68[4] = v25;
      *v28 = v26;
      v28[1] = v27;
      sub_268CD0F7C();
      v72 = v29;
      sub_268F9AC04(v82, 51, 2, v81, v73, v71);

      v30 = MEMORY[0x277D82BD8](v73);
      (*(v98 + 8))(v103, v97, v30);
      return v96;
    }
  }

  else if (v111 == *MEMORY[0x277D5C160])
  {
    v31 = v83;
    v32 = v95;
    (*(v107 + 96))(v110, v109);
    (*(v90 + 32))(v32, v110, v89);
    v123 = v32;
    sub_268F99C54();
    v62 = &v118;
    sub_268CDE730(v106, &v118);
    v63 = &v117;
    sub_268D8E52C(&v117);
    v64 = sub_268E17680(v88, v62, v63);
    v65 = v31;
    if (v31)
    {
      v60 = v65;
      sub_268D28414(&v117);
      sub_268D28414(&v118);
      (*(v85 + 8))(v88, v84);
      v34 = v60;
      v116 = v60;
      v59 = *sub_268DC8EFC();
      MEMORY[0x277D82BE0](v59);
      v57 = sub_268F9B294();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v55 = sub_268F9B734();
      v54 = v35;
      (*(v90 + 16))(v93, v95, v89);
      v49 = sub_268F9AE64();
      v50 = v36;
      v52 = MEMORY[0x277D837D0];
      v54[3] = MEMORY[0x277D837D0];
      v37 = sub_268CDD224();
      v38 = v49;
      v39 = v50;
      v40 = v54;
      v41 = v37;
      v42 = v60;
      v53 = v41;
      v54[4] = v41;
      *v40 = v38;
      v40[1] = v39;
      v43 = v42;
      v51 = &v115;
      v115 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v44 = sub_268F9AE64();
      v45 = v53;
      v46 = v54;
      v54[8] = v52;
      v46[9] = v45;
      v46[5] = v44;
      v46[6] = v47;
      sub_268CD0F7C();
      v58 = v48;
      sub_268F9AC04(v80, 60, 2, v81, v59, v57);

      MEMORY[0x277D82BD8](v59);

      (*(v90 + 8))(v95, v89);
      return v96;
    }

    else
    {
      v61 = v64;
      sub_268D28414(&v117);
      sub_268D28414(&v118);
      (*(v85 + 8))(v88, v84);
      (*(v90 + 8))(v95, v89);
      return v61;
    }
  }

  else
  {
    (*(v107 + 8))(v110, v109);
    return v96;
  }
}

unint64_t sub_268E5A844()
{
  v2 = qword_280FE5BE8;
  if (!qword_280FE5BE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5A8BC()
{
  v2 = qword_2802DD710;
  if (!qword_2802DD710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD710);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268E5A920()
{
  v2 = qword_2802DD718;
  if (!qword_2802DD718)
  {
    type metadata accessor for UndoNumericSettingFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5A9A0()
{
  v2 = qword_2802DD728;
  if (!qword_2802DD728)
  {
    type metadata accessor for UndoBinarySettingFlow(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E5AA20()
{
  v2 = qword_2802DD730;
  if (!qword_2802DD730)
  {
    type metadata accessor for ToggleBinarySettingDIFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD730);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E5AAA0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ClarityUIFlow();
  v5 = sub_268CDA260();
  a1[3] = v3;
  v1 = sub_268E5AB10();
  result = v5;
  a1[4] = v1;
  *a1 = v5;
  return result;
}

unint64_t sub_268E5AB10()
{
  v2 = qword_2802DD738;
  if (!qword_2802DD738)
  {
    type metadata accessor for ClarityUIFlow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD738);
    return WitnessTable;
  }

  return v2;
}

id sub_268E5ACA8(uint64_t a1, void *a2)
{
  v14 = a1;
  v13 = a2;
  sub_268E42694(&v12);
  if (v12 == 65)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = BinarySettingIdentifier.rawValue.getter();
    v8 = v2;
  }

  v5 = sub_268F284EC(v7, v8, a2, 0, 0);

  has_malloc_size = _swift_stdlib_has_malloc_size();
  v11 = sub_268F28680(a1, has_malloc_size & 1);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v5 labeledValue:0 temporalEventTrigger:v11];
  MEMORY[0x277D82BE0](v6);
  v15 = v6;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v5);
  sub_268D28414(a2);
  sub_268D87800(a1);
  MEMORY[0x277D82BD8](v15);
  return v6;
}

uint64_t sub_268E5AE2C()
{
  type metadata accessor for SetSoundAnalysisHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14E8 = result;
  return result;
}

uint64_t *sub_268E5AE94()
{
  if (qword_2802DB6C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14E8;
}

uint64_t sub_268E5AEF4()
{
  v1 = *sub_268E5AE94();

  return v1;
}

uint64_t sub_268E5AF24(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetSoundAnalysisHandler handling intent", 39);

  MEMORY[0x277D82BD8](v7);
  v8 = sub_268F9B294();
  v3 = sub_268DC7AE8();
  v9 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "Set sound Analysis mode currently is not supported", 50, 2);

  MEMORY[0x277D82BD8](v9);

  v10 = sub_268E948B8(17);
  v12 = sub_268DAB158(0, v10, v4);

  a2(v12);
  MEMORY[0x277D82BD8](v12);
}

uint64_t sub_268E5B124@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v96 = "#ReferenceResolution toRREntity failed to recognize setting ID as BinarySettingIdentifier or NumericSettingIdentifier";
  v97 = sub_268E5BFF4;
  v98 = sub_268CD7608;
  v99 = sub_268CD7600;
  v100 = sub_268CD7600;
  v101 = sub_268CD7614;
  v102 = "#ReferenceResolution INSettingMetadata.toRREntity error creating RREntity";
  v134 = 0;
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v126 = 0;
  v103 = 0;
  v125 = 0;
  v104 = 0;
  v105 = sub_268F99F64();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v2, v3, v4);
  v109 = &v33 - v108;
  v134 = v1;
  sub_268F9A494();
  v110 = sub_268F9A484();
  v133 = v110;
  v113 = 0x1FB9C5000uLL;
  v112 = [v114 0x1FB9C58F5];
  sub_268F9AE24();
  v111 = v5;
  sub_268F9A474();

  *&v6 = MEMORY[0x277D82BD8](v112).n128_u64[0];
  v115 = [v114 (v113 + 2293)];
  v7._countAndFlagsBits = sub_268F9AE24();
  BinarySettingIdentifier.init(rawValue:)(v7);
  *&v8 = MEMORY[0x277D82BD8](v115).n128_u64[0];
  v129 = v130;
  v94 = v130 != 65;
  if (v130 == 65)
  {
    v93 = [v114 settingId];
    v9._countAndFlagsBits = sub_268F9AE24();
    NumericSettingIdentifier.init(rawValue:)(v9);
    MEMORY[0x277D82BD8](v93);
    v127 = v128;
    v92 = v128 != 13;
    if (v128 == 13)
    {
      v88 = sub_268F9B294();
      v90 = *sub_268DC842C();
      MEMORY[0x277D82BE0](v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v91 = 0;
      v89 = sub_268F9B734();
      sub_268F9AC14(v88, &dword_268CBE000, v90, v96, 117, 2);

      MEMORY[0x277D82BD8](v90);
      v10 = sub_268F9ACE4();
      (*(*(v10 - 8) + 56))(v95, 1);
    }
  }

  v131 = sub_268F9AEF4();
  v132 = v12;
  v87 = sub_268F9A464();
  if (v87)
  {
    v86 = v87;
    v81 = v87;
    v82 = [v114 settingId];
    v83 = sub_268F9AE24();
    v84 = v13;
    v85 = [v114 targetApp];
    if (v85)
    {
      v80 = v85;
      v78 = v85;
      v79 = [v85 bundleIdentifier];
      if (v79)
      {
        v77 = v79;
        v72 = v79;
        v73 = sub_268F9AE24();
        v74 = v14;
        MEMORY[0x277D82BD8](v72);
        v75 = v73;
        v76 = v74;
      }

      else
      {
        v75 = 0;
        v76 = 0;
      }

      v69 = v76;
      v68 = v75;
      MEMORY[0x277D82BD8](v78);
      v70 = v68;
      v71 = v69;
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    v116 = v70;
    v117 = v71;
    if (v71)
    {
      v118 = v116;
      v119 = v117;
    }

    else
    {
      v15 = sub_268DC7C08();
      sub_268D28874(v15, &v118);
      if (v117)
      {
        sub_268CD9D30(&v116);
      }
    }

    v64 = v118;
    v65 = v119;
    v66 = v131;
    v67 = v132;

    sub_268F99F34();
    MEMORY[0x277D82BD8](v82);
    sub_268F99EE4();
    (*(v106 + 8))(v109, v105);
  }

  v63 = MEMORY[0x26D62CE60](v110);
  if (v63)
  {
    v62 = v63;
    v50 = v63;
    v126 = v63;
    v61 = sub_268F9B284();
    v60 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v60);

    v49 = 17;
    v52 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v51 = 32;
    v16 = swift_allocObject();
    v17 = v50;
    v53 = v16;
    *(v16 + 16) = v97;
    *(v16 + 24) = v17;
    v18 = swift_allocObject();
    v19 = v53;
    v57 = v18;
    *(v18 + 16) = v98;
    *(v18 + 24) = v19;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v56 = sub_268F9B734();
    v58 = v20;

    v21 = v54;
    v22 = v58;
    *v58 = v99;
    v22[1] = v21;

    v23 = v55;
    v24 = v58;
    v58[2] = v100;
    v24[3] = v23;

    v25 = v57;
    v26 = v58;
    v58[4] = v101;
    v26[5] = v25;
    sub_268CD0F7C();

    if (os_log_type_enabled(v60, v61))
    {
      v27 = v103;
      v42 = sub_268F9B3A4();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v43 = sub_268CD5448(0, v41, v41);
      v44 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v45 = &v124;
      v124 = v42;
      v46 = &v123;
      v123 = v43;
      v47 = &v122;
      v122 = v44;
      sub_268CD549C(2, &v124);
      sub_268CD549C(1, v45);
      v120 = v99;
      v121 = v54;
      sub_268CD54B0(&v120, v45, v46, v47);
      v48 = v27;
      if (v27)
      {

        __break(1u);
      }

      else
      {
        v120 = v100;
        v121 = v55;
        sub_268CD54B0(&v120, &v124, &v123, &v122);
        v39 = 0;
        v120 = v101;
        v121 = v57;
        sub_268CD54B0(&v120, &v124, &v123, &v122);
        v38 = 0;
        _os_log_impl(&dword_268CBE000, v60, v61, "#ReferenceResolution UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s.", v42, 0xCu);
        sub_268CD54FC(v43, 0, v41);
        sub_268CD54FC(v44, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v40 = v38;
      }
    }

    else
    {
      v28 = v103;

      v40 = v28;
    }

    v29 = v40;
    MEMORY[0x277D82BD8](v60);
    sub_268E5BFFC(v50, v95);
    v37 = v29;
    if (!v29)
    {
      v30 = sub_268F9ACE4();
      (*(*(v30 - 8) + 56))(v95, 0, 1);

      sub_268CD9D30(&v131);
    }

    v36 = v37;

    v32 = v36;
    v125 = v36;
    HIDWORD(v33) = sub_268F9B294();
    v35 = *sub_268DC842C();
    MEMORY[0x277D82BE0](v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v34 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v33), &dword_268CBE000, v35, v102, 73, 2);

    MEMORY[0x277D82BD8](v35);
  }

  v31 = sub_268F9ACE4();
  (*(*(v31 - 8) + 56))(v95, 1);
  sub_268CD9D30(&v131);
}

uint64_t sub_268E5BFAC(uint64_t a1)
{

  sub_268F9A714();
  return sub_268F9AE64();
}

void sub_268E5BFFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v59 = a1;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v68 = 0;
  v62 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD740, &unk_268FA5328) - 8) + 64);
  v61 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60, v2, v3, v4);
  v63 = &v20 - v61;
  v64 = v61;
  v8 = MEMORY[0x28223BE20](v5, &v20 - v61, v6, v7);
  v65 = &v20 - v64;
  v70 = v9;
  v69 = v10;
  v66 = [v10 targetApp];
  if (v66)
  {
    v56 = v66;
    v54 = v66;
    v55 = [v66 bundleIdentifier];
    if (v55)
    {
      v53 = v55;
      v48 = v55;
      v49 = sub_268F9AE24();
      v50 = v12;
      MEMORY[0x277D82BD8](v48);
      v51 = v49;
      v52 = v50;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v45 = v52;
    v44 = v51;
    *&v11 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    v46 = v44;
    v47 = v45;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v42 = v47;
  v43 = v46;
  if (v47)
  {
    v40 = v43;
    v41 = v42;
    v35 = v42;
    v34 = v43;
    v67 = v43;
    v68 = v42;
    v32 = [v60 settingId];
    v37 = sub_268F9AE24();
    v36 = v13;

    MEMORY[0x277D82BE0](v60);
    v33 = 0;
    v14 = sub_268F9AC84();
    (*(*(v14 - 8) + 56))(v65, 1);
    sub_268D291D4();
    v15 = v58;
    sub_268F9ACB4();
    v38 = v15;
    v39 = v15;
    if (v15)
    {
      v21 = v39;
      MEMORY[0x277D82BD8](v32);

      v22 = v21;
    }

    else
    {
      MEMORY[0x277D82BD8](v32);

      v31 = v38;
    }
  }

  else
  {
    v23 = [v60 settingId];
    v28 = sub_268F9AE24();
    v27 = v16;
    v17 = sub_268DC7C08();
    v25 = *v17;
    v26 = v17[1];

    MEMORY[0x277D82BE0](v60);
    v24 = 0;
    v18 = sub_268F9AC84();
    (*(*(v18 - 8) + 56))(v63, 1);
    sub_268D291D4();
    v19 = v58;
    sub_268F9ACB4();
    v29 = v19;
    v30 = v19;
    if (v19)
    {
      v20 = v30;
      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      MEMORY[0x277D82BD8](v23);
      v31 = v29;
    }
  }
}

uint64_t *sub_268E5C568()
{
  if (qword_280FE3E48 != -1)
  {
    swift_once();
  }

  return &qword_280FE8100;
}

uint64_t sub_268E5C5C8()
{
  type metadata accessor for GetAXSwitchControlHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8100 = result;
  return result;
}

uint64_t sub_268E5C630()
{
  v1 = *sub_268E5C568();

  return v1;
}

double sub_268E5C660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXSwitchControlHandler handling intent", 41, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB384();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E5CAE4, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E5C87C(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3F104();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268E5CB48()
{
  type metadata accessor for SetImmersionHandler();
  v1 = sub_268CDC590();
  v2 = sub_268CDD6D4();
  sub_268D58CB4(v3);
  result = sub_268E5CBD8(v1, v2 & 1, v3);
  qword_2802F14F0 = result;
  return result;
}

uint64_t *sub_268E5CC38()
{
  if (qword_2802DB6D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14F0;
}

uint64_t sub_268E5CC98()
{
  v1 = *sub_268E5CC38();

  return v1;
}

uint64_t sub_268E5CD08(uint64_t a1, char a2, void *a3)
{
  v13 = a1;
  v12 = a2 & 1;
  v11 = a3;
  v10 = v3;

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_268CDE730(a3, v9);
  sub_268CDF978(v9, (v3 + 32));
  __swift_destroy_boxed_opaque_existential_0(a3);

  return v8;
}

uint64_t sub_268E5CDA8(uint64_t a1, void (*a2)(void))
{

  v4 = sub_268F70C6C(0, 17);
  a2();
  MEMORY[0x277D82BD8](v4);
}

uint64_t sub_268E5CE3C(uint64_t a1, uint64_t a2, void (*a3)(void), double a4, double a5, double a6)
{

  v13 = sub_268E5CF14(a1, a2, a4, a5, a6);
  a3();
  MEMORY[0x277D82BD8](v13);
}

id sub_268E5CF14(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v89 = a3;
  v68 = a1;
  v71 = a2;
  v69 = a4;
  v70 = a5;
  v65 = "Fatal error";
  v66 = "Unexpectedly found nil while unwrapping an Optional value";
  v67 = "Swift/FloatingPointTypes.swift";
  v114 = 0.0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v87 = 0;
  v99 = sub_268F9B6F4();
  v97 = *(v99 - 8);
  v98 = v99 - 8;
  v85 = *(v97 + 64);
  v72 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v71, v6, v7);
  v73 = &v41 - v72;
  v74 = v72;
  MEMORY[0x28223BE20](v8, v9, &v41 - v72, v10);
  v75 = &v41 - v74;
  v76 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12, &v41 - v74, v13);
  v77 = &v41 - v76;
  v78 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, &v41 - v76, v16);
  v79 = &v41 - v78;
  v80 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18, &v41 - v78, v19);
  v81 = &v41 - v80;
  v82 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v21, &v41 - v80, v22);
  v83 = &v41 - v82;
  v84 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24, &v41 - v82, v25);
  v100 = &v41 - v84;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = MEMORY[0x28223BE20](v26, v27, &v41 - v84, v28);
  v94 = &v41 - v86;
  v114 = v29;
  v113 = v30;
  v112 = v31;
  v111 = v32;
  v110 = v33;
  v109 = v5;
  v88 = sub_268DD26C8();
  v90 = sub_268D34FD4();
  v93 = sub_268E557EC(v89);
  v103 = MEMORY[0x277D84678];
  v34 = *MEMORY[0x277D84678];
  v91 = *(v97 + 104);
  v92 = v97 + 104;
  v91(v94, v34, v99);
  v108 = v93;
  v95 = *(v97 + 16);
  v96 = v97 + 16;
  v95(v100, v94, v99);
  v101 = *(v97 + 88);
  v102 = v97 + 88;
  v104 = v101(v100, v99);
  if (v104 == *v103)
  {
    v108 = round(v93);
    goto LABEL_15;
  }

  if (v104 == *MEMORY[0x277D84670])
  {
    v108 = rint(v93);
    goto LABEL_15;
  }

  if (v104 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v104 != *MEMORY[0x277D84688])
  {
    if (v104 == *MEMORY[0x277D84660])
    {
      v108 = trunc(v93);
      goto LABEL_15;
    }

    if (v104 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      (*(v97 + 8))(v100, v99);
      goto LABEL_15;
    }

    v64 = *&v93 >> 63;
    if (v93 < 0.0)
    {
      if (v64 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_13:
    v108 = ceil(v93);
    goto LABEL_15;
  }

LABEL_14:
  v108 = floor(v93);
LABEL_15:
  v59 = v108;
  v57 = *(v97 + 8);
  v58 = v97 + 8;
  v57(v94, v99);
  v35 = sub_268E3E3B0();
  v60 = sub_268E3E3F0(v35, v71);
  sub_268F9B0F4();
  v61 = sub_268E557EC(v36);
  v62 = MEMORY[0x277D84678];
  v91(v83, *MEMORY[0x277D84678], v99);
  v107 = v61;
  v95(v81, v83, v99);
  v63 = v101(v81, v99);
  if (v63 == *v62)
  {
LABEL_25:
    v107 = round(v61);
    goto LABEL_32;
  }

  if (v63 == *MEMORY[0x277D84670])
  {
    v107 = rint(v61);
    goto LABEL_32;
  }

  if (v63 == *MEMORY[0x277D84680])
  {
    goto LABEL_30;
  }

  if (v63 != *MEMORY[0x277D84688])
  {
    if (v63 == *MEMORY[0x277D84660])
    {
      v107 = trunc(v61);
      goto LABEL_32;
    }

    if (v63 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v57(v81, v99);
      goto LABEL_32;
    }

    v56 = *&v61 >> 63;
    if (v61 < 0.0)
    {
      if (v56 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_31;
    }

LABEL_30:
    v107 = ceil(v61);
    goto LABEL_32;
  }

LABEL_31:
  v107 = floor(v61);
LABEL_32:
  v51 = v107;
  v57(v83, v99);
  v37 = sub_268E3E3B0();
  v52 = sub_268E3E3F0(v37, v71);
  v53 = sub_268E557EC(v69);
  v54 = MEMORY[0x277D84678];
  v91(v79, *MEMORY[0x277D84678], v99);
  v106 = v53;
  v95(v77, v79, v99);
  v55 = v101(v77, v99);
  if (v55 == *v54)
  {
LABEL_42:
    v106 = round(v53);
    goto LABEL_49;
  }

  if (v55 == *MEMORY[0x277D84670])
  {
    v106 = rint(v53);
    goto LABEL_49;
  }

  if (v55 == *MEMORY[0x277D84680])
  {
    goto LABEL_47;
  }

  if (v55 != *MEMORY[0x277D84688])
  {
    if (v55 == *MEMORY[0x277D84660])
    {
      v106 = trunc(v53);
      goto LABEL_49;
    }

    if (v55 != *MEMORY[0x277D84668])
    {
      sub_268F9B114();
      v57(v77, v99);
      goto LABEL_49;
    }

    v50 = *&v53 >> 63;
    if (v53 < 0.0)
    {
      if (v50 != 1)
      {
        sub_268F9B584();
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_48;
    }

LABEL_47:
    v106 = ceil(v53);
    goto LABEL_49;
  }

LABEL_48:
  v106 = floor(v53);
LABEL_49:
  v45 = v106;
  v57(v79, v99);
  v38 = sub_268E3E3B0();
  v46 = sub_268E3E3F0(v38, v71);
  v47 = sub_268E557EC(v70);
  v48 = MEMORY[0x277D84678];
  v91(v75, *MEMORY[0x277D84678], v99);
  v105 = v47;
  v95(v73, v75, v99);
  v49 = v101(v73, v99);
  if (v49 == *v48)
  {
LABEL_59:
    v105 = round(v47);
    goto LABEL_66;
  }

  if (v49 == *MEMORY[0x277D84670])
  {
    v105 = rint(v47);
    goto LABEL_66;
  }

  if (v49 == *MEMORY[0x277D84680])
  {
    goto LABEL_64;
  }

  if (v49 == *MEMORY[0x277D84688])
  {
LABEL_65:
    v105 = floor(v47);
    goto LABEL_66;
  }

  if (v49 == *MEMORY[0x277D84660])
  {
    v105 = trunc(v47);
    goto LABEL_66;
  }

  if (v49 != *MEMORY[0x277D84668])
  {
    sub_268F9B114();
    v57(v73, v99);
LABEL_66:
    v41 = v105;
    v57(v75, v99);
    v39 = sub_268E3E3B0();
    v42 = sub_268E3E3F0(v39, v71);
    v43 = sub_268F72AA8(0, v60, v52, v46, v42);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v60);
    return v43;
  }

  v44 = *&v47 >> 63;
  if (v47 >= 0.0)
  {
LABEL_64:
    v105 = ceil(v47);
    goto LABEL_66;
  }

  if (v44 == 1)
  {
    goto LABEL_65;
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268E5DF34()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v2;
}

uint64_t *sub_268E5DFD8()
{
  if (qword_280FE31A8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8048;
}

uint64_t sub_268E5E038()
{
  type metadata accessor for GetAXClassicInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8048 = result;
  return result;
}

uint64_t sub_268E5E0A0()
{
  v1 = *sub_268E5DFD8();

  return v1;
}

double sub_268E5E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXClassicInvertColorsHandler handling intent", 47, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA8E4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E5E554, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E5E2EC(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EA14();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268E5E5AC()
{
  type metadata accessor for SetBassHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F14F8 = result;
  return result;
}

uint64_t *sub_268E5E614()
{
  if (qword_2802DB6E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F14F8;
}

uint64_t sub_268E5E674()
{
  v1 = *sub_268E5E614();

  return v1;
}

uint64_t sub_268E5E6A4(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v18 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v19 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v18, &dword_268CBE000, v19, "SetBassHandler handling intent", 30, 2);

  MEMORY[0x277D82BD8](v19);
  v4 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v4, &protocol witness table for INSetBinarySettingIntent);
  if (v5)
  {
    v14 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v14 = sub_268F9AE04();
  }

  if (v14)
  {

    MEMORY[0x277D82BE0](a1);
    v13 = swift_allocObject();
    v13[2] = v17;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a1;
    sub_268D47788();
  }

  else
  {
    v9 = sub_268F9B294();
    v6 = sub_268DC7AE8();
    v10 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "Bass Reduce mode is only available on HomePod", 45, 2);

    MEMORY[0x277D82BD8](v10);

    v11 = sub_268E948B8(3);
    v12 = sub_268DAB158(0, v11, v7);

    a2(v12);
    MEMORY[0x277D82BD8](v12);
  }
}

uint64_t sub_268E5EA3C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v18 = a1 == 2;

  if (a1 == 2)
  {

    v17 = sub_268D477AC();

    v24 = v17;
  }

  else
  {
    v24 = a1;
  }

  if (v24 == 2)
  {
    v9 = sub_268F9B294();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "Unable to determine the current bass value", 42, 2);

    MEMORY[0x277D82BD8](v10);

    v11 = sub_268DA9A7C(7, 0);
    a3();
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v5 = sub_268DBDCB4();
    v12 = *v5;
    v13 = v5[1];
    v14 = *(v5 + 16);
    v15 = *(a2 + 24);

    v6 = swift_allocObject();
    *(v6 + 16) = v18;
    *(v6 + 24) = a2;
    v16 = v6;
    sub_268DAAB84(v24 & 1, a5, v12, v13, v14, v15 & 1, a3, a4, sub_268E5EE5C, v6, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E5EE5C, v16);
  }
}

uint64_t sub_268E5ED78(char a1)
{

  sub_268D47920(a1 & 1);
}

double sub_268E5EE90(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v7;
  *v7 = sub_268F9AEF4();
  v24[1] = v8;
  v22 = MEMORY[0x277D839B0];
  v24[5] = MEMORY[0x277D839B0];
  *(v24 + 16) = a1;
  v24[6] = sub_268F9AEF4();
  v24[7] = v9;
  v24[11] = v22;
  *(v24 + 64) = a2;
  v24[12] = sub_268F9AEF4();
  v24[13] = v10;

  if (a3)
  {
    v24[17] = type metadata accessor for SettingsNumericSetting(0);
    v24[14] = a3;
  }

  else
  {
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
    v24[17] = 0;
  }

  v24[18] = sub_268F9AEF4();
  v24[19] = v11;

  if (a4)
  {
    v24[23] = type metadata accessor for SettingsNumericSettingAction();
    v24[20] = a4;
  }

  else
  {
    v24[20] = 0;
    v24[21] = 0;
    v24[22] = 0;
    v24[23] = 0;
  }

  v24[24] = sub_268F9AEF4();
  v24[25] = v12;

  if (a5)
  {
    v24[29] = sub_268F9AA44();
    v24[26] = a5;
  }

  else
  {
    v24[26] = 0;
    v24[27] = 0;
    v24[28] = 0;
    v24[29] = 0;
  }

  v24[30] = sub_268F9AEF4();
  v24[31] = v13;
  v16 = MEMORY[0x277D839B0];
  v24[35] = MEMORY[0x277D839B0];
  *(v24 + 256) = a6;
  v24[36] = sub_268F9AEF4();
  v24[37] = v14;
  v24[41] = v16;
  *(v24 + 304) = a7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E5F2B0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v24 = v7;
  *v7 = sub_268F9AEF4();
  v24[1] = v8;
  v22 = MEMORY[0x277D839B0];
  v24[5] = MEMORY[0x277D839B0];
  *(v24 + 16) = a1;
  v24[6] = sub_268F9AEF4();
  v24[7] = v9;
  v24[11] = v22;
  *(v24 + 64) = a2;
  v24[12] = sub_268F9AEF4();
  v24[13] = v10;

  if (a3)
  {
    v24[17] = type metadata accessor for SettingsNumericSetting(0);
    v24[14] = a3;
  }

  else
  {
    v24[14] = 0;
    v24[15] = 0;
    v24[16] = 0;
    v24[17] = 0;
  }

  v24[18] = sub_268F9AEF4();
  v24[19] = v11;

  if (a4)
  {
    v24[23] = type metadata accessor for SettingsNumericSettingAction();
    v24[20] = a4;
  }

  else
  {
    v24[20] = 0;
    v24[21] = 0;
    v24[22] = 0;
    v24[23] = 0;
  }

  v24[24] = sub_268F9AEF4();
  v24[25] = v12;

  if (a5)
  {
    v24[29] = sub_268F9AA44();
    v24[26] = a5;
  }

  else
  {
    v24[26] = 0;
    v24[27] = 0;
    v24[28] = 0;
    v24[29] = 0;
  }

  v24[30] = sub_268F9AEF4();
  v24[31] = v13;
  v16 = MEMORY[0x277D839B0];
  v24[35] = MEMORY[0x277D839B0];
  *(v24 + 256) = a6;
  v24[36] = sub_268F9AEF4();
  v24[37] = v14;
  v24[41] = v16;
  *(v24 + 304) = a7;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E5F6B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;
  v13[5] = MEMORY[0x277D839B0];
  *(v13 + 16) = a1;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;

  if (a2)
  {
    v13[11] = type metadata accessor for SettingsNumericSetting(0);
    v13[8] = a2;
  }

  else
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = type metadata accessor for SettingsNumericSettingAction();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E5F9D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v4;
  *v4 = sub_268F9AEF4();
  v13[1] = v5;
  v13[5] = MEMORY[0x277D839B0];
  *(v13 + 16) = a1;
  v13[6] = sub_268F9AEF4();
  v13[7] = v6;

  if (a2)
  {
    v13[11] = type metadata accessor for SettingsNumericSetting(0);
    v13[8] = a2;
  }

  else
  {
    v13[8] = 0;
    v13[9] = 0;
    v13[10] = 0;
    v13[11] = 0;
  }

  v13[12] = sub_268F9AEF4();
  v13[13] = v7;

  if (a3)
  {
    v13[17] = type metadata accessor for SettingsNumericSettingAction();
    v13[14] = a3;
  }

  else
  {
    v13[14] = 0;
    v13[15] = 0;
    v13[16] = 0;
    v13[17] = 0;
  }

  v13[18] = sub_268F9AEF4();
  v13[19] = v8;

  if (a4)
  {
    v13[23] = sub_268F9AA44();
    v13[20] = a4;
  }

  else
  {
    v13[20] = 0;
    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E5FCD4(char a1, char a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v9 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v9;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;

  if (a3)
  {
    v11[17] = type metadata accessor for SettingsNumericSettingAction();
    v11[14] = a3;
  }

  else
  {
    v11[14] = 0;
    v11[15] = 0;
    v11[16] = 0;
    v11[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E5FF1C(char a1, char a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v11 = v3;
  *v3 = sub_268F9AEF4();
  v11[1] = v4;
  v9 = MEMORY[0x277D839B0];
  v11[5] = MEMORY[0x277D839B0];
  *(v11 + 16) = a1;
  v11[6] = sub_268F9AEF4();
  v11[7] = v5;
  v11[11] = v9;
  *(v11 + 64) = a2;
  v11[12] = sub_268F9AEF4();
  v11[13] = v6;

  if (a3)
  {
    v11[17] = type metadata accessor for SettingsNumericSettingAction();
    v11[14] = a3;
  }

  else
  {
    v11[14] = 0;
    v11[15] = 0;
    v11[16] = 0;
    v11[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E6014C(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E602E8(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E6046C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v5;
  *v5 = sub_268F9AEF4();
  v17[1] = v6;
  v15 = MEMORY[0x277D839B0];
  v17[5] = MEMORY[0x277D839B0];
  *(v17 + 16) = a1;
  v17[6] = sub_268F9AEF4();
  v17[7] = v7;
  v17[11] = v15;
  *(v17 + 64) = a2;
  v17[12] = sub_268F9AEF4();
  v17[13] = v8;

  if (a3)
  {
    v17[17] = type metadata accessor for SettingsNumericSetting(0);
    v17[14] = a3;
  }

  else
  {
    v17[14] = 0;
    v17[15] = 0;
    v17[16] = 0;
    v17[17] = 0;
  }

  v17[18] = sub_268F9AEF4();
  v17[19] = v9;

  if (a4)
  {
    v17[23] = type metadata accessor for SettingsNumericSettingAction();
    v17[20] = a4;
  }

  else
  {
    v17[20] = 0;
    v17[21] = 0;
    v17[22] = 0;
    v17[23] = 0;
  }

  v17[24] = sub_268F9AEF4();
  v17[25] = v10;

  if (a5)
  {
    v17[29] = sub_268F9AA44();
    v17[26] = a5;
  }

  else
  {
    v17[26] = 0;
    v17[27] = 0;
    v17[28] = 0;
    v17[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E607DC(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v5;
  *v5 = sub_268F9AEF4();
  v17[1] = v6;
  v15 = MEMORY[0x277D839B0];
  v17[5] = MEMORY[0x277D839B0];
  *(v17 + 16) = a1;
  v17[6] = sub_268F9AEF4();
  v17[7] = v7;
  v17[11] = v15;
  *(v17 + 64) = a2;
  v17[12] = sub_268F9AEF4();
  v17[13] = v8;

  if (a3)
  {
    v17[17] = type metadata accessor for SettingsNumericSetting(0);
    v17[14] = a3;
  }

  else
  {
    v17[14] = 0;
    v17[15] = 0;
    v17[16] = 0;
    v17[17] = 0;
  }

  v17[18] = sub_268F9AEF4();
  v17[19] = v9;

  if (a4)
  {
    v17[23] = type metadata accessor for SettingsNumericSettingAction();
    v17[20] = a4;
  }

  else
  {
    v17[20] = 0;
    v17[21] = 0;
    v17[22] = 0;
    v17[23] = 0;
  }

  v17[24] = sub_268F9AEF4();
  v17[25] = v10;

  if (a5)
  {
    v17[29] = sub_268F9AA44();
    v17[26] = a5;
  }

  else
  {
    v17[26] = 0;
    v17[27] = 0;
    v17[28] = 0;
    v17[29] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E60B34(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = type metadata accessor for SettingsNumericSettingAction();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E60D64(uint64_t a1, uint64_t a2)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v7 = v2;
  *v2 = sub_268F9AEF4();
  v7[1] = v3;

  if (a1)
  {
    v7[5] = type metadata accessor for SettingsNumericSetting(0);
    v7[2] = a1;
  }

  else
  {
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
  }

  v7[6] = sub_268F9AEF4();
  v7[7] = v4;

  if (a2)
  {
    v7[11] = type metadata accessor for SettingsNumericSettingAction();
    v7[8] = a2;
  }

  else
  {
    v7[8] = 0;
    v7[9] = 0;
    v7[10] = 0;
    v7[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E60F7C(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E61118(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = sub_268F9AA44();
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268E6129C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsNumericSettingAction();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9AA44();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

double sub_268E61560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268F9AEF4();
  v10[1] = v4;

  if (a1)
  {
    v10[5] = type metadata accessor for SettingsNumericSetting(0);
    v10[2] = a1;
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = 0;
  }

  v10[6] = sub_268F9AEF4();
  v10[7] = v5;

  if (a2)
  {
    v10[11] = type metadata accessor for SettingsNumericSettingAction();
    v10[8] = a2;
  }

  else
  {
    v10[8] = 0;
    v10[9] = 0;
    v10[10] = 0;
    v10[11] = 0;
  }

  v10[12] = sub_268F9AEF4();
  v10[13] = v6;

  if (a3)
  {
    v10[17] = sub_268F9AA44();
    v10[14] = a3;
  }

  else
  {
    v10[14] = 0;
    v10[15] = 0;
    v10[16] = 0;
    v10[17] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

uint64_t type metadata accessor for SetNumericSettingIntentCATs(uint64_t a1)
{
  v2 = qword_2802DD748;
  if (!qword_2802DD748)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E61880(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268E6194C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268E61B4C()
{
  type metadata accessor for SetAirplaneModeHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1510 = result;
  return result;
}

uint64_t *sub_268E61BB4()
{
  if (qword_2802DB6E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1510;
}

uint64_t sub_268E61C14()
{
  v1 = *sub_268E61BB4();

  return v1;
}

uint64_t sub_268E61C44(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAirplaneModeHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D36960();

  v4 = sub_268DBCC64();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9 & 1, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E61E68, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E61E68, v8);
}

uint64_t sub_268E61DF8(char a1)
{

  sub_268D3699C(a1 & 1);
}

uint64_t sub_268E61F10()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268E61F5C()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_268E61FB4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E6202C()
{
  swift_beginAccess();
  v2 = *(v0 + 120);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_268E62084(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E6211C()
{
  v2 = *(v0 + 168);

  return v2;
}

uint64_t sub_268E62154()
{
  v2 = *(v0 + 184);

  return v2;
}

void *sub_268E6218C(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v16 = a1;
  v15 = a2;
  v14 = a3;
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  v9[2] = sub_268F9B374();
  sub_268D588E0();
  v9[14] = sub_268CF0C44();
  sub_268CDA484();
  v9[15] = sub_268CD42AC(2, 0);
  v9[21] = sub_268F9AEF4();
  v9[22] = v3;
  v9[23] = sub_268F9AEF4();
  v9[24] = v4;

  v9[3] = a1;
  sub_268CDE730(a2, v12);
  sub_268CDF978(v12, v9 + 4);
  sub_268CDE730(a3, v11);
  sub_268CDF978(v11, v9 + 9);
  sub_268F99674();
  sub_268CDF978(v10, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v9;
}

uint64_t sub_268E6235C(uint64_t a1)
{
  v60 = a1;
  v2 = v1;
  v70 = v2;
  v61 = "UndoNumericSettingsFlow: accepting input.";
  v62 = &dword_268CBE000;
  v91 = 0;
  v90 = 0;
  v92 = 0;
  v89 = 0;
  v85 = 0;
  v86 = 0;
  v82 = 0;
  v79 = 0;
  v63 = 0;
  v64 = sub_268F99C24();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v68 = v22 - v67;
  v92 = v22 - v67;
  v74 = sub_268F99C34();
  v71 = *(v74 - 8);
  v72 = v74 - 8;
  v69 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74, v7, v8, v9);
  v73 = v22 - v69;
  v91 = a1;
  v90 = v70;
  sub_268F99BE4();
  if ((*(v71 + 88))(v73, v74) != *MEMORY[0x277D5C150])
  {
    (*(v71 + 8))(v73, v74);
    v27 = 0;
    return v27 & 1;
  }

  v10 = v68;
  (*(v71 + 96))(v73, v74);
  (*(v65 + 32))(v10, v73, v64);
  v92 = v10;
  v56 = sub_268F99C04();
  v58 = v11;
  v12 = sub_268E4F23C(1);
  v57 = v13;
  v59 = MEMORY[0x26D62DB50](v56, v58, v12);

  if ((v59 & 1) == 0)
  {
    (*(v65 + 8))(v68, v64);
    v27 = 1;
    return v27 & 1;
  }

  v54 = *(v70 + 16);
  MEMORY[0x277D82BE0](v54);
  v52 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v53 = sub_268F9B734();
  sub_268F9AC04(v61, 41, 2, v62, v54, v52);

  MEMORY[0x277D82BD8](v54);
  v55 = sub_268F99C14();
  if (!v55)
  {
    goto LABEL_28;
  }

  v51 = v55;
  v49 = v55;
  v89 = v55;
  v14 = sub_268E4F2C8(1);
  v50 = v87;
  v87[0] = v14;
  v87[1] = v15;
  sub_268F9ADC4();
  sub_268CD9D30(v50);
  if (v88[3])
  {
    if (swift_dynamicCast())
    {
      v47 = v75;
      v48 = v76;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v45 = v47;
    v46 = v48;
  }

  else
  {
    sub_268D28414(v88);
    v45 = 0;
    v46 = 0;
  }

  v43 = v46;
  v44 = v45;
  if (!v46)
  {

LABEL_28:
    (*(v65 + 8))(v68, v64);
    v27 = 0;
    return v27 & 1;
  }

  v41 = v44;
  v42 = v43;
  v38 = v43;
  v39 = v44;
  v85 = v44;
  v86 = v43;
  v16 = sub_268E4F2C8(0);
  v40 = v83;
  v83[0] = v16;
  v83[1] = v17;
  sub_268F9ADC4();
  sub_268CD9D30(v40);
  if (v84[3])
  {
    sub_268D34FD4();
    if (swift_dynamicCast())
    {
      v37 = v77;
    }

    else
    {
      v37 = 0;
    }

    v36 = v37;
  }

  else
  {
    sub_268D28414(v84);
    v36 = 0;
  }

  v35 = v36;
  if (!v36)
  {

    goto LABEL_28;
  }

  v34 = v35;
  v29 = v35;
  v82 = v35;
  v31 = 0;
  v30 = sub_268D291D4();

  v33 = v81;
  sub_268CDE730(v70 + 32, v81);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD758, &qword_268FA55C0);
  sub_268E62B3C();
  v18 = swift_dynamicCast();
  if (v18)
  {
    v28 = v80;
  }

  else
  {
    v28 = 0;
  }

  v23 = 0;
  v26 = sub_268F2B620(v39, v38, v28, 0);
  v79 = v26;
  v22[1] = sub_268D588E0();
  MEMORY[0x277D82BE0](v26);
  sub_268DD26C8();
  MEMORY[0x277D82BE0](v29);
  v19 = sub_268E3E3F0(v29, v23);
  v24 = sub_268DA961C(v26, v19, v23, 1, v23);
  v25 = &v78;
  swift_beginAccess();
  v20 = *(v70 + 112);
  *(v70 + 112) = v24;
  MEMORY[0x277D82BD8](v20);
  swift_endAccess();
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v29);

  (*(v65 + 8))(v68, v64);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_268E62B3C()
{
  v2 = qword_280FE2810;
  if (!qword_280FE2810)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280FE2810);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268E62BA0(uint64_t a1)
{
  *(v2 + 568) = v1;
  *(v2 + 560) = a1;
  *(v2 + 512) = v2;
  *(v2 + 520) = 0;
  *(v2 + 496) = 0;
  *(v2 + 504) = 0;
  *(v2 + 760) = 0;
  *(v2 + 544) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  *(v2 + 576) = swift_task_alloc();
  v3 = sub_268F999F4();
  *(v2 + 584) = v3;
  *(v2 + 592) = *(v3 - 8);
  *(v2 + 600) = swift_task_alloc();
  v4 = sub_268F99C74();
  *(v2 + 608) = v4;
  *(v2 + 616) = *(v4 - 8);
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD760, qword_268FA55D0);
  *(v2 + 656) = swift_task_alloc();
  v5 = sub_268F99864();
  *(v2 + 664) = v5;
  *(v2 + 672) = *(v5 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 520) = v1;

  return MEMORY[0x2822009F8](sub_268E62E54, 0);
}

uint64_t sub_268E62E54()
{
  v46 = v0[85];
  v44 = v0[84];
  v45 = v0[83];
  v47 = v0[82];
  v48 = v0[71];
  v0[64] = v0;
  sub_268CDE730(v48 + 128, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[86] = sub_268F99744();
  v1 = *MEMORY[0x277D5BB08];
  v2 = *(v44 + 104);
  v0[87] = v2;
  v0[88] = (v44 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v2(v46, v1, v45);

  v3 = sub_268F996B4();
  v0[89] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[90] = v5;
  v0[91] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v47, 1);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_beginAccess();
  v49 = *(v48 + 112);
  MEMORY[0x277D82BE0](v49);
  swift_endAccess();
  v0[66] = v49;
  v6 = sub_268D588E0();
  v50._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetNumericSettingIntent);
  v50._object = v7;
  v0[92] = v7;
  if (!v7)
  {
    v13 = *(v43 + 568);
    MEMORY[0x277D82BD8](v49);
    v19 = *(v13 + 16);
    MEMORY[0x277D82BE0](v19);
    v18 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("UndoNumericSettingFlow execute error, missing settingIdentifier", 63, 2, &dword_268CBE000, v19, v18);

    MEMORY[0x277D82BD8](v19);
    v14 = sub_268F9AEF4();
    sub_268E64558(v14, v15);

    sub_268F998F4();
    goto LABEL_10;
  }

  *(v43 + 496) = v50._countAndFlagsBits;
  *(v43 + 504) = v7;
  MEMORY[0x277D82BD8](v49);

  NumericSettingIdentifier.init(rawValue:)(v50);
  if (v51 == 13)
  {
LABEL_8:
    v21 = *(*(v43 + 568) + 16);
    MEMORY[0x277D82BE0](v21);
    v20 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("UndoNumericSettingFlow execute error, can not get Handler", 57, 2, &dword_268CBE000, v21, v20);

    MEMORY[0x277D82BD8](v21);
    v11 = sub_268F9AEF4();
    sub_268E64558(v11, v12);

    sub_268F998F4();

LABEL_10:

    v16 = *(*(v43 + 512) + 8);

    return v16();
  }

  *(v43 + 760) = v51;
  sub_268F7AD98();

  sub_268F7C4F0();

  if (!*(v43 + 120))
  {
    sub_268D28414((v43 + 96));
    goto LABEL_8;
  }

  v40 = *(v43 + 648);
  v37 = *(v43 + 640);
  v42 = *(v43 + 632);
  v41 = *(v43 + 600);
  v36 = *(v43 + 568);
  sub_268CDF978((v43 + 96), (v43 + 56));
  v32 = *(v43 + 80);
  v33 = *(v43 + 88);
  __swift_project_boxed_opaque_existential_1((v43 + 56), v32);
  swift_beginAccess();
  v35 = *(v36 + 112);
  MEMORY[0x277D82BE0](v35);
  swift_endAccess();

  sub_268CDE730(v43 + 56, v43 + 136);
  v34 = swift_allocObject();
  *(v34 + 16) = v36;
  sub_268CDF978((v43 + 136), (v34 + 24));
  (*(v33 + 8))(v35, sub_268E64CDC, v34, v32);

  MEMORY[0x277D82BD8](v35);

  swift_beginAccess();
  v39 = *(v36 + 112);
  MEMORY[0x277D82BE0](v39);
  swift_endAccess();
  swift_beginAccess();
  v38 = *(v36 + 120);
  MEMORY[0x277D82BE0](v38);
  swift_endAccess();
  sub_268ED97FC(v39, v38, v40);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);

  sub_268D28A00(v40, v37);
  sub_268D2DFAC(v42, v43 + 536, v41);
  v28 = *(v43 + 624);
  v29 = *(v43 + 608);
  v24 = *(v43 + 600);
  v25 = *(v43 + 584);
  v22 = *(v43 + 576);
  v26 = *(v43 + 568);
  v27 = *(v43 + 616);
  v23 = *(v43 + 592);
  sub_268CDE730(v26 + 32, v43 + 216);
  v8 = sub_268F999A4();
  (*(*(v8 - 8) + 56))(v22, 1);
  *(v43 + 256) = 0;
  *(v43 + 264) = 0;
  *(v43 + 272) = 0;
  *(v43 + 280) = 0;
  *(v43 + 288) = 0;
  sub_268E64994();
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  sub_268F998D4();

  sub_268D28414((v43 + 256));
  sub_268D34AC0(v22);
  __swift_destroy_boxed_opaque_existential_0((v43 + 216));
  (*(v23 + 8))(v24, v25);
  sub_268CDE730(v26 + 72, v43 + 296);
  v30 = *(v43 + 320);
  v31 = *(v43 + 328);
  __swift_project_boxed_opaque_existential_1((v43 + 296), v30);
  *(v43 + 360) = v29;
  *(v43 + 368) = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v43 + 336));
  (*(v27 + 16))(boxed_opaque_existential_1, v28, v29);
  v10 = swift_task_alloc();
  *(v43 + 744) = v10;
  *v10 = *(v43 + 512);
  v10[1] = sub_268E63C3C;

  return MEMORY[0x2821BB5D0](v43 + 336, v30, v31);
}

uint64_t sub_268E63C3C()
{
  v5 = *v1;
  v4 = (*v1 + 336);
  *(v5 + 512) = *v1;
  *(v5 + 752) = v0;

  if (v0)
  {
    v2 = sub_268E64074;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
    v2 = sub_268E63DB8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E63DB8()
{
  v4 = v0[78];
  v3 = v0[77];
  v5 = v0[76];
  v0[64] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v3 + 8))(v4, v5);
  v9 = v0[90];
  v8 = v0[89];
  v7 = v0[87];
  v10 = v0[85];
  v6 = v0[83];
  v11 = v0[82];
  v12 = v0[81];
  sub_268CDE730(v0[71] + 128, (v0 + 22));
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v7(v10, *MEMORY[0x277D5BC10], v6);

  v9(v11, 1, 1, v8);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = *(v0[64] + 8);

  return v1();
}

uint64_t sub_268E64074()
{
  v9 = v0[78];
  v8 = v0[77];
  v10 = v0[76];
  v0[64] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v8 + 8))(v9, v10);
  v17 = v0[94];
  v11 = v0[71];
  v1 = v17;
  v0[68] = v17;
  v16 = *(v11 + 16);
  MEMORY[0x277D82BE0](v16);
  v15 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v14 = v2;
  swift_getErrorValue();
  sub_268F9B7C4();
  v12 = sub_268F9AEC4();
  v13 = v3;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = sub_268CDD224();
  *v14 = v12;
  v14[1] = v13;

  sub_268CD0F7C();
  sub_268F9AC04("UndoNumericSettingsFlow: unable to publish output with error: %@", 64, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v4 = sub_268F9AEF4();
  sub_268E64558(v4, v5);

  v21 = v0[90];
  v20 = v0[89];
  v19 = v0[87];
  v22 = v0[85];
  v18 = v0[83];
  v23 = v0[82];
  v24 = v0[81];
  sub_268CDE730(v0[71] + 128, (v0 + 22));
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v19(v22, *MEMORY[0x277D5BC10], v18);

  v21(v23, 1, 1, v20);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v24);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v6 = *(v0[64] + 8);

  return v6();
}

uint64_t sub_268E644D8(uint64_t a1, uint64_t a2)
{

  sub_268F99714();
}

uint64_t sub_268E64558(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v29 = sub_268E64CE8;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD760, qword_268FA55D0);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v28 = &v16 - v17;
  v22 = 0;
  v21 = sub_268F99864();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v25, v7, v8);
  v30 = &v16 - v18;
  v40 = v9;
  v41 = v10;
  v39 = v2;
  v35 = v36;
  sub_268CDE730(v2 + 128, v36);
  v32 = v37;
  v33 = v38;
  v31 = __swift_project_boxed_opaque_existential_1(v35, v37);
  sub_268F99744();
  (*(v19 + 104))(v30, *MEMORY[0x277D5BC00], v21);
  v26 = *(v23 + 168);
  v27 = *(v23 + 176);

  v11 = sub_268F996B4();
  (*(*(v11 - 8) + 56))(v28, 1);

  v12 = swift_allocObject();
  v13 = v24;
  v14 = v25;
  v12[2] = v23;
  v12[3] = v13;
  v12[4] = v14;
  v34 = sub_268F99724();
  sub_268F99684();

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

double sub_268E647E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v3 = *(a2 + 120);
  *(a2 + 120) = a1;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  v13 = sub_268F9B284();
  v14 = *(a2 + 16);
  MEMORY[0x277D82BE0](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v4;
  sub_268CDE730(a3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD768, &unk_268FA56A0);
  v10 = sub_268F9AE64();
  v11 = v5;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "%@ handling intent", 18, 2);

  *&result = MEMORY[0x277D82BD8](v14).n128_u64[0];
  return result;
}

uint64_t sub_268E64A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_268F99714();

  sub_268F99704();
}

uint64_t sub_268E64B08()
{
  MEMORY[0x277D82BD8](v0[2]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  MEMORY[0x277D82BD8](v0[14]);
  MEMORY[0x277D82BD8](v0[15]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_268CD9D30((v0 + 21));
  sub_268CD9D30((v0 + 23));
  return v2;
}

uint64_t sub_268E64C24(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268E62BA0(a1);
}

uint64_t sub_268E64D20(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    sub_268D34954();
    v1 = sub_268F9B044();

    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_268E64DF4(uint64_t a1)
{
  v2[28] = a1;
  v2[22] = v2;
  v2[23] = 0;
  v2[24] = 0;
  v2[26] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  v2[29] = swift_task_alloc();
  v3 = sub_268F999F4();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_268F99C74();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_268F9AB24();
  v2[39] = swift_task_alloc();
  v2[23] = v1;

  return MEMORY[0x2822009F8](sub_268E65024, 0);
}

uint64_t sub_268E65024()
{
  v17 = v0[38];
  v16 = v0[37];
  v19 = v0[36];
  v18 = v0[32];
  v0[22] = v0;
  type metadata accessor for ClarityUIIntentCATs(0);
  sub_268CDFA34();
  v1 = sub_268F9A904();
  v0[40] = v1;
  v0[24] = v1;
  sub_268F58268();
  sub_268F99B64();
  sub_268D28A00(v17, v16);
  sub_268D2DFAC(v19, (v0 + 25), v18);
  v11 = v15[35];
  v12 = v15[33];
  v8 = v15[32];
  v9 = v15[30];
  v6 = v15[29];
  v10 = v15[34];
  v7 = v15[31];
  sub_268F99C44();
  v2 = sub_268F999A4();
  (*(*(v2 - 8) + 56))(v6, 1);
  v15[12] = 0;
  v15[13] = 0;
  v15[14] = 0;
  v15[15] = 0;
  v15[16] = 0;
  sub_268E64994();
  sub_268CDD6D4();
  _swift_stdlib_has_malloc_size();
  sub_268D31B10();
  sub_268F998D4();

  sub_268D28414(v15 + 12);
  sub_268D34AC0(v6);
  __swift_destroy_boxed_opaque_existential_0(v15 + 7);
  (*(v7 + 8))(v8, v9);
  v13 = v15[5];
  v14 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v13);
  v15[20] = v12;
  v15[21] = MEMORY[0x277D5C1D8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15 + 17);
  (*(v10 + 16))(boxed_opaque_existential_1, v11, v12);
  v4 = swift_task_alloc();
  v15[41] = v4;
  *v4 = v15[22];
  v4[1] = sub_268E655B4;

  return MEMORY[0x2821BB5D0](v15 + 17, v13, v14);
}

uint64_t sub_268E655B4()
{
  v4 = *v1;
  v4[22] = *v1;
  v4[42] = v0;

  if (v0)
  {
    v2 = sub_268E6586C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 17);
    v2 = sub_268E6572C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E6572C()
{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[33];
  v0[22] = v0;
  (*(v2 + 8))(v1, v3);
  v6 = v0[38];
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_268D28378(v6);

  v4 = *(v0[22] + 8);

  return v4();
}

uint64_t sub_268E6586C()
{
  v8 = v0[35];
  v7 = v0[34];
  v9 = v0[33];
  v0[22] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  (*(v7 + 8))(v8, v9);
  v14 = v0[42];
  v1 = v14;
  v0[26] = v14;
  sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v2;
  v3 = v14;
  v0[27] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v10 = sub_268F9AE64();
  v11 = v4;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  v13 = sub_268E65B24();
  sub_268F9AC04("Unable to publish command: %@", 29, 2, &dword_268CBE000);
  MEMORY[0x277D82BD8](v13);

  v15 = v0[38];
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_268D28378(v15);

  v5 = *(v0[22] + 8);

  return v5();
}

uint64_t sub_268E65B50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClarityUIFlow();
  sub_268E5AB10();
  return sub_268F99614();
}

uint64_t sub_268E65C14(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268E64DF4(a1);
}

uint64_t *sub_268E65D24()
{
  if (qword_280FE4F70 != -1)
  {
    swift_once();
  }

  return &qword_280FE81C8;
}

uint64_t sub_268E65D84()
{
  type metadata accessor for GetAppearanceHandler();
  v0 = sub_268E4EA30();
  result = sub_268E65DF0(1, v0);
  qword_280FE81C8 = result;
  return result;
}

uint64_t sub_268E65E48()
{
  v1 = *sub_268E65D24();

  return v1;
}

uint64_t sub_268E65E78(char a1, uint64_t a2)
{
  *(v2 + 16) = a1;

  *(v2 + 24) = a2;

  return v5;
}

uint64_t sub_268E65EE8(void *a1, void (*a2)(id), uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v70 = a1;
  v66 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v74 = 0;
  v72 = 0;
  v65 = 0;
  v82 = a1;
  v80 = a2;
  v81 = a3;
  v67 = sub_268F9B284();
  v69 = *sub_268DC7AE8();
  v3 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v68 = sub_268F9B734();
  sub_268F9AC14(v67, &dword_268CBE000, v69, "GetAppearanceHandler handling intent", 36, 2);

  v71 = [v70 settingMetadata];
  if (v71)
  {
    v61 = v71;
    v54 = v71;
    v56 = [v71 settingId];
    v4 = sub_268F9AE24();
    v55 = v5;
    v57 = v4;

    v58 = v55;
    v59 = v57;
    v60 = v55;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v52 = v60;
  v53 = v59;
  if (!v60)
  {
    goto LABEL_13;
  }

  v50 = v53;
  v51 = v52;
  v48 = v52;
  v47 = v53;
  v76 = v53;
  v77 = v52;

  v6._countAndFlagsBits = v53;
  v6._object = v52;
  BinarySettingIdentifier.init(rawValue:)(v6);
  v49 = v75;
  if (v75 == 65)
  {

LABEL_13:
    sub_268CDD0DC();
    v28 = sub_268CD42AC(4, 0);
    v78 = v28;

    v64(v28);

    return v65;
  }

  v46 = v49;
  v42 = v49;
  v74 = v49;
  v43 = *(v62 + 24);

  v73 = v49;
  v45 = sub_268F47F9C(&v73);
  v44 = v45;

  if (v45 == 2)
  {

    goto LABEL_13;
  }

  v40 = v44;
  v41 = BYTE1(v44);
  v7 = v65;
  v32 = v44 & 1;
  v72 = v44 & 0x101;
  v33 = BYTE1(v44) & 1;
  v8 = sub_268DBBE24();
  v31 = *v8;
  v34 = v8[1];
  v35 = *(v8 + 16);
  v36 = *sub_268DC7AE8();
  v30 = v36;
  v9 = v36;
  v37 = *(v62 + 16);

  v10 = v70;

  v38 = &v27;
  MEMORY[0x28223BE20](v31, v34, v35, v36);
  v21[2] = v11;
  v22 = v12;
  v23 = v13;
  v24 = v70;
  v25 = v64;
  v26 = v14;
  sub_268DB944C(v15, v16, v17, v18, v19, sub_268E6682C, v21, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v39 = v7;

  return v39;
}

double sub_268E66458(uint64_t a1, __int16 a2, void *a3, void (*a4)(id), uint64_t a5)
{
  v18 = a2;
  v19 = HIBYTE(a2);

  LOBYTE(v25) = v18;
  HIBYTE(v25) = v19;
  v23 = sub_268F47E98(v25);

  sub_268CDD0DC();
  v20 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v22 = v5;
  v24 = [a3 settingMetadata];
  if (v23)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  *v22 = sub_268E41954(v24, 0, 0, v16, 0, 0);
  sub_268CD0F7C();
  v10 = sub_268F9B004();

  [v20 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v10);
  v14 = sub_268F9B284();
  v6 = sub_268DC7AE8();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v13 = v7;
  MEMORY[0x277D82BE0](v20);
  sub_268CDD1A4();
  v11 = sub_268F9AE74();
  v12 = v8;
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_268CDD224();
  *v13 = v11;
  v13[1] = v12;
  sub_268CD0F7C();
  sub_268F9AC14(v14, &dword_268CBE000, v15, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v15);

  a4(v20);

  *&result = MEMORY[0x277D82BD8](v20).n128_u64[0];
  return result;
}

uint64_t sub_268E668D8()
{
  v0 = sub_268F872B8();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1518 = v2;
  return result;
}

uint64_t *sub_268E66918()
{
  if (qword_2802DB6F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1518;
}

uint64_t sub_268E66978()
{
  v0 = sub_268E66918();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268E669B0(void *a1, void *a2, uint64_t a3)
{
  v10 = 0;
  v13 = a1;
  v12 = a2;
  v11 = a3;
  sub_268CDE730(a1, v9);
  sub_268CDF978(v9, (v3 + 16));
  sub_268CDE730(a2, v8);
  sub_268CDF978(v8, (v3 + 56));

  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_268E66A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = v2;
  v4 = v91;
  v111 = v3;
  v115 = "NumericSettingFlowStrategy: actionForInput.";
  v92 = "NumericSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v93 = "NumericSettingFlowStrategy: %@ handling NLV3Intent.";
  v94 = "NumericSettingFlowStrategy: Error parsing uso parse.";
  v134 = 0;
  v133 = 0;
  v136 = 0;
  v95 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v135 = 0;
  v125 = 0;
  v124 = 0;
  v113 = 0;
  v96 = sub_268F99CB4();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v100 = &v44[-v99];
  v101 = sub_268F99C64();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v8, v9, v10);
  v105 = &v44[-v104];
  v136 = &v44[-v104];
  v106 = sub_268F9A704();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v11, v12, v13);
  v110 = &v44[-v109];
  v135 = &v44[-v109];
  v122 = sub_268F99C34();
  v119 = *(v122 - 8);
  v120 = v122 - 8;
  v112 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122, v14, v15, v16);
  v121 = &v44[-v112];
  v134 = v4;
  v133 = v17;
  v116 = sub_268F9B284();
  v118 = *sub_268DC93DC();
  MEMORY[0x277D82BE0](v118);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v117 = sub_268F9B734();
  sub_268F9AC14(v116, &dword_268CBE000, v118, v115, 43, 2);

  MEMORY[0x277D82BD8](v118);
  sub_268F99BE4();
  v123 = (*(v119 + 88))(v121, v122);
  if (v123 == *MEMORY[0x277D5C128])
  {
    (*(v119 + 96))(v121, v122);
    (*(v107 + 32))(v110, v121, v106);
    v135 = v110;
    v88 = v127;
    memset(v127, 0, sizeof(v127));
    v87 = &v126;
    sub_268D8E52C(&v126);
    v89 = sub_268DA7690(v110, v88, v87);
    sub_268D28414(v87);
    sub_268D28414(v88);
    v125 = v89;
    MEMORY[0x277D82BE0](v89);
    if (v89)
    {
      v86 = v89;
      v84 = v89;
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v83 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v83 = 0;
      }

      v82 = v83;
    }

    else
    {
      v82 = 0;
    }

    v79 = v82 != 0;
    v124 = v82 != 0;
    MEMORY[0x277D82BD8](v82);
    v77 = sub_268F9B284();
    v78 = *sub_268DC93DC();
    MEMORY[0x277D82BE0](v78);
    v80 = sub_268F9B734();
    v81 = v18;
    if (v79)
    {
      v76 = sub_268F9AEF4();
      v75 = v19;
      v81[3] = MEMORY[0x277D837D0];
      v20 = sub_268CDD224();
      v21 = v75;
      v22 = v81;
      v23 = v20;
      v24 = v76;
    }

    else
    {
      v74 = sub_268F9AEF4();
      v73 = v25;
      v81[3] = MEMORY[0x277D837D0];
      v26 = sub_268CDD224();
      v21 = v73;
      v22 = v81;
      v23 = v26;
      v24 = v74;
    }

    v81[4] = v23;
    *v22 = v24;
    v22[1] = v21;
    sub_268CD0F7C();
    v72 = v27;
    sub_268F9AC14(v77, &dword_268CBE000, v78, v93, 51, 2);

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v28 = MEMORY[0x277D82BD8](v89);
    return (*(v107 + 8))(v110, v106, v28);
  }

  else if (v123 == *MEMORY[0x277D5C160])
  {
    v29 = v95;
    v30 = v105;
    (*(v119 + 96))(v121, v122);
    (*(v102 + 32))(v30, v121, v101);
    v136 = v30;
    sub_268F99C54();
    v68 = &v132;
    sub_268F99C44();
    v69 = &v131;
    sub_268D8E52C(&v131);
    v70 = sub_268E17680(v100, v68, v69);
    v71 = v29;
    if (v29)
    {
      v51 = v71;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v42 = v51;
      v130 = v51;
      v48 = sub_268F9B294();
      v50 = *sub_268DC93DC();
      MEMORY[0x277D82BE0](v50);
      v49 = sub_268F9B734();
      sub_268F9AC14(v48, &dword_268CBE000, v50, v94, 52, 2);

      MEMORY[0x277D82BD8](v50);

      sub_268F998A4();
      return (*(v102 + 8))(v105, v101);
    }

    else
    {
      v67 = v70;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v129 = v67;
      MEMORY[0x277D82BE0](v67);
      if (v67)
      {
        v66 = v67;
        v64 = v67;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v63 = v65;
        }

        else
        {
          MEMORY[0x277D82BD8](v64);
          v63 = 0;
        }

        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v59 = v62 != 0;
      v128 = v62 != 0;
      MEMORY[0x277D82BD8](v62);
      v57 = sub_268F9B284();
      v58 = *sub_268DC93DC();
      MEMORY[0x277D82BE0](v58);
      v60 = sub_268F9B734();
      v61 = v31;
      if (v59)
      {
        v56 = sub_268F9AEF4();
        v55 = v32;
        v61[3] = MEMORY[0x277D837D0];
        v33 = sub_268CDD224();
        v34 = v55;
        v35 = v61;
        v36 = v33;
        v37 = v56;
      }

      else
      {
        v54 = sub_268F9AEF4();
        v53 = v38;
        v61[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v34 = v53;
        v35 = v61;
        v36 = v39;
        v37 = v54;
      }

      v61[4] = v36;
      *v35 = v37;
      v35[1] = v34;
      sub_268CD0F7C();
      v52 = v40;
      sub_268F9AC14(v57, &dword_268CBE000, v58, v93, 51, 2);

      MEMORY[0x277D82BD8](v58);
      if (v59)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v41 = MEMORY[0x277D82BD8](v67);
      return (*(v102 + 8))(v105, v101, v41);
    }
  }

  else
  {
    v45 = sub_268F9B284();
    v47 = *sub_268DC93DC();
    MEMORY[0x277D82BE0](v47);
    v46 = sub_268F9B734();
    sub_268F9AC14(v45, &dword_268CBE000, v47, v92, 69, 2);

    MEMORY[0x277D82BD8](v47);
    sub_268F998A4();
    return (*(v119 + 8))(v121, v122);
  }
}

uint64_t sub_268E679BC(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_268F99C64();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_268F9A704();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = sub_268F99C34();
  v3[43] = v7;
  v3[44] = *(v7 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;

  return MEMORY[0x2822009F8](sub_268E67C70, 0);
}

uint64_t sub_268E67C70(uint64_t a1)
{
  v85 = v1[46];
  v83 = v1[44];
  v84 = v1[43];
  v81 = v1[32];
  v1[22] = v1;
  v79 = sub_268F9B284();
  v2 = sub_268DC93DC();
  v80 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v79, &dword_268CBE000, v80, "HandleSettingsIntentStrategy: makeIntentFromParse.", 50, 2);

  v3 = MEMORY[0x277D82BD8](v80);
  v82 = *(v83 + 16);
  (v82)(v85, v81, v84, v3);
  v86 = (*(v83 + 88))(v85, v84);
  if (v86 == *MEMORY[0x277D5C128])
  {
    v74 = v78[46];
    v76 = v78[42];
    v75 = v78[39];
    v73 = v78[40];
    (*(v78[44] + 96))();
    (*(v73 + 32))(v76, v74, v75);
    v78[30] = v76;
    v78[12] = 0;
    v78[13] = 0;
    v78[14] = 0;
    v78[15] = 0;
    v78[16] = 0;
    sub_268D8E52C(v78 + 17);
    v77 = sub_268DA7690(v76, v78 + 12, v78 + 17);
    sub_268D28414(v78 + 17);
    sub_268D28414(v78 + 12);
    if (v77)
    {
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v71 = v72;
      }

      else
      {
        MEMORY[0x277D82BD8](v77);
        v71 = 0;
      }

      v70 = v71;
    }

    else
    {
      v70 = 0;
    }

    if (v70)
    {
      v4 = v78[42];
      v5 = v78[40];
      v6 = v78[39];
      v78[31] = v70;
      (*(v5 + 8))(v4, v6);
      v69 = v70;
      goto LABEL_22;
    }

    v67 = v78[42];
    v61 = v78[41];
    v68 = v78[39];
    v60 = v78[40];
    v7 = sub_268DC93DC();
    v66 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v65 = sub_268F9B294();
    sub_268F9B734();
    v64 = v8;
    (*(v60 + 16))(v61, v67, v68);
    sub_268DA7B0C();
    v62 = sub_268F9AE74();
    v63 = v9;
    v64[3] = MEMORY[0x277D837D0];
    v64[4] = sub_268CDD224();
    *v64 = v62;
    v64[1] = v63;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v66, v65);

    MEMORY[0x277D82BD8](v66);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v10);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v60 + 8))(v67, v68);
LABEL_25:

    v20 = v59;
    v21 = *(v78[22] + 8);

    return v21(v20);
  }

  if (v86 != *MEMORY[0x277D5C160])
  {
    v45 = v78[46];
    v37 = v78[45];
    v46 = v78[43];
    v43 = v78[32];
    v44 = v78[44];
    v16 = sub_268DC93DC();
    v42 = *v16;
    MEMORY[0x277D82BE0](*v16);
    v41 = sub_268F9B294();
    sub_268F9B734();
    v40 = v17;
    (v82)(v37, v43, v46);
    v38 = sub_268F9AE64();
    v39 = v18;
    v40[3] = MEMORY[0x277D837D0];
    v40[4] = sub_268CDD224();
    *v40 = v38;
    v40[1] = v39;
    sub_268CD0F7C();
    sub_268F9AC04("Received not an NLV4 or NLv3IntentOnly: %@.", 43, 2, &dword_268CBE000, v42, v41);

    MEMORY[0x277D82BD8](v42);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v19);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v44 + 8))(v45, v46);
    goto LABEL_25;
  }

  v55 = v78[46];
  v11 = v78[38];
  v56 = v78[36];
  v57 = v78[35];
  v54 = v78[37];
  (*(v78[44] + 96))();
  (*(v54 + 32))(v11, v55, v56);
  v78[26] = v11;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v78 + 7);
  v58 = sub_268E17680(v57, v78 + 2, v78 + 7);
  v53 = v78[35];
  v52 = v78[33];
  v51 = v78[34];
  sub_268D28414(v78 + 7);
  sub_268D28414(v78 + 2);
  (*(v51 + 8))(v53, v52);
  if (v58)
  {
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50)
    {
      v49 = v50;
    }

    else
    {
      MEMORY[0x277D82BD8](v58);
      v49 = 0;
    }

    v48 = v49;
  }

  else
  {
    v48 = 0;
  }

  if (!v48)
  {
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v15);
    v47 = swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v35 = v78[38];
    v36 = v78[36];
    v34 = v78[37];
    v22 = v47;
    v78[27] = v47;
    v23 = sub_268DC93DC();
    v33 = *v23;
    MEMORY[0x277D82BE0](*v23);
    v32 = sub_268F9B294();
    sub_268F9B734();
    v31 = v24;
    v25 = v47;
    v78[28] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v29 = sub_268F9AE64();
    v30 = v26;
    v31[3] = MEMORY[0x277D837D0];
    v31[4] = sub_268CDD224();
    *v31 = v29;
    v31[1] = v30;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v33, v32);

    MEMORY[0x277D82BD8](v33);
    type metadata accessor for FlowStrategy.IntentConversionError(0);
    sub_268E68B80(v27);
    swift_allocError();
    v82();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v34 + 8))(v35, v36);
    goto LABEL_25;
  }

  v12 = v78[38];
  v13 = v78[37];
  v14 = v78[36];
  v78[29] = v48;
  (*(v13 + 8))(v12, v14);
  v69 = v48;
LABEL_22:

  v20 = v69;
  v21 = *(v78[22] + 8);

  return v21(v20);
}

unint64_t sub_268E68B80(__n128 a1)
{
  v3 = qword_2802DD770;
  if (!qword_2802DD770)
  {
    type metadata accessor for FlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD770);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_268E68C00()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v2;
}

uint64_t sub_268E68CA4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268E679BC(a1, a2);
}

uint64_t sub_268E68DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_268E68EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for NumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v7, a5);
}

uint64_t sub_268E68F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for NumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v7, a5);
}

uint64_t sub_268E69064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for NumericSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v7, a5);
}

uint64_t sub_268E69140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for NumericSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v8, a6);
}

uint64_t sub_268E69224(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for NumericSettingFlowStrategy();
  v2 = sub_268E692CC();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268E692CC()
{
  v2 = qword_2802DD778;
  if (!qword_2802DD778)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD778);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E6934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for NumericSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v8, a6);
}

unint64_t sub_268E69448()
{
  v2 = qword_2802DD780;
  if (!qword_2802DD780)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E694E0()
{
  v2 = qword_2802DD788;
  if (!qword_2802DD788)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E69560(uint64_t a1)
{
  result = sub_268E69448();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268E695A4()
{
  v2 = qword_2802DD790;
  if (!qword_2802DD790)
  {
    type metadata accessor for NumericSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD790);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E69624@<X0>(uint64_t *a1@<X8>)
{
  v126 = a1;
  v131 = 0;
  v166 = 0;
  v161 = 0;
  v159 = 0;
  v127 = 0;
  v128 = 1;
  v134 = sub_268F9AEF4();
  v135 = v1;
  v129 = v134;
  v130 = v1;
  v164 = v134;
  v165 = v1;
  v136 = sub_268F9AEF4();
  v137 = v2;
  v132 = v136;
  v133 = v2;
  v162 = v136;
  v163 = v2;
  sub_268D3C3AC();
  v141 = sub_268CF0C44();

  v140 = sub_268F9AE14();

  v138 = sub_268F9AE14();

  v142 = [v141 pickableRoutesForCategory:v140 andMode:v138];
  v139 = v142;

  if (v142)
  {
    v125 = v139;
    v122 = v139;
    v123 = sub_268F9B014();

    v124 = v123;
  }

  else
  {
    v124 = 0;
  }

  v121 = v124;
  if (v124)
  {
    v120 = v121;
    v117 = v121;
    sub_268E6C2C4();
    v118 = sub_268F9B5B4();

    v119 = v118;
  }

  else
  {
    v119 = 0;
  }

  v116 = v119;
  v161 = v119;

  if (v119)
  {
    v115 = v116;
    v143 = v116;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD798, qword_268FA5980);
    sub_268E6C23C();
    sub_268F9AF94();
    v114 = v127;
    sub_268CD7930(&v143);
    v111 = v160;
    v112 = 0;
  }

  else
  {
    v111 = 0;
    v112 = v127;
  }

  v110 = v111;
  if (v111)
  {
    v109 = v110;
    v105 = v110;
    v159 = v110;

    v98 = *MEMORY[0x277D26CA8];
    v3 = v98;
    v99 = v98;
    v4 = sub_268F9AE24();
    v157[3] = MEMORY[0x277D837D0];
    v157[0] = v4;
    v157[1] = v5;
    v102 = MEMORY[0x277D837D0];
    v6 = __swift_project_boxed_opaque_existential_1(v157, MEMORY[0x277D837D0]);
    v100 = *(v102 - 8);
    v101 = v100;
    v104 = &v35;
    v8 = MEMORY[0x28223BE20](&v35, v6, v102, v7);
    v103 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v101 + 16))(v8);
    v106 = sub_268F9B744();
    (*(v101 + 8))(v103, v102);
    v108 = [v105 __swift_objectForKeyedSubscript_];
    v107 = v108;
    swift_unknownObjectRelease();
    if (v108)
    {
      v97 = v107;
      v96 = v107;
      v95 = v144;
      sub_268F9B404();
      sub_268D55CF0(v95, &v155);
      swift_unknownObjectRelease();
    }

    else
    {
      v155 = 0uLL;
      v156 = 0uLL;
    }

    v158[1] = v156;
    v158[0] = v155;
    if (*(&v156 + 1))
    {
      if (swift_dynamicCast())
      {
        v93 = v144[4];
        v94 = v144[5];
      }

      else
      {
        v93 = 0;
        v94 = 0;
      }

      v90 = v94;
      v89 = v93;
      __swift_destroy_boxed_opaque_existential_0(v157);

      v91 = v89;
      v92 = v90;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v157);

      sub_268D28414(v158);
      v91 = 0;
      v92 = 0;
    }

    v77 = v92;
    v78 = v91;
    v79 = *MEMORY[0x277D26D30];
    v10 = v79;
    v80 = v79;
    v11 = sub_268F9AE24();
    v153[3] = MEMORY[0x277D837D0];
    v153[0] = v11;
    v153[1] = v12;
    v83 = MEMORY[0x277D837D0];
    v13 = __swift_project_boxed_opaque_existential_1(v153, MEMORY[0x277D837D0]);
    v81 = *(v83 - 8);
    v82 = v81;
    v85 = &v35;
    v15 = MEMORY[0x28223BE20](&v35, v13, v83, v14);
    v84 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v82 + 16))(v15);
    v86 = sub_268F9B744();
    (*(v82 + 8))(v84, v83);
    v88 = [v105 __swift_objectForKeyedSubscript_];
    v87 = v88;
    swift_unknownObjectRelease();
    if (v88)
    {
      v76 = v87;
      v75 = v87;
      v74 = v145;
      sub_268F9B404();
      sub_268D55CF0(v74, &v151);
      swift_unknownObjectRelease();
    }

    else
    {
      v151 = 0uLL;
      v152 = 0uLL;
    }

    v154[1] = v152;
    v154[0] = v151;
    if (*(&v152 + 1))
    {
      if (swift_dynamicCast())
      {
        v72 = v145[4];
        v73 = v145[5];
      }

      else
      {
        v72 = 0;
        v73 = 0;
      }

      v69 = v73;
      v68 = v72;
      __swift_destroy_boxed_opaque_existential_0(v153);

      v70 = v68;
      v71 = v69;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v153);

      sub_268D28414(v154);
      v70 = 0;
      v71 = 0;
    }

    v56 = v71;
    v57 = v70;
    v58 = *MEMORY[0x277D26D10];
    v17 = v58;
    v59 = v58;
    v18 = sub_268F9AE24();
    v149[3] = MEMORY[0x277D837D0];
    v149[0] = v18;
    v149[1] = v19;
    v62 = MEMORY[0x277D837D0];
    v20 = __swift_project_boxed_opaque_existential_1(v149, MEMORY[0x277D837D0]);
    v60 = *(v62 - 8);
    v61 = v60;
    v64 = &v35;
    v22 = MEMORY[0x28223BE20](&v35, v20, v62, v21);
    v63 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v22);
    v65 = sub_268F9B744();
    (*(v61 + 8))(v63, v62);
    v67 = [v105 __swift_objectForKeyedSubscript_];
    v66 = v67;
    swift_unknownObjectRelease();
    if (v67)
    {
      v55 = v66;
      v54 = v66;
      v53 = v146;
      sub_268F9B404();
      sub_268D55CF0(v53, &v147);
      swift_unknownObjectRelease();
    }

    else
    {
      v147 = 0uLL;
      v148 = 0uLL;
    }

    v150[1] = v148;
    v150[0] = v147;
    if (*(&v148 + 1))
    {
      if (swift_dynamicCast())
      {
        v51 = v146[4];
        v52 = v146[5];
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v48 = v52;
      v47 = v51;
      __swift_destroy_boxed_opaque_existential_0(v149);

      v49 = v47;
      v50 = v48;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v149);

      sub_268D28414(v150);
      v49 = 0;
      v50 = 0;
    }

    v36 = v50;
    v35 = v49;

    v37 = v129;
    v38 = v130;
    v39 = v132;
    v40 = v133;
    v41 = v78;
    v42 = v77;
    v43 = v57;
    v44 = v56;
    v45 = v35;
    v46 = v36;
  }

  else
  {

    v37 = v129;
    v38 = v130;
    v39 = v132;
    v40 = v133;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v24 = v126;
  result = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  *v126 = v37;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v24[5] = v30;
  v24[6] = v31;
  v24[7] = v32;
  v24[8] = v33;
  v24[9] = v34;
  return result;
}

uint64_t sub_268E6A218(char *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  __dst[5] = 0;
  v17 = *a1;
  v25 = *a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  sub_268D35D60(a2, v19);
  if (v20)
  {
    sub_268CDF978(v19, __dst);
  }

  else
  {
    sub_268F99764();
    if (v20)
    {
      sub_268D28414(v19);
    }
  }

  v18 = v17;
  v14 = sub_268E0D738(&v18);
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

    v13 = swift_allocObject();
    *(v13 + 16) = v17;
    *(v13 + 24) = a3;
    *(v13 + 32) = a4;
    sub_268D353D0();
    sub_268F99A24();

    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v11 = sub_268F9B284();
    v5 = sub_268DC7AE8();
    v12 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v10 = v6;
    v8 = BinarySettingIdentifier.rawValue.getter();
    v9 = v7;
    v10[3] = MEMORY[0x277D837D0];
    v10[4] = sub_268CDD224();
    *v10 = v8;
    v10[1] = v9;
    sub_268CD0F7C();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "GetBooleanAceCommand for identifier: %@ not implemented in TemplatingUtils, returning now.", 90);

    MEMORY[0x277D82BD8](v12);

    a3(2);
  }

  return __swift_destroy_boxed_opaque_existential_0(__dst);
}

uint64_t sub_268E6A4F0(char *a1, char a2, void *a3)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  __dst[5] = 0;
  v14 = *a1;
  v21 = *a1;
  v20 = a2 & 1;
  v19 = a3;
  sub_268D35D60(a3, v16);
  if (v17)
  {
    sub_268CDF978(v16, __dst);
  }

  else
  {
    sub_268F99764();
    if (v17)
    {
      sub_268D28414(v16);
    }
  }

  v15 = v14;
  v12 = sub_268E0D438(&v15, a2 & 1);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
    *(swift_allocObject() + 16) = v14;
    sub_268D353D0();
    sub_268F99A24();

    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v10 = sub_268F9B284();
    v4 = sub_268DC7AE8();
    v11 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v9 = v5;
    v7 = BinarySettingIdentifier.rawValue.getter();
    v8 = v6;
    v9[3] = MEMORY[0x277D837D0];
    v9[4] = sub_268CDD224();
    *v9 = v7;
    v9[1] = v8;
    sub_268CD0F7C();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "SetBooleanAceCommand for identifier: %@ not implemented in TemplatingUtils, returning now.", 90, 2);

    MEMORY[0x277D82BD8](v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(__dst);
}

void sub_268E6A78C(void *a1, int a2)
{
  v126 = a1;
  v125 = a2;
  v113 = "Failed to set using SetBooleanAceCommand %@, with result: %@";
  v114 = "%@ set using SetBooleanAceCommand successfully.";
  v115 = "%@ set using SetBooleanAceCommand successfully failed: %@";
  v116 = "%@ set using SetBooleanAceCommand Exception while getting response: %@";
  v145 = 0;
  v144 = 0;
  v117 = 0;
  v142 = 0;
  v139 = 0;
  v137 = 0;
  v118 = sub_268F99A44();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118, v2, v3, v4);
  v122 = &v67 - v121;
  v123 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v67 - v121, v6, v7, v8);
  v124 = &v67 - v123;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v130 = *(*(v133 - 1) + 64);
  v127 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v126, v9, v10, v11);
  v128 = &v67 - v127;
  v129 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, &v67 - v127, v13, v14);
  v131 = &v67 - v129;
  v132 = (v130 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, &v67 - v129, v16, v17);
  v134 = (&v67 - v132);
  v145 = v18;
  v144 = v19;
  sub_268D570CC(v18, (&v67 - v132));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v119 + 8))(v134, v118);
    v110 = sub_268F9B284();
    v112 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v112);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v108 = sub_268F9B734();
    v107 = v22;
    v135 = v125;
    v103 = BinarySettingIdentifier.rawValue.getter();
    v104 = v23;
    v105 = MEMORY[0x277D837D0];
    v107[3] = MEMORY[0x277D837D0];
    v24 = sub_268CDD224();
    v25 = v103;
    v26 = v104;
    v27 = v128;
    v28 = v107;
    v29 = v24;
    v30 = v126;
    v106 = v29;
    v107[4] = v29;
    *v28 = v25;
    v28[1] = v26;
    sub_268D570CC(v30, v27);
    v31 = sub_268F9AE64();
    v32 = v106;
    v33 = v107;
    v107[8] = v105;
    v33[9] = v32;
    v33[5] = v31;
    v33[6] = v34;
    sub_268CD0F7C();
    v111 = v35;
    sub_268F9AC14(v110, &dword_268CBE000, v112, v113, 60, 2);

    MEMORY[0x277D82BD8](v112);
  }

  else
  {
    v20 = v117;
    v21 = v131;
    sub_268D571A8(v134);
    sub_268D570CC(v126, v21);
    sub_268D2DFAC(v133, v124, &v143);
    if (v20)
    {
      v68 = *(v119 + 32);
      v67 = v119 + 32;
      v68(v122, v124, v118);
      sub_268D5724C();
      v80 = swift_allocError();
      v68(v51, v122, v118);
      v52 = v80;
      v142 = v80;
      v77 = sub_268F9B284();
      v79 = *sub_268DC7AE8();
      MEMORY[0x277D82BE0](v79);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v75 = sub_268F9B734();
      v74 = v53;
      v141 = v125;
      v69 = BinarySettingIdentifier.rawValue.getter();
      v70 = v54;
      v72 = MEMORY[0x277D837D0];
      v74[3] = MEMORY[0x277D837D0];
      v55 = sub_268CDD224();
      v56 = v69;
      v57 = v70;
      v58 = v74;
      v59 = v55;
      v60 = v80;
      v73 = v59;
      v74[4] = v59;
      *v58 = v56;
      v58[1] = v57;
      v61 = v60;
      v71 = &v140;
      v140 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
      v62 = sub_268F9AE64();
      v63 = v73;
      v64 = v74;
      v74[8] = v72;
      v64[9] = v63;
      v64[5] = v62;
      v64[6] = v65;
      sub_268CD0F7C();
      v78 = v66;
      sub_268F9AC14(v77, &dword_268CBE000, v79, v116, 70, 2);

      MEMORY[0x277D82BD8](v79);
    }

    else
    {
      v101 = v143;
      v139 = v143;
      MEMORY[0x277D82BE0](v143);
      objc_opt_self();
      v36 = swift_dynamicCastObjCClass();
      v102 = v36;
      if (v36)
      {
        v100 = v102;
      }

      else
      {
        MEMORY[0x277D82BD8](v101);
        v100 = 0;
      }

      v99 = v100;
      if (v100)
      {
        v98 = v99;
        v97 = v99;
        v137 = v99;
        v94 = sub_268F9B284();
        v96 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v96);
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v93 = sub_268F9B734();
        v91 = v37;
        v136 = v125;
        v89 = BinarySettingIdentifier.rawValue.getter();
        v90 = v38;
        v91[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v40 = v89;
        v41 = v90;
        v42 = v91;
        v91[4] = v39;
        *v42 = v40;
        v42[1] = v41;
        sub_268CD0F7C();
        v95 = v43;
        sub_268F9AC14(v94, &dword_268CBE000, v96, v114, 47, 2);

        MEMORY[0x277D82BD8](v96);
        MEMORY[0x277D82BD8](v97);
      }

      else
      {
        v86 = sub_268F9B284();
        v88 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v88);
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v85 = sub_268F9B734();
        v83 = v44;
        v138 = v125;
        v81 = BinarySettingIdentifier.rawValue.getter();
        v82 = v45;
        v83[3] = MEMORY[0x277D837D0];
        v46 = sub_268CDD224();
        v47 = v81;
        v48 = v82;
        v49 = v83;
        v83[4] = v46;
        *v49 = v47;
        v49[1] = v48;
        sub_268CD0F7C();
        v87 = v50;
        sub_268F9AC14(v86, &dword_268CBE000, v88, v115, 57, 2);

        MEMORY[0x277D82BD8](v88);
      }

      MEMORY[0x277D82BD8](v101);
    }
  }
}

void sub_268E6B1C4(void *a1, int a2, void (*a3)(id), uint64_t a4)
{
  v151 = a1;
  v148 = a2;
  v149 = a3;
  v150 = a4;
  v136 = "Failed to get BOOLean value using GetBooleanAceCommand %@";
  v137 = "%@ get BOOLean value using GetBooleanAceCommand successfully. Value is %@";
  v138 = "%@ get BOOLean value using GetBooleanAceCommand successfully failed: %@, with result: %@";
  v139 = "%@ get BOOLean value using GetBooleanAceCommand Exception while getting response: %@";
  v173 = 0;
  v172 = 0;
  v170 = 0;
  v171 = 0;
  v140 = 0;
  v168 = 0;
  v165 = 0;
  v162 = 0;
  v161 = 0;
  v141 = sub_268F99A44();
  v142 = *(v141 - 8);
  v143 = v141 - 8;
  v144 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v4, v5, v6);
  v145 = v73 - v144;
  v146 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73 - v144, v8, v9, v10);
  v147 = v73 - v146;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v153 = *(*(v156 - 1) + 64);
  v152 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151, v11, v149, v150);
  v154 = v73 - v152;
  v155 = (v153 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v73 - v152, v13, v14);
  v157 = (v73 - v155);
  v173 = v15;
  v172 = v16;
  v170 = v17;
  v171 = v18;
  sub_268D570CC(v15, (v73 - v155));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v142 + 8))(v157, v141);
    v132 = sub_268F9B284();
    v134 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v134);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v131 = sub_268F9B734();
    v129 = v21;
    v158 = v148;
    v127 = BinarySettingIdentifier.rawValue.getter();
    v128 = v22;
    v129[3] = MEMORY[0x277D837D0];
    v23 = sub_268CDD224();
    v24 = v127;
    v25 = v128;
    v26 = v129;
    v129[4] = v23;
    *v26 = v24;
    v26[1] = v25;
    sub_268CD0F7C();
    v133 = v27;
    v135 = 2;
    sub_268F9AC14(v132, &dword_268CBE000, v134, v136, 57);

    MEMORY[0x277D82BD8](v134);

    v149(v135);

    return;
  }

  v19 = v140;
  v20 = v154;
  sub_268D571A8(v157);
  sub_268D570CC(v151, v20);
  sub_268D2DFAC(v156, v147, &v169);
  if (v19)
  {
    v74 = *(v142 + 32);
    v73[1] = v142 + 32;
    v74(v145, v147, v141);
    sub_268D5724C();
    v87 = swift_allocError();
    v74(v57, v145, v141);
    v58 = v87;
    v168 = v87;
    v83 = sub_268F9B284();
    v85 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v85);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v81 = sub_268F9B734();
    v80 = v59;
    v167 = v148;
    v75 = BinarySettingIdentifier.rawValue.getter();
    v76 = v60;
    v78 = MEMORY[0x277D837D0];
    v80[3] = MEMORY[0x277D837D0];
    v61 = sub_268CDD224();
    v62 = v75;
    v63 = v76;
    v64 = v80;
    v65 = v61;
    v66 = v87;
    v79 = v65;
    v80[4] = v65;
    *v64 = v62;
    v64[1] = v63;
    v67 = v66;
    v77 = &v166;
    v166 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v68 = sub_268F9AE64();
    v69 = v79;
    v70 = v80;
    v80[8] = v78;
    v70[9] = v69;
    v70[5] = v68;
    v70[6] = v71;
    sub_268CD0F7C();
    v84 = v72;
    v86 = 2;
    sub_268F9AC14(v83, &dword_268CBE000, v85, v139, 84);

    MEMORY[0x277D82BD8](v85);

    v149(v86);
  }

  else
  {
    v125 = v169;
    v165 = v169;
    MEMORY[0x277D82BE0](v169);
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    v126 = v28;
    if (v28)
    {
      v124 = v126;
    }

    else
    {
      MEMORY[0x277D82BD8](v125);
      v124 = 0;
    }

    v123 = v124;
    if (v124)
    {
      v122 = v123;
      v120 = v123;
      v162 = v123;
      MEMORY[0x277D82BE0](v123);
      v121 = [v120 setting];
      MEMORY[0x277D82BD8](v120);
      if (v121)
      {
        v119 = v121;
        v116 = v121;
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        v117 = v29;
        if (v29)
        {
          v115 = v117;
        }

        else
        {
          MEMORY[0x277D82BD8](v116);
          v115 = 0;
        }

        v118 = v115;
      }

      else
      {
        v118 = 0;
      }

      v114 = v118;
      if (v118)
      {
        v113 = v114;
        v112 = v114;
        v161 = v114;
        v108 = sub_268F9B284();
        v110 = *sub_268DC7AE8();
        MEMORY[0x277D82BE0](v110);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v106 = sub_268F9B734();
        v105 = v30;
        v160 = v148;
        v101 = BinarySettingIdentifier.rawValue.getter();
        v102 = v31;
        v103 = MEMORY[0x277D837D0];
        v105[3] = MEMORY[0x277D837D0];
        v32 = sub_268CDD224();
        v33 = v101;
        v34 = v102;
        v35 = v105;
        v36 = v32;
        v37 = v112;
        v104 = v36;
        v105[4] = v36;
        *v35 = v33;
        v35[1] = v34;
        v111 = 0x1FAF97000uLL;
        v159 = [v37 0x1FAF97178];
        v38 = sub_268F9AE74();
        v39 = v104;
        v40 = v105;
        v105[8] = v103;
        v40[9] = v39;
        v40[5] = v38;
        v40[6] = v41;
        sub_268CD0F7C();
        v109 = v42;
        sub_268F9AC14(v108, &dword_268CBE000, v110, v137, 73, 2);

        MEMORY[0x277D82BD8](v110);

        v43 = [v112 (v111 + 376)];
        v149(v43);

        MEMORY[0x277D82BD8](v112);
        MEMORY[0x277D82BD8](v120);
        MEMORY[0x277D82BD8](v125);
        return;
      }

      MEMORY[0x277D82BD8](v120);
    }

    v97 = sub_268F9B284();
    v99 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v99);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v95 = sub_268F9B734();
    v94 = v44;
    v164 = v148;
    v88 = BinarySettingIdentifier.rawValue.getter();
    v89 = v45;
    v92 = MEMORY[0x277D837D0];
    v94[3] = MEMORY[0x277D837D0];
    v46 = sub_268CDD224();
    v47 = v88;
    v48 = v89;
    v49 = v94;
    v50 = v46;
    v51 = v125;
    v93 = v50;
    v94[4] = v50;
    *v49 = v47;
    v49[1] = v48;
    MEMORY[0x277D82BE0](v51);
    v91 = &v163;
    v163 = v125;
    v90 = sub_268D353D0();
    sub_268D55698();
    v52 = sub_268F9AE74();
    v53 = v93;
    v54 = v94;
    v94[8] = v92;
    v54[9] = v53;
    v54[5] = v52;
    v54[6] = v55;
    sub_268CD0F7C();
    v98 = v56;
    v100 = 2;
    sub_268F9AC14(v97, &dword_268CBE000, v99, v138, 88);

    MEMORY[0x277D82BD8](v99);

    v149(v100);

    MEMORY[0x277D82BD8](v125);
  }
}

uint64_t sub_268E6BF18(id *a1)
{
  v29 = 0;
  v20 = *a1;
  v29 = v20;
  v14 = *MEMORY[0x277D26D00];
  MEMORY[0x277D82BE0](v14);
  v1 = sub_268F9AE24();
  v27[3] = MEMORY[0x277D837D0];
  v27[0] = v1;
  v27[1] = v2;
  v18 = MEMORY[0x277D837D0];
  v3 = __swift_project_boxed_opaque_existential_1(v27, MEMORY[0x277D837D0]);
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v15 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, v3, v18, v4);
  v19 = &v7 - v15;
  (*(v16 + 16))(v5);
  v21 = sub_268F9B744();
  (*(v16 + 8))(v19, v18);
  v22 = [v20 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    v13 = v22;
    v12 = v22;
    v11 = v23;
    sub_268F9B404();
    sub_268D55CF0(v11, &v25);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v28[0] = v25;
  v28[1] = v26;
  if (*(&v26 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v23[38] & 1;
    }

    else
    {
      v9 = 2;
    }

    v8 = v9;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x277D82BD8](v14);
    v10 = v8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x277D82BD8](v14);
    sub_268D28414(v28);
    v10 = 2;
  }

  v24 = v10;
  if (v10 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v24;
  }

  return v7 & 1;
}

unint64_t sub_268E6C23C()
{
  v2 = qword_2802DD7A0;
  if (!qword_2802DD7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DD798, qword_268FA5980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E6C2C4()
{
  v2 = qword_2802DD7A8;
  if (!qword_2802DD7A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD7A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268E6C400()
{
  v2 = *(v0 + qword_2802DD7B0);

  return v2;
}

uint64_t sub_268E6C45C()
{
  v2 = *(v0 + qword_2802DD7C0);

  return v2;
}

uint64_t sub_268E6C4E0@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DD7D8;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268E6C54C()
{
  v2 = *(v0 + qword_2802DD7E0);

  return v2;
}

uint64_t sub_268E6C580()
{
  v2 = *(v0 + qword_2802DD7E8);

  return v2;
}

uint64_t sub_268E6C5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v67 = a1;
  v65 = a2;
  v62 = a3;
  v63 = a4;
  v69 = a5;
  v75 = a6;
  v77 = a7;
  v70 = a8;
  v64 = a9;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v68 = *v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v60 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, v13);
  v61 = &v33 - v60;
  v74 = 0;
  v81 = sub_268F9AB24();
  v79 = *(v81 - 8);
  v80 = v81 - 8;
  v66 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70, v65, v62, v63);
  v82 = &v33 - v66;
  v108 = *(v68 + qword_2802F1520);
  v107 = *(v68 + qword_2802F1520 + 8);
  v104 = v67;
  v105 = v14;
  v102 = v15;
  v103 = v16;
  v101 = v17;
  v100 = v18;
  v99 = v19;
  v98 = v20;
  v97 = v21;
  v106 = v9;
  v71 = v9;

  v22 = v69;
  *(v71 + qword_2802DD7B0) = v70;
  v72 = v106;
  v73 = v96;
  sub_268CDE730(v22, v96);
  sub_268CDF978(v73, v72 + qword_2802DD7B8);
  v78 = v106;
  sub_268F9AA44();
  v76 = v95;
  sub_268CDE730(v75, v95);
  *(v78 + qword_2802DD7E0) = sub_268F9AA14();
  sub_268F9AB14();
  sub_268CDF9B4();
  v85 = sub_268F9B8A4();
  v83 = *(v79 + 8);
  v84 = v79 + 8;
  v83(v82, v81);
  if (v85)
  {
    v49 = v106;
    v54 = 0;
    v48 = type metadata accessor for SettingIntentCATs(0);
    v56 = *(v79 + 16);
    v55 = v79 + 16;
    v56(v82, v77, v81);
    v51 = sub_268F9A8C4();
    v47 = v90;
    sub_268CDE730(v75, v90);
    sub_268F9A894();
    v23 = sub_268F9A904();
    v24 = v54;
    *(v49 + qword_2802DD7C0) = v23;
    v53 = v106;
    v52 = type metadata accessor for SettingIntentCATPatternsExecutor(v24);
    v56(v82, v77, v81);
    v50 = v88;
    sub_268CDE730(v75, v88);
    sub_268F9A894();
    v25 = sub_268F9A904();
    v89[3] = v52;
    v89[4] = &off_287992048;
    v89[0] = v25;
    sub_268CDF978(v89, v53 + qword_2802DD7C8);
    v59 = v106;
    v58 = type metadata accessor for OpenSettingIntentCATPatternsExecutor(v54);
    v56(v82, v77, v81);
    v57 = v86;
    sub_268CDE730(v75, v86);
    sub_268F9A894();
    v26 = sub_268F9A904();
    v87[3] = v58;
    v87[4] = &off_287996A20;
    v87[0] = v26;
    sub_268CDF978(v87, v59 + qword_2802DD7D0);
  }

  else
  {
    v41 = v106;
    v44 = 0;
    type metadata accessor for SettingIntentCATs(0);
    sub_268CDFA34();
    v27 = sub_268F9A904();
    v28 = v44;
    *(v41 + qword_2802DD7C0) = v27;
    v43 = v106;
    v42 = type metadata accessor for SettingIntentCATPatternsExecutor(v28);
    sub_268CDFA34();
    v29 = sub_268F9A904();
    v94[3] = v42;
    v94[4] = &off_287992048;
    v94[0] = v29;
    sub_268CDF978(v94, v43 + qword_2802DD7C8);
    v46 = v106;
    v45 = type metadata accessor for OpenSettingIntentCATPatternsExecutor(v44);
    sub_268CDFA34();
    v30 = sub_268F9A904();
    v93[3] = v45;
    v93[4] = &off_287996A20;
    v93[0] = v30;
    sub_268CDF978(v93, v46 + qword_2802DD7D0);
  }

  v34 = v106;
  (*(v79 + 16))(v82, v77, v81);
  (*(v79 + 32))(v34 + qword_2802DD7D8, v82, v81);
  v35 = v106;

  *(v35 + qword_2802DD7E8) = v64;

  v38 = v92;
  sub_268CDE730(v69, v92);
  v39 = v91;
  sub_268CDE730(v75, v91);
  v36 = 0;
  v31 = sub_268F99BD4();
  (*(*(v31 - 8) + 56))(v61, 1);
  v37 = sub_268DA96FC();
  sub_268DB7E34();
  sub_268E6CD74();
  v40 = sub_268F99AA4();

  v106 = v40;

  v83(v77, v81);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v69);

  return v40;
}

uint64_t sub_268E6CD74()
{
  sub_268E767D8(0);
  type metadata accessor for INIntentSlotValueType(0);
  sub_268CDFA4C();
  return sub_268F9ADA4();
}

void sub_268E6CDD4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v67 = a1;
  v74 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v76 = sub_268E6D850;
  v80 = sub_268CD98AC;
  v82 = sub_268CD7600;
  v84 = sub_268CD7600;
  v87 = sub_268CD98B8;
  v61 = "Intent response is nil.";
  v62 = &unk_268FA5B50;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v98 = 0;
  v99 = 0;
  v63 = 0;
  v70 = *v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67, v74, v64, v65);
  v71 = (&v28 - v69);
  v107 = v6;
  v106 = v7;
  v105 = v8;
  v103 = v9;
  v104 = v10;
  v102 = v5;
  v72 = *(v70 + qword_2802F1520);
  v101 = v72;
  v73 = *(v70 + qword_2802F1520 + 8);
  v100 = v73;
  v92 = sub_268F9B284();
  v91 = *sub_268DC892C();
  MEMORY[0x277D82BE0](v91);
  MEMORY[0x277D82BE0](v74);
  v78 = 7;
  v79 = swift_allocObject();
  *(v79 + 16) = v74;
  v75 = 17;
  v83 = swift_allocObject();
  *(v83 + 16) = 64;
  v85 = swift_allocObject();
  *(v85 + 16) = 8;
  v77 = 32;
  v11 = swift_allocObject();
  v12 = v79;
  v81 = v11;
  *(v11 + 16) = v76;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v81;
  v88 = v13;
  *(v13 + 16) = v80;
  *(v13 + 24) = v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v86 = sub_268F9B734();
  v89 = v15;

  v16 = v83;
  v17 = v89;
  *v89 = v82;
  v17[1] = v16;

  v18 = v85;
  v19 = v89;
  v89[2] = v84;
  v19[3] = v18;

  v20 = v88;
  v21 = v89;
  v89[4] = v87;
  v21[5] = v20;
  sub_268CD0F7C();

  if (os_log_type_enabled(v91, v92))
  {
    v22 = v63;
    v54 = sub_268F9B3A4();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v55 = sub_268CD5448(1, v53, v53);
    v56 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v57 = &v97;
    v97 = v54;
    v58 = &v96;
    v96 = v55;
    v59 = &v95;
    v95 = v56;
    sub_268CD549C(2, &v97);
    sub_268CD549C(1, v57);
    v93 = v82;
    v94 = v83;
    sub_268CD54B0(&v93, v57, v58, v59);
    v60 = v22;
    if (v22)
    {

      __break(1u);
    }

    else
    {
      v93 = v84;
      v94 = v85;
      sub_268CD54B0(&v93, &v97, &v96, &v95);
      v52 = 0;
      v93 = v87;
      v94 = v88;
      sub_268CD54B0(&v93, &v97, &v96, &v95);
      _os_log_impl(&dword_268CBE000, v91, v92, "OpenSettingTemplatingService opening setting based on intent %@.", v54, 0xCu);
      sub_268CD54FC(v55, 1, v53);
      sub_268CD54FC(v56, 0, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BE0](v64);
  if (v64)
  {
    v51 = v64;
    v49 = v64;
    v50 = [v64 punchoutUrl];
    if (v50)
    {
      v48 = v50;
      v43 = v50;
      v44 = sub_268F9AE24();
      v45 = v23;
      MEMORY[0x277D82BD8](v43);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v40 = v47;
    v39 = v46;
    MEMORY[0x277D82BD8](v49);
    v41 = v39;
    v42 = v40;
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v37 = v42;
  v38 = v41;
  if (v42)
  {
    v35 = v38;
    v36 = v37;
    v34 = v37;
    v98 = v38;
    v99 = v37;
    sub_268E6E6F0(v38, v37, v65, v66);
  }

  else
  {
    HIDWORD(v28) = sub_268F9B294();
    v30 = *sub_268DC892C();
    MEMORY[0x277D82BE0](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v31 = 0;
    v29 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v28), &dword_268CBE000, v30, v61, 23, 2);

    MEMORY[0x277D82BD8](v30);

    v32 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(v31, v72, v73, v24);
    swift_getWitnessTable();
    v33 = 1;
    v25 = swift_allocError();
    v26 = v71;
    *v27 = 1;
    *v26 = v25;
    swift_storeEnumTagMultiPayload();
    v65(v71);
    sub_268D28378(v71);
  }
}

void sub_268E6D858(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v90 = a4;
  v96 = a1;
  v102 = a2;
  v95 = a3;
  v104 = sub_268E6D850;
  v108 = sub_268CD98AC;
  v110 = sub_268CD7600;
  v112 = sub_268CD7600;
  v115 = sub_268CD98B8;
  v92 = "Intent response is nil.";
  v93 = &unk_268FA5B50;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v133 = 0;
  v134 = 0;
  v132 = 0;
  v94 = 0;
  v98 = *v4;
  v97 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96, v102, v95, v5);
  v99 = &v28 - v97;
  v140 = v6;
  v139 = v7;
  v138 = v8;
  v137 = v4;
  v100 = *(v98 + qword_2802F1520);
  v136 = v100;
  v101 = *(v98 + qword_2802F1520 + 8);
  v135 = v101;
  v120 = sub_268F9B284();
  v119 = *sub_268DC892C();
  MEMORY[0x277D82BE0](v119);
  MEMORY[0x277D82BE0](v102);
  v106 = 7;
  v107 = swift_allocObject();
  *(v107 + 16) = v102;
  v103 = 17;
  v111 = swift_allocObject();
  *(v111 + 16) = 64;
  v113 = swift_allocObject();
  *(v113 + 16) = 8;
  v105 = 32;
  v9 = swift_allocObject();
  v10 = v107;
  v109 = v9;
  *(v9 + 16) = v104;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v109;
  v116 = v11;
  *(v11 + 16) = v108;
  *(v11 + 24) = v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v114 = sub_268F9B734();
  v117 = v13;

  v14 = v111;
  v15 = v117;
  *v117 = v110;
  v15[1] = v14;

  v16 = v113;
  v17 = v117;
  v117[2] = v112;
  v17[3] = v16;

  v18 = v116;
  v19 = v117;
  v117[4] = v115;
  v19[5] = v18;
  sub_268CD0F7C();

  if (os_log_type_enabled(v119, v120))
  {
    v20 = v94;
    v83 = sub_268F9B3A4();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v84 = sub_268CD5448(1, v82, v82);
    v85 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v86 = &v125;
    v125 = v83;
    v87 = &v124;
    v124 = v84;
    v88 = &v123;
    v123 = v85;
    sub_268CD549C(2, &v125);
    sub_268CD549C(1, v86);
    v121 = v110;
    v122 = v111;
    sub_268CD54B0(&v121, v86, v87, v88);
    v89 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v121 = v112;
      v122 = v113;
      sub_268CD54B0(&v121, &v125, &v124, &v123);
      v81 = 0;
      v121 = v115;
      v122 = v116;
      sub_268CD54B0(&v121, &v125, &v124, &v123);
      _os_log_impl(&dword_268CBE000, v119, v120, "OpenSettingTemplatingService opening setting based on intent %@.", v83, 0xCu);
      sub_268CD54FC(v84, 1, v82);
      sub_268CD54FC(v85, 0, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BE0](v95);
  if (v95)
  {
    v80 = v95;
    v78 = v95;
    v79 = [v95 punchoutUrl];
    if (v79)
    {
      v77 = v79;
      v72 = v79;
      v73 = sub_268F9AE24();
      v74 = v21;
      MEMORY[0x277D82BD8](v72);
      v75 = v73;
      v76 = v74;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v69 = v76;
    v68 = v75;
    MEMORY[0x277D82BD8](v78);
    v70 = v68;
    v71 = v69;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v66 = v71;
  v67 = v70;
  if (v71)
  {
    v64 = v67;
    v65 = v66;
    v60 = v66;
    v59 = v67;
    v133 = v67;
    v134 = v66;
    v57 = *(v91 + qword_2802DD7B0);

    v58 = sub_268E75B1C();

    v132 = v58;
    sub_268F99134();
    v61 = sub_268F99144();
    v62 = *(v61 - 8);
    v63 = v61 - 8;
    if ((*(v62 + 48))(v99, 1) == 1)
    {
      v56 = 0;
    }

    else
    {
      v55 = sub_268F99114();
      (*(v62 + 8))(v99, v61);
      v56 = v55;
    }

    v49 = v56;
    [v58 setPunchOutUri_];
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BE0](v58);
    v50 = &v129;
    sub_268CDE730(v91 + qword_2802DD7B8, &v129);
    v52 = v130;
    v51 = v131;
    __swift_project_boxed_opaque_existential_1(v50, v130);
    v53 = sub_268F99A14();
    v54 = v22;
    if (v22)
    {
      v47 = v53;
      v48 = v54;
      v44 = v54;
      v45 = sub_268F9AE14();

      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v35 = v46;
    __swift_destroy_boxed_opaque_existential_0(&v129);
    [v58 setRefId_];
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v58);
    v38 = v126;
    sub_268CDE730(v91 + qword_2802DD7B8, v126);
    v36 = v127;
    v37 = v128;
    __swift_project_boxed_opaque_existential_1(v38, v127);
    sub_268F99A04();
    __swift_destroy_boxed_opaque_existential_0(v38);
    v40 = 0;
    v43 = sub_268F9AEF4();
    v42 = v23;
    v39 = MEMORY[0x277D837D0];
    v41 = sub_268F9B734();
    sub_268F9B734();
    sub_268F999E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
    MEMORY[0x277D82BD8](v58);
  }

  else
  {
    v29 = sub_268F9B294();
    v31 = *sub_268DC892C();
    MEMORY[0x277D82BE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v32 = 0;
    v30 = sub_268F9B734();
    sub_268F9AC14(v29, &dword_268CBE000, v31, v92, 23, 2);

    MEMORY[0x277D82BD8](v31);
    v33 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(v32, v100, v101, v24);
    swift_getWitnessTable();
    v34 = 1;
    v25 = swift_allocError();
    v26 = v90;
    *v27 = 1;
    *v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

double sub_268E6E6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v47 = a2;
  v38 = a3;
  v39 = a4;
  v37 = sub_268E76A40;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v59 = 0;
  v41 = *v4;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46, v47, v38, v39);
  v49 = &v17 - v40;
  v65 = v5;
  v66 = v6;
  v63 = v7;
  v64 = v8;
  v62 = v4;
  v48 = 0;
  v42 = *(v41 + qword_2802F1520);
  v61 = v42;
  v43 = *(v41 + qword_2802F1520 + 8);
  v60 = v43;
  v44 = *(v4 + qword_2802DD7B0);

  v45 = sub_268E75B1C();

  v59 = v45;
  sub_268F99134();
  v50 = sub_268F99144();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  if ((*(v51 + 48))(v49, 1) == 1)
  {
    v35 = 0;
  }

  else
  {
    v34 = sub_268F99114();
    (*(v51 + 8))(v49, v50);
    v35 = v34;
  }

  v28 = v35;
  [v45 setPunchOutUri_];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BE0](v45);
  v29 = &v56;
  sub_268CDE730(v36 + qword_2802DD7B8, &v56);
  v31 = v57;
  v30 = v58;
  __swift_project_boxed_opaque_existential_1(v29, v57);
  v32 = sub_268F99A14();
  v33 = v9;
  if (v9)
  {
    v26 = v32;
    v27 = v33;
    v23 = v33;
    v24 = sub_268F9AE14();

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v18 = v25;
  __swift_destroy_boxed_opaque_existential_0(&v56);
  [v45 setRefId_];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v45);
  v22 = v53;
  sub_268CDE730(v36 + qword_2802DD7B8, v53);
  v19 = v54;
  v20 = v55;
  __swift_project_boxed_opaque_existential_1(v22, v54);

  v10 = swift_allocObject();
  v11 = v43;
  v12 = v38;
  v13 = v39;
  v14 = v46;
  v15 = v47;
  v21 = v10;
  v10[2] = v42;
  v10[3] = v11;
  v10[4] = v12;
  v10[5] = v13;
  v10[6] = v14;
  v10[7] = v15;
  sub_268D353D0();
  sub_268F99A24();

  __swift_destroy_boxed_opaque_existential_0(v22);
  *&result = MEMORY[0x277D82BD8](v45).n128_u64[0];
  return result;
}

void sub_268E6EC08(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a1;
  v79 = a2;
  v80 = a3;
  v81 = a4;
  v82 = a5;
  v67 = a6;
  v68 = a7;
  v69 = sub_268DA6D94;
  v70 = sub_268CD7608;
  v71 = sub_268CD7600;
  v72 = sub_268CD7600;
  v73 = sub_268CD7614;
  v74 = &unk_268FA5B50;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v75 = 0;
  v98 = a6;
  v97 = a7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76, v7, v8, v9);
  v78 = (&v36 - v77);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC520, &qword_268F9E7E0);
  v84 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83, v10, v80, v81);
  v86 = (&v36 - v84);
  v96 = v11;
  v94 = v12;
  v95 = v13;
  v92 = v14;
  v93 = v15;
  sub_268D570CC(v11, (&v36 - v84));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_268F9B284();
    v59 = *sub_268DC892C();
    MEMORY[0x277D82BE0](v59);

    v49 = 32;
    v50 = 7;
    v17 = swift_allocObject();
    v18 = v82;
    v51 = v17;
    *(v17 + 16) = v81;
    *(v17 + 24) = v18;
    v48 = 17;
    v53 = swift_allocObject();
    *(v53 + 16) = 32;
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    v19 = swift_allocObject();
    v20 = v51;
    v52 = v19;
    *(v19 + 16) = v69;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v52;
    v56 = v21;
    *(v21 + 16) = v70;
    *(v21 + 24) = v22;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v55 = sub_268F9B734();
    v57 = v23;

    v24 = v53;
    v25 = v57;
    *v57 = v71;
    v25[1] = v24;

    v26 = v54;
    v27 = v57;
    v57[2] = v72;
    v27[3] = v26;

    v28 = v56;
    v29 = v57;
    v57[4] = v73;
    v29[5] = v28;
    sub_268CD0F7C();

    if (os_log_type_enabled(v59, v60))
    {
      v30 = v75;
      v41 = sub_268F9B3A4();
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v42 = sub_268CD5448(0, v40, v40);
      v43 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v44 = &v91;
      v91 = v41;
      v45 = &v90;
      v90 = v42;
      v46 = &v89;
      v89 = v43;
      sub_268CD549C(2, &v91);
      sub_268CD549C(1, v44);
      v87 = v71;
      v88 = v53;
      sub_268CD54B0(&v87, v44, v45, v46);
      v47 = v30;
      if (v30)
      {

        __break(1u);
      }

      else
      {
        v87 = v72;
        v88 = v54;
        sub_268CD54B0(&v87, &v91, &v90, &v89);
        v39 = 0;
        v87 = v73;
        v88 = v56;
        sub_268CD54B0(&v87, &v91, &v90, &v89);
        _os_log_impl(&dword_268CBE000, v59, v60, "Failed to open setting for url: %s", v41, 0xCu);
        sub_268CD54FC(v42, 0, v40);
        sub_268CD54FC(v43, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v59);

    v38 = 0;
    v36 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v67, v68, v31);
    swift_getWitnessTable();
    v37 = 1;
    v32 = swift_allocError();
    v33 = v78;
    *v34 = 0;
    *v33 = v32;
    swift_storeEnumTagMultiPayload();
    v79(v78);
    sub_268D28378(v78);

    v35 = sub_268F99A44();
    (*(*(v35 - 8) + 8))(v86);
  }

  else
  {
    v66 = *v86;

    v62 = 0;
    v65 = sub_268F9AEF4();
    v64 = v16;
    v61 = MEMORY[0x277D837D0];
    v63 = sub_268F9B734();
    sub_268F9B734();
    sub_268F999E4();
    swift_storeEnumTagMultiPayload();
    v79(v78);
    sub_268D28378(v78);

    MEMORY[0x277D82BD8](v66);
  }
}

void sub_268E6F510(uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = *(*v4 + qword_2802F1520);
  v32 = *(*v4 + qword_2802F1520 + 8);
  v5 = sub_268DC892C();
  v34 = *v5;
  MEMORY[0x277D82BE0](*v5);
  v33 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("Handling failure.", 17, 2, &dword_268CBE000, v34, v33);

  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v26 = [a3 code];
    MEMORY[0x277D82BD8](a3);
    v27 = v26;
    v28 = 0;
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  if (v28)
  {
    v15 = sub_268DC892C();
    v20 = *v15;
    MEMORY[0x277D82BE0](*v15);
    v19 = sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04("OpenSettingIntentResponse code is missing", 41, 2, &dword_268CBE000, v20, v19);

    MEMORY[0x277D82BD8](v20);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v31, v32, v16);
    swift_getWitnessTable();
    v17 = swift_allocError();
    *v18 = 2;
    *a4 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }

  else if (v27 == 7)
  {
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v31, v32, v6);
    swift_getWitnessTable();
    v7 = swift_allocError();
    *v8 = 2;
    *a4 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }

  else if (v27 == 8)
  {
    sub_268E701B4(a2, a3, a4);
  }

  else
  {
    v9 = sub_268DC892C();
    v25 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v24 = sub_268F9B294();
    sub_268F9B734();
    v23 = v10;
    MEMORY[0x277D82BE0](a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v21 = sub_268F9AE64();
    v22 = v11;
    v23[3] = MEMORY[0x277D837D0];
    v23[4] = sub_268CDD224();
    *v23 = v21;
    v23[1] = v22;
    sub_268CD0F7C();
    sub_268F9AC04("OpenSettingIntentResponse contains unsupported error code: %@", 61, 2, &dword_268CBE000, v25, v24);

    MEMORY[0x277D82BD8](v25);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v31, v32, v12);
    swift_getWitnessTable();
    v13 = swift_allocError();
    *v14 = 3;
    *a4 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268E6FA60(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id *), uint64_t a5)
{
  v65 = a1;
  v62 = a2;
  v79 = a3;
  v63 = a4;
  v64 = a5;
  v76 = "Handling failure.";
  v74 = &dword_268CBE000;
  v59 = &unk_268FA5B50;
  v60 = "OpenSettingIntentResponse contains unsupported error code: %@";
  v61 = "OpenSettingIntentResponse code is missing";
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v81 = 0;
  v68 = *v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v62, v79, v63);
  v69 = (&v31 - v67);
  v89 = v6;
  v88 = v7;
  v87 = v8;
  v85 = v9;
  v86 = v10;
  v84 = v5;
  v72 = 0;
  v70 = *(v68 + qword_2802F1520);
  v83 = v70;
  v71 = *(v68 + qword_2802F1520 + 8);
  v82 = v71;
  v78 = *sub_268DC892C();
  MEMORY[0x277D82BE0](v78);
  v75 = sub_268F9B284();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v77 = sub_268F9B734();
  sub_268F9AC04(v76, 17, 2, v74, v78, v75);

  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BE0](v79);
  if (v79)
  {
    v58 = v79;
    v54 = v79;
    v55 = [v79 code];
    MEMORY[0x277D82BD8](v54);
    v56 = v55;
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 1;
  }

  v53 = v56;
  if (v57)
  {
    v34 = *sub_268DC892C();
    MEMORY[0x277D82BE0](v34);
    v32 = sub_268F9B294();
    v35 = 0;
    v33 = sub_268F9B734();
    v37 = 2;
    sub_268F9AC04(v61, 41, 2, v74, v34, v32);

    MEMORY[0x277D82BD8](v34);

    v36 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(v35, v70, v71, v27);
    swift_getWitnessTable();
    v38 = 1;
    v28 = swift_allocError();
    v29 = v69;
    *v30 = v37;
    *v29 = v28;
    swift_storeEnumTagMultiPayload();
    v63(v69);
    sub_268D28378(v69);
  }

  else
  {
    v52 = v53;
    v51 = v53;
    v81 = v53;
    if (v53 == 7)
    {

      v49 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v70, v71, v11);
      swift_getWitnessTable();
      v50 = 1;
      v12 = swift_allocError();
      v13 = v69;
      *v14 = 2;
      *v13 = v12;
      swift_storeEnumTagMultiPayload();
      v63(v69);
      sub_268D28378(v69);
    }

    else if (v51 == 8)
    {
      return sub_268E707B4(v62, v79, v63, v64);
    }

    else
    {
      v46 = *sub_268DC892C();
      MEMORY[0x277D82BE0](v46);
      v44 = sub_268F9B294();
      v43 = sub_268F9B734();
      v42 = v15;
      MEMORY[0x277D82BE0](v79);
      v39 = &v80;
      v80 = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
      v40 = sub_268F9AE64();
      v41 = v16;
      v42[3] = MEMORY[0x277D837D0];
      v17 = sub_268CDD224();
      v18 = v40;
      v19 = v41;
      v20 = v42;
      v42[4] = v17;
      *v20 = v18;
      v20[1] = v19;
      sub_268CD0F7C();
      v45 = v21;
      sub_268F9AC04(v60, 61, 2, v74, v46, v44);

      MEMORY[0x277D82BD8](v46);

      v47 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v70, v71, v22);
      swift_getWitnessTable();
      v48 = 1;
      v23 = swift_allocError();
      v24 = v69;
      *v25 = 3;
      *v24 = v23;
      swift_storeEnumTagMultiPayload();
      v63(v69);
      sub_268D28378(v69);
    }
  }
}

void sub_268E701B4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v42 = 0;
  v43 = 0;
  v4 = *v3;
  v48 = a1;
  v47 = a2;
  v46 = v3;
  v38 = *(v4 + qword_2802F1520);
  v45 = v38;
  v39 = *(v4 + qword_2802F1520 + 8);
  v44 = v39;
  MEMORY[0x277D82BE0](a2);
  if (a2)
  {
    v36 = [a2 errorDetail];
    if (v36)
    {
      v32 = sub_268F9AE24();
      v33 = v5;
      MEMORY[0x277D82BD8](v36);
      v34 = v32;
      v35 = v33;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    MEMORY[0x277D82BD8](a2);
    v30 = v34;
    v31 = v35;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  if (v31)
  {
    v42 = v30;
    v43 = v31;

    v41[0] = sub_268E948B8(19);
    v41[1] = v6;
    v29 = MEMORY[0x26D62DB50](v41[0], v6, v30, v31);
    sub_268CD9D30(v41);

    if (v29)
    {

      sub_268F537E4();
    }

    else
    {
      v7 = sub_268DC892C();
      v28 = *v7;
      MEMORY[0x277D82BE0](*v7);
      v27 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v26 = v8;
      MEMORY[0x277D82BE0](a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
      v24 = sub_268F9AE64();
      v25 = v9;
      v26[3] = MEMORY[0x277D837D0];
      v26[4] = sub_268CDD224();
      *v26 = v24;
      v26[1] = v25;
      sub_268CD0F7C();
      sub_268F9AC04("OpenSettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 89, 2, &dword_268CBE000, v28, v27);

      MEMORY[0x277D82BD8](v28);
      type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v38, v39, v10);
      swift_getWitnessTable();
      v11 = swift_allocError();
      *v12 = 4;
      *a3 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v13 = sub_268DC892C();
    v23 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v14;
    MEMORY[0x277D82BE0](a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v19 = sub_268F9AE64();
    v20 = v15;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04("OpenSettingIntentResponse contains error code 'other reason' but no details: %@", 79, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v38, v39, v16);
    swift_getWitnessTable();
    v17 = swift_allocError();
    *v18 = 2;
    *a3 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_268E707B4(uint64_t a1, void *a2, void (*a3)(id *), uint64_t a4)
{
  v119 = a4;
  v118 = a3;
  v131 = a2;
  v120 = a1;
  v114 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v137 = 0;
  v136 = 0;
  v113 = 0;
  v127 = *v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v115, v5, v6);
  v117 = (&v57 - v116);
  v121 = sub_268F9AB24();
  v122 = *(v121 - 8);
  v123 = v122;
  v124 = *(v122 + 64);
  MEMORY[0x28223BE20](v120, v131, v118, v119);
  v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = &v57 - v126;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v128 = &v57 - v126;
  v145 = v11;
  v144 = v12;
  v142 = v13;
  v143 = v14;
  v141 = v4;
  v129 = *(v127 + qword_2802F1520);
  v140 = v129;
  v130 = *(qword_2802F1520 + v127 + 8);
  v139 = v130;
  v15 = v12;
  if (v131)
  {
    v111 = v131;
    v109 = v131;
    v110 = [v131 errorDetail];
    if (v110)
    {
      v108 = v110;
      v103 = v110;
      v104 = sub_268F9AE24();
      v105 = v16;

      v106 = v104;
      v107 = v105;
    }

    else
    {
      v106 = 0;
      v107 = 0;
    }

    v100 = v107;
    v99 = v106;

    v101 = v99;
    v102 = v100;
  }

  else
  {
    v101 = 0;
    v102 = 0;
  }

  v97 = v102;
  v98 = v101;
  if (!v102)
  {
    v65 = *sub_268DC892C();
    v43 = v65;
    v63 = sub_268F9B294();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v69 = 1;
    v62 = sub_268F9B734();
    v59 = v44;
    v45 = v131;
    v138 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v58 = sub_268F9AE64();
    v60 = v46;
    v59[3] = MEMORY[0x277D837D0];
    v47 = sub_268CDD224();
    v48 = v58;
    v49 = v59;
    v50 = v60;
    v59[4] = v47;
    *v49 = v48;
    v49[1] = v50;
    sub_268CD0F7C();
    v64 = v51;
    v68 = 2;
    sub_268F9AC04("OpenSettingIntentResponse contains error code 'other reason' but no details: %@", 79);

    v66 = 0;
    v67 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v129, v130, v52);
    swift_getWitnessTable();
    v53 = swift_allocError();
    v54 = v117;
    *v55 = v68;
    *v54 = v53;
    swift_storeEnumTagMultiPayload();
    v118(v117);
    sub_268D28378(v117);

    return v113;
  }

  v95 = v98;
  v96 = v97;
  v93 = v97;
  v92 = v98;
  v136 = v98;
  v137 = v97;

  v135[0] = sub_268E948B8(19);
  v135[1] = v17;
  v133 = v92;
  v134 = v93;
  v94 = MEMORY[0x26D62DB50](v135[0], v17, v92, v93);
  sub_268CD9D30(v135);
  if ((v94 & 1) == 0)
  {

    v77 = *sub_268DC892C();
    v30 = v77;
    v75 = sub_268F9B294();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v80 = 1;
    v74 = sub_268F9B734();
    v71 = v31;
    v32 = v131;
    v132 = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v70 = sub_268F9AE64();
    v72 = v33;
    v71[3] = MEMORY[0x277D837D0];
    v34 = sub_268CDD224();
    v35 = v70;
    v36 = v71;
    v37 = v72;
    v71[4] = v34;
    *v36 = v35;
    v36[1] = v37;
    sub_268CD0F7C();
    v76 = v38;
    sub_268F9AC04("OpenSettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 89, 2, &dword_268CBE000, v77, v75);

    v78 = 0;
    v79 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v129, v130, v39);
    swift_getWitnessTable();
    v40 = swift_allocError();
    v41 = v117;
    *v42 = 4;
    *v41 = v40;
    swift_storeEnumTagMultiPayload();
    v118(v117);
    sub_268D28378(v117);

    return v113;
  }

  v18 = v128;
  v19 = v113;

  v20 = sub_268DB98D4();
  v85 = *v20;
  v86 = v20[1];
  v87 = *(v20 + 16);
  v88 = *sub_268DC7BA8();
  v82 = v88;
  v21 = v88;
  (*(v123 + 16))(v18, v112 + qword_2802DD7D8, v121);
  sub_268F9AB14();
  v90 = sub_268F9AB04();
  v84 = *(v123 + 8);
  v83 = v123 + 8;
  v84(v125, v121);
  v84(v128, v121);

  v89 = &v57;
  MEMORY[0x28223BE20](v85, v86, v87, v88);
  v22 = v118;
  v23 = v90;
  *(&v57 - 4) = v24;
  *(&v57 - 3) = v22;
  *(&v57 - 2) = v25;
  sub_268DB944C(v26, v27, v28, v29, (v23 & 1) == 0, sub_268E76A6C, (&v57 - 6), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v91 = v19;
  if (!v19)
  {

    return v91;
  }

  __break(1u);
  return result;
}

uint64_t sub_268E712D4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_268F53570();
}

uint64_t sub_268E71398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268E7140C, 0);
}

uint64_t sub_268E7140C(uint64_t a1)
{
  v28 = v1;
  v14 = *(v1 + 56);
  *(v1 + 16) = v1;
  v22 = sub_268F9B284();
  v2 = sub_268DC892C();
  v21 = *v2;
  MEMORY[0x277D82BE0](*v2);
  MEMORY[0x277D82BE0](v14);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 64;
  v18 = swift_allocObject();
  *(v18 + 16) = 8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268E6D850;
  *(v16 + 24) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268CD98AC;
  *(v19 + 24) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  sub_268F9B734();
  v20 = v3;

  *v20 = sub_268CD7600;
  v20[1] = v17;

  v20[2] = sub_268CD7600;
  v20[3] = v18;

  v20[4] = sub_268CD98B8;
  v20[5] = v19;
  sub_268CD0F7C();

  if (os_log_type_enabled(v21, v22))
  {
    buf = sub_268F9B3A4();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v11 = sub_268CD5448(1, v9, v9);
    v12 = sub_268CD5448(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v23 = buf;
    v24 = v11;
    v25 = v12;
    sub_268CD549C(2, &v23);
    sub_268CD549C(1, &v23);
    v26 = sub_268CD7600;
    v27 = v17;
    sub_268CD54B0(&v26, &v23, &v24, &v25);
    v26 = sub_268CD7600;
    v27 = v18;
    sub_268CD54B0(&v26, &v23, &v24, &v25);
    v26 = sub_268CD98B8;
    v27 = v19;
    sub_268CD54B0(&v26, &v23, &v24, &v25);
    _os_log_impl(&dword_268CBE000, v21, v22, "OpenSettingTemplatingService opening setting based on intent %@. Response Framework handling.", buf, 0xCu);
    sub_268CD54FC(v11, 1, v9);
    sub_268CD54FC(v12, 0, MEMORY[0x277D84F70] + 8);
    sub_268F9B384();
  }

  else
  {
  }

  v7 = v13[8];
  v8 = v13[7];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BE0](v8);
  sub_268E71AE0(v8, v7);
  MEMORY[0x277D82BD8](v8);
  sub_268D28C4C();
  v4 = sub_268CF0C44();
  v5 = *(v13[2] + 8);

  return v5(v4);
}

double sub_268E71AE0(void *a1, void *a2)
{
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v13 = 0;
  v3 = *v2;
  v18 = a1;
  v17 = a2;
  v16 = v2;
  v15 = *(v3 + qword_2802F1520);
  v14 = *(v3 + qword_2802F1520 + 8);

  v11 = sub_268F6FC10(a1);

  if (v11)
  {
    v6 = sub_268E72824(a1, a2);
  }

  else
  {
    v5 = sub_268E71CA4(a1, a2);
    if (v9)
    {
      return result;
    }

    v6 = v5;
  }

  v13 = v6;
  sub_268CDE730(v8 + qword_2802DD7B8, v12);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_268F99A04();
  __swift_destroy_boxed_opaque_existential_0(v12);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

id sub_268E71CA4(void *a1, void *a2)
{
  v108 = a1;
  v114 = a2;
  v106 = "Intent response is nil.";
  v107 = &unk_268FA5B50;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v110 = *v2;
  v109 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114, v3, v4, v5);
  v111 = &v25 - v109;
  v125 = v6;
  v124 = v7;
  v123 = v2;
  v112 = *(v110 + qword_2802F1520);
  v122 = v112;
  v113 = *(v110 + qword_2802F1520 + 8);
  v121 = v113;
  MEMORY[0x277D82BE0](v7);
  if (v114)
  {
    v104 = v114;
    v102 = v114;
    v103 = [v114 punchoutUrl];
    if (v103)
    {
      v101 = v103;
      v96 = v103;
      v97 = sub_268F9AE24();
      v98 = v8;
      MEMORY[0x277D82BD8](v96);
      v99 = v97;
      v100 = v98;
    }

    else
    {
      v99 = 0;
      v100 = 0;
    }

    v93 = v100;
    v92 = v99;
    MEMORY[0x277D82BD8](v102);
    v94 = v92;
    v95 = v93;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v90 = v95;
  v91 = v94;
  if (v95)
  {
    v88 = v91;
    v89 = v90;
    v84 = v90;
    v83 = v91;
    v119 = v91;
    v120 = v90;
    v81 = *(v105 + qword_2802DD7B0);

    v82 = sub_268E75B1C();

    v118 = v82;
    sub_268F99134();
    v85 = sub_268F99144();
    v86 = *(v85 - 8);
    v87 = v85 - 8;
    if ((*(v86 + 48))(v111, 1) == 1)
    {
      v80 = 0;
    }

    else
    {
      v79 = sub_268F99114();
      (*(v86 + 8))(v111, v85);
      v80 = v79;
    }

    v73 = v80;
    [v82 setPunchOutUri_];
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BE0](v82);
    v74 = &v115;
    sub_268CDE730(v105 + qword_2802DD7B8, &v115);
    v76 = v116;
    v75 = v117;
    __swift_project_boxed_opaque_existential_1(v74, v116);
    v77 = sub_268F99A14();
    v78 = v9;
    if (v9)
    {
      v71 = v77;
      v72 = v78;
      v68 = v78;
      v69 = sub_268F9AE14();

      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    v67 = v70;
    __swift_destroy_boxed_opaque_existential_0(&v115);
    [v82 setRefId_];
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BE0](v108);
    if (v108 && (v66 = v108, v64 = v108, v65 = [v108 settingMetadata], *&v10 = MEMORY[0x277D82BD8](v64).n128_u64[0], v65 && (v63 = v65, v61 = v65, v62 = objc_msgSend(v65, sel_targetApp, v10), *&v11 = MEMORY[0x277D82BD8](v61).n128_u64[0], v62)))
    {
      v60 = v62;
      v58 = v62;
      v12 = [v62 appName];
      v59 = v12;
      if (v12)
      {
        v57 = v59;
        v52 = v59;
        v53 = sub_268F9AE24();
        v54 = v13;
        MEMORY[0x277D82BD8](v52);
        v55 = v53;
        v56 = v54;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      v49 = v56;
      v48 = v55;
      MEMORY[0x277D82BD8](v58);
      v50 = v48;
      v51 = v49;
    }

    else
    {
      v50 = 0;
      v51 = 0;
    }

    v46 = v51;
    v47 = v50;
    if (v51)
    {
      v44 = v47;
      v45 = v46;
      v41 = v46;
      v42 = sub_268F9AE14();

      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v32 = v43;
    [v82 setAppDisplayName_];
    MEMORY[0x277D82BD8](v32);
    v38 = MEMORY[0x277D84F70] + 8;
    v35 = sub_268F9B734();
    v34 = v14;
    v37 = *MEMORY[0x277D48B28];
    MEMORY[0x277D82BE0](v37);
    v15 = sub_268F9AE24();
    v16 = v34;
    v33 = MEMORY[0x277D837D0];
    v34[3] = MEMORY[0x277D837D0];
    *v16 = v15;
    v16[1] = v17;
    v36 = *MEMORY[0x277D48B20];
    MEMORY[0x277D82BE0](v36);
    v18 = sub_268F9AE24();
    v19 = v34;
    v34[7] = v33;
    v19[4] = v18;
    v19[5] = v20;
    sub_268CD0F7C();
    v39 = v21;
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v40 = sub_268F9B004();

    [v82 setLaunchOptions_];
    MEMORY[0x277D82BD8](v40);

    return v82;
  }

  else
  {
    HIDWORD(v25) = sub_268F9B294();
    v27 = *sub_268DC892C();
    MEMORY[0x277D82BE0](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v28 = 0;
    v26 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v25), &dword_268CBE000, v27, v106, 23, 2);

    MEMORY[0x277D82BD8](v27);
    v29 = type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(v28, v112, v113, v23);
    swift_getWitnessTable();
    v31 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    return v30;
  }
}

id sub_268E72824(void *a1, uint64_t a2)
{
  v214 = v247;
  v226 = a1;
  v215 = a2;
  v203 = sub_268E76B08;
  v204 = sub_268CD7608;
  v205 = sub_268CD7600;
  v206 = sub_268CD7600;
  v207 = sub_268CD7614;
  v208 = sub_268E76B00;
  v209 = sub_268CD7608;
  v210 = sub_268CD7600;
  v211 = sub_268CD7600;
  v212 = sub_268CD7614;
  v247[1] = 0;
  v247[0] = 0;
  v246 = 0;
  v243 = 0;
  v213 = 0;
  v218 = *v2;
  v216 = 0;
  v221 = sub_268F99244();
  v219 = *(v221 - 8);
  v220 = v221 - 8;
  v217 = (*(v219 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v215, v3, v4);
  v5 = v218;
  v222 = &v51 - v217;
  v6[1] = v226;
  *v6 = v7;
  v246 = v2;
  v245 = *(v5 + qword_2802F1520);
  v244 = *(v5 + qword_2802F1520 + 8);
  sub_268E76A9C();
  v225 = sub_268CF0C44();
  v243 = v225;
  MEMORY[0x277D82BE0](v225);
  sub_268F99234();
  sub_268F99224();
  v223 = v8;
  v224 = sub_268F9AE14();
  (*(v219 + 8))(v222, v221);

  [v225 setAceId_];
  MEMORY[0x277D82BD8](v224);
  MEMORY[0x277D82BD8](v225);
  MEMORY[0x277D82BE0](v226);
  if (v226 && (v202 = v226, v200 = v226, v201 = [v226 settingMetadata], *&v9 = MEMORY[0x277D82BD8](v200).n128_u64[0], v201 && (v199 = v201, v197 = v201, v198 = objc_msgSend(v201, sel_targetApp, v9), *&v10 = MEMORY[0x277D82BD8](v197).n128_u64[0], v198 && (v196 = v198, v194 = v198, v11 = objc_msgSend(v198, sel_bundleIdentifier, v10), (v195 = v11) == 0 ? (v191 = 0, v192 = 0) : (v193 = v195, v188 = v195, v189 = sub_268F9AE24(), v190 = v12, MEMORY[0x277D82BD8](v188), v191 = v189, v192 = v190), v187 = v192, v186 = v191, MEMORY[0x277D82BD8](v194), v187))))
  {
    v184 = v186;
    v185 = v187;
    v181 = v187;
    v182 = sub_268F9AF14();

    v183 = v182 & 1;
  }

  else
  {
    v183 = 2;
  }

  v180 = v183;
  v241 = v183;
  v242 = 0;
  if (v183 != 2)
  {
    v227 = v180;
    if (v242 != 2)
    {
      v179 = (v227 & 1) == (v242 & 1);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (v242 != 2)
  {
LABEL_24:
    v179 = 0;
    goto LABEL_22;
  }

  v179 = 1;
LABEL_22:
  if (v179)
  {
    v178 = sub_268F9B284();
    v177 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v177);
    MEMORY[0x277D82BE0](v226);
    v168 = 7;
    v169 = swift_allocObject();
    *(v169 + 16) = v226;
    v166 = 17;
    v171 = swift_allocObject();
    *(v171 + 16) = 32;
    v172 = swift_allocObject();
    *(v172 + 16) = 8;
    v167 = 32;
    v13 = swift_allocObject();
    v14 = v169;
    v170 = v13;
    *(v13 + 16) = v203;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v170;
    v174 = v15;
    *(v15 + 16) = v204;
    *(v15 + 24) = v16;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v173 = sub_268F9B734();
    v175 = v17;

    v18 = v171;
    v19 = v175;
    *v175 = v205;
    v19[1] = v18;

    v20 = v172;
    v21 = v175;
    v175[2] = v206;
    v21[3] = v20;

    v22 = v174;
    v23 = v175;
    v175[4] = v207;
    v23[5] = v22;
    sub_268CD0F7C();

    if (os_log_type_enabled(v177, v178))
    {
      v24 = v213;
      v159 = sub_268F9B3A4();
      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v160 = sub_268CD5448(0, v158, v158);
      v161 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v162 = &v232;
      v232 = v159;
      v163 = &v231;
      v231 = v160;
      v164 = &v230;
      v230 = v161;
      sub_268CD549C(2, &v232);
      sub_268CD549C(1, v162);
      v228 = v205;
      v229 = v171;
      sub_268CD54B0(&v228, v162, v163, v164);
      v165 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v228 = v206;
        v229 = v172;
        sub_268CD54B0(&v228, &v232, &v231, &v230);
        v156 = 0;
        v228 = v207;
        v229 = v174;
        sub_268CD54B0(&v228, &v232, &v231, &v230);
        v155 = 0;
        _os_log_impl(&dword_268CBE000, v177, v178, "Setting bundle identifier %s.", v159, 0xCu);
        sub_268CD54FC(v160, 0, v158);
        sub_268CD54FC(v161, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v157 = v155;
      }
    }

    else
    {
      v25 = v213;

      v157 = v25;
    }

    v154 = v157;
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BE0](v226);
    if (v226 && (v153 = v226, v151 = v226, v152 = [v226 settingMetadata], *&v26 = MEMORY[0x277D82BD8](v151).n128_u64[0], v152 && (v150 = v152, v148 = v152, v149 = objc_msgSend(v152, sel_targetApp, v26), *&v27 = MEMORY[0x277D82BD8](v148).n128_u64[0], v149)))
    {
      v147 = v149;
      v145 = v149;
      v28 = [v149 bundleIdentifier];
      v146 = v28;
      if (v28)
      {
        v144 = v146;
        v139 = v146;
        v140 = sub_268F9AE24();
        v141 = v29;
        MEMORY[0x277D82BD8](v139);
        v142 = v140;
        v143 = v141;
      }

      else
      {
        v142 = 0;
        v143 = 0;
      }

      v136 = v143;
      v135 = v142;
      MEMORY[0x277D82BD8](v145);
      v137 = v135;
      v138 = v136;
    }

    else
    {
      v137 = 0;
      v138 = 0;
    }

    v133 = v138;
    v134 = v137;
    if (v138)
    {
      v131 = v134;
      v132 = v133;
      v128 = v133;
      v129 = sub_268F9AE14();

      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    v126 = v130;
    [v225 setAppBundleId_];
    MEMORY[0x277D82BD8](v126);
    v127 = v154;
  }

  else
  {
    v127 = v213;
  }

  v125 = v127;
  MEMORY[0x277D82BE0](v226);
  if (v226 && (v124 = v226, v122 = v226, v123 = [v226 settingMetadata], *&v30 = MEMORY[0x277D82BD8](v122).n128_u64[0], v123 && (v121 = v123, v119 = v123, v120 = objc_msgSend(v123, sel_targetApp, v30), *&v31 = MEMORY[0x277D82BD8](v119).n128_u64[0], v120 && (v118 = v120, v116 = v120, v32 = objc_msgSend(v120, sel_appName, v31), (v117 = v32) == 0 ? (v113 = 0, v114 = 0) : (v115 = v117, v110 = v117, v111 = sub_268F9AE24(), v112 = v33, MEMORY[0x277D82BD8](v110), v113 = v111, v114 = v112), v109 = v114, v108 = v113, MEMORY[0x277D82BD8](v116), v109))))
  {
    v106 = v108;
    v107 = v109;
    v103 = v109;
    v104 = sub_268F9AF14();

    v105 = v104 & 1;
  }

  else
  {
    v105 = 2;
  }

  v102 = v105;
  v239 = v105;
  v240 = 0;
  if (v105 != 2)
  {
    v233 = v102;
    if (v240 != 2)
    {
      v101 = (v233 & 1) == (v240 & 1);
      goto LABEL_71;
    }

    goto LABEL_73;
  }

  if (v240 != 2)
  {
LABEL_73:
    v101 = 0;
    goto LABEL_71;
  }

  v101 = 1;
LABEL_71:
  if (v101)
  {
    v100 = sub_268F9B284();
    v99 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v99);
    MEMORY[0x277D82BE0](v226);
    v90 = 7;
    v91 = swift_allocObject();
    *(v91 + 16) = v226;
    v88 = 17;
    v93 = swift_allocObject();
    *(v93 + 16) = 32;
    v94 = swift_allocObject();
    *(v94 + 16) = 8;
    v89 = 32;
    v34 = swift_allocObject();
    v35 = v91;
    v92 = v34;
    *(v34 + 16) = v208;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v92;
    v96 = v36;
    *(v36 + 16) = v209;
    *(v36 + 24) = v37;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v95 = sub_268F9B734();
    v97 = v38;

    v39 = v93;
    v40 = v97;
    *v97 = v210;
    v40[1] = v39;

    v41 = v94;
    v42 = v97;
    v97[2] = v211;
    v42[3] = v41;

    v43 = v96;
    v44 = v97;
    v97[4] = v212;
    v44[5] = v43;
    sub_268CD0F7C();

    if (os_log_type_enabled(v99, v100))
    {
      v45 = v125;
      v81 = sub_268F9B3A4();
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v82 = sub_268CD5448(0, v80, v80);
      v83 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v84 = &v238;
      v238 = v81;
      v85 = &v237;
      v237 = v82;
      v86 = &v236;
      v236 = v83;
      sub_268CD549C(2, &v238);
      sub_268CD549C(1, v84);
      v234 = v210;
      v235 = v93;
      sub_268CD54B0(&v234, v84, v85, v86);
      v87 = v45;
      if (v45)
      {

        __break(1u);
      }

      else
      {
        v234 = v211;
        v235 = v94;
        sub_268CD54B0(&v234, &v238, &v237, &v236);
        v79 = 0;
        v234 = v212;
        v235 = v96;
        sub_268CD54B0(&v234, &v238, &v237, &v236);
        _os_log_impl(&dword_268CBE000, v99, v100, "Setting appName %s.", v81, 0xCu);
        sub_268CD54FC(v82, 0, v80);
        sub_268CD54FC(v83, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BE0](v226);
    if (v226 && (v78 = v226, v76 = v226, v77 = [v226 settingMetadata], *&v46 = MEMORY[0x277D82BD8](v76).n128_u64[0], v77 && (v75 = v77, v73 = v77, v74 = objc_msgSend(v77, sel_targetApp, v46), *&v47 = MEMORY[0x277D82BD8](v73).n128_u64[0], v74)))
    {
      v72 = v74;
      v70 = v74;
      v48 = [v74 appName];
      v71 = v48;
      if (v48)
      {
        v69 = v71;
        v64 = v71;
        v65 = sub_268F9AE24();
        v66 = v49;
        MEMORY[0x277D82BD8](v64);
        v67 = v65;
        v68 = v66;
      }

      else
      {
        v67 = 0;
        v68 = 0;
      }

      v61 = v68;
      v60 = v67;
      MEMORY[0x277D82BD8](v70);
      v62 = v60;
      v63 = v61;
    }

    else
    {
      v62 = 0;
      v63 = 0;
    }

    v58 = v63;
    v59 = v62;
    if (v63)
    {
      v56 = v59;
      v57 = v58;
      v53 = v58;
      v54 = sub_268F9AE14();

      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v52 = v55;
    [v225 setAppOrWebsiteName_];
    MEMORY[0x277D82BD8](v52);
  }

  sub_268D34FD4();
  v51 = sub_268F9B304();
  [v225 setShouldPromptForAuthentication_];
  MEMORY[0x277D82BD8](v51);
  return v225;
}

uint64_t sub_268E742EC(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v7 = [a1 settingMetadata];
    *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0];
    if (v7)
    {
      v6 = [v7 targetApp];
      *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      if (v6)
      {
        v3 = [v6 bundleIdentifier];
        v5 = v3;
        if (v3)
        {
          sub_268F9AE24();
          MEMORY[0x277D82BD8](v5);
        }

        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268E744D8(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v7 = [a1 settingMetadata];
    *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0];
    if (v7)
    {
      v6 = [v7 targetApp];
      *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      if (v6)
      {
        v3 = [v6 appName];
        v5 = v3;
        if (v3)
        {
          sub_268F9AE24();
          MEMORY[0x277D82BD8](v5);
        }

        MEMORY[0x277D82BD8](v6);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268E746C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = v3;
  v4[10] = a3;
  v4[9] = a2;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v5 = *v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  v4[12] = *(v5 + qword_2802F1520);
  v4[13] = *(v5 + qword_2802F1520 + 8);
  return MEMORY[0x2822009F8](sub_268E7477C, 0);
}

uint64_t sub_268E7477C()
{
  v36 = *(v0 + 80);
  *(v0 + 16) = v0;
  v1 = sub_268DC892C();
  v35 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v34 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("Handling failure.", 17, 2, &dword_268CBE000, v35, v34);

  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BE0](v36);
  if (v36)
  {
    v29 = v33[10];
    v30 = [v29 code];
    MEMORY[0x277D82BD8](v29);
    v31 = v30;
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 1;
  }

  if (v32)
  {
    v20 = v33[13];
    v19 = v33[12];
    v13 = sub_268DC892C();
    v18 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v17 = sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04("OpenSettingIntentResponse code is missing", 41, 2, &dword_268CBE000, v18, v17);

    MEMORY[0x277D82BD8](v18);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v19, v20, v14);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  v33[7] = v31;
  if (v31 == 7)
  {
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v33[12], v33[13], v2);
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 2;
    swift_willThrow();
    goto LABEL_13;
  }

  if (v31 != 8)
  {
    v28 = v33[13];
    v27 = v33[12];
    v21 = v33[10];
    v8 = sub_268DC892C();
    v26 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v25 = sub_268F9B294();
    sub_268F9B734();
    v24 = v9;
    MEMORY[0x277D82BE0](v21);
    v33[8] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v22 = sub_268F9AE64();
    v23 = v10;
    v24[3] = MEMORY[0x277D837D0];
    v24[4] = sub_268CDD224();
    *v24 = v22;
    v24[1] = v23;
    sub_268CD0F7C();
    sub_268F9AC04("OpenSettingIntentResponse contains unsupported error code: %@", 61, 2, &dword_268CBE000, v26, v25);

    MEMORY[0x277D82BD8](v26);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v27, v28, v11);
    swift_getWitnessTable();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
LABEL_13:
    v16 = *(v33[2] + 8);

    return v16();
  }

  v4 = swift_task_alloc();
  v33[14] = v4;
  *v4 = v33[2];
  v4[1] = sub_268E74DC8;
  v5 = v33[10];
  v6 = v33[9];

  return sub_268E74FC0(v6, v5);
}

uint64_t sub_268E74DC8(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268E74FC0(uint64_t a1, uint64_t a2)
{
  v3[18] = v2;
  v3[17] = a2;
  v3[11] = v3;
  v3[12] = 0;
  v3[13] = 0;
  v3[14] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = *v2;
  v3[12] = a1;
  v3[13] = a2;
  v3[14] = v2;
  v3[19] = *(v4 + qword_2802F1520);
  v3[20] = *(v4 + qword_2802F1520 + 8);
  return MEMORY[0x2822009F8](sub_268E75070, 0);
}

uint64_t sub_268E75070()
{
  v1 = *(v0 + 136);
  v47 = v1;
  *(v0 + 88) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v47)
  {
    v44 = v46[17];
    v45 = [v44 errorDetail];
    if (v45)
    {
      v40 = sub_268F9AE24();
      v41 = v2;
      MEMORY[0x277D82BD8](v45);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    MEMORY[0x277D82BD8](v44);
    v38 = v42;
    v39 = v43;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v46[21] = v39;
  if (v39)
  {
    v46[7] = v38;
    v46[8] = v39;

    v46[9] = sub_268E948B8(19);
    v46[10] = v3;
    v37 = MEMORY[0x26D62DB50](v46[9], v46[10], v38, v39);
    sub_268CD9D30((v46 + 9));
    if (v37)
    {
      v33 = v46[18];

      sub_268CDE730(v33 + qword_2802DD7C8, (v46 + 2));
      v36 = v46[5];
      v34 = v46[6];
      __swift_project_boxed_opaque_existential_1(v46 + 2, v36);
      v35 = (*(v34 + 40) + **(v34 + 40));
      v4 = swift_task_alloc();
      v46[22] = v4;
      *v4 = v46[11];
      v4[1] = sub_268E75838;

      return v35(v36, v34);
    }

    v32 = v46[20];
    v31 = v46[19];
    v25 = v46[17];

    v6 = sub_268DC892C();
    v30 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v29 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v28 = v7;
    MEMORY[0x277D82BE0](v25);
    v46[16] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v26 = sub_268F9AE64();
    v27 = v8;
    v28[3] = MEMORY[0x277D837D0];
    v28[4] = sub_268CDD224();
    *v28 = v26;
    v28[1] = v27;
    sub_268CD0F7C();
    sub_268F9AC04("OpenSettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 89, 2, &dword_268CBE000, v30, v29);

    MEMORY[0x277D82BD8](v30);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v31, v32, v9);
    swift_getWitnessTable();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
  }

  else
  {
    v24 = v46[20];
    v23 = v46[19];
    v17 = v46[17];
    v11 = sub_268DC892C();
    v22 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v21 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v20 = v12;
    MEMORY[0x277D82BE0](v17);
    v46[15] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD7F0, &qword_268FA59D0);
    v18 = sub_268F9AE64();
    v19 = v13;
    v20[3] = MEMORY[0x277D837D0];
    v20[4] = sub_268CDD224();
    *v20 = v18;
    v20[1] = v19;
    sub_268CD0F7C();
    sub_268F9AC04("OpenSettingIntentResponse contains error code 'other reason' but no details: %@", 79, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);
    type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, v23, v24, v14);
    swift_getWitnessTable();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  v16 = *(v46[11] + 8);

  return v16();
}

uint64_t sub_268E75838(uint64_t a1)
{
  v5 = *v2;
  v5[11] = *v2;
  v5[23] = a1;
  v5[24] = v1;

  if (v1)
  {
    v3 = sub_268E75A60;
  }

  else
  {
    v3 = sub_268E759A8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E759A8()
{
  *(v0 + 88) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v4 + 88) + 8);
  v2 = *(v4 + 184);

  return v1(v2);
}

uint64_t sub_268E75A60()
{
  *(v0 + 88) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 88) + 8);

  return v1();
}

id sub_268E75B1C()
{
  v8 = *v0;
  sub_268E0FA80();
  v16 = sub_268CF0C44();
  sub_268F9B734();
  v10 = v1;
  v12 = *MEMORY[0x277D48B28];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B28]);
  v2 = sub_268F9AE24();
  v9 = MEMORY[0x277D837D0];
  v10[3] = MEMORY[0x277D837D0];
  *v10 = v2;
  v10[1] = v3;
  v11 = *MEMORY[0x277D48B20];
  MEMORY[0x277D82BE0](*MEMORY[0x277D48B20]);
  v4 = sub_268F9AE24();
  v10[7] = v9;
  v10[4] = v4;
  v10[5] = v5;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = sub_268F9B004();

  [v16 setLaunchOptions_];
  MEMORY[0x277D82BD8](v13);
  v6 = sub_268DC892C();
  v15 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v14 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("AppPunchoutProvider getAppPunchout | returning app punchout with launch options", 79, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  return v16;
}

BOOL sub_268E75E30(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_268E760B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OpenSettingTemplatingService.OpenSettingTemplatingServiceError(0, a2, a3, a4);
  swift_getWitnessTable();
  return sub_268F9B4B4();
}

uint64_t sub_268E76494()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DD7B8));

  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DD7C8));
  __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DD7D0));
  v3 = qword_2802DD7D8;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v0 + v3);
}

uint64_t sub_268E765D4()
{
  v3 = sub_268F99AB4();

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DD7B8));

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DD7C8));
  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DD7D0));
  v2 = qword_2802DD7D8;
  v0 = sub_268F9AB24();
  (*(*(v0 - 8) + 8))(v3 + v2);

  return v3;
}

uint64_t sub_268E767D8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
    v1 = sub_268F9B044();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_268E76890(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t **, uint64_t))
{
  v8 = a4(a1, a2, a3);
  v7 = *a1;
  MEMORY[0x277D82BE0](v8);
  sub_268F9B3C4();
  if (v8)
  {
    MEMORY[0x277D82BD8](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v8);
    *v4 = v8;
    MEMORY[0x277D82BD8](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x277D82BD8](v8);
  }
}

unint64_t sub_268E76A9C()
{
  v2 = qword_2802DD7F8[0];
  if (!qword_2802DD7F8[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_2802DD7F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268E76B10(uint64_t a1)
{
  inited = sub_268F9AB24();
  if (v1 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

uint64_t sub_268E76C6C(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268E76D68()
{
  type metadata accessor for SetAXInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1530 = result;
  return result;
}

uint64_t *sub_268E76DD0()
{
  if (qword_2802DB700 != -1)
  {
    swift_once();
  }

  return &qword_2802F1530;
}

uint64_t sub_268E76E30()
{
  v1 = *sub_268E76DD0();

  return v1;
}

uint64_t sub_268E76E60(void *a1, void (*a2)(void), uint64_t a3)
{
  v29 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    v24 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v24 = sub_268F9AE04();
  }

  if (v24 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v4) ? (v23 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v23 = sub_268F9AE04()), (v23 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v5) ? (v22 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v22 = sub_268F9AE04()), (v22)))
  {
    v11 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    v12 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "SetAXInvertColorsHandler handling intent", 40, 2);

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268D3E984();

    v10 = sub_268DBD834();
    v14 = *v10;
    v15 = v10[1];
    v16 = *(v10 + 16);
    v17 = *(v28 + 24);

    sub_268DAAB84(v13, a1, v14, v15, v16, v17 & 1, a2, a3, sub_268E774BC, v28, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E774BC, v28);
  }

  else
  {
    v18 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v19 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetAXInvertColorsHandler handleSet | not supported on this device", 65, 2);

    MEMORY[0x277D82BD8](v19);

    v20 = sub_268E948B8(3);
    v21 = sub_268DAB158(0, v20, v7);

    (a2)(v21);
    MEMORY[0x277D82BD8](v21);
  }
}

uint64_t sub_268E7744C(char a1)
{

  sub_268D3E9B4(a1 & 1);
}

uint64_t sub_268E77508()
{
  type metadata accessor for SetAXOnOffLabelsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1538 = result;
  return result;
}

uint64_t *sub_268E77570()
{
  if (qword_2802DB708 != -1)
  {
    swift_once();
  }

  return &qword_2802F1538;
}

uint64_t sub_268E775D0()
{
  v1 = *sub_268E77570();

  return v1;
}

uint64_t sub_268E77600(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXOnOffLabelsHandler handling intent", 39, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3E684();

  v4 = sub_268DBD9D4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E77824, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E77824, v8);
}

uint64_t sub_268E777B4(char a1)
{

  sub_268D3E6B4(a1 & 1);
}

uint64_t sub_268E77870(uint64_t a1)
{
  v10 = a1;
  v7 = a1;
  v1 = sub_268DC0720();
  v5 = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetLabeledSettingIntent);
  v6 = v2;
  if (v2)
  {
    v8 = v5;
    v9 = v6;
  }

  else
  {
    v8 = sub_268F9AEF4();
    v9 = v3;
  }

  return sub_268E50F4C(v8, v9);
}

id sub_268E7792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_268DC0784();
  MEMORY[0x277D82BE0](a1);
  v9 = sub_268CD42AC(3, a1);

  v7 = sub_268F9AE14();

  [v9 setOldValue_];
  MEMORY[0x277D82BD8](v7);

  v8 = sub_268F9AE14();

  [v9 setUpdatedValue_];
  MEMORY[0x277D82BD8](v8);
  return v9;
}

id sub_268E77A5C(uint64_t a1, uint64_t a2)
{
  sub_268DC0784();
  MEMORY[0x277D82BE0](a2);
  return sub_268CD42AC(a1, a2);
}

id sub_268E77AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268DC0784();
  v5 = sub_268CD42AC(8, 0);

  v4 = sub_268F9AE14();

  [v5 setErrorDetail_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

SiriSettingsIntents::BinarySettingIdentifier_optional __swiftcall BinarySettingIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_268F9B734();
  *v2 = "airplaneMode";
  *(v2 + 8) = 12;
  *(v2 + 16) = 2;
  *(v2 + 24) = "appearance";
  *(v2 + 32) = 10;
  *(v2 + 40) = 2;
  *(v2 + 48) = "appearanceDark";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "appearanceLight";
  *(v2 + 80) = 15;
  *(v2 + 88) = 2;
  *(v2 + 96) = "assistiveTouch";
  *(v2 + 104) = 14;
  *(v2 + 112) = 2;
  *(v2 + 120) = "audioTransparency";
  *(v2 + 128) = 17;
  *(v2 + 136) = 2;
  *(v2 + 144) = "automaticNoiseCancellation";
  *(v2 + 152) = 26;
  *(v2 + 160) = 2;
  *(v2 + 168) = "autoAnswer";
  *(v2 + 176) = 10;
  *(v2 + 184) = 2;
  *(v2 + 192) = "autoBrightness";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "autoCorrect";
  *(v2 + 224) = 11;
  *(v2 + 232) = 2;
  *(v2 + 240) = "bass";
  *(v2 + 248) = 4;
  *(v2 + 256) = 2;
  *(v2 + 264) = "bassReduce";
  *(v2 + 272) = 10;
  *(v2 + 280) = 2;
  *(v2 + 288) = "bluetooth";
  *(v2 + 296) = 9;
  *(v2 + 304) = 2;
  *(v2 + 312) = "blueYellowFilter";
  *(v2 + 320) = 16;
  *(v2 + 328) = 2;
  *(v2 + 336) = "boldText";
  *(v2 + 344) = 8;
  *(v2 + 352) = 2;
  *(v2 + 360) = "buttonShapes";
  *(v2 + 368) = 12;
  *(v2 + 376) = 2;
  *(v2 + 384) = "cellularData";
  *(v2 + 392) = 12;
  *(v2 + 400) = 2;
  *(v2 + 408) = "classicInvertColors";
  *(v2 + 416) = 19;
  *(v2 + 424) = 2;
  *(v2 + 432) = "colorTint";
  *(v2 + 440) = 9;
  *(v2 + 448) = 2;
  *(v2 + 456) = "conversationAwareness";
  *(v2 + 464) = 21;
  *(v2 + 472) = 2;
  *(v2 + 480) = "dictation";
  *(v2 + 488) = 9;
  *(v2 + 496) = 2;
  *(v2 + 504) = "differentiateWithoutColor";
  *(v2 + 512) = 25;
  *(v2 + 520) = 2;
  *(v2 + 528) = "doNotDisturb";
  *(v2 + 536) = 12;
  *(v2 + 544) = 2;
  *(v2 + 552) = "flashlight";
  *(v2 + 560) = 10;
  *(v2 + 568) = 2;
  *(v2 + 576) = "grayscale";
  *(v2 + 584) = 9;
  *(v2 + 592) = 2;
  *(v2 + 600) = "greenRedFilter";
  *(v2 + 608) = 14;
  *(v2 + 616) = 2;
  *(v2 + 624) = "heySiri";
  *(v2 + 632) = 7;
  *(v2 + 640) = 2;
  *(v2 + 648) = "increaseContrast";
  *(v2 + 656) = 16;
  *(v2 + 664) = 2;
  *(v2 + 672) = "invertColors";
  *(v2 + 680) = 12;
  *(v2 + 688) = 2;
  *(v2 + 696) = "locationServices";
  *(v2 + 704) = 16;
  *(v2 + 712) = 2;
  *(v2 + 720) = "motionCues";
  *(v2 + 728) = 10;
  *(v2 + 736) = 2;
  *(v2 + 744) = "nightShift";
  *(v2 + 752) = 10;
  *(v2 + 760) = 2;
  *(v2 + 768) = "noiseCancellation";
  *(v2 + 776) = 17;
  *(v2 + 784) = 2;
  *(v2 + 792) = "none";
  *(v2 + 800) = 4;
  *(v2 + 808) = 2;
  *(v2 + 816) = "onOffLabels";
  *(v2 + 824) = 11;
  *(v2 + 832) = 2;
  *(v2 + 840) = "personalHotspot";
  *(v2 + 848) = 15;
  *(v2 + 856) = 2;
  *(v2 + 864) = "personalHotspotDiscoverability";
  *(v2 + 872) = 30;
  *(v2 + 880) = 2;
  *(v2 + 888) = "personalizedVolume";
  *(v2 + 896) = 18;
  *(v2 + 904) = 2;
  *(v2 + 912) = "powerSaving";
  *(v2 + 920) = 11;
  *(v2 + 928) = 2;
  *(v2 + 936) = "redGreenFilter";
  *(v2 + 944) = 14;
  *(v2 + 952) = 2;
  *(v2 + 960) = "reduceTransparency";
  *(v2 + 968) = 18;
  *(v2 + 976) = 2;
  *(v2 + 984) = "reduceWhitePoint";
  *(v2 + 992) = 16;
  *(v2 + 1000) = 2;
  *(v2 + 1008) = "siri";
  *(v2 + 1016) = 4;
  *(v2 + 1024) = 2;
  *(v2 + 1032) = "smartVolume";
  *(v2 + 1040) = 11;
  *(v2 + 1048) = 2;
  *(v2 + 1056) = "soundAnalysis";
  *(v2 + 1064) = 13;
  *(v2 + 1072) = 2;
  *(v2 + 1080) = "spokenMessages";
  *(v2 + 1088) = 14;
  *(v2 + 1096) = 2;
  *(v2 + 1104) = "standBy";
  *(v2 + 1112) = 7;
  *(v2 + 1120) = 2;
  *(v2 + 1128) = "switchControl";
  *(v2 + 1136) = 13;
  *(v2 + 1144) = 2;
  *(v2 + 1152) = "voiceControl";
  *(v2 + 1160) = 12;
  *(v2 + 1168) = 2;
  *(v2 + 1176) = "voiceOver";
  *(v2 + 1184) = 9;
  *(v2 + 1192) = 2;
  *(v2 + 1200) = "vpn";
  *(v2 + 1208) = 3;
  *(v2 + 1216) = 2;
  *(v2 + 1224) = "wifi";
  *(v2 + 1232) = 4;
  *(v2 + 1240) = 2;
  *(v2 + 1248) = "zoom";
  *(v2 + 1256) = 4;
  *(v2 + 1264) = 2;
  *(v2 + 1272) = "shakeMouse";
  *(v2 + 1280) = 10;
  *(v2 + 1288) = 2;
  *(v2 + 1296) = "backgroundSounds";
  *(v2 + 1304) = 16;
  *(v2 + 1312) = 2;
  *(v2 + 1320) = "chatGPT";
  *(v2 + 1328) = 7;
  *(v2 + 1336) = 2;
  *(v2 + 1344) = "chatGPTSetup";
  *(v2 + 1352) = 12;
  *(v2 + 1360) = 2;
  *(v2 + 1368) = "workingMode";
  *(v2 + 1376) = 11;
  *(v2 + 1384) = 2;
  *(v2 + 1392) = "personalTimeMode";
  *(v2 + 1400) = 16;
  *(v2 + 1408) = 2;
  *(v2 + 1416) = "sleepingMode";
  *(v2 + 1424) = 12;
  *(v2 + 1432) = 2;
  *(v2 + 1440) = "drivingMode";
  *(v2 + 1448) = 11;
  *(v2 + 1456) = 2;
  *(v2 + 1464) = "exercisingMode";
  *(v2 + 1472) = 14;
  *(v2 + 1480) = 2;
  *(v2 + 1488) = "gamingMode";
  *(v2 + 1496) = 10;
  *(v2 + 1504) = 2;
  *(v2 + 1512) = "readingMode";
  *(v2 + 1520) = 11;
  *(v2 + 1528) = 2;
  *(v2 + 1536) = "reduceLoudSounds";
  *(v2 + 1544) = 16;
  *(v2 + 1552) = 2;
  sub_268CD0F7C();
  v5 = sub_268F9B5C4();

  if (v5)
  {
    switch(v5)
    {
      case 1:
        v6 = 1;
        break;
      case 2:
        v6 = 2;
        break;
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 4;
        break;
      case 5:
        v6 = 5;
        break;
      case 6:
        v6 = 6;
        break;
      case 7:
        v6 = 7;
        break;
      case 8:
        v6 = 8;
        break;
      case 9:
        v6 = 9;
        break;
      case 10:
        v6 = 10;
        break;
      case 11:
        v6 = 11;
        break;
      case 12:
        v6 = 12;
        break;
      case 13:
        v6 = 13;
        break;
      case 14:
        v6 = 14;
        break;
      case 15:
        v6 = 15;
        break;
      case 16:
        v6 = 16;
        break;
      case 17:
        v6 = 17;
        break;
      case 18:
        v6 = 18;
        break;
      case 19:
        v6 = 19;
        break;
      case 20:
        v6 = 20;
        break;
      case 21:
        v6 = 21;
        break;
      case 22:
        v6 = 22;
        break;
      case 23:
        v6 = 23;
        break;
      case 24:
        v6 = 24;
        break;
      case 25:
        v6 = 25;
        break;
      case 26:
        v6 = 26;
        break;
      case 27:
        v6 = 27;
        break;
      case 28:
        v6 = 28;
        break;
      case 29:
        v6 = 29;
        break;
      case 30:
        v6 = 30;
        break;
      case 31:
        v6 = 31;
        break;
      case 32:
        v6 = 32;
        break;
      case 33:
        v6 = 33;
        break;
      case 34:
        v6 = 34;
        break;
      case 35:
        v6 = 35;
        break;
      case 36:
        v6 = 36;
        break;
      case 37:
        v6 = 37;
        break;
      case 38:
        v6 = 38;
        break;
      case 39:
        v6 = 39;
        break;
      case 40:
        v6 = 40;
        break;
      case 41:
        v6 = 41;
        break;
      case 42:
        v6 = 42;
        break;
      case 43:
        v6 = 43;
        break;
      case 44:
        v6 = 44;
        break;
      case 45:
        v6 = 45;
        break;
      case 46:
        v6 = 46;
        break;
      case 47:
        v6 = 47;
        break;
      case 48:
        v6 = 48;
        break;
      case 49:
        v6 = 49;
        break;
      case 50:
        v6 = 50;
        break;
      case 51:
        v6 = 51;
        break;
      case 52:
        v6 = 52;
        break;
      case 53:
        v6 = 53;
        break;
      case 54:
        v6 = 54;
        break;
      case 55:
        v6 = 55;
        break;
      case 56:
        v6 = 56;
        break;
      case 57:
        v6 = 57;
        break;
      case 58:
        v6 = 58;
        break;
      case 59:
        v6 = 59;
        break;
      case 60:
        v6 = 60;
        break;
      case 61:
        v6 = 61;
        break;
      case 62:
        v6 = 62;
        break;
      case 63:
        v6 = 63;
        break;
      case 64:
        v6 = 64;
        break;
      default:

        *v4 = 65;
        return result;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t *sub_268E79858()
{
  if (qword_2802DB710 != -1)
  {
    swift_once();
  }

  return &qword_2802F1540;
}

uint64_t sub_268E798B8@<X0>(uint64_t a1@<X8>)
{
  sub_268E7C6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD988, "Ʋ");
  v3 = sub_268E7D72C();
  v4 = [v3 bundlePath];
  sub_268F9AE24();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  sub_268F9A9A4();
  v1 = sub_268F9A9C4();
  return (*(*(v1 - 8) + 56))(a1, 0, 1);
}

void sub_268E799BC(uint64_t a1@<X8>)
{
  v114 = 0;
  v114 = *v1;
  v112 = 0;
  v113 = 0;
  switch(v114)
  {
    case 0:
      v108 = sub_268F9AEF4();
      v109 = v2;

      v112 = v108;
      v113 = v109;

      v110 = v109;
      goto LABEL_38;
    case 4:
      v106 = sub_268F9AEF4();
      v107 = v3;

      v112 = v106;
      v113 = v107;

      v110 = v107;
      goto LABEL_38;
    case 7:
      v104 = sub_268F9AEF4();
      v105 = v4;

      v112 = v104;
      v113 = v105;

      v110 = v105;
      goto LABEL_38;
    case 9:
      v102 = sub_268F9AEF4();
      v103 = v5;

      v112 = v102;
      v113 = v103;

      v110 = v103;
      goto LABEL_38;
    case 10:
      v98 = sub_268F9AEF4();
      v99 = v7;

      v112 = v98;
      v113 = v99;

      v110 = v99;
      goto LABEL_38;
    case 11:
      v96 = sub_268F9AEF4();
      v97 = v8;

      v112 = v96;
      v113 = v97;

      v110 = v97;
      goto LABEL_38;
    case 12:
      v92 = sub_268F9AEF4();
      v93 = v10;

      v112 = v92;
      v113 = v93;

      v110 = v93;
      goto LABEL_38;
    case 13:
      v90 = sub_268F9AEF4();
      v91 = v11;

      v112 = v90;
      v113 = v91;

      v110 = v91;
      goto LABEL_38;
    case 14:
      v88 = sub_268F9AEF4();
      v89 = v12;

      v112 = v88;
      v113 = v89;

      v110 = v89;
      goto LABEL_38;
    case 15:
      v86 = sub_268F9AEF4();
      v87 = v13;

      v112 = v86;
      v113 = v87;

      v110 = v87;
      goto LABEL_38;
    case 16:
      v84 = sub_268F9AEF4();
      v85 = v14;

      v112 = v84;
      v113 = v85;

      v110 = v85;
      goto LABEL_38;
    case 17:
      v82 = sub_268F9AEF4();
      v83 = v15;

      v112 = v82;
      v113 = v83;

      v110 = v83;
      goto LABEL_38;
    case 18:
      v80 = sub_268F9AEF4();
      v81 = v16;

      v112 = v80;
      v113 = v81;

      v110 = v81;
      goto LABEL_38;
    case 21:
      v78 = sub_268F9AEF4();
      v79 = v17;

      v112 = v78;
      v113 = v79;

      v110 = v79;
      goto LABEL_38;
    case 24:
      v76 = sub_268F9AEF4();
      v77 = v18;

      v112 = v76;
      v113 = v77;

      v110 = v77;
      goto LABEL_38;
    case 25:
      v74 = sub_268F9AEF4();
      v75 = v19;

      v112 = v74;
      v113 = v75;

      v110 = v75;
      goto LABEL_38;
    case 26:
      v72 = sub_268F9AEF4();
      v73 = v20;

      v112 = v72;
      v113 = v73;

      v110 = v73;
      goto LABEL_38;
    case 27:
      v70 = sub_268F9AEF4();
      v71 = v21;

      v112 = v70;
      v113 = v71;

      v110 = v71;
      goto LABEL_38;
    case 28:
      v68 = sub_268F9AEF4();
      v69 = v22;

      v112 = v68;
      v113 = v69;

      v110 = v69;
      goto LABEL_38;
    case 29:
      v66 = sub_268F9AEF4();
      v67 = v23;

      v112 = v66;
      v113 = v67;

      v110 = v67;
      goto LABEL_38;
    case 30:
      v64 = sub_268F9AEF4();
      v65 = v24;

      v112 = v64;
      v113 = v65;

      v110 = v65;
      goto LABEL_38;
    case 34:
      v62 = sub_268F9AEF4();
      v63 = v25;

      v112 = v62;
      v113 = v63;

      v110 = v63;
      goto LABEL_38;
    case 35:
      v60 = sub_268F9AEF4();
      v61 = v26;

      v112 = v60;
      v113 = v61;

      v110 = v61;
      goto LABEL_38;
    case 39:
      v58 = sub_268F9AEF4();
      v59 = v27;

      v112 = v58;
      v113 = v59;

      v110 = v59;
      goto LABEL_38;
    case 40:
      v56 = sub_268F9AEF4();
      v57 = v28;

      v112 = v56;
      v113 = v57;

      v110 = v57;
      goto LABEL_38;
    case 41:
      v54 = sub_268F9AEF4();
      v55 = v29;

      v112 = v54;
      v113 = v55;

      v110 = v55;
      goto LABEL_38;
    case 42:
      v52 = sub_268F9AEF4();
      v53 = v30;

      v112 = v52;
      v113 = v53;

      v110 = v53;
      goto LABEL_38;
    case 43:
      v50 = sub_268F9AEF4();
      v51 = v31;

      v112 = v50;
      v113 = v51;

      v110 = v51;
      goto LABEL_38;
    case 47:
      v48 = sub_268F9AEF4();
      v49 = v32;

      v112 = v48;
      v113 = v49;

      v110 = v49;
      goto LABEL_38;
    case 48:
      v46 = sub_268F9AEF4();
      v47 = v33;

      v112 = v46;
      v113 = v47;

      v110 = v47;
      goto LABEL_38;
    case 49:
      v44 = sub_268F9AEF4();
      v45 = v34;

      v112 = v44;
      v113 = v45;

      v110 = v45;
      goto LABEL_38;
    case 50:
      v42 = sub_268F9AEF4();
      v43 = v35;

      v112 = v42;
      v113 = v43;

      v110 = v43;
      goto LABEL_38;
    case 51:
      v40 = sub_268F9AEF4();
      v41 = v36;

      v112 = v40;
      v113 = v41;

      v110 = v41;
      goto LABEL_38;
    case 54:
      v100 = sub_268F9AEF4();
      v101 = v6;

      v112 = v100;
      v113 = v101;

      v110 = v101;
      goto LABEL_38;
    case 64:
      v94 = sub_268F9AEF4();
      v95 = v9;

      v112 = v94;
      v113 = v95;

      v110 = v95;
LABEL_38:
      if (v110)
      {
        sub_268F9A9A4();
        v38 = sub_268F9A9C4();
        (*(*(v38 - 8) + 56))(a1, 0, 1);
      }

      else
      {
        v39 = sub_268F9A9C4();
        (*(*(v39 - 8) + 56))(a1, 1);
      }

      sub_268CD9D30(&v112);
      break;
    default:
      v37 = sub_268F9A9C4();
      (*(*(v37 - 8) + 56))(a1, 1);
      sub_268CD9D30(&v112);
      break;
  }
}

void *sub_268E7A8B4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v56 = 0;
  v52 = 0uLL;
  v51 = 0uLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v41 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3, v4, v5);
  v42 = &v18 - v41;
  v43 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v18 - v41, v7, v8, v9);
  v44 = &v18 - v43;
  v45 = sub_268F9A9C4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v10, v11, v12);
  v49 = &v18 - v48;
  v56 = *v1;
  v55 = v56;
  v50 = v57;
  sub_268E7C96C(v57);
  memcpy(__dst, v50, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v59, __dst, sizeof(v59));
    v60 = v59[1];
    sub_268D28874(&v60, &v54);
    v63 = v60;
    if (*(&v60 + 1))
    {
      v33 = v63;
      v51 = v63;
      v39 = v59;
      v32 = v59[0];

      v36 = 0;
      sub_268F9A9A4();
      sub_268F9A9A4();
      v35 = *(v46 + 56);
      v34 = v46 + 56;
      v38 = 0;
      v37 = 1;
      v35(v44);
      (v35)(v42, v37, v37, v45);
      sub_268E7D684(v49, v44, v42, v40);
      v13 = type metadata accessor for SFSymbolStructSpeakableString(v36);
      (*(*(v13 - 8) + 56))(v40, v38, v37);
      result = v39;
      sub_268E7D7F8(v39);
    }

    else
    {
      v61 = v59[2];
      sub_268D28874(&v61, &v53);
      v62 = v61;
      if (*(&v61 + 1))
      {
        v25 = v62;
        v52 = v62;
        v31 = v59;
        v24 = v59[0];

        v28 = 0;
        sub_268F9A9A4();
        v27 = *(v46 + 56);
        v26 = v46 + 56;
        v29 = 1;
        v27(v44, 1, 1, v45);
        sub_268F9A9A4();
        v30 = 0;
        (v27)(v42);
        sub_268E7D684(v49, v44, v42, v40);
        v15 = type metadata accessor for SFSymbolStructSpeakableString(v28);
        (*(*(v15 - 8) + 56))(v40, v30, v29);
        result = v31;
        sub_268E7D7F8(v31);
      }

      else
      {
        v23 = v59;
        v18 = v59[0];

        v21 = 0;
        sub_268F9A9A4();
        v20 = *(v46 + 56);
        v19 = v46 + 56;
        v22 = 1;
        v20(v44, 1, 1, v45);
        v20(v42, v22, v22, v45);
        sub_268E7D684(v49, v44, v42, v40);
        v16 = type metadata accessor for SFSymbolStructSpeakableString(v21);
        (*(*(v16 - 8) + 56))(v40, 0, v22);
        result = v23;
        sub_268E7D7F8(v23);
      }
    }
  }

  else
  {
    v17 = type metadata accessor for SFSymbolStructSpeakableString(0);
    return (*(*(v17 - 8) + 56))(v40, 1);
  }

  return result;
}

uint64_t sub_268E7B768()
{
  switch(*v0)
  {
    case 0:
      sub_268D35434();

      v44 = sub_268D369F4();

      v45 = v44;
      break;
    case 1:
      sub_268D35434();

      v43 = sub_268D36508();

      v45 = v43;
      break;
    case 2:
      sub_268D35434();

      v42 = sub_268D36508();

      v45 = v42;
      break;
    case 3:
      sub_268D35434();

      v41 = sub_268D36508();

      v45 = v41;
      break;
    case 4:
      sub_268D35434();

      v40 = sub_268D37544();

      v45 = v40;
      break;
    case 7:
      sub_268D35434();

      v39 = sub_268D3F2C4();

      v45 = v39;
      break;
    case 8:
      sub_268D35434();

      v38 = sub_268D36508();

      v45 = v38;
      break;
    case 0xC:
      sub_268D35434();

      v36 = sub_268D37870();

      v45 = v36;
      break;
    case 0xD:
      sub_268D35434();

      v35 = sub_268D3EB74();

      v45 = v35;
      break;
    case 0xE:
      sub_268D35434();

      v34 = sub_268D3E574();

      v45 = v34;
      break;
    case 0xF:
      sub_268D35434();

      v33 = sub_268D3E644();

      v45 = v33;
      break;
    case 0x10:
      sub_268D35434();

      v32 = sub_268D38E00();

      v45 = v32;
      break;
    case 0x11:
      sub_268D35434();

      v29 = sub_268D3EAA4();

      v45 = v29;
      break;
    case 0x12:
      sub_268D35434();

      v28 = sub_268D3EB74();

      v45 = v28;
      break;
    case 0x14:
      sub_268D35434();

      v4 = sub_268D3D454();

      v45 = v4;
      break;
    case 0x16:
      sub_268D35434();

      v27 = sub_268D48A14();

      v45 = v27;
      break;
    case 0x17:
      sub_268D35434();

      v26 = sub_268D395C4();

      v45 = v26;
      break;
    case 0x18:
      sub_268D35434();

      v25 = sub_268D3EB74();

      v45 = v25;
      break;
    case 0x19:
      sub_268D35434();

      v24 = sub_268D3EB74();

      v45 = v24;
      break;
    case 0x1A:
    case 0x2A:
      sub_268D35434();

      v23 = sub_268D48A54();

      v45 = v23;
      break;
    case 0x1B:
      sub_268D35434();

      v22 = sub_268D3E8B4();

      v45 = v22;
      break;
    case 0x1C:
      sub_268D35434();

      v21 = sub_268D39C38();

      v45 = v21;
      break;
    case 0x1D:
      sub_268D35434();

      v20 = sub_268D371CC();

      v45 = v20;
      break;
    case 0x1E:
      sub_268D35434();

      v19 = sub_268D3EECC();

      v45 = v19;
      break;
    case 0x1F:
      sub_268D35434();

      v17 = sub_268D36508();

      v45 = v17;
      break;
    case 0x22:
      sub_268D35434();

      v18 = sub_268D3E714();

      v45 = v18;
      break;
    case 0x23:
      sub_268D35434();

      v16 = sub_268D48A94();

      v45 = v16;
      break;
    case 0x26:
      sub_268D35434();

      v15 = sub_268D39948();

      v45 = v15;
      break;
    case 0x27:
      sub_268D35434();

      v14 = sub_268D3EB74();

      v45 = v14;
      break;
    case 0x28:
      sub_268D35434();

      v13 = sub_268D3E7E4();

      v45 = v13;
      break;
    case 0x29:
      sub_268D35434();

      v12 = sub_268D3EF9C();

      v45 = v12;
      break;
    case 0x2C:
      sub_268D35434();

      v2 = sub_268D39584();

      v45 = v2;
      break;
    case 0x2D:
      sub_268D35434();

      v11 = sub_268D41E34();

      v45 = v11;
      break;
    case 0x2E:
      sub_268D35434();

      v10 = sub_268D36920();

      v45 = v10;
      break;
    case 0x2F:
      sub_268D35434();

      v9 = sub_268D3F194();

      v45 = v9;
      break;
    case 0x30:
      sub_268D35434();

      v7 = sub_268D37E50();

      v45 = v7;
      break;
    case 0x31:
      sub_268D35434();

      v8 = sub_268D37B60();

      v45 = v8;
      break;
    case 0x33:
      sub_268D35434();

      v6 = sub_268D39294();

      v45 = v6;
      break;
    case 0x34:
      sub_268D35434();

      v5 = sub_268D3D164();

      v45 = v5;
      break;
    case 0x35:
      sub_268D35434();

      v3 = sub_268D3D454();

      v45 = v3;
      break;
    case 0x36:
      sub_268D35434();

      v37 = sub_268D3DC94();

      v45 = v37;
      break;
    case 0x37:
      sub_268D35434();

      v31 = sub_268D3DCD4();

      v45 = v31;
      break;
    case 0x38:
      sub_268D35434();

      v30 = sub_268D3DD14();

      v45 = v30;
      break;
    case 0x39:
    case 0x3A:
    case 0x3B:
    case 0x3C:
    case 0x3D:
    case 0x3E:
    case 0x3F:
      v45 = sub_268F9AEF4();
      break;
    default:
      v45 = 0;
      break;
  }

  return v45;
}