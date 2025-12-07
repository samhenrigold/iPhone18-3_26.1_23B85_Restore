uint64_t sub_22B30C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_22B36052C();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B30C4DC, v3, 0);
}

uint64_t sub_22B30C4DC()
{
  v1 = v0[17];
  v2 = *(v1 + 112);
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[16];
    v4 = *(v1 + 120);
    v0[22] = v4;

    v5 = v4;
    v6 = [v3 recordID];
    v7 = [v6 zoneID];

    v8 = [v7 zoneName];
    v9 = sub_22B36084C();
    v11 = v10;

    v0[23] = v11;
    v12 = sub_22B207EFC();
    v13 = [v12 newBackgroundContext];
    v0[24] = v13;
    v14 = sub_22B36081C();
    [v13 setTransactionAuthor_];

    [v13 setMergePolicy_];
    [v13 setUndoManager_];
    [v13 setShouldRefreshAfterSave_];
    [v13 setStalenessInterval_];
    [v13 setShouldDeleteInaccessibleFaults_];

    v15 = swift_task_alloc();
    v0[25] = v15;
    *v15 = v0;
    v15[1] = sub_22B30C888;
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[14];

    return sub_22B308060(v18, v13, v9, v11, v16, v17, v2, v5);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = v0[19];
    v20 = v0[20];
    v22 = v0[18];
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox Bridge] failed to get coredata model instance", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];

    (*(v28 + 8))(v27, v29);
    sub_22B134CDC();
    swift_allocError();
    *v30 = 13;
    swift_willThrow();

    v31 = v0[1];

    return v31(0);
  }
}

