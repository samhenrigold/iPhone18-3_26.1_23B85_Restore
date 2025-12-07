uint64_t sub_1000011F8()
{
  v0 = sub_100001F58(&qword_100020078, &qword_1000189D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100017AF8();
  sub_100001FA0(v3, qword_100020388);
  sub_100001F20(v3, qword_100020388);
  v4 = sub_100017A88();
  sub_100002004(v2, 1, 1, v4);
  return sub_100017AE8();
}

uint64_t sub_100001314()
{
  sub_1000020E4();
  *(v0 + 16) = type metadata accessor for Status(0);
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000013A0, 0, 0);
}

uint64_t sub_1000013A0()
{
  sub_100001E6C();
  sub_100017AB8();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000014A0;

  return sub_1000020FC();
}

uint64_t sub_1000014A0()
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *v1;
  sub_1000020C8();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_10000160C;
  }

  else
  {
    v5 = sub_1000015A4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000015A4()
{
  sub_1000020E4();
  sub_100001EC4(*(v0 + 24));

  sub_1000020D8();

  return v1();
}

uint64_t sub_10000160C()
{
  sub_1000020E4();
  sub_100001EC4(*(v0 + 24));

  sub_1000020D8();

  return v1();
}

uint64_t sub_100001698()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001724;

  return sub_100001314();
}

uint64_t sub_100001724()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  sub_1000020D8();

  return v3();
}

uint64_t sub_100001804@<X0>(uint64_t a1@<X8>)
{
  if (qword_100020048 != -1)
  {
    swift_once();
  }

  v2 = sub_100017AF8();
  v3 = sub_100001F20(v2, qword_100020388);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001900()
{
  v0[2] = sub_100017CB8();
  v0[3] = sub_100017CA8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  sub_100001D00();
  *v1 = v0;
  v1[1] = sub_1000019C0;

  return static AsyncParsableCommand.main()();
}

uint64_t sub_1000019C0()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  v4 = sub_100017C98();

  return _swift_task_switch(sub_100001AEC, v4, v3);
}

void sub_100001AEC()
{
  sub_1000020E4();

  exit(0);
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100001B90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001C1C;

  return sub_100001900();
}

uint64_t sub_100001C1C(uint64_t a1)
{
  sub_1000020E4();
  sub_1000020F0();
  v2 = *v1;
  sub_1000020C8();
  *v3 = v2;

  sub_1000020D8();

  return v4();
}

unint64_t sub_100001D00()
{
  result = qword_100020050;
  if (!qword_100020050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020050);
  }

  return result;
}

unint64_t sub_100001D68()
{
  result = qword_100020058;
  if (!qword_100020058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020058);
  }

  return result;
}

unint64_t sub_100001DC0()
{
  result = qword_100020060;
  if (!qword_100020060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020060);
  }

  return result;
}

unint64_t sub_100001E18()
{
  result = qword_100020068;
  if (!qword_100020068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020068);
  }

  return result;
}

unint64_t sub_100001E6C()
{
  result = qword_100020070;
  if (!qword_100020070)
  {
    type metadata accessor for Status(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020070);
  }

  return result;
}

uint64_t sub_100001EC4(uint64_t a1)
{
  v2 = type metadata accessor for Status(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001F20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001F58(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001FA0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000202C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void type metadata accessor for SubscriptionDownloadStatus()
{
  if (!qword_100020080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100020080);
    }
  }
}

uint64_t sub_1000020FC()
{
  sub_1000020E4();
  v1[33] = v0;
  v2 = sub_100001F58(&qword_100020088, &qword_100018A88);
  v1[34] = v2;
  sub_1000165D4(v2);
  v1[35] = v3;
  v1[36] = sub_100016BC8();
  v4 = sub_100001F58(&qword_100020090, &qword_100018A90);
  v1[37] = v4;
  sub_1000165D4(v4);
  v1[38] = v5;
  v1[39] = sub_100016BC8();
  v6 = sub_100017B58();
  v1[40] = v6;
  sub_1000165D4(v6);
  v1[41] = v7;
  v1[42] = sub_100016BC8();
  v8 = sub_100017B88();
  v1[43] = v8;
  sub_1000165D4(v8);
  v1[44] = v9;
  v1[45] = sub_100016BC8();
  v10 = type metadata accessor for Status(0);
  v1[46] = v10;
  sub_1000165D4(v10);
  v1[47] = v11;
  v1[48] = *(v12 + 64);
  v1[49] = sub_100016BC8();
  v13 = sub_100017B68();
  v1[50] = v13;
  sub_1000165D4(v13);
  v1[51] = v14;
  v1[52] = sub_100016BC8();
  v15 = sub_100001F58(&qword_100020098, &qword_100018A98);
  sub_1000168F8(v15);
  v1[53] = sub_100016BC8();
  v16 = sub_1000177A8();
  v1[54] = v16;
  sub_1000165D4(v16);
  v1[55] = v17;
  v1[56] = sub_100016BC8();
  v18 = sub_1000176F8();
  v1[57] = v18;
  sub_1000165D4(v18);
  v1[58] = v19;
  v1[59] = sub_100016DFC();
  v1[60] = swift_task_alloc();
  v20 = sub_1000179B8();
  v1[61] = v20;
  sub_1000165D4(v20);
  v1[62] = v21;
  v1[63] = sub_100016DFC();
  v1[64] = swift_task_alloc();
  v22 = sub_100001F58(&qword_1000200A0, &qword_100018AA0);
  sub_1000168F8(v22);
  v1[65] = sub_100016DFC();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v23 = sub_1000173E8();
  v1[68] = v23;
  sub_1000165D4(v23);
  v1[69] = v24;
  v1[70] = sub_100016DFC();
  v1[71] = swift_task_alloc();
  v25 = sub_1000179D8();
  v1[72] = v25;
  sub_1000165D4(v25);
  v1[73] = v26;
  v1[74] = sub_100016DFC();
  v1[75] = swift_task_alloc();
  v27 = sub_100016720();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_100002558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v21 = *(v20 + 600);
  v22 = *(v20 + 592);
  v23 = *(v20 + 584);
  v24 = *(v20 + 576);
  sub_1000175E8();
  sub_1000175B8();
  (*(v23 + 104))(v22, enum case for ResourceReadinessStatus.initializing(_:), v24);
  sub_100016CD4();
  v25 = sub_1000179C8();
  v26 = *(v23 + 8);
  v27 = sub_100016C0C();
  v26(v27);
  (v26)(v21, v24);
  if ((v25 & 1) != 0 && (sub_100001F58(&qword_1000200E8, &qword_100018AD8), sub_100017B08(), (*(v20 + 791) & 1) == 0))
  {
    v44 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    *(sub_100016B34(v44) + 16) = xmmword_100018A20;
    sub_100016834();
    v45[7] = &type metadata for String;
    v45[4] = 0xD00000000000003CLL;
    v45[5] = v46;
    sub_100016614(v45);

    sub_10001653C();
    sub_100016A34();

    sub_1000167C8();
    sub_100016BAC();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v28 = *(v20 + 496);
    sub_1000173D8();
    swift_allocObject();
    *(v20 + 608) = sub_1000175D8();
    *(v20 + 616) = sub_100001F58(&qword_1000200A8, &qword_100018AA8);
    *(v20 + 624) = *(v28 + 72);
    *(v20 + 776) = *(v28 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100018A30;
    sub_100017998();
    sub_1000179A8();
    *(v20 + 240) = v29;
    *(v20 + 632) = sub_100016160(&qword_1000200B0, &type metadata accessor for DebugInformationOptions, &protocol conformance descriptor for DebugInformationOptions);
    *(v20 + 640) = sub_100001F58(&qword_1000200B8, &qword_100018AB0);
    sub_1000165BC();
    *(v20 + 648) = sub_1000161FC(v30, &qword_1000200B8, &qword_100018AB0, v31);
    sub_100017DA8();
    sub_100016A98(&async function pointer to dispatch thunk of CatalogClient.debugInformation(options:));
    v55 = v32;
    swift_task_alloc();
    sub_100016904();
    *(v20 + 656) = v33;
    *v33 = v34;
    v33[1] = sub_100002918;
    sub_100016BAC();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, v55, a18, a19, a20);
  }
}

uint64_t sub_100002918()
{
  v2 = *v1;
  sub_1000020C8();
  *v3 = v2;

  if (v0)
  {
  }

  v4 = sub_100016A00();
  v5(v4);
  sub_100016878();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100002D0C()
{
  sub_100016CE0();
  sub_100016884();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 680) = v0;

  if (v0)
  {
  }

  sub_100016878();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100002E48()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 424);
  v4 = *(v0 + 432);
  v114 = *(v0 + 368);
  v122 = *(v0 + 536);
  v136 = *(v0 + 264);
  sub_1000169E8();
  sub_100002004(v5, v6, v7, v4);
  (*(v2 + 32))(v1, v3, v4);
  v8 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  v9 = sub_100016B34(v8);
  *(v9 + 16) = xmmword_100018A20;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_100016614(v9);

  v10 = sub_100016750();
  *(v10 + 16) = xmmword_100018A20;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 32) = 0xD00000000000004FLL;
  *(v10 + 40) = 0x8000000100018430;
  sub_100016614(v10);

  v11 = sub_100016750();
  sub_1000167A8(v11, v12, v13, v14, v15, v16, v17, v18, v19, v114, v122, v130, v136, v20);
  sub_100016834();
  v21[7] = &type metadata for String;
  v21[4] = 0xD00000000000001DLL;
  v21[5] = v22;
  sub_100016614(v21);

  v23 = sub_100016750();
  sub_1000167A8(v23, v24, v25, v26, v27, v28, v29, v30, v31, v115, v123, v131, v137, v32);
  v33[7] = &type metadata for String;
  v33[4] = 0xD00000000000004FLL;
  v33[5] = 0x8000000100018430;
  sub_100016614(v33);

  sub_100006CE0();
  v34 = sub_100016750();
  *(v34 + 16) = xmmword_100018A20;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 32) = 0;
  *(v34 + 40) = 0xE000000000000000;
  sub_100016614(v34);

  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  sub_100006E94(v1, *(v0 + 789), v124, v35, v36, v37, v38, v39, v116, v124, 0x8000000100018430, v0 + 784, 1, 2, v143, v144, v145, v146, v147, v148);
  v40 = sub_100016CD4();
  v41(v40);
  *(v0 + 688) = *(v0 + 680);
  v42 = sub_10000D684();
  *(v0 + 696) = v42;
  v43 = *(v42 + 16);
  v125 = v42;
  if (v43)
  {
    v44 = v42 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100015D08(v44, v0 + 64);
      sub_10000D70C((v0 + 64), v0 + 184);
      v46 = sub_10001708C();
      sub_100001F58(v46, v47);
      v48 = sub_100016E14();
      sub_100001F58(v48, v49);
      if (swift_dynamicCast())
      {
        if (*(v0 + 168))
        {
          sub_10000D70C((v0 + 144), v0 + 104);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1000166DC();
            v45 = sub_10000F274(v52, v53, v54, v45);
          }

          v51 = v45[2];
          v50 = v45[3];
          if (v51 >= v50 >> 1)
          {
            v55 = sub_1000168EC(v50);
            v45 = sub_10000F274(v55, v51 + 1, 1, v45);
          }

          v45[2] = v51 + 1;
          sub_10000D70C((v0 + 104), &v45[5 * v51 + 4]);
          goto LABEL_12;
        }
      }

      else
      {
        *(v0 + 176) = 0;
        *(v0 + 144) = 0u;
        *(v0 + 160) = 0u;
      }

      sub_100015DFC(v0 + 144, &qword_1000200D8, &qword_100018AC8);
LABEL_12:
      v44 += 40;
      if (!--v43)
      {
        goto LABEL_15;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_15:
  *(v0 + 704) = v45;
  v56 = *(v0 + 368);
  v57 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  *(v0 + 712) = v57;
  v58 = sub_100016B34(v57);
  sub_1000167A8(v58, v59, v60, v61, v62, v63, v64, v65, v66, v117, v125, v132, v138, v67);
  v68[7] = &type metadata for String;
  v68[4] = 0;
  v68[5] = 0xE000000000000000;
  sub_100016614(v68);

  v69 = sub_100016750();
  sub_1000167A8(v69, v70, v71, v72, v73, v74, v75, v76, v77, v118, v126, v133, v139, v78);
  v79[7] = &type metadata for String;
  v80 = v134;
  v79[4] = 0xD00000000000004FLL;
  v79[5] = v134;
  sub_100016614(v79);

  v81 = sub_100016750();
  sub_1000167A8(v81, v82, v83, v84, v85, v86, v87, v88, v89, v119, v127, v134, v140, v90);
  sub_100016834();
  v91[7] = &type metadata for String;
  v91[4] = 0xD000000000000013;
  v91[5] = v92;
  sub_100016614(v91);

  v93 = sub_100016750();
  sub_1000167A8(v93, v94, v95, v96, v97, v98, v99, v100, v101, v120, v128, v135, v141, v102);
  v103[7] = &type metadata for String;
  v103[4] = 0xD00000000000004FLL;
  v103[5] = v80;
  sub_100016614(v103);

  sub_1000056A4();
  v104 = sub_100016750();
  *(v104 + 16) = v142;
  *(v104 + 56) = &type metadata for String;
  *(v104 + 32) = 0;
  *(v104 + 40) = 0xE000000000000000;
  sub_100016614(v104);

  *(v0 + 780) = *(v56 + 20);
  *(v0 + 720) = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  v105 = swift_task_alloc();
  *(v0 + 728) = v105;
  *v105 = v0;
  sub_1000168BC(v105, v106, v107, v108, v109, v110, v111, v112, v121, v129);

  return sub_10000B264();
}

uint64_t sub_1000032F8()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  v3 = sub_100016720();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100003B10(uint64_t a1)
{
  sub_100016884();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 744) = v1;

  if (v1)
  {
  }

  v5 = sub_100016A00();
  v6(v5);
  sub_100016878();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100004430()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  v3 = sub_100016720();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004514()
{
  if (v0[31])
  {

    v1 = sub_100016750();
    *(v1 + 16) = xmmword_100018A20;
    *(v1 + 56) = &type metadata for String;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0xE000000000000000;
    sub_100016614(v1);

    v2 = sub_100016750();
    v3 = sub_100016ACC(v2, xmmword_100018A20);
    v3[2].n128_u64[0] = 0xD00000000000004FLL;
    v3[2].n128_u64[1] = 0x8000000100018430;
    sub_100016614(v3);

    v4 = sub_100016750();
    v5 = sub_100016ACC(v4, xmmword_100018A20);
    v5[2].n128_u64[0] = 0xD000000000000026;
    v5[2].n128_u64[1] = 0x80000001000184D0;
    sub_100016614(v5);

    v6 = sub_100016750();
    v7 = sub_100016ACC(v6, xmmword_100018A20);
    v7[2].n128_u64[0] = 0xD00000000000004FLL;
    v7[2].n128_u64[1] = 0x8000000100018430;
    sub_100016614(v7);

    sub_100017B08();
    v8 = swift_task_alloc();
    v0[96] = v8;
    *v8 = v0;
    v8[1] = sub_100004828;
    sub_10001702C(v0[87]);

    return sub_10000B264();
  }

  else
  {
    v10 = v0[69];
    v18 = v0[68];
    v19 = v0[71];
    v17 = v0[67];
    v11 = v0[36];
    v13 = v0[34];
    v12 = v0[35];

    swift_unknownObjectRelease();

    (*(v12 + 8))(v11, v13);
    v14 = sub_1000169F4();
    v15(v14);
    sub_100015DFC(v17, &qword_1000200A0, &qword_100018AA0);
    (*(v10 + 8))(v19, v18);
    sub_10001653C();
    sub_100016A34();

    sub_1000167C8();

    return v16();
  }
}

uint64_t sub_100004828()
{
  sub_100016CE0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 760) = v4;
  *v4 = v3;
  sub_10001659C(v4);
  sub_100016878();

  return AsyncStream.Iterator.next(isolation:)(v5);
}

