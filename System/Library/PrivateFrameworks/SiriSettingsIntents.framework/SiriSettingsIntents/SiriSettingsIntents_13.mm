uint64_t sub_268E7C304()
{
  v5 = 0;
  v5 = *v0;
  v2 = *sub_268E7C8DC();

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
  sub_268D28B4C();
  sub_268D288C8();
  v3 = sub_268F9AFC4();
  sub_268CD7930(&v4);
  return v3 & 1;
}

void static BinarySettingIdentifier.allCases.getter()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  v0[10] = 10;
  v0[11] = 11;
  v0[12] = 12;
  v0[13] = 13;
  v0[14] = 14;
  v0[15] = 15;
  v0[16] = 16;
  v0[17] = 17;
  v0[18] = 18;
  v0[19] = 19;
  v0[20] = 20;
  v0[21] = 21;
  v0[22] = 22;
  v0[23] = 23;
  v0[24] = 24;
  v0[25] = 25;
  v0[26] = 26;
  v0[27] = 27;
  v0[28] = 28;
  v0[29] = 29;
  v0[30] = 30;
  v0[31] = 31;
  qmemcpy(v0 + 32, " !#$%&'()*+,-./0123456789:;<=>?@", 33);
  sub_268CD0F7C();
}

void sub_268E7C65C()
{
  sub_268F9B734();
  *v0 = 32;
  v0[1] = 5;
  v0[2] = 6;
  v0[3] = 19;
  v0[4] = 37;
  sub_268CD0F7C();
  qword_2802F1540 = v1;
}

unint64_t sub_268E7C6D0()
{
  v2 = qword_2802DD980;
  if (!qword_2802DD980)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DD980);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268E7C734()
{
  v1 = *sub_268E79858();

  return v1;
}

void sub_268E7C764()
{
  sub_268F9B734();
  *v0 = 1;
  v0[1] = 3;
  v0[2] = 2;
  sub_268CD0F7C();
  qword_2802F1548 = v1;
}

uint64_t *sub_268E7C7C8()
{
  if (qword_2802DB718 != -1)
  {
    swift_once();
  }

  return &qword_2802F1548;
}

uint64_t sub_268E7C828()
{
  v1 = *sub_268E7C7C8();

  return v1;
}

void sub_268E7C858()
{
  sub_268F9B734();
  *v0 = 52;
  v0[1] = 53;
  v0[2] = 20;
  v0[3] = 51;
  v0[4] = 12;
  v0[5] = 28;
  v0[6] = 48;
  sub_268CD0F7C();
  qword_2802F1550 = v1;
}

uint64_t *sub_268E7C8DC()
{
  if (qword_2802DB720 != -1)
  {
    swift_once();
  }

  return &qword_2802F1550;
}

uint64_t sub_268E7C93C()
{
  v1 = *sub_268E7C8DC();

  return v1;
}

void sub_268E7C96C(void *a1@<X8>)
{
  switch(*v1)
  {
    case 1:
    case 2:
    case 3:
      v98 = sub_268F9AEF4();
      v99 = v5;
      v6 = sub_268F9AEF4();
      sub_268E7D668(v98, v99, 0, 0, v6, v7, v110);
      v102 = v110[0];
      v103 = v110[1];
      v104 = v110[2];
      v105 = v110[3];
      v106 = v110[4];
      v107 = v110[5];
      break;
    case 5:
      v72 = sub_268F9AEF4();
      v73 = v44;
      v45 = sub_268F9AEF4();
      sub_268E7D668(v72, v73, 0, 0, v45, v46, v123);
      v102 = v123[0];
      v103 = v123[1];
      v104 = v123[2];
      v105 = v123[3];
      v106 = v123[4];
      v107 = v123[5];
      break;
    case 6:
      v74 = sub_268F9AEF4();
      v75 = v41;
      v42 = sub_268F9AEF4();
      sub_268E7D668(v74, v75, 0, 0, v42, v43, v122);
      v102 = v122[0];
      v103 = v122[1];
      v104 = v122[2];
      v105 = v122[3];
      v106 = v122[4];
      v107 = v122[5];
      break;
    case 8:
      v96 = sub_268F9AEF4();
      v97 = v8;
      v9 = sub_268F9AEF4();
      sub_268E7D668(v96, v97, 0, 0, v9, v10, v111);
      v102 = v111[0];
      v103 = v111[1];
      v104 = v111[2];
      v105 = v111[3];
      v106 = v111[4];
      v107 = v111[5];
      break;
    case 0x13:
      v66 = sub_268F9AEF4();
      v67 = v53;
      v54 = sub_268F9AEF4();
      sub_268E7D668(v66, v67, 0, 0, v54, v55, v126);
      v102 = v126[0];
      v103 = v126[1];
      v104 = v126[2];
      v105 = v126[3];
      v106 = v126[4];
      v107 = v126[5];
      break;
    case 0x14:
      v64 = sub_268F9AEF4();
      v65 = v56;
      v57 = sub_268F9AEF4();
      sub_268E7D668(v64, v65, 0, 0, v57, v58, v127);
      v102 = v127[0];
      v103 = v127[1];
      v104 = v127[2];
      v105 = v127[3];
      v106 = v127[4];
      v107 = v127[5];
      break;
    case 0x16:
      v94 = sub_268F9AEF4();
      v95 = v11;
      v12 = sub_268F9AEF4();
      sub_268E7D668(v94, v95, v12, v13, 0, 0, v112);
      v102 = v112[0];
      v103 = v112[1];
      v104 = v112[2];
      v105 = v112[3];
      v106 = v112[4];
      v107 = v112[5];
      break;
    case 0x1F:
      v76 = sub_268F9AEF4();
      v77 = v38;
      v39 = sub_268F9AEF4();
      sub_268E7D668(v76, v77, 0, 0, v39, v40, v121);
      v102 = v121[0];
      v103 = v121[1];
      v104 = v121[2];
      v105 = v121[3];
      v106 = v121[4];
      v107 = v121[5];
      break;
    case 0x20:
      v70 = sub_268F9AEF4();
      v71 = v47;
      v48 = sub_268F9AEF4();
      sub_268E7D668(v70, v71, 0, 0, v48, v49, v124);
      v102 = v124[0];
      v103 = v124[1];
      v104 = v124[2];
      v105 = v124[3];
      v106 = v124[4];
      v107 = v124[5];
      break;
    case 0x25:
      v68 = sub_268F9AEF4();
      v69 = v50;
      v51 = sub_268F9AEF4();
      sub_268E7D668(v68, v69, 0, 0, v51, v52, v125);
      v102 = v125[0];
      v103 = v125[1];
      v104 = v125[2];
      v105 = v125[3];
      v106 = v125[4];
      v107 = v125[5];
      break;
    case 0x26:
      v78 = sub_268F9AEF4();
      v79 = v35;
      v36 = sub_268F9AEF4();
      sub_268E7D668(v78, v79, 0, 0, v36, v37, v120);
      v102 = v120[0];
      v103 = v120[1];
      v104 = v120[2];
      v105 = v120[3];
      v106 = v120[4];
      v107 = v120[5];
      break;
    case 0x2D:
      v100 = sub_268F9AEF4();
      v101 = v2;
      v3 = sub_268F9AEF4();
      sub_268E7D668(v100, v101, v3, v4, 0, 0, v109);
      v102 = v109[0];
      v103 = v109[1];
      v104 = v109[2];
      v105 = v109[3];
      v106 = v109[4];
      v107 = v109[5];
      break;
    case 0x34:
      v62 = sub_268F9AEF4();
      v63 = v59;
      v60 = sub_268F9AEF4();
      sub_268E7D668(v62, v63, 0, 0, v60, v61, v128);
      v102 = v128[0];
      v103 = v128[1];
      v104 = v128[2];
      v105 = v128[3];
      v106 = v128[4];
      v107 = v128[5];
      break;
    case 0x39:
      v92 = sub_268F9AEF4();
      v93 = v14;
      v15 = sub_268F9AEF4();
      sub_268E7D668(v92, v93, v15, v16, 0, 0, v113);
      v102 = v113[0];
      v103 = v113[1];
      v104 = v113[2];
      v105 = v113[3];
      v106 = v113[4];
      v107 = v113[5];
      break;
    case 0x3A:
      v90 = sub_268F9AEF4();
      v91 = v17;
      v18 = sub_268F9AEF4();
      sub_268E7D668(v90, v91, v18, v19, 0, 0, v114);
      v102 = v114[0];
      v103 = v114[1];
      v104 = v114[2];
      v105 = v114[3];
      v106 = v114[4];
      v107 = v114[5];
      break;
    case 0x3B:
      v88 = sub_268F9AEF4();
      v89 = v20;
      v21 = sub_268F9AEF4();
      sub_268E7D668(v88, v89, v21, v22, 0, 0, v115);
      v102 = v115[0];
      v103 = v115[1];
      v104 = v115[2];
      v105 = v115[3];
      v106 = v115[4];
      v107 = v115[5];
      break;
    case 0x3C:
      v86 = sub_268F9AEF4();
      v87 = v23;
      v24 = sub_268F9AEF4();
      sub_268E7D668(v86, v87, v24, v25, 0, 0, v116);
      v102 = v116[0];
      v103 = v116[1];
      v104 = v116[2];
      v105 = v116[3];
      v106 = v116[4];
      v107 = v116[5];
      break;
    case 0x3D:
      v84 = sub_268F9AEF4();
      v85 = v26;
      v27 = sub_268F9AEF4();
      sub_268E7D668(v84, v85, v27, v28, 0, 0, v117);
      v102 = v117[0];
      v103 = v117[1];
      v104 = v117[2];
      v105 = v117[3];
      v106 = v117[4];
      v107 = v117[5];
      break;
    case 0x3E:
      v82 = sub_268F9AEF4();
      v83 = v29;
      v30 = sub_268F9AEF4();
      sub_268E7D668(v82, v83, v30, v31, 0, 0, v118);
      v102 = v118[0];
      v103 = v118[1];
      v104 = v118[2];
      v105 = v118[3];
      v106 = v118[4];
      v107 = v118[5];
      break;
    case 0x3F:
      v80 = sub_268F9AEF4();
      v81 = v32;
      v33 = sub_268F9AEF4();
      sub_268E7D668(v80, v81, v33, v34, 0, 0, v119);
      v102 = v119[0];
      v103 = v119[1];
      v104 = v119[2];
      v105 = v119[3];
      v106 = v119[4];
      v107 = v119[5];
      break;
    default:
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      break;
  }

  *a1 = v102;
  a1[1] = v103;
  a1[2] = v104;
  a1[3] = v105;
  a1[4] = v106;
  a1[5] = v107;
}

uint64_t sub_268E7D668@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void *sub_268E7D684@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = sub_268F9A9C4();
  (*(*(v4 - 8) + 32))(a4, a1);
  v8 = type metadata accessor for SFSymbolStructSpeakableString(0);
  sub_268D84F40(a2, (a4 + *(v8 + 20)));
  return sub_268D84F40(a3, (a4 + *(v8 + 24)));
}

