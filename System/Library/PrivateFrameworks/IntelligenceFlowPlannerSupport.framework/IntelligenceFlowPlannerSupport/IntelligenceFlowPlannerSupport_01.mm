uint64_t sub_22BE33584(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t getEnumTagSinglePayload for SessionEventPayloadType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD5)
  {
    if (a2 + 43 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 43) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 44;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v5 = v6 - 44;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22BE3369C(uint64_t a1)
{

  return sub_22C273074();
}

unint64_t sub_22BE33758()
{
  result = qword_28106E050[0];
  if (!qword_28106E050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106E050);
  }

  return result;
}

uint64_t sub_22BE337AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE337F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE3385C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22C2708C4();
  v7 = sub_22BE199F4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Session.Event.payload.getter()
{
  v0 = sub_22BE1A5E4();
  type metadata accessor for Session.Event(v0);
  sub_22BE1C058();
  v2 = sub_22BE25438(v1);
  return sub_22BE1A964(v2, v3);
}

uint64_t sub_22BE33928(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_22BE5CE4C(a2, a3);
  sub_22BE18000();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BE33980(uint64_t a1)
{

  return sub_22C273C44();
}

void sub_22BE339A0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_22BE339DC(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BE33A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274214();
}

uint64_t sub_22BE33B10(uint64_t a1, uint64_t a2)
{

  return sub_22C273EB4();
}

uint64_t sub_22BE33B6C(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_22BE33B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274234();
}

uint64_t sub_22BE33C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C26E1D4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void Session.Transcript.formingQuerylessEvent(id:clientRequestId:_:)()
{
  sub_22BE19460();
  sub_22C18F9F4(v5, v6, v7);
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE3E508();
  v10 = sub_22C26E1D4();
  sub_22BE187D0();
  v12 = *(v11 + 16);
  v39 = v0;
  sub_22C18F300();
  v12();
  type metadata accessor for Session.Event(0);
  sub_22C18E864();
  sub_22C18F9C4();
  v38 = v12;
  v12();
  sub_22BE3AE2C();
  sub_22BE19DC4(v13, v14, v15, v16);
  sub_22BE1C058();
  sub_22BE1A964(v3, v1 + v17);
  v18 = sub_22C18FAA8();
  v20 = *(v4 + v19 + 8);
  v36 = *(v4 + v19);
  v21 = (v4 + *(v18 + 28));
  v22 = v21[1];
  v35 = *v21;
  v23 = (v1 + *(v2 + 48));

  sub_22C18FE2C();

  v37 = v20;

  sub_22C26E134();
  v24 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C(&qword_28106E038);
  }

  v26 = sub_22BE199F4(v10, qword_28108A1E0);
  v27 = type metadata accessor for Timepoint(0);
  (v38)(v23 + v27[7], v26, v10);
  *(v23 + v27[5]) = v24;
  *(v23 + v27[6]) = v25;
  sub_22BE340C8();
  v28 = sub_22C272E84();
  sub_22BE3AE2C();
  sub_22BE19DC4(v29, v30, v31, v32);
  sub_22C18FEE8();
  sub_22BE2343C();
  sub_22BE40678();
  sub_22C18FE38(v33);
  v34 = (v1 + *(v2 + 40));
  *v34 = v36;
  v34[1] = v37;
  *v23 = v35;
  v23[1] = v22;
  *(v1 + v26) = xmmword_22C2B7780;
  sub_22C18E7C8();
  sub_22C1900FC();
  v28(v39, v10);
  sub_22BE1AABC();
}

uint64_t sub_22BE33F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 112) = a5;

  return sub_22C273EB4();
}

uint64_t sub_22BE34004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_22BE5CE4C(a4, a5);
}

uint64_t sub_22BE34098(uint64_t a1)
{

  return sub_22C273EB4();
}

unint64_t sub_22BE340C8()
{
  result = qword_28107C8C8;
  if (!qword_28107C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C8C8);
  }

  return result;
}

uint64_t sub_22BE34140()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE34210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22BE34278(uint64_t a1)
{
  v2 = type metadata accessor for Session.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static PlatformPnRTelemetry.ended(_:_:_:)()
{
  sub_22BE19460();
  v46 = v3;
  v47 = v1;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22BE29080();
  sub_22BE179D8();
  v45 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE183AC();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B72C();
  v21 = sub_22C271E24();
  sub_22BE179D8();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v27 = v26 - v25;
  v28 = *v7;
  v43 = v7[1];
  v44 = v28;
  v29 = v7[2];
  sub_22BE34640(v5, v0);
  if (sub_22BE1AEA8(v0, 1, v21) == 1)
  {
    sub_22BE33928(v0, &qword_27D908318, &unk_22C27A418);
    if (qword_27D906348 != -1)
    {
      sub_22BE17B78(&qword_27D906348);
    }

    v30 = sub_22C2720A4();
    sub_22BE199F4(v30, qword_27D9082F8);
    v31 = sub_22C272084();
    v32 = sub_22C2737A4();
    if (sub_22BE251A8(v32))
    {
      *swift_slowAlloc() = 0;
      sub_22BE19E74(&dword_22BE15000, v33, v34, "Nil traceIds (likely due to no Transcript Events), skipping Telemetry Biome stream insertion");
      sub_22BE183C8();
    }
  }

  else
  {
    (*(v23 + 32))(v27, v0, v21);
    type metadata accessor for TelemetryStream();
    sub_22C271F74();
    sub_22C271F84();
    sub_22BE187DC();
    sub_22BE19DC4(v35, v36, v37, v38);
    sub_22BE346D4(v27, v2);
    sub_22BE33928(v2, &qword_27D9082E8, &unk_22C27A3C0);
    v48 = v44;
    v49 = v43;
    v50 = v29;
    sub_22BE34990();
    v39 = v45;
    v40 = *(v45 + 8);
    v41 = sub_22BE1B328();
    v40(v41);
    (*(v39 + 32))(v18, v15, v10);
    static TelemetryStream.insert(_:)(v18);
    v42 = sub_22BE1B328();
    v40(v42);
    (*(v23 + 8))(v27, v21);
  }

  sub_22BE1AABC();
}

uint64_t sub_22BE34640(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE346D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D908380, &qword_22C27AB58);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v8);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v16 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE3E508();
  v18 = sub_22C271D24();
  sub_22BE179D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  v24 = v23 - v22;
  sub_22C271D14();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22C26E1D4();
  sub_22BE187DC();
  sub_22BE19DC4(v25, v26, v27, v28);
  sub_22C271D04();
  v29 = sub_22C271E24();
  sub_22BE18000();
  (*(v30 + 16))(v15, a1, v29);
  sub_22BE187DC();
  sub_22BE19DC4(v31, v32, v33, v29);
  sub_22C271CF4();
  sub_22C271D64();
  sub_22BE2B9D0(a2, v11, &qword_27D9082E8, &unk_22C27A3C0);
  sub_22C271CD4();
  (*(v20 + 16))(v7, v24, v18);
  sub_22BE187DC();
  sub_22BE19DC4(v34, v35, v36, v18);
  sub_22C271D34();
  return (*(v20 + 8))(v24, v18);
}

void sub_22BE34990()
{
  sub_22BE19460();
  v130 = v2;
  v4 = v3;
  v126 = v5;
  v133 = v6;
  v7 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v131 = v9;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1A174();
  v129 = v12;
  v13 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  v128 = v15;
  sub_22BE183BC();
  sub_22C271CC4();
  sub_22BE179D8();
  v123[9] = v17;
  v123[10] = v16;
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  v123[7] = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19490();
  v123[6] = v20;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v21);
  sub_22BE19490();
  v123[5] = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v123[4] = v24;
  v25 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v26 = sub_22BE19448(v25);
  MEMORY[0x28223BE20](v26);
  sub_22BE17B98();
  v123[3] = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v123[2] = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19490();
  v123[1] = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  v123[0] = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22BE5CE4C(&qword_27D908360, &unk_22C27AB18);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE1AEF0();
  v37 = sub_22C271D74();
  sub_22BE179D8();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22BE179EC();
  v123[8] = v42 - v41;
  sub_22BE183BC();
  v127 = sub_22C271EC4();
  sub_22BE179D8();
  v132 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22BE183AC();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = v123 - v49;
  sub_22C271F54();
  sub_22BE179D8();
  v124 = v52;
  v125 = v51;
  MEMORY[0x28223BE20](v51);
  sub_22BE179EC();
  sub_22BE2BB64();
  v53 = *v4;
  v54 = v4[1];
  v55 = v4[2];
  (*(v39 + 16))(v133, v126, v37);
  sub_22C271F44();
  v126 = v50;
  sub_22C271EB4();
  switch(v53 >> 61)
  {
    case 2uLL:
      v61 = sub_22BE3D3EC();
      sub_22BE35210(v61, v62, v63);
      v64 = sub_22BE9535C();
      v65(v64);
      v66 = sub_22BE357E4();
      v67(v66);
      goto LABEL_9;
    case 3uLL:
      v134[0] = v54;
      v134[1] = v55;
      sub_22BE941E0(v134);
      v68 = v132;
      v69 = v126;
      v70 = v127;
      (*(v132 + 8))(v126, v127);
      (*(v68 + 32))(v69, v47, v70);
      type metadata accessor for TelemetryStream();
      v71 = v54;
      v72 = v69;
      sub_22BE95898(v71, v0);
      sub_22C271E94();
      v73 = sub_22BE3D3EC();
      sub_22BE93F64(v73, v74, v75);
      v76 = sub_22BE9535C();
      v77(v76);
      v78 = sub_22BE357E4();
      v79(v78);
      goto LABEL_10;
    case 4uLL:
    case 5uLL:
    case 6uLL:
      sub_22BE1B318();
      sub_22BE1C27C();
      v82 = sub_22BE23C3C();
      v83(v82);
      goto LABEL_7;
    case 7uLL:
      sub_22BE1B318();
      v80 = sub_22BE23C3C();
      v81(v80);
LABEL_7:
      v84 = sub_22BE22BD8();
      v85(v84);
      v86 = sub_22BE19198();
      sub_22BE3D114(v86, v87, v88, v55);
      break;
    default:
      v56 = sub_22BE28988();
      v57(v56);
      sub_22BE187DC();
      sub_22BE19DC4(v58, v59, v60, v55);
      break;
  }

  sub_22C271CE4();
LABEL_9:
  v72 = v126;
  v70 = v127;
LABEL_10:
  v89 = v132;
  (*(v132 + 16))(v128, v72, v70);
  v90 = sub_22C271F14();
  sub_22BE18000();
  sub_22BE354D0();
  v99(v91, v92, v93, v94, v95, v96, v97, v98);
  v100 = sub_22BE19198();
  sub_22BE3D114(v100, v101, v102, v90);
  sub_22C271F34();
  v103 = sub_22C26E1D4();
  sub_22BE18000();
  (*(v104 + 16))(v129, v130, v103);
  sub_22BE187DC();
  sub_22BE19DC4(v105, v106, v107, v103);
  sub_22C271F24();
  v109 = v124;
  v108 = v125;
  (*(v124 + 16))(v131, v1, v125);
  v110 = sub_22C271D44();
  sub_22BE18000();
  sub_22BE354D0();
  v119(v111, v112, v113, v114, v115, v116, v117, v118);
  v120 = sub_22BE19198();
  sub_22BE3D114(v120, v121, v122, v110);
  sub_22C271D54();
  (*(v89 + 8))(v72, v70);
  (*(v109 + 8))(v1, v108);
  sub_22BE1AABC();
}

uint64_t sub_22BE35210@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1AEF0();
  v9 = *a2;
  sub_22C271D74();
  sub_22BE18000();
  (*(v10 + 16))(a3, a1);
  switch(v9)
  {
    case 0:
      v11 = MEMORY[0x277D1F678];
      break;
    case 1:
      v11 = MEMORY[0x277D1F660];
      break;
    case 2:
      v11 = MEMORY[0x277D1F688];
      break;
    case 3:
      v11 = MEMORY[0x277D1F6C8];
      break;
    case 4:
      v11 = MEMORY[0x277D1F6A0];
      break;
    case 6:
      v11 = MEMORY[0x277D1F6B0];
      break;
    default:
      if (qword_27D906348 != -1)
      {
        sub_22BE17B78(&qword_27D906348);
      }

      v12 = sub_22C2720A4();
      sub_22BE199F4(v12, qword_27D9082F8);
      v13 = sub_22C272084();
      v14 = sub_22C2737A4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 136315138;
        v17 = sub_22C273094();
        v19 = sub_22BE61C88(v17, v18, &v29);

        *(v15 + 4) = v19;
        sub_22BE339A0(&dword_22BE15000, v20, v21, "Warning! Telemetry for %s should be added!");
        sub_22BE26B64(v16);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      *v3 = 0;
      v11 = MEMORY[0x277D1F6F0];
      break;
  }

  v22 = *v11;
  v23 = sub_22C271CC4();
  sub_22BE18000();
  (*(v24 + 104))(v3, v22, v23);
  sub_22BE187DC();
  sub_22BE19DC4(v25, v26, v27, v23);
  return sub_22C271CE4();
}

uint64_t sub_22BE354E8(uint64_t a1)
{

  return swift_allocObject();
}

void *sub_22BE35514@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  *v2 = a1;
  return v2;
}

unint64_t sub_22BE35528()
{

  return sub_22BE60508(v0, 0, 0, 2);
}

uint64_t static TelemetryStream.insert(_:)(uint64_t result)
{
  if (qword_28107BCE8 != -1)
  {
    v1 = swift_once();
  }

  if (qword_28107BD08)
  {
    v1 = sub_22BE26B00(&xmmword_28107BCF0, &v2);
  }

  else
  {
    v2 = xmmword_28107BCF0;
    v3 = unk_28107BD00;
    v4 = qword_28107BD10;
  }

  if (*(&v3 + 1))
  {
    sub_22BE1BD3C(&v2, *(&v3 + 1));
    sub_22C271FA4();
    return sub_22BE26B64(&v2);
  }

  return v1;
}

uint64_t sub_22BE3570C(uint64_t a1, void *a2)
{
  result = ToolkitCache.__allocating_init(parameters:)(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t ToolkitCache.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22BE5CE4C(&qword_27D90B938, &qword_22C28FF30);
  swift_allocObject();
  v3 = sub_22C271BB4();
  sub_22C271B74();
  sub_22BE18524();
  (*(v4 + 8))(a1);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t sub_22BE357F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_22BF0D574(a1, a2, a3);

  return static Lexer.Token.== infix(_:_:)(v3 - 144, v3 - 112);
}

uint64_t sub_22BE35920(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *_s30IntelligenceFlowPlannerSupport11PersonQueryV6HandleV4KindOwst_0_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE35A30);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE35A5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_22BE39E30(v8);
}

uint64_t sub_22BE35B1C(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

void sub_22BE35B3C(uint64_t a1, ...)
{
  va_start(va, a1);

  sub_22BF0DED8(8, va);
}

uint64_t sub_22BE35B58(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274214();
}

void sub_22BE35B7C(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v6, v7, a4, a5, a6, v8, 2u);
}

uint64_t sub_22BE35BE0()
{

  return sub_22C108634();
}

uint64_t sub_22BE35C64(uint64_t result)
{
  *(v2 - 80) = *(v1 + *(result + 20));
  *(v2 - 81) = 1;
  return result;
}

uint64_t sub_22BE35CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_22BE5CE4C(a5, a6);
}

uint64_t sub_22BE35D68()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE35DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C273EB4();
}

uint64_t sub_22BE35E38()
{

  return sub_22BE22868();
}

uint64_t sub_22BE35EB4()
{

  return sub_22C274154();
}

uint64_t sub_22BE35EF8()
{

  return sub_22BE22868();
}

uint64_t sub_22BE35F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C273DE4();
}

uint64_t sub_22BE35F38()
{

  return swift_getEnumCaseMultiPayload();
}

