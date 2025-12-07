uint64_t sub_24112CCBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = sub_24112D21C;
  }

  else
  {
    v4 = sub_24112CDE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24112CDE0()
{
  v1 = *(v0[33] + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];

    v4 = 0;
LABEL_3:
    v0[35] = v3;
    v5 = v1 + 40 + 16 * v4;
    while (v2 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        __break(1u);
LABEL_22:
        if (!sub_2411661F8())
        {
          goto LABEL_23;
        }

LABEL_12:
        if (qword_27E530638 != -1)
        {
          swift_once();
        }

        v10 = v0[30];
        v9 = v0[31];
        v11 = qword_27E533BE8;
        v12 = swift_task_alloc();
        v0[36] = v12;
        v12[2] = v11;
        v12[3] = v9;
        v12[4] = v3;
        v12[5] = v10;
        v13 = swift_task_alloc();
        v0[37] = v13;
        *v13 = v0;
        v13[1] = sub_24112D3D0;
        v14 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v12, v14);
      }

      v6 = v5 + 16;
      ++v4;

      v7 = sub_241165DA8();
      v8 = IDSCopyBestGuessIDForID();

      v5 = v6;
      if (v8)
      {
        MEMORY[0x245CDB820]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_241165F18();
        }

        sub_241165F28();
        v3 = v23;
        goto LABEL_3;
      }
    }

    if (v3 >> 62)
    {
      goto LABEL_22;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_23:

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v20 = sub_241165288();
    __swift_project_value_buffer(v20, qword_27E5339F0);
    v16 = sub_241165268();
    v17 = sub_241166068();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "No valid IDS destinations found from conversation participants. Skipping IDS sync.";
      goto LABEL_27;
    }
  }

  else
  {

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v15 = sub_241165288();
    __swift_project_value_buffer(v15, qword_27E5339F0);
    v16 = sub_241165268();
    v17 = sub_241166068();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "No conversation participants found. Skipping IDS sync.";
LABEL_27:
      _os_log_impl(&dword_2410F8000, v16, v17, v19, v18, 2u);
      MEMORY[0x245CDC5E0](v18, -1, -1);

      goto LABEL_29;
    }
  }

LABEL_29:
  sub_241132558((v0 + 2));

  v21 = v0[1];

  return v21();
}

uint64_t sub_24112D21C()
{
  v1 = *(v0 + 272);
  sub_241132558(v0 + 16);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to inflate recipient group for IDS sync: %@. Skipping IDS sync.", v6, 0xCu);
    sub_2410FB29C(v7, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24112D3D0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24112D6C4;
  }

  else
  {

    v2 = sub_24112D508;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24112D508()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E5339F0);

  v2 = sub_241165268();
  v3 = sub_241166068();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v5 >> 62)
    {
      v7 = sub_2411661F8();
    }

    else
    {
      v7 = *((*(v0 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_2410F8000, v2, v3, "Sent IDS message for cross-device bubble update sync to %ld destinations", v6, 0xCu);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_241132558(v0 + 16);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24112D6C4()
{

  v1 = *(v0 + 304);
  sub_241132558(v0 + 16);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to inflate recipient group for IDS sync: %@. Skipping IDS sync.", v6, 0xCu);
    sub_2410FB29C(v7, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24112D8A8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_241165728();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112D968, 0, 0);
}

uint64_t sub_24112D968()
{
  v38 = v0;
  v1 = *(v0[4] + 24);
  v0[8] = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

  v5 = sub_241165B78();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {

LABEL_12:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v25 = sub_241165288();
    __swift_project_value_buffer(v25, qword_27E5339F0);
    v26 = sub_241165268();
    v27 = sub_241166048();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116B4D0, v37);
      _os_log_impl(&dword_2410F8000, v26, v27, "%s Client is missing required entitlement com.apple.asktod", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245CDC5E0](v29, -1, -1);
      MEMORY[0x245CDC5E0](v28, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v6 = v0[3];
  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = v6;
  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116B4D0, v37);
    *(v11 + 12) = 2080;
    v13 = sub_241165328();
    v15 = sub_241156B38(v13, v14, v37);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_2410F8000, v9, v10, "%s called with question ID: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v16 = IMBalloonExtensionIDWithSuffix();
  if (v16)
  {
    v17 = v0[3];
    v18 = v16;
    v19 = sub_241165DD8();
    v21 = v20;

    v0[9] = v21;
    v22 = swift_task_alloc();
    v0[10] = v22;
    v22[2] = v19;
    v22[3] = v21;
    v22[4] = v17;
    v23 = swift_task_alloc();
    v0[11] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D00, &qword_2411684A8);
    *v23 = v0;
    v23[1] = sub_24112DEBC;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000024116B4D0, sub_241134D98, v22, v24);
  }

  v32 = sub_241165268();
  v33 = sub_241166048();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_2410F8000, v32, v33, "AskTo messages extension bundle identifier was nil", v34, 2u);
    MEMORY[0x245CDC5E0](v34, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v35 = 2;
  swift_willThrow();

LABEL_17:

  v31 = v0[1];

  return v31();
}

uint64_t sub_24112DEBC()
{

  return MEMORY[0x2822009F8](sub_24112DFF0, 0, 0);
}

uint64_t sub_24112DFF0()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24112E064(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = sub_241165DA8();
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v5;
  aBlock[4] = sub_241134E1C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241135D58;
  aBlock[3] = &block_descriptor_100;
  v8 = _Block_copy(aBlock);
  v9 = a4;

  IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
  _Block_release(v8);

  swift_beginAccess();

  sub_241142DCC(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D08, &qword_2411684B0);
  sub_241165F78();
}

uint64_t sub_24112E1F4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v88 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531000, &unk_2411684B8);
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = (&v79 - v10);
  v11 = sub_241165B58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v79 - v16;
  v18 = sub_2411650D8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v89 = a2;
  v90 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_2410FC88C(a3, v17, &qword_27E530AB0, &qword_241168080);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v81 = a5;
    (*(v19 + 32))(v90, v17, v18);
    v25 = qword_27E530580;
    v26 = v89;

    if (v25 != -1)
    {
      swift_once();
    }

    v27 = sub_241165288();
    v28 = __swift_project_value_buffer(v27, qword_27E5339F0);

    v29 = a4;
    v84 = v28;
    v30 = v26;
    v31 = sub_241165268();
    v32 = sub_241166038();

    v33 = os_log_type_enabled(v31, v32);
    v82 = v29;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v83 = v11;
      v36 = v35;
      v91[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_241156B38(v88, v30, v91);
      *(v34 + 12) = 2080;
      v37 = sub_241165328();
      v39 = sub_241156B38(v37, v38, v91);
      v40 = v12;
      v41 = v18;
      v42 = v14;
      v43 = v19;
      v44 = v40;
      v45 = v39;

      *(v34 + 14) = v45;
      v46 = v44;
      v19 = v43;
      v14 = v42;
      v18 = v41;
      v12 = v46;
      _os_log_impl(&dword_2410F8000, v31, v32, "Inspecting AskTo message with GUID %s for question ID %s", v34, 0x16u);
      swift_arrayDestroy();
      v47 = v36;
      v11 = v83;
      MEMORY[0x245CDC5E0](v47, -1, -1);
      MEMORY[0x245CDC5E0](v34, -1, -1);
    }

    sub_241165B48();
    sub_241165CE8();
    v48 = MEMORY[0x277CEEE38];
    sub_2411356E8(&qword_27E530C50, MEMORY[0x277CEEE38], MEMORY[0x277CEEE48]);
    sub_2411356E8(&qword_27E530C58, v48, MEMORY[0x277CEEE40]);
    sub_241165B38();
    v49 = v91[0];
    v50 = sub_241165CC8();
    v51 = sub_241165328();
    v53 = v52;

    v54 = v82;
    if (v51 == sub_241165328() && v53 == v55)
    {
    }

    else
    {
      v56 = sub_2411663E8();

      if ((v56 & 1) == 0)
      {

        (*(v12 + 8))(v14, v11);
LABEL_26:
        (*(v19 + 8))(v90, v18);
        return 0;
      }
    }

    v79 = v49;
    v83 = v11;
    v57 = v89;

    v58 = v54;
    v59 = sub_241165268();
    v60 = sub_241166068();

    v61 = os_log_type_enabled(v59, v60);
    v80 = v12;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v91[0] = v63;
      *v62 = 136315394;
      v64 = sub_241165328();
      v66 = sub_241156B38(v64, v65, v91);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = v88;
      *(v62 + 14) = sub_241156B38(v88, v89, v91);
      _os_log_impl(&dword_2410F8000, v59, v60, "Found matching question with ID %s in message GUID %s", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v63, -1, -1);
      v68 = v62;
      v57 = v89;
      MEMORY[0x245CDC5E0](v68, -1, -1);
    }

    else
    {

      v67 = v88;
    }

    v69 = v87;
    v70 = *(v86 + 48);
    v71 = *(v86 + 64);
    *v87 = v67;
    *(v69 + 8) = v57;
    (*(v19 + 16))(v69 + v70, v90, v18);
    *(v69 + v71) = v79;
    v72 = v81;
    swift_beginAccess();
    v73 = *(v72 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v72 + 16) = v73;
    v75 = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = sub_241160BC8(0, v73[2] + 1, 1, v73);
      *(v72 + 16) = v73;
    }

    v77 = v73[2];
    v76 = v73[3];
    if (v77 >= v76 >> 1)
    {
      v73 = sub_241160BC8((v76 > 1), v77 + 1, 1, v73);
    }

    v73[2] = v77 + 1;
    sub_241135680(v69, v73 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v77, &unk_27E531000, &unk_2411684B8);
    *(v72 + 16) = v73;
    swift_endAccess();
    (*(v80 + 8))(v14, v75);
    goto LABEL_26;
  }

  sub_2410FB29C(v17, &qword_27E530AB0, &qword_241168080);
LABEL_4:
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v21 = sub_241165288();
  __swift_project_value_buffer(v21, qword_27E5339F0);
  v22 = sub_241165268();
  v23 = sub_241166038();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2410F8000, v22, v23, "Got nil messageGUID or payloadURL from IMSPI", v24, 2u);
    MEMORY[0x245CDC5E0](v24, -1, -1);
  }

  return 0;
}

uint64_t sub_24112EBC8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_241165728();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112EC88, 0, 0);
}

uint64_t sub_24112EC88()
{
  v18 = v0;
  v1 = *(v0[8] + 24);
  v0[12] = v1;
  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = __swift_project_boxed_opaque_existential_1((v0[8] + 160), *(v0[8] + 184));
      v0[13] = v6;
      v0[14] = sub_241165328();
      v0[15] = v7;
      v8 = *v6;

      return MEMORY[0x2822009F8](sub_24112EF10, v8, 0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E5339F0);
  v10 = sub_241165268();
  v11 = sub_241166048();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116B390, &v17);
    _os_log_impl(&dword_2410F8000, v10, v11, "%s Client is missing required entitlement com.apple.asktod", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_24112EF10()
{
  sub_241137810(*(v0 + 112), *(v0 + 120));

  return MEMORY[0x2822009F8](sub_24112EF8C, 0, 0);
}

uint64_t sub_24112EF8C()
{
  sub_24112AFBC(*(v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *__swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_24112F0A0;
    v4 = *(v0 + 56);

    return sub_24115F8CC(v4, v2);
  }

  else
  {

    sub_2410FB29C(v0 + 16, &qword_27E530CE0, &qword_2411683F8);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24112F0A0()
{

  return MEMORY[0x2822009F8](sub_24112F19C, 0, 0);
}

uint64_t sub_24112F19C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24112F210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112F2BC, 0, 0);
}

uint64_t sub_24112F2BC()
{
  v1 = *(*(v0 + 80) + 16);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_241130064((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));

  v4 = v2;
  if (v2 >> 62)
  {
    v5 = sub_2411661F8();
    v4 = v2;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_18:

    v21 = swift_task_alloc();
    *(v0 + 104) = v21;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CC8, &unk_2411683C0);
    *v21 = v0;
    v21[1] = sub_24112F6F0;
    v5 = 0;
    v4 = 0;

    return MEMORY[0x2822002C8](v5, v4, v3);
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v23 = v5;
    v26 = **(v0 + 72);
    v27 = v4;
    v25 = *(v0 + 112);
    v24 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v9 = MEMORY[0x245CDBC20](v6);
      }

      else
      {
        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_241165FA8();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v11, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v9;
      *(v14 + 40) = v25;
      sub_2410FC88C(v11, v10, &unk_27E530F50, &qword_241167C20);
      LODWORD(v10) = (*(v13 + 48))(v10, 1, v12);

      v16 = *(v0 + 88);
      if (v10 == 1)
      {
        sub_2410FB29C(*(v0 + 88), &unk_27E530F50, &qword_241167C20);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_241165F98();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_241165F58();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_2411683B0;
      *(v20 + 24) = v14;

      if (v19 | v17)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v7 = 0;
      }

      ++v6;
      v8 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v26;
      swift_task_create();

      sub_2410FB29C(v8, &unk_27E530F50, &qword_241167C20);
      v4 = v27;
      if (v23 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822002C8](v5, v4, v3);
}

uint64_t sub_24112F6F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24112F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  return MEMORY[0x2822009F8](sub_24112F840, 0, 0);
}

uint64_t sub_24112F840()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_24112F944;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000023, 0x800000024116B320, sub_2411320B4, v3, v6);
}

uint64_t sub_24112F944()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24112FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v6 + 32))(v10 + v9, v8, v5);

  sub_241165B88();
}

