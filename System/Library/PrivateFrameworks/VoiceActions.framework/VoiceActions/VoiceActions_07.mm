unint64_t sub_2722851C8()
{
  result = qword_2808886D0;
  if (!qword_2808886D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886D0);
  }

  return result;
}

uint64_t sub_27228521C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808823F0, &qword_27237F658);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-v7];
  sub_27220300C(a1, a1[3]);
  sub_2722851C8();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v9);
  v18[15] = 0;
  v11 = sub_2723785CC();
  if (!v2)
  {
    (*((*v10 & *v3) + 0xA0))(v11);
    v18[14] = 1;
    v12 = sub_2723785CC();
    (*((*v10 & *v3) + 0xB8))(v12);
    v18[13] = 2;
    v13 = sub_2723785CC();
    (*((*v10 & *v3) + 0xD0))(v13);
    v18[12] = 3;
    v14 = sub_2723785CC();
    (*((*v10 & *v3) + 0xE8))(v14);
    v18[11] = 4;
    v15 = sub_2723785CC();
    (*((*v10 & *v3) + 0x100))(v15);
    v18[10] = 5;
    v16 = sub_2723785CC();
    (*((*v10 & *v3) + 0x118))(v16);
    v18[9] = 6;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_272285744@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 304))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272285824()
{
  v1 = OBJC_IVAR___RuntimeConfig_audioDebug;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722858BC(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_audioDebug;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27228590C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285A6C()
{
  v1 = OBJC_IVAR___RuntimeConfig_batchDecode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285B04(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_batchDecode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285B54@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285CB4()
{
  v1 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285D4C(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285D9C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285EFC()
{
  v1 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285F94(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285FE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272286144()
{
  v1 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722861DC(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27228622C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27228638C()
{
  v1 = OBJC_IVAR___RuntimeConfig_secondPass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272286424(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_secondPass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272286474@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

unint64_t sub_272286594()
{
  v1 = *v0;
  v2 = 0x6265446F69647561;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6150646E6F636573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6365446863746162;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_272286664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228D66C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272286698(uint64_t a1)
{
  v2 = sub_272286CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722866D4(uint64_t a1)
{
  v2 = sub_272286CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RuntimeConfig.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882430, &qword_27237F660);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v39 = OBJC_IVAR___RuntimeConfig_audioDebug;
  v1[OBJC_IVAR___RuntimeConfig_audioDebug] = 0;
  v37 = OBJC_IVAR___RuntimeConfig_batchDecode;
  v1[OBJC_IVAR___RuntimeConfig_batchDecode] = 0;
  v38 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_preKeywordSilence] = 1;
  v6 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_duringKeywordSilence] = 1;
  v7 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_postKeywordSilence] = 0;
  v8 = OBJC_IVAR___RuntimeConfig_secondPass;
  v50 = v1;
  v1[OBJC_IVAR___RuntimeConfig_secondPass] = 0;
  v9 = a1[3];
  v43 = a1;
  v10 = sub_27220300C(a1, v9);
  sub_272286CAC();
  v11 = v42;
  sub_2723787AC();
  if (v11)
  {
    sub_2722039C8(v43);
    type metadata accessor for RuntimeConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v39;
    v13 = v40;
    v42 = v6;
    v35 = v7;
    v36 = v8;
    v49 = 0;
    v14 = v41;
    v15 = v5;
    v16 = sub_27237844C();
    v17 = v50;
    if (v16 == 2)
    {
      swift_beginAccess();
      v16 = v17[v12];
    }

    swift_beginAccess();
    v17[v12] = v16 & 1;
    v48 = 1;
    v18 = sub_27237844C();
    v19 = v13;
    v20 = v37;
    if (v18 == 2)
    {
      swift_beginAccess();
      v18 = v17[v20];
    }

    v21 = v38;
    swift_beginAccess();
    v17[v20] = v18 & 1;
    v47 = 2;
    v22 = sub_27237844C();
    if (v22 == 2)
    {
      swift_beginAccess();
      v22 = v17[v21];
    }

    swift_beginAccess();
    v17[v21] = v22 & 1;
    v46 = 3;
    v23 = sub_27237844C();
    if (v23 == 2)
    {
      v24 = v42;
      swift_beginAccess();
      v25 = v24;
      v23 = v17[v24];
    }

    else
    {
      v25 = v42;
    }

    v26 = v25;
    swift_beginAccess();
    v17[v26] = v23 & 1;
    v45 = 4;
    v27 = sub_27237844C();
    v29 = v27;
    (*(v19 + 8))(v15, v14);
    v30 = v35;
    if (v29 == 2)
    {
      v31 = v50;
      swift_beginAccess();
      v29 = v31[v30];
      v32 = v36;
    }

    else
    {
      v32 = v36;
      v31 = v50;
    }

    swift_beginAccess();
    v31[v30] = v29 & 1;
    swift_beginAccess();
    v31[v32] = 0;
    v33 = type metadata accessor for RuntimeConfig();
    v44.receiver = v31;
    v44.super_class = v33;
    v10 = objc_msgSendSuper2(&v44, sel_init);
    sub_2722039C8(v43);
  }

  return v10;
}

unint64_t sub_272286CAC()
{
  result = qword_2808886D8;
  if (!qword_2808886D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886D8);
  }

  return result;
}

uint64_t sub_272286D00(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882438, &qword_27237F668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-v7];
  sub_27220300C(a1, a1[3]);
  sub_272286CAC();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x80))(v9);
  v17[15] = 0;
  v11 = sub_27237859C();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x98))(v11);
    v17[14] = 1;
    v12 = sub_27237859C();
    (*((*v10 & *v3) + 0xB0))(v12);
    v17[13] = 2;
    v13 = sub_27237859C();
    (*((*v10 & *v3) + 0xC8))(v13);
    v17[12] = 3;
    v14 = sub_27237859C();
    (*((*v10 & *v3) + 0xE0))(v14);
    v17[11] = 4;
    v15 = sub_27237859C();
    (*((*v10 & *v3) + 0xF8))(v15);
    v17[10] = 5;
    sub_27237859C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2722871DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272287274()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)(0xD000000000000010, 0x800000027237FC10);
  qword_280893A90 = result;
  return result;
}

id sub_272287378()
{
  v1 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27228742C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287484@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

id sub_2722875F0()
{
  v1 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722876A4(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722876FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id sub_272287868()
{
  v1 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27228791C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287974@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

id sub_272287AE0()
{
  v1 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272287B94(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287BEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id sub_272287D58()
{
  v1 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272287E0C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287E64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

unint64_t sub_272287F84()
{
  v1 = *v0;
  v2 = 0x654E6C617275656ELL;
  v3 = 0x7265646F636564;
  v4 = 0x6150646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x656D69746E7572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_272288034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27228D878(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27228805C(uint64_t a1)
{
  v2 = sub_2722888E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272288098(uint64_t a1)
{
  v2 = sub_2722888E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2722880D4()
{
  v1 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for NeuralNetworkConfig()) init];
  v2 = OBJC_IVAR___VATConfiguration_featureExtractor;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for FeatureExtractorConfig()) init];
  v3 = OBJC_IVAR___VATConfiguration_decoder;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for DecoderConfig()) init];
  v4 = OBJC_IVAR___VATConfiguration_secondPass;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for SecondPassConfig()) init];
  v5 = OBJC_IVAR___VATConfiguration_runtime;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for RuntimeConfig()) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VATConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

char *VATConfiguration.init(from:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882470, &qword_27237F670);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v55 - v4);
  v6 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  v57 = type metadata accessor for NeuralNetworkConfig();
  v7 = [objc_allocWithZone(v57) init];
  v62 = v6;
  *&v1[v6] = v7;
  v8 = OBJC_IVAR___VATConfiguration_featureExtractor;
  v56 = type metadata accessor for FeatureExtractorConfig();
  v9 = [objc_allocWithZone(v56) init];
  v61 = v8;
  *&v1[v8] = v9;
  v10 = OBJC_IVAR___VATConfiguration_decoder;
  v55 = type metadata accessor for DecoderConfig();
  v11 = [objc_allocWithZone(v55) init];
  v65 = v10;
  *&v1[v10] = v11;
  v12 = OBJC_IVAR___VATConfiguration_secondPass;
  v13 = [objc_allocWithZone(type metadata accessor for SecondPassConfig()) init];
  v64 = v12;
  *&v1[v12] = v13;
  v14 = OBJC_IVAR___VATConfiguration_runtime;
  v15 = type metadata accessor for RuntimeConfig();
  v16 = [objc_allocWithZone(v15) init];
  v17 = v14;
  v77 = v1;
  *&v1[v14] = v16;
  v18 = a1[3];
  v63 = a1;
  sub_27220300C(a1, v18);
  sub_2722888E8();
  v19 = v60;
  sub_2723787AC();
  if (v19)
  {
    v22 = v61;
    v21 = v62;
    sub_2722039C8(v63);
    v23 = v77;

    type metadata accessor for VATConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v15;
    v76 = 0;
    sub_27227DA80(&qword_280882478, v20, type metadata accessor for NeuralNetworkConfig, &protocol conformance descriptor for NeuralNetworkConfig);
    sub_27237848C();
    v25 = v75;
    v26 = v62;
    v57 = v5;
    v27 = v77;
    if (!v75)
    {
      swift_beginAccess();
      v25 = *&v27[v26];
    }

    swift_beginAccess();
    v28 = *&v27[v26];
    *&v27[v26] = v25;

    v74 = 1;
    sub_27227DA80(&qword_280882480, v29, type metadata accessor for FeatureExtractorConfig, &protocol conformance descriptor for FeatureExtractorConfig);
    sub_27237848C();
    v30 = v73;
    v31 = v61;
    v32 = v77;
    if (!v73)
    {
      swift_beginAccess();
      v30 = *&v32[v31];
    }

    swift_beginAccess();
    v33 = *&v32[v31];
    *&v32[v31] = v30;

    v72 = 2;
    sub_27227DA80(&qword_280882488, v34, type metadata accessor for DecoderConfig, &protocol conformance descriptor for DecoderConfig);
    sub_27237848C();
    v35 = v71;
    v36 = v65;
    v37 = v77;
    if (!v71)
    {
      swift_beginAccess();
      v35 = *&v37[v36];
    }

    swift_beginAccess();
    v38 = *&v37[v36];
    *&v37[v36] = v35;

    v70 = 3;
    sub_27227DA80(&qword_280882490, v39, type metadata accessor for SecondPassConfig, &protocol conformance descriptor for SecondPassConfig);
    sub_27237848C();
    v40 = v69;
    if (v69)
    {
      v41 = v64;
      v42 = v77;
    }

    else
    {
      v43 = v64;
      v42 = v77;
      swift_beginAccess();
      v44 = *&v42[v43];
      v41 = v43;
      v40 = v44;
    }

    v45 = v41;
    swift_beginAccess();
    v46 = *&v42[v45];
    *&v42[v45] = v40;

    v68 = 4;
    sub_27227DA80(&qword_280882498, v47, type metadata accessor for RuntimeConfig, &protocol conformance descriptor for RuntimeConfig);
    v48 = v59;
    v49 = v57;
    sub_27237848C();
    (*(v58 + 8))(v49, v48);
    v50 = v67;
    if (v67)
    {
      v51 = &selRef_environment;
      v52 = v77;
    }

    else
    {
      v52 = v77;
      swift_beginAccess();
      v50 = *&v52[v17];
      v51 = &selRef_environment;
    }

    swift_beginAccess();
    v53 = *&v52[v17];
    *&v52[v17] = v50;

    v54 = type metadata accessor for VATConfiguration();
    v66.receiver = v52;
    v66.super_class = v54;
    v23 = objc_msgSendSuper2(&v66, v51[136]);
    sub_2722039C8(v63);
  }

  return v23;
}

unint64_t sub_2722888E8()
{
  result = qword_2808886E0[0];
  if (!qword_2808886E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808886E0);
  }

  return result;
}

uint64_t sub_27228893C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824A0, &qword_27237F678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_27220300C(a1, a1[3]);
  sub_2722888E8();
  v9 = sub_2723787CC();
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v9);
  v23 = v11;
  HIBYTE(v22) = 0;
  type metadata accessor for NeuralNetworkConfig();
  sub_27227DA80(&qword_2808823A8, v12, type metadata accessor for NeuralNetworkConfig, &protocol conformance descriptor for NeuralNetworkConfig);
  sub_2723785DC();
  if (v2)
  {
  }

  else
  {

    v13 = (*((*v10 & *v3) + 0x90))();
    v23 = v13;
    HIBYTE(v22) = 1;
    type metadata accessor for FeatureExtractorConfig();
    sub_27227DA80(&qword_2808823F8, v14, type metadata accessor for FeatureExtractorConfig, &protocol conformance descriptor for FeatureExtractorConfig);
    sub_2723785DC();

    v16 = (*((*v10 & *v3) + 0xA8))();
    v23 = v16;
    HIBYTE(v22) = 2;
    type metadata accessor for DecoderConfig();
    sub_27227DA80(&qword_280882378, v17, type metadata accessor for DecoderConfig, &protocol conformance descriptor for DecoderConfig);
    sub_2723785DC();

    v18 = (*((*v10 & *v3) + 0xC0))();
    v23 = v18;
    HIBYTE(v22) = 3;
    type metadata accessor for SecondPassConfig();
    sub_27227DA80(&qword_280882260, v19, type metadata accessor for SecondPassConfig, &protocol conformance descriptor for SecondPassConfig);
    sub_2723785DC();

    v20 = (*((*v10 & *v3) + 0xD8))();
    v23 = v20;
    HIBYTE(v22) = 4;
    type metadata accessor for RuntimeConfig();
    sub_27227DA80(&qword_280882440, v21, type metadata accessor for RuntimeConfig, &protocol conformance descriptor for RuntimeConfig);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

char *VATConfiguration.init(filename:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  v54 = type metadata accessor for NeuralNetworkConfig();
  *&v2[v6] = [objc_allocWithZone(v54) init];
  v7 = OBJC_IVAR___VATConfiguration_featureExtractor;
  v55 = type metadata accessor for FeatureExtractorConfig();
  *&v2[v7] = [objc_allocWithZone(v55) init];
  v8 = OBJC_IVAR___VATConfiguration_decoder;
  v56 = type metadata accessor for DecoderConfig();
  *&v2[v8] = [objc_allocWithZone(v56) init];
  v9 = OBJC_IVAR___VATConfiguration_secondPass;
  v57 = type metadata accessor for SecondPassConfig();
  *&v2[v9] = [objc_allocWithZone(v57) init];
  v10 = OBJC_IVAR___VATConfiguration_runtime;
  v58 = type metadata accessor for RuntimeConfig();
  *&v3[v10] = [objc_allocWithZone(v58) init];
  v11 = sub_27228953C(a1, a2);
  v12 = v11;
  if (v13)
  {
    v52 = v6;
    v53 = v9;
    if (v11 != 0x8000000000000000)
    {
      v61 = v10;
      if (qword_280888690 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_27237AF90;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_27225CAF0();
      v33 = 0x3E6C696E3CLL;
      if (a2)
      {
        v33 = a1;
      }

      v34 = 0xE500000000000000;
      if (a2)
      {
        v34 = a2;
      }

      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_272204304();
      v35 = swift_allocError();
      *v36 = v12;
      sub_272289964(v12);
      v37 = sub_272376C5C();
      *(v32 + 96) = sub_27221982C(0, &qword_2808820E8, 0x277CCA9B8);
      *(v32 + 104) = sub_27225CB44();
      *(v32 + 72) = v37;

      OS_os_log.error(_:_:)("Error parsing %@: %@", 20, 2, v32);

      v14 = v52;
      v16 = v53;
      goto LABEL_16;
    }

    if (a2)
    {
      v61 = v10;
      v14 = v6;
      if (qword_280888690 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_27237AF80;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_27225CAF0();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      OS_os_log.error(_:_:)("Custom config file not found, using defaults: %@", 48, 2, v15);

      v12 = 0x8000000000000000;
      sub_272204304();
      v16 = v53;
LABEL_16:
      swift_allocError();
      *v38 = v12;
      swift_willThrow();

      type metadata accessor for VATConfiguration();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v40 = v10;
    if (qword_280888690 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_27237AF80;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_27225CAF0();
    *(v41 + 32) = 0x3E6C696E3CLL;
    *(v41 + 40) = 0xE500000000000000;
    OS_os_log.error(_:_:)("Default Config file not found, using defaults: %@", 49, 2, v41);

    v42 = [objc_allocWithZone(v54) init];
    swift_beginAccess();
    v43 = *&v3[v6];
    *&v3[v6] = v42;

    v44 = [objc_allocWithZone(v55) init];
    swift_beginAccess();
    v45 = *&v3[v7];
    *&v3[v7] = v44;

    v46 = [objc_allocWithZone(v56) init];
    swift_beginAccess();
    v47 = *&v3[v8];
    *&v3[v8] = v46;

    v48 = [objc_allocWithZone(v57) init];
    swift_beginAccess();
    v49 = *&v3[v9];
    *&v3[v9] = v48;

    v50 = [objc_allocWithZone(v58) init];
    swift_beginAccess();
    v51 = *&v3[v40];
    *&v3[v40] = v50;

    v60.receiver = v3;
    v60.super_class = type metadata accessor for VATConfiguration();
    v3 = objc_msgSendSuper2(&v60, sel_init);
    v30 = 0x8000000000000000;
    v31 = 1;
  }

  else
  {

    v18 = MEMORY[0x277D85000];
    v19 = v10;
    v20 = (*((*MEMORY[0x277D85000] & *v12) + 0x78))(v17);
    swift_beginAccess();
    v21 = *&v3[v6];
    *&v3[v6] = v20;

    v22 = (*((*v18 & *v12) + 0x90))();
    swift_beginAccess();
    v23 = *&v3[v7];
    *&v3[v7] = v22;

    v24 = (*((*v18 & *v12) + 0xA8))();
    swift_beginAccess();
    v25 = *&v3[v8];
    *&v3[v8] = v24;

    v26 = (*((*v18 & *v12) + 0xC0))();
    swift_beginAccess();
    v27 = *&v3[v9];
    *&v3[v9] = v26;

    v28 = (*((*v18 & *v12) + 0xD8))();
    swift_beginAccess();
    v29 = *&v3[v19];
    *&v3[v19] = v28;

    v59.receiver = v3;
    v59.super_class = type metadata accessor for VATConfiguration();
    v3 = objc_msgSendSuper2(&v59, sel_init);
    v30 = v12;
    v31 = 0;
  }

  sub_272289980(v30, v31);
  return v3;
}

unint64_t sub_27228953C(uint64_t a1, unint64_t a2)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - v9;
  type metadata accessor for VATConfiguration();
  if (!a2)
  {
    goto LABEL_7;
  }

  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
LABEL_7:
    v15 = sub_2723777FC();
    v16 = [v15 stringByDeletingPathExtension];

    v17 = sub_27237782C();
    v19 = v18;

    sub_272376CAC();
    v20 = sub_272376C8C();
    v22 = v21;
    (*(v5 + 8))(v8, v4);
    sub_2722560E0(v17, v19, v20, v22);
    v24 = v23;

    if (v24)
    {
      sub_272376CAC();

      goto LABEL_9;
    }

    if (qword_280888690 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_27237AF80;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_27225CAF0();
    *(v25 + 32) = 0x6A2E6769666E6F63;
    *(v25 + 40) = 0xEB000000006E6F73;
    OS_os_log.error(_:_:)("File not found: %@", 18, 2, v25);

    return 0x8000000000000000;
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_2723777FC();
  v14 = [v12 isReadableFileAtPath_];

  if ((v14 & 1) == 0)
  {
    return 0x8000000000000000;
  }

  sub_272376CAC();
LABEL_9:
  v26 = sub_272376D6C();
  v28 = v27;
  sub_272376ABC();
  swift_allocObject();
  sub_272376AAC();
  sub_27227DA80(&qword_2808824B0, v29, type metadata accessor for VATConfiguration, &protocol conformance descriptor for VATConfiguration);
  sub_272376A9C();
  (*(v5 + 8))(v10, v4);

  sub_2721F05C8(v26, v28);
  return v32[2];
}

unint64_t sub_272289964(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_272289980(unint64_t a1, char a2)
{
  if (a2)
  {
    sub_27222F3F8(a1);
  }

  else
  {
  }
}

void sub_272289A1C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v7 = v6();
  v8 = (*((*v5 & *v7) + 0x68))();
  v10 = v9;

  v11 = v6();

  MEMORY[0x2743C4AD0](47, 0xE100000000000000);

  MEMORY[0x2743C4AD0](v8, v10);

  (*((*v5 & *v11) + 0x70))(a1, a2);
}

uint64_t sub_272289D78()
{
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  type metadata accessor for VATConfiguration();
  sub_27227DA80(&qword_2808824A8, v0, type metadata accessor for VATConfiguration, &protocol conformance descriptor for VATConfiguration);
  v1 = sub_272376B1C();
  v3 = v2;

  v4 = sub_272289EA0(v1, v3);
  if (v5)
  {
    v6 = v4;
    sub_2721F05C8(v1, v3);
    return v6;
  }

  else
  {
    sub_2721F05C8(v1, v3);
    return 0x3E6C696E3CLL;
  }
}

uint64_t sub_272289EA0(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = sub_27237788C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = objc_opt_self();
  v4 = sub_272376D7C();
  *&v22 = 0;
  v5 = [v3 JSONObjectWithData:v4 options:0 error:&v22];

  v6 = v22;
  if (v5)
  {
    sub_27237814C();
    swift_unknownObjectRelease();
    sub_27221981C(v21, &v22);
    sub_27220300C(&v22, v23);
    v7 = sub_27237864C();
    *&v21[0] = 0;
    v8 = [v3 dataWithJSONObject:v7 options:9 error:v21];
    swift_unknownObjectRelease();
    v9 = *&v21[0];
    if (v8)
    {
      v10 = sub_272376D8C();
      v12 = v11;

      sub_27237787C();
      v13 = sub_27237784C();
      v15 = v14;
      sub_2721F05C8(v10, v12);
      sub_2722039C8(&v22);
      if (v15)
      {
        return v13;
      }
    }

    else
    {
      v19 = v9;
      v20 = sub_272376C6C();

      swift_willThrow();
      sub_2722039C8(&v22);
    }
  }

  else
  {
    v17 = v6;
    v18 = sub_272376C6C();

    swift_willThrow();
  }

  return 0;
}

id sub_27228A0E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27228A194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_27228A23C(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_27228A258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_27228A2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_27228A314(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_27228C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_27228C16C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27228C190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27228C1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_27228C21C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureExtractorConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureExtractorConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27228C440()
{
  result = qword_280889370[0];
  if (!qword_280889370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889370);
  }

  return result;
}

unint64_t sub_27228C498()
{
  result = qword_280889580[0];
  if (!qword_280889580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889580);
  }

  return result;
}

unint64_t sub_27228C4F0()
{
  result = qword_280889790[0];
  if (!qword_280889790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889790);
  }

  return result;
}

unint64_t sub_27228C548()
{
  result = qword_2808899A0[0];
  if (!qword_2808899A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808899A0);
  }

  return result;
}

unint64_t sub_27228C5A0()
{
  result = qword_280889BB0[0];
  if (!qword_280889BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889BB0);
  }

  return result;
}

unint64_t sub_27228C5F8()
{
  result = qword_280889DC0[0];
  if (!qword_280889DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889DC0);
  }

  return result;
}

unint64_t sub_27228C650()
{
  result = qword_280889FD0[0];
  if (!qword_280889FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889FD0);
  }

  return result;
}

unint64_t sub_27228C6A8()
{
  result = qword_28088A1E0[0];
  if (!qword_28088A1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A1E0);
  }

  return result;
}

unint64_t sub_27228C700()
{
  result = qword_28088A3F0[0];
  if (!qword_28088A3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A3F0);
  }

  return result;
}

