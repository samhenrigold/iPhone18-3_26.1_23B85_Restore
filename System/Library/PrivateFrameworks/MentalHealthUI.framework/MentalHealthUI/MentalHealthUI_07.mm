void sub_258A6E890(uint64_t a1)
{
  if (!qword_27F96FE58)
  {
    sub_258A6EA24(255);
    v1 = MEMORY[0x277D839F8];
    v2 = MEMORY[0x277CE14F8];
    v3 = MEMORY[0x277CDF840];
    sub_258A6EB8C(255, &qword_27F96FE68, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
    v4 = MEMORY[0x277CDF8B8];
    sub_258A6EB8C(255, &qword_27F96FE70, v1, v2, MEMORY[0x277CDF8B8]);
    sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v3, MEMORY[0x277CDF848]);
    sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v4, MEMORY[0x277CDF8C0]);
    swift_getOpaqueTypeConformance2();
    v5 = sub_258B008F4();
    if (!v6)
    {
      atomic_store(v5, &qword_27F96FE58);
    }
  }
}

void sub_258A6EA24(uint64_t a1)
{
  if (!qword_27F96FE60)
  {
    v1 = MEMORY[0x277D839F8];
    v2 = MEMORY[0x277CE14F8];
    v3 = MEMORY[0x277CDF840];
    sub_258A6EB8C(255, &qword_27F96FE68, MEMORY[0x277D839F8], MEMORY[0x277CE14F8], MEMORY[0x277CDF840]);
    v4 = MEMORY[0x277CDF8B8];
    sub_258A6EB8C(255, &qword_27F96FE70, v1, v2, MEMORY[0x277CDF8B8]);
    sub_258A6E624(&qword_27F96FE78, &qword_27F96FE68, v3, MEMORY[0x277CDF848]);
    sub_258A6E624(&qword_27F96FE80, &qword_27F96FE70, v4, MEMORY[0x277CDF8C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v6)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96FE60);
    }
  }
}

void sub_258A6EB8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A6EBE0()
{
  result = qword_27F96FE98;
  if (!qword_27F96FE98)
  {
    sub_258A6DE18(255);
    sub_258A6EC90();
    sub_258A6D424(&qword_27F96FEA8, sub_258A6DEB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FE98);
  }

  return result;
}

unint64_t sub_258A6EC90()
{
  result = qword_27F96FEA0;
  if (!qword_27F96FEA0)
  {
    sub_258A6ED18(255, &qword_27F96FDE8, sub_258A6D00C, MEMORY[0x277CE0510]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FEA0);
  }

  return result;
}

void sub_258A6ED18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A6ED7C(uint64_t a1)
{
  if (!qword_27F96FEB8)
  {
    sub_258A6ED18(255, &qword_27F96FD80, sub_258A6D858, MEMORY[0x277CE14B8]);
    sub_2589FFCB4(v1, v2, v3);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, &qword_27F96FEB8);
    }
  }
}

uint64_t sub_258A6EE18(uint64_t a1)
{
  v2 = type metadata accessor for DomainsSelectionPhaseContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A6EE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for DomainsSelectionPhase_iOS(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 36);
  sub_258A6ED18(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_258B01504();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v3, 1, v4))
    {
      (*(v5 + 8))(v3, v4);
    }

    v6 = *(type metadata accessor for AssociationSelectionPhaseSpecs(0) + 20);
    v7 = sub_258B00AA4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_258A6ED18(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B006A4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_258A6F1BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DomainsSelectionPhase_iOS(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_258A6F240(uint64_t a1, _BYTE *a2)
{
  sub_258B00B74();

  return sub_258A6CD38(a1, a2);
}

uint64_t sub_258A6F2C0(uint64_t a1, uint64_t a2)
{
  sub_258A6D950(0, &qword_27F96DB48, MEMORY[0x277CE03E0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A6F340(uint64_t a1)
{
  sub_258A6D950(0, &qword_27F96DB48, MEMORY[0x277CE03E0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A6F410(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A6F460(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258A6F480(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

id static NSBundle.mentalHealthUI.getter()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

id sub_258A6F548()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F97AB90 = result;
  qword_27F97AB98 = 0xD00000000000001ALL;
  qword_27F97ABA0 = 0x8000000258B37F70;
  return result;
}

id sub_258A6F5FC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray3Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray6Color;
  }

  v4 = [v2 *v3];

  return v4;
}

double sub_258A6F668@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v17 = sub_258A6F5FC;
  *(&v17 + 1) = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v16 = sub_258A52B54;
  *(&v16 + 1) = &block_descriptor_9;
  v3 = _Block_copy(&aBlock);
  [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v4 = sub_258B01F94();
  sub_258B00754();
  v5 = sub_258B024F4();
  v7 = v6;
  sub_258B024F4();
  sub_258B00854();
  *a1 = v10 * 0.5;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v4;
  *(a1 + 56) = 256;
  *(a1 + 64) = v5;
  *(a1 + 72) = v7;
  v8 = v16;
  *(a1 + 80) = aBlock;
  *(a1 + 96) = v8;
  result = *&v17;
  *(a1 + 112) = v17;
  return result;
}

double sub_258A6F7F8@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_258B01194();
  v23 = 1;
  sub_258A6F668(&v14);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[0] = v14;
  v32[1] = v15;
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[5] = v19;
  v32[6] = v20;
  v32[7] = v21;
  sub_2589B21A0(&v24, &v13, v4);
  sub_2589B2204(v32, v5, v6);
  *&v22[71] = v28;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27;
  v7 = *&v22[64];
  *(a2 + 97) = *&v22[80];
  v8 = *&v22[112];
  *(a2 + 113) = *&v22[96];
  *(a2 + 129) = v8;
  v9 = *v22;
  *(a2 + 33) = *&v22[16];
  result = *&v22[32];
  v11 = *&v22[48];
  *(a2 + 49) = *&v22[32];
  *(a2 + 65) = v11;
  *(a2 + 81) = v7;
  v12 = v23;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 144) = *&v22[127];
  *(a2 + 17) = v9;
  return result;
}

void sub_258A6F8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96FEC0)
  {
    sub_258A6F95C(255, a2, a3);
    v3 = sub_258B00B04();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96FEC0);
    }
  }
}

void sub_258A6F95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96FEC8)
  {
    sub_258A6F9EC(0, a2, a3);
    v3 = sub_258B013F4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F96FEC8);
    }
  }
}

unint64_t sub_258A6F9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FED0;
  if (!qword_27F96FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FED0);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A6FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96FEE0)
  {
    sub_258A6F8FC(255, a2, a3);
    sub_258A6FABC(v3, v4, v5);
    v6 = sub_258B022D4();
    if (!v7)
    {
      atomic_store(v6, &qword_27F96FEE0);
    }
  }
}

unint64_t sub_258A6FABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FEE8;
  if (!qword_27F96FEE8)
  {
    sub_258A6F8FC(255, a2, a3);
    sub_258A6FB6C(&qword_27F96FEF0, sub_258A6F95C, MEMORY[0x277CE0458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FEE8);
  }

  return result;
}

uint64_t sub_258A6FB6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ValenceSelectionSummary(uint64_t a1)
{
  result = qword_27F96FEF8;
  if (!qword_27F96FEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A6FC28(uint64_t a1)
{
  sub_258A71E14(319, &qword_27F96E0A0, type metadata accessor for Label, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_258A71E14(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258A71E14(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A6FD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A71E14(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ValenceSelectionSummary(0);
  sub_2589DC538(v1 + *(v10 + 32), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_258A6FF9C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v220 = a1;
  v211 = a2;
  sub_258A71A6C(0, &qword_27F96FF58, sub_258A718E4);
  v208 = v3;
  v209 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v186 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v185 = &v182 - v6;
  sub_258A719F8(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v210 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v207 = &v182 - v10;
  v216 = sub_258B006A4();
  v219 = *(v216 - 8);
  v11 = MEMORY[0x28223BE20](v216);
  v214 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v213 = &v182 - v13;
  v201 = sub_258B019F4();
  v200 = *(v201 - 8);
  v14 = MEMORY[0x28223BE20](v201);
  v198 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v199 = &v182 - v16;
  v204 = type metadata accessor for LoggingFlowBlendMode;
  sub_258A71994(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
  v212 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v183 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v202 = &v182 - v20;
  sub_258A718E4(0);
  v215 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v184 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v203 = &v182 - v24;
  sub_258A7187C(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v206 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v218 = &v182 - v28;
  v195 = (type metadata accessor for AssociationSelectionPhaseSpecs(0) - 8);
  v29 = MEMORY[0x28223BE20](v195);
  v182 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v194 = &v182 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v193 = &v182 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v189 = &v182 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v182 - v37;
  v192 = MEMORY[0x277CDE470];
  sub_258A71994(0, &qword_27F96DDD8, MEMORY[0x277CDE470], &type metadata for StateOfMindVisualization.ValenceImage);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v182 - v40;
  sub_258A717F8(0);
  v43 = v42 - 8;
  MEMORY[0x28223BE20](v42);
  v188 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_258A717F8;
  sub_258A71A6C(0, &qword_27F96FF28, sub_258A717F8);
  v190 = v45;
  MEMORY[0x28223BE20](v45);
  v47 = &v182 - v46;
  sub_258A71774(0);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v205 = &v182 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v217 = &v182 - v51;
  v52 = *v2;
  LOBYTE(v221) = 6;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v221, v223, v52);
  v221 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D56B8);
  sub_258A71C30(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v197 = v53;
  v196 = sub_2589C6824();
  sub_258B02A34();

  v54 = sub_2589C68A0(&unk_2869D56D8);
  sub_2589DC7D8(v54, v55, v56);
  sub_258B01DD4();

  v57 = *(type metadata accessor for ValenceSelectionSummary(0) + 28);
  sub_258AC1B28(v38);
  sub_258A7218C(v38, type metadata accessor for AssociationSelectionPhaseSpecs);
  v58 = v189;
  sub_258AC1B28(v189);
  v187 = type metadata accessor for AssociationSelectionPhaseSpecs;
  sub_258A7218C(v58, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B024F4();
  sub_258B00854();
  v59 = v41;
  v60 = v188;
  sub_258A71E78(v59, v188, &qword_27F96DDD8, v192, &type metadata for StateOfMindVisualization.ValenceImage);
  v61 = (v60 + *(v43 + 44));
  v62 = v223[1];
  *v61 = v223[0];
  v61[1] = v62;
  v61[2] = v223[2];
  LOBYTE(v2) = sub_258B01894();
  v63 = v193;
  sub_258AC1B28(v193);
  sub_258A7218C(v63, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_258A7203C(v60, v47, v191);
  v72 = &v47[*(v190 + 36)];
  *v72 = v2;
  *(v72 + 1) = v65;
  *(v72 + 2) = v67;
  *(v72 + 3) = v69;
  *(v72 + 4) = v71;
  v72[40] = 0;
  sub_258A71C80();
  sub_258B01D64();
  sub_258A71D9C(v47);
  sub_258B03084();
  v73 = HKUILocalizedStringForValenceClassification();
  v74 = sub_258B02B14();
  v76 = v75;

  v221 = v74;
  v222 = v76;
  v192 = sub_2589BFF58(v77, v78, v79);
  v80 = sub_258B01B44();
  v82 = v81;
  v84 = v83;
  v193 = v57;
  v85 = v194;
  sub_258AC1B28(v194);
  sub_258B019C4();
  v86 = sub_258B00A84();
  v87 = v200;
  v88 = MEMORY[0x277CE0A10];
  if ((v86 & 1) == 0)
  {
    v88 = MEMORY[0x277CE0A18];
  }

  v89 = v198;
  v90 = v201;
  (*(v200 + 13))(v198, *v88, v201);
  v91 = v87;
  v92 = *(v87 + 4);
  v93 = v199;
  v92(v199, v89, v90);
  sub_258B01A14();

  (*(v91 + 1))(v93, v90);
  sub_258A7218C(v85, v187);
  v94 = sub_258B01AE4();
  v96 = v95;
  v98 = v97;
  sub_2589BFFAC(v80, v82, v84 & 1);

  v99 = sub_258B01AD4();
  v101 = v100;
  v103 = v102;
  v201 = v104;
  sub_2589BFFAC(v94, v96, v98 & 1);

  v105 = sub_258B014A4();
  v106 = v213;
  sub_258A6FD88(v213);
  v107 = v219;
  v108 = *(v219 + 104);
  v109 = v214;
  LODWORD(v198) = *MEMORY[0x277CDF3C0];
  v110 = v216;
  v199 = (v219 + 104);
  v195 = v108;
  v108(v214);
  LOBYTE(v93) = sub_258B00694();
  v111 = *(v107 + 8);
  v111(v109, v110);
  v219 = v107 + 8;
  v200 = v111;
  v111(v106, v110);
  v112 = 0.8;
  if (v93)
  {
    v112 = 0.6;
  }

  v221 = __PAIR64__(LODWORD(v112), v105);
  sub_258A35700();
  v194 = sub_258A71BE8(&qword_27F96ED38, sub_258A35700, MEMORY[0x277CE01D8]);
  v113 = sub_258B01AB4();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  sub_2589BFFAC(v99, v101, v103 & 1);

  v120 = *(v212 + 36);
  KeyPath = swift_getKeyPath();
  v122 = v202;
  *&v202[v120] = KeyPath;
  sub_258A71E14(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v124 = v123;
  swift_storeEnumTagMultiPayload();
  *v122 = v113;
  *(v122 + 8) = v115;
  *(v122 + 16) = v117 & 1;
  *(v122 + 24) = v119;
  v125 = swift_getKeyPath();
  v126 = v203;
  sub_258A71E78(v122, v203, &qword_27F96FF48, v204, MEMORY[0x277CE0BD8]);
  v127 = v126 + *(v215 + 36);
  *v127 = v125;
  *(v127 + 8) = 1;
  v221 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D56E8);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5708);
  sub_258A71EE8();
  sub_258B01DD4();

  sub_258A7218C(v126, sub_258A718E4);
  if (*(*(v220 + 1) + 16))
  {
    v221 = sub_258A712C0();
    v222 = v128;
    v129 = sub_258B01B44();
    v204 = v124;
    v131 = v130;
    v133 = v132;
    v203 = v134;
    v135 = sub_258B014A4();
    v136 = v213;
    sub_258A6FD88(v213);
    v137 = v214;
    v138 = v216;
    v195(v214, v198, v216);
    v139 = sub_258B00694();
    v140 = v137;
    v141 = v200;
    v200(v140, v138);
    v141(v136, v138);
    v142 = 0.8;
    if (v139)
    {
      v142 = 0.6;
    }

    v221 = __PAIR64__(LODWORD(v142), v135);
    v143 = sub_258B01AB4();
    v145 = v144;
    v147 = v146;
    v149 = v148;
    sub_2589BFFAC(v129, v131, v133 & 1);

    v150 = *(v212 + 36);
    v151 = swift_getKeyPath();
    v152 = v183;
    *&v183[v150] = v151;
    swift_storeEnumTagMultiPayload();
    *v152 = v143;
    *(v152 + 8) = v145;
    *(v152 + 16) = v147 & 1;
    *(v152 + 24) = v149;
    v153 = swift_getKeyPath();
    v154 = v184;
    sub_258A71E78(v152, v184, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
    v155 = v154 + *(v215 + 36);
    *v155 = v153;
    *(v155 + 8) = 1;
    LOBYTE(v153) = sub_258B01884();
    v156 = v182;
    sub_258AC1B28(v182);
    sub_258A7218C(v156, type metadata accessor for AssociationSelectionPhaseSpecs);
    sub_258B00654();
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v165 = v154;
    v166 = v186;
    sub_258A7203C(v165, v186, sub_258A718E4);
    v167 = v208;
    v168 = v166 + *(v208 + 36);
    *v168 = v153;
    *(v168 + 8) = v158;
    *(v168 + 16) = v160;
    *(v168 + 24) = v162;
    *(v168 + 32) = v164;
    *(v168 + 40) = 0;
    v169 = v185;
    sub_258A720A4(v166, v185);
    v170 = v207;
    sub_258A720A4(v169, v207);
    v171 = 0;
    v172 = v167;
  }

  else
  {
    v170 = v207;
    v172 = v208;
    v171 = 1;
  }

  (*(v209 + 56))(v170, v171, 1, v172);
  v173 = v217;
  v174 = v205;
  sub_258A72124(v217, v205, sub_258A71774);
  v175 = v218;
  v176 = v206;
  sub_258A72124(v218, v206, sub_258A7187C);
  v177 = v210;
  sub_258A72124(v170, v210, sub_258A719F8);
  v178 = v211;
  sub_258A72124(v174, v211, sub_258A71774);
  sub_258A716EC(0);
  v180 = v179;
  sub_258A72124(v176, v178 + *(v179 + 48), sub_258A7187C);
  sub_258A72124(v177, v178 + *(v180 + 64), sub_258A719F8);
  sub_258A7218C(v170, sub_258A719F8);
  sub_258A7218C(v175, sub_258A7187C);
  sub_258A7218C(v173, sub_258A71774);
  sub_258A7218C(v177, sub_258A719F8);
  sub_258A7218C(v176, sub_258A7187C);
  return sub_258A7218C(v174, sub_258A71774);
}

uint64_t sub_258A712C0()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_258AA91EC(0, v2, 0);
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = HKUILocalizedStringForStateOfMindLabel();
      v5 = sub_258B02B14();
      v7 = v6;

      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
      }

      ++v3;
      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_7:
  if (qword_27F96C240 != -1)
  {
LABEL_10:
    swift_once();
  }

  sub_258AFFD94();
  sub_258A71C30(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  v11 = sub_258B02A34();

  return v11;
}

uint64_t sub_258A714A8()
{
  v1 = sub_258B01634();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A71658(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_258B01194();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_258A71B50(0);
  sub_258A6FF9C(v0, &v7[*(v8 + 44)]);
  sub_258B01614();
  sub_258A71BE8(&qword_27F96FF70, sub_258A71658, MEMORY[0x277CE1198]);
  sub_258B01D84();
  (*(v2 + 8))(v4, v1);
  return sub_258A7218C(v7, sub_258A71658);
}

void sub_258A71658(uint64_t a1)
{
  if (!qword_27F96FF08)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    sub_258A71AC8();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF08);
    }
  }
}

void sub_258A716EC(uint64_t a1)
{
  if (!qword_27F96FF18)
  {
    sub_258A71774(255);
    sub_258A7187C(255);
    sub_258A719F8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96FF18);
    }
  }
}

void sub_258A71774(uint64_t a1)
{
  if (!qword_27F96FF20)
  {
    sub_258A71A6C(255, &qword_27F96FF28, sub_258A717F8);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF20);
    }
  }
}

void sub_258A717F8(uint64_t a1)
{
  if (!qword_27F96FF30)
  {
    sub_258A71994(255, &qword_27F96DDD8, MEMORY[0x277CDE470], &type metadata for StateOfMindVisualization.ValenceImage);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF30);
    }
  }
}

void sub_258A7187C(uint64_t a1)
{
  if (!qword_27F96FF38)
  {
    sub_258A718E4(255);
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF38);
    }
  }
}