uint64_t sub_24112FBB0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E533A08);
    v5 = a1;

    v6 = sub_241165268();
    v7 = sub_241166048();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v8 = 136315394;
      v11 = sub_241165B98();
      v13 = sub_241156B38(v11, v12, &v25);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_2410F8000, v6, v7, "Error calling messagesComposeDidFinish on client with id %s from daemon: %@", v8, 0x16u);
      sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v16 = sub_241165288();
    __swift_project_value_buffer(v16, qword_27E533A08);

    v17 = sub_241165268();
    v18 = sub_241166068();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = sub_241165B98();
      v23 = sub_241156B38(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_2410F8000, v17, v18, "Successfully called messagesComposeDidFinish on client with id %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  return sub_241165F78();
}

void *sub_24112FEE4()
{

  swift_weakDestroy();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  sub_2410FB29C((v0 + 35), &qword_27E530D50, &qword_2411685B0);

  return v0;
}

uint64_t sub_24112FF64()
{
  sub_24112FEE4();

  return swift_deallocClassInstance();
}

id sub_241130004()
{
  if (qword_27E530620 != -1)
  {
    swift_once();
  }

  v1 = qword_27E533BD0;

  return v1;
}

void *sub_241130064(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2411303A0(*(*a1 + 16), 0);
  v4 = sub_24113114C(&v7, v3 + 4, v2, v1);
  v5 = v7;

  result = sub_24111606C(v5);
  if (v4 == v2)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24113012C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_241130224;

  return v6(a1);
}

uint64_t sub_241130224()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_24113031C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2411303A0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_241130428(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D30, &unk_241168530);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24113049C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241165EA8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_241130A28(result, v5);
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
      result = sub_2411662F8();
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

uint64_t sub_241130A28(uint64_t a1, unint64_t a2)
{
  v2 = sub_241165EB8();
  v6 = sub_241130AA8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_241130AA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_241166178();
    if (!v9 || (v10 = v9, v11 = sub_241130428(v9, 0), v12 = sub_241130C00(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_241165E18();

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
      return sub_241165E18();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2411662F8();
LABEL_4:

  return sub_241165E18();
}

unint64_t sub_241130C00(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_241130E20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_241165E88();
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
          result = sub_2411662F8();
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

    result = sub_241130E20(v12, a6, a7);
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

    result = sub_241165E68();
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

unint64_t sub_241130E20(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_241165E98();
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
    v5 = MEMORY[0x245CDB7C0](15, a1 >> 16);
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

void *sub_241130E9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_241130FF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void *sub_24113114C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2411312A0(uint64_t a1, void *a2)
{
  v9 = type metadata accessor for PendingAskStore();
  v10 = &off_2852EBB00;
  *&v8 = a1;
  a2[2] = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  a2[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CD8, &qword_2411683F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2411673F0;
  if (qword_27E530630 != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  v5 = qword_27E533BE0;
  *(v4 + 56) = &type metadata for CommunicationLimitsPayloadProcessor;
  *(v4 + 64) = &off_2852EC7F8;
  *(v4 + 32) = v5;
  a2[9] = v4;
  sub_24110324C(&v8, (a2 + 4));

  return a2;
}

uint64_t sub_2411313A4(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for IDSLookupController(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24114C9EC(v4);
  v73[3] = v2;
  v73[4] = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  sub_241131B28(v4, boxed_opaque_existential_1);
  v73[8] = &type metadata for MessagesSPI;
  v73[9] = &off_2852EAD78;
  sub_241131B8C(v4);
  v6 = type metadata accessor for DaemonSendAskFlowPresenter();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2410FD064;
  *(v7 + 24) = 0;
  if (qword_27E530628 != -1)
  {
    swift_once();
  }

  v8 = qword_27E533BD8;
  v72[3] = &type metadata for iMessageSender;
  v72[4] = &off_2852EACE0;
  v72[0] = swift_allocObject();
  sub_241131C30(v73, v72[0] + 16);
  v71[3] = &type metadata for ClientResponseTaskMapper;
  v71[4] = &off_2852EC7E8;
  v70[3] = v6;
  v70[4] = &off_2852EAAD0;
  v70[0] = v7;
  v9 = type metadata accessor for PendingAskStore();
  v68 = v9;
  v69 = &off_2852EBB00;
  v67[0] = v8;
  v65 = &type metadata for CommunicationLimitsSettings;
  v66 = &off_2852EBE48;
  v62 = &type metadata for ContactsSyncVerifier;
  v63 = &off_2852EAEE0;
  type metadata accessor for Server();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v72, &type metadata for iMessageSender);
  v40 = &v37;
  MEMORY[0x28223BE20](v11);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  __swift_mutable_project_boxed_opaque_existential_1(v71, &type metadata for ClientResponseTaskMapper);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v70, v6);
  v39 = &v37;
  MEMORY[0x28223BE20](v15);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v38 = &v37;
  MEMORY[0x28223BE20](v19);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v23 = *v17;
  v24 = *v21;
  v59 = &type metadata for iMessageSender;
  v60 = &off_2852EACE0;
  v25 = swift_allocObject();
  *&v58 = v25;
  v26 = v13[3];
  v25[3] = v13[2];
  v25[4] = v26;
  v25[5] = v13[4];
  v27 = v13[1];
  v25[1] = *v13;
  v25[2] = v27;
  v56 = &type metadata for ClientResponseTaskMapper;
  v57 = &off_2852EC7E8;
  v53 = v6;
  v54 = &off_2852EAAD0;
  *&v52 = v23;
  v50 = v9;
  v51 = &off_2852EBB00;
  *&v49 = v24;
  v47 = &type metadata for CommunicationLimitsSettings;
  v48 = &off_2852EBE48;
  v44 = &type metadata for ContactsSyncVerifier;
  v45 = &off_2852EAEE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CB8, &qword_241168368);
  v28 = sub_241165BD8();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v37 = xmmword_2411673F0;
  *(v31 + 16) = xmmword_2411673F0;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277CEED80], v28);

  v32 = sub_2410FC448(v31);
  swift_setDeallocating();
  (*(v29 + 8))(v31 + v30, v28);
  swift_deallocClassInstance();
  *(v10 + 16) = v32;
  *(v10 + 24) = 0;
  swift_weakInit();
  *(v10 + 312) = 0;
  *(v10 + 280) = 0u;
  *(v10 + 296) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CC0, &unk_241168370);
  v33 = swift_allocObject();
  *(v33 + 16) = v37;
  if (qword_27E530630 != -1)
  {
    v36 = v33;
    swift_once();
    v33 = v36;
  }

  v34 = qword_27E533BE0;
  *(v33 + 56) = &type metadata for CommunicationLimitsPayloadProcessor;
  *(v33 + 64) = &off_2852EC810;
  *(v33 + 32) = v34;
  *(v10 + 320) = v33;
  *(v10 + 24) = v41;

  swift_weakAssign();
  sub_24110324C(&v58, v10 + 40);
  sub_24110324C(&v55, v10 + 80);
  sub_24110324C(&v52, v10 + 120);
  sub_24110324C(&v49, v10 + 160);
  sub_24110324C(&v46, v10 + 200);
  sub_24110324C(&v43, v10 + 240);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  sub_241131CDC(v73);
  return v10;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_241131B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLookupController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241131B8C(uint64_t a1)
{
  v2 = type metadata accessor for IDSLookupController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241131BE8()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_241131D30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24112341C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241131E08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_241135C18;

  return sub_24112F210(a1, a2, v6, v7);
}

uint64_t sub_241131EC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_241131F00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_241135C18;

  return sub_24112F81C(a1, v4, v5, v6, v7);
}

uint64_t sub_241131FC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241131FFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241106740;

  return sub_24113012C(a1, v4);
}

uint64_t sub_2411320C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241132190(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v3 = *(v1 + 16);

  return sub_24112FBB0(a1, v3);
}

uint64_t sub_24113222C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_241132284(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_2411225E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_241132370()
{
  result = qword_27E530CD0;
  if (!qword_27E530CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CD0);
  }

  return result;
}

uint64_t sub_2411323CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24113241C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241106740;

  return sub_2411218BC(a1, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2411325F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_241121068(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2411326CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_24111FD90(a1, v4, v5, v6, v7, v10, v8, v9);
}

unint64_t sub_2411327D4()
{
  result = qword_27E530CF0;
  if (!qword_27E530CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CF0);
  }

  return result;
}

uint64_t sub_241132828(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_241165898();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = sub_241165BD8();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241132A20, 0, 0);
}

uint64_t sub_241132A20()
{
  if (*(v0[30] + 24))
  {

    sub_241165C08();

    if (v0[21])
    {
      __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      goto LABEL_6;
    }

    sub_2410FB29C((v0 + 18), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[38] + 56))(v0[44], 1, 1, v0[37]);
LABEL_6:
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[37];
  v6 = v0[38];
  (*(v6 + 104))(v2, *MEMORY[0x277CEED98], v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(v4 + 48);
  sub_2410FC88C(v1, v3, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v2, v3 + v7, &qword_27E530658, &unk_241167410);
  v8 = *(v6 + 48);
  if (v8(v3, 1, v5) != 1)
  {
    v10 = v0[37];
    sub_2410FC88C(v0[41], v0[42], &qword_27E530658, &unk_241167410);
    v11 = v8(v3 + v7, 1, v10);
    v12 = v0[42];
    v13 = v0[43];
    if (v11 != 1)
    {
      v27 = v0[41];
      v29 = v0[38];
      v28 = v0[39];
      v30 = v0[37];
      (*(v29 + 32))(v28, v3 + v7, v30);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
      v31 = sub_241165D98();
      v32 = *(v29 + 8);
      v32(v28, v30);
      sub_2410FB29C(v13, &qword_27E530658, &unk_241167410);
      v32(v12, v30);
      sub_2410FB29C(v27, &qword_27E530658, &unk_241167410);
      if ((v31 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    v14 = v0[37];
    v15 = v0[38];
    sub_2410FB29C(v0[43], &qword_27E530658, &unk_241167410);
    (*(v15 + 8))(v12, v14);
LABEL_11:
    sub_2410FB29C(v0[41], &qword_27E530650, &qword_241167408);
    goto LABEL_12;
  }

  v9 = v0[37];
  sub_2410FB29C(v0[43], &qword_27E530658, &unk_241167410);
  if (v8(v3 + v7, 1, v9) != 1)
  {
    goto LABEL_11;
  }

  sub_2410FB29C(v0[41], &qword_27E530658, &unk_241167410);
LABEL_20:
  v33 = sub_2411653A8();
  v34 = sub_241165368();
  v36 = v35;

  if (v34 == 0xD00000000000002DLL && 0x800000024116B440 == v36)
  {
    goto LABEL_22;
  }

  v37 = sub_2411663E8();

  if (v37)
  {
    goto LABEL_24;
  }

  v59 = sub_2411653A8();
  v60 = sub_241165368();
  v62 = v61;

  if (v60 == 0xD00000000000001DLL && 0x800000024116B470 == v62)
  {
LABEL_22:

LABEL_24:
    v39 = v0[35];
    v38 = v0[36];
    sub_241165298();
    sub_2410FC88C(v38, v39, &qword_27E530CE8, &qword_241168400);
    v40 = sub_2411652E8();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 48))(v39, 1, v40);
    v43 = v0[35];
    if (v42 == 1)
    {
      sub_2410FB29C(v43, &qword_27E530CE8, &qword_241168400);
    }

    else
    {
      v44 = (*(v41 + 88))(v43, v40);
      if (v44 == *MEMORY[0x277CEEAD0])
      {
        v45 = v0[35];
        v46 = v0[36];
        v68 = v44;
        (*(v41 + 96))(v45, v40);
        v67 = *v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D48, &qword_2411685A8);
        v47 = sub_241165A38();
        v48 = *(v47 - 8);
        v49 = *(v48 + 72);
        v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_241167EC0;
        v52 = v51 + v50;
        v53 = *(v48 + 104);
        v53(v52, *MEMORY[0x277CEECA8], v47);
        v53(v52 + v49, *MEMORY[0x277CEEC80], v47);
        v54 = v67;
        sub_2410FC8F4(v51);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_241165A48();

        sub_2410FB29C(v46, &qword_27E530CE8, &qword_241168400);
        *v46 = v54;
        (*(v41 + 104))(v46, v68, v40);
        (*(v41 + 56))(v46, 0, 1, v40);
      }

      else
      {
        (*(v41 + 8))(v0[35], v40);
      }
    }

    v64 = [objc_opt_self() defaultStore];
    v0[45] = v64;
    if (v64)
    {
      v65 = v64;
      v0[2] = v0;
      v0[7] = v0 + 28;
      v0[3] = sub_241133524;
      v66 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24112B3BC;
      v0[13] = &block_descriptor_188;
      v0[14] = v66;
      [v65 aa:v0 + 10 primaryAppleAccountWithCompletion:?];
      v64 = v0 + 2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v64);
  }

  v63 = sub_2411663E8();

  if (v63)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E5339F0);
  v17 = sub_241165268();
  v18 = sub_241166068();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2410F8000, v17, v18, "Requesting to send message compose via daemon", v19, 2u);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  v20 = v0[30];

  if (!*(v20 + 24))
  {
    goto LABEL_29;
  }

  sub_241165C08();

  if (!v0[26])
  {
    sub_2410FB29C((v0 + 23), &qword_27E530CF8, &qword_2411684A0);
LABEL_29:
    v55 = v0[44];
    sub_2410FDF20();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    sub_2410FB29C(v55, &qword_27E530658, &unk_241167410);

    v58 = v0[1];
    goto LABEL_30;
  }

  v21 = v0[29];
  v22 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v0[26]);
  v23 = sub_241165988();
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  objc_allocWithZone(sub_241165668());
  v24 = v23;
  v25 = v21;
  v26 = sub_241165648();
  __swift_project_boxed_opaque_existential_1((v22 + 120), *(v22 + 144));
  sub_2410FD0E4(v26);
  sub_2410FB29C(v0[44], &qword_27E530658, &unk_241167410);

  v58 = v0[1];
