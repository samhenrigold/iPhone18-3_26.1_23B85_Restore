uint64_t sub_226AE9DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v38[0] = a2;
  v38[1] = a3;
  v5 = sub_226D6A04C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = sub_226D6767C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_226D67BAC();
  sub_226D6765C();
  v39 = *(v13 + 8);
  v39(v15, v12);
  (*(v6 + 104))(v8, *MEMORY[0x277CC7A90], v5);
  sub_226AEE790(&qword_27D7A6550, MEMORY[0x277CC7A98], MEMORY[0x277CC7AA0]);
  sub_226D6E53C();
  sub_226D6E53C();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  if (v43 != v42)
  {
    v27 = sub_226D67C0C();
    v26 = v41;
    (*(*(v27 - 8) + 16))(v41, v40, v27);
LABEL_9:
    matched = type metadata accessor for AccountMatchResult(0);
    v30 = *(matched + 20);
    v31 = MEMORY[0x277CC75D0];
    goto LABEL_12;
  }

  v18 = v40;
  v17 = v41;
  sub_226D67BAC();
  v19 = sub_226D6766C();
  v21 = v20;
  v39(v15, v12);
  v22 = sub_226AE9C34(v19, v21);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

    v28 = sub_226D67C0C();
    v26 = v17;
    (*(*(v28 - 8) + 16))(v17, v18, v28);
    goto LABEL_9;
  }

  v26 = v17;
  if (sub_226D6E4DC())
  {
  }

  else
  {
    v32 = sub_226D6E4DC();

    if ((v32 & 1) == 0)
    {
      v37 = type metadata accessor for AccountMatchResult(0);
      return (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
    }
  }

  v33 = sub_226D67C0C();
  (*(*(v33 - 8) + 16))(v17, v18, v33);
  matched = type metadata accessor for AccountMatchResult(0);
  v30 = *(matched + 20);
  v31 = MEMORY[0x277CC75D8];
LABEL_12:
  v34 = *v31;
  v35 = sub_226D68CBC();
  (*(*(v35 - 8) + 104))(v26 + v30, v34, v35);
  return (*(*(matched - 8) + 56))(v26, 0, 1, matched);
}

uint64_t sub_226AEA258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AE9594(a1, a2);
}

uint64_t sub_226AEA318(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6EB9C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v3[13] = matched;
  v6 = *(matched - 8);
  v3[14] = v6;
  v3[15] = *(v6 + 64);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v7 = type metadata accessor for AccountMatchResult(0);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = sub_226D67C0C();
  v3[25] = v8;
  v9 = *(v8 - 8);
  v3[26] = v9;
  v3[27] = *(v9 + 64);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AEA584, 0, 0);
}

uint64_t sub_226AEA584()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v1 + 20);
  *(v0 + 392) = v3;
  v4 = *(v2 + v3);
  *(v0 + 256) = v4;
  if (v4 < 1)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v23 = sub_226D6E07C();
    __swift_project_value_buffer(v23, qword_28105F710);
    v24 = sub_226D6E05C();
    v25 = sub_226D6E9EC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226AB4000, v24, v25, "Transactions matching is turned off in the internal system settings.", v26, 2u);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    v27 = v0;
    v28 = *(v0 + 56);

    v29 = *(v28 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v31 = v27[26];
      v32 = v27[19];
      v54 = v27[18];
      v33 = v27[7];
      v57 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v29, 0);
      v30 = v57;
      v34 = *(v31 + 16);
      v31 += 16;
      v52 = v34;
      v35 = v33 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v36 = *(v31 + 56);
      v37 = *MEMORY[0x277CC75D0];
      v38 = v27;
      do
      {
        v39 = v38[20];
        v52(v39, v35, v38[25]);
        v40 = v38;
        v41 = *(v54 + 20);
        v42 = sub_226D68CBC();
        (*(*(v42 - 8) + 104))(v39 + v41, v37, v42);
        v44 = *(v57 + 16);
        v43 = *(v57 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_226AE1E54((v43 > 1), v44 + 1, 1);
        }

        v45 = v40[20];
        *(v57 + 16) = v44 + 1;
        sub_226AEF064(v45, v57 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v44, type metadata accessor for AccountMatchResult);
        v35 += v36;
        --v29;
        v38 = v40;
      }

      while (v29);
    }

    else
    {
      v38 = v27;
    }

    v50 = v38[1];

    return v50(v30);
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = *(v5 + 16);
    *(v0 + 264) = v6;
    v7 = MEMORY[0x277D84F90];
    v55 = v0;
    if (v6)
    {
      v8 = *(v0 + 208);
      v56 = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v6, 0);
      v7 = v56;
      v9 = *(v8 + 16);
      v8 += 16;
      v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v51 = *(v8 + 56);
      v53 = v9;
      v11 = (v8 - 8);
      do
      {
        v12 = *(v0 + 232);
        v13 = *(v0 + 200);
        v53(v12, v10, v13);
        v14 = sub_226D67BFC();
        v16 = v15;
        (*v11)(v12, v13);
        v18 = *(v56 + 16);
        v17 = *(v56 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_226AE1D68((v17 > 1), v18 + 1, 1);
        }

        *(v56 + 16) = v18 + 1;
        v19 = v56 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v10 += v51;
        --v6;
      }

      while (v6);
      v1 = *(v0 + 104);
      v2 = *(v0 + 72);
    }

    v20 = *(v0 + 64);
    v21 = sub_226AE3C28(v7);
    v55[34] = v21;

    v55[35] = *(v2 + *(v1 + 28));
    v22 = swift_task_alloc();
    *(v22 + 16) = v20;
    *(v22 + 24) = v2;
    sub_226D6EB8C();
    v55[36] = 0;

    v46 = swift_task_alloc();
    v55[37] = v46;
    *v46 = v55;
    v46[1] = sub_226AEAB88;
    v47 = v55[31];
    v48 = v55[8];

    return sub_226AECA38(v48, v21, v47);
  }
}

uint64_t sub_226AEAB88(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_226AEACA8, 0, 0);
}

uint64_t sub_226AEACA8()
{
  v1 = *(v0 + 304);
  if (v1 >> 62)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < *(v0 + 256))
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v3 = sub_226D6E07C();
    __swift_project_value_buffer(v3, qword_28105F710);

    v4 = sub_226D6E05C();
    v5 = sub_226D6E9CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (v1 >> 62)
      {
        v7 = sub_226D6EDFC();
      }

      else
      {
        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v6 + 4) = v7;

      _os_log_impl(&dword_226AB4000, v4, v5, "Failed to match an account using Apple Pay tranactions. Insufficient CNS transactions to match an account: %ld", v6, 0xCu);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    if (*(*(v0 + 72) + *(v0 + 392) + 8) == 1)
    {
      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v33 = v2;
      v33[1] = v30;
      (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277CC7FB0], v32);
      swift_willThrow();
      v34 = v31;
LABEL_20:
      sub_226AC47B0(v34, &qword_27D7A6558, &qword_226D7CCE0);
      goto LABEL_21;
    }

    v36 = *(v0 + 264);
    if (v36)
    {
      v37 = *(v0 + 208);
      v38 = *(v0 + 152);
      v90 = *(v0 + 144);
      v39 = *(v0 + 56);
      v93 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v36, 0);
      v40 = 0;
      v41 = v93;
      v42 = *(v37 + 16);
      v37 += 16;
      v87 = v42;
      v43 = v39 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v44 = *(v37 + 56);
      v45 = *MEMORY[0x277CC75D0];
      do
      {
        v46 = *(v0 + 168);
        v87(v46, v43, *(v0 + 200));
        v47 = *(v90 + 20);
        v48 = sub_226D68CBC();
        (*(*(v48 - 8) + 104))(v46 + v47, v45, v48);
        v50 = *(v93 + 16);
        v49 = *(v93 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_226AE1E54((v49 > 1), v50 + 1, 1);
        }

        v51 = *(v0 + 264);
        v52 = *(v0 + 168);
        ++v40;
        *(v93 + 16) = v50 + 1;
        sub_226AEF064(v52, v93 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v50, type metadata accessor for AccountMatchResult);
        v43 += v44;
      }

      while (v40 != v51);
LABEL_41:
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
LABEL_43:

      v79 = *(v0 + 8);

      return v79(v41);
    }

    goto LABEL_42;
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);
  v11 = swift_task_alloc();
  *(v11 + 16) = v9;

  sub_226B86820(sub_226AEEFDC, v11, v10);
  *(v0 + 312) = v12;
  if (v8)
  {
    sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

LABEL_21:

    v35 = *(v0 + 8);

    return v35();
  }

  v13 = v12;

  v14 = *(v13 + 16);
  *(v0 + 320) = v14;
  if (!v14)
  {

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v53 = sub_226D6E07C();
    __swift_project_value_buffer(v53, qword_28105F710);
    v54 = sub_226D6E05C();
    v55 = sub_226D6E9CC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_226AB4000, v54, v55, "Failed to match an account using Apple Pay tranactions. Insufficient Bank Connect transactions to match an account.", v56, 2u);
      MEMORY[0x22AA8BEE0](v56, -1, -1);
    }

    v57 = *(v0 + 392);
    v58 = *(v0 + 72);

    if (*(v58 + v57 + 8) == 1)
    {
      v59 = *(v0 + 248);
      v60 = *(v0 + 256);
      v61 = sub_226D6B66C();
      sub_226AEE790(&qword_27D7A6468, MEMORY[0x277CC7FB8], MEMORY[0x277CC7FC0]);
      swift_allocError();
      *v62 = v60;
      (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277CC7F80], v61);
      swift_willThrow();
      v34 = v59;
      goto LABEL_20;
    }

    v63 = *(v0 + 264);
    if (v63)
    {
      v64 = *(v0 + 208);
      v65 = *(v0 + 152);
      v91 = *(v0 + 144);
      v66 = *(v0 + 56);
      v94 = MEMORY[0x277D84F90];
      sub_226AE1E54(0, v63, 0);
      v67 = 0;
      v41 = v94;
      v68 = *(v64 + 16);
      v64 += 16;
      v88 = v68;
      v69 = v66 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
      v70 = *(v64 + 56);
      v71 = *MEMORY[0x277CC75D0];
      do
      {
        v72 = *(v0 + 192);
        v88(v72, v69, *(v0 + 200));
        v73 = *(v91 + 20);
        v74 = sub_226D68CBC();
        (*(*(v74 - 8) + 104))(v72 + v73, v71, v74);
        v76 = *(v94 + 16);
        v75 = *(v94 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_226AE1E54((v75 > 1), v76 + 1, 1);
        }

        v77 = *(v0 + 264);
        v78 = *(v0 + 192);
        ++v67;
        *(v94 + 16) = v76 + 1;
        sub_226AEF064(v78, v94 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v76, type metadata accessor for AccountMatchResult);
        v69 += v70;
      }

      while (v67 != v77);
      goto LABEL_41;
    }

LABEL_42:
    sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    v41 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v15 + 80);
  *(v0 + 396) = v17;
  *(v0 + 328) = *(v15 + 72);
  v18 = *(v15 + 16);
  v84 = (v17 + 24) & ~v17;
  v92 = *MEMORY[0x277CBE110];
  *(v0 + 400) = *MEMORY[0x277CBE110];
  *(v0 + 404) = *MEMORY[0x277CC75B8];
  v19 = MEMORY[0x277D84F90];
  *(v0 + 336) = v18;
  *(v0 + 344) = 0;
  v20 = *(v0 + 312);
  v85 = *(v0 + 304);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v83 = *(v0 + 216);
  v23 = *(v0 + 136);
  v82 = *(v0 + 112);
  v24 = *(v0 + 88);
  v86 = *(v0 + 96);
  v89 = *(v0 + 80);
  v81 = *(v0 + 72);
  *(v0 + 352) = v19;
  *(v0 + 360) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v21, v20 + ((v17 + 32) & ~v17), v16);
  v18(v22, v21, v16);
  sub_226AEEFFC(v81, v23, type metadata accessor for TransactionsMatchStrategy);
  v25 = (v84 + v83 + *(v82 + 80)) & ~*(v82 + 80);
  v26 = swift_allocObject();
  *(v0 + 368) = v26;
  *(v26 + 16) = v85;
  (*(v15 + 32))(v26 + v84, v22, v16);
  sub_226AEF064(v23, v26 + v25, type metadata accessor for TransactionsMatchStrategy);
  (*(v24 + 104))(v86, v92, v89);

  v27 = swift_task_alloc();
  *(v0 + 376) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
  *v27 = v0;
  v27[1] = sub_226AEB7E0;
  v29 = *(v0 + 96);

  return MEMORY[0x28210EE50](v0 + 40, v29, sub_226AEF0CC, v26, v28);
}

uint64_t sub_226AEB7E0()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v3 = sub_226AEC12C;
  }

  else
  {
    v3 = sub_226AEB964;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226AEB964()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16) >= *(v0 + 256))
  {
    v13 = *(v0 + 404);
    v14 = *(v0 + 336);
    v15 = *(v0 + 224);
    v16 = *(v0 + 200);
    v17 = *(v0 + 184);
    v18 = *(v0 + 144);

    v14(v17, v15, v16);
    v19 = *(v18 + 20);
    v20 = sub_226D68CBC();
    (*(*(v20 - 8) + 104))(v17 + v19, v13, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_226BBAC18(0, v23[2] + 1, 1, *(v0 + 352), v22);
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_226BBAC18((v24 > 1), v25 + 1, 1, v23, v22);
    }

    v26 = *(v0 + 184);
    v27 = *(v0 + 152);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v23[2] = v25 + 1;
    sub_226AEF064(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for AccountMatchResult);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 128);
    v3 = *(v0 + 72);
    v4 = sub_226D6E07C();
    __swift_project_value_buffer(v4, qword_28105F710);
    sub_226AEEFFC(v3, v2, type metadata accessor for TransactionsMatchStrategy);

    v5 = sub_226D6E05C();
    v6 = sub_226D6E9EC();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 128);
    if (v7)
    {
      v9 = *(v0 + 104);
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v11 = *(v1 + 16);

      *(v10 + 4) = v11;

      *(v10 + 12) = 2048;
      v12 = *(v8 + *(v9 + 20));
      sub_226AEF1A0(v8, type metadata accessor for TransactionsMatchStrategy);
      *(v10 + 14) = v12;
      _os_log_impl(&dword_226AB4000, v5, v6, "Failed to match an account using Apple Pay tranactions. Similar transactions' count(%ld) is below the threshold(%ld).", v10, 0x16u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    else
    {
      sub_226AEF1A0(*(v0 + 128), type metadata accessor for TransactionsMatchStrategy);
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v23 = *(v0 + 352);
  }

  v28 = *(v0 + 344) + 1;
  if (v28 == *(v0 + 320))
  {

    if (v23[2] || (*(*(v0 + 72) + *(v0 + 392) + 8) & 1) != 0)
    {
      v68 = v23;
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v45 = *(v0 + 264);
      if (v45)
      {
        v46 = *(v0 + 56);
        v47 = (*(v0 + 396) + 32) & ~*(v0 + 396);
        v69 = MEMORY[0x277D84F90];
        sub_226AE1E54(0, v45, 0);
        v48 = 0;
        v49 = v46 + v47;
        v50 = *MEMORY[0x277CC75D0];
        do
        {
          v51 = *(v0 + 176);
          v52 = *(v0 + 144);
          (*(v0 + 336))(v51, v49 + *(v0 + 328) * v48, *(v0 + 200));
          v53 = *(v52 + 20);
          v54 = sub_226D68CBC();
          (*(*(v54 - 8) + 104))(v51 + v53, v50, v54);
          v56 = v69[2];
          v55 = v69[3];
          if (v56 >= v55 >> 1)
          {
            sub_226AE1E54((v55 > 1), v56 + 1, 1);
          }

          v57 = *(v0 + 264);
          v58 = *(v0 + 176);
          v59 = *(v0 + 152);
          ++v48;
          v69[2] = v56 + 1;
          sub_226AEF064(v58, v69 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v56, type metadata accessor for AccountMatchResult);
        }

        while (v48 != v57);
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v68 = v69;
      }

      else
      {
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v68 = MEMORY[0x277D84F90];
      }
    }

    v29 = *(v0 + 8);

    return v29(v68);
  }

  else
  {
    *(v0 + 344) = v28;
    *(v0 + 352) = v23;
    v67 = *(v0 + 400);
    v31 = *(v0 + 336);
    v32 = *(v0 + 396);
    v65 = *(v0 + 304);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v35 = *(v0 + 208);
    v36 = *(v0 + 200);
    v61 = *(v0 + 136);
    v62 = *(v0 + 112);
    v63 = (v32 + 24) & ~v32;
    v60 = *(v0 + 216) + v63;
    v37 = *(v0 + 88);
    v66 = *(v0 + 96);
    v38 = *(v0 + 72);
    v64 = *(v0 + 80);
    v39 = *(v0 + 312) + ((v32 + 32) & ~v32) + *(v0 + 328) * v28;
    *(v0 + 360) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v33, v39, v36);
    v31(v34, v33, v36);
    sub_226AEEFFC(v38, v61, type metadata accessor for TransactionsMatchStrategy);
    v40 = (v60 + *(v62 + 80)) & ~*(v62 + 80);
    v41 = swift_allocObject();
    *(v0 + 368) = v41;
    *(v41 + 16) = v65;
    (*(v35 + 32))(v41 + v63, v34, v36);
    sub_226AEF064(v61, v41 + v40, type metadata accessor for TransactionsMatchStrategy);
    (*(v37 + 104))(v66, v67, v64);

    v42 = swift_task_alloc();
    *(v0 + 376) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
    *v42 = v0;
    v42[1] = sub_226AEB7E0;
    v44 = *(v0 + 96);

    return MEMORY[0x28210EE50](v0 + 40, v44, sub_226AEF0CC, v41, v43);
  }
}

uint64_t sub_226AEC12C()
{
  v81 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 384);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v80 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_226D6F26C();
    v12 = sub_226AC4530(v10, v11, &v80);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Failed to find similar transactions. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  if (*(MEMORY[0x277D84FA0] + 16) >= *(v0 + 256))
  {
    v24 = *(v0 + 404);
    v25 = *(v0 + 336);
    v26 = *(v0 + 224);
    v27 = *(v0 + 200);
    v28 = *(v0 + 184);
    v29 = *(v0 + 144);

    v25(v28, v26, v27);
    v30 = *(v29 + 20);
    v31 = sub_226D68CBC();
    (*(*(v31 - 8) + 104))(v28 + v30, v24, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v0 + 352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_226BBAC18(0, v34[2] + 1, 1, *(v0 + 352), v33);
    }

    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_226BBAC18((v35 > 1), v36 + 1, 1, v34, v33);
    }

    v37 = *(v0 + 184);
    v38 = *(v0 + 152);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v34[2] = v36 + 1;
    sub_226AEF064(v37, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, type metadata accessor for AccountMatchResult);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 128);
    v14 = *(v0 + 72);
    __swift_project_value_buffer(v2, qword_28105F710);
    sub_226AEEFFC(v14, v13, type metadata accessor for TransactionsMatchStrategy);
    v15 = MEMORY[0x277D84FA0];

    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 128);
    if (v18)
    {
      v20 = *(v0 + 104);
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      v22 = *(v15 + 16);

      *(v21 + 4) = v22;

      *(v21 + 12) = 2048;
      v23 = *(v19 + *(v20 + 20));
      sub_226AEF1A0(v19, type metadata accessor for TransactionsMatchStrategy);
      *(v21 + 14) = v23;
      _os_log_impl(&dword_226AB4000, v16, v17, "Failed to match an account using Apple Pay tranactions. Similar transactions' count(%ld) is below the threshold(%ld).", v21, 0x16u);
      MEMORY[0x22AA8BEE0](v21, -1, -1);
    }

    else
    {
      sub_226AEF1A0(*(v0 + 128), type metadata accessor for TransactionsMatchStrategy);
      swift_bridgeObjectRelease_n();
    }

    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v34 = *(v0 + 352);
  }

  v39 = *(v0 + 344) + 1;
  if (v39 == *(v0 + 320))
  {

    if (v34[2] || (*(*(v0 + 72) + *(v0 + 392) + 8) & 1) != 0)
    {
      v78 = v34;
      sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v56 = *(v0 + 264);
      if (v56)
      {
        v57 = *(v0 + 56);
        v58 = (*(v0 + 396) + 32) & ~*(v0 + 396);
        v80 = MEMORY[0x277D84F90];
        sub_226AE1E54(0, v56, 0);
        v59 = 0;
        v60 = v80;
        v61 = v57 + v58;
        v62 = *MEMORY[0x277CC75D0];
        do
        {
          v63 = *(v0 + 176);
          v64 = *(v0 + 144);
          (*(v0 + 336))(v63, v61 + *(v0 + 328) * v59, *(v0 + 200));
          v65 = *(v64 + 20);
          v66 = sub_226D68CBC();
          (*(*(v66 - 8) + 104))(v63 + v65, v62, v66);
          v80 = v60;
          v68 = *(v60 + 16);
          v67 = *(v60 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_226AE1E54((v67 > 1), v68 + 1, 1);
            v60 = v80;
          }

          v69 = *(v0 + 264);
          v70 = *(v0 + 176);
          v71 = *(v0 + 152);
          ++v59;
          *(v60 + 16) = v68 + 1;
          sub_226AEF064(v70, v60 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v68, type metadata accessor for AccountMatchResult);
        }

        while (v59 != v69);
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v78 = v60;
      }

      else
      {
        sub_226AC47B0(*(v0 + 248), &qword_27D7A6558, &qword_226D7CCE0);

        v78 = MEMORY[0x277D84F90];
      }
    }

    v40 = *(v0 + 8);

    return v40(v78);
  }

  else
  {
    *(v0 + 344) = v39;
    *(v0 + 352) = v34;
    v79 = *(v0 + 400);
    v42 = *(v0 + 336);
    v43 = *(v0 + 396);
    v76 = *(v0 + 304);
    v44 = *(v0 + 224);
    v45 = *(v0 + 232);
    v46 = *(v0 + 208);
    v47 = *(v0 + 200);
    v48 = *(v0 + 136);
    v73 = *(v0 + 112);
    v72 = *(v0 + 216) + ((v43 + 24) & ~v43);
    v77 = *(v0 + 96);
    v75 = *(v0 + 88);
    v49 = *(v0 + 72);
    v74 = *(v0 + 80);
    v50 = *(v0 + 312) + ((v43 + 32) & ~v43) + *(v0 + 328) * v39;
    *(v0 + 360) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(v44, v50, v47);
    v42(v45, v44, v47);
    sub_226AEEFFC(v49, v48, type metadata accessor for TransactionsMatchStrategy);
    v51 = (v72 + *(v73 + 80)) & ~*(v73 + 80);
    v52 = swift_allocObject();
    *(v0 + 368) = v52;
    *(v52 + 16) = v76;
    (*(v46 + 32))(v52 + ((v43 + 24) & ~v43), v45, v47);
    sub_226AEF064(v48, v52 + v51, type metadata accessor for TransactionsMatchStrategy);
    (*(v75 + 104))(v77, v79, v74);

    v53 = swift_task_alloc();
    *(v0 + 376) = v53;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
    *v53 = v0;
    v53[1] = sub_226AEB7E0;
    v55 = *(v0 + 96);

    return MEMORY[0x28210EE50](v0 + 40, v55, sub_226AEF0CC, v52, v54);
  }
}