BOOL sub_22BE35F8C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22BE35FB8(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3602C()
{

  return swift_task_alloc();
}

uint64_t sub_22BE3605C(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE36160()
{
}

uint64_t sub_22BE361E4()
{
  result = v1;
  *(v2 - 224) = *v0;
  return result;
}

uint64_t sub_22BE36258(uint64_t a1)
{

  return sub_22C272FD4();
}

unint64_t sub_22BE362C4()
{
  result = qword_28107CCA8[0];
  if (!qword_28107CCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107CCA8);
  }

  return result;
}

uint64_t sub_22BE3636C()
{

  return sub_22C2704B4();
}

uint64_t sub_22BE3639C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE363D4(uint64_t a1, uint64_t a2)
{

  return sub_22C270494();
}

uint64_t sub_22BE36404()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE3641C()
{

  return sub_22BE1AE58();
}

unint64_t sub_22BE36450(char a1)
{
  result = 0x65537265646E6567;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_22BE36540()
{

  return sub_22BE22868();
}

uint64_t sub_22BE36558()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE365C4()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE36698()
{

  return sub_22C171FFC();
}

void sub_22BE36718()
{
  v1 = *(v0 - 248);
  v2 = *(v0 - 240);
  v3 = *(v0 - 232);
  sub_22BF0D530(*(v0 - 120), *(v0 - 112), *(v0 - 104));
  *(v0 - 120) = v1;
  *(v0 - 112) = v2;
  *(v0 - 104) = v3;
}

unint64_t sub_22BE36768(float a1)
{
  *(v2 + *(v1 + 20)) = a1;
  *(v3 - 68) = 2;

  return sub_22BF40F04();
}

void ExternalAgentRequest.init(client:context:)()
{
  sub_22BE19130();
  v4 = v3;
  v57 = v5;
  v55 = v6;
  sub_22C26F1C4();
  sub_22BE179D8();
  v53 = v8;
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v52 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE181E4();
  v11 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE18928();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E94();
  v56 = v14;
  v15 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v15);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE23930();
  v17 = sub_22C26EDD4();
  v18 = sub_22BE19448(v17);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  sub_22BE35AE8();
  v19 = type metadata accessor for RequestContent(0);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  sub_22BE1AB80();
  v22 = v4[3];
  v21 = v4[4];
  v23 = sub_22BE41FB4();
  sub_22BE1BD3C(v23, v24);
  (*(v21 + 32))(v22, v21);
  sub_22C26EEE4();
  sub_22BE26B00(v4, &v58);
  RequestContent.init(client:context:)();
  if (v0)
  {
    v25 = sub_22BE1B664();
    sub_22BE1BD3C(v25, v26);
    v27 = sub_22BE2590C();
    v28(v27);
    sub_22C26EEF4();
    sub_22BE18524();
    (*(v29 + 8))(v57);
    sub_22BE26B64(v4);
  }

  else
  {
    sub_22C26EEB4();
    sub_22C26EEC4();
    sub_22BE196A8();
    sub_22BE22814();
    if (sub_22BE1AEA8(v2, 1, v54) == 1)
    {
      sub_22BE233E8(v56, &off_27D9120B8, &unk_22C2B5F08);
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }

    else
    {
      sub_22BE27C14();
      v51 = v1;
      v33(v1, v2, v54);
      sub_22C116380();
      v34(v52, v1, v54);
      v35 = sub_22C26F1A4();
      v50 = v36;
      v37 = MEMORY[0x2318A78B0]();
      v38 = *(v53 + 8);
      v30 = v35;
      v38(v52, v54);
      v38(v51, v54);
      v32 = v37;
      v31 = v50;
      sub_22BE233E8(v56, &off_27D9120B8, &unk_22C2B5F08);
    }

    v39 = type metadata accessor for ExternalAgentRequest(0);
    sub_22C26E1D4();
    sub_22BE1A140();
    sub_22BE19DC4(v40, v41, v42, v43);
    v44 = (v55 + *(v39 + 24));
    *v44 = 0;
    v44[1] = 0;
    v44[2] = 0;
    sub_22BE3BF50();
    sub_22BE3911C();
    sub_22BE37A38();
    sub_22BE2343C();
    sub_22BE37808(*v44, v44[1], v44[2]);
    *v44 = v30;
    v44[1] = v31;
    v44[2] = v32;
    v45 = sub_22BE1B664();
    sub_22BE1BD3C(v45, v46);
    v47 = sub_22BE2590C();
    v48(v47);
    sub_22C26EEF4();
    sub_22BE18524();
    (*(v49 + 8))(v57);
    sub_22BE26B64(v4);
  }

  sub_22BE18478();
}

void RequestContent.init(client:context:)()
{
  sub_22BE19130();
  v61 = v2;
  v65 = v3;
  v5 = v4;
  sub_22C26FFA4();
  sub_22BE179D8();
  v55 = v7;
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  v52 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E94();
  v53 = v10;
  sub_22BE183BC();
  sub_22C26EDC4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v12);
  sub_22BE25A90();
  v60 = sub_22C26ED74();
  sub_22BE179D8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v59 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE181E4();
  v18 = sub_22C26EDD4();
  sub_22BE179D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE1B1C4();
  (*(v20 + 16))(v1, v5, v18);
  v22 = (*(v20 + 88))(v1, v18);
  if (v22 == *MEMORY[0x277D1C6B0])
  {
    v23 = *(v20 + 8);
    v23(v5, v18);
    v23(v1, v18);
    sub_22BE26B64(v65);
    type metadata accessor for RequestContent(0);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_22BE18478();
    return;
  }

  if (v22 == *MEMORY[0x277D1C6B8])
  {
    v24 = sub_22BE235F8();
    v25(v24);
    sub_22BE27C14();
    v26(v0, v1, v60);
    sub_22C116380();
    v27();
    sub_22BE26B00(v65, v62);
    v28 = sub_22C26ED64();
    v56 = v29;
    v58 = v28;
    v31 = v63;
    v30 = v64;
    sub_22BE1BD3C(v62, v63);
    v54 = *(v30 + 16);
    type metadata accessor for RequestContent.TextContent(0);
    v54(v31, v30);
    sub_22BE26B64(v65);
    v32 = sub_22BE2BACC();
    v33(v32);
    v34 = *(v14 + 8);
    v34(v59, v60);
    v34(v0, v60);
    *v61 = v58;
    v61[1] = v56;
    sub_22BE26B64(v62);
    type metadata accessor for RequestContent(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D1C6C0])
  {
    v35 = sub_22BE235F8();
    v36(v35);
    v37 = sub_22BE3911C();
    v38(v37);
    sub_22C11634C();
    v39 = sub_22BE1A8C4();
    v40(v39);
    sub_22BE26B00(v65, v62);
    RequestContent.SpeechContent.init(client:context:)();
    sub_22BE26B64(v65);
    v41 = sub_22BE2BACC();
    v42(v41);
    v43 = sub_22BE1AB74();
    v44(v43);
    type metadata accessor for RequestContent(0);
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D1C6A8])
  {
    v45 = sub_22BE235F8();
    v46(v45);
    sub_22BE27C14();
    v47 = sub_22BE191C0();
    v48(v47);
    sub_22C116380();
    v49(v52, v53, v57);
    sub_22BE26B00(v65, v62);
    RequestContent.SystemPromptResolution.init(client:context:)();
    sub_22BE26B64(v65);
    v50 = sub_22BE1B73C();
    v51(v50);
    (*(v55 + 8))(v53, v57);
    type metadata accessor for RequestContent(0);
    sub_22BE23BA8();
    goto LABEL_9;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t sub_22BE372A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BE62188();
}

uint64_t sub_22BE3732C(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BE37350()
{
  sub_22BF06EE8(sub_22BF06EE4, 0, v1, v0);

  return sub_22C2702D4();
}

uint64_t sub_22BE3744C(uint64_t a1)
{

  return sub_22BE1AEA8(a1, 1, v1);
}

uint64_t sub_22BE3749C(uint64_t a1, uint64_t a2)
{

  return sub_22C273FA4();
}

uint64_t sub_22BE37540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C273EB4();
}

uint64_t sub_22BE3759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_22BE376B4(uint64_t a1)
{

  return sub_22C272FB4();
}

uint64_t sub_22BE376D8()
{

  return sub_22C273EB4();
}

uint64_t sub_22BE37730()
{

  return sub_22C0C1AC4();
}

void sub_22BE37784(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_22BE377D8(uint64_t a1, uint64_t a2)
{

  return sub_22C273EB4();
}

void sub_22BE37808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_22BE379F0(uint64_t a1)
{
}

uint64_t sub_22BE37A38()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

unint64_t sub_22BE37BC4(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 144);

  return sub_22BE61C88(v5, v2, (v3 - 96));
}

uint64_t sub_22BE37C38@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_22BE37C44()
{

  return sub_22C273AC4();
}

void Session.Event.postingSpan.setter()
{
  v0 = sub_22BE2021C();
  v1 = type metadata accessor for Session.Event(v0);
  sub_22BE1AC84(*(v1 + 56));
}

uint64_t sub_22BE37CF8(uint64_t a1)
{

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

uint64_t sub_22BE37D1C()
{

  return sub_22C108634();
}

uint64_t sub_22BE37D50()
{

  return sub_22BE1AE58();
}

uint64_t Session.Event.sender.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 52));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22BE37DB4(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE37DE0()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 1;
  return v0 - 96;
}

uint64_t sub_22BE37E08()
{
  v0 = sub_22BE27BE8();
  v1(v0);
  return sub_22BFBFC6C();
}

uint64_t Session.Event.clientRequestId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 32));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22BE37EC0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(v4 - 104) = a1;

  return swift_willThrow();
}

uint64_t sub_22BE37EF0()
{
  sub_22BE393A8();
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

Swift::Void __swiftcall Session.Event.Payload.streamRedact()()
{
  v1 = type metadata accessor for Session.Event.Payload(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE3814C(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xFu:
    case 0x1Fu:
    case 0x25u:
    case 0x2Au:
    case 0x2Bu:
      return;
    case 0x11u:
      sub_22BE381B0(v0);
      v4 = *(v3 + 1);

      *v0 = MEMORY[0x277D84F90];
      v0[1] = v4;
      goto LABEL_6;
    case 0x1Eu:
      sub_22BE381B0(v0);
      sub_22C1AE5C4(v3, v0);
      v5 = *(type metadata accessor for QueryDecorationResult(0) + 28);

      *(v0 + v5) = MEMORY[0x277D84F90];
LABEL_6:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      sub_22BE381B0(v3);
      break;
  }
}

uint64_t sub_22BE3814C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Event.Payload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE381B0(uint64_t a1)
{
  v2 = type metadata accessor for Session.Event.Payload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BE3820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_22BE38250()
{

  return sub_22BE33928(v2 - 192, v0, v1);
}

uint64_t sub_22BE38288(uint64_t a1)
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_22BE383DC()
{
  v2 = *(v0 - 96);

  return sub_22BE41F44(v2, type metadata accessor for RequestContent);
}

uint64_t sub_22BE3846C()
{

  return sub_22C2738F4();
}

void TranscriptProtoExternalAgentRequest.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE308C4();
  v5 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE25CD0();
  v7 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19668();
  v9 = type metadata accessor for RequestContent(0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE294E0();
  v11 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  sub_22BE19448(v11);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE234F4();
  sub_22BE35EE0();
  v13 = sub_22BE354DC();
  sub_22BE1AA68(v13, v14);
  sub_22C25A338();
  TranscriptProtoRequestContent.init(handwritten:)();
  if (v2)
  {
    sub_22BE46560();
    sub_22BE1AE58();
  }

  else
  {
    type metadata accessor for TranscriptProtoRequestContent(0);
    v15 = sub_22C25974C();
    v18 = sub_22BE3FEC8(v15, v16, v17);
    type metadata accessor for ExternalAgentRequest(v18);
    sub_22C25A694();
    sub_22BE22814();
    v19 = sub_22C26E1D4();
    v20 = sub_22BE1B010();
    sub_22BE1AB5C(v20, v21, v19);
    if (v22)
    {
      sub_22BE233E8(v1, &qword_27D9082F0, &qword_22C27AB00);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = sub_22C26E184();
      v42 = v23;
      sub_22BE1BC24();
      v24 = sub_22BE3E8FC();
      v25(v24);
    }

    v26 = *(v3 + *(v4 + 24) + 16);
    v27 = sub_22BE3E8FC();
    sub_22BE3820C(v27, v28, v26);
    v29 = sub_22BE3E8FC();
    sub_22BE3943C(v29, v30, v26, v31);
    v32 = sub_22BE38960();
    v35 = sub_22BE3FEC8(v32, v33, v34);
    v36 = (v0 + *(type metadata accessor for TranscriptProtoExternalAgentRequest(v35) + 20));
    type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
    v37 = sub_22C259DDC();
    sub_22C25AE64(v37, v38, v39, v40);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE46560();
    sub_22BE1AE58();
    sub_22BE39EAC();
    sub_22BE2343C();
    *v36 = v41;
    v36[1] = v42;
    sub_22BE2343C();
  }

  sub_22BE467E4();
  sub_22BE18478();
}

uint64_t sub_22BE38A78(uint64_t a1)
{

  return sub_22C273574();
}

void TranscriptProtoRequestContent.init(handwritten:)()
{
  sub_22BE19130();
  sub_22C25A93C(v7);
  v8 = sub_22BE1A5E4();
  v9 = type metadata accessor for RequestContent.SystemPromptResolution(v8);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE28A70(v11, v72);
  MEMORY[0x28223BE20](v12);
  v21 = sub_22BE4202C(v13, v14, v15, v16, v17, v18, v19, v20, v73);
  v22 = type metadata accessor for RequestContent.SpeechContent(v21);
  v23 = sub_22BE19448(v22);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  v74 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v76 = v26;
  sub_22BE183BC();
  sub_22C26E684();
  sub_22BE179D8();
  v78 = v28;
  v79 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22BE2379C();
  v29 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v29);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  v31 = sub_22BE25334();
  v32 = type metadata accessor for RequestContent.TextContent(v31);
  sub_22BE18000();
  MEMORY[0x28223BE20](v33);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22C2595B4();
  type metadata accessor for RequestContent(v35);
  sub_22BE18000();
  MEMORY[0x28223BE20](v36);
  sub_22BE17CBC();
  v37 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  sub_22BE19448(v37);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v38);
  v39 = sub_22BE1AB08();
  type metadata accessor for TranscriptProtoRequestContentEnum(v39);
  v40 = sub_22BE38960();
  v44 = sub_22C18F17C(v40, v41, v42, v43);
  v45 = type metadata accessor for TranscriptProtoRequestContent(v44);
  sub_22BE417E0(v45);
  sub_22BE35EE0();
  v46 = sub_22BE260B8();
  sub_22BE1AA68(v46, v47);
  sub_22BE426E8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = sub_22BE385E4();
      sub_22BE3B620(v54, v6);
      v55 = sub_22C259E7C();
      sub_22BE1AA68(v55, v3);
      v56 = *(v3 + 1);
      v80 = *v3;
      (*(v78 + 16))(v1, &v3[*(v32 + 20)], v79);

      v77 = sub_22C26E674();
      v75 = sub_22C26E654();
      v57 = sub_22C25A77C();
      type metadata accessor for TranscriptProtoStatementID(v57);
      sub_22C25A3A8();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v58 = sub_22BE1A8C4();
      v59(v58);
      *v5 = v77;
      *(v5 + 8) = v75;
      *(v5 + 16) = v56;
      sub_22BE25FFC();
      v64 = sub_22C18F17C(v60, v61, v62, v63);
      type metadata accessor for TranscriptProtoRequestContentTextContent(v64);
      sub_22C25ACC0();
      sub_22BE32EE0();
      sub_22BE3A034(v65, v66, v67, v68);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE2511C();
      sub_22BE1AE58();
      v0 = type metadata accessor for RequestContent.TextContent;
      sub_22BE1AE58();
      sub_22BE3C968();
      sub_22BE1AE58();
      *v4 = v80;
      v4[1] = v56;
      sub_22BE2343C();
      goto LABEL_8;
    case 2u:
      v48 = sub_22BE385E4();
      sub_22BE3B620(v48, v76);
      v49 = sub_22BE385E4();
      sub_22BE1AA68(v49, v74);
      sub_22C25A7A0();
      TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
      sub_22BE2511C();
      sub_22BE1AE58();
      sub_22C259A90();
      sub_22BE1AE58();
      if (!v2)
      {
        goto LABEL_8;
      }

      goto LABEL_6;
    case 3u:
      sub_22BE385E4();
      sub_22C0E9A68();
      sub_22BE3B620(v50, v51);
      sub_22BE385E4();
      sub_22C25AC2C();
      sub_22BE1AA68(v52, v53);
      sub_22C25A7A0();
      TranscriptProtoSystemPromptResolution.init(handwritten:)();
      sub_22BE2511C();
      sub_22BE1AE58();
      sub_22BE3CC1C();
      sub_22BE1AE58();
      if (!v2)
      {
        goto LABEL_8;
      }

LABEL_6:
      sub_22BE29048();
      sub_22BE1AE58();
      break;
    default:
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE2511C();
      sub_22BE1AE58();
LABEL_8:
      sub_22C25A724();
      swift_storeEnumTagMultiPayload();
      v69 = sub_22BE22B8C();
      sub_22BE19DC4(v69, v70, v71, v0);
      sub_22BE2343C();
      break;
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22BE38FBC()
{
  v4 = *(v2 - 216);
  *v4 = v1;
  v4[1] = v0;

  return type metadata accessor for Session.Event.Payload(0);
}

void sub_22BE39064()
{

  os_unfair_lock_lock(v0 + 4);
}

void sub_22BE39084()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE390A0()
{

  return sub_22BE22868();
}

uint64_t sub_22BE390BC()
{

  return sub_22BE2343C();
}

uint64_t sub_22BE39168(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_22BE5CE4C(a3, a4);
}

void *sub_22BE391B4()
{
  result = v1;
  *v1 = v0;
  *(v3 - 72) = v2;
  return result;
}

uint64_t sub_22BE391F4(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3926C()
{

  return sub_22C273FA4();
}

void sub_22BE392EC()
{
}

uint64_t sub_22BE39304()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE39380()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE3943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = (v10 - v9);
  if (a2)
  {

    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v12 = sub_22BE18240();
    sub_22BE37808(v12, v13, a3);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    sub_22C1086E4(v11, a4, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v14 = sub_22BE3661C();
  }

  else
  {
    v14 = sub_22BE2BA98();
  }

  return sub_22BE3ACE4(v14, v15);
}

void ExternalAgentRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913220, &qword_22C2B80E8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E64();
  sub_22BE23094();
  v17 = sub_22BE39770();
  sub_22BE25524(&type metadata for ExternalAgentRequest.CodingKeys, v18, v17);
  type metadata accessor for RequestContent(0);
  sub_22BE35880();
  sub_22BE20458(v19);
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v14)
  {
    type metadata accessor for ExternalAgentRequest(0);
    sub_22C18E1EC();
    sub_22C18F8E0(v20);
    sub_22C26E1D4();
    sub_22BE18B28();
    sub_22BE20458(v21);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273F34();
    v26 = sub_22C18F320(*(v15 + 24));
    v27 = v23;
    v28 = *(v22 + 16);
    sub_22BE3820C(v26, v23, v28);
    sub_22BE48A04();
    sub_22C18E17C();
    sub_22C273F34();
    sub_22BE37808(v26, v27, v28);
  }

  v24 = sub_22BE37A10();
  v25(v24);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

uint64_t sub_22BE396FC()
{

  return sub_22C26E684();
}

unint64_t sub_22BE39770()
{
  result = qword_28107ACF0[0];
  if (!qword_28107ACF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107ACF0);
  }

  return result;
}

void RequestContent.encode(to:)()
{
  sub_22BE19130();
  sub_22BE5CE4C(&qword_27D912F88, &qword_22C2B7F78);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE181D0(v5, v40);
  type metadata accessor for RequestContent.SystemPromptResolution(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE3FF7C(v7);
  sub_22BE5CE4C(&qword_27D912F90, &qword_22C2B7F80);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE33FF0(v9, v41);
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v42 = v11;
  sub_22BE5CE4C(&qword_27D912F98, &qword_22C2B7F88);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v13 = sub_22BE183BC();
  type metadata accessor for RequestContent.TextContent(v13);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  sub_22BE188B0();
  sub_22BE5CE4C(&qword_27D912FA0, &qword_22C2B7F90);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  type metadata accessor for RequestContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE18DFC();
  sub_22BE5CE4C(&qword_27D912FA8, &qword_22C2B7F98);
  sub_22BE179D8();
  v44 = v17;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = sub_22BE1A8C4();
  sub_22BE26950(v19, v20);
  sub_22BE39F14();
  sub_22BE232E4();
  sub_22C274234();
  sub_22BE19368();
  sub_22BE1A964(v1, v2);
  sub_22BE36658();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C171FA8(v2, v3);
      sub_22BE38948();
      sub_22BE39F98();
      v28 = v44;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE3F4B0();
      sub_22BE20458(v37);
      sub_22C18FDE4();
      sub_22C273FA4();
      v38 = sub_22BE38A68();
      v39(v38);
      sub_22BE355E4();
      goto LABEL_7;
    case 2u:
      sub_22C171FA8(v2, v42);
      sub_22C18F59C();
      sub_22C174C0C();
      v28 = v44;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE3CAF4();
      sub_22BE20458(v29);
      sub_22BE35E54();
      sub_22C273FA4();
      v30 = sub_22BE38A68();
      v31(v30);
      goto LABEL_7;
    case 3u:
      sub_22C171FA8(v2, v43);
      sub_22BEE9478();
      sub_22C174BB8();
      v28 = v44;
      sub_22BE3788C();
      sub_22C273EE4();
      sub_22BE34158();
      sub_22BE20458(v32);
      v33 = sub_22BE35E54();
      sub_22C18FB28(v33, v34);
      v35 = sub_22BE38A68();
      v36(v35);
LABEL_7:
      sub_22C171FFC();
      v25 = sub_22BE39058();
      v27 = v28;
      break;
    default:
      sub_22C174C60();
      sub_22BE27168();
      sub_22C273EE4();
      v21 = sub_22C174CB4();
      sub_22C18F71C(v21, v22);
      v23 = sub_22BE28D70();
      v24(v23, v0);
      v25 = sub_22BE39058();
      v27 = v44;
      break;
  }

  v26(v25, v27);
  sub_22BEE94B0();
  sub_22BE18478();
}

void sub_22BE39E38(uint64_t a1, uint64_t a2)
{

  sub_22BF5BCAC();
}

uint64_t sub_22BE39E58(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE39EB8(uint64_t a1)
{

  return sub_22C272FD4();
}

unint64_t sub_22BE39F14()
{
  result = qword_28107C500[0];
  if (!qword_28107C500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C500);
  }

  return result;
}

uint64_t sub_22BE39F80(uint64_t a1)
{

  return sub_22C0C1B18();
}

unint64_t sub_22BE39F98()
{
  result = qword_28107C4D8;
  if (!qword_28107C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107C4D8);
  }

  return result;
}