LABEL_30:

  return v58();
}

uint64_t sub_241133524()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_241133A94;
  }

  else
  {
    v2 = sub_241133634;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241133634()
{
  v1 = *(v0 + 224);

  v23 = v1;
  if (v1)
  {
    v2 = [v1 aa_firstName];
    if (v2)
    {
      v3 = v2;
      sub_241165DD8();
    }
  }

  v4 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 256);
  v22 = *(v0 + 248);
  sub_2410FC88C(v4, *(v0 + 272), &qword_27E530CE8, &qword_241168400);
  sub_241165388();
  sub_2411653B8();
  sub_241165868();
  sub_241165878();
  sub_241165398();
  sub_241165888();
  sub_2411653C8();

  (*(v6 + 8))(v5, v22);
  sub_2410FB29C(v4, &qword_27E530CE8, &qword_241168400);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = sub_241165268();
  v9 = sub_241166068();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2410F8000, v8, v9, "Requesting to send message compose via daemon", v10, 2u);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  v11 = *(v0 + 240);

  if (*(v11 + 24))
  {

    sub_241165C08();

    if (*(v0 + 208))
    {
      v12 = *(v0 + 232);
      v13 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 184), *(v0 + 208));
      v14 = sub_241165988();
      __swift_destroy_boxed_opaque_existential_1((v0 + 184));
      objc_allocWithZone(sub_241165668());
      v15 = v14;
      v16 = v12;
      v17 = sub_241165648();
      __swift_project_boxed_opaque_existential_1((v13 + 120), *(v13 + 144));
      sub_2410FD0E4(v17);
      sub_2410FB29C(*(v0 + 352), &qword_27E530658, &unk_241167410);

      v21 = *(v0 + 8);
      goto LABEL_13;
    }

    sub_2410FB29C(v0 + 184, &qword_27E530CF8, &qword_2411684A0);
  }

  v18 = *(v0 + 352);
  sub_2410FDF20();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();
  sub_2410FB29C(v18, &qword_27E530658, &unk_241167410);

  v21 = *(v0 + 8);
LABEL_13:

  return v21();
}

uint64_t sub_241133A94(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[46];
  swift_willThrow();

  v4 = v1[36];
  v5 = v1[33];
  v7 = v1[31];
  v6 = v1[32];
  sub_2410FC88C(v4, v1[34], &qword_27E530CE8, &qword_241168400);
  sub_241165388();
  sub_2411653B8();
  sub_241165868();
  sub_241165878();
  sub_241165398();
  sub_241165888();
  sub_2411653C8();
  (*(v6 + 8))(v5, v7);
  sub_2410FB29C(v4, &qword_27E530CE8, &qword_241168400);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2410F8000, v9, v10, "Requesting to send message compose via daemon", v11, 2u);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v12 = v1[30];

  if (*(v12 + 24))
  {

    sub_241165C08();

    if (v1[26])
    {
      v13 = v1[29];
      v14 = v1[30];
      __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
      v15 = sub_241165988();
      __swift_destroy_boxed_opaque_existential_1(v1 + 23);
      objc_allocWithZone(sub_241165668());
      v16 = v15;
      v17 = v13;
      v18 = sub_241165648();
      __swift_project_boxed_opaque_existential_1((v14 + 120), *(v14 + 144));
      sub_2410FD0E4(v18);
      sub_2410FB29C(v1[44], &qword_27E530658, &unk_241167410);

      v22 = v1[1];
      goto LABEL_10;
    }

    sub_2410FB29C((v1 + 23), &qword_27E530CF8, &qword_2411684A0);
  }

  v19 = v1[44];
  sub_2410FDF20();
  swift_allocError();
  *v20 = 0;
  swift_willThrow();
  sub_2410FB29C(v19, &qword_27E530658, &unk_241167410);

  v22 = v1[1];
LABEL_10:

  return v22();
}

void sub_241133EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24))
  {

    sub_241165C08();

    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v5 = sub_241165978();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v7)
      {
        if (qword_27E530640 != -1)
        {
          swift_once();
        }

        sub_24115B034(a1, v5, v7);

        goto LABEL_13;
      }
    }

    else
    {
      sub_2410FB29C(v14, &qword_27E530CF8, &qword_2411684A0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E5339F0);
  v9 = sub_241165268();
  v10 = sub_241166048();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_241156B38(0xD000000000000019, 0x800000024116B6A0, v14);
    _os_log_impl(&dword_2410F8000, v9, v10, "%s Could not get bundle identifier information from client", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_2411661F8())
  {
    sub_2410FCC14(MEMORY[0x277D84F90]);
  }

LABEL_13:
  sub_241165928();
  sub_2411356E8(&qword_27E531380, MEMORY[0x277CEEC50], MEMORY[0x277D85378]);
  v13 = sub_241165FB8();
  (*(a3 + 16))(a3, v13);
}

uint64_t sub_241134174(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_241134194, 0, 0);
}

unint64_t sub_241134194()
{
  v30 = v0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_27E5339F0);

  v2 = sub_241165268();
  v3 = sub_241166068();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 160);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116B680, &v29);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);

    _os_log_impl(&dword_2410F8000, v2, v3, "%s Performing %ld response tasks", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  *(v0 + 184) = 0x800000024116B680;
  v8 = *(v0 + 160);
  v9 = *(v8 + 16);
  *(v0 + 192) = v9;
  *(v0 + 200) = 0;
  if (v9)
  {
    *(v0 + 64) = 0;
    sub_241135730(v8 + 32, v0 + 72);
    v10 = *(v0 + 64);
    v11 = *(v0 + 80);
    v12 = 1;
    v13 = *(v0 + 96);
  }

  else
  {
    v12 = 0;
    v10 = 0uLL;
    v11 = 0uLL;
    v13 = 0uLL;
  }

  *(v0 + 216) = v12;
  *(v0 + 208) = v10;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  *(v0 + 48) = v13;
  if (v13)
  {
    v14 = v10;
    sub_24110324C((v0 + 24), v0 + 112);
    v15 = sub_241165268();
    v16 = sub_241166068();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 184);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *(v0 + 152) = v19;
      *v18 = 136315394;
      result = sub_241156B38(0xD000000000000011, v17, (v0 + 152));
      *(v18 + 4) = result;
      *(v18 + 12) = 2048;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      *(v18 + 14) = v14 + 1;
      _os_log_impl(&dword_2410F8000, v15, v16, "%s Performing response task #%ld", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CDC5E0](v19, -1, -1);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_2411345FC;
    v22 = *(v0 + 168);

    return sub_241140C68(v22);
  }

  else
  {
    v23 = sub_241165268();
    v24 = sub_241166068();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 184);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_241156B38(0xD000000000000011, v25, &v29);
      *(v26 + 12) = 2048;
      *(v26 + 14) = 0;
      _os_log_impl(&dword_2410F8000, v23, v24, "%s Successfully performed %ld response tasks", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x245CDC5E0](v27, -1, -1);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2411345FC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_241134A4C;
  }

  else
  {
    v2 = sub_241134710;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_241134710()
{
  v25 = v0;
  v1 = *(v0 + 200);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v3 = *(v0 + 216);
  *(v0 + 200) = v2;
  v4 = *(v0 + 192);
  v5 = 0uLL;
  if (v3 == v4)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    goto LABEL_7;
  }

  if (v3 >= v4)
  {
    goto LABEL_20;
  }

  v8 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v0 + 160) + 40 * v3;
  *(v0 + 64) = v3;
  sub_241135730(v9 + 32, v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v3 = v8;
  v7 = *(v0 + 96);
LABEL_7:
  *(v0 + 216) = v3;
  *(v0 + 208) = v5;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v7;
  if (v7)
  {
    v10 = v5;
    sub_24110324C((v0 + 24), v0 + 112);
    v11 = sub_241165268();
    v12 = sub_241166068();
    if (!os_log_type_enabled(v11, v12))
    {
LABEL_11:

      __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
      v16 = swift_task_alloc();
      *(v0 + 224) = v16;
      *v16 = v0;
      v16[1] = sub_2411345FC;
      v17 = *(v0 + 168);

      sub_241140C68(v17);
      return;
    }

    v13 = *(v0 + 184);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v0 + 152) = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_241156B38(0xD000000000000011, v13, (v0 + 152));
    *(v14 + 12) = 2048;
    if (!__OFADD__(v10, 1))
    {
      *(v14 + 14) = v10 + 1;
      _os_log_impl(&dword_2410F8000, v11, v12, "%s Performing response task #%ld", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245CDC5E0](v15, -1, -1);
      MEMORY[0x245CDC5E0](v14, -1, -1);
      goto LABEL_11;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v18 = sub_241165268();
  v19 = sub_241166068();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 184);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_241156B38(0xD000000000000011, v20, &v24);
    *(v21 + 12) = 2048;
    *(v21 + 14) = v2;
    _os_log_impl(&dword_2410F8000, v18, v19, "%s Successfully performed %ld response tasks", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CDC5E0](v22, -1, -1);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  v23 = *(v0 + 8);

  v23();
}

uint64_t *sub_241134A4C()
{
  v1 = v0[29];
  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166068();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    result = swift_slowAlloc();
    *v6 = 134218242;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = v0[29];
    *(v6 + 4) = v8;
    *(v6 + 12) = 2112;
    v11 = v10;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_2410F8000, v3, v4, "Caught error while performing response task #%ld: %@", v6, 0x16u);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v13 = v0[29];

  sub_2411354F4();
  swift_allocError();
  *v14 = v13;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_241134BF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_241134C50(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24111E51C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_241134D44(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_241134DA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241134DDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241134E3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241134E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24111D8C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_106Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_241134F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24111CF00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241135078()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2411350D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v12 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_24111C79C(a1, v4, v5, v6, v7, v9, v12, v8);
}

uint64_t sub_2411351C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_241134D44(result, a2);
  }

  return result;
}

unint64_t sub_2411351DC()
{
  result = qword_27E530D28;
  if (!qword_27E530D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530D20, &qword_241168528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D28);
  }

  return result;
}

uint64_t sub_241135240()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2411352A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_24111BC00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2411353A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_241135400(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241135C18;

  return sub_2411187FC(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_2411354F4()
{
  result = qword_27E530D40;
  if (!qword_27E530D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D40);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2411355A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_241135C18;

  return sub_24111729C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_241135680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2411356E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241135730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon9SendErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2411357B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24113580C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_241135868(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_11AskToDaemon13ResponseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2411358B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2411358FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_241135940(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DaemonError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241135AC0()
{
  result = qword_27E530D58;
  if (!qword_27E530D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D58);
  }

  return result;
}

unint64_t sub_241135B1C()
{
  result = qword_27E530D60;
  if (!qword_27E530D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D60);
  }

  return result;
}

unint64_t sub_241135B70()
{
  result = qword_27E530D68;
  if (!qword_27E530D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D68);
  }

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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241135C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241135CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241135D24()
{
  v1 = *v0;
  sub_2411351C8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_241135D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = *(a1 + 32);
  if (!a2)
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = sub_2411650D8();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    goto LABEL_6;
  }

  v10 = sub_241165DD8();
  a2 = v11;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_241165098();
  v12 = sub_2411650D8();
  (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
LABEL_6:

  v14 = v9(v10, a2, v8);

  sub_241137218(v8);
  return v14 & 1;
}

uint64_t sub_241135EC0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v79 = a4;
  v11 = sub_2411651A8();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_241165B58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_2411650D8();
  v80 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v70 = a6;
    v77 = v24;
    v78 = a1;
    v73 = v17;
    v25 = v22;
    v26 = qword_27E5305F0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_241165288();
    v28 = __swift_project_value_buffer(v27, qword_27E533B40);

    v76 = v28;
    v29 = sub_241165268();
    v30 = sub_241166038();

    v31 = os_log_type_enabled(v29, v30);
    v71 = v15;
    v72 = v14;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v82[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_241156B38(v78, a2, v82);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_241156B38(v79, a5, v82);
      _os_log_impl(&dword_2410F8000, v29, v30, "Inspecting AskTo message with GUID %s in Messages DB to see if it matches with question ID %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v33, -1, -1);
      MEMORY[0x245CDC5E0](v32, -1, -1);
    }

    sub_241109054(a3, v20);
    v34 = v80;
    v35 = v25;
    if ((*(v80 + 48))(v20, 1, v25) == 1)
    {
      sub_241137218(v20);

      v36 = sub_241165268();
      v37 = sub_241166048();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v82[0] = v39;
        *v38 = 136315138;
        v40 = sub_241156B38(v78, a2, v82);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_2410F8000, v36, v37, "Payload URL for message with GUID %s was nil. Skipping.", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x245CDC5E0](v39, -1, -1);
        MEMORY[0x245CDC5E0](v38, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    (*(v34 + 32))(v77, v20, v25);
    v45 = v73;
    sub_241165B48();
    sub_241165CE8();
    sub_241137280(&qword_27E530C50, MEMORY[0x277CEEE48]);
    sub_241137280(&qword_27E530C58, MEMORY[0x277CEEE40]);
    sub_241165B38();
    v46 = v82[0];
    v47 = sub_241165CC8();
    v48 = sub_241165328();
    v50 = v49;

    if (v48 == v79 && v50 == a5)
    {
      v51 = v71;
LABEL_20:

      goto LABEL_22;
    }

    v52 = sub_2411663E8();

    v51 = v71;
    if ((v52 & 1) == 0)
    {
      v65 = sub_241165CC8();
      sub_2411653D8();

      v66 = sub_241165188();
      v68 = v67;
      (*(v74 + 8))(v13, v75);
      if (v66 == v79 && v68 == a5)
      {
        goto LABEL_20;
      }

      v69 = sub_2411663E8();

      if ((v69 & 1) == 0)
      {

        (*(v51 + 8))(v45, v72);
        (*(v80 + 8))(v77, v35);
        return 0;
      }
    }

LABEL_22:
    v53 = v70;
    swift_beginAccess();
    v54 = *(v53 + 24);
    if (v54)
    {
      v55 = *(v53 + 16);

      v56 = sub_241165268();
      v57 = sub_241166048();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v76 = v55;
        v59 = v58;
        v60 = swift_slowAlloc();
        v81[0] = v60;
        *v59 = 136315650;
        *(v59 + 4) = sub_241156B38(v79, a5, v81);
        v79 = v35;
        *(v59 + 12) = 2080;
        v61 = v51;
        v62 = sub_241156B38(v76, v54, v81);

        *(v59 + 14) = v62;
        *(v59 + 22) = 2080;
        *(v59 + 24) = sub_241156B38(v78, a2, v81);
        _os_log_impl(&dword_2410F8000, v56, v57, "Found multiple messages matching question id %s. Previous found guid: %s. New found guid: %s", v59, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v60, -1, -1);
        MEMORY[0x245CDC5E0](v59, -1, -1);

        (*(v61 + 8))(v73, v72);
        (*(v80 + 8))(v77, v79);
LABEL_27:
        v63 = v70;
        swift_beginAccess();
        *(v63 + 16) = v78;
        *(v63 + 24) = a2;

        return 0;
      }
    }

    (*(v51 + 8))(v45, v72);
    (*(v80 + 8))(v77, v35);
    goto LABEL_27;
  }

  if (qword_27E5305F0 != -1)
  {
    swift_once();
  }

  v41 = sub_241165288();
  __swift_project_value_buffer(v41, qword_27E533B40);
  v42 = sub_241165268();
  v43 = sub_241166048();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2410F8000, v42, v43, "Got back nil message GUID from IMSPI", v44, 2u);
    MEMORY[0x245CDC5E0](v44, -1, -1);
  }

  return 0;
}