uint64_t sub_22B30C888(char a1)
{
  v3 = *v2;
  *(v3 + 104) = v1;
  *(v3 + 96) = a1;
  *(v3 + 88) = v2;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = *(v3 + 136);
    v5 = sub_22B30CBA4;
  }

  else
  {
    v6 = *(v3 + 136);

    v5 = sub_22B30C9BC;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B30C9BC()
{
  v1 = *(v0[17] + 128);
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[22];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_22B1451F0;
    *(v5 + 24) = v4;
    v0[6] = sub_22B128240;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_35;
    v6 = _Block_copy(v0 + 2);
    v7 = v1;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = v0[22];

LABEL_5:
  v10 = *(v0 + 96);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_22B30CBA4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22B30CC34(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22B30CCEC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_22B35D95C();
      swift_allocObject();
      sub_22B35D92C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22B35DC9C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22B30CD8C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22B35D95C();
  swift_allocObject();
  result = sub_22B35D90C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22B35DC9C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22B30CE08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22B35D95C();
  swift_allocObject();
  result = sub_22B35D90C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22B30CEE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  v3 = v1[3];
  v11 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B2FF148(a1, v11, v3, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for CDIntervalBlocks(uint64_t a1)
{
  result = qword_27D8BADD8;
  if (!qword_27D8BADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B30D114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B30D184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDIntervalBlocks(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B30D1E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B30D248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_22B30D2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22B3073FC(sub_22B30D320, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22B30D340(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA0A0, &qword_22B362BD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22B30D3B8(uint64_t a1)
{
  sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    sub_22B35FEFC();
    if (v2 <= 0x3F)
    {
      sub_22B35FF1C();
      if (v3 <= 0x3F)
      {
        sub_22B35FEDC();
        if (v5 <= 0x3F)
        {
          sub_22B30D4BC(319, v4);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22B30D4BC(uint64_t a1, __n128 a2)
{
  if (!qword_27D8BADE8)
  {
    sub_22B35FEBC();
    v2 = sub_22B360AAC();
    if (!v3)
    {
      atomic_store(v2, &qword_27D8BADE8);
    }
  }
}

void sub_22B30D5D0(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v132 = a3;
  v137 = a1;
  v144 = *MEMORY[0x277D85DE8];
  v4 = sub_22B36052C();
  v135 = *(v4 - 8);
  v136 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v128[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v128[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v128[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v128[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v128[-v17];
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v128[-v21];
  v134 = a2;
  v23 = [a2 entitlements];
  if (!v23)
  {
    goto LABEL_8;
  }

  v24 = v23;
  v25 = sub_22B3606EC();

  v138 = 0xD000000000000016;
  v139 = 0x800000022B36E2C0;
  sub_22B36110C();
  if (!*(v25 + 16) || (v26 = sub_22B33B248(v141), (v27 & 1) == 0))
  {

    sub_22B1B0560(v141);
LABEL_8:
    v142 = 0u;
    v143 = 0u;
    goto LABEL_9;
  }

  sub_22B170C58(*(v25 + 56) + 32 * v26, &v142);
  sub_22B1B0560(v141);

  if (!*(&v143 + 1))
  {
LABEL_9:
    sub_22B30EF6C(&v142);
    v29 = v137;
    goto LABEL_10;
  }

  v28 = swift_dynamicCast();
  v29 = v137;
  if (v28)
  {
    v30 = v141[0];
    v31 = v141[1];
    goto LABEL_11;
  }

LABEL_10:
  v31 = 0xEE00444920707041;
  v30 = 0x20676E697373694DLL;
LABEL_11:
  v131 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v29;
  }

  v34 = [v29 requestType];
  if (v34 > 4)
  {
    if (v34 == 5)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v61 = v136;
      v62 = __swift_project_value_buffer(v136, qword_28140BD10);
      swift_beginAccess();
      v63 = v135;
      (*(v135 + 16))(v15, v62, v61);
      v64 = v32;

      v65 = sub_22B36050C();
      v66 = sub_22B360CFC();

      if (os_log_type_enabled(v65, v66))
      {
        v129 = v66;
        v67 = 0xEE00797469746E45;
        v68 = 0x206E776F6E6B6E55;
        v69 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v142 = v130;
        *v69 = 136315394;
        v70 = sub_22B1A7B20(v131, v31, &v142);

        *(v69 + 4) = v70;
        *(v69 + 12) = 2080;
        if (v32)
        {
          v71 = [v64 entityName];
          v46 = v134;
          if (v71)
          {
            v72 = v71;
            v68 = sub_22B36084C();
            v67 = v73;
          }
        }

        else
        {
          v46 = v134;
        }

        v111 = sub_22B1A7B20(v68, v67, &v142);

        *(v69 + 14) = v111;
        _os_log_impl(&dword_22B116000, v65, v129, "[CoreDataServerHandlingPolicy] Received insert request from %s for %s", v69, 0x16u);
        v112 = v130;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v112, -1, -1);
        MEMORY[0x23188F650](v69, -1, -1);

        (*(v135 + 8))(v15, v136);
        goto LABEL_79;
      }

      (*(v63 + 8))(v15, v61);
      goto LABEL_66;
    }

    if (v34 == 6)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v74 = v136;
      v75 = __swift_project_value_buffer(v136, qword_28140BD10);
      swift_beginAccess();
      v76 = v135;
      (*(v135 + 16))(v12, v75, v74);
      v77 = v32;

      v78 = sub_22B36050C();
      v79 = sub_22B360CFC();

      if (os_log_type_enabled(v78, v79))
      {
        v129 = v79;
        v80 = 0xEE00797469746E45;
        v81 = 0x206E776F6E6B6E55;
        v82 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v142 = v130;
        *v82 = 136315394;
        v83 = sub_22B1A7B20(v131, v31, &v142);

        *(v82 + 4) = v83;
        *(v82 + 12) = 2080;
        if (v32)
        {
          v84 = [v77 entityName];
          v46 = v134;
          if (v84)
          {
            v85 = v84;
            v81 = sub_22B36084C();
            v80 = v86;
          }
        }

        else
        {
          v46 = v134;
        }

        v113 = sub_22B1A7B20(v81, v80, &v142);

        *(v82 + 14) = v113;
        _os_log_impl(&dword_22B116000, v78, v129, "[CoreDataServerHandlingPolicy] Received update request from %s for %s", v82, 0x16u);
        v114 = v130;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v114, -1, -1);
        MEMORY[0x23188F650](v82, -1, -1);

        (*(v135 + 8))(v12, v136);
        goto LABEL_79;
      }

      (*(v76 + 8))(v12, v74);
      goto LABEL_66;
    }

    v35 = v135;
    if (v34 == 7)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v36 = v136;
      v37 = __swift_project_value_buffer(v136, qword_28140BD10);
      swift_beginAccess();
      (*(v35 + 16))(v9, v37, v36);
      v38 = v32;

      v39 = sub_22B36050C();
      v40 = sub_22B360CFC();

      if (os_log_type_enabled(v39, v40))
      {
        v129 = v40;
        v41 = 0xEE00797469746E45;
        v42 = 0x206E776F6E6B6E55;
        v43 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v142 = v130;
        *v43 = 136315394;
        v44 = sub_22B1A7B20(v131, v31, &v142);

        *(v43 + 4) = v44;
        *(v43 + 12) = 2080;
        if (v32)
        {
          v45 = [v38 entityName];
          v46 = v134;
          if (v45)
          {
            v47 = v45;
            v42 = sub_22B36084C();
            v41 = v48;
          }
        }

        else
        {
          v46 = v134;
        }

        v118 = sub_22B1A7B20(v42, v41, &v142);

        *(v43 + 14) = v118;
        _os_log_impl(&dword_22B116000, v39, v129, "[CoreDataServerHandlingPolicy] Received delete request from %s for %s", v43, 0x16u);
        v119 = v130;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v119, -1, -1);
        MEMORY[0x23188F650](v43, -1, -1);

        (*(v135 + 8))(v9, v136);
        goto LABEL_79;
      }

      (*(v35 + 8))(v9, v36);
LABEL_66:
      v46 = v134;
LABEL_79:
      v115 = v133;
      goto LABEL_80;
    }

LABEL_53:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v99 = v136;
    v100 = __swift_project_value_buffer(v136, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v6, v100, v99);
    v101 = v32;

    v102 = sub_22B36050C();
    v103 = sub_22B360D1C();

    if (os_log_type_enabled(v102, v103))
    {
      v129 = v103;
      v104 = 0xEE00797469746E45;
      v105 = 0x206E776F6E6B6E55;
      v106 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v142 = v130;
      *v106 = 136315394;
      v107 = sub_22B1A7B20(v131, v31, &v142);

      *(v106 + 4) = v107;
      *(v106 + 12) = 2080;
      if (v32)
      {
        v108 = [v101 entityName];
        v46 = v134;
        if (v108)
        {
          v109 = v108;
          v105 = sub_22B36084C();
          v104 = v110;
        }
      }

      else
      {
        v46 = v134;
      }

      v122 = sub_22B1A7B20(v105, v104, &v142);

      *(v106 + 14) = v122;
      _os_log_impl(&dword_22B116000, v102, v129, "[CoreDataServerHandlingPolicy] Received unknown request from %s for %s", v106, 0x16u);
      v123 = v130;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v123, -1, -1);
      MEMORY[0x23188F650](v106, -1, -1);

      (*(v135 + 8))(v6, v136);
      goto LABEL_79;
    }

    (*(v35 + 8))(v6, v99);
    goto LABEL_66;
  }

  v35 = v135;
  if (v34 != 1)
  {
    if (v34 == 2)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v49 = v136;
      v50 = __swift_project_value_buffer(v136, qword_28140BD10);
      swift_beginAccess();
      (*(v35 + 16))(v18, v50, v49);
      v51 = v32;

      v52 = sub_22B36050C();
      v53 = sub_22B360CFC();

      if (os_log_type_enabled(v52, v53))
      {
        v129 = v53;
        v54 = 0xEE00797469746E45;
        v55 = 0x206E776F6E6B6E55;
        v56 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *&v142 = v130;
        *v56 = 136315394;
        v57 = sub_22B1A7B20(v131, v31, &v142);

        *(v56 + 4) = v57;
        *(v56 + 12) = 2080;
        if (v32)
        {
          v58 = [v51 entityName];
          v46 = v134;
          if (v58)
          {
            v59 = v58;
            v55 = sub_22B36084C();
            v54 = v60;
          }
        }

        else
        {
          v46 = v134;
        }

        v120 = sub_22B1A7B20(v55, v54, &v142);

        *(v56 + 14) = v120;
        _os_log_impl(&dword_22B116000, v52, v129, "[CoreDataServerHandlingPolicy] Received save request from %s for %s", v56, 0x16u);
        v121 = v130;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v121, -1, -1);
        MEMORY[0x23188F650](v56, -1, -1);

        (*(v135 + 8))(v18, v136);
        goto LABEL_79;
      }

      (*(v35 + 8))(v18, v49);
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v87 = v136;
  v88 = __swift_project_value_buffer(v136, qword_28140BD10);
  swift_beginAccess();
  (*(v35 + 16))(v22, v88, v87);
  v89 = v32;

  v90 = sub_22B36050C();
  v91 = sub_22B360CFC();

  if (!os_log_type_enabled(v90, v91))
  {

    (*(v35 + 8))(v22, v87);
    goto LABEL_66;
  }

  v129 = v91;
  v92 = 0xEE00797469746E45;
  v93 = 0x206E776F6E6B6E55;
  v94 = swift_slowAlloc();
  v130 = swift_slowAlloc();
  *&v142 = v130;
  *v94 = 136315394;
  v95 = sub_22B1A7B20(v131, v31, &v142);

  *(v94 + 4) = v95;
  *(v94 + 12) = 2080;
  if (v32)
  {
    v96 = [v89 entityName];
    v46 = v134;
    if (v96)
    {
      v97 = v96;
      v93 = sub_22B36084C();
      v92 = v98;
    }
  }

  else
  {
    v46 = v134;
  }

  v115 = v133;
  v116 = sub_22B1A7B20(v93, v92, &v142);

  *(v94 + 14) = v116;
  _os_log_impl(&dword_22B116000, v90, v129, "[CoreDataServerHandlingPolicy] Received fetch request from %s for %s", v94, 0x16u);
  v117 = v130;
  swift_arrayDestroy();
  MEMORY[0x23188F650](v117, -1, -1);
  MEMORY[0x23188F650](v94, -1, -1);

  (*(v135 + 8))(v22, v136);
LABEL_80:
  *&v142 = 0;
  v124 = type metadata accessor for CoreDataServerHandlingPolicy();
  v140.receiver = v115;
  v140.super_class = v124;
  v125 = objc_msgSendSuper2(&v140, sel_processRequest_fromClientWithContext_error_, v137, v46, &v142);
  v126 = v142;
  if (v125)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v127 = v126;
    sub_22B35DB9C();

    swift_willThrow();
  }
}

id sub_22B30E804(id result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [result name];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = v5;
  v7 = sub_22B36084C();
  v9 = v8;

  if (v7 == 0xD000000000000011 && 0x800000022B369070 == v9)
  {
    goto LABEL_21;
  }

  v11 = sub_22B36134C();

  if ((v11 & 1) == 0)
  {
LABEL_31:
    v12 = [v4 name];
    if (!v12)
    {
      goto LABEL_14;
    }

    v13 = v12;
    v14 = sub_22B36084C();
    v16 = v15;

    if (v14 == 0x6C61767265746E49 && v16 == 0xEE00736B636F6C42)
    {
      goto LABEL_21;
    }

    v18 = sub_22B36134C();

    if ((v18 & 1) == 0)
    {
LABEL_14:
      v19 = [v4 name];
      if (!v19)
      {
        goto LABEL_18;
      }

      v20 = v19;
      v21 = sub_22B36084C();
      v23 = v22;

      if (v21 == 0xD000000000000011 && 0x800000022B36E2A0 == v23)
      {
        goto LABEL_21;
      }

      v24 = sub_22B36134C();

      if ((v24 & 1) == 0)
      {
LABEL_18:
        v25 = [v4 name];
        if (v25)
        {
          v26 = v25;
          v27 = sub_22B36084C();
          v29 = v28;

          if (v27 == 0xD000000000000013 && 0x800000022B36E280 == v29)
          {
LABEL_21:

            goto LABEL_22;
          }

          v31 = sub_22B36134C();

          if (v31)
          {
            goto LABEL_22;
          }
        }

        v32.receiver = v2;
        v32.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
        v30 = objc_msgSendSuper2(&v32, sel_restrictingWritePredicateForEntity_fromClientWithContext_, v4, a2);
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v30 = [objc_opt_self() predicateWithValue_];
LABEL_23:

  return v30;
}

void sub_22B30EB9C(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  v6 = objc_msgSendSuper2(&v9, sel_processFaultForObjectWithID_fromClientWithContext_error_, a1, a2, v10);
  v7 = v10[0];
  if (v6)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = v7;
    sub_22B35DB9C();

    swift_willThrow();
  }

  sub_22B30EC88(a1);
}

void sub_22B30EC88(void *a1)
{
  if (a1)
  {
    v2 = [a1 persistentStore];
    if (v2)
    {
      v10 = v2;
      v3 = sub_22B36081C();
      v4 = NSSelectorFromString(v3);

      if ([v10 respondsToSelector_])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADF0, &qword_22B367000);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_22B3634B0;
        *(v5 + 32) = a1;
        v6 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
        v7 = sub_22B360A3C();

        v8 = v10;
        [v10 performSelector:v4 withObject:v7];

        v9 = v7;
      }

      else
      {
        v9 = v10;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_22B30EF14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22B30EF6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA950, &qword_22B364940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B30EFD4(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 entitlements];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_22B3606EC();

  if (!v9)
  {
    goto LABEL_9;
  }

  v17[1] = 0xD000000000000019;
  v17[2] = 0x800000022B368210;
  sub_22B36110C();
  if (!*(v9 + 16) || (v10 = sub_22B33B248(v18), (v11 & 1) == 0))
  {

    sub_22B1B0560(v18);
LABEL_9:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_10;
  }

  sub_22B170C58(*(v9 + 56) + 32 * v10, &v19);
  sub_22B1B0560(v18);

  if (!*(&v20 + 1))
  {
LABEL_10:
    sub_22B30EF6C(&v19);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v18[0];
  }

LABEL_11:
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_22B36050C();
  v15 = sub_22B360D1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B116000, v14, v15, "Caller did not have store entitlements, declining connection", v16, 2u);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_22B30F28C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_22B30F2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a4;
  v7[46] = a5;
  v7[43] = a2;
  v7[44] = a3;
  v7[42] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA5A8, &qword_22B3653E8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v8 = sub_22B35FFBC();
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  v9 = sub_22B36052C();
  v7[57] = v9;
  v7[58] = *(v9 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v10 = sub_22B36024C();
  v7[63] = v10;
  v7[64] = *(v10 - 8);
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B30F524, 0, 0);
}

uint64_t sub_22B30F524()
{
  *(v0 + 584) = sub_22B3602DC();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDD8;
  *(v0 + 592) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B30F5C8, v1, 0);
}

uint64_t sub_22B30F5C8()
{
  v1 = *(v0[74] + 120);
  v0[75] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[76] = v3;
  *v3 = v0;
  v3[1] = sub_22B30F68C;
  v4 = v0[71];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[44];
  v8 = v0[45];
  v9 = v0[43];

  return MEMORY[0x282172630](v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_22B30F68C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_22B310B0C;
  }

  else
  {

    v3 = sub_22B30F7A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B30F7A8()
{
  v1 = v0[74];
  (*(v0[64] + 32))(v0[72], v0[71], v0[63]);

  return MEMORY[0x2822009F8](sub_22B30F828, v1, 0);
}

uint64_t sub_22B30F828()
{
  v1 = *(*(v0 + 592) + 120);
  *(v0 + 624) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22B30F89C, 0, 0);
}

uint64_t sub_22B30F89C()
{
  v1 = v0[78];
  v0[2] = v0;
  v0[3] = sub_22B30F9B0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B30F28C;
  v0[13] = &block_descriptor_26;
  v0[14] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B30F9B0()
{

  return MEMORY[0x2822009F8](sub_22B30FA90, 0, 0);
}

uint64_t sub_22B30FA90()
{
  v137 = v0;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 632) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 640) = v5;
  *(v0 + 648) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  if (os_log_type_enabled(v6, v7))
  {
    v123 = *(v0 + 464);
    v124 = *(v0 + 456);
    v126 = *(v0 + 496);
    v128 = v5;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v131 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v136[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_22B1A7B20(v8, v9, v136);
    *(v10 + 12) = 2080;
    swift_beginAccess();
    v12 = sub_22B36021C();
    v14 = sub_22B1A7B20(v12, v13, v136);

    *(v10 + 14) = v14;
    v5 = v128;
    *(v10 + 22) = 2080;
    v15 = sub_22B3601FC();
    v17 = sub_22B1A7B20(v15, v16, v136);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_22B116000, v6, v7, "[TOU Preprocessor] Got peaks for %s from server %s-%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v11, -1, -1);
    v18 = v10;
    v4 = v131;
    MEMORY[0x23188F650](v18, -1, -1);

    v19 = *(v123 + 8);
    v19(v126, v124);
  }

  else
  {
    v20 = *(v0 + 496);
    v22 = *(v0 + 456);
    v21 = *(v0 + 464);

    v19 = *(v21 + 8);
    v19(v20, v22);
  }

  *(v0 + 656) = v19;
  swift_beginAccess();
  v23 = *(sub_22B36022C() + 16);

  if (!v23)
  {
    v5(*(v0 + 488), v4, *(v0 + 456));

    v24 = sub_22B36050C();
    v25 = sub_22B360D2C();

    if (os_log_type_enabled(v24, v25))
    {
      v125 = *(v0 + 456);
      v127 = *(v0 + 488);
      v129 = v5;
      v26 = *(v0 + 352);
      v27 = *(v0 + 360);
      v132 = v4;
      v28 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v136[0] = v122;
      *v28 = 136315650;
      *(v28 + 4) = sub_22B1A7B20(v26, v27, v136);
      *(v28 + 12) = 2080;
      v29 = sub_22B36021C();
      v31 = sub_22B1A7B20(v29, v30, v136);

      *(v28 + 14) = v31;
      v5 = v129;
      *(v28 + 22) = 2080;
      v32 = sub_22B3601FC();
      v34 = sub_22B1A7B20(v32, v33, v136);

      *(v28 + 24) = v34;
      _os_log_impl(&dword_22B116000, v24, v25, "[TOU Preprocessor] Got empty peaks for %s from server %s-%s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v122, -1, -1);
      v35 = v28;
      v4 = v132;
      MEMORY[0x23188F650](v35, -1, -1);

      v36 = v125;
      v37 = v127;
    }

    else
    {
      v38 = *(v0 + 488);
      v39 = *(v0 + 456);

      v37 = v38;
      v36 = v39;
    }

    v19(v37, v36);
  }

  v40 = *(v0 + 440);
  v41 = *(v0 + 448);
  v42 = *(v0 + 432);
  sub_22B3601EC();
  v43 = (*(v40 + 88))(v41, v42);
  if (v43 == *MEMORY[0x277D18128])
  {
    v5(*(v0 + 480), v4, *(v0 + 456));
    v44 = sub_22B36050C();
    v45 = sub_22B360D0C();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 480);
    v48 = *(v0 + 456);
    if (v46)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22B116000, v44, v45, "Got TOU", v49, 2u);
      MEMORY[0x23188F650](v49, -1, -1);
    }

    v19(v47, v48);
    goto LABEL_38;
  }

  if (v43 != *MEMORY[0x277D18140])
  {
    if (v43 == *MEMORY[0x277D18138])
    {
      v134 = *(v0 + 616);
      v63 = *(v0 + 560);
      v64 = *(v0 + 424);
      v66 = *(v0 + 352);
      v65 = *(v0 + 360);
      type metadata accessor for TOUPeaksPreprocessor();
      sub_22B36023C();
      v67 = sub_22B36021C();
      v69 = v68;
      v70 = sub_22B3601FC();
      sub_22B1B07E4(v64, v66, v65, 0x466C6C6946646150, 0xEC00000064657869, v67, v69, v70, v63, v71);
      v59 = *(v0 + 576);
      if (v134)
      {
        v60 = *(v0 + 504);
        v61 = *(v0 + 512);
        v62 = *(v0 + 424);
        goto LABEL_24;
      }

      v83 = *(v0 + 560);
      v84 = *(v0 + 504);
      v85 = *(v0 + 512);
      sub_22B123284(*(v0 + 424), &qword_27D8BA5A8, &qword_22B3653E8);
    }

    else
    {
      if (v43 != *MEMORY[0x277D18130])
      {
        v86 = *MEMORY[0x277D18120];
        v87 = v43;
        type metadata accessor for TOUPeaksPreprocessor();
        v88 = *(v0 + 616);
        v89 = *(v0 + 352);
        v90 = *(v0 + 360);
        if (v87 == v86)
        {
          v130 = *(v0 + 536);
          v91 = *(v0 + 400);
          sub_22B36023C();
          v92 = sub_22B36021C();
          v94 = v93;
          v95 = sub_22B3601FC();
          sub_22B1B07E4(v91, v89, v90, 0xD000000000000012, 0x800000022B36BD10, v92, v94, v95, v130, v96);
          v59 = *(v0 + 576);
          if (v88)
          {
            v60 = *(v0 + 504);
            v61 = *(v0 + 512);
            sub_22B123284(*(v0 + 400), &qword_27D8BA5A8, &qword_22B3653E8);

            goto LABEL_25;
          }

          v113 = *(v0 + 536);
          v114 = *(v0 + 504);
          v115 = *(v0 + 512);
          sub_22B123284(*(v0 + 400), &qword_27D8BA5A8, &qword_22B3653E8);

          swift_beginAccess();
          (*(v115 + 40))(v59, v113, v114);
        }

        else
        {
          v97 = *(v0 + 528);
          v98 = *(v0 + 392);
          sub_22B36023C();
          v99 = sub_22B36021C();
          v101 = v100;
          v102 = sub_22B3601FC();
          sub_22B1B07E4(v98, v89, v90, 0xD000000000000012, 0x800000022B36BD10, v99, v101, v102, v97, v103);
          v59 = *(v0 + 576);
          if (v88)
          {
            v60 = *(v0 + 504);
            v61 = *(v0 + 512);
            v105 = *(v0 + 440);
            v104 = *(v0 + 448);
            v106 = *(v0 + 432);
            sub_22B123284(*(v0 + 392), &qword_27D8BA5A8, &qword_22B3653E8);

            (*(v105 + 8))(v104, v106);
            goto LABEL_26;
          }

          v116 = *(v0 + 528);
          v117 = *(v0 + 504);
          v118 = *(v0 + 512);
          v120 = *(v0 + 440);
          v119 = *(v0 + 448);
          v121 = *(v0 + 432);
          sub_22B123284(*(v0 + 392), &qword_27D8BA5A8, &qword_22B3653E8);

          swift_beginAccess();
          (*(v118 + 40))(v59, v116, v117);
          (*(v120 + 8))(v119, v121);
        }

LABEL_38:
        if (qword_281408E00 != -1)
        {
          swift_once();
        }

        v107 = *(v0 + 576);
        v108 = *(v0 + 520);
        v109 = *(v0 + 504);
        v110 = *(v0 + 512);
        v111 = qword_28140BC80;
        *(v0 + 664) = qword_28140BC80;
        v112 = *(v110 + 16);
        *(v0 + 672) = v112;
        *(v0 + 680) = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v112(v108, v107, v109);

        return MEMORY[0x2822009F8](sub_22B3106FC, v111, 0);
      }

      v135 = *(v0 + 616);
      v72 = *(v0 + 552);
      v73 = *(v0 + 416);
      v75 = *(v0 + 352);
      v74 = *(v0 + 360);
      type metadata accessor for TOUPeaksPreprocessor();
      sub_22B36023C();
      v76 = sub_22B36021C();
      v78 = v77;
      v79 = sub_22B3601FC();
      sub_22B1B07E4(v73, v75, v74, 0x466C6C6946646150, 0xEB0000000074616CLL, v76, v78, v79, v72, v80);
      v59 = *(v0 + 576);
      if (v135)
      {
        v60 = *(v0 + 504);
        v61 = *(v0 + 512);
        v62 = *(v0 + 416);
        goto LABEL_24;
      }

      v83 = *(v0 + 552);
      v84 = *(v0 + 504);
      v85 = *(v0 + 512);
      sub_22B123284(*(v0 + 416), &qword_27D8BA5A8, &qword_22B3653E8);
    }

LABEL_37:
    swift_beginAccess();
    (*(v85 + 40))(v59, v83, v84);
    goto LABEL_38;
  }

  v133 = *(v0 + 616);
  v50 = *(v0 + 544);
  v51 = *(v0 + 408);
  v53 = *(v0 + 352);
  v52 = *(v0 + 360);
  type metadata accessor for TOUPeaksPreprocessor();
  sub_22B36023C();
  v54 = sub_22B36021C();
  v56 = v55;
  v57 = sub_22B3601FC();
  sub_22B1B07E4(v51, v53, v52, 0x546C6C6946646150, 0xED00006465726569, v54, v56, v57, v50, v58);
  v59 = *(v0 + 576);
  if (!v133)
  {
    v83 = *(v0 + 544);
    v84 = *(v0 + 504);
    v85 = *(v0 + 512);
    sub_22B123284(*(v0 + 408), &qword_27D8BA5A8, &qword_22B3653E8);

    goto LABEL_37;
  }

  v60 = *(v0 + 504);
  v61 = *(v0 + 512);
  v62 = *(v0 + 408);
LABEL_24:
  sub_22B123284(v62, &qword_27D8BA5A8, &qword_22B3653E8);

LABEL_25:

LABEL_26:
  (*(v61 + 8))(v59, v60);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_22B3106FC()
{
  v30 = v0;
  (*(v0 + 640))(*(v0 + 472), *(v0 + 632), *(v0 + 456));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 656);
  v5 = *(v0 + 472);
  v6 = *(v0 + 456);
  if (v3)
  {
    v26 = *(v0 + 368);
    v27 = *(v0 + 376);
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    v28 = *(v0 + 656);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B1A7B20(v8, v7, &v29);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_22B1A7B20(v26, v27, &v29);
    _os_log_impl(&dword_22B116000, v1, v2, "Adding TOUPeaks for %s:%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v28(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = *(v0 + 664);
  v12 = *(v11 + 112);
  if (v12)
  {
    v13 = *(v0 + 520);
    v15 = *(v0 + 376);
    v14 = *(v0 + 384);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    v18 = *(v0 + 352);
    v19 = *(v11 + 120);
    v20 = v19;

    sub_22B217904(v13, v18, v17, v16, v15, v14, v19, v12);
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 504);
  v23 = *(v0 + 512);
  v24 = *(v23 + 8);
  *(v0 + 688) = v24;
  *(v0 + 696) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21, v22);

  return MEMORY[0x2822009F8](sub_22B31097C, 0, 0);
}

uint64_t sub_22B31097C()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 576);
  v3 = *(v0 + 504);
  (*(v0 + 672))(*(v0 + 336), v2, v3);
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B310B0C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B310CC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE28, &unk_22B367090);
    v3 = sub_22B36114C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_22B36149C();

      sub_22B3608FC();
      result = sub_22B3614DC();
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
          result = sub_22B36134C();
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

uint64_t sub_22B310E30(uint64_t a1)
{
  v2 = sub_22B35E02C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADF8, &qword_22B367078);
    v9 = sub_22B36114C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22B316498(&qword_27D8BAE00, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22B36071C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_22B316498(&qword_27D8BAE08, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22B36078C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22B311150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = sub_22B35DDBC();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = sub_22B36024C();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = type metadata accessor for CDTOUPeak(0);
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();
  v11 = sub_22B36052C();
  v7[30] = v11;
  v7[31] = *(v11 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v12 = sub_22B35E02C();
  v7[35] = v12;
  v7[36] = *(v12 - 8);
  v7[37] = swift_task_alloc();
  v13 = sub_22B35DA4C();
  v7[38] = v13;
  v7[39] = *(v13 - 8);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v14 = sub_22B35DE9C();
  v7[42] = v14;
  v7[43] = *(v14 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v15 = sub_22B35E0BC();
  v7[54] = v15;
  v7[55] = *(v15 - 8);
  v7[56] = swift_task_alloc();
  v16 = sub_22B35DF9C();
  v7[57] = v16;
  v7[58] = *(v16 - 8);
  v7[59] = swift_task_alloc();
  v17 = sub_22B35E04C();
  v7[60] = v17;
  v7[61] = *(v17 - 8);
  v7[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3115E8, 0, 0);
}

uint64_t sub_22B3115E8()
{
  v67 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 440);
  v58 = *(v0 + 432);
  v61 = *(v0 + 296);
  v59 = *(v0 + 288);
  v6 = *(v0 + 280);
  v7 = *(v0 + 160);
  (*(v1 + 104))(v2, *MEMORY[0x277CC9830], v3);
  sub_22B35DFAC();
  (*(v1 + 8))(v2, v3);
  (*(v5 + 16))(v4, v7, v58);
  sub_22B35E01C();
  sub_22B35F50C();
  *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
  v8 = *(v59 + 72);
  *(v0 + 512) = v8;
  v9 = *(v59 + 80);
  *(v0 + 624) = v9;
  v10 = (v9 + 32) & ~v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B363660;
  *(v0 + 628) = *MEMORY[0x277CC9988];
  v12 = *(v59 + 104);
  *(v0 + 520) = v12;
  *(v0 + 528) = (v59 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v11 + v10);
  *(v0 + 632) = *MEMORY[0x277CC9998];
  v12(v11 + v10 + v8);
  v13 = *MEMORY[0x277CC9968];
  *(v0 + 636) = v13;
  (v12)(v11 + v10 + 2 * v8, v13, v6);
  *(v0 + 640) = *MEMORY[0x277CC9980];
  v12(v11 + v10 + 3 * v8);
  *(v0 + 644) = *MEMORY[0x277CC99A0];
  v12(v11 + v10 + 4 * v8);
  *(v0 + 648) = *MEMORY[0x277CC99A8];
  v12(v11 + v10 + 5 * v8);
  sub_22B310E30(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  (v12)(v61, v13, v6);
  sub_22B35F60C();
  (*(v59 + 8))(v61, v6);
  sub_22B35F64C();
  swift_beginAccess();
  if (sub_22B35DDFC())
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 408);
    v16 = *(v0 + 336);
    v17 = *(v0 + 344);
    v18 = *(v0 + 272);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = __swift_project_value_buffer(v19, qword_28140BD10);
    *(v0 + 536) = v21;
    swift_beginAccess();
    v22 = *(v20 + 16);
    *(v0 + 544) = v22;
    *(v0 + 552) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v22(v18, v21, v19);
    v23 = *(v17 + 16);
    *(v0 + 560) = v23;
    *(v0 + 568) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v14, v15, v16);

    v24 = sub_22B36050C();
    v25 = sub_22B360D2C();

    if (os_log_type_enabled(v24, v25))
    {
      v60 = *(v0 + 400);
      v27 = *(v0 + 336);
      v26 = *(v0 + 344);
      v63 = *(v0 + 248);
      v64 = *(v0 + 240);
      v65 = *(v0 + 272);
      v29 = *(v0 + 128);
      v28 = *(v0 + 136);
      v30 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v30 = 136315650;
      *(v30 + 4) = sub_22B1A7B20(v29, v28, &v66);
      *(v30 + 12) = 2080;
      sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v31 = sub_22B36131C();
      v33 = sub_22B1A7B20(v31, v32, &v66);

      *(v30 + 14) = v33;
      *(v30 + 22) = 2080;
      v34 = sub_22B36131C();
      v36 = v35;
      v37 = *(v26 + 8);
      v37(v60, v27);
      v38 = sub_22B1A7B20(v34, v36, &v66);

      *(v30 + 24) = v38;
      _os_log_impl(&dword_22B116000, v24, v25, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v62, -1, -1);
      MEMORY[0x23188F650](v30, -1, -1);

      v39 = *(v63 + 8);
      v39(v65, v64);
    }

    else
    {
      v51 = *(v0 + 400);
      v52 = *(v0 + 336);
      v53 = *(v0 + 344);
      v54 = *(v0 + 272);
      v55 = *(v0 + 240);
      v56 = *(v0 + 248);

      v37 = *(v53 + 8);
      v37(v51, v52);
      v39 = *(v56 + 8);
      v39(v54, v55);
    }

    *(v0 + 584) = v37;
    *(v0 + 576) = v39;
    if (qword_281408E00 != -1)
    {
      swift_once();
    }

    v57 = qword_28140BC80;
    *(v0 + 592) = qword_28140BC80;

    return MEMORY[0x2822009F8](sub_22B311E5C, v57, 0);
  }

  else
  {
    v40 = *(v0 + 336);
    v41 = *(*(v0 + 344) + 8);
    v42 = *(v0 + 416);
    v43 = *(v0 + 312);
    v41(*(v0 + 408), v40);
    v41(v42, v40);
    v44 = *(v0 + 488);
    v45 = *(v0 + 496);
    v46 = *(v0 + 480);
    v47 = *(v0 + 424);
    v48 = *(v0 + 336);
    (*(v43 + 8))(*(v0 + 328), *(v0 + 304));
    (*(v44 + 8))(v45, v46);
    v41(v47, v48);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_22B311E5C()
{
  v0[75] = sub_22B21A278(v0[16], v0[17], v0[18], v0[19], v0[53], v0[51], 0);

  return MEMORY[0x2822009F8](sub_22B311EDC, 0, 0);
}

uint64_t sub_22B311EDC(uint64_t a1)
{
  v154 = v1;
  v2 = v1[75];
  if (!v2)
  {
    v50 = v1[73];
    v51 = v1[52];
    v52 = v1[42];
    v53 = (v1[39] + 8);
    v50(v1[51], v52);
    v50(v51, v52);
    v133 = v1[73];
LABEL_34:
    v110 = *v53;
    v111 = v1[61];
    v112 = v1[62];
    v113 = v1[60];
    v114 = v1[53];
    v115 = v1[42];
    v110(v1[41], v1[38]);
    (*(v111 + 8))(v112, v113);
    v133(v114, v115);

    v116 = v1[1];

    return v116();
  }

  sub_22B35DD2C();
  sub_22B35DD1C();
  v3 = *(v2 + 16);
  v152 = v1;
  if (v3)
  {
    v4 = v1[28];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    swift_beginAccess();
    swift_beginAccess();
    v6 = v5;
    v131 = *(v4 + 72);
    do
    {
      v148 = v3;
      v140 = v1[73];
      v7 = v1[70];
      v8 = v1[48];
      v9 = v1[49];
      v10 = v1[47];
      v134 = v1[46];
      v136 = v1[45];
      v11 = v1[42];
      v12 = v1[43];
      v13 = v1[29];
      v14 = v1[27];
      v144 = v6;
      sub_22B3160B8(v6, v13);
      v15 = v13 + *(v14 + 20);
      if (sub_22B35DDEC())
      {
        v16 = v15;
      }

      else
      {
        v16 = v9;
      }

      v7(v10, v16, v11);
      v17 = *(v12 + 40);
      v17(v9, v10, v11);
      v18 = v13 + *(v14 + 24);
      if (sub_22B35DDFC())
      {
        v19 = v18;
      }

      else
      {
        v19 = v8;
      }

      v7(v134, v19, v11);
      v17(v8, v134, v11);
      v7(v136, v8, v11);
      sub_22B316498(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v20 = sub_22B36078C();
      v140(v136, v11);
      v1 = v152;
      if (v20)
      {
        sub_22B35DD2C();
      }

      else
      {
        (v152[70])(v152[45], v152[48], v152[42]);
      }

      v21 = v152[73];
      v22 = v152[45];
      v23 = v152[42];
      v17(v152[53], v22, v23);
      sub_22B35DD1C();
      v24 = sub_22B36078C();
      v21(v22, v23);
      if (v24)
      {
        sub_22B31611C(v152[29]);
      }

      else
      {
        v129 = *(v152 + 162);
        v128 = *(v152 + 161);
        v127 = *(v152 + 160);
        v126 = *(v152 + 159);
        v125 = *(v152 + 158);
        v25 = v152[65];
        v124 = *(v152 + 157);
        v26 = v152[64];
        v141 = v152[41];
        v132 = v152[40];
        v27 = (*(v152 + 624) + 32) & ~*(v152 + 624);
        v28 = v152[39];
        v137 = v152[38];
        v29 = v152[35];
        v130 = v152[29];
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_22B363660;
        v31 = v30 + v27;
        v25(v31, v124, v29);
        v25(v31 + v26, v125, v29);
        v25(v31 + 2 * v26, v126, v29);
        v25(v31 + 3 * v26, v127, v29);
        v25(v31 + 4 * v26, v128, v29);
        v25(v31 + 5 * v26, v129, v29);
        sub_22B310E30(v30);
        swift_setDeallocating();
        v1 = v152;
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_22B35DFCC();

        sub_22B31611C(v130);
        (*(v28 + 8))(v141, v137);
        (*(v28 + 32))(v141, v132, v137);
      }

      v6 = v144 + v131;
      v3 = v148 - 1;
    }

    while (v148 != 1);
    v32 = v1[68];
    v33 = v1[67];
    v34 = v1[33];
    v35 = v1[30];

    v32(v34, v33, v35);

    v36 = sub_22B36050C();
    v37 = sub_22B360CFC();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[72];
    if (v38)
    {
      v145 = v1[30];
      v149 = v1[33];
      v41 = v1[16];
      v40 = v1[17];
      v138 = v1[72];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v153[0] = v43;
      *v42 = 136315650;
      *(v42 + 4) = sub_22B1A7B20(v41, v40, v153);
      *(v42 + 12) = 2080;
      sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v44 = sub_22B36131C();
      v46 = sub_22B1A7B20(v44, v45, v153);

      *(v42 + 14) = v46;
      *(v42 + 22) = 2080;
      v47 = sub_22B36131C();
      v49 = sub_22B1A7B20(v47, v48, v153);

      *(v42 + 24) = v49;
      _os_log_impl(&dword_22B116000, v36, v37, "[TOU Preprocessor] Got peaks for %s from coredata %s-%s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v43, -1, -1);
      MEMORY[0x23188F650](v42, -1, -1);

      v138(v149, v145);
    }

    else
    {
      v63 = v1[33];
      v64 = v1[30];

      v39(v63, v64);
    }

    goto LABEL_25;
  }

  if ((sub_22B35DDFC() & 1) == 0)
  {
LABEL_25:
    (v1[68])(v1[32], v1[67], v1[30]);

    v65 = sub_22B36050C();
    v66 = sub_22B360D0C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = v1[73];
    v69 = v1[49];
    v146 = v1[72];
    v150 = v1[48];
    v70 = v1[42];
    v71 = v1[32];
    v72 = v1[30];
    if (v67)
    {
      v135 = v1[17];
      v142 = v1[49];
      v73 = v1[16];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v153[0] = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_22B1A7B20(v73, v135, v153);
      _os_log_impl(&dword_22B116000, v65, v66, "[TOU Preprocessor] Got peaks for %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x23188F650](v75, -1, -1);
      MEMORY[0x23188F650](v74, -1, -1);

      v146(v71, v72);
      v68(v150, v70);
      v76 = v142;
    }

    else
    {

      v146(v71, v72);
      v68(v150, v70);
      v76 = v69;
    }

    v68(v76, v70);
    if (sub_22B35DDFC())
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v77 = v1[50];
      v78 = v1[51];
      v79 = v1[42];
      v80 = v1[43];
      v81 = v1[34];
      v82 = v152[31];
      v83 = v152[30];
      v84 = __swift_project_value_buffer(v83, qword_28140BD10);
      v152[67] = v84;
      swift_beginAccess();
      v85 = *(v82 + 16);
      v152[68] = v85;
      v152[69] = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v85(v81, v84, v83);
      v86 = v152;
      v87 = *(v80 + 16);
      v152[70] = v87;
      v152[71] = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v87(v77, v78, v79);

      v88 = sub_22B36050C();
      v89 = sub_22B360D2C();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = v152[50];
        v91 = v152[43];
        v92 = v152[42];
        v143 = v152[31];
        v147 = v152[30];
        v151 = v152[34];
        v93 = v152[17];
        v94 = v152[16];
        v95 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v153[0] = v139;
        *v95 = 136315650;
        *(v95 + 4) = sub_22B1A7B20(v94, v93, v153);
        *(v95 + 12) = 2080;
        sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v96 = sub_22B36131C();
        v98 = sub_22B1A7B20(v96, v97, v153);

        *(v95 + 14) = v98;
        *(v95 + 22) = 2080;
        v99 = v90;
        v100 = sub_22B36131C();
        v102 = v101;
        v103 = *(v91 + 8);
        v103(v99, v92);
        v86 = v152;
        v104 = sub_22B1A7B20(v100, v102, v153);

        *(v95 + 24) = v104;
        _os_log_impl(&dword_22B116000, v88, v89, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v95, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v139, -1, -1);
        MEMORY[0x23188F650](v95, -1, -1);

        v105 = *(v143 + 8);
        v105(v151, v147);
      }

      else
      {
        v117 = v152[50];
        v118 = v152[42];
        v119 = v152[43];
        v120 = v152[34];
        v121 = v152[30];
        v122 = v152[31];

        v103 = *(v119 + 8);
        v103(v117, v118);
        v105 = *(v122 + 8);
        v105(v120, v121);
      }

      v86[73] = v103;
      v86[72] = v105;
      if (qword_281408E00 != -1)
      {
        swift_once();
      }

      v123 = qword_28140BC80;
      v86[74] = qword_28140BC80;

      return MEMORY[0x2822009F8](sub_22B311E5C, v123, 0);
    }

    v106 = v1[73];
    v107 = v1[42];
    v108 = v1[52];
    v109 = v1[39];
    v106(v1[51], v107);
    v133 = v106;
    v106(v108, v107);
    v53 = (v109 + 8);
    goto LABEL_34;
  }

  type metadata accessor for TOUPeaksPreprocessor();
  v54 = swift_task_alloc();
  v1[76] = v54;
  *v54 = v1;
  v54[1] = sub_22B312DB4;
  v55 = v1[41];
  v56 = v1[26];
  v57 = v1[19];
  v58 = v1[20];
  v59 = v1[17];
  v60 = v1[18];
  v61 = v1[16];

  return sub_22B30F2C0(v56, v55, v61, v59, v60, v57, v58);
}

uint64_t sub_22B312DB4()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_22B313BB8;
  }

  else
  {
    v2 = sub_22B312EC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B312EC8(__n128 a1)
{
  v128 = v1;
  v2 = *(v1 + 616);
  sub_22B35F59C();
  sub_22B3601FC();
  sub_22B35DD9C();
  if (v2)
  {
    v120 = v2;
    v4 = *(v1 + 200);
    v3 = *(v1 + 208);
    v6 = *(v1 + 184);
    v5 = *(v1 + 192);
    v7 = *(v1 + 168);
    v8 = *(v1 + 176);

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v103 = *(v1 + 648);
    v99 = *(v1 + 644);
    v97 = *(v1 + 640);
    v95 = *(v1 + 636);
    v93 = *(v1 + 632);
    v9 = *(v1 + 520);
    v90 = *(v1 + 628);
    v10 = *(v1 + 512);
    v88 = *(v1 + 424);
    v113 = *(v1 + 408);
    v116 = *(v1 + 416);
    v12 = *(v1 + 336);
    v11 = *(v1 + 344);
    v13 = *(v1 + 360);
    v101 = *(v1 + 320);
    v87 = (*(v1 + 624) + 32) & ~*(v1 + 624);
    v86 = *(v1 + 392);
    v107 = *(v1 + 312);
    v108 = *(v1 + 304);
    v14 = *(v1 + 280);
    v105 = *(v1 + 584);
    v105(*(v1 + 384), v12);
    v105(v86, v12);
    sub_22B35DD2C();
    v15 = v12;
    (*(v11 + 40))(v88, v13, v12);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22B363660;
    v9(v16 + v87, v90, v14);
    v9(v16 + v87 + v10, v93, v14);
    v9(v16 + v87 + 2 * v10, v95, v14);
    v9(v16 + v87 + 3 * v10, v97, v14);
    v9(v16 + v87 + 4 * v10, v99, v14);
    v9(v16 + v87 + 5 * v10, v103, v14);
    sub_22B310E30(v16);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22B35DFCC();

    v17 = *(v107 + 8);
    v17(v101, v108);
    v105(v113, v15);
    v105(v116, v15);
    v106 = *(v1 + 584);
LABEL_15:
    v72 = *(v1 + 488);
    v73 = *(v1 + 496);
    v74 = *(v1 + 480);
    v75 = *(v1 + 424);
    v76 = *(v1 + 336);
    v17(*(v1 + 328), *(v1 + 304));
    (*(v72 + 8))(v73, v74);
    v106(v75, v76);

    v77 = *(v1 + 8);

    return v77();
  }

  (*(*(v1 + 176) + 8))(*(v1 + 184), *(v1 + 168));

  sub_22B316498(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v18 = sub_22B36078C();
  v19 = *(v1 + 424);
  if (v18)
  {
    v20 = *(v1 + 360);
    v21 = *(v1 + 336);
    v22 = *(v1 + 344);
    sub_22B35DD2C();
    (*(v22 + 40))(v19, v20, v21);
  }

  else
  {
    (*(*(v1 + 344) + 24))(*(v1 + 424), *(v1 + 352), *(v1 + 336));
  }

  v124 = *(v1 + 584);
  v98 = *(v1 + 648);
  v96 = *(v1 + 644);
  v94 = *(v1 + 640);
  v92 = *(v1 + 636);
  v91 = *(v1 + 632);
  v23 = *(v1 + 520);
  v89 = *(v1 + 628);
  v24 = *(v1 + 512);
  v111 = *(v1 + 352);
  v109 = *(v1 + 336);
  v121 = *(v1 + 328);
  v102 = *(v1 + 320);
  v114 = *(v1 + 312);
  v117 = *(v1 + 304);
  v25 = *(v1 + 280);
  v26 = *(v1 + 200);
  v104 = *(v1 + 208);
  v27 = (*(v1 + 624) + 32) & ~*(v1 + 624);
  v100 = *(v1 + 192);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22B363660;
  v29 = v28 + v27;
  v23(v29, v89, v25);
  v23(v29 + v24, v91, v25);
  v23(v29 + 2 * v24, v92, v25);
  v23(v29 + 3 * v24, v94, v25);
  v23(v29 + 4 * v24, v96, v25);
  v23(v29 + 5 * v24, v98, v25);
  sub_22B310E30(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  v124(v111, v109);
  (*(v26 + 8))(v104, v100);
  (*(v114 + 8))(v121, v117);
  (*(v114 + 32))(v121, v102, v117);
  (*(v1 + 544))(*(v1 + 256), *(v1 + 536), *(v1 + 240));

  v30 = sub_22B36050C();
  v31 = sub_22B360D0C();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v1 + 584);
  v34 = *(v1 + 392);
  v122 = *(v1 + 576);
  v125 = *(v1 + 384);
  v35 = *(v1 + 336);
  v36 = *(v1 + 256);
  v37 = *(v1 + 240);
  if (v32)
  {
    v118 = *(v1 + 392);
    v38 = *(v1 + 128);
    v110 = *(v1 + 136);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v127[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_22B1A7B20(v38, v110, v127);
    _os_log_impl(&dword_22B116000, v30, v31, "[TOU Preprocessor] Got peaks for %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23188F650](v40, -1, -1);
    MEMORY[0x23188F650](v39, -1, -1);

    v122(v36, v37);
    v33(v125, v35);
    v41 = v118;
  }

  else
  {

    v122(v36, v37);
    v33(v125, v35);
    v41 = v34;
  }

  v33(v41, v35);
  if ((sub_22B35DDFC() & 1) == 0)
  {
    v68 = *(v1 + 584);
    v69 = *(v1 + 336);
    v70 = *(v1 + 416);
    v71 = *(v1 + 312);
    v68(*(v1 + 408), v69);
    v106 = v68;
    v68(v70, v69);
    v17 = *(v71 + 8);
    goto LABEL_15;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v42 = *(v1 + 400);
  v43 = *(v1 + 408);
  v44 = *(v1 + 336);
  v45 = *(v1 + 344);
  v46 = *(v1 + 272);
  v47 = *(v1 + 240);
  v48 = *(v1 + 248);
  v49 = __swift_project_value_buffer(v47, qword_28140BD10);
  *(v1 + 536) = v49;
  swift_beginAccess();
  v50 = *(v48 + 16);
  *(v1 + 544) = v50;
  *(v1 + 552) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v46, v49, v47);
  v51 = *(v45 + 16);
  *(v1 + 560) = v51;
  *(v1 + 568) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v51(v42, v43, v44);

  v52 = sub_22B36050C();
  v53 = sub_22B360D2C();

  if (os_log_type_enabled(v52, v53))
  {
    v112 = *(v1 + 400);
    v55 = *(v1 + 336);
    v54 = *(v1 + 344);
    v119 = *(v1 + 248);
    v123 = *(v1 + 240);
    v126 = *(v1 + 272);
    v57 = *(v1 + 128);
    v56 = *(v1 + 136);
    v58 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v127[0] = v115;
    *v58 = 136315650;
    *(v58 + 4) = sub_22B1A7B20(v57, v56, v127);
    *(v58 + 12) = 2080;
    sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v59 = sub_22B36131C();
    v61 = sub_22B1A7B20(v59, v60, v127);

    *(v58 + 14) = v61;
    *(v58 + 22) = 2080;
    v62 = sub_22B36131C();
    v64 = v63;
    v65 = *(v54 + 8);
    v65(v112, v55);
    v66 = sub_22B1A7B20(v62, v64, v127);

    *(v58 + 24) = v66;
    _os_log_impl(&dword_22B116000, v52, v53, "[TOU Preprocessor] Getting peaks for %s at %s to %s", v58, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v115, -1, -1);
    MEMORY[0x23188F650](v58, -1, -1);

    v67 = *(v119 + 8);
    v67(v126, v123);
  }

  else
  {
    v79 = *(v1 + 400);
    v80 = *(v1 + 336);
    v81 = *(v1 + 344);
    v82 = *(v1 + 272);
    v83 = *(v1 + 240);
    v84 = *(v1 + 248);

    v65 = *(v81 + 8);
    v65(v79, v80);
    v67 = *(v84 + 8);
    v67(v82, v83);
  }

  *(v1 + 584) = v65;
  *(v1 + 576) = v67;
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v85 = qword_28140BC80;
  *(v1 + 592) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B311E5C, v85, 0);
}

uint64_t sub_22B313BB8()
{
  v32 = *(v0 + 616);
  v25 = *(v0 + 648);
  v24 = *(v0 + 644);
  v23 = *(v0 + 640);
  v22 = *(v0 + 636);
  v21 = *(v0 + 632);
  v1 = *(v0 + 520);
  v20 = *(v0 + 628);
  v2 = *(v0 + 512);
  v19 = *(v0 + 424);
  v30 = *(v0 + 408);
  v31 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v26 = *(v0 + 320);
  v18 = (*(v0 + 624) + 32) & ~*(v0 + 624);
  v28 = *(v0 + 312);
  v29 = *(v0 + 304);
  v5 = *(v0 + 280);
  v27 = *(v0 + 584);
  v27(*(v0 + 384), v4);
  v27(v16, v4);
  sub_22B35DD2C();
  (*(v3 + 40))(v19, v17, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B363660;
  v1(v6 + v18, v20, v5);
  v1(v6 + v18 + v2, v21, v5);
  v1(v6 + v18 + 2 * v2, v22, v5);
  v1(v6 + v18 + 3 * v2, v23, v5);
  v1(v6 + v18 + 4 * v2, v24, v5);
  v1(v6 + v18 + 5 * v2, v25, v5);
  sub_22B310E30(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22B35DFCC();

  v7 = *(v28 + 8);
  (v7)(v26, v29);
  v27(v30, v4);
  v27(v31, v4);
  v8 = *(v0 + 584);
  v9 = *(v0 + 488);
  v10 = *(v0 + 496);
  v11 = *(v0 + 480);
  v12 = *(v0 + 424);
  v13 = *(v0 + 336);
  v7();
  (*(v9 + 8))(v10, v11);
  v8(v12, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B313FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = type metadata accessor for CDTOUPeak(0);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3140AC, 0, 0);
}

uint64_t sub_22B3140AC()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  *(v0 + 184) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  v6 = MEMORY[0x277D84F98];
  *(v0 + 112) = MEMORY[0x277D84F98];
  *(v0 + 120) = v6;

  if (v5)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v5;
    *(v0 + 136) = v8;
    v10 = (*(v7 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = *v10;
    *(v0 + 144) = *v10;
    v12 = v10[1];
    *(v0 + 152) = v12;

    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_22B314250;
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);

    return sub_22B311150(v18, v17, v11, v12, v16, v14, v15);
  }

  else
  {
    v9 = 0;
    while (((63 - v4) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v5 = *(v7 + 8 * v9++ + 64);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 8);
    v21 = *(v0 + 120);

    return v20(v21);
  }
}

uint64_t sub_22B314250()
{

  return MEMORY[0x2822009F8](sub_22B31434C, 0, 0);
}

uint64_t sub_22B31434C()
{
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC80;
  *(v0 + 168) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B3143E4, v1, 0);
}

uint64_t sub_22B3143E4()
{
  v0[22] = sub_22B21A278(v0[18], v0[19], v0[8], v0[9], v0[5], v0[6], 0);

  return MEMORY[0x2822009F8](sub_22B314460, 0, 0);
}

void sub_22B314460()
{
  v1 = *(v0 + 176);
  if (!v1)
  {

    v73 = *(v0 + 136);
    v74 = (*(v0 + 128) - 1) & *(v0 + 128);
    if (!v74)
    {
      goto LABEL_48;
    }

LABEL_77:
    v76 = *(v0 + 56);
LABEL_78:
    *(v0 + 128) = v74;
    *(v0 + 136) = v73;
    v106 = (*(v76 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v74)))));
    v107 = *v106;
    *(v0 + 144) = *v106;
    v108 = v106[1];
    *(v0 + 152) = v108;

    v109 = swift_task_alloc();
    *(v0 + 160) = v109;
    *v109 = v0;
    v109[1] = sub_22B314250;
    v110 = *(v0 + 72);
    v111 = *(v0 + 80);
    v112 = *(v0 + 64);
    v114 = *(v0 + 40);
    v113 = *(v0 + 48);

    sub_22B311150(v114, v113, v107, v108, v112, v110, v111);
    return;
  }

  v122 = *(v1 + 16);
  if (v122)
  {
    v2 = 0;
    v3 = *(*(v0 + 96) + 80);
    v118 = *(v0 + 176);
    v120 = v1 + ((v3 + 32) & ~v3);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      sub_22B3160B8(v120 + *(*(v0 + 96) + 72) * v2, *(v0 + 104));
      if (v5[2])
      {
        sub_22B33B28C(*(v0 + 144), *(v0 + 152));
        if (v10)
        {
          if (v5[2])
          {
            v11 = sub_22B33B28C(*(v0 + 144), *(v0 + 152));
            if (v12)
            {
              break;
            }
          }
        }
      }

      v24 = *(v0 + 144);
      v23 = *(v0 + 152);
      v25 = *(v0 + 104);
      v26 = *(v0 + 88);
      v27 = *(v25 + *(v26 + 28));
      v28 = (v25 + *(v26 + 36));
      v29 = *v28;
      v30 = v28[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v4;
      v32 = sub_22B33B28C(v24, v23);
      v34 = v4[2];
      v35 = (v33 & 1) == 0;
      v21 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v21)
      {
        goto LABEL_89;
      }

      v37 = v33;
      if (v4[3] >= v36)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = *(v0 + 16);
          if ((v33 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v71 = v32;
          sub_22B341930();
          v32 = v71;
          v4 = *(v0 + 16);
          if ((v37 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v39 = *(v0 + 144);
        v38 = *(v0 + 152);
        sub_22B33CAA0(v36, isUniquelyReferenced_nonNull_native);
        v32 = sub_22B33B28C(v39, v38);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_84;
        }

        v1 = v118;
        v4 = *(v0 + 16);
        if ((v37 & 1) == 0)
        {
LABEL_27:
          v42 = *(v0 + 144);
          v41 = *(v0 + 152);
          v43 = *(v0 + 104);
          v4[(v32 >> 6) + 8] |= 1 << v32;
          v44 = (v4[6] + 16 * v32);
          *v44 = v42;
          v44[1] = v41;
          v45 = (v4[7] + 24 * v32);
          *v45 = v27;
          v45[1] = v29;
          v45[2] = v30;

          sub_22B31611C(v43);
          v46 = v4[2];
          v21 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v21)
          {
            goto LABEL_91;
          }

          v4[2] = v47;
          goto LABEL_6;
        }
      }

      v6 = *(v0 + 104);
      v7 = (v4[7] + 24 * v32);
      *v7 = v27;
      v7[1] = v29;
      v7[2] = v30;

      v8 = v6;
LABEL_5:
      sub_22B31611C(v8);
LABEL_6:
      ++v2;
      v5 = v4;
      v9 = v4;
      if (v122 == v2)
      {
        goto LABEL_53;
      }
    }

    v13 = *(v5[7] + 24 * v11);
    v14 = *(*(v0 + 104) + *(*(v0 + 88) + 28));
    v15 = *(v14 + 16);
    v16 = v13[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_92;
    }

    v18 = swift_isUniquelyReferenced_nonNull_native();
    if (v18 && v17 <= v13[3] >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v48 = v16 + v15;
      }

      else
      {
        v48 = v16;
      }

      v13 = sub_22B32D1C8(v18, v48, 1, v13);
      if (*(v14 + 16))
      {
LABEL_16:
        v19 = (v13[3] >> 1) - v13[2];
        sub_22B35FF8C();
        if (v19 < v15)
        {
          goto LABEL_95;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = v13[2];
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_97;
          }

          v13[2] = v22;
        }

        goto LABEL_34;
      }
    }

    if (v15)
    {
      goto LABEL_93;
    }

LABEL_34:
    v50 = *(v0 + 144);
    v49 = *(v0 + 152);
    v51 = (*(v0 + 104) + *(*(v0 + 88) + 36));
    v52 = *v51;
    v53 = v51[1];

    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 32) = v4;
    v55 = sub_22B33B28C(v50, v49);
    v57 = v4[2];
    v58 = (v56 & 1) == 0;
    v21 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v21)
    {
      goto LABEL_94;
    }

    v60 = v56;
    if (v4[3] >= v59)
    {
      if ((v54 & 1) == 0)
      {
        v72 = v55;
        sub_22B341930();
        v55 = v72;
      }
    }

    else
    {
      v62 = *(v0 + 144);
      v61 = *(v0 + 152);
      sub_22B33CAA0(v59, v54);
      v55 = sub_22B33B28C(v62, v61);
      if ((v60 & 1) != (v63 & 1))
      {
LABEL_84:

        sub_22B3613BC();
        return;
      }

      v1 = v118;
    }

    v4 = *(v0 + 32);
    v64 = *(v0 + 152);
    if (v60)
    {
      v65 = (v4[7] + 24 * v55);
      *v65 = v13;
      v65[1] = v52;
      v65[2] = v53;
    }

    else
    {
      v66 = *(v0 + 144);
      v4[(v55 >> 6) + 8] |= 1 << v55;
      v67 = (v4[6] + 16 * v55);
      *v67 = v66;
      v67[1] = v64;
      v68 = (v4[7] + 24 * v55);
      *v68 = v13;
      v68[1] = v52;
      v68[2] = v53;
      v69 = v4[2];
      v21 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v21)
      {
        goto LABEL_96;
      }

      v4[2] = v70;
    }

    v8 = *(v0 + 104);
    goto LABEL_5;
  }

  v4 = *(v0 + 112);
  v9 = *(v0 + 120);
LABEL_53:

  v77 = -1;
  v78 = -1 << *(v9 + 32);
  if (-v78 < 64)
  {
    v77 = ~(-1 << -v78);
  }

  v79 = v77 & v9[8];
  v80 = (63 - v78) >> 6;

  v81 = 0;
  v82 = v9;
  while (v79)
  {
    v83 = v79;
LABEL_62:
    v79 = (v83 - 1) & v83;
    if (v82[2])
    {
      v85 = (v9[6] + ((v81 << 10) | (16 * __clz(__rbit64(v83)))));
      v87 = *v85;
      v86 = v85[1];

      v88 = sub_22B33B28C(v87, v86);
      if (v89)
      {
        v90 = (v82[7] + 24 * v88);
        v117 = *v90;
        v119 = v90[1];
        v91 = v90[2];

        v121 = v91;

        v123 = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 24) = v4;
        v92 = sub_22B33B28C(v87, v86);
        v94 = v4[2];
        v95 = (v93 & 1) == 0;
        v21 = __OFADD__(v94, v95);
        v96 = v94 + v95;
        if (v21)
        {
          goto LABEL_98;
        }

        if (v4[3] >= v96)
        {
          if (v123)
          {
            if ((v93 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v124 = v92;
            v105 = v93;
            sub_22B341930();
            v92 = v124;
            if ((v105 & 1) == 0)
            {
              goto LABEL_69;
            }
          }

LABEL_73:
          v103 = v92;

          v4 = *(v0 + 24);
          v104 = (v4[7] + 24 * v103);
          *v104 = v117;
          v104[1] = v119;
          v104[2] = v121;

          v82 = v4;
        }

        else
        {
          v97 = v93;
          sub_22B33CAA0(v96, v123);
          v92 = sub_22B33B28C(v87, v86);
          if ((v97 & 1) != (v98 & 1))
          {
            goto LABEL_84;
          }

          if (v97)
          {
            goto LABEL_73;
          }

LABEL_69:
          v4 = *(v0 + 24);
          v4[(v92 >> 6) + 8] |= 1 << v92;
          v99 = (v4[6] + 16 * v92);
          *v99 = v87;
          v99[1] = v86;
          v100 = (v4[7] + 24 * v92);
          *v100 = v117;
          v100[1] = v119;
          v100[2] = v91;
          v101 = v4[2];
          v21 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v21)
          {
            goto LABEL_99;
          }

          v4[2] = v102;
          v82 = v4;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v84 >= v80)
    {
      break;
    }

    v83 = v9[v84 + 8];
    ++v81;
    if (v83)
    {
      v81 = v84;
      goto LABEL_62;
    }
  }

  v73 = *(v0 + 136);
  v74 = (*(v0 + 128) - 1) & *(v0 + 128);
  *(v0 + 112) = v4;
  *(v0 + 120) = v82;
  if (v74)
  {
    goto LABEL_77;
  }

LABEL_48:
  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= (((1 << *(v0 + 184)) + 63) >> 6))
    {

      v115 = *(v0 + 8);
      v116 = *(v0 + 120);

      v115(v116);
      return;
    }

    v76 = *(v0 + 56);
    v74 = *(v76 + 8 * v75 + 56);
    ++v73;
    if (v74)
    {
      v73 = v75;
      goto LABEL_78;
    }
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

void *sub_22B314D64(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v84 = &v61 - v3;
  v83 = sub_22B35EFAC();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B35FF8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v61 - v10;
  v89 = sub_22B35DDBC();
  v11 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v100 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - v14;
  v16 = sub_22B35DE9C();
  MEMORY[0x28223BE20](v16);
  v72 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = &v61 - v19;
  MEMORY[0x28223BE20](v20);
  v81 = &v61 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = &v61 - v23;
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  v65 = *(a1 + 16);
  if (v65)
  {
    v88 = v6;
    v28 = v25;
    v29 = type metadata accessor for CDTOUPeak(0);
    v30 = 0;
    v64 = v29;
    v31 = *(v29 - 8);
    v63 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v78 = *(v28 + 16);
    v32 = v7 + 16;
    v97 = v7 + 8;
    v85 = (v28 + 56);
    v86 = (v11 + 8);
    v69 = (v28 + 32);
    v68 = (v4 + 16);
    v67 = (v4 + 8);
    v76 = (v28 + 8);
    v62 = *(v31 + 72);
    v94 = MEMORY[0x277D84F90];
    v87 = v7;
    v98 = v16;
    v77 = v28 + 16;
    v70 = v27;
    while (1)
    {
      v66 = v30;
      v34 = v63 + v62 * v30;
      v35 = *(v34 + *(v64 + 28));
      v36 = *(v35 + 16);
      v78(v27, v34 + *(v64 + 24), v16);
      if (v36)
      {
        break;
      }

LABEL_3:
      v33 = v66 + 1;
      (*v76)(v27, v16);
      v30 = v33;
      if (v33 == v65)
      {
        return v94;
      }
    }

    v92 = v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v93 = v35;
    while (1)
    {
      result = sub_22B35F55C();
      if (v36 > *(v35 + 16))
      {
        break;
      }

      v38 = *(v7 + 72);
      v99 = v36 - 1;
      v39 = v92 + v38 * (v36 - 1);
      v40 = *(v7 + 16);
      v41 = v90;
      v95 = v39;
      v96 = v40;
      v42 = v88;
      (v40)(v90);
      sub_22B35FF7C();
      v43 = v15;
      v44 = *(v7 + 8);
      v44(v41, v42);
      sub_22B35DD9C();
      (*v86)(v100, v89);

      v45 = v98;
      (*v85)(v43, 0, 1, v98);
      v79 = v44;
      v46 = *v69;
      v47 = v80;
      (*v69)(v80, v43, v45);
      v48 = v81;
      v46(v81, v27, v45);
      v49 = v32;
      v50 = v78;
      v78(v27, v47, v45);
      v50(v71, v47, v45);
      v50(v72, v48, v45);
      v51 = v82;
      sub_22B35EF9C();
      v52 = v73;
      v53 = v49;
      v96(v73, v95, v42);
      v54 = sub_22B35FF5C();
      v79(v52, v42);
      v55 = *(v75 + 48);
      v56 = v84;
      (*v68)(v84, v51, v83);
      *(v56 + v55) = v54;
      v15 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_22B32D254(0, v94[2] + 1, 1, v94);
      }

      v35 = v93;
      v58 = v94[2];
      v57 = v94[3];
      v16 = v98;
      v27 = v70;
      if (v58 >= v57 >> 1)
      {
        v94 = sub_22B32D254((v57 > 1), v58 + 1, 1, v94);
      }

      (*v67)(v82, v83);
      v59 = *v76;
      (*v76)(v81, v16);
      v59(v80, v16);
      v60 = v94;
      v94[2] = v58 + 1;
      sub_22B2072E4(v84, v60 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v58);
      v32 = v53;
      v36 = v99;
      v7 = v87;
      if (v99 + 1 <= 1)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22B3156C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22B35E0BC();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = sub_22B35DE9C();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v10 = sub_22B36052C();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B315864, 0, 0);
}

uint64_t sub_22B315864()
{
  v66 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v54 = v0[18];
  v56 = v0[17];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v60 = v0[12];
  v62 = v0[14];
  v58 = v0[9];
  log = v0[8];
  v7 = v0[7];
  v8 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[23] = v8;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v0[24] = v9;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v4 + 16);
  v10(v54, v7, v5);
  v10(v56, log, v5);
  (*(v6 + 16))(v62, v58, v60);

  v11 = sub_22B36050C();
  v12 = sub_22B360D0C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[16];
  v20 = v0[13];
  v64 = v0[14];
  v61 = v0[17];
  v63 = v0[12];
  if (v13)
  {
    v57 = v0[20];
    v59 = v0[19];
    v21 = v0[10];
    v22 = v0[11];
    v51 = v12;
    loga = v11;
    v23 = v0[5];
    v24 = v0[6];
    v55 = v0[22];
    v25 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v65 = v50;
    *v25 = 136316162;
    *(v25 + 4) = sub_22B1A7B20(v23, v24, &v65);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_22B1A7B20(v21, v22, &v65);
    *(v25 + 22) = 2080;
    sub_22B316498(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_22B36131C();
    v28 = v27;
    v29 = *(v19 + 8);
    v29(v17, v18);
    v30 = sub_22B1A7B20(v26, v28, &v65);

    *(v25 + 24) = v30;
    *(v25 + 32) = 2080;
    v31 = sub_22B36131C();
    v33 = v32;
    v29(v61, v18);
    v34 = sub_22B1A7B20(v31, v33, &v65);

    *(v25 + 34) = v34;
    *(v25 + 42) = 2080;
    v35 = sub_22B35E06C();
    v37 = v36;
    (*(v20 + 8))(v64, v63);
    v38 = sub_22B1A7B20(v35, v37, &v65);

    *(v25 + 44) = v38;
    _os_log_impl(&dword_22B116000, loga, v51, "[TOU Preprocessor] Process peaks for utility %s, tariffProfile: %s from %s-%s in timezone %s", v25, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v50, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);

    v39 = *(v57 + 8);
    v39(v55, v59);
  }

  else
  {

    (*(v20 + 8))(v64, v63);
    v40 = *(v19 + 8);
    v40(v61, v18);
    v40(v17, v18);
    v39 = *(v15 + 8);
    v39(v14, v16);
  }

  v0[26] = v39;
  v41 = swift_task_alloc();
  v0[27] = v41;
  *v41 = v0;
  v41[1] = sub_22B315D1C;
  v42 = v0[10];
  v43 = v0[11];
  v44 = v0[8];
  v45 = v0[9];
  v46 = v0[6];
  v47 = v0[7];
  v48 = v0[5];

  return sub_22B311150(v47, v44, v42, v43, v48, v46, v45);
}

uint64_t sub_22B315D1C()
{

  return MEMORY[0x2822009F8](sub_22B315E18, 0, 0);
}

uint64_t sub_22B315E18()
{
  if (qword_281408E00 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC80;
  *(v0 + 224) = qword_28140BC80;

  return MEMORY[0x2822009F8](sub_22B315EB0, v1, 0);
}

uint64_t sub_22B315EB0()
{
  v0[29] = sub_22B21A278(v0[10], v0[11], v0[5], v0[6], v0[7], v0[8], 1);

  return MEMORY[0x2822009F8](sub_22B315F2C, 0, 0);
}

uint64_t sub_22B315F2C()
{
  v1 = v0[29];
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_22B314D64(v1, v0[9]);

      goto LABEL_8;
    }

    v3 = v0[24];
    v4 = v0[23];
    v5 = v0[21];
    v6 = v0[19];

    v3(v5, v4, v6);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[26];
    v11 = v0[21];
    v12 = v0[19];
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "[TOU Preprocessor] found empty fetched peak", v13, 2u);
      MEMORY[0x23188F650](v13, -1, -1);
    }

    v10(v11, v12);
  }

  v2 = 0;
LABEL_8:

  v14 = v0[1];

  return v14(v2);
}

uint64_t sub_22B3160B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDTOUPeak(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B31611C(uint64_t a1)
{
  v2 = type metadata accessor for CDTOUPeak(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B316178(uint64_t a1)
{
  v2 = sub_22B35EA4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE10, &qword_22B367088);
    v9 = sub_22B36114C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22B316498(&qword_27D8BAE18, MEMORY[0x277D17688], MEMORY[0x277D17690]);
      v16 = sub_22B36071C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_22B316498(&qword_27D8BAE20, MEMORY[0x277D17688], MEMORY[0x277D17698]);
          v23 = sub_22B36078C();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22B316498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B3164E0(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_22B3564FC(a2, a3);
  if (!v3)
  {
    v6 = v5;
    sub_22B2A534C(2);
    if (v6 >> 62)
    {
      v7 = sub_22B36109C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *a1 = v7;
  }
}

void sub_22B316578(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_22B35E6AC() - 8);
    sub_22B3564FC(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, a2);
    if (v3)
    {
      return;
    }

    if (v11 >> 62)
    {
      v12 = sub_22B36109C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v8;
    v13 = __OFADD__(v7, v12);
    v7 += v12;
    if (v13)
    {
      __break(1u);
      return;
    }
  }

  sub_22B2A534C(2);
  if (!v3)
  {
    *a3 = v7;
  }
}

uint64_t sub_22B3166B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFF8;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_44_0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B316900(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DDDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v4 + 64) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8, MEMORY[0x277D85388]);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B316A30(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFCC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B316C80(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78, MEMORY[0x277D85388]);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B316DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v11, v10, v6);
  *(v13 + v12) = a3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22B31AFA0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_24_0;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22B317000(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B3634B0;
  v5 = sub_22B35DEDC();
  *(v4 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v4 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78, MEMORY[0x277D85388]);
  *(v4 + 32) = v5;
  v6 = sub_22B360CCC();
  sub_22B31AD58(v6, a3);
}

uint64_t sub_22B317130(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_22B35DE9C();
  v25 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DF1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v13);
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v14, v10);
  (*(v7 + 32))(v18 + v16, v9, v25);
  v19 = v27;
  *(v18 + v17) = v26;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22B31AC54;
  *(v20 + 24) = v18;
  aBlock[4] = sub_22B12819C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_27;
  v21 = _Block_copy(aBlock);

  v22 = v19;

  [v22 performBlockAndWait_];
  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

void sub_22B317450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22B3634C0;
  v6 = sub_22B35DEDC();
  *(v5 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  v7 = MEMORY[0x277D85388];
  *(v5 + 64) = sub_22B250330(&qword_281408540, &qword_281408548, 0x277CCAD78, MEMORY[0x277D85388]);
  *(v5 + 32) = v6;
  v8 = sub_22B35DDDC();
  *(v5 + 96) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v5 + 104) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8, v7);
  *(v5 + 72) = v8;
  v9 = sub_22B360CCC();
  sub_22B31AD58(v9, a4);
}

void sub_22B3175E0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v76 = a2;
  v68 = a3;
  v70 = sub_22B35DE9C();
  v66 = *(v70 - 1);
  MEMORY[0x28223BE20](v70);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_22B35DF1C();
  v69 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithEntityName_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v15 = swift_allocObject();
  v75 = xmmword_22B3634B0;
  *(v15 + 16) = xmmword_22B3634B0;
  v64 = a1;
  v16 = sub_22B35DDDC();
  *(v15 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v15 + 64) = sub_22B250330(&qword_281408550, &qword_281408558, 0x277CBEAA8, MEMORY[0x277D85388]);
  *(v15 + 32) = v16;
  v17 = v14;
  v18 = sub_22B360CCC();
  [v14 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v19 = swift_allocObject();
  *(v19 + 16) = v75;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 32) = 0xD000000000000011;
  *(v19 + 40) = 0x800000022B36E380;
  v20 = sub_22B360A3C();

  [v14 setPropertiesToFetch_];

  [v14 setReturnsDistinctResults_];
  [v14 setResultType_];
  sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
  v21 = v80;
  v22 = sub_22B360E9C();
  v23 = v21;
  v67 = v17;
  if (v21)
  {
    if (qword_28140A0C8 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v80 = v10;
  v76 = 0x800000022B36E380;
  if (v22 >> 62)
  {
    v62 = v22;
    v48 = sub_22B36109C();
    v22 = v62;
  }

  else
  {
    v48 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = 0;
  if (!v48)
  {
    v50 = MEMORY[0x277D84F90];
LABEL_30:

    v61 = sub_22B31AA70(v50);

    goto LABEL_31;
  }

  v49 = 0;
  v74 = v22 & 0xFFFFFFFFFFFFFF8;
  *&v75 = v22 & 0xC000000000000001;
  v23 = (v69 + 56);
  v70 = (v69 + 32);
  v71 = (v69 + 48);
  v50 = MEMORY[0x277D84F90];
  v73 = v48;
  while (1)
  {
    if (v75)
    {
      v51 = v22;
      v52 = MEMORY[0x23188EAC0](v49);
    }

    else
    {
      if (v49 >= *(v74 + 16))
      {
        goto LABEL_33;
      }

      v51 = v22;
      v52 = *(v22 + 8 * v49 + 32);
    }

    v53 = v52;
    v54 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    *&v77 = 0xD000000000000011;
    *(&v77 + 1) = v76;
    v55 = [v52 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_22B36102C();
      swift_unknownObjectRelease();
    }

    else
    {

      v77 = 0u;
      v78 = 0u;
    }

    v56 = v80;
    v79[0] = v77;
    v79[1] = v78;
    if (*(&v78 + 1))
    {
      v57 = swift_dynamicCast();
      (*v23)(v9, v57 ^ 1u, 1, v56);
      if ((*v71)(v9, 1, v56) != 1)
      {
        v58 = *v70;
        (*v70)(v72, v9, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_22B32D50C(0, *(v50 + 2) + 1, 1, v50);
        }

        v60 = *(v50 + 2);
        v59 = *(v50 + 3);
        if (v60 >= v59 >> 1)
        {
          v50 = sub_22B32D50C((v59 > 1), v60 + 1, 1, v50);
        }

        *(v50 + 2) = v60 + 1;
        v58(&v50[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v60]);
        goto LABEL_11;
      }
    }

    else
    {
      sub_22B123284(v79, &unk_27D8BA950, &qword_22B364940);
      (*v23)(v9, 1, 1, v56);
    }

    sub_22B123284(v9, &qword_27D8BA970, &unk_22B363560);
LABEL_11:
    ++v49;
    v22 = v51;
    if (v54 == v73)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  swift_once();
LABEL_3:
  v24 = v74;
  v25 = __swift_project_value_buffer(v74, qword_28140BD10);
  swift_beginAccess();
  v26 = v73;
  v27 = v71;
  (*(v73 + 16))(v71, v25, v24);
  v28 = v66;
  v29 = v65;
  v30 = v70;
  (*(v66 + 16))(v65, v64, v70);
  v31 = v23;
  v32 = sub_22B36050C();
  v33 = sub_22B360D1C();

  LODWORD(v80) = v33;
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v77 = v36;
    *v34 = 136315394;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v37 = v32;
    v38 = sub_22B36131C();
    v39 = v30;
    v41 = v40;
    (*(v28 + 8))(v29, v39);
    v42 = sub_22B1A7B20(v38, v41, &v77);
    v43 = v23;
    v44 = v42;

    *(v34 + 4) = v44;
    *(v34 + 12) = 2112;
    v45 = v43;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v46;
    *v35 = v46;
    _os_log_impl(&dword_22B116000, v37, v80, "Failed to fetch session IDs starting after %s: %@", v34, 0x16u);
    sub_22B123284(v35, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x23188F650](v36, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);

    (*(v73 + 8))(v71, v74);
    v47 = v43;
  }

  else
  {

    (*(v28 + 8))(v29, v30);
    (*(v26 + 8))(v27, v24);

    v47 = v23;
  }

  v61 = MEMORY[0x277D84FA0];
LABEL_31:
  *v68 = v61;
}

uint64_t sub_22B318018()
{
  type metadata accessor for LoadSessionBlockManager();
  v0 = swift_allocObject();
  result = sub_22B17499C();
  qword_27D8BB1D0 = v0;
  return result;
}

uint64_t sub_22B318054(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35DF1C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_22B35E6AC();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_22B36052C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3181D8, v1, 0);
}

uint64_t sub_22B3181D8()
{
  v54 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  v8 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v51 = v8;
  v50 = *(v3 + 16);
  v50(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v52 = v0[17];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[11];
  if (v11)
  {
    v46 = v0[11];
    v48 = v10;
    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[8];
    v20 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v20 = 136315138;
    v49 = v12;
    sub_22B35E5CC();
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    log = v9;
    v21 = v19;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v18, v21);
    (*(v14 + 8))(v15, v46);
    v25 = sub_22B1A7B20(v22, v24, &v53);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22B116000, log, v48, "Insert LoadSessionEvent with session ID: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x23188F650](v47, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    v26 = *(v13 + 8);
    v26(v52, v49);
  }

  else
  {

    (*(v14 + 8))(v15, v16);
    v26 = *(v13 + 8);
    v26(v52, v12);
  }

  v27 = v0[7];
  if (*(v27 + 120))
  {
    v28 = *(v27 + 112);

    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v31 = sub_22B2A632C();
      v29 = [v31 newBackgroundContext];
      v32 = sub_22B36081C();
      [v29 setTransactionAuthor_];

      [v29 setMergePolicy_];
      [v29 setUndoManager_];
      [v29 setShouldRefreshAfterSave_];
      [v29 setStalenessInterval_];
      [v29 setShouldDeleteInaccessibleFaults_];

      v28 = 0;
    }

    v33 = v0[6];
    v34 = swift_task_alloc();
    *(v34 + 16) = v33;
    *(v34 + 24) = v29;
    v35 = v28;
    v36 = v29;
    sub_22B360E7C();
    v38 = v0[16];
    v39 = v0[14];

    v40 = v0[5];
    v50(v38, v51, v39);
    v41 = sub_22B36050C();
    v42 = sub_22B360D2C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = v40;
      _os_log_impl(&dword_22B116000, v41, v42, "Successfully inserted %ld LoadSessionBlocks", v43, 0xCu);
      MEMORY[0x23188F650](v43, -1, -1);
    }

    else
    {
    }

    v26(v0[16], v0[14]);

    v37 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v30 = 7;
    swift_willThrow();

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_22B3187AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B36052C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B318878, v1, 0);
}

uint64_t sub_22B318878()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *(v9 + 16);

    _os_log_impl(&dword_22B116000, v6, v7, "Insert %ld LoadSessionEvents", v10, 0xCu);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
  }

  v11 = v0[7];
  v12 = *(v0[9] + 8);
  v12(v0[11], v0[8]);
  if (*(v11 + 120))
  {
    v13 = *(v0[7] + 112);
    v34 = v5;

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v16 = sub_22B2A632C();
      v14 = [v16 newBackgroundContext];
      v17 = sub_22B36081C();
      [v14 setTransactionAuthor_];

      [v14 setMergePolicy_];
      [v14 setUndoManager_];
      [v14 setShouldRefreshAfterSave_];
      [v14 setStalenessInterval_];
      [v14 setShouldDeleteInaccessibleFaults_];

      v13 = 0;
    }

    v18 = v0[6];
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = v14;
    v20 = v13;
    v21 = v14;
    sub_22B360E7C();
    v23 = v0[10];
    v24 = v0[8];

    v25 = v0[5];
    v34(v23, v4, v24);

    v26 = sub_22B36050C();
    v27 = sub_22B360D2C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[6];
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = v25;
      v32 = v30;
      *v30 = 134218240;
      *(v30 + 4) = v31;
      *(v30 + 12) = 2048;
      *(v30 + 14) = *(v29 + 16);

      _os_log_impl(&dword_22B116000, v26, v27, "Successfully inserted %ld LoadSessionBlocks from %ld events", v32, 0x16u);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    else
    {
    }

    v12(v0[10], v0[8]);

    v22 = v0[1];
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v15 = 7;
    swift_willThrow();

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_22B318D18(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DE9C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B318E34, v1, 0);
}