uint64_t sub_22BE3A014(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274234();
}

uint64_t sub_22BE3A04C()
{

  return sub_22BE1AE58();
}

unint64_t sub_22BE3A07C(char a1)
{
  result = 1886352499;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x686365657073;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_22BE3A104(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE3A1C0);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BE3A218()
{

  return sub_22C270584();
}

void RequestContent.TextContent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BE2BB34();
  sub_22BE27A28();
  sub_22BE5CE4C(&qword_27D913038, &qword_22C2B7FD0);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE25CD0();
  sub_22BE23094();
  v18 = sub_22BE3A3F8();
  sub_22BE33B8C(&type metadata for RequestContent.TextContent.CodingKeys, v19, v18);
  sub_22C18E9AC();
  sub_22BE26108();
  sub_22C273F54();
  if (!v16)
  {
    type metadata accessor for RequestContent.TextContent(0);
    sub_22BE323A4();
    sub_22C26E684();
    sub_22BE18F44();
    sub_22BE20458(v20);
    sub_22C18EA18();
    sub_22BE31254();
    sub_22C273FA4();
  }

  v21 = sub_22BE37508();
  v22(v21);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

unint64_t sub_22BE3A3F8()
{
  result = qword_28107C648[0];
  if (!qword_28107C648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107C648);
  }

  return result;
}

uint64_t sub_22BE3A47C(char a1)
{
  if (a1)
  {
    return 0x6E656D6574617473;
  }

  else
  {
    return 1954047348;
  }
}

void sub_22BE3A4B4()
{
  v2 = *(v0 + 16) + 1;

  sub_22BE66BFC(0, v2, 1, v0);
}

uint64_t sub_22BE3A518()
{

  return sub_22BE22868();
}

_BYTE *sub_22BE3A56C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_22BE22DB0(result, v6);
        break;
      case 2:
        result = sub_22BE18058(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x22BE3A628);
      case 4:
        result = sub_22BE25EF4(result, v6);
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t ContextRetrievalServiceInput.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907CD8, &qword_22C277760);
  sub_22BE179D8();
  v4 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE3A7D4();
  sub_22C274234();
  v12 = 0;
  v8 = v10;
  sub_22C273F54();
  if (!v8)
  {
    v11 = 1;
    sub_22C273F74();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_22BE3A7D4()
{
  result = qword_281077008[0];
  if (!qword_281077008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281077008);
  }

  return result;
}

uint64_t sub_22BE3A830(char a1)
{
  if (a1)
  {
    return 0x74756F656D6974;
  }

  else
  {
    return 0x7972657571;
  }
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22BE3A930);
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

uint64_t Session.Event.initiatedSpans.modify()
{
  v0 = sub_22BE17BC4();
  type metadata accessor for Session.Event(v0);
  return sub_22BE18504();
}

uint64_t Session.Transcript.append(event:)()
{
  v2 = v0;
  v3 = sub_22BE2021C();
  v4 = *(type metadata accessor for Session.Transcript(v3) + 32);
  sub_22BE78B38();
  v5 = *(*(v0 + v4) + 16);
  sub_22BE78C24(v5);
  v6 = *(v0 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = type metadata accessor for Session.Event(0);
  sub_22BE17A18(v7);
  result = sub_22BE1A964(v1, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v5);
  *(v2 + v4) = v6;
  return result;
}

void sub_22BE3AA70()
{
  sub_22BE18660();
  if (v0)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE3AC94()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22BE3ACB0()
{

  return sub_22C270424();
}

uint64_t sub_22BE3ACE4(uint64_t a1, uint64_t a2)
{

  return sub_22BE19DC4(a1, a2, 1, v2);
}

uint64_t sub_22BE3AD48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BE3ADD8@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_22C26E684();
}

void sub_22BE3AE3C()
{

  JUMPOUT(0x2318ABA30);
}

uint64_t sub_22BE3AEA4()
{
}

uint64_t sub_22BE3AEBC()
{

  return sub_22BE22868();
}

uint64_t sub_22BE3AEF8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_22BE3AF34(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BE3AF54(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

void sub_22BE3AF78()
{
  v1 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v1;
}

uint64_t sub_22BE3AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274014();
}

uint64_t sub_22BE3AFB8()
{

  return sub_22BF0D574(v0, v2, v1);
}

uint64_t sub_22BE3AFFC(uint64_t a1, unint64_t a2)
{
  sub_22BF158B4(a1, a2);
  sub_22BF158B4(v5, v4);
  sub_22BF158B4(v3, v2);
  return v6;
}

void sub_22BE3B050()
{

  JUMPOUT(0x2318AD180);
}

uint64_t sub_22BE3B0B4@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X2>, uint64_t *a3@<X3>)
{

  return sub_22BFC390C(v3, v4 + a1, a2, a3);
}

void sub_22BE3B1D8()
{
  sub_22BE18660();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22BE20388();
    sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
    sub_22BE187D0();
    if (*(v4 + 84) == v2)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE36CC4();
    }

    v6 = sub_22BE3B0A4(v5);

    sub_22BE19DC4(v6, v7, v8, v9);
  }
}

uint64_t TranscriptProtoSpanID.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270864(), !v1))
  {
    type metadata accessor for TranscriptProtoSpanID(0);
    return sub_22BE294F8();
  }

  return result;
}

uint64_t sub_22BE3B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E428, &qword_22C296E90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoEvent(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E428, &qword_22C296E90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint, &protocol conformance descriptor for TranscriptProtoTimepoint);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t TranscriptProtoTimepoint.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22BE2FC70(v2, v3, v4, v5);
  if (!v0)
  {
    if (*v1)
    {
      sub_22BE1BAB8();
      sub_22C270864();
    }

    if (v1[1])
    {
      sub_22BE1BAB8();
      sub_22C270864();
    }

    sub_22BE1B448();
    if (v7)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    type metadata accessor for TranscriptProtoTimepoint(0);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22BE3B620(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v4(v3);
  sub_22BE1834C();
  v5 = sub_22BE19454();
  v6(v5);
  return a2;
}

void sub_22BE3B68C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_22C2740B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_22BE3B674(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_22BE5CE4C(&qword_27D915CC8, &qword_22C2D1AD8);
      sub_22C273C54();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_22C24FB38(v14, a2 & 1);
  v16 = sub_22BE3B674(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001BLL, 0x800000022C2DC010);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](39, 0xE100000000000000);
  sub_22C273C94();
  __break(1u);
}

uint64_t sub_22BE3B960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE7259C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE3B980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_22BE3B9E0()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AB08();
  sub_22C26EC34();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v8)
  {
    v9 = sub_22BE2590C();
    sub_22BE33928(v9, v10, &qword_22C2B5060);
    v11 = sub_22BE26154();
    sub_22BE33928(v11, v12, v13);
  }

  else
  {
    v14 = sub_22BE28CD8();
    v15(v14);
    v16 = sub_22BE42004();
    v17(v16);
    sub_22C108D60();
    TranscriptProtoGenderSettings.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911C20, &qword_22C2B5060);
    v18 = sub_22BE33560();
    v19(v18);
  }

  v20 = type metadata accessor for TranscriptProtoGenderSettings(0);
  sub_22BE3C074(v20);
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22BE3BB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE1834C();
  v5 = sub_22BE19454();
  v6(v5);
  return v4;
}

void sub_22BE3BBE0()
{
  sub_22BE19130();
  sub_22C108B60();
  v2 = sub_22BE3E79C();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1AB08();
  sub_22C26EA84();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v6);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v7);
  sub_22BE2EDB8();
  sub_22BE3E844();
  sub_22BE1972C(v1);
  if (v8)
  {
    v9 = sub_22BE2590C();
    sub_22BE33928(v9, v10, &unk_22C2B5CD0);
    v11 = sub_22BE26154();
    sub_22BE33928(v11, v12, v13);
  }

  else
  {
    v14 = sub_22BE28CD8();
    v15(v14);
    v16 = sub_22BE42004();
    v17(v16);
    sub_22C108D60();
    TranscriptProtoDeviceDetails.init(handwritten:)();
    sub_22BE33928(v0, &qword_27D911F60, &unk_22C2B5CD0);
    v18 = sub_22BE33560();
    v19(v18);
  }

  v20 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  sub_22BE3C074(v20);
  sub_22BE3C298();
  sub_22BE18478();
}

unint64_t sub_22BE3BD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_22C274014() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t type metadata accessor for Session.InstrumentableEvent(uint64_t a1)
{
  result = qword_28106EB10;
  if (!qword_28106EB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BE3BE7C()
{
  result = qword_28107F348;
  if (!qword_28107F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F348);
  }

  return result;
}

uint64_t sub_22BE3BFD4(uint64_t a1)
{

  return sub_22C273734();
}

uint64_t sub_22BE3C028()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3C074(uint64_t a1)
{

  return sub_22BE19DC4(v1, v2, 1, a1);
}

void *sub_22BE3C128()
{
  v3 = *(v2 - 536);
  *v3 = v1;
  v3[1] = v0;
  return v3;
}

BOOL sub_22BE3C13C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22BE3C1A8()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE3C224(uint64_t a1)
{

  return sub_22C272FD4();
}

void sub_22BE3C2E0()
{
  sub_22BE18378();
  if (v2 == 252)
  {
    *v1 = v0 + 3;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

void sub_22BE3C37C(unint64_t *a1@<X8>)
{

  sub_22BF0DED8(0, a1);
}

uint64_t sub_22BE3C394@<X0>(uint64_t a1@<X8>)
{

  return sub_22BF1F294(a1 + v1, v2);
}

uint64_t sub_22BE3C3E4@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 72) = v1;
  *(v2 - 88) = a1;
  return 0;
}

uint64_t sub_22BE3C4B0(uint64_t a1)
{

  return sub_22C272FD4();
}

void sub_22BE3C564(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log)
{

  _os_log_impl(a1, log, v11, a4, v10, 0xCu);
}

uint64_t sub_22BE3C620()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3C694()
{

  return sub_22C171FFC();
}

uint64_t sub_22BE3C74C(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

uint64_t sub_22BE3C8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22C274014();
}

uint64_t sub_22BE3C904(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void sub_22BE3CB24(unint64_t a1@<X8>)
{

  sub_22BE66A04(a1 > 1, v2, 1, v1);
}

uint64_t sub_22BE3CB48()
{

  return sub_22BEBFC80();
}

uint64_t sub_22BE3CB78()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE3CBD0(uint64_t a1, uint64_t a2)
{

  return sub_22BE19DC4(v2, a2, 1, v3);
}

uint64_t sub_22BE3CC50()
{

  return sub_22BE22868();
}

uint64_t sub_22BE3CC7C()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE3CCE0()
{
}

uint64_t sub_22BE3CD40(uint64_t a1)
{

  return swift_getWitnessTable();
}

void sub_22BE3CD98()
{
  v1 = *(v0 - 88);
  *(v0 - 120) = v1 + 16;
  *(v0 - 112) = v1 + 32;
  *(v0 - 160) = v1 + 8;
}

uint64_t sub_22BE3CDC8()
{
  result = *(v1 - 256);
  *(v3 - 504) = v2;
  *(v3 - 512) = v0;
  return result;
}

uint64_t sub_22BE3CE24()
{
  v4 = *(v2 - 88);

  return sub_22C1086E4(v1, v4, v0);
}

uint64_t sub_22BE3CED8()
{

  return sub_22C2704B4();
}

uint64_t sub_22BE3CF58()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3CF70()
{

  return sub_22BE22868();
}

uint64_t sub_22BE3CF9C(uint64_t a1)
{

  return sub_22C273074();
}

uint64_t sub_22BE3D088()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 16));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE41590();

  return sub_22BE1AEA8(v3, v4, v5);
}

uint64_t sub_22BE3D170()
{
  type metadata accessor for ToolboxVersion(0);

  return sub_22C26FDF4();
}