void sub_258A718E4(uint64_t a1)
{
  if (!qword_27F96FF40)
  {
    sub_258A71994(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
    sub_258A71C30(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF40);
    }
  }
}

void sub_258A71994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258A719F8(uint64_t a1)
{
  if (!qword_27F96FF50)
  {
    sub_258A71A6C(255, &qword_27F96FF58, sub_258A718E4);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF50);
    }
  }
}

void sub_258A71A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A71AC8()
{
  result = qword_27F96FF60;
  if (!qword_27F96FF60)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF60);
  }

  return result;
}

void sub_258A71B50(uint64_t a1)
{
  if (!qword_27F96FF68)
  {
    sub_258A71E14(255, &qword_27F96FF10, sub_258A716EC, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF68);
    }
  }
}

uint64_t sub_258A71BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A71C30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A71C80()
{
  result = qword_27F96FF78;
  if (!qword_27F96FF78)
  {
    sub_258A71A6C(255, &qword_27F96FF28, sub_258A717F8);
    sub_258A71D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF78);
  }

  return result;
}

unint64_t sub_258A71D1C()
{
  result = qword_27F96FF80;
  if (!qword_27F96FF80)
  {
    sub_258A717F8(255);
    sub_258A65E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF80);
  }

  return result;
}

uint64_t sub_258A71D9C(uint64_t a1)
{
  sub_258A71A6C(0, &qword_27F96FF28, sub_258A717F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A71E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A71E78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_258A71994(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_258A71EE8()
{
  result = qword_27F96FF88;
  if (!qword_27F96FF88)
  {
    sub_258A718E4(255);
    sub_258A71F68();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF88);
  }

  return result;
}

unint64_t sub_258A71F68()
{
  result = qword_27F96FF90;
  if (!qword_27F96FF90)
  {
    sub_258A71994(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
    sub_258A71BE8(&qword_27F96F550, type metadata accessor for LoggingFlowBlendMode, &unk_258B30A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FF90);
  }

  return result;
}

uint64_t sub_258A7203C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A720A4(uint64_t a1, uint64_t a2)
{
  sub_258A71A6C(0, &qword_27F96FF58, sub_258A718E4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A72124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A7218C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 StateOfMindTimeline.TimelineView.init(model:chartFactory:onChartDisplay:onFirstTimeLoggingCompletion:presentSheet:presentModalCard:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  type metadata accessor for StateOfMindTimeline.Model(0);
  sub_258A73FB0(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model, &protocol conformance descriptor for StateOfMindTimeline.Model);
  *a9 = sub_258B00A24();
  *(a9 + 8) = v18;
  *(a9 + 32) = a2;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  result = a10;
  *(a9 + 88) = a10;
  *(a9 + 104) = a11;
  return result;
}

uint64_t StateOfMindTimeline.TimelineView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v2 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B01634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A73E40(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A74354(0);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[5];
  v53 = v1[4];
  v54 = v16;
  v55 = v1[6];
  v17 = v1[1];
  v49 = *v1;
  v50 = v17;
  v18 = v1[3];
  v51 = v1[2];
  v52 = v18;
  v47 = &v49;
  sub_258B01854();
  _s16TimelineDataViewVMa(0);
  sub_258A73FB0(&qword_27F96FFB0, _s16TimelineDataViewVMa, &unk_258B2C4B4);
  sub_258B00674();
  v19 = swift_allocObject();
  v20 = v54;
  v19[5] = v53;
  v19[6] = v20;
  v19[7] = v55;
  v21 = v50;
  v19[1] = v49;
  v19[2] = v21;
  v22 = v52;
  v19[3] = v51;
  v19[4] = v22;
  sub_258A74578(&v49, v48);
  v23 = sub_258B024F4();
  v25 = v24;
  sub_258A73E74(0);
  v27 = &v11[*(v26 + 36)];
  *v27 = sub_258A74570;
  *(v27 + 1) = v19;
  *(v27 + 2) = v23;
  *(v27 + 3) = v25;
  v28 = swift_allocObject();
  v29 = v54;
  *(v28 + 5) = v53;
  *(v28 + 6) = v29;
  *(v28 + 7) = v55;
  v30 = v50;
  *(v28 + 1) = v49;
  *(v28 + 2) = v30;
  v31 = v52;
  *(v28 + 3) = v51;
  *(v28 + 4) = v31;
  v32 = &v11[v9[9]];
  *v32 = sub_258A745B0;
  v32[1] = v28;
  sub_258A74578(&v49, v48);
  sub_258B01624();
  v33 = sub_258A743D8();
  sub_258B01D84();
  (*(v5 + 8))(v7, v4);
  sub_258A745B8(v11, sub_258A73E40);
  v34 = MEMORY[0x277D837D0];
  sub_258A76584(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v48[0] = v49;
  swift_getKeyPath();
  swift_getKeyPath();

  v36 = v41;
  sub_258B00564();

  sub_258A745B8(v48, sub_258A54DE4);
  sub_258A745B8(v36, _s9ViewModelOMa);
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000258B35D90;
  v37 = sub_258A74828(1, 2, 1, inited);
  *(v37 + 2) = 2;
  *(v37 + 6) = 0x656E696C656D6954;
  *(v37 + 7) = 0xE800000000000000;
  v45 = &unk_2869D4670;
  v38 = sub_258B003E4();
  sub_2589FC8C8(v38);
  sub_258A76584(0, &qword_280DF8948, v34, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  v45 = v9;
  v46 = v33;
  swift_getOpaqueTypeConformance2();
  v39 = v42;
  sub_258B01DD4();

  return (*(v43 + 8))(v15, v39);
}

double sub_258A728C4@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StateOfMindTimeline.Model(0);
  sub_258A73FB0(&qword_27F96F568, type metadata accessor for StateOfMindTimeline.Model, &protocol conformance descriptor for StateOfMindTimeline.Model);
  sub_258B00A34();
  swift_getKeyPath();
  v4 = _s16TimelineDataViewVMa(0);
  sub_258B00A44();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v5 = v32[0];
  v6 = swift_allocObject();
  v7 = *(a1 + 5);
  *(v6 + 5) = *(a1 + 4);
  *(v6 + 6) = v7;
  *(v6 + 7) = *(a1 + 6);
  v8 = *(a1 + 1);
  *(v6 + 1) = *a1;
  *(v6 + 2) = v8;
  v9 = *(a1 + 3);
  *(v6 + 3) = *(a1 + 2);
  *(v6 + 4) = v9;
  v10 = swift_allocObject();
  v11 = *(a1 + 5);
  *(v10 + 5) = *(a1 + 4);
  *(v10 + 6) = v11;
  *(v10 + 7) = *(a1 + 6);
  v12 = *(a1 + 1);
  *(v10 + 1) = *a1;
  *(v10 + 2) = v12;
  v13 = *(a1 + 3);
  *(v10 + 3) = *(a1 + 2);
  *(v10 + 4) = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 5);
  *(v14 + 5) = *(a1 + 4);
  *(v14 + 6) = v15;
  *(v14 + 7) = *(a1 + 6);
  v16 = *(a1 + 1);
  *(v14 + 1) = *a1;
  *(v14 + 2) = v16;
  v17 = *(a1 + 3);
  *(v14 + 3) = *(a1 + 2);
  *(v14 + 4) = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 5);
  *(v18 + 5) = *(a1 + 4);
  *(v18 + 6) = v19;
  *(v18 + 7) = *(a1 + 6);
  v20 = *(a1 + 1);
  *(v18 + 1) = *a1;
  *(v18 + 2) = v20;
  v21 = *(a1 + 3);
  *(v18 + 3) = *(a1 + 2);
  *(v18 + 4) = v21;
  *a2 = swift_getKeyPath();
  v22 = MEMORY[0x277CDF458];
  sub_258A75A10(0, &qword_27F96CFA8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v23 = v4[5];
  *(a2 + v23) = swift_getKeyPath();
  sub_258A75A10(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v22);
  swift_storeEnumTagMultiPayload();
  v24 = v4[6];
  *(a2 + v24) = swift_getKeyPath();
  sub_258A75A10(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v22);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = v5;
  v25 = (a2 + v4[9]);
  *v25 = sub_258A75C40;
  v25[1] = v6;
  v26 = (a2 + v4[10]);
  *v26 = sub_258A75C60;
  v26[1] = v10;
  v27 = (a2 + v4[11]);
  *v27 = sub_258A75C68;
  v27[1] = v14;
  v28 = (a2 + v4[12]);
  *v28 = sub_258A75C88;
  v28[1] = v18;
  v29 = (a2 + v4[13]);
  v32[14] = 0;
  sub_258A74578(a1, v32);
  sub_258A74578(a1, v32);
  sub_258A74578(a1, v32);
  sub_258A74578(a1, v32);
  sub_258B02114();
  result = *v32;
  v31 = v32[1];
  *v29 = v32[0];
  v29[1] = v31;
  return result;
}

uint64_t sub_258A72CB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A72D2C(uint64_t a1, uint64_t *a2)
{
  v3 = _s9ViewModelOMa(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_258A76310(a1, &v10 - v7, _s9ViewModelOMa);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A76310(v8, v6, _s9ViewModelOMa);

  sub_258B00574();
  return sub_258A745B8(v8, _s9ViewModelOMa);
}

uint64_t sub_258A72E58(void *a1)
{
  sub_258A76284(0, &qword_27F9700F8, MEMORY[0x277CE0330]);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  sub_258A75F78(0, &qword_27F970100, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A76284(0, &qword_27F9700C0, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v14);
  v15 = a1[10];
  v20[1] = a1[11];
  v21 = v15;

  StateOfMindTimeline.EntryFullView.init(model:)(v13);
  sub_258A76310(v13, v7, type metadata accessor for StateOfMindTimeline.EntryFullView);
  v16 = swift_storeEnumTagMultiPayload();
  sub_258A54B54(v16, v17, v18);
  sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView, &protocol conformance descriptor for StateOfMindTimeline.EntryFullView);
  sub_258B012A4();
  sub_258A76378(v10, v4);
  swift_storeEnumTagMultiPayload();
  sub_258A75FE0(0);
  sub_258A76108();
  sub_258A761D4();
  sub_258B012A4();
  sub_258A763F8(v10);
  sub_258A745B8(v13, type metadata accessor for StateOfMindTimeline.EntryFullView);
  sub_258A7606C();
  sub_258B022F4();
  v21();
}

uint64_t sub_258A731C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_258A76284(0, &qword_27F9700C0, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v4);
  v5 = *(a1 + 80);
  v6 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v6;
  v11[6] = *(a1 + 96);
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v7;
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  sub_258A735B0(v2, v11 - v9);
  sub_258A7606C();
  sub_258B022F4();
  v5();
}

uint64_t sub_258A732C0(uint64_t a1)
{
  v2 = *(v1 + 96);
  v9 = sub_258B024F4();
  v10 = v3;
  LOBYTE(v8) = 1;
  LOBYTE(v7) = 0;
  sub_258B00C94();
  v4 = objc_opt_self();

  v5 = [v4 secondarySystemBackgroundColor];
  sub_258B01F94();
  sub_258B01874();
  sub_258A75CE4(0);
  sub_258A75DF8();
  sub_258B022F4();
  v2();
}

void sub_258A733CC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v8 = *(a1 + 16);
  v13 = v8;
  v9 = v14;

  if ((v9 & 1) == 0)
  {
    sub_258B02E94();
    v10 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258A75BC0(&v13);
    (*(v5 + 8))(v7, v4);
    v8 = v12[1];
  }

  sub_258B008C4();
  *a2 = v8;
  a2[1] = v11;
}

uint64_t sub_258A73534(uint64_t *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A735B0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v48[2] = a2;
  sub_258A75FE0(0);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StateOfMindTimeline.EntryFullView(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A76284(0, &qword_27F9700F8, MEMORY[0x277CE0330]);
  v48[1] = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  sub_258A75F78(0, &qword_27F970100, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v16);
  v18 = v48 - v17;
  v19 = v2[5];
  v55 = v2[4];
  v56 = v19;
  v57 = v2[6];
  v20 = v2[1];
  v51 = *v2;
  v52 = v20;
  v21 = v2[3];
  v53 = v2[2];
  v54 = v21;
  if (a1)
  {
    if (a1 == 1)
    {

      StateOfMindTimeline.EntryFullView.init(model:)(v9);
      sub_258A76310(v9, v15, type metadata accessor for StateOfMindTimeline.EntryFullView);
      v22 = swift_storeEnumTagMultiPayload();
      sub_258A54B54(v22, v23, v24);
      sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView, &protocol conformance descriptor for StateOfMindTimeline.EntryFullView);
      sub_258B012A4();
      sub_258A76378(v18, v12);
      swift_storeEnumTagMultiPayload();
      sub_258A76108();
      sub_258A761D4();
      sub_258B012A4();
      sub_258A763F8(v18);
      v25 = type metadata accessor for StateOfMindTimeline.EntryFullView;
      v26 = v9;
    }

    else
    {
      v36 = swift_allocObject();
      v37 = v2[5];
      v36[5] = v2[4];
      v36[6] = v37;
      v36[7] = v2[6];
      v38 = v2[1];
      v36[1] = *v2;
      v36[2] = v38;
      v39 = v2[3];
      v36[3] = v2[2];
      v36[4] = v39;
      *v6 = swift_getKeyPath();
      v40 = MEMORY[0x277CDF458];
      sub_258A75A10(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v42 = _s15EntryNoDataViewVMa(0);
      *(v6 + v42[6]) = KeyPath;
      sub_258A75A10(0, &qword_27F96C968, MEMORY[0x277CDD848], v40);
      swift_storeEnumTagMultiPayload();
      v43 = v42[5];
      *(v6 + v43) = swift_getKeyPath();
      sub_258A75A10(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v40);
      swift_storeEnumTagMultiPayload();
      v44 = (v6 + v42[7]);
      *v44 = sub_258A765D4;
      v44[1] = v36;
      v45 = (v6 + v42[8]);
      *v45 = nullsub_1;
      v45[1] = 0;
      *(v6 + v42[9]) = MEMORY[0x277D84F90];
      v46 = swift_getKeyPath();
      v47 = v6 + *(v49 + 36);
      *v47 = v46;
      v47[8] = 1;
      sub_258A74578(&v51, v50);
      sub_258A76310(v6, v12, sub_258A75FE0);
      swift_storeEnumTagMultiPayload();
      sub_258A76108();
      sub_258A761D4();
      sub_258B012A4();
      v25 = sub_258A75FE0;
      v26 = v6;
    }

    return sub_258A745B8(v26, v25);
  }

  else
  {
    v58 = *v2;

    v27 = sub_258A79B58();
    sub_258A745B8(&v58, sub_258A54DE4);
    v28 = swift_allocObject();
    v29 = v56;
    v28[5] = v55;
    v28[6] = v29;
    v28[7] = v57;
    v30 = v52;
    v28[1] = v51;
    v28[2] = v30;
    v31 = v54;
    v28[3] = v53;
    v28[4] = v31;
    *v15 = sub_258A559D8;
    *(v15 + 1) = v27;
    v15[16] = 0;
    *(v15 + 3) = sub_258A764D8;
    *(v15 + 4) = v28;
    v15[40] = 0;
    swift_storeEnumTagMultiPayload();
    sub_258A74578(&v51, v50);
    v32 = sub_258A7650C(sub_258A559D8, v27);
    sub_258A54B54(v32, v33, v34);
    sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView, &protocol conformance descriptor for StateOfMindTimeline.EntryFullView);

    sub_258B012A4();
    sub_258A76378(v18, v12);
    swift_storeEnumTagMultiPayload();
    sub_258A76108();
    sub_258A761D4();
    sub_258B012A4();
    sub_258A76514(sub_258A559D8, v27);

    return sub_258A763F8(v18);
  }
}

void *sub_258A73CF0(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v4);
  if (v4 != 0.0 && *a1 == 0.0)
  {
    *a1 = v4;
  }

  return result;
}

double sub_258A73D44@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_258A73DC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void sub_258A73EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A73F1C(uint64_t a1)
{
  if (!qword_27F96FFA8)
  {
    _s16TimelineDataViewVMa(255);
    sub_258A73FB0(&qword_27F96FFB0, _s16TimelineDataViewVMa, &unk_258B2C4B4);
    v1 = sub_258B00664();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FFA8);
    }
  }
}

uint64_t sub_258A73FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A73FF8(uint64_t a1)
{
  if (!qword_27F96FFB8)
  {
    sub_258A7408C(255);
    sub_258A73FB0(&qword_27F96FFF0, sub_258A7408C, MEMORY[0x277CDF7D8]);
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FFB8);
    }
  }
}