unint64_t sub_27228C758()
{
  result = qword_28088A600[0];
  if (!qword_28088A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A600);
  }

  return result;
}

unint64_t sub_27228C7B0()
{
  result = qword_28088A710;
  if (!qword_28088A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A710);
  }

  return result;
}

unint64_t sub_27228C808()
{
  result = qword_28088A718[0];
  if (!qword_28088A718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A718);
  }

  return result;
}

unint64_t sub_27228C860()
{
  result = qword_28088A7A0;
  if (!qword_28088A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A7A0);
  }

  return result;
}

unint64_t sub_27228C8B8()
{
  result = qword_28088A7A8[0];
  if (!qword_28088A7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A7A8);
  }

  return result;
}

unint64_t sub_27228C910()
{
  result = qword_28088A830;
  if (!qword_28088A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A830);
  }

  return result;
}

unint64_t sub_27228C968()
{
  result = qword_28088A838[0];
  if (!qword_28088A838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A838);
  }

  return result;
}

unint64_t sub_27228C9C0()
{
  result = qword_28088A8C0;
  if (!qword_28088A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A8C0);
  }

  return result;
}

unint64_t sub_27228CA18()
{
  result = qword_28088A8C8[0];
  if (!qword_28088A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A8C8);
  }

  return result;
}

unint64_t sub_27228CA70()
{
  result = qword_28088A950;
  if (!qword_28088A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A950);
  }

  return result;
}

unint64_t sub_27228CAC8()
{
  result = qword_28088A958[0];
  if (!qword_28088A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A958);
  }

  return result;
}

unint64_t sub_27228CB20()
{
  result = qword_28088A9E0;
  if (!qword_28088A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A9E0);
  }

  return result;
}

unint64_t sub_27228CB78()
{
  result = qword_28088A9E8[0];
  if (!qword_28088A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A9E8);
  }

  return result;
}

unint64_t sub_27228CBD0()
{
  result = qword_28088AA70;
  if (!qword_28088AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AA70);
  }

  return result;
}

unint64_t sub_27228CC28()
{
  result = qword_28088AA78;
  if (!qword_28088AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AA78);
  }

  return result;
}

unint64_t sub_27228CC80()
{
  result = qword_28088AB00;
  if (!qword_28088AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AB00);
  }

  return result;
}

unint64_t sub_27228CCD8()
{
  result = qword_28088AB08[0];
  if (!qword_28088AB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AB08);
  }

  return result;
}

unint64_t sub_27228CD30()
{
  result = qword_28088AB90;
  if (!qword_28088AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AB90);
  }

  return result;
}

unint64_t sub_27228CD88()
{
  result = qword_28088AB98[0];
  if (!qword_28088AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AB98);
  }

  return result;
}

unint64_t sub_27228CDE0()
{
  result = qword_28088AC20;
  if (!qword_28088AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AC20);
  }

  return result;
}

unint64_t sub_27228CE38()
{
  result = qword_28088AC28[0];
  if (!qword_28088AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AC28);
  }

  return result;
}

uint64_t sub_27228CE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6361626B6F6F6CLL && a2 == 0xEE0073656D617246;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238C070 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_27228CFBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000027238C1B0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000027238C1D0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x800000027238C1F0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_27228D128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63656843657375 && a2 == 0xEA00000000007265;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238C380 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C3C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061436F69647561 && a2 == 0xEC00000065727574)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_27228D2EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461506C65646F6DLL && a2 == 0xE900000000000068;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365726854676F6CLL && a2 == 0xEC000000646C6F68 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D696E694D676F6CLL && a2 == 0xEA00000000006D75)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_27228D418(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000027238C5C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238C5E0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C600 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C620 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238C640 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238C660 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7463655674656E6ELL && a2 == 0xEE00657A6953726FLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_27228D66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265446F69647561 && a2 == 0xEA00000000006775;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6365446863746162 && a2 == 0xEB0000000065646FLL || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238C380 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C3C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6150646E6F636573 && a2 == 0xEA00000000007373)
  {

    return 5;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_27228D878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654E6C617275656ELL && a2 == 0xED00006B726F7774;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272388330 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646F636564 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150646E6F636573 && a2 == 0xEA00000000007373 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D69746E7572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

VoiceActions::VASilenceModelFeatureCount_optional __swiftcall VASilenceModelFeatureCount.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 80)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 40)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VASilenceModelFeatureCount.rawValue.getter()
{
  if (*v0)
  {
    return 80;
  }

  else
  {
    return 40;
  }
}

uint64_t sub_27228DAD0()
{
  v1 = *v0;
  sub_27237874C();
  if (v1)
  {
    v2 = 80;
  }

  else
  {
    v2 = 40;
  }

  MEMORY[0x2743C58B0](v2);
  return sub_27237878C();
}