void sub_22BE3D258()
{
  sub_22BE22984();
  if (v2)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE3D300()
{
  v0 = sub_22BE1A5E4();
  v1(v0);
  sub_22BE18000();
  v2 = sub_22BE19454();

  return v3(v2);
}

uint64_t sub_22BE3D360()
{
  v0 = sub_22BE1C364();
  v1(v0);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22BE3D41C()
{

  return swift_beginAccess();
}

uint64_t sub_22BE3D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

uint64_t sub_22BE3D570()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE3D598()
{

  return sub_22BE2343C();
}

uint64_t Session.Event.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = type metadata accessor for Session.Event(v0);
  v2 = sub_22BE25438(*(v1 + 48));
  return sub_22BE1A964(v2, v3);
}

uint64_t Timepoint.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C26E164();
  sub_22BE18000();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_22BE3D6E0(uint64_t a1)
{

  return sub_22C273994();
}

uint64_t Session.Event.clientSessionId.getter()
{
  type metadata accessor for Session.Event(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t Session.Event.clientRequestId.getter()
{
  type metadata accessor for Session.Event(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t TranscriptProtoStatementID.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*v0 || (sub_22BE1BAB8(), result = sub_22C270854(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BE3D7F4(v3);
    if (!v1)
    {
      type metadata accessor for TranscriptProtoStatementID(0);
      return sub_22BE25FB0();
    }
  }

  return result;
}

uint64_t sub_22BE3D7F4(uint64_t result)
{
  if (*(result + 16))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3D82C(uint64_t result)
{
  if (*(result + 16))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3D868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void sub_22BE3DA3C()
{
  sub_22BE2BB34();
  sub_22BE44820();
  sub_22BE1A730();
  if (!v3 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v4 = sub_22BE17D60();
    v2(v4);
    if (!v0)
    {
      v1(0);
      sub_22BE25FB0();
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22BE3DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E580, &qword_22C2AE4F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E580, &qword_22C2AE4F0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent, &protocol conformance descriptor for TranscriptProtoRequestContentTextContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void TranscriptProtoRequestContent.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  sub_22BE2B890(v5);
  if (v6)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = sub_22BE17D78();
      sub_22BFE4828(v19, v20, v21, v22);
      break;
    case 2u:
      v11 = sub_22BE17D78();
      sub_22BFE4A30(v11, v12, v13, v14);
      break;
    case 3u:
      v15 = sub_22BE17D78();
      sub_22BFE4C38(v15, v16, v17, v18);
      break;
    default:
      v7 = sub_22BE17D78();
      sub_22BE3DAB0(v7, v8, v9, v10);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for TranscriptProtoRequestContent(0);
    sub_22BE235A8();
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BE3DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E568, &unk_22C2CC8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoRequestContent(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E568, &unk_22C2CC8B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent, &protocol conformance descriptor for TranscriptProtoRequestContent);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE3DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest, &protocol conformance descriptor for TranscriptProtoExternalAgentRequest);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void sub_22BE3E400()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BE3E450()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE3E4A8()
{
  *(v1 + 120) = *(v2 + 16);
  *(v1 + 128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v0;
}

uint64_t sub_22BE3E58C()
{

  return sub_22C26DEA4();
}

uint64_t sub_22BE3E5CC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BE3E600(uint64_t a1)
{

  return sub_22C270844();
}

uint64_t sub_22BE3E620@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_22BE2B984(v4 + a3, v3, a1, a2);
}

uint64_t sub_22BE3E72C(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3E844()
{

  return sub_22BE2B984(v0, v1, v2, v3);
}

uint64_t sub_22BE3E878()
{
}

uint64_t sub_22BE3E8B0()
{

  return sub_22BEC3264();
}

uint64_t sub_22BE3E970()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE3EA24(uint64_t result)
{
  if (*(result + 96))
  {
    return sub_22C270844();
  }

  return result;
}

void sub_22BE3EA60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22BE3EAE0@<X0>(uint64_t a1@<X8>)
{

  return sub_22C117424(v1, v2 + a1);
}

uint64_t sub_22BE3EB50(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE3EBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E548, &qword_22C296F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E548, &qword_22C296F00);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata, &protocol conformance descriptor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_22C270884();
  return sub_22C0B08BC();
}

void Session.SessionState.latestSessionStart()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v73 = v21;
  v66[1] = v24;
  sub_22C2720A4();
  sub_22BE179D8();
  v70 = v26;
  v71 = v25;
  MEMORY[0x28223BE20](v25);
  sub_22BE17A44();
  v69 = v27;
  v28 = sub_22BE183BC();
  type metadata accessor for Session.Event.Payload(v28);
  sub_22BE18000();
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v68 = v30;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  v33 = v66 - v32;
  v34 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v34);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE1A174();
  v72 = v36;
  v37 = sub_22BE183BC();
  type metadata accessor for Session.Event(v37);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v38);
  sub_22BE183AC();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_22BE19E94();
  v67 = v43;
  v44 = sub_22BE183BC();
  v45 = type metadata accessor for Session.Transcript(v44);
  v46 = *(v20 + *(v45 + 32));
  a10 = v46;
  v47 = *(v46 + 16);
  while (1)
  {
    if (!v47)
    {
LABEL_5:
      MEMORY[0x28223BE20](v45);
      v66[-2] = &a10;
      v51 = v72;
      sub_22C1ADC94(sub_22BE3F22C, v47, v52, type metadata accessor for Session.Event, v72, &v66[-4]);
      sub_22BE1A940();
      if (sub_22BE1AEA8(v53, v54, v55) == 1)
      {
        sub_22BE33928(v51, &qword_27D908310, &qword_22C27A410);
      }

      else
      {
        v56 = v67;
        sub_22BE3F300();
        sub_22BE1C08C();
        v57 = v68;
        sub_22BE1AA10();
        sub_22BE18F8C();
        sub_22BE1AE00(v56, v58);
        sub_22BE27A44();
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_22C1AE2BC();
          sub_22BE3F300();
LABEL_12:
          sub_22BE18478();
          return;
        }

        sub_22BE1AE00(v57, type metadata accessor for Session.Event.Payload);
      }

      v59 = v69;
      sub_22C271B24();
      v60 = sub_22C272084();
      sub_22C2737A4();
      v61 = sub_22BE31268();
      if (os_log_type_enabled(v61, v62))
      {
        sub_22BE36138();
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_22BE15000, v60, v59, "Error! lastSessionStart() called on non-SessionStart event", v63, 2u);
        sub_22BE1B2A4();
        MEMORY[0x2318AD180]();
      }

      v64 = sub_22BE1B5F8();
      v65(v64);
      sub_22C1ADEB0();
      swift_allocError();
      swift_willThrow();
      goto LABEL_12;
    }

    if (v47 > *(v46 + 16))
    {
      break;
    }

    --v47;
    sub_22BE19E14();
    sub_22BE1A7F8();
    sub_22BE1AA10();
    sub_22BE1C08C();
    sub_22BE1AA10();
    sub_22BE18F8C();
    sub_22BE1AE00(v41, v48);
    sub_22BE194F8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_22BE17E60();
    v45 = sub_22BE1AE00(v33, v50);
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_22BE3F24C()
{
  sub_22BE18378();
  v1(0);
  sub_22BE1834C();
  v2 = sub_22BE19454();
  v3(v2);
  return v0;
}

uint64_t sub_22BE3F2A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE3F300()
{
  v2 = sub_22BE1B2D4();
  v3(v2);
  sub_22BE18000();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_22BE3F38C()
{

  return sub_22C272724();
}

uint64_t sub_22BE3F3C8(uint64_t a1)
{

  return sub_22BE2B984(a1, v3, v1, v2);
}

uint64_t sub_22BE3F414(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BE3F474(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3F4E0()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE3F54C()
{
  v0 = sub_22BE1C364();
  v1(v0);
  sub_22C18E974();
  return sub_22BE22814();
}

uint64_t sub_22BE3F5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void static PlatformPnRTelemetry.started(_:_:)()
{
  sub_22BE19460();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  sub_22BE19448(v4);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE19668();
  v6 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v6);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22C26E1D4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v9 = type metadata accessor for Session.Transcript(0);
  sub_22BE26400(*(v3 + *(v9 + 32)), v0);
  v10 = type metadata accessor for Session.Event(0);
  sub_22BE25A50(v10);
  if (v11)
  {
    sub_22BE33928(v0, &qword_27D908310, &qword_22C27A410);
  }

  else
  {
    Session.Event.formingTraceIds()();
    sub_22BE34278(v0);
  }

  v12 = sub_22C271E24();
  sub_22BE2B7A4(v12);
  static PlatformPnRTelemetry.started(_:_:_:)();
  sub_22BE33928(v1, &qword_27D908318, &unk_22C27A418);
  v13 = sub_22BE1AB1C();
  v14(v13);
  sub_22BE1AABC();
}

uint64_t static IntelligenceFlowIdentifiers.combinedIdentifier(sessionId:spanId:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C26E1D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v9 = v8 - v7;
  v10 = sub_22C271E24();
  sub_22BE179D8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  sub_22C271E14();
  sub_22C271DE4();
  (*(v5 + 16))(v9, a1, v3);
  sub_22C271E04();
  IntelligenceFlowIdentifiers.sessionSpanId.getter();
  return (*(v12 + 8))(v16, v10);
}

uint64_t sub_22BE3F9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static PlatformPnRTelemetry.started(_:_:_:)()
{
  sub_22BE19460();
  v45 = v1;
  v47 = v3;
  v48 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E8, &unk_22C27A3C0);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_22C271D74();
  sub_22BE179D8();
  v46 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  v17 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = sub_22BE5CE4C(&qword_27D908318, &unk_22C27A418);
  sub_22BE19448(v21);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B72C();
  v23 = sub_22C271E24();
  sub_22BE179D8();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22BE179EC();
  sub_22BE2BB64();
  v27 = *v8;
  sub_22BE34640(v6, v0);
  if (sub_22BE1AEA8(v0, 1, v23) == 1)
  {
    v28 = v47;
    sub_22BE33928(v0, &qword_27D908318, &unk_22C27A418);
    if (qword_27D906348 != -1)
    {
      sub_22BE17B78(&qword_27D906348);
    }

    v29 = sub_22C2720A4();
    sub_22BE199F4(v29, qword_27D9082F8);
    v30 = sub_22C272084();
    v31 = sub_22C2737A4();
    if (sub_22BE251A8(v31))
    {
      *swift_slowAlloc() = 0;
      sub_22BE19E74(&dword_22BE15000, v32, v33, "Nil traceIds (likely due to no Transcript Events), skipping Telemetry Biome stream insertion");
      sub_22BE183C8();
    }
  }

  else
  {
    (*(v25 + 32))(v2, v0, v23);
    v44 = type metadata accessor for TelemetryStream();
    sub_22C271F74();
    sub_22C271F84();
    sub_22BE187DC();
    sub_22BE19DC4(v34, v35, v36, v37);
    sub_22BE346D4(v2, v12);
    sub_22BE33928(v12, &qword_27D9082E8, &unk_22C27A3C0);
    v49 = v27;
    v38 = v17;
    v28 = v47;
    sub_22BE42774();
    v39 = v46;
    v40 = *(v46 + 8);
    v41 = sub_22BE1AB1C();
    v40(v41);
    (*(v39 + 32))(v20, v38, v13);
    static TelemetryStream.insert(_:)(v20);
    v42 = sub_22BE1AB1C();
    v40(v42);
    (*(v25 + 8))(v2, v23);
  }

  sub_22C26E1D4();
  sub_22BE18000();
  (*(v43 + 16))(v48, v28);
  sub_22BE1AABC();
}

void sub_22BE3FDC4(unint64_t a1@<X8>)
{

  sub_22BE70138(a1 > 1, v1, 1);
}

uint64_t sub_22BE3FE20()
{

  return sub_22C0C1AC4();
}

uint64_t sub_22BE3FE48()
{

  return MEMORY[0x2821FC790](v0, v2, v1);
}

uint64_t sub_22BE3FE80(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE3FEA4()
{

  return sub_22C0B08BC();
}

uint64_t sub_22BE3FF30()
{

  return sub_22C2704B4();
}

uint64_t sub_22BE3FF88()
{

  return sub_22C0C2A68();
}

uint64_t sub_22BE3FFAC()
{

  return sub_22C274004();
}

uint64_t Session.Event.sender.getter()
{
  type metadata accessor for Session.Event(0);
  sub_22BE36160();
  return sub_22BE19454();
}

uint64_t IntelligenceFlowIdentifiers.sessionSpanId.getter()
{
  v0 = sub_22C26E1D4();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BE179EC();
  sub_22C271DD4();
  if (v1)
  {

    return _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  }

  else
  {
    sub_22C271DF4();
    sub_22C273FD4();
    return sub_22C26E1A4();
  }
}

uint64_t Session.InstrumentableEvent.init(event:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22BE3F9A8(a1, a4);
  result = type metadata accessor for Session.InstrumentableEvent(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_22BE40624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22C273EB4();
}

uint64_t sub_22BE40640(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_22BE40678()
{
  v3 = (v0 + *(v1 + 32));
  result = *(v2 - 96);
  *v3 = *(v2 - 104);
  v3[1] = result;
  return result;
}

uint64_t sub_22BE406DC(uint64_t a1)
{

  return sub_22C272FD4();
}

uint64_t sub_22BE40714()
{

  return sub_22C108634();
}

uint64_t ToolExecutionSessionHolder.deinit()
{
  v1 = sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 16);
  sub_22C273624();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;

  sub_22BF84B6C(0, 0, v3, &unk_22C2905F8, v9);

  return v0;
}

uint64_t sub_22BE4083C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BE4087C()
{
  sub_22BE183FC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_22BE23AE4(v6);
  *v7 = v8;
  v7[1] = sub_22BE40CC8;

  return sub_22BE409EC(v2, v3, v4, v5);
}

uint64_t sub_22BE40924()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_22BE40940(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22BE409EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  v7 = sub_22BE5CE4C(&qword_27D90BA00, &unk_22C290B78);
  v8 = sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  *v6 = v4;
  v6[1] = sub_22BE40AD0;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4 + 16, a4, v7, v8, v9);
}

uint64_t sub_22BE40AD0()
{
  sub_22BE183F0();
  sub_22BE190F0();
  sub_22BE232FC();
  *v3 = v2;
  v4 = *v1;
  sub_22BE18C2C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_22BE201FC();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void *sub_22BE40C08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[3] = 64;
  result[4] = a2;
  result[5] = 64;
  result[6] = a2;
  *v2 = result;
  return result;
}

void sub_22BE40C98()
{
  *(v2 - 144) = v0 + 16;
  *(v2 - 96) = v1;
  *(v2 - 88) = v0 + 8;
}

uint64_t ToolExecutionSessionHolder.__deallocating_deinit()
{
  ToolExecutionSessionHolder.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22BE40D0C()
{
  sub_22BE183F0();
  swift_getObjectType();
  sub_22C2722E4();
  swift_unknownObjectRelease();
  sub_22BE1A26C();

  return v0();
}

uint64_t sub_22BE40D78()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v1 = *v0;
  sub_22BE18C2C();
  *v2 = v1;

  sub_22BE17A94();

  return v3();
}

uint64_t ExternalAgentRequest.content.getter()
{
  sub_22BE1B7A4();
  sub_22BE19368();
  return sub_22BE1A964(v0, v1);
}

void sub_22BE40F38()
{
  sub_22BE29120();
  sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0();
  if (*(v2 + 84) == v1)
  {
    sub_22BE238E8();
  }

  else
  {
    type metadata accessor for StatementResultPayload(0);
    sub_22BE187D0();
    if (*(v3 + 84) == v1)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C26E684();
      sub_22BE187D0();
      if (*(v4 + 84) != v1)
      {
        sub_22BE3858C(*(v0 + 36));
        return;
      }

      sub_22BE38994();
    }
  }

  sub_22BE38A34();

  sub_22BE19DC4(v5, v6, v7, v8);
}

unint64_t sub_22BE41078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *(v6 + 4) = a1;
  *(v6 + 12) = 2080;

  return sub_22BE61C88(v4, v5, va);
}

uint64_t sub_22BE4115C()
{
  sub_22BE2BC0C();
  sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE187D0();
  if (*(v2 + 84) == v0)
  {
    v3 = sub_22BE291BC();
  }

  else
  {
    type metadata accessor for StatementResultPayload(0);
    sub_22BE187D0();
    if (*(v5 + 84) == v0)
    {
      sub_22BE23B20();
    }

    else
    {
      sub_22C26E684();
      sub_22BE187D0();
      if (*(v7 + 84) != v0)
      {
        sub_22C18E1D4();
        return sub_22C18F204(v9);
      }

      sub_22BE1C1E8();
    }

    v3 = v1 + v6;
  }

  return sub_22BE1AEA8(v3, v0, v4);
}

uint64_t sub_22BE4129C(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BE412BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{

  return sub_22BF1C8E0(0, 2000000000000000000, 0, a4, a5, a6, a7);
}

uint64_t sub_22BE41348()
{

  return sub_22C1CEAFC();
}

Swift::Int __swiftcall TailTranscriptProtocol.countClientSentEvents()()
{
  sub_22BE19460();
  sub_22BE29420();
  sub_22BE46BB4();
  sub_22C273AC4();
  sub_22BE18000();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v0);
  sub_22BE1B01C();
  sub_22BE46BB4();
  sub_22C273CB4();
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v1);
  sub_22BE234F4();
  v2 = sub_22BE2590C();
  MEMORY[0x2318ABA30](v2);
  sub_22BE1B514();
  swift_getWitnessTable();
  sub_22BE272E4();
  sub_22C273D84();
  sub_22C1AE1F8();
  swift_getWitnessTable();
  sub_22C273724();
  v3 = sub_22BE39EAC();
  v4(v3);
  sub_22BE1AABC();
  return result;
}

uint64_t sub_22BE415EC(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BE416E4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_22BE417C8()
{
}

uint64_t sub_22BE417E0(uint64_t a1)
{
  *(v2 - 96) = v1;

  return _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
}

void MessagePayload.ExternalAgentRequest.init(ifps:)()
{
  sub_22BE3C358();
  sub_22BE28CF0();
  v1 = sub_22BE5CE4C(&off_27D9120B8, &unk_22C2B5F08);
  sub_22BE19448(v1);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v2);
  sub_22BE28738();
  v3 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE19E64();
  v5 = type metadata accessor for RequestContent(0);
  v6 = sub_22BE19448(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE23930();
  v7 = sub_22C26EDD4();
  v8 = sub_22BE19448(v7);
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22BE23D74();
  sub_22BE3F24C();
  MessagePayload.RequestContent.init(ifps:)();
  v9 = type metadata accessor for ExternalAgentRequest(0);
  sub_22BE22814();
  v10 = (v0 + *(v9 + 24));
  v11 = v10[1];
  if (v11)
  {
    v12 = v10[2];
    v13 = *v10;

    MEMORY[0x2318A7890](v13, v11, v12);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_22C26F1C4();
  v15 = sub_22BE335B4();
  sub_22BE19DC4(v15, v14, 1, v16);
  sub_22BE35F50();
  sub_22C26EED4();
  sub_22BE48744();
  sub_22BE267B8();
}

void MessagePayload.RequestContent.init(ifps:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = sub_22BE2054C(v4);
  v6 = type metadata accessor for RequestContent.SystemPromptResolution(v5);
  v7 = sub_22BE19448(v6);
  MEMORY[0x28223BE20](v7);
  sub_22BE17B98();
  v34[1] = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = sub_22BE5CE4C(&qword_27D9120C8, &unk_22C2CC910);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v34[0] = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE26800();
  type metadata accessor for RequestContent.SpeechContent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v16);
  sub_22BE18928();
  MEMORY[0x28223BE20](v17);
  v18 = sub_22BE195C4();
  v19 = type metadata accessor for RequestContent.TextContent(v18);
  v20 = sub_22BE19448(v19);
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  sub_22BEC0508();
  MEMORY[0x28223BE20](v21);
  v22 = sub_22BE20558();
  v23 = type metadata accessor for RequestContent(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  sub_22BE23D74();
  v34[2] = v3;
  sub_22BE3F24C();
  sub_22BE1A8C4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE20258();
      sub_22BE18944();
      sub_22BE37A38();
      sub_22BE33A98();
      sub_22BE41FB4();
      sub_22BE3F24C();

      sub_22BE46B90();
      sub_22BE18040();
      sub_22C26ED04();
      sub_22BE383DC();
      sub_22BE41F44(v1, type metadata accessor for RequestContent.TextContent);
      v30 = sub_22BE19454();
      sub_22BE41F44(v30, v31);
      v25 = MEMORY[0x277D1C6B8];
      break;
    case 2u:
      sub_22C11631C();
      sub_22BE31038();
      sub_22BE37A38();
      sub_22BE203B0();
      sub_22BE196A8();
      sub_22BE3F24C();
      v23 = &unk_22C2CC910;
      sub_22BE22814();
      sub_22BE37940();
      sub_22BE22814();

      sub_22BE46B90();
      sub_22BE19454();
      sub_22C26EDA4();
      sub_22BE383DC();
      sub_22BE2C714();
      sub_22BE41F44(v0, v26);
      v27 = sub_22BE33FCC();
      sub_22BE41F44(v27, v28);
      v25 = MEMORY[0x277D1C6C0];
      break;
    case 3u:
      sub_22BE18040();
      sub_22BE37A38();
      sub_22BE3F24C();
      sub_22BE46B90();
      SystemPromptResolution.init(ifps:)();
      sub_22BE383DC();
      sub_22BE18304();
      sub_22BE41F44(v11, v29);
      v25 = MEMORY[0x277D1C6A8];
      break;
    default:
      sub_22BE46B90();
      _s16IntelligenceFlow14MessagePayloadO14RequestContentO04StopF0V0aB14PlannerSupportE4ifpsAghDOAFV_tcfC_0();
      sub_22BE383DC();
      v25 = MEMORY[0x277D1C6B0];
      break;
  }

  v32 = *v25;
  sub_22C26EDD4();
  sub_22BE1834C();
  (*(v33 + 104))(v23, v32);
  sub_22BE1AABC();
}

uint64_t sub_22BE41DB4(uint64_t a1, uint64_t a2)
{

  return sub_22C273DE4();
}

uint64_t sub_22BE41E10()
{

  return sub_22C0C1AC4();
}

void sub_22BE41E4C()
{

  sub_22BE68D68(v0, v1, v2, v3);
}

uint64_t sub_22BE41EC0(uint64_t a1, uint64_t a2)
{

  return sub_22C273EE4();
}

uint64_t sub_22BE41F44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18524();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BE41F98()
{

  return swift_getEnumCaseMultiPayload();
}

void SessionStart.init(config:)()
{
  sub_22BE19460();
  v5 = v4;
  v50 = v6;
  v7 = sub_22BE5CE4C(&qword_27D912DF0, &qword_22C2B7ED0);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v49 = sub_22C26ECA4();
  sub_22BE179D8();
  v52 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BE17CBC();
  v11 = sub_22C26EA84();
  sub_22BE179D8();
  v48 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v14);
  sub_22BE2EDB8();
  v15 = sub_22BE5CE4C(&qword_27D911F60, &unk_22C2B5CD0);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE1B604();
  MEMORY[0x28223BE20](v18);
  sub_22BE18094();
  MEMORY[0x28223BE20](v19);
  sub_22BE32374();
  sub_22C26FE04();
  v20 = 1;
  sub_22BE1AB5C(v0, 1, v11);
  v51 = v1;
  if (!v21)
  {
    v47 = v5;
    sub_22C18FD18();
    v22 = sub_22BE200E0();
    v23(v22);
    sub_22C26EA74();
    sub_22BE41F14();
    sub_22BE20458(v24);
    sub_22BE3AF28();
    v25 = sub_22C272FD4();
    v26 = *(v1 + 8);
    v27 = sub_22BE29454();
    v26(v27);
    v28 = sub_22BE18240();
    v26(v28);
    if (v25)
    {
      (v26)(v0, v11);
      v20 = 1;
    }

    else
    {
      (*(v48 + 32))(v3, v0, v11);
      v20 = 0;
    }

    v5 = v47;
  }

  sub_22BE19DC4(v3, v20, 1, v11);
  sub_22BE191C0();
  sub_22BE424BC();
  sub_22C26FE14();
  v29 = sub_22BE406A0();
  sub_22BE1AB5C(v29, v30, v49);
  if (v21)
  {
    sub_22C26EC94();
    v31 = sub_22BE406A0();
    sub_22BE1AB5C(v31, v32, v49);
    if (!v21)
    {
      sub_22C18DC5C(v2, &qword_27D912DF0);
    }
  }

  else
  {
    v33 = sub_22BE354DC();
    v34(v33);
  }

  sub_22BE22814();
  v35 = sub_22C26FE24();
  sub_22C26FE34();
  sub_22BE18000();
  (*(v36 + 8))(v5);
  v37 = sub_22BE3C968();
  sub_22C18DC5C(v37, v38);
  v39 = type metadata accessor for SessionStart(0);
  sub_22BE1A140();
  sub_22BE19DC4(v40, v41, v42, v11);
  sub_22C26EC34();
  sub_22BE1A140();
  sub_22BE19DC4(v43, v44, v45, v46);
  (*(v52 + 32))(v50, v51, v49);
  sub_22BE2343C();
  *(v50 + *(v39 + 28)) = v35 & 1;
  sub_22BE1AABC();
}

uint64_t sub_22BE424BC()
{
  sub_22BE18378();
  sub_22BE5CE4C(v1, v2);
  sub_22BE1834C();
  v3 = sub_22BE19454();
  v4(v3);
  return v0;
}

void sub_22BE4258C()
{

  JUMPOUT(0x2318AB6A0);
}

uint64_t sub_22BE425AC()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22BE42638(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_22C272024();
}

uint64_t sub_22BE42650(uint64_t a1)
{

  return sub_22BE19DC4(v1, 1, 1, a1);
}

uint64_t sub_22BE4270C()
{

  return sub_22BE22868();
}

void sub_22BE42774()
{
  sub_22BE19460();
  v115 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082E0, &qword_22C27A3B8);
  sub_22BE19448(v9);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v118 = v11;
  sub_22BE183BC();
  sub_22C271CC4();
  sub_22BE179D8();
  v113 = v13;
  v114 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v108[8] = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19490();
  v108[7] = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19490();
  v108[6] = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  v108[5] = v20;
  v21 = sub_22BE5CE4C(&qword_27D9082D8, &qword_22C27A3B0);
  v22 = sub_22BE19448(v21);
  MEMORY[0x28223BE20](v22);
  sub_22BE17B98();
  v108[4] = v23;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v24);
  sub_22BE19490();
  v108[3] = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  v108[2] = v27;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v28);
  sub_22BE19490();
  v108[1] = v29;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E94();
  v109 = v31;
  sub_22BE183BC();
  v32 = sub_22C271D74();
  sub_22BE179D8();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  sub_22BE179EC();
  v110 = v37 - v36;
  v38 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v38);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v39);
  sub_22BE1B72C();
  v40 = sub_22BE5CE4C(&qword_27D908358, &unk_22C27AB08);
  sub_22BE19448(v40);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E64();
  sub_22C271F54();
  sub_22BE179D8();
  v116 = v43;
  v117 = v42;
  MEMORY[0x28223BE20](v42);
  sub_22BE183AC();
  v46 = v44 - v45;
  v48 = MEMORY[0x28223BE20](v47);
  v50 = v108 - v49;
  v51 = *v4;
  v111 = v34;
  v112 = v32;
  v52 = *(v34 + 16);
  v119 = v8;
  v52(v8, v6, v32, v48);
  sub_22C271F44();
  sub_22C271F04();
  v53 = *MEMORY[0x277D20490];
  v54 = sub_22C271F14();
  sub_22BE18000();
  v56 = *(v55 + 104);
  v56(v1, v53, v54);
  v57 = sub_22BE19198();
  sub_22BE3D114(v57, v58, v59, v54);
  sub_22C271F34();
  v60 = sub_22C26E1D4();
  sub_22BE18000();
  (*(v61 + 16))(v0, v115, v60);
  sub_22BE187DC();
  sub_22BE19DC4(v62, v63, v64, v60);
  sub_22C271F24();
  switch(v51 >> 5)
  {
    case 2u:
      sub_22C271F44();
      sub_22C271F04();
      v56(v1, v53, v54);
      v69 = sub_22BE19198();
      sub_22BE3D114(v69, v70, v71, v54);
      sub_22C271F34();
      v120 = v51 & 0x1F;
      v72 = sub_22BE366E4();
      sub_22BE35210(v72, v73, v74);
      v75 = v116;
      v76 = v46;
      v77 = v117;
      (*(v116 + 8))(v76, v117);
      v78 = sub_22BE372FC();
      v79(v78);
      v80 = sub_22BE267D8();
      v81(v80);
      goto LABEL_10;
    case 3u:
      v121 = v51 & 0x1F;
      v82 = sub_22BE366E4();
      sub_22BE93F64(v82, v83, v84);
      v85 = sub_22BE372FC();
      v86(v85);
      v87 = sub_22BE267D8();
      v88(v87);
      goto LABEL_9;
    case 4u:
    case 5u:
    case 6u:
      v89 = v114;
      sub_22BE3C7EC();
      sub_22BE1C27C();
      v92 = sub_22BE23C3C();
      v93(v92);
      goto LABEL_7;
    case 7u:
      v89 = v114;
      sub_22BE3C7EC();
      v90 = sub_22BE23C3C();
      v91(v90);
LABEL_7:
      v94 = sub_22BE22BD8();
      v95(v94);
      v96 = sub_22BE19198();
      sub_22BE3D114(v96, v97, v98, v89);
      break;
    default:
      v65 = v114;
      (*(v113 + 104))(v109, *MEMORY[0x277D1F668], v114);
      sub_22BE187DC();
      sub_22BE19DC4(v66, v67, v68, v65);
      break;
  }

  sub_22C271CE4();
LABEL_9:
  v75 = v116;
  v77 = v117;
LABEL_10:
  v99 = v118;
  (*(v75 + 16))(v118, v50, v77);
  v100 = *MEMORY[0x277D1F718];
  v101 = sub_22C271D44();
  sub_22BE18000();
  (*(v102 + 104))(v99, v100, v101);
  v103 = sub_22BE19198();
  sub_22BE3D114(v103, v104, v105, v101);
  sub_22C271D54();
  v106 = sub_22BE1AB1C();
  v107(v106);
  sub_22BE1AABC();
}