uint64_t sub_22B318E34()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadSessionBlocks with session end before: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B3166B0(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B319204(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B319320, v1, 0);
}

uint64_t sub_22B319320()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadSessionBlocks for site ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B316A30(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B3196F0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22B35DF1C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B31980C, v1, 0);
}

uint64_t sub_22B31980C()
{
  v39 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[5];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  if (v11)
  {
    v37 = v0[10];
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22B36131C();
    v36 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v38);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v35, "Delete LoadSessionBlocks for home ID: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v36, v37);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[6];
  v25 = *(v24 + 120);
  if (v25)
  {
    v26 = *(v24 + 112);

    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v28 = sub_22B2A632C();
      v27 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v27 setTransactionAuthor_];

      [v27 setMergePolicy_];
      [v27 setUndoManager_];
      [v27 setShouldRefreshAfterSave_];
      [v27 setStalenessInterval_];
      [v27 setShouldDeleteInaccessibleFaults_];

      v26 = 0;
    }

    v30 = v0[5];
    v31 = v26;
    v32 = v27;
    sub_22B316DB0(v30, v32, v25);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_22B319BDC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DE9C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_22B35DF1C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_22B36052C();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B319D58, v2, 0);
}

uint64_t sub_22B319D58()
{
  v52 = v0;
  if (qword_28140A0C8[0] != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v47 = v0[8];
  loga = v0[10];
  v8 = v0[5];
  v45 = v0[6];
  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v4, v8, v5);
  (*(v7 + 16))(loga, v45, v47);
  v10 = sub_22B36050C();
  v48 = sub_22B360D2C();
  log = v10;
  v11 = os_log_type_enabled(v10, v48);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  if (v11)
  {
    v46 = v0[16];
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v21 = 136315394;
    sub_22B31AC0C(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = v12;
    v43 = v15;
    v22 = sub_22B36131C();
    v24 = v23;
    (*(v17 + 8))(v14, v16);
    v25 = sub_22B1A7B20(v22, v24, &v51);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v26 = sub_22B36131C();
    v28 = v27;
    (*(v18 + 8))(v19, v20);
    v29 = sub_22B1A7B20(v26, v28, &v51);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_22B116000, log, v48, "Delete LoadSessionBlocks for home ID: %s with session ends before: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v44, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    (*(v42 + 8))(v46, v43);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v14, v16);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[7];
  v31 = *(v30 + 120);
  if (v31)
  {
    v32 = *(v30 + 112);

    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v34 = sub_22B2A632C();
      v33 = [v34 newBackgroundContext];
      v35 = sub_22B36081C();
      [v33 setTransactionAuthor_];

      [v33 setMergePolicy_];
      [v33 setUndoManager_];
      [v33 setShouldRefreshAfterSave_];
      [v33 setStalenessInterval_];
      [v33 setShouldDeleteInaccessibleFaults_];
    }

    v37 = v0[5];
    v36 = v0[6];
    v38 = v32;
    v39 = v33;
    sub_22B317130(v37, v36, v39, v31);
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_22B31A234(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22B35DE9C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B31A350, v1, 0);
}

uint64_t sub_22B31A350()
{
  v40 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v8 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[10];
  v15 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  if (v11)
  {
    v38 = v0[11];
    v18 = swift_slowAlloc();
    v36 = v10;
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315138;
    sub_22B31AC0C(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v20 = sub_22B36131C();
    v37 = v12;
    v22 = v21;
    (*(v16 + 8))(v14, v17);
    v23 = sub_22B1A7B20(v20, v22, &v39);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22B116000, v9, v36, "Fetch session IDs starting after: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v13 + 8))(v37, v38);
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
  }

  v24 = v0[7];
  if (*(v24 + 120))
  {
    v25 = *(v24 + 112);

    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v28 = sub_22B2A632C();
      v26 = [v28 newBackgroundContext];
      v29 = sub_22B36081C();
      [v26 setTransactionAuthor_];

      [v26 setMergePolicy_];
      [v26 setUndoManager_];
      [v26 setShouldRefreshAfterSave_];
      [v26 setStalenessInterval_];
      [v26 setShouldDeleteInaccessibleFaults_];

      v25 = 0;
    }

    v30 = v0[6];
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    *(v31 + 24) = v26;
    v32 = v25;
    v33 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE30, &qword_22B367148);
    sub_22B360E7C();

    v27 = v0[5];
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  v34 = v0[1];

  return v34(v27);
}

void *sub_22B31A7BC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_22B31A7DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B31A80C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23188E590](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22B32DF50(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t *sub_22B31A904(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v12 = sub_22B128014(0, a2, a3);
    v13 = sub_22B250330(a4, a2, a3, MEMORY[0x277D85378]);
    result = MEMORY[0x23188E590](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x23188EAC0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_22B36109C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22B31AA70(uint64_t a1)
{
  v2 = sub_22B35DF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_22B31AC0C(&unk_27D8BA320, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x23188E590](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_22B32E628(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_22B31AC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22B31AC54()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_22B35DE9C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22B317450(v0 + v2, v0 + v5, v7, v8);
}

void sub_22B31AD58(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22B36081C();
  v16 = [v4 initWithEntityName_];

  [v16 setPredicate_];
  [v16 setResultType_];
  [v16 setFetchBatchSize_];
  while (1)
  {
    [v16 setFetchOffset_];
    [v16 setFetchLimit_];
    sub_22B35F67C();
    v7 = sub_22B360E9C();
    v8 = v7;
    v9 = v7 >> 62;
    if (v7 >> 62)
    {
      break;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = MEMORY[0x23188EEB0]();
    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    for (i = 0; i != v10; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23188EAC0](i, v8);
      }

      else
      {
        v14 = *(v8 + 8 * i + 32);
      }

      v15 = v14;
      [a2 deleteObject_];
    }

    objc_autoreleasePoolPop(v12);
    sub_22B2A534C(2);
    if (v9)
    {
      v6 = sub_22B36109C();
    }

    else
    {
      v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    [a2 reset];
    if (v6 <= 99)
    {
      goto LABEL_16;
    }
  }

  v10 = sub_22B36109C();
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_15:

LABEL_16:
  [a2 reset];
}

uint64_t sub_22B31B024(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + v5);
  v7 = *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v4, v6, v7);
}

unint64_t HomeEnergyError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x6C706D6920746F4ELL;
      break;
    case 9:
      result = 0x69746E6520746F4ELL;
      break;
    case 0xA:
      result = 0x746F6E2065746953;
      break;
    case 0xB:
      result = 0x6E6F697461636F4CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x74694B64756F6C43;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x10:
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
    case 0x1E:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x20656E6F5A204B43;
      break;
    case 0x17:
      result = 0xD00000000000001ALL;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x1A:
      result = 0xD000000000000029;
      break;
    case 0x1B:
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0x6920444965746953;
      break;
    case 0x1D:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

HomeEnergyDaemon::HomeEnergyError_optional __swiftcall HomeEnergyError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 13;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 13:
LABEL_26:
      *v1 = v3;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    default:
      *v1 = 31;
      break;
  }

  return rawValue;
}

unint64_t sub_22B31B684()
{
  result = qword_27D8BAE38;
  if (!qword_27D8BAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BAE38);
  }

  return result;
}

uint64_t sub_22B31B6D8()
{
  v1 = *v0;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v1);
  return sub_22B3614DC();
}

uint64_t sub_22B31B74C(uint64_t a1)
{
  v2 = *v1;
  sub_22B36149C();
  MEMORY[0x23188EDD0](v2);
  return sub_22B3614DC();
}

uint64_t sub_22B31B7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B31B958();
  v5 = sub_22B123628();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeEnergyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B31B958()
{
  result = qword_281408E28[0];
  if (!qword_281408E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281408E28);
  }

  return result;
}