void sub_258A7408C(uint64_t a1)
{
  if (!qword_27F96FFC0)
  {
    sub_258A740F0(255);
    sub_258A741DC();
    v1 = sub_258B009C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FFC0);
    }
  }
}

void sub_258A740F0(uint64_t a1)
{
  if (!qword_27F96FFC8)
  {
    sub_258A75B04(255, &qword_27F96FFD0, sub_258A74188, &_s18WidthPreferenceKeyVN, MEMORY[0x277CE07F8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FFC8);
    }
  }
}

unint64_t sub_258A74188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F96FFD8;
  if (!qword_27F96FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFD8);
  }

  return result;
}

unint64_t sub_258A741DC()
{
  result = qword_27F96FFE0;
  if (!qword_27F96FFE0)
  {
    sub_258A740F0(255);
    sub_258A7425C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFE0);
  }

  return result;
}

unint64_t sub_258A7425C()
{
  result = qword_27F96FFE8;
  if (!qword_27F96FFE8)
  {
    sub_258A75B04(255, &qword_27F96FFD0, sub_258A74188, &_s18WidthPreferenceKeyVN, MEMORY[0x277CE07F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96FFE8);
  }

  return result;
}

void sub_258A742EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F96FFF8)
  {
    v3 = sub_258A74188(0, a2, a3);
    sub_2589D2E7C(v3, v4, v5);
    v6 = sub_258B01604();
    if (!v7)
    {
      atomic_store(v6, &qword_27F96FFF8);
    }
  }
}

void sub_258A74354(uint64_t a1)
{
  if (!qword_27F970000)
  {
    sub_258A73E40(255);
    sub_258A743D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970000);
    }
  }
}

unint64_t sub_258A743D8()
{
  result = qword_27F970008;
  if (!qword_27F970008)
  {
    sub_258A73E40(255);
    sub_258A74488();
    sub_258A73FB0(&qword_27F970028, sub_258A742EC, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970008);
  }

  return result;
}

unint64_t sub_258A74488()
{
  result = qword_27F970010;
  if (!qword_27F970010)
  {
    sub_258A73E74(255);
    sub_258A73FB0(&qword_27F970018, sub_258A73F1C, MEMORY[0x277CDD6E0]);
    sub_258A73FB0(&qword_27F970020, sub_258A73FF8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970010);
  }

  return result;
}

uint64_t sub_258A745B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A7463C(uint64_t a1)
{
  v2 = sub_258B00AC4();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00DD4();
}

char *sub_258A74704(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970108, MEMORY[0x277D83E40], MEMORY[0x277D84560]);
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

char *sub_258A74828(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_258A74998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_258A749E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_258A74A4C()
{
  result = qword_27F970030;
  if (!qword_27F970030)
  {
    sub_258A73EA8(255, &qword_27F970038, sub_258A74354, MEMORY[0x277CDE470]);
    sub_258A73E40(255);
    sub_258A743D8();
    swift_getOpaqueTypeConformance2();
    sub_258A73FB0(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970030);
  }

  return result;
}

char *sub_258A74B6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970040, &type metadata for StateOfMindEntryPhaseType, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_258A74C78(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A74D70(0);
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

void sub_258A74D70(uint64_t a1)
{
  if (!qword_27F970048)
  {
    sub_258A75DA4(255, &qword_27F970050, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970048);
    }
  }
}

char *sub_258A74DF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F96E118, MEMORY[0x277D85048], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258A74F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, qword_27F96EE90, MEMORY[0x277D84CC0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_258A7502C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970070, type metadata accessor for HKCVVertex, MEMORY[0x277D84560]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_258A75154(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A74(0);
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

char *sub_258A7524C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970068, type metadata accessor for HKCVLight, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_258A7538C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970060, MEMORY[0x277D839B0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_258A75498(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_258A755D0(void *result, int64_t a2, char a3, void *a4)
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

  sub_258A75A10(0, &qword_27F970090, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v10 = *(sub_258AFFC34() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(sub_258AFFC34() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

char *sub_258A757CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A76584(0, &qword_27F970058, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_258A758E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_258A75A10(0, &qword_27F970118, type metadata accessor for Label, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_258A75A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A75A74(uint64_t a1)
{
  if (!qword_27F970078)
  {
    sub_258A75B04(255, &qword_27F970080, sub_258A75B6C, MEMORY[0x277D83A90], MEMORY[0x277D84AE8]);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970078);
    }
  }
}

void sub_258A75B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_258A75B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970088;
  if (!qword_27F970088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970088);
  }

  return result;
}

uint64_t sub_258A75BC0(uint64_t a1)
{
  sub_258A76584(0, &qword_27F96F748, MEMORY[0x277CE0F78], MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A75CE4(uint64_t a1)
{
  if (!qword_27F970098)
  {
    sub_258A75DA4(255, &qword_27F9700A0, &_s31StateOfMindTimelineChartWrapperVN, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_258A75DA4(255, &qword_27F96DED0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970098);
    }
  }
}

void sub_258A75DA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A75DF8()
{
  result = qword_27F9700A8;
  if (!qword_27F9700A8)
  {
    sub_258A75CE4(255);
    sub_258A75E78();
    sub_258A07E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700A8);
  }

  return result;
}

unint64_t sub_258A75E78()
{
  result = qword_27F9700B0;
  if (!qword_27F9700B0)
  {
    sub_258A75DA4(255, &qword_27F9700A0, &_s31StateOfMindTimelineChartWrapperVN, MEMORY[0x277CDFC70], MEMORY[0x277CDFAB8]);
    sub_258A75F24(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700B0);
  }

  return result;
}

unint64_t sub_258A75F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9700B8;
  if (!qword_27F9700B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700B8);
  }

  return result;
}

void sub_258A75F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StateOfMindTimeline.EntryFullView(255);
    v7 = a3(a1, &type metadata for StateOfMindEntryView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_258A75FE0(uint64_t a1)
{
  if (!qword_27F9700D0)
  {
    _s15EntryNoDataViewVMa(255);
    sub_258A76584(255, &qword_27F96F618, &type metadata for StateOfMindTimelinePresentationContext, MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9700D0);
    }
  }
}

unint64_t sub_258A7606C()
{
  result = qword_27F9700D8;
  if (!qword_27F9700D8)
  {
    sub_258A76284(255, &qword_27F9700C0, MEMORY[0x277CE0338]);
    sub_258A76108();
    sub_258A761D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700D8);
  }

  return result;
}

unint64_t sub_258A76108()
{
  result = qword_27F9700E0;
  if (!qword_27F9700E0)
  {
    sub_258A75F78(255, &qword_27F9700C8, MEMORY[0x277CE0338]);
    sub_258A54B54(v1, v2, v3);
    sub_258A73FB0(&qword_27F96D968, type metadata accessor for StateOfMindTimeline.EntryFullView, &protocol conformance descriptor for StateOfMindTimeline.EntryFullView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700E0);
  }

  return result;
}

unint64_t sub_258A761D4()
{
  result = qword_27F9700E8;
  if (!qword_27F9700E8)
  {
    sub_258A75FE0(255);
    sub_258A73FB0(&qword_27F9700F0, _s15EntryNoDataViewVMa, &unk_258B2BE88);
    sub_258A54108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9700E8);
  }

  return result;
}

void sub_258A76284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A75F78(255, &qword_27F9700C8, MEMORY[0x277CE0338]);
    v7 = v6;
    sub_258A75FE0(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_258A76310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A76378(uint64_t a1, uint64_t a2)
{
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A763F8(uint64_t a1)
{
  sub_258A75F78(0, &qword_27F9700C8, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_18()
{

  return swift_deallocObject();
}

uint64_t sub_258A764D8(char a1)
{
  if (a1)
  {
    (*(v1 + 80))();
  }

  return 0;
}

unint64_t sub_258A76530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970110;
  if (!qword_27F970110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970110);
  }

  return result;
}

void sub_258A76584(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for StateOfMindCalendarDay(uint64_t a1)
{
  result = qword_27F970120;
  if (!qword_27F970120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A7664C(uint64_t a1)
{
  sub_258A76790(319, &qword_27F970130, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_258A76790(319, &qword_27F96D8A8, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_258B029C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_258A76744()
{
  result = qword_27F96D8A0;
  if (!qword_27F96D8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96D8A0);
  }

  return result;
}

void sub_258A76790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_258A76744();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

char *sub_258A767F0()
{
  v44 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_258A74828(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_258A74828((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0x796C696164;
    *(v5 + 5) = 0xE500000000000000;
    v45 = v2;
    [v1 valence];
    sub_258B02D64();
    v6 = sub_258A74828(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_258A74828((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = 0;
    *(v9 + 5) = 0xE000000000000000;
    v44 = v6;
  }

  v10 = *(v39 + 8);
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    v12 = sub_258B032B4();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v40 = MEMORY[0x277D84F90];
    result = sub_258AA91EC(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v15 = 0;
    v13 = v40;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C937C0](v15, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v15 + 32);
      }

      v18 = *(v40 + 16);
      v17 = *(v40 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_258AA91EC((v17 > 1), v18 + 1, 1);
      }

      ++v15;
      *(v40 + 16) = v18 + 1;
      v19 = v40 + 16 * v18;
      *(v19 + 32) = 0x7261746E656D6F6DLL;
      *(v19 + 40) = 0xE900000000000079;
    }

    while (v12 != v15);
    v11 = v10 >> 62;
  }

  sub_2589FC8C8(v13);
  if (v11)
  {
    v20 = sub_258B032B4();
  }

  else
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_258AA91EC(0, v20 & ~(v20 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v21 = v43;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x259C937C0](v22, v10);
        }

        else
        {
          v23 = *(v10 + 8 * v22 + 32);
        }

        v24 = v23;
        [v23 valence];
        sub_258B02D64();

        v26 = *(v43 + 16);
        v25 = *(v43 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_258AA91EC((v25 > 1), v26 + 1, 1);
        }

        ++v22;
        *(v43 + 16) = v26 + 1;
        v27 = v43 + 16 * v26;
        *(v27 + 32) = 0;
        *(v27 + 40) = 0xE000000000000000;
      }

      while (v20 != v22);
      goto LABEL_31;
    }

LABEL_38:
    __break(1u);
    return result;
  }

LABEL_31:
  sub_2589FC8C8(v21);
  if (*(v45 + 2) && *(v44 + 2))
  {
    sub_2589FCE08();
    sub_2589C6824();
    v28 = sub_258B02A34();
    v30 = v29;

    sub_258B003E4();
    v31 = sub_258B02A34();
    v33 = v32;

    sub_258B031B4();

    MEMORY[0x259C931B0](v28, v30);

    MEMORY[0x259C931B0](0x636E656C61767C5DLL, 0xEC0000005B3A7365);
    MEMORY[0x259C931B0](v31, v33);

    MEMORY[0x259C931B0](93, 0xE100000000000000);
    v35 = 0xD000000000000016;
    v34 = 0x8000000258B37FB0;
  }

  else
  {

    v35 = 0;
    v34 = 0xE000000000000000;
  }

  v36 = type metadata accessor for StateOfMindCalendarDay(0);
  v37 = (v39 + *(v36 + 40));
  v41 = *v37;
  v42 = v37[1];
  sub_258B003E4();
  MEMORY[0x259C931B0](v35, v34);

  v38 = (v39 + *(v36 + 44));

  *v38 = v41;
  v38[1] = v42;
}

uint64_t UIColor.init(valence:variant:colorScheme:)(char *a1, uint64_t a2, double a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(v7 + 16))(v9, a2, v6);
  Color.init(valence:variant:colorScheme:)(&v13, v9, a3);
  v10 = sub_258B030A4();
  (*(v7 + 8))(a2, v6);
  return v10;
}

uint64_t UIColor.init(valenceClassification:variant:colorScheme:)(CGColor *a1, char *a2, uint64_t a3)
{
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  (*(v7 + 16))(v9, a3, v6);
  Color.init(valenceClassification:variant:colorScheme:)(a1, &v13, v9);
  v10 = sub_258B030A4();
  (*(v7 + 8))(a3, v6);
  return v10;
}

uint64_t sub_258A76F34()
{
  sub_258B00E34();
  type metadata accessor for NotificationsSetupPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t type metadata accessor for NotificationsSetupPhaseSpecs(uint64_t a1)
{
  result = qword_27F970138;
  if (!qword_27F970138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A76FE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_258A77028(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_258A77094@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v39 = a5;
  v35 = a1;
  v36 = a2;
  sub_258A778C4(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v40 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v34 - v9;
  v11 = type metadata accessor for ExpandableInfoSectionHeader(0);
  v12 = MEMORY[0x28223BE20](v11);
  v37 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (v34 - v14);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v16 = sub_258AFFD94();
  v18 = v17;
  v19 = sub_258AFFD94();
  *v15 = v16;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v20;
  v21 = *(v11 + 24);
  *(v15 + v21) = swift_getKeyPath();
  sub_258A77D04(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v22 = v15 + *(v11 + 28);
  v41 = 0;
  sub_258B02114();
  v23 = v43;
  *v22 = v42;
  *(v22 + 1) = v23;
  *v10 = sub_258B011A4();
  *(v10 + 1) = 0x4038000000000000;
  v10[16] = 0;
  sub_258A77BCC(0, &qword_27F9701A8, sub_258A77928);
  v34[2] = *(v24 + 44);
  v25 = v35;
  v42 = sub_258AACFBC(v35);
  v34[1] = swift_getKeyPath();
  v26 = swift_allocObject();
  v27 = v36;
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = a3;
  v26[5] = v38;
  sub_258A779F0(0);
  v34[0] = v28;
  sub_258A77A90(0);
  sub_258A77E4C(&qword_27F970190, sub_258A779F0, MEMORY[0x277D83980]);
  sub_258A77E4C(&qword_27F9701A0, sub_258A77A90, &unk_258B2FC18);
  sub_258B003E4();

  sub_258B003E4();
  sub_258B023B4();
  v29 = v37;
  sub_258A77C3C(v15, v37, type metadata accessor for ExpandableInfoSectionHeader);
  v30 = v40;
  sub_258A77C3C(v10, v40, sub_258A778C4);
  v31 = v39;
  sub_258A77C3C(v29, v39, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258A77854(0);
  sub_258A77C3C(v30, v31 + *(v32 + 48), sub_258A778C4);
  sub_258A77CA4(v10, sub_258A778C4);
  sub_258A77CA4(v15, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258A77CA4(v30, sub_258A778C4);
  return sub_258A77CA4(v29, type metadata accessor for ExpandableInfoSectionHeader);
}

double sub_258A7756C@<D0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  sub_258A77D04(0, &qword_27F96E0B8, sub_258A0AFC8, MEMORY[0x277CE11F8]);
  sub_258B003E4();
  sub_258B02334();
  KeyPath = swift_getKeyPath();
  sub_258A77A90(0);
  *(a5 + *(v8 + 60)) = KeyPath;
  sub_258A77D04(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a5 = v6;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 32) = 1;
  result = 6.0;
  *(a5 + 40) = xmmword_258B31B60;
  *(a5 + 56) = sub_258A776C0;
  *(a5 + 64) = 0;
  *(a5 + 72) = sub_258A77710;
  *(a5 + 80) = 0;
  return result;
}

uint64_t sub_258A776C0(void *a1)
{
  v1 = HKUILocalizedStringForStateOfMindDomain();
  v2 = sub_258B02B14();

  return v2;
}

uint64_t sub_258A77710(uint64_t *a1)
{
  sub_258A77D68();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_258B2BE60;
  *(v1 + 32) = 0x6E69616D6F44;
  *(v1 + 40) = 0xE600000000000000;
  v2 = NSStringFromHKStateOfMindDomain();
  v3 = sub_258B02B14();
  v5 = v4;

  *(v1 + 48) = v3;
  *(v1 + 56) = v5;
  return v1;
}

uint64_t sub_258A7779C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A77BCC(0, &qword_27F970148, sub_258A77820);
  return sub_258A77094(v4, v5, v7, v6, a2 + *(v8 + 44));
}

void sub_258A77854(uint64_t a1)
{
  if (!qword_27F970158)
  {
    type metadata accessor for ExpandableInfoSectionHeader(255);
    sub_258A778C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970158);
    }
  }
}

void sub_258A778C4(uint64_t a1)
{
  if (!qword_27F970160)
  {
    sub_258A77928(255);
    sub_258A77B24();
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970160);
    }
  }
}

void sub_258A77928(uint64_t a1)
{
  if (!qword_27F970168)
  {
    sub_258A779F0(255);
    sub_258A77A90(255);
    sub_258A77E4C(&qword_27F970190, sub_258A779F0, MEMORY[0x277D83980]);
    v1 = sub_258B023D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970168);
    }
  }
}

void sub_258A77A24(uint64_t a1)
{
  if (!qword_27F970178)
  {
    sub_258A0AFC8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970178);
    }
  }
}

void sub_258A77A90(uint64_t a1)
{
  if (!qword_27F970180)
  {
    type metadata accessor for __HKStateOfMindDomain(255);
    v3 = v2;
    v4 = sub_258A77E4C(&qword_27F970188, type metadata accessor for __HKStateOfMindDomain, &unk_258B2B624);
    v6 = type metadata accessor for TagPicker(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F970180);
    }
  }
}

unint64_t sub_258A77B24()
{
  result = qword_27F970198;
  if (!qword_27F970198)
  {
    sub_258A77928(255);
    sub_258A77E4C(&qword_27F9701A0, sub_258A77A90, &unk_258B2FC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970198);
  }

  return result;
}

void sub_258A77BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A77C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A77CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A77D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A77D68()
{
  if (!qword_280DF88F0)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF88F0);
    }
  }
}

void sub_258A77DB8(uint64_t a1)
{
  if (!qword_27F9701B8)
  {
    sub_258A77820(255);
    sub_258A77E4C(&qword_27F9701C0, sub_258A77820, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9701B8);
    }
  }
}