uint64_t sub_27228DB24()
{
  if (*v0)
  {
    v1 = 80;
  }

  else
  {
    v1 = 40;
  }

  return MEMORY[0x2743C58B0](v1);
}

uint64_t sub_27228DB60(uint64_t a1)
{
  v2 = *v1;
  sub_27237874C();
  if (v2)
  {
    v3 = 80;
  }

  else
  {
    v3 = 40;
  }

  MEMORY[0x2743C58B0](v3);
  return sub_27237878C();
}

void *sub_27228DBB0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 80)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 40)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_27228DBD0(uint64_t *a1@<X8>)
{
  v2 = 40;
  if (*v1)
  {
    v2 = 80;
  }

  *a1 = v2;
}

uint64_t sub_27228DC9C(void *a1, unint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  sub_27228DD04(a1, a2, a3);
  return v6;
}

uint64_t sub_27228DD04(void *a1, unint64_t a2, char *a3)
{
  v5 = v3;
  if (!a2)
  {
    sub_2722032B4();
    swift_allocError();
    *v10 = 0xD000000000000017;
    v10[1] = 0x800000027238CA10;
    swift_willThrow();
    goto LABEL_5;
  }

  v7 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for VAEspressoUtilsV2();

  v9 = sub_2721F7EE4();
  sub_2723195D0(a1, a2, v9 & 1, &v43);
  if (!v4)
  {

    v11 = v44;
    *(v5 + 32) = v43;
    *(v5 + 48) = v11;
    *(v5 + 64) = v45;
    if (v7 & 1) != 0 || (v46 = v44, *(v44 + 16) == 1) && (sub_27228E4E4(&v46, &v41), sub_27220038C(0x7475706E69, 0xE500000000000000), v27 = v26, sub_27228E554(&v46), (v27) && (v28 = *(v5 + 48), *(v28 + 16)) && (v29 = sub_27220038C(0x7475706E69, 0xE500000000000000), (v30) && (v31 = *(**(*(v28 + 56) + 8 * v29) + 200), v32 = , v33 = v31(v32), , v34 = sub_27228E488(v33, &unk_28817F788), , (v34))
    {
      if (*(*(v5 + 56) + 16) == 1)
      {

        sub_27220038C(0x74757074756FLL, 0xE600000000000000);
        v13 = v12;

        if (v13)
        {
          v14 = *(v5 + 56);
          if (*(v14 + 16))
          {
            v15 = sub_27220038C(0x74757074756FLL, 0xE600000000000000);
            if (v16)
            {
              v17 = *(**(*(v14 + 56) + 8 * v15) + 200);

              v19 = v17(v18);

              v20 = sub_27228E488(v19, &unk_28817F808);

              if (v20)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_27237820C();

      v41 = 0xD00000000000001DLL;
      v42 = 0x800000027238CA30;
      v21 = *(v5 + 56);
      if (!*(v21 + 16))
      {
LABEL_23:
        sub_2721F065C(&qword_2808824B8, &unk_272380770);
        v36 = sub_27237789C();
        MEMORY[0x2743C4AD0](v36);

        v37 = v41;
        v38 = v42;
        sub_2722032B4();
        swift_allocError();
        *v39 = v37;
        v39[1] = v38;
        swift_willThrow();

LABEL_24:

        return v5;
      }

      v22 = sub_27220038C(0x74757074756FLL, 0xE600000000000000);
      if ((v23 & 1) == 0)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_27237820C();

      v41 = 0xD00000000000001CLL;
      v42 = 0x800000027238CA50;
      v21 = *(v5 + 48);
      if (!*(v21 + 16))
      {
        goto LABEL_23;
      }

      v22 = sub_27220038C(0x7475706E69, 0xE500000000000000);
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v24 = *(*(v21 + 56) + 8 * v22);

    (*(*v24 + 200))(v25);

    goto LABEL_23;
  }

LABEL_5:
  type metadata accessor for VASilenceModel();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_27228E178(uint64_t a1)
{
  v3 = v1;
  if (*(*(v1 + 48) + 16) && (sub_27220038C(0x7475706E69, 0xE500000000000000), (v5 & 1) != 0) && (sub_2721F065C(&qword_2808824C0, &qword_272380780), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;

    sub_272256424(a1);
    (*(*v7 + 624))();

    sub_272275B0C();
    if (!v2)
    {
      if (*(*(v3 + 56) + 16))
      {
        sub_27220038C(0x74757074756FLL, 0xE600000000000000);
        if (v8)
        {
          sub_2721F065C(&qword_2808824C8, qword_272380788);
          v9 = swift_dynamicCastClass();
          if (v9)
          {
            v10 = *(*v9 + 720);

            v12 = v10(v11);

            return v12;
          }
        }
      }

      sub_2722032B4();
      swift_allocError();
      *v15 = 0xD00000000000001DLL;
      v15[1] = 0x800000027238CA90;
      swift_willThrow();
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    v14[1] = 0x800000027238CA70;
    return swift_willThrow();
  }
}

void *VASilenceModel.deinit()
{

  return v0;
}

uint64_t VASilenceModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27228E488(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27228E4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881818, &qword_27237BF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27228E554(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881818, &qword_27237BF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27228E5C0()
{
  result = qword_2808824D0;
  if (!qword_2808824D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808824D0);
  }

  return result;
}

uint64_t VAAttentionDetectionConfiguration.__allocating_init(jsonFile:namesToBeDetected:computeUnits:useResultGenerator:enableSecondPass:gain:textEnrollmentOnly:extraAudioDurationAfterPredictionWindow:applyGainToEnrollmentAudio:extraAudioDurationBeforePredictionWindow:maxTextAudioEnrollmentCount:)(void *a1, unint64_t a2, uint64_t a3, char *a4, char a5, char a6, char a7, uint64_t a8, float a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v19 = swift_allocObject();
  v20 = *a4;
  *(v19 + 24) = a3;
  *(v19 + 32) = v20;
  *(v19 + 33) = a5;
  *(v19 + 34) = a6;
  *(v19 + 36) = a9;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a10 & 1;
  *(v19 + 57) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a13 & 1;
  *(v19 + 80) = a1;
  *(v19 + 88) = a2;
  type metadata accessor for VAA2AEnrollmentMap();

  v21 = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(a1, a2);
  if (v27)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v19 + 16) = v21;
    *(v19 + 96) = a14;
  }

  return v19;
}

uint64_t VAAttentionDetectionConfiguration.init(jsonFile:namesToBeDetected:computeUnits:useResultGenerator:enableSecondPass:gain:textEnrollmentOnly:extraAudioDurationAfterPredictionWindow:applyGainToEnrollmentAudio:extraAudioDurationBeforePredictionWindow:maxTextAudioEnrollmentCount:)(void *a1, unint64_t a2, uint64_t a3, char *a4, char a5, char a6, char a7, uint64_t a8, float a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = v14;
  v19 = *a4;
  *(v16 + 24) = a3;
  *(v16 + 32) = v19;
  *(v16 + 33) = a5;
  *(v16 + 34) = a6;
  *(v16 + 36) = a9;
  *(v16 + 40) = a7;
  *(v16 + 48) = a8;
  *(v16 + 56) = a10 & 1;
  *(v16 + 57) = a11;
  *(v16 + 64) = a12;
  *(v16 + 72) = a13 & 1;
  *(v16 + 80) = a1;
  *(v16 + 88) = a2;
  type metadata accessor for VAA2AEnrollmentMap();

  v20 = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(a1, a2);
  if (v15)
  {

    type metadata accessor for VAAttentionDetectionConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v16 + 16) = v20;
    *(v16 + 96) = a14;
  }

  return v16;
}

uint64_t sub_27228E8A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001BLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000015;
      }

      if (a1 == 9)
      {
        return 0x7364726F7779656BLL;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000027;
      if (a1 == 7)
      {
        v6 = 0xD000000000000028;
      }

      if (a1 == 6)
      {
        return 0xD00000000000001ALL;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x656C69466E6F736ALL;
    v2 = 0xD000000000000010;
    v3 = 1852399975;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27228EA48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27229004C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_27228EA7C(uint64_t a1)
{
  v2 = sub_27228EFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27228EAB8(uint64_t a1)
{
  v2 = sub_27228EFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAAttentionDetectionConfiguration.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  VAAttentionDetectionConfiguration.init(from:)(a1);
  return v2;
}

void *VAAttentionDetectionConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824D8, &unk_272380970);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-v7];
  sub_27220300C(a1, a1[3]);
  sub_27228EFB8();
  sub_2723787AC();
  if (v2)
  {
    type metadata accessor for VAAttentionDetectionConfiguration();
    swift_deallocPartialClassInstance();
LABEL_11:
    sub_2722039C8(a1);
    return v3;
  }

  LOBYTE(v27) = 0;
  v9 = sub_27237843C();
  v11 = 0x64696C61766E69;
  if (v10)
  {
    v11 = v9;
  }

  v12 = 0xE700000000000000;
  if (v10)
  {
    v12 = v10;
  }

  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  v26[15] = 1;
  sub_27228F60C(&qword_280881800, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  result = sub_27237848C();
  if (v27)
  {
    *(v1 + 24) = v27;
    LOBYTE(v27) = 2;
    v14 = sub_27237844C();
    *(v1 + 33) = (v14 == 2) | v14 & 1;
    LOBYTE(v27) = 3;
    v15 = sub_27237844C();
    *(v1 + 34) = (v15 == 2) | v15 & 1;
    LOBYTE(v27) = 4;
    v16 = sub_27237846C();
    v17 = *&v16;
    if ((v16 & 0x100000000) != 0)
    {
      v17 = 1.0;
    }

    *(v1 + 36) = v17;
    LOBYTE(v27) = 5;
    *(v1 + 40) = sub_27237844C() & 1;
    LOBYTE(v27) = 6;
    v18 = sub_27237844C();
    *(v1 + 57) = (v18 == 2) | v18 & 1;
    LOBYTE(v27) = 7;
    *(v1 + 64) = sub_27237845C();
    *(v1 + 72) = v19 & 1;
    LOBYTE(v27) = 8;
    result = sub_27237845C();
    *(v1 + 48) = result;
    *(v1 + 56) = v20 & 1;
    v21 = *(v1 + 88);
    if (v21)
    {
      v22 = *(v3 + 80);
      type metadata accessor for VAA2AEnrollmentMap();

      *(v3 + 16) = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(v22, v21);
      LOBYTE(v27) = 11;
      v23 = sub_27237847C();
      LOBYTE(v22) = v24;
      (*(v6 + 8))(v8, v5);
      v25 = 3;
      if ((v22 & 1) == 0)
      {
        v25 = v23;
      }

      *(v3 + 96) = v25;
      *(v3 + 32) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27228EFB8()
{
  result = qword_28088AFB0[0];
  if (!qword_28088AFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AFB0);
  }

  return result;
}

uint64_t sub_27228F0E8(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824E0, &unk_272380980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  sub_27220300C(a1, a1[3]);
  sub_27228EFB8();
  sub_2723787CC();
  v20 = *(v3 + 80);
  v21 = 0;
  sub_2721F065C(&qword_280881828, &qword_27237BF40);
  sub_27228F590();
  sub_2723785DC();
  if (!v2)
  {
    v9 = *(v3 + 24);
    *&v20 = v9;
    v21 = 1;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_27228F60C(&qword_2808824F0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_2723785DC();
    LOBYTE(v20) = 2;
    sub_27237859C();
    LOBYTE(v20) = 3;
    sub_27237859C();
    LOBYTE(v20) = 4;
    sub_2723785BC();
    LOBYTE(v20) = 5;
    sub_27237859C();
    LOBYTE(v20) = *(v3 + 57);
    v21 = 6;
    sub_2721F065C(&qword_2808824F8, &qword_272380990);
    sub_27228F678();
    sub_2723785DC();
    v10 = *(v3 + 72);
    *&v20 = *(v3 + 64);
    BYTE8(v20) = v10;
    v21 = 7;
    v11 = sub_2721F065C(&qword_280882508, &qword_272380998);
    v18 = sub_27228F6F4();
    v19 = v11;
    sub_2723785DC();
    v12 = *(v3 + 56);
    *&v20 = *(v3 + 48);
    BYTE8(v20) = v12;
    v21 = 8;
    sub_2723785DC();
    v13 = *(v3 + 16);
    v14 = sub_2723075C0();
    v15 = *(*v13 + 264);
    v19 = v13;
    *&v20 = v15(v9, v14);
    v21 = 9;
    sub_2723785DC();

    *&v20 = (*(*v19 + 192))(v16);
    v21 = 10;
    sub_2721F065C(&qword_280882518, &qword_2723809A0);
    sub_27228F770();
    sub_2723785DC();

    LOBYTE(v20) = 11;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_27228F590()
{
  result = qword_2808824E8;
  if (!qword_2808824E8)
  {
    sub_2721F214C(&qword_280881828, &qword_27237BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808824E8);
  }

  return result;
}

uint64_t sub_27228F60C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27228F678()
{
  result = qword_280882500;
  if (!qword_280882500)
  {
    sub_2721F214C(&qword_2808824F8, &qword_272380990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882500);
  }

  return result;
}

unint64_t sub_27228F6F4()
{
  result = qword_280882510;
  if (!qword_280882510)
  {
    sub_2721F214C(&qword_280882508, &qword_272380998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882510);
  }

  return result;
}

unint64_t sub_27228F770()
{
  result = qword_280882520;
  if (!qword_280882520)
  {
    sub_2721F214C(&qword_280882518, &qword_2723809A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882520);
  }

  return result;
}

uint64_t sub_27228F7EC()
{
  v0 = sub_27237788C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_272376AFC();
  MEMORY[0x28223BE20](v1);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  *(swift_allocObject() + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  sub_27228FB08(&qword_280881C78, 255, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAAttentionDetectionConfiguration();
  sub_27228FB08(&qword_280882528, v2, type metadata accessor for VAAttentionDetectionConfiguration, &protocol conformance descriptor for VAAttentionDetectionConfiguration);
  v3 = sub_272376B1C();
  v5 = v4;
  sub_27237787C();
  v6 = sub_27237784C();
  if (v7)
  {
    v8 = v6;
    sub_2721F05C8(v3, v5);
  }

  else
  {
    sub_2721F05C8(v3, v5);

    return 0;
  }

  return v8;
}

uint64_t sub_27228FB08(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *VAAttentionDetectionConfiguration.deinit()
{

  return v0;
}

uint64_t VAAttentionDetectionConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27228FC0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAAttentionDetectionConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAAttentionDetectionConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27228FF48()
{
  result = qword_28088B240[0];
  if (!qword_28088B240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B240);
  }

  return result;
}

unint64_t sub_27228FFA0()
{
  result = qword_28088B350;
  if (!qword_28088B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B350);
  }

  return result;
}

unint64_t sub_27228FFF8()
{
  result = qword_28088B358[0];
  if (!qword_28088B358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B358);
  }

  return result;
}

uint64_t sub_27229004C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C69466E6F736ALL && a2 == 0xE800000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238CB30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238CB50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238CB70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852399975 && a2 == 0xE400000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238CB90 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238CBE0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238CC00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000027 && 0x800000027238CBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238CC60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000027238CC40 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id sub_272290404()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_272290448(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_272290500(uint64_t a1, uint64_t a2)
{
  v2 = sub_272291FE0(&unk_28817FA28);
  sub_272203A70(&unk_28817FA48);
  return v2;
}

id sub_27229053C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

void sub_272290710()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722907B0()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722908C8()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_272377D8C();

  return v2;
}

id sub_272290920(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_2723777FC();
  v5 = [v3 featureValueForName_];

  return v5;
}

uint64_t sub_2722909AC(void *a1)
{
  swift_allocObject();
  v2 = sub_2722921AC(a1);

  return v2;
}

uint64_t sub_2722909F4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_272290A2C()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272290B00(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_272290CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_272290DD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272290E90, 0, 0);
}

uint64_t sub_272290E90()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_272290FC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  (*(v4[5] + 8))(v4[6], v4[4]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_272291170, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_272291170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722911D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229128C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272291354;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272291354(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722914A0, 0, 0);
  }
}

uint64_t sub_2722914A0()
{
  v1 = *(v0 + 24);
  type metadata accessor for at_encoder_rdr_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272291514(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722915A0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for at_encoder_rdr_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_272291678(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229169C, 0, 0);
}

uint64_t sub_27229169C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_27229173C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_27229173C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272291888, 0, 0);
  }
}

uint64_t sub_272291888()
{
  v1 = *(v0 + 48);
  type metadata accessor for at_encoder_rdr_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722918FC(void *a1)
{
  type metadata accessor for at_encoder_rdr_125141826Input();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272291990(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v11(v8, v10, v4);
  sub_272292148();
  v12 = sub_272377E5C();
  (*(v5 + 8))(v10, v4);
  type metadata accessor for at_encoder_rdr_125141826Input();
  *(swift_allocObject() + 16) = v12;
  v13 = (*(*v2 + 136))();

  return v13;
}

void sub_272291B60(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for at_encoder_rdr_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_272291E24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_2723783AC();
LABEL_9:
    result = sub_27237822C();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_272291EC0()
{

  return swift_deallocClassInstance();
}

id sub_272291EF8(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_27237770C();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_272291FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
    v3 = sub_2723781AC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_27237874C();

      sub_27237790C();
      result = sub_27237878C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_27237865C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_272292148()
{
  result = qword_280882538;
  if (!qword_280882538)
  {
    sub_2721F214C(&qword_280882530, &unk_272380BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882538);
  }

  return result;
}

uint64_t sub_2722921AC(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

id sub_272292308(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_272376CCC();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_272376D5C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
    v11 = sub_272376D5C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_272292468()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722924A0(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for at_encoder_rdr_125141826();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

uint64_t sub_272292598(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272292604@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_272292634(uint64_t a1)
{
  v2 = sub_272292BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292670(uint64_t a1)
{
  v2 = sub_272292BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2722926AC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2722926E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000027238CD70 == a2;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238CD90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2722927C4(uint64_t a1)
{
  v2 = sub_272292B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292800(uint64_t a1)
{
  v2 = sub_272292B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229283C(uint64_t a1)
{
  v2 = sub_272292C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292878(uint64_t a1)
{
  v2 = sub_272292C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722928B4(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_2721F065C(&qword_2808825C0, &qword_272380CB0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = sub_2721F065C(&qword_2808825C8, &qword_272380CB8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = sub_2721F065C(&qword_2808825D0, &qword_272380CC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  sub_27220300C(a1, a1[3]);
  sub_272292B70();
  sub_2723787CC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_272292BC4();
    sub_27237851C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_272292C18();
    sub_27237851C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_272292B70()
{
  result = qword_28088B3E0;
  if (!qword_28088B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B3E0);
  }

  return result;
}

unint64_t sub_272292BC4()
{
  result = qword_28088B3E8;
  if (!qword_28088B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B3E8);
  }

  return result;
}

unint64_t sub_272292C18()
{
  result = qword_28088B3F0[0];
  if (!qword_28088B3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B3F0);
  }

  return result;
}

uint64_t sub_272292C6C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_272293370(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_272292CB8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v37 = a5;
  v38 = a4;
  v35 = a1;
  v36 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  v33 = *(a7 - 1);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a3, a6);
  v23 = v39;
  v38(v22);
  if (v23)
  {
    return (*(v20 + 8))(v22, a6);
  }

  v37 = *(TupleTypeMetadata2 + 48);
  v38 = a7;
  v39 = TupleTypeMetadata2;
  v25 = *(v20 + 32);
  v25(v16, v22, a6);
  v26 = v13;
  v27 = *(v33 + 32);
  v28 = v19;
  v29 = v38;
  v27(&v16[v37], v28, v38);
  v30 = v16;
  v31 = v39;
  (*(v34 + 32))(v26, v30, v39);
  v32 = *(v31 + 48);
  v25(v35, v26, a6);
  return (v27)(v36, &v26[v32], v29);
}

uint64_t sub_272292FA0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X6>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_272292CB8(a4, v10, v11, v12, v13, v14, v15);
  if (!v4)
  {
    a2(v10);
    return (*(v8 + 8))(v10, a3);
  }

  return result;
}

uint64_t sub_2722930D4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[2] = a3;
  v25 = a5;
  v24[0] = a6;
  v24[1] = a2;
  v8 = sub_27237801C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v24 - v16;
  v18 = *(a4 - 8);
  (*(v18 + 56))(v15, 1, 1, a4);
  v19 = v26;
  sub_272292FA0(v15, a1, v25, v17);
  if (v19)
  {
    return (*(v9 + 8))(v15, v8);
  }

  v21 = v15;
  v22 = *(v9 + 8);
  v22(v21, v8);
  (*(v9 + 16))(v12, v17, v8);
  if ((*(v18 + 48))(v12, 1, a4) == 1)
  {
    v22(v12, v8);
    sub_2722937AC();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    return (v22)(v17, v8);
  }

  else
  {
    v22(v17, v8);
    return (*(v18 + 32))(v24[0], v12, a4);
  }
}

uint64_t sub_272293370(void *a1)
{
  v24 = sub_2721F065C(&qword_2808825E8, &qword_272381088);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = sub_2721F065C(&qword_2808825F0, &qword_272381090);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = sub_2721F065C(&qword_2808825F8, &qword_272381098);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  sub_27220300C(a1, a1[3]);
  sub_272292B70();
  v10 = v26;
  sub_2723787AC();
  if (v10)
  {
    return sub_2722039C8(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_27237850C();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_27237824C();
    swift_allocError();
    v18 = v17;
    sub_2721F065C(&qword_280882600, &unk_2723810A0);
    *v18 = &type metadata for VACInteropUtils.DomainError;
    sub_27237842C();
    sub_27237823C();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_2722039C8(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_272292BC4();
    sub_27237841C();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_272292C18();
    sub_27237841C();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_2722039C8(v26);
  return v27;
}

unint64_t sub_2722937AC()
{
  result = qword_2808825D8;
  if (!qword_2808825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808825D8);
  }

  return result;
}

unint64_t sub_272293804()
{
  result = qword_2808825E0;
  if (!qword_2808825E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808825E0);
  }

  return result;
}

unint64_t sub_2722938AC()
{
  result = qword_28088B980[0];
  if (!qword_28088B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B980);
  }

  return result;
}

unint64_t sub_272293904()
{
  result = qword_28088BA90;
  if (!qword_28088BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BA90);
  }

  return result;
}

unint64_t sub_27229395C()
{
  result = qword_28088BA98[0];
  if (!qword_28088BA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BA98);
  }

  return result;
}

unint64_t sub_2722939B4()
{
  result = qword_28088BB20;
  if (!qword_28088BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BB20);
  }

  return result;
}

unint64_t sub_272293A0C()
{
  result = qword_28088BB28[0];
  if (!qword_28088BB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BB28);
  }

  return result;
}

unint64_t sub_272293A64()
{
  result = qword_28088BBB0;
  if (!qword_28088BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BBB0);
  }

  return result;
}

unint64_t sub_272293ABC()
{
  result = qword_28088BBB8[0];
  if (!qword_28088BBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BBB8);
  }

  return result;
}

uint64_t sub_272293B84()
{
  v0 = sub_272291FE0(&unk_28817FC30);
  sub_272203A70(&unk_28817FC50);
  return v0;
}

id sub_272293BC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_272293D94()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272293EE8(void *a1)
{
  swift_allocObject();
  v2 = sub_272295114(a1);

  return v2;
}

void sub_272293F30()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272294004(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_2722941C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2722942D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272294394, 0, 0);
}

uint64_t sub_272294394()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722944C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229457C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272294644;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272294644(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_272294790, 0, 0);
  }
}

uint64_t sub_272294790()
{
  v1 = *(v0 + 24);
  type metadata accessor for quant_enc_f32_wofeats();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272294804(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_272294890(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for quant_enc_f32_wofeatsOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_272294968(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229498C, 0, 0);
}

uint64_t sub_27229498C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_272294A2C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_272294A2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272294B78, 0, 0);
  }
}

uint64_t sub_272294B78()
{
  v1 = *(v0 + 48);
  type metadata accessor for quant_enc_f32_wofeatsOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272294BEC(void *a1)
{
  type metadata accessor for quant_enc_f32_wofeatsInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272294C80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *(v5 + 16);
  v11(v15 - v9, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v11(v8, v10, v4);
  sub_272292148();
  v12 = sub_272377E5C();
  (*(v5 + 8))(v10, v4);
  type metadata accessor for quant_enc_f32_wofeatsInput();
  *(swift_allocObject() + 16) = v12;
  v13 = (*(*v2 + 136))();

  return v13;
}

void sub_272294E50(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for quant_enc_f32_wofeatsOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_272295114(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_272295270()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722952A8(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for quant_enc_f32_wofeats();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

id sub_2722953A0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_2722953E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_27229542C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

id sub_272295470()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_2722954B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_272295590()
{
  v0 = sub_272291FE0(&unk_28817FC88);
  swift_arrayDestroy();
  return v0;
}

id sub_2722955D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

void *sub_272295840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_272295894()
{

  return swift_deallocClassInstance();
}

void sub_2722958E4()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_272295974()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272295AC8(void *a1)
{
  swift_allocObject();
  v2 = sub_272296EB0(a1);

  return v2;
}

void sub_272295B10()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272295BE4(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  (*(v1 + 88))(v10);
  v13 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v9, v12, v5);
  v14 = a1;
  v15 = sub_272292308(v9, v14);
  if (v2)
  {

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    v16 = v15;

    v13 = (*(v3 + 96))(v16);
    (*(v6 + 8))(v12, v5);
  }

  return v13;
}

uint64_t sub_272295DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v9);
  (*(v3 + 120))(v11, a1, a2, a3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_272295EB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272295F74, 0, 0);
}

uint64_t sub_272295F74()
{
  v6 = v0[3];
  (*(v6 + 88))();
  v5 = (*(v6 + 128) + **(v6 + 128));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_272290FC0;
  v2 = v0[6];
  v3 = v0[2];

  return v5(v2, v3);
}

uint64_t sub_2722960A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229615C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_272296224;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272296224(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_272296370, 0, 0);
  }
}

uint64_t sub_272296370()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_verifier_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722963E4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_272296470(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_verifier_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_272376C6C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_272296548(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229656C, 0, 0);
}

uint64_t sub_27229656C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_27229660C;
  v3 = v0[2];
  v2 = v0[3];

  return MEMORY[0x282111980](v3, v2);
}

uint64_t sub_27229660C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272296758, 0, 0);
  }
}

uint64_t sub_272296758()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_verifier_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722967CC(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for aa_verifier_125141826Input();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_27229688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  v30 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v37 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(v5 + 16);
  v34 = &v30 - v18;
  v20(&v30 - v18, v31, v4);
  v20(v17, v32, v4);
  v20(v14, v33, v4);
  v20(v11, v35, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v20(v8, v19, v4);
  sub_272292148();
  v35 = sub_272377E5C();
  v20(v8, v37, v4);
  v33 = sub_272377E5C();
  v21 = v30;
  v20(v8, v30, v4);
  v32 = sub_272377E5C();
  v20(v8, v11, v4);
  v22 = sub_272377E5C();
  v23 = *(v5 + 8);
  v23(v11, v4);
  v23(v21, v4);
  v23(v37, v4);
  v23(v34, v4);
  type metadata accessor for aa_verifier_125141826Input();
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v32;
  v27 = v33;
  v24[2] = v35;
  v24[3] = v27;
  v24[4] = v26;
  v24[5] = v22;
  v28 = (*(*v25 + 136))();

  return v28;
}

void sub_272296BEC(unint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v21[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v21];
  v11 = v21[0];
  if (v10)
  {
    v12 = v10;
    v21[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_verifier_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v21[0];
    sub_272376C6C();

    swift_willThrow();
  }
}

uint64_t sub_272296EB0(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  v6 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8(v6);
  return v2;
}

uint64_t sub_272296FFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272297034(void *a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  type metadata accessor for aa_verifier_125141826();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v3(v6, 0);
}

double sub_272297174(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2722971D8()
{
  sub_2721F065C(&qword_280882608, &unk_272381220);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27237AFB0;
  v1 = sub_272291FE0(&unk_28818B810);
  swift_arrayDestroy();
  *(v0 + 32) = v1;
  v2 = sub_272291FE0(&unk_28818B860);
  swift_arrayDestroy();
  *(v0 + 40) = v2;
  v3 = sub_272291FE0(&unk_28818B8B0);
  result = swift_arrayDestroy();
  *(v0 + 48) = v3;
  qword_280893A98 = v0;
  return result;
}

uint64_t sub_2722972B4()
{
  v0 = sub_272291FE0(&unk_28817FD10);
  result = swift_arrayDestroy();
  qword_280893AA0 = v0;
  return result;
}

uint64_t sub_27229735C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void *sub_2722973A4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_2722973E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t VAA2AVerifierModelV3.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v9 = *a1;
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = v8;
  *(v3 + 40) = v8;
  *(v3 + 48) = v8;
  *(v3 + 56) = 0;
  type metadata accessor for VALog();
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v18 = v9;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v16, v17, v7);

  v10 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v11 = v10;
  if (v9)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v10 setComputeUnits_];
  type metadata accessor for aa_verifier_125141826();
  v13 = v11;
  v14 = sub_272295BE4(v13);
  if (v2)
  {

    sub_272299680(v7, type metadata accessor for VASignpostInterval);

    type metadata accessor for VAA2AVerifierModelV3();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v14;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v7, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

uint64_t sub_2722976F8(uint64_t a1)
{
  v2 = v1;
  v77 = sub_27237728C();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VASingleEnrollmentData(0);
  v86 = *(v6 - 8);
  v87 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v78 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v70 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v70 - v11;
  v13 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v14 = sub_27220392C(&unk_28818B910, v13);
  (*(*v1 + 264))(v14);
  (*(*v1 + 216))(MEMORY[0x277D84F90]);
  v70[1] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v17 = result;
  v84 = *(result + 16);
  if (v84)
  {
    v18 = 0;
    v19 = *(*v1 + 232);
    v82 = *v1 + 232;
    v83 = v19;
    v81 = result + 32;
    v74 = (v4 + 16);
    v73 = (v4 + 8);
    *&v16 = 136315394;
    v71 = v16;
    v79 = result;
    v80 = v1;
    while (v18 < *(v17 + 16))
    {
      v85 = v18;
      v21 = (v81 + 16 * v18);
      v23 = *v21;
      v22 = v21[1];

      result = v83(v24);
      v25 = result;
      v26 = *(result + 16);
      if (v26)
      {
        v27 = 0;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v28 = *(v86 + 72);
          v95 = (*(v86 + 80) + 32) & ~*(v86 + 80);
          v88 = v28;
          sub_272204F54(v25 + v95 + v28 * v27, v12);
          v89 = sub_2723778AC();
          v90 = v29;
          v93 = 32;
          v94 = 0xE100000000000000;
          v91 = 95;
          v92 = 0xE100000000000000;
          sub_272203AC4();
          v30 = sub_2723780FC();
          v32 = v31;

          if (v30 == v23 && v32 == v22)
          {
            break;
          }

          v33 = sub_27237865C();

          if (v33)
          {
            goto LABEL_15;
          }

          ++v27;
          result = sub_272299680(v12, type metadata accessor for VASingleEnrollmentData);
          if (v26 == v27)
          {
            goto LABEL_3;
          }
        }

LABEL_15:

        v34 = v76;
        v35 = v77;
        v36 = v75;
        v37 = sub_2722C389C();
        (*v74)(v34, v37, v35);
        sub_272204F54(v12, v36);

        v38 = sub_27237725C();
        v39 = sub_272377E7C();

        v40 = os_log_type_enabled(v38, v39);
        v2 = v80;
        if (v40)
        {
          v41 = swift_slowAlloc();
          v72 = v39;
          v42 = v36;
          v43 = v41;
          v44 = swift_slowAlloc();
          v89 = v44;
          *v43 = v71;
          v45 = sub_2721FFD04(v23, v22, &v89);

          *(v43 + 4) = v45;
          *(v43 + 12) = 2080;
          sub_2722996E0();
          v46 = sub_27237862C();
          v48 = v47;
          sub_272299680(v42, type metadata accessor for VASingleEnrollmentData);
          v49 = sub_2721FFD04(v46, v48, &v89);

          *(v43 + 14) = v49;
          _os_log_impl(&dword_2721E4000, v38, v72, "Sorted Enrollment for %s: %s", v43, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v44, -1, -1);
          MEMORY[0x2743C69C0](v43, -1, -1);

          (*v73)(v76, v77);
        }

        else
        {

          sub_272299680(v36, type metadata accessor for VASingleEnrollmentData);
          (*v73)(v34, v35);
        }

        v17 = v79;
        v20 = v85;
        sub_272204F54(v12, v78);
        v50 = (*(*v2 + 224))(&v89);
        v52 = v51;
        v53 = *v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v52 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v53 = sub_27227B890(0, v53[2] + 1, 1, v53);
          *v52 = v53;
        }

        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          v53 = sub_27227B890((v55 > 1), v56 + 1, 1, v53);
          *v52 = v53;
        }

        v53[2] = v56 + 1;
        sub_27227BA68(v78, v53 + v95 + v56 * v88);
        v50(&v89, 0);
        result = sub_272299680(v12, type metadata accessor for VASingleEnrollmentData);
      }

      else
      {
LABEL_3:

        v17 = v79;
        v2 = v80;
        v20 = v85;
      }

      v18 = v20 + 1;
      if (v18 == v84)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_23:

    v57 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v59 = *(*v2 + 208);
    v60 = *(v59(v58) + 16);

    if (v57 == v60)
    {
      return (*(*v2 + 328))(v61);
    }

    else
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000046, 0x800000027238D030);
      v62 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

      v93 = v62;
      v63 = sub_27237862C();
      MEMORY[0x2743C4AD0](v63);

      v64 = MEMORY[0x2743C4AD0](0x756F662074756220, 0xEB0000000020646ELL);
      v65 = *(v59(v64) + 16);

      v93 = v65;
      v66 = sub_27237862C();
      MEMORY[0x2743C4AD0](v66);

      MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xEC00000073746E65);
      v67 = v89;
      v68 = v90;
      sub_2722032B4();
      swift_allocError();
      *v69 = v67;
      v69[1] = v68;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_272297FFC(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for VASingleEnrollmentData(0) + 20));
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v18 = v2;
  v20 = v2 + 32;
  v4 = *(*(v2 + 32) + 16);
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_27237E4F0;
  sub_27223EE54();
  *(v5 + 32) = sub_272377FAC();
  *(v5 + 40) = sub_272377DBC();
  *(v5 + 48) = sub_272377DBC();
  v6 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v7 = sub_272257FA4(v5, 65568);
  if (!v1)
  {
    v8 = 0;
    v19 = v3;
    while (!v4)
    {
LABEL_5:
      if (++v8 == v19)
      {
        return;
      }
    }

    if (v8 < *(v18 + 16))
    {
      v9 = 0;
      while (1)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_27237E4F0;
        *(v10 + 32) = sub_272377FAC();
        *(v10 + 40) = sub_272377DBC();
        *(v10 + 48) = sub_272377DBC();
        v11 = *(v20 + 8 * v8);
        if (v9 >= *(v11 + 16))
        {
          break;
        }

        v12 = v9 + 1;
        v13 = *(v11 + 4 * v9 + 32);
        v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v15) = v13;
        v16 = [v14 initWithFloat_];
        v17 = sub_272377AEC();

        [v7 setObject:v16 forKeyedSubscript:v17];

        v9 = v12;
        if (v4 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_27229822C()
{
  v2 = v0;
  v3 = type metadata accessor for VASingleEnrollmentData(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 192))(MEMORY[0x277D84F90]);
  result = (*(*v0 + 208))(v7);
  v9 = result;
  v16 = *(result + 16);
  if (!v16)
  {
  }

  v10 = 0;
  while (v10 < *(v9 + 16))
  {
    sub_272204F54(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6);
    (*(*v2 + 320))(v6);
    sub_272299680(v6, type metadata accessor for VASingleEnrollmentData);
    if (!v1)
    {
      v11 = (*(*v2 + 200))(v15);
      v13 = v12;
      MEMORY[0x2743C4C30]();
      if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14[1] = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_272377B2C();
      }

      ++v10;
      sub_272377B7C();
      result = v11(v15, 0);
      if (v16 != v10)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272298498(unint64_t a1, char a2)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = v10;
    if (sub_2723783AC())
    {
      v18 = sub_2723783AC();
      v10 = v17;
      if (v18 >= 2)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

LABEL_20:
    type metadata accessor for VAResultGeneratorInput();
    return VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(0, 0, 0);
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_20;
  }

  if (v13 >= 2)
  {
LABEL_4:
    v14 = 0x80000002723886D0;
    sub_2722032B4();
    swift_allocError();
    v16 = 0xD00000000000001FLL;
LABEL_22:
    *v15 = v16;
    v15[1] = v14;
    return swift_willThrow();
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = v10;
    MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v4 = v10;
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v14 = 0x80000002723886B0;
    sub_2722032B4();
    swift_allocError();
    v16 = 0xD000000000000018;
    goto LABEL_22;
  }

  if ((*(v19 + 16) & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = v19;
  v10 = (*(*v2 + 184))();
  if (!(v10 >> 62))
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v37[1] = v10;
  v31 = sub_2723783AC();

  if (!v31)
  {
LABEL_31:
    v32 = sub_2722C389C();
    (*(v9 + 16))(v12, v32, v4);
    v33 = sub_27237725C();
    v34 = sub_272377E8C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2721E4000, v33, v34, "No enrollments set for this model", v35, 2u);
      MEMORY[0x2743C69C0](v35, -1, -1);
    }

    (*(v9 + 8))(v12, v4);
LABEL_34:
    type metadata accessor for VAResultGeneratorInput();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_35;
  }

LABEL_17:
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 40))
    {
      v28 = *(*v2 + 352);

      v22 = v28(v29);

      if (!v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v30 = 0xD00000000000001ELL;
      v30[1] = 0x800000027238B8F0;
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  v22 = (*(*v2 + 256))(v21);
LABEL_19:
  type metadata accessor for VAResultGeneratorInput();
  v23 = *(v5 + 32);

  v24 = 1;
  v25 = v22;
  v26 = v23;
LABEL_35:
  v36 = VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(v24, v25, v26);
  swift_unknownObjectRelease();
  return v36;
}

uint64_t sub_272298908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for VASingleEnrollmentData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 336))(a1, a2);
  if (v4)
  {
    return result;
  }

  v13 = result;
  v46 = 0;
  if ((*(result + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(a3);
  }

  v45 = a3;
  v14 = *((*(*v3 + 208))() + 16);

  v51 = v14;
  if (!v14)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_22:
    type metadata accessor for VAKeywordResult();
    v43 = VAKeywordResult.__allocating_init(detections:)(v16);
    sub_2722E45C4(v43, v45);
  }

  v47 = v11;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v49 = v13;
  v50 = v3;
  v48 = v9;
  while (1)
  {
    v17 = *(v13 + 24);
    if (!v17)
    {
      break;
    }

    if (v15 >= *(v17 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    v18 = *(v17 + 8 * v15 + 32);
    v19 = *(v18 + 16);
    if (!v19)
    {
      goto LABEL_26;
    }

    v20 = *(v18 + 32);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v18 + 36);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    result = (*(*v3 + 232))(result);
    if (v15 >= *(result + 16))
    {
      goto LABEL_27;
    }

    v25 = v47;
    sub_272204F54(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v47);

    v26 = v8;
    v27 = (v25 + *(v8 + 24));
    v28 = *v27;
    v29 = v27[1];

    sub_272299680(v25, type metadata accessor for VASingleEnrollmentData);
    v30 = sub_272241A18();
    v31 = sub_272241A18();
    v32 = sub_272324094();
    v33 = sub_272324094();
    v34 = sub_2721F7EE4();
    v35 = sub_2721F7EE4();
    v36 = sub_27222CD4C();
    sub_27232409C(v28, v29, v32, v33, v34 & 1, v35 & 1, v36 & 1, 0, v52, v20, v30, v31, 0);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272205014(0, *(v16 + 16) + 1, 1, v16);
      v16 = result;
    }

    v38 = *(v16 + 16);
    v37 = *(v16 + 24);
    v8 = v26;
    v13 = v49;
    v3 = v50;
    v9 = v48;
    if (v38 >= v37 >> 1)
    {
      result = sub_272205014((v37 > 1), v38 + 1, 1, v16);
      v16 = result;
    }

    ++v15;
    *(v16 + 16) = v38 + 1;
    v39 = (v16 + 80 * v38);
    v39[2] = v52[0];
    v40 = v52[1];
    v41 = v52[2];
    v42 = v52[4];
    v39[5] = v52[3];
    v39[6] = v42;
    v39[3] = v40;
    v39[4] = v41;
    if (v15 == v51)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void *sub_272298CC8(uint64_t (*a1)(void))
{
  v3 = v1;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v5 + 32) = sub_272377FAC();
  v6 = 0x277CBF000;
  v7 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v8 = sub_272257FA4(v5, 65568);
  if (!v2)
  {
    v9 = v8;
    v51 = v1;
    v10 = sub_272377FAC();
    [v9 setObject:v10 atIndexedSubscript:0];

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_27237E510;
    *(v11 + 32) = sub_272377FAC();
    v12 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v13 = 0;
    v14 = sub_272257FA4(v11, 65568);
    v15 = sub_272377FAC();
    [v14 setObject:v15 atIndexedSubscript:0];

    v16 = v3;
    v49 = *(*v3 + 184);
    v17 = v49();
    if (v17 >> 62)
    {
      goto LABEL_23;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v19 = sub_27220392C(MEMORY[0x277D84F90], v18);
    v6 = v52;
    v20 = (*(*v16 + 296))(v52);
    sub_27225677C(a1, v21);
    if (v13)
    {

      v20(v52, 1);

      return v6;
    }

    v23 = (v20)(v52, 0);
    v48 = (*(*v16 + 280))(v23);
    if (!v48)
    {

      sub_2722032B4();
      swift_allocError();
      *v44 = 0xD000000000000024;
      v44[1] = 0x800000027238B910;
      swift_willThrow();

      return v6;
    }

    v24 = v49();
    if (v24 >> 62)
    {
      v45 = sub_2723783AC();

      if (v45 < 0)
      {
        __break(1u);
      }

      v25 = v45;
      v6 = v19;
      v47 = v14;
      if (v45)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v19;
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v47 = v14;
      if (v25)
      {
LABEL_10:
        v14 = 4;
        v46 = v9;
        do
        {
          a1 = (v14 - 4);
          v26 = v48;
          v16 = v51;
          v27 = v49();
          if ((v27 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2743C5370](v14 - 4, v27);
          }

          else
          {
            if (a1 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_22:
              __break(1u);
LABEL_23:
              v18 = sub_2723783AC();
              goto LABEL_4;
            }

            v28 = *(v27 + 8 * v14);
          }

          v29 = v28;

          type metadata accessor for aa_verifier_125141826Input();
          v30 = sub_272295840(v26, v29, v9, v47);
          v31 = (*(*v51 + 160))();
          v9 = (*(*v31 + 136))(v30);
          v50 = v25;

          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_27237AFB0;
          a1 = *(*v9 + 88);
          v33 = a1();
          v13 = &selRef_environment;
          v34 = [v33 objectAtIndexedSubscript_];

          [v34 floatValue];
          v36 = v35;

          *(v32 + 32) = v36;
          v37 = a1();
          v38 = [v37 objectAtIndexedSubscript_];

          [v38 floatValue];
          v40 = v39;

          *(v32 + 36) = v40;
          v41 = a1();
          v16 = [v41 objectAtIndexedSubscript_];

          [v16 floatValue];
          v43 = v42;

          *(v32 + 40) = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_272200344(v6);
          }

          if ((v14 - 4) >= v6[2])
          {
            goto LABEL_22;
          }

          v6[v14] = v32;

          ++v14;
          --v25;
          v9 = v46;
        }

        while (v50 != 1);
      }
    }
  }

  return v6;
}

void sub_27229939C()
{

  v1 = *(v0 + 56);
}

uint64_t VAA2AVerifierModelV3.deinit()
{
  v0 = VAVerifierModel.deinit();

  return v0;
}

uint64_t VAA2AVerifierModelV3.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();

  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelV3.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = *(*v1 + 240);

  v2(v3);
}

uint64_t sub_272299628(uint64_t a1)
{
  v2 = *(**v1 + 240);

  return v2(v3);
}

uint64_t sub_272299680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2722996E0()
{
  result = qword_280882610;
  if (!qword_280882610)
  {
    type metadata accessor for VASingleEnrollmentData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882610);
  }

  return result;
}

uint64_t sub_27229984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2722998D0(uint64_t a1)
{
  v2 = sub_272299948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229990C(uint64_t a1)
{
  v2 = sub_272299948();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_272299948()
{
  result = qword_28088BC50;
  if (!qword_28088BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BC50);
  }

  return result;
}

uint64_t sub_27229999C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882620, &qword_2723812C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272299948();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v9 = sub_2723784AC();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_2722039C8(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_272299B18(void *a1)
{
  v2 = sub_2721F065C(&qword_280882618, &qword_2723812B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_27220300C(a1, a1[3]);
  sub_272299948();
  sub_2723787CC();
  sub_27237858C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_272299C54()
{
  v1 = 0x6172676F6874726FLL;
  if (*v0 != 1)
  {
    v1 = 6775156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_272299CB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_27229A9E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272299CDC(uint64_t a1)
{
  v2 = sub_272299F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272299D18(uint64_t a1)
{
  v2 = sub_272299F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272299D54(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882628, &qword_2723812C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_27220300C(a1, a1[3]);
  sub_272299F34();
  sub_2723787CC();
  LOBYTE(v11) = 0;
  sub_2723785CC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_27237858C();
    v11 = *(v3 + 24);
    v10[15] = 2;
    sub_272299F88();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_272299F34()
{
  result = qword_28088BC58;
  if (!qword_28088BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BC58);
  }

  return result;
}

unint64_t sub_272299F88()
{
  result = qword_280882630;
  if (!qword_280882630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882630);
  }

  return result;
}

double sub_272299FDC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_27229AB0C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_27229A03C()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_27229A0B0(uint64_t a1)
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_27229A104@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_27237840C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_27229A194@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_27237840C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_27229A1EC(uint64_t a1)
{
  v2 = sub_27229AD34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229A228(uint64_t a1)
{
  v2 = sub_27229AD34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229A264(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882638, &qword_2723812D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_27220300C(a1, a1[3]);
  sub_27229AD34();
  sub_2723787CC();
  v9[1] = a2;
  sub_2721F065C(&qword_280882648, &qword_2723812D8);
  sub_27229B7BC(&qword_280882650, sub_27229AD88, MEMORY[0x277D83948]);
  sub_2723785DC();
  return (*(v5 + 8))(v7, v4);
}

void *sub_27229A3F0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_27229AE10(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27229A438(uint64_t a1)
{
  v1 = sub_27237788C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272376AFC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_272376B3C();
  swift_allocObject();
  sub_272376B2C();
  sub_272376ADC();
  sub_272376B0C();
  sub_27229AFC4();
  v4 = sub_272376B1C();
  v6 = v5;
  sub_27237787C();
  v7 = sub_27237784C();
  v9 = v8;
  sub_2721F05C8(v4, v6);

  if (v9)
  {
    return v7;
  }

  else
  {
    return 32123;
  }
}

uint64_t sub_27229A688()
{
  sub_27237874C();
  MEMORY[0x2743C58B0](0);
  return sub_27237878C();
}

uint64_t sub_27229A6F8(uint64_t a1)
{
  sub_27237874C();
  MEMORY[0x2743C58B0](0);
  return sub_27237878C();
}

uint64_t sub_27229A750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27229A7D8(uint64_t a1)
{
  v2 = sub_27229B018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229A814(uint64_t a1)
{
  v2 = sub_27229B018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229A850(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882678, &qword_2723812E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  sub_27220300C(a1, a1[3]);
  sub_27229B018();
  sub_2723787CC();
  v9[1] = a2;
  sub_27229B06C();
  sub_2723785DC();
  return (*(v5 + 8))(v7, v4);
}

void *sub_27229A998@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_27229B0C0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27229A9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_27229AB0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_2808826D0, &unk_272381990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_27220300C(a1, a1[3]);
  sub_272299F34();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  LOBYTE(v19) = 0;
  v9 = sub_2723784EC();
  LOBYTE(v19) = 1;
  v10 = sub_2723784AC();
  v12 = v11;
  v18 = v10;
  v21 = 2;
  sub_27229B934();
  sub_2723784FC();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  v14 = v20;
  result = sub_2722039C8(a1);
  v16 = v18;
  *a2 = v9;
  a2[1] = v16;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  return result;
}

unint64_t sub_27229AD34()
{
  result = qword_280882640;
  if (!qword_280882640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882640);
  }

  return result;
}

unint64_t sub_27229ADBC()
{
  result = qword_280882668;
  if (!qword_280882668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882668);
  }

  return result;
}

void *sub_27229AE10(void *a1)
{
  v3 = sub_2721F065C(&qword_2808826B0, &qword_272381988);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = sub_27220300C(a1, a1[3]);
  sub_27229AD34();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_2721F065C(&qword_280882648, &qword_2723812D8);
    sub_27229B7BC(&qword_2808826B8, sub_27229B834, MEMORY[0x277D83978]);
    sub_2723784FC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_2722039C8(a1);
  }

  return v7;
}

unint64_t sub_27229AFC4()
{
  result = qword_280882670;
  if (!qword_280882670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882670);
  }

  return result;
}

unint64_t sub_27229B018()
{
  result = qword_28088BC60[0];
  if (!qword_28088BC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BC60);
  }

  return result;
}

unint64_t sub_27229B06C()
{
  result = qword_280882680;
  if (!qword_280882680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882680);
  }

  return result;
}

void *sub_27229B0C0(void *a1)
{
  v3 = sub_2721F065C(&qword_2808826A0, &qword_272381980);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = sub_27220300C(a1, a1[3]);
  sub_27229B018();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_27229B768();
    sub_2723784FC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_2722039C8(a1);
  }

  return v7;
}

unint64_t sub_27229B234()
{
  result = qword_280882688;
  if (!qword_280882688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882688);
  }

  return result;
}

unint64_t sub_27229B28C()
{
  result = qword_280882690;
  if (!qword_280882690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882690);
  }

  return result;
}

unint64_t sub_27229B2E4()
{
  result = qword_280882698;
  if (!qword_280882698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882698);
  }

  return result;
}

uint64_t sub_27229B348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_27229B390(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_27229B454()
{
  result = qword_28088C4F0[0];
  if (!qword_28088C4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C4F0);
  }

  return result;
}

unint64_t sub_27229B4AC()
{
  result = qword_28088C700[0];
  if (!qword_28088C700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C700);
  }

  return result;
}

unint64_t sub_27229B504()
{
  result = qword_28088C910[0];
  if (!qword_28088C910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C910);
  }

  return result;
}

unint64_t sub_27229B55C()
{
  result = qword_28088CA20;
  if (!qword_28088CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CA20);
  }

  return result;
}

unint64_t sub_27229B5B4()
{
  result = qword_28088CA28[0];
  if (!qword_28088CA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CA28);
  }

  return result;
}

unint64_t sub_27229B60C()
{
  result = qword_28088CAB0;
  if (!qword_28088CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CAB0);
  }

  return result;
}

unint64_t sub_27229B664()
{
  result = qword_28088CAB8[0];
  if (!qword_28088CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CAB8);
  }

  return result;
}