void sub_22B31B9AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v156 = a6;
  v163 = a5;
  v10 = sub_22B36052C();
  v161 = *(v10 - 8);
  v162 = v10;
  MEMORY[0x28223BE20](v10);
  v150 = v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v159 = v145 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = v145 - v15;
  v152 = sub_22B35DE9C();
  v154 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v17 = v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = v145 - v19;
  v20 = sub_22B35D8BC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v153 = v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v160 = v145 - v24;
  MEMORY[0x28223BE20](v25);
  v148 = v145 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v145 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = (v145 - v32);
  v157 = a4;
  MEMORY[0x23188BC90](v31);
  v158 = v21;
  v34 = *(v21 + 56);
  v166 = v20;
  v35 = v34(v33, 0, 1, v20);
  v36 = MEMORY[0x23188EEB0](v35);
  v147 = a2;
  v37 = v155;
  sub_22B31EB78(a2, a3, 2, v33, 1, a1, v164);
  v155 = v37;
  if (v37)
  {
    objc_autoreleasePoolPop(v36);
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v36);
    sub_22B123284(v33, &qword_27D8BA3E8, &unk_22B364790);
    if (v164[0] >> 62)
    {
      v38 = sub_22B36109C();
    }

    else
    {
      v38 = *((v164[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v158;
    v40 = v159;
    v41 = v160;

    if (v38)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v43 = v162;
      v44 = __swift_project_value_buffer(v162, qword_28140BD10);
      swift_beginAccess();
      v45 = v161;
      (*(v161 + 16))(v40, v44, v43);
      v46 = *(v39 + 16);
      v47 = v41;
      v48 = v163;
      v49 = v166;
      v46(v47, v163, v166);
      v50 = v153;
      v46(v153, v48, v49);
      v51 = sub_22B36050C();
      v52 = sub_22B360D2C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v150 = v53;
        v163 = swift_slowAlloc();
        v165[0] = v163;
        *v53 = 136315394;
        v54 = v151;
        LODWORD(v158) = v52;
        v55 = v160;
        sub_22B35D89C();
        v149 = sub_22B321D18(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v56 = v154;
        v57 = v152;
        v58 = sub_22B36131C();
        v60 = v59;
        v154 = *(v56 + 8);
        (v154)(v54, v57);
        v157 = v51;
        v61 = *(v39 + 8);
        v61(v55, v49);
        v62 = sub_22B1A7B20(v58, v60, v165);

        v63 = v150;
        *(v150 + 4) = v62;
        *(v63 + 6) = 2080;
        v64 = v153;
        sub_22B35D86C();
        v65 = sub_22B36131C();
        v67 = v66;
        (v154)(v54, v57);
        v68 = v156;
        v61(v64, v166);
        v69 = sub_22B1A7B20(v65, v67, v165);

        *(v63 + 14) = v69;
        v70 = v157;
        _os_log_impl(&dword_22B116000, v157, v158, "historical guidance already exists in cache for interval: %s %s", v63, 0x16u);
        v71 = v163;
        swift_arrayDestroy();
        MEMORY[0x23188F650](v71, -1, -1);
        MEMORY[0x23188F650](v63, -1, -1);

        (*(v161 + 8))(v159, v162);
        v72 = 1;
      }

      else
      {

        v103 = *(v39 + 8);
        v103(v50, v49);
        v103(v160, v49);
        (*(v45 + 8))(v40, v43);
        v72 = 1;
        v68 = v156;
      }
    }

    else
    {
      v145[1] = a3;
      v146 = a1;
      MEMORY[0x23188BC90](v42);
      v73 = v151;
      sub_22B35D89C();
      v74 = v17;
      v76 = v39 + 8;
      v75 = *(v39 + 8);
      v75(v29, v166);
      sub_22B35D89C();
      v159 = sub_22B321D18(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v77 = v152;
      LODWORD(v160) = sub_22B36074C();
      v79 = v154 + 8;
      v78 = *(v154 + 8);
      v78(v74, v77);
      v80 = (v78)(v73, v77);
      MEMORY[0x23188BC90](v80);
      sub_22B35D86C();
      v153 = v75;
      v154 = v76;
      v75(v29, v166);
      sub_22B35D86C();
      v81 = sub_22B36074C();
      v78(v74, v77);
      v82 = v77;
      v83 = v79;
      v159 = v78;
      v78(v73, v82);
      v84 = v81 | v160;
      v85 = v162;
      v86 = v150;
      if ((v81 | v160))
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v87 = __swift_project_value_buffer(v85, qword_28140BD10);
        swift_beginAccess();
        v88 = v149;
        (*(v161 + 16))(v149, v87, v85);
        v89 = v148;
        v90 = v166;
        (*(v158 + 16))(v148, v163, v166);
        v91 = sub_22B36050C();
        v92 = sub_22B360D2C();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          LODWORD(v160) = v84;
          v94 = v93;
          v95 = swift_slowAlloc();
          v164[0] = v95;
          *v94 = 136315138;
          sub_22B321D18(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
          v96 = sub_22B36131C();
          v97 = v90;
          v99 = v98;
          (v153)(v89, v97);
          v100 = sub_22B1A7B20(v96, v99, v164);

          *(v94 + 4) = v100;
          _os_log_impl(&dword_22B116000, v91, v92, "historical guidance with interval %s is partial", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          v101 = v95;
          v85 = v162;
          MEMORY[0x23188F650](v101, -1, -1);
          v102 = v94;
          v84 = v160;
          MEMORY[0x23188F650](v102, -1, -1);
        }

        else
        {

          (v153)(v89, v90);
        }

        (*(v161 + 8))(v88, v85);
        v86 = v150;
      }

      sub_22B35D82C();
      swift_allocObject();
      sub_22B35D81C();
      sub_22B35E37C();
      sub_22B321D18(&qword_281409190, MEMORY[0x277D17FC8], MEMORY[0x277D17FD0]);
      v104 = v155;
      v105 = sub_22B35D80C();
      v107 = v146;
      if (v104)
      {

        v68 = v156;
        v108 = v161;
        v131 = [objc_opt_self() processInfo];
        v132 = [v131 processName];

        v133 = sub_22B36084C();
        v135 = v134;

        LOWORD(v164[0]) = 513;
        BYTE2(v164[0]) = 5;
        v164[1] = v133;
        v164[2] = v135;
        v164[3] = 0;
        static AutoBugCaptureManager.sendIssue(_:)(v164);

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v136 = __swift_project_value_buffer(v85, qword_28140BD10);
        swift_beginAccess();
        (*(v108 + 16))(v86, v136, v85);
        v137 = v104;
        v138 = sub_22B36050C();
        v139 = sub_22B360D1C();

        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          *v140 = 138543362;
          v142 = v104;
          v143 = _swift_stdlib_bridgeErrorToNSError();
          *(v140 + 4) = v143;
          *v141 = v143;
          _os_log_impl(&dword_22B116000, v138, v139, "Error preparing historical guidance data for inserting into cache. %{public}@", v140, 0xCu);
          sub_22B123284(v141, &unk_27D8BAA90, &unk_22B362BC0);
          v144 = v141;
          v85 = v162;
          MEMORY[0x23188F650](v144, -1, -1);
          MEMORY[0x23188F650](v140, -1, -1);
        }

        else
        {
        }

        (*(v108 + 8))(v86, v85);
        v72 = 0;
      }

      else
      {
        v109 = v105;
        v110 = v106;

        v111 = objc_opt_self();
        v112 = sub_22B36081C();
        v154 = v83;
        v113 = v112;
        v114 = [v111 insertNewObjectForEntityForName:v112 inManagedObjectContext:*(v107 + 48)];

        v115 = sub_22B36081C();
        v116 = sub_22B36081C();
        [v114 setValue:v115 forKeyPath:v116];

        v158 = v109;
        v166 = v110;
        v117 = sub_22B35DCCC();
        v118 = sub_22B36081C();
        [v114 &off_2786FB278];

        v119 = v151;
        sub_22B35D89C();
        v120 = sub_22B35DDDC();
        v121 = v152;
        LODWORD(v160) = v84;
        v122 = v159;
        (v159)(v119, v152);
        v123 = sub_22B36081C();
        [v114 setValue:v120 forKeyPath:v123];

        sub_22B35D86C();
        v124 = sub_22B35DDDC();
        (v122)(v119, v121);
        v125 = sub_22B36081C();
        [v114 setValue:v124 forKeyPath:v125];

        v126 = sub_22B360ABC();
        v127 = sub_22B36081C();
        [v114 setValue:v126 forKeyPath:v127];

        v128 = sub_22B36144C();
        v129 = sub_22B36081C();
        [v114 setValue:v128 forKeyPath:v129];

        v130 = *(v146 + 48);
        sub_22B2A534C(2);
        v68 = v156;
        sub_22B12F174(v158, v166);

        v72 = 1;
      }
    }

    *v68 = v72;
  }
}

void sub_22B31CA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v72 = a1;
  v73 = a4;
  v71 = a5;
  v7 = sub_22B36052C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B35DE9C();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v62 - v15;
  v17 = sub_22B35D8BC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_22B36081C();
  v22 = [v20 initWithEntityName_];

  v78 = MEMORY[0x277D84F90];
  v77 = v22;
  [v22 setResultType_];
  v23 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B3634B0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_22B1280E4();
  *(v24 + 32) = v72;
  *(v24 + 40) = a2;

  v72 = v23;
  v25 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  v70 = v25;
  sub_22B360A9C();
  sub_22B170BE0(a3, v16, &qword_27D8BA3E8, &unk_22B364790);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_22B123284(v16, &qword_27D8BA3E8, &unk_22B364790);
    v26 = v77;
    v27 = v75;
    v28 = v73;
  }

  else
  {
    v29 = *(v18 + 32);
    v64 = v17;
    v29(v74, v16, v17);
    v62[1] = "historicalGuidance";
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22B3634C0;
    sub_22B35D89C();
    v31 = sub_22B35DDDC();
    v32 = v67;
    v63 = v18;
    v33 = *(v66 + 8);
    v33(v13, v67);
    v34 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v30 + 56) = v34;
    v35 = sub_22B1D7CDC();
    *(v30 + 64) = v35;
    *(v30 + 32) = v31;
    v36 = v65;
    sub_22B35D86C();
    v37 = sub_22B35DDDC();
    v33(v36, v32);
    *(v30 + 96) = v34;
    *(v30 + 104) = v35;
    *(v30 + 72) = v37;
    v38 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v63 + 8))(v74, v64);
    v26 = v77;
    v27 = v75;
    v28 = v73;
  }

  v39 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v40 = sub_22B360A3C();

  v41 = [v39 initWithType:1 subpredicates:v40];

  [v26 setPredicate_];
  v42 = *(v28 + 48);
  sub_22B35FDAC();
  v43 = v42;
  v44 = sub_22B360E9C();
  v45 = v76;
  if (v27)
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v46 = v69;
    v47 = __swift_project_value_buffer(v69, qword_28140BD10);
    swift_beginAccess();
    v48 = v68;
    (*(v68 + 16))(v45, v47, v46);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22B116000, v49, v50, "Error deleting entry from cache.", v51, 2u);
      MEMORY[0x23188F650](v51, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v45, v46);
    v57 = 0;
    v58 = v71;
    goto LABEL_25;
  }

  v52 = v44;

  if (!(v52 >> 62))
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_15;
    }