uint64_t sub_22BE431D8()
{

  return sub_22BE22868();
}

uint64_t sub_22BE43258(uint64_t a1)
{

  return sub_22C273074();
}

void TranscriptProtoStatementOutcome.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v348 = v27;
  v349 = v21;
  v341 = v28;
  v29 = sub_22C26E854();
  v30 = sub_22BE18910(v29, v332);
  v324 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE18950(v33);
  v34 = sub_22C26FD94();
  v35 = sub_22BE18910(v34, &v331);
  v322 = v36;
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  sub_22BE18950(v38);
  v39 = sub_22C2701C4();
  v40 = sub_22BE18910(v39, &v338);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE18950(v42);
  v43 = sub_22C26FCD4();
  v44 = sub_22BE18910(v43, v343);
  MEMORY[0x28223BE20](v44);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22BE19E94();
  sub_22BE18950(v46);
  v47 = sub_22C26FFF4();
  v48 = sub_22BE18910(v47, &v344);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v49);
  sub_22BE19E94();
  sub_22BE18950(v50);
  v51 = sub_22C26FE94();
  v52 = sub_22BE18910(v51, &v349);
  MEMORY[0x28223BE20](v52);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE18950(v54);
  v55 = sub_22C26FC54();
  v56 = sub_22BE18910(v55, &a12);
  v331 = v57;
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v58);
  sub_22BE19E94();
  sub_22BE18950(v59);
  v344 = sub_22C272224();
  sub_22BE179D8();
  v346 = v60;
  MEMORY[0x28223BE20](v61);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v62);
  sub_22BE19E94();
  sub_22C259A68(v63);
  v343[1] = sub_22C272674();
  sub_22BE179D8();
  v345 = v64;
  MEMORY[0x28223BE20](v65);
  sub_22BE17B98();
  sub_22C259D70();
  MEMORY[0x28223BE20](v66);
  sub_22BE3173C(v67, v68, v69, v70, v71, v72, v73, v74, v314);
  v75 = sub_22C26FBC4();
  v76 = sub_22BE18910(v75, &a17);
  v332[3] = v77;
  MEMORY[0x28223BE20](v76);
  sub_22BE17A44();
  sub_22BE18950(v78);
  v79 = sub_22C26F8A4();
  v80 = sub_22BE18910(v79, &v333);
  MEMORY[0x28223BE20](v80);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v81);
  sub_22BE19E94();
  sub_22BE18950(v82);
  sub_22C26FB84();
  sub_22BE179D8();
  v334 = v84;
  v335 = v83;
  MEMORY[0x28223BE20](v83);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v85);
  sub_22BE3CEC0(v86, v87, v88, v89, v90, v91, v92, v93, v315);
  sub_22C26EAC4();
  sub_22BE179D8();
  v338 = v95;
  v339 = v94;
  MEMORY[0x28223BE20](v94);
  sub_22BE17B98();
  v336 = v96;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v97);
  sub_22C259824(v98, v99, v100, v101, v102, v103, v104, v105, v316);
  v342 = sub_22C26E9D4();
  sub_22BE179D8();
  v107 = v106;
  MEMORY[0x28223BE20](v108);
  sub_22BE195A8();
  MEMORY[0x28223BE20](v109);
  sub_22BE39EE8();
  v110 = sub_22C26F894();
  sub_22BE179D8();
  v112 = v111;
  MEMORY[0x28223BE20](v113);
  v114 = sub_22BE2F294();
  v347 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(v114);
  sub_22BE18000();
  MEMORY[0x28223BE20](v115);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v116);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v117);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v118);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v119);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v121);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v122);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v123);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v124);
  sub_22BE2351C();
  MEMORY[0x28223BE20](v125);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v126);
  sub_22BE27A50();
  MEMORY[0x28223BE20](v127);
  sub_22BE19E94();
  v340 = v128;
  sub_22C116380();
  v129(v24, v348, v110);
  v130 = sub_22BE3E79C();
  v132 = v131(v130);
  if (v132 == *MEMORY[0x277D1CBF0])
  {
    v133 = sub_22C259710();
    v134(v133);
    v135 = sub_22BE33B3C();
    v136(v135);
    sub_22BE3C6EC();
    sub_22BE39E94();
    v137();
    v138 = sub_22C259EBC();
    v139 = v349;
    TranscriptProtoActionSuccess.init(handwritten:)(v138, v140, v141, v142, v143, v144, v145, v146, v317, v318);
    if (v139)
    {
      v147 = sub_22C259E2C();
      v148(v147);
      v149 = sub_22BE33560();
      v150(v149);
LABEL_44:
      sub_22BE22978();
      sub_22BE18478();
      return;
    }

    v182 = sub_22BE33560();
    v183(v182);
    v157 = v347;
    goto LABEL_11;
  }

  v332[0] = v110;
  v342 = v112;
  v151 = v349;
  if (v132 == *MEMORY[0x277D1CB98])
  {
    v152 = sub_22BE393B4();
    v153(v152);
    sub_22C25A35C();
    v154();
    sub_22C1CF23C();
    v155 = sub_22BE29264();
    v156(v155);
    TranscriptProtoSnippetStream.init(handwritten:)();
    v157 = v347;
    if (v151)
    {
      v158 = sub_22C259E2C();
      v159(v158);
      v160 = sub_22BE25EFC();
      v161(v160);
      goto LABEL_44;
    }

    v210 = sub_22BE25EFC();
    v211(v210);
    sub_22BE3AF28();
    swift_storeEnumTagMultiPayload();
    v20 = v22;
LABEL_43:
    sub_22BE3B620(v20, v340);
    v277 = v341;
    v278 = sub_22BE38960();
    v281 = sub_22C18F17C(v278, v279, v280, v157);
    type metadata accessor for TranscriptProtoStatementOutcome(v281);
    sub_22BE48874();
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v282 = sub_22C259E2C();
    v283(v282);
    sub_22BE233E8(v277, &qword_27D90E980, &qword_22C2CC850);
    v284 = sub_22BE200D4();
    sub_22BE3B620(v284, v285);
    v286 = sub_22BE2500C();
    sub_22BE19DC4(v286, v287, v288, v157);
    goto LABEL_44;
  }

  v162 = v349;
  v157 = v347;
  if (v132 == *MEMORY[0x277D1CBA8])
  {
    v163 = sub_22BE393B4();
    v164(v163);
    v165 = v333;
    v166 = v334;
    sub_22C18F338();
    v167 = sub_22BE3911C();
    v168 = v335;
    v169(v167);
    sub_22BE29400();
    v170 = sub_22BE33BE8();
    v171(v170);
    v172 = sub_22BE44844();
    TranscriptProtoActionConfirmation.init(handwritten:)(v172, v173, v174, v175, v176, v177, v178, v179, v317, SHIDWORD(v317), v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328);
    if (v162)
    {
      v180 = sub_22C259E2C();
      v181(v180);
      (*(v166 + 8))(v165, v168);
      goto LABEL_44;
    }

    (*(v166 + 8))(v165, v168);
    sub_22BE196A8();
    swift_storeEnumTagMultiPayload();
    v20 = v23;
    goto LABEL_43;
  }

  if (v132 == *MEMORY[0x277D1CBB0])
  {
    v184 = sub_22C259710();
    v185(v184);
    v186 = sub_22BE3E8FC();
    v187(v186);
    v333 = sub_22C26FBA4();
    v334 = v188;
    v189 = MEMORY[0x2318A82B0]();
    v190 = *(v189 + 16);
    if (!v190)
    {

      v196 = MEMORY[0x277D84F90];
LABEL_31:
      type metadata accessor for TranscriptProtoToolDisambiguation(0);
      v20 = v332[1];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE196EC();
      v243 = sub_22C25AA68();
      v244(v243);
      v245 = v334;
      v20[1] = v333;
      v20[2] = v245;
      *v20 = v196;
      sub_22BE1B62C();
LABEL_11:
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    }

    sub_22BE3122C(MEMORY[0x277D84F90]);
    sub_22BE34198();
    sub_22BE70F04(v191, v192, v193);
    v194 = 0;
    sub_22BE25AD8();
    v196 = a10;
    v337 = v189 + v197;
    v335 = v190;
    v336 = v198 + 16;
    v338 = (v198 + 8);
    v339 = v189;
    v199 = (v345 + 32);
    while (v194 < *(v189 + 16))
    {
      v157 = a10;
      v200 = *(v346 + 16);
      (v200)(v343[3], v337 + *(v346 + 72) * v194, v344);
      v201 = sub_22BE392D4();
      v200(v201);
      sub_22C2721F4();
      if (v162)
      {

        (*(v342 + 8))(v348, v332[0]);
        v238 = *v338;
        v239 = sub_22BE194C4();
        v238(v239);
        v240 = sub_22BE194F8();
        v238(v240);
        sub_22BE196EC();
        v241 = sub_22C25AA68();
        v242(v241);

        goto LABEL_44;
      }

      v349 = 0;
      v202 = *v338;
      v203 = sub_22BE194C4();
      v202(v203);
      v204 = sub_22BE194F8();
      v202(v204);
      v205 = *v199;
      v206 = sub_22BE29264();
      (v205)(v206);
      v208 = *(a10 + 16);
      v207 = *(a10 + 24);
      if (v208 >= v207 >> 1)
      {
        v209 = sub_22BE3D1E4(v207);
        sub_22BE70F04(v209, v208 + 1, 1);
      }

      ++v194;
      *(a10 + 16) = v208 + 1;
      sub_22BE25AD8();
      sub_22BE354D0();
      v195 = v205();
      v162 = v349;
      v189 = v339;
      if (v335 == v194)
      {

        v157 = v347;
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v132 == *MEMORY[0x277D1CBB8])
  {
    v212 = sub_22C259710();
    v213(v212);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25AAF8();
    v214();
    sub_22BE29400();
    v215 = sub_22C259EC8();
    v216(v215);
    v217 = sub_22BE37DF4();
    TranscriptProtoParameterNeedsValue.init(handwritten:)(v217, v218, v219, v220, v221, v222, v223, v224, v317, v318);
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v132 == *MEMORY[0x277D1CBD0])
  {
    v225 = sub_22C259710();
    v226(v225);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25AAF8();
    v227();
    sub_22BE29400();
    v228 = sub_22C259EC8();
    v229(v228);
    v230 = sub_22BE37DF4();
    TranscriptProtoParameterConfirmation.init(handwritten:)(v230, v231, v232, v233, v234, v235, v236, v237, v317, v318);
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v132 == *MEMORY[0x277D1CBD8])
  {
    v246 = sub_22C259710();
    v247(v246);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25AAF8();
    v248();
    sub_22BE29400();
    v249 = sub_22C259EC8();
    v250(v249);
    sub_22BE37DF4();
    TranscriptProtoParameterDisambiguation.init(handwritten:)();
    if (!v21)
    {
LABEL_41:
      v275 = sub_22C259F50();
      v276(v275);
      sub_22BF0AFB8();
LABEL_42:
      swift_storeEnumTagMultiPayload();
      v20 = v24;
      goto LABEL_43;
    }

LABEL_34:
    v251 = sub_22C259E2C();
    v252(v251);
    (*(v22 + 8))(v23, v107);
    goto LABEL_44;
  }

  if (v132 == *MEMORY[0x277D1CBC0])
  {
    v253 = sub_22C259710();
    v254(v253);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25A5E0();
    v255();
    sub_22BE29400();
    v256 = sub_22C259EC8();
    v257(v256);
    v24 = v330;
    sub_22BE489C8();
    TranscriptProtoParameterNotAllowed.init(handwritten:)();
    if (!v151)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  if (v132 == *MEMORY[0x277D1CBE0])
  {
    v258 = sub_22C259710();
    v259(v258);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25A5E0();
    v260();
    sub_22BE29400();
    v261 = sub_22BE31038();
    v262(v261);
    v24 = v329;
    v263 = sub_22C259F64();
    TranscriptProtoParameterCandidatesNotFound.init(handwritten:)(v263, v264, v265, v266, v267, v268, v269, v270, v317, v318);
    if (!v151)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  if (v132 == *MEMORY[0x277D1CBA0])
  {
    v289 = sub_22C259710();
    v290(v289);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25AAF8();
    v291();
    sub_22BE29400();
    v292 = sub_22C259EC8();
    v293(v292);
    sub_22BE37DF4();
    TranscriptProtoActionRequirement.init(handwritten:)();
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  if (v132 == *MEMORY[0x277D1CBC8])
  {
    v294 = sub_22C259710();
    v295(v294);
    v189 = v322;
    sub_22C25A35C();
    v199 = v323;
    v296();
    sub_22C1CF23C();
    v297 = sub_22BE3E8FC();
    v298(v297);
    v299 = sub_22C26FD84();
    sub_22C220C88(v299);
    if (v162)
    {
      v300 = sub_22C259E2C();
      v301(v300);
      v302 = *(v322 + 8);
      v303 = sub_22BE336E8();
      v302(v303);
      v304 = sub_22BF6AC14();
      v302(v304);
      goto LABEL_44;
    }

LABEL_56:
    v349 = v195;
    type metadata accessor for TranscriptProtoValueDisambiguation(0);
    v24 = v317;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v312 = *(v189 + 8);
    v313 = sub_22BE336E8();
    v312(v313);
    (v312)(v326, v199);
    *v317 = v349;
    sub_22BF0AFB8();
    goto LABEL_42;
  }

  if (v132 == *MEMORY[0x277D1CBE8])
  {
    v305 = sub_22C259710();
    v306(v305);
    sub_22C259E1C();
    sub_22BE2BB54();
    sub_22C25A5E0();
    v307();
    sub_22BE29400();
    v308 = sub_22BE31038();
    v309(v308);
    v24 = v318;
    sub_22C259F64();
    TranscriptProtoActionFailure.init(handwritten:)();
    if (!v151)
    {
LABEL_54:
      v310 = sub_22BE33FCC();
      v311(v310);
      sub_22BF0AFB8();
      goto LABEL_42;
    }

LABEL_40:
    v271 = sub_22C259E2C();
    v272(v271);
    v273 = sub_22BE33FCC();
    v274(v273);
    goto LABEL_44;
  }

  sub_22C274004();
  __break(1u);
}

uint64_t sub_22BE4475C()
{
  *(v0 - 65) = 0;

  return sub_22C26E684();
}

uint64_t sub_22BE44808()
{

  return sub_22BE22868();
}

void TranscriptProtoActionSuccess.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22C259FE8();
  v71 = v12;
  v13 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v13);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE181D0(v15, v66);
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE29250(v18, v67);
  v19 = sub_22BE5CE4C(&qword_27D911E88, &unk_22C2B5B40);
  sub_22BE19448(v19);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE20168(v21, v68);
  v22 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  sub_22BE19448(v22);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  sub_22BE35C94(v24, v69);
  v25 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v25);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1BCE8(v27, v70);
  v28 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  sub_22BE19448(v28);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE1AB08();
  sub_22C272594();
  sub_22C259488();
  MEMORY[0x28223BE20](v30);
  sub_22BE1AD20();
  sub_22C272874();
  sub_22C2594A0();
  MEMORY[0x28223BE20](v31);
  sub_22BE197B8();
  v32 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v32);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v33);
  sub_22BE23E58();
  sub_22C26E984();
  sub_22C272854();
  if (a10)
  {
    sub_22C26E9D4();
    sub_22BE18524();
    (*(v34 + 8))(v10);
    v35 = sub_22BE1B62C();
    v36(v35);
  }

  else
  {
    v37 = sub_22BE1B62C();
    v38(v37);
    v39 = sub_22BE180C8();
    v40(v39);
    v41 = sub_22BE360A0();
    sub_22BE19DC4(v41, v42, v43, v11);
    sub_22C26E994();
    sub_22BE4618C();
    v44 = sub_22C26E964();
    sub_22C26E8F4();
    sub_22BE465E8();
    v74 = sub_22C26E904();
    v45 = sub_22C26E9A4();
    v72 = v46;
    v73 = v45;
    sub_22C26E9C4();
    sub_22BE46914();
    v47 = type metadata accessor for TranscriptProtoActionSuccess(0);
    sub_22C259860();
    sub_22BE19DC4(v48, v49, v50, v51);
    type metadata accessor for TranscriptProtoUndoContext(0);
    sub_22BE1A140();
    sub_22BE19DC4(v52, v53, v54, v55);
    type metadata accessor for TranscriptProtoFollowUpAction(0);
    sub_22BE1A140();
    sub_22BE19DC4(v56, v57, v58, v59);
    v60 = &v71[*(v47 + 36)];
    type metadata accessor for TranscriptProtoStatementID(0);
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v64);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C26E9D4();
    sub_22BE18524();
    (*(v65 + 8))(v10);
    sub_22BE2343C();
    sub_22BE2343C();
    *v71 = v44 & 1;
    sub_22BE2343C();
    v71[1] = v74 & 1;
    *v60 = v73;
    v60[1] = v72;
    sub_22BE2343C();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t ContextRetrievalInput.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D18, &qword_22C277AB8);
  sub_22BE179D8();
  v5 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE44FE4();
  sub_22C274234();
  v14[15] = 0;
  sub_22C270A04();
  sub_22BE17ADC();
  sub_22BE45038(v9, v10, MEMORY[0x277D1EB60]);
  sub_22BE1A550();
  sub_22C273FA4();
  if (!v1)
  {
    type metadata accessor for ContextRetrievalInput(0);
    v14[14] = 1;
    sub_22C270994();
    sub_22BE1BDD8();
    sub_22BE45038(v11, v12, MEMORY[0x277D1EA28]);
    sub_22BE1A550();
    sub_22C273F34();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_22BE44FE4()
{
  result = qword_28107A788[0];
  if (!qword_28107A788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107A788);
  }

  return result;
}