unint64_t sub_27229B6BC()
{
  result = qword_28088CB40;
  if (!qword_28088CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CB40);
  }

  return result;
}

unint64_t sub_27229B714()
{
  result = qword_28088CB48[0];
  if (!qword_28088CB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CB48);
  }

  return result;
}

unint64_t sub_27229B768()
{
  result = qword_2808826A8;
  if (!qword_2808826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826A8);
  }

  return result;
}

uint64_t sub_27229B7BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882648, &qword_2723812D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27229B868(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882660, &qword_2723812E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27229B8E0()
{
  result = qword_2808826C8;
  if (!qword_2808826C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826C8);
  }

  return result;
}

unint64_t sub_27229B934()
{
  result = qword_2808826D8;
  if (!qword_2808826D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826D8);
  }

  return result;
}

uint64_t sub_27229B9D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_27229BA10(uint64_t a1)
{
  v2 = v1;
  v82 = sub_27237728C();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VASingleEnrollmentData(0);
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = v75 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v75 - v11;
  (*(*v1 + 168))(MEMORY[0x277D84F90]);
  v75[0] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v15 = result;
  v89 = *(result + 16);
  if (v89)
  {
    v16 = 0;
    v17 = *(*v1 + 184);
    v87 = *v1 + 184;
    v88 = v17;
    v86 = result + 32;
    v79 = (v4 + 16);
    v78 = (v4 + 8);
    *&v14 = 136315394;
    v76 = v14;
    v84 = result;
    v85 = v1;
    while (v16 < *(v15 + 16))
    {
      v90 = v16;
      v19 = (v86 + 16 * v16);
      v21 = *v19;
      v20 = v19[1];

      result = v88(v22);
      v23 = result;
      v24 = *(result + 16);
      if (v24)
      {
        v25 = 0;
        while (1)
        {
          if (v25 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v26 = *(v91 + 72);
          v100 = (*(v91 + 80) + 32) & ~*(v91 + 80);
          v93 = v26;
          sub_272204F54(v23 + v100 + v26 * v25, v12);
          v94 = sub_2723778AC();
          v95 = v27;
          v98 = 32;
          v99 = 0xE100000000000000;
          v96 = 95;
          v97 = 0xE100000000000000;
          sub_272203AC4();
          v28 = sub_2723780FC();
          v30 = v29;

          if (v28 == v21 && v30 == v20)
          {
            break;
          }

          v31 = sub_27237865C();

          if (v31)
          {
            goto LABEL_15;
          }

          ++v25;
          result = sub_272204FB8(v12);
          if (v24 == v25)
          {
            goto LABEL_3;
          }
        }

LABEL_15:

        v32 = v81;
        v33 = v82;
        v34 = v80;
        v35 = sub_2722C389C();
        (*v79)(v32, v35, v33);
        sub_272204F54(v12, v34);

        v36 = sub_27237725C();
        v37 = sub_272377E7C();

        v38 = os_log_type_enabled(v36, v37);
        v2 = v85;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v77 = v36;
          v40 = v34;
          v41 = v39;
          v42 = swift_slowAlloc();
          v94 = v42;
          *v41 = v76;
          v43 = sub_2721FFD04(v21, v20, &v94);

          *(v41 + 4) = v43;
          *(v41 + 12) = 2080;
          sub_2722996E0();
          v44 = sub_27237862C();
          v46 = v45;
          sub_272204FB8(v40);
          v47 = sub_2721FFD04(v44, v46, &v94);

          *(v41 + 14) = v47;
          v48 = v77;
          _os_log_impl(&dword_2721E4000, v77, v37, "Sorted Enrollment for %s: %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v42, -1, -1);
          MEMORY[0x2743C69C0](v41, -1, -1);

          (*v78)(v81, v82);
        }

        else
        {

          sub_272204FB8(v34);
          (*v78)(v32, v33);
        }

        v15 = v84;
        v18 = v90;
        sub_272204F54(v12, v83);
        v49 = (*(*v2 + 176))(&v94);
        v51 = v50;
        v52 = *v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v51 = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_27227B890(0, v52[2] + 1, 1, v52);
          *v51 = v52;
        }

        v55 = v52[2];
        v54 = v52[3];
        if (v55 >= v54 >> 1)
        {
          v52 = sub_27227B890((v54 > 1), v55 + 1, 1, v52);
          *v51 = v52;
        }

        v52[2] = v55 + 1;
        sub_27227BA68(v83, v52 + v100 + v55 * v93);
        v49(&v94, 0);
        result = sub_272204FB8(v12);
      }

      else
      {
LABEL_3:

        v15 = v84;
        v2 = v85;
        v18 = v90;
      }

      v16 = v18 + 1;
      if (v16 == v89)
      {
        goto LABEL_23;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_23:

    v57 = *(*v2 + 160);
    v58 = *(v57(v56) + 16);

    if (v58)
    {
      v59 = sub_272377B5C();
      *(v59 + 16) = v58;
      bzero((v59 + 32), 4 * v58);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v60 = (*(*v2 + 216))(v59);
    v61 = *(v57(v60) + 16);

    if (v61)
    {
      v62 = sub_272377B5C();
      *(v62 + 16) = v61;
      bzero((v62 + 32), 4 * v61);
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
    }

    (*(*v2 + 240))(v62);
    v63 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v65 = *(v57(v64) + 16);

    if (v63 != v65)
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000046, 0x800000027238D030);
      v66 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

      v98 = v66;
      v67 = sub_27237862C();
      MEMORY[0x2743C4AD0](v67);

      v68 = MEMORY[0x2743C4AD0](0x756F662074756220, 0xEB0000000020646ELL);
      v69 = *(v57(v68) + 16);

      v98 = v69;
      v70 = sub_27237862C();
      MEMORY[0x2743C4AD0](v70);

      MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xEC00000073746E65);
      v71 = v94;
      v72 = v95;
      sub_2722032B4();
      v73 = swift_allocError();
      *v74 = v71;
      v74[1] = v72;
      v75[1] = v73;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_27229C320@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = v4;
  LOBYTE(v8) = a2;
  v85 = a3;
  v87 = type metadata accessor for VASingleEnrollmentData(0);
  v10 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27237728C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      if (v17 >= 2)
      {
LABEL_4:
        v18 = 0x80000002723886D0;
        sub_2722032B4();
        swift_allocError();
        v20 = 0xD00000000000001FLL;
LABEL_20:
        *v19 = v20;
        v19[1] = v18;
        return swift_willThrow();
      }

      goto LABEL_10;
    }

    return static VAVerifierModelOutput.none.getter(v85);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = v14;
  if (!sub_2723783AC())
  {
    return static VAVerifierModelOutput.none.getter(v85);
  }

  v22 = sub_2723783AC();
  v14 = v21;
  if (v22 >= 2)
  {
    goto LABEL_4;
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_74;
  }

  v5 = v14;
  v23 = *(a1 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v18 = 0x80000002723886B0;
      sub_2722032B4();
      swift_allocError();
      v20 = 0xD000000000000018;
      goto LABEL_20;
    }

    if ((*(v24 + 16) & 1) == 0)
    {
      static VAVerifierModelOutput.none.getter(v85);
      return swift_unknownObjectRelease();
    }

    v77 = v23;
    v78 = v7;
    v7 = v24;
    v83 = *(*v3 + 160);
    v84 = v3;
    a1 = *(v83() + 16);

    if (!a1)
    {
      break;
    }

    if (v8)
    {
      v26 = (*(*v84 + 232))(v25);
      goto LABEL_28;
    }

    v32 = *(v7 + 40);
    v3 = v84;
    if (!v32)
    {
      sub_2722032B4();
      swift_allocError();
      *v61 = 0xD00000000000001ELL;
      v61[1] = 0x800000027238B8F0;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    if (*(v32 + 16))
    {
      v33 = *(*v84 + 320);

      v33(v34);

      v26 = (*(*v3 + 208))(v35);
LABEL_28:
      a1 = v26;
      v5 = *(v7 + 32);
      if (v5)
      {
        v36 = *(*v84 + 280);

        v38 = v36(v37);
        v7 = v78;
        if (v38)
        {
          v13 = *(v5 + 16);
          v3 = v84;
          if (v13)
          {
            if (v13 <= 7)
            {
              v39 = 0;
              v6 = 0.0;
              goto LABEL_56;
            }

            v39 = v13 & 0x7FFFFFFFFFFFFFF8;
            v62 = v5 + 48;
            v6 = 0.0;
            v63 = v13 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v6 = (((((((v6 + COERCE_FLOAT(*(v62 - 16))) + COERCE_FLOAT(HIDWORD(*(v62 - 16)))) + COERCE_FLOAT(*(v62 - 8))) + COERCE_FLOAT(HIDWORD(*(v62 - 16)))) + COERCE_FLOAT(*v62)) + COERCE_FLOAT(HIDWORD(*v62))) + COERCE_FLOAT(*(v62 + 8))) + COERCE_FLOAT(HIDWORD(*v62));
              v62 += 32;
              v63 -= 8;
            }

            while (v63);
            if (v13 != v39)
            {
LABEL_56:
              v64 = v13 - v39;
              v65 = (v5 + 4 * v39 + 32);
              do
              {
                v66 = *v65++;
                v6 = v6 + v66;
                --v64;
              }

              while (v64);
            }
          }

          else
          {
            v6 = 0.0;
          }

          v67 = a1;
          a1 = *(a1 + 16);
          if (a1)
          {
            v5 = v67;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_60;
          }

          a1 = v67;
          v40 = v83;
          goto LABEL_36;
        }
      }

      else
      {
        v7 = v78;
      }

      v40 = v83;
      v3 = v84;
      goto LABEL_36;
    }

    while (1)
    {
      __break(1u);
LABEL_76:
      result = sub_2722002AC(v5);
      v5 = result;
LABEL_60:
      if (a1 > *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v68 = v6 / v13;
      if (a1 > 7)
      {
        v69 = a1 & 0x7FFFFFFFFFFFFFF8;
        v70 = (v5 + 48);
        v71 = a1 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v72 = vmulq_n_f32(*v70, v68);
          v70[-1] = vmulq_n_f32(v70[-1], v68);
          *v70 = v72;
          v70 += 2;
          v71 -= 8;
        }

        while (v71);
        if (a1 == v69)
        {
          a1 = v5;
          v40 = v83;
          goto LABEL_36;
        }
      }

      else
      {
        v69 = 0;
      }

      v73 = a1 - v69;
      v74 = 4 * v69 + 32;
      a1 = v5;
      do
      {
        *(v5 + v74) = v68 * *(v5 + v74);
        v74 += 4;
        --v73;
      }

      while (v73);
      v40 = v83;
LABEL_36:
      v13 = *(v40() + 16);

      if (!v13)
      {
        v45 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }

      v43 = (*v3 + 184);
      v42 = *v43;
      v76 = a1;
      if (v13 <= *(a1 + 16))
      {
        break;
      }

LABEL_74:
      __break(1u);
    }

    v80 = v43;
    v81 = v42;
    v14 = (v42)(v41);
    if (*(v14 + 16))
    {
      v44 = 0;
      v7 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v79 = *(v10 + 72);
      v82 = v13 - 1;
      v83 = (v76 + 32);
      v45 = MEMORY[0x277D84F90];
      while (1)
      {
        v46 = v86;
        sub_272204F54(v14 + v7, v86);

        v47 = (v46 + *(v87 + 24));
        v48 = v45;
        v49 = *v47;
        v50 = v47[1];

        sub_272204FB8(v46);
        v6 = *(v83 + v44);
        v51 = sub_272241A18();
        v52 = sub_272241A18();
        v8 = sub_272324094();
        v16 = sub_272324094();
        LOBYTE(v46) = sub_2721F7EE4();
        v10 = sub_2721F7EE4();
        v53 = sub_27222CD4C();
        v54 = v50;
        v45 = v48;
        sub_27232409C(v49, v54, v8, v16, v46 & 1, v10 & 1, v53 & 1, 0, v88, v6, v51, v52, 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_272205014(0, *(v48 + 2) + 1, 1, v48);
        }

        v3 = v84;
        v13 = *(v45 + 2);
        v55 = *(v45 + 3);
        a1 = v13 + 1;
        if (v13 >= v55 >> 1)
        {
          v45 = sub_272205014((v55 > 1), v13 + 1, 1, v45);
        }

        *(v45 + 2) = a1;
        v56 = &v45[80 * v13];
        *(v56 + 2) = v88[0];
        v57 = v88[1];
        v58 = v88[2];
        v59 = v88[4];
        *(v56 + 5) = v88[3];
        *(v56 + 6) = v59;
        *(v56 + 3) = v57;
        *(v56 + 4) = v58;
        if (v82 == v44)
        {
          break;
        }

        v14 = v81();
        ++v44;
        v7 += v79;
        if (v44 >= *(v14 + 16))
        {
          goto LABEL_71;
        }
      }

LABEL_49:
      type metadata accessor for VAKeywordResult();
      v60 = VAKeywordResult.__allocating_init(detections:)(v45);
      sub_2722E45C4(v60, v85);

      return swift_unknownObjectRelease();
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v5 = v14;
    v23 = MEMORY[0x2743C5370](0, a1);
  }

  v28 = sub_2722C389C();
  (*(v13 + 16))(v16, v28, v5);
  v29 = sub_27237725C();
  v30 = sub_272377E8C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2721E4000, v29, v30, "No enrollments set for this model", v31, 2u);
    MEMORY[0x2743C69C0](v31, -1, -1);
  }

  (*(v13 + 8))(v16, v5);
  static VAVerifierModelOutput.none.getter(v85);
  return swift_unknownObjectRelease();
}