void sub_24113693C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_241165DA8();
  sub_2410FCF28(0, &qword_27E5310D0, 0x277D85C78);
  v11 = sub_2411660C8();
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_241136E50;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241136ED0;
  aBlock[3] = &block_descriptor_7;
  v14 = _Block_copy(aBlock);

  IMSPIQueryMessageWithGUIDAndQOS();
  _Block_release(v14);
}

void sub_241136B44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *(a1 + 16) && (sub_241100374(a1 + 32, v14), sub_2410FCF28(0, &qword_27E530D78, 0x277D18DD0), (swift_dynamicCast() & 1) != 0))
  {
    v5 = [v13 sender];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isMe];

      LOBYTE(v14[0]) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
      sub_241165F78();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27E5305F0 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533B40);

    v9 = sub_241165268();
    v10 = sub_241166048();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(a2, a3, v14);
      _os_log_impl(&dword_2410F8000, v9, v10, "Could not find message with guid: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    LOBYTE(v14[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
    sub_241165F78();
  }
}

uint64_t sub_241136D80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241136E50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D70, "PQ");
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_241136B44(a1, v3, v4);
}

uint64_t sub_241136ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_241165EF8();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241136F68(uint64_t a1, uint64_t a2)
{
  v4 = IMBalloonExtensionIDWithSuffix();
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = 0;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    v15[4] = sub_24113720C;
    v15[5] = v7;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_241135D58;
    v15[3] = &block_descriptor_9_0;
    v8 = _Block_copy(v15);

    IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
    _Block_release(v8);

    swift_beginAccess();
    v9 = *(v6 + 16);
  }

  else
  {
    if (qword_27E5305F0 != -1)
    {
      swift_once();
    }

    v10 = sub_241165288();
    __swift_project_value_buffer(v10, qword_27E533B40);
    v11 = sub_241165268();
    v12 = sub_241166048();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2410F8000, v11, v12, "IMBalloonBundleIdentifierAskTo was nil", v13, 2u);
      MEMORY[0x245CDC5E0](v13, -1, -1);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_241137194()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2411371CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241137218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241137280(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_241165CE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2411372E8(uint64_t a1)
{
  type metadata accessor for PendingAskStore();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_2410FBB24(MEMORY[0x277D84F90]);
  *(v1 + 120) = 0;
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  *(v1 + 112) = sub_24113734C;
  qword_27E533BD8 = v1;
  return result;
}

uint64_t sub_241137380@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_241165068();
  v1 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2411650D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = [v10 URLsForDirectory:5 inDomains:1];

  v12 = sub_241165EF8();
  if (*(v12 + 16))
  {
    v13 = *(v4 + 16);
    v14 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v28 = v3;
    v29 = v9;
    v13(v9, v14, v3);

    v33 = 0xD000000000000010;
    v34 = 0x800000024116BD70;
    v15 = *MEMORY[0x277CC91C0];
    v27 = *(v1 + 104);
    v16 = v30;
    v17 = v31;
    v27(v30, v15, v31);
    sub_241139978();
    sub_2411650C8();
    v18 = *(v1 + 8);
    v18(v16, v17);
    v33 = 0x41676E69646E6570;
    v34 = 0xEF6E6F736A2E6B73;
    v27(v16, *MEMORY[0x277CC91D8], v17);
    sub_2411650C8();
    v18(v16, v17);
    v19 = *(v4 + 8);
    v20 = v28;
    v19(v7, v28);
    return (v19)(v29, v20);
  }

  else
  {

    if (qword_27E530600 != -1)
    {
      swift_once();
    }

    v22 = sub_241165288();
    __swift_project_value_buffer(v22, qword_27E533B70);
    v23 = sub_241165268();
    v24 = sub_241166048();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116BD90, &v33);
      _os_log_impl(&dword_2410F8000, v23, v24, "PendingAskStore.%s failed to lookup default file path", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CDC5E0](v26, -1, -1);
      MEMORY[0x245CDC5E0](v25, -1, -1);
    }

    sub_2411399CC();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_241137810(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-1] - v6;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  sub_241165138();
  v8 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_241137A84(v7, a1, a2);
  swift_endAccess();
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533B70);

  v10 = sub_241165268();
  v11 = sub_241166068();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116BE10, v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_241156B38(a1, a2, v15);
    _os_log_impl(&dword_2410F8000, v10, v11, "PendingAskStore.%s added pending ask %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_2411387BC();
}