uint64_t sub_22BE45038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for ContextRetrievalInput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x22BE4514CLL);
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

uint64_t getEnumTagSinglePayload for ExecutorError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22BE45204(char a1)
{
  if (a1)
  {
    return 0x7954656372756F73;
  }

  else
  {
    return 0x54747865746E6F63;
  }
}

uint64_t type metadata accessor for ContextRetrievalInput(uint64_t a1)
{
  result = qword_28107A768;
  if (!qword_28107A768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntitySpanMatchService.init(maxMatchTasks:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BE5CE4C(&qword_27D907868, &unk_22C275A10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v63 - v5;
  v7 = sub_22C270F94();
  sub_22BE179D8();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  v74 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C2720A4();
  sub_22BE179D8();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = (&v63 - v17);
  v18 = sub_22C270B14();
  sub_22BE179D8();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v72 = v2;
  *(v2 + 112) = MEMORY[0x277D84F90];
  *(v2 + 120) = a1;
  v24 = (v2 + 112);
  v25 = *MEMORY[0x277D1EC80];
  v26 = *(v20 + 104);
  v67 = (v20 + 104);
  v66 = v26;
  v26(v23, v25, v18);
  LOBYTE(a1) = sub_22C270B04();
  v27 = *(v20 + 8);
  v68 = v18;
  v65 = v27;
  v27(v23, v18);
  v28 = 0;
  if (a1)
  {
    sub_22BE5CE4C(&qword_27D9073B8, &unk_22C275A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C2759F0;
    *(inited + 32) = 504002438;
    v28 = sub_22BE78C84(inited);
  }

  type metadata accessor for SiriEntityMatcherShim(0);
  v30 = sub_22BE3D3E0();
  sub_22BE69C40(v30, 0, 1);
  v69 = v13;
  sub_22BE2692C();
  sub_22BE1BDA0();
  sub_22BE78B50(v31);
  v32 = v11;
  v33 = *(*v24 + 16);
  sub_22BE78C3C(v33, 0);
  v34 = v33;
  v35 = v32;
  v36 = v69;
  sub_22BE78F58(v34, v28, v24, type metadata accessor for SiriEntityMatcherShim, &qword_28107A500, type metadata accessor for SiriEntityMatcherShim, &protocol conformance descriptor for SiriEntityMatcherShim);
  swift_endAccess();
  v37 = v68;
  v66(v23, *MEMORY[0x277D1EC08], v68);
  v38 = sub_22C270B04();
  v65(v23, v37);
  if (v38)
  {
    type metadata accessor for GlobalEntityMatcherShim(0);
    swift_allocObject();
    GlobalEntityMatcherShim.init(maxEntityCount:)(0, 1);
    sub_22BE2692C();
    sub_22BE1BDA0();
    sub_22BE78B50(v39);
    v40 = *(*v24 + 16);
    sub_22BE78C3C(v40, v37);
    sub_22BE78F58(v40, v38, v24, type metadata accessor for GlobalEntityMatcherShim, qword_281079580, type metadata accessor for GlobalEntityMatcherShim, &protocol conformance descriptor for GlobalEntityMatcherShim);
    swift_endAccess();
  }

  v41 = v71;
  sub_22C271AE4();
  v42 = v72;

  v43 = sub_22C272084();
  v44 = sub_22C273794();

  v70 = v43;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = sub_22BE19E2C();
    v67 = sub_22BE25618();
    v76[0] = v67;
    v68 = v45;
    *v45 = 136315138;
    swift_beginAccess();
    v46 = *v24;
    v47 = *(*v24 + 16);
    if (v47)
    {
      LODWORD(v66) = v44;
      v64 = v35;
      v48 = v46 + 32;
      v49 = (v73 + 32);
      v65 = v46;

      v50 = MEMORY[0x277D84F90];
      do
      {
        sub_22BE26B00(v48, v75);
        sub_22BE1BD3C(v75, v75[3]);
        sub_22C271924();
        sub_22BE19DC4(v6, 0, 1, v7);
        sub_22BE26B64(v75);
        if (sub_22BE1AEA8(v6, 1, v7) == 1)
        {
          sub_22BE23388(v6, &qword_27D907868, &unk_22C275A10);
        }

        else
        {
          v51 = *v49;
          (*v49)(v74, v6, v7);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22BE669C4(0, *(v50 + 16) + 1, 1, v50);
            v50 = v54;
          }

          v53 = *(v50 + 16);
          v52 = *(v50 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_22BE669C4(v52 > 1, v53 + 1, 1, v50);
            v50 = v55;
          }

          *(v50 + 16) = v53 + 1;
          v51((v50 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v53), v74, v7);
        }

        v48 += 40;
        --v47;
      }

      while (v47);

      v35 = v64;
      v41 = v71;
      LOBYTE(v44) = v66;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v56 = MEMORY[0x2318ABBB0](v50, v7);
    v58 = v57;

    v59 = sub_22BE61C88(v56, v58, v76);

    v60 = v68;
    *(v68 + 1) = v59;
    v61 = v70;
    _os_log_impl(&dword_22BE15000, v70, v44, "[EntitySpanMatchService] Finished initializing with the following matchers: %s", v60, 0xCu);
    sub_22BE26B64(v67);
    sub_22BE183C8();
    sub_22BE183C8();

    (*(v69 + 8))(v41, v35);
    return v72;
  }

  else
  {

    (*(v36 + 8))(v41, v35);
  }

  return v42;
}

uint64_t EntitySpanMatchService.__allocating_init(maxMatchTasks:)()
{
  swift_allocObject();
  v1 = sub_22BE3D3E0();
  EntitySpanMatchService.init(maxMatchTasks:)(v1);
  return v0;
}

uint64_t type metadata accessor for SiriEntityMatcherShim(uint64_t a1)
{
  result = qword_28107A4F0;
  if (!qword_28107A4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22BE45BD4()
{
  result = qword_28106E720;
  if (!qword_28106E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E720);
  }

  return result;
}

id sub_22BE45C28(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C26E204();
  v13[0] = 0;
  v5 = [v2 initWithTokenizerLocale:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_22C26E244();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_22C26DE84();

    swift_willThrow();
    v11 = sub_22C26E244();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_22BE45D84(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for GlobalEntityMatcherShim(uint64_t a1)
{
  result = qword_281079570;
  if (!qword_281079570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GlobalEntityMatcherShim.init(maxEntityCount:)(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_defaultMaxEntityCount) = 5;
  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_knosisAnswerLimit) = 1000;
  v3 = (v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_intelligencePlatformBundleId);
  *v3 = 0xD00000000000001ELL;
  v3[1] = 0x800000022C2D2A50;
  if (a2)
  {
    v4 = 5;
  }

  else
  {
    v4 = a1;
  }

  *(v2 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_maxEntityCount) = v4;
  v5 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  v6 = *MEMORY[0x277D1EE80];
  sub_22C270F94();
  sub_22BE18000();
  (*(v7 + 104))(v2 + v5, v6);
  return v2;
}

uint64_t ToolkitCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Session.SessionState.statementIdCounter.getter()
{
  type metadata accessor for Session.SessionState(0);
}

uint64_t ExternalAgentOutcome.init(statementId:statementOutcome:responseText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE3E864();
  sub_22C26E684();
  sub_22BE1834C();
  v7 = sub_22BE1C2A0();
  v8(v7);
  v9 = type metadata accessor for ExternalAgentOutcome(0);
  sub_22C18FE44();
  sub_22C26F894();
  sub_22BE1834C();
  result = (*(v10 + 32))(v4 + v5, v3);
  *(v4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_22BE46030()
{

  return sub_22C2704B4();
}

uint64_t sub_22BE46054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

void sub_22BE4618C()
{
  sub_22BE19130();
  v47 = v3;
  v5 = v4;
  sub_22C26E1D4();
  sub_22BE179D8();
  v44 = v7;
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v10 = v9 - v8;
  v48 = type metadata accessor for TranscriptProtoUndoContext(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v11);
  sub_22BE1955C();
  v12 = sub_22BE5CE4C(&qword_27D911E90, &unk_22C2CCA10);
  sub_22BE19448(v12);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19668();
  v14 = sub_22C26E954();
  sub_22BE179D8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  sub_22BE27A50();
  MEMORY[0x28223BE20](v18);
  sub_22BE25A90();
  sub_22BE2B984(v5, v0, &qword_27D911E90, &unk_22C2CCA10);
  sub_22BE23B00(v0);
  if (v19)
  {
    sub_22BE36674();
    sub_22BE33928(v20, v21, v22);
    sub_22BE36674();
    sub_22BE33928(v23, v24, v25);
    v41 = 1;
  }

  else
  {
    v26 = sub_22BE3C5E4();
    v27(v26);
    v28 = sub_22BE260B8();
    v29(v28);
    sub_22C26E934();
    v30 = sub_22C26E184();
    v42 = v31;
    v43 = v30;
    (*(v44 + 8))(v10, v45);
    v32 = sub_22C26E914();
    v46 = v33;
    v34 = sub_22C26E924();
    v36 = v35;
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33928(v5, &qword_27D911E90, &unk_22C2CCA10);
    v37 = *(v16 + 8);
    v38 = sub_22BE41FB4();
    v37(v38);
    (v37)(v1, v14);
    *v2 = v43;
    v2[1] = v42;
    v2[2] = v32;
    v2[3] = v46;
    v2[4] = v34;
    v2[5] = v36;
    v39 = sub_22C1088AC();
    sub_22C1086E4(v39, v47, v40);
    v41 = 0;
  }

  sub_22BE19DC4(v47, v41, 1, v48);
  sub_22BE18478();
}

uint64_t sub_22BE4650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
}

unint64_t sub_22BE46594()
{
  result = qword_28106E8D0;
  if (!qword_28106E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E8D0);
  }

  return result;
}

void sub_22BE465E8()
{
  sub_22BE19130();
  v3 = sub_22BE3C3E4(v2);
  v30 = type metadata accessor for TranscriptProtoFollowUpAction(v3);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE19338();
  v5 = sub_22BE1A8C4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE24FD8();
  sub_22C26E8E4();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE23748();
  sub_22BE3F3C8(v11);
  sub_22BE26894();
  if (v12)
  {
    v13 = sub_22C108788();
    sub_22BE33928(v13, v14, v15);
    sub_22BE40960();
    sub_22BE33928(v16, v17, v18);
    sub_22C108820();
LABEL_7:
    v27 = sub_22BE46544();
    sub_22BE19DC4(v27, v28, v29, v30);
    goto LABEL_8;
  }

  v19 = sub_22BE3D4EC();
  v20(v19);
  v21 = sub_22BE1ACD4();
  v22(v21);
  sub_22C1087E0();
  TranscriptProtoFollowUpAction.init(handwritten:)();
  if (!v0)
  {
    sub_22BE33928(v1, &qword_27D911E88, &unk_22C2B5B40);
    v25 = sub_22BE41624();
    v26(v25);
    sub_22BE3CE24();
    goto LABEL_7;
  }

  sub_22BE33928(v1, &qword_27D911E88, &unk_22C2B5B40);
  v23 = sub_22BE41624();
  v24(v23);
LABEL_8:
  sub_22BEE94B0();
  sub_22BE18478();
}

uint64_t sub_22BE467F0()
{

  return sub_22C108634();
}

uint64_t sub_22BE4688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BE4658C);
}

void sub_22BE46914()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE41FB4();
  v7 = sub_22BE5CE4C(v5, v6);
  sub_22BE19448(v7);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A8B4();
  v9 = sub_22C26E684();
  sub_22BE179D8();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BE25544();
  MEMORY[0x28223BE20](v13);
  sub_22BE2EDB8();
  v14 = sub_22BE36658();
  sub_22BE2B984(v14, v15, &qword_27D907240, &unk_22C2B5B80);
  v16 = sub_22BE406A0();
  sub_22BE1AB5C(v16, v17, v9);
  if (v18)
  {
    sub_22BE354D0();
    sub_22BE33928(v19, v20, v21);
    sub_22BE354D0();
    sub_22BE33928(v22, v23, v24);
    type metadata accessor for TranscriptProtoStatementID(0);
    v35 = sub_22BE2BA98();
  }

  else
  {
    v25 = sub_22BE1AEE4();
    v26(v25);
    v27 = sub_22C108C94();
    v28(v27);
    v38 = sub_22C26E674();
    v29 = sub_22C26E654();
    v31 = v30;
    v32 = type metadata accessor for TranscriptProtoStatementID(0);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33928(v2, &qword_27D907240, &unk_22C2B5B80);
    v33 = *(v11 + 8);
    v33(v0, v9);
    v34 = sub_22BE18240();
    (v33)(v34);
    *v4 = v38;
    *(v4 + 8) = v29;
    *(v4 + 16) = v31;
    v35 = sub_22BE3661C();
    v37 = v32;
  }

  sub_22BE19DC4(v35, v36, 1, v37);
  sub_22BE3C298();
  sub_22BE18478();
}

uint64_t sub_22BE46B10(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 400);
  *(v3 - 656) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
  *(v3 - 528) = v1;
}

void sub_22BE46BC0()
{
  v2 = *(v0 + 16) + 1;

  sub_22BE66A04(0, v2, 1, v0);
}

uint64_t sub_22BE46BE4()
{

  return sub_22BE1AE58();
}

uint64_t sub_22BE46C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BE46C40);
}

uint64_t sub_22BE46D10()
{

  return sub_22BE2BE3C();
}

uint64_t sub_22BE46DA4(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return 0;
}

uint64_t sub_22BE46E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E450, &qword_22C2AE470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E450, &qword_22C2AE470);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome, &protocol conformance descriptor for TranscriptProtoExternalAgentOutcome);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t TranscriptProtoExternalAgentOutcome.traverse<A>(visitor:)()
{
  sub_22BE18648();
  if (!*(*v0 + 16) || (sub_22BE1BAB8(), result = sub_22C270824(), !v1))
  {
    v3 = sub_22BE17D60();
    result = sub_22BE470F0(v3, v4, v5, v6);
    if (!v1)
    {
      v7 = sub_22BE17D60();
      sub_22BE472C4(v7, v8, v9, v10);
      type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
      v11 = sub_22BE375E4();
      return sub_22BE363D4(v11, v12);
    }
  }

  return result;
}