uint64_t sub_27229CC30(uint64_t a1)
{
  v44 = a1;
  v2 = type metadata accessor for VASingleEnrollmentData(0);
  v45 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 160);
  v7 = *v1 + 160;
  v8 = *(v6(v3) + 16);

  v43 = v8;
  if (!v8)
  {
    return result;
  }

  v10 = 0;
  v11 = *(*v1 + 224);
  v39 = *v1 + 224;
  v40 = v11;
  v41 = *(v39 + 32);
  v42 = v39 + 32;
  v37[1] = v7;
  v38 = v6;
  while (1)
  {
    result = v6(result);
    if (v10 >= *(result + 16))
    {
      break;
    }

    v12 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v13 = *(v45 + 72) * v10;
    sub_272204F54(result + v12 + v13, v5);

    v14 = &v5[*(v2 + 24)];
    v16 = *v14;
    v15 = v14[1];

    v17 = sub_272204FB8(v5);
    result = v6(v17);
    if (v10 >= *(result + 16))
    {
      goto LABEL_30;
    }

    sub_272204F54(result + v12 + v13, v5);

    v18 = v2;
    v19 = *&v5[*(v2 + 20)];

    v20 = sub_272204FB8(v5);
    v21 = v41(v20);
    if (!*(v21 + 16))
    {

LABEL_21:

      goto LABEL_22;
    }

    v22 = sub_27220038C(v16, v15);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(*(v21 + 56) + 4 * v22);

    v26 = *(v19 + 16);
    v27 = ceilf(v25 * v26);
    if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_32;
    }

    if (v27 <= -9.2234e18)
    {
      goto LABEL_33;
    }

    if (v27 >= 9.2234e18)
    {
      goto LABEL_34;
    }

    v28 = v27;
    if (v27 < 0)
    {
      goto LABEL_35;
    }

    if (v26 >= v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = *(v19 + 16);
    }

    if (v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v26 != v30)
    {
      sub_272202180(v19, v19 + 32, 0, (2 * v30) | 1);
      v19 = v31;
      goto LABEL_21;
    }