uint64_t sub_241137A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PendingAskStore.Metadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2410FB29C(a1, &qword_27E530DE8, &qword_241168B50);
    sub_241152004(a2, a3, v9);

    return sub_2410FB29C(v9, &qword_27E530DE8, &qword_241168B50);
  }

  else
  {
    sub_2410FC768(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_241153E84(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_241137C44(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  swift_beginAccess();
  v8 = *(v2 + 128);
  if (*(v8 + 16))
  {

    v9 = sub_2410FAD78(a1, a2);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for PendingAskStore.Metadata(0);
      v14 = *(v13 - 8);
      sub_241139C34(v12 + *(v14 + 72) * v11, v7);

      v15 = 1;
      (*(v14 + 56))(v7, 0, 1, v13);
      goto LABEL_8;
    }
  }

  v16 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v15 = 0;
LABEL_8:
  sub_2410FB29C(v7, &qword_27E530DE8, &qword_241168B50);
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v17 = sub_241165288();
  __swift_project_value_buffer(v17, qword_27E533B70);

  v18 = sub_241165268();
  v19 = sub_241166068();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_241156B38(0xD000000000000019, 0x800000024116BDF0, &v23);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_241156B38(a1, a2, &v23);
    *(v20 + 22) = 1024;
    *(v20 + 24) = v15;
    _os_log_impl(&dword_2410F8000, v18, v19, "PendingAskStore.%s %s ispendingAsk: %{BOOL}d", v20, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v21, -1, -1);
    MEMORY[0x245CDC5E0](v20, -1, -1);
  }

  return v15;
}

void sub_241137F68(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DE8, &qword_241168B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-1] - v6;
  if ((*(v2 + 136) & 1) == 0)
  {
    sub_2411381D4();
  }

  v8 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();

  sub_241137A84(v7, a1, a2);
  swift_endAccess();
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533B70);

  v10 = sub_241165268();
  v11 = sub_241166068();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_241156B38(0xD00000000000001DLL, 0x800000024116BDD0, v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_241156B38(a1, a2, v15);
    _os_log_impl(&dword_2410F8000, v10, v11, "PendingAskStore.%s removed pending ask %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_2411387BC();
}

uint64_t sub_2411381D4()
{
  v1 = v0;
  v2 = sub_2411650D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  v10 = *(v0 + 112);
  (v10)(v7);
  v26 = v3;
  v11 = [objc_opt_self() defaultManager];
  sub_2411650B8();
  v12 = sub_241165DA8();

  v13 = [v11 fileExistsAtPath_];

  if (v13)
  {
    v10();
    v21 = sub_2411650E8();
    v23 = v22;
    (*(v26 + 8))(v6, v2);
    sub_241164E38();
    swift_allocObject();
    sub_241164E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139B30();
    sub_241164E18();
    sub_2410FB5B8(v21, v23);

    v24 = v27;
  }

  else
  {
    v24 = sub_2410FBB24(MEMORY[0x277D84F90]);
  }

  swift_beginAccess();
  *(v1 + 128) = v24;

  *(v1 + 136) = 1;
  v14 = v26;
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v15 = sub_241165288();
  __swift_project_value_buffer(v15, qword_27E533B70);

  v16 = sub_241165268();
  v17 = sub_241166068();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_241156B38(0x292864616F6CLL, 0xE600000000000000, &v28);
    *(v18 + 12) = 2048;
    swift_beginAccess();
    *(v18 + 14) = *(*(v1 + 128) + 16);

    _os_log_impl(&dword_2410F8000, v16, v17, "PendingAskStore.%s Loaded pending asks. Count %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  else
  {
  }

  return (*(v14 + 8))(v9, v2);
}

void sub_2411387BC()
{
  v1 = sub_2411650D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241138C24();
  sub_241164E68();
  swift_allocObject();
  sub_241164E58();
  swift_beginAccess();
  v15 = *(v0 + 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DC0, &qword_241168B48);
  sub_241139A74();
  v5 = sub_241164E48();
  v7 = v6;

  (*(v0 + 112))(v8);
  sub_241165128();
  (*(v2 + 8))(v4, v1);
  if (qword_27E530600 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533B70);
  v10 = sub_241165268();
  v11 = sub_241166068();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_241156B38(0x292865766173, 0xE600000000000000, &v15);
    _os_log_impl(&dword_2410F8000, v10, v11, "PendingAskStore.%ssaved pending asks", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_2410FB5B8(v5, v7);
}

void sub_241138C24()
{
  v47[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2411650D8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v44 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  v15 = *(v0 + 112);
  (v15)(v12);
  v45 = v15;
  v46 = v5;
  v44 = v8;
  sub_241165088();
  v25 = *(v2 + 8);
  v25(v11, v1);
  sub_2411650B8();
  v25(v14, v1);
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v28 = sub_241165DA8();

  v29 = [v27 fileExistsAtPath_];

  if (v29)
  {
    if (qword_27E530600 != -1)
    {
      swift_once();
    }

    v30 = sub_241165288();
    __swift_project_value_buffer(v30, qword_27E533B70);
    v31 = sub_241165268();
    v32 = sub_241166068();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_241156B38(0xD00000000000001BLL, 0x800000024116BDB0, v47);
      _os_log_impl(&dword_2410F8000, v31, v32, "PendingAskStore.%s directory already exists", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      MEMORY[0x245CDC5E0](v33, -1, -1);
    }
  }

  else
  {
    v35 = [v26 defaultManager];
    v36 = v46;
    v45();
    v37 = v44;
    sub_241165088();
    v25(v36, v1);
    v38 = sub_241165078();
    v25(v37, v1);
    v47[0] = 0;
    v39 = [v35 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v47];

    v40 = v47[0];
    if (v39)
    {

      v41 = v40;
    }

    else
    {
      v46 = v47[0];
      v42 = v47[0];
      v43 = sub_241165058();

      swift_willThrow();
      if (qword_27E530600 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533B70);
      v17 = v43;
      v18 = sub_241165268();
      v19 = sub_241166048();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v47[0] = v22;
        *v20 = 136315394;
        *(v20 + 4) = sub_241156B38(0xD00000000000001BLL, 0x800000024116BDB0, v47);
        *(v20 + 12) = 2112;
        v23 = v43;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v24;
        *v21 = v24;
        _os_log_impl(&dword_2410F8000, v18, v19, "PendingAskStore.%s Failed to create storage directory: %@", v20, 0x16u);
        sub_2410FB29C(v21, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x245CDC5E0](v22, -1, -1);
        MEMORY[0x245CDC5E0](v20, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_24113920C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_241139284(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165168();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_241139304(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165168();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PendingAskStore.Metadata(uint64_t a1)
{
  result = qword_27E530D80;
  if (!qword_27E530D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411393C0(uint64_t a1)
{
  result = sub_241165168();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_241139448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2411663E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2411394E8(uint64_t a1)
{
  v2 = sub_241139A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241139524(uint64_t a1)
{
  v2 = sub_241139A20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_241139560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_241165168();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D98, &qword_241168B30);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PendingAskStore.Metadata(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241139A20();
  sub_2411664D8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_241139BEC(&qword_27E530DA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_241166398();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_2410FC768(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_241139800(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530DB0, &unk_241168B38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_241139A20();
  sub_2411664E8();
  sub_241165168();
  sub_241139BEC(&qword_27E530DB8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2411663A8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_241139978()
{
  result = qword_27E530FE0;
  if (!qword_27E530FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530FE0);
  }

  return result;
}

unint64_t sub_2411399CC()
{
  result = qword_27E530D90;
  if (!qword_27E530D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530D90);
  }

  return result;
}

unint64_t sub_241139A20()
{
  result = qword_27E530DA0;
  if (!qword_27E530DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DA0);
  }

  return result;
}

unint64_t sub_241139A74()
{
  result = qword_27E530DC8;
  if (!qword_27E530DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139BEC(&qword_27E530DD0, type metadata accessor for PendingAskStore.Metadata, &unk_241168AA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DC8);
  }

  return result;
}

unint64_t sub_241139B30()
{
  result = qword_27E530DD8;
  if (!qword_27E530DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530DC0, &qword_241168B48);
    sub_241139BEC(&qword_27E530DE0, type metadata accessor for PendingAskStore.Metadata, &unk_241168ACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DD8);
  }

  return result;
}

uint64_t sub_241139BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241139C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_241139CC4()
{
  result = qword_27E530DF0;
  if (!qword_27E530DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DF0);
  }

  return result;
}

unint64_t sub_241139D1C()
{
  result = qword_27E530DF8;
  if (!qword_27E530DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530DF8);
  }

  return result;
}

unint64_t sub_241139D74()
{
  result = qword_27E530E00;
  if (!qword_27E530E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E00);
  }

  return result;
}

unint64_t sub_241139DCC()
{
  result = qword_27E530E08;
  if (!qword_27E530E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E08);
  }

  return result;
}

void *sub_241139E4C()
{
  v0 = [objc_opt_self() defaultManager];
  type metadata accessor for PendingAskMetadataStore();
  result = swift_allocObject();
  result[3] = sub_241139ED0;
  result[4] = 0;
  result[5] = sub_24113A4CC;
  result[6] = 0;
  result[2] = v0;
  qword_27E533BE0 = result;
  return result;
}

uint64_t sub_241139F1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = a3;
  v52 = sub_241165068();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2411650D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v35[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v35[-v13];
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:5 inDomains:1];

  v17 = sub_241165EF8();
  if (*(v17 + 16))
  {
    v42 = v8;
    v43 = v14;
    (*(v8 + 16))(v14, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v44 = v3;
    v50 = 0xD000000000000010;
    v51 = 0x800000024116BD70;
    v36 = *MEMORY[0x277CC91C0];
    v37 = v7;
    v18 = *(v4 + 104);
    v19 = v52;
    v18(v6);
    v41 = v4 + 104;
    v39 = v18;
    v20 = sub_241139978();
    v21 = v45;
    v38 = v20;
    sub_2411650C8();
    v22 = *(v4 + 8);
    v22(v6, v19);
    v40 = v4 + 8;
    v50 = 0xD000000000000014;
    v51 = 0x800000024116BEB0;
    (v18)(v6, v36, v19);
    v23 = v46;
    sub_2411650C8();
    v22(v6, v19);
    v24 = *(v42 + 8);
    v25 = v21;
    v26 = v37;
    v24(v25, v37);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2411662B8();
    v27 = v49;

    v50 = v48;
    v51 = v27;
    MEMORY[0x245CDB790](0x7461646174656D5FLL, 0xEE006E6F736A2E61);
    v39(v6, *MEMORY[0x277CC91D0], v19);
    sub_2411650C8();
    v22(v6, v19);

    v24(v23, v26);
    return (v24)(v43, v26);
  }

  else
  {

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v29 = sub_241165288();
    __swift_project_value_buffer(v29, qword_27E533AC8);
    v30 = sub_241165268();
    v31 = sub_241166048();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_241156B38(0xD00000000000001FLL, 0x800000024116BEF0, &v50);
      _os_log_impl(&dword_2410F8000, v30, v31, "PendingAskMetadataStore.%s failed to lookup default file path", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x245CDC5E0](v33, -1, -1);
      MEMORY[0x245CDC5E0](v32, -1, -1);
    }

    sub_24113C6FC();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_24113A518@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = a2;
  v47 = a3;
  v52 = sub_241165068();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2411650D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v45 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v35[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v35[-v13];
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:13 inDomains:1];

  v17 = sub_241165EF8();
  if (*(v17 + 16))
  {
    v42 = v8;
    v43 = v14;
    (*(v8 + 16))(v14, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v44 = v3;
    v50 = 0xD000000000000010;
    v51 = 0x800000024116BD70;
    v36 = *MEMORY[0x277CC91C0];
    v37 = v7;
    v18 = *(v4 + 104);
    v19 = v52;
    v18(v6);
    v41 = v4 + 104;
    v39 = v18;
    v20 = sub_241139978();
    v21 = v45;
    v38 = v20;
    sub_2411650C8();
    v22 = *(v4 + 8);
    v22(v6, v19);
    v40 = v4 + 8;
    v50 = 0xD000000000000014;
    v51 = 0x800000024116BEB0;
    (v18)(v6, v36, v19);
    v23 = v46;
    sub_2411650C8();
    v22(v6, v19);
    v24 = *(v42 + 8);
    v25 = v21;
    v26 = v37;
    v24(v25, v37);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_2411662B8();
    v27 = v49;

    v50 = v48;
    v51 = v27;
    MEMORY[0x245CDB790](0x7461646174656D5FLL, 0xEE006E6F736A2E61);
    v39(v6, *MEMORY[0x277CC91D0], v19);
    sub_2411650C8();
    v22(v6, v19);

    v24(v23, v26);
    return (v24)(v43, v26);
  }

  else
  {

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v29 = sub_241165288();
    __swift_project_value_buffer(v29, qword_27E533AC8);
    v30 = sub_241165268();
    v31 = sub_241166048();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_241156B38(0xD000000000000012, 0x800000024116BED0, &v50);
      _os_log_impl(&dword_2410F8000, v30, v31, "PendingAskMetadataStore.%s failed to lookup default file path", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x245CDC5E0](v33, -1, -1);
      MEMORY[0x245CDC5E0](v32, -1, -1);
    }

    sub_24113C6FC();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_24113AAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2411650D8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113AB90, 0, 0);
}

uint64_t sub_24113AB90()
{
  v16 = v0;
  (*(v0[6] + 40))(v0[4], v0[5]);
  sub_24113C220();
  sub_241165128();
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533BA0);

  v3 = sub_241165268();
  v4 = sub_241166068();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_241156B38(0xD000000000000026, 0x800000024116BFA0, v15);
    *(v9 + 12) = 2080;
    v11 = sub_241165E08();
    v13 = sub_241156B38(v11, v12, v15);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_2410F8000, v3, v4, "PendingAskMetadataStore.%s added cached pending metadata %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24113AFD8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_2411650D8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113B0E0, 0, 0);
}

uint64_t sub_24113B0E0()
{
  v89 = v0;
  v88[1] = *MEMORY[0x277D85DE8];
  (*(v0[6] + 24))(v0[4], v0[5]);
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_24113C220();
  (*(v1 + 40))(v3, v2);
  v18 = *(v0[6] + 16);
  sub_2411650B8();
  v19 = sub_241165DA8();

  v20 = [v18 fileExistsAtPath_];

  if (!v20)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v54 = v0[9];
    v55 = v0[10];
    v56 = v0[7];
    v57 = v0[8];
    v58 = sub_241165288();
    __swift_project_value_buffer(v58, qword_27E533BA0);
    (*(v57 + 16))(v54, v55, v56);

    v59 = sub_241165268();
    v60 = sub_241166048();

    v61 = os_log_type_enabled(v59, v60);
    v63 = v0[10];
    v62 = v0[11];
    v65 = v0[8];
    v64 = v0[9];
    v66 = v0[7];
    if (v61)
    {
      v87 = v0[11];
      v67 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v88[0] = v85;
      *v67 = 136315650;
      *(v67 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v88);
      *(v67 + 12) = 2080;
      v68 = sub_241165E08();
      v70 = sub_241156B38(v68, v69, v88);

      *(v67 + 14) = v70;
      *(v67 + 22) = 2080;
      sub_24113C750();
      v71 = sub_2411663B8();
      v73 = v72;
      v74 = *(v65 + 8);
      v74(v64, v66);
      v75 = sub_241156B38(v71, v73, v88);

      *(v67 + 24) = v75;
      _os_log_impl(&dword_2410F8000, v59, v60, "PendingAskMetadataStore.%s File not found to move %s, %s", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v85, -1, -1);
      MEMORY[0x245CDC5E0](v67, -1, -1);

      v74(v63, v66);
      v74(v87, v66);
    }

    else
    {

      v83 = *(v65 + 8);
      v83(v64, v66);
      v83(v63, v66);
      v83(v62, v66);
    }

    goto LABEL_30;
  }

  sub_2411650B8();
  v21 = sub_241165DA8();

  v22 = [v18 fileExistsAtPath_];

  if (v22)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v23 = sub_241165288();
    __swift_project_value_buffer(v23, qword_27E533BA0);

    v24 = sub_241165268();
    v25 = sub_241166038();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v88[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v88);
      *(v26 + 12) = 2080;
      v28 = sub_241165E08();
      v30 = sub_241156B38(v28, v29, v88);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_2410F8000, v24, v25, "PendingAskMetadataStore.%s file already exists %s removing...", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v27, -1, -1);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    sub_2411650B8();
    v31 = sub_241165DA8();

    v0[3] = 0;
    v32 = [v18 removeItemAtPath:v31 error:v0 + 3];

    v33 = v0[3];
    if (!v32)
    {
      goto LABEL_27;
    }

    v34 = v33;
  }

  v35 = sub_241165078();
  v36 = sub_241165078();
  v0[2] = 0;
  v37 = [v18 moveItemAtURL:v35 toURL:v36 error:v0 + 2];

  v33 = v0[2];
  if (v37)
  {
    v38 = qword_27E530610;
    v39 = v33;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = sub_241165288();
    __swift_project_value_buffer(v40, qword_27E533BA0);

    v41 = sub_241165268();
    v42 = sub_241166038();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[10];
    v45 = v0[11];
    v47 = v0[7];
    v46 = v0[8];
    if (v43)
    {
      v86 = v0[11];
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v88[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v88);
      *(v48 + 12) = 2080;
      v50 = sub_241165E08();
      v52 = sub_241156B38(v50, v51, v88);

      *(v48 + 14) = v52;
      _os_log_impl(&dword_2410F8000, v41, v42, "PendingAskMetadataStore.%s Move cached pending metadata %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v49, -1, -1);
      MEMORY[0x245CDC5E0](v48, -1, -1);

      v53 = *(v46 + 8);
      v53(v44, v47);
      v53(v86, v47);
    }

    else
    {

      v84 = *(v46 + 8);
      v84(v44, v47);
      v84(v45, v47);
    }

LABEL_30:

    v16 = v0[1];
    goto LABEL_7;
  }

LABEL_27:
  v77 = v0[10];
  v76 = v0[11];
  v78 = v0[7];
  v79 = v0[8];
  v80 = v33;
  v81 = sub_241165058();

  swift_willThrow();
  v82 = *(v79 + 8);
  v82(v77, v78);
  v82(v76, v78);
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533BA0);

  v5 = v81;
  v6 = sub_241165268();
  v7 = sub_241166048();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v88[0] = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_241156B38(0xD00000000000002ALL, 0x800000024116BF70, v88);
    *(v8 + 12) = 2080;
    v11 = sub_241165E08();
    v13 = sub_241156B38(v11, v12, v88);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2112;
    v14 = v81;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2410F8000, v6, v7, "PendingAskMetadataStore.%s Failed to move cached pending metadata %s: %@", v8, 0x20u);
    sub_2410FDEB8(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  swift_willThrow();

  v16 = v0[1];
LABEL_7:

  return v16();
}

uint64_t sub_24113BB20(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2411650D8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113BC10, 0, 0);
}

uint64_t sub_24113BC10()
{
  v47 = v0;
  v46[1] = *MEMORY[0x277D85DE8];
  (*(v0[5] + 24))(v0[3], v0[4]);
  v13 = *(v0[5] + 16);
  sub_2411650B8();
  v14 = sub_241165DA8();

  v15 = [v13 fileExistsAtPath_];

  if (!v15)
  {
    if (qword_27E530610 != -1)
    {
      swift_once();
    }

    v34 = sub_241165288();
    __swift_project_value_buffer(v34, qword_27E533BA0);

    v22 = sub_241165268();
    v23 = sub_241166068();

    v35 = os_log_type_enabled(v22, v23);
    v26 = v0[7];
    v25 = v0[8];
    v27 = v0[6];
    if (!v35)
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v46);
    *(v28 + 12) = 2080;
    v36 = sub_241165E08();
    v38 = sub_241156B38(v36, v37, v46);

    *(v28 + 14) = v38;
    v33 = "PendingAskMetadataStore.%s message %s not found to remove";
    goto LABEL_17;
  }

  v16 = sub_241165078();
  v0[2] = 0;
  v17 = [v13 removeItemAtURL:v16 error:v0 + 2];

  v18 = v0[2];
  if (v17)
  {
    v19 = qword_27E530610;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_241165288();
    __swift_project_value_buffer(v21, qword_27E533BA0);

    v22 = sub_241165268();
    v23 = sub_241166068();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[7];
    v25 = v0[8];
    v27 = v0[6];
    if (!v24)
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v46);
    *(v28 + 12) = 2080;
    v30 = sub_241165E08();
    v32 = sub_241156B38(v30, v31, v46);

    *(v28 + 14) = v32;
    v33 = "PendingAskMetadataStore.%s removed pending message %s";
LABEL_17:
    _os_log_impl(&dword_2410F8000, v22, v23, v33, v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v29, -1, -1);
    MEMORY[0x245CDC5E0](v28, -1, -1);
LABEL_18:

    (*(v26 + 8))(v25, v27);
    goto LABEL_19;
  }

  v42 = v0[7];
  v41 = v0[8];
  v43 = v0[6];
  v44 = v18;
  v45 = sub_241165058();

  swift_willThrow();
  (*(v42 + 8))(v41, v43);
  if (qword_27E530610 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533BA0);

  v2 = v45;
  v3 = sub_241165268();
  v4 = sub_241166048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v46[0] = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116BF40, v46);
    *(v5 + 12) = 2080;
    v8 = sub_241165E08();
    v10 = sub_241156B38(v8, v9, v46);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    v11 = v45;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&dword_2410F8000, v3, v4, "PendingAskMetadataStore.%s Failed to remove pending message %s: %@", v5, 0x20u);
    sub_2410FDEB8(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

LABEL_19:

  v39 = v0[1];

  return v39();
}

void sub_24113C220()
{
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2411650D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241165088();
  sub_2411650A8();
  v5 = *(v0 + 16);
  v6 = sub_241165DA8();

  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533AC8);
    v9 = sub_241165268();
    v10 = sub_241166068();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(0xD000000000000023, 0x800000024116BF10, v29);
      _os_log_impl(&dword_2410F8000, v9, v10, "PendingAskMetadataStore.%s directory already exists", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v13 = sub_241165078();
    v29[0] = 0;
    v14 = [v5 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v29];

    if (v14)
    {
      v15 = *(v2 + 8);
      v16 = v29[0];
      v15(v4, v1);
    }

    else
    {
      v17 = v29[0];
      v18 = sub_241165058();

      swift_willThrow();
      (*(v2 + 8))(v4, v1);
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v19 = sub_241165288();
      __swift_project_value_buffer(v19, qword_27E533AC8);
      v20 = v18;
      v21 = sub_241165268();
      v22 = sub_241166048();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v29[0] = v25;
        *v23 = 136315394;
        *(v23 + 4) = sub_241156B38(0xD000000000000023, 0x800000024116BF10, v29);
        *(v23 + 12) = 2112;
        v26 = v18;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 14) = v27;
        *v24 = v27;
        _os_log_impl(&dword_2410F8000, v21, v22, "PendingAskMetadataStore.%s Failed to create storage directory: %@", v23, 0x16u);
        sub_2410FDEB8(v24);
        MEMORY[0x245CDC5E0](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x245CDC5E0](v25, -1, -1);
        MEMORY[0x245CDC5E0](v23, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_24113C690()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24113C6FC()
{
  result = qword_27E530E10;
  if (!qword_27E530E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E10);
  }

  return result;
}

unint64_t sub_24113C750()
{
  result = qword_27E530C70;
  if (!qword_27E530C70)
  {
    sub_2411650D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtension(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppExtension(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24113C908()
{
  result = qword_27E530E18;
  if (!qword_27E530E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E18);
  }

  return result;
}

uint64_t sub_24113C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2411400E0(a3, v25 - v10);
  v12 = sub_241165FA8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2410FB29C(v11, &unk_27E530F50, &qword_241167C20);
  }

  else
  {
    sub_241165F98();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_241165F58();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_241165DF8() + 32;
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

      sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);

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

  sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);
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

uint64_t sub_24113CC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24113CCEC, 0, 0);
}

uint64_t sub_24113CCEC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v44 = v3;
  v4 = v3[20];
  v5 = v4[9];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      sub_241135730(v8, (v3 + 7));
      v9 = sub_2411656C8();
      v42 = sub_241160DD4(v9);

      if (qword_27E530618 != -1)
      {
        swift_once();
      }

      v10 = v3[17];
      v11 = sub_241165288();
      __swift_project_value_buffer(v11, qword_27E533BB8);
      v12 = v10;
      v13 = sub_241165268();
      v14 = sub_241166038();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v43 = v16;
        *v15 = 136315394;
        v17 = sub_2411656C8();
        v18 = v6;
        v19 = sub_241165328();
        v21 = v20;

        v22 = v19;
        v6 = v18;
        v23 = sub_241156B38(v22, v21, &v43);

        *(v15 + 4) = v23;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v42;
        _os_log_impl(&dword_2410F8000, v13, v14, "Can process response for question %s: %{BOOL}d", v15, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v24 = v16;
        v5 = v40;
        MEMORY[0x245CDC5E0](v24, -1, -1);
        MEMORY[0x245CDC5E0](v15, -1, -1);

        if (v42)
        {
          goto LABEL_12;
        }
      }

      else
      {

        if (v42)
        {
LABEL_12:
          sub_24110324C((v41 + 56), v41 + 16);
          v25 = *__swift_project_boxed_opaque_existential_1((v41 + 16), *(v41 + 40));
          v26 = swift_task_alloc();
          *(v41 + 176) = v26;
          *v26 = v41;
          v26[1] = sub_24113D0D8;
          v27 = *(v41 + 136);

          return sub_24115FCFC(v27, v25);
        }
      }

      ++v7;
      v3 = v41;
      a1 = __swift_destroy_boxed_opaque_existential_1((v41 + 56));
      v8 += 40;
      if (v6 == v7)
      {
        v4 = *(v41 + 160);
        break;
      }
    }
  }

  v29 = v3[21];
  v31 = v3[18];
  v30 = v3[19];
  v32 = v3[17];
  v33 = sub_241165FA8();
  (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v4;
  v34[5] = v32;
  v34[6] = v31;
  v34[7] = v30;
  v32;

  sub_24113C95C(0, 0, v29, &unk_241168EE8, v34);

  v35 = __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v3[23] = v35;
  v36 = sub_2411656C8();
  v37 = sub_241165328();
  v39 = v38;

  v3[24] = v37;
  v3[25] = v39;
  a2 = *v35;
  a1 = sub_24113D334;
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24113D0D8()
{

  return MEMORY[0x2822009F8](sub_24113D1D4, 0, 0);
}

uint64_t sub_24113D1D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = sub_241165FA8();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v5;
  v7[6] = v4;
  v7[7] = v3;
  v8 = v5;

  sub_24113C95C(0, 0, v1, &unk_241168EE8, v7);

  v9 = __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v0[23] = v9;
  v10 = sub_2411656C8();
  v11 = sub_241165328();
  v13 = v12;

  v0[24] = v11;
  v0[25] = v13;
  v14 = *v9;

  return MEMORY[0x2822009F8](sub_24113D334, v14, 0);
}

uint64_t sub_24113D334()
{
  *(v0 + 248) = sub_241137C44(*(v0 + 192), *(v0 + 200)) & 1;

  return MEMORY[0x2822009F8](sub_24113D3B8, 0, 0);
}

uint64_t sub_24113D3B8()
{
  v35 = v0;
  if (*(v0 + 248) == 1)
  {
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 136);
    v2 = sub_241165288();
    *(v0 + 208) = __swift_project_value_buffer(v2, qword_27E533AE0);
    v3 = v1;
    v4 = sub_241165268();
    v5 = sub_241166068();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v34 = v7;
      *v6 = 136315138;
      v8 = sub_2411656C8();
      v9 = sub_241165328();
      v11 = v10;

      v12 = sub_241156B38(v9, v11, &v34);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_2410F8000, v4, v5, "This is a pending Ask for this device. Processing response. %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x245CDC5E0](v7, -1, -1);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    v13 = *(v0 + 160);
    sub_24113DE94(*(v0 + 136), *(v0 + 144), *(v0 + 152));
    v14 = __swift_project_boxed_opaque_existential_1((v13 + 32), *(v13 + 56));
    *(v0 + 216) = v14;
    v15 = sub_2411656C8();
    v16 = sub_241165328();
    v18 = v17;

    *(v0 + 224) = v16;
    *(v0 + 232) = v18;
    v19 = *v14;

    return MEMORY[0x2822009F8](sub_24113D728, v19, 0);
  }

  else
  {
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 136);
    v21 = sub_241165288();
    __swift_project_value_buffer(v21, qword_27E533AE0);
    v22 = v20;
    v23 = sub_241165268();
    v24 = sub_241166068();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34 = v26;
      *v25 = 136315138;
      v27 = sub_2411656C8();
      v28 = sub_241165328();
      v30 = v29;

      v31 = sub_241156B38(v28, v30, &v34);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2410F8000, v23, v24, "This is not a pending Ask for this device. Ignoring response. %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CDC5E0](v26, -1, -1);
      MEMORY[0x245CDC5E0](v25, -1, -1);
    }

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_24113D728()
{
  sub_241137F68(*(v0 + 224), *(v0 + 232));

  return MEMORY[0x2822009F8](sub_24113D7A4, 0, 0);
}