uint64_t sub_226AECA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v4[6] = swift_task_alloc();
  v5 = sub_226D6CD7C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AECB34, 0, 0);
}

uint64_t sub_226AECB34()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for TransactionsMatchStrategy(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_226AECC70;
  v6 = v0[2];

  return v8(v6, v3, v4);
}

uint64_t sub_226AECC70(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_226AECD70, 0, 0);
}

uint64_t sub_226AECD70()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_226AEF224(v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(v0[6], &qword_27D7A6558, &qword_226D7CCE0);
    v4 = v0[11];
  }

  else
  {
    v5 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[3];
    (*(v7 + 32))(v6, v0[6], v8);
    v10 = swift_task_alloc();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    v4 = sub_226B906B0(sub_226AEF294, v10, v5);

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[1];

  return v11(v4);
}

BOOL sub_226AECED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D67B4C();
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v14 = v7;
  v15 = a2;
  sub_226D6EB8C();
  v9 = (v5 + 8);
  if (v2)
  {
    (*v9)(v7, v4);
  }

  else
  {
    v11 = v16;
    (*v9)(v7, v4);
    return v11 >= *(a2 + *(matched + 20));
  }

  return v10;
}

void sub_226AED03C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6568, &qword_226D71560);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_226D6AC0C();
  v10 = sub_226D6AAFC();
  v11 = sub_226D6CD7C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = *MEMORY[0x277CC71E8];
  v13 = sub_226D6823C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = MEMORY[0x22AA86C40](a1, 0, v9, v6);
  sub_226AC47B0(v6, &qword_27D7A6568, &qword_226D71560);
  sub_226AC47B0(v9, &qword_27D7A6558, &qword_226D7CCE0);
  [v10 setPredicate_];

  type metadata accessor for TransactionsMatchStrategy(0);
  v16 = v18[3];
  v17 = sub_226D6EBAC();

  if (!v16)
  {
    *v18[0] = v17;
  }
}

id sub_226AED29C(void **a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = *a1;
  v17 = [v16 transactionDate];
  if (!v17)
  {
    (*(v6 + 56))(v15, 1, 1, v5);
    sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
    goto LABEL_9;
  }

  v30 = a3;
  v18 = v17;
  sub_226D6D45C();

  (*(v6 + 32))(v15, v11, v5);
  (*(v6 + 56))(v15, 0, 1, v5);
  sub_226AC47B0(v15, &qword_27D7A8BE0, &unk_226D718F0);
  v19 = [v16 amount];
  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = [v16 currencyCode];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  v22 = sub_226D6E39C();
  v24 = v23;

  result = [v16 transactionDate];
  if (result)
  {
    v26 = result;
    sub_226D6D45C();

    v27 = sub_226D6CD5C();
    (*(v6 + 8))(v8, v5);
    if (v27)
    {
      v28 = sub_226D4D7A0(v22, v24, v30);

      return (v28 & 1);
    }

LABEL_9:
    v28 = 0;
    return (v28 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_226AED57C@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v72 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = v61 - v5;
  v6 = sub_226D6D6DC();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6823C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v69 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  v19 = sub_226D6D4AC();
  v20 = *(v19 - 8);
  v74 = v19;
  v75 = v20;
  MEMORY[0x28223BE20](v19);
  v64 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = v61 - v23;
  v24 = sub_226D6AC0C();
  v71 = a1;
  v25 = [a1 primaryAccountIdentifier];
  sub_226D6E39C();

  v26 = *MEMORY[0x277CC71E8];
  v78 = v9;
  v27 = *(v9 + 104);
  v27(v13, v26, v8);
  matched = type metadata accessor for TransactionsMatchStrategy(0);
  v29 = v77;
  v30 = *&v76[*(matched + 28)];
  v76 = v18;
  v31 = v30;
  sub_226D6AAAC();
  if (v29)
  {
    (*(v78 + 8))(v13, v8);
  }

  v61[1] = v31;
  v62 = v27;
  v63 = v26;
  v77 = v24;
  v34 = v78 + 8;
  v33 = *(v78 + 8);
  v35 = v8;
  v33(v13, v8);

  v36 = v76;
  v37 = *(v75 + 48);
  v38 = v74;
  if (v37(v76, 1, v74) == 1)
  {
    v39 = v36;
LABEL_5:
    sub_226AC47B0(v39, &qword_27D7A8BE0, &unk_226D718F0);
    v40 = sub_226D6CD7C();
    return (*(*(v40 - 8) + 56))(v72, 1, 1, v40);
  }

  v78 = v34;
  v61[0] = v37;
  v76 = *(v75 + 32);
  (v76)(v73, v36, v38);
  v41 = [v71 primaryAccountIdentifier];
  sub_226D6E39C();

  v42 = v69;
  v62(v69, v63, v35);
  v43 = v42;
  v44 = v70;
  sub_226D6AA9C();
  v45 = v76;
  v33(v43, v35);

  v46 = v74;
  if ((v61[0])(v44, 1, v74) == 1)
  {
    (*(v75 + 8))(v73, v46);
    v39 = v44;
    goto LABEL_5;
  }

  v47 = v64;
  (v45)(v64, v44, v46);
  v48 = v65;
  sub_226D6D66C();
  v49 = v68;
  sub_226D6D60C();
  v50 = sub_226D6CD7C();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v49, 1, v50);
  v54 = v75;
  if (v53 == 1)
  {
    sub_226D6CD6C();
    (*(v66 + 8))(v48, v67);
    v55 = *(v54 + 8);
    v56 = v74;
    v55(v47, v74);
    v55(v73, v56);
    v57 = v52(v49, 1, v50);
    v58 = v72;
    if (v57 != 1)
    {
      sub_226AC47B0(v49, &qword_27D7A6558, &qword_226D7CCE0);
    }
  }

  else
  {
    (*(v66 + 8))(v48, v67);
    v59 = *(v54 + 8);
    v60 = v74;
    v59(v47, v74);
    v59(v73, v60);
    v58 = v72;
    (*(v51 + 32))(v72, v49, v50);
  }

  return (*(v51 + 56))(v58, 0, 1, v50);
}

void sub_226AEDCF4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v65 = a3;
  v64 = a2;
  v56 = sub_226D6D52C();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v54 = &v51 - v11;
  v63 = sub_226D6D6DC();
  v12 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_226D6B9BC();
  v15 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_226D6D4AC();
  v17 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v86 = (&v51 - v21);
  v94 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v60 = v14;
    v52 = a4;
    v77 = v5;
    v14 = 0;
    v87 = a1 & 0xC000000000000001;
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v84 = (v17 + 32);
    v58 = (v12 + 8);
    v59 = (v15 + 8);
    v53 = v8 + 1;
    v85 = (v17 + 8);
    v57 = a1;
    v12 = v67;
    a4 = v86;
    v15 = v66;
    v5 = i;
    while (1)
    {
      if (v87)
      {
        v22 = MEMORY[0x22AA8AFD0](v14, a1, v20);
      }

      else
      {
        if (v14 >= *(v68 + 16))
        {
          goto LABEL_33;
        }

        v22 = *(a1 + 8 * v14 + 32);
      }

      v17 = v22;
      v23 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v24 = [v22 transactionDate];
      if (v24)
      {
        v8 = v24;
        sub_226D6D45C();

        (*v84)(a4, v15, v12);
        v25 = [v17 amount];
        if (v25)
        {
          v8 = v25;
          [v25 decimalValue];
          v83 = v88;
          v82 = v89;
          v81 = v90;
          v80 = v91;
          v78 = v93;
          v79 = v92;

          v26 = [v17 currencyCode];
          if (v26)
          {
            v27 = v26;
            v28 = sub_226D6E39C();
            v76 = v29;

            v30 = [v17 paymentHash];
            if (v30)
            {
              v31 = v30;
              v73 = sub_226D6E39C();
              v74 = v32;
            }

            else
            {
              v73 = 0;
              v74 = 0;
            }

            v33 = v61;
            v34 = [v17 merchant];
            v75 = v28;
            v69 = (v14 + 1);
            if (v34 && (v35 = v34, v36 = [v34 displayName], v35, v36) || (v37 = objc_msgSend(v17, sel_merchant)) != 0 && (v38 = v37, v36 = objc_msgSend(v37, sel_name), v38, v36))
            {
              v72 = sub_226D6E39C();
            }

            else
            {
              v72 = 0;
            }

            v71 = sub_226D6AC0C();
            sub_226D6EC7C();
            v82 = v39;
            LODWORD(v81) = v40;
            v41 = sub_226D67B4C();
            v83 = &v51;
            MEMORY[0x28223BE20](v41);
            v50 = &v94;
            v42 = *(v65 + *(type metadata accessor for TransactionsMatchStrategy(0) + 28));
            v8 = v33;
            v43 = v60;
            sub_226D6D66C();
            v49[1] = v49;
            v50 = v42;
            v49[0] = sub_226AEF200;
            v44 = v77;
            v45 = sub_226D6AA7C();
            v77 = v44;
            if (v44)
            {

              (*v58)(v43, v63);
              (*v59)(v8, v62);
              (*v85)(v86, v67);

              return;
            }

            v46 = v45;

            (*v58)(v43, v63);
            (*v59)(v8, v62);
            if (v46)
            {
              v8 = v55;
              sub_226D6ABCC();
              v47 = v54;
              sub_226C2514C(v54, v8);

              (*v53)(v47, v56);
              a4 = v86;
              v12 = v67;
              (*v85)(v86, v67);
            }

            else
            {
              a4 = v86;
              v12 = v67;
              (*v85)(v86, v67);
            }

            a1 = v57;
            v15 = v66;
            v23 = v69;
            v5 = i;
          }

          else
          {
            a4 = v86;
            (*v85)(v86, v12);

            v5 = i;
          }
        }

        else
        {

          (*v85)(a4, v12);
        }
      }

      else
      {
      }

      ++v14;
      if (v23 == v5)
      {
        v48 = v94;
        a4 = v52;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v48 = MEMORY[0x277D84FA0];
LABEL_36:
  *a4 = v48;
}

BOOL sub_226AEE5D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;

  sub_226D6ABCC();
  v8 = sub_226D4D898(v6, v7);

  (*(v4 + 8))(v6, v3);
  return (v8 & 1) == 0;
}

uint64_t sub_226AEE6D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AEF2B8;

  return sub_226AEA318(a1, a2);
}