LABEL_22:
    v32 = sub_272304CF0(v44, v19);

    v33 = v40(v46);
    v35 = v34;
    v36 = *v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v36);
      v36 = result;
      *v35 = result;
    }

    if (v10 >= *(v36 + 16))
    {
      goto LABEL_31;
    }

    *(v36 + 4 * v10 + 32) = -v32;
    result = v33(v46, 0);
    ++v10;
    v2 = v18;
    v6 = v38;
    if (v43 == v10)
    {
      return result;
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
  return result;
}

uint64_t sub_27229CFD0()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_27229D258(v1);
  *(v0 + 56) = 0;
  return sub_2722591B0();
}

uint64_t sub_27229D020()
{
}

void *VAA2AVerifierModelDTW.deinit()
{
  v0 = VAVerifierModel.deinit();

  return v0;
}

uint64_t VAA2AVerifierModelDTW.__deallocating_deinit()
{
  VAVerifierModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelDTW.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = *(*v1 + 192);

  v2(v3);
}

uint64_t sub_27229D200(uint64_t a1)
{
  v2 = *(**v1 + 192);

  return v2(v3);
}

unint64_t sub_27229D258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808826E0, &qword_272384190);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_27229D444()
{
  v0 = sub_2722A041C(&unk_28818C080);
  result = sub_2722A1AEC(&unk_28818C0A0);
  qword_280893AA8 = v0;
  return result;
}