id sub_268E7D72C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t type metadata accessor for SFSymbolStructSpeakableString(uint64_t a1)
{
  v2 = qword_2802DD9A8;
  if (!qword_2802DD9A8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_268E7D7F8(void *a1)
{
}

uint64_t sub_268E7D97C@<X0>(uint64_t *a1@<X8>)
{
  result = BinarySettingIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268E7DA20(uint64_t a1, uint64_t a2)
{
  sub_268E7DA78();
  sub_268E7DAF4();
  sub_268D28AD4();
  return sub_268F9A4A4();
}

unint64_t sub_268E7DA78()
{
  v2 = qword_2802DD990;
  if (!qword_2802DD990)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E7DAF4()
{
  v2 = qword_2802DD998;
  if (!qword_2802DD998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD998);
    return WitnessTable;
  }

  return v2;
}

double sub_268E7DB70(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;

  return result;
}

double sub_268E7DBBC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_268E7DC08(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t sub_268E7DCB4(uint64_t a1)
{
  v11 = a1;
  v10 = sub_268F9A9C4();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v10, v11, v10, v1);
  v6 = &v4 - v5;
  (*(v8 + 16))(v2);
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_268E7DE00(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SFSymbolStructSpeakableString(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268E7DEE8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for SFSymbolStructSpeakableString(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 24)));
  return sub_268D28588(v11);
}

unint64_t sub_268E7DFE0()
{
  v2 = qword_2802DD9A0;
  if (!qword_2802DD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC090, &qword_268F9D9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for BinarySettingIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xBF)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 64) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 191;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 65;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BinarySettingIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xBF)
  {
    v5 = ((a3 + 64) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xBF)
  {
    v4 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 64;
    }
  }

  return result;
}

uint64_t sub_268E7E428(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268E7E540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_268E7E77C(uint64_t a1)
{
  v4 = sub_268F9A9C4();
  if (v1 <= 0x3F)
  {
    v4 = sub_268D810E4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t *sub_268E7E854()
{
  if (qword_280FE2D68 != -1)
  {
    swift_once();
  }

  return &qword_280FE8000;
}

uint64_t sub_268E7E8B4()
{
  type metadata accessor for GetAXColorFiltersColorTintHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8000 = result;
  return result;
}

uint64_t sub_268E7E91C()
{
  v1 = *sub_268E7E854();

  return v1;
}

double sub_268E7E94C(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXColorFiltersColorTintHandler handling intent", 49, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAC34();
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
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E7EDD0, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E7EB68(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3ED64();

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

uint64_t *sub_268E7EE28()
{
  if (qword_2802DB738 != -1)
  {
    swift_once();
  }

  return &qword_2802F1578;
}

uint64_t sub_268E7EEE4()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F1558 = result;
  qword_2802F1560 = v4;
  qword_2802F1568 = v5;
  qword_2802F1570 = v6;
  return result;
}

uint64_t *sub_268E7EF50()
{
  if (qword_2802DB730 != -1)
  {
    swift_once();
  }

  return &qword_2802F1558;
}

uint64_t sub_268E7EFB0()
{
  v1 = *sub_268E7EF50();

  return v1;
}

uint64_t sub_268E7F010()
{
  result = sub_268F9AEF4();
  qword_2802F1578 = result;
  qword_2802F1580 = v1;
  return result;
}

uint64_t sub_268E7F054()
{
  v1 = *sub_268E7EE28();

  return v1;
}

uint64_t sub_268E7F090(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  return v8;
}

BOOL sub_268E7F114(void *a1, void *a2)
{
  v4 = a1[2];
  v7 = a1[3];

  v5 = a2[2];
  v6 = a2[3];

  v10 = MEMORY[0x26D62DB50](v4, v7, v5, v6);

  v3 = (v10 & 1) != 0 && a1[4] == a2[4];

  return v3;
}

uint64_t sub_268E7F214(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268E7F414()
{
  v2 = qword_2802DD9B8;
  if (!qword_2802DD9B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E7F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268E7F214(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268E7F5B8()
{
  v2 = qword_2802DD9C0;
  if (!qword_2802DD9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E7F6D8(uint64_t a1)
{
  v11 = a1;
  v28 = 0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA00, &unk_268FA62D0);
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v17 = v9 - v14;
  v28 = v5;
  v27 = v1;
  v15 = v5[3];
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v15);
  sub_268E7F5B8();
  sub_268F9B844();
  v6 = v19;
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);

  v26 = 0;
  sub_268F9B6A4();
  v23 = v6;
  v24 = v6;
  if (v6)
  {
    v9[1] = v24;

    return (*(v12 + 8))(v17, v22);
  }

  else
  {

    v7 = v23;
    v25 = 1;
    sub_268F9B6D4();
    v9[3] = v7;
    v10 = v7;
    if (v7)
    {
      v9[0] = v10;
    }

    return (*(v12 + 8))(v17, v22);
  }
}

uint64_t sub_268E7F934(void *a1)
{
  swift_allocObject();
  v5 = sub_268E7F9C0(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268E7F9C0(void *a1)
{
  v28 = a1;
  v42 = 0;
  v41 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD9F8, &qword_268FA62C8);
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v2, v3, v4);
  v33 = v15 - v32;
  v42 = v5;
  v41 = v1;
  v35 = v5[3];
  v36 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v35);
  sub_268E7F5B8();
  v6 = v34;
  sub_268F9B834();
  v37 = v6;
  v38 = v6;
  if (v6)
  {
    v18 = v38;
    v19 = 0;
    v16 = 0;
    v17 = v38;
    v15[3] = v27;
    v15[2] = v27;
    type metadata accessor for ToggleBinarySetting();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v15[1];
  }

  else
  {
    v40 = 0;
    v7 = sub_268F9B614();
    v23 = 0;
    v24 = v7;
    v25 = v8;
    v26 = 0;
    v9 = v27;
    *(v27 + 16) = v7;
    *(v9 + 24) = v8;
    v39 = 1;
    v10 = sub_268F9B644();
    v20 = 0;
    v21 = v10;
    v22 = 0;
    v11 = v29;
    v12 = v33;
    v13 = v30;
    *(v27 + 32) = v21;
    (*(v13 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v27;
  }
}

uint64_t sub_268E7FD14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268E7F934(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268E7FE40()
{
  v2 = qword_2802DD9C8;
  if (!qword_2802DD9C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E7FED4()
{
  v2 = qword_2802DD9D0;
  if (!qword_2802DD9D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E7FF68()
{
  v2 = qword_2802DD9D8;
  if (!qword_2802DD9D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E7FFE4(void *a1)
{
  a1[1] = sub_268E80028();
  a1[2] = sub_268E800A8();
  result = sub_268E80128();
  a1[3] = result;
  return result;
}

unint64_t sub_268E80028()
{
  v2 = qword_2802DD9E0;
  if (!qword_2802DD9E0)
  {
    type metadata accessor for ToggleBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E800A8()
{
  v2 = qword_2802DD9E8;
  if (!qword_2802DD9E8)
  {
    type metadata accessor for ToggleBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E80128()
{
  v2 = qword_2802DD9F0;
  if (!qword_2802DD9F0)
  {
    type metadata accessor for ToggleBinarySetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DD9F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E80204()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_268E80254(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_268E802B4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 32, a1);
  return swift_endAccess();
}

uint64_t sub_268E80308(void *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  sub_268CDF978(v4, (v1 + 32));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E80378@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_268CDE730(v1 + 72, a1);
  return swift_endAccess();
}

uint64_t sub_268E803CC(void *a1)
{
  sub_268CDE730(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 72));
  sub_268CDF978(v4, (v1 + 72));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_268E8043C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  swift_beginAccess();
  sub_268E80B1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_268E80498(uint64_t a1)
{
  v11 = a1;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v8 = &v7 - v7;
  sub_268E80B1C(v5, &v7 - v7);
  v9 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  v10 = &v12;
  swift_beginAccess();
  sub_268E80C44(v8, v9);
  swift_endAccess();
  return sub_268E80E6C(v11);
}

uint64_t sub_268E80568()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_268E805D0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E80658()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_268E806C4(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();

  return result;
}

uint64_t sub_268E80744()
{
  v2 = (v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_268E807A0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_268E80824()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);

  return v2;
}

uint64_t sub_268E80868()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);

  return v2;
}

char *sub_268E808AC(uint64_t a1, void *a2, void *a3)
{
  v25 = 0;
  v28 = a1;
  v27 = a2;
  v26 = a3;
  sub_268D2DF48();
  sub_268F9AEF4();
  sub_268F9AEF4();
  *(v21 + 2) = sub_268F9B374();
  v14 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction;
  v3 = sub_268F99884();
  (*(*(v3 - 8) + 56))(&v21[v14], 1);
  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent] = 0;
  v15 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId;
  v4 = sub_268F9AEF4();
  v5 = &v21[v15];
  *v5 = v4;
  v5[1] = v6;
  *&v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state] = 0;
  v16 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType;
  v7 = sub_268F9AEF4();
  v8 = &v21[v16];
  *v8 = v7;
  v8[1] = v9;
  v17 = OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute;
  v10 = sub_268F9AEF4();
  v11 = &v21[v17];
  *v11 = v10;
  v11[1] = v12;

  *(v21 + 3) = a1;
  sub_268CDE730(a2, v24);
  sub_268CDF978(v24, v21 + 32);
  sub_268CDE730(a3, v23);
  sub_268CDF978(v23, v21 + 72);
  sub_268F99674();
  sub_268CDF978(v22, &v21[OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender]);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);

  return v21;
}

void *sub_268E80B1C(const void *a1, void *a2)
{
  v6 = sub_268F99884();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_268E80C44(const void *a1, void *a2)
{
  v7 = sub_268F99884();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA10, &qword_268FA62E0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_268E80E6C(uint64_t a1)
{
  v3 = sub_268F99884();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268E80F14(uint64_t a1)
{
  v97 = a1;
  v2 = v1;
  v108 = v2;
  v98 = "UndoBinarySettingsFlow: accepting input.";
  v99 = &dword_268CBE000;
  v100 = "UndoBinarySettingsFlow: binary value is unknown.";
  v139 = 0;
  v138 = 0;
  v140 = 0;
  v137 = 0;
  v134 = 0;
  v130 = 0;
  v131 = 0;
  v118 = 0;
  v101 = 0;
  v102 = sub_268F99C24();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v106 = &v24[-v105];
  v140 = &v24[-v105];
  v112 = sub_268F99C34();
  v109 = *(v112 - 8);
  v110 = v112 - 8;
  v107 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112, v7, v8, v9);
  v111 = &v24[-v107];
  v139 = a1;
  v138 = v108;
  sub_268F99BE4();
  if ((*(v109 + 88))(v111, v112) != *MEMORY[0x277D5C150])
  {
    (*(v109 + 8))(v111, v112);
    v60 = 0;
    return v60 & 1;
  }

  v10 = v106;
  (*(v109 + 96))(v111, v112);
  (*(v103 + 32))(v10, v111, v102);
  v140 = v10;
  v96 = sub_268F99C14();
  if (!v96)
  {
    goto LABEL_35;
  }

  v95 = v96;
  v93 = v96;
  v137 = v96;
  v11 = sub_268E4F2C8(0);
  v94 = v135;
  v135[0] = v11;
  v135[1] = v12;
  sub_268F9ADC4();
  sub_268CD9D30(v94);
  if (v136[3])
  {
    if (swift_dynamicCast())
    {
      v91 = v113;
      v92 = 0;
    }

    else
    {
      v91 = 0;
      v92 = 1;
    }

    v89 = v91;
    v90 = v92;
  }

  else
  {
    sub_268D28414(v136);
    v89 = 0;
    v90 = 1;
  }

  v88 = v89;
  if ((v90 & 1) != 0 || ((v87 = v88, v85 = v88, v134 = v88, v13 = sub_268E4F2C8(1), v86 = v132, v132[0] = v13, v132[1] = v14, sub_268F9ADC4(), sub_268CD9D30(v86), !v133[3]) ? (sub_268D28414(v133), v81 = 0, v82 = 0) : ((swift_dynamicCast() & 1) == 0 ? (v83 = 0, v84 = 0) : (v83 = v114, v84 = v115), v81 = v83, v82 = v84), v79 = v82, v80 = v81, !v82))
  {

LABEL_35:
    (*(v103 + 8))(v106, v102);
    v60 = 0;
    return v60 & 1;
  }

  v77 = v80;
  v78 = v79;
  v75 = v79;
  v73 = v80;
  v130 = v80;
  v131 = v79;

  v74 = (v108 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  v76 = &v129;
  swift_beginAccess();
  v15 = v74;
  v16 = v75;
  *v74 = v73;
  v15[1] = v16;

  swift_endAccess();
  sub_268CD4500();
  v127 = v17;
  v128 = v18 & 1;
  if (v18)
  {
    v72 = 0;
  }

  else
  {
    v72 = v127;
  }

  v62 = v72;
  v64 = &qword_2802DD000;
  v61 = (v108 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
  v63 = &v126;
  v65 = 0;
  swift_beginAccess();
  *v61 = v62;
  swift_endAccess();
  v66 = (v108 + v64[325]);
  v67 = &v125;
  swift_beginAccess();
  v68 = *v66;
  swift_endAccess();
  v71 = &v124;
  v124 = v68;
  v69 = &v123;
  v123 = 0;
  v70 = type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v59 = *(v108 + 16);
    MEMORY[0x277D82BE0](v59);
    v57 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v58 = sub_268F9B734();
    sub_268F9AC04(v100, 48, 2, v99, v59, v57);

    MEMORY[0x277D82BD8](v59);

    (*(v103 + 8))(v106, v102);
    v60 = 0;
  }

  else
  {
    v53 = sub_268F99C04();
    v55 = v19;
    v20 = sub_268E4F23C(0);
    v54 = v21;
    v56 = MEMORY[0x26D62DB50](v53, v55, v20);

    if (v56)
    {
      v40 = *(v108 + 16);
      MEMORY[0x277D82BE0](v40);
      v38 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v50 = 0;
      v39 = sub_268F9B734();
      sub_268F9AC04(v98, 40, 2, v99, v40, v38);

      MEMORY[0x277D82BD8](v40);
      v41 = sub_268D291D4();
      v42 = (v108 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
      v45 = &v122;
      v46 = 32;
      v47 = 0;
      swift_beginAccess();
      v43 = *v42;
      v44 = v42[1];

      swift_endAccess();
      v48 = v108 + 32;
      v49 = &v121;
      swift_beginAccess();
      v52 = v120;
      sub_268CDE730(v48, v120);
      swift_endAccess();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD758, &qword_268FA55C0);
      sub_268E62B3C();
      if (swift_dynamicCast())
      {
        v37 = v119;
      }

      else
      {
        v37 = 0;
      }

      v31 = 0;
      v36 = sub_268F2B620(v43, v44, v37, 0);
      v118 = v36;
      sub_268CD7620();
      MEMORY[0x277D82BE0](v36);
      v28 = (v108 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
      v29 = &v117;
      v32 = 0;
      swift_beginAccess();
      v30 = *v28;
      swift_endAccess();
      v34 = sub_268DA95CC(v36, v30, v31);
      v33 = (v108 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
      v35 = &v116;
      swift_beginAccess();
      v22 = *v33;
      *v33 = v34;
      MEMORY[0x277D82BD8](v22);
      swift_endAccess();
      MEMORY[0x277D82BD8](v36);

      (*(v103 + 8))(v106, v102);
      v60 = 1;
    }

    else
    {
      v27 = *(v108 + 16);
      MEMORY[0x277D82BE0](v27);
      v25 = sub_268F9B284();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v26 = sub_268F9B734();
      sub_268F9AC04(v98, 40, 2, v99, v27, v25);

      MEMORY[0x277D82BD8](v27);

      (*(v103 + 8))(v106, v102);
      v60 = 1;
    }
  }

  return v60 & 1;
}

uint64_t sub_268E81A74(uint64_t a1)
{
  *(v2 + 688) = v1;
  *(v2 + 680) = a1;
  *(v2 + 600) = v2;
  *(v2 + 608) = 0;
  *(v2 + 616) = 0;
  *(v2 + 584) = 0;
  *(v2 + 592) = 0;
  *(v2 + 912) = 0;
  *(v2 + 648) = 0;
  *(v2 + 664) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0);
  *(v2 + 696) = swift_task_alloc();
  v3 = sub_268F999F4();
  *(v2 + 704) = v3;
  *(v2 + 712) = *(v3 - 8);
  *(v2 + 720) = swift_task_alloc();
  v4 = sub_268F99C74();
  *(v2 + 728) = v4;
  *(v2 + 736) = *(v4 - 8);
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DD760, qword_268FA55D0);
  *(v2 + 776) = swift_task_alloc();
  v5 = sub_268F99864();
  *(v2 + 784) = v5;
  *(v2 + 792) = *(v5 - 8);
  *(v2 + 800) = swift_task_alloc();
  *(v2 + 608) = v1;

  return MEMORY[0x2822009F8](sub_268E81D30, 0);
}

uint64_t sub_268E81D30()
{
  v64 = v0[100];
  v62 = v0[99];
  v63 = v0[98];
  v65 = v0[97];
  v66 = v0[86];
  v0[75] = v0;
  sub_268CDE730(v66 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[101] = sub_268F99744();
  v1 = *MEMORY[0x277D5BB08];
  v2 = *(v62 + 104);
  v0[102] = v2;
  v0[103] = (v62 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v2(v64, v1, v63);

  v3 = sub_268F996B4();
  v0[104] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[105] = v5;
  v0[106] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v65, 1);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v67 = (v66 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent);
  swift_beginAccess();
  v68 = *v67;
  v0[107] = *v67;
  MEMORY[0x277D82BE0](v68);
  swift_endAccess();
  if (!v68)
  {
    goto LABEL_19;
  }

  *(v61 + 616) = v68;
  *(v61 + 624) = v68;
  v6 = sub_268CD7620();
  v60._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetBinarySettingIntent);
  v60._object = v7;
  *(v61 + 864) = v7;
  if (!v7)
  {
    MEMORY[0x277D82BD8](v68);
LABEL_19:
    v23 = *(*(v61 + 688) + 16);
    MEMORY[0x277D82BE0](v23);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("UndoBinarySettingFlow execute error, missing intent or settingIdentifier", 72, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    v19 = sub_268F9AEF4();
    sub_268E83BB0(v19, v20);

    sub_268F998F4();
    goto LABEL_20;
  }

  *(v61 + 584) = v60._countAndFlagsBits;
  *(v61 + 592) = v7;

  BinarySettingIdentifier.init(rawValue:)(v60);
  if (v69 == 65)
  {
    goto LABEL_18;
  }

  *(v61 + 912) = v69;
  sub_268F7AD98();

  sub_268F7C430();

  if (!*(v61 + 120))
  {
    sub_268D28414((v61 + 96));
LABEL_18:
    v25 = *(*(v61 + 688) + 16);
    MEMORY[0x277D82BE0](v25);
    v24 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("UndoBinarySettingFlow execute error, can not get Handler", 56, 2, &dword_268CBE000, v25, v24);

    MEMORY[0x277D82BD8](v25);
    v17 = sub_268F9AEF4();
    sub_268E83BB0(v17, v18);

    sub_268F998F4();

    MEMORY[0x277D82BD8](v68);
LABEL_20:

    v21 = *(*(v61 + 600) + 8);

    return v21();
  }

  sub_268CDF978((v61 + 96), (v61 + 56));
  v58 = *(v61 + 80);
  v59 = *(v61 + 88);
  __swift_project_boxed_opaque_existential_1((v61 + 56), v58);
  if ((*(v59 + 16))(v68, v58))
  {
    v53 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v54 = *v8;
    MEMORY[0x277D82BE0](*v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v52 = v9;
    sub_268CDE730(v61 + 56, v61 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
    v50 = sub_268F9AE64();
    v51 = v10;
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = sub_268CDD224();
    *v52 = v50;
    v52[1] = v51;
    sub_268CD0F7C();
    sub_268F9AC14(v53, &dword_268CBE000, v54, "%@ handling intent in main thread", 33, 2);

    MEMORY[0x277D82BD8](v54);
    v55 = *(v61 + 80);
    v56 = *(v61 + 88);
    __swift_project_boxed_opaque_existential_1((v61 + 56), v55);
    v57 = (*(v56 + 32) + **(v56 + 32));
    v11 = swift_task_alloc();
    *(v61 + 872) = v11;
    *v11 = *(v61 + 600);
    v11[1] = sub_268E82F6C;

    return v57(v68, v55, v56);
  }

  else
  {
    v47 = *(v61 + 768);
    v46 = *(v61 + 760);
    v49 = *(v61 + 752);
    v48 = *(v61 + 720);
    v44 = *(v61 + 688);
    v36 = *(v61 + 80);
    v37 = *(v61 + 88);
    __swift_project_boxed_opaque_existential_1((v61 + 56), v36);

    sub_268CDE730(v61 + 56, v61 + 136);
    v38 = swift_allocObject();
    *(v38 + 16) = v44;
    sub_268CDF978((v61 + 136), (v38 + 24));
    (*(v37 + 8))(v68, sub_268E8433C, v38, v36);

    type metadata accessor for SettingsBinarySetting(0);
    v39 = (v44 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
    swift_beginAccess();
    v43 = *v39;
    v42 = v39[1];

    swift_endAccess();
    v40 = (v44 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_state);
    swift_beginAccess();
    v41 = *v40;
    swift_endAccess();
    *(v61 + 632) = v41;
    *(v61 + 640) = 1;
    type metadata accessor for INBinarySettingValue(0);
    sub_268CD925C();
    v13 = sub_268F9B754();
    v45 = SettingsBinarySetting.__allocating_init(settingId:value:)(v43, v42, v13 & 1);
    *(v61 + 888) = v45;
    *(v61 + 648) = v45;
    swift_beginAccess();

    swift_endAccess();
    sub_268D08D90(v45, *(v45 + OBJC_IVAR____TtC19SiriSettingsIntents21SettingsBinarySetting_value) & 1);

    sub_268D28A00(v47, v46);
    sub_268D2DFAC(v49, v61 + 656, v48);
    v32 = *(v61 + 744);
    v33 = *(v61 + 728);
    v28 = *(v61 + 720);
    v29 = *(v61 + 704);
    v26 = *(v61 + 696);
    v30 = *(v61 + 688);
    v31 = *(v61 + 736);
    v27 = *(v61 + 712);
    swift_beginAccess();
    sub_268CDE730(v30 + 32, v61 + 216);
    swift_endAccess();
    v14 = sub_268F999A4();
    (*(*(v14 - 8) + 56))(v26, 1);
    *(v61 + 256) = 0;
    *(v61 + 264) = 0;
    *(v61 + 272) = 0;
    *(v61 + 280) = 0;
    *(v61 + 288) = 0;
    sub_268E64994();
    sub_268CDD6D4();
    _swift_stdlib_has_malloc_size();
    sub_268D31B10();
    sub_268F998D4();

    sub_268D28414((v61 + 256));
    sub_268D34AC0(v26);
    __swift_destroy_boxed_opaque_existential_0((v61 + 216));
    (*(v27 + 8))(v28, v29);
    swift_beginAccess();
    sub_268CDE730(v30 + 72, v61 + 296);
    swift_endAccess();
    v34 = *(v61 + 320);
    v35 = *(v61 + 328);
    __swift_project_boxed_opaque_existential_1((v61 + 296), v34);
    *(v61 + 360) = v33;
    *(v61 + 368) = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v61 + 336));
    (*(v31 + 16))(boxed_opaque_existential_1, v32, v33);
    v16 = swift_task_alloc();
    *(v61 + 896) = v16;
    *v16 = *(v61 + 600);
    v16[1] = sub_268E831D8;

    return MEMORY[0x2821BB5D0](v61 + 336, v34, v35);
  }
}

uint64_t sub_268E82F6C(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 600) = *v1;
  *(v3 + 880) = a1;

  return MEMORY[0x2822009F8](sub_268E83088, 0);
}

uint64_t sub_268E83088()
{
  v1 = v0[110];
  v4 = v0[107];
  v0[75] = v0;
  MEMORY[0x277D82BD8](v1);
  sub_268F998F4();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[75] + 8);

  return v2();
}

uint64_t sub_268E831D8()
{
  v5 = *v1;
  v4 = (*v1 + 336);
  *(v5 + 600) = *v1;
  *(v5 + 904) = v0;

  if (v0)
  {
    v2 = sub_268E83664;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
    v2 = sub_268E83354;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E83354()
{
  v4 = v0[93];
  v3 = v0[92];
  v5 = v0[91];
  v0[75] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v3 + 8))(v4, v5);
  v13 = v0[107];
  v9 = v0[105];
  v8 = v0[104];
  v7 = v0[102];
  v10 = v0[100];
  v6 = v0[98];
  v11 = v0[97];
  v12 = v0[96];
  sub_268CDE730(v0[86] + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 22));
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v7(v10, *MEMORY[0x277D5BC10], v6);

  v9(v11, 1, 1, v8);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v12);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v13);

  v1 = *(v0[75] + 8);

  return v1();
}

uint64_t sub_268E83664()
{
  v9 = v0[93];
  v8 = v0[92];
  v10 = v0[91];
  v0[75] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  (*(v8 + 8))(v9, v10);
  v17 = v0[113];
  v11 = v0[86];
  v1 = v17;
  v0[83] = v17;
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
  sub_268F9AC04("UndoBinarySettingsFlow: unable to publish output with error: %@", 63, 2, &dword_268CBE000, v16, v15);

  MEMORY[0x277D82BD8](v16);
  v4 = sub_268F9AEF4();
  sub_268E83BB0(v4, v5);

  v25 = v0[107];
  v21 = v0[105];
  v20 = v0[104];
  v19 = v0[102];
  v22 = v0[100];
  v18 = v0[98];
  v23 = v0[97];
  v24 = v0[96];
  sub_268CDE730(v0[86] + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, (v0 + 22));
  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  v19(v22, *MEMORY[0x277D5BC10], v18);

  v21(v23, 1, 1, v20);

  sub_268F99724();
  sub_268F99684();

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  sub_268F998F4();
  sub_268D28378(v24);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  MEMORY[0x277D82BD8](v25);

  v6 = *(v0[75] + 8);

  return v6();
}

uint64_t sub_268E83B24(uint64_t a1, uint64_t a2)
{

  sub_268F99714();
}

uint64_t sub_268E83BB0(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v29 = sub_268E84348;
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
  sub_268CDE730(v2 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender, v36);
  v32 = v37;
  v33 = v38;
  v31 = __swift_project_boxed_opaque_existential_1(v35, v37);
  sub_268F99744();
  (*(v19 + 104))(v30, *MEMORY[0x277D5BC00], v21);
  v26 = *(v23 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  v27 = *(v23 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType + 8);

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

double sub_268E83E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v11 = sub_268F9B284();
  v12 = *(a2 + 16);
  MEMORY[0x277D82BE0](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  sub_268CDE730(a3, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DCAA8, &unk_268FAA330);
  v8 = sub_268F9AE64();
  v9 = v4;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "%@ handling intent", 18, 2);

  *&result = MEMORY[0x277D82BD8](v12).n128_u64[0];
  return result;
}

uint64_t sub_268E84038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_268F99714();

  sub_268F99704();
}

uint64_t sub_268E84108()
{
  MEMORY[0x277D82BD8](v0[2]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  sub_268E80E6C(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_followupPluginAction);
  sub_268D35038((v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_intent));
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_settingId);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_eventSender));
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_taskType);
  sub_268CD9D30(v0 + OBJC_IVAR____TtC19SiriSettingsIntents21UndoBinarySettingFlow_attribute);
  return v2;
}

uint64_t sub_268E84284(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268CD7B50;

  return sub_268E81A74(a1);
}

uint64_t type metadata accessor for UndoBinarySettingFlow(uint64_t a1)
{
  v2 = qword_2802DDA30;
  if (!qword_2802DDA30)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_268E843E8(uint64_t a1)
{
  updated = sub_268E84534(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_268E84534(uint64_t a1)
{
  v5 = qword_2802DDA40;
  if (!qword_2802DDA40)
  {
    sub_268F99884();
    v4 = sub_268F9B3B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2802DDA40);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_268E845D0()
{
  type metadata accessor for SetAXDifferentiateWithoutColorHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15A0 = result;
  return result;
}

uint64_t *sub_268E84638()
{
  if (qword_2802DB740 != -1)
  {
    swift_once();
  }

  return &qword_2802F15A0;
}

uint64_t sub_268E84698()
{
  v1 = *sub_268E84638();

  return v1;
}

uint64_t sub_268E846C8(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXDifferentiateWithoutColorHandler handling intent", 53, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3E8F4();

  v4 = sub_268DBD694();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268E848EC, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E848EC, v8);
}

uint64_t sub_268E8487C(char a1)
{

  sub_268D3E924(a1 & 1);
}

uint64_t sub_268E84938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v51 = a1;
  v76 = a2;
  v4 = v3;
  v5 = v51;
  v75 = v4;
  v82 = "ConfirmSettingsIntentStrategy actionForInput.";
  v80 = &dword_268CBE000;
  v52 = "ConfirmSettingsIntentStrategy actionForInput is ignore.";
  v53 = "ConfirmSettingsIntentStrategy actionForInput is handle.";
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v94 = 0;
  v93 = 0;
  v78 = 0;
  v54 = sub_268F996C4();
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v6, v7, v8);
  v58 = &v34[-v57];
  v59 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v34[-v57], v11, v12);
  v60 = &v34[-v59];
  v61 = (*(*(type metadata accessor for SettingsNLIntent(v13) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v14, v15, v16);
  v62 = &v34[-v61];
  v63 = sub_268F9A704();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v17, v18, v19);
  v67 = &v34[-v66];
  v68 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, &v34[-v66], v22, v23);
  v69 = &v34[-v68];
  v94 = &v34[-v68];
  v70 = sub_268F99C64();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v24, v25, v26);
  v74 = &v34[-v73];
  v93 = &v34[-v73];
  v88 = sub_268F99C34();
  v85 = *(v88 - 8);
  v86 = v88 - 8;
  v77 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88, v76, v27, v28);
  v87 = &v34[-v77];
  v92 = v5;
  v91 = v29;
  v90 = v30;
  v84 = *sub_268DC916C();
  MEMORY[0x277D82BE0](v84);
  v81 = sub_268F9B284();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v83 = sub_268F9B734();
  sub_268F9AC04(v82, 45, 2, v80, v84, v81);

  MEMORY[0x277D82BD8](v84);
  sub_268F99BE4();
  v89 = (*(v85 + 88))(v87, v88);
  if (v89 == *MEMORY[0x277D5C128])
  {
    v32 = v62;
    (*(v85 + 96))(v87, v88);
    (*(v64 + 32))(v69, v87, v63);
    v94 = v69;
    v40 = *sub_268DC916C();
    MEMORY[0x277D82BE0](v40);
    v38 = sub_268F9B284();
    v39 = sub_268F9B734();
    sub_268F9AC04(v53, 55, 2, v80, v40, v38);

    v33 = MEMORY[0x277D82BD8](v40);
    (*(v64 + 16))(v67, v69, v63, v33);
    sub_268E42410(v67, v32);
    sub_268E42470(v60);
    sub_268D87800(v62);
    (*(v55 + 104))(v58, *MEMORY[0x277D5B960], v54);
    sub_268D8785C();
    v43 = sub_268F9B754();
    v42 = *(v55 + 8);
    v41 = v55 + 8;
    v42(v58, v54);
    v42(v60, v54);
    if (v43)
    {
      sub_268F998A4();
    }

    else
    {
      sub_268F99894();
    }

    return (*(v64 + 8))(v69, v63);
  }

  else if (v89 == *MEMORY[0x277D5C160])
  {
    (*(v85 + 96))(v87, v88);
    (*(v71 + 32))(v74, v87, v70);
    v93 = v74;
    if (sub_268E8533C(v74))
    {
      v49 = *sub_268DC916C();
      MEMORY[0x277D82BE0](v49);
      v47 = sub_268F9B284();
      v48 = sub_268F9B734();
      sub_268F9AC04(v53, 55, 2, v80, v49, v47);

      MEMORY[0x277D82BD8](v49);
      sub_268F99894();
    }

    else
    {
      v46 = *sub_268DC916C();
      MEMORY[0x277D82BE0](v46);
      v44 = sub_268F9B284();
      v45 = sub_268F9B734();
      sub_268F9AC04(v52, 55, 2, v80, v46, v44);

      MEMORY[0x277D82BD8](v46);
      sub_268F998A4();
    }

    return (*(v71 + 8))(v74, v70);
  }

  else
  {
    v37 = *sub_268DC916C();
    MEMORY[0x277D82BE0](v37);
    v35 = sub_268F9B284();
    v36 = sub_268F9B734();
    sub_268F9AC04(v52, 55, 2, v80, v37, v35);

    MEMORY[0x277D82BD8](v37);
    sub_268F998A4();
    return (*(v85 + 8))(v87, v88);
  }
}

uint64_t sub_268E8533C(uint64_t a1)
{
  v44 = a1;
  v2 = v1;
  v3 = v44;
  v56 = v2;
  v80 = 0;
  v79 = 0;
  v66 = 0;
  v59 = sub_268F99CB4();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v45 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v4, v5, v6);
  v46 = &v30[-v45];
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v45], v8, v9, v10);
  v48 = &v30[-v47];
  v49 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v47], v12, v13, v14);
  v60 = &v30[-v49];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC748, &qword_268F9F1F8);
  v53 = *(*(v15 - 8) + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v51 = &v30[-v50];
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v50], v19, v20, v21);
  v54 = &v30[-v52];
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v30[-v52], v22, v23, v24);
  v67 = &v30[-v55];
  v80 = v3;
  v79 = v56;
  sub_268F99C54();
  v65 = sub_268F99CA4();
  v61 = *(v57 + 8);
  v62 = v57 + 8;
  v61(v60, v59);
  v78 = v65;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
  v64 = sub_268D88014();
  sub_268F9B234();

  v68 = sub_268F99DE4();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = *(v69 + 48);
  v72 = v69 + 48;
  if (v71(v67, 1) == 1)
  {
    sub_268D8809C(v67, v25);
    v43 = 2;
  }

  else
  {
    v42 = sub_268F99D64();
    (*(v69 + 8))(v67, v68);
    v43 = v42 & 1;
  }

  v77 = v43;
  if (v43 == 2)
  {
    v41 = 0;
  }

  else
  {
    v41 = v77;
  }

  if (v41)
  {
    v40 = 1;
  }

  else
  {
    sub_268F99C54();
    v39 = sub_268F99CA4();
    v61(v48, v59);
    v76 = v39;
    sub_268F9B234();

    v26 = (v71)(v54, 1, v68);
    if (v26 == 1)
    {
      sub_268D8809C(v54, v27);
      v38 = 2;
    }

    else
    {
      v37 = sub_268F99D74();
      (*(v69 + 8))(v54, v68);
      v38 = v37 & 1;
    }

    v75 = v38;
    if (v38 == 2)
    {
      v36 = 0;
    }

    else
    {
      v36 = v75;
    }

    v40 = v36;
  }

  if (v40)
  {
    v35 = 1;
  }

  else
  {
    sub_268F99C54();
    v34 = sub_268F99CA4();
    v61(v46, v59);
    v74 = v34;
    sub_268F9B234();

    if ((v71)(v51, 1, v68) == 1)
    {
      sub_268D8809C(v51, v28);
      v33 = 2;
    }

    else
    {
      v32 = sub_268F99D84();
      (*(v69 + 8))(v51, v68);
      v33 = v32 & 1;
    }

    v73 = v33;
    if (v33 == 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = v73;
    }

    v35 = v31;
  }

  return v35 & 1;
}

uint64_t sub_268E85A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[8] = a3;
  v4[7] = a2;
  v4[6] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC760, &unk_268F9F210);
  v4[10] = swift_task_alloc();
  v5 = sub_268F996C4();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_268F99C34();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;

  return MEMORY[0x2822009F8](sub_268E85C6C, 0);
}

uint64_t sub_268E85C6C()
{
  v31 = v0[17];
  v30 = v0[16];
  v32 = v0[15];
  v33 = v0[14];
  v36 = v0[13];
  v34 = v0[12];
  v35 = v0[11];
  v0[2] = v0;
  v1 = sub_268DC916C();
  v29 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v28 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v27 = v2;
  sub_268F99BE4();
  v25 = sub_268F9AE64();
  v26 = v3;
  v27[3] = MEMORY[0x277D837D0];
  v27[4] = sub_268CDD224();
  *v27 = v25;
  v27[1] = v26;
  sub_268CD0F7C();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Parsing confirmation response from parse: %@.", 75, 2, &dword_268CBE000, v29, v28);

  MEMORY[0x277D82BD8](v29);
  sub_268F99BE4();
  sub_268E862B0(v31, v33);
  (*(v30 + 8))(v31, v32);
  (*(v34 + 104))(v36, *MEMORY[0x277D5B978], v35);
  sub_268D8785C();
  v38 = sub_268F9B754();
  v37 = *(v34 + 8);
  v37(v36, v35);
  if (v38)
  {
    v22 = v24[14];
    v23 = v24[11];
    v21 = v24[10];
    v4 = sub_268DC916C();
    v17 = *v4;
    MEMORY[0x277D82BE0](*v4);
    v16 = sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04("ConfirmSettingsIntentStrategy Confirmation response is CONFIRMED.", 65, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    v18 = *MEMORY[0x277D5BED8];
    v20 = sub_268F99A94();
    v19 = *(v20 - 8);
    (*(v19 + 104))(v21, v18);
    (*(v19 + 56))(v21, 0, 1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
    sub_268F99B44();
    sub_268D2E630();
    sub_268F99A84();
    v37(v22, v23);
  }

  else
  {
    v14 = v24[14];
    v15 = v24[11];
    v13 = v24[10];
    v5 = sub_268DC916C();
    v9 = *v5;
    MEMORY[0x277D82BE0](*v5);
    v8 = sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04("ConfirmSettingsIntentStrategy Confirmation response is REJECTED.", 64, 2, &dword_268CBE000, v9, v8);

    MEMORY[0x277D82BD8](v9);
    v10 = *MEMORY[0x277D5BED0];
    v12 = sub_268F99A94();
    v11 = *(v12 - 8);
    (*(v11 + 104))(v13, v10);
    (*(v11 + 56))(v13, 0, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
    sub_268F99B44();
    sub_268D2E630();
    sub_268F99A84();
    v37(v14, v15);
  }

  v6 = *(v24[2] + 8);

  return v6();
}

uint64_t sub_268E862B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v125 = a1;
  v93 = "ConfirmSettingsIntentStrategy received unsupported parse object: %@.";
  v94 = sub_268D89874;
  v95 = sub_268D89940;
  v96 = sub_268D89984;
  v97 = "ConfirmSettingsIntentStrategy userDialogAct is UserCancelled";
  v98 = "ConfirmSettingsIntentStrategy userDialogAct is UserRejected";
  v99 = "ConfirmSettingsIntentStrategy userDialogAct is UserAccepted";
  v141 = 0;
  v140 = 0;
  v143 = 0;
  v100 = 0;
  v142 = 0;
  v117 = 0;
  v101 = sub_268F99CB4();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v105 = &v52[-v104];
  v106 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v52[-v104], v8, v9);
  v107 = &v52[-v106];
  v108 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, &v52[-v106], v12, v13);
  v109 = &v52[-v108];
  v110 = sub_268F99C64();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v14, v15, v16);
  v114 = &v52[-v113];
  v143 = &v52[-v113];
  v115 = (*(*(type metadata accessor for SettingsNLIntent(v17) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v18, v19, v20);
  v116 = &v52[-v115];
  v118 = sub_268F9A704();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v117, v21, v22, v23);
  v122 = &v52[-v121];
  v123 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, &v52[-v121], v26, v27);
  v124 = &v52[-v123];
  v142 = &v52[-v123];
  v134 = sub_268F99C34();
  v132 = *(v134 - 8);
  v133 = v134 - 8;
  v127 = *(v132 + 64);
  v126 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134, v125, v134, v28);
  v128 = &v52[-v126];
  v129 = (v127 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = MEMORY[0x28223BE20](&v52[-v126], v29, v30, v31);
  v135 = &v52[-v129];
  v141 = v33;
  v140 = v2;
  v130 = *(v132 + 16);
  v131 = v132 + 16;
  v130(v32);
  v136 = (*(v132 + 88))(v135, v134);
  if (v136 == *MEMORY[0x277D5C128])
  {
    v34 = v116;
    (*(v132 + 96))(v135, v134);
    (*(v119 + 32))(v124, v135, v118);
    v142 = v124;
    (*(v119 + 16))(v122);
    sub_268E42410(v122, v34);
    sub_268E42470(v92);
    sub_268D87800(v116);
    return (*(v119 + 8))(v124, v118);
  }

  if (v136 == *MEMORY[0x277D5C160])
  {
    v36 = v100;
    v37 = v114;
    (*(v132 + 96))(v135, v134);
    (*(v111 + 32))(v37, v135, v110);
    v143 = v37;
    sub_268F99C54();
    v87 = sub_268F99CA4();
    v85 = *(v102 + 8);
    v86 = v102 + 8;
    v85(v109, v101);
    v139 = v87;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC750, &qword_268F9F200);
    v89 = sub_268D898B8();
    result = sub_268F9AFB4();
    v90 = v36;
    v91 = result;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v84 = v91;
      sub_268CD7930(&v139);
      if (v84)
      {
        v79 = sub_268F9B284();
        v81 = *sub_268DC916C();
        MEMORY[0x277D82BE0](v81);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v82 = 0;
        v80 = sub_268F9B734();
        sub_268F9AC14(v79, &dword_268CBE000, v81, v99, 59, 2);

        MEMORY[0x277D82BD8](v81);
        v83 = *MEMORY[0x277D5B978];
        v38 = sub_268F996C4();
        (*(*(v38 - 8) + 104))(v92, v83);
        return (*(v111 + 8))(v114, v110);
      }

      v39 = v90;
      sub_268F99C54();
      v76 = sub_268F99CA4();
      v85(v107, v101);
      v138 = v76;
      result = sub_268F9AFB4();
      v77 = v39;
      v78 = result;
      if (!v39)
      {
        v75 = v78;
        sub_268CD7930(&v138);
        if (v75)
        {
          v70 = sub_268F9B284();
          v72 = *sub_268DC916C();
          MEMORY[0x277D82BE0](v72);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
          v73 = 0;
          v71 = sub_268F9B734();
          sub_268F9AC14(v70, &dword_268CBE000, v72, v98, 59, 2);

          MEMORY[0x277D82BD8](v72);
          v74 = *MEMORY[0x277D5B968];
          v40 = sub_268F996C4();
          (*(*(v40 - 8) + 104))(v92, v74);
          return (*(v111 + 8))(v114, v110);
        }

        v41 = v77;
        sub_268F99C54();
        v68 = sub_268F99CA4();
        v85(v105, v101);
        v137 = v68;
        result = sub_268F9AFB4();
        v69 = result;
        if (!v41)
        {
          v67 = v69;
          sub_268CD7930(&v137);
          if (v67)
          {
            v62 = sub_268F9B284();
            v64 = *sub_268DC916C();
            MEMORY[0x277D82BE0](v64);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
            v65 = 0;
            v63 = sub_268F9B734();
            sub_268F9AC14(v62, &dword_268CBE000, v64, v97, 60, 2);

            MEMORY[0x277D82BD8](v64);
            v66 = *MEMORY[0x277D5B970];
            v42 = sub_268F996C4();
            (*(*(v42 - 8) + 104))(v92, v66);
            return (*(v111 + 8))(v114, v110);
          }

          (*(v111 + 8))(v114, v110);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v59 = sub_268F9B294();
  v61 = *sub_268DC916C();
  MEMORY[0x277D82BE0](v61);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v58 = sub_268F9B734();
  v56 = v43;
  (v130)(v128, v125, v134);
  v54 = sub_268F9AE64();
  v55 = v44;
  v56[3] = MEMORY[0x277D837D0];
  v45 = sub_268CDD224();
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v56[4] = v45;
  *v48 = v46;
  v48[1] = v47;
  sub_268CD0F7C();
  v60 = v49;
  sub_268F9AC14(v59, &dword_268CBE000, v61, v93, 68, 2);

  v50 = MEMORY[0x277D82BD8](v61);
  (*(v132 + 8))(v135, v134, v50);
LABEL_15:
  v53 = *MEMORY[0x277D5B960];
  v51 = sub_268F996C4();
  return (*(*(v51 - 8) + 104))(v92, v53);
}

uint64_t sub_268E871A4(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  sub_268F99834();
  v3[14] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;

  return MEMORY[0x2822009F8](sub_268E872F4, 0);
}

uint64_t sub_268E872F4()
{
  v6 = v0[13];
  v0[7] = v0;
  v1 = sub_268DC916C();
  v5 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v4 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation dialog.", 60, 2, &dword_268CBE000, v5, v4);

  MEMORY[0x277D82BD8](v5);
  v0[18] = *(v6 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268E874C8;

  return sub_268EFBC10(v10, v8, v9);
}

uint64_t sub_268E874C8(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 56) = *v2;
  *(v6 + 184) = a1;
  *(v6 + 192) = v1;

  if (v1)
  {
    v3 = sub_268E87A70;
  }

  else
  {
    v5 = *(v6 + 160);

    v3 = sub_268E8767C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E8767C()
{
  v1 = v0[23];
  v9 = v0[13];
  v7 = v0[12];
  v0[7] = v0;
  v0[10] = v1;
  sub_268F99814();

  v8 = swift_task_alloc();
  *(v8 + 16) = v9;
  *(v8 + 24) = v7;
  sub_268F99B94();

  sub_268CDE730(v9 + 152, (v0 + 2));
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
  v2 = swift_task_alloc();
  v10[25] = v2;
  *v2 = v10[7];
  v2[1] = sub_268E87808;
  v3 = v10[23];
  v4 = v10[17];
  v5 = v10[11];

  return MEMORY[0x2821BB480](v5, v3, v4, v11, v12);
}

uint64_t sub_268E87808()
{
  v4 = *v1;
  *(v4 + 56) = *v1;
  *(v4 + 208) = v0;

  if (v0)
  {
    v2 = sub_268E87B6C;
  }

  else
  {
    v2 = sub_268E87970;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268E87970()
{
  v5 = v0[23];
  v6 = v0[17];
  v3 = v0[16];
  v4 = v0[15];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v3 + 8))(v6, v4);
  MEMORY[0x277D82BD8](v5);

  v1 = *(v0[7] + 8);

  return v1();
}

uint64_t sub_268E87A70()
{
  v1 = v0[21];
  v4 = v0[20];
  v0[7] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[7] + 8);

  return v2();
}

uint64_t sub_268E87B6C()
{
  v6 = v0[23];
  v4 = v0[17];
  v3 = v0[16];
  v5 = v0[15];
  v0[7] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v3 + 8))(v4, v5);
  MEMORY[0x277D82BD8](v6);

  v1 = *(v0[7] + 8);

  return v1();
}

uint64_t sub_268E87C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v11 = a2;
  v13 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v11, v4, v5);
  v18 = &v10 - v12;
  v23 = v6;
  v22 = v7;
  v21 = a3;
  v17 = *(v7 + 96);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268D594BC(v16, v15, v18);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v8 = *(*(sub_268F999A4() - 8) + 56);
  v20 = 1;
  v8(v18, 0);
  sub_268F99BA4();
  return sub_268F99BB4();
}

