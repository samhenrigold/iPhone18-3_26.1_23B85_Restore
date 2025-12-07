_BYTE *storeEnumTagSinglePayload for GenericButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x11D0BCLL);
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

unint64_t sub_11D104()
{
  result = qword_1CA9B8;
  if (!qword_1CA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9B8);
  }

  return result;
}

unint64_t sub_11D15C()
{
  result = qword_1CA9C0;
  if (!qword_1CA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9C0);
  }

  return result;
}

unint64_t sub_11D1B4()
{
  result = qword_1CA9C8;
  if (!qword_1CA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9C8);
  }

  return result;
}

uint64_t sub_11D230(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_11D270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_11D300(uint64_t a1, uint64_t a2)
{
  sub_92460();

  return sub_16C33C();
}

uint64_t sub_11D354()
{
  sub_8A88();
  v1[180] = v0;
  v1[179] = v2;
  v3 = sub_2440(&qword_1CA9D0, &unk_177268);
  v1[181] = v3;
  sub_4348(v3);
  v1[182] = sub_8C38();
  v1[183] = swift_task_alloc();
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  v1[184] = sub_8BC0();
  v5 = sub_16BF5C();
  v1[185] = v5;
  sub_888C(v5);
  v1[186] = v6;
  v1[187] = sub_8BC0();
  v7 = type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters(0);
  v1[188] = v7;
  sub_4348(v7);
  v1[189] = sub_8C38();
  v1[190] = swift_task_alloc();
  v8 = sub_16D7AC();
  v1[191] = v8;
  sub_4348(v8);
  v1[192] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[193] = v9;
  sub_888C(v9);
  v1[194] = v10;
  v1[195] = sub_8C38();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v1[201] = swift_task_alloc();
  v1[202] = swift_task_alloc();
  v1[203] = swift_task_alloc();
  v11 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v11);
  v1[204] = sub_8BC0();
  v12 = sub_16BE9C();
  v1[205] = v12;
  sub_888C(v12);
  v1[206] = v13;
  v1[207] = sub_8C38();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v14 = sub_16C46C();
  v1[210] = v14;
  sub_888C(v14);
  v1[211] = v15;
  v1[212] = sub_8C38();
  v1[213] = swift_task_alloc();
  v16 = sub_16C7BC();
  v1[214] = v16;
  sub_888C(v16);
  v1[215] = v17;
  v1[216] = sub_8C38();
  v1[217] = swift_task_alloc();
  v18 = sub_17960();

  return _swift_task_switch(v18);
}

uint64_t sub_11D6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v27 = *(v26 + 1440);
  v28 = *v27;
  sub_2D20(v27 + 1, v27[4]);
  v29 = sub_C9F8();
  v30(v29);
  isSpecificMedRequest(from:deviceState:)(v28, v26 + 976);
  v32 = v31;
  *(v26 + 1896) = v31 & 1;
  sub_2D64((v26 + 976));
  v33 = getLocalizedMedName(from:)();
  v35 = v34;
  *(v26 + 1744) = v34;
  swift_bridgeObjectRetain_n();
  v36 = getUSOMedNames(from:)();
  if (v36)
  {
    if (v36[2])
    {
      v38 = v36[4];
      v37 = v36[5];

      goto LABEL_6;
    }
  }

  v38 = 0;
  v37 = 0;
LABEL_6:
  v39 = v32 ^ 1;
  *(v26 + 1760) = v37;
  *(v26 + 1752) = v38;
  sub_120760();
  v40 = sub_12063C();
  v41(v40);
  sub_2D20((v26 + 1016), *(v26 + 1040));
  sub_12063C();
  if (sub_16C40C())
  {

    sub_2D64((v26 + 1016));
LABEL_9:
    sub_8388(*(v26 + 1440) + 128, v26 + 1136);
    sub_2D20((v26 + 1136), *(v26 + 1160));
    if (v35)
    {
    }

    v45 = swift_task_alloc();
    *(v26 + 1768) = v45;
    *v45 = v26;
    v45[1] = sub_11DE78;
    sub_120720();

    return v51(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, sub_10B938, a24, a25, a26);
  }

  sub_120760();
  v42 = sub_12063C();
  v43(v42);
  sub_2D20((v26 + 1056), *(v26 + 1080));
  sub_12063C();
  v44 = sub_16C3FC();
  sub_2D64((v26 + 1056));
  sub_2D64((v26 + 1016));

  if (v44)
  {
    goto LABEL_9;
  }

  sub_120760();
  v55 = sub_12063C();
  v56(v55);
  v57 = *(v26 + 1120);
  sub_2D20((v26 + 1096), v57);
  sub_12063C();
  v58 = sub_16C41C();
  sub_2D64((v26 + 1096));
  if (v58)
  {
    v116 = v33;
    v59 = *(v26 + 1704);
    v60 = *(v26 + 1696);
    v61 = *(v26 + 1688);
    v62 = *(v26 + 1680);
    v117 = *(v26 + 1440);
    sub_16C45C();
    (*(v61 + 16))(v60, v59, v62);
    sub_C9A0();
    sub_16C75C();
    (*(v61 + 8))(v59, v62);
    if (*(v117 + 248))
    {
      v63 = *(v26 + 1496);
      sub_16BF4C();
      if (isLoggingTimeframeToday(from:todayDate:)(v28, v63))
      {
        v64 = 1;
      }

      else
      {
        v64 = isLoggingTimeframeNone(from:)();
      }

      LODWORD(a21) = v35 != 0;
      LODWORD(a20) = v64 & 1;
      *(v26 + 1897) = v64 & 1;
      v95 = *(v26 + 1512);
      a19 = *(v26 + 1504);
      v96 = *(v26 + 1440);
      (*(*(v26 + 1488) + 8))(*(v26 + 1496), *(v26 + 1480));
      v97 = isQueryAboutStatusOrSchedule(from:)() & 1;
      *(v26 + 1898) = v97;
      v98 = isQueryAboutDetails(from:)();
      *(v26 + 1899) = v98;
      v99 = v37 != 0;
      v118 = *sub_2D20((v96 + 128), *(v96 + 152));
      v100 = *(a19 + 40);
      v101 = sub_16D5CC();

      v102 = 1;
      sub_8AB4();
      sub_214C(v103, v104, v105, v101);
      *v95 = v39 & 1;
      v95[1] = v98;
      v95[2] = v97;
      v95[3] = a21;
      v95[4] = v99;
      v95[5] = a20;
      if (v35)
      {
        sub_16E23C();
        v102 = 0;
      }

      v106 = *(v26 + 1472);
      sub_214C(v106, v102, 1, v101);
      sub_8640(v106, &v95[v100]);
      *(v26 + 1832) = sub_108C08();
      v116 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v107 = swift_task_alloc();
      *(v26 + 1840) = v107;
      *v107 = v26;
      v107[1] = sub_11EEC0;
      sub_120860();
    }

    else
    {
      v83 = *(v26 + 1520);
      v84 = *(v26 + 1504);
      v85 = *(v26 + 1440);
      swift_bridgeObjectRelease_n();

      sub_2D20((v85 + 128), *(v85 + 152));
      v86 = *(v84 + 40);
      v87 = sub_16D5CC();
      sub_8AB4();
      sub_214C(v88, v89, v90, v87);
      *(v83 + 4) = 0;
      *v83 = 0;
      sub_1B918(v83 + v86, &qword_1C5800, &unk_16F510);
      sub_8AB4();
      sub_214C(v91, v92, v93, v87);
      *(v26 + 1800) = sub_108C08();
      v118 = &async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v94 = swift_task_alloc();
      *(v26 + 1808) = v94;
      *v94 = v26;
      v94[1] = sub_11E97C;
      sub_120860();
    }

    sub_120720();

    return v111(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v116, v118, a24, a25, a26);
  }

  else
  {
    v65 = *(v26 + 1560);
    v66 = *(v26 + 1552);
    v67 = *(v26 + 1544);
    swift_bridgeObjectRelease_n();

    v68 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v66 + 16))(v65, v68, v67);
    sub_16DBDC();
    v69 = sub_16E36C();
    if (sub_1BA1C(v69))
    {
      v70 = sub_1BA38();
      sub_1BA50(v70);
      sub_1B9D0(&def_259DC, v71, v72, "Incorrect device state, this shouldn't get executed.");
      sub_1BA00();
    }

    sub_1208F0();
    v73 = sub_C9F8();
    v74(v73);
    sub_8284(v57 + 48, v26 + 176);
    sub_82E0();
    sub_16C32C();
    sub_8334(v26 + 176);
    sub_16C4FC();

    sub_1204E0();
    sub_120514();

    sub_C9BC();
    sub_120720();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_11DE78()
{
  sub_C9D4();
  v3 = v2;
  sub_8A60();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1776) = v5;

  if (v0)
  {

    v6 = sub_11E798;
  }

  else
  {

    v6 = sub_11DFB4;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_11DFB4()
{
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1744);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1704);
  v5 = *(v0 + 1696);
  v6 = *(v0 + 1688);
  v7 = *(v0 + 1680);
  v8 = *(v0 + 1440);
  sub_2D64((v0 + 1136));
  sub_16C45C();
  (*(v6 + 16))(v5, v4, v7);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v4, v7);
  v9 = [v1 patternId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  sub_2D20((v8 + 48), *(v8 + 72));
  *(v0 + 1784) = sub_16C2FC();
  v10 = swift_task_alloc();
  *(v0 + 1792) = v10;
  *v10 = v0;
  v10[1] = sub_11E164;
  v11 = *(v0 + 1760);
  v12 = *(v0 + 1752);
  v13 = *(v0 + 1632);

  return sub_11FFD0(v13, (v3 & 1) == 0, v12, v11, v2 != 0);
}