uint64_t sub_22BE470F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE472C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90CA68, &unk_22C296C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90CA68, &unk_22C296C50);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome, &protocol conformance descriptor for TranscriptProtoStatementOutcome);
  sub_22C270884();
  return sub_22C0B08BC();
}

void TranscriptProtoActionSuccess.traverse<A>(visitor:)()
{
  sub_22BE3B090();
  sub_22C0B13D0();
  sub_22BE47B20();
  if (!v0)
  {
    v2 = sub_22BE17D60();
    sub_22BE47EA8(v2, v3, v4, v5);
    sub_22C0B1C3C();
    if (v6)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v7 = sub_22BE17D60();
    sub_22BE4809C(v7, v8, v9, v10);
    if (*(v1 + 1) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v11 = sub_22BE17D60();
    sub_22BE483FC(v11);
    v12 = sub_22BE17D60();
    sub_22BE484A4(v12, v13, v14, v15);
    type metadata accessor for TranscriptProtoActionSuccess(0);
    sub_22BE1AC30();
  }
}

void TranscriptProtoStatementOutcome.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22C0B137C();
  v5 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  sub_22BE2B890(v5);
  if (!v6)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v36 = sub_22BE17D78();
        sub_22C01EB00(v36, v37, v38, v39);
        goto LABEL_15;
      case 2:
        v24 = sub_22BE17D78();
        sub_22C01ED08(v24, v25, v26, v27);
        goto LABEL_15;
      case 3:
        v28 = sub_22BE17D78();
        sub_22C01EF10(v28, v29, v30, v31);
        goto LABEL_15;
      case 4:
        v16 = sub_22BE17D78();
        sub_22C01F118(v16, v17, v18, v19);
        goto LABEL_15;
      case 5:
        v40 = sub_22BE17D78();
        sub_22C01F320(v40, v41, v42, v43);
        goto LABEL_15;
      case 6:
        v44 = sub_22BE17D78();
        sub_22C01F528(v44, v45, v46, v47);
        goto LABEL_15;
      case 7:
        v32 = sub_22BE17D78();
        sub_22C01F730(v32, v33, v34, v35);
        goto LABEL_15;
      case 8:
        v52 = sub_22BE17D78();
        sub_22C01F938(v52, v53, v54, v55);
        goto LABEL_19;
      case 9:
        v20 = sub_22BE17D78();
        sub_22C01FB40(v20, v21, v22, v23);
        goto LABEL_19;
      case 10:
        v48 = sub_22BE17D78();
        sub_22C01FD48(v48, v49, v50, v51);
        goto LABEL_19;
      case 11:
        v12 = sub_22BE17D78();
        sub_22C01FF50(v12, v13, v14, v15);
LABEL_19:
        if (v0)
        {
          sub_22C0B1414();
          sub_22C0B08BC();
          goto LABEL_21;
        }

        sub_22C0B1414();
        sub_22C0B08BC();
        break;
      default:
        v8 = sub_22BE17D78();
        sub_22BE47784(v8, v9, v10, v11);
LABEL_15:
        sub_22C0B1414();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_21;
    }
  }

  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_22BE235A8();
LABEL_21:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22BE47784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E980, &qword_22C2CC850);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for TranscriptProtoActionSuccess(0);
  MEMORY[0x28223BE20](v7);
  sub_22BE22868();
  v8 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  if (sub_22BE1AEA8(v6, 1, v8) == 1)
  {
    result = sub_22BE33928(v6, &qword_27D90E980, &qword_22C2CC850);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess, &protocol conformance descriptor for TranscriptProtoActionSuccess);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t Session.SessionEnded.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907F48, &qword_22C278CB0);
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE47CD0();
  sub_22C274234();
  sub_22C26E1D4();
  sub_22BE20414(&qword_28107F328, MEMORY[0x277CC95F8]);
  sub_22C273FA4();
  return (*(v4 + 8))(v7, v2);
}

void sub_22BE47B20()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE431C0();
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE19448(v5);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE23E58();
  v7 = sub_22C272594();
  sub_22BE179D8();
  MEMORY[0x28223BE20](v8);
  sub_22BE294E0();
  v2(0);
  sub_22BE22868();
  v9 = sub_22BE3C598();
  sub_22BE1AB5C(v9, v10, v7);
  if (v11)
  {
    sub_22BE33928(v0, &qword_27D909128, &qword_22C294AA0);
  }

  else
  {
    v12 = sub_22BE289D8();
    v13(v12);
    sub_22BE192C8();
    sub_22BE2C988(v14, v15, MEMORY[0x277D727D8]);
    sub_22C270884();
    v16 = sub_22BE196A8();
    v17(v16);
  }

  sub_22BE22978();
  sub_22BE18478();
}

unint64_t sub_22BE47CD0()
{
  result = qword_28106F178[0];
  if (!qword_28106F178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28106F178);
  }

  return result;
}

_BYTE *_s12SessionEndedV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x22BE47DC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutorError.OtherCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_22BE47EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E908, &unk_22C2AE600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoUndoContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E908, &unk_22C2AE600);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext, &protocol conformance descriptor for TranscriptProtoUndoContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE4809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E8F8, &qword_22C2B5B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D90E8F8, &qword_22C2B5B60);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction, &protocol conformance descriptor for TranscriptProtoFollowUpAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE482A4()
{

  return swift_getEnumCaseMultiPayload();
}