uint64_t sub_268E87E18(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268E87E6C, 0);
}

uint64_t sub_268E87E6C()
{
  *(v0 + 16) = v0;
  v1 = sub_268DC916C();
  v7 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v6 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation Cancelled dialog.", 70, 2, &dword_268CBE000, v7, v6);

  MEMORY[0x277D82BD8](v7);
  v2 = swift_task_alloc();
  v8[8] = v2;
  *v2 = v8[2];
  v2[1] = sub_268D8B9D8;
  v3 = v8[6];
  v4 = v8[5];

  return sub_268E87FC4(v4, v3);
}

uint64_t sub_268E87FC4(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[11] = a1;
  v3[7] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  sub_268F99834();
  v3[14] = swift_task_alloc();
  v4 = sub_268F99BC4();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[8] = a2;
  v3[9] = v2;

  return MEMORY[0x2822009F8](sub_268E88114, 0);
}

uint64_t sub_268E88114()
{
  v6 = v0[13];
  v0[7] = v0;
  v1 = sub_268DC916C();
  v5 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v4 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("ConfirmSettingsIntentStrategy Providing confirmation REJECTED dialog.", 69, 2, &dword_268CBE000, v5, v4);

  MEMORY[0x277D82BD8](v5);
  v0[18] = *(v6 + 104);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v10 = sub_268F99B34();
  v0[19] = v10;
  v8 = sub_268F99B44();
  v0[20] = v8;
  v9 = sub_268F99B24();
  v0[21] = v9;
  v2 = swift_task_alloc();
  *(v7 + 176) = v2;
  *v2 = *(v7 + 56);
  v2[1] = sub_268E882E8;

  return sub_268EFCA6C(v10, v8, v9);
}

uint64_t sub_268E882E8(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 56) = *v2;
  *(v6 + 184) = a1;
  *(v6 + 192) = v1;

  if (v1)
  {
    v3 = sub_268E87A70;
  }

  else
  {
    v5 = *(v6 + 160);

    v3 = sub_268E8849C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E8849C(uint64_t a1)
{
  v2 = v1[23];
  v10 = v1[13];
  v8 = v1[12];
  v1[7] = v1;
  v1[10] = v2;
  sub_268F99804();

  v9 = swift_task_alloc();
  *(v9 + 16) = v10;
  *(v9 + 24) = v8;
  sub_268F99B94();

  sub_268CDE730(v10 + 152, (v1 + 2));
  v12 = v1[5];
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  v3 = swift_task_alloc();
  v11[25] = v3;
  *v3 = v11[7];
  v3[1] = sub_268E87808;
  v4 = v11[23];
  v5 = v11[17];
  v6 = v11[11];

  return MEMORY[0x2821BB480](v6, v4, v5, v12, v13);
}

uint64_t sub_268E88628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v10 = a2;
  v12 = a3;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B0, &unk_268F9E0C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v10, v4, v5);
  v18 = &v10 - v11;
  v21 = v6;
  v20 = v7;
  v19 = a3;
  v17 = *(v7 + 96);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC2B8, &unk_268F9E0D0);
  v16 = sub_268F99B44();
  v15 = sub_268F99B24();
  sub_268D594BC(v16, v15, v18);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);

  v8 = sub_268F999A4();
  (*(*(v8 - 8) + 56))(v18, 0, 1);
  return sub_268F99BA4();
}

uint64_t sub_268E887D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268D34238;

  return sub_268E85A74(a1, a2, a3);
}

uint64_t sub_268E8889C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268E871A4(a1, a2);
}

uint64_t sub_268E8895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D08](a1, a2, SettingIntentStrategy, a4);
}

uint64_t sub_268E88A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v5 = *(v8 + 16);
  v5[1] = sub_268D34238;

  return MEMORY[0x2821B9D10](a1, a2, SettingIntentStrategy, a4);
}

uint64_t sub_268E88B04(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268E87FC4(a1, a2);
}

uint64_t sub_268E88BC4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D34238;

  return sub_268E87E18(a1, a2);
}

uint64_t sub_268E88C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D00](a1, a2, a3, SettingIntentStrategy, a5);
}

id sub_268E88DA0(uint64_t a1, void *a2)
{
  v24 = 0;
  v26 = a1;
  v25 = a2;
  sub_268CD7620();
  v21 = sub_268E892CC(a1);
  if (v2)
  {
    sub_268D28414(a2);
    sub_268D87800(a1);
    return 0;
  }

  else
  {
    v24 = v21;
    sub_268E42694(&v23);
    if (v23 == 65)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v16 = BinarySettingIdentifier.rawValue.getter();
      v17 = v3;
    }

    v14 = sub_268F284EC(v16, v17, a2, 0, 0);

    has_malloc_size = _swift_stdlib_has_malloc_size();
    v22 = sub_268F28680(a1, has_malloc_size & 1);
    v12 = sub_268F9B284();
    v5 = sub_268DC7F08();
    v13 = *v5;
    MEMORY[0x277D82BE0](*v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v11 = v6;
    MEMORY[0x277D82BE0](v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA48, &qword_268FA65A0);
    v9 = sub_268F9AE64();
    v10 = v7;
    v11[3] = MEMORY[0x277D837D0];
    v11[4] = sub_268CDD224();
    *v11 = v9;
    v11[1] = v10;
    sub_268CD0F7C();
    sub_268F9AC14(v12, &dword_268CBE000, v13, "Created setting metadata: %@", 28, 2);

    MEMORY[0x277D82BD8](v13);
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v14 binaryValue:v21 temporalEventTrigger:v22];
    MEMORY[0x277D82BE0](v15);
    v27 = v15;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v14);
    sub_268D28414(a2);
    sub_268D87800(a1);
    MEMORY[0x277D82BD8](v27);
    return v15;
  }
}

id sub_268E890A8(uint64_t a1)
{
  v17 = 0;
  v18 = a1;
  v10 = sub_268F9B284();
  v1 = sub_268DC7F08();
  v11 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v10, &dword_268CBE000, v11, "Converting Numeric Bass intent into a Binary Bass SiriKit Intent", 64, 2);

  MEMORY[0x277D82BD8](v11);
  sub_268CD7620();
  v13 = sub_268E897BC();
  if (v2)
  {
    sub_268D87800(a1);
    return 0;
  }

  else
  {
    v17 = v13;
    v16 = 10;
    v3 = BinarySettingIdentifier.rawValue.getter();
    memset(v15, 0, sizeof(v15));
    v7 = sub_268F284EC(v3, v4, v15, 0, 0);
    sub_268D28414(v15);

    has_malloc_size = _swift_stdlib_has_malloc_size();
    v14 = sub_268F28680(a1, has_malloc_size & 1);
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSettingMetadata:v7 binaryValue:v13 temporalEventTrigger:v14];
    MEMORY[0x277D82BE0](v8);
    v19 = v8;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v7);
    sub_268D87800(a1);
    MEMORY[0x277D82BD8](v19);
    return v8;
  }
}