uint64_t sub_27229D488()
{
  v0 = sub_27237728C();
  sub_2721F408C(v0, qword_28088CBE0);
  sub_2721F08DC(v0, qword_28088CBE0);
  return sub_27237726C();
}

uint64_t sub_27229D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27229D5B8;

  return sub_2722A08B8(a1, a2, a3);
}

uint64_t sub_27229D5B8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_27229D6B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722A1B54;

  return sub_2722A1214(a1, a2);
}

uint64_t sub_27229D76C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 240) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v4 = sub_272376D5C();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_27237768C();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = sub_272376EBC();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  v7 = sub_27237767C();
  *(v3 + 168) = v7;
  *(v3 + 176) = *(v7 - 8);
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27229D97C, 0, 0);
}

uint64_t sub_27229D97C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v0[19] + 16))(v0[20], v0[10], v0[18]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCE38], v2);
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_27237765C();
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_27229DAD4;
  v8 = v0[13];

  return MEMORY[0x28212C308](v8);
}

uint64_t sub_27229DAD4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_27229EAE0;
  }

  else
  {
    v2 = sub_27229DBE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27229DBE8()
{
  v64 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 240);
  sub_272376D1C();
  (*(v2 + 8))(v1, v3);
  sub_272376E7C();
  v5 = objc_allocWithZone(RDUserProfileImpl);
  v6 = sub_2723777FC();

  v7 = sub_2723777FC();

  *(v0 + 208) = [v5 initWithLanguage:v6 assetPath:v7];

  if (v4 == 1)
  {
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_27229E2E0;
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);

    return sub_2722A1214(v10, v9);
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = sub_2723777FC();
    v14 = sub_2723777FC();
    v15 = MEMORY[0x277D837D0];
    v16 = sub_272377AEC();
    [v12 addPhraseToUserProfileWithTemplateName:v13 wordTag:v14 phrase:v16];
    v17 = *(v0 + 72);

    v18 = *(v17 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v20 = *(v0 + 72);
      v63[0] = MEMORY[0x277D84F90];
      sub_27220056C(0, v18, 0);
      v19 = v63[0];
      v21 = sub_272203AC4();
      v22 = (v20 + 40);
      do
      {
        v23 = *v22;
        *(v0 + 16) = *(v22 - 1);
        *(v0 + 24) = v23;
        *(v0 + 32) = 32;
        *(v0 + 40) = 0xE100000000000000;
        *(v0 + 48) = 95;
        *(v0 + 56) = 0xE100000000000000;
        v60 = v21;
        v61 = v21;
        v58 = v15;
        v59 = v21;
        v24 = sub_2723780FC();
        v63[0] = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          v62 = v24;
          v29 = v25;
          sub_27220056C((v26 > 1), v27 + 1, 1);
          v25 = v29;
          v24 = v62;
          v19 = v63[0];
        }

        *(v19 + 16) = v27 + 1;
        v28 = v19 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;
        v22 += 2;
        --v18;
      }

      while (v18);
    }

    *(v0 + 64) = v19;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
    v30 = sub_2723777CC();
    v32 = v31;

    sub_27237820C();

    v63[0] = 0x2F706D742FLL;
    v63[1] = 0xE500000000000000;
    MEMORY[0x2743C4AD0](v30, v32);

    MEMORY[0x2743C4AD0](0xD000000000000014, 0x800000027238D370);
    if (qword_28088CBD8 != -1)
    {
      swift_once();
    }

    v33 = sub_27237728C();
    sub_2721F08DC(v33, qword_28088CBE0);

    v34 = sub_27237725C();
    v35 = sub_272377E6C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v63[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2721FFD04(0x2F706D742FLL, 0xE500000000000000, v63);
      _os_log_impl(&dword_2721E4000, v34, v35, "Speech Profile for debugging: %s", v36, 0xCu);
      sub_2722039C8(v37);
      MEMORY[0x2743C69C0](v37, -1, -1);
      MEMORY[0x2743C69C0](v36, -1, -1);
    }

    v38 = *(v0 + 208);
    v39 = sub_2723777FC();

    [v38 writeUserProfileAsJson_];

    v40 = [v38 writeUserProfileToCache];
    v41 = sub_27237782C();
    v43 = v42;

    v44 = sub_27237725C();
    v45 = sub_272377E6C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136315138;
      v48 = sub_2721FFD04(v41, v43, v63);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_2721E4000, v44, v45, "Speech Profile: %s", v46, 0xCu);
      sub_2722039C8(v47);
      MEMORY[0x2743C69C0](v47, -1, -1);
      MEMORY[0x2743C69C0](v46, -1, -1);
    }

    else
    {
    }

    v49 = *(v0 + 208);
    v51 = *(v0 + 176);
    v50 = *(v0 + 184);
    v52 = *(v0 + 168);
    v53 = [v49 getUserProfileData];
    v54 = sub_272376D8C();
    v56 = v55;

    (*(v51 + 8))(v50, v52);

    v57 = *(v0 + 8);

    return v57(v54, v56);
  }
}