uint64_t sub_11E164()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_11E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  a43 = v45;
  a44 = v46;
  a42 = v44;
  v47 = v44[205];
  v48 = v44[204];
  if (sub_369C(v48, 1, v47) == 1)
  {
    sub_1B918(v48, &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v49 = sub_1206F8();
    v50(v49);
    v51 = sub_16DBDC();
    v52 = sub_16E36C();
    if (sub_1BA1C(v52))
    {
      v53 = sub_1BA38();
      sub_1BA50(v53);
      sub_1B9D0(&def_259DC, v54, v55, "Phone medication querying error's punchout URL construction failed, starting GenericErrorFlow.");
      sub_1BA00();
    }

    v56 = v44[222];
    v57 = v44[215];
    v99 = v44[214];
    v100 = v44[217];
    v58 = v44[180];

    v59 = sub_4B4EC();
    v60(v59);
    sub_8284(v58 + 48, (v44 + 2));
    sub_82E0();
    sub_16C32C();
    sub_8334((v44 + 2));
    sub_16C4FC();

    (*(v57 + 8))(v100, v99);
  }

  else
  {
    v61 = v44[202];
    v62 = v44[194];
    v63 = v44[193];
    (*(v44[206] + 32))(v44[209], v48, v47);
    v64 = sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    (*(v62 + 16))(v61, v64, v63);
    v65 = sub_16DBDC();
    v66 = sub_16E36C();
    if (sub_1BA1C(v66))
    {
      v67 = sub_1BA38();
      sub_1BA50(v67);
      sub_1B9D0(&def_259DC, v68, v69, "Creating sequence flow.");
      sub_1BA00();
    }

    v70 = v44[223];
    a19 = v44[215];
    a20 = v44[222];
    v99 = v44[214];
    v100 = v44[217];
    v71 = v44[208];
    v72 = v44[206];
    a15 = v44[205];
    a16 = v44[209];
    v73 = v44[202];
    v74 = v44[194];
    v75 = v44[193];
    v76 = v44[192];
    v77 = v44[180];
    a17 = v44[191];
    a18 = v44[179];

    (*(v74 + 8))(v73, v75);
    v78 = v77[4];
    v79 = v77[5];
    sub_2D20(v77 + 1, v78);
    (*(v79 + 16))(&a23, v78, v79);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_172320;
    v44[177] = v70;
    sub_16C28C();
    *(v80 + 32) = sub_16C32C();
    v82 = v77[4];
    v81 = v77[5];
    sub_2D20(v77 + 1, v82);
    sub_12070C();
    v83(v82, v81);
    (*(v72 + 16))(v71, a16, a15);
    sub_385D8();
    sub_16D79C();
    sub_120624();
    sub_120498(v84, v85, &protocol conformance descriptor for AppPunchOutFlow);
    sub_16C32C();
    sub_1205F0();
    sub_120444(v76, v86);
    *(v80 + 40) = v76;
    v87 = sub_16D6DC();
    sub_12081C(v87);
    v44[178] = sub_16D6CC();
    sub_12060C();
    sub_120498(v88, v89, &protocol conformance descriptor for SequenceFlow);
    sub_16C4EC();

    (*(v72 + 8))(a16, a15);
    (*(a19 + 8))(v100, v99);
  }

  sub_1204E0();
  sub_120594();

  sub_C9BC();
  sub_1207DC();

  return v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v99, v100, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  sub_2D64((v26 + 1136));
  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v28 = sub_3BD68();
  v29(v28);
  sub_16DBDC();
  v30 = sub_16E36C();
  if (sub_1BA1C(v30))
  {
    v31 = sub_1BA38();
    sub_1BA50(v31);
    sub_1B9D0(&def_259DC, v32, v33, "Phone medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  sub_1208F0();
  v34 = sub_C9F8();
  v35(v34);
  sub_8284(v27 + 48, v26 + 336);
  sub_82E0();
  sub_16C32C();
  sub_8334(v26 + 336);
  sub_16C4FC();

  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11E97C(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  sub_8A60();
  *v6 = v5;
  v7 = *v2;
  sub_C990();
  *v8 = v7;
  *(v5 + 1816) = v1;

  if (v1)
  {
    v9 = sub_11ECAC;
  }

  else
  {
    *(v5 + 1824) = a1;
    v9 = sub_11EAB8;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_11EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v27 = v26[228];
  v28 = v26[180];
  sub_120570(v26[190]);
  v29 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_2D20((v28 + 48), *(v28 + 72));
  v26[176] = sub_16C2FC();
  sub_16C28C();
  sub_16C32C();

  sub_16C4FC();

  v30 = sub_C9F8();
  v31(v30);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11ECAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  sub_120570(*(v26 + 1520));

  sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  v28 = sub_1206F8();
  v29(v28);
  sub_16DBDC();
  v30 = sub_16E36C();
  if (sub_1BA1C(v30))
  {
    v31 = sub_1BA38();
    sub_1BA50(v31);
    sub_1B9D0(&def_259DC, v32, v33, "Watch medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  sub_1208D0();
  v34 = sub_387CC();
  v35(v34);
  sub_8284(v27 + 48, v26 + 496);
  sub_82E0();
  sub_16C32C();
  sub_8334(v26 + 496);
  sub_16C4FC();

  v36 = sub_C9F8();
  v37(v36);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11EEC0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 1848) = v6;
  *(v7 + 1856) = v0;

  if (v0)
  {
    v8 = sub_11F790;
  }

  else
  {
    v8 = sub_11EFE4;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_11EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  v47 = *(v44 + 1848);
  v48 = *(v44 + 1896);
  v49 = *(v44 + 1440);
  sub_120570(*(v44 + 1512));
  swift_bridgeObjectRelease_n();
  v50 = [v47 patternId];
  sub_16E1BC();

  sub_387CC();
  sub_16C76C();
  v51 = *(v49 + 72);
  v52 = *(v49 + 80);
  sub_2D20((v49 + 48), v51);
  sub_C9F8();
  *(v44 + 1864) = sub_16C2FC();
  if (v48 != 1)
  {
    v53 = *(v44 + 1898);
    v47 = *(v44 + 1897);

    if (v47 == 1 && v53)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if ((*(v44 + 1897) & 1) == 0)
  {
    if (*(v44 + 1744))
    {
LABEL_12:
    }

LABEL_13:
    v54 = *(v44 + 1640);
    v47 = *(v44 + 1464);

    sub_8AB4();
    sub_214C(v56, v57, v58, v54);
    v55 = 0;
    goto LABEL_14;
  }

  if ((*(v44 + 1898) & 1) == 0 && !*(v44 + 1899))
  {
    if (!*(v44 + 1744))
    {
LABEL_9:
      v54 = *(v44 + 1760);
      sub_1208B0();

LABEL_10:
      v55 = 1;
LABEL_14:
      v59 = sub_120804();
      *(v59 + v60) = v55;
      sub_1203D4(v59, v47);
      if (sub_369C(v47, 1, v54) == 1)
      {
        sub_1B918(*(v44 + 1456), &qword_1C57F8, &unk_172510);
        sub_16DBBC();
        v61 = *(v44 + 1544);
        if (v55)
        {
          sub_385D8();
          swift_beginAccess();
          v62 = sub_120838();
          v63(v62);
          sub_16DBDC();
          v64 = sub_16E36C();
          if (sub_1BA1C(v64))
          {
            v65 = sub_1BA38();
            sub_1BA50(v65);
            sub_1B9D0(&def_259DC, v66, v67, "Punchout was expected but URL construction failed, returning GenericErrorFlow.");
            sub_1BA00();
          }

          sub_1206B4();
          v68 = sub_4B4EC();
          v69(v68);
          sub_8284(v49 + 48, v44 + 656);
          sub_82E0();
          sub_16C32C();
          sub_8334(v44 + 656);
          sub_16C4FC();

          sub_1B918(a20, &qword_1CA9D0, &unk_177268);
          (*(v46 + 8))(a22, a21);
        }

        else
        {
          sub_385D8();
          swift_beginAccess();
          v93 = sub_120838();
          v94(v93);
          v95 = sub_16DBDC();
          v96 = sub_16E36C();
          if (sub_1BA1C(v96))
          {
            v97 = sub_1BA38();
            sub_1BA50(v97);
            sub_1B9D0(&def_259DC, v98, v99, "Punchout not required, producing response flow.");
            sub_1BA00();
          }

          v100 = *(v44 + 1848);
          v101 = *(v44 + 1720);
          a21 = *(v44 + 1712);
          a22 = *(v44 + 1728);
          v102 = *(v44 + 1464);

          v103 = sub_4B4EC();
          v104(v103);
          sub_16C4FC();

          sub_1B918(v102, &qword_1CA9D0, &unk_177268);
          (*(v101 + 8))(a22, a21);
        }
      }

      else
      {
        v70 = sub_12073C();
        v71(v70);
        sub_16DBBC();
        sub_385D8();
        swift_beginAccess();
        v72 = sub_3BD68();
        v73(v72);
        sub_16DBDC();
        v74 = sub_16E36C();
        if (sub_1BA1C(v74))
        {
          v75 = sub_1BA38();
          sub_1BA50(v75);
          sub_1B9D0(&def_259DC, v76, v77, "Punchout is required, creating sequence flow.");
          sub_1BA00();
        }

        sub_12064C();
        (*(v51 + 8))(v48, v45);
        sub_2D20((v47 + 8), *(v47 + 32));
        v78 = sub_1207C0();
        v79(v78);
        sub_2440(&qword_1C5ED8, &unk_173090);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_172320;
        *(v44 + 1392) = v52;
        sub_16C28C();
        *(v80 + 32) = sub_16C32C();
        v82 = *(v47 + 32);
        v81 = *(v47 + 40);
        sub_2D20((v47 + 8), v82);
        sub_12070C();
        v83(v82, v81);
        v84 = sub_1207A4();
        v85(v84);
        sub_385D8();
        sub_16D79C();
        sub_120624();
        sub_120498(v86, v87, &protocol conformance descriptor for AppPunchOutFlow);
        sub_16C32C();
        sub_1205F0();
        sub_120444(v46, v88);
        *(v80 + 40) = v46;
        v89 = sub_16D6DC();
        sub_12081C(v89);
        *(v44 + 1400) = sub_16D6CC();
        sub_12060C();
        v92 = sub_120498(v90, v91, &protocol conformance descriptor for SequenceFlow);
        sub_120890(v92);

        (*(v49 + 8))(v81, v82);
        sub_1B918(a19, &qword_1CA9D0, &unk_177268);
        (*(a18 + 8))(a22, a21);
      }

      sub_1204E0();
      sub_120594();

      sub_C9BC();
      sub_1207DC();

      return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
    }

    goto LABEL_12;
  }

  v54 = *(v44 + 1760);

  if (!v54)
  {
    sub_1208B0();
    goto LABEL_10;
  }

  v124 = sub_120910(*(v44 + 1440));
  v125 = v114 + *v114;
  v115 = swift_task_alloc();
  *(v44 + 1872) = v115;
  *v115 = v44;
  v115[1] = sub_11F9D4;
  sub_12084C(*(v44 + 1752));
  sub_1207DC();

  return v120(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v124, v125, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_120788();
  sub_1207F8();
  v28 = v26[199];
  v29 = v26[194];
  v30 = v26[193];
  sub_120570(v26[189]);

  swift_bridgeObjectRelease_n();

  v31 = sub_16DBBC();
  sub_385D8();
  swift_beginAccess();
  (*(v29 + 16))(v28, v31, v30);
  sub_16DBDC();
  v32 = sub_16E36C();
  if (sub_1BA1C(v32))
  {
    v33 = sub_1BA38();
    sub_1BA50(v33);
    sub_1B9D0(&def_259DC, v34, v35, "Watch medication querying error pattern failed, starting GenericErrorFlow.");
    sub_1BA00();
  }

  sub_1208D0();
  v36 = sub_387CC();
  v37(v36);
  sub_8284(v27 + 48, (v26 + 102));
  sub_82E0();
  sub_16C32C();
  sub_8334((v26 + 102));
  sub_16C4FC();

  v38 = sub_C9F8();
  v39(v38);
  sub_1204E0();
  sub_120514();

  sub_C9BC();
  sub_120720();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_11F9D4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1880) = v3;
  *(v1 + 1888) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_11FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  v49 = v44[236];
  v50 = v44[235];
  v51 = v44[220];
  v52 = v44[183];
  sub_16E47C(70);
  v96._object = 0x800000000017EB10;
  v96._countAndFlagsBits = 0xD000000000000044;
  sub_16E26C(v96);
  v97._countAndFlagsBits = v50;
  v97._object = v49;
  sub_16E26C(v97);
  sub_16BE8C();

  v53 = sub_120804();
  *(v53 + v54) = 1;
  sub_1203D4(v53, v49);
  if (sub_369C(v49, 1, 0xE000000000000000) == 1)
  {
    sub_1B918(v44[182], &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    v55 = v44[196];
    sub_385D8();
    swift_beginAccess();
    v56 = sub_1206F8();
    v57(v56);
    sub_16DBDC();
    v58 = sub_16E36C();
    if (sub_1BA1C(v58))
    {
      v59 = sub_1BA38();
      sub_1BA50(v59);
      sub_1B9D0(&def_259DC, v60, v61, "Punchout was expected but URL construction failed, returning GenericErrorFlow.");
      sub_1BA00();
    }

    sub_1206B4();
    v62 = sub_4B4EC();
    v63(v62);
    sub_8284(v46 + 48, (v44 + 82));
    sub_82E0();
    sub_16C32C();
    sub_8334((v44 + 82));
    sub_16C4FC();

    sub_1B918(a20, &qword_1CA9D0, &unk_177268);
    (*(v48 + 8))(a22, a21);
  }

  else
  {
    v64 = sub_12073C();
    v65(v64);
    sub_16DBBC();
    sub_385D8();
    swift_beginAccess();
    v66 = sub_3BD68();
    v67(v66);
    sub_16DBDC();
    v68 = sub_16E36C();
    if (sub_1BA1C(v68))
    {
      v69 = sub_1BA38();
      sub_1BA50(v69);
      sub_1B9D0(&def_259DC, v70, v71, "Punchout is required, creating sequence flow.");
      sub_1BA00();
    }

    sub_12064C();
    (*(v51 + 8))(v45, v47);
    sub_2D20(v49 + 1, v49[4]);
    v72 = sub_1207C0();
    v73(v72);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_172320;
    v44[174] = v52;
    sub_16C28C();
    *(v74 + 32) = sub_16C32C();
    v76 = v49[4];
    v75 = v49[5];
    sub_2D20(v49 + 1, v76);
    sub_12070C();
    v77(v76, v75);
    v78 = sub_1207A4();
    v79(v78);
    sub_385D8();
    sub_16D79C();
    sub_120624();
    sub_120498(v80, v81, &protocol conformance descriptor for AppPunchOutFlow);
    sub_16C32C();
    sub_1205F0();
    sub_120444(v48, v82);
    *(v74 + 40) = v48;
    v83 = sub_16D6DC();
    sub_12081C(v83);
    v44[175] = sub_16D6CC();
    sub_12060C();
    v86 = sub_120498(v84, v85, &protocol conformance descriptor for SequenceFlow);
    sub_120890(v86);

    (*(v46 + 8))(v75, v76);
    sub_1B918(a19, &qword_1CA9D0, &unk_177268);
    (*(a18 + 8))(a22, a21);
  }

  sub_1204E0();
  sub_120594();

  sub_C9BC();
  sub_1207DC();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, 0, 0xE000000000000000, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_11FFD0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 32) = a4;
  *(v6 + 40) = v5;
  *(v6 + 72) = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  return _swift_task_switch(sub_11FFFC);
}

uint64_t sub_11FFFC(uint64_t a1)
{
  if ((*(v1 + 72) & 1) == 0 && *(v1 + 73) == 1 && *(v1 + 32))
  {
    sub_120910(*(v1 + 40));
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v1 + 48) = v3;
    *v3 = v1;
    v3[1] = sub_120174;
    v4 = sub_12084C(*(v1 + 24));

    return v7(v4);
  }

  else
  {
    sub_16BE8C();
    sub_C9BC();

    return v6();
  }
}

uint64_t sub_120174()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_120260()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_16E47C(112);
  v6._object = 0x800000000017FC20;
  v6._countAndFlagsBits = 0xD00000000000006ELL;
  sub_16E26C(v6);
  v7._countAndFlagsBits = v2;
  v7._object = v1;
  sub_16E26C(v7);
  sub_16BE8C();

  sub_C9BC();

  return v3();
}

uint64_t sub_12033C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_11D354();
}

uint64_t sub_1203D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CA9D0, &unk_177268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_120444(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1BA5C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_120498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_120514()
{
  v3 = *(v0 + 1456);
  *(v1 - 88) = *(v0 + 1464);
  *(v1 - 80) = v3;
}

uint64_t sub_120570(uint64_t a1)
{

  return sub_120444(a1, type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters);
}

uint64_t sub_120594()
{
}

void sub_12064C()
{
}

void sub_1206B4()
{
}

uint64_t sub_12081C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_120890(uint64_t a1)
{

  return sub_16C4EC();
}

uint64_t sub_1208B0()
{

  return sub_16BE8C();
}

void sub_1208D0()
{
}

void sub_1208F0()
{
}

uint64_t sub_120910@<X0>(void *a1@<X8>)
{
  v1 = a1[30];
  sub_2D20(a1 + 26, a1[29]);
  return v1 + 8;
}

void sub_12093C(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_887C();
  sub_12238C();
  v9 = __chkstk_darwin(v8);
  v17 = sub_122304(v9, v10, v11, v12, v13, v14, v15, v16, v89);
  sub_42F0();
  __chkstk_darwin(v18);
  sub_887C();
  __chkstk_darwin(v19);
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  v21 = sub_4348(v20);
  __chkstk_darwin(v21);
  sub_1223A0();
  v22 = sub_16BD9C();
  sub_42F0();
  __chkstk_darwin(v23);
  sub_887C();
  __chkstk_darwin(v24);
  v25 = sub_1223F0();
  if (v25)
  {
    v96 = v25;
    if (sub_C1BA4(a1, &off_1B8108))
    {
      sub_1223DC();
LABEL_9:
      sub_16BE8C();
      sub_45924();

      return;
    }

    if (sub_C1BA4(a1, &off_1B8130))
    {
      sub_1222EC();
      goto LABEL_9;
    }

    v91 = a3;
    v92 = v17;
    v29 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 externalSourceAssistantService];
    v33 = sub_16E1BC();
    v35 = v34;

    sub_1220E0(v33, v35, v31);
    sub_1955C(a2, v3, &qword_1C5690, &dword_16F320);
    if (sub_369C(v3, 1, v22) == 1)
    {
      sub_C878(v3, &qword_1C5690, &dword_16F320);
      v36 = sub_16DBBC();
      sub_3E174(v36);
      sub_122234();
      sub_122224();
      v37();
      v38 = v96;
      v39 = sub_16DBDC();
      v40 = sub_16E36C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        sub_122430(5.7779e-34);
        sub_122410(&def_259DC, v43, v44, "Building a deeplink for %@ and no interval");
        sub_C878(v42, &qword_1C57B8, &qword_1715A0);
        sub_8A2C(v42);
        v45 = v41;
        v32 = v92;
        sub_8A2C(v45);
      }

      v46 = sub_38B40();
      v47(v46);
      v48 = sub_122360();
      v50 = [v48 v49];
      if (v50)
      {
        v51 = v50;
        v52 = v93;
        sub_16BE7C();

        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v93;
      }

      v85 = sub_16BE9C();
      sub_214C(v52, v53, 1, v85);
      v86 = v52;
    }

    else
    {
      v54 = sub_122264();
      v55(v54);
      v56 = sub_16DBBC();
      sub_3E174(v56);
      sub_122234();
      sub_122224();
      v57();
      v58 = sub_1222D4();
      v59(v58);
      v60 = v96;
      v61 = sub_16DBDC();
      v62 = sub_16E36C();

      if (os_log_type_enabled(v61, v62))
      {
        swift_slowAlloc();
        v63 = sub_122490();
        v97 = sub_122470(v63);
        sub_122244(5.778e-34);
        sub_1221B4(&qword_1C97E8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
        v64 = a2;
        sub_122450();
        v32 = v65;
        v66 = sub_1221FC();
        (v31)(v66);
        v67 = sub_38B40();
        v70 = sub_3AB7C(v67, v68, v69);

        *(v60 + 14) = v70;
        sub_122328(&def_259DC, v71, v72, "Building a deeplink for %@ and interval: %s");
        sub_C878(v90, &qword_1C57B8, &qword_1715A0);
        sub_12229C();
        sub_2D64(v97);
        sub_12229C();
        v73 = v60;
        v60 = a2;
        sub_8A2C(v73);

        v74 = sub_12236C();
        v76 = v92;
      }

      else
      {

        v77 = sub_1221FC();
        (v31)(v77);
        v74 = sub_12236C();
        v76 = v32;
      }

      v75(v74, v76);
      isa = sub_16BD2C().super.isa;
      v79 = sub_122360();
      v81 = [v79 v80];

      if (v81)
      {
        v82 = v94;
        sub_16BE7C();

        v83 = sub_122210();
        (v31)(v83);
        v84 = 0;
      }

      else
      {
        v87 = sub_122210();
        (v31)(v87);

        v84 = 1;
        v82 = v94;
      }

      v88 = sub_16BE9C();
      sub_214C(v82, v84, 1, v88);
      v86 = v82;
    }

    sub_122144(v86, v91);
    sub_45924();
  }

  else
  {
    sub_1222B8();
    sub_45924();

    sub_16BE8C();
  }
}

uint64_t sub_121020(unsigned __int8 a1, char a2)
{
  v2 = 0xEE0065636E657473;
  v3 = 0x6978456B63656863;
  v4 = a1;
  v5 = 0x6978456B63656863;
  v6 = 0xEE0065636E657473;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v7 = 1634038371;
      goto LABEL_8;
    case 2:
      v6 = 0xE600000000000000;
      v7 = 1701602660;
      goto LABEL_8;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x627265566F6ELL;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1852141679;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v7 = 1633972341;
LABEL_8:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v5 = 0x4C74736575716572;
      v6 = 0xEA0000000000676FLL;
      break;
    case 7:
      v5 = 0x736972616D6D7573;
      v6 = 0xE900000000000065;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v5 = 0x74736575716572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v8 = 1634038371;
      goto LABEL_18;
    case 2:
      v2 = 0xE600000000000000;
      v8 = 1701602660;
      goto LABEL_18;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x627265566F6ELL;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1852141679;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v8 = 1633972341;
LABEL_18:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 6:
      v3 = 0x4C74736575716572;
      v2 = 0xEA0000000000676FLL;
      break;
    case 7:
      v3 = 0x736972616D6D7573;
      v2 = 0xE900000000000065;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v3 = 0x74736575716572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_16E6BC();
  }

  return v10 & 1;
}

uint64_t sub_1212C8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_140650(a1);
  v4 = v3;
  v6 = v5;
  sub_140650(v2);
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_122280(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_121358(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_122280(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1213DC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701667182;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667182;
  switch(v4)
  {
    case 1:
      v5 = sub_122378();
      v3 = 0xEE00676E69727453;
      break;
    case 2:
      v5 = sub_122378();
      v3 = 0xEA00000000004449;
      break;
    case 3:
      v5 = 0x697461636964656DLL;
      v6 = 1145663087;
      goto LABEL_7;
    case 4:
      v3 = 0xE800000000000000;
      v5 = sub_12234C();
      break;
    case 5:
      v5 = sub_12234C();
      v6 = 1953066581;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v5 = 0x7463656C65536E6FLL;
      v3 = 0xEF646E616D6D6F43;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      sub_1223C8();
      v7 = 0xEE00676E69727453;
      break;
    case 2:
      sub_1223C8();
      v7 = 0xEA00000000004449;
      break;
    case 3:
      v2 = 0x697461636964656DLL;
      v8 = 1145663087;
      goto LABEL_15;
    case 4:
      v7 = 0xE800000000000000;
      sub_1223B4();
      break;
    case 5:
      sub_1223B4();
      v8 = 1953066581;
LABEL_15:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v2 = 0x7463656C65536E6FLL;
      v7 = 0xEF646E616D6D6F43;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_122280(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1215D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7473726966;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7473726966;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x646E6F636573;
      break;
    case 2:
      v5 = 0x6472696874;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x687472756F66;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x646E6F636573;
      break;
    case 2:
      v2 = 0x6472696874;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x687472756F66;
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
    v8 = sub_122280(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_12179C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1221B4(a4, a5, a6);
  sub_16E29C();
  sub_16E29C();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_16E6BC();
  }

  return v10 & 1;
}

void sub_1218BC(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  v7 = sub_4348(v6);
  __chkstk_darwin(v7);
  sub_887C();
  sub_12238C();
  v9 = __chkstk_darwin(v8);
  v17 = sub_122304(v9, v10, v11, v12, v13, v14, v15, v16, v89);
  sub_42F0();
  __chkstk_darwin(v18);
  sub_887C();
  __chkstk_darwin(v19);
  v20 = sub_2440(&qword_1C57E0, &unk_171C60);
  v21 = sub_4348(v20);
  __chkstk_darwin(v21);
  sub_1223A0();
  v22 = sub_16BF5C();
  sub_42F0();
  __chkstk_darwin(v23);
  sub_887C();
  __chkstk_darwin(v24);
  v25 = sub_1223F0();
  if (v25)
  {
    v96 = v25;
    if (sub_C1BA4(a1, &off_1B8440))
    {
      sub_1223DC();
LABEL_9:
      sub_16BE8C();
      sub_45924();

      return;
    }

    if (sub_C1BA4(a1, &off_1B8468))
    {
      sub_1222EC();
      goto LABEL_9;
    }

    v91 = a3;
    v92 = v17;
    v29 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 externalSourceAssistantService];
    v33 = sub_16E1BC();
    v35 = v34;

    sub_1220E0(v33, v35, v31);
    sub_1955C(a2, v3, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v3, 1, v22) == 1)
    {
      sub_C878(v3, &qword_1C57E0, &unk_171C60);
      v36 = sub_16DBBC();
      sub_3E174(v36);
      sub_122234();
      sub_122224();
      v37();
      v38 = v96;
      v39 = sub_16DBDC();
      v40 = sub_16E36C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        sub_122430(5.7779e-34);
        sub_122410(&def_259DC, v43, v44, "Building a deeplink for %@ and no interval");
        sub_C878(v42, &qword_1C57B8, &qword_1715A0);
        sub_8A2C(v42);
        v45 = v41;
        v32 = v92;
        sub_8A2C(v45);
      }

      v46 = sub_38B40();
      v47(v46);
      v48 = sub_122360();
      v50 = [v48 v49];
      if (v50)
      {
        v51 = v50;
        v52 = v93;
        sub_16BE7C();

        v53 = 0;
      }

      else
      {
        v53 = 1;
        v52 = v93;
      }

      v85 = sub_16BE9C();
      sub_214C(v52, v53, 1, v85);
      v86 = v52;
    }

    else
    {
      v54 = sub_122264();
      v55(v54);
      v56 = sub_16DBBC();
      sub_3E174(v56);
      sub_122234();
      sub_122224();
      v57();
      v58 = sub_1222D4();
      v59(v58);
      v60 = v96;
      v61 = sub_16DBDC();
      v62 = sub_16E36C();

      if (os_log_type_enabled(v61, v62))
      {
        swift_slowAlloc();
        v63 = sub_122490();
        v97 = sub_122470(v63);
        sub_122244(5.778e-34);
        sub_1221B4(&qword_1C96B0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v64 = a2;
        sub_122450();
        v32 = v65;
        v66 = sub_1221FC();
        (v31)(v66);
        v67 = sub_38B40();
        v70 = sub_3AB7C(v67, v68, v69);

        *(v60 + 14) = v70;
        sub_122328(&def_259DC, v71, v72, "Building a deeplink for %@ and date: %s");
        sub_C878(v90, &qword_1C57B8, &qword_1715A0);
        sub_12229C();
        sub_2D64(v97);
        sub_12229C();
        v73 = v60;
        v60 = a2;
        sub_8A2C(v73);

        v74 = sub_12236C();
        v76 = v92;
      }

      else
      {

        v77 = sub_1221FC();
        (v31)(v77);
        v74 = sub_12236C();
        v76 = v32;
      }

      v75(v74, v76);
      isa = sub_16BEEC().super.isa;
      v79 = sub_122360();
      v81 = [v79 v80];

      if (v81)
      {
        v82 = v94;
        sub_16BE7C();

        v83 = sub_122210();
        (v31)(v83);
        v84 = 0;
      }

      else
      {
        v87 = sub_122210();
        (v31)(v87);

        v84 = 1;
        v82 = v94;
      }

      v88 = sub_16BE9C();
      sub_214C(v82, v84, 1, v88);
      v86 = v82;
    }

    sub_122144(v86, v91);
    sub_45924();
  }

  else
  {
    sub_1222B8();
    sub_45924();

    sub_16BE8C();
  }
}

uint64_t sub_121FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(HealthAppAuthorizationManagementLinkBuilder) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 externalSourceAssistantService];
  v6 = sub_16E1BC();
  v8 = v7;

  sub_1220E0(v6, v8, v4);
  v9 = sub_16E1AC();
  v10 = [v4 URLForAuthorizationManagementFromLocation:2 bundleIdentifier:v9];

  if (v10)
  {
    sub_16BE7C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_16BE9C();

  return sub_214C(a1, v11, 1, v12);
}

void sub_1220E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setSource:v4];
}

uint64_t sub_122144(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C57F8, &unk_172510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1221B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_122244(float a1)
{
  *v2 = a1;
  *(v2 + 4) = *(v3 - 136);
  result = *(v3 - 120);
  *v1 = result;
  *(v2 + 12) = 2080;
  return result;
}

uint64_t sub_122280(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16E6BC();
}

uint64_t sub_12229C()
{
}

uint64_t sub_122304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 144) = &a9 - v9;

  return sub_16DBEC();
}

void sub_122328(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 192);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

Class sub_1223F0()
{

  return sub_23324(v0);
}

void sub_122410(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

id sub_122430(float a1)
{
  *v2 = a1;
  *(v2 + 4) = v1;
  *v3 = *(v4 - 120);

  return v1;
}

uint64_t sub_122450()
{

  return sub_16E68C();
}

uint64_t sub_122470(uint64_t a1)
{
  *(v2 - 200) = a1;
  *(v2 - 192) = v1;

  return swift_slowAlloc();
}

uint64_t sub_122490()
{
  *(v1 - 136) = v0;

  return swift_slowAlloc();
}

uint64_t SnippetHeaderModel.init(categoryLabel:categoryListIconName:categoryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_16D5CC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for SnippetHeaderModel(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t type metadata accessor for SnippetHeaderModel(uint64_t a1)
{
  result = qword_1CAA60;
  if (!qword_1CAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_12259C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xED00006C6562614CLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000000017FCF0 == a2;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x800000000017FD10 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_16E6BC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1226C0(char a1)
{
  if (!a1)
  {
    return 0x79726F6765746163;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000012;
}

uint64_t sub_122738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12259C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_122760@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of LogHealthKitQuantityFlow.taskLogger();
  *a1 = result;
  return result;
}

uint64_t sub_122788(uint64_t a1)
{
  v2 = sub_1229D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1227C4(uint64_t a1)
{
  v2 = sub_1229D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SnippetHeaderModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CA9F0, &qword_177290);
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_2D20(a1, a1[3]);
  sub_1229D4();
  sub_16E77C();
  v12[15] = 0;
  sub_16D5CC();
  sub_12336C();
  sub_122EE8(v9, v10, &protocol conformance descriptor for SpeakableString);
  sub_16E67C();
  if (!v1)
  {
    type metadata accessor for SnippetHeaderModel(0);
    v12[14] = 1;
    sub_16E64C();
    v12[13] = 2;
    sub_16E64C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1229D4()
{
  result = qword_1CA9F8;
  if (!qword_1CA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA9F8);
  }

  return result;
}

uint64_t SnippetHeaderModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_16D5CC();
  sub_42F0();
  v35 = v5;
  __chkstk_darwin(v6);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2440(&qword_1CAA00, &qword_177298);
  sub_42F0();
  v34 = v8;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for SnippetHeaderModel(0);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2D20(a1, a1[3]);
  sub_1229D4();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v16 = v34;
  v15 = v35;
  v31 = v12;
  v32 = v14;
  v40 = 0;
  sub_12336C();
  sub_122EE8(v17, v18, &protocol conformance descriptor for SpeakableString);
  v20 = v36;
  v19 = v37;
  sub_16E5EC();
  (*(v15 + 32))(v32, v20, v4);
  v39 = 1;
  v21 = sub_16E5BC();
  v22 = &v32[*(v31 + 20)];
  *v22 = v21;
  v22[1] = v23;
  v38 = 2;
  v24 = sub_16E5BC();
  v26 = v25;
  (*(v16 + 8))(v11, v19);
  v27 = v32;
  v28 = &v32[*(v31 + 24)];
  *v28 = v24;
  v28[1] = v26;
  sub_122D98(v27, v33);
  sub_2D64(a1);
  return sub_122DFC(v27);
}

uint64_t sub_122D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_122DFC(uint64_t a1)
{
  v2 = type metadata accessor for SnippetHeaderModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_122EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_122F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_16D5CC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_369C(a1, a2, v6);
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

uint64_t sub_123038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_16D5CC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_214C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1230E4(uint64_t a1)
{
  result = sub_16D5CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SnippetHeaderModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x12322CLL);
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

unint64_t sub_123268()
{
  result = qword_1CAAA0;
  if (!qword_1CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAA0);
  }

  return result;
}

unint64_t sub_1232C0()
{
  result = qword_1CAAA8;
  if (!qword_1CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAA8);
  }

  return result;
}

unint64_t sub_123318()
{
  result = qword_1CAAB0;
  if (!qword_1CAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAAB0);
  }

  return result;
}

uint64_t sub_12339C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1233DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_123470(uint64_t a1, uint64_t a2)
{
  sub_92A38();

  return sub_16C33C();
}

uint64_t sub_1234C4()
{
  sub_8A88();
  v1[104] = v0;
  v1[103] = v2;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  v1[105] = v3;
  sub_4348(v3);
  v1[106] = sub_8BC0();
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v4);
  v1[107] = sub_8C38();
  v1[108] = swift_task_alloc();
  v5 = sub_16D63C();
  sub_4348(v5);
  v1[109] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[110] = v6;
  sub_888C(v6);
  v1[111] = v7;
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v8 = sub_16BD9C();
  v1[114] = v8;
  sub_888C(v8);
  v1[115] = v9;
  v1[116] = sub_8BC0();
  v10 = sub_16BF5C();
  v1[117] = v10;
  sub_888C(v10);
  v1[118] = v11;
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v12 = sub_17960();

  return _swift_task_switch(v12);
}

uint64_t sub_1236C8()
{
  v1 = *(v0 + 832);
  v2 = *v1;
  *(v0 + 1072) = v2;
  v3 = sub_124544(v2, v1 + 1);
  *(v0 + 1000) = v3;
  *(v0 + 1073) = v1[256];
  sub_16D78C();
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  sub_2D20(v1 + 6, v4);
  (*(v5 + 8))(v4, v5);
  sub_2D20((v0 + 728), *(v0 + 752));
  LOBYTE(v1) = sub_16C41C();
  sub_2D64((v0 + 728));
  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = [v3 start];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  sub_16BF3C();

  v8 = [v3 end];
  if (!v8)
  {
    (*(*(v0 + 944) + 8))(*(v0 + 992), *(v0 + 936));
    goto LABEL_7;
  }

  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v44 = *(v0 + 968);
  v11 = *(v0 + 944);
  v12 = *(v0 + 936);
  v13 = *(v0 + 928);
  v14 = *(v0 + 920);
  v45 = *(v0 + 912);
  v43 = *(v0 + 992);
  sub_16BF3C();

  v15 = *(v11 + 16);
  v15(v10, v43, v12);
  v15(v44, v9, v12);
  sub_16BD5C();
  LOBYTE(v10) = sub_16DADC();
  (*(v14 + 8))(v13, v45);
  if (v10)
  {
    v16 = *(v0 + 992);
    v17 = *(v0 + 936);
    v18 = *(*(v0 + 944) + 8);
    v18(*(v0 + 984), v17);
    v18(v16, v17);
LABEL_7:
    v19 = *(v0 + 904);
    v20 = *(v0 + 888);
    v21 = *(v0 + 880);
    v22 = sub_16DBBC();
    *(v0 + 1008) = v22;
    swift_beginAccess();
    v23 = *(v20 + 16);
    *(v0 + 1016) = v23;
    *(v0 + 1024) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v19, v22, v21);
    v24 = v3;
    v25 = sub_16DBDC();
    sub_16E36C();

    if (sub_8CFC())
    {
      sub_8BD8();
      v26 = sub_8A44();
      *v22 = 138412290;
      *(v22 + 4) = v24;
      *v26 = v24;
      v27 = v24;
      sub_88FC(&def_259DC, v28, v29, "Executing intent: %@");
      sub_5CFC8(v26, &qword_1C57B8, &qword_1715A0);
      sub_89F4();
      sub_38604();
    }

    v30 = *(v0 + 888);
    v31 = *(v0 + 832);

    *(v0 + 1032) = *(v30 + 8);
    *(v0 + 1040) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = sub_4B4EC();
    v33(v32);
    v34 = *(v31 + 248);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 816;
    *(v0 + 24) = sub_123C14;
    v35 = swift_continuation_init();
    *(v0 + 720) = sub_2440(&qword_1CAAB8, &qword_177588);
    *(v0 + 696) = v35;
    *(v0 + 664) = _NSConcreteStackBlock;
    *(v0 + 672) = 1107296256;
    *(v0 + 680) = sub_53C4;
    *(v0 + 688) = &unk_1BCA78;
    [v34 handleGetHealthQuantity:v24 completion:v0 + 664];

    return _swift_continuation_await(v0 + 16);
  }

  v36 = *(v0 + 992);
  v37 = *(v0 + 984);
  v38 = *(v0 + 944);
  v39 = *(v0 + 936);
  sub_16D70C();
  sub_BC848((v0 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v0 + 504);
  v40 = *(v38 + 8);
  v40(v37, v39);
  v40(v36, v39);
  sub_126154();

  sub_C9BC();

  return v41();
}

uint64_t sub_123C14()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_123CE8);
}

uint64_t sub_123CE8()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 896);
  v5 = *(v0 + 880);
  v6 = *(v0 + 816);
  *(v0 + 1048) = v6;
  swift_beginAccess();
  v2(v4, v3, v5);
  v7 = v6;
  v8 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    sub_8BD8();
    v9 = sub_8A44();
    *v1 = 138412290;
    *(v1 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    sub_88FC(&def_259DC, v11, v12, "Received response: %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v13 = (*(v0 + 1032))(*(v0 + 896), *(v0 + 880));
  v14 = (*(&stru_20.maxprot + (swift_isaMask & *v7)))(v13);
  if (v14 != 4)
  {
    if (v14 == 102)
    {
      v22 = *(v0 + 1000);
      sub_214C(*(v0 + 864), 1, 1, *(v0 + 912));
      v23 = [v22 start];
      if (v23)
      {
        v24 = v23;
        v25 = *(v0 + 1000);
        sub_16BF3C();

        v26 = [v25 end];
        if (v26)
        {
          v27 = v26;
          v28 = *(v0 + 976);
          v29 = *(v0 + 968);
          v30 = *(v0 + 960);
          v31 = *(v0 + 952);
          v32 = *(v0 + 944);
          v33 = *(v0 + 936);
          v54 = *(v0 + 864);
          v55 = *(v0 + 912);
          v53 = *(v0 + 856);
          sub_16BF3C();

          v34 = *(v32 + 16);
          v34(v28, v30, v33);
          v34(v29, v31, v33);
          sub_4B4EC();
          sub_16BD5C();
          v35 = *(v32 + 8);
          v35(v31, v33);
          v35(v30, v33);
          sub_5CFC8(v54, &qword_1C5690, &dword_16F320);
          sub_214C(v53, 0, 1, v55);
          sub_125F78(v53, v54);
        }

        else
        {
          (*(*(v0 + 944) + 8))(*(v0 + 960), *(v0 + 936));
        }
      }

      v56 = *(v0 + 1000);
      v41 = *(v0 + 1072);
      v42 = *(v0 + 864);
      v43 = *(v0 + 848);
      v44 = *(v0 + 840);
      v45 = *(v0 + 832);
      sub_16D6FC();
      sub_7B09C(v42, &v43[v44[5]], &qword_1C5690, &dword_16F320);
      sub_C9294(v45 + 48, &v43[v44[6]]);
      sub_8284(v45 + 88, &v43[v44[7]]);
      v46 = sub_16C58C();
      swift_allocObject();
      v47 = sub_16C57C();
      v48 = &v43[v44[8]];
      v48[3] = v46;
      v48[4] = &protocol witness table for ResponseFactory;
      *v48 = v47;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v49 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v50 = sub_16D58C();
      *v43 = v41;
      *&v43[v44[9]] = v49;
      *&v43[v44[10]] = v50;
      sub_125F20();
      sub_16C4EC();

      sub_5CFC8(v42, &qword_1C5690, &dword_16F320);
      sub_8494(v43);
    }

    else if (v14 == 101)
    {
      v15 = *(v0 + 1000);
      v16 = *(v0 + 1072);
      v17 = *(v0 + 832);
      sub_16D76C();
      sub_C9294(v17 + 48, v0 + 88);
      sub_8284(v17 + 88, v0 + 128);
      v18 = sub_16C58C();
      swift_allocObject();
      v19 = sub_16C57C();
      *(v0 + 312) = v18;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v19;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v20 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v21 = sub_16D58C();
      *(v0 + 80) = v16;
      *(v0 + 328) = v20;
      *(v0 + 336) = v21;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v39 = *(v0 + 1000);
      v40 = *(v0 + 832);
      sub_16D71C();
      sub_8284(v40 + 88, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_126154();

    sub_C9BC();
    sub_841E0();

    __asm { BRAA            X1, X16 }
  }

  v36 = swift_task_alloc();
  *(v0 + 1056) = v36;
  *v36 = v0;
  v36[1] = sub_124344;
  sub_841E0();

  return sub_124D78();
}

uint64_t sub_124344()
{
  sub_8A88();
  sub_C9D4();
  *(v1 + 1064) = v0;

  v2 = sub_17960();

  return _swift_task_switch(v2);
}

void sub_124434()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1000);
  sub_16D77C();
  sub_16C4FC();

  sub_126154();

  sub_C9BC();
  sub_841E0();

  __asm { BRAA            X1, X16 }
}

id sub_124544(uint64_t a1, void *a2)
{
  v4 = a1;
  sub_16C0BC();
  sub_42F0();
  v80 = v6;
  v81 = v5;
  __chkstk_darwin(v5);
  sub_4304();
  v79 = v8 - v7;
  v9 = sub_2440(&qword_1C57E0, &unk_171C60);
  v10 = sub_4348(v9);
  __chkstk_darwin(v10);
  sub_38634();
  v85 = v11;
  sub_89B4();
  __chkstk_darwin(v12);
  v82 = v76 - v13;
  v14 = sub_16BF5C();
  sub_42F0();
  v87 = v15;
  __chkstk_darwin(v16);
  sub_38634();
  v76[2] = v17;
  sub_89B4();
  __chkstk_darwin(v18);
  sub_8AC0();
  v76[1] = v19;
  sub_89B4();
  __chkstk_darwin(v20);
  sub_8AC0();
  v84 = v21;
  sub_89B4();
  __chkstk_darwin(v22);
  sub_8AC0();
  v83 = v23;
  sub_89B4();
  __chkstk_darwin(v24);
  v26 = v76 - v25;
  v27 = sub_2440(&qword_1C5690, &dword_16F320);
  v28 = sub_4348(v27);
  __chkstk_darwin(v28);
  sub_38634();
  v77 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  sub_8AC0();
  v78 = v31;
  sub_89B4();
  v33 = __chkstk_darwin(v32);
  v35 = v76 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = v76 - v37;
  __chkstk_darwin(v36);
  sub_B62E8();
  __chkstk_darwin(v39);
  v41 = v76 - v40;
  v42 = [objc_allocWithZone(sub_16D9AC()) init];
  v43 = sub_208C0(v4);
  v86 = v42;
  sub_1260F0(v43, v44, v42);
  sub_2D20(a2, a2[3]);
  v45 = sub_4B4EC();
  v46 = v41;
  v47(v45);
  sub_125AB4(v2, v4, v41);
  sub_5CFC8(v2, &qword_1C5690, &dword_16F320);
  if (v4 - 89 <= 0x3E && ((1 << (v4 - 89)) & 0x6400000000000113) != 0 || v4 - 155 <= 0x1D && ((1 << (v4 + 101)) & 0x20040001) != 0)
  {
    sub_7B09C(v41, v38, &qword_1C5690, &dword_16F320);
    v48 = sub_16BD9C();
    sub_8A94(v38);
    if (v49)
    {
      sub_5CFC8(v38, &qword_1C5690, &dword_16F320);
      v50 = v82;
      sub_214C(v82, 1, 1, v14);
      v51 = v83;
      sub_16BF4C();
      v52 = v79;
      sub_16C08C();
      sub_16C02C();
      (*(v80 + 8))(v52, v81);
      v55 = v87;
      (*(v87 + 8))(v51, v14);
      if (sub_369C(v50, 1, v14) != 1)
      {
        sub_5CFC8(v50, &qword_1C57E0, &unk_171C60);
      }
    }

    else
    {
      v53 = v82;
      sub_16BD7C();
      sub_5DE54();
      (*(v54 + 8))(v38, v48);
      sub_1261B4(v53);
      v55 = v87;
      (*(v87 + 32))(v26, v53, v14);
    }

    isa = sub_16BEEC().super.isa;
    v57 = *(v55 + 8);
    v57(v26, v14);
    v58 = v86;
    [v86 setStart:isa];

    sub_7B09C(v46, v35, &qword_1C5690, &dword_16F320);
    sub_8A94(v35);
    if (v49)
    {
      sub_5CFC8(v35, &qword_1C5690, &dword_16F320);
      v59 = v85;
      sub_214C(v85, 1, 1, v14);
      sub_16BF4C();
      sub_7B6B8(v84);
      v60 = sub_C9C8();
      (v57)(v60);
      if (sub_369C(v59, 1, v14) != 1)
      {
        sub_5CFC8(v59, &qword_1C57E0, &unk_171C60);
      }
    }

    else
    {
      v61 = v85;
      sub_16BD4C();
      sub_5DE54();
      (*(v62 + 8))(v35, v48);
      sub_1261B4(v61);
      (*(v55 + 32))(v84, v61, v14);
    }

    v63.super.isa = sub_16BEEC().super.isa;
    v64 = sub_9A808();
    (v57)(v64);
  }

  else
  {
    v66 = v78;
    sub_7B09C(v41, v78, &qword_1C5690, &dword_16F320);
    v67 = sub_16BD9C();
    if (sub_369C(v66, 1, v67) == 1)
    {
      sub_5CFC8(v66, &qword_1C5690, &dword_16F320);
      v68 = 0;
    }

    else
    {
      sub_16BD7C();
      sub_5DE54();
      (*(v69 + 8))(v66, v67);
      v68 = sub_16BEEC().super.isa;
      v70 = sub_9A808();
      v71(v70);
    }

    v58 = v86;
    v72 = v77;
    [v86 setStart:v68];

    sub_7B09C(v41, v72, &qword_1C5690, &dword_16F320);
    if (sub_369C(v72, 1, v67) == 1)
    {
      sub_5CFC8(v72, &qword_1C5690, &dword_16F320);
      v63.super.isa = 0;
    }

    else
    {
      sub_16BD4C();
      sub_5DE54();
      (*(v73 + 8))(v72, v67);
      v63.super.isa = sub_16BEEC().super.isa;
      v74 = sub_9A808();
      v75(v74);
    }
  }

  [v58 setEnd:v63.super.isa];

  sub_5CFC8(v46, &qword_1C5690, &dword_16F320);
  return v58;
}

uint64_t sub_124D78()
{
  sub_8A88();
  v1[116] = v0;
  v1[115] = v2;
  v1[114] = v3;
  v4 = sub_16C46C();
  v1[117] = v4;
  sub_888C(v4);
  v1[118] = v5;
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[121] = v6;
  sub_888C(v6);
  v1[122] = v7;
  v1[123] = sub_8BC0();
  v8 = sub_16DBEC();
  v1[124] = v8;
  sub_888C(v8);
  v1[125] = v9;
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10);
}