LABEL_24:

    v59 = *(v28 + 48);
    sub_22B2A534C(2);
    v60 = v70;
    v58 = v71;
    v61 = v77;

    v57 = 1;
LABEL_25:
    *v58 = v57;
    return;
  }

  v53 = sub_22B36109C();
  if (!v53)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (v53 >= 1)
  {
    for (i = 0; i != v53; ++i)
    {
      if ((v52 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x23188EAC0](i, v52);
      }

      else
      {
        v55 = *(v52 + 8 * i + 32);
      }

      v56 = v55;
      [*(v28 + 48) deleteObject_];
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_22B31D294(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v98 = a5;
  v107 = *MEMORY[0x277D85DE8];
  v91 = sub_22B35DE9C();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B36052C();
  v94 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v95 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v86 - v14;
  v15 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v16 = sub_22B36081C();
  v99 = [v15 initWithEntityName_];

  v102 = MEMORY[0x277D84F90];
  if (a2)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22B3634B0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_22B1280E4();
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;

    v18 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();
  }

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  v88 = xmmword_22B3634B0;
  *(v19 + 16) = xmmword_22B3634B0;
  v20 = sub_22B35DDDC();
  *(v19 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v19 + 64) = sub_22B1D7CDC();
  *(v19 + 32) = v20;
  v21 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  sub_22B360A9C();
  v22 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v23 = sub_22B360A3C();
  v24 = [v22 initWithType:1 subpredicates:v23];

  v25 = v99;
  v97 = v24;
  [v99 setPredicate_];
  v26 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v26 setResultType_];
  v27 = *(a4 + 48);
  *&v105 = 0;
  v96 = v26;
  v28 = [v27 executeRequest:v26 error:&v105];
  if (v28)
  {
    v29 = v28;
    v95 = v5;
    v30 = v105;

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      if ([v31 result])
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v103 = 0u;
        v104 = 0u;
      }

      v105 = v103;
      v106 = v104;
      if (*(&v104 + 1))
      {
        v93 = v21;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA858, &qword_22B365EF8);
        if (swift_dynamicCast())
        {
          v56 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
          inited = swift_initStackObject();
          *(inited + 16) = v88;
          *&v105 = sub_22B36084C();
          *(&v105 + 1) = v58;
          sub_22B36110C();
          *(inited + 96) = v55;
          *(inited + 72) = v56;
          sub_22B321BDC(inited);
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
          v59 = objc_opt_self();
          v60 = sub_22B3606CC();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_22B363650;
          v62 = *(a4 + 48);
          *(v61 + 32) = v62;
          sub_22B128014(0, &qword_281408580, 0x277CBE440);
          v63 = v62;
          v64 = sub_22B360A3C();

          [v59 mergeChangesFromRemoteContextSave:v60 intoContexts:v64];

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v65 = v11;
          v66 = __swift_project_value_buffer(v11, qword_28140BD10);
          swift_beginAccess();
          v67 = v94;
          v68 = *(v94 + 16);
          v69 = v92;
          *&v88 = v65;
          v68(v92, v66, v65);
          v70 = v90;
          v71 = v89;
          v72 = v91;
          (*(v90 + 16))(v89, a3, v91);
          v73 = sub_22B36050C();
          v74 = sub_22B360D2C();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v87 = v73;
            v76 = v75;
            v77 = v71;
            v86 = swift_slowAlloc();
            *&v103 = v86;
            *v76 = 136315138;
            sub_22B321D18(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v78 = sub_22B36131C();
            v79 = v72;
            v81 = v80;
            (*(v70 + 8))(v77, v79);
            v82 = sub_22B1A7B20(v78, v81, &v103);

            *(v76 + 4) = v82;
            v83 = v74;
            v84 = v87;
            _os_log_impl(&dword_22B116000, v87, v83, "Sucessfully deleted data for Historical Guidance older than %s", v76, 0xCu);
            v85 = v86;
            __swift_destroy_boxed_opaque_existential_0(v86);
            MEMORY[0x23188F650](v85, -1, -1);
            MEMORY[0x23188F650](v76, -1, -1);

            (*(v67 + 8))(v92, v88);
          }

          else
          {

            (*(v70 + 8))(v71, v72);
            (*(v67 + 8))(v69, v88);
          }

          *v98 = 1;
          return;
        }

LABEL_28:
        *v98 = 0;
        return;
      }
    }

    else
    {

      v105 = 0u;
      v106 = 0u;
    }

    sub_22B123284(&v105, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_28;
  }

  v93 = v21;
  v33 = v105;
  v34 = sub_22B35DB9C();

  swift_willThrow();
  v101 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  sub_22B128014(0, &qword_281408530, 0x277CCA9B8);
  swift_dynamicCast();

  v35 = v100;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  v37 = v94;
  v38 = v95;
  (*(v94 + 16))(v95, v36, v11);
  v39 = v35;
  v40 = sub_22B36050C();
  v41 = sub_22B360D1C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v105 = v43;
    *v42 = 136446210;
    v44 = [v39 localizedDescription];
    v45 = sub_22B36084C();
    *&v88 = v11;
    v46 = v45;
    v48 = v47;

    v25 = v99;
    v49 = sub_22B1A7B20(v46, v48, &v105);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_22B116000, v40, v41, "Failed to batch delete historical guidance data %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x23188F650](v43, -1, -1);
    MEMORY[0x23188F650](v42, -1, -1);

    (*(v37 + 8))(v95, v88);
  }

  else
  {

    (*(v37 + 8))(v38, v11);
  }

  v50 = [objc_opt_self() processInfo];
  v51 = [v50 processName];

  v52 = sub_22B36084C();
  v54 = v53;

  LOWORD(v105) = 513;
  BYTE2(v105) = 8;
  *(&v105 + 1) = v52;
  v106 = v54;
  static AutoBugCaptureManager.sendIssue(_:)(&v105);

  *v98 = 0;
}