uint64_t type metadata accessor for Status(uint64_t a1)
{
  result = qword_1000202F8;
  if (!qword_1000202F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005634(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000056A4()
{
  v0 = sub_100017928();
  v23 = sub_10000FD00(v0);
  sub_10000FB74(&v23, sub_100015284, &qword_100020290, &qword_100018C70);

  v22 = v23;
  v1 = v23[2];
  if (v1)
  {
    v2 = v23 + 7;
    do
    {
      v3 = *(v2 - 3);
      v4 = *(v2 - 2);
      v5 = sub_100017130();
      v7 = sub_100001F58(v5, v6);
      v8 = sub_100016B34(v7);
      sub_100016CAC(v8, v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v17);
      v23 = v3;
      v24 = v4;

      v26._countAndFlagsBits = 9;
      v26._object = 0xE100000000000000;
      sub_100017C58(v26);
      v27._countAndFlagsBits = sub_100016C0C();
      sub_100017C58(v27);

      v18 = v23;
      v19 = v24;
      v8[3].n128_u64[1] = &type metadata for String;
      v8[2].n128_u64[0] = v18;
      v8[2].n128_u64[1] = v19;
      sub_100016614(v8);

      v2 += 4;
      --v1;
    }

    while (v1);
  }
}

void sub_100005814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100017394();
  a17 = v18;
  a18 = v19;
  v20 = sub_100001F58(&qword_100020110, &qword_100018AF0);
  sub_1000168F8(v20);
  sub_100016B58();
  __chkstk_darwin(v21);
  v23 = &a9 - v22;
  v24 = sub_100017438();
  sub_100016528();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100016634();
  v30 = v29 - v28;
  sub_100017458();
  sub_100016528();
  __chkstk_darwin(v31);
  sub_100016634();
  sub_100017040();
  v32 = objc_opt_self();
  sub_100015104(v32);
  if (v33)
  {
    sub_1000173F8();
    sub_100017448();
    v34 = sub_100016E50();
    v35(v34);
    sub_100017428();
    (*(v26 + 8))(v30, v24);
    v36 = sub_100017418();
    if (sub_10000567C(v23, 1, v36) != 1)
    {
      sub_100017408();
      v37 = sub_100016A00();
      v38(v37);
      sub_1000170AC();
      sub_100017380();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100005A14(uint64_t a1)
{
  sub_100017394();
  v2 = v1;
  v3 = sub_100017C18();
  v4 = sub_1000168F8(v3);
  __chkstk_darwin(v4);
  sub_100016634();
  sub_100017040();
  if (v2 != v2)
  {
    v5 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v6 = sub_100016B34(v5);
    sub_1000170DC(v6, xmmword_100018A20);
    v21 = 0;
    v22 = v7;
    sub_100017DD8(51);
    v24._object = 0x8000000100018760;
    v24._countAndFlagsBits = 0xD000000000000011;
    sub_100017C58(v24);
    v25._countAndFlagsBits = sub_100017E48();
    sub_100017C58(v25);

    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x8000000100018780;
    sub_100017C58(v26);
    v8 = v22;
    v6[3].n128_u64[1] = &type metadata for String;
    v6[2].n128_u64[0] = 0;
    v6[2].n128_u64[1] = v8;
    sub_100016614(v6);
    goto LABEL_13;
  }

  bzero(&v21, 0x288uLL);
  sub_100001F58(&qword_1000201E8, &qword_100018BB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100018A40;
  *(v9 + 32) = 0xE00000001;
  *(v9 + 40) = 1;
  *(v9 + 44) = v2;
  v20 = 648;
  if (!sysctl((v9 + 32), 4u, &v21, &v20, 0, 0))
  {
    if ((v23 & 0x20) == 0)
    {
      sub_100017C08();
      sub_100017BF8();

      goto LABEL_14;
    }

LABEL_13:

LABEL_14:
    sub_100016C88();
    sub_100017380();
    return;
  }

  v10 = sub_100017B38();
  if (strerror(v10))
  {
    sub_100017C08();
    v11 = sub_100017BF8();
    v13 = v12;
    v14 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v15 = sub_100016B34(v14);
    sub_1000170DC(v15, xmmword_100018A20);
    sub_100017DD8(41);

    sub_100016834();
    *&v19 = 0xD000000000000023;
    *(&v19 + 1) = v16;
    v27._countAndFlagsBits = sub_100017E48();
    sub_100017C58(v27);

    v28._countAndFlagsBits = 8250;
    v28._object = 0xE200000000000000;
    sub_100017C58(v28);

    if (v13)
    {
      v17._countAndFlagsBits = v11;
    }

    else
    {
      v17._countAndFlagsBits = 0x3E6C696E3CLL;
    }

    if (v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v17._object = v18;
    sub_100017C58(v17);

    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v19;
    sub_100016614(v15);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_100005D7C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

void sub_100005DA0(uint64_t a1)
{
  sub_100016D0C();
  v1 = sub_100001F58(&qword_100020108, &qword_100018AE8);
  sub_1000168F8(v1);
  sub_100016B58();
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = sub_1000176A8();
  sub_100016528();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100016634();
  v11 = v10 - v9;
  sub_1000176B8();
  sub_100016CEC(v4);
  if (v12)
  {
    sub_100015DFC(v4, &qword_100020108, &qword_100018AE8);
LABEL_21:
    sub_100016C58();
  }

  else
  {
    v50 = v7;
    v51 = v5;
    (*(v7 + 32))(v11, v4, v5);
    v13 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v14 = sub_100016B34(v13);
    v54 = xmmword_100018A20;
    *(v14 + 16) = xmmword_100018A20;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_100017DD8(22);

    sub_100016834();
    sub_100005814(v15, v16, v17, v18, v19, v20, v21, v22, v48, v49, v50, v51, v52, v53, v54.n128_i64[0], v54.n128_i64[1], 0xD000000000000014, v23);
    sub_100017C58(v57);

    v24 = v55;
    v25 = v56;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v24;
    *(v14 + 40) = v25;
    sub_100016614(v14);

    v53 = v13;
    v26 = sub_100016800();
    v26[1] = v54;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_100017DD8(28);

    sub_100016834();
    v55 = 0xD00000000000001ALL;
    v56 = v27;
    sub_100017698();
    sub_100017C78();
    sub_100016E5C();

    v58._countAndFlagsBits = sub_1000169F4();
    sub_100017C58(v58);

    v28 = v55;
    v29 = v56;
    v26[3].n128_u64[1] = &type metadata for String;
    v26[2].n128_u64[0] = v28;
    v26[2].n128_u64[1] = v29;
    sub_100016614(v26);

    v49 = v11;
    v30 = sub_100017688();
    v31 = v30;
    v32 = 0;
    v33 = v30 + 64;
    v34 = 1 << *(v30 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v30 + 64);
    v37 = (v34 + 63) >> 6;
    sub_100016834();
    v52 = v38;
    while (v36)
    {
      v39 = v32;
LABEL_12:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = *(*(v31 + 56) + (v40 | (v39 << 6)));
      v42 = sub_100016B34(v53);
      sub_1000170DC(v42, v54);
      v55 = 0;
      v56 = v43;

      sub_100017DD8(23);

      v55 = 0xD000000000000011;
      v56 = v52;
      v59._countAndFlagsBits = sub_100016E14();
      sub_100017C58(v59);

      v60._countAndFlagsBits = 8250;
      v60._object = 0xE200000000000000;
      sub_100017C58(v60);
      if (v41)
      {
        v44._countAndFlagsBits = 1702195828;
      }

      else
      {
        v44._countAndFlagsBits = 0x65736C6166;
      }

      if (v41)
      {
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      v44._object = v45;
      sub_100017C58(v44);

      v46 = v55;
      v47 = v56;
      v42[3].n128_u64[1] = &type metadata for String;
      v42[2].n128_u64[0] = v46;
      v42[2].n128_u64[1] = v47;
      sub_100016614(v42);
    }

    while (1)
    {
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v39 >= v37)
      {

        (*(v50 + 8))(v49, v51);
        goto LABEL_21;
      }

      v36 = *(v33 + 8 * v39);
      ++v32;
      if (v36)
      {
        v32 = v39;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_100006190(uint64_t a1)
{
  sub_100016D0C();
  sub_100017678();
  sub_100016528();
  __chkstk_darwin(v1);
  sub_100016634();
  v2 = *(sub_1000176E8() + 16);
  if (v2)
  {
    sub_100016828();
    v5 = v3 + v4;
    v20 = v6;
    v19 = *(v7 + 56);
    do
    {
      v8 = sub_100016CD4();
      v20(v8);
      sub_100006448();
      v9 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
      v10 = sub_100016B34(v9);
      sub_1000170DC(v10, xmmword_100018A20);
      v21 = v11;
      sub_100017DD8(54);
      v22._countAndFlagsBits = 0x6573207465737361;
      v22._object = 0xEB00000000203A74;
      sub_100017C58(v22);
      v23._countAndFlagsBits = sub_100017648();
      sub_100017C58(v23);

      v24._object = 0x80000001000186F0;
      v24._countAndFlagsBits = 0xD000000000000011;
      sub_100017C58(v24);
      v12 = sub_100017658();
      v14 = v13;
      v15 = sub_100016E68();
      v16(v15);
      if (v14)
      {
        v17._countAndFlagsBits = v12;
      }

      else
      {
        v17._countAndFlagsBits = 0x3E6C696E3CLL;
      }

      if (!v14)
      {
        v14 = 0xE500000000000000;
      }

      v17._object = v14;
      sub_100017C58(v17);

      v25._countAndFlagsBits = 0xD000000000000014;
      v25._object = 0x8000000100018710;
      sub_100017C58(v25);
      sub_100001F58(&qword_1000201D8, &qword_100018BA0);
      sub_100017C78();

      v26._countAndFlagsBits = sub_100016E14();
      sub_100017C58(v26);

      v10[3].n128_u64[1] = &type metadata for String;
      v10[2].n128_u64[0] = 0;
      v10[2].n128_u64[1] = v21;
      sub_100016614(v10);

      v5 += v19;
      --v2;
    }

    while (v2);

    sub_100016C58();
  }

  else
  {
    sub_100016C58();
  }
}

void *sub_100006448()
{
  v0 = sub_100017668();
  if (!v0)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2++;
      v4 = v5;
      sub_100005A14(v5);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000F400(0, v3[2] + 1, 1, v3);
        }

        v11 = v3[2];
        v10 = v3[3];
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          v3 = sub_10000F400((v10 > 1), v11 + 1, 1, v3);
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10000F400(0, v3[2] + 1, 1, v3);
        }

        v11 = v3[2];
        v13 = v3[3];
        v12 = v11 + 1;
        if (v11 >= v13 >> 1)
        {
          v3 = sub_10000F400((v13 > 1), v11 + 1, 1, v3);
        }

        v9 = 0xE400000000000000;
        v8 = 1818848828;
      }

      v3[2] = v12;
      v14 = &v3[3 * v11];
      v14[4] = v8;
      v14[5] = v9;
      v14[6] = v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_1000065C4(uint64_t a1)
{
  sub_100016D0C();
  v38 = sub_100017858();
  sub_100016528();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100016634();
  v6 = v5 - v4;
  v7 = sub_1000176D8();
  sub_100016528();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100016634();
  v13 = v12 - v11;
  v14 = *(sub_100017638() + 16);
  if (v14)
  {
    v15 = v9 + 16;
    sub_100016828();
    v18 = v16 + v17;
    v34 = *(v15 + 56);
    v35 = v19;
    v37 = (v2 + 8);
    v36 = v7;
    do
    {
      v35(v13, v18, v7);
      v41 = sub_1000176C8();
      v42 = v20;
      sub_100017808();
      v21 = sub_100017818();
      v23 = v22;
      v24 = *v37;
      (*v37)(v6, v38);
      v39 = v21;
      v40 = v23;
      sub_10000F3AC();
      LOBYTE(v21) = sub_1000172C0(&v39);

      if (v21 & 1) != 0 || (v41 = sub_1000176C8(), v42 = v25, sub_100017828(), v26 = sub_100017818(), v28 = v27, v24(v6, v38), v39 = v26, v40 = v28, LOBYTE(v26) = sub_1000172C0(&v39), , , (v26))
      {
        v29 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
        v30 = sub_100016B34(v29);
        *(v30 + 16) = xmmword_100018A20;
        v31 = sub_1000176C8();
        *(v30 + 56) = &type metadata for String;
        *(v30 + 32) = v31;
        *(v30 + 40) = v32;
        sub_100016614(v30);
      }

      v7 = v36;
      (*(v15 - 8))(v13, v36);
      v18 += v34;
      --v14;
    }

    while (v14);

    sub_100016C58();
  }

  else
  {
    sub_100016C58();
  }
}

uint64_t sub_1000068AC()
{
  v0 = sub_100017418();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100017788();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for SupportedArgument.specified<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    v9 = sub_100017408();
    (*(v1 + 8))(v3, v0);
    return v9;
  }

  if (v8 == enum case for SupportedArgument.all<A>(_:))
  {
    return 7105633;
  }

  result = sub_100017E58();
  __break(1u);
  return result;
}

void sub_100006AB4(uint64_t a1)
{
  sub_100017394();
  v2 = v1;
  v3 = sub_100017418();
  sub_100016528();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100016634();
  v9 = v8 - v7;
  v10 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  sub_100016528();
  v12 = v11;
  sub_100016B58();
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  sub_100017788();
  v16 = (*(v12 + 88))(v15, v10);
  if (v16 == enum case for SupportedArgument.specified<A>(_:))
  {
    (*(v12 + 96))(v15, v10);
    (*(v5 + 32))(v9, v15, v3);
    v21[0] = sub_100017408();
    v21[1] = v17;
    __chkstk_darwin(v21[0]);
    *&v20[-16] = v21;
    sub_100013344(sub_100015898, &v20[-32], v2);
    v18 = sub_1000171F4();
    v19(v18);

LABEL_4:
    sub_100017380();
    return;
  }

  if (v16 == enum case for SupportedArgument.all<A>(_:))
  {
    goto LABEL_4;
  }

  sub_100017E58();
  __break(1u);
}

uint64_t sub_100006CE0()
{
  v25 = &off_10001CB98;
  sub_10000FB74(&v25, sub_100015200, &qword_1000201C8, &qword_100018B90);
  v24 = v25;
  v0 = v25[2];
  if (v0)
  {
    v1 = (v25 + 7);
    do
    {
      v2 = *(v1 - 3);
      v3 = *(v1 - 2);
      v4 = sub_100017130();
      v6 = sub_100001F58(v4, v5);
      v7 = sub_100016B34(v6);
      sub_100016CAC(v7, v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v16);
      v25 = v2;
      v26 = v3;

      v28._countAndFlagsBits = 9;
      v28._object = 0xE100000000000000;
      sub_100017C58(v28);
      v29._countAndFlagsBits = sub_100016C0C();
      sub_100017C58(v29);

      v17 = v25;
      v18 = v26;
      v7[3].n128_u64[1] = &type metadata for String;
      v7[2].n128_u64[0] = v17;
      v7[2].n128_u64[1] = v18;
      sub_100016614(v7);

      v1 += 4;
      --v0;
    }

    while (v0);
  }

  v19 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  *(sub_100016B34(v19) + 16) = xmmword_100018A20;
  sub_100016834();
  v20[7] = &type metadata for String;
  v20[4] = 0xD000000000000061;
  v20[5] = v21;
  sub_100016614(v20);
}

void sub_100006E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100016D0C();
  v361 = v20;
  v355 = v21;
  v23 = v22;
  v354 = sub_100017548();
  sub_100016528();
  v379 = v24;
  __chkstk_darwin(v25);
  sub_100016634();
  sub_100016AD8(v27 - v26);
  v365 = sub_1000174C8();
  sub_100016528();
  v377 = v28;
  __chkstk_darwin(v29);
  sub_100016634();
  sub_100016AD8(v31 - v30);
  v374 = sub_100017418();
  sub_100016528();
  v378 = v32;
  __chkstk_darwin(v33);
  sub_100016634();
  v373 = v35 - v34;
  v383 = sub_100001F58(&qword_100020118, &qword_100018AF8);
  sub_100016528();
  v376 = v36;
  sub_100016B58();
  __chkstk_darwin(v37);
  v385 = &v344 - v38;
  v387 = sub_100001F58(&qword_100020120, &qword_100018B00);
  sub_100016528();
  v363 = v39;
  sub_100016B58();
  __chkstk_darwin(v40);
  sub_100016AD8(&v344 - v41);
  v389 = sub_100017588();
  sub_100016528();
  v364 = v42;
  __chkstk_darwin(v43);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v44);
  v366 = &v344 - v45;
  v46 = sub_100001F58(&qword_100020128, &qword_100018B08);
  v47 = sub_1000168F8(v46);
  __chkstk_darwin(v47);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v48);
  v50 = (&v344 - v49);
  v51 = sub_100017858();
  sub_100016528();
  v53 = v52;
  __chkstk_darwin(v54);
  sub_1000166FC();
  sub_1000167B8();
  v56 = __chkstk_darwin(v55);
  v58 = &v344 - v57;
  __chkstk_darwin(v56);
  sub_100016AD8(&v344 - v59);
  v397 = sub_100017798();
  sub_100016528();
  v61 = v60;
  __chkstk_darwin(v62);
  sub_1000166FC();
  sub_1000167B8();
  __chkstk_darwin(v63);
  sub_10001704C();
  sub_1000167B8();
  __chkstk_darwin(v64);
  sub_10001704C();
  sub_1000167B8();
  __chkstk_darwin(v65);
  sub_10001704C();
  v402 = v66;
  __chkstk_darwin(v67);
  v69 = &v344 - v68;
  sub_100001F58(&qword_100020130, &qword_100018B10);
  sub_100016160(&qword_100020138, &type metadata accessor for UseCaseIdentifier, &protocol conformance descriptor for UseCaseIdentifier);
  v375 = v51;
  v358 = sub_100017BA8();
  v70 = *(sub_100017738() + 16);
  v393 = v61;
  *&v380 = v53;
  v356 = v50;
  if (v70)
  {
    v72 = *(v61 + 16);
    v71 = v61 + 16;
    v401 = v72;
    sub_100016828();
    v382 = v73;
    v395 = v74;
    v75 = v73 + v74;
    v400 = *(v71 + 56);
    v399 = (v53 + 8);
    v391 = (v71 + 16);
    v384 = v53 + 16;
    v388 = (v71 - 8);
    sub_10001718C();
    v76 = v358;
    v77 = v396;
    v390 = v71;
    do
    {
      (v401)(v69, v75, v23);
      sub_100017748();
      if (*(v76 + 2) && (v78 = sub_10001346C(v77), (v79 & 1) != 0))
      {
        v80 = *(*(v76 + 7) + 8 * v78);
        v386 = v70;
        v81 = v69;
        v82 = *v399;

        v83 = sub_100016E68();
        v398 = v82;
        (v82)(v83);
        v69 = v81;
        v70 = v386;
      }

      else
      {
        v84 = sub_100016E68();
        v398 = v85;
        (v85)(v84);
        v80 = _swiftEmptyArrayStorage;
      }

      (v401)(v402, v69, v397);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1000166DC();
        sub_10000F178(v103, v104, v105, v80, &qword_1000201B0, &qword_100018B80, v106, v107);
        v80 = v108;
      }

      v87 = v80[2];
      v86 = v80[3];
      if (v87 >= v86 >> 1)
      {
        sub_1000168EC(v86);
        sub_100016A0C();
        sub_10000F178(v109, v110, v111, v112, &qword_1000201B0, &qword_100018B80, v113, v114);
        v80 = v115;
      }

      v80[2] = v87 + 1;
      sub_10001681C();
      v88();
      sub_100017748();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v403 = v76;
      v90 = v58;
      sub_10001346C(v58);
      sub_1000167EC();
      if (v93)
      {
        goto LABEL_187;
      }

      v94 = v91;
      v95 = v92;
      sub_100001F58(&qword_100020140, &qword_100018B18);
      v23 = &v403;
      if (sub_100017DF8(isUniquelyReferenced_nonNull_native, v76))
      {
        v23 = v403;
        v96 = sub_10001346C(v90);
        v98 = v375;
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_193;
        }

        v94 = v96;
      }

      else
      {
        v98 = v375;
      }

      sub_10001718C();
      v76 = v403;
      if (v95)
      {
        *(*(v403 + 56) + 8 * v94) = v80;

        v58 = v90;
      }

      else
      {
        *(v403 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v58 = v90;
        (*(v380 + 16))(*(v76 + 6) + *(v380 + 72) * v94, v90, v98);
        *(*(v76 + 7) + 8 * v94) = v80;
        v99 = *(v76 + 2);
        v93 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v93)
        {
          goto LABEL_188;
        }

        *(v76 + 2) = v100;
      }

      (v398)(v58, v98);
      sub_10001681C();
      v101(v69, v23);
      sub_1000171E8();
      v75 += v102;
      v70 = (v70 - 1);
      v77 = v396;
    }

    while (v70);
    v358 = v76;

    v50 = v356;
  }

  else
  {
  }

  v403 = sub_10000FC00(v358);
  sub_10000FA54(&v403);
  v367 = 0;
  object = 0;
  v117 = v403;
  v118 = *(v403 + 16);
  v360 = v380 + 32;
  v359 = v355 & 1;
  v396 = v393 + 16;
  v395 = v393 + 8;
  v382 = v376 + 88;
  v381 = enum case for SupportedArgument.specified<A>(_:);
  v372 = enum case for SupportedArgument.all<A>(_:);
  v371 = v376 + 96;
  v370 = v378 + 32;
  v369 = v378 + 8;
  sub_100016834();
  v378 = v119;
  v386 = (v363 + 8);
  v357 = v364 + 16;
  v384 = v364 + 32;
  v351 = v379 + 8;
  v350 = v377 + 8;
  v349 = v364 + 8;
  v348 = v120 + 8;
  sub_100016834();
  v346 = v121;
  sub_100016834();
  v345 = v122;
  v344 = 0x8000000100018640;
  v380 = xmmword_100018A20;
  v123 = v362;
  v353 = v117;
  for (i = v118; ; v118 = i)
  {
    if (object == v118)
    {
      v124 = sub_1000171F4();
      sub_100001F58(v124, v125);
      sub_100016EBC();
      sub_100002004(v126, v127, v128, v129);
      v130 = v118;
    }

    else
    {
      if ((object & 0x8000000000000000) != 0)
      {
        goto LABEL_189;
      }

      if (object >= *(v117 + 16))
      {
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      v131 = sub_1000171F4();
      v133 = sub_100001F58(v131, v132);
      sub_100015B54(v117 + ((*(*(v133 - 8) + 80) + 32) & ~*(*(v133 - 8) + 80)) + *(*(v133 - 8) + 72) * object, v123, &qword_100020148, &qword_100018B20);
      v130 = (object + 1);
      sub_1000169E8();
      sub_100002004(v134, v135, v136, v133);
    }

    sub_1000158C0(v123, v50, &qword_100020128, &qword_100018B08);
    v137 = sub_1000171F4();
    v139 = sub_100001F58(v137, v138);
    sub_100016CEC(v50);
    if (v280)
    {
      goto LABEL_172;
    }

    v363 = v130;
    v140 = *(v50->n128_i64 + *(v139 + 48));
    sub_10001681C();
    v142 = v141(v368, v50, v375);
    __chkstk_darwin(v142);
    *(&v344 - 2) = v361;
    *(&v344 - 8) = v359;

    sub_100016C7C();
    v143 = v367;
    v400 = sub_1000097A8(v144, v145, v146);
    v147 = 0;
    v148 = *(v140 + 16);
    v149 = _swiftEmptyArrayStorage;
    v150 = v394;
    while (v148 != v147)
    {
      if (v147 >= *(v140 + 16))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      sub_100016828();
      (*(v152 + 16))(v150, v140 + v151 + *(v152 + 72) * v147);
      v153 = sub_100017768();
      if (!v153)
      {
        goto LABEL_192;
      }

      v154 = v153;
      v155 = sub_100017778();
      if (!v155)
      {
        goto LABEL_191;
      }

      v156 = v155;
      v157 = *(v155 + 16);
      v158 = *(v154 + 2);
      v159 = v158 + v157;
      if (__OFADD__(v158, v157))
      {
        goto LABEL_174;
      }

      v160 = swift_isUniquelyReferenced_nonNull_native();
      if (!v160 || v159 > *(v154 + 3) >> 1)
      {
        if (v158 <= v159)
        {
          v161 = v158 + v157;
        }

        else
        {
          v161 = v158;
        }

        v154 = sub_10000F070(v160, v161, 1, v154);
      }

      if (*(v156 + 16))
      {
        if ((*(v154 + 3) >> 1) - *(v154 + 2) < v157)
        {
          goto LABEL_181;
        }

        swift_arrayInitWithCopy();

        if (v157)
        {
          v162 = *(v154 + 2);
          v93 = __OFADD__(v162, v157);
          v163 = v162 + v157;
          if (v93)
          {
            goto LABEL_185;
          }

          *(v154 + 2) = v163;
        }
      }

      else
      {

        if (v157)
        {
          goto LABEL_175;
        }
      }

      sub_10001681C();
      v164();
      v165 = *(v154 + 2);
      v166 = *(v149 + 2);
      if (__OFADD__(v166, v165))
      {
        goto LABEL_176;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v166 + v165 > *(v149 + 3) >> 1)
      {
        sub_100016A0C();
        v149 = sub_10000F070(v167, v168, v169, v170);
      }

      v150 = v394;
      if (*(v154 + 2))
      {
        if ((*(v149 + 3) >> 1) - *(v149 + 2) < v165)
        {
          goto LABEL_182;
        }

        swift_arrayInitWithCopy();

        if (v165)
        {
          v171 = *(v149 + 2);
          v93 = __OFADD__(v171, v165);
          v172 = v171 + v165;
          if (v93)
          {
            goto LABEL_186;
          }

          *(v149 + 2) = v172;
        }
      }

      else
      {

        if (v165)
        {
          goto LABEL_177;
        }
      }

      ++v147;
    }

    v173 = sub_100009334(v149);
    v403 = sub_100009A6C(v173);

    sub_10000F9E8(&v403);
    if (v143)
    {

      __break(1u);
      return;
    }

    v367 = 0;

    v174 = v403;
    v175 = v400;
    v176 = v400[2];
    v177 = v385;
    v379 = v403;
    if (v176)
    {
      v405[0] = _swiftEmptyArrayStorage;
      v178 = v405;
      sub_1000140CC(0, v176, 0);
      sub_10001718C();
      v179 = 0;
      v180 = v405[0];
      sub_100016828();
      v182 = v175 + v181;
      do
      {
        sub_1000171E8();
        if (v179 >= *(v184 + 16))
        {
          goto LABEL_180;
        }

        (*(v183 + 16))(v392, &v182[*(v183 + 72) * v179], v178);
        sub_100017788();
        sub_10001681C();
        v185 = v383;
        v187 = v186(v177, v383);
        if (v187 == v381)
        {
          sub_10001681C();
          v188(v177, v185);
          sub_10001681C();
          v189 = v373;
          v190 = sub_1000170AC();
          v191 = v374;
          v192(v190);
          v193 = sub_100017408();
          v195 = v194;
          sub_10001681C();
          v196(v189, v191);
        }

        else
        {
          if (v187 != v372)
          {
            goto LABEL_194;
          }

          v195 = 0xE300000000000000;
          v193 = 7105633;
        }

        v403 = 40;
        v404 = 0xE100000000000000;
        v407._countAndFlagsBits = v193;
        v407._object = v195;
        sub_100017C58(v407);

        sub_100017000();
        v197 = v403;
        v198 = v404;
        sub_10001681C();
        v178 = v397;
        v199(v392, v397);
        v405[0] = v180;
        v201 = v180[2];
        v200 = v180[3];
        if (v201 >= v200 >> 1)
        {
          v203 = sub_1000168EC(v200);
          v178 = v405;
          sub_1000140CC(v203, v201 + 1, 1);
          sub_10001718C();
          v180 = v405[0];
        }

        ++v179;
        v180[2] = v201 + 1;
        v202 = &v180[2 * v201];
        v202[4] = v197;
        v202[5] = v198;
        v177 = v385;
      }

      while (v176 != v179);
      v174 = v379;
    }

    else
    {
      v180 = _swiftEmptyArrayStorage;
    }

    v204 = sub_100009334(v180);
    v205 = sub_100009CC8(v204);

    v402 = *(v174 + 16);
    sub_100017568();
    v206 = v366;
    sub_1000172A0();
    v207 = *v386;
    v208 = sub_100016C88();
    v207(v208);
    sub_100001F58(&qword_100020150, &qword_100018B28);
    v209 = v364;
    v210 = (*(v364 + 80) + 32) & ~*(v364 + 80);
    v211 = swift_allocObject();
    v212 = sub_100016798(v211);
    (*(v209 + 16))(v213 + v210, v206, v389, v212);
    v214 = *(v205 + 2);
    v399 = v205;
    if (v214)
    {
      v401 = v211;
      v403 = _swiftEmptyArrayStorage;
      sub_100014074(0, v214, 0);
      v215 = v403;
      v216 = v205 + 40;
      do
      {
        swift_bridgeObjectRetain_n();
        sub_100016CD4();
        sub_100017568();
        sub_1000172A0();

        v217 = sub_100016C88();
        v207(v217);
        v403 = v215;
        v219 = *(v215 + 2);
        v218 = *(v215 + 3);
        if (v219 >= v218 >> 1)
        {
          v221 = sub_1000168EC(v218);
          sub_100014074(v221, v219 + 1, 1);
          v215 = v403;
        }

        *(v215 + 2) = v219 + 1;
        sub_10001681C();
        v220();
        v216 += 16;
        --v214;
      }

      while (v214);
      v211 = v401;
    }

    else
    {
      v215 = _swiftEmptyArrayStorage;
    }

    v403 = v211;
    sub_10000A570(v215);
    sub_100001F58(&qword_100020158, &qword_100018B30);
    sub_1000165BC();
    sub_1000161FC(&qword_100020160, &qword_100020158, &qword_100018B30, v222);
    sub_1000174B8();
    sub_100001F58(&qword_100020168, &qword_100018B38);
    sub_100016C7C();
    v402 = sub_100017BA8();
    sub_100016C7C();
    v401 = sub_100017BA8();
    v223 = v400[2];
    if (v223)
    {
      sub_100016828();
      v226 = v224 + v225;
      v398 = *(v227 + 72);
      v391 = *(v227 + 16);
      sub_1000170FC();
      v228 = v397;
      v229 = v347;
      while (1)
      {
        v391(v229, v226, v228);
        v408._countAndFlagsBits = sub_1000068AC();
        v403 = 40;
        v404 = 0xE100000000000000;
        sub_100017C58(v408);

        sub_100017000();
        v230 = sub_100017778();
        if (!v230)
        {
          v230 = _swiftEmptyArrayStorage;
        }

        sub_100009334(v230);
        v231 = swift_isUniquelyReferenced_nonNull_native();
        sub_100016DAC(v231);

        v402 = v403;
        v409._countAndFlagsBits = sub_1000068AC();
        v403 = 40;
        v404 = 0xE100000000000000;
        sub_100017C58(v409);

        sub_100017000();
        v232 = sub_100017768();
        if (!v232)
        {
          v232 = _swiftEmptyArrayStorage;
        }

        sub_100009334(v232);
        v233 = swift_isUniquelyReferenced_nonNull_native();
        sub_100016DAC(v233);

        v401 = v403;
        v234 = sub_100017758();
        v235._countAndFlagsBits = sub_1000068AC();
        if (v234)
        {
          sub_100017320(v235);

          sub_100017000();
          v236 = v403;
          v237 = v404;
          v238 = v388;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v246 = sub_1000166DC();
            v238 = sub_10000F070(v246, v247, v248, v238);
          }

          v240 = *(v238 + 2);
          v239 = *(v238 + 3);
          v241 = v240 + 1;
          if (v240 >= v239 >> 1)
          {
            sub_1000168EC(v239);
            sub_100016A0C();
            v253 = sub_10000F070(v249, v250, v251, v252);
            v238 = v253;
            v254 = v405;
LABEL_99:
            *(v254 - 32) = v253;
            goto LABEL_95;
          }

          v242 = v405;
        }

        else
        {
          sub_100017320(v235);

          sub_100017000();
          v236 = v403;
          v237 = v404;
          v238 = v390;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v255 = sub_1000166DC();
            v238 = sub_10000F070(v255, v256, v257, v238);
          }

          v240 = *(v238 + 2);
          v243 = *(v238 + 3);
          v241 = v240 + 1;
          if (v240 >= v243 >> 1)
          {
            sub_1000168EC(v243);
            sub_100016A0C();
            v253 = sub_10000F070(v258, v259, v260, v261);
            v238 = v253;
            v254 = &v406;
            goto LABEL_99;
          }

          v242 = &v406;
        }

        *(v242 - 32) = v238;
LABEL_95:
        sub_10001681C();
        v228 = v397;
        v244(v229, v397);
        *(v238 + 2) = v241;
        v245 = &v238[16 * v240];
        *(v245 + 4) = v236;
        *(v245 + 5) = v237;
        v226 += v398;
        if (!--v223)
        {

          goto LABEL_101;
        }
      }
    }

    sub_1000170FC();
LABEL_101:
    v262 = v379;
    object = v399;
    v377 = *(v379 + 16);
    if (v377)
    {
      break;
    }

LABEL_159:

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v50 = v388;
    v117 = v388[1].n128_u64[0];
    v123 = *(v390 + 16);
    v316 = sub_100017498();
    v318 = v317;
    if (v117 || v123 || (v355 & 1) != 0)
    {
      v327 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
      v50 = sub_100016B34(v327);
      sub_100016798(v50);
      v403 = 0xD000000000000011;
      v404 = v346;
      v410._countAndFlagsBits = sub_100017818();
      object = v410._object;
      sub_100017C58(v410);

      v411._countAndFlagsBits = 58;
      v411._object = 0xE100000000000000;
      sub_100017C58(v411);
      v328 = v403;
      v329 = v404;
      v50[3].n128_u64[1] = &type metadata for String;
      v50[2].n128_u64[0] = v328;
      v50[2].n128_u64[1] = v329;
      sub_100016614(v50);

      if (v117)
      {
        v50 = sub_100016B34(v327);
        sub_100016798(v50);
        v403 = 0x1000000000000012;
        v404 = v345;
        sub_100017C78();
        sub_100016E5C();

        v412._countAndFlagsBits = sub_1000169F4();
        sub_100017C58(v412);

        v330 = v403;
        v331 = v404;
        v50[3].n128_u64[1] = &type metadata for String;
        v50[2].n128_u64[0] = v330;
        v50[2].n128_u64[1] = v331;
        sub_100016614(v50);
      }

      if (v123)
      {
        v50 = sub_100016B34(v327);
        sub_100016798(v50);
        v403 = 0x1000000000000016;
        v404 = v344;
        sub_100017C78();
        sub_100016E5C();

        v413._countAndFlagsBits = sub_1000169F4();
        sub_100017C58(v413);

        v332 = v403;
        v333 = v404;
        v50[3].n128_u64[1] = &type metadata for String;
        v50[2].n128_u64[0] = v332;
        v50[2].n128_u64[1] = v333;
        sub_100016614(v50);
      }

      sub_100016B64();
      v334 = sub_100016B34(v327);
      sub_100016798(v334);
      v335[7] = &type metadata for String;
      v335[4] = v316;
      v335[5] = v318;
      sub_100016614(v335);

      sub_10001681C();
      v336 = sub_100017178();
      v337(v336);
      sub_10001681C();
      v338 = sub_100017164();
      v339(v338);
      sub_10001681C();
      v340 = sub_10001713C();
      v341(v340);
      sub_10001681C();
      v342 = sub_1000171AC();
      v343(v342);
    }

    else
    {

      sub_10001681C();
      v319 = sub_100017178();
      v320(v319);
      sub_10001681C();
      v321 = sub_100017164();
      v322(v321);
      sub_10001681C();
      v323 = sub_10001713C();
      v324(v323);
      sub_10001681C();
      v325 = sub_1000171AC();
      v326(v325);

      sub_100016B64();
    }
  }

  v263 = 0;
  v400 = *(v399 + 2);
  v376 = v379 + 32;
  v398 = v399 + 32;
  v264 = v402;
LABEL_103:
  sub_10000FDBC(v263, 1, v262);
  v391 = v263;
  v265 = (v376 + 16 * v263);
  v267 = *v265;
  v266 = v265[1];
  sub_100001F58(&qword_100020170, &qword_100018B40);
  inited = swift_initStackObject();
  sub_100016798(inited);
  v269[4] = 0xD000000000000016;
  v269[5] = v378;
  v269[6] = v267;
  v269[7] = v266;
  swift_bridgeObjectRetain_n();
  v270 = sub_100017BA8();
  sub_1000171E8();
  if (!v271)
  {
    goto LABEL_158;
  }

  v272 = 0;
  while (1)
  {
    if (v272 >= *(object + 16))
    {
      __break(1u);
      goto LABEL_170;
    }

    v273 = *(v264 + 16);

    if (v273)
    {
      v274 = sub_100016B4C();
      v276 = sub_1000133F4(v274, v275);
      if (v277)
      {
        if (*(*(*(v264 + 56) + 8 * v276) + 16))
        {
          sub_100017EA8();

          sub_100017C38();
          sub_100017EC8();
          sub_100016EF8();
          while (1)
          {
            sub_100016EC8();
            if ((v278 & 1) == 0)
            {
              break;
            }

            sub_1000171D4();
            v280 = v280 && v279 == v266;
            if (v280 || (sub_100017E68() & 1) != 0)
            {

              swift_isUniquelyReferenced_nonNull_native();
              sub_100016B10();
              sub_1000167EC();
              if (!v93)
              {
                v282 = v281;
                v283 = sub_100001F58(&qword_100020178, &qword_100018B48);
                if (sub_100016C38(v283))
                {
                  v284 = sub_100016B4C();
                  sub_1000133F4(v284, v285);
                  sub_100016D24();
                  if (!v280)
                  {
                    goto LABEL_193;
                  }
                }

                if (v282)
                {

                  sub_100016A70();
                  v287 = 8756450;
                  goto LABEL_139;
                }

                sub_100016644();
                *v302 = 8756450;
                sub_100016D44(v302);
                if (!v93)
                {
                  goto LABEL_152;
                }

LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
LABEL_189:
                __break(1u);
                goto LABEL_190;
              }

LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
              goto LABEL_183;
            }
          }
        }
      }
    }

    v288 = v401;
    if (!*(v401 + 16))
    {
      break;
    }

    v289 = sub_100016B4C();
    v291 = sub_1000133F4(v289, v290);
    if ((v292 & 1) == 0 || !*(*(*(v288 + 56) + 8 * v291) + 16))
    {
      break;
    }

    sub_100017EA8();

    sub_100017C38();
    sub_100017EC8();
    sub_100016EF8();
    do
    {
      sub_100016EC8();
      if ((v293 & 1) == 0)
      {

        goto LABEL_144;
      }

      sub_1000171D4();
      v295 = v280 && v294 == v266;
    }

    while (!v295 && (sub_100017E68() & 1) == 0);

    swift_isUniquelyReferenced_nonNull_native();
    sub_100016B10();
    sub_1000167EC();
    if (v93)
    {
      goto LABEL_179;
    }

    v297 = v296;
    v298 = sub_100001F58(&qword_100020178, &qword_100018B48);
    if (sub_100016C38(v298))
    {
      v299 = sub_100016B4C();
      sub_1000133F4(v299, v300);
      sub_100016D24();
      if (!v280)
      {
        goto LABEL_193;
      }
    }

    if ((v297 & 1) == 0)
    {
      sub_100016644();
      *v313 = 9215458;
      sub_100016D44(v313);
      if (!v93)
      {
LABEL_152:
        *(v270 + 16) = v303;
        goto LABEL_153;
      }

      goto LABEL_184;
    }

    sub_100016A70();
    v287 = 9215458;
LABEL_139:
    *v286 = v287;
    v301 = 0xA300000000000000;
LABEL_150:
    v286[1] = v301;

LABEL_153:
    v264 = v402;
    object = v399;
    ++v272;
    sub_1000171E8();
    if (v272 == v312)
    {
LABEL_158:
      v263 = v391 + 1;

      v314 = sub_100009DAC(v270);

      v315._rawValue = v314;
      sub_1000174A8(v315);

      v262 = v379;
      if (v263 == v377)
      {
        goto LABEL_159;
      }

      goto LABEL_103;
    }
  }

LABEL_144:
  swift_isUniquelyReferenced_nonNull_native();
  sub_100016B10();
  sub_1000167EC();
  if (v93)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v305 = v304;
  v306 = sub_100001F58(&qword_100020178, &qword_100018B48);
  if (sub_100016C38(v306))
  {
    v307 = sub_100016B4C();
    sub_1000133F4(v307, v308);
    sub_100016D24();
    if (!v280)
    {
      while (1)
      {
LABEL_193:
        sub_100017E88();
        __break(1u);
LABEL_194:
        sub_100017E58();
        __break(1u);
      }
    }
  }

  if (v305)
  {

    sub_100016A70();
    sub_100016EA4(v309);
    goto LABEL_150;
  }

  sub_100016644();
  sub_100016EA4(v310);
  sub_100016D44(v311);
  if (!v93)
  {
    goto LABEL_152;
  }

LABEL_171:
  __break(1u);
LABEL_172:

  sub_100016C58();
}

uint64_t sub_100008E50(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v53 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v2 = __chkstk_darwin(v53);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v51 = &v50 - v5;
  __chkstk_darwin(v4);
  v7 = &v50 - v6;
  v8 = sub_100017858();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  sub_100001F58(&qword_1000201A0, &qword_100018B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A30;
  sub_100017808();
  v16 = sub_100017818();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v14, v8);
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v20 = v8;
  sub_100017828();
  v21 = sub_100017818();
  v23 = v22;
  v19(v12, v8);
  *(inited + 48) = v21;
  *(inited + 56) = v23;
  v24 = sub_100009334(inited);
  v25 = v54;
  sub_100015B54(v54, v7, &qword_100020148, &qword_100018B20);

  v26 = sub_100017818();
  v28 = v27;
  v19(v7, v8);
  LOBYTE(v26) = sub_1000093F4(v26, v28, v24);

  if (v26)
  {
    sub_100015B54(v55, v7, &qword_100020148, &qword_100018B20);

    v29 = sub_100017818();
    v31 = v30;
    v19(v7, v8);
    LOBYTE(v29) = sub_1000093F4(v29, v31, v24);

    if ((v29 & 1) == 0)
    {
      v39 = 1;
LABEL_15:

      return v39 & 1;
    }
  }

  sub_100015B54(v55, v7, &qword_100020148, &qword_100018B20);

  v32 = sub_100017818();
  v34 = v33;
  v19(v7, v8);
  LOBYTE(v32) = sub_1000093F4(v32, v34, v24);

  if ((v32 & 1) == 0)
  {

    v38 = v25;
    goto LABEL_7;
  }

  sub_100015B54(v25, v7, &qword_100020148, &qword_100018B20);

  v35 = sub_100017818();
  v37 = v36;
  v19(v7, v8);
  LOBYTE(v35) = sub_1000093F4(v35, v37, v24);
  v38 = v25;

  if (v35)
  {
LABEL_7:
    v40 = v51;
    sub_100015B54(v38, v51, &qword_100020148, &qword_100018B20);

    v41 = sub_100017818();
    v43 = v42;
    v19(v40, v8);
    v44 = v52;
    sub_100015B54(v55, v52, &qword_100020148, &qword_100018B20);

    v45 = sub_100017818();
    v47 = v46;
    v19(v44, v20);
    if (v41 == v45 && v43 == v47)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_100017E68();
    }

    goto LABEL_15;
  }

  v39 = 0;
  return v39 & 1;
}

uint64_t sub_100009334(uint64_t a1)
{
  result = sub_100017D18();
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_100013504(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1000093F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100017EA8();
  sub_100017C38();
  v6 = sub_100017EC8();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_100017E68();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1000094E0(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a3;
  v19[1] = a1;
  v4 = sub_100001F58(&qword_1000200A0, &qword_100018AA0);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_100001F58(&qword_100020108, &qword_100018AE8);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = sub_1000176A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015B54(a2, v6, &qword_1000200A0, &qword_100018AA0);
  v14 = sub_1000176F8();
  if (sub_10000567C(v6, 1, v14) == 1)
  {
    sub_100015DFC(v6, &qword_1000200A0, &qword_100018AA0);
    sub_100002004(v9, 1, 1, v10);
LABEL_4:
    sub_100015DFC(v9, &qword_100020108, &qword_100018AE8);
    goto LABEL_5;
  }

  sub_1000176B8();
  (*(*(v14 - 8) + 8))(v6, v14);
  if (sub_10000567C(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v13, v9, v10);
  if ((v20 & 1) == 0)
  {
    v17 = sub_100017698();
    sub_100006AB4(v17);
    v15 = v18;

    (*(v11 + 8))(v13, v10);
    return v15 & 1;
  }

  (*(v11 + 8))(v13, v10);
LABEL_5:
  v15 = 1;
  return v15 & 1;
}

void *sub_1000097A8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_100017798();
  v5 = *(v33 - 8);
  v6 = __chkstk_darwin(v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_1000140EC(0, v17[2] + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = v19[2];
      v20 = v19[3];
      v22 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v28 = (v21 + 1);
        v24 = v21;
        sub_1000140EC(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      v19[2] = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100009A6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10000F538(*(a1 + 16), 0);
  v4 = sub_1000152CC(&v6, v3 + 4, v2, a1);
  sub_1000158B8(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100009AFC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_1000178A8();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v21 = _swiftEmptyArrayStorage;
  sub_100014144(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_100014144(v13 > 1, v14 + 1, 1);
      v10 = v21;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

char *sub_100009CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_10000F538(*(a1 + 16), 0);
  v4 = sub_1000152CC(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1000158B8(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_10000F9E8(&v7);
  return v7;
}

unint64_t sub_100009DAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F58(&qword_100020180, &qword_100018B50);
    v2 = sub_100017E18();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    sub_100001F58(&qword_100020188, &qword_100018B58);
    swift_dynamicCast();
    v26 = v24;
    v27 = v25;
    v23 = v24;
    v24 = v25;
    result = sub_1000133F4(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      result = sub_10001518C(&v23, v2[7] + 32 * v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = (v2[7] + 32 * result);
      v19 = v24;
      *v18 = v23;
      v18[1] = v19;
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009FEC()
{
  sub_100001F58(&qword_100020170, &qword_100018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A50;
  sub_100016834();
  *(v1 + 32) = 0xD000000000000021;
  *(v1 + 40) = v2;
  *(inited + 48) = sub_1000178C8();
  *(inited + 56) = v3;
  *(inited + 64) = 0x746E6169726156;
  *(inited + 72) = 0xE700000000000000;
  *(inited + 80) = sub_100017938();
  *(inited + 88) = v4;
  *(inited + 96) = 1701869908;
  *(inited + 104) = 0xE400000000000000;
  sub_1000178E8();
  sub_100016C94();
  if (v7)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v5;
  }

  *(inited + 112) = v6;
  *(inited + 120) = v8;
  *(inited + 128) = 0x4E20656372756F53;
  *(inited + 136) = 0xEB00000000656D61;
  sub_1000178D8();
  sub_100016C94();
  if (v7)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = v9;
  }

  *(inited + 144) = v10;
  *(inited + 152) = v11;
  *(inited + 160) = 0x737574617453;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_100017918();
  *(inited + 184) = v12;
  *(inited + 192) = 0x636E657265686F43;
  *(inited + 200) = 0xE900000000000065;
  sub_1000178F8();
  sub_100016C94();
  if (v7)
  {
    v15 = 0xE000000000000000;
  }

  else
  {
    v15 = v13;
  }

  *(inited + 208) = v14;
  *(inited + 216) = v15;
  *(inited + 224) = 0x6E6F6973726556;
  *(inited + 232) = 0xE700000000000000;
  sub_100017948();
  sub_100016C94();
  if (v7)
  {
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = v16;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v18;
  *(inited + 256) = 0x2079616C70736944;
  *(inited + 264) = 0xEF6E6F6973726556;
  sub_100017908();
  sub_100016C94();
  if (v7)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = v19;
  }

  *(inited + 272) = v20;
  *(inited + 280) = v21;
  *(inited + 288) = 0x6553207465737341;
  *(inited + 296) = 0xE900000000000074;
  sub_100017958();
  sub_100016C94();
  if (v7)
  {
    v24 = 0xE000000000000000;
  }

  else
  {
    v24 = v22;
  }

  *(inited + 304) = v23;
  *(inited + 312) = v24;
  return sub_100017BA8();
}

void sub_10000A1C4(uint64_t a1)
{
  sub_100016D0C();
  v2 = v1;
  v3 = sub_100017858();
  sub_100016528();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100016634();
  v9 = v8 - v7;
  v10 = 0;
  v11 = *(v2 + 16);
  v37 = v2;
  v38 = v11;
  v35 = (v5 + 8);
  v36 = v5 + 16;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v38 == v10)
    {
      goto LABEL_21;
    }

    sub_100016828();
    v14 = v3;
    (*(v5 + 16))(v9, v37 + v13 + *(v5 + 72) * v10, v3);
    v15 = sub_1000175A8();
    v16 = sub_100017818();
    if (!*(v15 + 16))
    {

LABEL_20:

      (*v35)(v9, v14);
LABEL_21:
      sub_100016C58();
      return;
    }

    v18 = sub_1000133F4(v16, v17);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21 = *(*(v15 + 56) + 8 * v18);

    __chkstk_darwin(v22);
    *(&v34 - 2) = v9;
    v23 = sub_100009AFC(sub_100015E54, (&v34 - 4), v21);

    v24 = v23[2];
    v25 = v12[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v12[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      sub_10000F178(isUniquelyReferenced_nonNull_native, v28, 1, v12, &qword_100020278, &qword_100018C60, &type metadata accessor for AssetManagerShared.UsageAliasSubscription, &type metadata accessor for AssetManagerShared.UsageAliasSubscription);
      v12 = v29;
    }

    if (v23[2])
    {
      v30 = (v12[3] >> 1) - v12[2];
      sub_1000178A8();
      if (v30 < v24)
      {
        goto LABEL_24;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v31 = v12[2];
        v32 = __OFADD__(v31, v24);
        v33 = v31 + v24;
        if (v32)
        {
          goto LABEL_25;
        }

        v12[2] = v33;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_23;
      }
    }

    v3 = v14;
    (*v35)(v9, v14);
    ++v10;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_10000A504(uint64_t *a1)
{
  sub_100017818();

  return sub_100017888();
}

uint64_t sub_10000A570(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100013260(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_100017588();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10000A670()
{
  sub_1000020E4();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v7 = sub_100017728();
  v1[18] = v7;
  sub_1000165D4(v7);
  v1[19] = v8;
  v1[20] = sub_100016BC8();
  v9 = sub_1000178A8();
  v1[21] = v9;
  sub_1000165D4(v9);
  v1[22] = v10;
  v1[23] = sub_100016BC8();
  v11 = sub_100001F58(&qword_100020260, &qword_100018C48);
  sub_1000168F8(v11);
  v1[24] = sub_100016BC8();
  v12 = sub_100001F58(&qword_100020268, &qword_100018C50);
  sub_1000168F8(v12);
  v1[25] = sub_100016BC8();
  v13 = sub_100017858();
  v1[26] = v13;
  sub_1000165D4(v13);
  v1[27] = v14;
  v1[28] = sub_100016DFC();
  v1[29] = swift_task_alloc();
  v15 = sub_1000179F8();
  v1[30] = v15;
  sub_1000165D4(v15);
  v1[31] = v16;
  v1[32] = sub_100016BC8();
  sub_100016D74();
  v1[33] = v17;
  v1[34] = sub_100016BC8();
  v18 = sub_100016720();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_10000A8A8()
{
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 136), *(v0 + 120));
  sub_100001F58(&qword_1000200D0, &qword_100018AC0);
  sub_100016C7C();
  if (swift_dynamicCast())
  {
    sub_10000D70C((v0 + 56), v0 + 16);
    sub_100015E74((v0 + 16), *(v0 + 40));
    v1 = *(sub_100017608() + 16);
    if (v1)
    {
      v74 = *(*(v0 + 248) + 16);
      sub_100016828();
      v4 = v2 + v3;
      v6 = (v5 - 8);
      v8 = (v7 + 32);
      v9 = _swiftEmptyArrayStorage;
      v71 = (v7 + 8);
      v72 = *(v5 + 56);
      do
      {
        v10 = *(v0 + 256);
        v11 = *(v0 + 240);
        v12 = *(v0 + 192);
        v13 = sub_100016E50();
        v74(v13);
        sub_1000179E8();
        sub_100017838();
        (*v6)(v10, v11);
        v14 = sub_1000177F8();
        if (sub_10000567C(v12, 1, v14) == 1)
        {
          v15 = *(v0 + 192);
          (*v71)(*(v0 + 224), *(v0 + 208));
          sub_100015DFC(v15, &qword_100020260, &qword_100018C48);
          v16 = 1;
        }

        else
        {
          sub_100015DFC(*(v0 + 192), &qword_100020260, &qword_100018C48);
          v17 = sub_100017110();
          v18(v17);
          v16 = 0;
        }

        v19 = *(v0 + 200);
        v20 = *(v0 + 208);
        sub_100002004(v19, v16, 1, v20);
        if (sub_10000567C(v19, 1, v20) == 1)
        {
          sub_100015DFC(*(v0 + 200), &qword_100020268, &qword_100018C50);
        }

        else
        {
          v21 = *v8;
          (*v8)(*(v0 + 232), *(v0 + 200), *(v0 + 208));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1000166DC();
            sub_10000F178(v26, v27, v28, v9, &qword_100020270, &qword_100018C58, v29, v30);
            v9 = v31;
          }

          v23 = *(v9 + 2);
          v22 = *(v9 + 3);
          if (v23 >= v22 >> 1)
          {
            v32 = sub_1000168EC(v22);
            sub_10000F178(v32, v23 + 1, 1, v9, &qword_100020270, &qword_100018C58, &type metadata accessor for UseCaseIdentifier, &type metadata accessor for UseCaseIdentifier);
            v9 = v33;
          }

          *(v9 + 2) = v23 + 1;
          sub_100016828();
          v21(&v9[v24 + *(v25 + 72) * v23]);
        }

        v4 += v72;
        --v1;
      }

      while (v1);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    if (*(v9 + 2))
    {
      sub_10000A1C4(v9);
      v37 = v36;

      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = 0;
        sub_100016828();
        v73 = v37 + v41;
        v75 = v42;
        v43 = *(v0 + 104);
        v76 = (v42 + 8);
        while (v39 < *(v37 + 16))
        {
          (*(v75 + 16))(*(v0 + 184), v73 + *(v75 + 72) * v39, *(v0 + 168));
          v44 = sub_100017878();
          v46 = v45;
          if (*(v43 + 16))
          {
            v47 = v44;
            sub_100017EA8();
            sub_100017C38();
            v48 = sub_100017EC8();
            v49 = ~(-1 << *(v43 + 32));
            while (1)
            {
              v50 = v48 & v49;
              if (((*(v43 + 56 + (((v48 & v49) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v49)) & 1) == 0)
              {
                break;
              }

              v51 = (*(v43 + 48) + 16 * v50);
              if (*v51 != v47 || v51[1] != v46)
              {
                v53 = sub_100017E68();
                v48 = v50 + 1;
                if ((v53 & 1) == 0)
                {
                  continue;
                }
              }

              v54._rawValue = sub_100017898();
              v55 = sub_100017628(v54);

              if (!v55)
              {
                v56 = sub_100016C88();
                v40 = v57(v56);
                goto LABEL_33;
              }

              sub_100017D88();
              v69 = sub_100016C88();
              v70(v69);
              goto LABEL_40;
            }
          }

          (*v76)(*(v0 + 184), *(v0 + 168));

LABEL_33:
          if (++v39 == v38)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        return AssetSubscription.status()(v40);
      }

LABEL_34:
    }

    else
    {
      v59 = *(v0 + 152);
      v58 = *(v0 + 160);
      v60 = *(v0 + 144);

      sub_100015E74((v0 + 16), *(v0 + 40));
      sub_1000178B8();
      sub_100017708();
      v61 = *(v59 + 8);
      *(v0 + 280) = v61;
      *(v0 + 288) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v58, v60);
      sub_100016C88();
      v62 = sub_100017C48();

      if (v62 >= 1)
      {
        sub_100015E74((v0 + 16), *(v0 + 40));
        sub_100016A00();
        sub_1000178B8();
        swift_task_alloc();
        sub_100016904();
        *(v0 + 296) = v63;
        *v63 = v64;
        v63[1] = sub_10000B070;
        v40 = *(v0 + 96);

        return AssetSubscription.status()(v40);
      }
    }

    sub_100017978();
    sub_100016710();
    v65 = sub_100016C00();
    v66(v65);
LABEL_40:
    sub_10000202C((v0 + 16));
  }

  else
  {
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_100015DFC(v0 + 56, &qword_1000200D8, &qword_100018AC8);
    sub_100017978();
    sub_100016710();
    v34 = sub_100016C00();
    v35(v34);
  }

  sub_100016DD4();

  sub_1000020D8();

  return v67();
}

uint64_t sub_10000B070()
{
  sub_100016CE0();
  sub_1000020F0();
  v2 = *(v1 + 280);
  v3 = *v0;
  sub_1000020C8();
  *v4 = v3;

  v5 = sub_100016C00();
  v2(v5);
  v6 = sub_100016720();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000B1B4()
{
  sub_10000202C((v0 + 16));
  sub_100016DD4();

  sub_1000020D8();

  return v1();
}

uint64_t sub_10000B264()
{
  sub_1000020E4();
  *(v0 + 825) = v1;
  *(v0 + 824) = v2;
  *(v0 + 416) = v3;
  v4 = sub_100017548();
  *(v0 + 424) = v4;
  sub_1000165D4(v4);
  *(v0 + 432) = v5;
  *(v0 + 440) = sub_100016BC8();
  v6 = sub_1000174C8();
  *(v0 + 448) = v6;
  sub_1000165D4(v6);
  *(v0 + 456) = v7;
  *(v0 + 464) = sub_100016BC8();
  v8 = sub_100001F58(&qword_100020120, &qword_100018B00);
  *(v0 + 472) = v8;
  sub_1000165D4(v8);
  *(v0 + 480) = v9;
  *(v0 + 488) = sub_100016BC8();
  v10 = sub_100017588();
  *(v0 + 496) = v10;
  sub_1000165D4(v10);
  *(v0 + 504) = v11;
  *(v0 + 512) = sub_100016DFC();
  *(v0 + 520) = swift_task_alloc();
  v12 = sub_100001F58(&qword_100020210, &qword_100018BF0);
  sub_1000168F8(v12);
  *(v0 + 528) = sub_100016BC8();
  v13 = sub_100001F58(&qword_100020218, &qword_100018BF8);
  sub_1000168F8(v13);
  *(v0 + 536) = sub_100016BC8();
  v14 = sub_100001F58(&qword_100020220, &qword_100018C00);
  sub_1000168F8(v14);
  *(v0 + 544) = sub_100016BC8();
  v15 = sub_100017968();
  *(v0 + 552) = v15;
  sub_1000165D4(v15);
  *(v0 + 560) = v16;
  *(v0 + 568) = sub_100016DFC();
  *(v0 + 576) = swift_task_alloc();
  *(v0 + 584) = swift_task_alloc();
  v17 = sub_100017978();
  *(v0 + 592) = v17;
  sub_1000165D4(v17);
  *(v0 + 600) = v18;
  *(v0 + 608) = sub_100016BC8();
  v19 = sub_100017A18();
  *(v0 + 616) = v19;
  sub_1000165D4(v19);
  *(v0 + 624) = v20;
  *(v0 + 632) = sub_100016BC8();
  v21 = sub_1000173E8();
  *(v0 + 640) = v21;
  sub_1000165D4(v21);
  *(v0 + 648) = v22;
  *(v0 + 656) = sub_100016BC8();
  v23 = sub_100017488();
  *(v0 + 664) = v23;
  sub_1000165D4(v23);
  *(v0 + 672) = v24;
  *(v0 + 680) = sub_100016BC8();
  v25 = sub_100016720();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10000B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100017284();
  a20 = v22;
  a21 = v23;
  a19 = v21;
  if (*(v21 + 824) == 1)
  {
    v24 = [objc_allocWithZone(NSDateFormatter) init];
    [v24 setDateStyle:1];
    [v24 setTimeStyle:3];
    sub_100017478();
    isa = sub_100017468().super.isa;
    v26 = sub_100016E44();
    v27(v26);
    [v24 setTimeZone:isa];

    sub_1000173C8();
    v28 = sub_1000173B8().super.isa;
    v29 = sub_100016CD4();
    v30(v29);
    v31 = [v24 stringFromDate:v28];

    sub_100017BE8();
    v32 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v33 = sub_100016B34(v32);
    *(v33 + 16) = xmmword_100018A20;
    strcpy(&a10, "Updated on: ");
    BYTE13(a10) = 0;
    HIWORD(a10) = -5120;
    v54._countAndFlagsBits = sub_100016C0C();
    sub_100017C58(v54);

    v34 = a10;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = v34;
    sub_100016614(v33);
  }

  v35 = *(v21 + 416);
  v36 = *(v35 + 16);
  *(v21 + 688) = v36;
  if (v36)
  {
    v37 = v35 + 32;
    v38 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100015D08(v37, v21 + 200);
      sub_10000D70C((v21 + 200), v21 + 320);
      v39 = sub_100016C0C();
      sub_100001F58(v39, v40);
      v41 = sub_1000169F4();
      sub_100001F58(v41, v42);
      if (swift_dynamicCast())
      {
        if (*(v21 + 304))
        {
          sub_10000D70C((v21 + 280), v21 + 240);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1000166DC();
            v38 = sub_10000F274(v45, v46, v47, v38);
          }

          v44 = v38[2];
          v43 = v38[3];
          if (v44 >= v43 >> 1)
          {
            v48 = sub_1000168EC(v43);
            v38 = sub_10000F274(v48, v44 + 1, 1, v38);
          }

          v38[2] = v44 + 1;
          sub_10000D70C((v21 + 240), &v38[5 * v44 + 4]);
          goto LABEL_14;
        }
      }

      else
      {
        *(v21 + 312) = 0;
        *(v21 + 280) = 0u;
        *(v21 + 296) = 0u;
      }

      sub_100015DFC(v21 + 280, &qword_1000200D8, &qword_100018AC8);
LABEL_14:
      v37 += 40;
      if (!--v36)
      {
        goto LABEL_17;
      }
    }
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_17:
  *(v21 + 696) = v38;
  swift_task_alloc();
  sub_100016904();
  *(v21 + 704) = v49;
  *v49 = v50;
  v49[1] = sub_10000B998;
  sub_100017230();

  return static AssetLock.lockResources(_:)(v51);
}

uint64_t sub_10000B998()
{
  sub_1000020E4();
  sub_1000020F0();
  v3 = v2;
  sub_100016884();
  *v4 = v3;
  v5 = *v1;
  sub_1000020C8();
  *v6 = v5;
  *(v3 + 712) = v0;

  if (v0)
  {
  }

  sub_100016878();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000BA9C()
{
  v1 = v0[87];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000140CC(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      sub_100015D08(v3, (v0 + 45));
      sub_100015E74(v0 + 45, v0[48]);
      v4 = sub_1000175F8();
      v6 = v5;
      sub_10000202C(v0 + 45);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000168EC(v7);
        sub_100016E38();
        sub_1000140CC(v10, v11, v12);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v4;
      v9[5] = v6;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v0[90] = _swiftEmptyArrayStorage;
  sub_1000177E8();
  v13 = swift_task_alloc();
  v0[91] = v13;
  *v13 = v0;
  v13[1] = sub_10000BC34;

  return static CoherentAssetLock.createUnlockedAssetLock(resources:)(_swiftEmptyArrayStorage);
}

uint64_t sub_10000BC34()
{
  sub_100016CE0();
  sub_100016884();
  *v3 = v2;
  v4 = *v1;
  sub_100016884();
  *v5 = v4;
  *(v7 + 736) = v6;
  *(v7 + 744) = v0;

  sub_100016878();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000BD64()
{
  v1 = v0[93];
  sub_1000177C8();
  if (v1)
  {
  }

  v0[94] = 0;
  v2 = [objc_allocWithZone(UAFAssetSetManager) init];
  v0[95] = v2;
  v0[96] = sub_10000D430(v2);
  sub_100001F58(&qword_100020228, &qword_100018C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018A20;
  *(inited + 32) = sub_100017868();
  *(inited + 40) = v4;

  *(inited + 48) = sub_100009A6C(v5);
  sub_100001F58(&qword_100020230, &qword_100018C10);
  sub_10001708C();
  sub_100017BA8();
  isa = sub_100017B98().super.isa;
  v0[97] = isa;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_10000BF80;
  v7 = swift_continuation_init();
  v0[17] = sub_100001F58(&qword_100020238, &qword_100018C18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000D620;
  v0[13] = &unk_10001CE48;
  v0[14] = v7;
  [v2 downloadStatusForSubscribers:isa queue:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000BF80()
{
  sub_1000020E4();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;
  sub_100016878();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000C050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v22 = *(v20 + 776);
  v23 = *(v20 + 688);
  *(v20 + 784) = *(v20 + 400);

  if (v23)
  {
    v24 = *(v20 + 416);
    v25 = *(v20 + 752);
    *(v20 + 808) = _swiftEmptyArrayStorage;
    *(v20 + 800) = 0;
    *(v20 + 792) = v25;
    sub_100015E74((v24 + 32), *(v24 + 56));
    swift_task_alloc();
    sub_100016904();
    *(v20 + 816) = v26;
    *v26 = v27;
    sub_100016938(v26);
    sub_100017058();
    sub_100016BAC();

    return sub_10000A670();
  }

  else
  {

    v30 = 0;
    v31 = _swiftEmptyArrayStorage[2];
LABEL_6:
    v32 = (&off_10001CC18 + 3 * v30 + 6);
    while (v30 != 9)
    {
      if (v30 > 8)
      {
        __break(1u);
        return result;
      }

      v33 = v32 + 24;
      ++v30;
      v34 = *v32;
      if ((*(v20 + 825) & 1) == 0)
      {
        v32 += 24;
        if (v34)
        {
          continue;
        }
      }

      v35 = *(v33 - 5);
      v21 = *(v33 - 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      a16 = _swiftEmptyArrayStorage;
      if ((result & 1) == 0)
      {
        v36 = sub_100016CA0();
        result = sub_10001419C(v36, v37, 1);
      }

      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      v31 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v41 = sub_100016788(v38);
        result = sub_10001419C(v41, v39 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v31;
      v40 = &_swiftEmptyArrayStorage[3 * v39];
      v40[4] = v35;
      v40[5] = v21;
      *(v40 + 48) = v34;
      goto LABEL_6;
    }

    if (v31)
    {
      v42 = *(v20 + 504);
      v43 = sub_100016CA0();
      sub_100014074(v43, v31, 0);
      v21 = &_swiftEmptyArrayStorage[5];
      do
      {
        swift_bridgeObjectRetain_n();
        sub_100017568();
        sub_100017558();

        v44 = sub_100016E14();
        v45(v44);
        a16 = _swiftEmptyArrayStorage;
        v47 = _swiftEmptyArrayStorage[2];
        v46 = _swiftEmptyArrayStorage[3];
        if (v47 >= v46 >> 1)
        {
          sub_100016788(v46);
          sub_100016E38();
          sub_100014074(v49, v50, v51);
        }

        _swiftEmptyArrayStorage[2] = v47 + 1;
        sub_100016828();
        (*(v42 + 32))(_swiftEmptyArrayStorage + v48 + *(v42 + 72) * v47);
        v21 += 3;
        --v31;
      }

      while (v31);
    }

    v52 = _swiftEmptyArrayStorage[2];
    if (v52)
    {
      v53 = *(v20 + 504);
      v54 = sub_100016CA0();
      sub_1000140CC(v54, v52, 0);
      v53 += 16;
      sub_100016828();
      v56 = _swiftEmptyArrayStorage + v55;
      v106 = *(v53 + 56);
      v110 = v57;
      v58 = (v53 - 8);
      do
      {
        v59 = *(v20 + 512);
        v60 = *(v20 + 496);
        v61 = sub_100016E44();
        v110(v61);
        sub_100017578();
        sub_100016E5C();
        (*v58)(v59, v60);
        a16 = _swiftEmptyArrayStorage;
        v63 = _swiftEmptyArrayStorage[2];
        v62 = _swiftEmptyArrayStorage[3];
        if (v63 >= v62 >> 1)
        {
          v65 = sub_100016788(v62);
          sub_1000140CC(v65, v63 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v63 + 1;
        v64 = &_swiftEmptyArrayStorage[2 * v63];
        v64[4] = v21;
        v64[5] = _swiftEmptyArrayStorage;
        v56 += v106;
        --v52;
      }

      while (v52);
    }

    v114 = sub_100009334(_swiftEmptyArrayStorage);
    *(v20 + 408) = _swiftEmptyArrayStorage;
    v66 = sub_100016C0C();
    sub_100001F58(v66, v67);
    sub_1000165BC();
    sub_1000161FC(v68, &qword_100020158, &qword_100018B30, v69);
    sub_1000174B8();
    v70 = _swiftEmptyArrayStorage[2];
    if (v70)
    {
      v71 = *(v20 + 560) + 16;
      sub_100016828();
      v73 = _swiftEmptyArrayStorage + v72;
      v107 = *(v71 + 56);
      v111 = v74;
      do
      {
        v75 = sub_100016E50();
        v111(v75);
        sub_100009FEC();
        v76 = sub_100016E44();
        v77(v76);
        v78 = swift_task_alloc();
        v79 = sub_100016958(v78, v114);

        v80 = sub_100009DAC(v79);

        v81._rawValue = v80;
        sub_1000174A8(v81);

        v73 += v107;
        --v70;
      }

      while (v70);
    }

    v103 = *(v20 + 760);
    v82 = *(v20 + 624);
    v108 = *(v20 + 616);
    v112 = *(v20 + 632);
    v83 = *(v20 + 440);
    v84 = *(v20 + 432);
    v102 = *(v20 + 424);

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v85 = sub_100017498();
    v87 = v86;
    v88 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v89 = sub_100016B34(v88);
    *(v89 + 16) = xmmword_100018A20;
    *(v89 + 56) = &type metadata for String;
    *(v89 + 32) = v85;
    *(v89 + 40) = v87;
    sub_100016614(v89);

    (*(v84 + 8))(v83, v102);
    v90 = sub_1000169F4();
    v91(v90);
    sub_1000177D8();

    (*(v82 + 8))(v112, v108);
    sub_100016568();
    v104 = v93;
    v105 = v92;
    v109 = *(v20 + 488);
    v113 = *(v20 + 464);
    v115 = *(v20 + 440);

    sub_1000020D8();
    sub_100016BAC();

    return v95(v94, v95, v96, v97, v98, v99, v100, v101, v102, v104, v105, v109, v113, v115, v20, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_10000C74C()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  v3 = sub_100016720();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001724C();
  v154 = v20[79];
  v21 = v20[78];
  v22 = v20[77];
  v23 = v20[76];
  v24 = v20[75];
  v25 = v20[74];
  v168 = v20[99];
  v26 = v20[67];
  v27 = v20[66];
  v28 = v20[52] + 40 * v20[100];
  v29 = *(v28 + 56);
  sub_100015E74((v28 + 32), v29);
  (*(v24 + 16))(v26, v23, v25);
  v30 = sub_1000167D8();
  sub_100002004(v30, v31, v32, v33);
  (*(v21 + 16))(v27, v154, v22);
  sub_1000169E8();
  sub_100002004(v34, v35, v36, v22);

  v37 = v168;
  sub_100017618();
  v169 = v20;
  if (v37)
  {
    sub_1000172E0(v20[92]);

    sub_100015DFC(v29, &qword_100020210, &qword_100018BF0);
    sub_100015DFC(v25, &qword_100020218, &qword_100018BF8);
    v38 = sub_100016C00();
    v39(v38);
    sub_100016EBC();
    sub_100002004(v40, v41, v42, v22);
    sub_100015DFC(v23, &qword_100020220, &qword_100018C00);
    v43 = v20[101];
    v44 = v20;
  }

  else
  {
    v45 = v20[73];
    v46 = v20[70];
    sub_1000172E0(v20[92]);
    sub_100015DFC(v29, &qword_100020210, &qword_100018BF0);
    sub_100015DFC(v25, &qword_100020218, &qword_100018BF8);
    sub_1000169E8();
    sub_100002004(v47, v48, v49, v22);
    v164 = *(v46 + 32);
    v164(v45, v23, v22);
    v50 = sub_100016E68();
    v51(v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v20[101];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_40:
      sub_1000169D0();
      v140 = sub_1000166DC();
      sub_10000F178(v140, v141, v142, v43, v143, v144, v145, v146);
      v43 = v147;
    }

    v53 = v43[2];
    if (v53 >= v43[3] >> 1)
    {
      sub_1000169D0();
      sub_10000F178(v148, v149, 1, v43, v150, v151, v152, &type metadata accessor for ResourceStatusOutput);
      v43 = v153;
    }

    v54 = v20[72];
    v55 = v169[70];
    v25 = v169[69];
    (*(v55 + 8))(v20[73], v25);
    v56 = sub_100016CD4();
    v57(v56);
    v43[2] = v53 + 1;
    sub_100016828();
    v59 = v43 + v58 + *(v55 + 72) * v53;
    v44 = v169;
    v164(v59, v54, v25);
  }

  v60 = v44[100] + 1;
  if (v60 == v44[86])
  {

    v61 = 0;
    v155 = v43;
    v164 = v43[2];
    v20 = _swiftEmptyArrayStorage;
    v62 = &off_10001CC18;
    v43 = _swiftEmptyArrayStorage;
LABEL_9:
    v63 = (&off_10001CC18 + 3 * v61 + 6);
    while (v61 != 9)
    {
      if (v61 > 8)
      {
        __break(1u);
        goto LABEL_40;
      }

      v64 = v63 + 24;
      ++v61;
      v65 = *v63;
      if ((*(v44 + 825) & 1) == 0)
      {
        v63 += 24;
        if (v65)
        {
          continue;
        }
      }

      v67 = *(v64 - 5);
      v66 = *(v64 - 4);

      a16 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_100016CA0();
        sub_10001419C(v68, v69, 1);
      }

      v71 = _swiftEmptyArrayStorage[2];
      v70 = _swiftEmptyArrayStorage[3];
      v25 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        v73 = sub_100016788(v70);
        sub_10001419C(v73, v71 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v25;
      v72 = &_swiftEmptyArrayStorage[3 * v71];
      v72[4] = v67;
      v72[5] = v66;
      *(v72 + 48) = v65;
      v44 = v169;
      goto LABEL_9;
    }

    v77 = _swiftEmptyArrayStorage[2];
    if (v77)
    {
      v78 = v44[63];
      v79 = sub_100016CA0();
      sub_100014074(v79, v77, 0);
      a10 = _swiftEmptyArrayStorage;
      v25 = &_swiftEmptyArrayStorage[5];
      do
      {
        swift_bridgeObjectRetain_n();
        sub_100017568();
        sub_100017558();

        v80 = sub_100016E14();
        v81(v80);
        a16 = _swiftEmptyArrayStorage;
        v83 = _swiftEmptyArrayStorage[2];
        v82 = _swiftEmptyArrayStorage[3];
        v62 = (v83 + 1);
        if (v83 >= v82 >> 1)
        {
          sub_100016788(v82);
          sub_100016E38();
          sub_100014074(v85, v86, v87);
        }

        _swiftEmptyArrayStorage[2] = v62;
        sub_100016828();
        (*(v78 + 32))(_swiftEmptyArrayStorage + v84 + *(v78 + 72) * v83);
        v25 += 3;
        --v77;
      }

      while (v77);
    }

    v88 = _swiftEmptyArrayStorage[2];
    if (v88)
    {
      v89 = v44[63];
      v90 = sub_100016CA0();
      sub_1000140CC(v90, v88, 0);
      sub_100016828();
      v92 = _swiftEmptyArrayStorage + v91;
      v158 = *(v89 + 72);
      v161 = v93;
      do
      {
        v94 = sub_100016E44();
        v161(v94);
        sub_100017578();
        sub_100016E5C();
        v95 = sub_100016C00();
        v96(v95);
        a16 = _swiftEmptyArrayStorage;
        v98 = _swiftEmptyArrayStorage[2];
        v97 = _swiftEmptyArrayStorage[3];
        if (v98 >= v97 >> 1)
        {
          v100 = sub_100016788(v97);
          sub_1000140CC(v100, v98 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v98 + 1;
        v99 = &_swiftEmptyArrayStorage[2 * v98];
        v99[4] = v25;
        v99[5] = v62;
        v92 += v158;
        --v88;
      }

      while (v88);
      v44 = v169;
    }

    v101 = sub_100009334(_swiftEmptyArrayStorage);
    v44[51] = _swiftEmptyArrayStorage;
    v102 = sub_100016A00();
    sub_100001F58(v102, v103);
    sub_1000165BC();
    sub_1000161FC(v104, &qword_100020158, &qword_100018B30, v105);
    sub_1000174B8();
    v106 = v155[2];
    if (v106)
    {
      v107 = v44[70] + 16;
      sub_100016828();
      v110 = v108 + v109;
      v162 = *(v107 + 56);
      v165 = v111;
      do
      {
        v112 = sub_100016E44();
        v165(v112);
        sub_100009FEC();
        v113 = sub_100016C00();
        v114(v113);
        v115 = swift_task_alloc();
        v116 = sub_100016958(v115, v101);

        v117 = sub_100009DAC(v116);

        v118._rawValue = v117;
        sub_1000174A8(v118);

        v110 += v162;
        --v106;
      }

      while (v106);
    }

    v159 = v44[95];
    v119 = v44[78];
    v166 = v44[77];
    v170 = v44[79];
    v120 = v44[55];
    v121 = v44;
    v122 = v44[54];
    v156 = v121[53];

    sub_100017538();
    sub_1000174F8();
    sub_1000174E8();
    sub_1000174D8();
    sub_100017518();
    sub_100017508();
    sub_100017528();
    v123 = sub_100017498();
    v125 = v124;
    v126 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
    v127 = sub_100016B34(v126);
    *(v127 + 16) = xmmword_100018A20;
    *(v127 + 56) = &type metadata for String;
    *(v127 + 32) = v123;
    *(v127 + 40) = v125;
    sub_100016614(v127);

    (*(v122 + 8))(v120, v156);
    v128 = sub_1000169F4();
    v129(v128);
    sub_1000177D8();

    (*(v119 + 8))(v170, v166);
    sub_100016568();
    v157 = v131;
    v160 = v130;
    v163 = v121[61];
    v167 = v121[58];
    v171 = v121[55];

    sub_1000020D8();
    sub_100016BAC();

    return v133(v132, v133, v134, v135, v136, v137, v138, v139, a9, a10, v157, v160, v163, v167, v171, a16, a17, a18, a19, a20);
  }

  else
  {
    v44[101] = v43;
    v44[100] = v60;
    v44[99] = 0;
    sub_100015E74((v44[52] + 40 * v60 + 32), *(v44[52] + 40 * v60 + 56));
    v74 = swift_task_alloc();
    v44[102] = v74;
    *v74 = v44;
    sub_100016938(v74);
    sub_100017058();
    sub_100016BAC();

    return sub_10000A670();
  }
}

uint64_t sub_10000D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017268();

  sub_100016568();
  sub_100016D84();

  sub_1000020D8();
  sub_100017214();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_10000D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017268();
  (*(v16[78] + 8))(v16[79], v16[77]);

  sub_100016568();
  sub_100016D84();

  sub_1000020D8();
  sub_100017214();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

char *sub_10000D430(void *a1)
{
  sub_100017868();
  v2 = sub_100017BD8();

  v3 = [a1 subscriptionsForSubscriber:v2];

  if (!v3)
  {
    return &_swiftEmptySetSingleton;
  }

  sub_100015EB8(0, &qword_100020280, UAFAssetSetSubscription_ptr);
  v4 = sub_100017C68();

  v5 = sub_100005D7C(v4);
  if (v5)
  {
    v6 = v5;
    result = sub_1000140CC(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = sub_100017DE8();
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 name];
      v12 = sub_100017BE8();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000140CC((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v6 != v8);
  }

  return sub_100009334(_swiftEmptyArrayStorage);
}

uint64_t sub_10000D620(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100015E74((a1 + 32), *(a1 + 56));

  return sub_10000D664(v3, a2);
}

uint64_t sub_10000D684()
{
  v1 = sub_1000175C8();

  sub_10000FB08(&v1);

  return v1;
}

uint64_t sub_10000D70C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000D724(void *a1, void *a2)
{
  sub_100015E74(a1, a1[3]);
  v3 = sub_1000175F8();
  v5 = v4;
  sub_100015E74(a2, a2[3]);
  if (v3 == sub_1000175F8() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_100017E68();
  }

  return v8 & 1;
}

void sub_10000D7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100001F58(&qword_100020208, &qword_100018BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = dispatch_semaphore_create(0);
  v11 = sub_100017CD8();
  sub_100002004(v9, 1, 1, v11);
  sub_10000D9E0(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_10000DB4C(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;

  v14 = v10;
  sub_10000DF24(0, 0, v9, &unk_100018BD0, v13);

  sub_100017D68();
  sub_100016160(&qword_100020070, type metadata accessor for Status, &unk_100018D28);
  sub_100017AA8();
  __break(1u);
}

uint64_t sub_10000D9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DA44(uint64_t a1, uint64_t a2)
{
  sub_100016D0C();
  v2 = type metadata accessor for Status(0);
  sub_100016D74();

  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100016710();
  v4 = *(v3 + 8);
  v5 = sub_100017130();
  v4(v5);
  v6 = sub_1000170B8(*(v2 + 28));
  v4(v6);
  v7 = sub_1000170B8(*(v2 + 32));
  v4(v7);
  sub_100016C58();

  return _swift_deallocObject(v8);
}

uint64_t sub_10000DB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Status(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10000DBB0()
{
  v1 = type metadata accessor for Status(0);
  sub_1000168F8(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_10000D7F0(v3, v4);
}

uint64_t sub_10000DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10000DC34, 0, 0);
}

uint64_t sub_10000DC34()
{
  v1 = sub_100001F58(&qword_1000200E0, &qword_100018AD0);
  v2 = sub_100016B34(v1);
  *(v2 + 16) = xmmword_100018A20;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_100016614(v2);

  v3 = sub_100016750();
  sub_100016890(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  v13[7] = &type metadata for String;
  v13[4] = 0xD00000000000004FLL;
  v13[5] = 0x8000000100018430;
  sub_100016614(v13);

  v14 = sub_100016750();
  sub_100016890(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  sub_100016834();
  v24[7] = &type metadata for String;
  v24[4] = 0xD000000000000036;
  v24[5] = v25;
  sub_100016614(v24);

  v26 = sub_100016750();
  sub_100016890(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36[7] = &type metadata for String;
  v36[4] = 0xD00000000000004FLL;
  v36[5] = 0x8000000100018430;
  sub_100016614(v36);

  type metadata accessor for Status(0);
  sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100017B08();
  v37 = swift_task_alloc();
  *(v0 + 40) = v37;
  *v37 = v0;
  v37[1] = sub_10000DDE8;
  sub_10001702C(*(v0 + 16));

  return sub_10000B264();
}

uint64_t sub_10000DDE8()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  v3 = sub_100016720();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000DECC()
{
  sub_1000020E4();
  sub_100017D78();
  sub_1000020D8();

  return v0();
}

uint64_t sub_10000DF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001F58(&qword_100020208, &qword_100018BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100015B54(a3, v24 - v10, &qword_100020208, &qword_100018BC0);
  v12 = sub_100017CD8();
  v13 = sub_10000567C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_100015DFC(v11, &qword_100020208, &qword_100018BC0);
  }

  else
  {
    sub_100017CC8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100017C98();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100017C28() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100015DFC(a3, &qword_100020208, &qword_100018BC0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100015DFC(a3, &qword_100020208, &qword_100018BC0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10000E208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000E24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E264()
{
  sub_100017B58();
  sub_100016160(&qword_1000201F0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001F58(&qword_1000201F8, &qword_100018BB8);
  sub_1000161FC(&qword_100020200, &qword_1000201F8, &qword_100018BB8, &protocol conformance descriptor for [A]);
  return sub_100017DA8();
}

uint64_t sub_10000E350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F74696E6F6DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_100017E68() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65736F62726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_100017E68() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1953063287 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_100017E68();

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

Swift::Int sub_10000E4A8(unsigned __int8 a1)
{
  sub_100017EA8();
  sub_100017EB8(a1);
  return sub_100017EC8();
}

uint64_t sub_10000E4FC(char a1)
{
  if (!a1)
  {
    return 0x726F74696E6F6DLL;
  }

  if (a1 == 1)
  {
    return 0x65736F62726576;
  }

  return 1953063287;
}

Swift::Int sub_10000E568(uint64_t a1)
{
  v2 = *v1;
  sub_100017EA8();
  sub_100017EB8(v2);
  return sub_100017EC8();
}

void sub_10000E5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100017394();
  v18 = sub_100017A88();
  v19 = sub_1000168F8(v18);
  __chkstk_darwin(v19);
  sub_100016634();
  sub_100017040();
  v20 = sub_100001F58(&qword_100020350, &qword_100018D68);
  sub_1000168F8(v20);
  sub_100016B58();
  __chkstk_darwin(v21);
  sub_100017A28();
  v22 = sub_100017A38();
  sub_1000169E8();
  sub_100002004(v23, v24, v25, v22);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  type metadata accessor for Status(0);
  sub_100017A28();
  sub_1000169E8();
  sub_100002004(v26, v27, v28, v22);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  sub_100017A28();
  sub_1000169E8();
  sub_100002004(v29, v30, v31, v22);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  sub_100017380();
}

uint64_t sub_10000E750@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v52 = sub_100001F58(&qword_1000200E8, &qword_100018AD8);
  sub_100016528();
  v49 = v3;
  __chkstk_darwin(v4);
  sub_1000166FC();
  v47 = v5;
  __chkstk_darwin(v6);
  sub_10001704C();
  v48 = v7;
  __chkstk_darwin(v8);
  v51 = &v45 - v9;
  v53 = sub_100001F58(&qword_100020358, &qword_100018D70);
  sub_100016528();
  v50 = v10;
  sub_100016B58();
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_100017A88();
  v15 = sub_1000168F8(v14);
  __chkstk_darwin(v15);
  sub_100016634();
  sub_100017040();
  v16 = sub_100001F58(&qword_100020350, &qword_100018D68);
  sub_1000168F8(v16);
  sub_100016B58();
  __chkstk_darwin(v17);
  v18 = type metadata accessor for Status(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  sub_100016634();
  v22 = v21 - v20;
  sub_100017A28();
  sub_100017A38();
  v23 = sub_1000167D8();
  sub_100002004(v23, v24, v25, v26);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v27 = *(v19 + 28);
  sub_100017A28();
  v28 = sub_1000167D8();
  sub_100002004(v28, v29, v30, v31);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  v32 = *(v19 + 32);
  sub_100017A28();
  v33 = sub_1000167D8();
  sub_100002004(v33, v34, v35, v36);
  sub_100017A78();
  sub_100016C70();
  sub_100017B18();
  sub_100015E74(a1, a1[3]);
  sub_1000161A8();
  v37 = v54;
  sub_100017ED8();
  if (!v37)
  {
    v54 = v32;
    v39 = v48;
    v38 = v49;
    v57 = 0;
    sub_1000161FC(&qword_100020368, &qword_1000200E8, &qword_100018AD8, &protocol conformance descriptor for Flag<A>);
    sub_100016FE4(v52, &v57, v53, v52);
    v40 = v51;
    v41 = v52;
    v51 = *(v38 + 40);
    (v51)(v22, v40, v52);
    v56 = 1;
    sub_100016FE4(v41, &v56, v53, v41);
    v43 = v52;
    (v51)(v22 + v27, v39, v52);
    v55 = 2;
    v44 = v53;
    sub_100016FE4(v43, &v55, v53, v43);
    (*(v50 + 8))(v13, v44);
    (v51)(v22 + v54, v47, v52);
    sub_10000D9E0(v22, v46);
  }

  sub_10000202C(a1);
  return sub_100001EC4(v22);
}

uint64_t sub_10000EC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000E350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000EC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000E468();
  *a1 = result;
  return result;
}

uint64_t sub_10000EC74(uint64_t a1)
{
  v2 = sub_1000161A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ECB0(uint64_t a1)
{
  v2 = sub_1000161A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ECEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001724;

  return sub_1000020FC();
}

uint64_t sub_10000ED98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EE90;

  return v6(a1);
}

uint64_t sub_10000EE90()
{
  sub_1000020E4();
  sub_1000020F0();
  v1 = *v0;
  sub_1000020C8();
  *v2 = v1;

  sub_1000167C8();

  return v3();
}

char *sub_10000EF70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_100020198, &qword_100018B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_10000F070(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F58(&qword_1000201A0, &qword_100018B70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000F178(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    sub_100016D64();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      sub_100016D54();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_10000F738(v15, v12, a5, a6, a7);
  a8(0);
  sub_100016828();
  if (a1)
  {
    sub_10000F918(a4 + v17, v15, v16 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_10000F274(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_1000201D0, &qword_100018B98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000200D0, &qword_100018AC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10000F3AC()
{
  result = qword_100020100;
  if (!qword_100020100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020100);
  }

  return result;
}

void *sub_10000F400(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001F58(&qword_1000201E0, &qword_100018BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001F58(&qword_1000201D8, &qword_100018BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F538(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001F58(&qword_1000201A0, &qword_100018B70);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_10000F5B4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001F58(&qword_1000201B8, &qword_100018B88);
  v4 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000F6BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001F58(&qword_100020288, &qword_100018C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_10000F738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100001F58(a3, a4);
  v8 = a5(0);
  sub_1000165D4(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000F82C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_100001F58(&qword_100020148, &qword_100018B20), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_100001F58(&qword_100020148, &qword_100018B20);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10000F918(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_100016710(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100016C7C();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100016C7C();

    swift_arrayInitWithTakeBackToFront();
  }
}

Swift::Int sub_10000F9E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100015248(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10000FDDC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000FA54(uint64_t *a1)
{
  v2 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10001525C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000FE8C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000FB08(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100015270(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10000FFD4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10000FB74(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_1000100D8(v11, a3, a4);
  *a1 = v8;
  return result;
}

void *sub_10000FC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_10000F5B4(*(a1 + 16), 0);
  v4 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
  v5 = sub_100015428(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v8;

  sub_1000158B8(v6);
  if (v5 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10000FD00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_10000F6BC(*(a1 + 16), 0);
  v4 = sub_1000156E4(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1000158B8(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

unint64_t sub_10000FDBC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_10000FDDC(uint64_t a1)
{
  result = sub_100017340(a1);
  if (result < v1)
  {
    if (v1 >= -1)
    {
      sub_100017018();
      if (v5 ^ v6 | v4)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        v7 = sub_100017C88();
        v7[2] = v2;
      }

      sub_100016C18();
      sub_100010730(v12);
      v7[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    v8 = sub_100016EE0();
    return sub_1000101A0(v8, v9, v10, v11);
  }

  return result;
}

Swift::Int sub_10000FE8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100017E38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(&qword_100020148, &qword_100018B20);
        v6 = sub_100017C88();
        v6[2] = v5;
      }

      v7 = *(sub_100001F58(&qword_100020148, &qword_100018B20) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100010BC4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100010268(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_10000FFD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100017E38(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(&qword_1000200C8, &qword_100018AB8);
        v6 = sub_100017C88();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100011668(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000104C8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1000100D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_100017340(a1);
  if (result < v3)
  {
    if (v3 >= -1)
    {
      sub_100017018();
      if (v9 ^ v10 | v8)
      {
        v11 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001F58(a2, a3);
        v11 = sub_100017C88();
        v11[2] = v4;
      }

      sub_100016C18();
      sub_100011E24(v16);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v12 = sub_100016EE0();
    return sub_100010668(v12, v13, v14, v15);
  }

  return result;
}

uint64_t sub_1000101A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_100017E68();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100010268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v9 = __chkstk_darwin(v37);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v20;
    while (1)
    {
      sub_100015B54(v22, v17, &qword_100020148, &qword_100018B20);
      sub_100015B54(v23, v13, &qword_100020148, &qword_100018B20);
      v24 = sub_100008E50(v17, v13);
      sub_100015DFC(v13, &qword_100020148, &qword_100018B20);
      result = sub_100015DFC(v17, &qword_100020148, &qword_100018B20);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v25 = v36;
        sub_1000158C0(v22, v36, &qword_100020148, &qword_100018B20);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1000158C0(v25, v23, &qword_100020148, &qword_100018B20);
        v23 += v34;
        v22 += v34;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v20 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1000104C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        sub_100015D08(v5, &v19);
        sub_100015D08(v5 - 40, v18);
        sub_100015E74(&v19, v20);
        v7 = sub_1000175F8();
        v9 = v8;
        sub_100015E74(v18, v18[3]);
        if (v7 == sub_1000175F8() && v9 == v10)
        {
          break;
        }

        v12 = sub_100017E68();

        sub_10000202C(v18);
        result = sub_10000202C(&v19);
        if (v12)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_10000D70C(v5, &v19);
          v13 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v13;
          *(v5 + 32) = *(v5 - 8);
          result = sub_10000D70C(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_10000202C(v18);
      result = sub_10000202C(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100010668(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_100017E68();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 40);
        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = v14;
        *(v12 + 8) = v15;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_100010730(uint64_t *a1)
{
  v5 = v1;
  v91 = a1;
  sub_100017198();
  if (v7 == v60)
  {
    v90 = v6;
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v2)
      {
        sub_100017080();
        v13 = (v12 + 16 * v11);
        v14 = (v12 + 16 * v10);
        if (*v13 == *v14 && v13[1] == v14[1])
        {
          v4 = 0;
        }

        else
        {
          v4 = sub_100017E68();
        }

        v11 = v10 + 2;
        v3 = 16 * v10;
        v16 = v14 + 5;
        while (v11 < v2)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v4)
            {
              goto LABEL_21;
            }
          }

          else if ((v4 ^ sub_100017E68()))
          {
            break;
          }

          ++v11;
          v16 += 2;
        }

        if ((v4 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v11 < v10)
        {
          goto LABEL_121;
        }

        if (v10 < v11)
        {
          v18 = 16 * v11;
          v19 = v11;
          v20 = v10;
          do
          {
            if (v20 != --v19)
            {
              v21 = *v95;
              if (!*v95)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v3);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v3 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = v95[1];
      if (v11 < v26)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_120;
        }

        if (v11 - v10 < v90)
        {
          if (__OFADD__(v10, v90))
          {
            goto LABEL_122;
          }

          if (v10 + v90 >= v26)
          {
            v27 = v95[1];
          }

          else
          {
            v27 = v10 + v90;
          }

          if (v27 < v10)
          {
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
            return;
          }

          if (v11 != v27)
          {
            v92 = v5;
            v94 = v10;
            v3 = *v95;
            v2 = *v95 + 16 * v11;
            v28 = v10 - v11;
            do
            {
              v29 = v11;
              v30 = (v3 + 16 * v11);
              v31 = *v30;
              v32 = v30[1];
              v33 = v28;
              v34 = v2;
              do
              {
                v4 = (v34 - 2);
                v35 = v31 == *(v34 - 2) && v32 == *(v34 - 1);
                if (v35 || (sub_100017E68() & 1) == 0)
                {
                  break;
                }

                if (!v3)
                {
                  goto LABEL_124;
                }

                v31 = *v34;
                v32 = v34[1];
                *v34 = *v4;
                *(v34 - 1) = v32;
                *(v34 - 2) = v31;
                v34 -= 2;
                v36 = __CFADD__(v33++, 1);
              }

              while (!v36);
              v11 = v29 + 1;
              v2 += 16;
              --v28;
            }

            while (v29 + 1 != v27);
            v11 = v27;
            v5 = v92;
            v10 = v94;
          }
        }
      }

      if (v11 < v10)
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = sub_1000166DC();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v83, v84, v85, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v45 = *(v9 + 2);
      v46 = v45 + 1;
      if (v45 >= *(v9 + 3) >> 1)
      {
        sub_100016E38();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v86, v87, v88, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      sub_100016B88(isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v42, v43, v44, v89, v90, v91, v93);
      if (!v47)
      {
        goto LABEL_127;
      }

      if (v45)
      {
        while (1)
        {
          sub_100017200();
          if (v36)
          {
            break;
          }

          if (v45 == 2)
          {
            v50 = *(v9 + 4);
            v51 = *(v9 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_69:
            if (v53)
            {
              goto LABEL_109;
            }

            v65 = *v49;
            v64 = v49[1];
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_112;
            }

            v69 = v48[1];
            v70 = v69 - *v48;
            if (__OFSUB__(v69, *v48))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v67, v70))
            {
              goto LABEL_117;
            }

            if (v67 + v70 >= v52)
            {
              if (v52 < v70)
              {
                v2 = v45 - 1;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v46 < 2)
          {
            goto LABEL_111;
          }

          v72 = *v49;
          v71 = v49[1];
          v60 = __OFSUB__(v71, v72);
          v67 = v71 - v72;
          v68 = v60;
LABEL_84:
          if (v68)
          {
            goto LABEL_114;
          }

          v74 = *v48;
          v73 = v48[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_116;
          }

          if (v75 < v67)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v2 - 1 >= v46)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_100017080();
          if (!v79)
          {
            goto LABEL_125;
          }

          sub_1000171C0();
          sub_1000124A0();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v4 < v46)
          {
            goto LABEL_104;
          }

          v80 = v9;
          v81 = *(v9 + 2);
          if (v2 > v81)
          {
            goto LABEL_105;
          }

          *v45 = v46;
          v45[1] = v4;
          if (v2 >= v81)
          {
            goto LABEL_106;
          }

          sub_100016FC0();
          *(v80 + 2) = v46;
          v82 = v81 > 2;
          v9 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v54 = v3 + 16 * v46;
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_107;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_108;
        }

        v61 = v49[1];
        v62 = v61 - *v49;
        if (__OFSUB__(v61, *v49))
        {
          goto LABEL_110;
        }

        v60 = __OFADD__(v52, v62);
        v63 = v52 + v62;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v63 >= v57)
        {
          v77 = *v48;
          v76 = v48[1];
          v60 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v60)
          {
            goto LABEL_118;
          }

          if (v52 < v78)
          {
            v2 = v45 - 1;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      sub_10001706C();
      if (v7 == v60)
      {
        v96 = v9;
        break;
      }
    }
  }

  if (!*v91)
  {
    goto LABEL_128;
  }

  sub_1000122D8(&v96, *v91, v95);
LABEL_102:
}

uint64_t sub_100010BC4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v138 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v145 = *(v138 - 8);
  v8 = __chkstk_darwin(v138);
  v135 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v137 = &v124 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v124 - v13;
  v15 = __chkstk_darwin(v12);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v20 = &v124 - v19;
  result = __chkstk_darwin(v18);
  v26 = &v124 - v22;
  v146 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_108:
    v147 = *v134;
    if (v147)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_144;
      }

      goto LABEL_110;
    }

    goto LABEL_153;
  }

  v129 = a4;
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
  v143 = v14;
  v136 = v23;
  v139 = v25;
  v140 = v24;
  v132 = v20;
  v133 = &v124 - v22;
  v30 = v14;
  while (1)
  {
    v31 = v28++;
    if (v28 < v27)
    {
      v142 = v27;
      v32 = v26;
      v33 = *v146;
      v34 = *(v145 + 72);
      v147 = *v146 + v34 * v28;
      sub_100015B54(v147, v32, &qword_100020148, &qword_100018B20);
      v35 = v33;
      sub_100015B54(v33 + v34 * v31, v20, &qword_100020148, &qword_100018B20);
      v36 = v133;
      LODWORD(v141) = sub_100008E50(v133, v20);
      if (v5)
      {
        sub_100015DFC(v20, &qword_100020148, &qword_100018B20);
        sub_100015DFC(v36, &qword_100020148, &qword_100018B20);
      }

      v130 = v29;
      sub_100015DFC(v20, &qword_100020148, &qword_100018B20);
      result = sub_100015DFC(v36, &qword_100020148, &qword_100018B20);
      v131 = v31;
      v37 = v31 + 2;
      v38 = v35 + v34 * (v31 + 2);
      v39 = v34;
      v40 = v142;
      v41 = v147;
      while (1)
      {
        v42 = v37;
        if (v28 + 1 >= v40)
        {
          break;
        }

        v144 = v37;
        v43 = v28;
        v44 = v139;
        sub_100015B54(v38, v139, &qword_100020148, &qword_100018B20);
        v45 = v140;
        sub_100015B54(v41, v140, &qword_100020148, &qword_100018B20);
        v46 = sub_100008E50(v44, v45);
        v147 = v5;
        if (v5)
        {
          sub_100015DFC(v45, &qword_100020148, &qword_100018B20);
          sub_100015DFC(v44, &qword_100020148, &qword_100018B20);
        }

        v47 = v46;
        sub_100015DFC(v45, &qword_100020148, &qword_100018B20);
        result = sub_100015DFC(v44, &qword_100020148, &qword_100018B20);
        v38 += v39;
        v41 += v39;
        v28 = v43 + 1;
        v42 = v144;
        v37 = v144 + 1;
        v5 = v147;
        v40 = v142;
        if ((v141 ^ v47))
        {
          goto LABEL_11;
        }
      }

      v28 = v40;
LABEL_11:
      if (v141)
      {
        v31 = v131;
        v30 = v143;
        if (v28 < v131)
        {
          goto LABEL_147;
        }

        if (v131 >= v28)
        {
          v29 = v130;
          goto LABEL_34;
        }

        if (v40 >= v42)
        {
          v48 = v42;
        }

        else
        {
          v48 = v40;
        }

        v49 = v28;
        v50 = v39 * (v48 - 1);
        v51 = v131;
        v52 = v39 * v48;
        v53 = v131 * v39;
        v144 = v49;
        do
        {
          if (v51 != --v49)
          {
            v54 = *v146;
            if (!*v146)
            {
              goto LABEL_151;
            }

            sub_1000158C0(v54 + v53, v135, &qword_100020148, &qword_100018B20);
            v55 = v53 < v50 || v54 + v53 >= (v54 + v52);
            if (v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v53 != v50)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1000158C0(v135, v54 + v50, &qword_100020148, &qword_100018B20);
            v30 = v143;
          }

          ++v51;
          v50 -= v39;
          v52 -= v39;
          v53 += v39;
        }

        while (v51 < v49);
        v29 = v130;
        v28 = v144;
      }

      else
      {
        v29 = v130;
        v30 = v143;
      }

      v31 = v131;
    }

LABEL_34:
    v56 = v146[1];
    if (v28 >= v56)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v28, v31))
    {
      goto LABEL_143;
    }

    if (v28 - v31 >= v129)
    {
      goto LABEL_42;
    }

    v57 = v31 + v129;
    if (__OFADD__(v31, v129))
    {
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      return result;
    }

    if (v57 >= v56)
    {
      v57 = v146[1];
    }

    if (v57 < v31)
    {
      goto LABEL_146;
    }

    if (v28 != v57)
    {
      v147 = v5;
      v104 = *v146;
      v105 = *(v145 + 72);
      v106 = *v146 + v105 * (v28 - 1);
      v141 = -v105;
      v142 = v104;
      v131 = v31;
      v107 = v31 - v28;
      v144 = v28;
      v125 = v105;
      v108 = v104 + v28 * v105;
      v126 = v57;
      do
      {
        v127 = v108;
        v128 = v107;
        v130 = v106;
        while (1)
        {
          v109 = v136;
          sub_100015B54(v108, v136, &qword_100020148, &qword_100018B20);
          sub_100015B54(v106, v30, &qword_100020148, &qword_100018B20);
          v110 = v147;
          v111 = sub_100008E50(v109, v30);
          v112 = v30;
          v147 = v110;
          if (v110)
          {
            sub_100015DFC(v30, &qword_100020148, &qword_100018B20);
            sub_100015DFC(v109, &qword_100020148, &qword_100018B20);
          }

          v113 = v111;
          v114 = v112;
          sub_100015DFC(v112, &qword_100020148, &qword_100018B20);
          result = sub_100015DFC(v109, &qword_100020148, &qword_100018B20);
          if ((v113 & 1) == 0)
          {
            break;
          }

          if (!v142)
          {
            goto LABEL_150;
          }

          v115 = v137;
          sub_1000158C0(v108, v137, &qword_100020148, &qword_100018B20);
          swift_arrayInitWithTakeFrontToBack();
          sub_1000158C0(v115, v106, &qword_100020148, &qword_100018B20);
          v106 += v141;
          v108 += v141;
          v55 = __CFADD__(v107++, 1);
          v30 = v114;
          if (v55)
          {
            goto LABEL_105;
          }
        }

        v30 = v114;
LABEL_105:
        v106 = v130 + v125;
        v107 = v128 - 1;
        v108 = v127 + v125;
        ++v144;
      }

      while (v144 != v126);
      v28 = v126;
      v5 = v147;
      v31 = v131;
    }

LABEL_42:
    if (v28 < v31)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v58 = v31;
    v59 = v30;
    if ((result & 1) == 0)
    {
      result = sub_10000EF70(0, v29[2] + 1, 1, v29);
      v29 = result;
    }

    v61 = v29[2];
    v60 = v29[3];
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = sub_10000EF70((v60 > 1), v61 + 1, 1, v29);
      v29 = result;
    }

    v29[2] = v62;
    v63 = v29 + 4;
    v64 = &v29[2 * v61 + 4];
    *v64 = v58;
    v64[1] = v28;
    v147 = *v134;
    if (!v147)
    {
      goto LABEL_152;
    }

    if (v61)
    {
      break;
    }

    v30 = v59;
LABEL_94:
    v27 = v146[1];
    v20 = v132;
    v26 = v133;
    if (v28 >= v27)
    {
      goto LABEL_108;
    }
  }

  v30 = v59;
  v144 = v28;
  while (1)
  {
    v65 = v62 - 1;
    v66 = &v63[2 * v62 - 2];
    v67 = &v29[2 * v62];
    if (v62 >= 4)
    {
      v72 = &v63[2 * v62];
      v73 = *(v72 - 8);
      v74 = *(v72 - 7);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_130;
      }

      v77 = *(v72 - 6);
      v76 = *(v72 - 5);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_131;
      }

      v79 = v67[1];
      v80 = v79 - *v67;
      if (__OFSUB__(v79, *v67))
      {
        goto LABEL_133;
      }

      v78 = __OFADD__(v70, v80);
      v81 = v70 + v80;
      if (v78)
      {
        goto LABEL_136;
      }

      if (v81 >= v75)
      {
        v95 = *v66;
        v94 = v66[1];
        v78 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v78)
        {
          goto LABEL_141;
        }

        if (v70 < v96)
        {
          v65 = v62 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

    if (v62 == 3)
    {
      v68 = v29[4];
      v69 = v29[5];
      v78 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      v71 = v78;
LABEL_63:
      if (v71)
      {
        goto LABEL_132;
      }

      v83 = *v67;
      v82 = v67[1];
      v84 = __OFSUB__(v82, v83);
      v85 = v82 - v83;
      v86 = v84;
      if (v84)
      {
        goto LABEL_135;
      }

      v87 = v66[1];
      v88 = v87 - *v66;
      if (__OFSUB__(v87, *v66))
      {
        goto LABEL_138;
      }

      if (__OFADD__(v85, v88))
      {
        goto LABEL_140;
      }

      if (v85 + v88 >= v70)
      {
        if (v70 < v88)
        {
          v65 = v62 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_78;
    }

    if (v62 < 2)
    {
      goto LABEL_134;
    }

    v90 = *v67;
    v89 = v67[1];
    v78 = __OFSUB__(v89, v90);
    v85 = v89 - v90;
    v86 = v78;
LABEL_78:
    if (v86)
    {
      goto LABEL_137;
    }

    v92 = *v66;
    v91 = v66[1];
    v78 = __OFSUB__(v91, v92);
    v93 = v91 - v92;
    if (v78)
    {
      goto LABEL_139;
    }

    if (v93 < v85)
    {
      goto LABEL_94;
    }

LABEL_85:
    if (v65 - 1 >= v62)
    {
      break;
    }

    if (!*v146)
    {
      goto LABEL_148;
    }

    v97 = v29;
    v98 = &v63[2 * v65 - 2];
    v29 = *v98;
    v99 = v63;
    v100 = v65;
    v101 = &v63[2 * v65];
    v102 = v101[1];
    sub_100012638(*v146 + *(v145 + 72) * *v98, *v146 + *(v145 + 72) * *v101, *v146 + *(v145 + 72) * v102, v147);
    if (v5)
    {
    }

    if (v102 < v29)
    {
      goto LABEL_124;
    }

    v103 = v97[2];
    if (v100 > v103)
    {
      goto LABEL_125;
    }

    *v98 = v29;
    v98[1] = v102;
    if (v100 >= v103)
    {
      goto LABEL_126;
    }

    v62 = v103 - 1;
    result = memmove(v101, v101 + 2, 16 * (v103 - 1 - v100));
    v29 = v97;
    v97[2] = v103 - 1;
    v30 = v143;
    v28 = v144;
    v63 = v99;
    if (v103 <= 2)
    {
      goto LABEL_94;
    }
  }

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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  result = sub_100013160(v29);
  v29 = result;
LABEL_110:
  v116 = v29;
  v118 = v29[2];
  v29 += 2;
  for (i = v118; i >= 2; *v29 = i)
  {
    if (!*v146)
    {
      goto LABEL_149;
    }

    v119 = &v116[2 * i];
    v120 = *v119;
    v121 = &v29[2 * i];
    v122 = v121[1];
    sub_100012638(*v146 + *(v145 + 72) * *v119, *v146 + *(v145 + 72) * *v121, *v146 + *(v145 + 72) * v122, v147);
    if (v5)
    {
      break;
    }

    if (v122 < v120)
    {
      goto LABEL_127;
    }

    if (i - 2 >= *v29)
    {
      goto LABEL_128;
    }

    *v119 = v120;
    v119[1] = v122;
    v123 = *v29 - i;
    if (*v29 < i)
    {
      goto LABEL_129;
    }

    i = *v29 - 1;
    result = memmove(v121, v121 + 2, 16 * v123);
  }
}

uint64_t sub_100011668(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_104:
    v106 = *v99;
    if (!*v99)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    v100 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_100015D08(*a3 + 40 * v8, &v110);
      sub_100015D08(v9 + 40 * v7, v108);
      v10 = v112;
      LODWORD(v106) = sub_10000D724(&v110, v108);
      v112 = v10;
      if (v10)
      {
        sub_10000202C(v108);
        sub_10000202C(&v110);
      }

      v97 = v6;
      sub_10000202C(v108);
      result = sub_10000202C(&v110);
      v103 = 40 * v7;
      v11 = v9 + 40 * v7 + 80;
      v12 = v7 + 2;
      while (1)
      {
        v13 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        sub_100015D08(v11, &v110);
        sub_100015D08(v11 - 40, v108);
        sub_100015E74(&v110, v111);
        v14 = sub_1000175F8();
        v16 = v15;
        sub_100015E74(v108, v109);
        if (v14 == sub_1000175F8() && v16 == v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = sub_100017E68();
        }

        sub_10000202C(v108);
        result = sub_10000202C(&v110);
        v11 += 40;
        ++v8;
        v12 = v13 + 1;
        if ((v106 ^ v19))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v106)
      {
        v20 = v100;
        v6 = v97;
        if (v8 < v100)
        {
          goto LABEL_139;
        }

        if (v100 >= v8)
        {
          v7 = v100;
        }

        else
        {
          if (v4 >= v13)
          {
            v21 = v13;
          }

          else
          {
            v21 = v4;
          }

          v22 = 40 * v21 - 40;
          v23 = v8;
          v24 = v103;
          do
          {
            if (v20 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v26 = v8;
              v27 = v25 + v24;
              v28 = v25 + v22;
              sub_10000D70C((v25 + v24), &v110);
              v29 = *(v28 + 32);
              v30 = *(v28 + 16);
              *v27 = *v28;
              *(v27 + 16) = v30;
              *(v27 + 32) = v29;
              result = sub_10000D70C(&v110, v28);
              v8 = v26;
            }

            ++v20;
            v22 -= 40;
            v24 += 40;
          }

          while (v20 < v23);
          v7 = v100;
        }
      }

      else
      {
        v7 = v100;
        v6 = v97;
      }
    }

    v31 = a3[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000EF70(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    v46 = v45 + 1;
    v106 = v8;
    if (v45 >= v44 >> 1)
    {
      result = sub_10000EF70((v44 > 1), v45 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v46;
    v47 = v6 + 32;
    v48 = (v6 + 32 + 16 * v45);
    *v48 = v100;
    v48[1] = v106;
    v105 = *v99;
    if (!*v99)
    {
      goto LABEL_145;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = (v47 + 16 * (v46 - 1));
        v51 = (v6 + 16 * v46);
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 32);
          v53 = *(v6 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_72:
          if (v55)
          {
            goto LABEL_122;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_125;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_130;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v46 < 2)
        {
          goto LABEL_124;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_87:
        if (v70)
        {
          goto LABEL_127;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v77 < v69)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v81 = v6;
        v82 = (v47 + 16 * (v49 - 1));
        v83 = *v82;
        v84 = (v47 + 16 * v49);
        v6 = v84[1];
        v85 = v112;
        sub_100012C38((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v6, v105);
        v112 = v85;
        if (v85)
        {
        }

        if (v6 < v83)
        {
          goto LABEL_117;
        }

        v86 = *(v81 + 16);
        if (v49 > v86)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v6;
        if (v49 >= v86)
        {
          goto LABEL_119;
        }

        v46 = v86 - 1;
        result = memmove((v47 + 16 * v49), v84 + 2, 16 * (v86 - 1 - v49));
        v6 = v81;
        *(v81 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_101;
        }
      }

      v56 = v47 + 16 * v46;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_120;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_121;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_123;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_126;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_134;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = v106;
    v4 = a3[1];
    if (v106 >= v4)
    {
      goto LABEL_104;
    }
  }

  v32 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    result = sub_100013160(v6);
    v6 = result;
LABEL_106:
    v87 = v6;
    v88 = (v6 + 16);
    for (i = *(v6 + 16); ; *v88 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v90 = (v87 + 16 * i);
      v91 = *v90;
      v92 = &v88[2 * i];
      v93 = v92[1];
      v94 = v112;
      sub_100012C38((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v106);
      v112 = v94;
      if (v94)
      {
        break;
      }

      if (v93 < v91)
      {
        goto LABEL_131;
      }

      if (v6 >= *v88)
      {
        goto LABEL_132;
      }

      *v90 = v91;
      v90[1] = v93;
      v95 = *v88 - i;
      if (*v88 < i)
      {
        goto LABEL_133;
      }

      i = *v88 - 1;
      result = memmove(v92, v92 + 2, 16 * v95);
    }
  }

  if (v8 == v32)
  {
    goto LABEL_52;
  }

  v98 = v6;
  v33 = *a3;
  v34 = *a3 + 40 * v8;
  v35 = v7 - v8;
  v101 = v32;
LABEL_39:
  v104 = v34;
  v106 = v8;
  v102 = v35;
  while (1)
  {
    sub_100015D08(v34, &v110);
    sub_100015D08(v34 - 40, v108);
    sub_100015E74(&v110, v111);
    v36 = sub_1000175F8();
    v38 = v37;
    sub_100015E74(v108, v109);
    if (v36 == sub_1000175F8() && v38 == v39)
    {

      sub_10000202C(v108);
      sub_10000202C(&v110);
LABEL_50:
      v8 = (v106 + 1);
      v34 = v104 + 40;
      v35 = v102 - 1;
      if (v106 + 1 == v101)
      {
        v8 = v101;
        v6 = v98;
        v7 = v100;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    v41 = sub_100017E68();

    sub_10000202C(v108);
    result = sub_10000202C(&v110);
    if ((v41 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v33)
    {
      break;
    }

    sub_10000D70C(v34, &v110);
    v42 = *(v34 - 24);
    *v34 = *(v34 - 40);
    *(v34 + 16) = v42;
    *(v34 + 32) = *(v34 - 8);
    sub_10000D70C(&v110, v34 - 40);
    v34 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

void sub_100011E24(uint64_t *a1)
{
  v5 = v1;
  v96 = a1;
  sub_100017198();
  if (v7 == v65)
  {
    v95 = v6;
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8;
      i = v8 + 1;
      if (v8 + 1 < v2)
      {
        sub_100017080();
        v13 = v12 + 32 * i;
        v14 = (v12 + 32 * v10);
        if (*(v13 + 16) == v14[2] && *(v13 + 24) == v14[3])
        {
          v4 = 0;
        }

        else
        {
          v4 = sub_100017E68();
        }

        v3 = 32 * v10;
        v16 = v14 + 11;
        for (i = v10 + 2; i < v2; ++i)
        {
          if (*(v16 - 1) == *(v16 - 5) && *v16 == *(v16 - 4))
          {
            if (v4)
            {
              goto LABEL_21;
            }
          }

          else if ((v4 ^ sub_100017E68()))
          {
            break;
          }

          v16 += 4;
        }

        if ((v4 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v10)
        {
          goto LABEL_121;
        }

        if (v10 < i)
        {
          v18 = 32 * i - 16;
          v19 = v3 + 24;
          v20 = i;
          v21 = v10;
          do
          {
            if (v21 != --v20)
            {
              v22 = *v99;
              if (!*v99)
              {
                goto LABEL_126;
              }

              v23 = (v22 + v19);
              v24 = v22 + v18;
              v25 = *(v23 - 3);
              v26 = *(v23 - 1);
              v27 = *v23;
              v28 = *v24;
              *(v23 - 3) = *(v24 - 16);
              *(v23 - 1) = v28;
              *(v24 - 16) = v25;
              *v24 = v26;
              *(v24 + 8) = v27;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v29 = v99[1];
      if (i < v29)
      {
        if (__OFSUB__(i, v10))
        {
          goto LABEL_120;
        }

        if (i - v10 < v95)
        {
          if (__OFADD__(v10, v95))
          {
            goto LABEL_122;
          }

          if (v10 + v95 >= v29)
          {
            v2 = v99[1];
          }

          else
          {
            v2 = (v10 + v95);
          }

          if (v2 < v10)
          {
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
            return;
          }

          if (i != v2)
          {
            v3 = *v99;
            v30 = *v99 + 32 * i - 32;
            v98 = v10;
            v31 = v10 - i;
            do
            {
              v32 = i;
              v33 = v3 + 32 * i;
              v34 = *(v33 + 16);
              v35 = *(v33 + 24);
              v36 = v31;
              v4 = v30;
              do
              {
                v37 = v34 == *(v4 + 16) && v35 == *(v4 + 24);
                if (v37 || (sub_100017E68() & 1) == 0)
                {
                  break;
                }

                if (!v3)
                {
                  goto LABEL_124;
                }

                v38 = *(v4 + 32);
                v39 = *(v4 + 40);
                v34 = *(v4 + 48);
                v35 = *(v4 + 56);
                v40 = *(v4 + 16);
                *(v4 + 32) = *v4;
                *(v4 + 48) = v40;
                *v4 = v38;
                *(v4 + 8) = v39;
                *(v4 + 16) = v34;
                *(v4 + 24) = v35;
                v4 -= 32;
                v41 = __CFADD__(v36++, 1);
              }

              while (!v41);
              i = v32 + 1;
              v30 += 32;
              --v31;
            }

            while ((v32 + 1) != v2);
            i = v2;
            v10 = v98;
          }
        }
      }

      if (i < v10)
      {
        goto LABEL_119;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = sub_1000166DC();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v88, v89, v90, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v50 = *(v9 + 2);
      v51 = v50 + 1;
      if (v50 >= *(v9 + 3) >> 1)
      {
        sub_100016E38();
        isUniquelyReferenced_nonNull_native = sub_10000EF70(v91, v92, v93, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      sub_100016B88(isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48, v49, v94, v95, v96, v97);
      if (!v52)
      {
        goto LABEL_127;
      }

      if (v50)
      {
        while (1)
        {
          sub_100017200();
          if (v41)
          {
            break;
          }

          if (v50 == 2)
          {
            v55 = *(v9 + 4);
            v56 = *(v9 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_69:
            if (v58)
            {
              goto LABEL_109;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_112;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_117;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v2 = v50 - 1;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v51 < 2)
          {
            goto LABEL_111;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_84:
          if (v73)
          {
            goto LABEL_114;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (v80 < v72)
          {
            goto LABEL_98;
          }

LABEL_91:
          if ((v2 - 1) >= v51)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          sub_100017080();
          if (!v84)
          {
            goto LABEL_125;
          }

          sub_1000171C0();
          sub_100012FC8();
          if (v5)
          {
            goto LABEL_102;
          }

          if (v4 < v51)
          {
            goto LABEL_104;
          }

          v85 = v9;
          v86 = *(v9 + 2);
          if (v2 > v86)
          {
            goto LABEL_105;
          }

          *v50 = v51;
          v50[1] = v4;
          if (v2 >= v86)
          {
            goto LABEL_106;
          }

          sub_100016FC0();
          *(v85 + 2) = v51;
          v87 = v86 > 2;
          v9 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_98;
          }
        }

        v59 = v3 + 16 * v51;
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_107;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_108;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_110;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_113;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_118;
          }

          if (v57 < v83)
          {
            v2 = v50 - 1;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      sub_10001706C();
      if (v7 == v65)
      {
        v100 = v9;
        break;
      }
    }
  }

  if (!*v96)
  {
    goto LABEL_128;
  }

  sub_1000123BC(&v100, *v96, v99);
LABEL_102:
}

void sub_1000122D8(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((sub_100016F9C(a1) & 1) == 0)
  {
LABEL_14:
    v4 = sub_100013160(v4);
  }

  sub_10001711C();
  while (1)
  {
    if (v8 < 2)
    {
LABEL_10:
      sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
      sub_1000170D0();
      return;
    }

    if (!*a3)
    {
      break;
    }

    sub_1000170E8();
    v10 = sub_1000124A0();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v6 < v5)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v8 - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v5;
    v9[1] = v6;
    if (*v7 < v8)
    {
      goto LABEL_13;
    }

    v10 = sub_100017300(*v7 - v8);
    *v7 = v8;
  }

  sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  __break(1u);
}

void sub_1000123BC(uint64_t *a1, uint64_t a2, void *a3)
{
  if ((sub_100016F9C(a1) & 1) == 0)
  {
LABEL_14:
    v4 = sub_100013160(v4);
  }

  sub_10001711C();
  while (1)
  {
    if (v8 < 2)
    {
LABEL_10:
      sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
      sub_1000170D0();
      return;
    }

    if (!*a3)
    {
      break;
    }

    sub_1000170E8();
    v10 = sub_100012FC8();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v6 < v5)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v8 - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v5;
    v9[1] = v6;
    if (*v7 < v8)
    {
      goto LABEL_13;
    }

    v10 = sub_100017300(*v7 - v8);
    *v7 = v8;
  }

  sub_1000170C4(v10, v11, v12, v13, v14, v15, v16, v17, v18);
  __break(1u);
}

uint64_t sub_1000124A0()
{
  sub_100016CB8();
  sub_100017098();
  if (v6 != v7)
  {
    if (v0 != v2 || &v2[v4] <= v0)
    {
      v9 = sub_100016E50();
      memmove(v9, v10, v11);
    }

    v12 = &v0[2 * v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_47;
      }

      v14 = *v1 == *v0 && v1[1] == v0[1];
      if (v14 || (sub_100017E68() & 1) == 0)
      {
        break;
      }

      v15 = v1;
      v14 = v2 == v1;
      v1 += 2;
      if (!v14)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v2;
    }

    v15 = v0;
    v14 = v2 == v0;
    v0 += 2;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    *v2 = *v15;
    goto LABEL_23;
  }

  if (v0 != v1 || &v1[2 * v5] <= v0)
  {
    v17 = sub_1000170AC();
    memmove(v17, v18, v19);
  }

  v12 = &v0[2 * v5];
LABEL_30:
  v20 = v1 - 2;
  for (--v3; v12 > v0 && v1 > v2; --v3)
  {
    v22 = *(v12 - 2) == *(v1 - 2) && *(v12 - 1) == *(v1 - 1);
    if (!v22 && (sub_100017E68() & 1) != 0)
    {
      v14 = v3 + 1 == v1;
      v1 -= 2;
      if (!v14)
      {
        *v3 = *v20;
        v1 = v20;
      }

      goto LABEL_30;
    }

    if (v12 != (v3 + 1))
    {
      *v3 = *(v12 - 1);
    }

    v12 -= 2;
  }

LABEL_47:
  v23 = (v12 - v0) / 16;
  if (v1 != v0 || v1 >= &v0[2 * v23])
  {
    memmove(v1, v0, 16 * v23);
  }

  return sub_1000170D0();
}

uint64_t sub_100012638(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v70 = a3;
  v71 = sub_100001F58(&qword_100020148, &qword_100018B20);
  v7 = __chkstk_darwin(v71);
  v8 = __chkstk_darwin(v7);
  v63 = &v61 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v61 - v11;
  result = __chkstk_darwin(v10);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v18 = a2 - a1;
  v19 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v19)
  {
    goto LABEL_66;
  }

  v20 = v70 - a2;
  if (v70 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_67;
  }

  v22 = v18 / v17;
  v75 = a1;
  v74 = a4;
  v23 = v20 / v17;
  if (v18 / v17 >= v20 / v17)
  {
    i = v15;
    v40 = a2;
    sub_10000F82C(a2, v20 / v17, a4);
    v69 = a4;
    v41 = a4 + v23 * v17;
    v42 = -v17;
    v43 = v41;
    v44 = v70;
    v68 = v42;
    v65 = a1;
LABEL_38:
    v70 = v40;
    v45 = v40 + v42;
    v46 = v44;
    v62 = v43;
    v47 = v63;
    v66 = v45;
    while (1)
    {
      if (v41 <= v69)
      {
        v75 = v70;
        v73 = v43;
        goto LABEL_64;
      }

      if (v70 <= a1)
      {
        v75 = v70;
        v60 = v62;
        goto LABEL_63;
      }

      v64 = v43;
      v48 = v68;
      v49 = v41;
      v50 = v41 + v68;
      sub_100015B54(v41 + v68, v47, &qword_100020148, &qword_100018B20);
      v51 = v47;
      v52 = i;
      sub_100015B54(v45, i, &qword_100020148, &qword_100018B20);
      v53 = v72;
      v54 = sub_100008E50(v51, v52);
      v72 = v53;
      if (v53)
      {
        break;
      }

      v55 = v54;
      v44 = v46 + v48;
      sub_100015DFC(v52, &qword_100020148, &qword_100018B20);
      sub_100015DFC(v51, &qword_100020148, &qword_100018B20);
      if (v55)
      {
        v57 = v46 < v70 || v44 >= v70;
        v41 = v49;
        if (v57)
        {
          v40 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v64;
          a1 = v65;
          v42 = v68;
        }

        else
        {
          a1 = v65;
          v43 = v64;
          v58 = v66;
          v40 = v66;
          v42 = v68;
          if (v46 != v70)
          {
            v59 = v64;
            swift_arrayInitWithTakeBackToFront();
            v40 = v58;
            v43 = v59;
          }
        }

        goto LABEL_38;
      }

      v47 = v51;
      if (v46 < v49 || v44 >= v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v44;
        v41 = v50;
        v43 = v50;
        a1 = v65;
        v45 = v66;
      }

      else
      {
        v43 = v50;
        v19 = v49 == v46;
        v46 = v44;
        v41 = v50;
        a1 = v65;
        v45 = v66;
        if (!v19)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v44;
          v41 = v50;
          v43 = v50;
        }
      }
    }

    sub_100015DFC(v52, &qword_100020148, &qword_100018B20);
    sub_100015DFC(v51, &qword_100020148, &qword_100018B20);
    v75 = v70;
    v60 = v64;
LABEL_63:
    v73 = v60;
  }

  else
  {
    v68 = &v61 - v14;
    sub_10000F82C(a1, v18 / v17, a4);
    v69 = a4 + v22 * v17;
    v73 = v69;
    v24 = a2;
    v25 = v17;
    v26 = v70;
    for (i = v12; a4 < v69 && v24 < v26; v12 = i)
    {
      v28 = a1;
      v29 = v25;
      v30 = v24;
      v31 = v68;
      sub_100015B54(v24, v68, &qword_100020148, &qword_100018B20);
      v32 = a4;
      sub_100015B54(a4, v12, &qword_100020148, &qword_100018B20);
      v33 = v72;
      v34 = sub_100008E50(v31, v12);
      v72 = v33;
      if (v33)
      {
        sub_100015DFC(v12, &qword_100020148, &qword_100018B20);
        sub_100015DFC(v31, &qword_100020148, &qword_100018B20);
        break;
      }

      v35 = v34;
      sub_100015DFC(v12, &qword_100020148, &qword_100018B20);
      sub_100015DFC(v31, &qword_100020148, &qword_100018B20);
      if (v35)
      {
        v25 = v29;
        v36 = v30 + v29;
        v37 = v28;
        if (v28 < v30 || v28 >= v36)
        {
          swift_arrayInitWithTakeFrontToBack();
          v24 = v30 + v29;
          a4 = v32;
          v26 = v70;
        }

        else
        {
          v26 = v70;
          if (v28 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v24 = v36;
          a4 = v32;
        }
      }

      else
      {
        v25 = v29;
        a4 += v29;
        v37 = v28;
        if (v28 < v32 || v28 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v70;
        }

        else
        {
          v26 = v70;
          if (v28 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v74 = a4;
        v24 = v30;
      }

      a1 = v37 + v25;
      v75 = a1;
    }
  }

LABEL_64:
  sub_100013174(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_100012C38(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[40 * v8];
    v47 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      sub_100015D08(v6, v45);
      sub_100015D08(v4, v43);
      sub_100015E74(v45, v46);
      v13 = sub_1000175F8();
      v15 = v14;
      sub_100015E74(v43, v44);
      v17 = v13 == sub_1000175F8() && v15 == v16;
      if (v17)
      {

        sub_10000202C(v43);
        sub_10000202C(v45);
      }

      else
      {
        v18 = sub_100017E68();

        sub_10000202C(v43);
        sub_10000202C(v45);
        if (v18)
        {
          v19 = v6;
          v20 = v7 == v6;
          v6 += 40;
          goto LABEL_20;
        }
      }

      v19 = v4;
      v20 = v7 == v4;
      v4 += 40;
LABEL_20:
      v5 = v47;
      if (!v20)
      {
        v21 = *v19;
        v22 = *(v19 + 1);
        *(v7 + 4) = *(v19 + 4);
        *v7 = v21;
        *(v7 + 1) = v22;
      }

      v7 += 40;
    }
  }

  if (a4 != __dst || &__dst[40 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v24 = &v4[40 * v9];
  v41 = v7;
LABEL_29:
  v25 = (v6 - 40);
  v5 -= 40;
  v26 = (v24 - 40);
  v42 = v6 - 40;
  while (1)
  {
    v11 = (v26 + 40);
    if (v26 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v47 = v26 + 40;
    sub_100015D08(v26, v45);
    sub_100015D08(v25, v43);
    sub_100015E74(v45, v46);
    v28 = sub_1000175F8();
    v30 = v29;
    sub_100015E74(v43, v44);
    if (v28 == sub_1000175F8() && v30 == v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = sub_100017E68();
    }

    sub_10000202C(v43);
    sub_10000202C(v45);
    if (v33)
    {
      v24 = (v26 + 40);
      v17 = v5 + 40 == v6;
      v6 -= 40;
      v7 = v41;
      if (!v17)
      {
        v36 = *v42;
        v37 = *(v42 + 1);
        *(v5 + 32) = *(v42 + 4);
        *v5 = v36;
        *(v5 + 16) = v37;
        v6 = v42;
      }

      goto LABEL_29;
    }

    if (v47 != v5 + 40)
    {
      v34 = *v26;
      v35 = *(v26 + 16);
      *(v5 + 32) = *(v26 + 32);
      *v5 = v34;
      *(v5 + 16) = v35;
    }

    v5 -= 40;
    v26 -= 40;
    v7 = v41;
    v25 = (v6 - 40);
  }

LABEL_48:
  v38 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v38])
  {
    memmove(v6, v4, 40 * v38);
  }

  return 1;
}

uint64_t sub_100012FC8()
{
  sub_100016CB8();
  sub_100017098();
  if (v6 != v7)
  {
    if (v0 != v2 || &v2[2 * v4] <= v0)
    {
      v9 = sub_100016E50();
      memmove(v9, v10, v11);
    }

    v12 = &v0[4 * v4];
    while (1)
    {
      if (v0 >= v12 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_47;
      }

      v14 = v1[2] == v0[2] && v1[3] == v0[3];
      if (v14 || (sub_100017E68() & 1) == 0)
      {
        break;
      }

      v15 = v1;
      v14 = v2 == v1;
      v1 += 4;
      if (!v14)
      {
        goto LABEL_22;
      }

LABEL_23:
      v2 += 2;
    }

    v15 = v0;
    v14 = v2 == v0;
    v0 += 4;
    if (v14)
    {
      goto LABEL_23;
    }

LABEL_22:
    v16 = v15[1];
    *v2 = *v15;
    v2[1] = v16;
    goto LABEL_23;
  }

  if (v0 != v1 || &v1[4 * v5] <= v0)
  {
    v18 = sub_1000170AC();
    memmove(v18, v19, v20);
  }

  v12 = &v0[4 * v5];
LABEL_30:
  for (v3 -= 2; v12 > v0 && v1 > v2; v3 -= 2)
  {
    v22 = *(v12 - 2) == *(v1 - 2) && *(v12 - 1) == *(v1 - 1);
    if (!v22 && (sub_100017E68() & 1) != 0)
    {
      v24 = v1 - 4;
      v14 = v3 + 2 == v1;
      v1 -= 4;
      if (!v14)
      {
        v25 = v24[1];
        *v3 = *v24;
        v3[1] = v25;
        v1 = v24;
      }

      goto LABEL_30;
    }

    if (v12 != (v3 + 2))
    {
      v23 = *(v12 - 1);
      *v3 = *(v12 - 2);
      v3[1] = v23;
    }

    v12 -= 4;
  }

LABEL_47:
  v26 = (v12 - v0) / 32;
  if (v1 != v0 || v1 >= &v0[4 * v26])
  {
    memmove(v1, v0, 32 * v26);
  }

  return sub_1000170D0();
}

uint64_t sub_100013174(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100001F58(&qword_100020148, &qword_100018B20);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_100013260(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10000F178(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_100020150, &qword_100018B28, &type metadata accessor for AnyColumn, &type metadata accessor for AnyColumn);
    *v2 = v8;
  }
}

uint64_t sub_100013300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100017E68() & 1;
  }
}

BOOL sub_100013344(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_1000133F4(uint64_t a1, uint64_t a2)
{
  sub_100017EA8();
  sub_100017C38();
  v4 = sub_100017EC8();

  return sub_100013650(a1, a2, v4);
}

unint64_t sub_10001346C(uint64_t a1)
{
  sub_100017858();
  sub_100016160(&qword_100020138, &type metadata accessor for UseCaseIdentifier, &protocol conformance descriptor for UseCaseIdentifier);
  v2 = sub_100017BB8();

  return sub_100013704(a1, v2);
}

BOOL sub_100013504(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_100017EA8();
  sub_100017C38();
  v8 = sub_100017EC8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_100017E68() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_100013B1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

unint64_t sub_100013650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_100017E68() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100013704(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_100017858();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_100016160(&qword_1000201C0, &type metadata accessor for UseCaseIdentifier, &protocol conformance descriptor for UseCaseIdentifier);
    v9 = sub_100017BC8();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000138C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001F58(&qword_1000201A8, &qword_100018B78);
  result = sub_100017DC8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  v12 = result + 56;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100013C84(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
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
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_100017EA8();
    sub_100017C38();
    result = sub_100017EC8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_100013B1C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1000138C0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100013E40(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_100017EA8();
      sub_100017C38();
      result = sub_100017EC8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_100017E68() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_100013CE8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_100017E78();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_100013C84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100018A60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}