Swift::String __swiftcall Encodable.ifps_jsonPrettyPrinted()()
{
  v0 = sub_22C273064();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22BE179EC();
  if (qword_28107F368 != -1)
  {
    swift_once();
  }

  v1 = sub_22C26DC04();
  v3 = v2;
  sub_22C273054();
  v4 = sub_22C273044();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_22BE29DD4(v1, v3);
  }

  else
  {
    sub_22BE29DD4(v1, v3);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v6;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_22BE483FC(uint64_t a1)
{
  result = type metadata accessor for TranscriptProtoActionSuccess(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE484A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for TranscriptProtoActionSuccess(0);
  sub_22BE22868();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    return sub_22BE33928(v6, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID, &protocol conformance descriptor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22BE48678()
{
  sub_22BE48474(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22BE486D0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BE48744()
{

  return sub_22BE41F44(v1, v0);
}

uint64_t sub_22BE48814(uint64_t a1)
{
}

uint64_t sub_22BE4885C()
{

  return sub_22BE22868();
}

uint64_t sub_22BE488A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_22BE39E30(-1);
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
      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
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

      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_22BE39E30((*a1 | (v4 << 8)) - 2);
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

  return sub_22BE39E30(v8);
}

uint64_t sub_22BE48938(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_22BE48998()
{

  JUMPOUT(0x2318AB8D0);
}

uint64_t sub_22BE489E0(unint64_t *a1)
{

  return sub_22C250EF0(a1);
}

unint64_t sub_22BE48A04()
{
  result = qword_281073080[0];
  if (!qword_281073080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281073080);
  }

  return result;
}

unint64_t sub_22BE48A9C()
{
  result = qword_28106E738;
  if (!qword_28106E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106E738);
  }

  return result;
}

void ExternalAgentOutcome.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE2BB34();
  sub_22BE22950();
  sub_22BE5CE4C(&qword_27D913DB8, &qword_22C2B86A8);
  sub_22BE1BF18();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  sub_22BE23094();
  v16 = sub_22BE48CC4();
  sub_22BE25524(&type metadata for ExternalAgentOutcome.CodingKeys, v17, v16);
  sub_22C18E810();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v18);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v14)
  {
    type metadata accessor for ExternalAgentOutcome(0);
    sub_22BE335C0();
    sub_22C26F894();
    sub_22BE28CFC();
    sub_22BE20458(v19);
    sub_22C18E994();
    sub_22BE196CC();
    sub_22C273FA4();
    sub_22C18F8C8();
    sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
    sub_22C18E158(&qword_28106DBE8);
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v20 = sub_22BE37A10();
  v21(v20);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

unint64_t sub_22BE48CC4()
{
  result = qword_28107ADA8[0];
  if (!qword_28107ADA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107ADA8);
  }

  return result;
}

uint64_t sub_22BE48D20(char a1)
{
  if (!a1)
  {
    return 0x6E656D6574617473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x65736E6F70736572;
}

char *sub_22BE48D8C(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v3 = v1;
  v3[1] = v2;
  return v3 + v4;
}

uint64_t sub_22BE48DF8()
{

  return swift_getEnumCaseMultiPayload();
}

unint64_t sub_22BE48E94(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_22BE48EF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22BE48F64(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE7431C(&qword_27D908050, &qword_22C278EB0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_22BE48FDC(uint64_t a1)
{
  sub_22C270A04();
  if (v1 <= 0x3F)
  {
    sub_22BE49060(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BE49060(uint64_t a1)
{
  if (!qword_28107F1C0)
  {
    sub_22C270994();
    v1 = sub_22C273844();
    if (!v2)
    {
      atomic_store(v1, &qword_28107F1C0);
    }
  }
}

uint64_t sub_22BE490B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_22BE49128(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BE4913C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s30IntelligenceFlowPlannerSupport20GlobalToolIdentifierV6toolId09deviceIdsI0017representsBuiltInF0ACSS_SSSgSbtcfcfA1__0();
  }
}

uint64_t sub_22BE49158(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22BE49180()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE491EC()
{
  sub_22BE26B64((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE49224(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_22BE4924C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

uint64_t sub_22BE49274()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE492E0()
{

  sub_22BE1B2B0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22BE49394(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E5D4();
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE493DC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C26E5D4();

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE496BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C271914();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE49704(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C271914();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE49778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C270A04();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE49820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C270A04();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_22BE19DC4(v10, a2, a2, v9);
}

uint64_t sub_22BE4994C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Session.Event(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22BE1AEA8(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22BE499FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Session.Event(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE49AB0()
{
  v2 = sub_22BE1B2D4();
  v3 = type metadata accessor for ResponseGenerationInput(v2);

  return sub_22BE1AEA8(v1, v0, v3);
}

uint64_t sub_22BE49AF0()
{
  v0 = sub_22BE1B2D4();
  type metadata accessor for ResponseGenerationInput(v0);
  v1 = sub_22BE37694();

  return sub_22BE19DC4(v1, v2, v3, v4);
}

uint64_t sub_22BE49B28()
{
  sub_22BE1B2D4();
  v2 = sub_22C26F754();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE49B68()
{
  sub_22BE1B2D4();
  sub_22C26F754();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE49C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E1D4();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE49DF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BE90B1C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE49E1C()
{
  sub_22BE1B2D4();
  sub_22C272764();
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49E54()
{
  sub_22BE1B2D4();
  sub_22C272764();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49E8C()
{
  sub_22BE1B2D4();
  sub_22C272874();
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49EC4()
{
  sub_22BE1B2D4();
  sub_22C272874();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE49F14()
{
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v0 = sub_22BE2B794();

  return sub_22BE1AEA8(v0, v1, v2);
}

uint64_t sub_22BE49F60()
{
  sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4A418(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_22BE4A49C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BEA7E04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BE4A4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BEB0768(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE4A5A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BEACCC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BE4A82C()
{
  sub_22BE63574(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BE4A864()
{
  sub_22BEA7778(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4A8AC()
{
  sub_22BE63574(*(v0 + 16));
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A8E8()
{
  sub_22BE63574(*(v0 + 16));

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A924()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE63574(*(v0 + 32));
  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A960()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4A994()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22BE4A9D0()
{

  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22BE4AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE17BC4();
  if (*(*(sub_22C26E684() - 8) + 84) == a2)
  {
    v6 = sub_22BE44750();

    return sub_22BE1AEA8(v6, a2, v7);
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

uint64_t sub_22BE4AAAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C26E684();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE4B1FC(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C26E684();
    v4 = sub_22BE48A58();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void sub_22BE4B270()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_22C26E684();
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B2E4(unsigned __int8 *a1, int a2)
{
  if (a2 == 237)
  {
    v2 = *a1;
    if (v2 >= 0x13)
    {
      return v2 - 18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C26E684();
    v4 = sub_22BE48A58();

    return sub_22BE1AEA8(v4, v5, v6);
  }
}

void sub_22BE4B358()
{
  sub_22BE18378();
  if (v2 == 237)
  {
    *v1 = v0 + 18;
  }

  else
  {
    sub_22C26E684();
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B3C8()
{
  sub_22BE18378();
  sub_22C26E684();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B408()
{
  sub_22BE18378();
  sub_22C26E684();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B444()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C26E684();
  v4 = sub_22BE25438(*(v1 + 28));

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4B4B0()
{
  sub_22BE18378();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C26E684();
    v5 = sub_22BE25438(*(v4 + 28));

    sub_22BE19DC4(v5, v6, v0, v7);
  }
}

uint64_t sub_22BE4B534()
{
  sub_22BE18378();
  sub_22C26E684();
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B574()
{
  sub_22BE18378();
  sub_22C26E684();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B5B4()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE1A5D0(*v0);
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  v3 = sub_22BE48A58();

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4B628()
{
  sub_22BE18378();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
    v3 = sub_22BE48A58();

    sub_22BE19DC4(v3, v4, v0, v5);
  }
}

uint64_t sub_22BE4B6A8()
{
  sub_22BE1B9D8();
  if (v2)
  {
    return sub_22BE1A5D0(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v4 = sub_22BE25438(*(v1 + 24));

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4B720()
{
  sub_22BE18378();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v5 = sub_22BE25438(*(v4 + 24));

    sub_22BE19DC4(v5, v6, v0, v7);
  }
}

uint64_t sub_22BE4B7A4()
{
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v1 = sub_22BE291BC();

  return sub_22BE1AEA8(v1, v0, v2);
}

uint64_t sub_22BE4B7F0()
{
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4B838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE18378();
  sub_22C26E684();
  sub_22BE187D0();
  if (*(v6 + 84) == v3)
  {
    v7 = sub_22BE291BC();
  }

  else
  {
    v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v7 = v4 + *(a3 + 20);
  }

  return sub_22BE1AEA8(v7, v3, v8);
}

uint64_t sub_22BE4B8D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE18378();
  sub_22C26E684();
  sub_22BE187D0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    v10 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
    v11 = v5 + *(a4 + 20);
  }

  return sub_22BE19DC4(v11, v4, v4, v10);
}

uint64_t sub_22BE4BCDC()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22BE4BEF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BEFFA10(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE4BF24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22BEFF5B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22BE4BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22BE1A5D0(*(a1 + 8));
  }

  v7 = type metadata accessor for AST.FlatExpr(0);
  v8 = a1 + *(a3 + 20);

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE4C078(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AST.FlatExpr(0);
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4C0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BE17BC4();
  v7 = type metadata accessor for AST.FlatValue(v6);
  if (*(*(v7 - 8) + 84) != a2)
  {
    return sub_22BE1A5D0(*(v3 + *(a3 + 20)));
  }

  return sub_22BE1AEA8(v3, a2, v7);
}

uint64_t sub_22BE4C194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AST.FlatValue(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22BE19DC4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BE4C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22C274014() & 1;
  }
}

uint64_t sub_22BE4C644()
{
  sub_22BE63574(*(v0 + 16));

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C688()
{
  sub_22BE63574(*(v0 + 16));
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C6C4()
{
  sub_22BEA7778(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4C70C()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE63574(*(v0 + 32));
  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C748()
{
  sub_22BE63574(*(v0 + 16));

  sub_22BE2B7C4();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C784()
{
  sub_22BE63574(*(v0 + 24));
  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C7B8()
{
  sub_22BEA76F8(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22BE2699C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BE4C7F0()
{

  sub_22BE236BC();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22BE4C824()
{

  sub_22BE63574(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BE4C86C()
{
  sub_22BE63574(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_22BE4C8D0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_22BE4C8DC()
{
  sub_22BE26B64((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C26E164();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22C26E1D4();
    v8 = a1 + *(a3 + 28);
  }

  return sub_22BE1AEA8(v8, a2, v7);
}

uint64_t sub_22BE4C9F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C26E164();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22C26E1D4();
    v10 = a1 + *(a4 + 28);
  }

  return sub_22BE19DC4(v10, a2, a2, v9);
}

uint64_t sub_22BE4CAE8()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C271C14();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BE4CB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE4CBA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BE5CE4C(&qword_27D90B218, &unk_22C28C470);

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE4CCB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E524();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4CCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C26DF64();
    v9 = a1 + *(a3 + 20);

    return sub_22BE1AEA8(v9, a2, v8);
  }
}

uint64_t sub_22BE4CD6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C26DF64();
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4CE6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BE4CFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);
  v5 = sub_22BE1AEA8(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BE4D018(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22BE5CE4C(&unk_27D906F38, qword_22C274D30);

  return sub_22BE19DC4(a1, v5, a3, v6);
}

uint64_t sub_22BE4D0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE23C8C();
  sub_22C272984();
  sub_22BE187D0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    type metadata accessor for Toolbox.ContainerForTypeLookup(0);
    sub_22BE187D0();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_22C26E244();
      v12 = *(a3 + 24);
    }

    v9 = v3 + v12;
  }

  return sub_22BE1AEA8(v9, a2, v8);
}

uint64_t sub_22BE4D17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22BE23C8C();
  sub_22C272984();
  sub_22BE187D0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for Toolbox.ContainerForTypeLookup(0);
    sub_22BE187D0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = *(a4 + 20);
    }

    else
    {
      v10 = sub_22C26E244();
      v14 = *(a4 + 24);
    }

    v11 = v4 + v14;
  }

  return sub_22BE19DC4(v11, a2, a2, v10);
}

uint64_t sub_22BE4D258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C26E244();
    v9 = a1 + *(a3 + 20);

    return sub_22BE1AEA8(v9, a2, v8);
  }
}

uint64_t sub_22BE4D2E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C26E244();
    v8 = v5 + *(a4 + 20);

    return sub_22BE19DC4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BE4D360()
{
  sub_22BE18A10();
  result = sub_22C26E554();
  *v0 = result & 1;
  return result;
}

uint64_t sub_22BE4D38C()
{
  sub_22BE18A10();
  result = sub_22C26E564();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22BE4D3B4()
{
  sub_22BE18A10();
  result = sub_22C26E584();
  *v0 = result;
  return result;
}

uint64_t sub_22BE4D3DC()
{
  sub_22BE18A10();
  result = sub_22C26E574();
  *v0 = result;
  return result;
}

uint64_t sub_22BE4D42C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BE4D464()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4D538@<X0>(uint64_t *a1@<X8>)
{
  result = ToolBoxToolType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22C26FDF4();

  return sub_22BE1AEA8(a1 + v5, a2, v6);
}

uint64_t sub_22BE4D608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22C26FDF4();

  return sub_22BE19DC4(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BE4D6C0(uint64_t a1, uint64_t a2)
{
  sub_22BE23C8C();
  v4 = sub_22C272224();

  return sub_22BE1AEA8(v2, a2, v4);
}

uint64_t sub_22BE4D704()
{
  sub_22BE23C8C();
  sub_22C272224();
  v0 = sub_22BE37694();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4D790()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BE5CE4C(&qword_27D90B588, &qword_22C28DBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BE4D848@<X0>(_DWORD *a1@<X8>)
{
  result = ToolboxStatus.ReadOnly.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4D91C(char a1)
{
  if (a1)
  {
    return 0x75626972746E6F63;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22BE4D958(char a1)
{
  if (!a1)
  {
    return sub_22BE3C478();
  }

  if (a1 == 1)
  {
    return 0x6E61747369737361;
  }

  return 0x6341746E65696C63;
}

uint64_t sub_22BE4D9E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BF60094();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4DA18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BF61200();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4DA7C()
{

  sub_22BE2BA74();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_22BE4DAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4DADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C26E594();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE4DB08()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22BE4DB58()
{
  v1 = sub_22BE5CE4C(&qword_27D90B730, &qword_22C28ECF8);
  sub_22BE179D8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BE4DC1C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22BE4DC78()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22BE4DDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270B74();

  return sub_22BE1AEA8(a1, a2, v4);
}

uint64_t sub_22BE4DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C270B74();

  return sub_22BE19DC4(a1, a2, a2, v4);
}

uint64_t sub_22BE4DEF8()
{
  v1 = sub_22C272874();
  sub_22BE179D8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (v5 + *(v6 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_22BE4DFD4()
{
  sub_22BE19460();
  v1 = *(v0 + 32);
  v2 = sub_22C272874();
  sub_22BE179D8();
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = *(v1 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v8, v1);
  sub_22BE1AABC();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_22BE4E190(uint64_t result)
{
  if (*(result + 16))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E1C8(uint64_t result)
{
  if (*(result + 32))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E220(uint64_t result)
{
  if (*(result + 8))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E2BC(uint64_t result)
{
  if (*(result + 24))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E2F4(uint64_t result)
{
  if (*(result + 40))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E388(uint64_t result)
{
  if (*(result + 40))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E3C0(uint64_t result)
{
  if (*(result + 56))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E3F8(uint64_t result)
{
  if (*(result + 72))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E498(uint64_t result)
{
  if (*(result + 48))
  {
    sub_22BFB1A70();
    return sub_22C270844();
  }

  return result;
}

uint64_t sub_22BE4E6C0@<X0>(uint64_t *a1@<X8>)
{
  result = ContextProtoContextDataSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BE4E85C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0();
  if (*(v6 + 84) == v3)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0();
    if (*(v8 + 84) == v3)
    {
      sub_22BE1C1E8();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
      sub_22BE187D0();
      if (*(v9 + 84) == v3)
      {
        sub_22BE22B34();
      }

      else
      {
        sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
        sub_22BE187D0();
        if (*(v10 + 84) == v3)
        {
          v7 = a3[9];
        }

        else
        {
          if (v3 == 2147483646)
          {
            return sub_22BE17D90(*(v4 + a3[10] + 8));
          }

          sub_22C2704B4();
          v7 = a3[11];
        }
      }
    }
  }

  v12 = sub_22BE25438(v7);

  return sub_22BE1AEA8(v12, v13, v14);
}

void sub_22BE4E9FC()
{
  sub_22BE20388();
  sub_22BE18378();
  sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE187D0();
  if (*(v4 + 84) == v3)
  {
    sub_22BE26204();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0();
    if (*(v6 + 84) == v3)
    {
      sub_22BE38994();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90BF60, &unk_22C294AB0);
      sub_22BE187D0();
      if (*(v7 + 84) == v3)
      {
        sub_22BE272B4();
      }

      else
      {
        sub_22BE5CE4C(&qword_27D90BF50, &unk_22C2B5ED0);
        sub_22BE187D0();
        if (*(v8 + 84) == v3)
        {
          v5 = v2[9];
        }

        else
        {
          if (v3 == 2147483646)
          {
            *(v1 + v2[10] + 8) = v0;
            return;
          }

          sub_22C2704B4();
          v5 = v2[11];
        }
      }
    }
  }

  v9 = sub_22BE3B0A4(v5);

  sub_22BE19DC4(v9, v10, v11, v12);
}

uint64_t sub_22BE4EB9C()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
  sub_22BE187D0();
  if (*(v5 + 84) == v0)
  {
    sub_22BE22B34();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
    sub_22BE187D0();
    if (*(v7 + 84) == v0)
    {
      sub_22BE28648();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
      sub_22BE187D0();
      if (*(v8 + 84) == v0)
      {
        v6 = v2[15];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
        sub_22BE187D0();
        if (*(v9 + 84) == v0)
        {
          v6 = v2[17];
        }

        else
        {
          sub_22C2704B4();
          v6 = v2[21];
        }
      }
    }
  }

  v10 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v10, v11, v12);
}

void sub_22BE4ED30()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    sub_22BE5CE4C(&qword_27D90BF70, &qword_22C290DC0);
    sub_22BE187D0();
    if (*(v3 + 84) == v1)
    {
      sub_22BE272B4();
    }

    else
    {
      sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
      sub_22BE187D0();
      if (*(v5 + 84) == v1)
      {
        sub_22BE36CC4();
      }

      else
      {
        sub_22BE5CE4C(&qword_27D90BFA0, &qword_22C2CB790);
        sub_22BE187D0();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[15];
        }

        else
        {
          sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
          sub_22BE187D0();
          if (*(v7 + 84) == v1)
          {
            v4 = v0[17];
          }

          else
          {
            sub_22C2704B4();
            v4 = v0[21];
          }
        }
      }
    }

    v8 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v8, v9, v10, v11);
  }
}

uint64_t sub_22BE4EEC0()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 8));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE1C1E8();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}

void sub_22BE4EF28()
{
  sub_22BE22984();
  if (v0)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v2 = sub_22BE3B0A4(v1);

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4EF84()
{
  sub_22BE18378();
  v3 = *(v2 + 32);
  v4 = sub_22C2704B4();

  return sub_22BE1AEA8(v1 + v3, v0, v4);
}

uint64_t sub_22BE4EFD4()
{
  sub_22BE18378();
  sub_22C2704B4();
  sub_22BE38A34();

  return sub_22BE19DC4(v0, v1, v2, v3);
}

uint64_t sub_22BE4F024()
{
  sub_22BE36798();
  if (v2)
  {
    return sub_22BE17D90(*(v1 + 8));
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE187D0();
  if (*(v4 + 84) == v0)
  {
    sub_22BE23B20();
  }

  else
  {
    sub_22C2704B4();
    sub_22BE1C1E8();
  }

  v6 = sub_22BE25438(v5);

  return sub_22BE1AEA8(v6, v7, v8);
}

void sub_22BE4F0D4()
{
  sub_22BE22984();
  if (v1)
  {
    sub_22BFBFCE0();
  }

  else
  {
    sub_22BE20388();
    sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
    sub_22BE187D0();
    if (*(v2 + 84) == v0)
    {
      sub_22BE26204();
    }

    else
    {
      sub_22C2704B4();
      sub_22BE38994();
    }

    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE4F180(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *(a1 + 4);
    if (v2 >= 3)
    {
      return v2 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BE27A38();
    sub_22C2704B4();
    sub_22BE1C1E8();
    v5 = sub_22BE25438(v4);

    return sub_22BE1AEA8(v5, v6, v7);
  }
}

void sub_22BE4F1F4()
{
  sub_22BE18378();
  if (v2 == 253)
  {
    *(v1 + 4) = v0 + 2;
  }

  else
  {
    sub_22BE294C8();
    sub_22BE38994();
    v4 = sub_22BE3B0A4(v3);

    sub_22BE19DC4(v4, v5, v6, v7);
  }
}

uint64_t sub_22BE4F280()
{
  sub_22BE1B9D8();
  if (v1)
  {
    return sub_22BE18A6C();
  }

  sub_22BE27A38();
  sub_22C2704B4();
  v3 = sub_22BE25438(*(v0 + 68));

  return sub_22BE1AEA8(v3, v4, v5);
}

void sub_22BE4F2E8()
{
  sub_22BE18660();
  if (v1)
  {
    sub_22BE35FD8();
  }

  else
  {
    sub_22BE294C8();
    v2 = sub_22BE3B0A4(*(v0 + 68));

    sub_22BE19DC4(v2, v3, v4, v5);
  }
}

uint64_t sub_22BE4F348()
{
  sub_22BE1B9D8();
  if (v3)
  {
    return sub_22BE1A5D0(*v1);
  }

  sub_22BE27A38();
  sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
  sub_22BE187D0();
  if (*(v5 + 84) == v0)
  {
    v6 = v2[15];
  }

  else
  {
    sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
    sub_22BE187D0();
    if (*(v7 + 84) == v0)
    {
      v6 = v2[19];
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
      sub_22BE187D0();
      if (*(v8 + 84) == v0)
      {
        v6 = v2[24];
      }

      else
      {
        sub_22C2704B4();
        v6 = v2[27];
      }
    }
  }

  v9 = sub_22BE25438(v6);

  return sub_22BE1AEA8(v9, v10, v11);
}

void sub_22BE4F498()
{
  sub_22BE18660();
  if (v2)
  {
    sub_22BE375D8();
  }

  else
  {
    sub_22BE20388();
    sub_22BE5CE4C(&qword_27D90C020, &qword_22C290DF8);
    sub_22BE187D0();
    if (*(v3 + 84) == v1)
    {
      v4 = v0[15];
    }

    else
    {
      sub_22BE5CE4C(&qword_27D90C010, &dword_22C294AF0);
      sub_22BE187D0();
      if (*(v5 + 84) == v1)
      {
        v4 = v0[19];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D90C000, &qword_22C2CB7C0);
        sub_22BE187D0();
        if (*(v6 + 84) == v1)
        {
          v4 = v0[24];
        }

        else
        {
          sub_22C2704B4();
          v4 = v0[27];
        }
      }
    }

    v7 = sub_22BE3B0A4(v4);

    sub_22BE19DC4(v7, v8, v9, v10);
  }
}

uint64_t sub_22BE4F5E4()
{
  sub_22BE36798();
  if (v1)
  {
    return sub_22BE17D90(*(v0 + 16));
  }

  sub_22BE27A38();
  sub_22C2704B4();
  sub_22BE28648();
  v4 = sub_22BE25438(v3);

  return sub_22BE1AEA8(v4, v5, v6);
}