unint64_t sub_22B31E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v23 - v9);
  v11 = sub_22B35D8BC();
  v12 = (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v13 = MEMORY[0x23188EEB0](v12);
  sub_22B31EB78(a1, a2, 2, v10, 0, a3, &v24);
  objc_autoreleasePoolPop(v13);
  sub_22B123284(v10, &qword_27D8BA3E8, &unk_22B364790);
  v14 = v24;
  if (!(v24 >> 62))
  {
    v15 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_10:

    v21 = 1;
    goto LABEL_11;
  }

  v15 = sub_22B36109C();
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v18 = MEMORY[0x23188EAC0](result, v14);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v14 + 8 * result + 32);
LABEL_8:
    v19 = v18;

    v20 = [v19 intervalEnd];

    sub_22B35DE5C();
    v21 = 0;
LABEL_11:
    v22 = sub_22B35DE9C();
    return (*(*(v22 - 8) + 56))(a4, v21, 1, v22);
  }

  __break(1u);
  return result;
}

void sub_22B31E274(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a4;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FDAC();
  v12 = sub_22B35FD9C();
  [v12 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22B3634B0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_22B1280E4();
  v30 = a1;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  v14 = sub_22B360CCC();
  [v12 setPredicate_];
  v15 = *(a3 + 48);
  v16 = sub_22B360E8C();
  if (v4)
  {

    v17 = [objc_opt_self() processInfo];
    v18 = [v17 processName];

    v19 = sub_22B36084C();
    v21 = v20;

    v34 = 513;
    v35 = 10;
    v36 = v19;
    v37 = v21;
    v38 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v34);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = v31;
    v23 = __swift_project_value_buffer(v31, qword_28140BD10);
    swift_beginAccess();
    v24 = v32;
    (*(v32 + 16))(v11, v23, v22);

    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_22B1A7B20(v30, a2, &v39);
      _os_log_impl(&dword_22B116000, v25, v26, "Failed to fetch exact historical guidance cache entry for %{private}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v24 + 8))(v11, v22);
    v29 = 0;
  }

  else
  {
    v29 = v16;
  }

  *v33 = v29;
}

void sub_22B31E654(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v53 = a3;
  v55 = a4;
  v6 = sub_22B36052C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v52 = sub_22B35FDAC();
  v51 = sub_22B35FD9C();
  [v51 setResultType_];
  v15 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v49 = "intervalEnd <= %@";
  v50 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22B364620;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_22B1280E4();
  v44 = a1;
  v45 = a2;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  sub_22B35D89C();
  v17 = sub_22B35DDDC();
  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v16 + 96) = v19;
  v20 = sub_22B1D7CDC();
  *(v16 + 104) = v20;
  *(v16 + 72) = v17;
  sub_22B35D86C();
  v21 = sub_22B35DDDC();
  v22 = v8;
  v23 = v51;
  v18(v11, v22);
  *(v16 + 136) = v19;
  *(v16 + 144) = v20;
  *(v16 + 112) = v21;
  v24 = sub_22B360CCC();
  [v23 setPredicate_];
  v25 = *(v53 + 48);
  v26 = v54;
  v27 = sub_22B360E8C();
  if (v26)
  {

    v28 = [objc_opt_self() processInfo];
    v29 = [v28 processName];

    v30 = sub_22B36084C();
    v32 = v31;

    v56 = 513;
    v57 = 10;
    v58 = v30;
    v59 = v32;
    v60 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v56);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v33 = v48;
    v34 = __swift_project_value_buffer(v48, qword_28140BD10);
    swift_beginAccess();
    v36 = v46;
    v35 = v47;
    (*(v47 + 16))(v46, v34, v33);
    v37 = v45;

    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_22B1A7B20(v44, v37, &v61);
      _os_log_impl(&dword_22B116000, v38, v39, "Failed to fetch exact historical guidance cache entry for %{private}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23188F650](v41, -1, -1);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    (*(v35 + 8))(v36, v33);
    v42 = 0;
  }

  else
  {
    v43 = v27;

    v42 = v43 > 0;
  }

  *v55 = v42;
}