uint64_t sub_124EEC()
{
  sub_8A88();
  v0[78] = &type metadata for WellnessFeatureFlagsKey;
  v0[79] = sub_3736C();
  *(v0 + 600) = 4;
  v1 = sub_16C86C();
  sub_2D64(v0 + 75);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[130] = v2;
    *v2 = v0;
    v2[1] = sub_125044;

    return sub_9C338();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[131] = v4;
    *v4 = v0;
    v4[1] = sub_125704;

    return sub_4B57C();
  }
}

uint64_t sub_125044()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_125128(uint64_t a1)
{
  v60 = v1;
  v2 = *(v1 + 1000);
  v3 = *(v1 + 912);
  sub_16DBBC();
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = sub_C9C8();
  v4(v5);
  v6 = v3;
  v7 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    v8 = *(v1 + 912);
    sub_8BD8();
    v9 = sub_8A44();
    *v6 = 138412290;
    *(v6 + 1) = v8;
    *v9 = v8;
    v10 = v8;
    sub_88FC(&def_259DC, v11, v12, "#GetHealthQuantityFlow: In successResponseFlow intent is %@");
    sub_5CFC8(v9, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v13 = *(v1 + 1032);
  v14 = *(v1 + 1024);
  v15 = *(v1 + 1000);
  v16 = *(v1 + 992);
  v17 = *(v1 + 920);

  v58 = *(v15 + 8);
  v18 = v58(v13, v16);
  sub_106204(v18, v1 + 824);
  v19 = sub_9A808();
  v4(v19);
  v20 = v17;
  v21 = sub_16DBDC();
  sub_16E36C();

  if (sub_8CFC())
  {
    v22 = *(v1 + 920);
    sub_8BD8();
    v23 = sub_8A44();
    *v14 = 138412290;
    *(v14 + 4) = v22;
    *v23 = v22;
    v24 = v22;
    sub_88FC(&def_259DC, v25, v26, "#GetHealthQuantityFlow: In successResponseFlow intent response is %@");
    sub_5CFC8(v23, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_38604();
  }

  v27 = *(v1 + 1024);
  v28 = *(v1 + 992);
  v29 = *(v1 + 928);

  v30 = v58(v27, v28);
  sub_106204(v30, v1 + 848);
  v31 = sub_9A808();
  v4(v31);
  sub_125FE8(v29, v1 + 16);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v1 + 1016);
  v36 = *(v1 + 992);
  if (v34)
  {
    v57 = *(v1 + 992);
    v37 = sub_8BD8();
    v38 = swift_slowAlloc();
    v59[0] = v38;
    *v37 = 136315138;
    v39 = sub_208C0(*(v1 + 16));
    v56 = v35;
    v40 = v4;
    v42 = v41;
    sub_92A8C(v1 + 16);
    v43 = sub_3AB7C(v39, v42, v59);
    v4 = v40;

    *(v37 + 4) = v43;
    _os_log_impl(&def_259DC, v32, v33, "#GetHealthQuantityFlow: In successResponseFlow identifier is %s", v37, 0xCu);
    sub_2D64(v38);

    v58(v56, v57);
  }

  else
  {

    sub_92A8C(v1 + 16);
    v58(v35, v36);
  }

  sub_7B09C(v1 + 640, v1 + 720, &qword_1C5ED0, &qword_171090);
  if (*(v1 + 744))
  {
    sub_17464((v1 + 720), v1 + 680);
    sub_C9294(v1 + 680, v1 + 760);
    v44 = swift_allocObject();
    sub_17464((v1 + 760), v44 + 16);
    sub_16C73C();
    sub_16C1DC();
    swift_allocObject();
    *(v1 + 904) = sub_16C1CC();
    v45 = sub_16C32C();
    sub_2D64((v1 + 680));
    sub_5CFC8(v1 + 640, &qword_1C5ED0, &qword_171090);
  }

  else
  {
    v46 = sub_5CFC8(v1 + 720, &qword_1C5ED0, &qword_171090);
    sub_106204(v46, v1 + 872);
    v47 = sub_C9C8();
    v4(v47);
    v48 = sub_16DBDC();
    v49 = sub_16E37C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&def_259DC, v48, v49, "#GetHealthQuantityFlow: Invalid responseOutput, triggering error response", v50, 2u);
    }

    v51 = *(v1 + 1008);
    v52 = *(v1 + 992);
    v53 = *(v1 + 928);

    v58(v51, v52);
    sub_16D71C();
    sub_8284(v53 + 88, v1 + 440);
    sub_82E0();
    v45 = sub_16C32C();
    sub_8334(v1 + 440);
    sub_5CFC8(v1 + 640, &qword_1C5ED0, &qword_171090);
  }

  sub_126188();

  v54 = *(v1 + 8);

  return v54(v45);
}

uint64_t sub_125704()
{
  sub_8A88();
  sub_C9D4();
  *(v1 + 1056) = v0;

  v2 = sub_17960();

  return _swift_task_switch(v2);
}

uint64_t sub_1257F4(uint64_t a1)
{
  v2 = v1[132];
  if (v2)
  {
    v3 = v1[123];
    v4 = v1[122];
    v5 = v1[121];
    v6 = v1[120];
    v7 = v1[119];
    v8 = v1[118];
    v9 = v1[117];
    v10 = v1[116];
    sub_16C43C();
    (*(v8 + 16))(v7, v6, v9);
    sub_16C75C();
    (*(v8 + 8))(v6, v9);
    v11 = [v2 patternId];
    sub_16E1BC();

    sub_4B4EC();
    sub_16C76C();
    sub_2D20((v10 + 88), *(v10 + 112));
    v1[112] = sub_16C2FC();
    sub_16C28C();
    v12 = sub_16C32C();

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = v1[116];
    sub_16D71C();
    sub_8284(v13 + 88, (v1 + 35));
    sub_82E0();
    v12 = sub_16C32C();
    sub_8334((v1 + 35));
  }

  sub_126188();

  v14 = v1[1];

  return v14(v12);
}

uint64_t sub_125A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_1234C4();
}

uint64_t sub_125AB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  sub_16C0BC();
  sub_42F0();
  v49 = v6;
  v50 = v5;
  __chkstk_darwin(v5);
  sub_4304();
  v47 = v8 - v7;
  v9 = sub_16BF5C();
  sub_42F0();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_38634();
  v48 = v13;
  sub_89B4();
  __chkstk_darwin(v14);
  sub_8AC0();
  v46 = v15;
  sub_89B4();
  __chkstk_darwin(v16);
  sub_B62E8();
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = sub_2440(&qword_1C5690, &dword_16F320);
  v21 = sub_4348(v20);
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  sub_16BD9C();
  sub_42F0();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_4304();
  v29 = v28 - v27;
  v31 = v30;
  sub_7B09C(a1, v23, &qword_1C5690, &dword_16F320);
  sub_8A94(v23);
  if (v32)
  {
    sub_5CFC8(v23, &qword_1C5690, &dword_16F320);
    return sub_7B09C(a1, v52, &qword_1C5690, &dword_16F320);
  }

  v34 = *(v25 + 32);
  v45 = v31;
  v34(v29, v23);
  sub_16BD4C();
  sub_16BECC();
  v36 = v35;
  v37 = *(v11 + 8);
  v37(v19, v9);
  sub_16BD7C();
  sub_16BECC();
  v39 = v38;
  v37(v3, v9);
  v40 = v36 - v39;
  if (v51 != 103 && v51 != 174 && v51 != 159)
  {
    if (v40 < 86399.0)
    {
      sub_16BD7C();
      v42 = v47;
      sub_16C08C();
      sub_16C02C();
      (*(v49 + 8))(v42, v50);
      v37(v19, v9);
      v43 = v46;
      sub_16BD7C();
      sub_7B6B8(v48);
      v37(v43, v9);
      v41 = v52;
      sub_16BD5C();
      goto LABEL_11;
    }

LABEL_12:
    v41 = v52;
    v44 = sub_C9C8();
    (v34)(v44);
    return sub_1261B4(v41);
  }

  if (v40 >= 3599.0)
  {
    goto LABEL_12;
  }

  sub_16BD7C();
  v41 = v52;
  sub_16BD6C();
LABEL_11:
  (*(v25 + 8))(v29, v45);
  return sub_1261B4(v41);
}

unint64_t sub_125F20()
{
  result = qword_1C57C8;
  if (!qword_1C57C8)
  {
    type metadata accessor for UnavailableDataFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C57C8);
  }

  return result;
}

uint64_t sub_125F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_126020()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_126058()
{
  sub_8A88();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_C6F0;

  return sub_C8CB0(v3, v0 + 16);
}

void sub_1260F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_16E1AC();

  [a3 setQuantityIdentifier:v4];
}

uint64_t sub_126188()
{
}