uint64_t sub_24113D7A4()
{
  v1 = v0[18];
  v2 = v0[19];
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v3 = sub_24113FEE0(v1, v2, 0);
  v14 = v3;
  if (!v3)
  {
    goto LABEL_2;
  }

  v15 = [v3 identities];
  sub_2410FCF28(0, &unk_27E530E20, 0x277CC1E58);
  v16 = sub_241165EF8();

  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_25:

    goto LABEL_2;
  }

  result = sub_2411661F8();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x245CDBC20](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = [objc_opt_self() identityForLSApplicationIdentity_];
  if (!v19)
  {

LABEL_2:
    v4 = sub_241165268();
    v5 = sub_241166048();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2410F8000, v4, v5, "Client process identity was nil. Assuming client process is XPC-capable.", v6, 2u);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    v7 = &type metadata for DaemonLauncher;
    v8 = &off_2852EC878;
    v0[15] = &type metadata for DaemonLauncher;
    v0[16] = &off_2852EC878;
    goto LABEL_5;
  }

  v20 = v19;
  v21 = [v19 isApplication];
  v22 = sub_241165268();
  v23 = sub_241166068();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2410F8000, v22, v23, "Client process is an app. Using BoardServices to notify the client of the AskTo response.", v25, 2u);
      MEMORY[0x245CDC5E0](v25, -1, -1);
    }

    v7 = &type metadata for AppLauncher;
    v8 = &off_2852EB0F8;
  }

  else
  {
    if (v24)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2410F8000, v22, v23, "Client process is not an app, so we're assuming we're a daemon or some other process type that allows us to XPC to it.", v26, 2u);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    v7 = &type metadata for DaemonLauncher;
    v8 = &off_2852EC878;
  }

  v0[15] = v7;
  v0[16] = v8;

LABEL_5:
  __swift_project_boxed_opaque_existential_1(v0 + 12, v7);
  v27 = (v8[1] + *v8[1]);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_24113DBAC;
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[17];

  return v27(v11, v10, v12, v7, v8);
}

uint64_t sub_24113DBAC()
{

  return MEMORY[0x2822009F8](sub_24113DCA8, 0, 0);
}

uint64_t sub_24113DCA8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

id sub_24113DD10()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
LABEL_5:
    v9 = v1;
    return v2;
  }

  v3 = *(v0 + 16);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() defaultCenter];
    v7 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v3 accountStore:v5 notificationCenter:v6];

    v8 = *(v0 + 24);
    *(v0 + 24) = v7;
    v2 = v7;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24113DDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_241106740;

  return sub_2411402F8(a5, a6, a7);
}