void sub_22B31EB78(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (**a4)(char *, uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v130 = a6;
  LODWORD(v124) = a5;
  v127 = a4;
  v135 = a7;
  v10 = sub_22B36052C();
  v133 = *(v10 - 8);
  v134 = v10;
  MEMORY[0x28223BE20](v10);
  v132 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22B35DE9C();
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v120 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v112 - v14;
  MEMORY[0x28223BE20](v15);
  v118 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v117 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v116 = &v112 - v20;
  MEMORY[0x28223BE20](v21);
  v115 = &v112 - v22;
  MEMORY[0x28223BE20](v23);
  v114 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v113 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v122 = &v112 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v112 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v112 - v33;
  v35 = sub_22B35D8BC();
  v138 = *(v35 - 8);
  v139 = v35;
  MEMORY[0x28223BE20](v35);
  v137 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22B35FDAC();
  v140 = sub_22B35FD9C();
  [v140 setResultType_];
  v141[0] = MEMORY[0x277D84F90];
  v37 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22B3634B0;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = sub_22B1280E4();
  v121 = a1;
  *(v38 + 32) = a1;
  *(v38 + 40) = a2;
  v125 = a2;

  v136 = v37;
  v39 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  sub_22B360A9C();
  if (a3 == 2)
  {
    v40 = v140;
  }

  else
  {
    v40 = v140;
    if (a3)
    {
      v41 = sub_22B360CCC();
      MEMORY[0x23188E350]();
      if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
        v40 = v140;
      }

      sub_22B360A9C();
    }
  }

  sub_22B170BE0(v127, v34, &qword_27D8BA3E8, &unk_22B364790);
  v42 = v138;
  v43 = v139;
  v44 = (*(v138 + 48))(v34, 1, v139);
  v128 = v39;
  if (v44 == 1)
  {
    sub_22B123284(v34, &qword_27D8BA3E8, &unk_22B364790);
    v46 = v133;
    v45 = v134;
    v47 = v132;
  }

  else
  {
    (*(v42 + 32))(v137, v34, v43);
    v48 = (v123 + 8);
    if (v124)
    {
      v124 = "intervalStart >= %@)";
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_22B3634C0;
      sub_22B35D89C();
      v50 = sub_22B35DDDC();
      v51 = *v48;
      v52 = v126;
      (*v48)(v31, v126);
      v53 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
      *(v49 + 56) = v53;
      v54 = sub_22B1D7CDC();
      *(v49 + 64) = v54;
      *(v49 + 32) = v50;
      v55 = v122;
      sub_22B35D86C();
      v56 = sub_22B35DDDC();
      v51(v55, v52);
      *(v49 + 96) = v53;
      *(v49 + 104) = v54;
      *(v49 + 72) = v56;
    }

    else
    {
      v124 = "historicalGuidanceCache";
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_22B365780;
      sub_22B35D89C();
      v58 = sub_22B35DDDC();
      v127 = v48;
      v59 = *v48;
      v60 = v126;
      (*v48)(v31, v126);
      v61 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
      *(v57 + 56) = v61;
      v62 = v61;
      v63 = sub_22B1D7CDC();
      *(v57 + 64) = v63;
      *(v57 + 32) = v58;
      v64 = v122;
      sub_22B35D89C();
      v65 = sub_22B35DDDC();
      v66 = v60;
      v59(v64, v60);
      v67 = v59;
      *(v57 + 96) = v62;
      *(v57 + 104) = v63;
      *(v57 + 72) = v65;
      v68 = v113;
      sub_22B35D86C();
      v69 = sub_22B35DDDC();
      v67(v68, v66);
      *(v57 + 136) = v62;
      *(v57 + 144) = v63;
      *(v57 + 112) = v69;
      v70 = v114;
      sub_22B35D89C();
      v71 = sub_22B35DDDC();
      v72 = v126;
      v67(v70, v126);
      *(v57 + 176) = v62;
      *(v57 + 184) = v63;
      *(v57 + 152) = v71;
      v73 = v115;
      sub_22B35D86C();
      v74 = sub_22B35DDDC();
      v67(v73, v72);
      *(v57 + 216) = v62;
      *(v57 + 224) = v63;
      v123 = v63;
      *(v57 + 192) = v74;
      v75 = v116;
      sub_22B35D89C();
      v76 = sub_22B35DDDC();
      v67(v75, v72);
      *(v57 + 256) = v62;
      *(v57 + 264) = v63;
      *(v57 + 232) = v76;
      v77 = v117;
      sub_22B35D86C();
      v78 = sub_22B35DDDC();
      v67(v77, v72);
      v79 = v123;
      *(v57 + 296) = v62;
      *(v57 + 304) = v79;
      *(v57 + 272) = v78;
      v80 = v118;
      sub_22B35D86C();
      v81 = sub_22B35DDDC();
      v67(v80, v72);
      *(v57 + 336) = v62;
      *(v57 + 344) = v79;
      *(v57 + 312) = v81;
      v82 = v119;
      sub_22B35D86C();
      v83 = sub_22B35DDDC();
      v67(v82, v72);
      *(v57 + 376) = v62;
      *(v57 + 384) = v79;
      *(v57 + 352) = v83;
      v84 = v120;
      sub_22B35D89C();
      v85 = sub_22B35DDDC();
      v67(v84, v72);
      *(v57 + 416) = v62;
      *(v57 + 424) = v79;
      *(v57 + 392) = v85;
    }

    v86 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    v40 = v140;
    v46 = v133;
    v45 = v134;
    v47 = v132;
    v87 = v138;
    if (*((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v87 + 8))(v137, v139);
  }

  v88 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v89 = sub_22B360A3C();

  v90 = [v88 initWithType:1 subpredicates:v89];

  [v40 setPredicate_];
  v91 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v92 = sub_22B36081C();
  v93 = [v91 initWithKey:v92 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_22B363650;
  *(v94 + 32) = v93;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v95 = v93;
  v96 = sub_22B360A3C();

  [v40 setSortDescriptors_];

  v97 = *(v130 + 48);
  v98 = v131;
  v99 = sub_22B360E9C();
  if (v98)
  {

    v100 = [objc_opt_self() processInfo];
    v101 = [v100 processName];

    v102 = sub_22B36084C();
    v104 = v103;

    LOWORD(v141[0]) = 513;
    BYTE2(v141[0]) = 10;
    v141[1] = v102;
    v141[2] = v104;
    v141[3] = 0;
    static AutoBugCaptureManager.sendIssue(_:)(v141);

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v105 = __swift_project_value_buffer(v45, qword_28140BD10);
    swift_beginAccess();
    (*(v46 + 16))(v47, v105, v45);
    v106 = v125;

    v107 = sub_22B36050C();
    v108 = sub_22B360D1C();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v142 = v110;
      *v109 = 136380675;
      *(v109 + 4) = sub_22B1A7B20(v121, v106, &v142);
      _os_log_impl(&dword_22B116000, v107, v108, "Failed to fetch historical guidance cache entry for %{private}s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v110);
      MEMORY[0x23188F650](v110, -1, -1);
      MEMORY[0x23188F650](v109, -1, -1);
    }

    (*(v46 + 8))(v47, v45);
    *v135 = MEMORY[0x277D84F90];
  }

  else
  {
    v111 = v99;

    *v135 = v111;
  }
}

uint64_t sub_22B31F998()
{
  type metadata accessor for HistoricalGuidanceCacheManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  *(v0 + 112) = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);

  qword_28140BC30 = v0;
  return result;
}

uint64_t sub_22B31FA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[0] = v5;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Add historical guidance to cache", v17, 2u);
    v23 = v22;
    a4 = v21;
    a3 = v20;
    a2 = v19;
    a1 = v18;
    v5 = v29[0];
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v24 = (*(v11 + 8))(v13, v10);
  v25 = *(v5 + 112);
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 48);
  MEMORY[0x28223BE20](v24);
  v29[-6] = v25;
  v29[-5] = a1;
  v29[-4] = a2;
  v29[-3] = a3;
  v29[-2] = a4;

  v27 = v26;
  sub_22B360E7C();

  return v30;
}

void sub_22B31FCDC(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v13 = MEMORY[0x23188EEB0]();
  sub_22B31B9AC(a1, a4, a5, a2, a3, &v15);
  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v15;
    [*(a1 + 48) refreshAllObjects];
    *a6 = v14;
  }
}

uint64_t sub_22B31FD94(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v7 = sub_22B35D8BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = *(v8 + 16);
  v41 = a3;
  v16(v10, a3, v7);

  v17 = sub_22B36050C();
  v18 = v11;
  v19 = sub_22B360D2C();

  v20 = os_log_type_enabled(v17, v19);
  v40 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v39 = v4;
    v22 = v21;
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v22 = 136380931;
    *(v22 + 4) = sub_22B1A7B20(v42, a2, v43);
    *(v22 + 12) = 2080;
    sub_22B321D18(&qword_2814091E0, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v37 = v18;
    v23 = sub_22B36131C();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v26 = sub_22B1A7B20(v23, v25, v43);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_22B116000, v17, v19, "check if cache has exact data for %{private}s interval: %s", v22, 0x16u);
    v27 = v38;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v27, -1, -1);
    v28 = v22;
    v4 = v39;
    MEMORY[0x23188F650](v28, -1, -1);

    v29 = (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v29 = (*(v12 + 8))(v14, v18);
  }

  v30 = *(v4 + 112);
  if (!v30)
  {
    return 0;
  }

  v31 = *(v30 + 48);
  MEMORY[0x28223BE20](v29);
  v32 = v42;
  *(&v36 - 4) = v30;
  *(&v36 - 3) = v32;
  v33 = v41;
  *(&v36 - 2) = v40;
  *(&v36 - 1) = v33;

  v34 = v31;
  sub_22B360E7C();

  return LOBYTE(v43[0]);
}

void sub_22B3201CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t)@<X3>, int a5@<W4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v64 = a7;
  LODWORD(v60) = a5;
  v58 = a8;
  v59 = sub_22B36052C();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B35DE9C();
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = sub_22B35D8BC();
  v17 = *(v63 - 8);
  v18 = MEMORY[0x28223BE20](v63);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x23188EEB0](v18);
  v53 = a2;
  v54 = a3;
  v22 = v61;
  sub_22B31EB78(a2, a3, a6, a4, v60, a1, v65);
  if (!v22)
  {
    objc_autoreleasePoolPop(v21);
    v23 = v65[0];
    v57 = a1;
    if (v65[0] >> 62)
    {
      v40 = v65[0];
      v24 = sub_22B36109C();
      v23 = v40;
      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v24 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_4:
        if (v24 >= 1)
        {
          v56 = 0;
          v25 = 0;
          v59 = v17 + 32;
          v60 = v23 & 0xC000000000000001;
          v61 = v23;
          do
          {
            v26 = v24;
            if (v60)
            {
              v27 = MEMORY[0x23188EAC0](v25);
            }

            else
            {
              v27 = *(v23 + 8 * v25 + 32);
            }

            v28 = v27;
            v29 = [v27 intervalStart];
            sub_22B35DE5C();

            v30 = [v28 intervalEnd];
            sub_22B35DE5C();

            sub_22B35D88C();
            v31 = v64;
            v32 = *v64;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v31 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v32 = sub_22B32DAA0(0, v32[2] + 1, 1, v32);
              *v64 = v32;
            }

            v35 = v32[2];
            v34 = v32[3];
            if (v35 >= v34 >> 1)
            {
              v38 = sub_22B32DAA0((v34 > 1), v35 + 1, 1, v32);
              *v64 = v38;
            }

            ++v25;

            v36 = v63;
            v37 = *v64;
            *(v37 + 16) = v35 + 1;
            (*(v17 + 32))(v37 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v35, v20, v36);
            v24 = v26;
            v23 = v61;
          }

          while (v26 != v25);

          v39 = v58;
LABEL_20:
          [*(v57 + 48) refreshAllObjects];
          *v39 = *v64;

          return;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    if (qword_28140A0C8 == -1)
    {
LABEL_17:
      v41 = v59;
      v42 = __swift_project_value_buffer(v59, qword_28140BD10);
      swift_beginAccess();
      v44 = v55;
      v43 = v56;
      (*(v56 + 16))(v55, v42, v41);
      v45 = v54;

      v46 = sub_22B36050C();
      v47 = sub_22B360D2C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v45;
        v51 = v49;
        v66 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_22B1A7B20(v53, v50, &v66);
        _os_log_impl(&dword_22B116000, v46, v47, "empty results for %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x23188F650](v51, -1, -1);
        MEMORY[0x23188F650](v48, -1, -1);
      }

      (*(v43 + 8))(v44, v41);
      v39 = v58;
      goto LABEL_20;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

void sub_22B320734(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t)@<X3>, int a5@<W4>, char a6@<W5>, char **a7@<X6>, uint64_t *a8@<X8>)
{
  v56 = a8;
  v16 = sub_22B36052C();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v54 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x23188EEB0](v17);
  v53 = a2;
  v20 = a2;
  v21 = a3;
  v55 = a1;
  sub_22B31EB78(v20, a3, a6, a4, a5, a1, v59);
  if (!v8)
  {
    objc_autoreleasePoolPop(v19);
    v22 = v59[0];
    if (v59[0] >> 62)
    {
      v41 = v59[0];
      v42 = sub_22B36109C();
      v22 = v41;
      v23 = v42;
      v24 = v57;
      v25 = v58;
      if (v42)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v57;
      v25 = v58;
      if (v23)
      {
LABEL_4:
        if (v23 >= 1)
        {
          v54 = 0;
          v26 = 0;
          v57 = v22 & 0xC000000000000001;
          v58 = v22;
          do
          {
            if (v57)
            {
              v27 = MEMORY[0x23188EAC0](v26);
            }

            else
            {
              v27 = *(v22 + 8 * v26 + 32);
            }

            v28 = v27;
            v29 = [v27 historicalGuidance];
            v30 = sub_22B35DCDC();
            v32 = v31;

            v33 = *a7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a7 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v33 = sub_22B32D0BC(0, *(v33 + 2) + 1, 1, v33);
              *a7 = v33;
            }

            v36 = *(v33 + 2);
            v35 = *(v33 + 3);
            if (v36 >= v35 >> 1)
            {
              *a7 = sub_22B32D0BC((v35 > 1), v36 + 1, 1, v33);
            }

            ++v26;

            v37 = *a7;
            *(v37 + 2) = v36 + 1;
            v38 = &v37[16 * v36];
            *(v38 + 4) = v30;
            *(v38 + 5) = v32;
            v22 = v58;
          }

          while (v23 != v26);

          v39 = v55;
          v40 = v56;
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    if (qword_28140A0C8 == -1)
    {
LABEL_17:
      v43 = __swift_project_value_buffer(v25, qword_28140BD10);
      swift_beginAccess();
      v44 = v54;
      (*(v24 + 16))(v54, v43, v25);

      v45 = sub_22B36050C();
      v46 = sub_22B360D2C();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = v24;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v50 = v21;
        v51 = v49;
        v60 = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_22B1A7B20(v53, v50, &v60);
        _os_log_impl(&dword_22B116000, v45, v46, "empty results for %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x23188F650](v51, -1, -1);
        MEMORY[0x23188F650](v48, -1, -1);

        (*(v47 + 8))(v44, v25);
      }

      else
      {

        (*(v24 + 8))(v44, v25);
      }

      v39 = v55;
      v40 = v56;
LABEL_21:
      [*(v39 + 48) refreshAllObjects];
      *v40 = *a7;

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v19);
  __break(1u);
}

void sub_22B320B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v13 = MEMORY[0x23188EEB0]();
  a5(&v15, a2, a3, a4, a1);
  objc_autoreleasePoolPop(v13);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v14 = v15;
    [*(a1 + 48) refreshAllObjects];
    *a6 = v14;
  }
}

uint64_t sub_22B320C40()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Delete all historical guidance from cache", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 112);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 48);

  v12 = v11;
  sub_22B360E7C();

  return v14[23];
}

void sub_22B320E50(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000017, 0x800000022B36E8A0, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) refreshAllObjects];
    *a2 = v6;
  }
}

