uint64_t sub_227F1C60C(uint64_t a1)
{
  v4 = *v2;
  v4[31] = v1;

  v5 = v4[23];
  if (v1)
  {
    sub_227F1FE14(v5, type metadata accessor for DownloadConfiguration);
    v6 = sub_227F1C90C;
  }

  else
  {
    v4[32] = a1;
    sub_227F1FE14(v5, type metadata accessor for DownloadConfiguration);
    v6 = sub_227F1C77C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227F1C77C()
{
  v1 = v0[29];
  (*(v0[25] + 8))(v0[27], v0[24]);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);

  v2 = v0[1];
  v3 = v0[32];

  return v2(v3);
}

uint64_t sub_227F1C90C()
{
  (*(v0[25] + 8))(v0[27], v0[24]);
  sub_227F1FE14(v0[29], type metadata accessor for ResourceInfo);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F1CA98()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for ResourceInfo(0);
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for DownloadOutcome(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for DownloadResponse(0);
  v2 = swift_task_alloc();
  v1[8] = v2;
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_227F1CC04;

  return DownloadTask.wait()(v2);
}

uint64_t sub_227F1CC04()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_227F1CFE4;
  }

  else
  {
    v2 = sub_227F1CD18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F1CD18()
{
  sub_227F246A0(v0[8], v0[7], type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = v0[7];
      v3 = v0[8];
      v5 = v0[4];
      v4 = v0[5];
      v6 = v0[3];
      v7 = (*(v0[2] + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
      os_unfair_lock_lock(v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
      v9 = type metadata accessor for PersistenceState(0);
      sub_227F246A0(v7 + v8 + *(v9 + 24), v4, type metadata accessor for ResourceInfo);
      os_unfair_lock_unlock(v7);
      sub_227F1FE14(v3, type metadata accessor for DownloadResponse);
      sub_227EC2180(v4 + *(v5 + 32), v6, &qword_27D80E8F8, &qword_227F2F5E0);
      sub_227F1FE14(v4, type metadata accessor for ResourceInfo);
      v10 = type metadata accessor for ResourceInfo.DownloadState(0);
      v11 = (*(*(v10 - 8) + 48))(v6, 1, v10) != 1;
      sub_227EB8430(v6, &qword_27D80E8F8, &qword_227F2F5E0);
      sub_227F1FE14(v2, type metadata accessor for DownloadOutcome);
    }

    else
    {
      sub_227F1FE14(v0[8], type metadata accessor for DownloadResponse);
      v11 = 0;
    }

    v15 = v0[1];
    v16 = v11;
  }

  else
  {
    v12 = v0[8];
    v13 = *v0[7];
    swift_willThrow();
    v14 = v13;
    sub_227F1FE14(v12, type metadata accessor for DownloadResponse);

    v15 = v0[1];
    v16 = 0;
  }

  return v15(v16);
}

uint64_t sub_227F1CFE4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_227F1D074(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Schedule(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_227F2B114();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = type metadata accessor for DownloadConfiguration(0);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1D3C0, 0, 0);
}

uint64_t sub_227F1D3C0()
{
  v1 = v0[33];
  v2 = v0[26];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[2];
  v6 = v0[3];
  v131 = type metadata accessor for Manifest(0);
  v7 = *(v4 + 16);
  v140 = v6;
  v141 = *(v131 + 24);
  v7(v1, v6 + v141, v3);
  v8 = *(v4 + 56);
  v8(v1, 0, 1, v3);
  v136 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v5 + *(v136 + 32), v2, &qword_27D80E8F8, &qword_227F2F5E0);
  v9 = type metadata accessor for ResourceInfo.DownloadState(0);
  v122 = v8;
  if ((*(*(v9 - 8) + 48))(v2, 1, v9) == 1)
  {
    v10 = v0[31];
    v11 = v0[16];
    v12 = v0[10];
    v13 = v0[2];
    sub_227EB8430(v0[26], &qword_27D80E8F8, &qword_227F2F5E0);
    v8(v10, 1, 1, v12);
    sub_227EC2180(v13, v11, &qword_27D80E8F0, &unk_227F2F4B0);
    v14 = type metadata accessor for FileInfo(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) == 1)
    {
      sub_227EB8430(v0[16], &qword_27D80E8F0, &unk_227F2F4B0);
      v15 = 1;
    }

    else
    {
      v21 = v0[16];
      v7(v0[32], v21, v0[10]);
      sub_227F1FE14(v21, type metadata accessor for FileInfo);
      v15 = 0;
    }

    v22 = v0[31];
    v23 = v0[10];
    v24 = v0[11];
    v8(v0[32], v15, 1, v23);
    if ((*(v24 + 48))(v22, 1, v23) != 1)
    {
      sub_227EB8430(v0[31], &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v16 = v0[31];
    v17 = v0[32];
    v18 = v0[26];
    v20 = v0[10];
    v19 = v0[11];
    v7(v16, v18, v20);
    sub_227F1FE14(v18, type metadata accessor for ResourceInfo.DownloadState);
    v8(v16, 0, 1, v20);
    (*(v19 + 32))(v17, v16, v20);
    v8(v17, 0, 1, v20);
  }

  v25 = v0[32];
  v26 = v0[14];
  v27 = v0[10];
  v28 = v0[11];
  v121 = v0[13];
  v29 = *(v121 + 48);
  sub_227EC2180(v0[33], v26, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v25, v26 + v29, &qword_27D80E310, &unk_227F2D990);
  v30 = *(v28 + 48);
  v123 = v7;
  v134 = v30;
  if (v30(v26, 1, v27) == 1)
  {
    v31 = v0[33];
    v32 = v0[10];
    sub_227EB8430(v0[32], &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v31, &qword_27D80E310, &unk_227F2D990);
    if (v30(v26 + v29, 1, v32) == 1)
    {
      sub_227EB8430(v0[14], &qword_27D80E310, &unk_227F2D990);
      v33 = v136;
      goto LABEL_13;
    }

    goto LABEL_42;
  }

  v34 = v0[10];
  sub_227EC2180(v0[14], v0[27], &qword_27D80E310, &unk_227F2D990);
  v35 = v30(v26 + v29, 1, v34);
  v36 = v0[32];
  v127 = v0[33];
  v37 = v0[27];
  if (v35 == 1)
  {
    v110 = v0[10];
    v111 = v0[11];
    sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v127, &qword_27D80E310, &unk_227F2D990);
    (*(v111 + 8))(v37, v110);
LABEL_42:
    result = sub_227EB8430(v0[14], &qword_27D80E4F8, &qword_227F2DE80);
    goto LABEL_43;
  }

  v126 = v0[14];
  v38 = v0[11];
  v39 = v0[12];
  v40 = v0[10];
  (*(v38 + 32))(v39, v26 + v29, v40);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v41 = sub_227F2B634();
  v42 = *(v38 + 8);
  v42(v39, v40);
  sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v127, &qword_27D80E310, &unk_227F2D990);
  v42(v37, v40);
  result = sub_227EB8430(v126, &qword_27D80E310, &unk_227F2D990);
  v33 = v136;
  if ((v41 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    return result;
  }

LABEL_13:
  v44 = v0[19];
  v45 = v0[2];
  v46 = v0[3] + *(v131 + 32);
  v113 = *v46;
  v112 = *(v46 + 8);
  v47 = v33[10];
  v48 = v45 + v33[9];
  v115 = *v48;
  v114 = *(v48 + 8);
  v49 = *(v45 + v47);
  v50 = *(v45 + v47 + 8);
  v51 = *(v45 + v47 + 16);
  v52 = *(v45 + v47 + 24);
  v53 = *(v45 + v47 + 32);
  sub_227EC2180(v45 + v33[6], v0[22], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v45, v44, &qword_27D80E8F0, &unk_227F2F4B0);
  v54 = type metadata accessor for FileInfo(0);
  v128 = *(*(v54 - 8) + 48);
  v132 = v54;
  LODWORD(v45) = v128(v44, 1);
  v118 = v51;
  v116 = v53;
  sub_227EC1BF4(v49, v50, v51, v52, v53);
  sub_227EB8430(v44, &qword_27D80E8F0, &unk_227F2F4B0);
  v55 = v0[21];
  v117 = v52;
  if (v45 == 1)
  {
    v56 = sub_227F2B234();
    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  }

  else
  {
    sub_227EC2180(v0[2] + *(v136 + 20), v55, &unk_27D80E3B0, &unk_227F2DB00);
  }

  v57 = v0[18];
  sub_227EC2180(v0[2], v57, &qword_27D80E8F0, &unk_227F2F4B0);
  v58 = v140;
  v119 = v50;
  v120 = v49;
  if ((v128)(v57, 1, v132) == 1)
  {
    sub_227EB8430(v0[18], &qword_27D80E8F0, &unk_227F2F4B0);
    v59 = 1;
    v60 = v123;
  }

  else
  {
    v61 = v0[18];
    v60 = v123;
    v123(v0[30], v61, v0[10]);
    sub_227F1FE14(v61, type metadata accessor for FileInfo);
    v59 = 0;
  }

  v63 = v0[29];
  v62 = v0[30];
  v64 = v0[15];
  v65 = v0[10];
  v122(v62, v59, 1, v65);
  v60(v63, v140 + v141, v65);
  v122(v63, 0, 1, v65);
  v66 = *(v121 + 48);
  sub_227EC2180(v62, v64, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v63, v64 + v66, &qword_27D80E310, &unk_227F2D990);
  if (v134(v64, 1, v65) != 1)
  {
    v69 = v0[10];
    sub_227EC2180(v0[15], v0[28], &qword_27D80E310, &unk_227F2D990);
    v70 = v134(v64 + v66, 1, v69);
    v72 = v0[29];
    v71 = v0[30];
    v73 = v0[28];
    if (v70 != 1)
    {
      v78 = v0[15];
      v80 = v0[11];
      v79 = v0[12];
      v81 = v0[10];
      (*(v80 + 32))(v79, v64 + v66, v81);
      sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v137 = sub_227F2B634();
      v82 = *(v80 + 8);
      v82(v79, v81);
      sub_227EB8430(v72, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v71, &qword_27D80E310, &unk_227F2D990);
      v82(v73, v81);
      v58 = v140;
      sub_227EB8430(v78, &qword_27D80E310, &unk_227F2D990);
      if (v137)
      {
        goto LABEL_27;
      }

LABEL_25:
      v76 = v58;
      v77 = v0[20];
      goto LABEL_29;
    }

    v74 = v0[10];
    v75 = v0[11];
    sub_227EB8430(v0[29], &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v71, &qword_27D80E310, &unk_227F2D990);
    (*(v75 + 8))(v73, v74);
LABEL_24:
    sub_227EB8430(v0[15], &qword_27D80E4F8, &qword_227F2DE80);
    goto LABEL_25;
  }

  v67 = v0[30];
  v68 = v0[10];
  sub_227EB8430(v0[29], &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v67, &qword_27D80E310, &unk_227F2D990);
  if (v134(v64 + v66, 1, v68) != 1)
  {
    goto LABEL_24;
  }

  sub_227EB8430(v0[15], &qword_27D80E310, &unk_227F2D990);
LABEL_27:
  v83 = v0[17];
  sub_227EC2180(v0[2], v83, &qword_27D80E8F0, &unk_227F2F4B0);
  v84 = (v128)(v83, 1, v132);
  v77 = v0[20];
  v85 = v0[17];
  v76 = v58;
  if (v84 != 1)
  {
    v109 = v0[17];
    sub_227EC2180(v85 + *(v132 + 36), v0[20], &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v109, type metadata accessor for FileInfo);
    goto LABEL_30;
  }

  sub_227EB8430(v85, &qword_27D80E8F0, &unk_227F2F4B0);
LABEL_29:
  v86 = sub_227F2B234();
  (*(*(v86 - 8) + 56))(v77, 1, 1, v86);
LABEL_30:
  v88 = v0[23];
  v87 = v0[24];
  v90 = v0[21];
  v89 = v0[22];
  v91 = v0[9];
  v129 = v0[20];
  v138 = v0[8];
  v93 = v0[5];
  v92 = v0[6];
  v94 = sub_227EE6188((v76 + v141));
  v96 = v95;
  (*(v92 + 56))(v91, 1, 1, v93);
  *v87 = 0;
  sub_227EC2180(v89, v87 + v88[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v90, v87 + v88[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v129, v87 + v88[7], &unk_27D80E3B0, &unk_227F2DB00);
  v97 = (v87 + v88[8]);
  *v97 = v94;
  v97[1] = v96;
  v98 = v87 + v88[9];
  *v98 = v113;
  v98[8] = v112;
  v99 = v87 + v88[10];
  *v99 = v115;
  v99[8] = v114;
  v100 = (v87 + v88[11]);
  *v100 = v120;
  v100[1] = v119;
  v100[2] = v118;
  v100[3] = v117;
  v100[4] = v116;
  sub_227EC2180(v91, v138, &qword_27D80E360, &unk_227F32A90);
  v125 = *(v92 + 48);
  v101 = v125(v138, 1, v93);
  v102 = v0[21];
  v133 = v0[20];
  v135 = v0[22];
  v103 = v0[9];
  v139 = v0[8];
  v130 = v0[7];
  if (v101 == 1)
  {
    v124 = v0[5];
    if (v114)
    {
      v104 = 0;
    }

    else
    {
      v104 = v115;
    }

    sub_227EC1BF4(v120, v119, v118, v117, v116);
    sub_227F26898(v102, v135, v104, v130, 0.0);
    sub_227EB8430(v103, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v133, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v102, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v135, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(v120, v119, v118, v117, v116);
    if (v125(v139, 1, v124) != 1)
    {
      sub_227EB8430(v0[8], &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(v103, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v133, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v102, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v135, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FDAC(v139, v130, type metadata accessor for Schedule);
  }

  v105 = v0[24];
  v106 = v0[25];
  sub_227F1FDAC(v0[7], v105 + *(v0[23] + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v105, v106, type metadata accessor for DownloadConfiguration);
  v107 = swift_task_alloc();
  v0[34] = v107;
  *v107 = v0;
  v107[1] = sub_227F1E338;
  v108 = v0[25];

  return DownloadManager.download(_:config:)(v140 + v141, v108);
}

uint64_t sub_227F1E338(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  if (v1)
  {
    sub_227F1FE14(v4[25], type metadata accessor for DownloadConfiguration);

    return MEMORY[0x2822009F8](sub_227F1E5F0, 0, 0);
  }

  else
  {
    sub_227F1FE14(v4[25], type metadata accessor for DownloadConfiguration);

    v5 = v4[1];

    return v5(a1);
  }
}

uint64_t sub_227F1E5F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F1E770(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for FileInfo(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for Manifest(0);
  v2[9] = swift_task_alloc();
  type metadata accessor for ResourceInfo(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_227F2B334();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1E92C, 0, 0);
}

uint64_t sub_227F1E92C()
{
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = __swift_project_value_buffer(v3, qword_2813CDE98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_227F2B304();
  v6 = sub_227F2B8D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_227EB2000, v5, v6, "Fetching updates", v7, 2u);
    MEMORY[0x22AAAD240](v7, -1, -1);
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 24);

  v11 = *(v10 + 32);
  v12 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  v13 = (v11 + v12);
  os_unfair_lock_lock((v11 + v12));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  *(v0 + 184) = v14;
  v15 = *(type metadata accessor for PersistenceState(0) + 24);
  *(v0 + 188) = v15;
  sub_227F246A0(v13 + v14 + v15, v8, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v13);
  sub_227F1A374(v9);
  if (*(*(v0 + 72) + 16) == 1)
  {
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_227F1ECE0;
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);

    return sub_227F1D074(v17, v18);
  }

  else
  {
    v20 = sub_227F2B304();
    v21 = sub_227F2B8E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_227EB2000, v20, v21, "Bailing on updates fetch. Manifest is unsupported.", v22, 2u);
      MEMORY[0x22AAAD240](v22, -1, -1);
    }

    sub_227EBFEF4();
    swift_allocError();
    *v23 = xmmword_227F303E0;
    *(v23 + 16) = 2;
    swift_willThrow();
    sub_227F1FE14(*(v0 + 72), type metadata accessor for Manifest);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 96);
    sub_227F1FE14(*(v0 + 88), type metadata accessor for ResourceInfo);
    (*(v25 + 8))(v24, v26);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_227F1ECE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_227F1F434;
  }

  else
  {
    v4 = sub_227F1EDF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_227F1EDF4(uint64_t a1)
{
  v31 = v1;
  v2 = *(v1 + 144);
  sub_227F2B024();
  *(v1 + 160) = v3;
  v4 = (v2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v5 = *(v2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  if ((*(v6 + 24))(v5, v6) == 3)
  {
LABEL_4:
    v13 = swift_task_alloc();
    *(v1 + 168) = v13;
    *v13 = v1;
    v13[1] = sub_227F1F1F4;
    v14 = *(v1 + 16);

    sub_227F1F65C(v14);
    return;
  }

  v7 = *(v1 + 80);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 32);
  v11 = (*(v1 + 120) + *(v1 + 128));
  v12 = *(v1 + 184) + *(v1 + 188);
  os_unfair_lock_lock(v11);
  sub_227F246A0(v11 + v12, v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v11);
  sub_227EC2180(v7, v10, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v7, type metadata accessor for ResourceInfo);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_227EB8430(*(v1 + 32), &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_4;
  }

  v15 = *(v1 + 152);
  v16 = *(v1 + 184);
  v17 = *(v1 + 120);
  v18 = (v17 + *(v1 + 128));
  sub_227F1FDAC(*(v1 + 32), *(v1 + 56), type metadata accessor for FileInfo);
  os_unfair_lock_lock(v18);
  sub_227EF1314(v18 + v16, v17, &v30);
  os_unfair_lock_unlock(v18);
  if (v15)
  {
    return;
  }

  if (!v30)
  {
    sub_227F1FE14(*(v1 + 56), type metadata accessor for FileInfo);
    goto LABEL_4;
  }

  v19 = sub_227F2B304();
  v20 = sub_227F2B8D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_227EB2000, v19, v20, "Existing updates file is good to use. Getting it back", v21, 2u);
    MEMORY[0x22AAAD240](v21, -1, -1);
  }

  v23 = *(v1 + 104);
  v22 = *(v1 + 112);
  v25 = *(v1 + 88);
  v24 = *(v1 + 96);
  v26 = *(v1 + 72);
  v27 = *(v1 + 56);
  v28 = *(v1 + 16);

  sub_227F1FE14(v26, type metadata accessor for Manifest);
  sub_227F1FE14(v25, type metadata accessor for ResourceInfo);
  (*(v23 + 8))(v22, v24);
  sub_227F1FDAC(v27, v28, type metadata accessor for FileInfo);

  v29 = *(v1 + 8);

  v29();
}

uint64_t sub_227F1F1F4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_227F1F544;
  }

  else
  {
    v2 = sub_227F1F324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F1F324()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];

  sub_227F1FE14(v5, type metadata accessor for Manifest);
  sub_227F1FE14(v4, type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F1F434()
{
  sub_227F1FE14(v0[9], type metadata accessor for Manifest);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227F1F544()
{

  sub_227F1FE14(v0[9], type metadata accessor for Manifest);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227F1F65C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v2[4] = swift_task_alloc();
  type metadata accessor for ResourceInfo(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for DownloadOutcome(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for DownloadResponse(0);
  v3 = swift_task_alloc();
  v2[8] = v3;
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_227F1F7C4;

  return DownloadTask.wait()(v3);
}

uint64_t sub_227F1F7C4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_227F1FBDC;
  }

  else
  {
    v2 = sub_227F1F8D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F1F8D8()
{
  sub_227F246A0(v0[8], v0[7], type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = v0[8];
    v11 = *v0[7];
    swift_willThrow();
    v12 = v11;
    sub_227F1FE14(v10, type metadata accessor for DownloadResponse);

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227F1FE14(v0[7], type metadata accessor for DownloadOutcome);
  }

  v3 = v0[4];
  v2 = v0[5];
  v4 = (*(v0[3] + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v4);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v6 = type metadata accessor for PersistenceState(0);
  sub_227F246A0(v4 + v5 + *(v6 + 24), v2, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v4);
  sub_227EC2180(v2, v3, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v2, type metadata accessor for ResourceInfo);
  v7 = type metadata accessor for FileInfo(0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    v8 = v0[8];
    sub_227EB8430(v0[4], &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EF9A28();
    swift_allocError();
    *v9 = xmmword_227F32A10;
    swift_willThrow();
    sub_227F1FE14(v8, type metadata accessor for DownloadResponse);
LABEL_7:

    v13 = v0[1];
    goto LABEL_9;
  }

  v14 = v0[4];
  v15 = v0[2];
  sub_227F1FE14(v0[8], type metadata accessor for DownloadResponse);
  sub_227F1FDAC(v14, v15, type metadata accessor for FileInfo);

  v13 = v0[1];
LABEL_9:

  return v13();
}

uint64_t sub_227F1FBDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F1FC64()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_227F1FCD8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_227F248D8();
    v4 = sub_227F2B5C4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_227F1FD64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227F1FDAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F1FE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F1FE74(uint64_t a1)
{
  v4 = *(sub_227F2B334() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227EFA0C4;

  return sub_227F18754(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm()
{
  v1 = sub_227F2B334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227F20038(uint64_t a1)
{
  v4 = *(sub_227F2B334() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227ED03CC;

  return sub_227F18754(a1, v6, v7, v8, v1 + v5);
}

void *sub_227F20130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v35 = *v4;
  v8 = sub_227F2AFF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_227F2B114();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v4[2] = a1;
  v4[4] = a2;
  v4[5] = v15;
  v40[0] = 7368052;
  v40[1] = 0xE300000000000000;
  (*(v9 + 104))(v11, *MEMORY[0x277CC91C0], v8);
  sub_227EB84D8();

  sub_227F2B104();
  (*(v9 + 8))(v11, v8);
  v16 = swift_allocObject();
  v17 = v35;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  v40[3] = &type metadata for Clock;
  v40[4] = &protocol witness table for Clock;
  v18 = type metadata accessor for DownloadManager(0);
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_logger;
  v21 = qword_2813CD568;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_227F2B334();
  v23 = __swift_project_value_buffer(v22, qword_2813CE040);
  (*(*(v22 - 8) + 16))(&v19[v20], v23, v22);
  v24 = &v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_taskStates];
  *v24 = 0;
  *(v24 + 1) = MEMORY[0x277D84F98];
  v25 = OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_tokenBucket;
  type metadata accessor for TokenBucket();
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v26 + 112) = 0;
  *&v19[v25] = v26;
  v27 = &v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession];
  *v27 = 0;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 5) = 0;
  v28 = v36;
  (*(v12 + 16))(&v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadToFolder], v14, v36);
  *&v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_settings] = a1;
  v29 = &v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_downloadCompletion];
  *v29 = sub_227F2057C;
  v29[1] = v16;
  v30 = &v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_sessionConstructor];
  v31 = v38;
  *v30 = v37;
  v30[1] = v31;
  sub_227ECDA1C(v40, &v19[OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager_clock]);
  v39.receiver = v19;
  v39.super_class = v18;

  v32 = objc_msgSendSuper2(&v39, sel_init);
  (*(v12 + 8))(v14, v28);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v5[3] = v32;
  return v5;
}

uint64_t sub_227F205A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000227F346F0 == a2;
  if (v3 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6566696E614D6F6ELL && a2 == 0xEE00656C69467473 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000227F34710 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470556F6ELL && a2 == 0xED0000656C694673 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000227F34730 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7272456369676F6CLL && a2 == 0xEA0000000000726FLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_227F2BC64();

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

char *sub_227F207C4(void *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F218, &qword_227F32C48);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v34 - v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F220, &qword_227F32C50);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v50 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F228, &qword_227F32C58);
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v49 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F230, &qword_227F32C60);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F238, &qword_227F32C68);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F240, &qword_227F32C70);
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F248, &unk_227F32C78);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_227F24A08();
  v18 = v51;
  sub_227F2BD74();
  if (!v18)
  {
    v19 = v12;
    v34 = v10;
    v35 = v9;
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v51 = v14;
    v23 = sub_227F2BB74();
    v24 = (2 * *(v23 + 16)) | 1;
    v53 = v23;
    v54 = v23 + 32;
    v55 = 0;
    v56 = v24;
    v25 = sub_227EBAE28();
    if (v25 == 6 || v55 != v56 >> 1)
    {
      v12 = sub_227F2B9E4();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
      *v29 = &type metadata for ResourceManagerError;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v12 - 1) + 104))(v29, *MEMORY[0x277D84160], v12);
      swift_willThrow();
      (*(v51 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }

    else if (v25 > 2u)
    {
      v31 = v51;
      if (v25 == 3)
      {
        v57 = 3;
        sub_227F24B04();
        sub_227F2BAE4();
        (*(v39 + 8))(v21, v42);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else if (v25 == 4)
      {
        v57 = 4;
        sub_227F24AB0();
        sub_227F2BAE4();
        (*(v43 + 8))(v22, v45);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else
      {
        v57 = 5;
        sub_227F24A5C();
        v32 = v47;
        sub_227F2BAE4();
        v33 = v44;
        v12 = sub_227F2BB44();
        (*(v46 + 8))(v32, v33);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v26 = v51;
      if (v25)
      {
        if (v25 == 1)
        {
          v57 = 1;
          sub_227F24BAC();
          v27 = v35;
          sub_227F2BAE4();
          (*(v37 + 8))(v27, v38);
        }

        else
        {
          v57 = 2;
          sub_227F24B58();
          sub_227F2BAE4();
          (*(v40 + 8))(v20, v41);
        }

        (*(v26 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else
      {
        v57 = 0;
        sub_227F24C00();
        sub_227F2BAE4();
        (*(v36 + 8))(v19, v34);
        (*(v26 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v52);
  return v12;
}

void sub_227F21100(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v417 = a4;
  v413 = a3;
  v351 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v5 - 8);
  v353 = v346 - v6;
  v378 = type metadata accessor for Manifest(0);
  v379 = *(v378 - 8);
  v7 = MEMORY[0x28223BE20](v378);
  v352 = v346 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = v8;
  MEMORY[0x28223BE20](v7);
  v354 = v346 - v9;
  v398 = type metadata accessor for FileInfo(0);
  v397 = *(v398 - 8);
  v10 = MEMORY[0x28223BE20](v398);
  v358 = v346 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v392 = v346 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v385 = v346 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v356 = v346 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v370 = v346 - v19;
  MEMORY[0x28223BE20](v18);
  v391 = v346 - v20;
  v394 = type metadata accessor for DownloadOutcome(0);
  v21 = MEMORY[0x28223BE20](v394);
  v373 = v346 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v389 = v346 - v23;
  v24 = type metadata accessor for DownloadResponse(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v390 = v346 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v383 = v346 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v382 = v346 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v388 = v346 - v32;
  MEMORY[0x28223BE20](v31);
  v387 = v346 - v33;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v34 = MEMORY[0x28223BE20](v412);
  v372 = v346 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v402 = v346 - v37;
  MEMORY[0x28223BE20](v36);
  v405 = (v346 - v38);
  v416 = sub_227F2B114();
  v418 = *(v416 - 8);
  v39 = MEMORY[0x28223BE20](v416);
  v357 = v346 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v355 = v346 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v371 = v346 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v374 = v346 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v393 = v346 - v48;
  v349 = v49;
  MEMORY[0x28223BE20](v47);
  v414 = v346 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v361 = v346 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v396 = v346 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v369 = v346 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = v346 - v58;
  v409 = type metadata accessor for ResourceInfo(0);
  v60 = MEMORY[0x28223BE20](v409);
  v360 = v346 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v367 = v346 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v395 = v346 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = v346 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v69 = MEMORY[0x28223BE20](v68 - 8);
  v362 = v346 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v376 = v346 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v384 = v346 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v377 = v346 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v386 = v346 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v401 = v346 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v368 = v346 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v375 = v346 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v404 = (v346 - v86);
  v87 = MEMORY[0x28223BE20](v85);
  v89 = v346 - v88;
  v90 = MEMORY[0x28223BE20](v87);
  v92 = v346 - v91;
  v93 = MEMORY[0x28223BE20](v90);
  v427 = v346 - v94;
  MEMORY[0x28223BE20](v93);
  v96 = v346 - v95;
  v97 = sub_227F2B334();
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v100 = v346 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v101 = __swift_project_value_buffer(v97, qword_2813CDE98);
  v406 = v98;
  v102 = *(v98 + 16);
  v411 = v100;
  v407 = v97;
  v102(v100, v101, v97);
  v403 = a1;
  v103 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v104 = v103 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v105 = v415;
  sub_227EEEF74(v104, v96);
  v408 = v105;
  if (v105)
  {
    os_unfair_lock_unlock(v103);
    __break(1u);
    return;
  }

  v415 = v96;
  os_unfair_lock_unlock(v103);
  os_unfair_lock_lock(v103);
  v359 = type metadata accessor for PersistenceState(0);
  v106 = *(v359 + 24);
  sub_227F246A0(v104 + v106, v67, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v103);
  sub_227EC2180(&v67[*(v409 + 32)], v59, &qword_27D80E8F8, &qword_227F2F5E0);
  sub_227F1FE14(v67, type metadata accessor for ResourceInfo);
  v107 = type metadata accessor for ResourceInfo.DownloadState(0);
  v108 = *(v107 - 8);
  v109 = *(v108 + 48);
  v365 = v107;
  v364 = v109;
  v363 = v108 + 48;
  v110 = (v109)(v59, 1);
  v111 = v103;
  v112 = v416;
  v399 = v111;
  v400 = v104;
  v366 = v106;
  if (v110 == 1)
  {
    sub_227EB8430(v59, &qword_27D80E8F8, &qword_227F2F5E0);
    v113 = v418;
    v114 = *(v418 + 56);
    v410 = (v418 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v114(v92, 1, 1, v112);
    os_unfair_lock_lock(v111);
    v115 = v104 + v106;
    v116 = v395;
    sub_227F246A0(v115, v395, type metadata accessor for ResourceInfo);
    os_unfair_lock_unlock(v111);
    v117 = v396;
    sub_227EC2180(v116, v396, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227F1FE14(v116, type metadata accessor for ResourceInfo);
    v118 = (*(v397 + 48))(v117, 1, v398);
    v119 = v427;
    if (v118 == 1)
    {
      sub_227EB8430(v117, &qword_27D80E8F0, &unk_227F2F4B0);
      v120 = 1;
    }

    else
    {
      (*(v113 + 16))(v427, v117, v112);
      sub_227F1FE14(v117, type metadata accessor for FileInfo);
      v120 = 0;
    }

    v121 = v113;
    v125 = v405;
    v114(v119, v120, 1, v112);
    v126 = (*(v113 + 48))(v92, 1, v112);
    v124 = v413;
    v122 = v410;
    if (v126 != 1)
    {
      sub_227EB8430(v92, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v121 = v418;
    (*(v418 + 16))(v92, v59, v416);
    sub_227F1FE14(v59, type metadata accessor for ResourceInfo.DownloadState);
    v114 = *(v121 + 56);
    v122 = (v121 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v114(v92, 0, 1, v112);
    v123 = v427;
    (*(v121 + 32))(v427, v92, v112);
    v114(v123, 0, 1, v112);
    v124 = v413;
    v125 = v405;
  }

  v127 = *(v121 + 16);
  v396 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v128 = v124 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v129 = v414;
  v127(v414, v128, v112);
  v395 = v121 + 16;
  v381 = v127;
  v127(v89, v129, v112);
  v114(v89, 0, 1, v112);
  v130 = *(v412 + 48);
  sub_227EC2180(v415, v125, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v89, v125 + v130, &qword_27D80E310, &unk_227F2D990);
  v133 = *(v121 + 48);
  v132 = v121 + 48;
  v131 = v133;
  v134 = (v133)(v125, 1, v112);
  v410 = v122;
  if (v134 == 1)
  {
    sub_227EB8430(v89, &qword_27D80E310, &unk_227F2D990);
    if ((v131)(v125 + v130, 1, v112) == 1)
    {
      v404 = v114;
      sub_227EB8430(v125, &qword_27D80E310, &unk_227F2D990);
      v135 = *(v418 + 8);
      v136 = (v418 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v137 = v411;
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v138 = v404;
  sub_227EC2180(v125, v404, &qword_27D80E310, &unk_227F2D990);
  if ((v131)(v125 + v130, 1, v112) == 1)
  {
    sub_227EB8430(v89, &qword_27D80E310, &unk_227F2D990);
    (*(v418 + 8))(v138, v112);
LABEL_16:
    v405 = v131;
    sub_227EB8430(v125, &qword_27D80E4F8, &qword_227F2DE80);
    v139 = *(v418 + 32);
    v140 = (v418 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    goto LABEL_17;
  }

  v405 = v131;
  v346[1] = v132;
  v161 = v112;
  v162 = v418;
  v163 = v418 + 32;
  v164 = v125 + v130;
  v165 = v393;
  v380 = *(v418 + 32);
  v380(v393, v164, v161);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v347 = sub_227F2B634();
  v166 = *(v162 + 8);
  v166(v165, v161);
  sub_227EB8430(v89, &qword_27D80E310, &unk_227F2D990);
  v348 = v166;
  v166(v404, v161);
  sub_227EB8430(v125, &qword_27D80E310, &unk_227F2D990);
  if (v347)
  {
    v404 = v114;
    v136 = (v162 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v137 = v411;
    v112 = v416;
    v135 = v348;
LABEL_27:
    v167 = v414;
    v414 = v136;
    v348 = v135;
    v135(v167, v112);
    v168 = v387;
    sub_227F246A0(v417, v387, type metadata accessor for DownloadResponse);
    v169 = sub_227F2B304();
    v170 = sub_227F2B8F4();
    v171 = os_log_type_enabled(v169, v170);
    v172 = v406;
    v173 = v408;
    if (v171)
    {
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      aBlock = v175;
      *v174 = 136315138;
      v176 = sub_227ECDD3C();
      v177 = v168;
      v179 = v178;
      sub_227F1FE14(v177, type metadata accessor for DownloadResponse);
      v180 = sub_227ECAC40(v176, v179, &aBlock);

      *(v174 + 4) = v180;
      _os_log_impl(&dword_227EB2000, v169, v170, "Fetching manifest finished with status code %s", v174, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v175);
      MEMORY[0x22AAAD240](v175, -1, -1);
      MEMORY[0x22AAAD240](v174, -1, -1);
    }

    else
    {

      sub_227F1FE14(v168, type metadata accessor for DownloadResponse);
    }

    v181 = v388;
    sub_227F246A0(v417, v388, type metadata accessor for DownloadResponse);
    v182 = sub_227F2B304();
    v183 = sub_227F2B8D4();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      aBlock = v185;
      *v184 = 136315138;
      v186 = DownloadResponse.description.getter();
      v187 = v181;
      v189 = v188;
      sub_227F1FE14(v187, type metadata accessor for DownloadResponse);
      v190 = sub_227ECAC40(v186, v189, &aBlock);

      *(v184 + 4) = v190;
      _os_log_impl(&dword_227EB2000, v182, v183, "Fetching manifest: %s", v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v185);
      MEMORY[0x22AAAD240](v185, -1, -1);
      MEMORY[0x22AAAD240](v184, -1, -1);
    }

    else
    {

      sub_227F1FE14(v181, type metadata accessor for DownloadResponse);
    }

    v191 = v427;
    v192 = v403;
    v193 = v392;
    v194 = v391;
    v195 = v389;
    sub_227F246A0(v417, v389, type metadata accessor for DownloadOutcome);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v197 = sub_227F1FDAC(v195, v193, type metadata accessor for FileInfo);
        MEMORY[0x28223BE20](v197);
        v346[-2] = v193;
        v346[-1] = v192;
        sub_227EF3388(sub_227F24684);
        if (v173)
        {
          sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
          sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
          (*(v172 + 8))(v137, v407);
          sub_227F1FE14(v193, type metadata accessor for FileInfo);
        }

        else
        {
          v247 = v399;
          os_unfair_lock_lock(v399);
          v248 = v367;
          sub_227F246A0(v400 + v366, v367, type metadata accessor for ResourceInfo);
          os_unfair_lock_unlock(v247);
          v249 = v369;
          sub_227EC2180(v248 + *(v409 + 32), v369, &qword_27D80E8F8, &qword_227F2F5E0);
          sub_227F1FE14(v248, type metadata accessor for ResourceInfo);
          if (v364(v249, 1, v365) == 1)
          {
            sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
            sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
            (*(v172 + 8))(v137, v407);
            sub_227EB8430(v249, &qword_27D80E8F8, &qword_227F2F5E0);
            sub_227F1FE14(v392, type metadata accessor for FileInfo);
          }

          else
          {
            v271 = v355;
            v272 = v416;
            v381(v355, v249, v416);
            sub_227F1FE14(v249, type metadata accessor for ResourceInfo.DownloadState);
            v273 = v271;
            v274 = v418 + 32;
            v275 = v272;
            v276 = *(v418 + 32);
            v276(v371, v273, v275);
            os_unfair_lock_lock(v247);
            v277 = (v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
            os_unfair_lock_lock((v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
            v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
            v279 = v356;
            sub_227EF34BC(v277 + *(v278 + 28), v400, &aBlock, v356);
            v412 = v276;
            os_unfair_lock_unlock(v277);
            os_unfair_lock_unlock(v247);
            v324 = v378;
            if ((*(v379 + 48))(v279, 1, v378) == 1)
            {
              v348(v371, v416);
              sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
              sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
              (*(v172 + 8))(v137, v407);
              sub_227F1FE14(v392, type metadata accessor for FileInfo);
              sub_227EB8430(v279, &qword_27D80EB28, &qword_227F30440);
            }

            else
            {
              v409 = v274;
              v408 = 0;
              v325 = v354;
              sub_227F1FDAC(v279, v354, type metadata accessor for Manifest);
              v326 = v325 + *(v324 + 24);
              v327 = v375;
              v328 = v416;
              v329 = v381;
              v381(v375, v326, v416);
              v404(v327, 0, 1, v328);
              v330 = sub_227F28DB8(v417, v413 + v396, 1u, v327);
              v331 = sub_227F2B644();
              v332 = swift_allocObject();
              *(v332 + 16) = v330;
              v423 = sub_227EFA0C8;
              v424 = v332;
              aBlock = MEMORY[0x277D85DD0];
              v420 = 1107296256;
              v421 = sub_227F1FCD8;
              v422 = &block_descriptor_56;
              v333 = _Block_copy(&aBlock);

              AnalyticsSendEventLazy();
              _Block_release(v333);

              sub_227EB8430(v327, &qword_27D80E310, &unk_227F2D990);
              v334 = sub_227F2B304();
              v335 = sub_227F2B8D4();
              if (os_log_type_enabled(v334, v335))
              {
                v336 = swift_slowAlloc();
                *v336 = 0;
                _os_log_impl(&dword_227EB2000, v334, v335, "New updates URL. Scheduling download...", v336, 2u);
                MEMORY[0x22AAAD240](v336, -1, -1);
              }

              v337 = sub_227F2B854();
              (*(*(v337 - 8) + 56))(v353, 1, 1, v337);
              v338 = v393;
              v339 = v416;
              v329(v393, v371, v416);
              sub_227F246A0(v354, v352, type metadata accessor for Manifest);
              v340 = (*(v418 + 80) + 40) & ~*(v418 + 80);
              v341 = (v349 + v340 + 7) & 0xFFFFFFFFFFFFFFF8;
              v342 = (*(v379 + 80) + v341 + 8) & ~*(v379 + 80);
              v343 = swift_allocObject();
              v343[2] = 0;
              v343[3] = 0;
              v344 = v351;
              v343[4] = v351;
              (v412)(v343 + v340, v338, v339);
              *(v343 + v341) = v403;
              sub_227F1FDAC(v352, v343 + v342, type metadata accessor for Manifest);

              v345 = v344;
              sub_227F184A8(0, 0, v353, &unk_227F32AF0, v343);

              sub_227F1FE14(v354, type metadata accessor for Manifest);
              v348(v371, v339);
              sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
              sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
              (*(v172 + 8))(v137, v407);
              sub_227F1FE14(v392, type metadata accessor for FileInfo);
            }
          }
        }

        return;
      }

      v221 = v399;
      os_unfair_lock_lock(v399);
      v222 = (v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock((v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
      v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
      sub_227EF34BC(v222 + *(v223 + 28), v400, &aBlock, v194);
      if (v173)
      {
        os_unfair_lock_unlock(v222);
        os_unfair_lock_unlock(v221);
      }

      else
      {
        v418 = 0;
        os_unfair_lock_unlock(v222);
        os_unfair_lock_unlock(v221);
        v252 = v194;
        v253 = v416;
        v254 = v381;
        v381(v374, v413 + v396, v416);
        v255 = v370;
        sub_227EC2180(v252, v370, &qword_27D80EB28, &qword_227F30440);
        v256 = v378;
        if ((*(v379 + 48))(v255, 1, v378) == 1)
        {
          sub_227EB8430(v255, &qword_27D80EB28, &qword_227F30440);
          v257 = 1;
          v258 = v368;
        }

        else
        {
          v280 = v255 + *(v256 + 24);
          v258 = v368;
          v254(v368, v280, v253);
          sub_227F1FE14(v255, type metadata accessor for Manifest);
          v257 = 0;
        }

        v404(v258, v257, 1, v253);
        v281 = v374;
        v282 = sub_227F28DB8(v417, v374, 1u, v258);
        v283 = v258;
        v284 = sub_227F2B644();
        v285 = swift_allocObject();
        *(v285 + 16) = v282;
        v423 = sub_227EFA0C8;
        v424 = v285;
        aBlock = MEMORY[0x277D85DD0];
        v420 = 1107296256;
        v421 = sub_227F1FCD8;
        v422 = &block_descriptor_67;
        v286 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v286);

        sub_227EB8430(v283, &qword_27D80E310, &unk_227F2D990);
        v348(v281, v253);
        v287 = v399;
        os_unfair_lock_lock(v399);
        sub_227EE22DC((v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v192 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
        os_unfair_lock_unlock(v287);
        sub_227EB8430(v391, &qword_27D80EB28, &qword_227F30440);
      }
    }

    else
    {
      v214 = *(v195 + 16);
      v425[0] = *v195;
      v425[1] = v214;
      v426 = *(v195 + 32);
      v215 = v375;
      v404(v375, 1, 1, v416);
      v216 = sub_227F28DB8(v417, v413 + v396, 1u, v215);
      v217 = sub_227F2B644();
      v218 = swift_allocObject();
      *(v218 + 16) = v216;
      v423 = sub_227EFA0C8;
      v424 = v218;
      aBlock = MEMORY[0x277D85DD0];
      v420 = 1107296256;
      v421 = sub_227F1FCD8;
      v422 = &block_descriptor_74;
      v219 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v219);

      sub_227EB8430(v215, &qword_27D80E310, &unk_227F2D990);
      sub_227F2487C(v425, &aBlock);

      sub_227EF3220(v220, v425, v192);
      if (!v173)
      {
        v250 = *&v425[0];
        swift_willThrow();
        v251 = v250;
        sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
        sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
        (*(v172 + 8))(v137, v407);
        sub_227EF9968(v425);
        return;
      }

      sub_227EF9968(v425);
    }

    sub_227EB8430(v191, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
    (*(v172 + 8))(v137, v407);
    return;
  }

  v140 = v163 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v139 = v380;
LABEL_17:
  v141 = v401;
  v142 = v416;
  v380 = v139;
  v139(v401, v414, v416);
  v114(v141, 0, 1, v142);
  v143 = *(v412 + 48);
  v144 = v402;
  sub_227EC2180(v427, v402, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v141, v144 + v143, &qword_27D80E310, &unk_227F2D990);
  v145 = v405;
  if (v405(v144, 1, v142) == 1)
  {
    sub_227EB8430(v141, &qword_27D80E310, &unk_227F2D990);
    if (v145(v144 + v143, 1, v142) == 1)
    {
      v414 = v140;
      v404 = v114;
      sub_227EB8430(v144, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  v146 = v145;
  v147 = v386;
  sub_227EC2180(v144, v386, &qword_27D80E310, &unk_227F2D990);
  if (v146(v144 + v143, 1, v142) == 1)
  {
    sub_227EB8430(v141, &qword_27D80E310, &unk_227F2D990);
    (*(v418 + 8))(v147, v142);
LABEL_22:
    sub_227EB8430(v144, &qword_27D80E4F8, &qword_227F2DE80);
LABEL_23:
    v148 = v390;
    sub_227F246A0(v417, v390, type metadata accessor for DownloadResponse);

    v149 = v411;
    v150 = sub_227F2B304();
    v151 = sub_227F2B8E4();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      aBlock = v153;
      *v152 = 136315394;
      v154 = sub_227ED1BF8();
      v156 = sub_227ECAC40(v154, v155, &aBlock);

      *(v152 + 4) = v156;
      *(v152 + 12) = 2080;
      v157 = DownloadResponse.description.getter();
      v159 = v158;
      sub_227F1FE14(v148, type metadata accessor for DownloadResponse);
      v160 = sub_227ECAC40(v157, v159, &aBlock);

      *(v152 + 14) = v160;
      _os_log_impl(&dword_227EB2000, v150, v151, "unhandled download completion %s %s", v152, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v153, -1, -1);
      MEMORY[0x22AAAD240](v152, -1, -1);
    }

    else
    {

      sub_227F1FE14(v148, type metadata accessor for DownloadResponse);
    }

    sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
    (*(v406 + 8))(v149, v407);
    return;
  }

  v404 = v114;
  v198 = v144 + v143;
  v199 = v393;
  v414 = v140;
  v380(v393, v198, v142);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v200 = v147;
  v201 = sub_227F2B634();
  v202 = v144;
  v203 = *(v418 + 8);
  v203(v199, v142);
  sub_227EB8430(v141, &qword_27D80E310, &unk_227F2D990);
  v203(v200, v142);
  sub_227EB8430(v202, &qword_27D80E310, &unk_227F2D990);
  if ((v201 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_40:
  v204 = v382;
  sub_227F246A0(v417, v382, type metadata accessor for DownloadResponse);
  v205 = sub_227F2B304();
  v206 = sub_227F2B8F4();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    aBlock = v208;
    *v207 = 136315138;
    v209 = sub_227ECDD3C();
    v210 = v204;
    v212 = v211;
    sub_227F1FE14(v210, type metadata accessor for DownloadResponse);
    v213 = sub_227ECAC40(v209, v212, &aBlock);

    *(v207 + 4) = v213;
    _os_log_impl(&dword_227EB2000, v205, v206, "Fetching updates finished with status code %s.", v207, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v208);
    MEMORY[0x22AAAD240](v208, -1, -1);
    MEMORY[0x22AAAD240](v207, -1, -1);
  }

  else
  {

    sub_227F1FE14(v204, type metadata accessor for DownloadResponse);
  }

  v224 = v383;
  sub_227F246A0(v417, v383, type metadata accessor for DownloadResponse);
  v225 = sub_227F2B304();
  v226 = sub_227F2B8D4();
  if (os_log_type_enabled(v225, v226))
  {
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    aBlock = v228;
    *v227 = 136315138;
    v229 = DownloadResponse.description.getter();
    v230 = v224;
    v232 = v231;
    sub_227F1FE14(v230, type metadata accessor for DownloadResponse);
    v233 = sub_227ECAC40(v229, v232, &aBlock);

    *(v227 + 4) = v233;
    _os_log_impl(&dword_227EB2000, v225, v226, "Fetching updates: (%s", v227, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v228);
    MEMORY[0x22AAAD240](v228, -1, -1);
    MEMORY[0x22AAAD240](v227, -1, -1);
  }

  else
  {

    sub_227F1FE14(v224, type metadata accessor for DownloadResponse);
  }

  v234 = v427;
  v235 = v400;
  v236 = v384;
  v237 = v399;
  os_unfair_lock_lock(v399);
  v238 = (v403 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v403 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  v240 = v385;
  v241 = v408;
  sub_227EF34BC(v238 + *(v239 + 28), v235, &aBlock, v385);
  v242 = v411;
  if (v241)
  {
    os_unfair_lock_unlock(v238);
    os_unfair_lock_unlock(v237);
    sub_227EB8430(v234, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
    (*(v406 + 8))(v242, v407);
    return;
  }

  v409 = 0;
  os_unfair_lock_unlock(v238);
  os_unfair_lock_unlock(v237);
  v243 = v378;
  if ((*(v379 + 48))(v240, 1, v378) == 1)
  {
    sub_227EB8430(v240, &qword_27D80EB28, &qword_227F30440);
    v244 = 1;
    v245 = v416;
    v246 = v381;
  }

  else
  {
    v259 = v240 + *(v243 + 24);
    v245 = v416;
    v246 = v381;
    v381(v236, v259, v416);
    sub_227F1FE14(v240, type metadata accessor for Manifest);
    v244 = 0;
  }

  v260 = v404;
  v404(v236, v244, 1, v245);
  v261 = v376;
  v246(v376, v413 + v396, v245);
  v404 = v260;
  v260(v261, 0, 1, v245);
  v262 = *(v412 + 48);
  v263 = v372;
  sub_227EC2180(v236, v372, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v261, v263 + v262, &qword_27D80E310, &unk_227F2D990);
  v264 = v405;
  if (v405(v263, 1, v245) == 1)
  {
    sub_227EB8430(v261, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v236, &qword_27D80E310, &unk_227F2D990);
    v265 = v264(v263 + v262, 1, v245);
    v266 = v406;
    v267 = v413;
    v268 = v400;
    if (v265 == 1)
    {
      sub_227EB8430(v263, &qword_27D80E310, &unk_227F2D990);
      goto LABEL_72;
    }

LABEL_66:
    sub_227EB8430(v263, &qword_27D80E4F8, &qword_227F2DE80);
    v270 = 1;
    goto LABEL_76;
  }

  v269 = v362;
  sub_227EC2180(v263, v362, &qword_27D80E310, &unk_227F2D990);
  if (v264(v263 + v262, 1, v245) == 1)
  {
    sub_227EB8430(v376, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v236, &qword_27D80E310, &unk_227F2D990);
    (*(v418 + 8))(v269, v245);
    v266 = v406;
    v267 = v413;
    v268 = v400;
    goto LABEL_66;
  }

  v288 = v393;
  v380(v393, v263 + v262, v245);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v289 = sub_227F2B634();
  v290 = v269;
  v291 = *(v418 + 8);
  v291(v288, v245);
  sub_227EB8430(v376, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v236, &qword_27D80E310, &unk_227F2D990);
  v291(v290, v245);
  v268 = v400;
  sub_227EB8430(v263, &qword_27D80E310, &unk_227F2D990);
  v266 = v406;
  v267 = v413;
  if ((v289 & 1) == 0)
  {
LABEL_74:
    v270 = 1;
    goto LABEL_76;
  }

LABEL_72:
  v292 = v399;
  os_unfair_lock_lock(v399);
  v293 = v360;
  sub_227F246A0(v268 + *(v359 + 20), v360, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v292);
  v294 = v361;
  sub_227EC2180(v293, v361, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v293, type metadata accessor for ResourceInfo);
  if ((*(v397 + 48))(v294, 1, v398) == 1)
  {
    sub_227EB8430(v294, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_74;
  }

  v381(v377, v294, v416);
  sub_227F1FE14(v294, type metadata accessor for FileInfo);
  v270 = 0;
LABEL_76:
  v295 = v377;
  v404(v377, v270, 1, v416);
  v296 = v417;
  v297 = sub_227F28DB8(v417, v267 + v396, 2u, v295);
  v298 = sub_227F2B644();
  v299 = swift_allocObject();
  *(v299 + 16) = v297;
  v423 = sub_227EF99BC;
  v424 = v299;
  aBlock = MEMORY[0x277D85DD0];
  v420 = 1107296256;
  v421 = sub_227F1FCD8;
  v422 = &block_descriptor_1;
  v300 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v300);

  v301 = v373;
  sub_227F246A0(v296, v373, type metadata accessor for DownloadOutcome);
  v302 = swift_getEnumCaseMultiPayload();
  if (v302)
  {
    if (v302 == 1)
    {
      v303 = v358;
      sub_227F1FDAC(v301, v358, type metadata accessor for FileInfo);
      v304 = sub_227F2B024();
      v306 = v305;
      v307 = v399;
      os_unfair_lock_lock(v399);
      v308 = v357;
      v309 = v409;
      sub_227EF6E90(v268, v303, v403, v304, v306, &aBlock, v357);
      if (!v309)
      {
        (*(v418 + 8))(v308, v416);
      }

      os_unfair_lock_unlock(v307);
      sub_227F1FE14(v303, type metadata accessor for FileInfo);
      sub_227EB8430(v295, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
      (*(v266 + 8))(v411, v407);
    }

    else
    {
      v318 = v411;
      v319 = sub_227F2B304();
      v320 = sub_227F2B8E4();
      if (os_log_type_enabled(v319, v320))
      {
        v321 = swift_slowAlloc();
        *v321 = 0;
        _os_log_impl(&dword_227EB2000, v319, v320, "Received notModified download status for updates file, while modification checks are not supported for updates file.", v321, 2u);
        MEMORY[0x22AAAD240](v321, -1, -1);
      }

      sub_227EF9A28();
      swift_allocError();
      *v322 = 0xD000000000000037;
      v322[1] = 0x8000000227F346B0;
      swift_willThrow();
      sub_227EB8430(v295, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
      (*(v266 + 8))(v318, v407);
    }
  }

  else
  {
    v311 = *v301;
    v310 = *(v301 + 8);
    v312 = *(v301 + 16);
    v314 = *(v301 + 24);
    v313 = *(v301 + 32);
    v315 = v399;
    os_unfair_lock_lock(v399);
    aBlock = v311;
    v420 = v310;
    LOBYTE(v421) = v312;
    v422 = v314;
    v423 = v313;
    v316 = v409;
    sub_227EE2F04(&aBlock, (v403 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v403 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
    v317 = (v266 + 8);
    os_unfair_lock_unlock(v315);
    if (v316)
    {

      sub_227EB8430(v377, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
      (*v317)(v411, v407);
    }

    else
    {
      swift_willThrow();
      v323 = v311;
      sub_227EB8430(v377, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v427, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v415, &qword_27D80E310, &unk_227F2D990);
      (*v317)(v411, v407);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227F246A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F24708(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2B114() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Manifest(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_227ED03CC;

  return sub_227F173B8(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

unint64_t sub_227F248D8()
{
  result = qword_27D80F018;
  if (!qword_27D80F018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80F018);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227F24930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227F24988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_227F249D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_227F24A08()
{
  result = qword_27D80F1E0;
  if (!qword_27D80F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1E0);
  }

  return result;
}

unint64_t sub_227F24A5C()
{
  result = qword_27D80F1E8;
  if (!qword_27D80F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1E8);
  }

  return result;
}

unint64_t sub_227F24AB0()
{
  result = qword_27D80F1F0;
  if (!qword_27D80F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1F0);
  }

  return result;
}

unint64_t sub_227F24B04()
{
  result = qword_27D80F1F8;
  if (!qword_27D80F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F1F8);
  }

  return result;
}

unint64_t sub_227F24B58()
{
  result = qword_27D80F200;
  if (!qword_27D80F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F200);
  }

  return result;
}

unint64_t sub_227F24BAC()
{
  result = qword_27D80F208;
  if (!qword_27D80F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F208);
  }

  return result;
}

unint64_t sub_227F24C00()
{
  result = qword_27D80F210;
  if (!qword_27D80F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F210);
  }

  return result;
}

unint64_t sub_227F24CC8()
{
  result = qword_27D80F250;
  if (!qword_27D80F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F250);
  }

  return result;
}

unint64_t sub_227F24D20()
{
  result = qword_27D80F258;
  if (!qword_27D80F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F258);
  }

  return result;
}

unint64_t sub_227F24D78()
{
  result = qword_27D80F260;
  if (!qword_27D80F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F260);
  }

  return result;
}

unint64_t sub_227F24DD0()
{
  result = qword_27D80F268;
  if (!qword_27D80F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F268);
  }

  return result;
}

unint64_t sub_227F24E28()
{
  result = qword_27D80F270;
  if (!qword_27D80F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F270);
  }

  return result;
}

unint64_t sub_227F24E80()
{
  result = qword_27D80F278;
  if (!qword_27D80F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F278);
  }

  return result;
}

unint64_t sub_227F24ED8()
{
  result = qword_27D80F280;
  if (!qword_27D80F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F280);
  }

  return result;
}

unint64_t sub_227F24F30()
{
  result = qword_27D80F288;
  if (!qword_27D80F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F288);
  }

  return result;
}

unint64_t sub_227F24F88()
{
  result = qword_27D80F290;
  if (!qword_27D80F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F290);
  }

  return result;
}

unint64_t sub_227F24FE0()
{
  result = qword_27D80F298;
  if (!qword_27D80F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F298);
  }

  return result;
}

unint64_t sub_227F25038()
{
  result = qword_27D80F2A0;
  if (!qword_27D80F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2A0);
  }

  return result;
}

unint64_t sub_227F25090()
{
  result = qword_27D80F2A8;
  if (!qword_27D80F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2A8);
  }

  return result;
}

unint64_t sub_227F250E8()
{
  result = qword_27D80F2B0;
  if (!qword_27D80F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2B0);
  }

  return result;
}

unint64_t sub_227F25140()
{
  result = qword_27D80F2B8;
  if (!qword_27D80F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2B8);
  }

  return result;
}

unint64_t sub_227F25198()
{
  result = qword_27D80F2C0;
  if (!qword_27D80F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2C0);
  }

  return result;
}

unint64_t sub_227F251F0()
{
  result = qword_27D80F2C8;
  if (!qword_27D80F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2C8);
  }

  return result;
}

uint64_t sub_227F25260(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_227F252A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_227F2530C()
{
  result = qword_27D80F2D0;
  if (!qword_27D80F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2D0);
  }

  return result;
}

void sub_227F25360()
{
  dword_2813CE158 = 0;
  qword_2813CE168 = 0;
  unk_2813CE170 = 0;
  qword_2813CE160 = 0;
}

uint64_t sub_227F25378@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-1] - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  if (*a1)
  {
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    return sub_227F25778(v8, v9, v10);
  }

  v24 = a1[2];
  v22 = v9;
  v11 = sub_227F2B114();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for Settings(0);
  v12 = swift_allocObject();
  sub_227EC12E0(v7, v12 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL);
  v12[3] = 0xD000000000000024;
  v12[4] = 0x8000000227F339A0;
  v12[5] = 0x408C200000000000;
  v12[6] = 1024;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_227F2B644();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    sub_227ED3DB8(v7);
    v12[2] = v15;
    v23[3] = &type metadata for Clock;
    v23[4] = &protocol witness table for Clock;
    v16 = type metadata accessor for StorageHelper(0);
    type metadata accessor for PersistenceManager(0);
    swift_allocObject();

    sub_227EEF390(v17, v23, v16, &off_283B50228);
    if (v2)
    {

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    else
    {
      v19 = v18;
      type metadata accessor for ResourceManager();
      swift_allocObject();
      swift_retain_n();

      v20 = sub_227F20130(v12, v19, sub_227F257C4, v12);

      *a1 = v12;
      a1[1] = v19;
      a1[2] = v20;
      *a2 = v12;
      a2[1] = v19;
      a2[2] = v20;
    }

    v8 = 0;
    v9 = v22;
    v10 = v24;
    return sub_227F25778(v8, v9, v10);
  }

  result = sub_227F2BA74();
  __break(1u);
  return result;
}

void sub_227F256A8(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = objc_opt_self();
  v6 = sub_227F2B644();
  v7 = [v5 backgroundSessionConfigurationWithIdentifier_];

  [v7 setSessionSendsLaunchEvents_];
  v8 = [objc_opt_self() sessionWithConfiguration:v7 delegate:a1 delegateQueue:0];
  a3[3] = sub_227F257CC();
  a3[4] = &protocol witness table for NSURLSession;

  *a3 = v8;
}

uint64_t sub_227F25778(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_227F257CC()
{
  result = qword_2813CD540;
  if (!qword_2813CD540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813CD540);
  }

  return result;
}

uint64_t sub_227F25818()
{
  result = sub_227F2B644();
  qword_2813CD528 = result;
  return result;
}

id static NSNotificationName.rapidResourceDeliveryAvailabilityChangeNotification.getter()
{
  if (qword_2813CD520 != -1)
  {
    swift_once();
  }

  v1 = qword_2813CD528;

  return v1;
}

uint64_t RRDManifestState.hashValue.getter()
{
  v1 = *v0;
  sub_227F2BD14();
  MEMORY[0x22AAAC9F0](v1);
  return sub_227F2BD44();
}

void RRDState.init()(uint64_t a1@<X8>)
{
  if (qword_2813CDBA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE158);
  sub_227F25378(&qword_2813CE160, &v4);
  if (v1)
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    if (v4)
    {
      v3 = v5;
      *a1 = v4;
      *(a1 + 16) = v3;
    }

    else
    {
      sub_227F13468();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t RRDState.manifestState(for:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v4 = type metadata accessor for Manifest(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_227F2AFF4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for Configuration(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_227F2B114();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *(v2 + 16);
  v3[24] = v7;
  v3[25] = v8;

  return MEMORY[0x2822009F8](sub_227F25C5C, 0, 0);
}

uint64_t sub_227F25C5C()
{
  v65 = v0;
  if (qword_27D80DF20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 40);
  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_27D81B1C8);
  v63 = *(v2 + 16);
  v63(v1, v4, v3);
  v6 = sub_227F2B304();
  v7 = sub_227F2B8F4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 192);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64[0] = v62;
    *v12 = 136315138;
    sub_227F1FD64(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = sub_227F2BC24();
    v60 = v7;
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_227ECAC40(v13, v15, v64);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_227EB2000, v6, v60, "Updating configuration with: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x22AAAD240](v62, -1, -1);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v18 = *(v0 + 104);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);
  v63(*(v0 + 184), *(v0 + 40), *(v0 + 144));
  *(v0 + 16) = 0x6E6F736A2E647272;
  *(v0 + 24) = 0xE800000000000000;
  (*(v18 + 104))(v19, *MEMORY[0x277CC91D8], v20);
  sub_227EB84D8();
  sub_227F2B104();
  (*(v18 + 8))(v19, v20);
  sub_227F2AFD4();
  v21 = sub_227F2B124();
  v23 = v22;
  v61 = v16;
  sub_227F2AE24();
  swift_allocObject();
  sub_227F2AE14();
  sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration, &unk_227F2E29C);
  sub_227F2AE04();
  v24 = *(v0 + 176);
  v25 = *(v0 + 168);
  v26 = *(v0 + 144);
  v27 = *(v0 + 136);
  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = *(v0 + 88);
  sub_227EC15A8(v21, v23);

  v61(v25, v26);
  v61(v24, v26);
  v61(v57, v26);
  sub_227F26758(v58, v27, type metadata accessor for Configuration);

  sub_227F1A024(v27, v59);
  v32 = *(v0 + 80);
  v31 = *(v0 + 88);
  v34 = *(v0 + 48);
  v33 = *(v0 + 56);

  sub_227F266E8(v31, v32);
  v35 = (*(v33 + 48))(v32, 1, v34);
  v36 = *(v0 + 80);
  if (v35 == 1)
  {
    sub_227EB8430(v36, &qword_27D80EB28, &qword_227F30440);
    v37 = sub_227F2B304();
    v38 = sub_227F2B8F4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_227EB2000, v37, v38, "Updating manifest state to: unknown", v39, 2u);
      MEMORY[0x22AAAD240](v39, -1, -1);
    }

    v40 = *(v0 + 136);
    v41 = *(v0 + 88);

    sub_227EB8430(v41, &qword_27D80EB28, &qword_227F30440);
    sub_227F267C0(v40, type metadata accessor for Configuration);
    v28 = 0;
  }

  else
  {
    v43 = *(v0 + 64);
    v42 = *(v0 + 72);
    sub_227F26758(v36, v42, type metadata accessor for Manifest);
    sub_227ED68D0(v42, v43);
    v44 = sub_227F2B304();
    v45 = sub_227F2B8F4();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 136);
    v48 = *(v0 + 88);
    v49 = *(v0 + 64);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v64[0] = v51;
      *v50 = 136315138;
      if (*(v49 + 16))
      {
        v52 = 0x6574726F70707573;
      }

      else
      {
        v52 = 0x726F707075736E75;
      }

      if (*(v49 + 16))
      {
        v53 = 0xE900000000000064;
      }

      else
      {
        v53 = 0xEB00000000646574;
      }

      sub_227F267C0(v49, type metadata accessor for Manifest);
      v54 = sub_227ECAC40(v52, v53, v64);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_227EB2000, v44, v45, "Updating manifest state to: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x22AAAD240](v51, -1, -1);
      MEMORY[0x22AAAD240](v50, -1, -1);
    }

    else
    {

      sub_227F267C0(v49, type metadata accessor for Manifest);
    }

    sub_227EB8430(v48, &qword_27D80EB28, &qword_227F30440);
    sub_227F267C0(v47, type metadata accessor for Configuration);
    v55 = *(v0 + 72);
    v56 = *(v55 + 16);
    sub_227F267C0(v55, type metadata accessor for Manifest);
    if (v56)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }
  }

  **(v0 + 32) = v28;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_227F266E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F26758(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F267C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_227F26824()
{
  result = qword_27D80F2D8;
  if (!qword_27D80F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F2D8);
  }

  return result;
}

int64_t sub_227F26898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v94[-v11];
  v13 = sub_227F2B234();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v94[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v94[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  if (a3)
  {

    return sub_227F2739C(a2, a3, a4);
  }

  v101 = &v94[-v25];
  v102 = v26;
  v103 = a4;
  sub_227F27D58(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_227EB8430(v12, &unk_27D80E3B0, &unk_227F2DB00);
LABEL_23:
    v69 = *(v14 + 56);
    v68 = v103;
    return v69(v68, 1, 1, v13);
  }

  v28 = v101;
  (*(v14 + 32))(v101, v12, v13);
  v29 = v102;
  _s21RapidResourceDelivery5ClockV3now10Foundation4DateVvg_0();
  sub_227F27DC8(&qword_27D80E908, MEMORY[0x277CC9590]);
  if ((sub_227F2B624() & 1) == 0)
  {
    if (qword_27D80DF58 != -1)
    {
      swift_once();
    }

    v47 = sub_227F2B334();
    __swift_project_value_buffer(v47, qword_27D80F2E0);
    v48 = *(v14 + 16);
    v48(v20, v28, v13);
    v49 = v102;
    v48(v17, v102, v13);
    v50 = sub_227F2B304();
    v51 = sub_227F2B8E4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v104 = v100;
      *v52 = 136315394;
      sub_227F27DC8(&unk_27D80E010, MEMORY[0x277CC95B8]);
      v99 = v50;
      LODWORD(v98) = v51;
      v53 = sub_227F2BC24();
      v55 = v54;
      v56 = v20;
      v57 = *(v14 + 8);
      v57(v56, v13);
      v58 = sub_227ECAC40(v53, v55, &v104);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2080;
      v59 = sub_227F2BC24();
      v61 = v60;
      v57(v17, v13);
      v62 = sub_227ECAC40(v59, v61, &v104);

      *(v52 + 14) = v62;
      v63 = v99;
      _os_log_impl(&dword_227EB2000, v99, v98, "lastSuccess %s is in future (now: %s), treating as no previous success", v52, 0x16u);
      v64 = v100;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v64, -1, -1);
      MEMORY[0x22AAAD240](v52, -1, -1);

      v57(v102, v13);
      v57(v28, v13);
    }

    else
    {

      v67 = *(v14 + 8);
      v67(v17, v13);
      v67(v20, v13);
      v67(v49, v13);
      v67(v28, v13);
    }

    v68 = v103;
    v69 = *(v14 + 56);
    return v69(v68, 1, 1, v13);
  }

  sub_227F2B1D4();
  sub_227F2B224();
  if (v30 <= 0.0)
  {
    v65 = *(v14 + 8);
    v65(v23, v13);
    v66 = v29;
LABEL_22:
    v65(v66, v13);
    v65(v28, v13);
    goto LABEL_23;
  }

  v31 = v30;
  if (v30 / a5 <= 0.1)
  {
    v65 = *(v14 + 8);
    v65(v23, v13);
    v66 = v102;
    goto LABEL_22;
  }

  v32 = sub_227F2BDE4();
  v33 = sub_227F2BDE4();
  v99 = v34;
  v100 = v33;
  if (qword_27D80DF58 != -1)
  {
    swift_once();
  }

  v35 = sub_227F2B334();
  v98 = __swift_project_value_buffer(v35, qword_27D80F2E0);
  v36 = sub_227F2B304();
  v37 = sub_227F2B8D4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v104 = v96;
    *v38 = 136315650;
    v39 = sub_227F2BDB4();
    v95 = v37;
    v41 = sub_227ECAC40(v39, v40, &v104);
    v97 = v32;
    v42 = v41;

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = sub_227F2BDB4();
    v45 = sub_227ECAC40(v43, v44, &v104);

    *(v38 + 14) = v45;
    *(v38 + 22) = 2048;
    *(v38 + 24) = v31;
    _os_log_impl(&dword_227EB2000, v36, v95, "low: %s, high: %s, remaining: %f", v38, 0x20u);
    v46 = v96;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v46, -1, -1);
    MEMORY[0x22AAAD240](v38, -1, -1);
  }

  sub_227F2BDA4();
  sub_227F2BDA4();
  sub_227F2BDE4();
  result = sub_227F2BDD4();
  if (result)
  {
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v70 = sub_227F2BDA4();
  v72 = v71;
  v73 = sub_227F2BDA4();
  v75 = v74;
  result = sub_227F2BDA4();
  if (v73 >= result)
  {
    v73 = 0;
  }

  v77 = result - v73;
  if (result < v73)
  {
    goto LABEL_56;
  }

  v78 = v76;
  if (v77 == -1)
  {
    v104 = 0;
    result = MEMORY[0x22AAAD250](&v104, 8);
    v79 = v104;
  }

  else
  {
    result = sub_227F13A80(v77 + 1);
    v79 = result + v73;
  }

  if (__OFADD__(v70, v79))
  {
    goto LABEL_57;
  }

  if (v79)
  {
    if (v75 >= v78)
    {
      v75 = 0;
    }

    v80 = v78 - v75;
    if (v78 >= v75)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  if (v78 <= v75)
  {
    v81 = v75;
  }

  else
  {
    v81 = v78;
  }

  if (v78 >= v75)
  {
    v82 = v75;
  }

  else
  {
    v82 = v78;
  }

  if (v82 >= v81)
  {
    v75 = 0;
  }

  else
  {
    v75 = v82;
  }

  v83 = v81 < v75;
  v80 = v81 - v75;
  if (v83)
  {
    goto LABEL_59;
  }

LABEL_48:
  if (v80 == -1)
  {
    v104 = 0;
    result = MEMORY[0x22AAAD250](&v104, 8);
    v84 = v104;
  }

  else
  {
    result = sub_227F13A80(v80 + 1);
    v84 = result + v75;
  }

  if (__OFADD__(v72, v84))
  {
    goto LABEL_58;
  }

  sub_227F2BDC4();
  v85 = sub_227F2BDA4();
  sub_227F2BDA4();
  v87 = v86 / 1.0e18 + v85;
  v88 = sub_227F2B304();
  v89 = sub_227F2B8D4();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    *(v90 + 4) = v87;
    _os_log_impl(&dword_227EB2000, v88, v89, "jittered scheduleInterval: %f", v90, 0xCu);
    MEMORY[0x22AAAD240](v90, -1, -1);
  }

  v92 = v102;
  v91 = v103;
  sub_227F2B1D4();
  v93 = *(v14 + 8);
  v93(v23, v13);
  v93(v92, v13);
  v93(v101, v13);
  return (*(v14 + 56))(v91, 0, 1, v13);
}

uint64_t sub_227F272D4()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_27D80F2E0);
  v1 = __swift_project_value_buffer(v0, qword_27D80F2E0);
  if (qword_27D80DF28 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D81B1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_227F2739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_227F2B234();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F27D58(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_227EB8430(v8, &unk_27D80E3B0, &unk_227F2DB00);
    if (qword_27D80DF58 == -1)
    {
LABEL_3:
      v13 = sub_227F2B334();
      __swift_project_value_buffer(v13, qword_27D80F2E0);
      v14 = sub_227F2B304();
      v15 = sub_227F2B8E4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = a2;
        _os_log_impl(&dword_227EB2000, v14, v15, "Unexpectedly no lastAttempt provided despite %ld failures", v16, 0xCu);
        MEMORY[0x22AAAD240](v16, -1, -1);
      }

      v17 = 1;
      return (*(v10 + 56))(a3, v17, 1, v9);
    }

LABEL_49:
    swift_once();
    goto LABEL_3;
  }

  (*(v10 + 32))(v12, v8, v9);
  v18 = a2 * a2;
  if ((a2 * a2) >> 64 != (a2 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_51;
  }

  v19 = 60 * v18;
  if ((v18 * 60) >> 64 != (60 * v18) >> 63)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v20 = v19;
  if (v19 > 14400.0)
  {
    v20 = 14400.0;
  }

  v21 = v20 * 0.3;
  if (COERCE__INT64(fabs(v20 * 0.3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_227F2BDE4();
  if (sub_227F2BDD4())
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v49 = v9;
  a2 = sub_227F2BDA4();
  v23 = v22;
  v9 = sub_227F2BDA4();
  v25 = v24;
  v26 = sub_227F2BDA4();
  if (v9 >= v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v9;
  }

  v29 = v26 - v28;
  if (v26 < v28)
  {
    goto LABEL_56;
  }

  v30 = v27;
  if (v29 == -1)
  {
    goto LABEL_26;
  }

  result = sub_227F13A80(v29 + 1);
  v32 = result + v28;
  v33 = __OFADD__(a2, result + v28);
  a2 += result + v28;
  if (v33)
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    while (v32)
    {
      if (v25 >= v30)
      {
        v34 = 0;
      }

      else
      {
        v34 = v25;
      }

      v35 = v30 - v34;
      if (v30 >= v34)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_26:
      v50 = 0;
      result = MEMORY[0x22AAAD250](&v50, 8);
      v32 = v50;
      v33 = __OFADD__(a2, v50);
      a2 += v50;
      if (v33)
      {
        goto LABEL_28;
      }
    }
  }

  if (v30 <= v25)
  {
    v36 = v25;
  }

  else
  {
    v36 = v30;
  }

  if (v30 >= v25)
  {
    v37 = v25;
  }

  else
  {
    v37 = v30;
  }

  if (v37 >= v36)
  {
    v34 = 0;
  }

  else
  {
    v34 = v37;
  }

  v38 = v36 < v34;
  v35 = v36 - v34;
  if (!v38)
  {
LABEL_39:
    if (v35 == -1)
    {
      v50 = 0;
      MEMORY[0x22AAAD250](&v50, 8);
      if (!__OFADD__(v23, v50))
      {
LABEL_41:
        sub_227F2BDC4();
        if (qword_27D80DF58 == -1)
        {
LABEL_42:
          v39 = sub_227F2B334();
          __swift_project_value_buffer(v39, qword_27D80F2E0);
          v40 = sub_227F2B304();
          v41 = sub_227F2B8D4();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v50 = v43;
            *v42 = 136315138;
            v44 = sub_227F2BDB4();
            v48 = v10;
            v46 = sub_227ECAC40(v44, v45, &v50);
            v10 = v48;

            *(v42 + 4) = v46;
            _os_log_impl(&dword_227EB2000, v40, v41, "jittered retry interval: %s", v42, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v43);
            MEMORY[0x22AAAD240](v43, -1, -1);
            MEMORY[0x22AAAD240](v42, -1, -1);
          }

          sub_227F2BDA4();
          sub_227F2BDA4();
          sub_227F2B1D4();
          v9 = v49;
          (*(v10 + 8))(v12, v49);
          v17 = 0;
          return (*(v10 + 56))(a3, v17, 1, v9);
        }

LABEL_57:
        swift_once();
        goto LABEL_42;
      }
    }

    else if (!__OFADD__(v23, sub_227F13A80(v35 + 1) + v34))
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t _s21RapidResourceDelivery8ScheduleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Schedule(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D80F308, &qword_227F334D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_227EC1CF8(a1, &v20 - v13);
  sub_227EC1CF8(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_227EC1CF8(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = sub_227F2B1F4();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_227F27CFC(v14);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_227EB8430(v14, qword_27D80F308, &qword_227F334D8);
    v17 = 0;
    return v17 & 1;
  }

  sub_227F27CFC(v14);
  v17 = 1;
  return v17 & 1;
}

uint64_t type metadata accessor for Schedule(uint64_t a1)
{
  result = qword_27D80F2F8;
  if (!qword_27D80F2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227F27CA4(uint64_t a1)
{
  v1 = sub_227F2B234();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_227F27CFC(uint64_t a1)
{
  v2 = type metadata accessor for Schedule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F27D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F27DC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227F2B234();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227F27E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227F27E6C(void *a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_227F2B164();
    v7 = v6;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_227F2BD84();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_227F28254();
    sub_227F2BC94();
    sub_227EC15A8(v5, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = v4;
    sub_227F2AFC4();

    return swift_willThrow();
  }
}

char *sub_227F27FC4(void *a1, uint64_t a2)
{
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F2BD64();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_227F28200();
    sub_227F2BC84();
    sub_227EB7BD0(0, &qword_27D80F3F8, 0x277CCAAC8);
    v5 = sub_227F2B904();
    v4 = v5;
    if (v5)
    {
      sub_227EC15A8(v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v4;
    }

    v4 = "yChangeNotification";
    sub_227F2B9E4();
    swift_allocError();
    sub_227F2B9C4();
    swift_willThrow();
    sub_227EC15A8(v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

char *sub_227F281A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_227F27FC4(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_227F28200()
{
  result = qword_27D80F3F0;
  if (!qword_27D80F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F3F0);
  }

  return result;
}

unint64_t sub_227F28254()
{
  result = qword_27D80F400;
  if (!qword_27D80F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F400);
  }

  return result;
}

uint64_t sub_227F282D8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Configuration(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B6B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 16);
  v12 = sub_227F2B644();
  v13 = [v11 stringForKey_];

  if (v13)
  {
    v32 = a1;
    v14 = sub_227F2B674();
    v16 = v15;

    sub_227F2B6A4();
    v31 = sub_227F2B684();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    if (v18 >> 60 == 15)
    {

      v19 = 1;
      a1 = v32;
    }

    else
    {
      if (qword_2813CD580 != -1)
      {
        swift_once();
      }

      v20 = sub_227F2B334();
      v21 = __swift_project_value_buffer(v20, qword_2813CE088);

      v22 = sub_227F2B304();
      v23 = sub_227F2B8D4();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v30[1] = v21;
        v25 = v24;
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        v27 = sub_227ECAC40(v14, v16, &v33);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_227EB2000, v22, v23, "Using configuration override: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x22AAAD240](v26, -1, -1);
        MEMORY[0x22AAAD240](v25, -1, -1);
      }

      else
      {
      }

      v28 = v31;
      a1 = v32;
      sub_227F2AE24();
      swift_allocObject();
      sub_227F2AE14();
      sub_227F28970();
      sub_227F2AE04();
      sub_227EC1650(v28, v18);

      sub_227ED3EC8(v6, a1);
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
  }

  return (*(v4 + 56))(a1, v19, 1, v3);
}

uint64_t sub_227F28788()
{

  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, &qword_27D80E310, &unk_227F2D990);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for Settings(uint64_t a1)
{
  result = qword_2813CD698;
  if (!qword_2813CD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227F28860(uint64_t a1)
{
  sub_227F28918(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_227F28918(uint64_t a1)
{
  if (!qword_2813CE038)
  {
    sub_227F2B114();
    v1 = sub_227F2B924();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CE038);
    }
  }
}

unint64_t sub_227F28970()
{
  result = qword_27D80EBA8;
  if (!qword_27D80EBA8)
  {
    type metadata accessor for Configuration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBA8);
  }

  return result;
}

uint64_t sub_227F289E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E378, &qword_227F2FE20);
  result = sub_227F2BD54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227F28A74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = 8;
  if (v3 <= 8)
  {
    v3 = 8;
  }

  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  v5 = (1u >> (8 * v4)) ^ 0xFD;
  if (v4 > 3)
  {
    v5 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_227F28BC0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = (1u >> (8 * v6)) ^ 0xFD;
  if (v6 > 3)
  {
    v7 = 253;
  }

  v8 = v6 + 1;
  if (v7 >= a3)
  {
    v9 = 0;
    if (v7 < a2)
    {
      goto LABEL_20;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        a1[v6] = -a2;
        return;
      }

      *&a1[v8] = 0;
    }

    else if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  v9 = 1;
  if (v8 <= 3)
  {
    v10 = ((~(-1 << (8 * v8)) + a3 - v7) >> (8 * v8)) + 1;
    v11 = HIWORD(v10);
    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v10 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11)
    {
      v9 = 4;
    }

    else
    {
      v9 = v13;
    }
  }

  if (v7 >= a2)
  {
    goto LABEL_24;
  }

LABEL_20:
  v14 = ~v7 + a2;
  if (v8 >= 4)
  {
    bzero(a1, v8);
    *a1 = v14;
    v15 = 1;
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v15 = (v14 >> (8 * v8)) + 1;
  if (v6 == -1)
  {
LABEL_40:
    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v16 = v14 & ~(-1 << (8 * v8));
  bzero(a1, v8);
  if (v8 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_40;
  }

  if (v8 == 2)
  {
    *a1 = v16;
    if (v9 > 1)
    {
LABEL_44:
      if (v9 == 2)
      {
        *&a1[v8] = v15;
      }

      else
      {
        *&a1[v8] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v9 > 1)
    {
      goto LABEL_44;
    }
  }

LABEL_41:
  if (v9)
  {
    a1[v8] = v15;
  }
}

unint64_t sub_227F28DB8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v74 = a4;
  v76 = a1;
  v6 = sub_227F2AED4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FileInfo(0);
  MEMORY[0x28223BE20](v69);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DownloadOutcome(0);
  MEMORY[0x28223BE20](v75);
  v10 = (&v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v14 = sub_227F2B114();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F4F0, &qword_227F33690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227F2E510;
  *(inited + 32) = 0x656372756F736572;
  *(inited + 40) = 0xE800000000000000;
  v70 = a3;
  *(inited + 48) = sub_227F2B934();
  *(inited + 56) = 7107189;
  *(inited + 64) = 0xE300000000000000;
  v78 = a2;
  sub_227F2B004();
  v21 = sub_227F2B644();

  *(inited + 72) = v21;
  v22 = sub_227ECCC60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F4F8, &qword_227F33698);
  swift_arrayDestroy();
  sub_227EC12E0(v74, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v19, v13, v14);
    sub_227F2B004();
    v29 = sub_227F2B644();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v22;
    sub_227ECC070(v29, 0x656372756F736572, 0xEF6E6F6973726556, isUniquelyReferenced_nonNull_native);
    v22 = v79;
    (*(v15 + 8))(v19, v14);
    goto LABEL_8;
  }

  sub_227ED3DB8(v13);
  if (a3 != 2)
  {
LABEL_8:
    v24 = v76;
    goto LABEL_9;
  }

  v23 = type metadata accessor for DownloadResponse(0);
  v24 = v76;
  v25 = *(v76 + *(v23 + 24));
  if (v25)
  {
    if (*(v25 + 16))
    {
      sub_227ECA808(0x2D746E65746E6F43, 0xEB0000000035444DLL);
      if (v26)
      {

        v27 = sub_227F2B644();

        v28 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v22;
        sub_227ECC070(v27, 0x656372756F736572, 0xEF6E6F6973726556, v28);
        v22 = v79;
      }
    }
  }

LABEL_9:
  sub_227F296CC(v24, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v68;
      sub_227ECDCD8(v10, v68);
      sub_227F29730(v32);
    }
  }

  else
  {
    v33 = *(v10 + 16);

    if (v33)
    {
      v35 = v77;
      v34 = v78;
      goto LABEL_15;
    }
  }

  v35 = v77;
  v34 = v78;
  v36 = sub_227F2B894();
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v79 = v22;
  sub_227ECC070(v36, 0x6F43737574617473, 0xEA00000000006564, v37);
  v22 = v79;
LABEL_15:
  v38 = *(v24 + *(type metadata accessor for DownloadResponse(0) + 20));
  if (v38)
  {
    v39 = [v38 taskInterval];
    v40 = v71;
    sub_227F2AEB4();

    sub_227F2AEC4();
    (*(v72 + 8))(v40, v73);
    v41 = sub_227F2B884();
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v22;
    sub_227ECC070(v41, 0x65746E496B736174, 0xEC0000006C617672, v42);
    v22 = v79;
  }

  if (qword_27D80DF40 != -1)
  {
    swift_once();
  }

  v43 = sub_227F2B334();
  __swift_project_value_buffer(v43, qword_27D81B210);
  (*(v15 + 16))(v35, v34, v14);

  v44 = sub_227F2B304();
  v45 = sub_227F2B8D4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v79 = v48;
    *v46 = 134219010;
    *(v46 + 4) = v70;
    *(v46 + 12) = 2080;
    v49 = sub_227F2B004();
    v50 = v35;
    v52 = v51;
    (*(v15 + 8))(v50, v14);
    v53 = sub_227ECAC40(v49, v52, &v79);

    *(v46 + 14) = v53;
    *(v46 + 22) = 2112;
    if (*(v22 + 16) && (v54 = sub_227ECA808(0x656372756F736572, 0xEF6E6F6973726556), (v55 & 1) != 0))
    {
      v56 = *(*(v22 + 56) + 8 * v54);
      *(v46 + 24) = v56;
      v57 = v56;
    }

    else
    {
      v56 = 0;
      *(v46 + 24) = 0;
    }

    *v47 = v56;
    *(v46 + 32) = 2112;
    if (*(v22 + 16) && (v58 = sub_227ECA808(0x6F43737574617473, 0xEA00000000006564), (v59 & 1) != 0))
    {
      v60 = *(*(v22 + 56) + 8 * v58);
      *(v46 + 34) = v60;
      v61 = v60;
    }

    else
    {
      v60 = 0;
      *(v46 + 34) = 0;
    }

    v47[1] = v60;
    *(v46 + 42) = 2112;
    if (*(v22 + 16) && (v62 = sub_227ECA808(0x65746E496B736174, 0xEC0000006C617672), (v63 & 1) != 0))
    {
      v64 = *(*(v22 + 56) + 8 * v62);
      *(v46 + 44) = v64;
      v65 = v64;
    }

    else
    {
      v64 = 0;
      *(v46 + 44) = 0;
    }

    v47[2] = v64;
    _os_log_impl(&dword_227EB2000, v44, v45, "reportFetchMetrics: %lu, url: %s, resourceVersion: %@, statusCode: %@, taskInterval: %@", v46, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4A0, &qword_227F2DE40);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x22AAAD240](v48, -1, -1);
    MEMORY[0x22AAAD240](v46, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v35, v14);
  }

  return v22;
}

uint64_t sub_227F296CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadOutcome(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F29730(uint64_t a1)
{
  v2 = type metadata accessor for FileInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F297B0()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    sub_227F2A374();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v0 + 2;
    *(v3 + 24) = v1;

    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_227F29910;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227F29910()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_227F29A3C, v1, 0);
}

uint64_t sub_227F29A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F29A9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_227F2A038(0, v10[2] + 1, 1, v10, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_227F2A038((v12 > 1), v13 + 1, 1, v10, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a3 + 112) = *a2;
}

uint64_t sub_227F29CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = *(v0 + 112);
  if (!v6)
  {
    goto LABEL_12;
  }

  if (v6[2])
  {
    (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
    v7 = v6[2];
    if (v7)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v6;
      if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > v6[3] >> 1)
      {
        v6 = sub_227F2A038(isUniquelyReferenced_nonNull_native, v7, 1, v6, &qword_27D80F508, &qword_227F33728, &qword_27D80F500, &qword_227F33720);
        v11 = v6;
      }

      sub_227F2A220(0, 1, 0);
      *(v1 + 112) = v6;

      sub_227F2B7E4();
      return (*(v3 + 8))(v5, v2);
    }

    __break(1u);
LABEL_12:
    result = sub_227F2BA74();
    __break(1u);
    return result;
  }

  *(v0 + 112) = 0;
}

uint64_t sub_227F29ECC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227F29F28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227F29F78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_227F29FCC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_227F29FE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void *sub_227F2A038(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

unint64_t sub_227F2A220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F500, &qword_227F33720);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_227F2A374()
{
  result = qword_27D80F510;
  if (!qword_27D80F510)
  {
    type metadata accessor for TokenBucket();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F510);
  }

  return result;
}

uint64_t sub_227F2A3D0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v16[2] = *MEMORY[0x277D85DE8];
  v1 = sub_227F2AFF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_227F2B114();
  v5 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_227F2B044();
  v16[0] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v10)
  {
    v11 = v16[0];
    sub_227F2B064();
    v16[0] = sub_227F2B024();
    v16[1] = v12;
    (*(v2 + 104))(v4, *MEMORY[0x277CC91C0], v1);
    sub_227EB84D8();
    sub_227F2B104();
    (*(v2 + 8))(v4, v1);

    return (*(v5 + 8))(v7, v15[0]);
  }

  else
  {
    v14 = v16[0];
    sub_227F2AFC4();

    return swift_willThrow();
  }
}

void sub_227F2A660()
{
  v2 = sub_227F2AFA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_227F2B054();
  if (v1)
  {
  }

  else if (v10)
  {
    (*(v7 + 16))(v9, v0, v6);
    sub_227F2AF94();
    sub_227F2AF64();
    sub_227F2B034();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_227F2A850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227F2C980;
  v7 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v8 = v7;
  sub_227F2AA7C(inited);
  swift_setDeallocating();
  sub_227F2AC70(inited + 32);
  sub_227F2B014();

  v9 = sub_227F2AFA4();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_227F2ACCC(v5, v3);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_227F2AD3C(v5);
    sub_227F2AD3C(v3);
    return 0;
  }

  else
  {
    v12 = sub_227F2AF84();
    sub_227F2AD3C(v5);
    (*(v10 + 8))(v3, v9);
    return v12;
  }
}

uint64_t sub_227F2AA7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80F520, &qword_227F33738);
    v3 = sub_227F2B984();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_227F2B674();
      sub_227F2BD14();
      v27 = v7;
      sub_227F2B704();
      v8 = sub_227F2BD44();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_227F2B674();
        v18 = v17;
        if (v16 == sub_227F2B674() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_227F2BC64();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_227F2AC70(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227F2ACCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227F2AD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF0, &unk_227F2C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}