uint64_t sub_226AEE790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226AEE858(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226AEE890()
{
  v0 = sub_226D6B5EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  sub_226D6B5DC();
  (*(v1 + 8))(v3, v0);
  if (v10)
  {
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    if (swift_dynamicCast())
    {
      v4 = v8;
      v5 = [v8 intValue];

      return v5;
    }
  }

  else
  {
    sub_226AC47B0(v9, &unk_27D7A8BB0, &unk_226D74340);
  }

  return 5;
}

unint64_t sub_226AEE9F8()
{
  result = qword_27D7A64B0;
  if (!qword_27D7A64B0)
  {
    sub_226AE59B4(255, &qword_27D7A64A8, 0x277D37FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A64B0);
  }

  return result;
}

uint64_t sub_226AEEA88(uint64_t a1)
{
  result = sub_226D68CBC();
  if (v2 <= 0x3F)
  {
    result = sub_226AEEB3C();
    if (v3 <= 0x3F)
    {
      result = sub_226AE59B4(319, &qword_27D7A64D8, 0x277CBE440);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_226AEEB3C()
{
  result = qword_27D7A64D0;
  if (!qword_27D7A64D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D7A64D0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D68CBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226AEECF4(uint64_t a1)
{
  result = sub_226D68CBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226AEED88(uint64_t a1)
{
  result = sub_226D67C0C();
  if (v2 <= 0x3F)
  {
    result = sub_226D68CBC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AEEE0C(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6520, type metadata accessor for TransactionsMatchStrategy, &unk_226D71454);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEE64(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6528, type metadata accessor for PANSuffixMatchStrategy, &unk_226D7142C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEEBC(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6530, type metadata accessor for AccountTypeMatchStrategy, &unk_226D71404);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226AEEF14(uint64_t a1)
{
  result = sub_226AEE790(&qword_27D7A6538, type metadata accessor for FPANIDMatchStrategy, &unk_226D713DC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226AEEF6C()
{
  result = qword_28105F580;
  if (!qword_28105F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105F580);
  }

  return result;
}

uint64_t sub_226AEEFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AEF064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226AEF0CC(void *a1@<X8>)
{
  v3 = *(sub_226D67C0C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TransactionsMatchStrategy(0) - 8);
  sub_226AEDCF4(*(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_226AEF1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226AEF224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AEF2BC()
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AEF3BC(uint64_t a1)
{
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226D6E30C();
}

uint64_t sub_226AEF4AC(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AEF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  return sub_226D6D44C();
}

uint64_t sub_226AEF640()
{
  v1 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(_s8MetadataV9CloudItemVMa(0) + 24));
  v6 = *(v5 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_226D6EF8C();
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_226AF1E24(v8, v4, _s8MetadataV9CloudItemV6ObjectVMa);
      v10 = *&v4[*(v1 + 20)];
      sub_226AF1D84(v4, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
      v8 += v9;
      --v6;
    }

    while (v6);
    return v12;
  }

  return result;
}

uint64_t sub_226AEF7BC(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  _s8MetadataV9CloudItemV6ObjectVMa(0);
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  sub_226AF0B04(v4, *(v1 + *(a1 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226AEF93C(uint64_t a1, uint64_t a2)
{
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  _s8MetadataV9CloudItemV6ObjectVMa(0);
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  v5 = *(v2 + *(a2 + 24));

  return sub_226AF0B04(a1, v5);
}

uint64_t sub_226AEFAB0(uint64_t a1, uint64_t a2)
{
  sub_226D6F2FC();
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  _s8MetadataV9CloudItemV6ObjectVMa(0);
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  sub_226D6E30C();
  sub_226D6EC4C();
  sub_226D6E30C();
  sub_226AF0B04(v5, *(v2 + *(a2 + 24)));
  return sub_226D6F35C();
}

uint64_t sub_226AEFC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0)
  {
    return 0;
  }

  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  _s8MetadataV9CloudItemV6ObjectVMa(0);
  if ((sub_226D6EC3C() & 1) == 0 || (sub_226D6D44C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0 || (sub_226D6EC3C() & 1) == 0 || (sub_226D6D44C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_226B2E200(v7, v8);
}

uint64_t sub_226AEFD40(uint64_t a1)
{
  v2 = v1;
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF1E24(v2, v10, _s8MetadataV15CloudItemStatusOMa);
  v11 = (*(v5 + 48))(v10, 2, v4);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    return MEMORY[0x22AA8B3B0](v12);
  }

  else
  {
    sub_226AF25F4(v10, v7, _s8MetadataV9CloudItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6D52C();
    sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_226D6E30C();
    _s8MetadataV9CloudItemV6ObjectVMa(0);
    sub_226D6EC4C();
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6E30C();
    sub_226AF0B04(a1, *&v7[*(v4 + 24)]);
    return sub_226AF1D84(v7, _s8MetadataV9CloudItemVMa);
  }
}

uint64_t sub_226AF0048()
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AF00F4(uint64_t a1)
{
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_226D6E30C();
}

uint64_t sub_226AF0184(uint64_t a1)
{
  sub_226D6F2FC();
  sub_226D6EC4C();
  sub_226D6D4AC();
  sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_226D6E30C();
  return sub_226D6F35C();
}

uint64_t sub_226AF022C(void *a1, void *a2, uint64_t a3)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  if ((sub_226D6EC3C() & 1) == 0)
  {
    return 0;
  }

  return sub_226D6D44C();
}

uint64_t sub_226AF02B8(uint64_t a1)
{
  v2 = v1;
  v3 = _s8MetadataV9LocalItemVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s8MetadataV15LocalItemStatusOMa(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AF1E24(v2, v9, _s8MetadataV15LocalItemStatusOMa);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x22AA8B3B0](v11);
  }

  else
  {
    sub_226AF25F4(v9, v6, _s8MetadataV9LocalItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    return sub_226AF1D84(v6, _s8MetadataV9LocalItemVMa);
  }
}

uint64_t sub_226AF04B8(uint64_t a1)
{
  v30 = _s8MetadataV9LocalItemVMa(0);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s8MetadataV15LocalItemStatusOMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s8MetadataV9CloudItemVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D52C();
  sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_226D6E30C();
  v13 = _s8MetadataVMa(0);
  v14 = *(v13 + 20);
  v29 = v1;
  sub_226AF1E24(v1 + v14, v12, _s8MetadataV15CloudItemStatusOMa);
  v15 = (*(v7 + 48))(v12, 2, v6);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    MEMORY[0x22AA8B3B0](v16);
  }

  else
  {
    sub_226AF25F4(v12, v9, _s8MetadataV9CloudItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6E30C();
    _s8MetadataV9CloudItemV6ObjectVMa(0);
    sub_226D6EC4C();
    v25 = sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    sub_226D6E30C();
    sub_226D6EC4C();
    sub_226D6E30C();
    sub_226AF0B04(a1, *&v9[*(v6 + 24)]);
    sub_226AF1D84(v9, _s8MetadataV9CloudItemVMa);
  }

  v17 = v30;
  v19 = v27;
  v18 = v28;
  sub_226AF1E24(v29 + *(v13 + 24), v27, _s8MetadataV15LocalItemStatusOMa);
  v20 = (*(v18 + 48))(v19, 2, v17);
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 2;
    }

    return MEMORY[0x22AA8B3B0](v21);
  }

  else
  {
    v22 = v19;
    v23 = v26;
    sub_226AF25F4(v22, v26, _s8MetadataV9LocalItemVMa);
    MEMORY[0x22AA8B3B0](1);
    sub_226D6EC4C();
    sub_226D6D4AC();
    sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_226D6E30C();
    return sub_226AF1D84(v23, _s8MetadataV9LocalItemVMa);
  }
}

uint64_t sub_226AF09E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226AF0A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226AF0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_226D6D4EC() & 1) == 0 || (sub_226AF15F4(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_226AF19D8(a1 + v6, a2 + v6);
}

uint64_t sub_226AF0B04(uint64_t a1, uint64_t a2)
{
  v3 = _s8MetadataV9CloudItemV6ObjectVMa(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_226AF1E24(v10, v7, _s8MetadataV9CloudItemV6ObjectVMa);
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_226D6E30C();
      sub_226D6EC4C();
      sub_226D6D4AC();
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      result = sub_226AF1D84(v7, _s8MetadataV9CloudItemV6ObjectVMa);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_226AF0CF0(uint64_t a1, uint64_t a2)
{
  v3 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_226AF1E24(v10, v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226D6EC4C();
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_226D6E30C();
      sub_226D6D4AC();
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      result = sub_226AF1D84(v7, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_226AF0EDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D4AC();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + 16);
  MEMORY[0x22AA8B3B0](v14, v11);
  if (v14)
  {
    v15 = v9[5];
    v25 = v9[6];
    v26 = v15;
    v16 = v9[7];
    v17 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v23 = *(v10 + 72);
    v24 = v16;
    v18 = v21;
    v19 = (v21 + 6);
    ++v21;
    v22 = (v18 + 4);
    do
    {
      sub_226AF1E24(v17, v13, _s8MetadataV9CloudItemV6ObjectVMa_0);
      MEMORY[0x22AA8B3E0](*v13);
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_226D6E30C();
      sub_226AF265C(v13 + v25, v8);
      if ((*v19)(v8, 1, v3) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        (*v22)(v5, v8, v3);
        sub_226D6F31C();
        sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_226D6E30C();
        (*v21)(v5, v3);
      }

      v20 = *(v13 + v24);
      sub_226D6EC4C();
      sub_226AF1D84(v13, _s8MetadataV9CloudItemV6ObjectVMa_0);

      v17 += v23;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_226AF1254(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x22AA8B3B0](v14, v11);
  if (v14)
  {
    v16 = v9[5];
    v29 = v9[6];
    v30 = v16;
    v17 = v9[7];
    v27 = v9[8];
    v28 = v17;
    v18 = v9[9];
    v19 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v26 = v18;
    v22 = (v4 + 8);
    v23 = (v4 + 32);
    do
    {
      sub_226AF1E24(v19, v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226AF248C(&qword_27D7A6620, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_226D6E30C();
      sub_226D6D52C();
      sub_226AF248C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_226D6E30C();
      sub_226D6EC4C();
      sub_226D6F31C();
      sub_226AF265C(&v13[v27], v8);
      if ((*(v4 + 48))(v8, 1, v3) == 1)
      {
        sub_226D6F31C();
      }

      else
      {
        v20 = v24;
        (*v23)(v24, v8, v3);
        sub_226D6F31C();
        sub_226D6E30C();
        (*v22)(v20, v3);
      }

      sub_226D6F32C();
      result = sub_226AF1D84(v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v19 += v25;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_226AF15F4(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9CloudItemVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15CloudItemStatusOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6628, &qword_226D71828);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226AF1E24(a1, &v19 - v12, _s8MetadataV15CloudItemStatusOMa);
  sub_226AF1E24(a2, &v13[v15], _s8MetadataV15CloudItemStatusOMa);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226AF1D84(v13, _s8MetadataV15CloudItemStatusOMa);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AF1E24(v13, v10, _s8MetadataV15CloudItemStatusOMa);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226AF25F4(&v13[v15], v7, _s8MetadataV9CloudItemVMa);
      if ((sub_226D6D4EC() & 1) == 0 || (sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8), _s8MetadataV9CloudItemV6ObjectVMa(0), (sub_226D6EC3C() & 1) == 0) || (sub_226D6D44C() & 1) == 0 || (sub_226D6D4EC() & 1) == 0 || (sub_226D6EC3C() & 1) == 0 || (sub_226D6D44C() & 1) == 0 || (sub_226B2E200(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]) & 1) == 0)
      {
        sub_226AF1D84(v7, _s8MetadataV9CloudItemVMa);
        sub_226AF1D84(v10, _s8MetadataV9CloudItemVMa);
        sub_226AF1D84(v13, _s8MetadataV15CloudItemStatusOMa);
        return 0;
      }

      sub_226AF1D84(v7, _s8MetadataV9CloudItemVMa);
      sub_226AF1D84(v10, _s8MetadataV9CloudItemVMa);
      goto LABEL_8;
    }

    sub_226AF1D84(v10, _s8MetadataV9CloudItemVMa);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A6628, &qword_226D71828);
  return 0;
}

uint64_t sub_226AF19D8(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataV9LocalItemVMa(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV15LocalItemStatusOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6578, &qword_226D71568);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_226AF1E24(a1, &v19 - v12, _s8MetadataV15LocalItemStatusOMa);
  sub_226AF1E24(a2, &v13[v15], _s8MetadataV15LocalItemStatusOMa);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) != 1)
      {
        goto LABEL_9;
      }

LABEL_8:
      sub_226AF1D84(v13, _s8MetadataV15LocalItemStatusOMa);
      return 1;
    }

    if (v16(&v13[v15], 2, v4) == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_226AF1E24(v13, v10, _s8MetadataV15LocalItemStatusOMa);
    if (!v16(&v13[v15], 2, v4))
    {
      sub_226AF25F4(&v13[v15], v7, _s8MetadataV9LocalItemVMa);
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      if ((sub_226D6EC3C() & 1) == 0 || (sub_226D6D44C() & 1) == 0)
      {
        sub_226AF1D84(v7, _s8MetadataV9LocalItemVMa);
        sub_226AF1D84(v10, _s8MetadataV9LocalItemVMa);
        sub_226AF1D84(v13, _s8MetadataV15LocalItemStatusOMa);
        return 0;
      }

      sub_226AF1D84(v7, _s8MetadataV9LocalItemVMa);
      sub_226AF1D84(v10, _s8MetadataV9LocalItemVMa);
      goto LABEL_8;
    }

    sub_226AF1D84(v10, _s8MetadataV9LocalItemVMa);
  }

LABEL_9:
  sub_226AC47B0(v13, &qword_27D7A6578, &qword_226D71568);
  return 0;
}

uint64_t sub_226AF1D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226AF1E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AF1EB4(uint64_t a1)
{
  result = sub_226D6D52C();
  if (v2 <= 0x3F)
  {
    result = sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v3 <= 0x3F)
    {
      result = sub_226D6D4AC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_226AF1F88(uint64_t a1)
{
  _s8MetadataV9CloudItemV6ObjectVMa(319);
  if (v1 <= 0x3F)
  {
    sub_226AF200C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226AF200C(uint64_t a1)
{
  if (!qword_27D7A65A8)
  {
    _s8MetadataV9CloudItemV6ObjectVMa(255);
    v1 = sub_226D6E6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7A65A8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = (*(*(v6 - 8) + 48))(a1, a2, v6);
  if (v7 >= 3)
  {
    return v7 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    v7 = (a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, a3, v8);
}

uint64_t sub_226AF2200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_226AF2284(uint64_t a1)
{
  result = sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v2 <= 0x3F)
  {
    result = sub_226D6D4AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AF2360(uint64_t a1)
{
  result = sub_226D6D52C();
  if (v2 <= 0x3F)
  {
    result = _s8MetadataV15CloudItemStatusOMa(319);
    if (v3 <= 0x3F)
    {
      result = _s8MetadataV15LocalItemStatusOMa(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226AF248C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226AF25F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AF265C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AF26D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226D6781C();
  v9 = *(v8 - 8);
  v130 = v8;
  v131 = v9;
  MEMORY[0x28223BE20](v8);
  v129 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A8, &qword_226D718C0);
  MEMORY[0x28223BE20](v11 - 8);
  v113 = &v105 - v12;
  v110 = sub_226D6708C();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = sub_226D670CC();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v111 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_226D6B49C();
  v119 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B0, &qword_226D718C8);
  MEMORY[0x28223BE20](v17 - 8);
  v112 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v125 = &v105 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  MEMORY[0x28223BE20](v21 - 8);
  v115 = (&v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v124 = &v105 - v24;
  v136 = sub_226D67B3C();
  v25 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = (&v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v27 - 8);
  v116 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v105 - v30;
  v32 = *(a2 + 16);
  v33 = MEMORY[0x277D84F90];
  v117 = a2;
  v118 = a4;
  v126 = a3;
  v127 = &v105 - v30;
  v120 = v25;
  v114 = v32;
  if (v32)
  {
    v121 = v16;
    v123 = a1;
    v137 = MEMORY[0x277D84F90];
    v34 = v32;
    sub_226AE1D68(0, v32, 0);
    v33 = v137;
    v35 = v25 + 16;
    v36 = *(v25 + 16);
    v37 = a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v132 = *(v35 + 56);
    v133 = v36;
    v134 = v35;
    v38 = (v35 - 8);
    do
    {
      v40 = v135;
      v39 = v136;
      (v133)(v135, v37, v136);
      v41 = sub_226D67ADC();
      v43 = v42;
      (*v38)(v40, v39);
      v137 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_226AE1D68((v44 > 1), v45 + 1, 1);
        v33 = v137;
      }

      *(v33 + 16) = v45 + 1;
      v46 = v33 + 16 * v45;
      *(v46 + 32) = v41;
      *(v46 + 40) = v43;
      v37 += v132;
      --v34;
    }

    while (v34);
    a3 = v126;
    v31 = v127;
    a1 = v123;
    v16 = v121;
  }

  v47 = sub_226AE3C28(v33);

  v48 = sub_226D677EC();
  v50 = v49;
  sub_226D69D0C();
  v51 = v128;
  sub_226BDBB64(v47, v48, v50, a3, v31);
  if (v51)
  {
  }

  v134 = 0;
  v135 = v48;
  v133 = v50;

  v53 = v124;
  sub_226D677BC();
  if (v114)
  {
    v54 = v120;
    v55 = v125;
    v56 = v136;
    (*(v120 + 16))(v125, v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v136);
    v57 = 0;
    v58 = v122;
    v59 = v116;
  }

  else
  {
    v57 = 1;
    v58 = v122;
    v59 = v116;
    v55 = v125;
    v56 = v136;
    v54 = v120;
  }

  (*(v54 + 56))(v55, v57, 1, v56);
  v60 = v115;
  sub_226AC40E8(v53, v115, &qword_27D7A6638, &unk_226D71860);
  v61 = v119;
  if ((*(v119 + 48))(v60, 1, v58) == 1)
  {
    sub_226AC47B0(v60, &qword_27D7A6638, &unk_226D71860);
    v62 = v118;
  }

  else
  {
    v123 = a1;
    v116 = *(v61 + 32);
    (v116)(v16, v60, v58);
    v128 = *(v61 + 16);
    v128(v59, v16, v58);
    v63 = v58;
    v64 = v31;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v66 = *(v65 - 8);
    v67 = *(v66 + 56);
    v132 = v66 + 56;
    (v67)(v59, 0, 4, v65);
    LOBYTE(v64) = _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(v64, v59);
    sub_226AFBC34(v59, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    if (v64)
    {
      (*(v61 + 8))(v16, v63);
      v62 = v118;
      v53 = v124;
      v31 = v127;
    }

    else
    {
      v115 = v67;
      v121 = v16;
      v76 = v125;
      v77 = v112;
      sub_226AC40E8(v125, v112, &qword_27D7A66B0, &qword_226D718C8);
      v78 = v120;
      v79 = v136;
      if ((*(v120 + 48))(v77, 1, v136) == 1)
      {

        (*(v119 + 8))(v121, v122);
        sub_226AC47B0(v76, &qword_27D7A66B0, &qword_226D718C8);
        sub_226AC47B0(v124, &qword_27D7A6638, &unk_226D71860);
        sub_226AFBC34(v127, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AC47B0(v77, &qword_27D7A66B0, &qword_226D718C8);
        return (v115)(v118, 1, 4, v65);
      }

      v89 = sub_226D67ADC();
      v90 = v78;
      v92 = v91;
      (*(v90 + 8))(v77, v79);
      v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0) + 64);
      v94 = v108;
      *v108 = v89;
      v94[1] = v92;
      v95 = v126;
      v96 = v133;
      v94[2] = v135;
      v94[3] = v96;
      v128(v94 + v93, v121, v122);
      v97 = v94;
      v98 = v109;
      v99 = v94;
      v100 = v110;
      (*(v109 + 104))(v99, *MEMORY[0x277CC6AD0], v110);

      v101 = v134;
      sub_226CC2F28(v97, v95, v111);
      if (v101)
      {

        (*(v98 + 8))(v97, v100);
        (*(v119 + 8))(v121, v122);
        sub_226AC47B0(v125, &qword_27D7A66B0, &qword_226D718C8);
        sub_226AC47B0(v124, &qword_27D7A6638, &unk_226D71860);
        return sub_226AFBC34(v127, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      }

      v134 = 0;
      (*(v98 + 8))(v97, v100);
      (*(v106 + 8))(v111, v107);
      v103 = v127;
      sub_226AFBC34(v127, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      (v116)(v103, v121, v122);
      v104 = v65;
      v31 = v103;
      (v115)(v103, 0, 4, v104);
      v62 = v118;
      v53 = v124;
    }
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
  (*(*(v68 - 8) + 56))(v59, 1, 4, v68);
  v69 = _s10FinanceKit22ManagedCloudOrderEventC0A6DaemonE14TrackingStatusO2eeoiySbAF_AFtFZ_0(v31, v59);
  sub_226AFBC34(v59, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
  if (v69)
  {
    v70 = v113;
    sub_226D6784C();
    v71 = v70;
    v72 = sub_226D6783C();
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v71, 1, v72) == 1)
    {
      sub_226AC47B0(v71, &qword_27D7A66A8, &qword_226D718C0);
      v74 = 0;
      v75 = v135;
LABEL_31:
      sub_226AF3524(v75, v133, v74, v126, v62);
      v102 = v127;

      sub_226AC47B0(v125, &qword_27D7A66B0, &qword_226D718C8);
      sub_226AC47B0(v53, &qword_27D7A6638, &unk_226D71860);
      return sub_226AFBC34(v102, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
    }

    else
    {
      v80 = sub_226D6782C();
      result = (*(v73 + 8))(v71, v72);
      v81 = 0;
      v82 = *(v80 + 16);
      v75 = v135;
      v83 = v131;
      while (1)
      {
        if (v82 == v81)
        {

          v74 = 0;
          goto LABEL_30;
        }

        if (v81 >= *(v80 + 16))
        {
          break;
        }

        v84 = v129;
        v85 = v130;
        (*(v83 + 16))(v129, v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81++, v130);
        sub_226D6780C();
        v87 = v86;
        v88 = v85;
        v75 = v135;
        result = (*(v83 + 8))(v84, v88);
        if (v87)
        {

          v74 = 1;
LABEL_30:
          v62 = v118;
          v53 = v124;
          goto LABEL_31;
        }
      }

      __break(1u);
    }
  }

  else
  {

    sub_226AC47B0(v125, &qword_27D7A66B0, &qword_226D718C8);
    sub_226AC47B0(v53, &qword_27D7A6638, &unk_226D71860);
    return sub_226AFBBCC(v31, v62, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
  }

  return result;
}

uint64_t sub_226AF3524@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, void *a4@<X4>, int64_t a5@<X8>)
{
  v275 = a4;
  v259 = a3;
  v263 = sub_226D6A15C();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_226D6708C();
  v273 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v269 = (&v244 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v251 = (&v244 - v12);
  MEMORY[0x28223BE20](v13);
  v260 = &v244 - v14;
  MEMORY[0x28223BE20](v15);
  v253 = (&v244 - v16);
  MEMORY[0x28223BE20](v17);
  v257 = &v244 - v18;
  MEMORY[0x28223BE20](v19);
  v252 = (&v244 - v20);
  MEMORY[0x28223BE20](v21);
  v256 = &v244 - v22;
  v270 = sub_226D670CC();
  v265 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v268 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v250 = &v244 - v25;
  MEMORY[0x28223BE20](v26);
  v258 = &v244 - v27;
  MEMORY[0x28223BE20](v28);
  v249 = &v244 - v29;
  MEMORY[0x28223BE20](v30);
  v255 = &v244 - v31;
  MEMORY[0x28223BE20](v32);
  v248 = &v244 - v33;
  MEMORY[0x28223BE20](v34);
  v254 = &v244 - v35;
  v271 = sub_226D6A1EC();
  v274 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v264 = &v244 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  MEMORY[0x28223BE20](v37 - 8);
  v266 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v267 = &v244 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v244 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v244 - v45;
  v47 = sub_226D67A5C();
  v281 = *(v47 - 8);
  v282 = v47;
  MEMORY[0x28223BE20](v47);
  v280 = &v244 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_226D67A8C();
  v292 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v295 = (&v244 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_226D67AAC();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v294 = (&v244 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v293 = (&v244 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C8, &unk_226D718E0);
  MEMORY[0x28223BE20](v55 - 8);
  v285 = &v244 - v56;
  v57 = sub_226D67B3C();
  v61 = MEMORY[0x28223BE20](v57);
  v63 = &v244 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v60 + 16))
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v90 = sub_226D6E07C();
    __swift_project_value_buffer(v90, qword_28105F6A8);

    v91 = sub_226D6E05C();
    v92 = sub_226D6E9CC();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = a5;
      v95 = swift_slowAlloc();
      v297 = v95;
      *v93 = 136315138;
      *(v93 + 4) = sub_226AC4530(a1, a2, &v297);
      _os_log_impl(&dword_226AB4000, v91, v92, "There are no mail items to track an order with number %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      v96 = v95;
      a5 = v94;
      MEMORY[0x22AA8BEE0](v96, -1, -1);
      MEMORY[0x22AA8BEE0](v93, -1, -1);
    }

    goto LABEL_20;
  }

  v244 = v43;
  v283 = a1;
  v276 = a2;
  v245 = v46;
  v247 = a5;
  v279 = v5;
  v277 = v59;
  v64 = *(v59 + 16);
  v65 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v246 = v60;
  v278 = v58;
  v64(v63, v60 + v65, v61);
  v284 = v63;
  v66 = sub_226D67ABC();
  v67 = v66;
  v68 = v66 + 56;
  v69 = 1 << *(v66 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v66 + 56);
  v72 = (v69 + 63) >> 6;
  v290 = v51 + 16;
  v291 = v51 + 32;
  v289 = v292 + 1;
  v292 = (v51 + 8);

  v74 = 0;
  v75 = v50;
  v287 = v73;
  v288 = v51;
  v76 = v294;
  if (!v71)
  {
LABEL_6:
    while (1)
    {
      v77 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v77 >= v72)
      {

        v84 = 1;
        v85 = v285;
        goto LABEL_13;
      }

      v71 = *(v68 + 8 * v77);
      ++v74;
      if (v71)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v77 = v74;
LABEL_9:
    v78 = *(v67 + 48) + *(v51 + 72) * (__clz(__rbit64(v71)) | (v77 << 6));
    v79 = v293;
    (*(v51 + 16))(v293, v78, v75);
    v80 = *(v51 + 32);
    v80(v76, v79, v75);
    v81 = v295;
    v82 = v75;
    sub_226D67A9C();
    v83 = sub_226D67A7C();
    (*v289)(v81, v296);
    if (v83)
    {
      break;
    }

    v71 &= v71 - 1;
    (*v292)(v76, v82);
    v74 = v77;
    v75 = v82;
    v67 = v287;
    v51 = v288;
    if (!v71)
    {
      goto LABEL_6;
    }
  }

  v85 = v285;
  v80(v285, v76, v82);
  v84 = 0;
  v75 = v82;
  v51 = v288;
LABEL_13:
  (*(v51 + 56))(v85, v84, 1, v75);

  v86 = (*(v51 + 48))(v85, 1, v75);
  v88 = v283;
  v87 = v284;
  v89 = v276;
  if (v86 == 1)
  {
    sub_226AC47B0(v85, &qword_27D7A66C8, &unk_226D718E0);
    v295 = 0;
    v296 = 0;
  }

  else
  {
    v101 = v280;
    sub_226D67A6C();
    (*v292)(v85, v75);
    v295 = sub_226D67A4C();
    v296 = v102;
    (*(v281 + 8))(v101, v282);
  }

  v103 = sub_226D67AEC();
  v105 = v104;
  v106 = sub_226D67ACC();
  v108 = v107;
  v109 = v279;
  v110 = sub_226AFC648(v87, v88, v89);
  if (v109)
  {
    (*(v277 + 8))(v87, v278);
  }

  v293 = v106;
  v294 = v103;
  if ((v110 & 1) == 0)
  {
    (*(v277 + 8))(v284, v278);

    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    return (*(*(v114 - 8) + 56))(v247, 1, 4, v114);
  }

  v111 = v296;
  v112 = v89;
  v113 = sub_226AFA2B0(v246, v295, v296, v283, v89, v275);
  v72 = v247;
  if (v113)
  {
    (*(v277 + 8))(v284, v278);

LABEL_36:

LABEL_37:
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v98 = *(*(v97 - 8) + 56);
    v99 = v72;
    return v98(v99, 1, 4, v97);
  }

  if (!v111)
  {
LABEL_35:
    (*(v277 + 8))(v284, v278);

    goto LABEL_36;
  }

  if ((MEMORY[0x22AA83AB0](v246) & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v115 = sub_226D6E07C();
    __swift_project_value_buffer(v115, qword_28105F6A8);

    v116 = sub_226D6E05C();
    v117 = sub_226D6E9CC();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v297 = v119;
      *v118 = 136315138;
      *(v118 + 4) = sub_226AC4530(v283, v112, &v297);
      _os_log_impl(&dword_226AB4000, v116, v117, "Order with number %s does not contain physical goods, skipping automatic ingestion.", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v119);
      v72 = v247;
      MEMORY[0x22AA8BEE0](v119, -1, -1);
      MEMORY[0x22AA8BEE0](v118, -1, -1);
    }

    (*(v277 + 8))(v284, v278);
    goto LABEL_37;
  }

  if (sub_226B16018(v294, v105, v295, v111, v275))
  {

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v120 = sub_226D6E07C();
    __swift_project_value_buffer(v120, qword_28105F6A8);

    v121 = v111;
    v122 = sub_226D6E05C();
    v123 = sub_226D6E9EC();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v297 = v125;
      *v124 = 136315650;
      v126 = sub_226AC4530(v295, v121, &v297);

      *(v124 + 4) = v126;
      *(v124 + 12) = 2080;
      v127 = sub_226AC4530(v294, v105, &v297);

      *(v124 + 14) = v127;
      v128 = v283;
      *(v124 + 22) = 2080;
      *(v124 + 24) = sub_226AC4530(v128, v112, &v297);
      _os_log_impl(&dword_226AB4000, v122, v123, "Merchant %s with email address: %s was previously allowlisted. Automatically ingesting order %s.", v124, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v125, -1, -1);
      MEMORY[0x22AA8BEE0](v124, -1, -1);

      v129 = v270;
    }

    else
    {

      v129 = v270;
      v128 = v283;
    }

    v141 = v284;
    v142 = sub_226D67ADC();
    v143 = v269;
    *v269 = v142;
    v143[1] = v144;
    v143[2] = v128;
    v143[3] = v112;
    v145 = v273;
    v146 = v272;
    (*(v273 + 104))(v143, *MEMORY[0x277CC6AB8], v272);

    v147 = v268;
    sub_226CC2F28(v143, v275, v268);
    (*(v145 + 8))(v143, v146);
    (*(v265 + 8))(v147, v129);
    (*(v277 + 8))(v141, v278);
LABEL_64:
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    return (*(*(v170 - 8) + 56))(v247, 3, 4, v170);
  }

  v130 = v286;
  __swift_project_boxed_opaque_existential_1(v286 + 16, v286[19]);
  v131 = v245;
  sub_226BCAFF0(v294, v105, v245);
  __swift_project_boxed_opaque_existential_1(v130 + 16, v130[19]);
  v132 = v244;
  sub_226BCB99C(v293, v108, v244);
  v133 = v266;
  sub_226AC40E8(v131, v266, &qword_27D7A66C0, &unk_226D75EC0);
  v134 = *(v274 + 48);
  v135 = v271;
  v136 = v134(v133, 1, v271);
  v293 = v134;
  if (v136 == 1)
  {
    v137 = v132;
    v138 = v267;
    sub_226AC40E8(v137, v267, &qword_27D7A66C0, &unk_226D75EC0);
    v139 = v134(v133, 1, v135);
    v140 = v274;
    if (v139 != 1)
    {
      sub_226AC47B0(v133, &qword_27D7A66C0, &unk_226D75EC0);
    }
  }

  else
  {
    v140 = v274;
    v138 = v267;
    (*(v274 + 32))(v267, v133, v135);
    (*(v140 + 56))(v138, 0, 1, v135);
  }

  v148 = (v293)(v138, 1, v135);
  v149 = v135;
  v150 = v286;
  if (v148 != 1)
  {

    v153 = v264;
    (*(v140 + 32))(v264, v138, v149);
    if (sub_226D6A18C())
    {
      if (sub_226D6A19C())
      {
        v154 = v286;
        if (qword_28105F6A0 != -1)
        {
          swift_once();
        }

        v155 = sub_226D6E07C();
        __swift_project_value_buffer(v155, qword_28105F6A8);

        v156 = sub_226D6E05C();
        v157 = sub_226D6E9EC();

        v158 = os_log_type_enabled(v156, v157);
        v159 = v256;
        if (v158)
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v297 = v161;
          *v160 = 136315394;
          *(v160 + 4) = sub_226AC4530(v294, v105, &v297);
          *(v160 + 12) = 2080;
          *(v160 + 14) = sub_226AC4530(v283, v112, &v297);
          _os_log_impl(&dword_226AB4000, v156, v157, "Merchant %s is on allowlist for automatic ingestion. Tracking the order with number %s", v160, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v161, -1, -1);
          MEMORY[0x22AA8BEE0](v160, -1, -1);
        }

        v162 = *v154;
        v163 = v295;
        *v159 = v294;
        v159[1] = v105;
        v164 = v296;
        v159[2] = v163;
        v159[3] = v164;
        v165 = *MEMORY[0x277CC6B00];
        v166 = v273;
        v167 = v272;
        v295 = *(v273 + 104);
        (v295)(v159, v165, v272);
        v168 = v254;
        v169 = v275;
        v296 = v162;
        sub_226CC2F28(v159, v275, v254);
        v235 = *(v166 + 8);
        v236 = v159;
        v273 = v166 + 8;
        v237 = v235;
        v235(v236, v167);
        v238 = *(v265 + 8);
        v265 += 8;
        v238(v168, v270);
        v239 = sub_226D67ADC();
        v240 = v252;
        *v252 = v239;
        v240[1] = v241;
        v240[2] = v283;
        v240[3] = v112;
        (v295)(v240, *MEMORY[0x277CC6AB8], v167);

        sub_226CC2F28(v240, v169, v248);
        v242 = (v274 + 8);
        v243 = (v277 + 8);
        v237(v252, v272);
        v238(v248, v270);
        (*v242)(v264, v271);
        sub_226AC47B0(v244, &qword_27D7A66C0, &unk_226D75EC0);
        sub_226AC47B0(v245, &qword_27D7A66C0, &unk_226D75EC0);
        (*v243)(v284, v278);
        goto LABEL_64;
      }

      (*(v140 + 8))(v153, v271);
      v150 = v286;
      goto LABEL_76;
    }

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v194 = sub_226D6E07C();
    __swift_project_value_buffer(v194, qword_28105F6A8);
    v195 = v105;

    v196 = sub_226D6E05C();
    v197 = sub_226D6E9EC();

    v198 = os_log_type_enabled(v196, v197);
    v199 = v294;
    a5 = v247;
    if (v198)
    {
      v200 = v153;
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v297 = v202;
      *v201 = 136315138;
      v203 = sub_226AC4530(v199, v195, &v297);

      *(v201 + 4) = v203;
      _os_log_impl(&dword_226AB4000, v196, v197, "Merchant %s was on denylist", v201, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v202);
      v204 = v202;
      a5 = v247;
      MEMORY[0x22AA8BEE0](v204, -1, -1);
      MEMORY[0x22AA8BEE0](v201, -1, -1);

      (*(v274 + 8))(v200, v271);
    }

    else
    {

      (*(v274 + 8))(v153, v271);
    }

    sub_226AC47B0(v244, &qword_27D7A66C0, &unk_226D75EC0);
    sub_226AC47B0(v245, &qword_27D7A66C0, &unk_226D75EC0);
    (*(v277 + 8))(v284, v278);
LABEL_20:
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
    v98 = *(*(v97 - 8) + 56);
    v99 = a5;
    return v98(v99, 1, 4, v97);
  }

  sub_226AC47B0(v138, &qword_27D7A66C0, &unk_226D75EC0);
  __swift_project_boxed_opaque_existential_1(v150 + 16, v150[19]);
  v151 = v261;
  ExtractedOrderConfigurationProvider.defaultBehavior.getter();
  v152 = (*(v262 + 88))(v151, v263);
  if (v152 == *MEMORY[0x277CC7AE8])
  {

LABEL_76:
    v205 = v260;
    if (v259)
    {
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v206 = sub_226D6E07C();
      __swift_project_value_buffer(v206, qword_28105F6A8);

      v207 = sub_226D6E05C();
      v208 = sub_226D6E9EC();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        v210 = swift_slowAlloc();
        v297 = v210;
        *v209 = 136315138;
        *(v209 + 4) = sub_226AC4530(v283, v112, &v297);
        _os_log_impl(&dword_226AB4000, v207, v208, "Order with number %s was automatically tracked as it has a linked transaction.", v209, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v210);
        MEMORY[0x22AA8BEE0](v210, -1, -1);
        MEMORY[0x22AA8BEE0](v209, -1, -1);
      }

      v211 = *v150;
      v212 = v295;
      *v205 = v294;
      v205[1] = v105;
      v213 = v296;
      v205[2] = v212;
      v205[3] = v213;
      v214 = *MEMORY[0x277CC6B00];
      v215 = v273;
      v216 = v272;
      v295 = *(v273 + 104);
      (v295)(v205, v214, v272);
      v217 = v258;
      v218 = v275;
      v296 = v211;
      sub_226CC2F28(v205, v275, v258);
      v294 = *(v215 + 8);
      (v294)(v205, v216);
      v228 = *(v265 + 8);
      v265 += 8;
      v293 = v228;
      (v228)(v217, v270);
      v229 = v284;
      v230 = sub_226D67ADC();
      v231 = v251;
      *v251 = v230;
      v231[1] = v232;
      v231[2] = v283;
      v231[3] = v112;
      (v295)(v231, *MEMORY[0x277CC6AB8], v216);

      v233 = v250;
      sub_226CC2F28(v231, v218, v250);
      v234 = (v277 + 8);
      (v294)(v231, v216);
      (v293)(v233, v270);
      sub_226AC47B0(v244, &qword_27D7A66C0, &unk_226D75EC0);
      sub_226AC47B0(v245, &qword_27D7A66C0, &unk_226D75EC0);
      (*v234)(v229, v278);
      goto LABEL_64;
    }

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v219 = sub_226D6E07C();
    __swift_project_value_buffer(v219, qword_28105F6A8);

    v220 = sub_226D6E05C();
    v221 = sub_226D6E9EC();

    if (!os_log_type_enabled(v220, v221))
    {
LABEL_95:

      sub_226AC47B0(v244, &qword_27D7A66C0, &unk_226D75EC0);
      sub_226AC47B0(v245, &qword_27D7A66C0, &unk_226D75EC0);
      (*(v277 + 8))(v284, v278);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
      v98 = *(*(v97 - 8) + 56);
      v99 = v247;
      return v98(v99, 1, 4, v97);
    }

    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v297 = v223;
    *v222 = 136315138;
    *(v222 + 4) = sub_226AC4530(v283, v112, &v297);
    v224 = "Order with number %s was not tracked automatically.";
LABEL_91:
    _os_log_impl(&dword_226AB4000, v220, v221, v224, v222, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v223);
    MEMORY[0x22AA8BEE0](v223, -1, -1);
    MEMORY[0x22AA8BEE0](v222, -1, -1);
    goto LABEL_95;
  }

  if (v152 == *MEMORY[0x277CC7AF0])
  {

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v171 = sub_226D6E07C();
    __swift_project_value_buffer(v171, qword_28105F6A8);

    v172 = sub_226D6E05C();
    v173 = sub_226D6E9EC();

    v174 = os_log_type_enabled(v172, v173);
    v175 = v257;
    if (v174)
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v297 = v177;
      *v176 = 136315394;
      *(v176 + 4) = sub_226AC4530(v294, v105, &v297);
      *(v176 + 12) = 2080;
      *(v176 + 14) = sub_226AC4530(v283, v112, &v297);
      _os_log_impl(&dword_226AB4000, v172, v173, "Merchant %s is not an allow list but default is to automatically ingest. Tracking the order with number %s", v176, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v177, -1, -1);
      MEMORY[0x22AA8BEE0](v176, -1, -1);
    }

    v178 = *v150;
    v179 = v295;
    *v175 = v294;
    v175[1] = v105;
    v180 = v296;
    v175[2] = v179;
    v175[3] = v180;
    v181 = *MEMORY[0x277CC6B00];
    v182 = v273;
    v183 = v272;
    v295 = *(v273 + 104);
    (v295)(v175, v181, v272);
    v184 = v255;
    v185 = v275;
    v296 = v178;
    sub_226CC2F28(v175, v275, v255);
    v186 = *(v182 + 8);
    v187 = v175;
    v273 = v182 + 8;
    v188 = v186;
    v186(v187, v183);
    v189 = *(v265 + 8);
    v265 += 8;
    v189(v184, v270);
    v190 = sub_226D67ADC();
    v191 = v253;
    *v253 = v190;
    v191[1] = v192;
    v191[2] = v283;
    v191[3] = v112;
    (v295)(v191, *MEMORY[0x277CC6AB8], v183);

    sub_226CC2F28(v191, v185, v249);
    v193 = (v277 + 8);
    v188(v253, v272);
    v189(v249, v270);
    sub_226AC47B0(v244, &qword_27D7A66C0, &unk_226D75EC0);
    sub_226AC47B0(v245, &qword_27D7A66C0, &unk_226D75EC0);
    (*v193)(v284, v278);
    goto LABEL_64;
  }

  if (v152 == *MEMORY[0x277CC7AF8])
  {
    swift_bridgeObjectRelease_n();

    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v225 = sub_226D6E07C();
    __swift_project_value_buffer(v225, qword_28105F6A8);
    v226 = v105;

    v220 = sub_226D6E05C();
    v221 = sub_226D6E9EC();

    if (!os_log_type_enabled(v220, v221))
    {

      goto LABEL_95;
    }

    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v297 = v223;
    *v222 = 136315138;
    v227 = sub_226AC4530(v294, v226, &v297);

    *(v222 + 4) = v227;
    v224 = "Merchant %s not on denylist, but default is to deny";
    goto LABEL_91;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226AF5B30@<X0>(void (*a1)(void, void, void)@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v339 = a2;
  v340 = a1;
  v323 = a3;
  v326 = sub_226D67B3C();
  v318 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v325 = &v299 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ManagedCloudOrderEvent.TrackingStatus(0);
  MEMORY[0x28223BE20](v4 - 8);
  v311 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v310 = &v299 - v7;
  MEMORY[0x28223BE20](v8);
  v312 = &v299 - v9;
  v317 = sub_226D6B49C();
  v316 = *(v317 - 8);
  MEMORY[0x28223BE20](v317);
  v303 = &v299 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v309 = &v299 - v12;
  MEMORY[0x28223BE20](v13);
  v313 = &v299 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6638, &unk_226D71860);
  MEMORY[0x28223BE20](v15 - 8);
  v315 = &v299 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v320 = &v299 - v18;
  v19 = sub_226D6785C();
  v333 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v331 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D696EC();
  v328 = *(v21 - 8);
  v329 = v21;
  MEMORY[0x28223BE20](v21);
  v327 = &v299 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6640, &qword_226D75B50);
  MEMORY[0x28223BE20](v23 - 8);
  v330 = &v299 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v334 = &v299 - v26;
  v27 = sub_226D6D52C();
  v28 = *(v27 - 1);
  MEMORY[0x28223BE20](v27);
  v319 = &v299 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v314 = &v299 - v31;
  MEMORY[0x28223BE20](v32);
  v336 = &v299 - v33;
  MEMORY[0x28223BE20](v34);
  v341 = &v299 - v35;
  v338 = sub_226D6DFCC();
  v36 = *(v338 - 1);
  MEMORY[0x28223BE20](v338);
  v305 = &v299 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v304 = &v299 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v299 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v299 - v44;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v46 = sub_226D6DFFC();
  v47 = __swift_project_value_buffer(v46, qword_281064510);
  sub_226D6DFBC();
  v306 = v47;
  v48 = sub_226D6DFDC();
  v49 = sub_226D6EABC();
  v50 = sub_226D6EC8C();
  v332 = v19;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v48, v49, v52, "InsertOrUpdateExtractedOrder", "", v51, 2u);
    MEMORY[0x22AA8BEE0](v51, -1, -1);
  }

  v53 = v338;
  (*(v36 + 16))(v42, v45, v338);
  sub_226D6E03C();
  swift_allocObject();
  v54 = sub_226D6E02C();
  v55 = *(v36 + 8);
  v308 = v36 + 8;
  v307 = v55;
  v55(v45, v53);
  v56 = v340;
  v57 = v341;
  sub_226D694BC();
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v58 = sub_226D6E07C();
  v59 = __swift_project_value_buffer(v58, qword_28105F6A8);
  v60 = (v28 + 16);
  v61 = *(v28 + 2);
  v62 = v28;
  v63 = v336;
  v322 = v60;
  v321 = v61;
  (v61)(v336, v57, v27);
  v324 = v59;
  v64 = sub_226D6E05C();
  v65 = sub_226D6E9EC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v335 = v54;
    v67 = v66;
    v301 = v66;
    v302 = swift_slowAlloc();
    *&v342[0] = v302;
    *v67 = 136315138;
    sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v68 = sub_226D6F1CC();
    v70 = v69;
    v71 = *(v62 + 1);
    v71(v63, v27);
    v72 = sub_226AC4530(v68, v70, v342);
    v56 = v340;

    v73 = v301;
    *(v301 + 4) = v72;
    v74 = v73;
    _os_log_impl(&dword_226AB4000, v64, v65, "Inserting cascade order with ID: %s", v73, 0xCu);
    v75 = v302;
    __swift_destroy_boxed_opaque_existential_0Tm(v302);
    MEMORY[0x22AA8BEE0](v75, -1, -1);
    v54 = v335;
    MEMORY[0x22AA8BEE0](v74, -1, -1);
  }

  else
  {

    v71 = *(v62 + 1);
    v71(v63, v27);
  }

  v76 = v339;
  v77 = v337;
  v78 = sub_226BD5618(v56, v339);
  if (!v77)
  {
    v336 = v62;
    v302 = v27;
    v337 = 0;
    v335 = v54;
    if (v78 >= 0)
    {
      v79 = v78;
    }

    else
    {
      v79 = (v78 & 0x7FFFFFFFFFFFFFFFLL);
    }

    v300 = v79;
    v301 = (v78 & 0x7FFFFFFFFFFFFFFFLL);
    sub_226D693FC();
    v80 = sub_226D67B0C();

    (*(v328 + 2))(v327, v56, v329);
    v81 = v334;
    v82 = v332;
    sub_226D677CC();
    v83 = v330;
    sub_226AC40E8(v81, v330, &qword_27D7A6640, &qword_226D75B50);
    v84 = v333;
    if ((*(v333 + 48))(v83, 1, v82) == 1)
    {

      sub_226AC47B0(v83, &qword_27D7A6640, &qword_226D75B50);
      v85 = v319;
      v86 = v341;
      v87 = v302;
      (v321)(v319, v341, v302);
      v88 = sub_226D6E05C();
      v89 = sub_226D6E9CC();
      if (!os_log_type_enabled(v88, v89))
      {

        v106 = v301;
        v71(v85, v87);
        sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
        v71(v86, v87);
        v107 = v335;
LABEL_30:
        v132 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
        (*(*(v132 - 8) + 56))(v323, 1, 1, v132);
        goto LABEL_31;
      }

      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v342[0] = v91;
      *v90 = 136315138;
      sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v92 = sub_226D6F1CC();
      v93 = v85;
      v94 = v71;
      v96 = v95;
      v94(v93, v87);
      v97 = sub_226AC4530(v92, v96, v342);

      *(v90 + 4) = v97;
      _os_log_impl(&dword_226AB4000, v88, v89, "Invalid extracted order with cascade ID: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x22AA8BEE0](v91, -1, -1);
      MEMORY[0x22AA8BEE0](v90, -1, -1);

      v98 = v301;
      sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
      v94(v341, v87);
LABEL_29:
      v107 = v335;
      goto LABEL_30;
    }

    (*(v84 + 32))(v331, v83, v82);
    if (!*(v80 + 16))
    {

      v108 = v314;
      v109 = v341;
      v110 = v302;
      (v321)(v314, v341, v302);
      v111 = sub_226D6E05C();
      v112 = sub_226D6E9CC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *&v342[0] = v114;
        *v113 = 136315138;
        sub_226AFD8B4(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v115 = sub_226D6F1CC();
        v116 = v110;
        v118 = v117;
        v119 = v108;
        v120 = v116;
        v71(v119, v116);
        v121 = sub_226AC4530(v115, v118, v342);

        *(v113 + 4) = v121;
        _os_log_impl(&dword_226AB4000, v111, v112, "Mail items are empty ID: %s", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        MEMORY[0x22AA8BEE0](v114, -1, -1);
        MEMORY[0x22AA8BEE0](v113, -1, -1);

        v122 = v301;
        (*(v333 + 8))(v331, v332);
        sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
        v71(v341, v120);
      }

      else
      {

        v131 = v301;
        v71(v108, v110);
        (*(v333 + 8))(v331, v332);
        sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
        v71(v109, v110);
      }

      goto LABEL_29;
    }

    v330 = v80;
    v99 = v320;
    sub_226D6932C();
    v100 = v99;
    v101 = v315;
    sub_226AC40E8(v100, v315, &qword_27D7A6638, &unk_226D71860);
    v102 = v316;
    v103 = v317;
    v104 = (*(v316 + 48))(v101, 1, v317);
    v105 = v337;
    if (v104 == 1)
    {
      v299 = v71;
      v327 = 0;
    }

    else
    {
      v123 = v101;
      v124 = v313;
      (*(v102 + 32))(v313, v123, v103);
      sub_226D6751C();
      v125 = sub_226D6745C();
      if (v105)
      {
        v126 = v301;

        (*(v102 + 8))(v124, v103);
        sub_226AC47B0(v320, &qword_27D7A6638, &unk_226D71860);
        v127 = *(v333 + 8);
        v128 = v331;
        v129 = v82;
LABEL_27:
        v127(v128, v129);
        v130 = v334;
LABEL_37:
        sub_226AC47B0(v130, &qword_27D7A6640, &qword_226D75B50);
        v71(v341, v302);
        v54 = v335;
        goto LABEL_12;
      }

      v134 = v125;
      v299 = v71;
      (*(v102 + 8))(v124, v103);
      v327 = v134;
    }

    sub_226AC47B0(v320, &qword_27D7A6638, &unk_226D71860);
    v135 = sub_226D694AC();
    v137 = v136;
    v138 = sub_226D6933C();
    v140 = v139;
    v141 = sub_226D677EC();
    v143 = v142;
    v144 = sub_226D6990C();
    v145 = sub_226D6986C();
    if (v105)
    {

      v146 = v301;

      v147 = v333;
      v148 = v334;
      v71 = v299;
      v149 = v327;
LABEL_36:
      v150 = v332;

      (*(v147 + 8))(v331, v150);
      v130 = v148;
      goto LABEL_37;
    }

    v321 = v144;
    v320 = v135;
    v322 = v137;
    if (v145)
    {
      v328 = v145;

      v151 = v312;
      v149 = v327;
      v152 = v332;
LABEL_40:

      v343 = 0;
      memset(v342, 0, sizeof(v342));
      v153 = v330;
      sub_226AF26D8(v331, v330, v339, v151);
      v327 = v149;
      v337 = 0;
      v155 = *(v153 + 16);
      v156 = MEMORY[0x277D84F90];
      if (v155)
      {
        v344 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v155, 0);
        v156 = v344;
        v340 = *(v318 + 16);
        v157 = v153 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
        v329 = *(v318 + 72);
        v318 += 16;
        v158 = (v318 - 8);
        do
        {
          v159 = v325;
          v160 = v326;
          v340(v325, v157, v326);
          v161 = sub_226D67ADC();
          v163 = v162;
          (*v158)(v159, v160);
          v344 = v156;
          v165 = *(v156 + 16);
          v164 = *(v156 + 24);
          if (v165 >= v164 >> 1)
          {
            sub_226AE1D68((v164 > 1), v165 + 1, 1);
            v156 = v344;
          }

          *(v156 + 16) = v165 + 1;
          v166 = v156 + 16 * v165;
          *(v166 + 32) = v161;
          *(v166 + 40) = v163;
          v157 += v329;
          --v155;
        }

        while (v155);
        v152 = v332;
        v167 = v312;
      }

      else
      {
        v167 = v151;
      }

      v325 = sub_226AE3C28(v156);

      v185 = sub_226D677EC();
      v187 = v186;
      v188 = sub_226D677DC();
      v190 = v189;
      v191 = v310;
      sub_226AFBB10(v167, v310, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);

      v192 = sub_226D6E05C();
      v193 = sub_226D6E9EC();

      v194 = os_log_type_enabled(v192, v193);
      v329 = v190;
      v340 = v188;
      v326 = v187;
      v322 = v185;
      if (v194)
      {
        v195 = v191;
        v196 = swift_slowAlloc();
        v321 = swift_slowAlloc();
        v344 = v321;
        *v196 = 136315650;
        *(v196 + 4) = sub_226AC4530(v188, v190, &v344);
        v197 = v193;
        *(v196 + 12) = 2080;
        *(v196 + 14) = sub_226AC4530(v185, v187, &v344);
        *(v196 + 22) = 2080;
        v198 = ManagedCloudOrderEvent.TrackingStatus.description.getter();
        v200 = v199;
        sub_226AFBC34(v195, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v201 = sub_226AC4530(v198, v200, &v344);
        v152 = v332;
        v71 = v299;

        *(v196 + 24) = v201;
        _os_log_impl(&dword_226AB4000, v192, v197, "Order with id: %s sanitizedOrderNumber: %s has status: %s", v196, 0x20u);
        v202 = v321;
        swift_arrayDestroy();
        v203 = v312;
        v204 = v331;
        MEMORY[0x22AA8BEE0](v202, -1, -1);
        MEMORY[0x22AA8BEE0](v196, -1, -1);

        v205 = v337;
        v206 = v339;
        v207 = v317;
        v208 = v311;
      }

      else
      {

        sub_226AFBC34(v191, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        v205 = v337;
        v206 = v339;
        v207 = v317;
        v203 = v167;
        v208 = v311;
        v71 = v299;
        v204 = v331;
      }

      sub_226AFBB10(v203, v208, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6650, &unk_226D71870);
      v210 = (*(*(v209 - 8) + 48))(v208, 4, v209);
      if (v210 > 1)
      {
        v211 = v328;
        v212 = v340;
        if ((v210 - 2) < 2)
        {
          v299 = v71;

          sub_226AF87BC(v204, v300, v211, v325, v330, v322, v326, v206, v323);
          if (v205)
          {

            v213 = v301;

            sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v342);
            (*(v333 + 8))(v204, v152);
            sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
            goto LABEL_42;
          }

          v259 = v301;

          sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
          sub_226AFBB78(v342);
          (*(v333 + 8))(v204, v152);
          sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
LABEL_109:
          v299(v341, v302);
          v107 = v335;
          goto LABEL_31;
        }

LABEL_86:

        v241 = v305;
        sub_226D6DFBC();
        v242 = sub_226D6DFDC();
        v243 = sub_226D6EACC();
        if (sub_226D6EC8C())
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          v245 = sub_226D6DFAC();
          _os_signpost_emit_with_name_impl(&dword_226AB4000, v242, v243, v245, "InsertOrUpdateExtractedOrder", "UntrackOrder", v244, 2u);
          MEMORY[0x22AA8BEE0](v244, -1, -1);
        }

        v307(v241, v338);
        v246 = v302;
        v247 = v335;
        if (v328)
        {
          v248 = sub_226D6E05C();
          v249 = sub_226D6E9EC();
          if (os_log_type_enabled(v248, v249))
          {
            v250 = swift_slowAlloc();
            *v250 = 0;
            _os_log_impl(&dword_226AB4000, v248, v249, "Deleting the existing tracked order", v250, 2u);
            MEMORY[0x22AA8BEE0](v250, -1, -1);
          }

          v251 = v328;
          v252 = v337;
          sub_226CCAA84(v328, v339);
          if (v252)
          {

            v253 = v301;
            sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v342);
            (*(v333 + 8))(v204, v152);
            sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
            v71(v341, v246);
            v54 = v247;
            goto LABEL_12;
          }

          v267 = v301;

          v261 = v333;
          v212 = v340;
        }

        else
        {
          v260 = v301;

          v261 = v333;
        }

        sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v342);
        (*(v261 + 8))(v204, v152);
        sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
        v71(v341, v246);
        v268 = v323;
        v269 = v329;
        *v323 = v212;
        v268[1] = v269;
        type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
        swift_storeEnumTagMultiPayload();
        v270 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
        *(v268 + *(v270 + 20)) = 0;
        (*(*(v270 - 8) + 56))(v268, 0, 1, v270);
        v107 = v247;
LABEL_31:
        sub_226AF8530(v107);
      }

      v212 = v340;
      if (!v210)
      {
        (*(v316 + 32))(v309, v208, v207);
        v214 = v304;
        sub_226D6DFBC();
        v215 = sub_226D6DFDC();
        v216 = sub_226D6EACC();
        if (sub_226D6EC8C())
        {
          v217 = swift_slowAlloc();
          *v217 = 0;
          v218 = sub_226D6DFAC();
          _os_signpost_emit_with_name_impl(&dword_226AB4000, v215, v216, v218, "InsertOrUpdateExtractedOrder", "LinkToClassicOrder", v217, 2u);
          v219 = v217;
          v206 = v339;
          MEMORY[0x22AA8BEE0](v219, -1, -1);
        }

        v307(v214, v338);
        v220 = v328;
        if (v328)
        {
          v221 = v204;
          v222 = v71;
          v223 = v329;

          v224 = v220;
          v225 = sub_226D6E05C();
          v226 = sub_226D6E9EC();

          if (os_log_type_enabled(v225, v226))
          {
            v227 = swift_slowAlloc();
            v228 = swift_slowAlloc();
            v344 = v228;
            *v227 = 136315138;
            *(v227 + 4) = sub_226AC4530(v340, v223, &v344);
            _os_log_impl(&dword_226AB4000, v225, v226, "Order %s is linked to a classic order, so we are deleting extrated order", v227, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v228);
            v229 = v228;
            v220 = v328;
            v221 = v331;
            v152 = v332;
            MEMORY[0x22AA8BEE0](v229, -1, -1);
            v230 = v227;
            v206 = v339;
            MEMORY[0x22AA8BEE0](v230, -1, -1);
          }

          v71 = v222;
          v231 = v337;
          sub_226CCAA84(v224, v206);
          v232 = v231;
          if (v231)
          {

            v233 = v301;

            (*(v316 + 8))(v309, v317);
            sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v342);
            v127 = *(v333 + 8);
            v128 = v221;
LABEL_117:
            v129 = v152;
            goto LABEL_27;
          }

          v204 = v221;
        }

        else
        {
          v232 = v337;
        }

        v271 = v317;
        v272 = v316;
        v273 = v327;
        if (v327)
        {
          v299 = v71;
          v337 = v232;
          v274 = v303;
          (*(v316 + 16))(v303, v309, v317);
          v275 = v273;
          v276 = v272;
          v277 = sub_226D6E05C();
          v278 = sub_226D6E9EC();
          if (os_log_type_enabled(v277, v278))
          {
            v279 = swift_slowAlloc();
            v280 = swift_slowAlloc();
            v344 = v280;
            *v279 = 136315138;
            sub_226AFD8B4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
            v281 = v278;
            v282 = sub_226D6F1CC();
            v283 = v276;
            v284 = v275;
            v286 = v285;
            v338 = *(v283 + 8);
            (v338)(v274, v271);
            v287 = sub_226AC4530(v282, v286, &v344);
            v275 = v284;

            *(v279 + 4) = v287;
            _os_log_impl(&dword_226AB4000, v277, v281, "Updating classic order %s with new mail items.", v279, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v280);
            v288 = v280;
            v152 = v332;
            MEMORY[0x22AA8BEE0](v288, -1, -1);
            v289 = v279;
            v206 = v339;
            MEMORY[0x22AA8BEE0](v289, -1, -1);
          }

          else
          {

            v338 = *(v276 + 8);
            (v338)(v274, v271);
          }

          v220 = v328;
          v292 = v337;
          sub_226AFA06C(v275, v330, v206);
          v232 = v292;
          v291 = v322;
          if (v292)
          {

            v293 = v301;

            (v338)(v309, v317);
            sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
            sub_226AFBB78(v342);
            (*(v333 + 8))(v331, v152);
            goto LABEL_41;
          }

          [v300 setClassicOrder_];

          v71 = v299;
          v204 = v331;
        }

        else
        {

          v291 = v322;
        }

        sub_226CC3218(v325, v291, v326, v206);
        if (!v232)
        {

          v295 = v301;

          (*(v316 + 8))(v309, v317);
          sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
          sub_226AFBB78(v342);
          (*(v333 + 8))(v204, v152);
          sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
          v71(v341, v302);
          v296 = v323;
          v297 = v329;
          *v323 = v340;
          v296[1] = v297;
          type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
          swift_storeEnumTagMultiPayload();
          v298 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
          *(v296 + *(v298 + 20)) = v327;
          (*(*(v298 - 8) + 56))(v296, 0, 1, v298);
          v107 = v335;
          goto LABEL_31;
        }

        v294 = v301;

        (*(v316 + 8))(v309, v317);
        sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v342);
        v127 = *(v333 + 8);
        v128 = v204;
        goto LABEL_117;
      }

      v235 = v328;
      if (!v328)
      {
        goto LABEL_86;
      }

      v299 = v71;

      v236 = sub_226D6E05C();
      v237 = sub_226D6E9EC();
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        *v238 = 0;
        _os_log_impl(&dword_226AB4000, v236, v237, "The status is not tracked, but extracted order already exists (e.g. the user signed out\nfrom iCloud account). So we still going to update it.", v238, 2u);
        v239 = v238;
        v205 = v337;
        MEMORY[0x22AA8BEE0](v239, -1, -1);
      }

      sub_226AF87BC(v204, v300, v235, v325, v330, v322, v326, v206, v323);
      if (!v205)
      {

        v290 = v301;

        sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
        sub_226AFBB78(v342);
        (*(v333 + 8))(v204, v152);
        sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
        goto LABEL_109;
      }

      v240 = v301;

      sub_226AFBC34(v312, type metadata accessor for ManagedCloudOrderEvent.TrackingStatus);
      sub_226AFBB78(v342);
      (*(v333 + 8))(v204, v152);
LABEL_41:
      sub_226AC47B0(v334, &qword_27D7A6640, &qword_226D75B50);
LABEL_42:
      v299(v341, v302);
      v54 = v335;
      goto LABEL_12;
    }

    v149 = v327;
    v154 = v140;
    if (!v140 || (v152 = v332, v320 == v138) && v154 == v322)
    {
      v315 = v141;
      v319 = v143;
    }

    else
    {
      v168 = v154;
      if ((sub_226D6F21C() & 1) == 0)
      {
        v234 = sub_226D6986C();
        if (v234)
        {
          v262 = v234;

          v328 = v262;
          v263 = [v262 trackedOrderIdentifier];
          v264 = sub_226D6E39C();
          v266 = v265;

          sub_226AFBC94(v264, v266, v320, v322);

LABEL_101:
          v151 = v312;
          goto LABEL_40;
        }
      }

      v315 = v141;
      v319 = v143;
      v154 = v168;
    }

    v169 = v330;
    v170 = *(v330 + 16);
    v171 = MEMORY[0x277D84F90];
    if (v170)
    {
      v314 = v154;
      v337 = 0;
      *&v342[0] = MEMORY[0x277D84F90];
      sub_226AE1D68(0, v170, 0);
      v171 = *&v342[0];
      v172 = *(v318 + 16);
      v173 = v169 + ((*(v318 + 80) + 32) & ~*(v318 + 80));
      v328 = *(v318 + 72);
      v329 = v172;
      v340 = (v318 + 16);
      v174 = (v318 + 8);
      do
      {
        v175 = v325;
        v176 = v326;
        (v329)(v325, v173, v326);
        v177 = sub_226D67ADC();
        v179 = v178;
        (*v174)(v175, v176);
        *&v342[0] = v171;
        v181 = *(v171 + 16);
        v180 = *(v171 + 24);
        if (v181 >= v180 >> 1)
        {
          sub_226AE1D68((v180 > 1), v181 + 1, 1);
          v171 = *&v342[0];
        }

        *(v171 + 16) = v181 + 1;
        v182 = v171 + 16 * v181;
        *(v182 + 32) = v177;
        *(v182 + 40) = v179;
        v173 += v328;
        --v170;
      }

      while (v170);
      v105 = v337;
      v76 = v339;
    }

    v183 = sub_226AE3C28(v171);

    sub_226BDF504(v183, v315, v319, v76);
    v71 = v299;
    v149 = v327;
    if (v105)
    {

      v184 = v301;

      v147 = v333;
      v148 = v334;
      goto LABEL_36;
    }

    v254 = sub_226D6985C();

    v152 = v332;
    v299 = v71;
    if (v254)
    {
      v328 = v254;
      v255 = [v254 trackedOrderIdentifier];
      v256 = sub_226D6E39C();
      v258 = v257;

      sub_226AFBC94(v256, v258, v320, v322);
    }

    else
    {

      v328 = 0;
    }

    goto LABEL_101;
  }

  v71(v341, v27);
LABEL_12:
  sub_226AF8530(v54);
}

uint64_t sub_226AF8530(uint64_t a1)
{
  v1 = sub_226D6E00C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6DFCC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6DFFC();
  __swift_project_value_buffer(v9, qword_281064510);
  v10 = sub_226D6DFDC();
  sub_226D6E01C();
  v11 = sub_226D6EAAC();
  if (sub_226D6EC8C())
  {

    sub_226D6E04C();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v10, v11, v14, "InsertOrUpdateExtractedOrder", v12, v13, 2u);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_226AF87BC@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v199 = a8;
  v161 = a7;
  v160 = a6;
  v189 = a5;
  v159 = a4;
  v198 = a3;
  v188 = a2;
  v200 = a1;
  v157 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v11 - 8);
  v195 = &v154 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v13 - 8);
  v194 = &v154 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v15 - 8);
  v193 = &v154 - v16;
  v196 = _s7ChangesV11FulfillmentVMa(0);
  v175 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v190 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v192 = &v154 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v191 = &v154 - v24;
  v171 = sub_226D677FC();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v163 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v167 = &v154 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v28 - 8);
  v162 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v166 = &v154 - v31;
  v32 = _s7ChangesVMa(0);
  MEMORY[0x28223BE20](v32 - 8);
  v158 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v169 = &v154 - v35;
  v174 = sub_226D6A6BC();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = (&v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = sub_226D6D71C();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v183 = &v154 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_226D6D6DC();
  v184 = *(v185 - 1);
  MEMORY[0x28223BE20](v185);
  v180 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_226D6D4AC();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v179 = (&v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = sub_226D6785C();
  v177 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v176 = &v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v164);
  v165 = (&v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v168 = (&v154 - v43);
  v197 = type metadata accessor for ManagedExtractedOrderTracker(0);
  MEMORY[0x28223BE20](v197);
  v45 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_226D6DFCC();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v49 = &v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v50 = sub_226D6DFFC();
  __swift_project_value_buffer(v50, qword_281064510);
  sub_226D6DFBC();
  v51 = sub_226D6DFDC();
  v52 = sub_226D6EACC();
  if (sub_226D6EC8C())
  {
    v53 = swift_slowAlloc();
    v156 = v9;
    v54 = v22;
    v55 = v45;
    v56 = v53;
    *v53 = 0;
    v57 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v51, v52, v57, "InsertOrUpdateExtractedOrder", "TrackOrder", v56, 2u);
    v58 = v56;
    v45 = v55;
    v22 = v54;
    v10 = v156;
    MEMORY[0x22AA8BEE0](v58, -1, -1);
  }

  (*(v47 + 8))(v49, v46);
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v59 = *(v197 + 20);
  v60 = _s21NotificationSchedulerVMa(0);
  (*(*(v60 - 8) + 56))(&v45[v59], 1, 1, v60);
  if (v198)
  {
    v61 = [v198 trackedOrderIdentifier];
    sub_226D6E39C();

    v62 = v200;
  }

  else
  {
    v62 = v200;
    sub_226D677DC();
  }

  v63 = v199;
  sub_226D6990C();
  v64 = sub_226D6986C();
  if (v10)
  {
    sub_226AFBC34(v45, type metadata accessor for ManagedExtractedOrderTracker);
  }

  v66 = v64;
  v200 = v45;

  sub_226D6B31C();
  (*(v177 + 16))(v176, v62, v178);
  v67 = v63;
  v68 = sub_226D6B2CC();
  memset(v201, 0, sizeof(v201));
  if (v66)
  {
    v69 = v66;
    v199 = [v69 orderContent];
    v70 = v67;
    v71 = v179;
    sub_226D6D46C();
    v72 = v180;
    sub_226D6D66C();
    v73 = v183;
    sub_226D6D70C();
    sub_226D6982C();
    (*(v186 + 8))(v73, v187);
    (v184)[1](v72, v185);
    v74 = v71;
    v75 = v70;
    (v181)[1](v74, v182);
    sub_226D677DC();
    v76 = sub_226D6E36C();

    [v69 setTrackedOrderIdentifier_];

    [v188 setExtractedOrder_];
    v77 = v200;
    sub_226B4EFDC(v69, v189, v70);
    v92 = v199;
    sub_226B42120(v69, v75);
    v93 = 0;
    v94 = v92;
    v95 = v166;
    sub_226D6B2EC();
    (*(v170 + 56))(v95, 0, 1, v171);
    v96 = v68;
    v97 = v167;
    sub_226D6B2EC();
    sub_226D1F888(v92, 1, v95, v96, 1, v97, v169);
    [v75 deleteObject_];

    sub_226AFD62C(v201);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
    v99 = v168;
    *v168 = v69;
    sub_226AFBBCC(v169, v99 + v98, _s7ChangesVMa);
    goto LABEL_43;
  }

  v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v79 = v67;
  v80 = v179;
  sub_226D6D46C();
  v81 = v180;
  sub_226D6D66C();
  v82 = v183;
  sub_226D6D70C();
  v178 = v68;
  sub_226D6982C();
  (*(v186 + 8))(v82, v187);
  (v184)[1](v81, v185);
  v83 = v80;
  v84 = v79;
  (v181)[1](v83, v182);
  sub_226D677DC();
  v85 = sub_226D6E36C();

  [v78 setTrackedOrderIdentifier_];

  sub_226D6A72C();
  v86 = v173;
  *v173 = v78;
  (*(v172 + 104))(v86, *MEMORY[0x277CC7C58], v174);
  v87 = v79;
  v88 = v78;
  v89 = sub_226D6A6CC();
  [v88 setDashboardItem_];

  v90 = v88;
  [v188 setExtractedOrder_];
  v91 = v88;
  v77 = v200;
  sub_226B4EFDC(v91, v189, v87);
  sub_226B42120(v90, v87);
  v93 = 0;
  v180 = v90;
  (*(v170 + 56))(v162, 1, 1, v171);
  sub_226D6B2EC();
  v100 = MEMORY[0x277D84F90];
  v179 = sub_226B22808(MEMORY[0x277D84F90]);
  v101 = sub_226D6B30C();
  v189 = sub_226B22808(v100);
  if (v101 >> 62)
  {
    goto LABEL_50;
  }

  v102 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v181 = v84;
  if (v102)
  {
    v103 = 0;
    v187 = v101 & 0xC000000000000001;
    v186 = v101 & 0xFFFFFFFFFFFFFF8;
    v188 = (v175 + 56);
    v185 = (v175 + 48);
    v184 = v93;
    v155 = v22;
    v183 = v101;
    v182 = v102;
    while (1)
    {
      if (v187)
      {
        v105 = MEMORY[0x22AA8AFD0](v103, v101);
      }

      else
      {
        if (v103 >= *(v186 + 16))
        {
          goto LABEL_47;
        }

        v105 = *(v101 + 8 * v103 + 32);
      }

      v106 = v105;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v102 = sub_226D6EDFC();
        goto LABEL_14;
      }

      v197 = v103 + 1;
      v107 = [v105 trackingNumber];
      if (v107)
      {
        v108 = v107;
        v198 = sub_226D6E39C();
        v199 = v109;
      }

      else
      {
        v198 = 0;
        v199 = 0;
      }

      v22 = v196;
      v110 = *(v196 + 20);
      v111 = sub_226D6763C();
      v101 = v192;
      (*(*(v111 - 8) + 56))(&v192[v110], 1, 1, v111);
      v84 = *(v22 + 6);
      v112 = sub_226D6760C();
      (*(*(v112 - 8) + 56))(v101 + v84, 1, 1, v112);
      v113 = *(v22 + 7);
      v114 = sub_226D6762C();
      (*(*(v114 - 8) + 56))(v101 + v113, 1, 1, v114);
      v93 = v106;
      sub_226D6C6AC();
      v115 = v193;
      sub_226D6C68C();
      sub_226AFD680(v115, v101 + v110, &qword_27D7A6680, &unk_226D74710);
      v116 = v194;
      sub_226D6C66C();
      sub_226AFD680(v116, v101 + v84, &qword_27D7A6678, &unk_226D71890);
      v117 = v195;
      sub_226D6C67C();

      sub_226AFD680(v117, v101 + v113, &qword_27D7A6670, &qword_226D71888);
      v118 = v191;
      sub_226AFBB10(v101, v191, _s7ChangesV11FulfillmentVMa);
      v119 = *v188;
      (*v188)(v118, 0, 1, v22);
      sub_226AFBC34(v101, _s7ChangesV11FulfillmentVMa);
      if ((*v185)(v118, 1, v22) == 1)
      {
        sub_226AC47B0(v118, &qword_27D7A6688, &unk_226D718A0);
        v120 = v189;
        v121 = sub_226C2FD40(v198, v199);
        v123 = v122;

        v22 = v155;
        if (v123)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v202 = v120;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226C3788C();
            v120 = v202;
          }

          sub_226AFBBCC(*(v120 + 56) + *(v175 + 72) * v121, v22, _s7ChangesV11FulfillmentVMa);
          v189 = v120;
          sub_226D4A50C(v121, v120);

          v104 = 0;
        }

        else
        {

          v104 = 1;
        }

        v119(v22, v104, 1, v196);
        sub_226AC47B0(v22, &qword_27D7A6688, &unk_226D718A0);
        goto LABEL_18;
      }

      sub_226AFBBCC(v118, v190, _s7ChangesV11FulfillmentVMa);
      v125 = v189;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v202 = v125;
      v126 = v198;
      v77 = v199;
      v127 = sub_226C2FD40(v198, v199);
      v129 = *(v125 + 16);
      v130 = (v128 & 1) == 0;
      v131 = __OFADD__(v129, v130);
      v132 = v129 + v130;
      if (v131)
      {
        goto LABEL_48;
      }

      v133 = v128;
      if (*(v125 + 24) < v132)
      {
        break;
      }

      if (v84)
      {
        goto LABEL_36;
      }

      v101 = v127;
      sub_226C3788C();
      v127 = v101;
      if (v133)
      {
LABEL_37:
        v135 = v127;

        v189 = v202;
        sub_226AFD6E8(v190, *(v202 + 56) + *(v175 + 72) * v135);

        goto LABEL_18;
      }

LABEL_40:
      v136 = v202;
      *(v202 + 8 * (v127 >> 6) + 64) |= 1 << v127;
      v137 = (v136[6] + 16 * v127);
      *v137 = v126;
      v137[1] = v77;
      sub_226AFBBCC(v190, v136[7] + *(v175 + 72) * v127, _s7ChangesV11FulfillmentVMa);

      v138 = v136[2];
      v131 = __OFADD__(v138, 1);
      v139 = v138 + 1;
      if (v131)
      {
        goto LABEL_49;
      }

      v189 = v136;
      v136[2] = v139;
LABEL_18:
      v77 = v200;
      v93 = v184;
      v101 = v183;
      ++v103;
      if (v197 == v182)
      {
        goto LABEL_42;
      }
    }

    sub_226C30E60(v132, v84);
    v127 = sub_226C2FD40(v126, v77);
    if ((v133 & 1) != (v134 & 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
      result = sub_226D6F25C();
      __break(1u);
      return result;
    }

LABEL_36:
    if (v133)
    {
      goto LABEL_37;
    }

    goto LABEL_40;
  }

LABEL_42:

  v140 = v162;
  v141 = v166;
  sub_226AC40E8(v162, v166, &qword_27D7A6690, &qword_226D74720);
  v142 = v170;
  v143 = v167;
  v144 = v163;
  v145 = v171;
  (*(v170 + 16))(v167, v163, v171);
  v146 = v158;
  v147 = v141;
  v75 = v181;
  sub_226D20CB0(v179, 0, v147, v189, 1, v143, v158);

  (*(v142 + 8))(v144, v145);
  sub_226AC47B0(v140, &qword_27D7A6690, &qword_226D74720);
  sub_226AFD62C(v201);
  v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
  v99 = v168;
  *v168 = v180;
  sub_226AFBBCC(v146, v99 + v148, _s7ChangesVMa);
LABEL_43:
  swift_storeEnumTagMultiPayload();
  v149 = v165;
  sub_226AFBB10(v99, v165, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  v150 = *v149;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
  sub_226AFBC34(v149 + *(v151 + 48), _s7ChangesVMa);
  sub_226B20478(v150, v75);
  if (v93)
  {

    sub_226AFBC34(v99, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    return sub_226AFBC34(v77, type metadata accessor for ManagedExtractedOrderTracker);
  }

  else
  {
    sub_226CC3218(v159, v160, v161, v75);
    sub_226AFBC34(v77, type metadata accessor for ManagedExtractedOrderTracker);

    v152 = v157;
    sub_226AFBBCC(v99, v157, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
    swift_storeEnumTagMultiPayload();
    v153 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
    *(v152 + *(v153 + 20)) = 0;
    return (*(*(v153 - 8) + 56))(v152, 0, 1, v153);
  }
}

uint64_t sub_226AFA06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v21 = sub_226D6B73C();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D674FC();
  v10 = sub_226AE447C(v9);

  v24 = v10;
  v23[1] = sub_226D6746C();
  v11 = *(a2 + 16);
  if (v11)
  {
    v20[1] = a1;
    v12 = *(sub_226D67B3C() - 8);
    v13 = (v6 + 8);
    v14 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    while (1)
    {
      sub_226D6B72C();
      v16 = sub_226D6B71C();
      if (v3)
      {
        break;
      }

      v17 = v16;
      sub_226C25988(v23, v17);

      sub_226B04214(v18);

      (*v13)(v8, v21);
      v14 += v15;
      if (!--v11)
      {
        v10 = v24;
        goto LABEL_6;
      }
    }

    (*v13)(v8, v21);
  }

  else
  {
LABEL_6:
    sub_226B38644(v10);

    sub_226D6750C();
    return sub_226D6747C();
  }
}

uint64_t sub_226AFA2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = sub_226AFA930(a1);
  sub_226D69D0C();
  v12 = sub_226B11DCC(v11, a6);
  if (!v6)
  {
    if (v12)
    {
      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, qword_28105F6A8);

      v16 = sub_226D6E05C();
      v17 = sub_226D6E9EC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = v28;
        *v18 = 136315394;
        sub_226AE5084();
        v19 = sub_226D6E8AC();
        v27 = v17;
        v21 = sub_226AC4530(v19, v20, &v29);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2080;
        *(v18 + 14) = sub_226AC4530(a4, a5, &v29);
        _os_log_impl(&dword_226AB4000, v16, v27, "Merchant with sources %s is blocklisted, skipping automatic ingestion for order with number %s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v28, -1, -1);
        MEMORY[0x22AA8BEE0](v18, -1, -1);
      }

      sub_226CC3898(v11, a6);
    }

    else
    {

      if (a3)
      {
        v13 = 0;
        return v13 & 1;
      }

      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v22 = sub_226D6E07C();
      __swift_project_value_buffer(v22, qword_28105F6A8);

      v23 = sub_226D6E05C();
      v24 = sub_226D6E9CC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_226AC4530(a4, a5, &v29);
        _os_log_impl(&dword_226AB4000, v23, v24, "First email in the order with number %s has no merchant information. Skipping automatic ingestion.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }
    }

    v13 = 1;
    return v13 & 1;
  }

  return v13 & 1;
}

uint64_t sub_226AFA614@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67B1C();
  sub_226AFD8B4(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v7 = sub_226D6E34C();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7 & 1;
  return result;
}

uint64_t sub_226AFA750(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_226AC40E8(v1, &v11 - v8, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_226AFA930(uint64_t a1)
{
  v87 = sub_226D67A5C();
  v2 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D67A8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_226D67AAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = v72 - v13;
  v14 = sub_226D67B3C();
  v17.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v18 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a1 + 16);
  if (v77)
  {
    v19 = 0;
    v21 = *(v16 + 16);
    v20 = v16 + 16;
    v76 = v21;
    v75 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v93 = v9 + 16;
    v92 = v9 + 32;
    v91 = (v5 + 8);
    v90 = (v9 + 8);
    v85 = (v2 + 8);
    v72[0] = v20 - 8;
    v74 = *(v20 + 56);
    v102 = MEMORY[0x277D84FA0];
    v22 = v83;
    v82 = v4;
    v81 = v7;
    v80 = v8;
    v79 = v9;
    v78 = v11;
    v73 = v14;
    v72[1] = v20;
    v88 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v84 = v19 + 1;
      v76(v18, v75 + v74 * v19, v14, v17);
      v23 = v18;
      v24 = sub_226D67ABC();
      v25 = 0;
      v27 = v24 + 56;
      v26 = *(v24 + 56);
      v96 = v24;
      v28 = 1 << *(v24 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & v26;
      v31 = (v28 + 63) >> 6;
      v95 = v24 + 56;
      v94 = v31;
      v32 = v102;
      while (1)
      {
        v101 = v32 + 56;
        v102 = v32;
        if (!v30)
        {
          goto LABEL_11;
        }

LABEL_15:
        while (1)
        {
          v97 = (v30 - 1) & v30;
          (*(v9 + 16))(v22, *(v96 + 48) + *(v9 + 72) * (__clz(__rbit64(v30)) | (v25 << 6)), v8);
          (*(v9 + 32))(v11, v22, v8);
          sub_226D67A9C();
          v23 = v7;
          v34 = sub_226D67A7C();
          (*v91)(v7, v4);
          if (v34)
          {
            break;
          }

          (*v90)(v11, v8);
          v27 = v95;
          v31 = v94;
          v30 = v97;
          if (!v97)
          {
            goto LABEL_11;
          }
        }

        v89 = v25;
        v35 = v86;
        sub_226D67A6C();
        v18 = sub_226D67A4C();
        v23 = v36;
        (*v85)(v35, v87);
        if (!v23)
        {
          (*v90)(v11, v8);
          goto LABEL_36;
        }

        v22 = v23;
        v37 = sub_226D67AEC();
        v39 = v38;
        v40 = v102;
        sub_226D6F2FC();
        v23 = &v106;
        MEMORY[0x22AA8B3B0](1);
        v104 = v39;
        sub_226D6E42C();
        v103 = v22;
        sub_226D6E42C();
        v41 = sub_226D6F35C();
        v99 = ~(-1 << *(v40 + 32));
        v100 = v18;
        v42 = v41 & v99;
        if ((*(v101 + (((v41 & v99) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v99)))
        {
          break;
        }

LABEL_38:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v40;
        v52 = *(v40 + 16);
        if (*(v40 + 24) <= v52)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_226C28280(v52 + 1);
          }

          else
          {
            sub_226C2DE40(v52 + 1);
          }

          v53 = v105;
          sub_226D6F2FC();
          v23 = &v106;
          MEMORY[0x22AA8B3B0](1);
          sub_226D6E42C();
          sub_226D6E42C();
          v54 = sub_226D6F35C();
          v100 = (v53 + 56);
          v101 = v53;
          v55 = -1 << *(v53 + 32);
          v42 = v54 & ~v55;
          if ((*(v53 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v99 = ~v55;
            v56 = v104;
            while (1)
            {
              v57 = *(v101 + 48) + 56 * v42;
              v9 = *v57;
              v8 = *(v57 + 8);
              v59 = *(v57 + 16);
              v58 = *(v57 + 24);
              v22 = *(v57 + 32);
              v60 = *(v57 + 40);
              v61 = *(v57 + 48);
              v106 = *v57;
              v107 = v8;
              v108 = v59;
              v109 = v58;
              v110 = v22;
              v111 = v60;
              v102 = v60;
              v112 = v61;
              v113 = v37;
              v114 = v56;
              v23 = v103;
              v115 = v18;
              v116 = v103;
              v117 = 0;
              v118 = 0;
              v119 = 1;
              if (v61 == 1 && (v9 == v37 ? (v62 = v8 == v56) : (v62 = 0), v62 || (v63 = sub_226D6F21C(), v23 = v103, (v63 & 1) != 0)))
              {
                if (v59 == v18 && v58 == v23)
                {
                  goto LABEL_67;
                }

                v65 = sub_226D6F21C();

                sub_226AFD74C(v9, v8, v59, v58, v22, v102, 1u);
                sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
                if (v65)
                {
                  goto LABEL_68;
                }
              }

              else
              {

                sub_226AFD74C(v9, v8, v59, v58, v22, v102, v61);
                sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
              }

              v42 = (v42 + 1) & v99;
              v56 = v104;
              if (((*&v100[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) == 0)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = &v105;
          sub_226C2CD40();
        }

        v56 = v104;
LABEL_61:
        v32 = v105;
        *(v105 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v42;
        v66 = *(v32 + 48) + 56 * v42;
        *v66 = v37;
        *(v66 + 8) = v56;
        v67 = v103;
        *(v66 + 16) = v18;
        *(v66 + 24) = v67;
        *(v66 + 32) = 0;
        *(v66 + 40) = 0;
        *(v66 + 48) = 1;
        v68 = *(v32 + 16);
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_66;
        }

        *(v32 + 16) = v70;
        v11 = v78;
        v8 = v80;
        (*v90)(v78, v80);
        v4 = v82;
        v7 = v81;
        v9 = v79;
        v22 = v83;
        v27 = v95;
        v31 = v94;
        v30 = v97;
        v25 = v89;
      }

      while (1)
      {
        v43 = *(v40 + 48) + 56 * v42;
        v44 = *v43;
        v8 = *(v43 + 8);
        v9 = *(v43 + 16);
        v23 = *(v43 + 24);
        v45 = *(v43 + 32);
        v22 = *(v43 + 40);
        v46 = *(v43 + 48);
        v106 = *v43;
        v107 = v8;
        v108 = v9;
        v109 = v23;
        v110 = v45;
        v111 = v22;
        v112 = v46;
        v47 = v103;
        v113 = v37;
        v114 = v104;
        v115 = v18;
        v116 = v103;
        v117 = 0;
        v118 = 0;
        v119 = 1;
        if (v46 != 1 || (v44 == v37 ? (v48 = v8 == v104) : (v48 = 0), !v48 && (v49 = sub_226D6F21C(), v47 = v103, (v49 & 1) == 0)))
        {

          sub_226AFD74C(v44, v8, v9, v23, v45, v22, v46);
          sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
          goto LABEL_20;
        }

        if (v9 == v18 && v23 == v47)
        {
          break;
        }

        v18 = v47;
        v98 = sub_226D6F21C();

        sub_226AFD74C(v44, v8, v9, v23, v45, v22, 1u);
        sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
        if (v98)
        {

          goto LABEL_35;
        }

LABEL_20:
        v18 = v100;
        v42 = (v42 + 1) & v99;
        v40 = v102;
        if (((*(v101 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_35:
      v11 = v78;
      v8 = v80;
      (*v90)(v78, v80);
      v4 = v82;
      v7 = v81;
      v9 = v79;
      v22 = v83;
LABEL_36:
      v27 = v95;
      v31 = v94;
      v30 = v97;
      v25 = v89;
      if (v97)
      {
        goto LABEL_15;
      }

LABEL_11:
      while (2)
      {
        v33 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:

          sub_226AFD74C(v9, v8, v18, v23, v22, v102, 1u);
          sub_226AC47B0(&v106, &unk_27D7A9640, &qword_226D7A5E0);
LABEL_68:
          result = sub_226D6F24C();
          __break(1u);
          return result;
        }

        if (v33 < v31)
        {
          v30 = *(v27 + 8 * v33);
          ++v25;
          if (!v30)
          {
            continue;
          }

          v25 = v33;
          goto LABEL_15;
        }

        break;
      }

      v18 = v88;
      v14 = v73;
      (*v72[0])(v88, v73);
      v19 = v84;
      if (v84 == v77)
      {
        return v102;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226AFB524(uint64_t a1)
{
  v35 = type metadata accessor for ManagedExtractedOrderTracker(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s21NotificationSchedulerVMa(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  MEMORY[0x28223BE20](v38);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6630, &unk_226D71850);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AFBB10(a1, v11, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  v22 = *(v19 + 48);
  v23 = 1;
  if (v22(v11, 1, v18) != 1)
  {
    sub_226AFBBCC(v11, v14, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    v23 = 0;
  }

  (*(v19 + 56))(v14, v23, 1, v18);
  sub_226AFD80C(v14, v17, &qword_27D7A6630, &unk_226D71850);
  if (v22(v17, 1, v18) == 1)
  {
    return sub_226AC47B0(v17, &qword_27D7A6630, &unk_226D71850);
  }

  sub_226AFBBCC(v17, v21, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
  sub_226AFBB10(v21, v8, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v8;
    v26 = v8[1];
    sub_226AC40E8(v39 + 8, v41, &unk_27D7A7660, &unk_226D7B420);
    sub_226CCAC20(v25, v26);

    sub_226AFBB78(v41);
  }

  else
  {
    v27 = v32;
    sub_226AFBBCC(v8, v32, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    v28 = v39;
    sub_226AE532C(v39 + 48, v41);
    sub_226AE532C(v28 + 88, v40);
    v29 = v36;
    sub_226B836E0(v41, v40);
    v30 = v37;
    sub_226AC40E8(v28 + 8, v37, &unk_27D7A7660, &unk_226D7B420);
    v31 = *(v35 + 20);
    sub_226AFBB10(v29, v30 + v31, _s21NotificationSchedulerVMa);
    (*(v33 + 56))(v30 + v31, 0, 1, v34);
    sub_226B4E744(v27);
    sub_226AFBC34(v30, type metadata accessor for ManagedExtractedOrderTracker);
    sub_226AFBC34(v29, _s21NotificationSchedulerVMa);
    sub_226AFBC34(v27, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
  }

  return sub_226AFBC34(v21, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
}

uint64_t sub_226AFBB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AFBBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226AFBC34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226AFBC94(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F6A8);

  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_226AC4530(a1, a2, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_226AC4530(a3, a4, &v17);
    _os_log_impl(&dword_226AB4000, v11, v12, "ExtractedOrder trackedOrderIdentifier changed from %s to %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  if (*(v5 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD000000000000019;
    *(inited + 40) = 0x8000000226D7EEB0;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    *(inited + 64) = 0xD000000000000019;
    *(inited + 72) = 0x8000000226D7EED0;
    *(inited + 80) = a3;
    *(inited + 88) = a4;

    v16 = sub_226B224FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
    swift_arrayDestroy();
    sub_226BA2954(v16);
  }
}

uint64_t sub_226AFBF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6768, &unk_226D71A10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_226AFBB10(a1, &v24 - v12, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  sub_226AFBB10(a2, &v13[v15], type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
LABEL_3:
      sub_226AFBC34(v13, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
      return 1;
    }

    goto LABEL_6;
  }

  sub_226AFBB10(v13, v10, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
  if (v16(&v13[v15], 1, v4) != 1)
  {
    sub_226AFBBCC(&v13[v15], v7, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    if (sub_226AFC2F4(v10, v7))
    {
      v18 = *(v4 + 20);
      v19 = *&v10[v18];
      v20 = *&v7[v18];
      if (v19)
      {
        if (v20)
        {
          sub_226D6751C();
          v21 = v20;
          v22 = v19;
          v23 = sub_226D6EC3C();

          if (v23)
          {
            goto LABEL_11;
          }
        }
      }

      else if (!v20)
      {
LABEL_11:
        sub_226AFBC34(v7, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
        sub_226AFBC34(v10, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
        goto LABEL_3;
      }
    }

    sub_226AFBC34(v7, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    sub_226AFBC34(v10, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
    sub_226AFBC34(v13, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
    return 0;
  }

  sub_226AFBC34(v10, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult);
LABEL_6:
  sub_226AC47B0(v13, &qword_27D7A6768, &unk_226D71A10);
  return 0;
}

uint64_t sub_226AFC260(uint64_t a1, uint64_t a2)
{
  if (sub_226AFC2F4(a1, a2))
  {
    v4 = *(type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_226D6751C();
        v7 = v6;
        v8 = v5;
        v9 = sub_226D6EC3C();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_226AFC2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6760, &qword_226D71A08);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v17 = (&v24 + *(v16 + 56) - v14);
  sub_226AFBB10(a1, &v24 - v14, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  sub_226AFBB10(a2, v17, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_226AFBB10(v15, v12, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_226AFBBCC(v17, v6, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      v22 = sub_226B4EFD8(v12, v6);
      sub_226AFBC34(v6, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      sub_226AFBC34(v12, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
      sub_226AFBC34(v15, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
      return v22 & 1;
    }

    sub_226AFBC34(v12, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
    goto LABEL_12;
  }

  sub_226AFBB10(v15, v9, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
  v19 = *v9;
  v18 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_226AC47B0(v15, &qword_27D7A6760, &qword_226D71A08);
    goto LABEL_13;
  }

  if (v19 == *v17 && v18 == v17[1])
  {

    goto LABEL_16;
  }

  v21 = sub_226D6F21C();

  if (v21)
  {
LABEL_16:
    sub_226AFBC34(v15, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
    v22 = 1;
    return v22 & 1;
  }

  sub_226AFBC34(v15, type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult);
LABEL_13:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_226AFC648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = a3;
  v132 = a2;
  v134 = a1;
  v128 = sub_226D6D4AC();
  v126 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v124 = &v116 - v6;
  v7 = sub_226D67B3C();
  v135 = *(v7 - 8);
  v136 = v7;
  MEMORY[0x28223BE20](v7);
  v130 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v133 = &v116 - v10;
  MEMORY[0x28223BE20](v11);
  v129 = &v116 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v13 - 8);
  v125 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v131 = &v116 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v116 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  MEMORY[0x28223BE20](v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v116 - v24);
  v26 = v3[9];
  v27 = v3[10];
  v137 = v3;
  v28 = __swift_project_boxed_opaque_existential_1(v3 + 6, v26);
  v140[3] = v26;
  v140[4] = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v140);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  *v25 = sub_226B5A79C(v25 + *(v20 + 48)) & 1;
  sub_226AC40E8(v25, v22, &qword_27D7A66D0, &unk_226D75B80);
  LODWORD(v26) = *v22;
  sub_226AC47B0(&v22[*(v20 + 48)], &qword_27D7A8BE0, &unk_226D718F0);
  if (v26 != 1)
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v60 = sub_226D6E07C();
    __swift_project_value_buffer(v60, qword_28105F6A8);
    v61 = v138;

    v62 = sub_226D6E05C();
    v63 = sub_226D6E9EC();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v141 = v65;
      *v64 = 136315138;
      *(v64 + 4) = sub_226AC4530(v132, v61, &v141);
      _os_log_impl(&dword_226AB4000, v62, v63, "Automatic order ingestion is disabled, skipping order with number %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
      MEMORY[0x22AA8BEE0](v64, -1, -1);
    }

    goto LABEL_15;
  }

  sub_226AC40E8(v25, v22, &qword_27D7A66D0, &unk_226D75B80);
  v30 = sub_226AFD80C(&v22[*(v20 + 48)], v19, &qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v30);
  v31 = v134;
  *(&v116 - 2) = v134;
  v32 = v139;
  v33 = sub_226AFA750(sub_226AFD874);
  v139 = v32;
  v34 = v19;
  v35 = v135;
  v36 = v31;
  if (v33 != 2 && (v33 & 1) == 0)
  {
    v37 = v138;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v38 = sub_226D6E07C();
    v39 = __swift_project_value_buffer(v38, qword_28105F6A8);
    v40 = v129;
    v41 = v136;
    v35[2](v129, v36, v136);
    v42 = v131;
    sub_226AC40E8(v34, v131, &qword_27D7A8BE0, &unk_226D718F0);
    v122 = v39;
    v43 = sub_226D6E05C();
    v121 = sub_226D6E9CC();
    if (os_log_type_enabled(v43, v121))
    {
      v120 = v43;
      v123 = v34;
      v44 = swift_slowAlloc();
      v117 = v44;
      v119 = swift_slowAlloc();
      v141 = v119;
      *v44 = 136315394;
      v45 = v124;
      sub_226D67B1C();
      v46 = sub_226AFD8B4(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v47 = v128;
      v118 = v46;
      v48 = sub_226D6F1CC();
      v50 = v49;
      v51 = v126;
      v124 = *(v126 + 8);
      (v124)(v45, v47);
      v52 = v35;
      v53 = v51;
      v54 = v40;
      v55 = v117;
      (v52[1])(v54, v41);
      v56 = sub_226AC4530(v48, v50, &v141);

      *(v55 + 1) = v56;
      *(v55 + 6) = 2080;
      v57 = v125;
      sub_226AC40E8(v131, v125, &qword_27D7A8BE0, &unk_226D718F0);
      v58 = *(v53 + 48);
      if (v58(v57, 1, v47) == 1)
      {
        v59 = v127;
        sub_226D6D39C();
        if (v58(v57, 1, v47) != 1)
        {
          sub_226AC47B0(v57, &qword_27D7A8BE0, &unk_226D718F0);
        }
      }

      else
      {
        v59 = v127;
        (*(v53 + 32))(v127, v57, v47);
      }

      v67 = sub_226D6F1CC();
      v69 = v68;
      (v124)(v59, v47);
      sub_226AC47B0(v131, &qword_27D7A8BE0, &unk_226D718F0);
      v70 = sub_226AC4530(v67, v69, &v141);

      *(v55 + 14) = v70;
      v71 = v120;
      _os_log_impl(&dword_226AB4000, v120, v121, "Order email sent date: %s is before user gave consent to automatically track orders: %s.", v55, 0x16u);
      v72 = v119;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v72, -1, -1);
      MEMORY[0x22AA8BEE0](v55, -1, -1);

      v36 = v134;
      v35 = v135;
      v34 = v123;
      v37 = v138;
    }

    else
    {

      sub_226AC47B0(v42, &qword_27D7A8BE0, &unk_226D718F0);
      (v35[1])(v40, v41);
    }

    type metadata accessor for ManagedExtractedOrderImporter(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    sub_226D66FEC();
    if ((v141 & 1) == 0)
    {

      v112 = sub_226D6E05C();
      v113 = sub_226D6E9CC();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v141 = v115;
        *v114 = 136315138;
        *(v114 + 4) = sub_226AC4530(v132, v37, &v141);
        _os_log_impl(&dword_226AB4000, v112, v113, "Skipping automatic ingestion for order with number %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x22AA8BEE0](v115, -1, -1);
        MEMORY[0x22AA8BEE0](v114, -1, -1);
      }

      sub_226AC47B0(v34, &qword_27D7A8BE0, &unk_226D718F0);
      goto LABEL_15;
    }

    v73 = sub_226D6E05C();
    v74 = sub_226D6E9CC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_226AB4000, v73, v74, "Continuing automatic ingestion evaluation due to email sent date override flag", v75, 2u);
      MEMORY[0x22AA8BEE0](v75, -1, -1);
    }
  }

  v76 = v137[25];
  v77 = v137[26];
  __swift_project_boxed_opaque_existential_1(v137 + 22, v76);
  v78 = (*(v77 + 16))(v36, v76, v77);
  v79 = v133;
  if ((v78 & 1) == 0)
  {
    v123 = v34;
    v94 = v136;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v95 = sub_226D6E07C();
    __swift_project_value_buffer(v95, qword_28105F6A8);
    v35[2](v79, v36, v94);
    v96 = sub_226D6E05C();
    v97 = sub_226D6E9CC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = v79;
      v100 = swift_slowAlloc();
      v141 = v100;
      *v98 = 136315138;
      v101 = sub_226D67B2C();
      v135 = v25;
      v103 = v102;
      (v35[1])(v99, v136);
      v104 = sub_226AC4530(v101, v103, &v141);
      v25 = v135;

      *(v98 + 4) = v104;
      _os_log_impl(&dword_226AB4000, v96, v97, "Email with messageID: %s is not authenticated.", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x22AA8BEE0](v100, -1, -1);
      MEMORY[0x22AA8BEE0](v98, -1, -1);
    }

    else
    {

      (v35[1])(v79, v94);
    }

    v106 = v138;
    type metadata accessor for ManagedExtractedOrderImporter(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
    sub_226D66FEC();
    if (v141)
    {
      v83 = sub_226D6E05C();
      v107 = sub_226D6E9CC();
      if (!os_log_type_enabled(v83, v107))
      {
LABEL_38:

        v105 = v123;
        goto LABEL_39;
      }

      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_226AB4000, v83, v107, "Continuing automatic ingestion evaluation due to authentication override flag", v86, 2u);
LABEL_37:
      MEMORY[0x22AA8BEE0](v86, -1, -1);
      goto LABEL_38;
    }

    v108 = sub_226D6E05C();
    v109 = sub_226D6E9CC();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v141 = v111;
      *v110 = 136315138;
      *(v110 + 4) = sub_226AC4530(v132, v106, &v141);
      _os_log_impl(&dword_226AB4000, v108, v109, "Skipping automatic ingestion for order with number %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v111);
      MEMORY[0x22AA8BEE0](v111, -1, -1);
      MEMORY[0x22AA8BEE0](v110, -1, -1);
    }

    sub_226AC47B0(v123, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_15:
    sub_226AC47B0(v25, &qword_27D7A66D0, &unk_226D75B80);
    sub_226AFD7B8(v140);
    return 0;
  }

  v80 = v136;
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v81 = sub_226D6E07C();
  __swift_project_value_buffer(v81, qword_28105F6A8);
  v82 = v130;
  v35[2](v130, v36, v80);
  v83 = sub_226D6E05C();
  v84 = sub_226D6E9EC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = v82;
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v123 = v34;
    v88 = v87;
    v141 = v87;
    *v86 = 136315138;
    v89 = sub_226D67B2C();
    v90 = v80;
    v92 = v91;
    (v35[1])(v85, v90);
    v93 = sub_226AC4530(v89, v92, &v141);

    *(v86 + 4) = v93;
    _os_log_impl(&dword_226AB4000, v83, v84, "Email with messageID: %s is authenticated. Continue automatic ingestion evaluation.", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v88);
    MEMORY[0x22AA8BEE0](v88, -1, -1);
    goto LABEL_37;
  }

  (v35[1])(v82, v80);
  v105 = v34;
LABEL_39:
  sub_226AC47B0(v105, &qword_27D7A8BE0, &unk_226D718F0);
  sub_226AC47B0(v25, &qword_27D7A66D0, &unk_226D75B80);
  sub_226AFD7B8(v140);
  return 1;
}

uint64_t sub_226AFD680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_226AFD6E8(uint64_t a1, uint64_t a2)
{
  v4 = _s7ChangesV11FulfillmentVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_226AFD74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a2;
  if (a7 >= 2u)
  {
    if (a7 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_226AFD80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_226AFD8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226AFD924(uint64_t a1)
{
  type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult.ExtractedOrderResult(319);
  if (v1 <= 0x3F)
  {
    sub_226AFDCF0(319, &qword_27D7A66F0, MEMORY[0x277CC6C20]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226AFDA14(uint64_t a1)
{
  result = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_226AFDA88();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226AFDA88()
{
  result = qword_27D7A6708;
  if (!qword_27D7A6708)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7A6708);
  }

  return result;
}

uint64_t sub_226AFDAE0(uint64_t a1)
{
  v1 = type metadata accessor for ManagedExtractedOrderImporter.EventProcessedResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_226AFDB60(uint64_t a1)
{
  type metadata accessor for ExtractedOrderUserEventDonator();
  if (v1 <= 0x3F)
  {
    sub_226AFDDA0(319, &qword_27D7A6730, &type metadata for TrackedOrderBiomeStreamDonator, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_226AFDD44(319, &qword_27D7A6738, MEMORY[0x277CC7F60]);
      if (v3 <= 0x3F)
      {
        sub_226AFDD44(319, &qword_27D7A6740, &protocol descriptor for ExtractedOrderConfigurationProviding);
        if (v4 <= 0x3F)
        {
          sub_226AFDCF0(319, &qword_27D7A6748, type metadata accessor for OrdersAutoBugCaptureReporter);
          if (v5 <= 0x3F)
          {
            sub_226AFDD44(319, &qword_27D7A6750, &protocol descriptor for FoundInMailItemDocumentFinderIndex);
            if (v6 <= 0x3F)
            {
              sub_226AFDDA0(319, &qword_27D7A6758, MEMORY[0x277D839B0], MEMORY[0x277CC6A60]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226AFDCF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_226D6EC9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226AFDD44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_226AFDDA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_226AFDE10(uint64_t a1)
{
  sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    sub_226AFDF34();
    if (v2 <= 0x3F)
    {
      sub_226AFDF64();
      if (v3 <= 0x3F)
      {
        sub_226AFE088(319, &qword_28105F540, sub_226AFDF94);
        if (v4 <= 0x3F)
        {
          sub_226AFDFEC(319);
          if (v5 <= 0x3F)
          {
            sub_226AFE058();
            if (v6 <= 0x3F)
            {
              sub_226AFE088(319, &qword_281062B68, MEMORY[0x277CC95F0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_226AFDF34()
{
  result = qword_28105F550;
  if (!qword_28105F550)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F550);
  }

  return result;
}

uint64_t sub_226AFDF64()
{
  result = qword_28105F570;
  if (!qword_28105F570)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F570);
  }

  return result;
}

void sub_226AFDF94(uint64_t a1)
{
  if (!qword_28105F538)
  {
    sub_226D6B9BC();
    v1 = sub_226D6E6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28105F538);
    }
  }
}

void sub_226AFDFEC(uint64_t a1)
{
  if (!qword_281062B98)
  {
    sub_226D6B9BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281062B98);
    }
  }
}

uint64_t sub_226AFE058()
{
  result = qword_28105F568;
  if (!qword_28105F568)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_28105F568);
  }

  return result;
}

void sub_226AFE088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226AFE0F4(uint64_t a1)
{
  result = sub_226D6B9BC();
  if (v2 <= 0x3F)
  {
    result = sub_226AFDF34();
    if (v3 <= 0x3F)
    {
      result = sub_226AFDF64();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_226AFE17C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_226B0186C(&qword_27D7A6780, type metadata accessor for BankConnectNotificationEventsUnregisterTask, &unk_226D72430);
  v5 = *(v4 + 16);
  v6 = type metadata accessor for BankConnectNotificationEventsUnregisterTask(0);
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_226AFE320;

  return v9(a1, v6, v4);
}

uint64_t sub_226AFE320()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFE468, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFE468()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226B1CEC8(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226AFE5C0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_226B031B4;
  }

  else
  {
    v2 = sub_226B031BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226AFE6D4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226AFE7B0;

  return sub_226B5C2D0(a1);
}

uint64_t sub_226AFE7B0()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFE8F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFE8F8()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226B5CD3C(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226AFEA50(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226AFEB2C;

  return sub_226B9F6C0(a1);
}

uint64_t sub_226AFEB2C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFEC74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFEC74()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFEDCC;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226BA13EC(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226AFEDCC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_226AFEF70;
  }

  else
  {
    v2 = sub_226AFEEE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226AFEEE0()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226AFEF70()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226AFF000(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226AFF0DC;

  return sub_226BD93DC(a1);
}

uint64_t sub_226AFF0DC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF224, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFF224()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226BDA0A8(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226AFF37C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226AFF458;

  return sub_226BF2990(a1);
}

uint64_t sub_226AFF458()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF5A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFF5A0()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = sub_226B0186C(&qword_27D7A6798, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76EE0);
    v6 = *(v5 + 24);
    Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
    v13 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_226AFE5C0;
    v9 = *(v0 + 48);
    v10 = *(v0 + 24);

    return v13(v9, v10, Task, v5);
  }

  else
  {

    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_226AFF7B8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226AFF894;

  return sub_226C64A54(a1);
}

uint64_t sub_226AFF894()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226AFF9DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226AFF9DC()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226C66C4C(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226AFFB34(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_226D6764C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226AFFC30, 0, 0);
}

uint64_t sub_226AFFC30()
{
  v1 = sub_226D6E82C();
  v2 = v0[10];
  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[3];
    v8 = v0[4];
    v9 = *(type metadata accessor for BankConnectBackgroundRefreshTask(0) + 28);
    v10 = sub_226D6D52C();
    (*(*(v10 - 8) + 16))(v2, v8 + v9, v10);
    (*(v6 + 104))(v2, *MEMORY[0x277CC6D30], v5);
    v11 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_226AFFDC0;
    v13 = v0[10];
    v14 = v0[4];

    return sub_226D01590(v11, v13, v14);
  }
}

uint64_t sub_226AFFDC0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[12] = v5;
  *v5 = v3;
  v5[1] = sub_226AFFF3C;
  v6 = v1[10];
  v7 = v1[4];

  return sub_226D02088(v4, v6, v7);
}

uint64_t sub_226AFFF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v3;
  v5[1] = sub_226B000B8;
  v6 = v1[10];
  v7 = v1[4];

  return sub_226D0305C(v4, v6, v7);
}

uint64_t sub_226B000B8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v5 = swift_task_alloc();
  v1[14] = v5;
  *v5 = v3;
  v5[1] = sub_226B00234;
  v6 = v1[10];
  v7 = v1[4];

  return sub_226D03AA0(v4, v6, v7);
}

uint64_t sub_226B00234()
{

  return MEMORY[0x2822009F8](sub_226B00330, 0, 0);
}

uint64_t sub_226B00330()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = sub_226D676AC();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226B0058C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_226B0073C;
  }

  else
  {
    v2 = sub_226B006A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B006A0()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B0073C()
{
  sub_226B03154(*(v0 + 48), MEMORY[0x277CC6528]);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B007E0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226B008BC;

  return sub_226D5C6F0(a1);
}

uint64_t sub_226B008BC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B00A04, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226B00A04()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226D5D330(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226B00B5C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_226D66DFC();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_226B00C38;

  return sub_226D2ED88(a1);
}

uint64_t sub_226B00C38()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B00D80, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226B00D80()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);

    sub_226B01960(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_226AFE5C0;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);

    return sub_226D2FEC0(v6, v7);
  }

  else
  {

    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_226B00ED8(uint64_t a1)
{
  v27[1] = a1;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B9BC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226B01F40(v1, v15, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v7 + 32))(v12, v15, v6);
      v16 = 1;
      goto LABEL_12;
    case 2u:
      (*(v7 + 32))(v12, v15, v6);
      v16 = 2;
      goto LABEL_12;
    case 3u:
      v17 = 3;
      goto LABEL_20;
    case 4u:
      v17 = 4;
      goto LABEL_20;
    case 5u:
      (*(v7 + 32))(v12, v15, v6);
      v16 = 5;
      goto LABEL_12;
    case 6u:
      v19 = *v15;
      MEMORY[0x22AA8B3B0](6);
      MEMORY[0x22AA8B3B0](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        v23 = *(v7 + 16);
        v22 = v7 + 16;
        v21 = v23;
        v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
        v27[0] = v19;
        v25 = v19 + v24;
        v26 = *(v22 + 56);
        do
        {
          v21(v9, v25, v6);
          sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
          sub_226D6E30C();
          (*(v22 - 8))(v9, v6);
          v25 += v26;
          --v20;
        }

        while (v20);
      }

      goto LABEL_21;
    case 7u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670);
      (*(v7 + 32))(v12, v15, v6);
      MEMORY[0x22AA8B3B0](7);
      sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
      sub_226D6E30C();
      sub_226D6E42C();

      goto LABEL_13;
    case 8u:
      v17 = 8;
      goto LABEL_20;
    case 9u:
      v17 = 9;
      goto LABEL_20;
    case 0xAu:
      (*(v3 + 32))(v5, v15, v2);
      MEMORY[0x22AA8B3B0](10);
      sub_226B0186C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_226D6E30C();
      return (*(v3 + 8))(v5, v2);
    case 0xBu:
      v17 = 12;
LABEL_20:
      MEMORY[0x22AA8B3B0](v17);
      sub_226D6E42C();
LABEL_21:

      break;
    case 0xCu:
      result = MEMORY[0x22AA8B3B0](11);
      break;
    default:
      (*(v7 + 32))(v12, v15, v6);
      v16 = 0;
LABEL_12:
      MEMORY[0x22AA8B3B0](v16);
      sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
      sub_226D6E30C();
LABEL_13:
      result = (*(v7 + 8))(v12, v6);
      break;
  }

  return result;
}

uint64_t sub_226B01458(uint64_t a1)
{
  v2 = sub_226D6B9BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B01F40(v1, v8, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v11 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = 9;
    }

    return MEMORY[0x22AA8B3B0](v11);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 2;
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v10 = 3;
LABEL_15:
      MEMORY[0x22AA8B3B0](v10);
      sub_226D6E42C();
    }

    v11 = 4;
    return MEMORY[0x22AA8B3B0](v11);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 1;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v12 = 0;
  }

  MEMORY[0x22AA8B3B0](v12);
  sub_226B0186C(&qword_27D7A6790, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
  sub_226D6E30C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_226B01730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_226D6F2FC();
  a3(v5);
  return sub_226D6F35C();
}

uint64_t sub_226B01794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_226D6F2FC();
  a4(v6);
  return sub_226D6F35C();
}

uint64_t sub_226B0186C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B018B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFE17C(a1);
}

uint64_t sub_226B01960(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D66DFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B019C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFE6D4(a1);
}

uint64_t sub_226B01A70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFEA50(a1);
}

uint64_t sub_226B01B1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226AFF000(a1);
}

uint64_t sub_226B01BC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFF37C(a1);
}

uint64_t sub_226B01C74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFF7B8(a1);
}

uint64_t sub_226B01D20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226AFFB34(a1);
}

uint64_t sub_226B01DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B00B5C(a1);
}

uint64_t sub_226B01E78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226B007E0(a1);
}

uint64_t sub_226B01F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226B01FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6B9BC();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - v7;
  v8 = type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v44 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B0, &qword_226D72480);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  v24 = (&v44 + *(v23 + 56) - v21);
  sub_226B01F40(a1, &v44 - v21, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  sub_226B01F40(a2, v24, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_41;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_41;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_41;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 9)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_226B01F40(v22, v16, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v46 + 8))(v16, v47);
        goto LABEL_43;
      }

      v34 = v45;
      v33 = v46;
      v35 = v24;
      v36 = v47;
      (*(v46 + 32))(v45, v35, v47);
      v37 = MEMORY[0x22AA87A30](v16, v34);
      v38 = *(v33 + 8);
      v38(v34, v36);
      v39 = v16;
    }

    else
    {
      sub_226B01F40(v22, v19, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v46 + 8))(v19, v47);
        goto LABEL_43;
      }

      v41 = v46;
      v42 = v44;
      v43 = v24;
      v36 = v47;
      (*(v46 + 32))(v44, v43, v47);
      v37 = MEMORY[0x22AA87A30](v19, v42);
      v38 = *(v41 + 8);
      v38(v42, v36);
      v39 = v19;
    }

    v38(v39, v36);
    sub_226B03154(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
    return v37 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_226B01F40(v22, v10, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
      v27 = *v10;
      v26 = v10[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v27 != *v24 || v26 != v24[1])
        {
          goto LABEL_27;
        }

LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_41;
    }

LABEL_43:
    sub_226AC47B0(v22, &qword_27D7A67B0, &qword_226D72480);
    goto LABEL_44;
  }

  sub_226B01F40(v22, v13, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  v30 = *v13;
  v29 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_31:

    goto LABEL_43;
  }

  if (v30 == *v24 && v29 == v24[1])
  {
    goto LABEL_40;
  }

LABEL_27:
  v32 = sub_226D6F21C();

  if ((v32 & 1) == 0)
  {
    sub_226B03154(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
LABEL_44:
    v37 = 0;
    return v37 & 1;
  }

LABEL_41:
  sub_226B03154(v22, type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_226B02558(uint64_t a1, void *a2)
{
  v125 = a1;
  v126 = a2;
  v2 = sub_226D6D52C();
  v121 = *(v2 - 8);
  v122 = v2;
  MEMORY[0x28223BE20](v2);
  v113 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_226D6B9BC();
  v5 = *(v4 - 8);
  v123 = v4;
  v124 = v5;
  MEMORY[0x28223BE20](v4);
  v114 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = &v109 - v8;
  MEMORY[0x28223BE20](v9);
  v111 = &v109 - v10;
  MEMORY[0x28223BE20](v11);
  v110 = &v109 - v12;
  MEMORY[0x28223BE20](v13);
  v109 = &v109 - v14;
  v15 = type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  MEMORY[0x28223BE20](v15);
  v118 = (&v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v120 = &v109 - v18;
  MEMORY[0x28223BE20](v19);
  v116 = (&v109 - v20);
  MEMORY[0x28223BE20](v21);
  v115 = (&v109 - v22);
  MEMORY[0x28223BE20](v23);
  v119 = &v109 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v109 - v26);
  MEMORY[0x28223BE20](v28);
  v117 = &v109 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = (&v109 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = (&v109 - v34);
  MEMORY[0x28223BE20](v36);
  v38 = &v109 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v109 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v109 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A8, &unk_226D71CF0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v109 - v46;
  v49 = &v109 + *(v48 + 56) - v46;
  sub_226B01F40(v125, &v109 - v46, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  v50 = v126;
  v126 = v49;
  sub_226B01F40(v50, v49, type metadata accessor for BankConnectWebServiceTaskIdentifier);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_226B01F40(v47, v41, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v80 = v126;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = v123;
        v81 = v124;
        v83 = v110;
        (*(v124 + 32))(v110, v80, v123);
        v61 = MEMORY[0x22AA87A30](v41, v83);
        v62 = *(v81 + 8);
        v62(v83, v82);
        v63 = v41;
        v84 = v82;
        goto LABEL_30;
      }

      (*(v124 + 8))(v41, v123);
      goto LABEL_44;
    case 2u:
      sub_226B01F40(v47, v38, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v57 = v126;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v124 + 8))(v38, v123);
        goto LABEL_44;
      }

      v59 = v123;
      v58 = v124;
      v60 = v111;
      (*(v124 + 32))(v111, v57, v123);
      v61 = MEMORY[0x22AA87A30](v38, v60);
      v62 = *(v58 + 8);
      v62(v60, v59);
      v63 = v38;
LABEL_29:
      v84 = v59;
LABEL_30:
      v62(v63, v84);
      goto LABEL_48;
    case 3u:
      sub_226B01F40(v47, v35, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v54 = *v35;
      v53 = v35[1];
      v55 = v126;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_15;
      }

      goto LABEL_39;
    case 4u:
      sub_226B01F40(v47, v32, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v54 = *v32;
      v53 = v32[1];
      v55 = v126;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    case 5u:
      v67 = v117;
      sub_226B01F40(v47, v117, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v85 = v126;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_42;
      }

      v59 = v123;
      v86 = v124;
      v87 = v112;
      (*(v124 + 32))(v112, v85, v123);
      v61 = MEMORY[0x22AA87A30](v67, v87);
      v62 = *(v86 + 8);
      v62(v87, v59);
      v63 = v67;
      goto LABEL_29;
    case 6u:
      sub_226B01F40(v47, v27, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v88 = *v27;
      v89 = v126;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_39;
      }

      v61 = sub_226B2DFEC(v88, *v89);

      goto LABEL_48;
    case 7u:
      v67 = v119;
      sub_226B01F40(v47, v119, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67A0, &unk_226D7E670) + 48);
      v70 = *(v67 + v68);
      v69 = *(v67 + v68 + 8);
      v71 = v126;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

LABEL_42:
        (*(v124 + 8))(v67, v123);
        goto LABEL_44;
      }

      v73 = *(v71 + v68);
      v72 = *(v71 + v68 + 8);
      v75 = v123;
      v74 = v124;
      v76 = v114;
      (*(v124 + 32))(v114, v71, v123);
      v77 = MEMORY[0x22AA87A30](v67, v76);
      v78 = v67;
      v79 = *(v74 + 8);
      v79(v78, v75);
      if ((v77 & 1) == 0)
      {
        v79(v76, v75);

        goto LABEL_54;
      }

      if (v70 == v73 && v69 == v72)
      {

        v79(v76, v75);
        goto LABEL_19;
      }

      v108 = sub_226D6F21C();

      v79(v76, v75);
      if ((v108 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    case 8u:
      v96 = v115;
      sub_226B01F40(v47, v115, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v98 = *v96;
      v97 = v96[1];
      v99 = v126;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_39;
      }

      v100 = *v99;
      v101 = v99[1];
      if (v98 == v100 && v97 == v101)
      {
        goto LABEL_17;
      }

      v107 = sub_226D6F21C();

      if ((v107 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    case 9u:
      v56 = v116;
      sub_226B01F40(v47, v116, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v54 = *v56;
      v53 = v56[1];
      v55 = v126;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    case 0xAu:
      v90 = v120;
      sub_226B01F40(v47, v120, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v91 = v126;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v93 = v121;
        v92 = v122;
        v94 = v113;
        (*(v121 + 32))(v113, v91, v122);
        v61 = sub_226D6D4EC();
        v95 = *(v93 + 8);
        v95(v94, v92);
        v95(v90, v92);
        goto LABEL_48;
      }

      (*(v121 + 8))(v90, v122);
      goto LABEL_44;
    case 0xBu:
      v52 = v118;
      sub_226B01F40(v47, v118, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v54 = *v52;
      v53 = v52[1];
      v55 = v126;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_39:

LABEL_44:
        sub_226AC47B0(v47, &qword_27D7A67A8, &unk_226D71CF0);
        goto LABEL_45;
      }

LABEL_15:
      v64 = *v55;
      v65 = v55[1];
      if (v54 == v64 && v53 == v65)
      {
LABEL_17:

LABEL_19:
        sub_226B03154(v47, type metadata accessor for BankConnectWebServiceTaskIdentifier);
        v61 = 1;
        return v61 & 1;
      }

      v66 = sub_226D6F21C();

      if (v66)
      {
        goto LABEL_19;
      }

LABEL_54:
      sub_226B03154(v47, type metadata accessor for BankConnectWebServiceTaskIdentifier);
LABEL_45:
      v61 = 0;
      return v61 & 1;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_44;
      }

      goto LABEL_19;
    default:
      sub_226B01F40(v47, v44, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      v51 = v126;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v124 + 8))(v44, v123);
        goto LABEL_44;
      }

      v103 = v123;
      v102 = v124;
      v104 = v109;
      (*(v124 + 32))(v109, v51, v123);
      v61 = MEMORY[0x22AA87A30](v44, v104);
      v105 = *(v102 + 8);
      v105(v104, v103);
      v105(v44, v103);
LABEL_48:
      sub_226B03154(v47, type metadata accessor for BankConnectWebServiceTaskIdentifier);
      return v61 & 1;
  }
}

uint64_t sub_226B03154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226B031C4()
{
  if (*(v0 + 120))
  {

    sub_226D6E80C();
  }

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_226B03268()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_226D6EA9C();
  [v0 postNotificationName:v1 object:0 userInfo:0 deliverImmediately:1];
}

uint64_t sub_226B032F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5C0);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Starting to observe persistent store remote change notifications", v12, 2u);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  if (*(v3 + 120))
  {

    sub_226D6E80C();
  }

  v13 = sub_226D6E79C();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v14;
  v15[5] = a1;
  v15[6] = a2;

  *(v3 + 120) = sub_226B60364(0, 0, v8, &unk_226D71D78, v15);
}

uint64_t sub_226B03534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_226D6CD9C();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80);
  v6[12] = swift_task_alloc();
  v8 = sub_226D6EAEC();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0368C, 0, 0);
}

uint64_t sub_226B0368C()
{
  v0[16] = [objc_opt_self() defaultCenter];
  v0[17] = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  v1 = *MEMORY[0x277CBE310];
  v0[18] = *MEMORY[0x277CBE188];
  v0[19] = v1;
  v0[20] = *MEMORY[0x277CBE150];
  v2 = sub_226B040B4(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_226B03804;
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_226B03804()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_226B03C28;
  }

  else
  {
    v2 = sub_226B03918;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B03934()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 128);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

LABEL_15:

    v29 = *(v0 + 8);

    return v29();
  }

  (*(v3 + 32))(*(v0 + 88), v1, v2);
  if (!swift_weakLoadStrong())
  {
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 104);
    v27 = *(v0 + 80);
    v26 = *(v0 + 88);
    v28 = *(v0 + 72);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    goto LABEL_15;
  }

  v5 = sub_226D6CD8C();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = sub_226D6E39C();
  sub_226B03CB4(v7, v8, v6);
  v10 = v9;

  if (v10 & 1) != 0 || (v11 = sub_226D6E39C(), sub_226B03CB4(v11, v12, v6), v14 = v13, , (v14))
  {
  }

  else
  {
    v30 = sub_226D6E39C();
    sub_226B03CB4(v30, v31, v6);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  (*(v0 + 56))(v15);
LABEL_11:
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);

  (*(v17 + 8))(v16, v18);
  v19 = sub_226B040B4(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v20 = swift_task_alloc();
  *(v0 + 168) = v20;
  *v20 = v0;
  v20[1] = sub_226B03804;
  v21 = *(v0 + 96);
  v22 = *(v0 + 104);

  return MEMORY[0x282200308](v21, v22, v19);
}

uint64_t sub_226B03C28()
{
  *(v0 + 40) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

void sub_226B03CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_226D6EE8C();
  if (!*(a3 + 16) || (v4 = sub_226C2FE4C(v20), (v5 & 1) == 0))
  {
    sub_226AE5030(v20);
    return;
  }

  sub_226AC4708(*(a3 + 56) + 32 * v4, &v19);
  sub_226AE5030(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67C0, &unk_226D71D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226B04068();
    sub_226B040B4(&qword_27D7A67D0, sub_226B04068, MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v6 = v20[0];
    v7 = v20[1];
    v8 = v20[2];
    v9 = v20[3];
    v10 = v20[4];
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);
  }

  while (v6 < 0)
  {
    if (!sub_226D6EE2C())
    {
      goto LABEL_27;
    }

    sub_226B04068();
    swift_dynamicCast();
    v16 = v19;
    if (!v19)
    {
      goto LABEL_27;
    }

LABEL_21:
    sub_226D6751C();
    if (swift_dynamicCastClass() || (sub_226D6990C(), swift_dynamicCastClass()))
    {

LABEL_27:
      sub_226AD3C20(v6);
      return;
    }

    sub_226D6B1CC();
    v17 = swift_dynamicCastClass();

    if (v17)
    {
      goto LABEL_27;
    }
  }

  v14 = v9;
  v15 = v10;
  if (v10)
  {
LABEL_17:
    v10 = (v15 - 1) & v15;
    v16 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v9 >= ((v8 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v7 + 8 * v9);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_226B03FA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226AD827C;

  return sub_226B03534(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_226B04068()
{
  result = qword_27D7A67C8;
  if (!qword_27D7A67C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A67C8);
  }

  return result;
}

uint64_t sub_226B040B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226B040FC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_226AE5134(v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v15))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 56 * (v9 | (v8 << 6));
    v12 = *(v10 + 16);
    v11 = *(v10 + 32);
    v13 = *v10;
    v17 = *(v10 + 48);
    v16[1] = v12;
    v16[2] = v11;
    v16[0] = v13;
    sub_226AE50D8(v16, v14);
    sub_226C25434(v14, v16);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_226B04214(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D6C02C();
    sub_226B11AFC(&qword_27D7A6820, MEMORY[0x277CC81E0], MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_226AD3C20(v1);
      return;
    }

    while (1)
    {
      sub_226C2594C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_226D6EE2C())
      {
        sub_226D6C02C();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_226B04404(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_226C24D14(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_226B04508(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_226C2514C(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_226B04718(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_226AE5030(v12))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_226AE4FD4(*(v1 + 48) + 40 * (v9 | (v8 << 6)), v13);
    v10[0] = v13[0];
    v10[1] = v13[1];
    v11 = v14;
    sub_226C26A54(v12, v10);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226B0481C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask;
  if (*(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask))
  {
    v5 = *(v0 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader____lazy_storage___mapsInsightsServiceTask);
  }

  else
  {
    v6 = sub_226D6E79C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    v5 = sub_226C41BF0(0, 0, v3, &unk_226D71F18, v7);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t sub_226B04958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = a4;
  return MEMORY[0x2822009F8](sub_226B04978, 0, 0);
}

uint64_t sub_226B04978()
{
  v1 = *(v0 + 64);
  sub_226D68FEC();
  sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_extensionFinder, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_226B04A34;

  return MEMORY[0x2821185B0](v0 + 16);
}

uint64_t sub_226B04A34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_226B04B80;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_226B04B5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226B04B98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  return MEMORY[0x2822009F8](sub_226B04BBC, 0, 0);
}

uint64_t sub_226B04BBC()
{
  v11 = v0;

  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_226D6E8AC();
    v7 = sub_226AC4530(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_226AB4000, v1, v2, "Fetching transaction insights for: %s.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
    MEMORY[0x22AA8BEE0](v3, -1, -1);
  }

  v8 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_226B04D64, v8, 0);
}

uint64_t sub_226B04D64()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs;
  *(v0 + 128) = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_inProgressTransactionIDs;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v0 + 120);
  if (*(*(v2 + v3) + 16) <= v4 >> 3)
  {
    v15 = *(v0 + 120);

    sub_226D53B1C(v8);

    v7 = v15;
  }

  else
  {

    v7 = sub_226D53F8C(v6, v5);
  }

  *(v0 + 136) = v7;
  if (*(v7 + 16))
  {
    swift_beginAccess();

    sub_226B04508(v9);
    swift_endAccess();
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_226B04F14;
    v11 = *(v0 + 160);
    v12 = *(v0 + 112);

    return sub_226B05178(v7, v12, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_226B04F14()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_226B050DC;
  }

  else
  {
    v4 = sub_226B05040;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226B05040()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226B050DC()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_226D53B1C(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226B05178(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 136) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_226D6891C();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B0523C, 0, 0);
}

uint64_t sub_226B0523C()
{
  v11 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_226C24B18(*(v1 + 16), 0);
    v4 = *(sub_226D6D52C() - 8);
    sub_226C3ACB8(&v10, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v5;
    v7 = v10;

    sub_226AD3C20(v7);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[7] = v3;
  v8 = v0[3];

  return MEMORY[0x2822009F8](sub_226B0536C, v8, 0);
}

void sub_226B0539C()
{
  v19 = v0;
  v1 = *(v0 + 64);
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_226B114F4(0, *(*(v0 + 56) + 16), v1, *(v0 + 56), *(v0 + 64));
  v3 = v2;
  *(v0 + 72) = v2;

  v4 = *(v3 + 16);
  *(v0 + 80) = v4;
  if (v4)
  {
    *(v0 + 88) = 0;
    if (*(*(v0 + 72) + 16))
    {

      v6 = sub_226AE45DC(v5);
      *(v0 + 96) = v6;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_226B0564C;
      v8 = *(v0 + 48);
      v9 = *(v0 + 136);

      sub_226B05C98(v8, v6, v9);
      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v14 = sub_226D6E8AC();
    v16 = sub_226AC4530(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226AB4000, v10, v11, "Fetched and stored transaction insights for: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_226B0564C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226B05BB8, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v2 + 120) = v4;
    *v4 = v3;
    v4[1] = sub_226B057F8;
    v5 = *(v2 + 48);

    return sub_226B073DC(v5);
  }
}

uint64_t sub_226B057F8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_226B05C1C;
  }

  else
  {
    v2 = sub_226B05914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B05914()
{
  v19 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88) + 1;
  result = (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  if (v2 == v1)
  {

    v4 = sub_226D6E05C();
    v5 = sub_226D6E9EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315138;
      sub_226D6D52C();
      sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v8 = sub_226D6E8AC();
      v10 = sub_226AC4530(v8, v9, &v18);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_226AB4000, v4, v5, "Fetched and stored transaction insights for: %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v12 = *(v0 + 88) + 1;
    *(v0 + 88) = v12;
    if (v12 >= *(*(v0 + 72) + 16))
    {
      __break(1u);
    }

    else
    {

      v14 = sub_226AE45DC(v13);
      *(v0 + 96) = v14;

      v15 = swift_task_alloc();
      *(v0 + 104) = v15;
      *v15 = v0;
      v15[1] = sub_226B0564C;
      v16 = *(v0 + 48);
      v17 = *(v0 + 136);

      return sub_226B05C98(v16, v14, v17);
    }
  }

  return result;
}

uint64_t sub_226B05BB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B05C1C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226B05C98(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 336) = a3;
  *(v4 + 120) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = sub_226D66DFC();
  *(v4 + 184) = swift_task_alloc();
  v5 = sub_226D6D4AC();
  *(v4 + 192) = v5;
  *(v4 + 200) = *(v5 - 8);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v6 = sub_226D6B32C();
  *(v4 + 232) = v6;
  *(v4 + 240) = *(v6 - 8);
  *(v4 + 248) = swift_task_alloc();
  v7 = sub_226D6C2CC();
  *(v4 + 256) = v7;
  *(v4 + 264) = *(v7 - 8);
  *(v4 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B05EBC, v3, 0);
}

uint64_t sub_226B05EBC()
{
  v1 = *(*(v0 + 136) + OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_requestBuilder);
  *(v0 + 280) = v1;

  return MEMORY[0x2822009F8](sub_226B05F3C, v1, 0);
}

uint64_t sub_226B05F3C()
{
  sub_226BEEE4C(*(v0 + 128), *(v0 + 336), *(v0 + 272));
  *(v0 + 288) = 0;
  v1 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_226B05FDC, v1, 0);
}

uint64_t sub_226B05FDC()
{
  v1 = v0[34];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  v0[37] = OBJC_IVAR____TtC13FinanceDaemon29BankConnectInsightsDataLoader_environment;
  __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  v4 = sub_226D6BB2C();
  v0[38] = v4;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[40] = v6;
  v7 = sub_226D6891C();
  *v6 = v0;
  v6[1] = sub_226B060F4;
  v8 = v0[15];

  return MEMORY[0x282119B28](v8, &unk_226D71F00, v5, v7);
}

uint64_t sub_226B060F4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_226B06418;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_226B0621C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226B0621C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B0632C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226B06418()
{
  v116 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v108 = (v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  v109 = *(v3 + 104);
  v109(v2, *MEMORY[0x277CC7E78], v4);
  sub_226D6D46C();
  sub_226D6D3DC();
  v113 = *(v7 + 8);
  v113(v5, v6);
  v114 = v0;
  *(v0 + 88) = v1;
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 184);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v12 = *(v0 + 160);
        v11 = *(v0 + 168);
        sub_226AFD80C(v9, v11, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(v11, v12, &qword_27D7A8BE0, &unk_226D718F0);

        v13 = sub_226D6E05C();
        v14 = sub_226D6E9CC();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = *(v0 + 200);
          v110 = *(v0 + 192);
          v16 = *(v0 + 152);
          v107 = *(v0 + 160);
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v115[0] = v18;
          *v17 = 136315394;
          sub_226D6D52C();
          sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v19 = sub_226D6E8AC();
          v21 = sub_226AC4530(v19, v20, v115);

          *(v17 + 4) = v21;
          *(v17 + 12) = 2080;
          sub_226AC40E8(v107, v16, &qword_27D7A8BE0, &unk_226D718F0);
          if ((*(v15 + 48))(v16, 1, v110) == 1)
          {
            sub_226AC47B0(v114[19], &qword_27D7A8BE0, &unk_226D718F0);
            v22 = 0xE300000000000000;
            v23 = 7104878;
          }

          else
          {
            v74 = v114[24];
            v75 = v114[19];
            v23 = sub_226D6D48C();
            v22 = v76;
            v113(v75, v74);
          }

          v77 = v114[30];
          v111 = v114[31];
          v78 = v114[29];
          sub_226AC47B0(v114[20], &qword_27D7A8BE0, &unk_226D718F0);
          v79 = sub_226AC4530(v23, v22, v115);

          *(v17 + 14) = v79;
          _os_log_impl(&dword_226AB4000, v13, v14, "Too many requests (429) classifying transactions %s, retry after: %s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v18, -1, -1);
          MEMORY[0x22AA8BEE0](v17, -1, -1);

          (*(v77 + 8))(v111, v78);
        }

        else
        {
          v71 = *(v0 + 240);
          v70 = *(v0 + 248);
          v72 = *(v0 + 232);
          v73 = *(v0 + 160);

          sub_226AC47B0(v73, &qword_27D7A8BE0, &unk_226D718F0);
          (*(v71 + 8))(v70, v72);
        }

        v81 = v114 + 18;
        v80 = v114[18];
        v82 = v114[24];
        v83 = v114[25];
        v84 = v114[21];
        v109(v114[31], *MEMORY[0x277CC7E90], v114[29]);
        sub_226AFD80C(v84, v80, &qword_27D7A8BE0, &unk_226D718F0);
        v85 = *(v83 + 48);
        v86 = (v83 + 32);
        if (v85(v80, 1, v82) == 1)
        {
          sub_226AC47B0(*v81, &qword_27D7A8BE0, &unk_226D718F0);
          v81 = v108;
        }

        else
        {
          v113(v114[28], v114[24]);
        }

        v87 = *v81;
        v88 = v114[28];
        v89 = v114[26];
        v90 = v114[24];
        v91 = *v86;
        (*v86)(v89, v87, v90);
        v91(v88, v89, v90);
        v69 = v114[11];
        goto LABEL_31;
      }

      goto LABEL_12;
    }

    v48 = sub_226D6E05C();
    v49 = sub_226D6E9CC();

    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_21;
    }

    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v115[0] = v51;
    *v50 = 136315650;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v52 = sub_226D6E8AC();
    v54 = sub_226AC4530(v52, v53, v115);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v55 = sub_226D6F3EC();
    v57 = sub_226AC4530(v55, v56, v115);

    *(v50 + 14) = v57;
    *(v50 + 22) = 2080;
    v58 = sub_226D6F3EC();
    v60 = sub_226AC4530(v58, v59, v115);

    *(v50 + 24) = v60;
    _os_log_impl(&dword_226AB4000, v48, v49, "Invalid response classifying transactions %s: expected %s, actual %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v51, -1, -1);
    v61 = v50;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v62 = *v9;

    v48 = sub_226D6E05C();
    v63 = sub_226D6E9CC();

    if (!os_log_type_enabled(v48, v63))
    {
LABEL_21:

LABEL_22:
      v69 = *(v0 + 88);
LABEL_31:

      goto LABEL_32;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v115[0] = v65;
    *v64 = 136315394;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v66 = sub_226D6E8AC();
    v68 = sub_226AC4530(v66, v67, v115);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2048;
    *(v64 + 14) = v62;
    _os_log_impl(&dword_226AB4000, v48, v63, "Unexpected response classifying transactions %s, status code: %ld", v64, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x22AA8BEE0](v65, -1, -1);
    v61 = v64;
LABEL_20:
    MEMORY[0x22AA8BEE0](v61, -1, -1);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v24 = *v9;

    v25 = v24;
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v115[0] = v29;
      *v28 = 136315394;
      sub_226D6D52C();
      sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v30 = sub_226D6E8AC();
      v32 = sub_226AC4530(v30, v31, v115);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v33 = sub_226D6F26C();
      v35 = sub_226AC4530(v33, v34, v115);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_226AB4000, v26, v27, "Invalid data classifying transactions %s: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v29, -1, -1);
      MEMORY[0x22AA8BEE0](v28, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_12:
  sub_226B11CB8(v9, MEMORY[0x277CC6528]);
LABEL_13:
  v36 = *(v0 + 328);

  v37 = v36;

  v38 = sub_226D6E05C();
  v39 = sub_226D6E9CC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v115[0] = v41;
    *v40 = 136315394;
    sub_226D6D52C();
    sub_226B11AFC(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v42 = sub_226D6E8AC();
    v44 = sub_226AC4530(v42, v43, v115);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    swift_getErrorValue();
    v45 = sub_226D6F26C();
    v47 = sub_226AC4530(v45, v46, v115);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_226AB4000, v38, v39, "Unexpected error classifying transactions %s: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v41, -1, -1);
    MEMORY[0x22AA8BEE0](v40, -1, -1);
  }

LABEL_32:
  v92 = v114[31];
  v93 = v114[28];
  v94 = v114[16];
  v95 = (v114[17] + v114[37]);
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v96 = sub_226D6BB3C();
  v97 = swift_task_alloc();
  v97[2] = v96;
  v97[3] = v94;
  v97[4] = v93;
  v97[5] = v92;
  sub_226D6EB7C();

  v98 = v114[33];
  v112 = v114[34];
  v100 = v114[31];
  v99 = v114[32];
  v102 = v114[29];
  v101 = v114[30];
  v103 = v114[28];
  v104 = v114[24];
  swift_willThrow();

  v113(v103, v104);
  (*(v101 + 8))(v100, v102);
  (*(v98 + 8))(v112, v99);

  v105 = v114[1];

  return v105();
}