uint64_t sub_258A77E4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258A77E94(uint64_t a1)
{
  v2 = v1;
  v55[1] = *MEMORY[0x277D85DE8];
  v49 = *v2;
  v4 = sub_258B00384();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A78570(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v13;
  v14 = sub_258B00084();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = *MEMORY[0x277CCB830];
  v48 = a1;
  sub_258B00004();
  v22 = v2[2];
  v23 = *MEMORY[0x277D621B8];
  v24 = sub_258B00014();
  v55[0] = 0;
  v25 = [v22 nextEventWithIdentifier:v23 dueAfterDate:v24 error:v55];

  v26 = v55[0];
  if (v25)
  {
    sub_258B00034();
    v27 = v26;

    (*(v15 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v12, 1, 1, v14);
    v28 = v26;
  }

  v29 = v14;
  v30 = v53;
  sub_258A784F0(v12, v53);
  if (v26)
  {
    v31 = v50;
    sub_258B00364();
    v32 = sub_258B00374();
    v33 = sub_258B02E84();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55[0] = v48;
      *v34 = 136446466;
      v35 = sub_258B035A4();
      v49 = v29;
      v37 = sub_2589F1F78(v35, v36, v55);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v54 = v26;
      sub_258A78570(0, &qword_27F9701C8, sub_258A785C4);
      v38 = v26;
      v39 = sub_258B02B44();
      v41 = sub_2589F1F78(v39, v40, v55);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_2589A1000, v32, v33, "[%{public}s] Error seeking next bedtime event: %{public}s", v34, 0x16u);
      v42 = v48;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v42, -1, -1);
      MEMORY[0x259C945C0](v34, -1, -1);

      (*(v51 + 8))(v31, v52);
      sub_258A2A66C(v53);
      (*(v15 + 8))(v20, v49);
    }

    else
    {

      (*(v51 + 8))(v31, v52);
      sub_258A2A66C(v30);
      (*(v15 + 8))(v20, v29);
    }

    return 1;
  }

  sub_258A312AC(v30, v9);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_258A2A66C(v30);
    (*(v15 + 8))(v20, v14);
    sub_258A2A66C(v9);
    return 1;
  }

  (*(v15 + 32))(v18, v9, v14);
  sub_258AFFFF4();
  v45 = fabs(v44);
  v46 = *(v15 + 8);
  v46(v18, v14);
  sub_258A2A66C(v30);
  v46(v20, v14);
  if (v45 > v21 * 4.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_258A78494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258A784F0(uint64_t a1, uint64_t a2)
{
  sub_258A78570(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A78570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_258A785C4()
{
  result = qword_27F9701D0;
  if (!qword_27F9701D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9701D0);
  }

  return result;
}

uint64_t _s21EntryMomentsEmptyViewVMa(uint64_t a1)
{
  result = qword_27F9701D8;
  if (!qword_27F9701D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A78684(uint64_t a1)
{
  sub_258A7937C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A7937C(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_2589FCE08();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A7879C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A7937C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2589DC538(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B006A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_258B02E94();
    v13 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_258A789A8@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = sub_258B02554();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B006A4();
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v78 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = v65 - v7;
  v8 = sub_258B019F4();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A7937C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v65 - v11;
  v13 = sub_258B01A54();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StateOfMindTimeline.Styles(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144(0);
  v76 = v20;
  MEMORY[0x28223BE20](v20);
  v68 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v85 = sub_258AFFD94();
  v86 = v22;
  sub_2589BFF58(v85, v22, v23);
  v67 = sub_258B01B44();
  v66 = v24;
  v26 = v25;
  v65[1] = v27;
  v73 = _s21EntryMomentsEmptyViewVMa(0);
  v28 = *(v73 + 20);
  v70 = v1;
  v71 = v28;
  sub_258AC1060(v19);
  v69 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A7931C(v19, type metadata accessor for StateOfMindTimeline.Styles);
  (*(v14 + 104))(v16, *MEMORY[0x277CE0A68], v13);
  v29 = *MEMORY[0x277CE0990];
  v30 = sub_258B01954();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v12, v29, v30);
  (*(v31 + 56))(v12, 0, 1, v30);
  sub_258B01994();
  sub_258B019B4();
  sub_258A79290(v12);
  (*(v14 + 8))(v16, v13);
  v33 = v74;
  v32 = v75;
  v34 = v72;
  (*(v74 + 104))(v72, *MEMORY[0x277CE0A10], v75);
  sub_258B01A14();

  (*(v33 + 8))(v34, v32);
  v35 = v67;
  v36 = v66;
  v37 = sub_258B01AE4();
  v39 = v38;
  LOBYTE(v31) = v40;
  sub_2589BFFAC(v35, v36, v26 & 1);

  v41 = v70;
  sub_258AC1060(v19);
  sub_258A7931C(v19, v69);
  v42 = [objc_opt_self() quaternaryLabelColor];
  v85 = sub_258B01F94();
  v43 = sub_258B01AB4();
  v74 = v44;
  v75 = v45;
  v47 = v46;
  sub_2589BFFAC(v37, v39, v31 & 1);

  v48 = v77;
  sub_258A7879C(v77);
  v50 = v78;
  v49 = v79;
  v51 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277CDF3D0], v80);
  LOBYTE(v29) = sub_258B00694();
  v52 = *(v49 + 8);
  v52(v50, v51);
  v52(v48, v51);
  v54 = v81;
  v53 = v82;
  v55 = MEMORY[0x277CE13B0];
  if ((v29 & 1) == 0)
  {
    v55 = MEMORY[0x277CE13B8];
  }

  v56 = v83;
  (*(v82 + 104))(v81, *v55, v83);
  v57 = v68;
  (*(v53 + 32))(&v68[*(v76 + 36)], v54, v56);
  v58 = v74;
  *v57 = v43;
  *(v57 + 8) = v58;
  *(v57 + 16) = v47 & 1;
  *(v57 + 24) = v75;
  v59 = *(v41 + *(v73 + 24));
  sub_258B003E4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_258A74828(0, *(v59 + 2) + 1, 1, v59);
  }

  v61 = *(v59 + 2);
  v60 = *(v59 + 3);
  if (v61 >= v60 >> 1)
  {
    v59 = sub_258A74828((v60 > 1), v61 + 1, 1, v59);
  }

  *(v59 + 2) = v61 + 1;
  v62 = &v59[16 * v61];
  *(v62 + 4) = 0x62614C7974706D45;
  *(v62 + 5) = 0xEA00000000006C65;
  v85 = &unk_2869D4670;
  v63 = sub_258B003E4();
  sub_2589FC8C8(v63);
  sub_2589FCE08();
  sub_258A10704(&qword_280DF8940, sub_2589FCE08, MEMORY[0x277D83958]);
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  return sub_258A7931C(v57, sub_2589C5144);
}

uint64_t sub_258A79290(uint64_t a1)
{
  sub_258A7937C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A7931C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A7937C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_258A793E0()
{
  result = qword_27F9701E8;
  if (!qword_27F9701E8)
  {
    sub_2589D1970(255);
    sub_2589C6AE0();
    sub_258A10704(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9701E8);
  }

  return result;
}

uint64_t sub_258A79490()
{
  sub_258B00E34();
  type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  return sub_258B00D84();
}

uint64_t type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(uint64_t a1)
{
  result = qword_27F9701F0;
  if (!qword_27F9701F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_258A79554(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_258B032B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C937C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_258A7966C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A796E4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B00084();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B029C4();
  v34 = v10;
  v37 = *(v10 - 8);
  v11 = v37;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258AB3820(v16);
  sub_258A812F8(v9, _s9ViewModelOMa);
  v17 = *(v11 + 16);
  v17(v14, v16, v10);
  sub_258B029B4();
  v18 = sub_258A7B8D4(v6);
  v35 = v19;
  v36 = v18;
  (*(v38 + 8))(v6, v39);
  v20 = v2[9];
  v39 = v20;
  v21 = _s5EntryVMa(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v41 + v20, 1, 1, v21);
  v23 = v40;
  v24 = v34;
  v17(&v40[v2[7]], v14, v34);
  v22(v23 + v2[9], 1, 1, v21);
  sub_258A82704(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v42 = sub_258B02984();
  *(inited + 32) = sub_258B03414();
  *(inited + 40) = v26;
  v42 = &unk_2869D5368;
  sub_2589FC8C8(inited);
  v27 = *(v37 + 8);
  v27(v14, v24);
  v27(v16, v24);
  v29 = v41;
  v28 = v42;
  *v23 = 0;
  v30 = (v23 + v2[8]);
  v31 = v35;
  *v30 = v36;
  v30[1] = v31;
  *(v23 + v2[10]) = MEMORY[0x277D84F90];
  *(v23 + v2[11]) = v28;
  sub_258A829F8(v29 + v39, &qword_27F96D908, _s5EntryVMa);
  return sub_258A825B0(v23, v29, type metadata accessor for StateOfMindTimeline.DaySummary);
}

void *sub_258A79B58()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_258A81294(0, &qword_280DF8F88, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v70 - v4;
  v78 = type metadata accessor for StateOfMindEntryModel.Configuration(0);
  MEMORY[0x28223BE20](v78);
  v80 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A81294(0, &qword_27F96EBF0, MEMORY[0x277CC9578], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = v70 - v7;
  v8 = sub_258AFFD44();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = (v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_258B00224();
  v12 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_258B029C4();
  v75 = *(v86 - 8);
  v15 = MEMORY[0x28223BE20](v86);
  v17 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v70 - v18;
  v20 = sub_258B00084();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v77 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v70 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v70 - v28;
  (*(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now))(v27);
  v84 = v21;
  v85 = v29;
  v30 = v29;
  v31 = *(v21 + 16);
  v76 = v20;
  v31(v26, v30, v20);
  v32 = *(v12 + 16);
  v70[1] = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar;
  v32(v14, v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v73);
  sub_258B02964();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v74;
  sub_258B00564();

  sub_258AB3820(v17);
  sub_258A812F8(v33, _s9ViewModelOMa);
  sub_258A827E8(&qword_27F9702C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  v34 = sub_258B02AA4();
  v82 = v17;
  if (v34)
  {
    v35 = *(v1 + 16);
    v36 = v78;
    v37 = v80;
    v38 = v76;
    v31(&v80[*(v78 + 20)], v85, v76);
    v39 = sub_258B000C4();
    v40 = *(*(v39 - 8) + 56);
    v41 = v79;
    v40(v79, 1, 1, v39);
    v42 = v36[6];
    v40((v37 + v42), 1, 1, v39);
    v43 = (v37 + v36[7]);
    *(v37 + v36[8]) = 13;
    *(v37 + v36[9]) = 7;
    *v37 = 0;
    *(v37 + 8) = 2;
    v44 = v35;
    sub_258A1DF88(v41, v37 + v42);
    type metadata accessor for StateOfMindEntryModel(0);
    *v43 = 0;
    v43[1] = 0;
    swift_allocObject();
    v45 = sub_258A20C0C(v44, v37, nullsub_1, 0);

    v46 = *(v75 + 8);
    v47 = v86;
    v46(v82, v86);
    v46(v19, v47);
    (*(v84 + 8))(v85, v38);
  }

  else
  {
    v73 = v19;
    v74 = v31;
    v49 = v79;
    v48 = v80;
    v50 = v78;
    v51 = v75;
    sub_258B02954();
    sub_258AFFCF4();
    sub_258AFFD14();
    sub_258AFFD24();
    v52 = v83;
    sub_258B001B4();
    v53 = v84;
    v54 = *(v84 + 48);
    v55 = v52;
    v56 = v76;
    if (v54(v55, 1, v76) == 1)
    {
      v57 = v77;
      v74(v77, v85, v56);
      if (v54(v83, 1, v56) != 1)
      {
        sub_258A829F8(v83, &qword_27F96EBF0, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v58 = *(v53 + 32);
      v57 = v77;
      v58(v77, v83, v56);
    }

    v59 = *(v1 + 16);
    v74((v48 + v50[5]), v57, v56);
    v60 = sub_258B000C4();
    v61 = v56;
    v62 = *(*(v60 - 8) + 56);
    v62(v49, 1, 1, v60);
    v63 = v50[6];
    v62(v48 + v63, 1, 1, v60);
    v64 = (v48 + v50[7]);
    *(v48 + v50[8]) = 13;
    *(v48 + v50[9]) = 7;
    *v48 = 2;
    *(v48 + 8) = 0;
    v65 = v59;
    sub_258A1DF88(v49, v48 + v63);
    type metadata accessor for StateOfMindEntryModel(0);
    *v64 = 0;
    v64[1] = 0;
    swift_allocObject();
    v45 = sub_258A20C0C(v65, v48, nullsub_1, 0);

    v66 = *(v84 + 8);
    v66(v77, v61);
    (*(v71 + 8))(v81, v72);
    v67 = *(v51 + 8);
    v68 = v86;
    v67(v82, v86);
    v67(v73, v68);
    v66(v85, v61);
  }

  return v45;
}

double sub_258A7A4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

MentalHealthUI::StateOfMindTimeline::Model::TimeRange_optional __swiftcall StateOfMindTimeline.Model.TimeRange.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StateOfMindTimeline.Model.TimeRange.rawValue.getter()
{
  if (*v0)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_258A7A554()
{
  v1 = *v0;
  sub_258B03514();
  if (v1)
  {
    v2 = 7;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C93B20](v2);
  return sub_258B03554();
}

uint64_t sub_258A7A5A4()
{
  if (*v0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x259C93B20](v1);
}

uint64_t sub_258A7A5DC(uint64_t a1)
{
  v2 = *v1;
  sub_258B03514();
  if (v2)
  {
    v3 = 7;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x259C93B20](v3);
  return sub_258B03554();
}

void *sub_258A7A628@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
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

void sub_258A7A648(uint64_t *a1@<X8>)
{
  v2 = 7;
  if (!*v1)
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_258A7A664@<X0>(char *a1@<X8>)
{
  v31 = a1;
  sub_258A82830(0);
  v30 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v32 = sub_258B00224();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00084();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_258B029C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  (*(v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate))(v16);
  (*(v7 + 16))(v9, v1 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v32);
  sub_258B02964();
  sub_258B02994();
  sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  result = sub_258B02A74();
  if (result)
  {
    v20 = *(v12 + 32);
    v20(v6, v15, v11);
    v21 = v12;
    v23 = v29;
    v22 = v30;
    v20(&v6[*(v30 + 48)], v18, v11);
    sub_258A811C4(v6, v23, sub_258A82830);
    v24 = *(v22 + 48);
    v25 = v31;
    v20(v31, v23, v11);
    v26 = *(v21 + 8);
    v26(v23 + v24, v11);
    sub_258A825B0(v6, v23, sub_258A82830);
    v27 = *(v22 + 48);
    sub_258A810D8(0);
    v20(&v25[*(v28 + 36)], (v23 + v27), v11);
    return (v26)(v23, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateOfMindTimeline.Model.__allocating_init(healthStore:)(void *a1)
{
  v35 = _s9ViewModelOMa(0);
  v2 = MEMORY[0x28223BE20](v35);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v37 = sub_258B00084();
  v39 = *(v37 - 8);
  v6 = MEMORY[0x28223BE20](v37);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v32 = sub_258B00224();
  v38 = *(v32 - 8);
  v15 = MEMORY[0x28223BE20](v32);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_258B001A4();

  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v22 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v40 = 0;
  sub_258B00524();
  (*(v12 + 32))(v21 + v22, v14, v11);
  *(v21 + 16) = a1;
  v33 = a1;
  sub_258B00074();
  sub_2589D3788(0);
  v24 = &v5[*(v23 + 48)];
  (*(v39 + 16))(v34, v9, v37);
  v25 = *(v38 + 16);
  v26 = v32;
  v25(v17, v19, v32);
  sub_258B02964();
  *v24 = sub_258A7B8D4(v9);
  v24[1] = v27;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v5, v36, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v5, _s9ViewModelOMa);
  swift_endAccess();
  v25((v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v19, v26);
  *(v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = 1;
  v28 = (v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  *v28 = sub_258A7A660;
  v28[1] = 0;
  v29 = (v21 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v29 = sub_258A7A660;
  v29[1] = 0;
  sub_258A7BF9C();
  sub_258A7C150();

  (*(v39 + 8))(v9, v37);
  (*(v38 + 8))(v19, v26);
  return v21;
}

uint64_t StateOfMindTimeline.Model.__allocating_init(healthStore:gregorianCalendar:timeRange:endDate:now:)(void *a1, uint64_t a2, unsigned __int8 *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v39 = a5;
  v50 = a4;
  v47 = a2;
  v42 = a1;
  v45 = sub_258B00224();
  v52 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s9ViewModelOMa(0);
  v9 = MEMORY[0x28223BE20](v44);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v51 = sub_258B00084();
  v41 = *(v51 - 8);
  v13 = v41;
  v14 = MEMORY[0x28223BE20](v51);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = swift_allocObject();
  v40 = *a3;
  *(v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v25 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v53 = 0;
  sub_258B00524();
  (*(v21 + 32))(v24 + v25, v23, v20);
  v26 = v42;
  *(v24 + 16) = v42;
  v42 = v26;
  v50();
  sub_2589D3788(0);
  v28 = &v12[*(v27 + 48)];
  (*(v13 + 16))(v16, v18, v51);
  v29 = *(v52 + 16);
  v30 = v47;
  v31 = v45;
  v29(v43, v47, v45);
  sub_258B02964();
  *v28 = sub_258A7B8D4(v18);
  v28[1] = v32;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v12, v46, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v12, _s9ViewModelOMa);
  swift_endAccess();
  v29((v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v30, v31);
  *(v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = v40;
  v33 = (v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v34 = v49;
  v35 = v39;
  *v33 = v50;
  v33[1] = v35;
  v36 = (v24 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v36 = v48;
  v36[1] = v34;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v52 + 8))(v30, v31);
  (*(v41 + 8))(v18, v51);
  return v24;
}

uint64_t StateOfMindTimeline.Model.init(healthStore:gregorianCalendar:timeRange:endDate:now:)(void *a1, uint64_t a2, unsigned __int8 *a3, void (*a4)(void), void (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v50 = a5;
  v52 = a4;
  v47 = a2;
  v42 = a1;
  v45 = sub_258B00224();
  v53 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = _s9ViewModelOMa(0);
  v11 = MEMORY[0x28223BE20](v44);
  v46 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v39[-v13];
  v51 = sub_258B00084();
  v41 = *(v51 - 8);
  v15 = v41;
  v16 = MEMORY[0x28223BE20](v51);
  v18 = &v39[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v39[-v19];
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v39[-v24];
  v40 = *a3;
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v26 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v54 = 0;
  sub_258B00524();
  (*(v23 + 32))(v8 + v26, v25, v22);
  v27 = v42;
  *(v8 + 16) = v42;
  v42 = v27;
  v52();
  sub_2589D3788(0);
  v29 = &v14[*(v28 + 48)];
  (*(v15 + 16))(v18, v20, v51);
  v30 = *(v53 + 16);
  v31 = v47;
  v32 = v45;
  v30(v43, v47, v45);
  sub_258B02964();
  *v29 = sub_258A7B8D4(v20);
  v29[1] = v33;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v14, v46, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v14, _s9ViewModelOMa);
  swift_endAccess();
  v30((v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v31, v32);
  *(v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = v40;
  v34 = (v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v35 = v49;
  v36 = v50;
  *v34 = v52;
  v34[1] = v36;
  v37 = (v8 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v37 = v48;
  v37[1] = v35;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v53 + 8))(v31, v32);
  (*(v41 + 8))(v20, v51);
  return v8;
}

uint64_t sub_258A7B8D4(uint64_t a1)
{
  v2 = sub_258AFFFA4();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_258AFFEF4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_258AFFF54();
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258AFFFD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  MEMORY[0x28223BE20](v17);
  v46 = &v39 - v20;
  sub_258A81294(0, &qword_27F9702D0, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v39 - v22;
  v48 = a1;
  if (sub_258B00124())
  {
    v24 = sub_258B000E4();
    v25 = *(*(v24 - 8) + 56);
    v43 = v23;
    v25(v23, 1, 1, v24);
    sub_258A828E0(0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_258B2C470;
    MEMORY[0x259C90120]();
    sub_258AFFF44();
    sub_258AFFED4();
    (*(v6 + 8))(v8, v44);
    v27 = *(v10 + 8);
    v27(v16, v9);
    sub_258AFFEE4();
    v28 = v46;
    sub_258AFFEB4();
    (*(v45 + 8))(v5, v47);
    v29 = (v27)(v19, v9);
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_258A829A4(v29, v30, v31);
    sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_258B00064();
    v27(v28, v9);
    if (qword_27F96C240 != -1)
    {
      swift_once();
    }

    v32 = sub_258AFFD94();
    if (*(v26 + 16))
    {
      v33 = v43;
      v34 = sub_258B02B24();
    }

    else
    {
      v34 = v32;

      v33 = v43;
    }

    sub_258A829F8(v33, &qword_27F9702D0, MEMORY[0x277CC9788]);
    return v34;
  }

  else
  {
    MEMORY[0x259C90120]();
    sub_258AFFF44();
    sub_258AFFED4();
    (*(v6 + 8))(v8, v44);
    v35 = *(v10 + 8);
    v35(v13, v9);
    sub_258AFFEE4();
    sub_258AFFEB4();
    (*(v45 + 8))(v5, v47);
    v35(v16, v9);
    v36 = v40;
    sub_258AFFF64();
    v37 = v46;
    sub_258AFFFC4();
    (*(v41 + 8))(v36, v42);
    v35(v19, v9);
    sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    sub_258B00064();
    v35(v37, v9);
    return v49;
  }
}

void sub_258A7BF9C()
{
  v1 = *v0;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  v2 = [swift_getObjCClassFromMetadata() stateOfMindType];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = objc_allocWithZone(MEMORY[0x277CCD730]);
  v9[4] = sub_258A82898;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_258A7F298;
  v9[3] = &block_descriptor_56;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithSampleType:v2 predicate:0 updateHandler:v6];

  _Block_release(v6);

  [v0[2] executeQuery_];
  v8 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery);
  *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = v7;
}

uint64_t sub_258A7C150()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277D766F0];
  v3 = [objc_opt_self() mainQueue];
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_258A810B8;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_258A7D3C8;
  v8[3] = &block_descriptor_10;
  v5 = _Block_copy(v8);

  v6 = [v1 addObserverForName:v2 object:0 queue:v3 usingBlock:v5];
  _Block_release(v5);

  *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = v6;
  return swift_unknownObjectRelease();
}

uint64_t StateOfMindTimeline.Model.deinit()
{
  sub_258A7C474();
  v1 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery;
  if (*(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery))
  {
    [*(v0 + 16) stopQuery_];
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar;
  v4 = sub_258B00224();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__viewModel;
  sub_258A81294(0, &qword_27F970248, _s9ViewModelOMa, MEMORY[0x277CBCED0]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_258A7C474()
{
  v1 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver;
  v2 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver);
  if (v2)
  {
    v3 = objc_opt_self();
    swift_unknownObjectRetain();
    v4 = [v3 defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

uint64_t StateOfMindTimeline.Model.__deallocating_deinit()
{
  StateOfMindTimeline.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258A7C570(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_258B00384();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258B02624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B02654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v19 = a4;
    sub_258B00364();
    v20 = a4;
    v21 = sub_258B00374();
    v22 = sub_258B02E84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446466;
      v25 = sub_258B035A4();
      v27 = sub_2589F1F78(v25, v26, aBlock);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v38 = a4;
      v28 = a4;
      sub_258A82948(0, &qword_27F96D800, MEMORY[0x277D84948]);
      v29 = sub_258B02B44();
      v31 = sub_2589F1F78(v29, v30, aBlock);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_2589A1000, v21, v22, "[%{public}s] HKStateOfMind observer query failed: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v24, -1, -1);
      MEMORY[0x259C945C0](v23, -1, -1);
    }

    else
    {
    }

    return (*(v36 + 8))(v10, v37);
  }

  else
  {
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v37 = sub_258B02F54();
    aBlock[4] = sub_258A828B0;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_62;
    v32 = _Block_copy(aBlock);

    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    sub_258B03114();
    v33 = v37;
    MEMORY[0x259C93560](0, v18, v14, v32);
    _Block_release(v32);

    (*(v12 + 8))(v14, v11);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_258A7CA44()
{
  v1 = v0;
  v69 = *v0;
  v2 = sub_258B02624();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B02654();
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_258B02634();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A810D8(0);
  v61 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v63 = v10;
  v64 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v53 - v11;
  v13 = dispatch_group_create();
  sub_258A7A664(v12);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  dispatch_group_enter(v13);
  v15 = sub_258B02984();
  result = sub_258B029A4();
  v17 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = *(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) == 0;
    v57 = v3;
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = 7;
    }

    v20 = swift_allocObject();
    v58 = v5;
    v21 = v20;
    v20[2] = v14;
    v20[3] = v13;
    v68 = v14;
    v20[4] = v69;
    v22 = objc_allocWithZone(MEMORY[0x277D28078]);
    v56 = v2;
    v23 = v22;

    v24 = v13;
    v25 = sub_258B00194();
    v75 = sub_258A8116C;
    v76 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v53[1] = &v73;
    v73 = sub_258A98BAC;
    v74 = &block_descriptor_20;
    v26 = _Block_copy(&aBlock);
    v27 = [v23 initWithDayIndexRange:v15 gregorianCalendar:v17 ascending:v25 limit:1 resultsHandler:{v19, v26}];
    v55 = v27;
    _Block_release(v26);

    v28 = v1[2];
    [v28 executeQuery_];
    v29 = swift_allocObject();
    *(v29 + 16) = 2;
    dispatch_group_enter(v24);
    sub_258A82704(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_258B2E600;
    sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
    v31 = [swift_getObjCClassFromMetadata() stateOfMindType];
    v32 = [objc_opt_self() queryDescriptorWithSampleType_];

    *(v30 + 32) = v32;
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v24;
    v33[4] = v69;
    v34 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
    sub_2589F4488(0, &qword_27F970278, 0x277CCD848);
    v69 = v24;

    v35 = sub_258B02C64();

    v75 = sub_258A811B8;
    v76 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v73 = sub_258A7F36C;
    v74 = &block_descriptor_29;
    v36 = _Block_copy(&aBlock);
    v37 = [v34 initWithQueryDescriptors:v35 limit:1 resultsHandler:v36];
    v54 = v37;

    _Block_release(v36);

    [v28 executeQuery_];
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v39 = v59;
    v38 = v60;
    v40 = v62;
    (*(v60 + 104))(v59, *MEMORY[0x277D851C8], v62);
    v41 = sub_258B02F74();
    (*(v38 + 8))(v39, v40);
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = v64;
    sub_258A811C4(v12, v64, sub_258A810D8);
    v44 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v45 = swift_allocObject();
    v46 = v68;
    v45[2] = v42;
    v45[3] = v46;
    v45[4] = v29;
    sub_258A825B0(v43, v45 + v44, sub_258A810D8);
    v75 = sub_258A8122C;
    v76 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v72 = 1107296256;
    v73 = sub_2589E92FC;
    v74 = &block_descriptor_36;
    v47 = _Block_copy(&aBlock);

    v48 = v65;
    sub_258B02644();
    v70 = MEMORY[0x277D84F90];
    sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    v49 = v67;
    v50 = v12;
    v51 = v56;
    sub_258B03114();
    v52 = v69;
    sub_258B02F24();
    _Block_release(v47);

    (*(v57 + 8))(v49, v51);
    (*(v66 + 8))(v48, v58);
    sub_258A812F8(v50, sub_258A810D8);
  }

  return result;
}

uint64_t sub_258A7D370(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_258A7CA44();
  }

  return result;
}

uint64_t sub_258A7D3C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_258AFFBF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_258AFFBD4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_258A7D4BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v10 = sub_258B00384();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a3;
    sub_258B00364();
    v15 = a3;
    v16 = sub_258B00374();
    v17 = sub_258B02E84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = a5;
      v19 = v18;
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v19 = 136446466;
      v20 = sub_258B035A4();
      v22 = sub_2589F1F78(v20, v21, v35);
      v32 = v10;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v34 = a3;
      v24 = a3;
      sub_258A82948(0, &qword_27F96D800, MEMORY[0x277D84948]);
      v25 = sub_258B02B44();
      v27 = sub_2589F1F78(v25, v26, v35);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] HKMHDaySummaryQuery query failed: %s", v19, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v19;
      a5 = v33;
      MEMORY[0x259C945C0](v29, -1, -1);

      (*(v11 + 8))(v13, v32);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  swift_beginAccess();
  *(a4 + 16) = a2;
  sub_258B003E4();

  dispatch_group_leave(a5);
}

void sub_258A7D75C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v10 = sub_258B00384();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v14 = a3;
    sub_258B00364();
    v15 = a3;
    v16 = sub_258B00374();
    v17 = sub_258B02E84();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = a4;
      v19 = v18;
      v33 = swift_slowAlloc();
      v37[0] = v33;
      *v19 = 136446466;
      v20 = sub_258B035A4();
      v22 = sub_2589F1F78(v20, v21, v37);
      v35 = a5;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v36 = a3;
      v24 = a3;
      sub_258A82948(0, &qword_27F96D800, MEMORY[0x277D84948]);
      v25 = sub_258B02B44();
      v27 = sub_2589F1F78(v25, v26, v37);
      a5 = v35;

      *(v19 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v16, v17, "[%{public}s] HKMHDaySummaryQuery query failed: %s", v19, 0x16u);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v19;
      a4 = v34;
      MEMORY[0x259C945C0](v29, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
  }

  if (a2)
  {
    if (a2 >> 62)
    {
      v30 = sub_258B032B4();
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v30 != 0;
  }

  else
  {
    v31 = 2;
  }

  swift_beginAccess();
  *(a4 + 16) = v31;
  dispatch_group_leave(a5);
}

uint64_t sub_258A7DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    sub_258B003E4();
    sub_258A7DAE4(v9, v10 & 1, a4);
  }

  return result;
}

uint64_t sub_258A7DAE4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_258A81358(0, &qword_27F970280, &qword_27F970288, MEMORY[0x277D83658], MEMORY[0x277D843E8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_258B02624();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258B02654();
  v16 = *(v15 - 8);
  v29 = v15;
  v30 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = sub_258A811C4(a3, v10, sub_258A810D8);
    MEMORY[0x28223BE20](v19);
    *(&v28 - 2) = v4;
    *(&v28 - 1) = a1;
    v20 = sub_258A81468(v10, sub_258A81460, (&v28 - 4));
    sub_258A82338(v10, &qword_27F970280, &qword_27F970288, MEMORY[0x277D83658], MEMORY[0x277D843E8]);
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v21 = sub_258B02F54();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    v35 = sub_258A82394;
    v36 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v24 = &block_descriptor_47;
  }

  else
  {
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v21 = sub_258B02F54();
    v25 = swift_allocObject();
    swift_weakInit();
    v35 = sub_258A81430;
    v36 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v24 = &block_descriptor_40;
  }

  v33 = sub_2589E92FC;
  v34 = v24;
  v26 = _Block_copy(&aBlock);

  sub_258B02644();
  aBlock = MEMORY[0x277D84F90];
  sub_258A827E8(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_258A81294(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_258A31190();
  sub_258B03114();
  MEMORY[0x259C93560](0, v18, v14, v26);
  _Block_release(v26);

  (*(v12 + 8))(v14, v11);
  return (*(v30 + 8))(v18, v29);
}

uint64_t sub_258A7DFC4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_258A7E024()
{
  v22 = sub_258B00224();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s9ViewModelOMa(0);
  v4 = MEMORY[0x28223BE20](v21);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = sub_258B00084();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v20 - v14;
  (*(v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate))(v13);
  sub_2589D3788(0);
  v17 = &v7[*(v16 + 48)];
  (*(v9 + 16))(v12, v15, v8);
  (*(v1 + 16))(v3, v0 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar, v22);
  sub_258B02964();
  *v17 = sub_258A7B8D4(v15);
  v17[1] = v18;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A811C4(v7, v23, _s9ViewModelOMa);

  sub_258B00574();
  sub_258A812F8(v7, _s9ViewModelOMa);
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_258A7E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v140 = a4;
  v106 = a1;
  v109 = a5;
  v129 = sub_258AFFF74();
  v138 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_258AFFF24();
  v137 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_258AFFF34();
  v136 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_258AFFFD4();
  v135 = *(v123 - 8);
  v9 = MEMORY[0x28223BE20](v123);
  v122 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v121 = &v97 - v12;
  MEMORY[0x28223BE20](v11);
  v120 = &v97 - v13;
  v133 = _s5EntryVMa(0);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A81294(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v97 - v16;
  v108 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  MEMORY[0x28223BE20](v108);
  v105 = (&v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_258B00084();
  v18 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258B029C4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v97 - v26;
  v103 = v22;
  v139 = *(v22 + 16);
  v139(&v97 - v26, a2, v21);
  sub_258B029B4();
  v100 = sub_258A7B8D4(v20);
  v99 = v28;
  v29 = *(v18 + 8);
  v118 = v20;
  v119 = v18 + 8;
  v117 = v29;
  v29(v20, v131);
  v142 = a2;
  v30 = sub_258A79554(sub_258A826B4, v141, v140);
  v31 = v133;
  v32 = *(v132 + 56);
  v98 = *(v108 + 28);
  v32(v109 + v98, 1, 1, v133);
  v102 = v25;
  v101 = v27;
  v104 = v21;
  v139(v25, v27, v21);
  if (!v30)
  {
    v37 = v107;
    v32(v107, 1, 1, v31);
    v38 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v33 = [v30 dailyStateOfMind];
  if (v33)
  {
    v34 = v107;
    sub_258AB9F98(v33, v107);
    v35 = v34;
    v36 = 0;
  }

  else
  {
    v36 = 1;
    v35 = v107;
  }

  v32(v35, v36, 1, v31);
  v39 = [v30 momentaryStatesOfMind];
  sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
  sub_258B02C74();

  v40 = sub_258B003E4();
  v143[0] = sub_2589F3C64(v40);
  sub_258A7F424(v143);

  v41 = v143[0];
  if (v143[0] < 0 || (v143[0] & 0x4000000000000000) != 0)
  {
    v84 = v143[0];
    v42 = sub_258B032B4();
    v41 = v84;
    if (v42)
    {
      goto LABEL_9;
    }

LABEL_25:

    v38 = MEMORY[0x277D84F90];
    v37 = v107;
LABEL_26:
    sub_258A82704(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_258B2C470;
    v86 = v101;
    v143[0] = sub_258B02984();
    *(inited + 32) = sub_258B03414();
    *(inited + 40) = v87;
    v143[0] = &unk_2869D5718;
    sub_2589FC8C8(inited);

    v88 = v103;
    v89 = v104;
    (*(v103 + 8))(v86, v104);
    v90 = v143[0];
    v91 = v105;
    *v105 = v106;
    v92 = v108;
    (*(v88 + 32))(v91 + *(v108 + 20), v102, v89);
    v93 = (v91 + v92[6]);
    v94 = v99;
    *v93 = v100;
    v93[1] = v94;
    sub_258A82754(v37, v91 + v92[7]);
    *(v91 + v92[8]) = v38;
    *(v91 + v92[9]) = v90;
    v95 = v109;
    sub_258A829F8(v109 + v98, &qword_27F96D908, _s5EntryVMa);
    return sub_258A825B0(v91, v95, type metadata accessor for StateOfMindTimeline.DaySummary);
  }

  v42 = *(v143[0] + 16);
  if (!v42)
  {
    goto LABEL_25;
  }

LABEL_9:
  v43 = v41;
  v144 = MEMORY[0x277D84F90];
  sub_258AA926C(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v97 = v30;
    v44 = 0;
    v45 = v43;
    v114 = v43 & 0xC000000000000001;
    v38 = v144;
    v113 = (v137 + 8);
    v112 = (v136 + 8);
    v111 = v135 + 8;
    v110 = (v138 + 8);
    v116 = v43;
    v115 = v42;
    v46 = (v135 + 8);
    v47 = v120;
    while (1)
    {
      if (v114)
      {
        v48 = MEMORY[0x259C937C0](v44, v45);
      }

      else
      {
        v48 = *(v45 + 8 * v44 + 32);
      }

      v49 = v48;
      v50 = [v48 UUID];
      sub_258B000B4();

      v51 = [v49 reflectiveInterval];
      v140 = v38;
      if (v51 == 2)
      {
        [v49 valenceClassification];
        [v49 reflectiveInterval];
        v52 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
      }

      else
      {
        if (v51 != 1)
        {
          v138 = 0xE000000000000000;
          v139 = 0;
          goto LABEL_20;
        }

        [v49 valenceClassification];
        v52 = HKUILocalizedStringForValenceClassification();
      }

      v53 = v52;
      v54 = sub_258B02B14();
      v138 = v55;
      v139 = v54;

LABEL_20:
      v56 = sub_258ABA3E0();
      v136 = v57;
      v137 = v56;
      v135 = sub_258ABA5F4();
      v134 = v58;
      v59 = [v49 startDate];
      v60 = v118;
      sub_258B00034();

      v61 = v122;
      MEMORY[0x259C90120]();
      v62 = v126;
      sub_258AFFF14();
      v63 = v124;
      sub_258AFFF04();
      (*v113)(v62, v127);
      v64 = v121;
      sub_258AFFEC4();
      (*v112)(v63, v125);
      v65 = *v46;
      v66 = v61;
      v67 = v123;
      (*v46)(v66, v123);
      v68 = v128;
      sub_258AFFF64();
      sub_258AFFFB4();
      (*v110)(v68, v129);
      v65(v64, v67);
      sub_258A827E8(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_258B00064();
      v65(v47, v67);
      v117(v60, v131);
      v69 = v143[0];
      v70 = v143[1];
      [v49 valence];
      v72 = v71;

      v73 = v133;
      v74 = v130;
      v75 = &v130[*(v133 + 20)];
      v76 = v138;
      *v75 = v139;
      *(v75 + 1) = v76;
      v77 = (v74 + v73[6]);
      v78 = v136;
      *v77 = v137;
      v77[1] = v78;
      v79 = (v74 + v73[7]);
      v80 = v134;
      *v79 = v135;
      v79[1] = v80;
      v81 = (v74 + v73[8]);
      *v81 = v69;
      v81[1] = v70;
      *(v74 + v73[9]) = v72;
      v38 = v140;
      v144 = v140;
      v83 = *(v140 + 16);
      v82 = *(v140 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_258AA926C((v82 > 1), v83 + 1, 1);
        v38 = v144;
      }

      ++v44;
      *(v38 + 16) = v83 + 1;
      sub_258A825B0(v74, v38 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v83, _s5EntryVMa);
      v45 = v116;
      if (v115 == v44)
      {

        v37 = v107;
        v30 = v97;
        goto LABEL_26;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_258A7F100(uint64_t a1, uint64_t a2)
{
  v3 = _s9ViewModelOMa(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v10 - v7);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    sub_258B003E4();
    sub_258AB3AE0(v6, a2, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A811C4(v8, v6, _s9ViewModelOMa);
    sub_258B00574();
    return sub_258A812F8(v8, _s9ViewModelOMa);
  }

  return result;
}

void sub_258A7F298(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_258A828A0, v8, a4);
}

uint64_t sub_258A7F36C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_2589F4488(0, &qword_27F96E858, 0x277CCD8A8);
    v5 = sub_258B02C74();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_258A7F424(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_258A7F4A0(v6);
  return sub_258B03234();
}

void sub_258A7F4A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
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
        sub_2589F4488(0, &qword_27F96D8A0, 0x277CCDA30);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_258A7F7D4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_258A7F5B4(0, v2, 1, a1);
  }
}

void sub_258A7F5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_258B00084();
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 startDate];
      sub_258B00034();

      v22 = [v20 startDate];
      v23 = v34;
      sub_258B00034();

      LOBYTE(v22) = sub_258B00024();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_258A7F7D4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_258B00084();
  v9 = MEMORY[0x28223BE20](v125);
  v124 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_258AE8CC8(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_258A80044((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_258AE8CC8(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_258AE8C3C(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 startDate];
      v24 = v123;
      sub_258B00034();

      v25 = [v22 startDate];
      v26 = v124;
      sub_258B00034();

      LODWORD(v121) = sub_258B00024();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 startDate];
        v34 = v123;
        sub_258B00034();

        v35 = [v32 startDate];
        v36 = v124;
        sub_258B00034();

        LODWORD(v35) = sub_258B00024() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_258A74C78(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_258A74C78((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_258A80044((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_258AE8CC8(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_258AE8C3C(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 startDate];
    v53 = v123;
    sub_258B00034();

    v54 = [v51 startDate];
    v55 = v124;
    sub_258B00034();

    LOBYTE(v54) = sub_258B00024();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_258A80044(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_258B00084();
  v8 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 startDate];
        v41 = v54;
        sub_258B00034();

        v42 = [v39 startDate];
        v43 = v55;
        sub_258B00034();

        LOBYTE(v42) = sub_258B00024();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 startDate];
        v21 = v54;
        sub_258B00034();

        v22 = [v19 startDate];
        v23 = v55;
        sub_258B00034();

        LOBYTE(v22) = sub_258B00024();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_258A804E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  sub_258A8239C(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_258A811C4(a1, v14, sub_258A82400);
  sub_258A811C4(a2, &v14[v15], sub_258A82400);
  v16 = v5[6];
  LODWORD(a1) = v16(v14, 1, v4);
  v17 = v16(&v14[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v14, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v8, &v14[v15], v4);
      sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      sub_258B030E4();
      v23 = v5[1];
      v23(v8, v4);
      v23(v10, v4);
      return v25;
    }

    sub_258A810D8(0);
    sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    sub_258B030E4();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v14[v15], v4);
  sub_258A810D8(0);
  v8 = *(v21 + 36);
  sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  sub_258B030E4();
  v22 = v5[1];
  ++v5;
  v22(v10, v4);
  result = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(uint64_t a1, void *a2)
{
  v59 = a2;
  v60 = _s9ViewModelOMa(0);
  v3 = MEMORY[0x28223BE20](v60);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v49 - v5;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v55 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - v8;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v50 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_258B00224();
  v20 = *(v19 - 8);
  v62 = v19;
  v63 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v53 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v51 = &v49 - v23;
  v24 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_258B001A4();

  v25 = v11;
  v26 = *(v11 + 16);
  v27 = a1;
  v28 = v10;
  v26(v18, v27, v10);
  v26(v16, v18, v10);
  v29 = *(v25 + 80);
  v57 = v25;
  v30 = (v29 + 16) & ~v29;
  v54 = swift_allocObject();
  v31 = *(v25 + 32);
  v32 = v28;
  v52 = v28;
  v31(v54 + v30, v18, v28);
  type metadata accessor for StateOfMindTimeline.Model(0);
  v33 = swift_allocObject();
  *(v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v34 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v64 = 0;
  sub_258B00524();
  (*(v7 + 32))(v33 + v34, v9, v55);
  v35 = v59;
  *(v33 + 16) = v59;
  sub_2589D3788(0);
  v37 = v58;
  v38 = &v58[*(v36 + 48)];
  v39 = v50;
  v26(v56, v50, v32);
  v40 = *(v63 + 16);
  v41 = v51;
  v40(v53, v51, v62);
  v42 = v35;
  sub_258B02964();
  *v38 = sub_258A7B8D4(v39);
  v38[1] = v43;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v37, v61, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v37, _s9ViewModelOMa);
  swift_endAccess();
  v44 = v62;
  v40((v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v41, v62);
  *(v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = 0;
  v45 = (v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v46 = v54;
  *v45 = sub_258A82A68;
  v45[1] = v46;
  v47 = (v33 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v47 = sub_258A7A660;
  v47[1] = 0;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v57 + 8))(v39, v52);
  (*(v63 + 8))(v41, v44);
  return v33;
}

unint64_t sub_258A80E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970250;
  if (!qword_27F970250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970250);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindTimeline.Model(uint64_t a1)
{
  result = qword_27F970258;
  if (!qword_27F970258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A80EF0(uint64_t a1)
{
  sub_258B00224();
  if (v1 <= 0x3F)
  {
    sub_258A81294(319, &qword_27F970248, _s9ViewModelOMa, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_258A82704(319, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A810D8(uint64_t a1)
{
  if (!qword_27F970268)
  {
    sub_258B029C4();
    sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v1 = sub_258B02A84();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970268);
    }
  }
}

uint64_t objectdestroy_16Tm()
{

  return swift_deallocObject();
}

uint64_t sub_258A811C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A8122C()
{
  sub_258A810D8(0);
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_258A7DA14(v3, v4, v5, v6);
}

void sub_258A81294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_258A812F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A81358(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A810D8(255);
    v11 = v10;
    v12 = sub_258A82514(a3, a4);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

unint64_t sub_258A813DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970290;
  if (!qword_27F970290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970290);
  }

  return result;
}

uint64_t sub_258A81468(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v109 = a3;
  v108 = a2;
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v102 = &v96[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v111 = &v96[-v8];
  sub_258A8239C(0);
  v126 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v115 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v96[-v12];
  sub_258A824A8(0);
  v107 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v106 = &v96[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v105 = &v96[-v17];
  v18 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v104 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v124 = &v96[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A81358(0, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
  v116 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v123 = &v96[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v134 = &v96[-v23];
  sub_258A82400(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v103 = &v96[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v110 = &v96[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v96[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v125 = &v96[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v97 = &v96[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v96[-v36];
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v96[-v39];
  MEMORY[0x28223BE20](v38);
  v42 = &v96[-v41];
  v43 = *(v5 + 2);
  v114 = v5 + 16;
  v113 = v43;
  v43(&v96[-v41], a1, v4);
  v133 = v5;
  v44 = *(v5 + 7);
  (v44)(v42, 0, 1, v4);
  v132 = (v5 + 56);
  v45 = v44;
  (v44)(v40, 1, 1, v4);
  v46 = sub_258A804E0(v42, v40);
  sub_258A812F8(v40, sub_258A82400);
  v47 = v42;
  v48 = v46;
  sub_258A812F8(v47, sub_258A82400);
  result = MEMORY[0x277D84F90];
  if (v46)
  {
    v136 = MEMORY[0x277D84F90];
    sub_258AA92EC(0, v46 & ~(v46 >> 63), 0);
    v127 = v136;
    v50 = v134;
    v51 = v113;
    v113(v134, a1, v4);
    v101 = v4;
    v52 = v4;
    v131 = v45;
    v53 = v132;
    result = (v45)(v50, 0, 1, v52);
    v99 = *(v116 + 36);
    *&v50[v99] = 0;
    if ((v48 & 0x8000000000000000) == 0)
    {
      v54 = v50;
      v55 = v51;
      v56 = v53;
      v98 = v48;
      v57 = 0;
      v58 = 0;
      v59 = (v133 + 48);
      v130 = (v133 + 32);
      v128 = (v133 + 48);
      v129 = v133 + 8;
      v60 = v115;
      v117 = v13;
      v118 = v37;
      v100 = a1;
      while (!__OFADD__(v57, 1))
      {
        v121 = v57;
        v122 = v58;
        v120 = v57 + 1;
        v61 = v54;
        v45 = v101;
        v55(v37, a1, v101);
        (v131)(v37, 0, 1, v45);
        v62 = *(v126 + 48);
        sub_258A811C4(v61, v13, sub_258A82400);
        sub_258A811C4(v37, &v13[v62], sub_258A82400);
        v63 = *v59;
        v64 = (*v59)(v13, 1, v45);
        v133 = v63;
        if (v64 == 1)
        {
          sub_258A812F8(v37, sub_258A82400);
          sub_258A812F8(v13, sub_258A8239C);
          v65 = v112;
        }

        else
        {
          v56 = v97;
          sub_258A811C4(v13, v97, sub_258A82400);
          v66 = (v63)(&v13[v62], 1, v45);
          v65 = v112;
          if (v66 == 1)
          {
            goto LABEL_28;
          }

          v67 = &v13[v62];
          v68 = v111;
          (*v130)(v111, v67, v45);
          sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
          v69 = v56;
          v70 = sub_258B02A54();
          v37 = v129;
          v71 = *v129;
          (*v129)(v68, v45);
          sub_258A812F8(v118, sub_258A82400);
          v71(v69, v45);
          result = sub_258A812F8(v117, sub_258A82400);
          if (v70)
          {
            goto LABEL_29;
          }
        }

        v72 = v125;
        (v131)(v125, 1, 1, v45);
        v73 = *(v126 + 48);
        v56 = sub_258A82400;
        sub_258A811C4(v134, v60, sub_258A82400);
        sub_258A811C4(v72, v60 + v73, sub_258A82400);
        v13 = v133;
        if ((v133)(v60, 1, v45) == 1)
        {
          goto LABEL_25;
        }

        sub_258A811C4(v60, v65, sub_258A82400);
        if ((v13)(v60 + v73, 1, v45) == 1)
        {
          sub_258A812F8(v125, sub_258A82400);
          v74 = *v129;
          (*v129)(v65, v45);
          sub_258A812F8(v60, sub_258A82400);
        }

        else
        {
          v75 = v111;
          (*v130)(v111, (v60 + v73), v45);
          sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
          v56 = sub_258B02A54();
          v74 = *v129;
          (*v129)(v75, v45);
          sub_258A812F8(v125, sub_258A82400);
          v74(v65, v45);
          v13 = v133;
          sub_258A812F8(v60, sub_258A82400);
          if ((v56 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v119 = v74;
        v76 = v110;
        sub_258A811C4(v134, v110, sub_258A82400);
        result = (v13)(v76, 1, v45);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v77 = v45;
        v78 = v107;
        v79 = *(v107 + 48);
        v80 = *v130;
        v45 = v105;
        (*v130)(&v105[v79], v76, v77);
        v81 = v106;
        v82 = v122;
        *v106 = v122;
        v83 = *(v78 + 48);
        v80(v81 + v83, &v45[v79], v77);
        v108(v82, v81 + v83);
        sub_258A812F8(v81, sub_258A824A8);
        v84 = v127;
        v136 = v127;
        v86 = *(v127 + 16);
        v85 = *(v127 + 24);
        v87 = v77;
        if (v86 >= v85 >> 1)
        {
          sub_258AA92EC((v85 > 1), v86 + 1, 1);
          v84 = v136;
        }

        *(v84 + 16) = v86 + 1;
        v88 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v127 = v84;
        sub_258A825B0(v124, v84 + v88 + *(v104 + 72) * v86, type metadata accessor for StateOfMindTimeline.DaySummary);
        v89 = v123;
        sub_258A82618(v134, v123);
        v90 = v89;
        v91 = v103;
        sub_258A811C4(v90, v103, sub_258A82400);
        result = (v133)(v91, 1, v77);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v92 = v102;
        v80(v102, v91, v77);
        sub_258A810D8(0);
        sub_258A827E8(&qword_27F9702C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
        a1 = v100;
        v93 = sub_258B02AA4();
        v60 = v115;
        v37 = v118;
        if (v93)
        {
          v119(v92, v87);
          v94 = 1;
          v13 = v117;
          v95 = v134;
        }

        else
        {
          v135 = 1;
          sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
          v95 = v134;
          sub_258B030D4();
          v119(v92, v87);
          v94 = 0;
          v13 = v117;
        }

        (v131)(v95, v94, 1, v87);
        v56 = *&v123[*(v116 + 36)];
        sub_258A82338(v123, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
        v58 = v56 + 1;
        v59 = v128;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_27;
        }

        v54 = v95;
        *&v95[v99] = v58;
        v57 = v121 + 1;
        v55 = v113;
        v56 = v132;
        if (v120 == v98)
        {
          sub_258A82338(v95, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
          return v127;
        }
      }

      __break(1u);
LABEL_25:
      sub_258A812F8(v125, sub_258A82400);
      sub_258A812F8(v60, sub_258A8239C);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      sub_258A812F8(v37, sub_258A82400);
      (*v129)(v56, v45);
      result = sub_258A812F8(v13, sub_258A82400);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_258A82338(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258A81358(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_258A8239C(uint64_t a1)
{
  if (!qword_27F970298)
  {
    sub_258A82400(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970298);
    }
  }
}

void sub_258A82400(uint64_t a1)
{
  if (!qword_27F9702A0)
  {
    sub_258B029C4();
    v1 = sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    sub_258A813DC(v1, v2, v3);
    v4 = sub_258B02A94();
    if (!v5)
    {
      atomic_store(v4, &qword_27F9702A0);
    }
  }
}

void sub_258A824A8(uint64_t a1)
{
  if (!qword_27F9702A8)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9702A8);
    }
  }
}

uint64_t sub_258A82514(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258A810D8(255);
    v6 = sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    sub_258A813DC(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A825B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A82618(uint64_t a1, uint64_t a2)
{
  sub_258A81358(0, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258A82704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A82754(uint64_t a1, uint64_t a2)
{
  sub_258A81294(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A827E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A82830(uint64_t a1)
{
  if (!qword_27F971560)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971560);
    }
  }
}

void sub_258A828E0(uint64_t a1)
{
  if (!qword_27F9702D8)
  {
    sub_258A82948(255, &qword_27F9702E0, MEMORY[0x277D84D98]);
    v1 = sub_258B03424();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9702D8);
    }
  }
}

uint64_t sub_258A82948(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258A829A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9702E8;
  if (!qword_27F9702E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9702E8);
  }

  return result;
}

uint64_t sub_258A829F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A81294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A82A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00084();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

double StateOfMindVisualization.ValenceImage.init(valence:imageScale:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *a1;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v6, &v7, a3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_258A82B60(uint64_t a1, double a2)
{
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277CDF3C0])
  {
    KeyPath = swift_getKeyPath();

    v9 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v10 = sub_258A848BC;
  }

  else
  {
    KeyPath = swift_getKeyPath();

    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    v12 = *(v5 + 8);
    v9 = GenericRGB;
    v12(v7, v4);
    v10 = sub_258A84534;
  }

  v13 = v10;
  sub_258A84538(KeyPath, fmax(fmin(a2, 1.0), -1.0));
  v15 = v14;

  (v13)(v15, v9, 0.6);

  v16 = sub_258B01F74();

  return v16;
}

CGColorRef sub_258A82D78()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        v2 = 0.666666667;
        v3 = 0.709803922;
      }

      else
      {
        v2 = 0.68627451;
        v3 = 0.752941176;
      }

      v7 = 0x3FEC1C1C1C1C1C1CLL;
    }

    else
    {
      v2 = 0.623529412;
      v3 = 0.588235294;
      v7 = 0x3FE7777777777777;
    }

    goto LABEL_16;
  }

  if (*v0 <= 4u)
  {
    if (v1 == 3)
    {
      v2 = 0.741176471;
      v3 = 0.82745098;
      v4 = 0.839215686;
      v5 = 1.0;
      return CGColorCreateGenericRGB(v2, v3, v4, v5);
    }

    v2 = 0.682352941;
    v3 = 0.788235294;
    v7 = 0x3FE0101010101010;
LABEL_16:
    v4 = *&v7;
    v5 = 1.0;
    return CGColorCreateGenericRGB(v2, v3, v4, v5);
  }

  if (v1 == 5)
  {
    return CGColorCreateGenericRGB(0.956862745, 0.819607843, 0.619607843, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.996078431, 0.737254902, 0.392156863, 1.0);
  }
}

CGColorRef sub_258A82E80()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.874509804, 0.898039216, 1.0, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.807843137, 0.847058824, 0.905882353, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.815686275, 0.776470588, 0.941176471, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(0.964705882, 0.831372549, 0.635294118, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(1.0, 0.917647059, 0.882352941, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.858823529, 0.882352941, 0.88627451, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.807843137, 0.901960784, 0.643137255, 1.0);
  }
}

CGColorRef sub_258A82FA8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        v2 = 0.666666667;
        v3 = 0.709803922;
      }

      else
      {
        v2 = 0.68627451;
        v3 = 0.752941176;
      }

      v4 = 0.878431373;
    }

    else
    {
      v2 = 0.623529412;
      v3 = 0.588235294;
      v4 = 0.733333333;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      v2 = 0.956862745;
      v3 = 0.819607843;
      v4 = 0.619607843;
    }

    else
    {
      v2 = 0.996078431;
      v3 = 0.737254902;
      v4 = 0.392156863;
    }
  }

  else if (v1 == 3)
  {
    v2 = 0.741176471;
    v3 = 0.82745098;
    v4 = 0.839215686;
  }

  else
  {
    v2 = 0.682352941;
    v3 = 0.788235294;
    v4 = 0.501960784;
  }

  GenericRGB = CGColorCreateGenericRGB(v2, v3, v4, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    return GenericRGB;
  }

  result = sub_258B02E04();
  if (!result)
  {
    return GenericRGB;
  }

  v7 = *(result + 2);
  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 >= 3)
      {
        v8 = *(result + 4) * 0.5;
        v9 = *(result + 5) * 0.5;
        v10 = *(result + 6);

        v11 = CGColorCreateGenericRGB(v8, v9, v10 * 0.5, 1.0);

        return v11;
      }

      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

CGColorRef sub_258A83158()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.235294118, 0.298039216, 0.760784314, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.133333333, 0.392156863, 0.749019608, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.207843137, 0.121568627, 0.462745098, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(1.0, 0.603921569, 0.0117647059, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(0.984313725, 0.454901961, 0.262745098, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.42745098, 0.682352941, 0.756862745, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.431372549, 0.694117647, 0.0, 1.0);
  }
}

CGColorRef sub_258A83278()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.556862745, 0.674509804, 0.996078431, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.635294118, 0.811764706, 1.0, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.611764706, 0.423529412, 0.764705882, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(0.996078431, 0.823529412, 0.392156863, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(0.988235294, 0.745098039, 0.474509804, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.796078431, 0.878431373, 0.909803922, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.71372549, 0.858823529, 0.274509804, 1.0);
  }
}

char *sub_258A8338C(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sub_258A83E88(a1, a2, a3);
  v31 = MEMORY[0x277D84F90];
  result = sub_258AA91CC(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = v31;
  v10 = a4 + 0x4000000000000000;
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (2 * a4);
    v19 = v10 >> 63;
LABEL_25:
    v20 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v21 = v7 <= a2;
      if (a3 > 0)
      {
        v21 = v7 >= a2;
      }

      if (v21)
      {
        if ((v7 != a2) | v11 & 1 || !v13 && v12 == 0x8000000000000000)
        {
          return result;
        }

        v11 = 1;
        v22 = v7;
      }

      else
      {
        v23 = __OFADD__(v7, a3);
        v22 = v23 ? v20 : v7 + a3;
        v12 = v23 ? 0x8000000000000000 : 0;
        v13 = !v23;
      }

      if (v19)
      {
        break;
      }

      v33 = result;
      v25 = *(result + 2);
      v24 = *(result + 3);
      if (v25 >= v24 >> 1)
      {
        v30 = v12;
        v28 = v13;
        v26 = v20;
        sub_258AA91CC((v24 > 1), v25 + 1, 1);
        v20 = v26;
        v13 = v28;
        v12 = v30;
        result = v33;
      }

      *(result + 2) = v25 + 1;
      *&result[8 * v25 + 32] = v7 / v14;
      v7 = v22;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (2 * a4);
    do
    {
      v15 = v7 <= a2;
      if (a3 > 0)
      {
        v15 = v7 >= a2;
      }

      if (v15)
      {
        if (v11 & 1 | (v7 != a2))
        {
          goto LABEL_48;
        }

        if (!v13 && v12 == 0x8000000000000000)
        {
          goto LABEL_49;
        }

        v11 = 1;
        v16 = a2;
      }

      else
      {
        v13 = !__OFADD__(v7, a3);
        if (__OFADD__(v7, a3))
        {
          v12 = 0x8000000000000000;
        }

        else
        {
          v12 = 0;
        }

        if (__OFADD__(v7, a3))
        {
          v16 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v16 = v7 + a3;
        }
      }

      v32 = result;
      v18 = *(result + 2);
      v17 = *(result + 3);
      if (v18 >= v17 >> 1)
      {
        v29 = v12;
        v27 = v13;
        sub_258AA91CC((v17 > 1), v18 + 1, 1);
        v13 = v27;
        v12 = v29;
        result = v32;
      }

      *(result + 2) = v18 + 1;
      *&result[8 * v18 + 32] = v7 / v14;
      v7 = v16;
      --v8;
    }

    while (v8);
    LOBYTE(v19) = 0;
    v7 = v16;
    goto LABEL_25;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_258A83694()
{
  if (*v0)
  {
    v31 = MEMORY[0x277D84F90];
    v1 = &unk_2869D4B68;
    v2 = 7;
    do
    {
      v26 = v2;
      v3 = *(v1 - 1);
      v4 = *v1;
      v30 = MEMORY[0x277D84F90];
      sub_258B003E4();
      sub_258AA91EC(0, 3, 0);
      v5 = v30;
      v27 = v3;
      sub_258B003E4();
      v6 = sub_258B03414();
      MEMORY[0x259C931B0](v6);

      v7 = v3;
      v9 = *(v30 + 16);
      v8 = *(v30 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v4;
      sub_258B003E4();
      v11 = sub_258B03414();
      MEMORY[0x259C931B0](v11);

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_258AA91EC((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v27;
      *(v14 + 40) = v4;
      sub_258B003E4();
      v15 = sub_258B03414();
      MEMORY[0x259C931B0](v15);

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_258AA91EC((v16 > 1), v17 + 1, 1);
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v27;
      *(v18 + 40) = v4;

      sub_2589FC8C8(v5);
      v1 += 2;
      --v2;
    }

    while (v26 != 1);
    return v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v19 = 7;
    sub_258AA91EC(0, 7, 0);
    v20 = &unk_2869D4B68;
    v24 = v32;
    do
    {
      v28 = *(v20 - 1);
      v29 = *v20;
      swift_bridgeObjectRetain_n();
      MEMORY[0x259C931B0](50, 0xE100000000000000);

      v22 = *(v32 + 16);
      v21 = *(v32 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_258AA91EC((v21 > 1), v22 + 1, 1);
      }

      *(v32 + 16) = v22 + 1;
      v23 = v32 + 16 * v22;
      *(v23 + 32) = v28;
      *(v23 + 40) = v29;
      v20 += 2;
      --v19;
    }

    while (v19);
  }

  return v24;
}

uint64_t StateOfMindVisualization.ValenceImageProvider.ImageGranularity.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

void StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(unsigned __int8 *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = sub_258A83F18(21, a3);
  v6 = sub_258B03084();
  v8 = v7;
  v9 = sub_258A83694();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= *(v9 + 16))
  {
LABEL_27:
    __break(1u);
    return;
  }

  v10 = v9 + 16 * v5;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  sub_258B003E4();

  v13 = 0xE300000000000000;
  v14 = 0xE400000000000000;
  v15 = 808465247;
  if (v4 != 7)
  {
    v15 = 3160415;
    v14 = 0xE300000000000000;
  }

  v16 = 0xE400000000000000;
  v17 = 808465247;
  if ((v4 - 4) < 2)
  {
    v17 = 3160415;
    v16 = 0xE300000000000000;
  }

  if (v4 <= 6)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0xE400000000000000;
  v19 = 808465247;
  if (v4 == 2)
  {
    v19 = 3160415;
    v18 = 0xE300000000000000;
  }

  v20 = 808465247;
  if (v4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v20 = 3160415;
  }

  if (v4 > 1)
  {
    v13 = v18;
  }

  else
  {
    v19 = v20;
  }

  if (v4 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  if (v4 <= 3)
  {
    v22 = v13;
  }

  else
  {
    v22 = v14;
  }

  if (v8)
  {
    v6 = 4;
  }

  MEMORY[0x259C931B0](v21, v22);

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v6;
}

void StateOfMindVisualization.ValenceImageProvider.uiImage.getter()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_258B02AD4();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  if (!v3)
  {
    __break(1u);
  }
}

double StateOfMindVisualization.ValenceImage.body.getter()
{
  v0 = sub_258B02094();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  sub_258B003E4();
  v6 = [v5 bundleForClass_];
  sub_258B020D4();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0FE0], v0);
  v7 = sub_258B020C4();

  (*(v1 + 8))(v3, v0);
  v20[3] = v7;
  v20[4] = 0x3FF0000000000000;
  v21 = 0;
  v8 = HKUILocalizedStringForValenceClassification();
  v9 = sub_258B02B14();
  v11 = v10;

  v20[1] = v9;
  v20[2] = v11;
  sub_2589BFF58(v12, v13, v14);
  v15 = sub_258B01B44();
  v17 = v16;
  LOBYTE(v0) = v18;
  sub_258A84020();
  sub_2589C0238();
  sub_258B01D24();
  sub_2589BFFAC(v15, v17, v0 & 1);

  return result;
}

uint64_t sub_258A83E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_258A83F18(uint64_t result, double a2)
{
  v2 = 1.0;
  v3 = (a2 + 1.0) * 0.5;
  if (v3 >= 1.0)
  {
    if (result <= 1)
    {
      return 0;
    }
  }

  else
  {
    if (v3 < 0.0)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = v3;
    }

    if (result < 2)
    {
      return 0;
    }
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v5 = sub_258A8338C(1, 2 * result - 1, 2, result);
    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v4 = -1;
      v8 = INFINITY;
      do
      {
        v9 = vabdd_f64(*&v5[8 * v7 + 32], v2);
        if (v9 < v8)
        {
          v4 = v7;
        }

        v10 = v7 + 1;
        if (v9 < v8)
        {
          v8 = v9;
        }

        ++v7;
      }

      while (v6 != v10);
    }

    else
    {
      v4 = -1;
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_258A84020()
{
  if (!qword_27F96C858)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C858);
    }
  }
}

unint64_t sub_258A8407C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9702F0;
  if (!qword_27F9702F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9702F0);
  }

  return result;
}

void sub_258A84118()
{
  if (!qword_27F970300)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970300);
    }
  }
}

unint64_t sub_258A8416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970308;
  if (!qword_27F970308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970308);
  }

  return result;
}

unint64_t sub_258A841C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970310;
  if (!qword_27F970310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258A843D4()
{
  result = qword_27F970318;
  if (!qword_27F970318)
  {
    sub_258A84484(255);
    sub_2589C0238();
    sub_258A844EC(&qword_280DF8950, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970318);
  }

  return result;
}

void sub_258A84484(uint64_t a1)
{
  if (!qword_27F970320)
  {
    sub_258A84020();
    sub_258B017D4();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970320);
    }
  }
}

uint64_t sub_258A844EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258A84538(uint64_t a1, double a2)
{
  v2 = (a2 + 1.0) * 0.5;
  if (v2 >= 0.0 && v2 < 0.166666667)
  {
    v4 = 0.0;
    v9 = 1u;
  }

  else
  {
    v4 = 0.166666667;
    if (v2 >= 0.166666667 && v2 < 0.333333333)
    {
      v9 = 2u;
    }

    else
    {
      v4 = 0.5;
      if (v2 >= 0.333333333 && v2 < 0.5)
      {
        v9 = 3u;
        v4 = 0.333333333;
      }

      else if (v2 >= 0.5 && v2 < 0.666666667)
      {
        v9 = 4u;
      }

      else
      {
        v4 = 0.666666667;
        if (v2 >= 0.666666667 && v2 < 0.833333333)
        {
          v9 = 5u;
        }

        else
        {
          v4 = 0.833333333;
          v9 = 6u;
          if (v2 < 0.833333333 || v2 >= 1.0)
          {
            swift_getAtKeyPath();
            return;
          }
        }
      }
    }
  }

  v11 = (v2 - v4) * 6.0;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v12 = byte_2869D4BF0[v9];
  v13 = v11 >= 0.0;
  if (v11 > 1.0)
  {
    v13 = 0;
  }

  if (byte_2869D4BF0[v9] <= 2u)
  {
    if (!byte_2869D4BF0[v9])
    {
      if (v13)
      {
        goto LABEL_48;
      }

      goto LABEL_60;
    }

    goto LABEL_41;
  }

  if (byte_2869D4BF0[v9] > 4u)
  {
    if (v12 != 5)
    {
      if (!v13)
      {
        goto LABEL_60;
      }

      goto LABEL_48;
    }

LABEL_41:
    if (!v13)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  if (v12 == 3)
  {
    if (v13)
    {
      goto LABEL_48;
    }

LABEL_60:
    v28 = 0.0;
    v29 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    goto LABEL_61;
  }

  if (!v13)
  {
    goto LABEL_60;
  }

LABEL_48:
  if (CGColorGetNumberOfComponents(v32) != 4)
  {
    goto LABEL_60;
  }

  if (CGColorGetNumberOfComponents(v31) != 4)
  {
    goto LABEL_60;
  }

  v14 = sub_258B02E04();
  if (!v14)
  {
    goto LABEL_60;
  }

  v15 = v14;
  v16 = sub_258B02E04();
  if (!v16)
  {

    goto LABEL_60;
  }

  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
    goto LABEL_63;
  }

  v18 = v16;
  v19 = *(v16 + 16);
  if (!v19)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v17 == 1)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v19 == 1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v17 < 3)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  v23 = *(v16 + 32);
  v22 = *(v16 + 40);
  v30 = *(v15 + 48);

  if (*(v18 + 16) >= 3uLL)
  {
    v24 = (1.0 - v11) * v20 + v11 * v23;
    v25 = *(v18 + 48);

    v26 = (1.0 - v11) * v30 + v11 * v25;
    v27 = 1.0;
    v28 = v24;
    v29 = (1.0 - v11) * v21 + v11 * v22;
LABEL_61:
    CGColorCreateGenericRGB(v28, v29, v26, v27);

    return;
  }

LABEL_67:
  __break(1u);
}

void sub_258A848C0(CGColor *a1, CGColor *a2, double a3)
{
  if (CGColorGetNumberOfComponents(a1) == 4 && CGColorGetNumberOfComponents(a2) == 4 && a3 >= 0.0 && a3 <= 1.0)
  {
    v5 = sub_258B02E04();
    if (v5)
    {
      v6 = v5;
      v7 = sub_258B02E04();
      if (v7)
      {
        v8 = *(v6 + 16);
        if (v8)
        {
          v9 = v7;
          v10 = *(v7 + 16);
          if (v10)
          {
            v11 = (1.0 - *(v7 + 32)) * a3;
            if (1.0 - (1.0 - *(v6 + 32) + v11) < 0.0)
            {
              v12 = 0.0;
            }

            else
            {
              v12 = 1.0 - (1.0 - *(v6 + 32) + v11);
            }

            if (v8 != 1)
            {
              if (v10 != 1)
              {
                v13 = (1.0 - *(v7 + 40)) * a3;
                if (1.0 - (1.0 - *(v6 + 40) + v13) < 0.0)
                {
                  v14 = 0.0;
                }

                else
                {
                  v14 = 1.0 - (1.0 - *(v6 + 40) + v13);
                }

                if (v8 >= 3)
                {
                  v15 = *(v6 + 48);

                  if (*(v9 + 16) >= 3uLL)
                  {
                    v17 = *(v9 + 48);

                    v16 = 1.0 - v15;
                    if (1.0 - (v16 + (1.0 - v17) * a3) < 0.0)
                    {
                      v18 = 0.0;
                    }

                    else
                    {
                      v18 = 1.0 - (v16 + (1.0 - v17) * a3);
                    }

                    v19 = 1.0;
                    v20 = v12;
                    v21 = v14;
                    goto LABEL_25;
                  }

LABEL_33:
                  __break(1u);
                  return;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }
    }
  }

  v20 = 0.0;
  v21 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
LABEL_25:

  CGColorCreateGenericRGB(v20, v21, v18, v19);
}

void sub_258A84A6C(CGColor *a1, CGColor *a2, double a3)
{
  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    goto LABEL_15;
  }

  if (CGColorGetNumberOfComponents(a2) != 4)
  {
    goto LABEL_15;
  }

  if (a3 < 0.0)
  {
    goto LABEL_15;
  }

  if (a3 > 1.0)
  {
    goto LABEL_15;
  }

  v5 = sub_258B02E04();
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = sub_258B02E04();
  if (!v7)
  {

LABEL_15:
    v20 = 0.0;
    v21 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_16;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v7;
  v10 = *(v7 + 16);
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(v6 + 32);
  v12 = *(v6 + 40);
  v14 = *(v7 + 32);
  v13 = *(v7 + 40);
  v15 = *(v6 + 48);

  if (*(v9 + 16) < 3uLL)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v16 = (1.0 - a3) * v12 + v13 * a3;
  v17 = *(v9 + 48);

  v18 = (1.0 - a3) * v15 + v17 * a3;
  v19 = 1.0;
  v20 = (1.0 - a3) * v11 + v14 * a3;
  v21 = v16;
LABEL_16:

  CGColorCreateGenericRGB(v20, v21, v18, v19);
}

uint64_t _s12EntryDayViewVMa(uint64_t a1)
{
  result = qword_27F970330;
  if (!qword_27F970330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A84C58(uint64_t a1)
{
  sub_258A86CC4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258A86CC4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258A86CC4(319, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2589FCE08();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A84DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF3E0];
  v9 = MEMORY[0x277CDF458];
  sub_258A86CC4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  sub_258A86A44(v2, &v16 - v11, &qword_27F96C908, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B006A4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_258B02E94();
    v15 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 sub_258A84FE4@<Q0>(uint64_t a1@<X8>)
{
  v3 = _s6StylesV5DailyVMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A865F4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_258B01194();
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_258A86820(0);
  sub_258A85244(v1, &v12[*(v13 + 44)]);
  _s12EntryDayViewVMa(0);
  sub_258AC1060(v9);
  sub_258A86B24(&v9[*(v7 + 64)], v5, _s6StylesV5DailyVMa);
  sub_258A868B8(v9, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258A868B8(v5, _s6StylesV5DailyVMa);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A86C5C(v12, a1, sub_258A865F4);
  sub_258A86918(0);
  v15 = a1 + *(v14 + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}