void sub_24113DE94(void *a1, void *a2, uint64_t a3)
{
  v97 = a3;
  v96 = a2;
  v95 = sub_2411659F8();
  v4 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v91 - v8);
  v10 = sub_2411656C8();
  v11 = sub_2411653A8();

  v12 = sub_241165368();
  v14 = v13;

  if (v12 == 0xD00000000000002DLL && 0x800000024116B440 == v14)
  {

    goto LABEL_5;
  }

  v15 = sub_2411663E8();

  if (v15)
  {
LABEL_5:
    v16 = sub_2411656C8();
    sub_241165298();

    v17 = sub_2411652E8();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v9, 1, v17) == 1)
    {
      sub_2410FB29C(v9, &qword_27E530CE8, &qword_241168400);
LABEL_16:
      if (qword_27E5305D0 != -1)
      {
        swift_once();
      }

      v34 = sub_241165288();
      __swift_project_value_buffer(v34, qword_27E533AE0);
      v35 = a1;
      v36 = sub_241165268();
      v37 = sub_241166048();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v100 = v39;
        *v38 = 136315138;
        v40 = sub_2411656C8();
        v41 = sub_241165328();
        v43 = v42;

        v44 = sub_241156B38(v41, v43, &v100);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_2410F8000, v36, v37, "Comm Limits AskTo response for question %s could not decode topic", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x245CDC5E0](v39, -1, -1);
        MEMORY[0x245CDC5E0](v38, -1, -1);
      }

      return;
    }

    if ((*(v18 + 88))(v9, v17) != *MEMORY[0x277CEEAD0])
    {
      (*(v18 + 8))(v9, v17);
      goto LABEL_16;
    }

    (*(v18 + 96))(v9, v17);
    v19 = *v9;
    v20 = sub_2411656A8();
    v21 = sub_241165418();
    v23 = v22;

    if (v21 == 0xD000000000000028 && 0x800000024116C060 == v23)
    {
    }

    else
    {
      v46 = sub_2411663E8();

      if ((v46 & 1) == 0)
      {
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v76 = sub_241165288();
        __swift_project_value_buffer(v76, qword_27E533AE0);
        v77 = a1;
        v62 = sub_241165268();
        v63 = sub_241166068();

        if (!os_log_type_enabled(v62, v63))
        {
          goto LABEL_53;
        }

        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v100 = v65;
        *v64 = 136315138;
        v78 = sub_2411656C8();
        v79 = sub_241165328();
        v81 = v80;

        v82 = sub_241156B38(v79, v81, &v100);

        *(v64 + 4) = v82;
        v71 = "Comm Limits AskTo response for question %s was declined";
        goto LABEL_52;
      }
    }

    v94 = a1;
    v100 = MEMORY[0x277D84F90];
    v47 = sub_241165A18();
    v48 = *(v47 + 16);
    if (v48)
    {
      v92 = v19;
      v93 = v47;
      v49 = v4 + 16;
      v50 = *(v4 + 16);
      v51 = v47 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
      v52 = *(v49 + 56);
      v53 = (v49 - 8);
      do
      {
        v54 = v95;
        v50(v6, v51, v95);
        v55 = sub_24113E968(v6, v96, v97);
        (*v53)(v6, v54);
        v56 = v55;
        MEMORY[0x245CDB820]();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_241165F18();
        }

        sub_241165F28();

        v51 += v52;
        --v48;
      }

      while (v48);
      v57 = v100;

      v19 = v92;
      if (!(v57 >> 62))
      {
LABEL_31:
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

LABEL_39:

        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v72 = sub_241165288();
        __swift_project_value_buffer(v72, qword_27E533AE0);
        v73 = sub_241165268();
        v74 = sub_241166048();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_2410F8000, v73, v74, "No contacts to save! Bailing", v75, 2u);
          MEMORY[0x245CDC5E0](v75, -1, -1);
        }

        return;
      }
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_31;
      }
    }

    if (sub_2411661F8())
    {
LABEL_32:
      v58 = sub_24113EFB4(v57);

      if (v58)
      {
        v59 = v94;
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v60 = sub_241165288();
        __swift_project_value_buffer(v60, qword_27E533AE0);
        v61 = v59;
        v62 = sub_241165268();
        v63 = sub_241166048();

        if (!os_log_type_enabled(v62, v63))
        {
          goto LABEL_53;
        }

        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v99 = v65;
        *v64 = 136315138;
        v66 = sub_2411656C8();
        v67 = sub_241165328();
        v69 = v68;

        v70 = sub_241156B38(v67, v69, &v99);

        *(v64 + 4) = v70;
        v71 = "Successfully handled AskTo response for question id %s";
      }

      else
      {
        v83 = v94;
        if (qword_27E5305D0 != -1)
        {
          swift_once();
        }

        v84 = sub_241165288();
        __swift_project_value_buffer(v84, qword_27E533AE0);
        v85 = v83;
        v62 = sub_241165268();
        v63 = sub_241166048();

        if (!os_log_type_enabled(v62, v63))
        {
          goto LABEL_53;
        }

        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v99 = v65;
        *v64 = 136315138;
        v86 = sub_2411656C8();
        v87 = sub_241165328();
        v89 = v88;

        v90 = sub_241156B38(v87, v89, &v99);

        *(v64 + 4) = v90;
        v71 = "Failed to handle AskTo response for question id %s";
      }

LABEL_52:
      _os_log_impl(&dword_2410F8000, v62, v63, v71, v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x245CDC5E0](v65, -1, -1);
      MEMORY[0x245CDC5E0](v64, -1, -1);
LABEL_53:

      return;
    }

    goto LABEL_39;
  }

  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v24 = sub_241165288();
  __swift_project_value_buffer(v24, qword_27E533AE0);
  v25 = a1;
  v98 = sub_241165268();
  v26 = sub_241166048();

  if (os_log_type_enabled(v98, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v100 = v28;
    *v27 = 136315138;
    v29 = sub_2411656C8();
    v30 = sub_241165328();
    v32 = v31;

    v33 = sub_241156B38(v30, v32, &v100);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2410F8000, v98, v26, "Question %s was not a communication question", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CDC5E0](v28, -1, -1);
    MEMORY[0x245CDC5E0](v27, -1, -1);
  }

  else
  {
    v45 = v98;
  }
}

id sub_24113E968(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v46 - v5;
  v7 = sub_241165028();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2411659B8();
  if (v12 && (v13 = sub_24113F6E4(v11, v12), , v13))
  {
    [v13 mutableCopy];
    sub_2411661A8();

    swift_unknownObjectRelease();
    sub_2410FCF28(0, &qword_27E530E58, 0x277CBDB38);
    swift_dynamicCast();
    v15 = v48;
    v14 = v49;
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    sub_2411659D8();
    if (v17)
    {

      sub_241165038();

      (*(v8 + 56))(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      v14 = v16;
      sub_24115AB9C();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v14 = v16;
    }

    v18 = sub_241165998();
    v15 = v48;
    if (v19 >> 60 != 15)
    {
      v20 = v18;
      v21 = v19;
      v22 = sub_2411650F8();
      [v14 setImageData_];

      sub_241109164(v20, v21);
    }
  }

  sub_2410FCF28(0, &unk_27E530E40, 0x277CC1E90);

  v23 = sub_24113FD84(v15, a3, 1);
  if (v23)
  {
    v47 = v23;
    v26 = [v23 localizedName];
    v24 = sub_241165DD8();
    v25 = v27;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v47 = 0;
  }

  v28 = sub_2411659E8();
  v46[1] = MEMORY[0x245CDB260]();

  v29 = sub_2411659E8();
  MEMORY[0x245CDB260]();

  v48 = v14;
  if (v25)
  {
    v46[0] = v24;
  }

  else
  {

    v46[0] = v15;
  }

  v30 = sub_2411659E8();
  MEMORY[0x245CDB260](v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2411673F0;
  *(v31 + 32) = v15;
  *(v31 + 40) = a3;
  v32 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

  v33 = sub_241165DA8();

  v34 = sub_241165DA8();

  v35 = sub_241165DA8();

  v36 = sub_241165DA8();

  v37 = sub_241165EE8();

  v38 = [v32 initWithUrlString:0 username:v33 userIdentifier:v34 service:v35 displayname:v36 teamIdentifier:0 bundleIdentifiers:v37];

  v39 = objc_allocWithZone(MEMORY[0x277CBDB20]);
  v40 = [v39 initWithLabel:0 value:{v38, v46[0]}];
  v41 = v48;
  v42 = [v48 socialProfiles];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E50, qword_241168F00);
  v43 = sub_241165EF8();

  v50[0] = v43;
  MEMORY[0x245CDB820]();
  if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_241165F18();
  }

  sub_241165F28();
  v44 = sub_241165EE8();

  [v41 setSocialProfiles_];

  return v41;
}

id sub_24113EFB4(unint64_t a1)
{
  v5 = a1;
  v54 = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    v6 = sub_2411661F8();
    if (v6)
    {
LABEL_3:
      v7 = sub_24113DD10();
      v50 = [v7 downtimeWhitelistContainer];

      v52 = MEMORY[0x277D84F90];
      v53 = MEMORY[0x277D84F90];
      if (v6 < 1)
      {
        __break(1u);
      }

      else
      {
        v48 = v1;
        v8 = 0;
        v2 = MEMORY[0x277D84F90];
        v3 = MEMORY[0x277D84F90];
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x245CDBC20](v8, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = [v9 hasBeenPersisted];
          v12 = v10;
          if (v11)
          {
            MEMORY[0x245CDB820]();
            if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_241165F18();
            }

            sub_241165F28();

            v2 = v52;
          }

          else
          {
            MEMORY[0x245CDB820]();
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_241165F18();
            }

            sub_241165F28();

            v3 = v53;
          }

          ++v8;
        }

        while (v6 != v8);
        v5 = [objc_allocWithZone(MEMORY[0x277CBDBA0]) init];
        [v5 setIgnoresGuardianRestrictions_];
        v4 = 0x278CC3000uLL;
        v13 = [v50 identifier];
        v14 = sub_241165DD8();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (!v17)
        {
          if (qword_27E5305D0 != -1)
          {
            swift_once();
          }

          v18 = sub_241165288();
          __swift_project_value_buffer(v18, qword_27E533AE0);
          v19 = sub_241165268();
          v20 = sub_241166048();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_2410F8000, v19, v20, "downtimeContainer.identifier has no value. This will cause issues saving the contact.", v21, 2u);
            MEMORY[0x245CDC5E0](v21, -1, -1);
          }
        }

        if (!(v3 >> 62))
        {
          v49 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v49)
          {
            goto LABEL_41;
          }

LABEL_26:
          if (v49 < 1)
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v22 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x245CDBC20](v22, v3);
            }

            else
            {
              v23 = *(v3 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = [v50 *(v4 + 3448)];
            if (!v25)
            {
              sub_241165DD8();
              v25 = sub_241165DA8();
            }

            ++v22;
            [v5 addContact:v24 toContainerWithIdentifier:v25];
          }

          while (v49 != v22);
LABEL_41:

          if (v2 >> 62)
          {
            v31 = sub_2411661F8();
            if (v31)
            {
LABEL_43:
              if (v31 >= 1)
              {
                for (i = 0; i != v31; ++i)
                {
                  if ((v2 & 0xC000000000000001) != 0)
                  {
                    v33 = MEMORY[0x245CDBC20](i, v2);
                  }

                  else
                  {
                    v33 = *(v2 + 8 * i + 32);
                  }

                  v34 = v33;
                  [v5 updateContact_];
                }

                goto LABEL_50;
              }

              goto LABEL_59;
            }
          }

          else
          {
            v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
              goto LABEL_43;
            }
          }

LABEL_50:

          v35 = *(v48 + 16);
          v51 = 0;
          v30 = [v35 executeSaveRequest:v5 error:&v51];
          if (v30)
          {
            v36 = v51;
          }

          else
          {
            v37 = v51;
            v38 = sub_241165058();

            swift_willThrow();
            if (qword_27E5305D0 != -1)
            {
              swift_once();
            }

            v39 = sub_241165288();
            __swift_project_value_buffer(v39, qword_27E533AE0);
            v40 = v38;
            v41 = sub_241165268();
            v42 = sub_241166048();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              *v43 = 138412290;
              v45 = v38;
              v46 = _swift_stdlib_bridgeErrorToNSError();
              *(v43 + 4) = v46;
              *v44 = v46;
              _os_log_impl(&dword_2410F8000, v41, v42, "Error persisting contacts: %@", v43, 0xCu);
              sub_2410FB29C(v44, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v44, -1, -1);
              MEMORY[0x245CDC5E0](v43, -1, -1);
            }

            else
            {
            }
          }

          return v30;
        }
      }

      v49 = sub_2411661F8();
      if (!v49)
      {
        goto LABEL_41;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E5305D0 != -1)
  {
LABEL_60:
    swift_once();
  }

  v26 = sub_241165288();
  __swift_project_value_buffer(v26, qword_27E533AE0);
  v27 = sub_241165268();
  v28 = sub_241166048();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2410F8000, v27, v28, "No contacts were found in the vCard data in the AskTo payload", v29, 2u);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  return 0;
}

id sub_24113F6E4(uint64_t a1, unint64_t a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2411673F0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_241165EE8();

  v8 = [v5 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_241168E60;
  v10 = *MEMORY[0x277CBD000];
  v11 = *MEMORY[0x277CBCFF8];
  v12 = MEMORY[0x277CBCFC0];
  *(v9 + 32) = *MEMORY[0x277CBD000];
  *(v9 + 40) = v11;
  v13 = *v12;
  v14 = *MEMORY[0x277CBD098];
  *(v9 + 48) = *v12;
  *(v9 + 56) = v14;
  v15 = *MEMORY[0x277CBD138];
  *(v9 + 64) = *MEMORY[0x277CBD138];
  v16 = *(v2 + 16);
  v17 = v10;
  v18 = v11;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E68, &qword_241168F18);
  v22 = sub_241165EE8();

  v51[0] = 0;
  v23 = [v16 unifiedContactsMatchingPredicate:v8 keysToFetch:v22 error:v51];

  v24 = v51[0];
  if (v23)
  {
    sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
    v25 = sub_241165EF8();
    v26 = v24;
  }

  else
  {
    v27 = v51[0];
    v28 = sub_241165058();

    swift_willThrow();
    if (qword_27E5305D0 != -1)
    {
      swift_once();
    }

    v29 = sub_241165288();
    __swift_project_value_buffer(v29, qword_27E533AE0);

    v30 = v28;
    v31 = sub_241165268();
    v32 = sub_241166048();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_241156B38(a1, a2, v51);
      *(v33 + 12) = 2112;
      v36 = v28;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_2410F8000, v31, v32, "Error fetching contact for identifier %s: %@", v33, 0x16u);
      sub_2410FB29C(v34, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v33, -1, -1);
    }

    else
    {
    }

    v25 = MEMORY[0x277D84F90];
  }

  if (v25 >> 62)
  {
    if (sub_2411661F8() < 2)
    {
      goto LABEL_15;
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_15;
  }

  if (qword_27E5305D0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v38 = sub_241165288();
    __swift_project_value_buffer(v38, qword_27E533AE0);

    v39 = sub_241165268();
    v40 = sub_241166048();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_241156B38(a1, a2, v51);
      _os_log_impl(&dword_2410F8000, v39, v40, "Matched multiple contacts for identifier %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245CDC5E0](v42, -1, -1);
      MEMORY[0x245CDC5E0](v41, -1, -1);
    }

LABEL_15:
    if (v25 >> 62)
    {
      break;
    }

    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_17:
    if ((v25 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x245CDBC20](0, v25);
      goto LABEL_20;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v25 + 32);
LABEL_20:
      v44 = v43;

      return v44;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  if (sub_2411661F8())
  {
    goto LABEL_17;
  }

LABEL_22:

  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v45 = sub_241165288();
  __swift_project_value_buffer(v45, qword_27E533AE0);

  v46 = sub_241165268();
  v47 = sub_241166048();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_241156B38(a1, a2, v51);
    _os_log_impl(&dword_2410F8000, v46, v47, "Didn't find any contacts for identifier %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x245CDC5E0](v49, -1, -1);
    MEMORY[0x245CDC5E0](v48, -1, -1);
  }

  return 0;
}

id sub_24113FD84(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_241165DA8();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_241165058();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_24113FE6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_24113FEE0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_241165DA8();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_241165058();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_24113FFBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24114000C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_241106740;

  return sub_24113DDE8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2411400E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241140150(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241135C18;

  return sub_24113012C(a1, v4);
}

uint64_t sub_241140208()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241140240(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241106740;

  return sub_24113012C(a1, v4);
}

uint64_t sub_2411402F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  v4 = sub_2411651A8();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2411403BC, 0, 0);
}