uint64_t sub_27229E2E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_27229EA20;
  }

  else
  {
    v4 = sub_27229E3F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27229E3F4()
{
  v54 = v0;
  v1 = v0[26];
  if (v0[28])
  {
    v2 = sub_2723777FC();
    v3 = sub_2723777FC();
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v4 = sub_27237770C();

    [v1 addPhraseToUserProfileWithTemplateName:v2 wordTag:v3 namesToProns:v4];
  }

  else
  {
    v2 = sub_2723777FC();
    v3 = sub_2723777FC();
    v4 = sub_272377AEC();
    [v1 addPhraseToUserProfileWithTemplateName:v2 wordTag:v3 phrase:v4];
  }

  v5 = v0[9];

  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = MEMORY[0x277D837D0];
    v9 = v0[9];
    v53[0] = MEMORY[0x277D84F90];
    sub_27220056C(0, v6, 0);
    v7 = v53[0];
    v10 = sub_272203AC4();
    v11 = (v9 + 40);
    do
    {
      v12 = *v11;
      v0[2] = *(v11 - 1);
      v0[3] = v12;
      v0[4] = 32;
      v0[5] = 0xE100000000000000;
      v0[6] = 95;
      v0[7] = 0xE100000000000000;
      v50 = v10;
      v51 = v10;
      v48 = v8;
      v49 = v10;
      v13 = sub_2723780FC();
      v53[0] = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        v52 = v13;
        v18 = v14;
        sub_27220056C((v15 > 1), v16 + 1, 1);
        v14 = v18;
        v13 = v52;
        v7 = v53[0];
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v11 += 2;
      --v6;
    }

    while (v6);
  }

  v0[8] = v7;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
  v19 = sub_2723777CC();
  v21 = v20;

  sub_27237820C();

  v53[0] = 0x2F706D742FLL;
  v53[1] = 0xE500000000000000;
  MEMORY[0x2743C4AD0](v19, v21);

  MEMORY[0x2743C4AD0](0xD000000000000014, 0x800000027238D370);
  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v22 = sub_27237728C();
  sub_2721F08DC(v22, qword_28088CBE0);

  v23 = sub_27237725C();
  v24 = sub_272377E6C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_2721FFD04(0x2F706D742FLL, 0xE500000000000000, v53);
    _os_log_impl(&dword_2721E4000, v23, v24, "Speech Profile for debugging: %s", v25, 0xCu);
    sub_2722039C8(v26);
    MEMORY[0x2743C69C0](v26, -1, -1);
    MEMORY[0x2743C69C0](v25, -1, -1);
  }

  v27 = v0[26];
  v28 = sub_2723777FC();

  [v27 writeUserProfileAsJson_];

  v29 = [v27 writeUserProfileToCache];
  v30 = sub_27237782C();
  v32 = v31;

  v33 = sub_27237725C();
  v34 = sub_272377E6C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v53[0] = v36;
    *v35 = 136315138;
    v37 = sub_2721FFD04(v30, v32, v53);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_2721E4000, v33, v34, "Speech Profile: %s", v35, 0xCu);
    sub_2722039C8(v36);
    MEMORY[0x2743C69C0](v36, -1, -1);
    MEMORY[0x2743C69C0](v35, -1, -1);
  }

  else
  {
  }

  v38 = v0[26];
  v40 = v0[22];
  v39 = v0[23];
  v41 = v0[21];
  v42 = [v38 getUserProfileData];
  v43 = sub_272376D8C();
  v45 = v44;

  (*(v40 + 8))(v39, v41);

  v46 = v0[1];

  return v46(v43, v45);
}

uint64_t sub_27229EA20()
{
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27229EAE0()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27229EB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = a5;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = sub_272376D5C();
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = sub_272376EBC();
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27229ECBC, 0, 0);
}

uint64_t sub_27229ECBC()
{
  v39 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 88) = *(v0 + 96);
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
  *(v0 + 40) = sub_2723777CC();
  *(v0 + 56) = 32;
  *(v0 + 48) = v4;
  *(v0 + 64) = 0xE100000000000000;
  *(v0 + 72) = 95;
  *(v0 + 80) = 0xE100000000000000;
  v36 = sub_272203AC4();
  v35 = MEMORY[0x277D837D0];
  v5 = sub_2723780FC();
  v7 = v6;

  sub_27237820C();

  v38[0] = v3;
  v38[1] = v2;
  MEMORY[0x2743C4AD0](47, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v5, v7);

  MEMORY[0x2743C4AD0](0x4C6D6F747375632DLL, 0xED00006E69622E4DLL);
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  if ((v1 & 1) != 0 || (v8 = [objc_opt_self() defaultManager], v9 = sub_2723777FC(), v10 = objc_msgSend(v8, sel_fileExistsAtPath_, v9), v9, v8, !v10))
  {
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 152);
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);
    *(v0 + 192) = mach_absolute_time();
    v25 = sub_272376E7C();
    v27 = sub_2722A064C(v25, v26);
    v29 = v28;
    v31 = v30;

    sub_27237763C();
    (*(v20 + 16))(v21, v23, v22);
    v32 = swift_task_alloc();
    v32[2] = v27;
    v32[3] = v29;
    v32[4] = v31;
    v32[5] = v24;
    *(v0 + 200) = sub_27237762C();

    sub_272376CAC();
    v37 = (*MEMORY[0x277CDCD90] + MEMORY[0x277CDCD90]);
    v33 = swift_task_alloc();
    *(v0 + 208) = v33;
    *v33 = v0;
    v33[1] = sub_27229F1B0;
    v34 = *(v0 + 144);

    return v37(v34);
  }

  else
  {
    if (qword_28088CBD8 != -1)
    {
      swift_once();
    }

    v11 = sub_27237728C();
    sub_2721F08DC(v11, qword_28088CBE0);

    v12 = sub_27237725C();
    v13 = sub_272377E7C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2721FFD04(v3, v2, v38);
      _os_log_impl(&dword_2721E4000, v12, v13, "Reusing custom LM from %s", v14, 0xCu);
      sub_2722039C8(v15);
      MEMORY[0x2743C69C0](v15, -1, -1);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    v16 = *(v0 + 8);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);

    return v16(v17, v18);
  }
}

uint64_t sub_27229F1B0()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    v5 = sub_27229F508;
  }

  else
  {
    v5 = sub_27229F330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27229F330()
{
  v3 = mach_absolute_time();
  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v4 = sub_27237728C();
  sub_2721F08DC(v4, qword_28088CBE0);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v3 < v7)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      v2 = (v3 - v7);
      if (qword_28088CBF8 == -1)
      {
LABEL_6:
        swift_beginAccess();
        *(v1 + 1) = v2 / *&qword_280893AB0 / 1000000000.0;
        _os_log_impl(&dword_2721E4000, v5, v6, "Custom LM creation took %f seconds", v1, 0xCu);
        MEMORY[0x2743C69C0](v1, -1, -1);
        goto LABEL_7;
      }
    }

    swift_once();
    goto LABEL_6;
  }

LABEL_7:

  v9 = v0[1];
  v10 = v0[22];
  v11 = v0[23];

  return v9(v10, v11);
}

uint64_t sub_27229F508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27229F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = a4;
  v7 = sub_2723775CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2723775EC();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_2808826E8, &qword_272381AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFB0;
  *(inited + 32) = 0x786966657270;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 1701667182;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = a3;
  *(inited + 80) = 0x786966667573;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = a2;

  sub_2722A0548(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_2808826F0, &qword_272381AB8);
  swift_arrayDestroy();
  v32 = v12;
  sub_2723775DC();
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = (v8 + 16);
    v16 = (v8 + 8);
    v17 = (a3 + 40);
    v18 = MEMORY[0x277D84F90];
    v36 = xmmword_27237AF80;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;

      MEMORY[0x2743C4710](v19, v20, 10000);
      sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
      v21 = swift_allocObject();
      *(v21 + 16) = v36;
      *(v21 + 56) = v7;
      *(v21 + 64) = MEMORY[0x277CDCD78];
      v22 = sub_2721F4150((v21 + 32));
      (*v15)(v22, v10, v7);
      sub_27237759C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_27229FD64(0, v18[2] + 1, 1, v18);
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = sub_27229FD64((v23 > 1), v24 + 1, 1, v18);
      }

      (*v16)(v10, v7);
      v18[2] = v24 + 1;
      sub_2721F41B4(v37, &v18[5 * v24 + 4]);
      v17 += 2;
      --v14;
    }

    while (v14);
  }

  sub_27237759C();

  sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_27237AF90;
  v26 = MEMORY[0x277CDCD80];
  v27 = v34;
  *(v25 + 56) = v34;
  *(v25 + 64) = v26;
  v28 = sub_2721F4150((v25 + 32));
  v29 = v33;
  v30 = v32;
  (*(v33 + 16))(v28, v32, v27);
  sub_27221629C(v37, v25 + 72);
  sub_27237759C();

  sub_2722039C8(v37);
  return (*(v29 + 8))(v30, v27);
}

uint64_t sub_27229F9EC()
{
  v0 = sub_27237760C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  MEMORY[0x2743C4770](0xD000000000000018, 0x800000027238D3E0, 10000);
  MEMORY[0x2743C4770](0x3E7869666572703CLL, 0xEF3E656D616E3C20, 10000);
  MEMORY[0x2743C4770](0x3C203E656D616E3CLL, 0xEF3E786966667573, 10000);
  sub_2721F065C(&qword_280882708, &unk_272381AD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_27237AFB0;
  v11 = MEMORY[0x277CDCD88];
  *(v10 + 56) = v0;
  *(v10 + 64) = v11;
  v12 = sub_2721F4150((v10 + 32));
  v13 = *(v1 + 16);
  v13(v12, v9, v0);
  *(v10 + 96) = v0;
  *(v10 + 104) = v11;
  v14 = sub_2721F4150((v10 + 72));
  v13(v14, v7, v0);
  *(v10 + 136) = v0;
  *(v10 + 144) = v11;
  v15 = sub_2721F4150((v10 + 112));
  v13(v15, v4, v0);
  sub_2723775FC();

  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v7, v0);
  return (v16)(v9, v0);
}

double sub_27229FC58(unint64_t a1)
{
  if (qword_28088CBF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = a1;
  swift_beginAccess();
  return v1 / *&qword_280893AB0 / 1000000000.0;
}

double sub_27229FCF8()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v0) = v3[0].denom;
  LODWORD(v1) = v3[0].numer;
  result = v0 / v1;
  qword_280893AB0 = *&result;
  return result;
}

void *sub_27229FD64(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_2721F065C(&qword_280882700, &qword_272381AC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27229FEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280882710, &qword_272384170);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_2722A0154()
{
  v1 = v0;
  sub_2721F065C(&qword_280882710, &qword_272384170);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_2722A02C4(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2722A041C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882730, &unk_272381B00);
    v3 = sub_2723783EC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_27220038C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2722A0548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882710, &qword_272384170);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2722A064C(uint64_t a1, unint64_t a2)
{
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28088CBD0 != -1)
  {
    swift_once();
  }

  v8 = qword_280893AA8;
  if (*(qword_280893AA8 + 16) && (v9 = sub_27220038C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 24 * v9);

    return v11;
  }

  else
  {
    v13 = sub_2722C389C();
    (*(v5 + 16))(v7, v13, v4);

    v14 = sub_27237725C();
    v15 = sub_272377E8C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2721FFD04(a1, a2, &v19);
      _os_log_impl(&dword_2721E4000, v14, v15, "Could not find LME bias phrases for locale identifier %s. Using default en-US phrases.", v16, 0xCu);
      sub_2722039C8(v17);
      MEMORY[0x2743C69C0](v17, -1, -1);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return &unk_28818BD80;
  }
}

uint64_t sub_2722A08B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_272376D5C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v3[11] = swift_task_alloc();
  v5 = sub_27237768C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_272376EBC();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_27237767C();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A0AC8, 0, 0);
}

uint64_t sub_2722A0AC8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[16] + 16))(v0[17], v0[7], v0[15]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCE50], v2);
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_27237765C();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_2722A0C1C;
  v8 = v0[10];

  return MEMORY[0x28212C308](v8);
}