uint64_t sub_22B320EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();

  v15 = os_log_type_enabled(v13, v14);
  v33 = a3;
  v34 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v32 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136380675;
    v19 = a3 == 0;
    v20 = a3;
    v21 = v4;
    if (v19)
    {
      v22 = 4999502;
    }

    else
    {
      v22 = a2;
    }

    if (v19)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = v20;
    }

    v24 = sub_22B1A7B20(v22, v23, &v35);

    *(v17 + 4) = v24;
    v4 = v21;
    _os_log_impl(&dword_22B116000, v13, v14, "Delete historical guidance from cache for %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23188F650](v18, -1, -1);
    v25 = v17;
    a1 = v32;
    MEMORY[0x23188F650](v25, -1, -1);
  }

  v26 = (*(v9 + 8))(v11, v8);
  v27 = *(v4 + 112);
  if (!v27)
  {
    return 0;
  }

  v28 = *(v27 + 48);
  MEMORY[0x28223BE20](v26);
  *(&v32 - 4) = v27;
  *(&v32 - 3) = a1;
  v29 = v33;
  *(&v32 - 2) = v34;
  *(&v32 - 1) = v29;

  v30 = v28;
  sub_22B360E7C();

  return v35;
}

void sub_22B3211E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v11 = MEMORY[0x23188EEB0]();
  sub_22B31D294(a3, a4, a2, a1, &v13);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = v13;
    [*(a1 + 48) refreshAllObjects];
    *a5 = v12;
  }
}

void sub_22B32128C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v24 = a1;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_22B1A7B20(v24, a2, &v25);
    _os_log_impl(&dword_22B116000, v12, v13, "Getting last fetched end date for %{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    v17 = v15;
    a3 = v14;
    MEMORY[0x23188F650](v17, -1, -1);
  }

  v18 = (*(v8 + 8))(v10, v7);
  v19 = *(v4 + 112);
  if (v19)
  {
    v20 = *(v19 + 48);
    MEMORY[0x28223BE20](v18);
    v21 = v24;
    *(&v24 - 4) = v19;
    *(&v24 - 3) = v21;
    *(&v24 - 2) = a2;

    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();
  }

  else
  {
    v23 = sub_22B35DE9C();
    (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }
}

void *sub_22B321590(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(a1, a2, &v21);
    _os_log_impl(&dword_22B116000, v11, v12, "Getting last fetched end date for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v15 = (*(v7 + 8))(v9, v6);
  v16 = *(v3 + 112);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 48);
  MEMORY[0x28223BE20](v15);
  *&v20[-32] = v16;
  *&v20[-24] = a1;
  *&v20[-16] = a2;

  v18 = v17;
  sub_22B360E7C();

  return v21;
}

void sub_22B32183C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = MEMORY[0x23188EEB0]();
  sub_22B31E274(a2, a3, a1, &v11);
  objc_autoreleasePoolPop(v9);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v11;
    [*(a1 + 48) refreshAllObjects];
    *a4 = v10;
  }
}

id sub_22B321920@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  sub_22B31E04C(v1[3], v1[4], v2, a1);
  return [*(v2 + 48) refreshAllObjects];
}

unint64_t sub_22B321984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE40, &unk_22B367390);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, &v11, &qword_27D8BAE48, &unk_22B367E10);
      v5 = v11;
      result = sub_22B33BA3C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22B172454(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_22B321AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, &v13, &unk_27D8BAD00, &qword_22B3656C0);
      v5 = v13;
      v6 = v14;
      result = sub_22B33B28C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B172454(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_22B321BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v3 = sub_22B3612BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B170BE0(v4, v13, &unk_27D8BACC0, &unk_22B3662C0);
      result = sub_22B33B248(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22B172454(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_22B321D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B321DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE80, &qword_22B3673E0);
    v3 = sub_22B3612BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B33B28C(v5, v6);
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

unint64_t sub_22B321ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE78, &qword_22B3673D8);
    v3 = sub_22B3612BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22B33B28C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22B321FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE50, &qword_22B3673A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE58, &qword_22B3673A8);
    v7 = sub_22B3612BC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v9, v5, &qword_27D8BAE50, &qword_22B3673A0);
      result = sub_22B33B6BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22B35DF1C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 16 * v13;
      v17 = v8[8];
      *v16 = *v8;
      *(v16 + 8) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22B3221DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE98, &qword_22B3673F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v23 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAEA0, &unk_22B367400);
    v7 = sub_22B3612BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    v24 = v8;

    while (1)
    {
      sub_22B170BE0(v9, v5, &qword_27D8BAE98, &qword_22B3673F8);
      v10 = *v5;
      v11 = v5[1];
      v13 = v5[2];
      v12 = v5[3];
      result = sub_22B33B790(*v5, v11, v13, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v7[6] + 32 * result);
      *v17 = v10;
      v17[1] = v11;
      v17[2] = v13;
      v17[3] = v12;
      v18 = v7[7];
      v19 = sub_22B35DE9C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v5 + v24, v19);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v23;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22B3223E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE88, &qword_22B3673E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE90, &qword_22B3673F0);
    v7 = sub_22B3612BC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v9, v5, &qword_27D8BAE88, &qword_22B3673E8);
      result = sub_22B33B830(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for SessionKey(0);
      result = sub_22B322A34(v5, v14 + *(*(v15 - 8) + 72) * v13);
      v16 = (v7[7] + 2 * v13);
      v17 = v8[1];
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22B3225C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA658, &qword_22B365750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE70, &qword_22B3673D0);
    v7 = sub_22B3612BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v9, v5, &qword_27D8BA658, &qword_22B365750);
      result = sub_22B33B968(v5, v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v7[6];
      v16 = sub_22B35DC4C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5, v16);
      *(v7[7] + 8 * v14) = *&v5[v8];
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_22B3227B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE60, &qword_22B3673B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAE68, &qword_22B3673B8);
    v7 = sub_22B3612BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_22B170BE0(v9, v5, &qword_27D8BAE60, &qword_22B3673B0);
      result = sub_22B33B348(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22B35DE9C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
      result = sub_22B3229C4(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_22B3229C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAAE0, &unk_22B3673C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B322A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B322A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22B124BA8(a3, v25 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B118DDC(v11);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22B360ACC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22B3608CC() + 32;
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

uint64_t DaemonInitializer.__allocating_init()()
{
  v0 = swift_allocObject();
  DaemonInitializer.init()();
  return v0;
}

uint64_t DaemonInitializer.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v15 = sub_22B360D8C();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B360D6C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22B36062C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v14[1] = " %@ AND intervalEnd == %@";
  v14[2] = v8;
  sub_22B36060C();
  v17 = MEMORY[0x277D84F90];
  sub_22B118988(&qword_2814092F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA80, &qword_22B3653C0);
  sub_22B118A18(&qword_281409340, &unk_27D8BAA80, &qword_22B3653C0);
  sub_22B36104C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v15);
  v9 = sub_22B360DBC();
  v10 = v16;
  *(v16 + 16) = v9;
  *(v10 + 24) = 0;
  sub_22B360B3C();
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v2, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;

  sub_22B322A98(0, 0, v2, &unk_22B367418, v12);

  sub_22B118DDC(v2);
  return v10;
}

uint64_t sub_22B3230C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_22B360B3C();
  v4 = sub_22B360B6C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_22B322A98(0, 0, v3, &unk_22B367420, v5);

  return sub_22B118DDC(v3);
}

uint64_t sub_22B3231E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_22B3605EC();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_22B36062C();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v4[18] = swift_task_alloc();
  v7 = sub_22B36052C();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B3233A8, 0, 0);
}

uint64_t sub_22B3233A8()
{
  v1 = MEMORY[0x23188EEB0]();
  sub_22B34D88C();
  objc_autoreleasePoolPop(v1);
  type metadata accessor for HomeEnergyDaemonUtilities();
  v2 = MEMORY[0x23188EEB0]();
  sub_22B34C348(v3);
  v0[24] = 0;
  objc_autoreleasePoolPop(v2);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[20];
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  v0[25] = v7;
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[26] = v8;
  v0[27] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Setting up listeners", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = v0[23];
  v13 = v0[19];
  v14 = v0[20];

  v15 = *(v14 + 8);
  v0[28] = v15;
  v15(v12, v13);
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  sub_22B33AA3C(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  if (qword_28140A7B0 != -1)
  {
    swift_once();
  }

  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  v16[1] = sub_22B323750;

  return sub_22B335200();
}

uint64_t sub_22B323750(char a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_22B323850, 0, 0);
}

uint64_t sub_22B323850()
{
  if (*(v0 + 256) != 1)
  {
    v10 = (v0 + 168);
    (*(v0 + 208))(*(v0 + 168), *(v0 + 200), *(v0 + 152));
    v11 = sub_22B36050C();
    v12 = sub_22B360D1C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "E2E not available. Features disabled";
      goto LABEL_23;
    }

LABEL_24:
    v15 = *v10;
    goto LABEL_25;
  }

  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  sub_22B253414(v2, v3, 0x4374686769736E49, 0xEC00000065686361);

  sub_22B360B3C();
  v4 = sub_22B360B6C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 0, 1, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_22B322A98(0, 0, v1, &unk_22B3674A8, v6);

  sub_22B118DDC(v1);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  if (qword_2814096B8 != -1)
  {
    swift_once();
  }

  if (qword_281409598 != -1)
  {
    swift_once();
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  if (qword_28140A0B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 144);
  sub_22B360B3C();
  v5(v7, 0, 1, v4);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_22B322A98(0, 0, v7, &unk_22B3674B8, v8);

  sub_22B118DDC(v7);
  if (qword_28140A1F0 != -1)
  {
    swift_once();
  }

  v9 = sub_22B253D1C(0, 0);

  if ((v9 & 1) == 0)
  {
    v10 = (v0 + 176);
    (*(v0 + 208))(*(v0 + 176), *(v0 + 200), *(v0 + 152));
    v11 = sub_22B36050C();
    v12 = sub_22B360D1C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Failed to setup KVS";
LABEL_23:
      _os_log_impl(&dword_22B116000, v11, v12, v14, v13, 2u);
      v15 = *v10;
      MEMORY[0x23188F650](v13, -1, -1);
LABEL_25:
      v16 = *(v0 + 224);
      v17 = *(v0 + 152);

      v16(v15, v17);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_26:
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  sub_22B1AC734();
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v18 = swift_task_alloc();
  *(v0 + 240) = v18;
  *v18 = v0;
  v18[1] = sub_22B323D8C;

  return sub_22B1979E4();
}

uint64_t sub_22B323D8C()
{

  return MEMORY[0x2822009F8](sub_22B323E88, 0, 0);
}

void sub_22B323E88()
{
  v1 = *(v0 + 192);
  v2 = MEMORY[0x23188EEB0]();
  sub_22B324778();
  objc_autoreleasePoolPop(v2);
  if (!v1)
  {
    if (qword_281409E98 != -1)
    {
      swift_once();
    }

    v3 = qword_28140BD00;
    *(v0 + 248) = qword_28140BD00;

    MEMORY[0x2822009F8](sub_22B323F58, v3, 0);
  }
}

uint64_t sub_22B323F58(__n128 a1)
{
  sub_22B2A8E9C(a1);

  return MEMORY[0x2822009F8](sub_22B323FC0, 0, 0);
}

uint64_t sub_22B323FC0()
{
  if (qword_28140A5D0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v12 = v0[12];
  v13 = v0[15];
  v5 = v0[11];
  sub_22B128014(0, &qword_2814092B0, 0x277D85CA0);
  v6 = *(v5 + 16);
  v7 = sub_22B360DEC();

  *(v5 + 24) = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v0[6] = sub_22B324B40;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B118A6C;
  v0[5] = &block_descriptor_28;
  v8 = _Block_copy(v0 + 2);
  sub_22B36060C();
  sub_22B324D5C();
  sub_22B360DFC();
  _Block_release(v8);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v12);
  (*(v2 + 8))(v1, v13);
  v9 = sub_22B36054C();
  signal(15, v9);
  if (*(v5 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22B360E0C();
    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B324220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B124D88;

  return sub_22B3231E0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B324314(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B3231E0(a1, v4, v5, v6);
}

uint64_t sub_22B3243C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B324468;

  return sub_22B2F26F0();
}

uint64_t sub_22B324468()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v4;
  v2[1] = sub_22B3245A4;

  return sub_22B2F0FF4();
}

uint64_t sub_22B3245A4()
{

  return MEMORY[0x2822009F8](sub_22B3246A0, 0, 0);
}

uint64_t sub_22B3246A0()
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B14D5A0;

  return sub_22B333ED8();
}

uint64_t sub_22B324778()
{
  v0 = sub_22B35EE8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281409448 != -1)
  {
    swift_once();
  }

  sub_22B197310();
  sub_22B12B274();
  (*(v1 + 104))(v3, *MEMORY[0x277D07390], v0);
  v4 = sub_22B35EE7C();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    sub_22B32508C(0);
    sub_22B3251C8(0);
    sub_22B3252F4(0);
  }

  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v5 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v10, &type metadata for BackgroundSystemTaskScheduler);
  v8 = &type metadata for BackgroundSystemTaskScheduler;
  v9 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v7, v5 + 112);
  __swift_destroy_boxed_opaque_existential_0(v10);

  sub_22B348848(0xD000000000000023, 0x800000022B36EA10, sub_22B325420, v5);
}

uint64_t sub_22B32496C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_22B360B6C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_22B12B3CC(a1, v12);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  sub_22B11A02C(v12, (v8 + 5));

  v9 = sub_22B145224(0, 0, v6, &unk_22B3674D0, v8);
  sub_22B118DDC(v6);
  return v9;
}

uint64_t sub_22B324AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B343E24(a5);
}

uint64_t sub_22B324B40()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281409388 != -1)
  {
    swift_once();
  }

  v4 = qword_28140BCD0;
  sub_22B360CFC();
  sub_22B36044C();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v3, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "SIGTERM received; shutting down", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return xpc_transaction_exit_clean();
}

uint64_t sub_22B324D5C()
{
  sub_22B3605EC();
  sub_22B118988(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  return sub_22B36104C();
}

uint64_t DaemonInitializer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B324F34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B3243C8();
}

uint64_t sub_22B324FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B324764();
}

uint64_t sub_22B32508C(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = 0xD000000000000026;
  v3[4] = 0x800000022B36CB60;
  v3[5] = a1;

  sub_22B348848(0xD000000000000026, 0x800000022B36CB60, sub_22B325478, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_22B3251C8(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_22B348848(0xD000000000000032, 0x800000022B36CB20, sub_22B325470, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_22B3252F4(uint64_t a1)
{
  v10[3] = &type metadata for BackgroundSystemTaskScheduler;
  v10[4] = &off_283EFE540;
  sub_22B12B3CC(v10, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  v8[3] = &type metadata for BackgroundSystemTaskScheduler;
  v8[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v2 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for BackgroundSystemTaskScheduler);
  v6 = &type metadata for BackgroundSystemTaskScheduler;
  v7 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v5, v2 + 112);
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  sub_22B348848(0xD000000000000026, 0x800000022B36A4C0, sub_22B325428, v3);

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t objectdestroy_38Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B325484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B324AA4(a1, v4, v5, v6, (v1 + 5));
}

void *sub_22B325594(unint64_t a1, uint64_t *a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6E8, &qword_22B365990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v37 - v4);
  v48 = type metadata accessor for CDUsagePointRecords(0);
  v40 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v11 = 0;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 & 0xC000000000000001;
    v38 = a1;
    v43 = (v40 + 56);
    v41 = a1 + 32;
    v42 = (v40 + 48);
    v49 = MEMORY[0x277D84F90];
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v12 = MEMORY[0x23188EAC0](v11, v38, v8);
      }

      else
      {
        if (v11 >= *(v45 + 16))
        {
          goto LABEL_29;
        }

        v12 = *(v41 + 8 * v11);
      }

      v13 = v12;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v15 = *v51;

      v16 = [v13 usagePointID];
      v17 = sub_22B36084C();
      v19 = v18;

      if (*(v15 + 16) && (sub_22B36149C(), sub_22B3608FC(), v20 = sub_22B3614DC(), v21 = -1 << *(v15 + 32), v22 = v20 & ~v21, ((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v15 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v48;
        (*v43)(v5, 1, 1, v48);

        v31 = (*v42)(v5, 1, a1);
      }

      else
      {
LABEL_19:

        v26 = [v13 usagePointID];
        v27 = sub_22B36084C();
        v29 = v28;

        sub_22B32DF50(&v50, v27, v29);

        a1 = v13;
        sub_22B326094(a1, v5);
        v30 = v48;
        (*v43)(v5, 0, 1, v48);

        v31 = (*v42)(v5, 1, v30);
      }

      if (v31 == 1)
      {
        sub_22B123284(v5, &qword_27D8BA6E8, &qword_22B365990);
      }

      else
      {
        v32 = v39;
        sub_22B333058(v5, v39, type metadata accessor for CDUsagePointRecords);
        sub_22B333058(v32, v47, type metadata accessor for CDUsagePointRecords);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_22B32DAC8(0, v49[2] + 1, 1, v49, &qword_27D8BAF30, &unk_22B367588, type metadata accessor for CDUsagePointRecords);
        }

        v34 = v49[2];
        v33 = v49[3];
        a1 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          v49 = sub_22B32DAC8((v33 > 1), v34 + 1, 1, v49, &qword_27D8BAF30, &unk_22B367588, type metadata accessor for CDUsagePointRecords);
        }

        v35 = v49;
        v49[2] = a1;
        sub_22B333058(v47, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, type metadata accessor for CDUsagePointRecords);
      }

      if (v11 == v44)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}