uint64_t sub_2411403BC()
{
  v1 = v0[38];
  v23 = v0[37];
  sub_2411656B8();
  v2 = sub_241165DA8();

  v3 = [objc_opt_self() destinationWithURI_];
  v0[42] = v3;

  v4 = sub_2411656C8();
  sub_2411653D8();

  v5 = sub_2411656C8();
  v0[43] = sub_2411653A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v6 = swift_allocObject();
  v0[44] = v6;
  *(v6 + 16) = xmmword_241167630;
  *(v6 + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v8;
  v9 = v3;
  v10 = sub_2410FB2FC(inited);
  v0[45] = v10;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_241167FE0;
  *(v11 + 32) = 0xD000000000000010;
  *(v11 + 40) = 0x800000024116AA70;
  v12 = sub_241165188();
  v13 = MEMORY[0x277D837D0];
  *(v11 + 48) = v12;
  *(v11 + 56) = v14;
  *(v11 + 72) = v13;
  *(v11 + 80) = 0xD000000000000017;
  *(v11 + 88) = 0x800000024116AA90;
  v15 = MEMORY[0x277D839B0];
  *(v11 + 96) = 1;
  *(v11 + 120) = v15;
  *(v11 + 128) = 0x6369706F74;
  *(v11 + 136) = 0xE500000000000000;
  *(v11 + 144) = sub_241165368();
  *(v11 + 152) = v16;
  *(v11 + 168) = v13;
  *(v11 + 176) = 0x696669746E656469;
  *(v11 + 216) = v13;
  *(v11 + 184) = 0xEA00000000007265;
  *(v11 + 192) = v23;
  *(v11 + 200) = v1;

  v17 = sub_2410FB9E0(v11);
  v0[46] = v17;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v18 = qword_27E533BE8;
  v19 = swift_task_alloc();
  v0[47] = v19;
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = v6;
  v19[5] = v10;
  v20 = swift_task_alloc();
  v0[48] = v20;
  *v20 = v0;
  v20[1] = sub_24114075C;
  v21 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v19, v21);
}

uint64_t sub_24114075C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_241140934;
  }

  else
  {

    v2 = sub_24114089C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24114089C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241140934()
{
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  (*(v3 + 8))(v2, v4);
  if (qword_27E5305D0 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533AE0);
  v6 = sub_241165268();
  v7 = sub_241166068();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[49];
  v10 = v0[42];
  if (v8)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2410F8000, v6, v7, "Not able to send out response acknowledgement back to requester", v11, 2u);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

unint64_t sub_241140AC8(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  v4 = 0xD00000000000002DLL;
  v5 = "alconsent.choice.approve";
  if (a1)
  {
    v4 = 0xD000000000000041;
  }

  else
  {
    v5 = "e AskTo response.";
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5 | 0x8000000000000000;
  v6 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v6;
}

unint64_t sub_241140BAC()
{
  if (*v0)
  {
    return 0xD000000000000041;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_241140BF0(uint64_t a1)
{
  v2 = sub_241141AD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241140C2C(uint64_t a1)
{
  v2 = sub_241141AD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241140C68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for ScreenTimeResponseTask(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241140D24, 0, 0);
}

uint64_t sub_241140D24()
{
  v79 = v0;
  v78[2] = *MEMORY[0x277D85DE8];
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E5339F0);
  sub_241141790(v1, v2);
  v4 = sub_241165268();
  v5 = sub_241166068();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v78[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v78);
    *(v8 + 12) = 2080;
    sub_241165BD8();
    sub_2411418A4();
    v10 = sub_2411663B8();
    v12 = v11;
    sub_2411417F4(v7);
    v13 = sub_241156B38(v10, v12, v78);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s called for client %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {

    sub_2411417F4(v7);
  }

  v14 = sub_241165CD8();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x277D4B8D8]) init];
    v17 = sub_2411656A8();
    v18 = sub_241165418();
    v20 = v19;

    v21 = HIBYTE(v20) & 0xF;
    v22 = v18 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {

LABEL_73:
      v54 = v15;
      v55 = sub_241165268();
      v56 = sub_241166048();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v78[0] = v59;
        *v57 = 136315394;
        *(v57 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v78);
        *(v57 + 12) = 2112;
        *(v57 + 14) = v54;
        *v58 = v15;
        v60 = v54;
        _os_log_impl(&dword_2410F8000, v55, v56, "%s Unable to derive STAskForTimeAnswer from AskTo response. response: %@", v57, 0x16u);
        sub_2410FB29C(v58, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v58, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x245CDC5E0](v59, -1, -1);
        MEMORY[0x245CDC5E0](v57, -1, -1);
      }

      sub_241141850();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      goto LABEL_80;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v26 = sub_24113049C(v18, v20, 10);
      v53 = v77;
LABEL_72:

      if ((v53 & 1) == 0)
      {
        v62 = sub_2411656C8();
        sub_241165328();

        v63 = sub_241165DA8();

        *(v0 + 16) = 0;
        v64 = [v16 respondToAskForTimeRequestWithIdentifier:v63 answer:v26 error:v0 + 16];

        v65 = *(v0 + 16);
        if (v64)
        {
          v66 = v65;
          v67 = v15;
          v68 = sub_241165268();
          v69 = sub_241166068();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v78[0] = v72;
            *v70 = 136315394;
            *(v70 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v78);
            *(v70 + 12) = 2112;
            *(v70 + 14) = v67;
            *v71 = v15;
            v73 = v67;
            _os_log_impl(&dword_2410F8000, v68, v69, "%s Updated ScreenTime with response. response: %@", v70, 0x16u);
            sub_2410FB29C(v71, &qword_27E530E30, &qword_2411676F0);
            MEMORY[0x245CDC5E0](v71, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x245CDC5E0](v72, -1, -1);
            MEMORY[0x245CDC5E0](v70, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v74 = v65;
          sub_241165058();

          swift_willThrow();
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v78[0] = v18;
      v78[1] = v20 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v21)
        {
          if (--v21)
          {
            v26 = 0;
            v45 = v78 + 1;
            while (1)
            {
              v46 = *v45 - 48;
              if (v46 > 9)
              {
                break;
              }

              v47 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v47 + v46;
              if (__OFADD__(v47, v46))
              {
                break;
              }

              ++v45;
              if (!--v21)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_90:
        __break(1u);
      }

      if (v18 != 45)
      {
        if (v21)
        {
          v26 = 0;
          v50 = v78;
          while (1)
          {
            v51 = *v50 - 48;
            if (v51 > 9)
            {
              break;
            }

            v52 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v52 + v51;
            if (__OFADD__(v52, v51))
            {
              break;
            }

            v50 = (v50 + 1);
            if (!--v21)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v21)
      {
        if (--v21)
        {
          v26 = 0;
          v39 = v78 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v21)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v24 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v24 = sub_2411662F8();
      }

      v25 = *v24;
      if (v25 == 43)
      {
        if (v22 >= 1)
        {
          v21 = v22 - 1;
          if (v22 != 1)
          {
            v26 = 0;
            if (v24)
            {
              v42 = v24 + 1;
              while (1)
              {
                v43 = *v42 - 48;
                if (v43 > 9)
                {
                  goto LABEL_70;
                }

                v44 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_70;
                }

                v26 = v44 + v43;
                if (__OFADD__(v44, v43))
                {
                  goto LABEL_70;
                }

                ++v42;
                if (!--v21)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_89;
      }

      if (v25 != 45)
      {
        if (v22)
        {
          v26 = 0;
          if (v24)
          {
            while (1)
            {
              v48 = *v24 - 48;
              if (v48 > 9)
              {
                goto LABEL_70;
              }

              v49 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_70;
              }

              v26 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_70;
              }

              ++v24;
              if (!--v22)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v26 = 0;
        LOBYTE(v21) = 1;
        goto LABEL_71;
      }

      if (v22 >= 1)
      {
        v21 = v22 - 1;
        if (v22 != 1)
        {
          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_70;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_70;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_70;
              }

              ++v27;
              if (!--v21)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v21) = 0;
LABEL_71:
          v53 = v21;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v30 = *(v0 + 24);
  v31 = sub_241165268();
  v32 = sub_241166058();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 24);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v78[0] = v36;
    *v34 = 136315394;
    *(v34 + 4) = sub_241156B38(0x286D726F66726570, 0xEE00293A68746977, v78);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v33;
    *v35 = v33;
    v37 = v33;
    _os_log_impl(&dword_2410F8000, v31, v32, "%s The AskTo payload doesn't have a response attached: %@", v34, 0x16u);
    sub_2410FB29C(v35, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x245CDC5E0](v36, -1, -1);
    MEMORY[0x245CDC5E0](v34, -1, -1);
  }

  sub_241141850();
  swift_allocError();
  *v38 = 0;
  swift_willThrow();
LABEL_80:

  v75 = *(v0 + 8);

  return v75();
}

uint64_t type metadata accessor for ScreenTimeResponseTask(uint64_t a1)
{
  result = qword_27E530EA0;
  if (!qword_27E530EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241141790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenTimeResponseTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2411417F4(uint64_t a1)
{
  v2 = type metadata accessor for ScreenTimeResponseTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_241141850()
{
  result = qword_27E530E90;
  if (!qword_27E530E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E90);
  }

  return result;
}

unint64_t sub_2411418A4()
{
  result = qword_27E530E98;
  if (!qword_27E530E98)
  {
    sub_241165BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530E98);
  }

  return result;
}

uint64_t sub_241141920(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165BD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2411419A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165BD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_241141A10(uint64_t a1)
{
  result = sub_241165BD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_241141A84()
{
  result = qword_27E530EB0;
  if (!qword_27E530EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530EB0);
  }

  return result;
}

unint64_t sub_241141AD8()
{
  result = qword_27E530EB8;
  if (!qword_27E530EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530EB8);
  }

  return result;
}

uint64_t sub_241141B30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

void sub_241141C00(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_2411426D0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241141F7C;
  aBlock[3] = &block_descriptor_6_0;
  v13 = _Block_copy(aBlock);

  [a2 contactManagementStateForDSID:v10 completionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_241141DDC(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27E530608 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E533B88);
    v5 = a2;
    v6 = sub_241165268();
    v7 = sub_241166048();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2410F8000, v6, v7, "Error fetching contact management state: %@", v8, 0xCu);
      sub_2410FDEB8(v9);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  return sub_241165F78();
}

void sub_241141F7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_241142014()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  type metadata accessor for ContactManagementState(0);
  *v4 = v0;
  v4[1] = sub_241142130;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x800000024116C130, sub_241142634, v3, v5);
}

uint64_t sub_241142130()
{

  return MEMORY[0x2822009F8](sub_241142248, 0, 0);
}

uint64_t sub_241142248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_2411422CC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4BA08]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_241142404;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530EC0, &unk_2411690F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_241141B30;
  v0[13] = &block_descriptor_8;
  v0[14] = v2;
  [v1 communicationPoliciesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241142404()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_241142584;
  }

  else
  {
    v2 = sub_241142514;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241142514()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 168) != 0;
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_241142584(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[21] != 0;
  v5 = v1[1];

  return v5(0, v4);
}

uint64_t sub_24114263C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2411426D0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530EC8, &qword_241169138);

  return sub_241141DDC(a1, a2);
}

uint64_t block_copy_helper_4_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241142774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FD0, &qword_241169280);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_241100374(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2410FC87C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2410FC87C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2410FC87C(v31, v32);
    result = sub_241166228();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2410FC87C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_241142A3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FD0, &qword_241169280);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2410FC87C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2410FC87C(v29, v30);
    result = sub_241166228();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2410FC87C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_241142CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_241142DCC(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531000, &unk_2411684B8);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_241100478(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_2410FC88C(v11, v4, &unk_27E531000, &unk_2411684B8);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_241100478((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_24114B52C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_241142FF4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2411661F8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_241100498(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x245CDBC20](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_241100498((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_2410FC87C(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_241100498((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_2410FC87C(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2411431EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_241100498(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_241100498((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2410FC87C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t sub_2411432EC(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000027;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0xD00000000000001ALL;
      }

      goto LABEL_12;
    }

    return 0xD000000000000036;
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000030;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0xD00000000000002ELL;
      }

LABEL_12:
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD00000000000001ALL, 0x800000024116C480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();
      return 0;
    }

    return 0xD000000000000021;
  }
}

unint64_t sub_241143480(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_2411432EC(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v4)
  {
    sub_241166318();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v5;
}

uint64_t sub_241143584(uint64_t a1)
{
  v2 = sub_24114B91C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411435C0(uint64_t a1)
{
  v2 = sub_24114B91C();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_2411435FC(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  *(inited + 16) = xmmword_2411673F0;
  v4 = 0xD000000000000039;
  *(inited + 40) = 0xE400000000000000;
  v5 = "ons to validate.";
  v6 = 0xD000000000000020;
  if (a1 != 2)
  {
    v6 = 0xD00000000000001ALL;
    v5 = "com.apple.asktod.ids";
  }

  v7 = "ntifier was nil.";
  if (a1)
  {
    v4 = 0xD00000000000004BLL;
  }

  else
  {
    v7 = "ng to the given recipients.";
  }

  if (a1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9 | 0x8000000000000000;
  v10 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v10;
}

unint64_t sub_24114371C()
{
  v1 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001ALL;
  }

  v2 = 0xD00000000000004BLL;
  if (!*v0)
  {
    v2 = 0xD000000000000039;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_241143798(uint64_t a1)
{
  v2 = sub_24114B8C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411437D4(uint64_t a1)
{
  v2 = sub_24114B8C8();

  return MEMORY[0x28211F4A8](a1, v2);
}