uint64_t sub_268E892CC(uint64_t a1)
{
  v42 = a1;
  v44 = v1;
  v43 = "Couldn't form INBinarySettingValue using SettingsNLIntent: %@";
  v61 = 0;
  v60 = 0;
  v45 = type metadata accessor for SettingsNLIntent(0);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45, v2, v3, v4);
  v47 = &v16 - v46;
  v61 = v42;
  v60 = v5;
  v48 = sub_268E4277C();
  if (v48 == 6)
  {
    goto LABEL_27;
  }

  v41 = v48;
  v40 = v48;
  if (v48 == 2)
  {
    v37 = sub_268E48F04();
    if (v37 != 2)
    {
      v36 = v37;
      if (v37)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      v39 = 0;
      return v38;
    }

    sub_268E42694(&v59);
    v58 = v59;
    v35 = &v57;
    v57 = 1;
    v34 = &v56;
    sub_268D288B4(&v58, &v55);
    sub_268D288B4(v35, v34);
    if (v55 == 65)
    {
      if (v56 == 65)
      {
        v33 = 1;
LABEL_18:
        if (v33)
        {
          v38 = 3;
          v39 = 0;
        }

        else
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA50, &qword_268FA65A8);
          sub_268F9B734();
          *v6 = 2;
          v6[1] = 3;
          sub_268CD0F7C();
          v29 = &v54;
          v54 = v7;
          sub_268E42694(&v53);
          v28 = &v52;
          v52 = v53;
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDA58, &qword_268FA65B0);
          v27 = sub_268E898FC();
          sub_268E89984();
          v30 = sub_268F9AFC4();
          sub_268CD7930(v29);
          if ((v30 & 1) == 0)
          {
            goto LABEL_27;
          }

          v38 = 1;
          v39 = 0;
        }

        return v38;
      }
    }

    else
    {
      sub_268D288B4(&v55, &v51);
      if (v56 != 65)
      {
        v32 = &v50;
        v50 = v51;
        v31 = &v49;
        v49 = v56;
        sub_268D288C8();
        v33 = sub_268F9AE04();
        goto LABEL_18;
      }
    }

    v33 = 0;
    goto LABEL_18;
  }

  if (v40 == 3)
  {
    v38 = 3;
    v39 = 0;
  }

  else
  {
    if (v40 != 4)
    {
LABEL_27:
      v22 = sub_268F9B294();
      v24 = *sub_268DC7F08();
      MEMORY[0x277D82BE0](v24);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v21 = sub_268F9B734();
      v19 = v8;
      sub_268DA7C90(v42, v47);
      sub_268DA967C();
      v17 = sub_268F9AE74();
      v18 = v9;
      v19[3] = MEMORY[0x277D837D0];
      v10 = sub_268CDD224();
      v11 = v17;
      v12 = v18;
      v13 = v19;
      v19[4] = v10;
      *v13 = v11;
      v13[1] = v12;
      sub_268CD0F7C();
      v23 = v14;
      sub_268F9AC14(v22, &dword_268CBE000, v24, v43, 61, 2);

      MEMORY[0x277D82BD8](v24);
      v38 = 0;
      v39 = 1;
      return v38;
    }

    v38 = 0;
    v39 = 0;
  }

  return v38;
}

uint64_t sub_268E897BC()
{
  v2 = sub_268E430FC();
  switch(v2)
  {
    case 5:
      return 0;
    case 0:
      return 2;
    case 1:
      return 1;
    case 3:
      return 2;
  }

  return v2 == 4;
}

unint64_t sub_268E898FC()
{
  v2 = qword_2802DDA60;
  if (!qword_2802DDA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DDA58, &qword_268FA65B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E89984()
{
  v2 = qword_2802DDA68;
  if (!qword_2802DDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DDA50, &qword_268FA65A8);
    sub_268D288C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDA68);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E89A1C()
{
  if (qword_280FE5938 != -1)
  {
    swift_once();
  }

  return &qword_280FE8260;
}

uint64_t sub_268E89A7C()
{
  type metadata accessor for GetWifiHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8260 = result;
  return result;
}

uint64_t sub_268E89AE4()
{
  v1 = *sub_268E89A1C();

  return v1;
}

double sub_268E89B14(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetWifiHandler handling intent", 30, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB874();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E8A030, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E89D2C(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D39148();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t sub_268E8A120()
{
  v2 = *(v0 + qword_2802DDA70);

  return v2;
}

uint64_t sub_268E8A154@<X0>(uint64_t a1@<X8>)
{
  v4 = qword_2802DDA78;
  v2 = sub_268F9AB24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_268E8A1C0()
{
  v2 = *(v0 + qword_2802DDA80);

  return v2;
}

uint64_t sub_268E8A1F4()
{
  v2 = *(v0 + qword_2802DDA88);

  return v2;
}

uint64_t sub_268E8A228()
{
  v2 = *(v0 + qword_2802DDA90);

  return v2;
}

uint64_t sub_268E8A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v69 = a1;
  v63 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = a6;
  v64 = a7;
  v61 = a8;
  v62 = a9;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v76 = 0;
  v70 = *v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC060, &unk_268F9D980);
  v55 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, v11, v12, v13);
  v56 = &v33 - v55;
  v65 = sub_268F9AB24();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v64, v63, v57, v58);
  v71 = &v33 - v68;
  v90 = *(v70 + qword_2802F15C0);
  v89 = *(v70 + qword_2802F15C0 + 8);
  v86 = v69;
  v87 = v15;
  v84 = v16;
  v85 = v17;
  v83 = v18;
  v82 = v19;
  v81 = v20;
  v80 = v21;
  v79 = v22;
  v88 = v9;
  v72 = v9;
  if (MEMORY[0x26D62DA00](v14))
  {
    v52 = sub_268F99874();
    v53 = sub_268F9B594();

    v54 = v53;
  }

  else
  {

    v54 = v64;
  }

  v23 = v65;
  v24 = v61;
  v25 = v66;
  v26 = v71;
  *(v72 + qword_2802DDA70) = v54;
  v34 = v88;
  v40 = *(v25 + 16);
  v39 = v25 + 16;
  v40(v26, v24, v23);
  (*(v66 + 32))(v34 + qword_2802DDA78, v71, v65);
  v36 = v88;
  v46 = 0;
  sub_268F9AA44();
  v35 = v78;
  sub_268CDE730(v60, v78);
  *(v36 + qword_2802DDA80) = sub_268F9AA14();
  sub_268F9A8C4();
  v37 = v77;
  sub_268CDE730(v60, v77);
  v50 = sub_268F9A894();
  v76 = v50;
  v38 = v88;
  type metadata accessor for SetLabeledSettingIntentCATs(v46);
  v40(v71, v61, v65);
  MEMORY[0x277D82BE0](v50);
  v27 = sub_268F9A904();
  v28 = v46;
  *(v38 + qword_2802DDA88) = v27;
  v41 = v88;
  type metadata accessor for SettingIntentCATs(v28);
  v40(v71, v61, v65);
  MEMORY[0x277D82BE0](v50);
  v29 = sub_268F9A904();
  v30 = v62;
  *(v41 + qword_2802DDA90) = v29;
  v42 = v88;
  v43 = v75;
  sub_268CDE730(v30, v75);
  sub_268CDF978(v43, v42 + qword_2802DDA98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC068, &qword_268FA5B90);
  v45 = sub_268F9B734();
  v44 = type metadata accessor for INIntentSlotValueType(v46);
  sub_268CDFA4C();
  v47 = sub_268F9ADA4();
  v48 = v74;
  sub_268CDE730(v59, v74);
  v49 = v73;
  sub_268CDE730(v60, v73);
  v31 = sub_268F99BD4();
  (*(*(v31 - 8) + 56))(v56, 1);
  v51 = sub_268F99AA4();

  v88 = v51;
  MEMORY[0x277D82BD8](v50);
  __swift_destroy_boxed_opaque_existential_0(v62);
  (*(v66 + 8))(v61, v65);

  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v59);

  return v51;
}

uint64_t sub_268E8A910@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268E8AA0C();
  v1 = sub_268F999F4();
  (*(*(v1 - 8) + 16))(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268E8AA0C()
{
  if (qword_2802DB750 != -1)
  {
    swift_once();
  }

  v0 = sub_268F999F4();
  return __swift_project_value_buffer(v0, qword_2802F15A8);
}

double sub_268E8AA78@<D0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v50 = a1;
  v51 = a2;
  v58 = a3;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v56 = *v4;
  v52 = sub_268F9A9C4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v51, v5, v6);
  v57 = &v16 - v55;
  v72 = v7;
  v71 = v8;
  v70 = v9;
  v69 = v4;
  v68[3] = *(v56 + qword_2802F15C0);
  v68[2] = *(v56 + qword_2802F15C0 + 8);
  MEMORY[0x277D82BE0](v9);
  if (v58)
  {
    v47 = v58;
    v45 = v58;
    v46 = [v58 errorDetail];
    if (v46)
    {
      v44 = v46;
      v39 = v46;
      v40 = sub_268F9AE24();
      v41 = v10;
      MEMORY[0x277D82BD8](v39);
      v42 = v40;
      v43 = v41;
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    v36 = v43;
    v35 = v42;
    MEMORY[0x277D82BD8](v45);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v32 = v38;
  v31 = v37;

  v33 = sub_268E948B8(4);
  v34 = v11;

  v68[0] = v31;
  v68[1] = v32;
  v65 = v33;
  v66 = v34;
  sub_268D28874(v68, &v67);
  if (v66)
  {
    sub_268D28874(&v65, v60);
    if (*(&v67 + 1))
    {
      v27 = &v59;
      v59 = v67;
      v28 = v60;
      v29 = MEMORY[0x26D62DB50](v60[0], v60[1], v67, *(&v67 + 1));
      sub_268CD9D30(v27);
      sub_268CD9D30(v28);
      sub_268CD9D30(&v65);
      v30 = v29;
      goto LABEL_12;
    }

    sub_268CD9D30(v60);
    goto LABEL_14;
  }

  if (*(&v67 + 1))
  {
LABEL_14:
    sub_268D28550(&v65);
    v30 = 0;
    goto LABEL_12;
  }

  sub_268CD9D30(&v65);
  v30 = 1;
LABEL_12:
  v26 = v30;

  if (v26)
  {

    v24 = *(v49 + qword_2802DDA88);

    v25 = [v51 settingMetadata];
    if (v25)
    {
      v23 = v25;
      v17 = v25;
      v18 = [v25 settingId];
      v19 = sub_268F9AE24();
      v20 = v12;
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      v21 = v19;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v61 = v21;
    v62 = v22;
    if (v22)
    {
      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = sub_268F9AEF4();
      v64 = v13;
      if (v62)
      {
        sub_268CD9D30(&v61);
      }
    }

    sub_268F9A9A4();
    v14 = sub_268DB57C0(v57);
    (*(v53 + 8))(v57, v52, v14);
  }

  else
  {

    v16 = *(v49 + qword_2802DDA90);

    sub_268F537E4();
  }

  return result;
}

uint64_t sub_268E8B0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = v3;
  v4[23] = a3;
  v4[22] = a2;
  v4[15] = v4;
  v4[16] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[13] = 0;
  v4[14] = 0;
  sub_268F9A9C4();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v4[28] = swift_task_alloc();
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = a3;
  v4[19] = v3;

  return MEMORY[0x2822009F8](sub_268E8B260, 0);
}

uint64_t sub_268E8B260()
{
  v1 = *(v0 + 184);
  v54 = v1;
  *(v0 + 120) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v54)
  {
    v49 = v53[23];
    v50 = [v49 code];
    MEMORY[0x277D82BD8](v49);
    v51 = v50;
    v52 = 0;
  }

  else
  {
    v51 = 0;
    v52 = 1;
  }

  if (v52)
  {
    v13 = sub_268DC8A0C();
    v17 = *v13;
    MEMORY[0x277D82BE0](*v13);
    v16 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetLabeledSettingIntentResponse does not exist", 46, 2, &dword_268CBE000, v17, v16);

    MEMORY[0x277D82BD8](v17);
    sub_268D284D4();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
  }

  else
  {
    v53[20] = v51;
    if (v51 == 8)
    {
      v47 = v53[22];

      type metadata accessor for SettingsBinarySetting(0);
      v48 = [v47 settingMetadata];
      if (v48)
      {
        v42 = [v48 settingId];
        v43 = sub_268F9AE24();
        v44 = v2;
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v42);
        v45 = v43;
        v46 = v44;
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      v53[7] = v45;
      v53[8] = v46;
      if (!v53[8])
      {
        sub_268F9AEF4();
        if (v53[8])
        {
          sub_268CD9D30((v53 + 7));
        }
      }

      v40 = v53[22];
      sub_268F9A9A4();
      v41 = [v40 settingMetadata];
      if (v41)
      {
        v35 = [v41 settingId];
        v36 = sub_268F9AE24();
        v37 = v3;
        MEMORY[0x277D82BD8](v41);
        MEMORY[0x277D82BD8](v35);
        v38 = v36;
        v39 = v37;
      }

      else
      {
        v38 = 0;
        v39 = 0;
      }

      v53[9] = v38;
      v53[10] = v39;
      if (!v53[10])
      {
        sub_268F9AEF4();
        if (v53[10])
        {
          sub_268CD9D30((v53 + 9));
        }
      }

      v32 = v53[28];
      v30 = v53[26];
      v29 = v53[25];
      sub_268F9A9A4();
      v4 = sub_268CDD6D4();
      v31 = sub_268F77F04(v30, v4 & 1, v29);
      sub_268F56768(v31, 0, 0);

      v34 = sub_268F9B824();
      v33 = v5;
      sub_268D28378(v32);
      v53[11] = v34;
      v53[12] = v33;
      if (v53[12])
      {
        v55 = v53[11];
        v56 = v53[12];
      }

      else
      {
        v55 = sub_268F9AEF4();
        v56 = v6;
        if (v53[12])
        {
          sub_268CD9D30((v53 + 11));
        }
      }

      v24 = v53[24];
      v53[29] = v56;
      v53[13] = v55;
      v53[14] = v56;
      sub_268CDE730(v24 + qword_2802DDA98, (v53 + 2));
      v26 = v53[5];
      v27 = v53[6];
      __swift_project_boxed_opaque_existential_1(v53 + 2, v26);

      v25 = swift_task_alloc();
      v53[30] = v25;
      v25[2] = v55;
      v25[3] = v56;
      v25[4] = v24;
      v28 = (*(v27 + 96) + **(v27 + 96));
      v7 = swift_task_alloc();
      v53[31] = v7;
      *v7 = v53[15];
      v7[1] = sub_268E8BE2C;

      return v28(sub_268E8CD6C, v25, v26, v27);
    }

    v18 = v53[23];
    v9 = sub_268DC7B48();
    v23 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v22 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v21 = v10;
    MEMORY[0x277D82BE0](v18);
    v53[21] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDAA0, qword_268FA6618);
    v19 = sub_268F9AE64();
    v20 = v11;
    v21[3] = MEMORY[0x277D837D0];
    v21[4] = sub_268CDD224();
    *v21 = v19;
    v21[1] = v20;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntentResponse contains unsupported error code: %@", 66, 2, &dword_268CBE000, v23, v22);

    MEMORY[0x277D82BD8](v23);
    sub_268D284D4();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
  }

  v15 = *(v53[15] + 8);

  return v15();
}

uint64_t sub_268E8BE2C(uint64_t a1)
{
  v5 = *v2;
  v5[15] = *v2;
  v5[32] = a1;
  v5[33] = v1;

  if (v1)
  {
    v3 = sub_268E8C0C0;
  }

  else
  {

    v3 = sub_268E8BFD0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E8BFD0()
{
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v4 + 120) + 8);
  v2 = *(v4 + 256);

  return v1(v2);
}

uint64_t sub_268E8C0C0()
{
  *(v0 + 120) = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(*(v0 + 120) + 8);

  return v1();
}

void *sub_268E8C1E0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a1;
  v16 = a2;
  v17 = a3;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v15 = *a4;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v16, v5, v6);
  v20 = &v13 - v14;
  v26 = v7;
  v24 = v8;
  v25 = v9;
  v23 = a4;
  v18 = 0;
  v22 = *(v15 + qword_2802F15C0);
  v21 = *(v15 + qword_2802F15C0 + 8);

  sub_268F9A9A4();
  v10 = sub_268F9A9C4();
  (*(*(v10 - 8) + 56))(v20, 0, 1);
  sub_268D29FC8(v20, v19);
  sub_268E8C394(v20);
  v11 = type metadata accessor for SettingIntentResourceNotDownloadedParameters(v18);
  return sub_268D29FC8(v20, &v19[*(v11 + 20)]);
}