uint64_t sub_1261B4(uint64_t a1)
{

  return sub_214C(a1, 0, 1, v1);
}

uint64_t sub_1261D0()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_12621C(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_126260(uint64_t a1)
{
  *(v1 + 24) = a1;
}

uint64_t sub_1262A4(uint64_t a1)
{
  *(v1 + 32) = a1;
}

uint64_t sub_1262E8(uint64_t a1)
{
  *(v1 + 40) = a1;
}

uint64_t sub_12632C()
{

  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier);
  return v0;
}

void *sub_1263B0(void *a1)
{
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v7 - v4;
  v1[2] = 0;
  v1[3] = a1[2];
  v1[4] = a1[3];
  v1[5] = a1[4];
  v1[6] = a1[5];
  sub_7DA9C(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin12WellnessTime7Builder_calendarIdentifier, &v7 - v4);

  sub_7DB0C(v5, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  return v1;
}

void sub_1264AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2440(&qword_1C5800, &unk_16F510);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  sub_1278E8();
  v14 = a1 == 0xD000000000000014 && v13 == a2;
  if (!v14 && (sub_1278BC(0xD000000000000014, v13) & 1) == 0)
  {
    sub_1278E8();
    v17 = a1 == 0xD000000000000012 && v16 == a2;
    if (v17 || (sub_1278BC(0xD000000000000012, v16) & 1) != 0)
    {
      v15 = v3[4];
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1278E8();
      v19 = a1 == 0xD000000000000015 && v18 == a2;
      if (v19 || (sub_1278BC(0xD000000000000015, v18) & 1) != 0)
      {
        v15 = v3[5];
        if (v15)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1278AC();
        v22 = v14 && v21 == a2;
        if (!v22 && (sub_127888(v20, v21) & 1) == 0)
        {
          sub_1278E8();
          v24 = a1 == 0xD000000000000012 && v23 == a2;
          if (v24 || (sub_1278BC(0xD000000000000012, v23) & 1) != 0)
          {
            sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier, v12);
            v25 = sub_16D5CC();
            if (sub_369C(v12, 1, v25) != 1)
            {
              *(a3 + 24) = v25;
              v27 = sub_9910(a3);
              (*(*(v25 - 8) + 32))(v27, v12, v25);
              return;
            }

            v26 = v12;
          }

          else
          {
            v28 = a1 == 0x53736574756E696DLL && a2 == 0xEF776F4E65636E69;
            if (v28 || (sub_1278BC(0x53736574756E696DLL, 0xEF776F4E65636E69) & 1) != 0)
            {
              v29 = sub_15C3B4();
              if ((v30 & 1) == 0)
              {
                *(a3 + 24) = &type metadata for Double;
                *a3 = v29;
                return;
              }

              goto LABEL_16;
            }

            v31 = a1 == 0x6D617266656D6974 && a2 == 0xE900000000000065;
            if (!v31 && (sub_1278BC(0x6D617266656D6974, 0xE900000000000065) & 1) == 0)
            {
              sub_1278AC();
              v36 = v14 && v35 == a2;
              if (v36 || (sub_127888(v34, v35) & 1) != 0)
              {
                sub_15C468();
              }

              else
              {
                sub_1278AC();
                v40 = v14 && v39 == a2;
                if (v40 || (sub_127888(v38, v39) & 1) != 0)
                {
                  sub_15C678();
                }

                else
                {
                  sub_1278E8();
                  v42 = a1 == 0xD000000000000014 && v41 == a2;
                  if (v42 || (sub_1278BC(0xD000000000000014, v41) & 1) != 0)
                  {
                    sub_15CB0C();
                  }

                  else
                  {
                    sub_1278E8();
                    v44 = a1 == 0xD000000000000014 && v43 == a2;
                    if (v44 || (sub_1278BC(0xD000000000000014, v43) & 1) != 0)
                    {
                      sub_15CD20();
                    }

                    else
                    {
                      sub_1278AC();
                      v47 = v14 && v46 == a2;
                      if (v47 || (sub_127888(v45, v46) & 1) != 0)
                      {
                        sub_15D1B4();
                      }

                      else
                      {
                        sub_1278AC();
                        v50 = v14 && v49 == a2;
                        if (v50 || (sub_127888(v48, v49) & 1) != 0)
                        {
                          sub_15D3C8();
                        }

                        else
                        {
                          sub_1278E8();
                          v52 = a1 == 0xD000000000000012 && v51 == a2;
                          if (v52 || (sub_1278BC(0xD000000000000012, v51) & 1) != 0)
                          {
                            v53 = sub_15EE1C() < 3u;
                            *(a3 + 24) = &type metadata for Bool;
                            *a3 = v53;
                            return;
                          }

                          sub_1278AC();
                          if (!v14 || v55 != a2)
                          {
                            v54 = sub_127888(v54, v55);
                            if ((v54 & 1) == 0)
                            {
                              v57 = a1 == 0x636E6953656D6974 && a2 == 0xEC000000776F4E65;
                              if (v57 || (sub_1278BC(0x636E6953656D6974, 0xEC000000776F4E65) & 1) != 0)
                              {
                                v58 = sub_15D85C();
                                if (v58)
                                {
                                  v59 = v58;
                                  *(a3 + 24) = sub_16D54C();
                                  *a3 = v59;
                                  return;
                                }
                              }

                              goto LABEL_16;
                            }
                          }

                          v37 = sub_15C380(v54);
                        }
                      }
                    }
                  }
                }
              }

              *(a3 + 24) = &type metadata for Bool;
              *a3 = v37 & 1;
              return;
            }

            sub_15C3EC(v10);
            v32 = sub_16D5CC();
            if (sub_369C(v10, 1, v32) != 1)
            {
              *(a3 + 24) = v32;
              v33 = sub_9910(a3);
              (*(*(v32 - 8) + 32))(v33, v10, v32);
              return;
            }

            v26 = v10;
          }

          sub_6261C(v26);
          goto LABEL_16;
        }

        v15 = v3[6];
        if (v15)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_16:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v15 = v3[3];
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_7:
  *(a3 + 24) = sub_16D4EC();
  *a3 = v15;
}

unint64_t sub_1269BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B8648;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_126A10(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_126AD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1269BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_126B08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_126A10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_126B3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1269BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_126B70(uint64_t a1)
{
  v2 = sub_1275D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_126BAC(uint64_t a1)
{
  v2 = sub_1275D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_126BE8()
{

  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  return v0;
}

uint64_t sub_126C50(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_126CD4(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_126D78(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CADA0, &qword_177738);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_2D20(a1, a1[3]);
  sub_1275D0();
  sub_16E77C();
  v17 = v3[3];
  HIBYTE(v16) = 0;
  sub_16D4EC();
  sub_12790C();
  sub_127588(v11, v12, &protocol conformance descriptor for DialogCalendar);
  sub_12785C();
  if (!v2)
  {
    v17 = v3[4];
    HIBYTE(v16) = 1;
    sub_12785C();
    v17 = v3[5];
    HIBYTE(v16) = 2;
    sub_12785C();
    v17 = v3[6];
    HIBYTE(v16) = 3;
    sub_12785C();
    LOBYTE(v17) = 4;
    sub_16D5CC();
    sub_1278F4();
    sub_127588(v13, v14, &protocol conformance descriptor for SpeakableString);
    sub_16E63C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_126F88(void *a1)
{
  v2 = swift_allocObject();
  sub_1270A0(a1);
  return v2;
}

void sub_127000(uint64_t a1)
{
  sub_7D0F4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1270A0(void *a1)
{
  v3 = v1;
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  sub_2440(&qword_1CAD90, &qword_177730);
  sub_42F0();
  v9 = v8;
  sub_433C();
  __chkstk_darwin(v10);
  *(v3 + 16) = 0;
  v11 = a1[3];
  v21 = a1;
  sub_2D20(a1, v11);
  sub_1275D0();
  sub_16E76C();
  if (v2)
  {

    type metadata accessor for WellnessTime(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20[0] = v7;
    v20[1] = v9;
    sub_16D4EC();
    v22 = 0;
    sub_12790C();
    sub_127588(v12, v13, &protocol conformance descriptor for DialogCalendar);
    sub_16E5AC();
    *(v3 + 24) = v23;
    sub_127838(1);
    sub_16E5AC();
    *(v3 + 32) = v23;
    sub_127838(2);
    sub_16E5AC();
    *(v3 + 40) = v23;
    sub_127838(3);
    sub_16E5AC();
    *(v3 + 48) = v23;
    sub_16D5CC();
    LOBYTE(v23) = 4;
    sub_1278F4();
    sub_127588(v15, v16, &protocol conformance descriptor for SpeakableString);
    v17 = v20[0];
    sub_16E5AC();
    v18 = sub_1278D8();
    v19(v18);
    sub_7DB0C(v17, v3 + OBJC_IVAR____TtC18WellnessFlowPlugin12WellnessTime_calendarIdentifier);
  }

  sub_2D64(v21);
  return v3;
}

uint64_t sub_1274A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_126F88(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_127588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1275D0()
{
  result = qword_1CAD98;
  if (!qword_1CAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAD98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WellnessTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1276F0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12772C()
{
  result = qword_1CADA8;
  if (!qword_1CADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADA8);
  }

  return result;
}

unint64_t sub_127784()
{
  result = qword_1CADB0;
  if (!qword_1CADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADB0);
  }

  return result;
}

unint64_t sub_1277DC()
{
  result = qword_1CADB8;
  if (!qword_1CADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADB8);
  }

  return result;
}

uint64_t sub_12785C()
{

  return sub_16E63C();
}

uint64_t sub_127888(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_1278BC(uint64_t a1, uint64_t a2)
{

  return sub_16E6BC();
}

uint64_t sub_127934(uint64_t a1, uint64_t a2)
{
  sub_92270();

  return sub_16C33C();
}

uint64_t sub_127988()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = sub_16DBEC();
  v1[115] = v3;
  sub_888C(v3);
  v1[116] = v4;
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = type metadata accessor for GenericButtonModel(0);
  v1[121] = swift_task_alloc();
  sub_2440(&qword_1C57F8, &unk_172510);
  v1[122] = sub_8C38();
  v1[123] = swift_task_alloc();
  v5 = sub_16BE9C();
  v1[124] = v5;
  sub_888C(v5);
  v1[125] = v6;
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[128] = v7;
  sub_888C(v7);
  v1[129] = v8;
  v1[130] = sub_8C38();
  v1[131] = swift_task_alloc();
  v9 = sub_16C7BC();
  v1[132] = v9;
  sub_888C(v9);
  v1[133] = v10;
  v1[134] = swift_task_alloc();
  v11 = sub_17960();

  return _swift_task_switch(v11);
}

uint64_t sub_127BB8()
{
  sub_8A88();
  v1 = swift_task_alloc();
  *(v0 + 1080) = v1;
  *v1 = v0;
  v1[1] = sub_127C48;

  return sub_3F118();
}

uint64_t sub_127C48()
{
  sub_8A88();
  sub_C9D4();
  *(v2 + 1088) = v1;
  *(v2 + 1096) = v0;

  if (v0)
  {
    v3 = sub_128AE4;
  }

  else
  {
    v3 = sub_127D58;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_127D58(uint64_t a1)
{
  v2 = v1[131];
  v3 = v1[130];
  v4 = v1[129];
  v5 = v1[128];
  v6 = v1[114];
  sub_16C45C();
  (*(v4 + 16))(v3, v2, v5);
  sub_16C75C();
  (*(v4 + 8))(v2, v5);
  v7 = v6[3];
  v8 = v6[4];
  sub_2D20(v6, v7);
  (*(v8 + 8))(v7, v8);
  sub_2D20(v1 + 62, v1[65]);
  if (sub_16C40C())
  {
    sub_2D64(v1 + 62);
LABEL_4:
    v12 = v1[124];
    v13 = v1[123];
    v14 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v16 = v15;
    sub_16BE8C();
    if (sub_369C(v13, 1, v12) == 1)
    {
      v67 = (v1 + 42);
      v17 = v1[123];
      v18 = v1 + 119;

      sub_C878(v17, &qword_1C57F8, &unk_172510);
      sub_16DBBC();
      swift_beginAccess();
      v19 = sub_128FA0();
      v20(v19);
      v21 = sub_16DBDC();
      v22 = sub_16E36C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = "Couldn't create URL for Phone or iPad Medications";
LABEL_11:
        _os_log_impl(&def_259DC, v21, v22, v24, v23, 2u);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v25 = v1[136];
    v26 = sub_128F50();
    v27(v26);
    v28 = sub_128F70();
    v29(v28);
    *v5 = v14;
    v5[1] = v16;
    v30 = [v25 catId];
    v31 = sub_16E1BC();

    sub_16C76C();
    v1[95] = sub_128FE8();
    v1[96] = sub_17548();
    v32 = sub_9910(v1 + 92);
    sub_175A0(v5, v32);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v33 = swift_allocObject();
    v1[138] = v33;
    *(v33 + 16) = xmmword_170F70;
    *(v33 + 32) = v25;
    v34 = v25;
    swift_task_alloc();
    sub_179E8();
    v1[139] = v35;
    *v35 = v36;
    v35[1] = sub_12857C;
    v37 = v1[134];
    v38 = v1 + 87;
    v39 = v1 + 92;
    goto LABEL_16;
  }

  v10 = v6[3];
  v9 = v6[4];
  sub_2D20(v1[114], v10);
  (*(v9 + 8))(v10, v9);
  sub_2D20(v1 + 67, v1[70]);
  v11 = sub_16C3FC();
  sub_2D64(v1 + 67);
  sub_2D64(v1 + 62);
  if (v11)
  {
    goto LABEL_4;
  }

  v40 = v1[124];
  v41 = v1[122];
  v42 = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
  v44 = v43;
  sub_16BE8C();
  if (sub_369C(v41, 1, v40) == 1)
  {
    v67 = (v1 + 22);
    v45 = v1[122];
    v18 = v1 + 118;

    sub_C878(v45, &qword_1C57F8, &unk_172510);
    sub_16DBBC();
    swift_beginAccess();
    v46 = sub_128FA0();
    v47(v46);
    v21 = sub_16DBDC();
    v22 = sub_16E36C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Couldn't create URL for Watch Medications";
      goto LABEL_11;
    }

LABEL_12:
    v48 = v1[136];
    v66 = v1[134];
    v49 = v1[133];
    v50 = v1[132];
    v51 = *v18;
    v52 = v1[116];
    v53 = v1[115];
    v54 = v1[114];

    (*(v52 + 8))(v51, v53);
    sub_8284(v54 + 40, v67);
    sub_82E0();
    sub_16C4EC();

    sub_8334(v67);
    (*(v49 + 8))(v66, v50);
    sub_128F20();

    sub_C9BC();

    return v55();
  }

  v57 = v1[136];
  v58 = sub_128F50();
  v59(v58);
  v60 = sub_128F70();
  v61(v60);
  *v5 = v42;
  v5[1] = v44;
  v30 = [v57 catId];
  v31 = sub_16E1BC();

  sub_16C76C();
  v1[80] = sub_128FE8();
  v1[81] = sub_17548();
  v62 = sub_9910(v1 + 77);
  sub_175A0(v5, v62);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v33 = swift_allocObject();
  v1[140] = v33;
  *(v33 + 16) = xmmword_170F70;
  *(v33 + 32) = v57;
  v63 = v57;
  swift_task_alloc();
  sub_179E8();
  v1[141] = v64;
  *v64 = v65;
  v64[1] = sub_128830;
  v37 = v1[134];
  v38 = v1 + 72;
  v39 = v1 + 77;
LABEL_16:

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v38, v39, v33, v37, v30, v31);
}

uint64_t sub_12857C()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 736));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_128684()
{
  sub_128F88();
  v6 = *(v2 + 1016);
  sub_128FB4();
  sub_8388(v2 + 696, v2 + 776);
  v7 = swift_allocObject();
  sub_17464((v2 + 776), v7 + 16);
  sub_16C73C();
  sub_16C1DC();
  v8 = swift_allocObject();
  *(v2 + 896) = sub_128FC8(v8, v9);
  sub_16C4EC();

  sub_2D64((v2 + 696));
  sub_17604(v4);
  (*(v0 + 8))(v6, v3);
  (*(v5 + 8))();
  sub_128F20();

  sub_C9BC();

  return v10();
}

uint64_t sub_128830()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_2D64((v2 + 616));
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_128938()
{
  sub_128F88();
  v6 = *(v2 + 1008);
  sub_128FB4();
  sub_8388(v2 + 576, v2 + 656);
  v7 = swift_allocObject();
  sub_17464((v2 + 656), v7 + 16);
  sub_16C73C();
  sub_16C1DC();
  v8 = swift_allocObject();
  *(v2 + 888) = sub_128FC8(v8, v9);
  sub_16C4EC();

  sub_2D64((v2 + 576));
  sub_17604(v4);
  (*(v0 + 8))(v6, v3);
  (*(v5 + 8))();
  sub_128F20();

  sub_C9BC();

  return v10();
}

uint64_t sub_128AE4(uint64_t a1)
{
  v2 = v1[117];
  v3 = v1[116];
  v4 = v1[115];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&def_259DC, v6, v7, "Couldn't execute wellness#regionNotSupportedForMeds pattern. Error: %@", v8, 0xCu);
    sub_C878(v9, &qword_1C57B8, &qword_1715A0);
  }

  v11 = v1[117];
  v12 = v1[116];
  v13 = v1[115];
  v14 = v1[114];

  (*(v12 + 8))(v11, v13);
  sub_8284(v14 + 40, (v1 + 2));
  sub_82E0();
  sub_16C4EC();

  sub_8334((v1 + 2));
  sub_128F20();

  sub_C9BC();

  return v15();
}

uint64_t sub_128D3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_127988();
}

uint64_t sub_128DD4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_128E0C()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_128E94()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_128FC8(uint64_t a1, uint64_t a2, ...)
{

  return sub_16C1CC();
}

uint64_t sub_128FE8()
{
  sub_2D20((v0 + 200), *(v0 + 224));

  return type metadata accessor for WellnessSnippets(0);
}

uint64_t sub_129020(void *a1, uint64_t a2)
{
  v97 = a2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v95 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v95 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v95 - v14;
  __chkstk_darwin(v13);
  sub_8AC0();
  v96 = v16;
  sub_89B4();
  __chkstk_darwin(v17);
  sub_8AC0();
  v95 = v18;
  sub_89B4();
  __chkstk_darwin(v19);
  sub_8AC0();
  v99 = v20;
  sub_89B4();
  __chkstk_darwin(v21);
  sub_8AC0();
  v98 = v22;
  sub_89B4();
  v24 = __chkstk_darwin(v23);
  v26 = &v95 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v95 - v28;
  __chkstk_darwin(v27);
  v31 = &v95 - v30;
  v32 = sub_1033F4(a1);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    sub_129BE4(a1);
    if (v36)
    {
      sub_16E23C();

      v37 = sub_16D5CC();
      v38 = 0;
    }

    else
    {
      v37 = sub_16D5CC();
      v38 = 1;
    }

    v41 = v99;
    v42 = 1;
    sub_5DDCC(v29, v38);
    v100 = v34;
    v101 = v35;

    sub_129C48();

    sub_16E23C();

    sub_16D5CC();
    sub_388E4();
    sub_214C(v43, v44, v45, v37);
    sub_103400(a1);
    if (v46)
    {
      v47 = v98;
      sub_16E23C();

      v42 = 0;
      v48 = v97;
    }

    else
    {
      v48 = v97;
      v47 = v98;
    }

    v49 = 1;
    sub_5DDCC(v47, v42);
    sub_10340C(a1);
    if (v50)
    {
      sub_16E23C();

      v49 = 0;
    }

    sub_5DDCC(v41, v49);
    v51 = [a1 strength];
    v52 = v51;
    if (v51)
    {
      [v51 doubleValue];
      v54 = v53;

      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    sub_103418(a1);
    if (v56)
    {
      v57 = v95;
      sub_16E23C();

      v58 = 0;
    }

    else
    {
      v58 = 1;
      v57 = v95;
    }

    sub_5DDCC(v57, v58);
    v59 = *(v37 - 8);
    v60 = v96;
    (*(v59 + 16))(v96, v48, v37);
    sub_388E4();
    sub_214C(v61, v62, v63, v37);
    v64 = v29;
    v65 = v26;
    v66 = v98;
    v67 = v99;
    v68 = v55;
    v69 = v52 == 0;
    v70 = v57;
    v71 = v60;
    v72 = v48;
  }

  else
  {
    v98 = v12;
    v99 = v9;
    sub_129BE4(a1);
    if (v39)
    {
      sub_16E23C();

      v37 = sub_16D5CC();
      v40 = 0;
    }

    else
    {
      v37 = sub_16D5CC();
      v40 = 1;
    }

    v72 = v97;
    v73 = v98;
    v74 = 1;
    sub_5DDCC(v31, v40);
    sub_129CA8();
    sub_16E23C();
    sub_16D5CC();
    sub_388E4();
    sub_214C(v75, v76, v77, v37);
    sub_103400(a1);
    if (v78)
    {
      sub_16E23C();

      v74 = 0;
    }

    v79 = 1;
    sub_5DDCC(v73, v74);
    sub_10340C(a1);
    v81 = v99;
    if (v80)
    {
      sub_16E23C();

      v79 = 0;
    }

    sub_5DDCC(v81, v79);
    v82 = [a1 strength];
    v83 = v82;
    if (v82)
    {
      [v82 doubleValue];
      v85 = v84;

      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    sub_103418(a1);
    if (v87)
    {
      sub_16E23C();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    sub_5DDCC(v6, v88);
    v59 = *(v37 - 8);
    v89 = v96;
    (*(v59 + 16))(v96, v72, v37);
    sub_388E4();
    sub_214C(v90, v91, v92, v37);
    v64 = v31;
    v65 = v15;
    v66 = v98;
    v67 = v99;
    v68 = v86;
    v69 = v83 == 0;
    v70 = v6;
    v71 = v89;
  }

  v93 = sub_7C3FC(v64, v65, v66, v67, v68, v69, v70, v71);

  (*(v59 + 8))(v72, v37);
  return v93;
}

uint64_t sub_129638(void *a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v98 = a2;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v95 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v95 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v95 - v15;
  __chkstk_darwin(v14);
  sub_8AC0();
  v97 = v17;
  sub_89B4();
  __chkstk_darwin(v18);
  sub_8AC0();
  v96 = v19;
  sub_89B4();
  __chkstk_darwin(v20);
  sub_8AC0();
  v101 = v21;
  sub_89B4();
  __chkstk_darwin(v22);
  sub_8AC0();
  v24 = v23;
  sub_89B4();
  __chkstk_darwin(v25);
  sub_8AC0();
  v100 = v26;
  sub_89B4();
  __chkstk_darwin(v27);
  sub_8AC0();
  v29 = v28;
  sub_89B4();
  __chkstk_darwin(v30);
  v32 = &v95 - v31;
  v33 = sub_1033F4(a1);
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    sub_129BE4(a1);
    if (v37)
    {
      sub_16E23C();

      v38 = sub_16D5CC();
      v39 = 0;
    }

    else
    {
      v38 = sub_16D5CC();
      v39 = 1;
    }

    v47 = 1;
    sub_129C78(v29, v39);
    v102 = v35;
    v103 = v36;

    sub_129C48();

    sub_16E23C();

    sub_16D5CC();
    sub_388E4();
    sub_214C(v48, v49, v50, v38);
    sub_103400(a1);
    if (v51)
    {
      sub_16E23C();

      v47 = 0;
    }

    v52 = v101;
    v53 = 1;
    sub_129C78(v24, v47);
    sub_10340C(a1);
    if (v54)
    {
      sub_16E23C();

      v53 = 0;
    }

    v55 = v96;
    sub_129C78(v52, v53);
    v56 = [a1 strength];
    v57 = v56;
    if (v56)
    {
      [v56 doubleValue];
      v59 = v58;

      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    sub_103418(a1);
    if (v61)
    {
      sub_16E23C();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    sub_129C78(v55, v62);
    v63 = v97;
    sub_16E23C();

    sub_388E4();
    sub_214C(v64, v65, v66, v38);
    v67 = v29;
    v68 = v100;
    v69 = v101;
    v70 = v24;
    v71 = v60;
    v72 = v57 == 0;
    v73 = v55;
    v74 = v63;
  }

  else
  {
    v101 = v16;
    v40 = v13;
    sub_129BE4(a1);
    if (v41)
    {
      v42 = v32;
      sub_16E23C();

      v43 = sub_16D5CC();
      v44 = 0;
      v45 = v7;
      v46 = v10;
    }

    else
    {
      v43 = sub_16D5CC();
      v44 = 1;
      v45 = v7;
      v46 = v10;
      v42 = v32;
    }

    v75 = 1;
    sub_129C90(v42, v44);
    sub_129CA8();
    sub_16E23C();
    sub_16D5CC();
    sub_388E4();
    sub_214C(v76, v77, v78, v43);
    sub_103400(a1);
    if (v79)
    {
      sub_16E23C();

      v75 = 0;
    }

    v80 = 1;
    sub_129C90(v40, v75);
    sub_10340C(a1);
    if (v81)
    {
      sub_16E23C();

      v80 = 0;
    }

    sub_129C90(v46, v80);
    v82 = [a1 strength];
    v83 = v82;
    if (v82)
    {
      [v82 doubleValue];
      v85 = v84;

      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    sub_103418(a1);
    if (v87)
    {
      sub_16E23C();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    sub_129C90(v45, v88);
    v89 = v97;
    sub_16E23C();

    sub_388E4();
    sub_214C(v90, v91, v92, v43);
    v67 = v42;
    v68 = v101;
    v70 = v40;
    v69 = v46;
    v71 = v86;
    v72 = v83 == 0;
    v73 = v45;
    v74 = v89;
  }

  v93 = sub_7C3FC(v67, v68, v70, v69, v71, v72, v73, v74);

  return v93;
}

uint64_t sub_129BE4(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

void sub_129C48()
{
  v1._countAndFlagsBits = 0x6C75646568635320;
  v1._object = 0xE900000000000065;

  sub_16E26C(v1);
}

uint64_t sub_129C78(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t sub_129C90(uint64_t a1, uint64_t a2)
{

  return sub_214C(a1, a2, 1, v2);
}

uint64_t type metadata accessor for GenericQueryModel(uint64_t a1)
{
  result = qword_1CAE30;
  if (!qword_1CAE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericQueryModel.averageValue.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.maxValue.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.minValue.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.mostRecentValue.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.totalValue.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.dateLabel.setter()
{
  v2 = sub_12C5B0();
  Model = type metadata accessor for GenericQueryModel(v2);
  return sub_1E634(v0, v1 + *(Model + 40), &qword_1C5800, &unk_16F510);
}

uint64_t GenericQueryModel.dateLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.averageValueString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.averageValueString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.averageValueString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.maxValueString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.maxValueString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.maxValueString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.minValueString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.minValueString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.minValueString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.mostRecentValueString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.mostRecentValueString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.mostRecentValueString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.totalValueString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.totalValueString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.totalValueString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.unit.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.unit.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.unit.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.averageLabelString.getter()
{
  type metadata accessor for GenericQueryModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t GenericQueryModel.averageLabelString.setter()
{
  sub_12C614();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GenericQueryModel.averageLabelString.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t GenericQueryModel.snippetHeaderModel.setter()
{
  v2 = sub_12C5B0();
  Model = type metadata accessor for GenericQueryModel(v2);
  return sub_1E634(v0, v1 + *(Model + 72), &dword_1C63F8, &qword_171800);
}

uint64_t GenericQueryModel.snippetHeaderModel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for GenericQueryModel(v0);
  return sub_205FC();
}

uint64_t sub_12A600(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    sub_1278E8();
    return sub_2068C(0xD00000000000001ELL, v12);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v14 = sub_16BE5C();
    sub_2068C(v14, v15);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_12A7A4(uint64_t a1, char a2)
{
  v5 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Model = type metadata accessor for GenericQueryModel(0);
  sub_86B0(v2 + *(Model + 72), v8, &dword_1C63F8, &qword_171800);
  v10 = type metadata accessor for SnippetHeaderModel(0);
  if (sub_369C(v8, 1, v10) == 1)
  {
    sub_8748(v8, &dword_1C63F8, &qword_171800);
    return 0;
  }

  v12 = &v8[*(v10 + 24)];
  v14 = *v12;
  v13 = *(v12 + 1);

  sub_12C55C();
  sub_1278E8();
  v16 = v14 == 0xD000000000000021 && v15 == v13;
  if (v16 || (sub_610C8(0xD000000000000021, v15) & 1) != 0 || ((sub_1278E8(), v14 == 0xD000000000000029) ? (v18 = v17 == v13) : (v18 = 0), v18 || (sub_610C8(0xD000000000000029, v17) & 1) != 0 || ((sub_1278E8(), v14 == 0xD00000000000002ALL) ? (v20 = v19 == v13) : (v20 = 0), v20 || (sub_610C8(0xD00000000000002ALL, v19) & 1) != 0 || ((sub_1278E8(), v14 == 0xD000000000000029) ? (v22 = v21 == v13) : (v22 = 0), v22))))
  {
  }

  else
  {
    v23 = sub_610C8(0xD000000000000029, v21);

    if ((v23 & 1) == 0)
    {
      return sub_12A998(a1, a2 & 1);
    }
  }

  return sub_12AAB8(a1, a2 & 1);
}

uint64_t sub_12A998(uint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v2 = result;
  if (*&result <= 0.0)
  {
    return 0;
  }

  v3 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v3 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_16F530;
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = v2;
    v7 = sub_16E1CC();

    return v7;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    return sub_16E68C();
  }

  __break(1u);
  return result;
}

uint64_t sub_12AAB8(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(NSNumberFormatter) init];
  [v3 setNumberStyle:1];
  [v3 setMaximumFractionDigits:1];
  v4 = [objc_allocWithZone(NSNumber) initWithDouble:*&a1];
  v5 = [v3 stringFromNumber:v4];

  if (v5)
  {
    v6 = sub_16E1BC();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_12ABB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5665676172657661 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C615678616DLL && a2 == 0xE800000000000000;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C61566E696DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6563655274736F6DLL && a2 == 0xEF65756C6156746ELL;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C61566C61746F74 && a2 == 0xEA00000000006575;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
              if (v11 || (sub_16E6BC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x800000000017DE70 == a2;
                if (v12 || (sub_16E6BC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x65756C615678616DLL && a2 == 0xEE00676E69727453;
                  if (v13 || (sub_16E6BC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65756C61566E696DLL && a2 == 0xEE00676E69727453;
                    if (v14 || (sub_16E6BC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x800000000017F5E0 == a2;
                      if (v15 || (sub_16E6BC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x800000000017FED0 == a2;
                        if (v16 || (sub_16E6BC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 1953066613 && a2 == 0xE400000000000000;
                          if (v17 || (sub_16E6BC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x800000000017F620 == a2;
                            if (v18 || (sub_16E6BC() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000012 && 0x800000000017AE80 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_16E6BC();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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

uint64_t sub_12B050(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      return 0x5665676172657661;
    case 2:
      v4 = 1450729837;
      return v4 | 0x65756C6100000000;
    case 3:
      v4 = 1450076525;
      return v4 | 0x65756C6100000000;
    case 4:
      return 0x6563655274736F6DLL;
    case 5:
      return 0x6C61566C61746F74;
    case 6:
      return 0x6562614C65746164;
    case 7:
      return 0xD000000000000012;
    case 8:
      v3 = 1450729837;
      goto LABEL_18;
    case 9:
      v3 = 1450076525;
LABEL_18:
      result = v3 | 0x65756C6100000000;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 1953066613;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_12B240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12ABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12B268(uint64_t a1)
{
  v2 = sub_12B698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12B2A4(uint64_t a1)
{
  v2 = sub_12B698();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericQueryModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CADC0, &qword_1779C8);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  sub_2D20(a1, a1[3]);
  sub_12B698();
  sub_16E77C();
  v21[15] = 0;
  sub_16C11C();
  sub_12C5E4();
  sub_12BEE0(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_12C630(v3);
  if (!v2)
  {
    Model = type metadata accessor for GenericQueryModel(0);
    sub_669D0(Model[5]);
    v21[14] = 1;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[6]);
    v21[13] = 2;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[7]);
    v21[12] = 3;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[8]);
    v21[11] = 4;
    sub_20584();
    sub_16E62C();
    sub_669D0(Model[9]);
    v21[10] = 5;
    sub_20584();
    sub_16E62C();
    v14 = Model[10];
    v21[9] = 6;
    sub_16D5CC();
    sub_12C5FC();
    sub_12BEE0(v15, v16, &protocol conformance descriptor for SpeakableString);
    sub_12C630(v3 + v14);
    sub_66A40(Model[11]);
    v21[8] = 7;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[12]);
    v21[7] = 8;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[13]);
    v21[6] = 9;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[14]);
    v21[5] = 10;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[15]);
    v21[4] = 11;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[16]);
    v21[3] = 12;
    sub_20584();
    sub_16E61C();
    sub_66A40(Model[17]);
    v21[2] = 13;
    sub_20584();
    sub_16E61C();
    v17 = Model[18];
    v21[1] = 14;
    type metadata accessor for SnippetHeaderModel(0);
    sub_12C5CC();
    sub_12BEE0(v18, v19, &protocol conformance descriptor for SnippetHeaderModel);
    sub_12C630(v3 + v17);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_12B698()
{
  result = qword_1CADC8;
  if (!qword_1CADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CADC8);
  }

  return result;
}

uint64_t GenericQueryModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v87 = a2;
  v2 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  sub_13088();
  v88 = v4;
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v5);
  sub_433C();
  __chkstk_darwin(v6);
  sub_13088();
  v100 = v7;
  v8 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v8);
  sub_433C();
  __chkstk_darwin(v9);
  sub_13088();
  v101 = v10;
  v102 = sub_2440(&qword_1CADD0, &qword_1779D0);
  sub_42F0();
  v99 = v11;
  sub_433C();
  __chkstk_darwin(v12);
  sub_13088();
  v105 = v13;
  Model = type metadata accessor for GenericQueryModel(0);
  v15 = (Model - 8);
  __chkstk_darwin(Model);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_16C11C();
  sub_214C(v17, 1, 1, v98);
  sub_12C650(v15[7]);
  v97 = v18;
  *(v18 + 8) = 1;
  sub_12C650(v15[8]);
  v96 = v19;
  *(v19 + 8) = 1;
  sub_12C650(v15[9]);
  v95 = v20;
  *(v20 + 8) = 1;
  sub_12C650(v15[10]);
  v94 = v21;
  *(v21 + 8) = 1;
  sub_12C650(v15[11]);
  v92 = v22;
  *(v22 + 8) = 1;
  v23 = v15[12];
  v24 = sub_16D5CC();
  v91 = v23;
  v93 = v24;
  sub_214C(&v17[v23], 1, 1, v24);
  v25 = &v17[v15[13]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v90 = v25;
  v26 = &v17[v15[14]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v89 = v26;
  v27 = &v17[v15[15]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v17[v15[16]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v17[v15[17]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v17[v15[18]];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v17[v15[19]];
  *v31 = 0;
  v31[1] = 0;
  v32 = v15[20];
  v33 = type metadata accessor for SnippetHeaderModel(0);
  v104 = v17;
  v86 = v32;
  sub_214C(&v17[v32], 1, 1, v33);
  v34 = sub_2D20(v106, v106[3]);
  sub_12B698();
  v35 = v103;
  sub_16E76C();
  if (!v35)
  {
    v103 = v27;
    v85 = v28;
    v84 = v29;
    v36 = v100;
    v83 = v33;
    v37 = v99;
    v109 = 0;
    sub_12C5E4();
    v40 = sub_12BEE0(v38, v39, &protocol conformance descriptor for AppPunchout);
    v41 = v101;
    sub_12C65C(v98, &v109, v102, v42, v40);
    v44 = v41;
    v45 = v104;
    sub_1E634(v44, v104, &qword_1C63F0, &unk_1717F0);
    v108[5] = 1;
    v46 = sub_16E59C();
    sub_12C5BC(v46, v47);
    v108[4] = 2;
    sub_D7848();
    v48 = sub_16E59C();
    sub_12C5BC(v48, v49);
    v108[3] = 3;
    sub_D7848();
    v50 = sub_16E59C();
    sub_12C5BC(v50, v51);
    v108[2] = 4;
    sub_D7848();
    v52 = sub_16E59C();
    sub_12C5BC(v52, v53);
    v108[1] = 5;
    sub_D7848();
    v54 = sub_16E59C();
    sub_12C5BC(v54, v55);
    v108[0] = 6;
    sub_12C5FC();
    v58 = sub_12BEE0(v56, v57, &protocol conformance descriptor for SpeakableString);
    sub_12C65C(v93, v108, v102, v59, v58);
    sub_1E634(v36, v45 + v91, &qword_1C5800, &unk_16F510);
    v107[23] = 7;
    sub_D7848();
    v60 = sub_16E58C();
    v61 = v90;
    *v90 = v60;
    v61[1] = v62;
    v107[6] = 8;
    sub_D7848();
    v63 = sub_16E58C();
    v64 = v89;
    *v89 = v63;
    v64[1] = v65;
    v107[5] = 9;
    sub_D7848();
    v66 = sub_16E58C();
    v67 = v103;
    *v103 = v66;
    v67[1] = v68;
    v107[4] = 10;
    sub_D7848();
    v69 = sub_16E58C();
    v70 = v85;
    *v85 = v69;
    v70[1] = v71;
    v107[3] = 11;
    sub_D7848();
    v72 = sub_16E58C();
    v73 = v84;
    *v84 = v72;
    v73[1] = v74;
    v107[2] = 12;
    sub_D7848();
    *v30 = sub_16E58C();
    v30[1] = v75;
    v107[1] = 13;
    sub_D7848();
    *v31 = sub_16E58C();
    v31[1] = v76;
    v107[0] = 14;
    sub_12C5CC();
    v79 = sub_12BEE0(v77, v78, &protocol conformance descriptor for SnippetHeaderModel);
    v80 = v102;
    sub_12C65C(v83, v107, v102, v81, v79);
    (*(v37 + 8))(v34, v80);
    v82 = v104;
    sub_1E634(v88, &v104[v86], &dword_1C63F8, &qword_171800);
    sub_12BDEC(v82, v87);
  }

  sub_2D64(v106);
  return sub_12C55C();
}

uint64_t sub_12BDEC(uint64_t a1, uint64_t a2)
{
  Model = type metadata accessor for GenericQueryModel(0);
  (*(*(Model - 8) + 16))(a2, a1, Model);
  return a2;
}

uint64_t sub_12BEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12BF6C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_13:

    return sub_369C(v9, a2, v8);
  }

  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[10];
LABEL_12:
    v9 = a1 + v12;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v8 = sub_2440(&dword_1C63F8, &qword_171800);
    v12 = a3[18];
    goto LABEL_12;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_12C0C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_436C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    sub_436C();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[10];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[11] + 8) = a2;
        return;
      }

      v10 = sub_2440(&dword_1C63F8, &qword_171800);
      v14 = a4[18];
    }

    v11 = a1 + v14;
  }

  sub_214C(v11, a2, a2, v10);
}

void sub_12C1F0(uint64_t a1)
{
  sub_2029C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  if (v1 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_2029C(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
      if (v3 <= 0x3F)
      {
        sub_3A10(319, &qword_1C64C8, &type metadata for String);
        if (v4 <= 0x3F)
        {
          sub_2029C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GenericQueryModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x12C41CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12C458()
{
  result = qword_1CAEA0;
  if (!qword_1CAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEA0);
  }

  return result;
}

unint64_t sub_12C4B0()
{
  result = qword_1CAEA8;
  if (!qword_1CAEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEA8);
  }

  return result;
}

unint64_t sub_12C508()
{
  result = qword_1CAEB0;
  if (!qword_1CAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEB0);
  }

  return result;
}

uint64_t sub_12C55C()
{
  v1 = sub_12C5B0();
  v2(v1);
  sub_8B38();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_12C5BC(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_12C614()
{

  return type metadata accessor for GenericQueryModel(0);
}

uint64_t sub_12C630(uint64_t a1)
{

  return sub_16E63C();
}

uint64_t sub_12C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_16E5AC();
}

uint64_t BloodPressureLogModel.init(url:date:dateLabel:systolic:diastolic:loggedLabel:snippetHeaderModel:unitLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8@<D0>, uint64_t a9@<D1>, uint64_t a10)
{
  v65 = a6;
  v69 = a5;
  v70 = a1;
  v62 = a3;
  v63 = a4;
  v14 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v14);
  sub_433C();
  __chkstk_darwin(v15);
  sub_13088();
  v68 = v16;
  v17 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v17);
  sub_433C();
  __chkstk_darwin(v18);
  sub_13088();
  v66 = v19;
  v20 = sub_2440(&qword_1C5800, &unk_16F510);
  v21 = sub_4348(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v61 - v25;

  sub_16C11C();
  sub_8AB4();
  v64 = v27;
  sub_214C(v28, v29, v30, v27);
  v31 = type metadata accessor for BloodPressureLogModel(0);
  v32 = v31[8];
  v33 = type metadata accessor for SnippetHeaderModel(0);
  sub_8AB4();
  sub_214C(v34, v35, v36, v33);
  v67 = a2;
  sub_16D45C();
  v37 = sub_16D5CC();
  if (sub_369C(v26, 1, v37) == 1)
  {
    sub_8748(v26, &qword_1C5800, &unk_16F510);
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v40 = sub_16D5BC();
    v42 = v41;
    (*(*(v37 - 8) + 8))(v26, v37);
    v71 = v40;
    v72 = v42;
    sub_9854();
    v38 = sub_16E3FC();
    v39 = v43;
  }

  v61 = a10;
  v44 = (a7 + v31[5]);
  v45 = (a7 + v31[6]);
  v46 = (a7 + v31[7]);
  *v44 = v38;
  v44[1] = v39;
  *v45 = sub_12CF7C(a8, 0, a9, 0);
  v45[1] = v47;
  v48 = v63;
  *v46 = v62;
  v46[1] = v48;
  sub_8748(a7 + v32, &dword_1C63F8, &qword_171800);
  sub_83DD4(v69, a7 + v32, type metadata accessor for SnippetHeaderModel);
  sub_214C(a7 + v32, 0, 1, v33);
  sub_16D46C();
  if (sub_369C(v24, 1, v37) == 1)
  {
    sub_8748(v24, &qword_1C5800, &unk_16F510);
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = sub_16D5BC();
    v50 = v51;
    (*(*(v37 - 8) + 8))(v24, v37);
  }

  v52 = (a7 + v31[9]);
  v53 = (a7 + v31[10]);
  *v52 = v49;
  v52[1] = v50;
  v54 = v61;
  *v53 = v65;
  v53[1] = v54;
  v55 = sub_16BE9C();
  v56 = *(v55 - 8);
  v57 = v68;
  v58 = v70;
  (*(v56 + 16))(v68, v70, v55);
  sub_214C(v57, 0, 1, v55);
  v59 = v66;
  sub_12D058(v57);

  sub_12DE48();
  (*(v56 + 8))(v58, v55);
  sub_8748(v57, &qword_1C57F8, &unk_172510);
  sub_214C(v59, 0, 1, v64);
  return sub_1E634(v59, a7, &qword_1C63F0, &unk_1717F0);
}

uint64_t type metadata accessor for BloodPressureLogModel(uint64_t a1)
{
  result = qword_1CAF28;
  if (!qword_1CAF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BloodPressureLogModel.dateLabel.getter()
{
  type metadata accessor for BloodPressureLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.dateLabel.setter()
{
  sub_12E4E4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.dateLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.dataLabel.getter()
{
  type metadata accessor for BloodPressureLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.dataLabel.setter()
{
  sub_12E4E4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.dataLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.loggedLabel.getter()
{
  type metadata accessor for BloodPressureLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.loggedLabel.setter()
{
  sub_12E4E4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.loggedLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.snippetHeaderModel.setter()
{
  v2 = sub_12C5B0();
  v3 = type metadata accessor for BloodPressureLogModel(v2);
  return sub_1E634(v0, v1 + *(v3 + 32), &dword_1C63F8, &qword_171800);
}

uint64_t BloodPressureLogModel.snippetHeaderModel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.timeLabel.getter()
{
  type metadata accessor for BloodPressureLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.timeLabel.setter()
{
  sub_12E4E4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.timeLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t BloodPressureLogModel.unitLabel.getter()
{
  type metadata accessor for BloodPressureLogModel(0);
  sub_20658();
  return sub_8B9C();
}

uint64_t BloodPressureLogModel.unitLabel.setter()
{
  sub_12E4E4();
  result = sub_66A6C();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t BloodPressureLogModel.unitLabel.modify()
{
  v0 = sub_12C5B0();
  type metadata accessor for BloodPressureLogModel(v0);
  return sub_205FC();
}

uint64_t sub_12CF7C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_12D200(a1, a2 & 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_12D200(a3, a4 & 1);
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    sub_16E26C(v14);

    v15._countAndFlagsBits = v11;
    v15._object = v12;
    sub_16E26C(v15);

    return v8;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_12D058(uint64_t a1)
{
  v2 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = sub_16BE9C();
  sub_42F0();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86B0(a1, v5, &qword_1C57F8, &unk_172510);
  if (sub_369C(v5, 1, v6) == 1)
  {
    sub_8748(v5, &qword_1C57F8, &unk_172510);
    return sub_2068C(0xD00000000000001ELL, 0x800000000017AEE0);
  }

  else
  {
    (*(v8 + 32))(v11, v5, v6);
    v13 = sub_16BE5C();
    sub_2068C(v13, v14);
    return (*(v8 + 8))(v11, v6);
  }
}

uint64_t sub_12D200(uint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = result;
  v4 = trunc(*&result);
  if (*&result <= -9.22337204e18 || *&result >= 9.22337204e18 || v4 != *&result)
  {
    sub_2440(&qword_1C8C78, &unk_1747C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_16F530;
    *(v7 + 56) = &type metadata for Double;
    *(v7 + 64) = &protocol witness table for Double;
    *(v7 + 32) = v3;
    v2 = sub_16E1CC();

    return v2;
  }

  if ((~result & 0x7FF0000000000000) != 0)
  {
    return sub_16E68C();
  }

  __break(1u);
  return result;
}

uint64_t sub_12D318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68636E7550707061 && a2 == 0xEB0000000074756FLL;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6562614C65746164 && a2 == 0xE90000000000006CLL;
    if (v6 || (sub_16E6BC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C61746164 && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_16E6BC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x614C646567676F6CLL && a2 == 0xEB000000006C6562;
        if (v8 || (sub_16E6BC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000000017AE80 == a2;
          if (v9 || (sub_16E6BC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6562614C656D6974 && a2 == 0xE90000000000006CLL;
            if (v10 || (sub_16E6BC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6562614C74696E75 && a2 == 0xE90000000000006CLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_16E6BC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_12D568(char a1)
{
  result = 0x68636E7550707061;
  switch(a1)
  {
    case 1:
      v3 = 1702125924;
      goto LABEL_8;
    case 2:
      v3 = 1635017060;
      goto LABEL_8;
    case 3:
      return 0x614C646567676F6CLL;
    case 4:
      return 0xD000000000000012;
    case 5:
      v3 = 1701669236;
      goto LABEL_8;
    case 6:
      v3 = 1953066613;
LABEL_8:
      result = v3 | 0x6562614C00000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_12D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_12D318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_12D674@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7CA78();
  *a1 = result;
  return result;
}

uint64_t sub_12D69C(uint64_t a1)
{
  v2 = sub_12D968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_12D6D8(uint64_t a1)
{
  v2 = sub_12D968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BloodPressureLogModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1CAEB8, &qword_177BB0);
  sub_42F0();
  v7 = v6;
  sub_433C();
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  sub_2D20(a1, a1[3]);
  sub_12D968();
  sub_16E77C();
  v23[15] = 0;
  sub_16C11C();
  sub_12E4B4();
  sub_12DF2C(v11, v12, &protocol conformance descriptor for AppPunchout);
  sub_12E550(v3);
  if (!v2)
  {
    v13 = type metadata accessor for BloodPressureLogModel(0);
    v14 = sub_12E52C(v13[5]);
    v23[14] = 1;
    sub_12E500(v14);
    v15 = sub_12E52C(v13[6]);
    v23[13] = 2;
    sub_12E500(v15);
    v16 = sub_12E52C(v13[7]);
    v23[12] = 3;
    sub_12E500(v16);
    v17 = v13[8];
    v23[11] = 4;
    type metadata accessor for SnippetHeaderModel(0);
    sub_12E4CC();
    sub_12DF2C(v18, v19, &protocol conformance descriptor for SnippetHeaderModel);
    sub_12E550(v3 + v17);
    v20 = sub_12E52C(v13[9]);
    v23[10] = 5;
    sub_12E500(v20);
    v21 = sub_12E52C(v13[10]);
    v23[9] = 6;
    sub_12E500(v21);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_12D968()
{
  result = qword_1CAEC0;
  if (!qword_1CAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAEC0);
  }

  return result;
}

uint64_t BloodPressureLogModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v3);
  sub_433C();
  __chkstk_darwin(v4);
  sub_13088();
  v64 = v5;
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v6);
  sub_433C();
  __chkstk_darwin(v7);
  sub_13088();
  v65 = v8;
  v67 = sub_2440(&qword_1CAEC8, &qword_177BB8);
  sub_42F0();
  v63 = v9;
  sub_433C();
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for BloodPressureLogModel(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16C11C();
  sub_8AB4();
  v62 = v17;
  sub_214C(v18, v19, v20, v17);
  v21 = &v16[v14[7]];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v16[v14[8]];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v16[v14[9]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = v14[10];
  v25 = type metadata accessor for SnippetHeaderModel(0);
  v60 = v24;
  v61 = v25;
  sub_8AB4();
  sub_214C(v26, v27, v28, v29);
  v30 = &v16[v14[11]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = v14[12];
  v69 = v16;
  v32 = &v16[v31];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = a1[3];
  v70 = a1;
  sub_2D20(a1, v33);
  sub_12D968();
  v66 = v12;
  v34 = v68;
  sub_16E76C();
  if (!v34)
  {
    v68 = v23;
    v57 = v32;
    v58 = v30;
    v35 = v64;
    v75[1] = 0;
    sub_12E4B4();
    sub_12DF2C(v36, v37, &protocol conformance descriptor for AppPunchout);
    v38 = v65;
    sub_16E5AC();
    v40 = v69;
    sub_1E634(v38, v69, &qword_1C63F0, &unk_1717F0);
    v75[0] = 1;
    *v21 = sub_12E538(v75);
    v21[1] = v41;
    v74 = 2;
    *v22 = sub_12E538(&v74);
    v22[1] = v42;
    v73 = 3;
    v43 = sub_12E538(&v73);
    v44 = v68;
    *v68 = v43;
    v44[1] = v45;
    v72[1] = 4;
    sub_12E4CC();
    sub_12DF2C(v46, v47, &protocol conformance descriptor for SnippetHeaderModel);
    sub_16E5AC();
    sub_1E634(v35, v40 + v60, &dword_1C63F8, &qword_171800);
    v72[0] = 5;
    v48 = sub_12E538(v72);
    v49 = v58;
    *v58 = v48;
    v49[1] = v50;
    v71 = 6;
    v51 = sub_12E538(&v71);
    v53 = v52;
    v54 = sub_12E51C();
    v55(v54);
    v56 = v57;
    *v57 = v51;
    v56[1] = v53;
    sub_83DD4(v40, v59, type metadata accessor for BloodPressureLogModel);
  }

  sub_2D64(v70);
  return sub_12DE48();
}

uint64_t sub_12DE48()
{
  v1 = sub_12C5B0();
  v2(v1);
  sub_8B38();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_12DF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_12DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C63F0, &unk_1717F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_369C(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2440(&dword_1C63F8, &qword_171800);
    v8 = a1 + *(a3 + 32);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_12E0C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C63F0, &unk_1717F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20) + 8) = a2;
      return result;
    }

    v9 = sub_2440(&dword_1C63F8, &qword_171800);
    v10 = a1 + *(a4 + 32);
  }

  return sub_214C(v10, a2, a2, v9);
}

uint64_t sub_12E1AC(uint64_t a1)
{
  sub_BBD6C(319, &qword_1C64B0, &type metadata accessor for AppPunchout);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_BBD1C();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_BBD6C(319, &qword_1C64C0, type metadata accessor for SnippetHeaderModel);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for BloodPressureLogModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x12E374);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_12E3B0()
{
  result = qword_1CAF78;
  if (!qword_1CAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF78);
  }

  return result;
}

unint64_t sub_12E408()
{
  result = qword_1CAF80;
  if (!qword_1CAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF80);
  }

  return result;
}

unint64_t sub_12E460()
{
  result = qword_1CAF88;
  if (!qword_1CAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CAF88);
  }

  return result;
}

uint64_t sub_12E4E4()
{

  return type metadata accessor for BloodPressureLogModel(0);
}

uint64_t sub_12E500(uint64_t a1)
{

  return sub_16E61C();
}

uint64_t sub_12E538(uint64_t a1)
{

  return sub_16E58C();
}

uint64_t sub_12E550(uint64_t a1)
{

  return sub_16E63C();
}

uint64_t sub_12E578(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 313))
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

uint64_t sub_12E5B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12E65C(uint64_t a1, uint64_t a2)
{
  sub_92990();

  return sub_16C33C();
}

uint64_t sub_12E6B0()
{
  sub_8A88();
  v1[104] = v0;
  v1[103] = v2;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  v1[105] = v3;
  sub_4348(v3);
  v1[106] = sub_8BC0();
  v4 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v4);
  v1[107] = sub_8C38();
  v1[108] = swift_task_alloc();
  v5 = sub_16D63C();
  sub_4348(v5);
  v1[109] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[110] = v6;
  sub_888C(v6);
  v1[111] = v7;
  v1[112] = sub_8C38();
  v1[113] = swift_task_alloc();
  v8 = sub_16BD9C();
  v1[114] = v8;
  sub_888C(v8);
  v1[115] = v9;
  v1[116] = sub_8BC0();
  v10 = sub_16BF5C();
  v1[117] = v10;
  sub_888C(v10);
  v1[118] = v11;
  v1[119] = sub_8C38();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v12 = sub_17960();

  return _swift_task_switch(v12);
}

uint64_t sub_12E8B4()
{
  v1 = *(v0 + 832);
  *(v0 + 1072) = *(v1 + 248);
  sub_16D78C();
  v2 = sub_12F788();
  *(v0 + 1000) = v2;
  sub_2D20((v1 + 40), *(v1 + 64));
  v3 = sub_387CC();
  v4(v3);
  sub_2D20((v0 + 728), *(v0 + 752));
  sub_387CC();
  LOBYTE(v1) = sub_16C41C();
  sub_2D64((v0 + 728));
  if ((v1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v2 startDate];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  sub_16BF3C();

  v7 = [v2 endDate];
  if (!v7)
  {
    (*(*(v0 + 944) + 8))(*(v0 + 992), *(v0 + 936));
    goto LABEL_7;
  }

  v8 = *(v0 + 984);
  v9 = *(v0 + 976);
  v46 = *(v0 + 968);
  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 928);
  v13 = *(v0 + 920);
  v47 = *(v0 + 912);
  v45 = *(v0 + 992);
  sub_16BF3C();

  v14 = *(v10 + 16);
  v14(v9, v45, v11);
  v14(v46, v8, v11);
  sub_16BD5C();
  LOBYTE(v9) = sub_16DADC();
  (*(v13 + 8))(v12, v47);
  if (v9)
  {
    v15 = *(v0 + 992);
    v16 = *(v0 + 936);
    v17 = *(*(v0 + 944) + 8);
    v17(*(v0 + 984), v16);
    v17(v15, v16);
LABEL_7:
    v18 = *(v0 + 904);
    v19 = *(v0 + 888);
    v20 = *(v0 + 880);
    v21 = sub_16DBBC();
    *(v0 + 1008) = v21;
    sub_8B48(v21, v0 + 768);
    v22 = *(v19 + 16);
    *(v0 + 1016) = v22;
    *(v0 + 1024) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v21, v20);
    v23 = v2;
    v24 = sub_16DBDC();
    LOBYTE(v20) = sub_16E36C();

    if (os_log_type_enabled(v24, v20))
    {
      v25 = sub_8BD8();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      sub_13582C();
      _os_log_impl(v28, v29, v30, v31, v25, 0xCu);
      sub_8748(v26, &qword_1C57B8, &qword_1715A0);
      sub_8A2C(v26);
      sub_8A2C(v25);
    }

    v32 = *(v0 + 888);
    v33 = *(v0 + 832);

    *(v0 + 1032) = *(v32 + 8);
    *(v0 + 1040) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34 = sub_4B4EC();
    v35(v34);
    v36 = *(v33 + 240);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 816;
    *(v0 + 24) = sub_12EE08;
    v37 = swift_continuation_init();
    *(v0 + 720) = sub_2440(&qword_1CAF90, &qword_177EC8);
    *(v0 + 696) = v37;
    *(v0 + 664) = _NSConcreteStackBlock;
    *(v0 + 672) = 1107296256;
    *(v0 + 680) = sub_53C4;
    *(v0 + 688) = &unk_1BCE80;
    [v36 handleGetBloodPressure:v23 completion:v0 + 664];

    return _swift_continuation_await(v0 + 16);
  }

  v38 = *(v0 + 992);
  v39 = *(v0 + 944);
  v40 = *(v0 + 936);
  sub_16D6FC();
  sub_BC848((v0 + 504));
  sub_BC9FC();
  sub_16C4EC();

  sub_D45A0(v0 + 504);
  v41 = *(v39 + 8);
  v42 = sub_387CC();
  v41(v42);
  (v41)(v38, v40);
  sub_126154();

  sub_C9BC();

  return v43();
}

uint64_t sub_12EE08()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_12EED8()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 896);
  v4 = *(v0 + 880);
  v5 = *(v0 + 816);
  *(v0 + 1048) = v5;
  sub_8B48(v2, v0 + 792);
  (v1)(v3, v2, v4);
  v6 = v5;
  v7 = sub_16DBDC();
  LOBYTE(v3) = sub_16E36C();

  if (os_log_type_enabled(v7, v3))
  {
    v8 = sub_8BD8();
    v1 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v6;
    *v1 = v6;
    v9 = v6;
    sub_13582C();
    _os_log_impl(v10, v11, v12, v13, v8, 0xCu);
    sub_8748(v1, &qword_1C57B8, &qword_1715A0);
    sub_8A2C(v1);
    sub_8A2C(v8);
  }

  v14 = (*(v0 + 1032))(*(v0 + 896), *(v0 + 880));
  v15 = (*(&stru_20.maxprot + (swift_isaMask & *v6)))(v14);
  if (v15 != 4)
  {
    if (v15 == 102)
    {
      v23 = *(v0 + 1000);
      v24 = *(v0 + 912);
      sub_16D6FC();
      sub_8AB4();
      sub_214C(v25, v26, v27, v24);
      v28 = [v23 startDate];
      if (v28)
      {
        v29 = v28;
        v30 = *(v0 + 1000);
        sub_16BF3C();

        v31 = [v30 endDate];
        if (v31)
        {
          v32 = v31;
          v33 = *(v0 + 976);
          v34 = *(v0 + 968);
          v35 = *(v0 + 960);
          v36 = *(v0 + 952);
          v37 = *(v0 + 944);
          v38 = *(v0 + 936);
          v62 = *(v0 + 864);
          v63 = *(v0 + 912);
          v61 = *(v0 + 856);
          sub_16BF3C();

          v39 = *(v37 + 16);
          v39(v33, v35, v38);
          v39(v34, v36, v38);
          sub_4B4EC();
          sub_16BD5C();
          v40 = *(v37 + 8);
          v40(v36, v38);
          v40(v35, v38);
          v1 = &dword_16F320;
          sub_8748(v62, &qword_1C5690, &dword_16F320);
          sub_388E4();
          sub_214C(v41, v42, v43, v63);
          sub_86FC(v61, v62, &qword_1C5690, &dword_16F320);
        }

        else
        {
          (*(*(v0 + 944) + 8))(*(v0 + 960), *(v0 + 936));
        }
      }

      v64 = *(v0 + 1000);
      v49 = *(v0 + 864);
      v50 = *(v0 + 848);
      v51 = *(v0 + 840);
      v52 = *(v0 + 832);
      v53 = *(v52 + 312);
      sub_86B0(v49, &v50[v51[5]], &qword_1C5690, &dword_16F320);
      sub_8388(v52 + 40, &v50[v51[6]]);
      sub_8284(v52 + 80, &v50[v51[7]]);
      v54 = sub_16C58C();
      sub_38964(v54);
      v55 = sub_16C57C();
      v56 = &v50[v51[8]];
      v56[3] = v1;
      v56[4] = &protocol witness table for ResponseFactory;
      *v56 = v55;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v57 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v58 = sub_16D58C();
      *v50 = v53;
      *&v50[v51[9]] = v57;
      *&v50[v51[10]] = v58;
      sub_1352B8(&qword_1C57C8, type metadata accessor for UnavailableDataFlow, &unk_179388);
      sub_16C4EC();

      sub_8748(v49, &qword_1C5690, &dword_16F320);
      sub_135260(v50, type metadata accessor for UnavailableDataFlow);
    }

    else if (v15 == 101)
    {
      v16 = *(v0 + 1000);
      v17 = *(v0 + 832);
      sub_16D76C();
      v18 = *(v17 + 312);
      sub_8388(v17 + 40, v0 + 88);
      sub_8284(v17 + 80, v0 + 128);
      v19 = sub_16C58C();
      sub_38964(v19);
      v20 = sub_16C57C();
      *(v0 + 312) = v1;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v20;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v21 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v22 = sub_16D58C();
      *(v0 + 80) = v18;
      *(v0 + 328) = v21;
      *(v0 + 336) = v22;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v47 = *(v0 + 1000);
      v48 = *(v0 + 832);
      sub_16D6FC();
      sub_8284(v48 + 80, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    sub_126154();

    sub_C9BC();
    sub_841E0();

    __asm { BRAA            X1, X16 }
  }

  v44 = swift_task_alloc();
  *(v0 + 1056) = v44;
  *v44 = v0;
  v44[1] = sub_12F58C;
  sub_C98D8(*(v0 + 1000));
  sub_841E0();

  return sub_12FD90();
}

uint64_t sub_12F58C()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1064) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

void sub_12F678()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1000);
  sub_16D72C();
  sub_16C4FC();

  sub_126154();

  sub_C9BC();
  sub_841E0();

  __asm { BRAA            X1, X16 }
}

id sub_12F788()
{
  sub_16C0BC();
  sub_42F0();
  v67 = v2;
  v68 = v1;
  __chkstk_darwin(v1);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2440(&qword_1C57E0, &unk_171C60);
  v5 = sub_4348(v4);
  __chkstk_darwin(v5);
  sub_38634();
  v75 = v6;
  __chkstk_darwin(v7);
  v71 = &v66 - v8;
  v9 = sub_16BF5C();
  sub_42F0();
  v70 = v10;
  __chkstk_darwin(v11);
  sub_38634();
  v74 = v12;
  v14 = __chkstk_darwin(v13);
  v16 = &v66 - v15;
  __chkstk_darwin(v14);
  v18 = &v66 - v17;
  v19 = sub_2440(&qword_1C5690, &dword_16F320);
  v20 = sub_4348(v19);
  __chkstk_darwin(v20);
  sub_38634();
  v72 = v21;
  v23 = __chkstk_darwin(v22);
  v25 = &v66 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v66 - v27;
  __chkstk_darwin(v26);
  v30 = &v66 - v29;
  v73 = [objc_allocWithZone(sub_16D95C()) init];
  v32 = *(v0 + 24);
  v31 = *(v0 + 32);
  sub_2D20(v0, v32);
  v33 = v32;
  v34 = v30;
  (*(v31 + 32))(v33, v31);
  sub_125AB4(v28, *(v0 + 312), v30);
  sub_8748(v28, &qword_1C5690, &dword_16F320);
  sub_86B0(v30, v25, &qword_1C5690, &dword_16F320);
  v35 = sub_16BD9C();
  v36 = sub_369C(v25, 1, v35);
  v69 = v16;
  if (v36 == 1)
  {
    sub_8748(v25, &qword_1C5690, &dword_16F320);
    v37 = v71;
    sub_8AB4();
    sub_214C(v38, v39, v40, v9);
    sub_16BF4C();
    v41 = v66;
    sub_16C08C();
    sub_16C02C();
    (*(v67 + 8))(v41, v68);
    v42 = v70;
    (*(v70 + 8))(v16, v9);
    if (sub_369C(v37, 1, v9) != 1)
    {
      sub_8748(v37, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    v43 = v71;
    sub_16BD7C();
    (*(*(v35 - 8) + 8))(v25, v35);
    sub_388E4();
    sub_214C(v44, v45, v46, v9);
    v42 = v70;
    (*(v70 + 32))(v18, v43, v9);
  }

  isa = sub_16BEEC().super.isa;
  v48 = *(v42 + 8);
  v49 = sub_4B4A4();
  v48(v49);
  v50 = v73;
  [v73 setStartDate:isa];

  v51 = v72;
  sub_86B0(v34, v72, &qword_1C5690, &dword_16F320);
  v52 = sub_A76DC();
  v54 = sub_369C(v52, v53, v35);
  v55 = v75;
  if (v54 == 1)
  {
    sub_8748(v51, &qword_1C5690, &dword_16F320);
    sub_8AB4();
    sub_214C(v56, v57, v58, v9);
    sub_16BF4C();
    v59 = v74;
    sub_7B6B8(v74);
    v60 = sub_C9C8();
    v48(v60);
    if (sub_369C(v55, 1, v9) != 1)
    {
      sub_8748(v55, &qword_1C57E0, &unk_171C60);
    }
  }

  else
  {
    sub_16BD4C();
    (*(*(v35 - 8) + 8))(v51, v35);
    sub_388E4();
    sub_214C(v61, v62, v63, v9);
    v59 = v74;
    (*(v42 + 32))(v74, v55, v9);
  }

  v64 = sub_16BEEC().super.isa;
  (v48)(v59, v9);
  [v50 setEndDate:v64];

  sub_8748(v34, &qword_1C5690, &dword_16F320);
  return v50;
}

uint64_t sub_12FD90()
{
  sub_8A88();
  v1[46] = v2;
  v1[47] = v0;
  v1[45] = v3;
  v4 = sub_16C46C();
  v1[48] = v4;
  sub_888C(v4);
  v1[49] = v5;
  v1[50] = sub_8C38();
  v1[51] = swift_task_alloc();
  v6 = sub_16C7BC();
  v1[52] = v6;
  sub_888C(v6);
  v1[53] = v7;
  v1[54] = sub_8BC0();
  v8 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v8);
  v1[55] = sub_8BC0();
  v9 = sub_16DBEC();
  v1[56] = v9;
  sub_888C(v9);
  v1[57] = v10;
  v1[58] = sub_8C38();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v11 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v11);
  v1[61] = sub_8C38();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v12 = sub_16BF5C();
  v1[65] = v12;
  sub_888C(v12);
  v1[66] = v13;
  v1[67] = sub_8C38();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v14 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v14);
  v1[71] = sub_8C38();
  v1[72] = swift_task_alloc();
  v15 = sub_17960();

  return _swift_task_switch(v15);
}

uint64_t sub_130018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_5E1BC();
  a27 = v29;
  a28 = v30;
  sub_5DC5C();
  a26 = v28;
  v130 = (v28 + 360);
  v31 = *(v28 + 360);
  v32 = sub_16BD9C();
  sub_8AB4();
  sub_214C(v33, v34, v35, v32);
  v36 = &off_1C4000;
  v37 = [v31 startDate];
  v38 = &off_1C4000;
  if (v37)
  {
    v39 = v37;
    v40 = *(v28 + 360);
    sub_16BF3C();

    v41 = [v40 endDate];
    if (v41)
    {
      v42 = v41;
      v129 = *(v28 + 576);
      v43 = *(v28 + 568);
      v44 = *(v28 + 560);
      v132 = v32;
      v45 = *(v28 + 552);
      v46 = *(v28 + 544);
      v47 = *(v28 + 536);
      v48 = *(v28 + 528);
      v49 = *(v28 + 520);
      sub_16BF3C();

      v50 = *(v48 + 16);
      v50(v46, v44, v49);
      v50(v47, v45, v49);
      sub_16BD5C();
      v51 = *(v48 + 8);
      v51(v45, v49);
      v51(v44, v49);
      v36 = &off_1C4000;
      sub_8748(v129, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v52, v53, v54, v132);
      v38 = &off_1C4000;
      sub_86FC(v43, v129, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v28 + 528) + 8))(*(v28 + 560), *(v28 + 520));
    }
  }

  v55 = [*v130 v36[458]];
  if (v55)
  {
    v56 = v55;
    sub_16BF3C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = *(v28 + 360);
  v59 = 1;
  sub_214C(*(v28 + 512), v57, 1, *(v28 + 520));
  v60 = [v58 v38[459]];
  if (v60)
  {
    v61 = v60;
    sub_16BF3C();

    v59 = 0;
  }

  v62 = *(v28 + 368);
  v63 = 1;
  sub_214C(*(v28 + 504), v59, 1, *(v28 + 520));
  v64 = [v62 sampleStartDate];
  if (v64)
  {
    v65 = v64;
    sub_16BF3C();

    v63 = 0;
  }

  v66 = *(v28 + 368);
  v67 = 1;
  sub_214C(*(v28 + 496), v63, 1, *(v28 + 520));
  v68 = [v66 sampleEndDate];
  if (v68)
  {
    v69 = v68;
    sub_16BF3C();

    v67 = 0;
  }

  v70 = *(v28 + 480);
  v71 = *(v28 + 448);
  v72 = *(v28 + 456);
  sub_214C(*(v28 + 488), v67, 1, *(v28 + 520));
  type metadata accessor for WellnessTime(0);
  sub_1356E8();
  sub_15BF80();
  v74 = v73;
  *(v28 + 584) = v73;
  v75 = sub_16DBBC();
  sub_8B48(v75, v28 + 216);
  v128 = *(v72 + 16);
  v128(v70, v75, v71);

  v76 = sub_16DBDC();
  v77 = sub_16E36C();

  v78 = os_log_type_enabled(v76, v77);
  v79 = *(v28 + 456);
  v133 = v74;
  if (v78)
  {
    v80 = sub_8BD8();
    v81 = swift_slowAlloc();
    a17 = v81;
    *v80 = 136315138;
    *(v28 + 352) = v74;

    v82 = sub_16E1EC();
    v84 = sub_3AB7C(v82, v83, &a17);

    *(v80 + 4) = v84;
    _os_log_impl(&def_259DC, v76, v77, "Constructed wellness Time:  %s", v80, 0xCu);
    sub_2D64(v81);
    sub_8A2C(v81);
    sub_8A2C(v80);
  }

  v85 = *(v79 + 8);
  v86 = sub_387CC();
  v85(v86);
  sub_12093C(*(*(v28 + 376) + 312), *(v28 + 576), *(v28 + 440));
  *(v28 + 200) = &type metadata for WellnessFeatureFlagsKey;
  *(v28 + 208) = sub_3736C();
  *(v28 + 176) = 4;
  v87 = sub_16C86C();
  sub_2D64((v28 + 176));
  if (v87)
  {
    v88 = swift_task_alloc();
    *(v28 + 592) = v88;
    *v88 = v28;
    v88[1] = sub_130810;
    sub_C98D8(*(v28 + 360));
    sub_5E1A0();

    return sub_13120C(v89, v90, v91, v92);
  }

  else
  {
    v95 = sub_15EE1C();
    if (v95 < 3u || (v95 = sub_15C380(v95), (v95 & 1) != 0))
    {
      sub_13565C(v95, v28 + 264);
      v96 = sub_6B5B8();
      (v128)(v96);
      v97 = sub_16DBDC();
      v98 = sub_16E36C();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = sub_1BA38();
        *v99 = 0;
        sub_13582C();
        _os_log_impl(v100, v101, v102, v103, v99, 2u);
        sub_8A2C(v99);
      }

      v104 = *(v28 + 472);
      v105 = *(v28 + 448);
      v106 = *(v28 + 440);
      v107 = *(v28 + 376);
      v131 = *v130;

      (v85)(v104, v105);
      sub_2D20((v107 + 200), *(v107 + 224));
      v108 = swift_task_alloc();
      *(v28 + 608) = v108;
      v108[1].i64[0] = v107;
      v108[1].i64[1] = v133;
      v108[2] = vextq_s8(v131, v131, 8uLL);
      v108[3].i64[0] = v106;
      v109 = swift_task_alloc();
      *(v28 + 616) = v109;
      *v109 = v28;
      v109[1] = sub_130A54;
      sub_5E1A0();

      return sub_6FAA4();
    }

    else
    {
      sub_13565C(v95, v28 + 240);
      v111 = sub_6B5B8();
      (v128)(v111);
      v112 = sub_16DBDC();
      v113 = sub_16E36C();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = sub_1BA38();
        *v114 = 0;
        sub_13582C();
        _os_log_impl(v115, v116, v117, v118, v114, 2u);
        sub_8A2C(v114);
      }

      v119 = *(v28 + 464);
      v121 = *(v28 + 440);
      v120 = *(v28 + 448);
      v123 = *(v28 + 368);
      v122 = *(v28 + 376);
      v124 = *(v28 + 360);

      (v85)(v119, v120);
      sub_2D20((v122 + 200), *(v122 + 224));
      v125 = swift_task_alloc();
      *(v28 + 624) = v125;
      v125[2] = v133;
      v125[3] = v123;
      v125[4] = v122;
      v125[5] = v124;
      v125[6] = v121;
      v126 = swift_task_alloc();
      *(v28 + 632) = v126;
      *v126 = v28;
      v126[1] = sub_130EE0;
      sub_5E1A0();

      return sub_6FE54();
    }
  }
}

uint64_t sub_130810()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 600) = v3;

  v4 = sub_17960();

  return _swift_task_switch(v4);
}

uint64_t sub_1308FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v22 = v20[72];
  v20[43] = v20[75];
  sub_16C28C();
  v36 = sub_16C32C();

  sub_8748(v22, &qword_1C5690, &dword_16F320);
  sub_1354C4();
  v34 = v24;
  v35 = v23;
  sub_8748(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, v34, v35, v36, a18, a19, a20);
}

uint64_t sub_130A54()
{
  sub_8A60();
  *v3 = v2;
  v2[36] = v1;
  v2[37] = v4;
  v2[38] = v0;
  sub_38A38();
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  sub_38A38();
  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_130B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v27 = sub_13569C(*(v22 + 296));
  sub_16C43C();
  v28 = sub_135784();
  v29(v28);
  sub_1355F4();
  (*(v23 + 8))(v20, v25);
  v30 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  *(v22 + 336) = sub_135740();
  sub_16C28C();
  v43 = sub_16C32C();

  (*(v26 + 8))(v21, a15);
  sub_8748(a17, &qword_1C5690, &dword_16F320);

  sub_1354C4();
  v42 = v31;
  v44 = v32;
  sub_8748(v24, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_130D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v22 = *(v20 + 576);
  sub_8284(*(v20 + 376) + 80, v20 + 16);
  sub_82E0();
  v36 = sub_16C32C();

  sub_8334(v20 + 16);
  sub_8748(v22, &qword_1C5690, &dword_16F320);
  sub_1354C4();
  v34 = v24;
  v35 = v23;
  sub_8748(v21, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, v34, v35, v36, a18, a19, a20);
}

uint64_t sub_130EE0()
{
  sub_8A60();
  *v3 = v2;
  v2[39] = v1;
  v2[40] = v4;
  v2[41] = v0;
  sub_38A38();
  v5 = *v1;
  sub_C990();
  *v6 = v5;

  sub_38A38();
  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_131018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_5E1BC();
  sub_5DC5C();
  v27 = sub_13569C(*(v22 + 320));
  sub_16C43C();
  v28 = sub_135784();
  v29(v28);
  sub_1355F4();
  (*(v23 + 8))(v20, v25);
  v30 = [v27 patternId];
  sub_16E1BC();

  sub_16C76C();
  *(v22 + 336) = sub_135740();
  sub_16C28C();
  v43 = sub_16C32C();

  (*(v26 + 8))(v21, a15);
  sub_8748(a17, &qword_1C5690, &dword_16F320);

  sub_1354C4();
  v42 = v31;
  v44 = v32;
  sub_8748(v24, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_5E1A0();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, v42, v43, v44, a18, a19, a20);
}

uint64_t sub_13120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[86] = v4;
  v5[85] = a4;
  v5[84] = a3;
  v5[83] = a2;
  v5[82] = a1;
  sub_2440(&qword_1C63F0, &unk_1717F0);
  v5[87] = swift_task_alloc();
  sub_2440(&dword_1C63F8, &qword_171800);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  sub_2440(&qword_1C57F8, &unk_172510);
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  sub_2440(&qword_1C5800, &unk_16F510);
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = type metadata accessor for BloodPressureQueryModel(0);
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = type metadata accessor for SnippetHeaderModel(0);
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  v6 = sub_16BF5C();
  v5[108] = v6;
  v5[109] = *(v6 - 8);
  v5[110] = swift_task_alloc();
  sub_2440(&qword_1C57E0, &unk_171C60);
  v5[111] = swift_task_alloc();
  v5[112] = swift_task_alloc();
  v5[113] = swift_task_alloc();
  v5[114] = swift_task_alloc();
  v5[115] = swift_task_alloc();
  v7 = sub_16DBEC();
  v5[116] = v7;
  v5[117] = *(v7 - 8);
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v8 = sub_16D5CC();
  v5[123] = v8;
  v5[124] = *(v8 - 8);
  v5[125] = swift_task_alloc();

  return _swift_task_switch(sub_131608);
}

uint64_t sub_131608()
{
  v2 = sub_83A4C(*(v1 + 664));
  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = *(v1 + 1000);
      v6 = *(v1 + 992);
      v7 = *(v1 + 984);
      sub_16E23C();

      goto LABEL_10;
    }
  }

  v8 = sub_16DBBC();
  sub_8B48(v8, v1 + 456);
  v9 = sub_6B5B8();
  v10(v9);
  v11 = sub_16DBDC();
  v12 = sub_16E36C();
  if (sub_1BA1C(v12))
  {
    v13 = sub_1BA38();
    sub_1BA50(v13);
    sub_1B9D0(&def_259DC, v14, v15, "#GetBloodPressureFlow: intentResponse.unit is empty");
    sub_1BA00();
  }

  v5 = *(v1 + 1000);
  v6 = *(v1 + 992);
  v7 = *(v1 + 984);
  v0 = *(v1 + 976);
  v16 = *(v1 + 936);
  v17 = *(v1 + 928);

  (*(v16 + 8))(v0, v17);
  sub_16E23C();
LABEL_10:
  sub_16D5BC();
  sub_680F8();
  v18 = *(v6 + 8);
  v18(v5, v7);
  *(v1 + 1008) = v18;
  v19 = *(v1 + 656);
  *(v1 + 1016) = v0;
  *(v1 + 1024) = v5;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v20 = [v19 startDate];
  if (v20)
  {
    v21 = v20;
    sub_16BF3C();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v1 + 864);
  sub_214C(*(v1 + 912), v22, 1, v23);
  v24 = sub_8B9C();
  sub_86FC(v24, v25, v26, v27);
  v28 = sub_A76DC();
  v30 = sub_369C(v28, v29, v23);
  v31 = *(v1 + 920);
  if (v30)
  {
    sub_8748(*(v1 + 920), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v32 = sub_135678();
    v33(v32);
    sub_8748(v31, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v34 = sub_387CC();
    v35(v34);
  }

  v36 = *(v1 + 656);
  sub_16D35C();

  v37 = [v36 endDate];
  if (v37)
  {
    v38 = v37;
    sub_16BF3C();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = *(v1 + 904);
  v41 = *(v1 + 896);
  v42 = *(v1 + 864);
  sub_214C(v41, v39, 1, v42);
  sub_86FC(v41, v40, &qword_1C57E0, &unk_171C60);
  v43 = sub_A76DC();
  LODWORD(v41) = sub_369C(v43, v44, v42);
  v45 = *(v1 + 904);
  if (v41)
  {
    sub_8748(*(v1 + 904), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v46 = sub_135678();
    v47(v46);
    sub_8748(v45, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v48 = sub_387CC();
    v49(v48);
  }

  v50 = *(v1 + 656);
  sub_16D34C();

  v51 = sub_16D36C();
  *(v1 + 1032) = v51;

  v52 = [v50 startDate];
  if (v52)
  {
    sub_16BF3C();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = *(v1 + 888);
  sub_214C(v54, v53, 1, *(v1 + 864));
  sub_8748(v54, &qword_1C57E0, &unk_171C60);
  v55 = swift_task_alloc();
  *(v1 + 1040) = v55;
  *v55 = v1;
  v55[1] = sub_131AB0;
  v56 = *(v1 + 672);

  return sub_6789C(v51, v52 == 0, v56);
}

uint64_t sub_131AB0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1048) = v3;
  *(v1 + 1056) = v4;

  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_131BA0()
{
  sub_8A88();
  v1 = *(*(v0 + 688) + 312);
  *(v0 + 1152) = v1;
  sub_208C0(v1);
  sub_680F8();
  *(v0 + 1064) = v2;
  v3 = swift_task_alloc();
  *(v0 + 1072) = v3;
  *v3 = v0;
  v3[1] = sub_131C44;
  sub_C9C8();

  return sub_66E84();
}

uint64_t sub_131C44()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v1[72] = v0;
  v1[73] = v3;
  v1[74] = v4;
  v5 = *v0;
  sub_C990();
  *v6 = v5;
  *(v8 + 1080) = v7;

  v9 = sub_17960();

  return _swift_task_switch(v9);
}

void sub_131D50()
{
  sub_13580C();
  if (!*(v0 + 1080))
  {
    __break(1u);
    goto LABEL_22;
  }

  v1 = *(v0 + 856);
  v2 = *(v0 + 832);
  v3 = *(v0 + 1152);

  sub_16E23C();

  v4 = sub_25948(v3);
  v6 = v5;
  v7 = sub_208C0(v3);
  v8 = (v1 + *(v2 + 20));
  *v8 = v4;
  v8[1] = v6;
  v9 = (v1 + *(v2 + 24));
  *v9 = v7;
  v9[1] = v10;
  v11 = sub_15EE1C();
  if (v11 < 3u || (sub_15C380(v11) & 1) != 0)
  {
    v12 = swift_task_alloc();
    *(v0 + 1088) = v12;
    *v12 = v0;
    v12[1] = sub_132648;
    sub_C98D8(0x63696C6F74737973);
    sub_1357B4();

    sub_66A84(v13, v14);
    return;
  }

  [*(v0 + 664) systolic];
  if (v16 == 0.0 || ([*(v0 + 664) diastolic], v17 == 0.0))
  {
    v18 = *(v0 + 968);
    v19 = *(v0 + 936);
    v20 = *(v0 + 928);

    v21 = sub_16DBBC();
    sub_8B48(v21, v0 + 552);
    (*(v19 + 16))(v18, v21, v20);
    v22 = sub_16DBDC();
    v23 = sub_16E37C();
    if (sub_1BA1C(v23))
    {
      v24 = sub_1BA38();
      sub_1BA50(v24);
      sub_1B9D0(&def_259DC, v25, v26, "#GetBloodPressureFlow: systolic or diastolic values is/are empty");
      sub_1BA00();
    }

    v27 = *(v0 + 968);
    v28 = *(v0 + 936);
    v29 = *(v0 + 928);
    v30 = *(v0 + 856);
    v31 = *(v0 + 688);

    (*(v28 + 8))(v27, v29);
    sub_8284(v31 + 80, v0 + 176);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 176);
    sub_1353D8();
    sub_135260(v30, v32);

    sub_5D948();
    sub_1357B4();

    __asm { BRAA            X2, X16 }
  }

  v35 = *(v0 + 1056);
  v36 = *(v0 + 664);
  v37 = *(v0 + 1152);
  [v36 systolic];
  v39 = v38;
  v40 = sub_83A4C(v36);
  v42 = sub_99F0C(v40, v41, v37, v39);

  [v36 diastolic];
  v44 = v43;
  v45 = sub_83A4C(v36);
  v47 = sub_99F0C(v45, v46, v37, v44);

  if (!v35)
  {
LABEL_22:
    __break(1u);
    return;
  }

  sub_135818();
  v124 = v48;
  v126 = v49;
  v50 = *(v0 + 984);
  v132 = *(v0 + 856);
  v123 = *(v0 + 832);
  v51 = *(v0 + 792);
  v52 = *(v0 + 768);
  v53 = *(v0 + 744);
  v127 = *(v0 + 736);
  v54 = *(v0 + 720);
  v55 = *(v0 + 704);
  v56 = *(v0 + 680);

  sub_16E23C();

  sub_388E4();
  sub_214C(v57, v58, v59, v50);
  sub_86B0(v56, v54, &qword_1C57F8, &unk_172510);
  sub_135408();
  sub_135204(v132, v55, v60);
  sub_388E4();
  sub_214C(v61, v62, v63, v123);
  sub_16C11C();
  sub_8AB4();
  v133 = v64;
  sub_214C(v65, v66, v67, v64);
  sub_1355E8(v52[13]);
  v131 = v68;
  sub_1355E8(v52[14]);
  v130 = v69;
  sub_1355E8(v52[15]);
  v129 = v70;
  sub_1355E8(v52[16]);
  v128 = v71;
  sub_1355E8(v52[17]);
  sub_1357D4();
  sub_8AB4();
  sub_214C(v72, v73, v74, v75);
  v76 = (v51 + v52[22]);
  v121 = v52[23];
  sub_8AB4();
  sub_214C(v77, v78, v79, v123);
  *v76 = v126;
  v76[1] = v124;
  *v55 = 0;
  v55[1] = 0;
  *v37 = 0;
  *(v37 + 8) = 0;
  sub_86B0(v53, v127, &qword_1C5800, &unk_16F510);
  v80 = sub_A76DC();
  if (sub_369C(v80, v81, v50) == 1)
  {
    sub_8748(*(v0 + 736), &qword_1C5800, &unk_16F510);
    v82 = 0;
    v83 = 0;
  }

  else
  {
    v84 = *(v0 + 1008);
    v85 = sub_16D5BC();
    v87 = v86;
    v88 = sub_C9C8();
    v84(v88);
    v83 = v87;
    v82 = v85;
  }

  v125 = *(v0 + 824);
  v89 = *(v0 + 792);
  v90 = *(v0 + 768);
  v120 = *(v0 + 744);
  v119 = *(v0 + 720);
  v91 = *(v0 + 704);
  v118 = v91;
  v122 = *(v0 + 800);
  v92 = v89 + v90[5];
  v93 = v89 + v90[6];
  v94 = v89 + v90[7];
  v95 = v89 + v90[8];
  v96 = v89 + v90[9];
  v97 = v89 + v90[10];
  v116 = (v89 + v90[11]);
  v117 = (v89 + v90[12]);
  v98 = (v89 + v90[21]);
  *v98 = v82;
  v98[1] = v83;
  sub_5FF8C(v91, v51 + v121);
  *v92 = v42;
  *(v92 + 8) = 0;
  *v93 = 0;
  *(v93 + 8) = 1;
  *v94 = 0;
  *(v94 + 8) = 1;
  *v95 = v47;
  *(v95 + 8) = 0;
  *v96 = 0;
  *(v96 + 8) = 1;
  *v97 = 0;
  *(v97 + 8) = 1;
  *v116 = sub_94294(v42, 0);
  v116[1] = v99;
  *v117 = sub_94294(v47, 0);
  v117[1] = v100;
  *v131 = 0;
  v131[1] = 0;
  *v130 = 0;
  v130[1] = 0;
  *v129 = 0;
  v129[1] = 0;
  *v128 = 0;
  v128[1] = 0;
  sub_943A8(v119);
  sub_8748(v118, &dword_1C63F8, &qword_171800);
  sub_8748(v119, &qword_1C57F8, &unk_172510);
  sub_8748(v120, &qword_1C5800, &unk_16F510);
  sub_388E4();
  sub_214C(v101, v102, v103, v133);
  v104 = sub_8B9C();
  sub_1E634(v104, v105, v106, v107);
  sub_1351A0(v89, v122);
  sub_1351A0(v122, v125);

  v108 = swift_task_alloc();
  *(v0 + 1120) = v108;
  *v108 = v0;
  v108[1] = sub_133494;
  sub_1357F8();
  sub_1357B4();

  sub_ADE70(v109, v110, v111, v112, v113, v114);
}

uint64_t sub_132648()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v2[75] = v0;
  v2[76] = v4;
  v2[77] = v5;
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  v8 = swift_task_alloc();
  v2[137] = v8;
  *v8 = v6;
  v8[1] = sub_132780;
  v9 = sub_C98D8(0x696C6F7473616964);

  return sub_66A84(v9, 0xE900000000000063);
}

uint64_t sub_132780()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v1[78] = v0;
  v1[79] = v3;
  v1[80] = v4;
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  v7 = sub_17960();

  return _swift_task_switch(v7);
}

uint64_t sub_13286C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 664);
  v3 = *(v0 + 1152);
  [v2 systolicMinimum];
  v5 = v4;
  v6 = sub_83A4C(v2);
  v8 = sub_99F0C(v6, v7, v3, v5);

  [v2 systolicMaximum];
  v10 = v9;
  v11 = sub_83A4C(v2);
  v13 = sub_99F0C(v11, v12, v3, v10);

  [v2 diastolicMinimum];
  v15 = v14;
  v16 = sub_83A4C(v2);
  v18 = sub_99F0C(v16, v17, v3, v15);

  [v2 diastolicMaximum];
  v20 = v19;
  v21 = sub_83A4C(v2);
  v23 = v22;
  v24 = sub_99F0C(v21, v22, v3, v20);

  if (v1)
  {
    v109 = *(v0 + 632);
    v101 = *(v0 + 608);
    v103 = *(v0 + 640);
    v100 = *(v0 + 616);
    sub_135818();
    v94 = v26;
    v96 = v27;
    v28 = *(v0 + 984);
    v111 = *(v0 + 856);
    v92 = *(v0 + 832);
    v29 = *(v0 + 808);
    v30 = *(v0 + 768);
    v31 = *(v0 + 760);
    v98 = *(v0 + 752);
    v32 = *(v0 + 728);
    v33 = *(v0 + 712);
    v34 = *(v0 + 680);

    sub_16E23C();

    sub_388E4();
    sub_214C(v35, v36, v37, v28);
    sub_86B0(v34, v32, &qword_1C57F8, &unk_172510);
    sub_135408();
    sub_135204(v111, v33, v38);
    sub_388E4();
    sub_214C(v39, v40, v41, v92);
    sub_16C11C();
    sub_8AB4();
    v112 = v42;
    sub_214C(v43, v44, v45, v42);
    sub_1355E8(v30[11]);
    v105 = v46;
    sub_1355E8(v30[12]);
    v104 = v47;
    sub_1355E8(v30[13]);
    v106 = v48;
    sub_1355E8(v30[14]);
    v107 = v49;
    sub_1355E8(v30[15]);
    v108 = v50;
    sub_1355E8(v30[16]);
    v110 = v51;
    sub_1355E8(v30[17]);
    sub_1357D4();
    sub_8AB4();
    sub_214C(v52, v53, v54, v55);
    v56 = (v29 + v30[22]);
    v93 = v30[23];
    sub_8AB4();
    sub_214C(v57, v58, v59, v92);
    *v56 = v96;
    v56[1] = v94;
    *v33 = v101;
    v33[1] = v100;
    *v23 = v109;
    v23[1] = v103;
    sub_86B0(v31, v98, &qword_1C5800, &unk_16F510);
    v60 = sub_A76DC();
    if (sub_369C(v60, v61, v28) == 1)
    {
      sub_8748(*(v0 + 752), &qword_1C5800, &unk_16F510);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v64 = sub_16D5BC();
      v66 = v65;
      v67 = sub_C9C8();
      v68(v67);
      v63 = v66;
      v62 = v64;
    }

    v102 = *(v0 + 824);
    v69 = *(v0 + 808);
    v70 = *(v0 + 768);
    v97 = *(v0 + 760);
    v99 = *(v0 + 816);
    v95 = *(v0 + 728);
    v71 = *(v0 + 712);
    v91 = v71;
    v72 = v69 + v70[5];
    v73 = v69 + v70[6];
    v74 = v69 + v70[7];
    v75 = v69 + v70[8];
    v76 = v69 + v70[9];
    v77 = v69 + v70[10];
    v78 = (v69 + v70[21]);
    *v78 = v62;
    v78[1] = v63;
    sub_5FF8C(v71, v29 + v93);
    *v72 = 0;
    *(v72 + 8) = 1;
    *v73 = v8;
    *(v73 + 8) = 0;
    *v74 = v13;
    *(v74 + 8) = 0;
    *v75 = 0;
    *(v75 + 8) = 1;
    *v76 = v18;
    *(v76 + 8) = 0;
    *v77 = v24;
    *(v77 + 8) = 0;
    *v105 = 0;
    v105[1] = 0;
    *v104 = 0;
    v104[1] = 0;
    *v106 = sub_94294(v8, 0);
    v106[1] = v79;
    *v107 = sub_94294(v13, 0);
    v107[1] = v80;
    *v108 = sub_94294(v18, 0);
    v108[1] = v81;
    *v110 = sub_94294(v24, 0);
    v110[1] = v82;
    sub_943A8(v95);
    sub_8748(v91, &dword_1C63F8, &qword_171800);
    sub_8748(v95, &qword_1C57F8, &unk_172510);
    sub_8748(v97, &qword_1C5800, &unk_16F510);
    sub_388E4();
    sub_214C(v83, v84, v85, v112);
    v86 = sub_8B9C();
    sub_1E634(v86, v87, v88, v89);
    sub_1351A0(v69, v99);
    sub_1351A0(v99, v102);

    v90 = swift_task_alloc();
    *(v0 + 1104) = v90;
    *v90 = v0;
    v90[1] = sub_132E60;
    sub_1357F8();

    return sub_ADC1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_132E60(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 1112) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_132FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  sub_13580C();
  v117 = sub_135718(*(v38 + 1112));
  v43 = sub_16DBBC();
  sub_8B48(v43, v38 + 480);
  v44 = sub_135858();
  v41(v44);
  sub_135420();
  v45 = sub_4B4EC();
  sub_135204(v45, v46, v47);
  v48 = sub_16DBDC();
  v49 = sub_16E36C();
  sub_1356CC(v49);
  sub_13579C();
  if (v50)
  {
    a27 = v37;
    v51 = *(v38 + 768);
    sub_8BD8();
    v52 = sub_5D98C();
    sub_135838(v52);
    *v40 = 136315138;
    sub_135420();
    v53 = sub_4B4A4();
    sub_135204(v53, v54, v55);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353F0();
    sub_135260(v42, v56);
    v57 = sub_C9C8();
    sub_3AB7C(v57, v58, v59);
    sub_13588C();
    *(v40 + 4) = v51;
    sub_13563C(&def_259DC, v60, v61, "#GetBloodPressureFlow: snippet model is %s");
    sub_1355B0();
    sub_135534();

    v62 = *(v39 + 8);
    v63 = a27;
    v64 = v36;
  }

  else
  {

    sub_1353F0();
    sub_135260(v42, v65);
    v63 = sub_C9C8();
  }

  v116 = v62;
  v62(v63, v64);
  v66 = *(v38 + 952);
  v67 = *(v38 + 928);
  sub_135708();
  sub_13565C(v68, v69);
  v70 = sub_6B5B8();
  v41(v70);
  sub_135408();
  v71 = sub_387CC();
  sub_135204(v71, v72, v73);
  v74 = sub_16DBDC();
  v75 = sub_16E36C();
  sub_1356CC(v75);
  sub_135844();
  if (v76)
  {
    a27 = v67;
    a26 = v66;
    v77 = *(v38 + 832);
    sub_8BD8();
    v78 = sub_5D98C();
    sub_135838(v78);
    *v40 = 136315138;
    sub_135408();
    v79 = sub_4B4A4();
    sub_135204(v79, v80, v81);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353D8();
    sub_135260(v42, v82);
    v83 = sub_C9C8();
    sub_3AB7C(v83, v84, v85);
    sub_13588C();
    *(v40 + 4) = v77;
    sub_13563C(&def_259DC, v86, v87, "#GetBloodPressureFlow: snippet header model is %s");
    sub_1355B0();
    sub_135534();

    v88 = a26;
    v89 = v67;
  }

  else
  {

    sub_1353D8();
    sub_135260(v42, v90);
    v88 = sub_C9C8();
  }

  v116(v88, v89);
  if (v117)
  {
    v91 = *(v38 + 824);

    *(v38 + 400) = type metadata accessor for WellnessSnippets(0);
    sub_135624();
    *(v38 + 408) = sub_1352B8(v92, v93, &protocol conformance descriptor for WellnessSnippets);
    v94 = sub_9910((v38 + 376));
    sub_135420();
    sub_135204(v91, v94, v95);
    swift_storeEnumTagMultiPayload();

    v96 = swift_task_alloc();
    *(v38 + 1144) = v96;
    *v96 = v38;
    sub_135580(v96);
    sub_1207DC();

    return sub_672C0();
  }

  else
  {
    sub_13586C();

    sub_13565C(v99, v38 + 528);
    v100 = sub_1356E8();
    v41(v100);
    sub_16DBDC();
    v101 = sub_16E37C();
    if (sub_1BA1C(v101))
    {
      v102 = sub_1BA38();
      sub_1BA50(v102);
      sub_1B9D0(&def_259DC, v103, v104, "Couldn't create bloodPressure dialog returning nil");
      sub_1BA00();
    }

    sub_135554();
    v105 = sub_1356F8();
    (v116)(v105);
    sub_8284(v41 + 80, v38 + 16);
    sub_82E0();
    v118 = sub_16C32C();

    sub_8334(v38 + 16);
    sub_1353F0();
    sub_135260(0, v106);
    sub_1353D8();
    sub_135260(v74, v107);
    sub_135438();
    sub_135504();

    sub_5D948();
    sub_1207DC();

    return v110(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v116, a29, a30, v118, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_133494(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 1128) = a1;
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_1335DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_120874();
  sub_13580C();
  v117 = sub_135718(*(v38 + 1128));
  v43 = sub_16DBBC();
  sub_8B48(v43, v38 + 480);
  v44 = sub_135858();
  v41(v44);
  sub_135420();
  v45 = sub_4B4EC();
  sub_135204(v45, v46, v47);
  v48 = sub_16DBDC();
  v49 = sub_16E36C();
  sub_1356CC(v49);
  sub_13579C();
  if (v50)
  {
    a27 = v37;
    v51 = *(v38 + 768);
    sub_8BD8();
    v52 = sub_5D98C();
    sub_135838(v52);
    *v40 = 136315138;
    sub_135420();
    v53 = sub_4B4A4();
    sub_135204(v53, v54, v55);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353F0();
    sub_135260(v42, v56);
    v57 = sub_C9C8();
    sub_3AB7C(v57, v58, v59);
    sub_13588C();
    *(v40 + 4) = v51;
    sub_13563C(&def_259DC, v60, v61, "#GetBloodPressureFlow: snippet model is %s");
    sub_1355B0();
    sub_135534();

    v62 = *(v39 + 8);
    v63 = a27;
    v64 = v36;
  }

  else
  {

    sub_1353F0();
    sub_135260(v42, v65);
    v63 = sub_C9C8();
  }

  v116 = v62;
  v62(v63, v64);
  v66 = *(v38 + 952);
  v67 = *(v38 + 928);
  sub_135708();
  sub_13565C(v68, v69);
  v70 = sub_6B5B8();
  v41(v70);
  sub_135408();
  v71 = sub_387CC();
  sub_135204(v71, v72, v73);
  v74 = sub_16DBDC();
  v75 = sub_16E36C();
  sub_1356CC(v75);
  sub_135844();
  if (v76)
  {
    a27 = v67;
    a26 = v66;
    v77 = *(v38 + 832);
    sub_8BD8();
    v78 = sub_5D98C();
    sub_135838(v78);
    *v40 = 136315138;
    sub_135408();
    v79 = sub_4B4A4();
    sub_135204(v79, v80, v81);
    sub_8B9C();
    sub_16E1EC();
    sub_680F8();
    sub_1353D8();
    sub_135260(v42, v82);
    v83 = sub_C9C8();
    sub_3AB7C(v83, v84, v85);
    sub_13588C();
    *(v40 + 4) = v77;
    sub_13563C(&def_259DC, v86, v87, "#GetBloodPressureFlow: snippet header model is %s");
    sub_1355B0();
    sub_135534();

    v88 = a26;
    v89 = v67;
  }

  else
  {

    sub_1353D8();
    sub_135260(v42, v90);
    v88 = sub_C9C8();
  }

  v116(v88, v89);
  if (v117)
  {
    v91 = *(v38 + 824);

    *(v38 + 400) = type metadata accessor for WellnessSnippets(0);
    sub_135624();
    *(v38 + 408) = sub_1352B8(v92, v93, &protocol conformance descriptor for WellnessSnippets);
    v94 = sub_9910((v38 + 376));
    sub_135420();
    sub_135204(v91, v94, v95);
    swift_storeEnumTagMultiPayload();

    v96 = swift_task_alloc();
    *(v38 + 1144) = v96;
    *v96 = v38;
    sub_135580(v96);
    sub_1207DC();

    return sub_672C0();
  }

  else
  {
    sub_13586C();

    sub_13565C(v99, v38 + 528);
    v100 = sub_1356E8();
    v41(v100);
    sub_16DBDC();
    v101 = sub_16E37C();
    if (sub_1BA1C(v101))
    {
      v102 = sub_1BA38();
      sub_1BA50(v102);
      sub_1B9D0(&def_259DC, v103, v104, "Couldn't create bloodPressure dialog returning nil");
      sub_1BA00();
    }

    sub_135554();
    v105 = sub_1356F8();
    (v116)(v105);
    sub_8284(v41 + 80, v38 + 16);
    sub_82E0();
    v118 = sub_16C32C();

    sub_8334(v38 + 16);
    sub_1353F0();
    sub_135260(0, v106);
    sub_1353D8();
    sub_135260(v74, v107);
    sub_135438();
    sub_135504();

    sub_5D948();
    sub_1207DC();

    return v110(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v116, a29, a30, v118, a32, a33, a34, a35, a36);
  }
}

uint64_t sub_133AC8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 376));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_133BB0()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 856);
  v3 = *(v0 + 824);
  sub_8388(v0 + 336, v0 + 416);
  v4 = swift_allocObject();
  sub_17464((v0 + 416), v4 + 16);
  sub_16C73C();
  v5 = sub_16C1DC();
  sub_38964(v5);
  *(v0 + 648) = sub_16C1CC();
  v10 = sub_16C32C();

  sub_2D64((v0 + 336));
  sub_1353F0();
  sub_135260(v3, v6);
  sub_1353D8();
  sub_135260(v2, v7);

  sub_135438();

  sub_5D948();

  return v8(v10);
}

uint64_t sub_133E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(void), uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44)
{
  sub_120874();
  a43 = v45;
  a44 = v46;
  sub_13580C();
  a42 = v44;
  v44[142] = 0;
  v47 = v44[117];
  v48 = sub_16DBBC();
  sub_8B48(v48, (v44 + 60));
  v51 = *(v47 + 16);
  v49 = v47 + 16;
  v50 = v51;
  v52 = sub_C9C8();
  v51(v52);
  sub_135420();
  v53 = sub_387CC();
  sub_135204(v53, v54, v55);
  v56 = sub_16DBDC();
  v57 = sub_16E36C();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v44[120];
  v60 = v44[117];
  v116 = v44[116];
  v118 = v51;
  v61 = v44[98];
  v119 = v49;
  if (v58)
  {
    v62 = v44[97];
    a28 = v44[120];
    v63 = sub_8BD8();
    v50 = swift_slowAlloc();
    a32 = v50;
    *v63 = 136315138;
    sub_135420();
    sub_135204(v61, v62, v64);
    v65 = sub_16E1EC();
    v67 = v66;
    sub_1353F0();
    sub_135260(v61, v68);
    v69 = sub_3AB7C(v65, v67, &a32);

    *(v63 + 4) = v69;
    sub_D4ECC(&def_259DC, v70, v71, "#GetBloodPressureFlow: snippet model is %s");
    sub_2D64(v50);
    sub_135534();
    v72 = v63;
    v49 = v119;
    sub_8A2C(v72);

    v73 = *(v60 + 8);
    (v73)(a28, v116);
  }

  else
  {

    sub_1353F0();
    sub_135260(v61, v74);
    v73 = *(v60 + 8);
    (v73)(v59, v116);
  }

  sub_135708();
  sub_8B48(v48, v75);
  v76 = sub_C9C8();
  (v50)(v76);
  sub_135408();
  v77 = sub_387CC();
  sub_135204(v77, v78, v79);
  v80 = sub_16DBDC();
  v81 = sub_16E36C();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v44[119];
  v117 = v44[116];
  v84 = v44[106];
  if (v82)
  {
    a27 = v44[119];
    a28 = v73;
    v85 = v44[105];
    v86 = sub_8BD8();
    v50 = swift_slowAlloc();
    a32 = v50;
    *v86 = 136315138;
    sub_135408();
    sub_135204(v84, v85, v87);
    v88 = sub_16E1EC();
    v90 = v89;
    sub_1353D8();
    sub_135260(v84, v91);
    v92 = sub_3AB7C(v88, v90, &a32);
    v73 = a28;

    *(v86 + 4) = v92;
    sub_D4ECC(&def_259DC, v93, v94, "#GetBloodPressureFlow: snippet header model is %s");
    sub_2D64(v50);
    sub_135534();
    v95 = v86;
    v49 = v119;
    sub_8A2C(v95);

    v96 = a27;
  }

  else
  {

    sub_1353D8();
    sub_135260(v84, v97);
    v96 = v83;
  }

  (v73)(v96, v117);
  v98 = v44[118];
  v99 = v44[116];

  sub_8B48(v48, (v44 + 66));
  (v50)(v98, v48, v99);
  sub_16DBDC();
  v100 = sub_16E37C();
  if (sub_1BA1C(v100))
  {
    v101 = sub_1BA38();
    sub_1BA50(v101);
    sub_1B9D0(&def_259DC, v102, v103, "Couldn't create bloodPressure dialog returning nil");
    sub_1BA00();
  }

  sub_135554();
  v104 = sub_1356F8();
  v73(v104);
  sub_8284(v84 + 80, (v44 + 2));
  sub_82E0();
  v120 = sub_16C32C();

  sub_8334((v44 + 2));
  sub_1353F0();
  sub_135260(v49, v105);
  sub_1353D8();
  sub_135260(v81, v106);
  sub_135438();
  sub_135504();

  sub_5D948();
  sub_1207DC();

  return v109(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v117, v118, v120, a32, a33, a34, a35, a36);
}

uint64_t sub_134300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v84 = a6;
  v79 = a5;
  v10 = sub_2440(&qword_1C57F8, &unk_172510);
  __chkstk_darwin(v10 - 8);
  v85 = &v76 - v11;
  v82 = sub_16BF5C();
  v78 = *(v82 - 8);
  __chkstk_darwin(v82);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57E0, &unk_171C60);
  v14 = __chkstk_darwin(v13 - 8);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v81 = &v76 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v76 - v19;
  __chkstk_darwin(v18);
  v22 = &v76 - v21;
  v23 = sub_2440(&qword_1C5800, &unk_16F510);
  v24 = __chkstk_darwin(v23 - 8);
  v83 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v76 - v26;
  v28 = *(a2 + 312);
  sub_208C0(v28);
  sub_16E23C();

  v76 = sub_16D5CC();
  sub_214C(v27, 0, 1, v76);
  v29 = type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters(0);
  v30 = v79;
  sub_1E634(v27, a1 + v29[5], &qword_1C5800, &unk_16F510);
  v31 = v29[16];

  *(a1 + v31) = a3;
  [a4 systolicMinimum];
  v33 = v32;
  v34 = sub_83A4C(a4);
  v36 = sub_99F0C(v34, v35, v28, v33);

  v37 = a1 + v29[15];
  *v37 = v36;
  *(v37 + 8) = 0;
  [a4 systolicMaximum];
  v39 = v38;
  v40 = sub_83A4C(a4);
  v42 = sub_99F0C(v40, v41, v28, v39);

  v43 = a1 + v29[14];
  *v43 = v42;
  *(v43 + 8) = 0;
  [a4 diastolicMinimum];
  v45 = v44;
  v46 = sub_83A4C(a4);
  v48 = sub_99F0C(v46, v47, v28, v45);

  v49 = a1 + v29[7];
  *v49 = v48;
  *(v49 + 8) = 0;
  [a4 diastolicMaximum];
  v51 = v50;
  v52 = sub_83A4C(a4);
  v54 = sub_99F0C(v52, v53, v28, v51);

  v55 = a1 + v29[6];
  *v55 = v54;
  *(v55 + 8) = 0;
  sub_16D38C();
  swift_allocObject();
  sub_16D37C();
  v56 = [v30 startDate];
  if (v56)
  {
    v57 = v56;
    sub_16BF3C();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = v82;
  sub_214C(v20, v58, 1, v82);
  sub_86FC(v20, v22, &qword_1C57E0, &unk_171C60);
  v60 = sub_369C(v22, 1, v59);
  v61 = v81;
  if (v60)
  {
    sub_8748(v22, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v62 = v77;
    v63 = v78;
    (*(v78 + 16))(v77, v22, v59);
    sub_8748(v22, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v63 + 8))(v62, v59);
  }

  sub_16D35C();

  v64 = [v30 endDate];
  if (v64)
  {
    v65 = v64;
    v66 = v80;
    sub_16BF3C();

    v67 = 0;
  }

  else
  {
    v67 = 1;
    v66 = v80;
  }

  sub_214C(v66, v67, 1, v59);
  sub_86FC(v66, v61, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v61, 1, v59))
  {
    sub_8748(v61, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v68 = v77;
    v69 = v78;
    (*(v78 + 16))(v77, v61, v59);
    sub_8748(v61, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v69 + 8))(v68, v59);
  }

  sub_16D34C();

  v70 = sub_16D36C();

  v71 = v29[13];

  *(a1 + v71) = v70;
  v72 = v85;
  sub_86B0(v84, v85, &qword_1C57F8, &unk_172510);
  v73 = sub_16BE9C();
  if (sub_369C(v72, 1, v73) == 1)
  {
    sub_8748(v72, &qword_1C57F8, &unk_172510);
    v74 = v83;
    sub_214C(v83, 1, 1, v76);
  }

  else
  {
    v74 = v83;
    sub_61120(v83);
    (*(*(v73 - 8) + 8))(v72, v73);
  }

  return sub_1E634(v74, a1, &qword_1C5800, &unk_16F510);
}