uint64_t sub_268E8C394@<X0>(uint64_t a1@<X8>)
{
  v9 = type metadata accessor for LaunchEnvPicker();
  sub_268CDA260();
  v10 = sub_268D90FF0();
  v11 = sub_268E0C3D8();
  sub_268F3A0D0(v11, v9, v10);
  v12 = v1;
  MEMORY[0x277D82BD8](v11);

  if (v12)
  {
    sub_268F9A9A4();
    v2 = sub_268F9A9C4();
    return (*(*(v2 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    v6 = sub_268F9B284();
    v4 = sub_268DC9D70();
    v7 = *v4;
    MEMORY[0x277D82BE0](*v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v6, &dword_268CBE000, v7, "failed to to generate a Direct Invocation Object to launch env picker", 69, 2);

    MEMORY[0x277D82BD8](v7);
    v5 = sub_268F9A9C4();
    return (*(*(v5 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_268E8C8BC()
{
  sub_268CD7930((v0 + qword_2802DDA70));
  v3 = qword_2802DDA78;
  v1 = sub_268F9AB24();
  (*(*(v1 - 8) + 8))(v0 + v3);

  return __swift_destroy_boxed_opaque_existential_0((v0 + qword_2802DDA98));
}

uint64_t sub_268E8C9D4()
{
  v3 = sub_268F99AB4();
  sub_268CD7930((v3 + qword_2802DDA70));
  v2 = qword_2802DDA78;
  v0 = sub_268F9AB24();
  (*(*(v0 - 8) + 8))(v3 + v2);

  __swift_destroy_boxed_opaque_existential_0((v3 + qword_2802DDA98));
  return v3;
}

uint64_t sub_268E8CC00()
{
  v1 = sub_268F999F4();
  __swift_allocate_value_buffer(v1, qword_2802F15A8);
  __swift_project_value_buffer(v1, qword_2802F15A8);
  sub_268F9AEF4();
  sub_268F9B734();
  sub_268F9B734();
  return sub_268F999E4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_268E8CD08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268E8AA0C();
  v1 = sub_268F999F4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_268E8CD7C()
{
  v2 = qword_2802DDAA8[0];
  if (!qword_2802DDAA8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2802DDAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_268E8CE94(uint64_t a1)
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

unint64_t sub_268E8D034()
{
  v2 = qword_2802DDB30;
  if (!qword_2802DDB30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E8D0B0()
{
  type metadata accessor for SetDisplayBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15D0 = result;
  return result;
}

uint64_t *sub_268E8D118()
{
  if (qword_2802DB758 != -1)
  {
    swift_once();
  }

  return &qword_2802F15D0;
}

uint64_t sub_268E8D178()
{
  v1 = *sub_268E8D118();

  return v1;
}

uint64_t sub_268E8D1A8(void *a1, void (*a2)(void), uint64_t a3)
{
  v34 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v35 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v34, &dword_268CBE000, v35, "SetDisplayBrightnessHandler handling intent", 43, 2);

  v37 = [a1 settingMetadata];
  if (v37 && (v30 = [v37 targetDevice], *&v4 = MEMORY[0x277D82BD8](v37).n128_u64[0], v30))
  {
    [v30 deviceCategory];
    MEMORY[0x277D82BD8](v30);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v28 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v28 = sub_268F9AE04();
  }

  if (v28)
  {
    v10 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v11 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    sub_268F9AC14(v10, &dword_268CBE000, v11, "Display brightness is not supported on HomePod", 46, 2);

    MEMORY[0x277D82BD8](v11);

    v12 = sub_268F70C6C(0, 3);
    a2();
    MEMORY[0x277D82BD8](v12);
  }

  else
  {

    v27 = sub_268D36220();

    if (v27)
    {
      v24 = sub_268F9B284();
      v5 = sub_268DC7AE8();
      v25 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_268F9B734();
      sub_268F9AC14(v24, &dword_268CBE000, v25, "Adjusting display brightness is not supported in ambient mode", 61, 2);

      MEMORY[0x277D82BD8](v25);

      v26 = sub_268F70C6C(0, 22);
      a2();
      MEMORY[0x277D82BD8](v26);
    }

    else
    {

      v21 = sub_268D39FC4();

      sub_268D39FDC();
      v22 = v6;

      v23 = [a1 numericValue];
      if (v23)
      {
        v18 = [v23 unit];
        MEMORY[0x277D82BD8](v23);
        v19 = v18;
        v20 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 1;
      }

      if (v20)
      {
        v17 = 0;
      }

      else
      {
        v17 = v19;
      }

      v7 = sub_268DBF394();
      v13 = *v7;
      v14 = v7[1];
      v15 = *(v7 + 16);
      v16 = *(v33 + 24);

      sub_268F70D1C(a1, v17, v13, v14, v15, v16 & 1, a2, a3, v22, 0.0, 1.0, v21, sub_268E8D848, v33);
    }
  }
}

uint64_t sub_268E8D7E4()
{

  sub_268D3A018();
}

uint64_t sub_268E8D890()
{
  type metadata accessor for SetBluetoothHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15D8 = result;
  return result;
}

uint64_t *sub_268E8D8F8()
{
  if (qword_2802DB760 != -1)
  {
    swift_once();
  }

  return &qword_2802F15D8;
}

uint64_t sub_268E8D958()
{
  v1 = *sub_268E8D8F8();

  return v1;
}

void sub_268E8D988(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v58 = a1;
  v47 = a2;
  v46 = a3;
  v54 = "SetBluetoothHandler handling intent";
  v39 = "SetBluetoothHandler cannot modify state of Bluetooth for HomePod or Apple TV";
  v40 = sub_268E8E2C0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v59 = 0;
  v41 = sub_268F9AD14();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v45 = &v18[-v44];
  v48 = sub_268F9AD34();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v47, v46, v7);
  v52 = &v18[-v51];
  v87 = v8;
  v85 = v9;
  v86 = v10;
  v84 = v3;
  v55 = sub_268F9B284();
  v57 = *sub_268DC7AE8();
  MEMORY[0x277D82BE0](v57);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v56 = sub_268F9B734();
  sub_268F9AC14(v55, &dword_268CBE000, v57, v54, 35, 2);

  MEMORY[0x277D82BD8](v57);
  v83 = v58;
  v60 = sub_268CD7620();
  v61 = SettingIntent.deviceCategory.getter(v60, &protocol witness table for INSetBinarySettingIntent);
  v62 = v11;
  v79 = v61;
  v80 = v11 & 1;
  v81 = 6;
  v82 = 0;
  if (v11)
  {
    v37 = 0;
  }

  else
  {
    v63[1] = v61;
    v64 = v62 & 1;
    v35 = v63;
    v63[0] = v81;
    v36 = type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v37 = sub_268F9AE04();
  }

  v34 = v37;
  MEMORY[0x277D82BE0](v58);
  if (v34)
  {
    v28 = 0;
  }

  else
  {
    v71 = v58;
    v32 = SettingIntent.deviceCategory.getter(v60, &protocol witness table for INSetBinarySettingIntent);
    v33 = v12;
    v67 = v32;
    v68 = v12 & 1;
    v69 = 5;
    v70 = 0;
    if (v12)
    {
      v31 = 0;
    }

    else
    {
      v65[1] = v32;
      v66 = v33 & 1;
      v29 = v65;
      v65[0] = v69;
      v30 = type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v31 = sub_268F9AE04();
    }

    v28 = v31 ^ 1;
  }

  v27 = v28;
  MEMORY[0x277D82BD8](v58);
  if (v27)
  {
    v24 = 0;
    sub_268CDD000();
    v26 = sub_268F9B2C4();

    MEMORY[0x277D82BE0](v58);

    v13 = swift_allocObject();
    v14 = v58;
    v15 = v47;
    v16 = v46;
    v17 = v40;
    v13[2] = v38;
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v16;
    v77 = v17;
    v78 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v73 = 1107296256;
    v74 = 0;
    v75 = sub_268D5BAEC;
    v76 = &block_descriptor_2;
    v25 = _Block_copy(&aBlock);

    sub_268D5D06C();
    sub_268D5D084();
    MEMORY[0x26D62DF20](v24, v52, v45, v25);
    (*(v42 + 8))(v45, v41);
    (*(v49 + 8))(v52, v48);
    _Block_release(v25);
    MEMORY[0x277D82BD8](v26);
  }

  else
  {
    v19 = sub_268F9B284();
    v21 = *sub_268DC7AE8();
    MEMORY[0x277D82BE0](v21);
    v22 = 0;
    v20 = sub_268F9B734();
    sub_268F9AC14(v19, &dword_268CBE000, v21, v39, 76, 2);

    MEMORY[0x277D82BD8](v21);

    v23 = sub_268DA9A7C(7, v22);
    v47();
    MEMORY[0x277D82BD8](v23);
  }
}

uint64_t sub_268E8E19C(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{

  v6 = sub_268D37834();

  v4 = sub_268DBCED4();
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v12 = *(a1 + 24);

  sub_268DAAB84(v6 & 1, a2, v9, v10, v11, v12 & 1, a3, a4, sub_268E8E4BC, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268E8E4BC, a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_268E8E338(char a1)
{

  sub_268D3D470(a1 & 1);
}

uint64_t sub_268E8E3CC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_268F9AD14();
      v1 = sub_268F9B044();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_268F9AD14();
    return v2;
  }

  return result;
}

uint64_t *sub_268E8E4E4()
{
  if (qword_280FE3378 != -1)
  {
    swift_once();
  }

  return &qword_280FE8058;
}

uint64_t sub_268E8E544()
{
  type metadata accessor for GetAXReduceTransparencyHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8058 = result;
  return result;
}

uint64_t sub_268E8E5AC()
{
  v1 = *sub_268E8E4E4();

  return v1;
}

double sub_268E8E5DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXReduceTransparencyHandler handling intent", 46, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB114();
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
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E8EA60, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E8E7F8(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3E754();

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

uint64_t *sub_268E8EAB8()
{
  if (qword_280FE3510 != -1)
  {
    swift_once();
  }

  return &qword_280FE8068;
}

uint64_t sub_268E8EB18()
{
  type metadata accessor for GetAXReduceWhitePointHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8068 = result;
  return result;
}

uint64_t sub_268E8EB80()
{
  v1 = *sub_268E8EAB8();

  return v1;
}

double sub_268E8EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXReduceWhitePointHandler handling intent", 44, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB1E4();
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
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268E8F034, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268E8EDCC(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EF0C();

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

uint64_t *sub_268E8F08C()
{
  if (qword_280FE4468 != -1)
  {
    swift_once();
  }

  return &qword_280FE8148;
}

uint64_t sub_268E8F0EC()
{
  type metadata accessor for GetSoundAnalysisHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8148 = result;
  return result;
}

uint64_t sub_268E8F154()
{
  v1 = *sub_268E8F08C();

  return v1;
}

uint64_t sub_268E8F184(uint64_t a1, void (*a2)(id))
{
  v7 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v8 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v7, &dword_268CBE000, v8, "GetSoundAnalysisHandler handling intent", 39);

  MEMORY[0x277D82BD8](v8);
  v9 = sub_268F9B294();
  v3 = sub_268DC7AE8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268F9B734();
  sub_268F9AC14(v9, &dword_268CBE000, v10, "Get Sound Analysis mode currently is not supported", 50, 2);

  MEMORY[0x277D82BD8](v10);

  v4 = sub_268E948B8(17);
  v12 = sub_268E41B70(v4, v5);

  a2(v12);
  MEMORY[0x277D82BD8](v12);
}

uint64_t *sub_268E8F370()
{
  if (qword_280FE4370 != -1)
  {
    swift_once();
  }

  return &qword_280FE4378;
}

uint64_t sub_268E8F3D0()
{
  type metadata accessor for VolumeAdjustmentTracker();
  v1 = *sub_268F88868();

  result = sub_268E8F448(v1);
  qword_280FE4378 = result;
  return result;
}

uint64_t static VolumeAdjustmentTracker.shared.getter()
{
  v1 = *sub_268E8F370();

  return v1;
}

uint64_t sub_268E8F4E8()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t sub_268E8F52C()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_268E8F570()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_268E8F5B4()
{
  v2 = *(v0 + 72);

  return v2;
}

uint64_t sub_268E8F5F8()
{
  v2 = *(v0 + 88);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_268E8F654()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_268E8F698(uint64_t a1)
{
  v1[2] = 3;
  v1[3] = sub_268F9AEF4();
  v1[4] = v2;
  v1[5] = sub_268F9AEF4();
  v1[6] = v3;
  v1[7] = sub_268F9AEF4();
  v1[8] = v4;
  v1[9] = sub_268F9AEF4();
  v1[10] = v5;
  v1[12] = 0x4122750000000000;
  v1[13] = sub_268F9AEF4();
  v1[14] = v6;

  if (a1)
  {
    v8 = sub_268F23C10();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(v10 + 88) = v9;

  return v10;
}

void sub_268E8F818(uint64_t a1, void *a2, unsigned int a3)
{
  v13 = sub_268E90C0C();
  v18 = sub_268E9096C();
  v19 = sub_268E90CF8(a1, a2, a3);
  if (v19 == 2)
  {
    v12 = 0;
  }

  else
  {
    if (v13 != 2 && (v19 & 1) == (v13 & 1))
    {
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return;
      }

      v10 = v18 + 1;
    }

    else
    {
      v9 = *(v14 + 88);
      MEMORY[0x277D82BE0](v9);
      if (v9)
      {
        if (v19 == 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = sub_268F9B0A4();
        }

        v7 = sub_268F9AE14();

        [v9 setObject:v8 forKey:v7];
        MEMORY[0x277D82BD8](v7);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v9);
      }

      v10 = 1;
    }

    v12 = v10;
  }

  if (*(v14 + 16) < v12)
  {
    v6 = 1;
  }

  else
  {
    v6 = v12;
  }

  v5 = *(v14 + 88);
  MEMORY[0x277D82BE0](v5);
  if (v5)
  {

    v4 = sub_268F9AE14();

    [v5 setInteger:v6 forKey:v4];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }
}

BOOL sub_268E8FBCC(char a1)
{
  v6 = sub_268E9096C();
  v7 = *(v5 + 16);

  if (v6 != v7)
  {
    v2 = 0;
    goto LABEL_12;
  }

  v8 = sub_268E90C0C();
  if (a1 == 2)
  {
    if (v8 == 2)
    {
      v3 = 1;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v8 == 2)
  {
LABEL_9:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = (a1 & 1) == (v8 & 1);
LABEL_8:
  v2 = v3;
LABEL_12:

  return v2;
}

void sub_268E8FCF8(unint64_t a1, char a2)
{
  v19 = sub_268E90ABC();
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v15 = *(v17 + 88);
    MEMORY[0x277D82BE0](v15);
    if (v15)
    {

      v11 = sub_268F9AE14();

      v12 = [v15 integerForKey_];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v15);
      v13 = v12;
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    if (((a1 >> 52) & 0x7FF) == 0x7FF)
    {
      sub_268F9B584();
      __break(1u);
    }

    if (*&a1 <= -9.22337204e18)
    {
      sub_268F9B584();
      __break(1u);
    }

    if (*&a1 >= 9.22337204e18)
    {
      sub_268F9B584();
      __break(1u);
    }

    if ((v14 & 1) == 0 && v13 == *&a1)
    {
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return;
      }

      v9 = v19 + 1;
    }

    else
    {
      v8 = *(v17 + 88);
      MEMORY[0x277D82BE0](v8);
      if (v8)
      {

        v7 = sub_268F9AE14();

        [v8 setInteger:*&a1 forKey:v7];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      v9 = 1;
    }

    v6 = v9;
  }

  if (*(v17 + 16) < v6)
  {
    v5 = 1;
  }

  else
  {
    v5 = v6;
  }

  v4 = *(v17 + 88);
  MEMORY[0x277D82BE0](v4);
  if (v4)
  {

    v3 = sub_268F9AE14();

    [v4 setInteger:v5 forKey:v3];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

double sub_268E902F4(uint64_t a1)
{
  v12 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v12, &dword_268CBE000, v13, "[resetTracking] Resetting tracking counters.", 44, 2);

  MEMORY[0x277D82BD8](v13);
  v14 = *(v1 + 88);
  MEMORY[0x277D82BE0](v14);
  if (v14)
  {

    v10 = sub_268F9AE14();

    [v14 removeObjectForKey_];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v14);
  }

  v9 = *(v11 + 88);
  MEMORY[0x277D82BE0](v9);
  if (v9)
  {

    v8 = sub_268F9AE14();

    [v9 removeObjectForKey_];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  v7 = *(v11 + 88);
  MEMORY[0x277D82BE0](v7);
  if (v7)
  {

    v6 = sub_268F9AE14();

    [v7 removeObjectForKey_];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  v5 = *(v11 + 88);
  MEMORY[0x277D82BE0](v5);
  if (v5)
  {

    v4 = sub_268F9AE14();

    [v5 removeObjectForKey_];
    MEMORY[0x277D82BD8](v4);
    *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  return result;
}

BOOL sub_268E90658(uint64_t a1)
{
  v28 = a1;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v35 = 0;
  v29 = sub_268F99214();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v2, v3, v4);
  v33 = v11 - v32;
  v40 = v11 - v32;
  v39 = v5;
  v38 = v1;
  v34 = *(v1 + 88);
  MEMORY[0x277D82BE0](v34);
  if (v34)
  {
    v26 = v34;
    v22 = v34;
    v19 = v27[13];
    v20 = v27[14];

    v21 = sub_268F9AE14();

    [v22 doubleForKey_];
    v23 = v6;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
    v25 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

  v36 = v24;
  v37 = v25 & 1;
  if (v25)
  {
    v18 = 0;
  }

  else
  {
    v18 = v36;
  }

  sub_268F99194();
  sub_268F991B4();
  v7 = v8.n128_f64[0];
  v8.n128_u64[0] = v27[12];
  v17 = v8.n128_f64[0] <= v7;
  v35 = v8.n128_f64[0] <= v7;
  if (v8.n128_f64[0] <= v7)
  {
    v16 = v27[11];
    MEMORY[0x277D82BE0](v16);
    if (v16)
    {
      v15 = v16;
      v14 = v16;
      sub_268F991A4();
      v12 = v9;
      v11[1] = v27[13];
      v11[2] = v27[14];

      v13 = sub_268F9AE14();

      [v14 setDouble:v13 forKey:v12];
      MEMORY[0x277D82BD8](v13);
      v8 = MEMORY[0x277D82BD8](v14);
    }
  }

  (*(v30 + 8))(v33, v29, v8);
  return v17;
}

id sub_268E9096C()
{
  v7 = *(v0 + 88);
  MEMORY[0x277D82BE0](v7);
  if (v7)
  {

    v3 = sub_268F9AE14();

    v4 = [v7 integerForKey_];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

id sub_268E90ABC()
{
  v7 = *(v0 + 88);
  MEMORY[0x277D82BE0](v7);
  if (v7)
  {

    v3 = sub_268F9AE14();

    v4 = [v7 integerForKey_];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v7);
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268E90C0C()
{
  v5 = *(v0 + 88);
  MEMORY[0x277D82BE0](v5);
  if (v5)
  {

    v2 = sub_268F9AE14();

    v3 = [v5 BOOLForKey_];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v5);
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268E90CF8(uint64_t a1, void *a2, unsigned int a3)
{
  MEMORY[0x277D82BE0](a2);
  if (!a2)
  {
    return a3;
  }

  v5 = [a2 compare_];
  type metadata accessor for ComparisonResult(0);
  if (v5 == -1)
  {
    MEMORY[0x277D82BD8](a2);
    return 0;
  }

  if (!v5)
  {
    MEMORY[0x277D82BD8](a2);
    return 2;
  }

  if (v5 != 1)
  {
    sub_268F9B774();
    __break(1u);
    return a3;
  }

  MEMORY[0x277D82BD8](a2);
  return 1;
}

uint64_t VolumeAdjustmentTracker.deinit()
{
  sub_268CD9D30(v0 + 24);
  sub_268CD9D30(v0 + 40);
  sub_268CD9D30(v0 + 56);
  sub_268CD9D30(v0 + 72);
  sub_268D35038((v0 + 88));
  sub_268CD9D30(v0 + 104);
  return v2;
}

uint64_t *sub_268E90F44()
{
  if (qword_280FE5878 != -1)
  {
    swift_once();
  }

  return &qword_280FE8258;
}

uint64_t sub_268E90FA4()
{
  type metadata accessor for GetZoomHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8258 = result;
  return result;
}

uint64_t sub_268E9100C()
{
  v1 = *sub_268E90F44();

  return v1;
}

uint64_t sub_268E9103C(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "Unsupported platform. SetZoomHandler handling intent; Siri cannot set setting", 77, 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268E948B8(17);
  v9 = sub_268E41B70(v3, v4);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268E9119C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E911EC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91238()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91288(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91330()
{
  swift_beginAccess();
  v2 = *(v0 + 18);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91380(char a1)
{
  swift_beginAccess();
  *(v1 + 18) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91428()
{
  swift_beginAccess();
  v2 = *(v0 + 19);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91478(char a1)
{
  swift_beginAccess();
  *(v1 + 19) = a1;
  return swift_endAccess();
}

uint64_t sub_268E91520()
{
  swift_beginAccess();
  v2 = *(v0 + 20);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_268E91570(char a1)
{
  swift_beginAccess();
  *(v1 + 20) = a1;
  return swift_endAccess();
}

uint64_t sub_268E916B0()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 17) = 0;
  *(v0 + 18) = 0;
  *(v0 + 19) = 0;
  *(v0 + 20) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_268E916EC(char a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91774(char a1)
{

  swift_beginAccess();
  *(v1 + 17) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E917FC(char a1)
{

  swift_beginAccess();
  *(v1 + 18) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91884(char a1)
{

  swift_beginAccess();
  *(v1 + 19) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E9190C(char a1)
{

  swift_beginAccess();
  *(v1 + 20) = a1;
  swift_endAccess();

  return v4;
}

uint64_t sub_268E91994(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();

  return v4;
}

uint64_t sub_268E91A34(uint64_t a1)
{

  if (a1)
  {
    v3 = sub_268F9A834();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  *(v1 + 24) = v4;

  swift_endAccess();

  return v1;
}

uint64_t sub_268E91B38()
{
  type metadata accessor for SettingsNumericSettingAction();

  return sub_268E91BAC(v1);
}

uint64_t sub_268E91CAC()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_268E91D04(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_268E91DAC(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  swift_endAccess();
  *(v1 + 24) = v3;
  swift_beginAccess();
  v4 = *(a1 + 17);
  swift_endAccess();
  *(v1 + 25) = v4;
  swift_beginAccess();
  v5 = *(a1 + 18);
  swift_endAccess();
  *(v1 + 26) = v5;
  swift_beginAccess();
  v6 = *(a1 + 19);
  swift_endAccess();
  *(v1 + 27) = v6;
  swift_beginAccess();
  v7 = *(a1 + 20);
  swift_endAccess();
  *(v1 + 28) = v7;
  swift_beginAccess();
  v8 = *(a1 + 24);

  swift_endAccess();
  *(v1 + 32) = v8;

  return v10;
}

uint64_t sub_268E91F5C(char a1, char a2, char a3, char a4, char a5, uint64_t a6)
{
  type metadata accessor for SettingsNumericSettingAction.Builder();
  sub_268E91674();
  sub_268E916EC(a1 & 1);

  sub_268E91774(a2 & 1);

  sub_268E917FC(a3 & 1);

  sub_268E91884(a4 & 1);

  sub_268E9190C(a5 & 1);

  v12 = sub_268E91994(a6);

  v14 = sub_268E91BAC(v12);

  return v14;
}

void sub_268E92128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[2] = 0;
  v30[3] = a1;
  v30[4] = a2;

  v30[0] = sub_268F9AEF4();
  v30[1] = v3;
  v29[2] = a1;
  v29[3] = a2;
  v24 = MEMORY[0x26D62DB50](v30[0], v3, a1, a2);
  sub_268CD9D30(v30);
  if (v24)
  {

    v4 = *(v21 + 24);
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v4;
  }

  else
  {

    v29[0] = sub_268F9AEF4();
    v29[1] = v5;
    v28[2] = a1;
    v28[3] = a2;
    v19 = MEMORY[0x26D62DB50](v29[0], v5, a1, a2);
    sub_268CD9D30(v29);
    if (v19)
    {

      v6 = *(v21 + 25);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v6;
    }

    else
    {

      v28[0] = sub_268F9AEF4();
      v28[1] = v7;
      v27[2] = a1;
      v27[3] = a2;
      v18 = MEMORY[0x26D62DB50](v28[0], v7, a1, a2);
      sub_268CD9D30(v28);
      if (v18)
      {

        v8 = *(v21 + 26);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v8;
      }

      else
      {

        v27[0] = sub_268F9AEF4();
        v27[1] = v9;
        v26[2] = a1;
        v26[3] = a2;
        v17 = MEMORY[0x26D62DB50](v27[0], v9, a1, a2);
        sub_268CD9D30(v27);
        if (v17)
        {

          v10 = *(v21 + 27);
          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = v10;
        }

        else
        {

          v26[0] = sub_268F9AEF4();
          v26[1] = v11;
          v25[2] = a1;
          v25[3] = a2;
          v16 = MEMORY[0x26D62DB50](v26[0], v11, a1, a2);
          sub_268CD9D30(v26);
          if (v16)
          {

            v12 = *(v21 + 28);
            *(a3 + 24) = MEMORY[0x277D839B0];
            *a3 = v12;
          }

          else
          {

            v25[0] = sub_268F9AEF4();
            v25[1] = v13;
            v15 = MEMORY[0x26D62DB50](v25[0], v13, a1, a2);
            sub_268CD9D30(v25);
            if (v15)
            {

              v14 = *(v21 + 32);

              if (v14)
              {
                *(a3 + 24) = sub_268F9A874();
                *a3 = v14;
              }

              else
              {
                *a3 = 0;
                *(a3 + 8) = 0;
                *(a3 + 16) = 0;
                *(a3 + 24) = 0;
              }
            }

            else
            {

              *a3 = 0;
              *(a3 + 8) = 0;
              *(a3 + 16) = 0;
              *(a3 + 24) = 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268E925BC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "isSetValue";
  *(v2 + 8) = 10;
  *(v2 + 16) = 2;
  *(v2 + 24) = "isMinimum";
  *(v2 + 32) = 9;
  *(v2 + 40) = 2;
  *(v2 + 48) = "isMaximum";
  *(v2 + 56) = 9;
  *(v2 + 64) = 2;
  *(v2 + 72) = "isIncrease";
  *(v2 + 80) = 10;
  *(v2 + 88) = 2;
  *(v2 + 96) = "isDecrease";
  *(v2 + 104) = 10;
  *(v2 + 112) = 2;
  *(v2 + 120) = "value";
  *(v2 + 128) = 5;
  *(v2 + 136) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

uint64_t sub_268E9280C(uint64_t a1, uint64_t a2)
{

  v6 = sub_268E925BC(a1, a2);

  if (v6 == 6)
  {
    return 6;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_268E92AB0()
{
  v2 = qword_2802DDB38;
  if (!qword_2802DDB38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E92BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E925BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E92C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E928BC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E92C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268E9280C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268E92CB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268E928A4();
  *a1 = result;
  return result;
}

unint64_t sub_268E92D0C()
{
  v2 = qword_2802DDB40;
  if (!qword_2802DDB40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E92DB8()
{
  sub_268D35038((v0 + 16));
  sub_268D287E8((v0 + 32));
  return v2;
}

uint64_t sub_268E92E38(uint64_t a1)
{
  v24 = a1;
  v44 = 0;
  v43 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDB80, &unk_268FA6D58);
  v25 = *(v32 - 8);
  v26 = v32 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v2, v3, v4);
  v30 = v9 - v27;
  v44 = v5;
  v43 = v1;
  v28 = v5[3];
  v29 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v28);
  sub_268E92D0C();
  sub_268F9B844();
  v6 = v33;
  v42 = 0;
  sub_268F9B6B4();
  v34 = v6;
  v35 = v6;
  if (v6)
  {
    v9[5] = v35;
    return (*(v25 + 8))(v30, v32);
  }

  else
  {
    v41 = 1;
    sub_268F9B6B4();
    v22 = 0;
    v23 = 0;
    v40 = 2;
    sub_268F9B6B4();
    v20 = 0;
    v21 = 0;
    v39 = 3;
    sub_268F9B6B4();
    v18 = 0;
    v19 = 0;
    v38 = 4;
    sub_268F9B6B4();
    v16 = 0;
    v17 = 0;
    v10 = *(v31 + 32);

    v13 = &v37;
    v37 = v10;
    v11 = &v36;
    v36 = 5;
    v12 = sub_268F9A874();
    sub_268E94098();
    v7 = v16;
    sub_268F9B694();
    v14 = v7;
    v15 = v7;
    if (v7)
    {
      v9[0] = v15;
    }

    sub_268D287E8(&v37);
    return (*(v25 + 8))(v30, v32);
  }
}

uint64_t sub_268E93310(void *a1)
{
  swift_allocObject();
  v5 = sub_268E9339C(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268E9339C(void *a1)
{
  v43 = a1;
  v62 = 0;
  v61 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDB70, &qword_268FA6D50);
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v2, v3, v4);
  v48 = v17 - v47;
  v62 = v5;
  v61 = v1;
  *(v1 + 16) = 0;
  v50 = v5[3];
  v51 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v50);
  sub_268E92D0C();
  v6 = v49;
  sub_268F9B834();
  v52 = v6;
  v53 = v6;
  if (v6)
  {
    v21 = v53;
    v22 = 1;
  }

  else
  {
    v60 = 0;
    v7 = sub_268F9B624();
    v39 = 0;
    v40 = v7;
    v41 = 0;
    *(v42 + 24) = v7 & 1;
    v59 = 1;
    v8 = sub_268F9B624();
    v36 = 0;
    v37 = v8;
    v38 = 0;
    *(v42 + 25) = v8 & 1;
    v58 = 2;
    v9 = sub_268F9B624();
    v33 = 0;
    v34 = v9;
    v35 = 0;
    *(v42 + 26) = v9 & 1;
    v57 = 3;
    v10 = sub_268F9B624();
    v30 = 0;
    v31 = v10;
    v32 = 0;
    *(v42 + 27) = v10 & 1;
    v56 = 4;
    v11 = sub_268F9B624();
    v27 = 0;
    v28 = v11;
    v29 = 0;
    *(v42 + 28) = v11 & 1;
    v24 = sub_268F9A874();
    v23 = &v54;
    v54 = 5;
    sub_268E94018();
    v12 = v27;
    sub_268F9B604();
    v25 = v12;
    v26 = v12;
    if (!v12)
    {
      v13 = v44;
      v14 = v48;
      v15 = v45;
      *(v42 + 32) = v55;
      (*(v15 + 8))(v14, v13);
      __swift_destroy_boxed_opaque_existential_0(v43);
      return v42;
    }

    v20 = v26;
    (*(v45 + 8))(v48, v44);
    v21 = v20;
    v22 = 63;
  }

  v18 = v22;
  v19 = v21;
  if ((v22 & 0x7F) == 0x7F)
  {
  }

  else
  {
    sub_268D35038((v42 + 16));
    v17[3] = v42;
    v17[2] = v42;
    type metadata accessor for SettingsNumericSettingAction();
    swift_deallocPartialClassInstance();
  }

  __swift_destroy_boxed_opaque_existential_0(v43);
  return v17[1];
}

void (*sub_268E93AF4(uint64_t *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 43148);
  *a1 = v2;
  v2[4] = sub_268CDD364();
  return sub_268E93B70;
}

void sub_268E93B70(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

unint64_t sub_268E93C3C()
{
  v2 = qword_2802DDB48;
  if (!qword_2802DDB48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E93CB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268E93310(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268E93D84()
{
  v2 = qword_2802DDB50;
  if (!qword_2802DDB50)
  {
    type metadata accessor for SettingsNumericSettingAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93E1C()
{
  v2 = qword_2802DDB58;
  if (!qword_2802DDB58)
  {
    type metadata accessor for SettingsNumericSettingAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93EB4()
{
  v2 = qword_2802DDB60;
  if (!qword_2802DDB60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E93F48()
{
  v2 = qword_2802DDB68;
  if (!qword_2802DDB68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB68);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_268E94018()
{
  v2 = qword_2802DDB78;
  if (!qword_2802DDB78)
  {
    sub_268F9A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268E94098()
{
  v2 = qword_280FE66A8;
  if (!qword_280FE66A8)
  {
    sub_268F9A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E94118()
{
  type metadata accessor for SetAXClassicInvertColorsHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F15E0 = result;
  return result;
}

uint64_t *sub_268E94180()
{
  if (qword_2802DB770 != -1)
  {
    swift_once();
  }

  return &qword_2802F15E0;
}

uint64_t sub_268E941E0()
{
  v1 = *sub_268E94180();

  return v1;
}

uint64_t sub_268E94210(void *a1, void (*a2)(void), uint64_t a3)
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
    sub_268F9AC14(v11, &dword_268CBE000, v12, "SetAXClassicInvertColorsHandler handling intent", 47, 2);

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268D3EA14();

    v10 = sub_268DBD214();
    v14 = *v10;
    v15 = v10[1];
    v16 = *(v10 + 16);
    v17 = *(v28 + 24);

    sub_268DAAB84(v13, a1, v14, v15, v16, v17 & 1, a2, a3, sub_268E9486C, v28, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268E9486C, v28);
  }

  else
  {
    v18 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v19 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetAXClassicInvertColorsHandler handleSet | not supported on this device", 72, 2);

    MEMORY[0x277D82BD8](v19);

    v20 = sub_268E948B8(3);
    v21 = sub_268DAB158(0, v20, v7);

    (a2)(v21);
    MEMORY[0x277D82BD8](v21);
  }
}

uint64_t sub_268E947FC(char a1)
{

  sub_268D3EA44(a1 & 1);
}

uint64_t sub_268E94CD8(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "appNotInstalledForAnnounceNotifications";
  *(v2 + 8) = 39;
  *(v2 + 16) = 2;
  *(v2 + 24) = "cannotConnectToWifiNetwork";
  *(v2 + 32) = 26;
  *(v2 + 40) = 2;
  *(v2 + 48) = "cannotTemporarilyEnableAnnounceMessages";
  *(v2 + 56) = 39;
  *(v2 + 64) = 2;
  *(v2 + 72) = "deviceDoesNotSupportSetting";
  *(v2 + 80) = 27;
  *(v2 + 88) = 2;
  *(v2 + 96) = "environmentNotInstalled";
  *(v2 + 104) = 23;
  *(v2 + 112) = 2;
  *(v2 + 120) = "flashlightOverheated";
  *(v2 + 128) = 20;
  *(v2 + 136) = 2;
  *(v2 + 144) = "flashlightUnavailable";
  *(v2 + 152) = 21;
  *(v2 + 160) = 2;
  *(v2 + 168) = "focusNotConfigured";
  *(v2 + 176) = 18;
  *(v2 + 184) = 2;
  *(v2 + 192) = "operationNotPermitted";
  *(v2 + 200) = 21;
  *(v2 + 208) = 2;
  *(v2 + 216) = "applicableDevicesNeverConnected";
  *(v2 + 224) = 31;
  *(v2 + 232) = 2;
  *(v2 + 240) = "targetDeviceNotFoundReadBattery";
  *(v2 + 248) = 31;
  *(v2 + 256) = 2;
  *(v2 + 264) = "missingSIMOrCellular";
  *(v2 + 272) = 20;
  *(v2 + 280) = 2;
  *(v2 + 288) = "enabledHotspotDiscoverability";
  *(v2 + 296) = 29;
  *(v2 + 304) = 2;
  *(v2 + 312) = "disabledHotspotDiscoverability";
  *(v2 + 320) = 30;
  *(v2 + 328) = 2;
  *(v2 + 336) = "leaveHotspotDiscoverabilityDisabled";
  *(v2 + 344) = 35;
  *(v2 + 352) = 2;
  *(v2 + 360) = "hotspotDiscoverabilityAlreadyEnabled";
  *(v2 + 368) = 36;
  *(v2 + 376) = 2;
  *(v2 + 384) = "hotspotDiscoverabilityIsOn";
  *(v2 + 392) = 26;
  *(v2 + 400) = 2;
  *(v2 + 408) = "siriCannotChangeSetting";
  *(v2 + 416) = 23;
  *(v2 + 424) = 2;
  *(v2 + 432) = "siriCannotDisableItself";
  *(v2 + 440) = 23;
  *(v2 + 448) = 2;
  *(v2 + 456) = "siriCannotExecuteUserRequest";
  *(v2 + 464) = 28;
  *(v2 + 472) = 2;
  *(v2 + 480) = "siriCanOnlyAnnounceMessagesInCarPlay";
  *(v2 + 488) = 36;
  *(v2 + 496) = 2;
  *(v2 + 504) = "siriCannotChangeVoice";
  *(v2 + 512) = 21;
  *(v2 + 520) = 2;
  *(v2 + 528) = "setDisplayBrightnessNotSupportedInAmbient";
  *(v2 + 536) = 41;
  *(v2 + 544) = 2;
  *(v2 + 552) = "siriCannotGetOrSetStandBy";
  *(v2 + 560) = 25;
  *(v2 + 568) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_50:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
  }

  return 24;
}

unint64_t sub_268E95450()
{
  v2 = qword_2802DDB88;
  if (!qword_2802DDB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E9559C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E94CD8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E955D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E948B8(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E95608(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xE8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 23) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 232;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 24;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268E95770(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE8)
  {
    v5 = ((a3 + 23) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE8)
  {
    v4 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 23;
    }
  }

  return result;
}

unint64_t sub_268E95998()
{
  v2 = qword_2802DDB90;
  if (!qword_2802DDB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDB90);
    return WitnessTable;
  }

  return v2;
}

id sub_268E95A14()
{
  v0 = type metadata accessor for SetLabeledIntentHandler();
  v1 = sub_268E95A74(v0);
  result = sub_268E95AA4(v1);
  qword_2802F15E8 = result;
  return result;
}

uint64_t sub_268E95A74(uint64_t a1)
{
  v2 = *sub_268F7AD98();

  return v2;
}

uint64_t *sub_268E95AE0()
{
  if (qword_2802DB778 != -1)
  {
    swift_once();
  }

  return &qword_2802F15E8;
}

uint64_t sub_268E95B40()
{
  v0 = sub_268E95AE0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268E95B80()
{
  v2 = *(v0 + OBJC_IVAR____TtC19SiriSettingsIntents23SetLabeledIntentHandler_setHandlerProvider);

  return v2;
}

id sub_268E95BC0(uint64_t a1)
{
  v6 = 0;
  v5 = a1;

  *OBJC_IVAR____TtC19SiriSettingsIntents23SetLabeledIntentHandler_setHandlerProvider = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for SetLabeledIntentHandler();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x277D82BE0](v3);
  v6 = v3;

  MEMORY[0x277D82BD8](v6);
  return v3;
}

uint64_t sub_268E95C78(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = 0;
  v28 = 0;
  v32 = a1;
  v30 = a2;
  v31 = a3;
  v21 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v22 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v21, &dword_268CBE000, v22, "SetLabeledIntentHandler selecting setting handler", 49, 2);

  MEMORY[0x277D82BD8](v22);
  v24 = sub_268E77870(a1);
  if (v24 != 2)
  {
    v28 = v24 & 1;

    sub_268F7C5B0();

    if (v26[3])
    {
      sub_268CDF978(v26, __dst);
      v15 = sub_268F9B284();
      v4 = sub_268DC7AE8();
      v16 = *v4;
      MEMORY[0x277D82BE0](*v4);
      sub_268F9B734();
      v14 = v5;
      sub_268CDE730(__dst, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DDBB8, &qword_268FA6EA8);
      v12 = sub_268F9AE64();
      v13 = v6;
      v14[3] = MEMORY[0x277D837D0];
      v14[4] = sub_268CDD224();
      *v14 = v12;
      v14[1] = v13;
      sub_268CD0F7C();
      sub_268F9AC14(v15, &dword_268CBE000, v16, "Setting handler: %@ selected", 28, 2);

      MEMORY[0x277D82BD8](v16);
      v17 = __dst[4];
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);

      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a3;
      (*(v17 + 8))(a1, sub_268E96444);

      return __swift_destroy_boxed_opaque_existential_0(__dst);
    }

    sub_268D28414(v26);
  }

  v8 = sub_268DC7AE8();
  v10 = *v8;
  MEMORY[0x277D82BE0](*v8);
  v9 = sub_268F9B274();
  sub_268F9B734();
  sub_268F9AC04("Unable to find a setting handler for setting", 44, 2, &dword_268CBE000, v10, v9);

  MEMORY[0x277D82BD8](v10);

  sub_268DC0784();
  v11 = sub_268CD42AC(4, 0);
  a2();
  MEMORY[0x277D82BD8](v11);
}

uint64_t sub_268E96094(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v10 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v11 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v9 = v4;
  MEMORY[0x277D82BE0](a1);
  sub_268DC0784();
  sub_268E964F0();
  v7 = sub_268F9AE74();
  v8 = v5;
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_268CDD224();
  *v9 = v7;
  v9[1] = v8;
  sub_268CD0F7C();
  sub_268F9AC14(v10, &dword_268CBE000, v11, "Setting handler completed with response: %@", 43, 2);

  MEMORY[0x277D82BD8](v11);

  a2(a1);
}

id SetLabeledIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetLabeledIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268E964F0()
{
  v2 = qword_2802DDC20;
  if (!qword_2802DDC20)
  {
    sub_268DC0784();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDC20);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268E96570()
{
  if (qword_280FE4DF0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81B8;
}

uint64_t sub_268E965D0()
{
  type metadata accessor for GetBassReduceHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81B8 = result;
  return result;
}

uint64_t sub_268E96638()
{
  v1 = *sub_268E96570();

  return v1;
}

uint64_t sub_268E96668(void *a1, void (*a2)(id), uint64_t a3)
{
  v24 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v25 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v24, &dword_268CBE000, v25, "GetBassReduceHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v25);
  sub_268E50B9C();

  v27 = [a1 settingMetadata];
  v28 = sub_268E50C88(v27);
  MEMORY[0x277D82BD8](v27);

  if (v28)
  {
    v13 = sub_268F9B294();
    v10 = sub_268DC7AE8();
    v14 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268F9B734();
    sub_268F9AC14(v13, &dword_268CBE000, v14, "Bass Reduce mode not available on Sidekick devices", 50, 2);

    MEMORY[0x277D82BD8](v14);

    v11 = sub_268E948B8(3);
    v15 = sub_268E41B70(v11, v12);

    a2(v15);
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v4 = sub_268D2E630();
    SettingIntent.deviceCategory.getter(v4, &protocol witness table for INGetSettingIntent);
    if (v5)
    {
      v20 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v20 = sub_268F9AE04();
    }

    if (v20)
    {

      MEMORY[0x277D82BE0](a1);
      v19 = swift_allocObject();
      v19[2] = v23;
      v19[3] = a2;
      v19[4] = a3;
      v19[5] = a1;
      sub_268D47788();
    }

    else
    {
      v16 = sub_268F9B294();
      v6 = sub_268DC7AE8();
      v17 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_268F9B734();
      sub_268F9AC14(v16, &dword_268CBE000, v17, "Bass Reduce mode is only available on HomePod", 45, 2);

      MEMORY[0x277D82BD8](v17);

      v7 = sub_268E948B8(3);
      v18 = sub_268E41B70(v7, v8);

      a2(v18);
      MEMORY[0x277D82BD8](v18);
    }
  }
}

uint64_t sub_268E96B1C(unsigned __int8 a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v40 = a5;
  v41 = a4;
  v42 = a3;
  v43 = a2;
  v45 = 0;
  v44 = 0;
  v52 = a1;
  v51 = a2;
  v49 = a3;
  v50 = a4;
  v48 = a5;
  v46 = a1;

  if (v46 == 2)
  {
    v38 = *(v43 + 16);

    v39 = sub_268D477AC();

    v47 = v39;
  }

  else
  {
    v47 = v46;
  }

  v37 = v47;
  if (v47 == 2)
  {
    HIDWORD(v22) = sub_268F9B294();
    v24 = *sub_268DC7AE8();
    v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v23 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v22), &dword_268CBE000, v24, "Unable to determine the current Reduce Bass value", 49, 2);

    sub_268CDD0DC();
    v25 = sub_268CD42AC(6, 0);
    v42();

    return v44;
  }

  else
  {
    v36 = v37;
    v5 = v44;
    v34 = v37 & 1;
    v45 = v37 & 1;
    v6 = sub_268DBBEF4();
    v28 = *v6;
    v29 = v6[1];
    v30 = *(v6 + 16);
    v31 = *sub_268DC7AE8();
    v27 = v31;
    v7 = v31;
    v32 = *(v43 + 24);
    v8 = v40;

    v33 = &v22;
    MEMORY[0x28223BE20](v28, v29, v30, v31);
    v18[2] = v9;
    v19 = v34;
    v20 = v42;
    v21 = v10;
    sub_268DB944C(v11, v12, v13, v14, v15, sub_268E9715C, v18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v35 = v5;

    return v35;
  }
}

double sub_268E96E68(void *a1, char a2, void (*a3)(void *), uint64_t a4)
{
  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a1 settingMetadata];
  if (a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t sub_268E97194(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "GetSettingIntent#DescribeMultiSettingState";
  *(v2 + 8) = 42;
  *(v2 + 16) = 2;
  *(v2 + 24) = "GetSettingIntent#SiriCannotChangeSetting";
  *(v2 + 32) = 40;
  *(v2 + 40) = 2;
  *(v2 + 48) = "GetSettingIntent#DescribeBinarySettingState";
  *(v2 + 56) = 43;
  *(v2 + 64) = 2;
  *(v2 + 72) = "GetSettingIntent#DescribeNumericSettingStateSpokenOnly";
  *(v2 + 80) = 54;
  *(v2 + 88) = 2;
  *(v2 + 96) = "GetSettingIntent#DescribeNumericSettingState";
  *(v2 + 104) = 44;
  *(v2 + 112) = 2;
  *(v2 + 120) = "GetSettingIntent#TargetDeviceNotFoundReadBattery";
  *(v2 + 128) = 48;
  *(v2 + 136) = 2;
  *(v2 + 144) = "GetSettingIntent#HotspotDiscoverabilityPrompt";
  *(v2 + 152) = 45;
  *(v2 + 160) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_16:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 2;
      goto LABEL_16;
    case 3:
      v5 = 3;
      goto LABEL_16;
    case 4:
      v5 = 4;
      goto LABEL_16;
    case 5:
      v5 = 5;
      goto LABEL_16;
    case 6:
      v5 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268E9763C()
{
  v2 = qword_2802DDC30;
  if (!qword_2802DDC30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DDC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268E97788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268E97194(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268E977C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268E97434(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268E977F4(uint64_t a1)
{
  v8 = a1;
  v6[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v1, v2, v3);
  v7 = v6 - v6[0];
  sub_268D2A1F0(v4, v6 - v6[0]);
  sub_268D29FC8(v7, v6[1]);
  return sub_268D28588(v8);
}

uint64_t sub_268E97898()
{
  v29 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v19 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v25 = &v18 - v19;
  v29 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v21 = sub_268F9B734();
  v22 = v5;
  v24 = 1;
  v6 = sub_268F9AEF4();
  v7 = v22;
  v8 = v6;
  v9 = v23;
  v11 = v10;
  v12 = v25;
  *v22 = v8;
  v7[1] = v11;
  sub_268D2A1F0(v9, v12);
  v26 = sub_268F9A9C4();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  if ((*(v27 + 48))(v25, v24) == 1)
  {
    sub_268D28588(v25);
    v17 = v22;
    v22[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  else
  {
    v13 = v22;
    v22[5] = v26;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 2);
    (*(v27 + 32))(boxed_opaque_existential_1, v25, v26);
  }

  sub_268CD0F7C();
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268E97A84@<X0>(void *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v6[1] = 0;
  v7 = (*(*(type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v8 = v6 - v7;
  v10 = v6 - v7;
  v4 = sub_268F9A9C4();
  (*(*(v4 - 8) + 56))(v8, 1);
  return sub_268D84F40(v8, v9);
}

uint64_t type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(uint64_t a1)
{
  v2 = qword_2802DDC48;
  if (!qword_2802DDC48)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E97C00(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268E97CB0()
{
  v2 = *(v0 + *(type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0) + 24));

  return v2;
}

uint64_t sub_268E97CE8(uint64_t a1)
{

  *(v1 + *(type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0) + 24)) = a1;
}

uint64_t sub_268E97D58(unsigned int a1)
{
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  result = a1;
  *(v1 + *(SettingIntentDescribeMultiSettingStateParameters + 28)) = a1;
  return result;
}

uint64_t sub_268E97DC8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268E97EB0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268E97F98(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268E98080(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268E98168(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268E98250(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268E98338(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeMultiSettingStateParameters + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268E98440()
{
  v201 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v180 = *(*(v1 - 8) + 64);
  v181 = (v180 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v182 = &v147 - v181;
  v183 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v181, v6, v7, v8);
  v184 = &v147 - v183;
  v185 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v183, v10, v11, v12);
  v186 = &v147 - v185;
  v187 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v185, v14, v15, v16);
  v188 = &v147 - v187;
  v189 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v187, v18, v19, v20);
  v190 = &v147 - v189;
  v191 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v189, v22, v23, v24);
  v192 = &v147 - v191;
  v193 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v191, v26, v27, v28);
  v194 = &v147 - v193;
  v195 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v147 - v193, v30, v31, v32);
  v196 = &v147 - v195;
  v201 = v0;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v198 = sub_268F9B734();
  v199 = v33;
  v34 = sub_268F9AEF4();
  v35 = v199;
  *v199 = v34;
  v35[1] = v36;
  v200 = *v0;

  if (v200)
  {
    v178 = v200;
    v177 = v200;
    v37 = sub_268F9AA44();
    v38 = v199;
    v39 = v177;
    v199[5] = v37;
    v38[2] = v39;
  }

  else
  {
    v146 = v199;
    v199[2] = 0;
    v146[3] = 0;
    v146[4] = 0;
    v146[5] = 0;
  }

  v168 = v199 + 8;
  v171 = 1;
  v40 = sub_268F9AEF4();
  v41 = v199;
  v199[6] = v40;
  v41[7] = v42;
  v170 = 0;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D2A1F0((v179 + *(SettingIntentDescribeMultiSettingStateParameters + 20)), v196);
  v172 = sub_268F9A9C4();
  v173 = *(v172 - 8);
  v174 = v172 - 8;
  v175 = *(v173 + 48);
  v176 = v173 + 48;
  if (v175(v196, v171) == 1)
  {
    sub_268D28588(v196);
    v145 = v199;
    v199[8] = 0;
    v145[9] = 0;
    v145[10] = 0;
    v145[11] = 0;
  }

  else
  {
    v43 = v168;
    v199[11] = v172;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v173 + 32))(boxed_opaque_existential_1, v196, v172);
  }

  v45 = sub_268F9AEF4();
  v46 = v199;
  v47 = SettingIntentDescribeMultiSettingStateParameters;
  v48 = v179;
  v199[12] = v45;
  v46[13] = v49;
  v167 = *(v48 + *(v47 + 24));

  if (v167)
  {
    v166 = v167;
    v165 = v167;
    v50 = type metadata accessor for SettingsMultiSetting(0);
    v51 = v199;
    v52 = v165;
    v199[17] = v50;
    v51[14] = v52;
  }

  else
  {
    v144 = v199;
    v199[14] = 0;
    v144[15] = 0;
    v144[16] = 0;
    v144[17] = 0;
  }

  v53 = sub_268F9AEF4();
  v54 = v199;
  v55 = SettingIntentDescribeMultiSettingStateParameters;
  v56 = v179;
  v199[18] = v53;
  v54[19] = v57;
  v164 = *(v56 + *(v55 + 28));
  if (v164 == 2)
  {
    v143 = v199;
    v199[20] = 0;
    v143[21] = 0;
    v143[22] = 0;
    v143[23] = 0;
  }

  else
  {
    v163 = v164;
    v58 = v199;
    v59 = v164;
    v199[23] = MEMORY[0x277D839B0];
    *(v58 + 160) = v59 & 1;
  }

  v161 = v199 + 26;
  v162 = 1;
  v60 = sub_268F9AEF4();
  v61 = v199;
  v62 = SettingIntentDescribeMultiSettingStateParameters;
  v63 = v179;
  v65 = v64;
  v66 = v194;
  v199[24] = v60;
  v61[25] = v65;
  sub_268D2A1F0((v63 + *(v62 + 32)), v66);
  if ((v175)(v194, v162, v172) == 1)
  {
    sub_268D28588(v194);
    v142 = v199;
    v199[26] = 0;
    v142[27] = 0;
    v142[28] = 0;
    v142[29] = 0;
  }

  else
  {
    v67 = v161;
    v199[29] = v172;
    v68 = __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v173 + 32))(v68, v194, v172);
  }

  v159 = v199 + 32;
  v160 = 1;
  v69 = sub_268F9AEF4();
  v70 = v199;
  v71 = SettingIntentDescribeMultiSettingStateParameters;
  v72 = v179;
  v74 = v73;
  v75 = v192;
  v199[30] = v69;
  v70[31] = v74;
  sub_268D2A1F0((v72 + *(v71 + 36)), v75);
  if ((v175)(v192, v160, v172) == 1)
  {
    sub_268D28588(v192);
    v141 = v199;
    v199[32] = 0;
    v141[33] = 0;
    v141[34] = 0;
    v141[35] = 0;
  }

  else
  {
    v76 = v159;
    v199[35] = v172;
    v77 = __swift_allocate_boxed_opaque_existential_1(v76);
    (*(v173 + 32))(v77, v192, v172);
  }

  v157 = v199 + 38;
  v158 = 1;
  v78 = sub_268F9AEF4();
  v79 = v199;
  v80 = SettingIntentDescribeMultiSettingStateParameters;
  v81 = v179;
  v83 = v82;
  v84 = v190;
  v199[36] = v78;
  v79[37] = v83;
  sub_268D2A1F0((v81 + *(v80 + 40)), v84);
  if ((v175)(v190, v158, v172) == 1)
  {
    sub_268D28588(v190);
    v140 = v199;
    v199[38] = 0;
    v140[39] = 0;
    v140[40] = 0;
    v140[41] = 0;
  }

  else
  {
    v85 = v157;
    v199[41] = v172;
    v86 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(v173 + 32))(v86, v190, v172);
  }

  v155 = v199 + 44;
  v156 = 1;
  v87 = sub_268F9AEF4();
  v88 = v199;
  v89 = SettingIntentDescribeMultiSettingStateParameters;
  v90 = v179;
  v92 = v91;
  v93 = v188;
  v199[42] = v87;
  v88[43] = v92;
  sub_268D2A1F0((v90 + *(v89 + 56)), v93);
  if ((v175)(v188, v156, v172) == 1)
  {
    sub_268D28588(v188);
    v139 = v199;
    v199[44] = 0;
    v139[45] = 0;
    v139[46] = 0;
    v139[47] = 0;
  }

  else
  {
    v94 = v155;
    v199[47] = v172;
    v95 = __swift_allocate_boxed_opaque_existential_1(v94);
    (*(v173 + 32))(v95, v188, v172);
  }

  v154 = 1;
  v96 = sub_268F9AEF4();
  v97 = v199;
  v98 = SettingIntentDescribeMultiSettingStateParameters;
  v99 = v179;
  v199[48] = v96;
  v97[49] = v100;
  LOBYTE(v99) = *(v99 + *(v98 + 60));
  v152 = MEMORY[0x277D839B0];
  v97[53] = MEMORY[0x277D839B0];
  *(v97 + 400) = v99;
  v101 = sub_268F9AEF4();
  v102 = v152;
  v103 = v199;
  v104 = SettingIntentDescribeMultiSettingStateParameters;
  v105 = v179;
  v199[54] = v101;
  v103[55] = v106;
  LOBYTE(v105) = *(v105 + *(v104 + 64));
  v103[59] = v102;
  *(v103 + 448) = v105;
  v153 = v103 + 62;
  v107 = sub_268F9AEF4();
  v108 = v199;
  v109 = SettingIntentDescribeMultiSettingStateParameters;
  v110 = v179;
  v112 = v111;
  v113 = v186;
  v199[60] = v107;
  v108[61] = v112;
  sub_268D2A1F0((v110 + *(v109 + 44)), v113);
  if ((v175)(v186, v154, v172) == 1)
  {
    sub_268D28588(v186);
    v138 = v199;
    v199[62] = 0;
    v138[63] = 0;
    v138[64] = 0;
    v138[65] = 0;
  }

  else
  {
    v114 = v153;
    v199[65] = v172;
    v115 = __swift_allocate_boxed_opaque_existential_1(v114);
    (*(v173 + 32))(v115, v186, v172);
  }

  v150 = v199 + 68;
  v151 = 1;
  v116 = sub_268F9AEF4();
  v117 = v199;
  v118 = SettingIntentDescribeMultiSettingStateParameters;
  v119 = v179;
  v121 = v120;
  v122 = v184;
  v199[66] = v116;
  v117[67] = v121;
  sub_268D2A1F0((v119 + *(v118 + 48)), v122);
  if ((v175)(v184, v151, v172) == 1)
  {
    sub_268D28588(v184);
    v137 = v199;
    v199[68] = 0;
    v137[69] = 0;
    v137[70] = 0;
    v137[71] = 0;
  }

  else
  {
    v123 = v150;
    v199[71] = v172;
    v124 = __swift_allocate_boxed_opaque_existential_1(v123);
    (*(v173 + 32))(v124, v184, v172);
  }

  v148 = v199 + 74;
  v149 = 1;
  v125 = sub_268F9AEF4();
  v126 = v199;
  v127 = SettingIntentDescribeMultiSettingStateParameters;
  v128 = v179;
  v130 = v129;
  v131 = v182;
  v199[72] = v125;
  v126[73] = v130;
  sub_268D2A1F0((v128 + *(v127 + 52)), v131);
  if ((v175)(v182, v149, v172) == 1)
  {
    sub_268D28588(v182);
    v136 = v199;
    v199[74] = 0;
    v136[75] = 0;
    v136[76] = 0;
    v136[77] = 0;
  }

  else
  {
    v132 = v148;
    v199[77] = v172;
    v133 = __swift_allocate_boxed_opaque_existential_1(v132);
    (*(v173 + 32))(v133, v182, v172);
  }

  sub_268CD0F7C();
  v147 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268E99160@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, void *a9@<X8>, const void *a10, const void *a11, const void *a12, char a13, char a14)
{
  *a9 = a1;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  sub_268D84F40(a2, a9 + SettingIntentDescribeMultiSettingStateParameters[5]);
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[6]) = a3;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[7]) = a4;
  sub_268D84F40(a5, a9 + SettingIntentDescribeMultiSettingStateParameters[8]);
  sub_268D84F40(a6, a9 + SettingIntentDescribeMultiSettingStateParameters[9]);
  sub_268D84F40(a7, a9 + SettingIntentDescribeMultiSettingStateParameters[10]);
  sub_268D84F40(a8, a9 + SettingIntentDescribeMultiSettingStateParameters[11]);
  sub_268D84F40(a10, a9 + SettingIntentDescribeMultiSettingStateParameters[12]);
  sub_268D84F40(a11, a9 + SettingIntentDescribeMultiSettingStateParameters[13]);
  sub_268D84F40(a12, a9 + SettingIntentDescribeMultiSettingStateParameters[14]);
  result = SettingIntentDescribeMultiSettingStateParameters;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[15]) = a13;
  *(a9 + SettingIntentDescribeMultiSettingStateParameters[16]) = a14;
  return result;
}

uint64_t type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(uint64_t a1)
{
  v2 = qword_2802DDC58;
  if (!qword_2802DDC58)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E99384(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  v6 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D29FC8(v10, (v1 + *(v6 + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99458(unsigned int a1)
{
  v2 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_268E99490()
{
  v59 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v51 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v52 = v38 - v51;
  v59 = v0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v54 = sub_268F9B734();
  v57 = v5;
  v56 = 1;
  v6 = sub_268F9AEF4();
  v8 = v7;
  v9 = v57;
  *v57 = v6;
  v9[1] = v8;
  LOBYTE(v8) = *v0;
  v55 = MEMORY[0x277D839B0];
  v9[5] = MEMORY[0x277D839B0];
  *(v9 + 16) = v8;
  v10 = sub_268F9AEF4();
  v11 = v55;
  v13 = v12;
  v14 = v57;
  v57[6] = v10;
  v14[7] = v13;
  LOBYTE(v13) = *(v0 + 1);
  v14[11] = v11;
  *(v14 + 64) = v13;
  v15 = sub_268F9AEF4();
  v16 = v57;
  v57[12] = v15;
  v16[13] = v17;
  v58 = *(v0 + 8);

  if (v58)
  {
    v49 = v58;
    v48 = v58;
    v18 = type metadata accessor for SettingsBinarySetting(0);
    v19 = v57;
    v20 = v48;
    v57[17] = v18;
    v19[14] = v20;
  }

  else
  {
    v37 = v57;
    v57[14] = 0;
    v37[15] = 0;
    v37[16] = 0;
    v37[17] = 0;
  }

  v41 = v57 + 20;
  v44 = 1;
  v21 = sub_268F9AEF4();
  v22 = v57;
  v57[18] = v21;
  v22[19] = v23;
  v43 = 0;
  v42 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D2A1F0((v50 + *(v42 + 28)), v52);
  v45 = sub_268F9A9C4();
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  if ((*(v46 + 48))(v52, v44) == 1)
  {
    sub_268D28588(v52);
    v36 = v57;
    v57[20] = 0;
    v36[21] = 0;
    v36[22] = 0;
    v36[23] = 0;
  }

  else
  {
    v24 = v41;
    v57[23] = v45;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v46 + 32))(boxed_opaque_existential_1, v52, v45);
  }

  v26 = sub_268F9AEF4();
  v27 = v57;
  v28 = v42;
  v29 = v50;
  v57[24] = v26;
  v27[25] = v30;
  v40 = *(v29 + *(v28 + 32));
  if (v40 == 2)
  {
    v35 = v57;
    v57[26] = 0;
    v35[27] = 0;
    v35[28] = 0;
    v35[29] = 0;
  }

  else
  {
    v39 = v40;
    v31 = v57;
    v32 = v40;
    v57[29] = MEMORY[0x277D839B0];
    *(v31 + 208) = v32 & 1;
  }

  sub_268CD0F7C();
  v38[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268E99838@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, const void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  v10 = type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  sub_268D84F40(a4, (a6 + *(v10 + 28)));
  result = v10;
  *(a6 + *(v10 + 32)) = a5;
  return result;
}

uint64_t type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(uint64_t a1)
{
  v2 = qword_2802DDC68;
  if (!qword_2802DDC68)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E99950(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 20)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99A00()
{
  v2 = *(v0 + *(type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0) + 24));

  return v2;
}

uint64_t sub_268E99A38(uint64_t a1)
{

  *(v1 + *(type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0) + 24)) = a1;
}

uint64_t sub_268E99AA8(unsigned int a1)
{
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  result = a1;
  *(v1 + *(SettingIntentDescribeBinarySettingStateParameters + 28)) = a1;
  return result;
}

uint64_t sub_268E99B18(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 32)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99C00(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 36)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99CE8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99DD0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 44)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99EB8(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 48)));
  return sub_268D28588(v11);
}

uint64_t sub_268E99FA0(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 52)));
  return sub_268D28588(v11);
}

uint64_t sub_268E9A088(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeBinarySettingStateParameters + 56)));
  return sub_268D28588(v11);
}

uint64_t sub_268E9A1B4(unsigned int a1)
{
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  result = a1;
  *(v1 + *(SettingIntentDescribeBinarySettingStateParameters + 68)) = a1;
  return result;
}

uint64_t sub_268E9A1EC()
{
  v211 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v190 = *(*(v1 - 8) + 64);
  v191 = (v190 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v192 = v155 - v191;
  v193 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v191, v6, v7, v8);
  v194 = v155 - v193;
  v195 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v193, v10, v11, v12);
  v196 = v155 - v195;
  v197 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v195, v14, v15, v16);
  v198 = v155 - v197;
  v199 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v197, v18, v19, v20);
  v200 = v155 - v199;
  v201 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v199, v22, v23, v24);
  v202 = v155 - v201;
  v203 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v201, v26, v27, v28);
  v204 = v155 - v203;
  v205 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155 - v203, v30, v31, v32);
  v206 = v155 - v205;
  v211 = v0;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v208 = sub_268F9B734();
  v209 = v33;
  v34 = sub_268F9AEF4();
  v35 = v209;
  *v209 = v34;
  v35[1] = v36;
  v210 = *v0;

  if (v210)
  {
    v188 = v210;
    v187 = v210;
    v37 = sub_268F9AA44();
    v38 = v209;
    v39 = v187;
    v209[5] = v37;
    v38[2] = v39;
  }

  else
  {
    v154 = v209;
    v209[2] = 0;
    v154[3] = 0;
    v154[4] = 0;
    v154[5] = 0;
  }

  v178 = v209 + 8;
  v181 = 1;
  v40 = sub_268F9AEF4();
  v41 = v209;
  v209[6] = v40;
  v41[7] = v42;
  v180 = 0;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D2A1F0((v189 + *(SettingIntentDescribeBinarySettingStateParameters + 20)), v206);
  v182 = sub_268F9A9C4();
  v183 = *(v182 - 8);
  v184 = v182 - 8;
  v185 = *(v183 + 48);
  v186 = v183 + 48;
  if (v185(v206, v181) == 1)
  {
    sub_268D28588(v206);
    v153 = v209;
    v209[8] = 0;
    v153[9] = 0;
    v153[10] = 0;
    v153[11] = 0;
  }

  else
  {
    v43 = v178;
    v209[11] = v182;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v183 + 32))(boxed_opaque_existential_1, v206, v182);
  }

  v45 = sub_268F9AEF4();
  v46 = v209;
  v47 = SettingIntentDescribeBinarySettingStateParameters;
  v48 = v189;
  v209[12] = v45;
  v46[13] = v49;
  v177 = *(v48 + *(v47 + 24));

  if (v177)
  {
    v176 = v177;
    v175 = v177;
    v50 = type metadata accessor for SettingsBinarySetting(0);
    v51 = v209;
    v52 = v175;
    v209[17] = v50;
    v51[14] = v52;
  }

  else
  {
    v152 = v209;
    v209[14] = 0;
    v152[15] = 0;
    v152[16] = 0;
    v152[17] = 0;
  }

  v53 = sub_268F9AEF4();
  v54 = v209;
  v55 = SettingIntentDescribeBinarySettingStateParameters;
  v56 = v189;
  v209[18] = v53;
  v54[19] = v57;
  v174 = *(v56 + *(v55 + 28));
  if (v174 == 2)
  {
    v151 = v209;
    v209[20] = 0;
    v151[21] = 0;
    v151[22] = 0;
    v151[23] = 0;
  }

  else
  {
    v173 = v174;
    v58 = v209;
    v59 = v174;
    v209[23] = MEMORY[0x277D839B0];
    *(v58 + 160) = v59 & 1;
  }

  v171 = v209 + 26;
  v172 = 1;
  v60 = sub_268F9AEF4();
  v61 = v209;
  v62 = SettingIntentDescribeBinarySettingStateParameters;
  v63 = v189;
  v65 = v64;
  v66 = v204;
  v209[24] = v60;
  v61[25] = v65;
  sub_268D2A1F0((v63 + *(v62 + 32)), v66);
  if ((v185)(v204, v172, v182) == 1)
  {
    sub_268D28588(v204);
    v150 = v209;
    v209[26] = 0;
    v150[27] = 0;
    v150[28] = 0;
    v150[29] = 0;
  }

  else
  {
    v67 = v171;
    v209[29] = v182;
    v68 = __swift_allocate_boxed_opaque_existential_1(v67);
    (*(v183 + 32))(v68, v204, v182);
  }

  v169 = v209 + 32;
  v170 = 1;
  v69 = sub_268F9AEF4();
  v70 = v209;
  v71 = SettingIntentDescribeBinarySettingStateParameters;
  v72 = v189;
  v74 = v73;
  v75 = v202;
  v209[30] = v69;
  v70[31] = v74;
  sub_268D2A1F0((v72 + *(v71 + 36)), v75);
  if ((v185)(v202, v170, v182) == 1)
  {
    sub_268D28588(v202);
    v149 = v209;
    v209[32] = 0;
    v149[33] = 0;
    v149[34] = 0;
    v149[35] = 0;
  }

  else
  {
    v76 = v169;
    v209[35] = v182;
    v77 = __swift_allocate_boxed_opaque_existential_1(v76);
    (*(v183 + 32))(v77, v202, v182);
  }

  v167 = v209 + 38;
  v168 = 1;
  v78 = sub_268F9AEF4();
  v79 = v209;
  v80 = SettingIntentDescribeBinarySettingStateParameters;
  v81 = v189;
  v83 = v82;
  v84 = v200;
  v209[36] = v78;
  v79[37] = v83;
  sub_268D2A1F0((v81 + *(v80 + 40)), v84);
  if ((v185)(v200, v168, v182) == 1)
  {
    sub_268D28588(v200);
    v148 = v209;
    v209[38] = 0;
    v148[39] = 0;
    v148[40] = 0;
    v148[41] = 0;
  }

  else
  {
    v85 = v167;
    v209[41] = v182;
    v86 = __swift_allocate_boxed_opaque_existential_1(v85);
    (*(v183 + 32))(v86, v200, v182);
  }

  v165 = v209 + 44;
  v166 = 1;
  v87 = sub_268F9AEF4();
  v88 = v209;
  v89 = SettingIntentDescribeBinarySettingStateParameters;
  v90 = v189;
  v92 = v91;
  v93 = v198;
  v209[42] = v87;
  v88[43] = v92;
  sub_268D2A1F0((v90 + *(v89 + 56)), v93);
  if ((v185)(v198, v166, v182) == 1)
  {
    sub_268D28588(v198);
    v147 = v209;
    v209[44] = 0;
    v147[45] = 0;
    v147[46] = 0;
    v147[47] = 0;
  }

  else
  {
    v94 = v165;
    v209[47] = v182;
    v95 = __swift_allocate_boxed_opaque_existential_1(v94);
    (*(v183 + 32))(v95, v198, v182);
  }

  v164 = 1;
  v96 = sub_268F9AEF4();
  v97 = v209;
  v98 = SettingIntentDescribeBinarySettingStateParameters;
  v99 = v189;
  v209[48] = v96;
  v97[49] = v100;
  LOBYTE(v99) = *(v99 + *(v98 + 60));
  v162 = MEMORY[0x277D839B0];
  v97[53] = MEMORY[0x277D839B0];
  *(v97 + 400) = v99;
  v101 = sub_268F9AEF4();
  v102 = v162;
  v103 = v209;
  v104 = SettingIntentDescribeBinarySettingStateParameters;
  v105 = v189;
  v209[54] = v101;
  v103[55] = v106;
  LOBYTE(v105) = *(v105 + *(v104 + 64));
  v103[59] = v102;
  *(v103 + 448) = v105;
  v163 = v103 + 62;
  v107 = sub_268F9AEF4();
  v108 = v209;
  v109 = SettingIntentDescribeBinarySettingStateParameters;
  v110 = v189;
  v112 = v111;
  v113 = v196;
  v209[60] = v107;
  v108[61] = v112;
  sub_268D2A1F0((v110 + *(v109 + 44)), v113);
  if ((v185)(v196, v164, v182) == 1)
  {
    sub_268D28588(v196);
    v146 = v209;
    v209[62] = 0;
    v146[63] = 0;
    v146[64] = 0;
    v146[65] = 0;
  }

  else
  {
    v114 = v163;
    v209[65] = v182;
    v115 = __swift_allocate_boxed_opaque_existential_1(v114);
    (*(v183 + 32))(v115, v196, v182);
  }

  v160 = v209 + 68;
  v161 = 1;
  v116 = sub_268F9AEF4();
  v117 = v209;
  v118 = SettingIntentDescribeBinarySettingStateParameters;
  v119 = v189;
  v121 = v120;
  v122 = v194;
  v209[66] = v116;
  v117[67] = v121;
  sub_268D2A1F0((v119 + *(v118 + 48)), v122);
  if ((v185)(v194, v161, v182) == 1)
  {
    sub_268D28588(v194);
    v145 = v209;
    v209[68] = 0;
    v145[69] = 0;
    v145[70] = 0;
    v145[71] = 0;
  }

  else
  {
    v123 = v160;
    v209[71] = v182;
    v124 = __swift_allocate_boxed_opaque_existential_1(v123);
    (*(v183 + 32))(v124, v194, v182);
  }

  v158 = v209 + 74;
  v159 = 1;
  v125 = sub_268F9AEF4();
  v126 = v209;
  v127 = SettingIntentDescribeBinarySettingStateParameters;
  v128 = v189;
  v130 = v129;
  v131 = v192;
  v209[72] = v125;
  v126[73] = v130;
  sub_268D2A1F0((v128 + *(v127 + 52)), v131);
  if ((v185)(v192, v159, v182) == 1)
  {
    sub_268D28588(v192);
    v144 = v209;
    v209[74] = 0;
    v144[75] = 0;
    v144[76] = 0;
    v144[77] = 0;
  }

  else
  {
    v132 = v158;
    v209[77] = v182;
    v133 = __swift_allocate_boxed_opaque_existential_1(v132);
    (*(v183 + 32))(v133, v192, v182);
  }

  v134 = sub_268F9AEF4();
  v135 = v209;
  v136 = SettingIntentDescribeBinarySettingStateParameters;
  v137 = v189;
  v209[78] = v134;
  v135[79] = v138;
  v157 = *(v137 + *(v136 + 68));
  if (v157 == 2)
  {
    v143 = v209;
    v209[80] = 0;
    v143[81] = 0;
    v143[82] = 0;
    v143[83] = 0;
  }

  else
  {
    v156 = v157;
    v139 = v209;
    v140 = v157;
    v209[83] = MEMORY[0x277D839B0];
    *(v139 + 640) = v140 & 1;
  }

  sub_268CD0F7C();
  v155[1] = v141;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

int *sub_268E9AFB0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, const void *a7@<X6>, const void *a8@<X7>, void *a9@<X8>, const void *a10, const void *a11, const void *a12, char a13, char a14, char a15)
{
  *a9 = a1;
  SettingIntentDescribeBinarySettingStateParameters = type metadata accessor for GetSettingIntentDescribeBinarySettingStateParameters(0);
  sub_268D84F40(a2, a9 + SettingIntentDescribeBinarySettingStateParameters[5]);
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[6]) = a3;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[7]) = a4;
  sub_268D84F40(a5, a9 + SettingIntentDescribeBinarySettingStateParameters[8]);
  sub_268D84F40(a6, a9 + SettingIntentDescribeBinarySettingStateParameters[9]);
  sub_268D84F40(a7, a9 + SettingIntentDescribeBinarySettingStateParameters[10]);
  sub_268D84F40(a8, a9 + SettingIntentDescribeBinarySettingStateParameters[11]);
  sub_268D84F40(a10, a9 + SettingIntentDescribeBinarySettingStateParameters[12]);
  sub_268D84F40(a11, a9 + SettingIntentDescribeBinarySettingStateParameters[13]);
  sub_268D84F40(a12, a9 + SettingIntentDescribeBinarySettingStateParameters[14]);
  result = SettingIntentDescribeBinarySettingStateParameters;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[15]) = a13;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[16]) = a14;
  *(a9 + SettingIntentDescribeBinarySettingStateParameters[17]) = a15;
  return result;
}

uint64_t sub_268E9B140(uint64_t a1)
{

  *(v1 + 16) = a1;
}

uint64_t type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(uint64_t a1)
{
  v2 = qword_2802DDC78;
  if (!qword_2802DDC78)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E9B228(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)));
  return sub_268D28588(v11);
}

uint64_t sub_268E9B2D8()
{
  v60 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v54 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v55 = v38 - v54;
  v60 = v0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v57 = sub_268F9B734();
  v58 = v5;
  v6 = sub_268F9AEF4();
  v7 = v58;
  *v58 = v6;
  v7[1] = v8;
  v59 = *v0;

  if (v59)
  {
    v52 = v59;
    v51 = v59;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v58;
    v11 = v51;
    v58[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v37 = v58;
    v58[2] = 0;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v58;
  v14 = v53;
  v58[6] = v12;
  v13[7] = v15;
  v50 = *(v14 + 8);

  if (v50)
  {
    v49 = v50;
    v48 = v50;
    v16 = sub_268F9AA44();
    v17 = v58;
    v18 = v48;
    v58[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v36 = v58;
    v58[8] = 0;
    v36[9] = 0;
    v36[10] = 0;
    v36[11] = 0;
  }

  v19 = sub_268F9AEF4();
  v20 = v58;
  v21 = v53;
  v58[12] = v19;
  v20[13] = v22;
  v47 = *(v21 + 16);

  if (v47)
  {
    v46 = v47;
    v45 = v47;
    v23 = type metadata accessor for SettingsNumericSetting(0);
    v24 = v58;
    v25 = v45;
    v58[17] = v23;
    v24[14] = v25;
  }

  else
  {
    v35 = v58;
    v58[14] = 0;
    v35[15] = 0;
    v35[16] = 0;
    v35[17] = 0;
  }

  v39 = v58 + 20;
  v41 = 1;
  v26 = sub_268F9AEF4();
  v27 = v58;
  v58[18] = v26;
  v27[19] = v28;
  v40 = 0;
  SettingIntentDescribeNumericSettingStateSpokenOnlyParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0);
  sub_268D2A1F0((v53 + *(SettingIntentDescribeNumericSettingStateSpokenOnlyParameters + 28)), v55);
  v42 = sub_268F9A9C4();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  if ((*(v43 + 48))(v55, v41) == 1)
  {
    sub_268D28588(v55);
    v34 = v58;
    v58[20] = 0;
    v34[21] = 0;
    v34[22] = 0;
    v34[23] = 0;
  }

  else
  {
    v30 = v39;
    v58[23] = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    (*(v43 + 32))(boxed_opaque_existential_1, v55, v42);
  }

  sub_268CD0F7C();
  v38[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

char *sub_268E9B680@<X0>(char *a1@<X8>)
{
  v12 = a1;
  v13 = 0;
  v8 = 0;
  v9 = (*(*(type metadata accessor for GetSettingIntentDescribeNumericSettingStateSpokenOnlyParameters(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v4 = &v8 - v9;
  v11 = v4;
  v13 = &v8 - v9;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v10 = *(v5 + 28);
  v6 = sub_268F9A9C4();
  (*(*(v6 - 8) + 56))(&v11[v10], 1);
  return sub_268EA2DE4(v11, v12);
}

uint64_t sub_268E9B770(uint64_t a1)
{

  *(v1 + 24) = a1;
}

uint64_t type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(uint64_t a1)
{
  v2 = qword_2802DDC90;
  if (!qword_2802DDC90)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E9B864(uint64_t a1)
{
  v11 = a1;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v10 = &v8 - v9;
  sub_268D2A1F0(v5, &v8 - v9);
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0);
  sub_268D29FC8(v10, (v1 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
  return sub_268D28588(v11);
}

uint64_t sub_268E9B914()
{
  v75 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v69 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v70 = v51 - v69;
  v75 = v0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  v72 = sub_268F9B734();
  v73 = v5;
  v6 = sub_268F9AEF4();
  v7 = v73;
  *v73 = v6;
  v7[1] = v8;
  v74 = *v0;

  if (v74)
  {
    v67 = v74;
    v66 = v74;
    v9 = type metadata accessor for SettingsNumericSettingAction();
    v10 = v73;
    v11 = v66;
    v73[5] = v9;
    v10[2] = v11;
  }

  else
  {
    v50 = v73;
    v73[2] = 0;
    v50[3] = 0;
    v50[4] = 0;
    v50[5] = 0;
  }

  v12 = sub_268F9AEF4();
  v13 = v73;
  v14 = v68;
  v73[6] = v12;
  v13[7] = v15;
  v65 = *(v14 + 8);

  if (v65)
  {
    v64 = v65;
    v63 = v65;
    v16 = sub_268F9AA44();
    v17 = v73;
    v18 = v63;
    v73[11] = v16;
    v17[8] = v18;
  }

  else
  {
    v49 = v73;
    v73[8] = 0;
    v49[9] = 0;
    v49[10] = 0;
    v49[11] = 0;
  }

  v61 = 1;
  v19 = sub_268F9AEF4();
  v20 = v73;
  v21 = v68;
  v73[12] = v19;
  v20[13] = v22;
  LOBYTE(v21) = *(v21 + 16);
  v60 = MEMORY[0x277D839B0];
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v21;
  v23 = sub_268F9AEF4();
  v24 = v60;
  v25 = v73;
  v26 = v68;
  v73[18] = v23;
  v25[19] = v27;
  LOBYTE(v26) = *(v26 + 17);
  v25[23] = v24;
  *(v25 + 160) = v26;
  v28 = sub_268F9AEF4();
  v29 = v73;
  v30 = v68;
  v73[24] = v28;
  v29[25] = v31;
  v62 = *(v30 + 24);

  if (v62)
  {
    v59 = v62;
    v58 = v62;
    v32 = type metadata accessor for SettingsNumericSetting(0);
    v33 = v73;
    v34 = v58;
    v73[29] = v32;
    v33[26] = v34;
  }

  else
  {
    v48 = v73;
    v73[26] = 0;
    v48[27] = 0;
    v48[28] = 0;
    v48[29] = 0;
  }

  v54 = 1;
  v35 = sub_268F9AEF4();
  v36 = v73;
  v37 = v68;
  v73[30] = v35;
  v36[31] = v38;
  LOBYTE(v37) = *(v37 + 32);
  v36[35] = MEMORY[0x277D839B0];
  *(v36 + 256) = v37;
  v52 = v36 + 38;
  v39 = sub_268F9AEF4();
  v40 = v73;
  v73[36] = v39;
  v40[37] = v41;
  v53 = 0;
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0);
  sub_268D2A1F0((v68 + *(SettingIntentDescribeNumericSettingStateParameters + 40)), v70);
  v55 = sub_268F9A9C4();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  if ((*(v56 + 48))(v70, v54) == 1)
  {
    sub_268D28588(v70);
    v47 = v73;
    v73[38] = 0;
    v47[39] = 0;
    v47[40] = 0;
    v47[41] = 0;
  }

  else
  {
    v43 = v52;
    v73[41] = v55;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    (*(v56 + 32))(boxed_opaque_existential_1, v70, v55);
  }

  sub_268CD0F7C();
  v51[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

void *sub_268E9BD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  SettingIntentDescribeNumericSettingStateParameters = type metadata accessor for GetSettingIntentDescribeNumericSettingStateParameters(0);
  return sub_268D84F40(a7, (a8 + *(SettingIntentDescribeNumericSettingStateParameters + 40)));
}

uint64_t sub_268E9BDD8(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;

  return MEMORY[0x2822009F8](sub_268E9BEE4, 0);
}

uint64_t sub_268E9BEE4()
{
  v8 = MEMORY[0x277D55BE8];
  v1 = v0[10];
  v6 = v1;
  v7 = v0[9];
  v5 = v0[6];
  v0[4] = v0;
  sub_268E97A84(v1);
  v5(v6);
  v13 = sub_268F9AEF4();
  v10 = v2;
  v0[11] = v2;
  sub_268D2A1F0(v6, v7);
  v11 = sub_268E97898();
  v0[12] = v11;
  sub_268D28588(v7);
  v12 = (v8 + *v8);
  v3 = swift_task_alloc();
  *(v9 + 104) = v3;
  *v3 = *(v9 + 32);
  v3[1] = sub_268E9C044;

  return v12(v13, v10, v11);
}

uint64_t sub_268E9C044(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = sub_268E9C298;
  }

  else
  {

    v3 = sub_268E9C1D8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E9C1D8()
{
  v1 = v0[10];
  v0[4] = v0;
  sub_268D28588(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[14];

  return v2(v3);
}

uint64_t sub_268E9C298()
{
  v3 = *(v0 + 80);
  *(v0 + 32) = v0;

  sub_268D28588(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t type metadata accessor for GetSettingIntentTargetDeviceNotFoundReadBatteryParameters(uint64_t a1)
{
  v2 = qword_2802DDC38;
  if (!qword_2802DDC38)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268E9C3E8(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 48) = a3;
  *(v5 + 194) = a2 & 1;
  *(v5 + 193) = a1 & 1;
  *(v5 + 32) = v5;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 192) = a1 & 1;
  *(v5 + 200) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 40) = v4;

  return MEMORY[0x2822009F8](sub_268E9C62C, 0);
}

uint64_t sub_268E9C62C()
{
  v19 = MEMORY[0x277D55BE8];
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);
  v11 = *(v0 + 128);
  v12 = *(v0 + 120);
  v13 = *(v0 + 112);
  v14 = *(v0 + 104);
  v15 = *(v0 + 96);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);
  v16 = *(v0 + 48);
  v10 = *(v0 + 194);
  v9 = *(v0 + 193);
  *(v0 + 32) = v0;
  v4 = sub_268F9A9C4();
  v5 = *(*(v4 - 8) + 56);
  v5(v11, 1);
  (v5)(v12, 1, 1, v4);
  (v5)(v13, 1, 1, v4);
  (v5)(v14, 1, 1, v4);
  (v5)(v15, 1, 1, v4);
  (v5)(v6, 1, 1, v4);
  (v5)(v7, 1, 1, v4);
  (v5)(v8, 1, 1, v4);
  sub_268E99160(0, v11, 0, 2, v12, v13, v14, v15, v17, v6, v7, v8, v9, v10);
  v16(v17);
  v24 = sub_268F9AEF4();
  v21 = v1;
  *(v0 + 152) = v1;
  sub_268E9CDC4(v17, v18);
  v22 = sub_268E98440();
  *(v0 + 160) = v22;
  sub_268E9D6B8(v18);
  v23 = (v19 + *v19);
  v2 = swift_task_alloc();
  *(v20 + 168) = v2;
  *v2 = *(v20 + 32);
  v2[1] = sub_268E9C984;

  return v23(v24, v21, v22);
}

uint64_t sub_268E9C984(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[22] = a1;
  v5[23] = v1;

  if (v1)
  {
    v3 = sub_268E9CC60;
  }

  else
  {

    v3 = sub_268E9CB18;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268E9CB18()
{
  v1 = v0[18];
  v0[4] = v0;
  sub_268E9D6B8(v1);

  v2 = *(v0[4] + 8);
  v3 = v0[22];

  return v2(v3);
}

uint64_t sub_268E9CC60()
{
  v3 = *(v0 + 144);
  *(v0 + 32) = v0;

  sub_268E9D6B8(v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

char *sub_268E9CDC4(void *a1, char *a2)
{
  v28 = *a1;

  *a2 = v28;
  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  v30 = SettingIntentDescribeMultiSettingStateParameters[5];
  v32 = sub_268F9A9C4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if ((v34)(a1 + v30, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(&a2[v30], a1 + v30, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))();
    (*(v33 + 56))(&a2[v30], 0, 1, v32);
  }

  v23 = SettingIntentDescribeMultiSettingStateParameters[6];
  v24 = *(a1 + v23);

  *&a2[v23] = v24;
  a2[SettingIntentDescribeMultiSettingStateParameters[7]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[7]);
  __dst = &a2[SettingIntentDescribeMultiSettingStateParameters[8]];
  __src = a1 + SettingIntentDescribeMultiSettingStateParameters[8];
  if (v34())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(__dst, __src, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(__dst, __src, v32);
    (*(v33 + 56))(__dst, 0, 1, v32);
  }

  v21 = &a2[SettingIntentDescribeMultiSettingStateParameters[9]];
  v22 = a1 + SettingIntentDescribeMultiSettingStateParameters[9];
  if (v34())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v21, v22, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v21, v22, v32);
    (*(v33 + 56))(v21, 0, 1, v32);
  }

  v19 = &a2[SettingIntentDescribeMultiSettingStateParameters[10]];
  v20 = a1 + SettingIntentDescribeMultiSettingStateParameters[10];
  if (v34())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v19, v20, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v19, v20, v32);
    (*(v33 + 56))(v19, 0, 1, v32);
  }

  v17 = &a2[SettingIntentDescribeMultiSettingStateParameters[11]];
  v18 = a1 + SettingIntentDescribeMultiSettingStateParameters[11];
  if (v34())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v17, v18, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v17, v18, v32);
    (*(v33 + 56))(v17, 0, 1, v32);
  }

  v15 = &a2[SettingIntentDescribeMultiSettingStateParameters[12]];
  v16 = a1 + SettingIntentDescribeMultiSettingStateParameters[12];
  if (v34())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v15, v16, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v15, v16, v32);
    (*(v33 + 56))(v15, 0, 1, v32);
  }

  v13 = &a2[SettingIntentDescribeMultiSettingStateParameters[13]];
  v14 = a1 + SettingIntentDescribeMultiSettingStateParameters[13];
  if (v34())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v13, v14, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v13, v14, v32);
    (*(v33 + 56))(v13, 0, 1, v32);
  }

  v11 = &a2[SettingIntentDescribeMultiSettingStateParameters[14]];
  v12 = a1 + SettingIntentDescribeMultiSettingStateParameters[14];
  if (v34())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
    memcpy(v11, v12, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v33 + 16))(v11, v12, v32);
    (*(v33 + 56))(v11, 0, 1, v32);
  }

  result = a2;
  a2[SettingIntentDescribeMultiSettingStateParameters[15]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[15]);
  a2[SettingIntentDescribeMultiSettingStateParameters[16]] = *(a1 + SettingIntentDescribeMultiSettingStateParameters[16]);
  return result;
}

uint64_t sub_268E9D6B8(uint64_t a1)
{

  SettingIntentDescribeMultiSettingStateParameters = type metadata accessor for GetSettingIntentDescribeMultiSettingStateParameters(0);
  v10 = SettingIntentDescribeMultiSettingStateParameters[5];
  v12 = sub_268F9A9C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (!(v14)(a1 + v10, 1))
  {
    (*(v13 + 8))(a1 + v10, v12);
  }

  v8 = a1 + SettingIntentDescribeMultiSettingStateParameters[8];
  if (!v14())
  {
    (*(v13 + 8))(v8, v12);
  }

  v7 = a1 + SettingIntentDescribeMultiSettingStateParameters[9];
  if (!v14())
  {
    (*(v13 + 8))(v7, v12);
  }

  v6 = a1 + SettingIntentDescribeMultiSettingStateParameters[10];
  if (!v14())
  {
    (*(v13 + 8))(v6, v12);
  }

  v5 = a1 + SettingIntentDescribeMultiSettingStateParameters[11];
  if (!v14())
  {
    (*(v13 + 8))(v5, v12);
  }

  v4 = a1 + SettingIntentDescribeMultiSettingStateParameters[12];
  if (!v14())
  {
    (*(v13 + 8))(v4, v12);
  }

  v3 = a1 + SettingIntentDescribeMultiSettingStateParameters[13];
  if (!v14())
  {
    (*(v13 + 8))(v3, v12);
  }

  v2 = a1 + SettingIntentDescribeMultiSettingStateParameters[14];
  if (!v14())
  {
    (*(v13 + 8))(v2, v12);
  }

  return a1;
}

uint64_t sub_268E9DAA4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 48) = a2;
  *(v4 + 137) = a1 & 1;
  *(v4 + 32) = v4;
  *(v4 + 136) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 72) = swift_task_alloc();
  type metadata accessor for GetSettingIntentSiriCannotChangeSettingParameters(0);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 136) = a1 & 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 40) = v3;

  return MEMORY[0x2822009F8](sub_268E9DC28, 0);
}

uint64_t sub_268E9DC28()
{
  v11 = MEMORY[0x277D55BE8];
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  v6 = *(v0 + 137);
  *(v0 + 32) = v0;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 56))(v7, 1);
  v2 = sub_268CDD6D4();
  sub_268E99838(v6 & 1, v2 & 1, 0, v7, 2, v9);
  v8(v9);
  v16 = sub_268F9AEF4();
  v13 = v3;
  *(v0 + 96) = v3;
  sub_268E9E160(v9, v10);
  v14 = sub_268E99490();
  *(v0 + 104) = v14;
  sub_268E9E320(v10);
  v15 = (v11 + *v11);
  v4 = swift_task_alloc();
  *(v12 + 112) = v4;
  *v4 = *(v12 + 32);
  v4[1] = sub_268E9DE08;

  return v15(v16, v13, v14);
}