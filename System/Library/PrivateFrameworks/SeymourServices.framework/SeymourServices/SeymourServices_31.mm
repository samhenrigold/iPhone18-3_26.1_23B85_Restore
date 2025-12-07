uint64_t sub_2271C1C00(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x2822009F8](sub_2271C1D00, 0, 0);
}

uint64_t sub_2271C1D00()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_2271C1DBC;
  v4 = v0[29];

  return sub_227093A94(v4, v2, v1);
}

uint64_t sub_2271C1DBC()
{

  return MEMORY[0x2822009F8](sub_2271C1EB8, 0, 0);
}

uint64_t sub_2271C1EB8(uint64_t a1)
{
  v2 = *(v1 + 312);
  if (*(v2 + 16))
  {
    v3 = *(v1 + 288);
    v4 = *(v1 + 240);
    v5 = *(v1 + 248);
    sub_22766A730();
    sub_22766B370();
    v6 = *(v5 + 8);
    *(v1 + 328) = v6;
    *(v1 + 336) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    *(v1 + 96) = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E20, &qword_22767C3B0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC058, &qword_22767C3B8);
    v9 = swift_task_alloc();
    *(v1 + 344) = v9;
    *(v9 + 16) = v1 + 96;
    *(v9 + 24) = v1 + 16;
    v10 = swift_task_alloc();
    *(v1 + 352) = v10;
    *v10 = v1;
    v10[1] = sub_2271C2324;

    return MEMORY[0x282200600](v1 + 104, v7, v8, 0, 0, &unk_22767C3C8, v9, v7);
  }

  else
  {
    v12 = *(v1 + 224);
    v11 = *(v1 + 232);

    sub_22766A730();
    sub_2271C411C(v11, v12);
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v1 + 264);
    v17 = *(v1 + 240);
    v18 = *(v1 + 248);
    v19 = *(v1 + 224);
    if (v15)
    {
      v34 = *(v1 + 264);
      v35 = *(v1 + 240);
      v20 = *(v1 + 216);
      v21 = *(v1 + 365) & 1;
      v22 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v22 = 136446466;
      *(v1 + 364) = v21;
      sub_226FF66F0();
      v23 = sub_22766D140();
      v25 = sub_226E97AE8(v23, v24, &v37);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      sub_2271C411C(v19, v20);
      v26 = sub_22766C060();
      v28 = v27;
      sub_2271C4180(v19);
      v29 = sub_226E97AE8(v26, v28, &v37);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v13, v14, "No Profiles found for zone %{public}s, using default restriction: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);

      (*(v18 + 8))(v34, v35);
    }

    else
    {

      sub_2271C4180(v19);
      (*(v18 + 8))(v16, v17);
    }

    v30 = *(v1 + 232);
    sub_2271C411C(v30, *(v1 + 112));
    sub_2271C4180(v30);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));

    v31 = *(v1 + 8);

    return v31();
  }
}

uint64_t sub_2271C2324()
{

  return MEMORY[0x2822009F8](sub_2271C243C, 0, 0);
}

uint64_t sub_2271C243C()
{
  v127 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = v0[13];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_2271C3108(sub_2271C4100, v4, v3);

  sub_2271C38F4(v5);
  v7 = v6;

  v8 = *(v7 + 16);
  v107 = v0;
  if (v8)
  {
    v9 = v0[22];
    v105 = v0[16];
    v106 = v0[26];
    v126 = MEMORY[0x277D84F90];
    sub_226F201C8(0, v8, 0);
    v10 = v126;
    v11 = v7 + 64;
    v12 = sub_22766CC90();
    result = v7;
    v14 = 0;
    v15 = *(v7 + 36);
    v100 = v7 + 72;
    v101 = v8;
    v102 = v15;
    v103 = v7 + 64;
    v104 = v7;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(result + 32))
    {
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_42;
      }

      if (v15 != *(result + 36))
      {
        goto LABEL_43;
      }

      v109 = 1 << v12;
      v110 = v12 >> 6;
      v108 = v14;
      v120 = v10;
      v17 = *(v105 + 48);
      v18 = v1[24];
      v20 = v1[20];
      v19 = v1[21];
      v21 = v1[18];
      v22 = v1[19];
      v23 = v1[17];
      v116 = v18;
      v118 = *(v9 + 72);
      v24 = v9;
      v111 = *(v9 + 16);
      v112 = v21;
      v25 = result;
      v26 = v12;
      v111(v20, *(result + 48) + v118 * v12, v19);
      v114 = v26;
      sub_2271C411C(*(v25 + 56) + *(v106 + 72) * v26, v20 + v17);
      v9 = v24;
      v27 = *(v24 + 32);
      v27(v22, v20, v19);
      sub_226F69C10(v20 + v17, v22 + *(v105 + 48));
      sub_226E93170(v22, v112, &qword_27D7BC048, &qword_22767C390);
      v28 = *(v105 + 48);
      v27(v23, v112, v19);
      sub_226F69C10(v112 + v28, v23 + v28);
      v111(v116, v23, v19);
      sub_226E97D1C(v23, &qword_27D7BC048, &qword_22767C390);
      v10 = v120;
      sub_226E97D1C(v22, &qword_27D7BC048, &qword_22767C390);
      v126 = v120;
      v30 = *(v120 + 16);
      v29 = *(v120 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_226F201C8((v29 > 1), v30 + 1, 1);
        v10 = v126;
      }

      v1 = v0;
      v31 = v0[24];
      v32 = v0[21];
      *(v10 + 16) = v30 + 1;
      v27(v10 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + v30 * v118, v31, v32);
      result = v104;
      v16 = 1 << *(v104 + 32);
      if (v114 >= v16)
      {
        goto LABEL_44;
      }

      v11 = v103;
      v33 = *(v103 + 8 * v110);
      if ((v33 & v109) == 0)
      {
        goto LABEL_45;
      }

      v15 = v102;
      if (v102 != *(v104 + 36))
      {
        goto LABEL_46;
      }

      v34 = v33 & (-2 << (v114 & 0x3F));
      if (v34)
      {
        v16 = __clz(__rbit64(v34)) | v114 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v110 << 6;
        v36 = (v100 + 8 * v110);
        v37 = v110 + 1;
        while (v37 < (v16 + 63) >> 6)
        {
          v39 = *v36++;
          v38 = v39;
          v35 += 64;
          ++v37;
          if (v39)
          {
            sub_226EB526C(v114, v102, 0);
            result = v104;
            v16 = __clz(__rbit64(v38)) + v35;
            goto LABEL_20;
          }
        }

        sub_226EB526C(v114, v102, 0);
        result = v104;
LABEL_20:
        v9 = v24;
      }

      v14 = v108 + 1;
      v12 = v16;
      if (v108 + 1 == v101)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_23:
    v40 = v1[39];
    v41 = v1;
    v42 = *(v10 + 16);
    if (v42 == *(v40 + 16))
    {

      sub_22766A730();

      v43 = sub_22766B380();
      v44 = sub_22766C8B0();

      if (os_log_type_enabled(v43, v44))
      {
        v119 = v44;
        v121 = v10;
        v45 = *(v41 + 365) & 1;
        v46 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v125 = v117;
        *v46 = 136446466;
        *(v41 + 363) = v45;
        sub_226FF66F0();
        v47 = sub_22766D140();
        v49 = sub_226E97AE8(v47, v48, &v125);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2080;
        v50 = MEMORY[0x277D84F90];
        if (v42)
        {
          v113 = v46;
          v115 = v43;
          v51 = v41[22];
          v126 = MEMORY[0x277D84F90];
          sub_226F201E8(0, v42, 0);
          v50 = v126;
          v52 = *(v51 + 16);
          v51 += 16;
          v53 = v121 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
          v122 = *(v51 + 56);
          v124 = v52;
          v54 = (v51 - 8);
          do
          {
            v55 = v107[23];
            v56 = v107[21];
            v124(v55, v53, v56);
            v57 = sub_227665640();
            v59 = v58;
            (*v54)(v55, v56);
            v126 = v50;
            v61 = *(v50 + 16);
            v60 = *(v50 + 24);
            if (v61 >= v60 >> 1)
            {
              sub_226F201E8((v60 > 1), v61 + 1, 1);
              v50 = v126;
            }

            *(v50 + 16) = v61 + 1;
            v62 = v50 + 16 * v61;
            *(v62 + 32) = v57;
            *(v62 + 40) = v59;
            v53 += v122;
            --v42;
          }

          while (v42);
          v46 = v113;
          v43 = v115;
        }

        v86 = v107[41];
        v87 = v107[35];
        v88 = v107[30];
        v89 = MEMORY[0x22AA98660](v50, MEMORY[0x277D53398]);
        v91 = v90;

        v92 = sub_226E97AE8(v89, v91, &v125);

        *(v46 + 14) = v92;
        _os_log_impl(&dword_226E8E000, v43, v119, "Vetos for %{public}s: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v117, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);

        v93 = v88;
        v70 = v107;
        v86(v87, v93);
        v10 = v121;
      }

      else
      {
        v80 = v41[41];
        v81 = v41[35];
        v82 = v41[30];

        v80(v81, v82);
        v70 = v41;
      }

      v83 = v70[29];
      v94 = v70[14];
      v95 = sub_226F45240(v10);

      *v94 = v95;
      v96 = *MEMORY[0x277D515F0];
      v97 = sub_227665360();
      (*(*(v97 - 8) + 104))(v94, v96, v97);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
      (*(*(v98 - 8) + 56))(v94, 0, 1, v98);
    }

    else
    {
      sub_22766A730();

      v63 = sub_22766B380();
      v64 = sub_22766C8B0();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v41[41];
      v67 = v41[39];
      v68 = v41[34];
      v69 = v41[30];
      v70 = v41;
      if (v65)
      {
        v71 = *(v41 + 365) & 1;
        v72 = swift_slowAlloc();
        v123 = v66;
        v73 = swift_slowAlloc();
        v126 = v73;
        *v72 = 134218498;
        v74 = *(v10 + 16);

        *(v72 + 4) = v74;

        *(v72 + 12) = 2048;
        v75 = *(v67 + 16);

        *(v72 + 14) = v75;

        *(v72 + 22) = 2082;
        *(v107 + 362) = v71;
        sub_226FF66F0();
        v76 = sub_22766D140();
        v78 = sub_226E97AE8(v76, v77, &v126);

        *(v72 + 24) = v78;
        _os_log_impl(&dword_226E8E000, v63, v64, "No unanimous vetos (%ld/%ld) for %{public}s, unrestricting!", v72, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x22AA9A450](v73, -1, -1);
        v79 = v72;
        v70 = v107;
        MEMORY[0x22AA9A450](v79, -1, -1);

        v123(v68, v69);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v66(v68, v69);
      }

      v83 = v70[29];
      v84 = v70[14];
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
      (*(*(v85 - 8) + 56))(v84, 1, 1, v85);
    }

    sub_2271C4180(v83);
    __swift_destroy_boxed_opaque_existential_0(v70 + 2);

    v99 = v70[1];

    return v99();
  }

  return result;
}

uint64_t sub_2271C2EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_226E93170(a1, &v10 - v7, &qword_27D7B8E28, &unk_227672340);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226F69C10(v8, a3);
  }

  sub_226E97D1C(v8, &qword_27D7B8E28, &unk_227672340);
  return sub_2271C411C(a2, a3);
}

uint64_t sub_2271C2FE8(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return RestrictionsProvider.effectiveRestriction(for:)(a1, a2 & 1);
}

void *sub_2271C3090(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_2271C3A54(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_2271C3108(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v53 = a2;
  v4 = sub_2276637B0();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v42 - v7;
  v8 = sub_227665680();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v42 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC070, &qword_22767C440);
  result = sub_22766CFF0();
  v15 = result;
  v16 = 0;
  v54 = a3;
  v55 = v9;
  v17 = *(a3 + 64);
  v43 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v42 = (v18 + 63) >> 6;
  v44 = result + 64;
  v50 = result;
  v46 = v9 + 32;
  v47 = v9 + 16;
  v21 = v56;
  if (v20)
  {
    while (1)
    {
      v22 = v11;
      v23 = __clz(__rbit64(v20));
      v57 = (v20 - 1) & v20;
LABEL_10:
      v26 = v23 | (v16 << 6);
      v27 = v54;
      v28 = v55;
      v29 = *(v54 + 48);
      v30 = *(v55 + 16);
      v58 = *(v55 + 72) * v26;
      v31 = v48;
      v30(v48, v29 + v58, v8);
      v32 = *(v27 + 56);
      v33 = *(v51 + 72);
      v59 = v26;
      sub_226E93170(v32 + v33 * v26, v21, &qword_27D7B8E28, &unk_227672340);
      v34 = *(v28 + 32);
      v34(v22, v31, v8);
      v35 = v49;
      v36 = v8;
      v37 = v60;
      v52(v21);
      v60 = v37;
      if (v37)
      {
        break;
      }

      sub_226E97D1C(v21, &qword_27D7B8E28, &unk_227672340);
      v38 = v59;
      *(v44 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v15 = v50;
      v34((*(v50 + 48) + v58), v22, v36);
      result = sub_226F69C10(v35, *(v15 + 56) + *(v45 + 72) * v38);
      v39 = *(v15 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_17;
      }

      v8 = v36;
      v11 = v22;
      *(v15 + 16) = v41;
      v20 = v57;
      v21 = v56;
      if (!v57)
      {
        goto LABEL_5;
      }
    }

    v15 = v50;

    (*(v55 + 8))(v22, v8);
    sub_226E97D1C(v21, &qword_27D7B8E28, &unk_227672340);
    return v15;
  }

  else
  {
LABEL_5:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v42)
      {
        return v15;
      }

      v25 = *(v43 + 8 * v16);
      ++v24;
      if (v25)
      {
        v22 = v11;
        v23 = __clz(__rbit64(v25));
        v57 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2271C35E8(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v49 = a1;
  v50 = a2;
  v9 = a4(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = &v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CFF0();
  v16 = v9;
  v17 = v12;
  v18 = result;
  v19 = 0;
  v51 = a3;
  v52 = v10;
  v22 = *(a3 + 64);
  v21 = a3 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v42 = (v23 + 63) >> 6;
  v43 = v21;
  v44 = result + 64;
  v48 = result;
  v45 = v10 + 32;
  v46 = v10 + 16;
  if (v25)
  {
    while (1)
    {
      v26 = v17;
      v27 = __clz(__rbit64(v25));
      v53 = (v25 - 1) & v25;
LABEL_10:
      v30 = v27 | (v19 << 6);
      v31 = v51;
      v32 = v52;
      v33 = *(v52 + 72) * v30;
      v34 = v47;
      v35 = v16;
      (*(v52 + 16))(v47, *(v51 + 48) + v33, v16);
      v56 = *(*(v31 + 56) + 8 * v30);
      v36 = *(v32 + 32);
      v36(v26, v34, v35);

      v37 = v54;
      (v49)(&v55, &v56);
      v54 = v37;
      if (v37)
      {
        break;
      }

      *(v44 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v18 = v48;
      result = (v36)(*(v48 + 48) + v33, v26, v35);
      *(*(v18 + 56) + 8 * v30) = v55;
      v38 = *(v18 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_17;
      }

      v16 = v35;
      v17 = v26;
      *(v18 + 16) = v40;
      v25 = v53;
      if (!v53)
      {
        goto LABEL_5;
      }
    }

    v41 = v48;

    (*(v52 + 8))(v26, v35);
    v18 = v41;

    return v18;
  }

  else
  {
LABEL_5:
    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v42)
      {
        return v18;
      }

      v29 = *(v43 + 8 * v19);
      ++v28;
      if (v29)
      {
        v26 = v17;
        v27 = __clz(__rbit64(v29));
        v53 = (v29 - 1) & v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_2271C38F4(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_2271C3090(v7, v4, v2);
      MEMORY[0x22AA9A450](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_2271C3A54(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_2271C3A54(unint64_t *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v39 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC048, &qword_22767C390);
  MEMORY[0x28223BE20](v47);
  v45 = &v38 - v4;
  v5 = sub_2276637B0();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_227665680();
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v41 = v9;
  v15 = 0;
  v49 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v43 = v11 + 16;
  v44 = v11;
  v42 = (v11 + 8);
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v50 = (v21 - 1) & v21;
LABEL_11:
    v51 = v23 | (v15 << 6);
    v26 = v49;
    v27 = v51;
    v28 = *(v44 + 16);
    v28(v14, v49[6] + *(v44 + 72) * v51, v10, v12);
    v29 = v26[7] + *(v46 + 72) * v27;
    v30 = v41;
    sub_2271C411C(v29, v41);
    v31 = v45;
    (v28)(v45, v14, v10);
    v32 = *(v47 + 48);
    sub_2271C411C(v30, v31 + v32);
    v33 = v31 + v32;
    v34 = v48;
    sub_2271C411C(v33, v48);
    sub_226E97D1C(v31, &qword_27D7BC048, &qword_22767C390);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
    {
      sub_2271C4180(v30);
      (*v42)(v14, v10);
      v21 = v50;
    }

    else
    {
      v36 = sub_227665360();
      (*(*(v36 - 8) + 8))(v48, v36);
      sub_2271C4180(v30);
      (*v42)(v14, v10);
      *(v39 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v37 = __OFADD__(v40++, 1);
      v21 = v50;
      if (v37)
      {
        __break(1u);
LABEL_16:
        sub_22732937C(v39, v38, v40, v49);
        return;
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_16;
    }

    v25 = v17[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v50 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2271C3E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2271C3F28;

  return sub_2271BFD64(a2, v7, a4);
}

uint64_t sub_2271C3F28(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2271C4038(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226E92F34;

  return sub_2271C3E78(a1, a2, v7, v6);
}

uint64_t sub_2271C411C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276637B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271C4180(uint64_t a1)
{
  v2 = sub_2276637B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of RestrictionProviding.effectiveRestriction(for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return v11(a1, a2 & 1, a3, a4);
}

void sub_2271C4338(uint64_t a1)
{
  sub_2271C43D4();
  if (v1 <= 0x3F)
  {
    sub_2271C4438(319);
    if (v2 <= 0x3F)
    {
      sub_2271C4504(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2271C43D4()
{
  result = qword_28139DDE0;
  if (!qword_28139DDE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28139DDE0);
  }

  return result;
}

void sub_2271C4438(uint64_t a1)
{
  if (!qword_28139D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC060, &qword_22767C428);
    sub_2271C44B0();
    v1 = sub_22766BEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_28139D308);
    }
  }
}

unint64_t sub_2271C44B0()
{
  result = qword_2813A56F0;
  if (!qword_2813A56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A56F0);
  }

  return result;
}

void sub_2271C4504(uint64_t a1)
{
  if (!qword_2813A54A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BBBB8, &qword_22767C380);
    sub_2271C0BA8(&qword_28139D2C0, MEMORY[0x277D4F9F8], MEMORY[0x277D4FA50]);
    sub_2271C0BA8(&qword_28139D2B8, MEMORY[0x277D839C8], MEMORY[0x277D84F50]);
    v1 = sub_227669750();
    if (!v2)
    {
      atomic_store(v1, &qword_2813A54A8);
    }
  }
}

uint64_t sub_2271C45D0(uint64_t a1)
{
  v4 = *(sub_227665680() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E93028;

  return sub_226F69758(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2271C46C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_226F39CA4(a1, v4);
}

unint64_t sub_2271C477C()
{
  result = qword_281398F50;
  if (!qword_281398F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BC080, &qword_22767C460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F50);
  }

  return result;
}

uint64_t sub_2271C47E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E28, &unk_227672340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271C4850(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v3 = v34;
  v5 = v4 + 64;
  v6 = sub_22766CC90();
  v7 = 0;
  v28 = v4 + 72;
  v29 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v4 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    v30 = v7;
    v11 = *(v4 + 36);
    v12 = v4;
    v31 = *(*(v4 + 56) + 8 * v6);

    sub_2271D49A8(&v31, &v32);
    if (v1)
    {
      goto LABEL_26;
    }

    v13 = v32;
    v14 = v33;
    v34 = v3;
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24) >> 1)
    {
      v26 = v33;
      v27 = v32;
      sub_226F1EF90();
      v14 = v26;
      v13 = v27;
      v3 = v34;
    }

    *(v3 + 16) = v15 + 1;
    v16 = v3 + 16 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v14;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_23;
    }

    v17 = *(v5 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v4 = v12;
    v18 = v11;
    if (v11 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v19 = v17 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v29;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v9 = v29;
      v22 = (v28 + 8 * v10);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_226EB526C(v6, v18, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v6, v18, 0);
    }

LABEL_4:
    v1 = 0;
    v7 = v30 + 1;
    v6 = v8;
    if (v30 + 1 == v9)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:

  __break(1u);
  return result;
}

void sub_2271C4AB0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_226ECCEB4(&qword_281398B80, &qword_281398B88, 0x277CE8D50);
    sub_22766C700();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22766CD50() || (sub_226E99364(0, &qword_281398B88, 0x277CE8D50), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_226EBB21C(v1);
      return;
    }

LABEL_17:
    v12 = [v11 uniqueName];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22766C000();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_226EB3F78(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_226EB3F78((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_2271C4D60(uint64_t a1)
{
  v1 = a1;
  v46 = MEMORY[0x277D84F98];
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CCE0();
    sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38);
    sub_226ECCEB4(&qword_27D7B89C8, &qword_27D7B89C0, 0x277CE8D38);
    sub_22766C700();
    v1 = v41;
    v2 = v42;
    v3 = v43;
    v4 = v44;
    v5 = v45;
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
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

    v5 = v8 & *(a1 + 56);
  }

  v37 = v3;
  v9 = (v3 + 64) >> 6;
  v10 = MEMORY[0x277D84F98];
  v38 = v1;
  while (v1 < 0)
  {
    if (!sub_22766CD50() || (sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38), swift_dynamicCast(), v17 = v40, v15 = v4, v16 = v5, !v40))
    {
LABEL_31:
      sub_226EBB21C(v1);
      return v10;
    }

LABEL_21:
    v39 = v16;
    v18 = [v17 templateUniqueName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_22766C000();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v24 = sub_226F3B12C(v20, v22);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_33;
    }

    v28 = v23;
    if (v10[3] < v27)
    {
      sub_226FE97F8(v27, 1);
      v10 = v46;
      v29 = sub_226F3B12C(v20, v22);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

      v24 = v29;
    }

    if (v28)
    {

      v12 = (v10[7] + 8 * v24);
      MEMORY[0x22AA985C0](v11);
      if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_227670B30;
      *(v31 + 32) = v17;
      v10[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v10[6] + 16 * v24);
      *v32 = v20;
      v32[1] = v22;
      *(v10[7] + 8 * v24) = v31;
      v33 = v10[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_34;
      }

      v10[2] = v35;
    }

    v4 = v15;
    v1 = v38;
    v5 = v39;
  }

  v13 = v4;
  v14 = v5;
  v15 = v4;
  if (v5)
  {
LABEL_17:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_31;
    }

    v14 = *(v2 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2271C5108(uint64_t a1, uint64_t a2)
{
  v2 = sub_227667A70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227669910();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    (*(v7 + 104))(v9, *MEMORY[0x277D4E198], v6);
    sub_22766A470();
    sub_227669650();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_2271C531C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 416));

  __swift_destroy_boxed_opaque_existential_0((v0 + 464));
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));

  __swift_destroy_boxed_opaque_existential_0((v0 + 568));
  return v0;
}

uint64_t sub_2271C53C4()
{
  sub_2271C531C();

  return swift_deallocClassInstance();
}

unint64_t sub_2271C5430()
{
  result = qword_27D7BC088;
  if (!qword_27D7BC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC088);
  }

  return result;
}

uint64_t sub_2271C5484()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v28[-1] - v3;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-1] - v9;
  v11 = sub_22766A8A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276693C0();
  (*(v12 + 104))(v14, *MEMORY[0x277D4F8D0], v11);
  v16 = sub_226EC9A38(v14, v15);

  (*(v12 + 8))(v14, v11);
  if (v16)
  {
    sub_22766A610();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "Setting AchievementSystem state to .active", v19, 2u);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    *(v1 + 16) = 1;
    swift_getObjectType();
    swift_allocObject();
    swift_weakInit();
    sub_226FA6E58();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_227669F10();
    swift_allocObject();
    swift_weakInit();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v28);
    swift_allocObject();
    swift_weakInit();
    sub_227118E70();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_22766A5A0();
    swift_allocObject();
    swift_weakInit();
    sub_2276699E0();

    __swift_destroy_boxed_opaque_existential_0(v28);
    v20 = sub_22766C4B0();
    v21 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v1;

    sub_2272CA940(0, 0, v21, &unk_22767C700, v22);
  }

  else
  {
    sub_22766A610();
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v24, v25, "Current platform does not support awards evaluation, not activating AchievementSystem", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2271C5A40(uint64_t *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  v4 = sub_22766B390();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 104) = v5;
  *(v2 + 112) = v6;
  *(v2 + 73) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2271C5B10, 0, 0);
}

uint64_t sub_2271C5B10(uint64_t a1)
{
  v27 = v1;
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 73);
    v5 = *(v1 + 112);
    v25 = *(v1 + 104);
    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v1 + 64) = v5;
    *(v1 + 72) = v4;

    v10 = sub_22766C060();
    v12 = sub_226E97AE8(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received ArchivedSessionsAdded event %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v7 + 8))(v25, v6);
  }

  else
  {
    v14 = *(v1 + 96);
    v13 = *(v1 + 104);
    v15 = *(v1 + 88);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(*(v1 + 112) + 16);
  sub_227669DE0();
  if (sub_227669DD0() < v16)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v1 + 136) = Strong;
    if (Strong)
    {
      v18 = swift_task_alloc();
      *(v1 + 144) = v18;
      *v18 = v1;
      v18[1] = sub_2271C5F84;

      return sub_2271C60BC();
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  *(v1 + 120) = v20;
  if (!v20)
  {
LABEL_13:

    v24 = *(v1 + 8);

    return v24();
  }

  v21 = *(v1 + 73);
  v22 = swift_task_alloc();
  *(v1 + 128) = v22;
  *v22 = v1;
  v22[1] = sub_2271C5E4C;
  v23 = *(v1 + 112);

  return sub_2271C6EC8(v23, v21);
}

uint64_t sub_2271C5E4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C5F84()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C60BC()
{
  v1[6] = v0;
  v2 = sub_22766A8A0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_22766B390();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C61F0, 0, 0);
}

uint64_t sub_2271C61F0(uint64_t a1)
{
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "AchievementSystem receive request to run historical evaluation", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[14];
  v6 = v1[10];
  v7 = v1[11];

  v8 = *(v7 + 8);
  v1[15] = v8;
  v8(v5, v6);
  if (sub_2271CD5D8())
  {
    __swift_project_boxed_opaque_existential_0((v1[6] + 48), *(v1[6] + 72));
    v9 = swift_task_alloc();
    v1[16] = v9;
    *v9 = v1;
    v9[1] = sub_2271C63A8;

    return sub_226EB91E0();
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_2271C63A8(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v5;
  v3[1] = sub_2271C64F4;

  return sub_2271CD8A4();
}

uint64_t sub_2271C64F4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {

    v2 = sub_2271C6CC8;
  }

  else
  {
    v2 = sub_2271C6610;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271C6610()
{
  __swift_project_boxed_opaque_existential_0((v0[6] + 208), *(v0[6] + 232));
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_2271C66B8;
  v2 = v0[17];

  return sub_226F6AB50(v2);
}

uint64_t sub_2271C66B8(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_2271C67D8, 0, 0);
}

uint64_t sub_2271C67D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F8A8], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_2271C6A00;
    v7 = v0[21];

    return sub_2271CCBB8(v7);
  }

  else
  {

    sub_22766A610();
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[15];
    v13 = v0[13];
    v14 = v0[10];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    v12(v13, v14);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2271C6A00()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_2271C6B5C;

  return sub_2271C8B40();
}

uint64_t sub_2271C6B5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C6CC8(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v18 = *(v1 + 96);
    v19 = *(v1 + 120);
    v7 = *(v1 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v12 = sub_226E97AE8(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Catalog sync request failed with error %s, skipping historical run", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v19(v18, v7);
  }

  else
  {
    v13 = *(v1 + 120);
    v14 = *(v1 + 96);
    v15 = *(v1 + 80);

    v13(v14, v15);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_2271C6EC8(uint64_t a1, char a2)
{
  *(v3 + 285) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_22766A8A0();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_227664530();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v6 = sub_22766B390();
  *(v3 + 120) = v6;
  *(v3 + 128) = *(v6 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C7068, 0, 0);
}

uint64_t sub_2271C7068(uint64_t a1)
{
  v22 = v1;
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 152);
    v5 = *(v1 + 120);
    v6 = *(v1 + 128);
    v7 = *(v1 + 285);
    v8 = *(v1 + 48);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 134218242;
    *(v9 + 4) = *(v8 + 16);

    *(v9 + 12) = 2080;
    *(v1 + 284) = v7 & 1;
    v11 = sub_22766C060();
    v13 = sub_226E97AE8(v11, v12, &v21);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v2, v3, "AchievementSystem received request to run incremental evaluation for %ld sessions with origin %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v14 = *(v6 + 8);
    v14(v4, v5);
  }

  else
  {
    v15 = *(v1 + 152);
    v16 = *(v1 + 120);
    v17 = *(v1 + 128);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v1 + 160) = v14;
  if (sub_226EAE084("AchievementSystem is not active, not running incremental evaluation."))
  {
    v18 = swift_task_alloc();
    *(v1 + 168) = v18;
    *v18 = v1;
    v18[1] = sub_2271C7308;

    return sub_2271CAC48();
  }

  else
  {

    v20 = *(v1 + 8);

    return v20();
  }
}

uint64_t sub_2271C7308()
{

  return MEMORY[0x2822009F8](sub_2271C7404, 0, 0);
}

uint64_t sub_2271C7404()
{
  v35 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = sub_2274CD7B8(*(v1 + 16), 0);
    sub_2274CE0E4(&v34, &v4[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2, v1);
    v6 = v5;
    v7 = v34;

    sub_226EBB21C(v7);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v34 = v4;
  sub_2271D61EC(&v34);
  v8 = v34;
  *(v0 + 176) = v34;
  v9 = *(v8 + 2);
  *(v0 + 184) = v9;
  if (v9)
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v11 + 16);
    v11 += 16;
    v13 = *(v11 + 64);
    *(v0 + 280) = v13;
    v14 = (v13 + 32) & ~v13;
    *(v0 + 192) = *(v11 + 56);
    *(v0 + 200) = v12;
    *(v0 + 208) = MEMORY[0x277D84FA0];
    *(v0 + 216) = 0;
    v15 = *(v0 + 112);
    *(v0 + 224) = v11 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v15, &v8[v14], v10);
    v16 = swift_task_alloc();
    *(v0 + 232) = v16;
    *v16 = v0;
    v16[1] = sub_2271C7820;
    v17 = *(v0 + 112);

    return sub_2271CB0B0(v17);
  }

  else
  {

    *(v0 + 256) = MEMORY[0x277D84FA0];
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 64);
    v22 = sub_2276693C0();
    (*(v20 + 104))(v19, *MEMORY[0x277D4F8A8], v21);
    v23 = sub_226EC9A38(v19, v22);

    (*(v20 + 8))(v19, v21);
    if (v23)
    {
      v24 = swift_task_alloc();
      *(v0 + 264) = v24;
      *v24 = v0;
      v24[1] = sub_2271C7C90;
      v25 = MEMORY[0x277D84FA0];

      return sub_2271CCBB8(v25);
    }

    else
    {

      sub_22766A610();
      v26 = sub_22766B380();
      v27 = sub_22766C8B0();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 160);
      v30 = *(v0 + 144);
      v31 = *(v0 + 120);
      if (v28)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_226E8E000, v26, v27, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v32, 2u);
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      v29(v30, v31);

      v33 = *(v0 + 8);

      return v33();
    }
  }
}

uint64_t sub_2271C7820(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_2271C7F98;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_2271C7948;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271C7948()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_2273FB564(*(v0 + 248), *(v0 + 208));
  v5 = v4;
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 216) + 1;
  if (v6 == *(v0 + 184))
  {

    *(v0 + 256) = v5;
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);
    v10 = sub_2276693C0();
    (*(v8 + 104))(v7, *MEMORY[0x277D4F8A8], v9);
    v11 = sub_226EC9A38(v7, v10);

    (*(v8 + 8))(v7, v9);
    if (v11)
    {
      v12 = swift_task_alloc();
      *(v0 + 264) = v12;
      *v12 = v0;
      v12[1] = sub_2271C7C90;

      return sub_2271CCBB8(v5);
    }

    else
    {

      sub_22766A610();
      v20 = sub_22766B380();
      v21 = sub_22766C8B0();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 160);
      v24 = *(v0 + 144);
      v25 = *(v0 + 120);
      if (v22)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_226E8E000, v20, v21, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v26, 2u);
        MEMORY[0x22AA9A450](v26, -1, -1);
      }

      v23(v24, v25);

      v27 = *(v0 + 8);

      return v27();
    }
  }

  else
  {
    *(v0 + 208) = v5;
    *(v0 + 216) = v6;
    v14 = *(v0 + 200);
    v15 = *(v0 + 112);
    v16 = *(v0 + 88);
    v17 = *(v0 + 176) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 192) * v6;
    *(v0 + 224) = (*(v0 + 96) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v15, v17, v16);
    v18 = swift_task_alloc();
    *(v0 + 232) = v18;
    *v18 = v0;
    v18[1] = sub_2271C7820;
    v19 = *(v0 + 112);

    return sub_2271CB0B0(v19);
  }
}

uint64_t sub_2271C7C90()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 272) = v3;
  *v3 = v2;
  v3[1] = sub_2271C7DEC;

  return sub_2271C8B40();
}

uint64_t sub_2271C7DEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C7F98(uint64_t a1)
{
  v62 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 200);
  v5 = *(v1 + 104);
  v4 = *(v1 + 112);
  v6 = *(v1 + 88);
  sub_22766A610();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v55 = *(v1 + 240);
    v58 = *(v1 + 136);
    v59 = *(v1 + 112);
    v60 = *(v1 + 160);
    v11 = *(v1 + 96);
    v10 = *(v1 + 104);
    v12 = *(v1 + 88);
    v57 = *(v1 + 120);
    v13 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = v56;
    *v13 = 136315394;
    v14 = sub_2276644D0();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_226E97AE8(v14, v16, &v61);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v19 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v21 = sub_226E97AE8(v19, v20, &v61);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v8, v9, "Failed to evaluate earned instances for session %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v56, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v60(v58, v57);
    v17(v59, v12);
  }

  else
  {
    v22 = *(v1 + 240);
    v23 = *(v1 + 160);
    v24 = *(v1 + 136);
    v26 = *(v1 + 112);
    v25 = *(v1 + 120);
    v27 = v8;
    v28 = *(v1 + 96);
    v29 = *(v1 + 104);
    v30 = *(v1 + 88);

    v31 = *(v28 + 8);
    v31(v29, v30);
    v23(v24, v25);
    v31(v26, v30);
  }

  v32 = *(v1 + 208);
  v33 = *(v1 + 216) + 1;
  if (v33 == *(v1 + 184))
  {

    *(v1 + 256) = v32;
    v35 = *(v1 + 72);
    v34 = *(v1 + 80);
    v36 = *(v1 + 64);
    v37 = sub_2276693C0();
    (*(v35 + 104))(v34, *MEMORY[0x277D4F8A8], v36);
    v38 = sub_226EC9A38(v34, v37);

    (*(v35 + 8))(v34, v36);
    if (v38)
    {
      v39 = swift_task_alloc();
      *(v1 + 264) = v39;
      *v39 = v1;
      v39[1] = sub_2271C7C90;

      return sub_2271CCBB8(v32);
    }

    else
    {

      sub_22766A610();
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();
      v49 = os_log_type_enabled(v47, v48);
      v50 = *(v1 + 160);
      v51 = *(v1 + 144);
      v52 = *(v1 + 120);
      if (v49)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_226E8E000, v47, v48, "[EarnedInstanceArchival] Current platform does not support achievements archiving", v53, 2u);
        MEMORY[0x22AA9A450](v53, -1, -1);
      }

      v50(v51, v52);

      v54 = *(v1 + 8);

      return v54();
    }
  }

  else
  {
    *(v1 + 208) = v32;
    *(v1 + 216) = v33;
    v41 = *(v1 + 200);
    v42 = *(v1 + 112);
    v43 = *(v1 + 88);
    v44 = *(v1 + 176) + ((*(v1 + 280) + 32) & ~*(v1 + 280)) + *(v1 + 192) * v33;
    *(v1 + 224) = (*(v1 + 96) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v42, v44, v43);
    v45 = swift_task_alloc();
    *(v1 + 232) = v45;
    *v45 = v1;
    v45[1] = sub_2271C7820;
    v46 = *(v1 + 112);

    return sub_2271CB0B0(v46);
  }
}

uint64_t sub_2271C850C(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v3 = sub_22766B390();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C85CC, 0, 0);
}

uint64_t sub_2271C85CC(uint64_t a1)
{
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received WorkoutPlanCompleted event", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[12] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[13] = v9;
    *v9 = v1;
    v9[1] = sub_2271C8800;

    return sub_2271C60BC();
  }

  else
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    v1[14] = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      v1[15] = v12;
      *v12 = v1;
      v12[1] = sub_2271C8A08;

      return sub_2271C8B40();
    }

    else
    {

      v13 = v1[1];

      return v13();
    }
  }
}

uint64_t sub_2271C8800()
{

  return MEMORY[0x2822009F8](sub_2271C8918, 0, 0);
}

uint64_t sub_2271C8918()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_2271C8A08;

    return sub_2271C8B40();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2271C8A08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C8B40()
{
  v1[22] = v0;
  v2 = sub_22766B390();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C8C0C, 0, 0);
}

uint64_t sub_2271C8C0C(uint64_t a1)
{
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting progress update", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[26];
  v6 = v1[23];
  v7 = v1[24];
  v8 = v1[22];

  v9 = *(v7 + 8);
  v1[27] = v9;
  v9(v5, v6);
  v10 = *(v8 + 456);
  sub_227669DE0();
  sub_227669D80();
  v11 = sub_22766BFD0();
  v1[28] = v11;

  v1[2] = v1;
  v1[7] = v1 + 30;
  v1[3] = sub_2271C8E00;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_226ECD448;
  v1[13] = &block_descriptor_60;
  v1[14] = v12;
  [v10 requestProgressUpdateForProgressProviderIdentifier:v11 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2271C8E00()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_2271C8F80;
  }

  else
  {
    v2 = sub_2271C8F10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271C8F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271C8F80(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  swift_willThrow();

  sub_22766A610();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 232);
    v19 = *(v1 + 200);
    v20 = *(v1 + 216);
    v8 = *(v1 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v1 + 152), *(v1 + 160));
    v13 = sub_226E97AE8(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to request progress update: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    v20(v19, v8);
  }

  else
  {
    v14 = *(v1 + 216);
    v15 = *(v1 + 200);
    v16 = *(v1 + 184);

    v14(v15, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_2271C9194()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2271C927C;

    return sub_2271C60BC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2271C927C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2271C9390(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_227668390();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C9450, 0, 0);
}

uint64_t sub_2271C9450()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_22766A580();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_2271C955C;
    v3 = v0[9];

    return sub_2271C96DC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271C955C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2271C96DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227664530();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_227668390();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271C98D0, 0, 0);
}

uint64_t sub_2271C98D0()
{
  v44 = v0;
  v1 = *(v0 + 80);
  v39 = *(v0 + 72);
  v42 = *(v0 + 112);
  v2 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 568), *(*(v0 + 24) + 592));
  *(v0 + 256) = 23;
  *(v0 + 160) = sub_226F19410();
  *(v0 + 168) = sub_226F19464();
  sub_22766A130();
  sub_22766A610();
  v3 = *(v1 + 16);
  *(v0 + 176) = v3;
  *(v0 + 184) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = v39;
  v40 = v3;
  v3(v42, v2, v4);
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  if (v7)
  {
    v38 = *(v0 + 120);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    v35 = sub_227668350();
    v37 = v8;
    v17 = v16;
    v36 = v6;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = sub_226E97AE8(v35, v17, &v43);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v5, v36, "AchievementSystem received request to run incremental evaluation for HealthKitStandaloneJob %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v20 = *(v9 + 8);
    v20(v37, v38);
  }

  else
  {

    v18 = *(v13 + 8);
    v18(v11, v12);
    v20 = *(v9 + 8);
    v20(v8, v10);
  }

  *(v0 + 192) = v18;
  *(v0 + 200) = v20;
  v21 = *(v0 + 104);
  v22 = *(v0 + 80);
  v23 = *(v0 + 72);
  v25 = *(v0 + 16);
  v24 = *(v0 + 24);
  v26 = v24[39];
  v27 = v24[40];
  __swift_project_boxed_opaque_existential_0(v24 + 36, v26);
  v40(v21, v25, v23);
  v28 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v29 = swift_allocObject();
  *(v0 + 208) = v29;
  *(v29 + 16) = v24;
  (*(v22 + 32))(v29 + v28, v21, v23);
  v30 = *(v27 + 24);

  v41 = (v30 + *v30);
  v31 = swift_task_alloc();
  *(v0 + 216) = v31;
  *v31 = v0;
  v31[1] = sub_2271C9CD0;
  v32 = *(v0 + 64);
  v33 = *(v0 + 32);

  return (v41)(v32, sub_2271D7E1C, v29, v33, v26, v27);
}

uint64_t sub_2271C9CD0()
{

  if (v0)
  {

    v1 = sub_2271CA690;
  }

  else
  {

    v1 = sub_2271C9E18;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2271C9E18()
{
  v41 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_226E93170(v2, v1, &qword_27D7B8E60, &unk_2276724B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 16);
    sub_226E97D1C(*(v0 + 56), &qword_27D7B8E60, &unk_2276724B0);
    sub_22766A610();
    v5(v6, v8, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    v13 = *(v0 + 136);
    v39 = *(v0 + 192);
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    v16 = *(v0 + 72);
    v17 = *(v0 + 64);
    if (v11)
    {
      v38 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v37 = v14;
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      sub_2271D7AA0(&qword_27D7BC0B8, MEMORY[0x277D53480], MEMORY[0x277D53498]);
      v35 = v12;
      v36 = v17;
      v20 = sub_22766D140();
      v22 = v21;
      v39(v15, v16);
      v23 = sub_226E97AE8(v20, v22, &v40);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_226E8E000, v9, v10, "No ArchivedSession found for standalone workout job %s, skipping evaluation", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);

      v35(v38, v37);
      v24 = v36;
    }

    else
    {

      v39(v15, v16);
      v12(v13, v14);
      v24 = v17;
    }

    sub_226E97D1C(v24, &qword_27D7B8E60, &unk_2276724B0);
    __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 568), *(*(v0 + 24) + 592));
    *(v0 + 257) = 23;
    sub_22766A120();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v25 = *(v0 + 48);
    v26 = *(v0 + 32);
    v27 = *(v0 + 40);
    (*(v27 + 32))(v25, *(v0 + 56), v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_227670CD0;
    (*(v27 + 16))(v29 + v28, v25, v26);
    v30 = sub_226F40EB0(v29);
    *(v0 + 224) = v30;
    swift_setDeallocating();
    v31 = *(v27 + 8);
    *(v0 + 232) = v31;
    *(v0 + 240) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v29 + v28, v26);
    swift_deallocClassInstance();
    v32 = swift_task_alloc();
    *(v0 + 248) = v32;
    *v32 = v0;
    v32[1] = sub_2271CA340;

    return sub_2271C6EC8(v30, 0);
  }
}

uint64_t sub_2271CA340()
{

  return MEMORY[0x2822009F8](sub_2271CA458, 0, 0);
}

uint64_t sub_2271CA458(uint64_t a1)
{
  sub_22766A710();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Finished running incremental evaulation", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v14 = *(v1 + 232);
  v5 = *(v1 + 200);
  v6 = *(v1 + 144);
  v7 = *(v1 + 120);
  v8 = *(v1 + 64);
  v9 = *(v1 + 48);
  v11 = *(v1 + 24);
  v10 = *(v1 + 32);

  v5(v6, v7);
  v14(v9, v10);
  sub_226E97D1C(v8, &qword_27D7B8E60, &unk_2276724B0);
  __swift_project_boxed_opaque_existential_0((v11 + 568), *(v11 + 592));
  *(v1 + 258) = 23;
  sub_22766A120();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_2271CA690()
{
  v41 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_226E93170(v2, v1, &qword_27D7B8E60, &unk_2276724B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 176);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 16);
    sub_226E97D1C(*(v0 + 56), &qword_27D7B8E60, &unk_2276724B0);
    sub_22766A610();
    v5(v6, v8, v7);
    v9 = sub_22766B380();
    v10 = sub_22766C8B0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 200);
    v13 = *(v0 + 136);
    v39 = *(v0 + 192);
    v14 = *(v0 + 120);
    v15 = *(v0 + 96);
    v16 = *(v0 + 72);
    v17 = *(v0 + 64);
    if (v11)
    {
      v38 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v37 = v14;
      v19 = swift_slowAlloc();
      v40 = v19;
      *v18 = 136315138;
      sub_2271D7AA0(&qword_27D7BC0B8, MEMORY[0x277D53480], MEMORY[0x277D53498]);
      v35 = v12;
      v36 = v17;
      v20 = sub_22766D140();
      v22 = v21;
      v39(v15, v16);
      v23 = sub_226E97AE8(v20, v22, &v40);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_226E8E000, v9, v10, "No ArchivedSession found for standalone workout job %s, skipping evaluation", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA9A450](v19, -1, -1);
      MEMORY[0x22AA9A450](v18, -1, -1);

      v35(v38, v37);
      v24 = v36;
    }

    else
    {

      v39(v15, v16);
      v12(v13, v14);
      v24 = v17;
    }

    sub_226E97D1C(v24, &qword_27D7B8E60, &unk_2276724B0);
    __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 568), *(*(v0 + 24) + 592));
    *(v0 + 257) = 23;
    sub_22766A120();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v25 = *(v0 + 48);
    v26 = *(v0 + 32);
    v27 = *(v0 + 40);
    (*(v27 + 32))(v25, *(v0 + 56), v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_227670CD0;
    (*(v27 + 16))(v29 + v28, v25, v26);
    v30 = sub_226F40EB0(v29);
    *(v0 + 224) = v30;
    swift_setDeallocating();
    v31 = *(v27 + 8);
    *(v0 + 232) = v31;
    *(v0 + 240) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v29 + v28, v26);
    swift_deallocClassInstance();
    v32 = swift_task_alloc();
    *(v0 + 248) = v32;
    *v32 = v0;
    v32[1] = sub_2271CA340;

    return sub_2271C6EC8(v30, 0);
  }
}

uint64_t sub_2271CABB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271CAC48();
}

uint64_t sub_2271CAC68()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 16) + 48), *(*(v0 + 16) + 72));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2271CAD08;

  return sub_226EB91E0();
}

uint64_t sub_2271CAD08(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2271CAE08, 0, 0);
}

uint64_t sub_2271CAE08()
{
  v1 = *(v0 + 16);
  sub_2271C4AB0(*(v0 + 32));
  v3 = sub_226F3E6A8(v2);

  *(v0 + 48) = 0;
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v0 + 48;
  sub_2276696A0();

  if (*(v0 + 48) == 1)
  {
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_2271CAF84;
    v6 = *(v0 + 32);

    return sub_2271D4B18(v6);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2271CAF84()
{

  return MEMORY[0x2822009F8](sub_2271CB09C, 0, 0);
}

uint64_t sub_2271CB0B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766A490();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_227662750();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730);
  v2[10] = swift_task_alloc();
  v5 = sub_22766A8A0();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_22766B390();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = sub_227667A70();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CB354, 0, 0);
}

uint64_t sub_2271CB354(uint64_t a1)
{
  v2 = sub_2276644D0();
  v4 = v3;
  v1[25] = v2;
  v1[26] = v3;
  v5 = swift_task_alloc();
  v1[27] = v5;
  *v5 = v1;
  v5[1] = sub_2271CB408;

  return sub_2271D5554(v2, v4);
}

uint64_t sub_2271CB408()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2271CC990;
  }

  else
  {
    v2 = sub_2271CB51C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271CB51C()
{
  __swift_project_boxed_opaque_existential_0((v0[3] + 464), *(v0[3] + 488));
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_2271CB5C4;
  v2 = v0[24];

  return sub_226ECA330(v2);
}

uint64_t sub_2271CB5C4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_2271CBB18;
  }

  else
  {
    v2 = sub_2271CB6E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271CB6E0(uint64_t a1)
{
  v49 = v1;
  v2 = v1[23];
  v3 = v1[24];
  v4 = v1[17];
  v5 = v1[18];
  sub_22766A610();
  v6 = *(v5 + 16);
  v1[31] = v6;
  v1[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v3, v4);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[23];
  if (v9)
  {
    v44 = v8;
    v11 = v1[22];
    v13 = v1[17];
    v12 = v1[18];
    v45 = v1[15];
    v46 = v1[14];
    v47 = v1[16];
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_22766C060();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_226E97AE8(v15, v17, &v48);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v7, v44, "[Incremental Evaluation] Existing environment cache to evaluate against: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AA9A450](v43, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v45 + 8))(v47, v46);
  }

  else
  {
    v20 = v1[17];
    v21 = v1[18];
    v23 = v1[15];
    v22 = v1[16];
    v24 = v1[14];

    v18 = *(v21 + 8);
    v18(v10, v20);
    (*(v23 + 8))(v22, v24);
  }

  v1[33] = v18;
  v26 = v1[12];
  v25 = v1[13];
  v27 = v1[11];
  sub_2276679A0();
  v28 = sub_2276693C0();
  (*(v26 + 104))(v25, *MEMORY[0x277D4F8A8], v27);
  v29 = sub_226EC9A38(v25, v28);

  (*(v26 + 8))(v25, v27);
  if (v29)
  {
    v30 = swift_task_alloc();
    v1[34] = v30;
    *v30 = v1;
    v30[1] = sub_2271CBC0C;
    v31 = v1[21];
    v32 = v1[2];

    return sub_2271D3180(v32, v31);
  }

  else
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_22766CD20())
    {
      sub_226F4F854(MEMORY[0x277D84F90]);
    }

    else
    {
      v34 = MEMORY[0x277D84FA0];
    }

    v1[36] = v34;
    v36 = v1[25];
    v35 = v1[26];
    v37 = v1[3];
    v38 = v37[44];
    v39 = v37[45];
    __swift_project_boxed_opaque_existential_0(v37 + 41, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v40 = swift_allocObject();
    v1[37] = v40;
    *(v40 + 16) = xmmword_227670CD0;
    *(v40 + 32) = v36;
    *(v40 + 40) = v35;

    v41 = swift_task_alloc();
    v1[38] = v41;
    v42 = *(v39 + 8);
    *v41 = v1;
    v41[1] = sub_2271CBE24;

    return MEMORY[0x2821AED70](v40, v38, v42);
  }
}

uint64_t sub_2271CBB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271CBC0C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return MEMORY[0x2822009F8](sub_2271CBD0C, 0, 0);
}

uint64_t sub_2271CBD0C()
{
  v0[36] = v0[35];
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[3];
  v4 = v3[44];
  v5 = v3[45];
  __swift_project_boxed_opaque_existential_0(v3 + 41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v6 = swift_allocObject();
  v0[37] = v6;
  *(v6 + 16) = xmmword_227670CD0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  v7 = swift_task_alloc();
  v0[38] = v7;
  v8 = *(v5 + 8);
  *v7 = v0;
  v7[1] = sub_2271CBE24;

  return MEMORY[0x2821AED70](v6, v4, v8);
}

uint64_t sub_2271CBE24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {

    v4 = sub_2271CCA8C;
  }

  else
  {
    v4 = sub_2271CBF80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271CBF80()
{
  v1 = v0[39];
  __swift_project_boxed_opaque_existential_0((v0[3] + 464), *(v0[3] + 488));
  if (*(v1 + 16))
  {
    v2 = sub_226E92000(v0[25], v0[26]);
    v4 = v3;

    v5 = v0[10];
    if (v4)
    {
      v6 = *(v0[39] + 56);
      v7 = sub_22766A4C0();
      v8 = *(v7 - 8);
      (*(v8 + 16))(v5, v6 + *(v8 + 72) * v2, v7);

      (*(v8 + 56))(v5, 0, 1, v7);
    }

    else
    {

      v11 = sub_22766A4C0();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }
  }

  else
  {
    v9 = v0[10];

    v10 = sub_22766A4C0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_2271CC1C4;
  v13 = v0[20];
  v14 = v0[21];
  v15 = v0[10];
  v16 = v0[2];

  return sub_226FB4D90(v13, v16, v14, v15);
}

uint64_t sub_2271CC1C4()
{
  v2 = *(*v1 + 80);
  *(*v1 + 336) = v0;

  sub_226E97D1C(v2, &qword_27D7B8E38, &qword_22767C730);
  if (v0)
  {

    v3 = sub_2271CC520;
  }

  else
  {
    v3 = sub_2271CC314;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271CC314(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = v1[3];
  sub_227662720();
  sub_2276679C0();
  (*(v3 + 8))(v2, v4);
  __swift_project_boxed_opaque_existential_0((v5 + 464), *(v5 + 488));
  v6 = swift_task_alloc();
  v1[43] = v6;
  *v6 = v1;
  v6[1] = sub_2271CC404;
  v7 = v1[19];

  return sub_226FB5BA4(v7);
}

uint64_t sub_2271CC404()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_2271CC838;
  }

  else
  {
    v2 = sub_2271CC64C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271CC520()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[17];
  v1(v0[21], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271CC64C()
{
  v1 = v0[33];
  v11 = v0[31];
  v14 = v0[24];
  v2 = v0[22];
  v3 = v0[19];
  v12 = v0[20];
  v13 = v0[21];
  v4 = v0[17];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  swift_getObjectType();
  v11(v2, v3, v4);
  sub_22766A480();
  sub_2276699D0();
  (*(v5 + 8))(v6, v7);
  v1(v3, v4);
  v1(v12, v4);
  v1(v13, v4);
  v1(v14, v4);

  v8 = v0[1];
  v9 = v0[36];

  return v8(v9);
}

uint64_t sub_2271CC838()
{
  v1 = v0[33];
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[17];
  v1(v0[19], v5);
  v1(v4, v5);
  v1(v3, v5);
  v1(v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271CC990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271CCA8C()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[17];
  v1(v0[21], v3);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2271CCBB8(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_22766B390();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CCC9C, 0, 0);
}

uint64_t sub_2271CCC9C()
{
  if (*(v0[24] + 16) == 1)
  {
    v1 = v0[23];
    if ((v1 & 0xC000000000000001) != 0)
    {
      if (sub_22766CD20())
      {
LABEL_4:
        sub_22766A610();

        v2 = sub_22766B380();
        v3 = sub_22766C8B0();
        if (os_log_type_enabled(v2, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 134217984;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v5 = sub_22766CD20();
          }

          else
          {
            v5 = *(v0[23] + 16);
          }

          *(v4 + 4) = v5;

          _os_log_impl(&dword_226E8E000, v2, v3, "Add [%ld] earned instances", v4, 0xCu);
          MEMORY[0x22AA9A450](v4, -1, -1);
        }

        else
        {
        }

        v8 = v0[30];
        v9 = v0[25];
        v10 = v0[26];
        v11 = v0[23];
        v12 = v0[24];
        v13 = *(v10 + 8);
        v0[31] = v13;
        v0[32] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v13(v8, v9);

        v15 = sub_2271C4D60(v14);
        v16 = sub_2271C4850(v15);

        v0[21] = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_22713AA40();
        v17 = sub_22766BF70();
        v19 = v18;

        v0[33] = v17;
        v0[34] = v19;
        v20 = *(v12 + 456);
        sub_22726CD6C(v11);
        sub_226E99364(0, &qword_27D7B89C0, 0x277CE8D38);
        v21 = sub_22766C2B0();
        v0[35] = v21;

        v0[2] = v0;
        v0[7] = v0 + 37;
        v0[3] = sub_2271CD00C;
        v22 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_226ECD448;
        v0[13] = &block_descriptor_63;
        v0[14] = v22;
        [v20 addEarnedInstances:v21 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }
    }

    else if (*(v1 + 16))
    {
      goto LABEL_4;
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2271CD00C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {

    v2 = sub_2271CD3E4;
  }

  else
  {
    v2 = sub_2271CD124;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271CD124()
{
  v24 = v0;
  v1 = *(v0 + 296);

  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184) & 0xC000000000000001;
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    if (v4)
    {
      v6 = sub_22766CD20();
    }

    else
    {
      v6 = *(*(v0 + 184) + 16);
    }

    *(v5 + 4) = v6;

    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_226E8E000, v2, v3, "Added [%ld] earned instances to client with result: %{BOOL}d", v5, 0x12u);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  else
  {
  }

  (*(v0 + 248))(*(v0 + 232), *(v0 + 200));
  sub_22766A610();

  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 272);
  if (v9)
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 248);
    v13 = *(v0 + 224);
    v14 = *(v0 + 200);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_226E97AE8(v11, v10, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v7, v8, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v12(v13, v14);
  }

  else
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2271CD3E4(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  swift_willThrow();

  sub_22766A610();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 288);
    v20 = *(v1 + 248);
    v8 = *(v1 + 216);
    v9 = *(v1 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](*(v1 + 152), *(v1 + 160));
    v14 = sub_226E97AE8(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to add earnedInstances to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v20(v8, v9);
  }

  else
  {
    v15 = *(v1 + 248);
    v16 = *(v1 + 216);
    v17 = *(v1 + 200);

    v15(v16, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2271CD5D8()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = sub_22766A8A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16) == 1)
  {
    v12 = sub_2276693C0();
    (*(v9 + 104))(v11, *MEMORY[0x277D4F8D0], v8);
    v13 = sub_226EC9A38(v11, v12);

    (*(v9 + 8))(v11, v8);
    if (v13)
    {
      return 1;
    }

    sub_22766A610();
    v15 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (!os_log_type_enabled(v15, v18))
    {
      v4 = v7;
      goto LABEL_10;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v18, "Current platform does not support achievements evaluating", v17, 2u);
    v4 = v7;
    goto LABEL_8;
  }

  sub_22766A610();
  v15 = sub_22766B380();
  v16 = sub_22766C890();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226E8E000, v15, v16, "AchievementSystem is not active, not running historical evaluation.", v17, 2u);
LABEL_8:
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

LABEL_10:

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t sub_2271CD8A4()
{
  v1[6] = v0;
  v2 = sub_227665D10();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_227662750();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_22766B390();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CDA28, 0, 0);
}

uint64_t sub_2271CDA28(uint64_t a1)
{
  sub_22766A610();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Requesting catalog sync", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[6];

  v9 = *(v7 + 8);
  v1[17] = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_0((v8 + 416), *(v8 + 440));
  v10 = sub_227666340();
  sub_227662740();
  v11 = swift_task_alloc();
  v1[18] = v11;
  *v11 = v1;
  v11[1] = sub_2271CDB94;
  v12 = v1[12];

  return sub_2273A75C8(v10, v12);
}

uint64_t sub_2271CDB94()
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CDD50, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_2271CDD50(uint64_t a1)
{
  v29 = v1;
  v2 = *(v1 + 152);
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = *(v1 + 136);
    v6 = *(v1 + 120);
    v7 = *(v1 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v12 = sub_226E97AE8(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Catalog sync request finished with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v27(v6, v7);
  }

  else
  {
    v13 = *(v1 + 136);
    v14 = *(v1 + 120);
    v15 = *(v1 + 104);

    v13(v14, v15);
  }

  v17 = *(v1 + 64);
  v16 = *(v1 + 72);
  v18 = *(v1 + 56);
  v19 = *(v17 + 104);
  v19(v16, *MEMORY[0x277D51DE8], v18);
  sub_2271D7AA0(&qword_28139B718, MEMORY[0x277D51E08], MEMORY[0x277D51E00]);
  v20 = sub_2276660E0();
  v21 = *(v17 + 8);
  v21(v16, v18);
  if (v20 & 1) != 0 || (v22 = *(v1 + 72), v23 = *(v1 + 56), v19(v22, *MEMORY[0x277D51DF0], v23), v24 = sub_2276660E0(), v21(v22, v23), (v24))
  {

    v25 = *(v1 + 8);
  }

  else
  {
    swift_willThrow();

    v25 = *(v1 + 8);
  }

  return v25();
}

uint64_t sub_2271CE090(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_227667A70();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CE154, 0, 0);
}

uint64_t sub_2271CE154()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 80) + 48), *(*(v0 + 80) + 72));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_2271CE1F4;

  return sub_226EB91E0();
}

uint64_t sub_2271CE1F4(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_2271CE2F4, 0, 0);
}

uint64_t sub_2271CE2F4()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_227669DE0();
  if (sub_227669D90() == v2 && v3 == v1)
  {
  }

  else
  {
    v5 = sub_22766D190();

    if ((v5 & 1) == 0)
    {
      v7 = v0[8];
      v6 = v0[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      v0[18] = inited;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v7;
      *(inited + 40) = v6;

      v9 = swift_task_alloc();
      v0[19] = v9;
      *v9 = v0;
      v9[1] = sub_2271CE6FC;

      return sub_226EB6FEC(inited);
    }
  }

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_2271CE498;
  v12 = v0[13];

  return sub_2271CF294(v12);
}

uint64_t sub_2271CE498()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_2271CE974;
  }

  else
  {
    v2 = sub_2271CE5B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271CE5B4()
{
  v1 = v0[17];
  sub_226E99364(0, &qword_281398B18, 0x277CE8CB0);
  v2 = sub_22766C8E0();
  (*(v0[12] + 8))(v0[13], v0[11]);

  if (v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    sub_22766C8D0();
    ACHApplyBadgePropertiesToAchievement();
    v6 = ACHCodableFromAchievement();

    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_2271CE6FC(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 160) = a1;

  swift_setDeallocating();
  sub_226FA6DA4(v2 + 32);

  return MEMORY[0x2822009F8](sub_2271CE824, 0, 0);
}

uint64_t sub_2271CE824()
{
  sub_226E99364(0, &qword_281398B18, 0x277CE8CB0);
  v1 = sub_22766C8C0();

  v2 = v1;
  sub_22766C8D0();
  ACHApplyBadgePropertiesToAchievement();
  v3 = ACHCodableFromAchievement();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2271CE974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271CE9D8(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  swift_willThrow();

  sub_22766A610();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 248);
    v8 = *(v1 + 200);
    v20 = *(v1 + 208);
    v9 = *(v1 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](*(v1 + 152), *(v1 + 160));
    v14 = sub_226E97AE8(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to populate progress and goal to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = *(v1 + 200);
    v15 = *(v1 + 208);
    v17 = *(v1 + 192);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2271CEBC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227667A70();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CECE0, 0, 0);
}

uint64_t sub_2271CECE0(uint64_t a1)
{
  v18 = v1;
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v8 = v1[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x22AA98660](v8, MEMORY[0x277D837D0]);
    v13 = sub_226E97AE8(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v2, v3, "Fetching SeymourAchievementProgress for templateUniqueNames: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v14 = swift_task_alloc();
  v1[10] = v14;
  *v14 = v1;
  v14[1] = sub_2271CEEA8;
  v15 = v1[6];

  return sub_2271CF294(v15);
}

uint64_t sub_2271CEEA8()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CF224, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_2271CF018;
    v4 = v2[2];

    return sub_226EB6FEC(v4);
  }
}

uint64_t sub_2271CF018(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2271CF118, 0, 0);
}

uint64_t sub_2271CF118()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  sub_226FDF394(sub_2271D7A84, v5, v1);
  v7 = v6;

  v8 = sub_226F44640(v7);

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2271CF224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271CF294(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CF354, 0, 0);
}

uint64_t sub_2271CF354()
{
  __swift_project_boxed_opaque_existential_0((v0[7] + 464), *(v0[7] + 488));
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_2271CF3FC;
  v2 = v0[6];

  return sub_226ECA330(v2);
}

uint64_t sub_2271CF3FC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271CF538, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2271CF538(uint64_t a1)
{
  v20 = v1;
  v2 = v1[12];
  sub_22766A610();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[9];
    v6 = v1[10];
    v8 = v1[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v1[3], v1[4]);
    v13 = sub_226E97AE8(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "AchievementEnvironmentCache query failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[9];
    v14 = v1[10];
    v16 = v1[8];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

void *sub_2271CF70C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v55 - v8;
  v9 = sub_2276667B0();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_22766A610();
  v16 = v15;
  v17 = sub_22766B380();
  LODWORD(v15) = sub_22766C8B0();

  v62 = v15;
  v18 = os_log_type_enabled(v17, v15);
  v19 = &off_2785D6000;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v60 = v3;
    v21 = v20;
    v56 = swift_slowAlloc();
    *&v66[0] = v56;
    *v21 = 136315650;
    v22 = [v16 templateUniqueName];
    v23 = sub_22766C000();
    v57 = v11;
    v58 = a2;
    v24 = v23;
    v26 = v25;

    v27 = sub_226E97AE8(v24, v26, v66);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = [v16 progressQuantity];
    v68 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A8, &qword_22767C670);
    v29 = sub_22766CB80();
    v59 = a3;
    v31 = v30;

    v32 = sub_226E97AE8(v29, v31, v66);

    *(v21 + 14) = v32;
    *(v21 + 22) = 2080;
    v33 = [v16 goalQuantity];
    v68 = v33;
    v34 = sub_22766CB80();
    v36 = v35;

    v37 = sub_226E97AE8(v34, v36, v66);
    a3 = v59;

    *(v21 + 24) = v37;
    v19 = &off_2785D6000;
    _os_log_impl(&dword_226E8E000, v17, v62, "Fetched progressUpdate %s with progress: %s goal: %s", v21, 0x20u);
    v38 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v38, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    (*(v12 + 8))(v14, v57);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v39 = [v16 v19[476]];
  v40 = sub_22766C000();
  v42 = v41;

  sub_227669DE0();
  if (v40 == sub_227669DC0() && v42 == v43)
  {
  }

  else
  {
    v44 = sub_22766D190();

    if ((v44 & 1) == 0)
    {
      result = sub_22766CA50();
      v54 = v66[1];
      *a3 = v66[0];
      *(a3 + 16) = v54;
      v53 = v67;
      goto LABEL_12;
    }
  }

  v45 = v63;
  sub_2276679D0();
  v47 = v64;
  v46 = v65;
  if ((*(v64 + 48))(v45, 1, v65) == 1)
  {
    sub_226E97D1C(v45, &qword_27D7B8E40, &unk_227685580);
    result = sub_2276679E0();
    *a3 = xmmword_22767C490;
    *(a3 + 16) = result;
    *(a3 + 24) = 0;
    *(a3 + 32) = 1;
    return result;
  }

  v49 = v61;
  (*(v47 + 32))(v61, v45, v46);
  v50 = ~sub_227666780();
  v51 = sub_2276667A0();
  v52 = sub_2276679E0();
  result = (*(v47 + 8))(v49, v46);
  *a3 = v51;
  *(a3 + 8) = v50 & 1;
  *(a3 + 16) = v52;
  *(a3 + 24) = 0;
  v53 = 1;
LABEL_12:
  *(a3 + 32) = v53;
  return result;
}

uint64_t sub_2271CFC7C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_227664AB0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22766B390();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_2276682A0();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271CFE10, 0, 0);
}

uint64_t sub_2271CFE10()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v1[39];
  v5 = v1[40];
  __swift_project_boxed_opaque_existential_0(v1 + 36, v4);
  v6 = swift_allocObject();
  v0[21] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = *(v5 + 24);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_2271CFF9C;
  v9 = v0[20];
  v10 = v0[18];

  return (v12)(v9, sub_2271D7ED0, v6, v10, v4, v5);
}

uint64_t sub_2271CFF9C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2271D0278;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v3 = sub_2271D00D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2271D00D0(uint64_t a1)
{
  v15 = v1;
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[17];
  v6 = v1[13];
  v7 = v1[14];
  if (v4)
  {
    v9 = v1[7];
    v8 = v1[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_226E97AE8(v9, v8, &v14);
    _os_log_impl(&dword_226E8E000, v2, v3, "AchievementNotificationRecord found for %s, not eligible to present award toast", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v12 = v1[1];

  return v12(0);
}

uint64_t sub_2271D0278()
{
  v38 = v0;
  v1 = *(v0 + 184);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v14 = *(v0 + 184);

    sub_22766A610();

    v15 = v14;
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 104);
    if (v18)
    {
      v34 = *(v0 + 104);
      v36 = *(v0 + 120);
      v23 = *(v0 + 56);
      v22 = *(v0 + 64);
      v24 = *(v0 + 184);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_226E97AE8(v23, v22, &v37);
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v27 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
      v29 = sub_226E97AE8(v27, v28, &v37);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v16, v17, "AchievementNotificationRecord query for %s failed with error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);

      (*(v20 + 8))(v36, v34);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v30 = 0;
    goto LABEL_12;
  }

  if ((*(*(v0 + 88) + 88))(*(v0 + 96), *(v0 + 80)) != *MEMORY[0x277D50D30])
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    goto LABEL_6;
  }

  sub_22766A610();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 184);
  v7 = *(v0 + 128);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  if (v5)
  {
    v35 = *(v0 + 104);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v33 = v7;
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_226E97AE8(v11, v10, &v37);
    _os_log_impl(&dword_226E8E000, v3, v4, "%s is eligible for award toasting", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v8 + 8))(v33, v35);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v30 = 1;
LABEL_12:

  v31 = *(v0 + 8);

  return v31(v30);
}

uint64_t sub_2271D0690()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0);
  v1[3] = swift_task_alloc();
  v2 = sub_227667A70();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[6] = v3;
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_2271D07C0;

  return sub_2271CF294(v3);
}

uint64_t sub_2271D07C0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2271D0F00;
  }

  else
  {
    v2 = sub_2271D08D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D08D4()
{
  v1 = v0[2];
  sub_227669DE0();
  v2 = sub_227669D90();
  v4 = v3;
  v5 = v1[39];
  v6 = v1[40];
  __swift_project_boxed_opaque_existential_0(v1 + 36, v5);
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v12 = (*(v6 + 24) + **(v6 + 24));
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = sub_2276682A0();
  v0[11] = v9;
  *v8 = v0;
  v8[1] = sub_2271D0A74;
  v10 = v0[3];

  return v12(v10, sub_2271D7A68, v7, v9, v5, v6);
}

uint64_t sub_2271D0A74()
{
  *(*v1 + 96) = v0;

  if (v0)
  {

    v2 = sub_2271D0D5C;
  }

  else
  {

    v2 = sub_2271D0BBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D0BBC()
{
  v1 = v0[12];
  (*(*(v0[11] - 8) + 56))(v0[3], 0, 1);
  v2 = sub_227668C60();
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  if (v1)
  {
    sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v3;
    v10 = v2;
    sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
    (*(v5 + 8))(v4, v6);

    v11 = v0[1];

    return v11(v10, v9 & 1);
  }
}

uint64_t sub_2271D0D5C()
{
  (*(*(v0[11] - 8) + 56))(v0[3], 1, 1);
  v1 = sub_227668C60();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v6 = v5;
  v7 = v1;
  sub_226E97D1C(v0[3], &qword_27D7BC090, &qword_22767C5E0);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v7, v6 & 1);
}

uint64_t sub_2271D0F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271D0F70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2276682A0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v2[10] = *(v5 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D10A0, 0, 0);
}

uint64_t sub_2271D10A0(uint64_t a1)
{
  v43 = v1;
  v2 = v1[8];
  if (*(v1[3] + 16) == 1)
  {
    v3 = v1[4];
    v4 = v1[5];
    v5 = v1[2];
    sub_22766A610();
    v40 = *(v4 + 16);
    v40(v2, v5, v3);
    v6 = sub_22766B380();
    v7 = sub_22766C8B0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[10];
    v10 = v1[11];
    v12 = v1[8];
    v11 = v1[9];
    if (v8)
    {
      v13 = v1[7];
      v15 = v1[4];
      v14 = v1[5];
      v39 = v1[11];
      v16 = swift_slowAlloc();
      v38 = v11;
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136315138;
      v40(v13, v12, v15);
      v18 = sub_22766C060();
      v37 = v7;
      v20 = v19;
      (*(v14 + 8))(v12, v15);
      v21 = sub_226E97AE8(v18, v20, &v42);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_226E8E000, v6, v37, "AchievementSystem received request to update notification record with %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9A450](v17, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      (*(v9 + 8))(v39, v38);
    }

    else
    {
      v24 = v1[4];
      v25 = v1[5];

      (*(v25 + 8))(v12, v24);
      (*(v9 + 8))(v10, v11);
    }

    v27 = v1[6];
    v26 = v1[7];
    v28 = v1[4];
    v29 = v1[5];
    v30 = v1[2];
    v31 = v1[3];
    v32 = v31[40];
    __swift_project_boxed_opaque_existential_0(v31 + 36, v31[39]);
    v40(v26, v30, v28);
    v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v34 = swift_allocObject();
    v1[12] = v34;
    (*(v29 + 32))(v34 + v33, v26, v28);
    *(v34 + ((v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v35 = *(v32 + 24);

    v41 = (v35 + *v35);
    v36 = swift_task_alloc();
    v1[13] = v36;
    *v36 = v1;
    v36[1] = sub_2271D14A0;

    return v41();
  }

  else
  {

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_2271D14A0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226FA0548;
  }

  else
  {

    v2 = sub_2271D15BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D15BC()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 504), *(*(v0 + 24) + 528));
  sub_2271D7EE8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271D164C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B390();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D1710, 0, 0);
}

uint64_t sub_2271D1710(uint64_t a1)
{
  v22 = v1;
  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_226E97AE8(v9, v8, &v21);
    _os_log_impl(&dword_226E8E000, v2, v3, "AchievementSystem received request to delete notification record for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v13 = v1[3];
  v12 = v1[4];
  v14 = v1[2];
  v15 = v12[40];
  __swift_project_boxed_opaque_existential_0(v12 + 36, v12[39]);
  v16 = swift_allocObject();
  v1[8] = v16;
  v16[2] = v14;
  v16[3] = v13;
  v16[4] = v12;
  v17 = *(v15 + 24);

  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v1[9] = v18;
  *v18 = v1;
  v18[1] = sub_2271D19A8;

  return v20();
}

uint64_t sub_2271D19A8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2271D1B28;
  }

  else
  {

    v2 = sub_2271D1AC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D1AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271D1B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271D1B94(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA100, &qword_227677F18);
  v8 = sub_2276682A0();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v11 + v10, a2, v8);
  sub_227562ED4(v11, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_0((a3 + 504), *(a3 + 528));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_227670CD0;
    *(v13 + 32) = sub_227668290();
    *(v13 + 40) = v14;
    sub_2272D7D84(0, v13, a1);
  }

  return result;
}

uint64_t sub_2271D1D3C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v7 = sub_22766B390();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v84 - v10;
  v11 = sub_2276682A0();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v94 = a1;
  v95 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = v13[3];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC098, qword_22767C5E8);
  v18 = swift_allocObject();
  v19 = v14;
  v20 = v15;

  sub_22766A070();
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  swift_getKeyPath();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v105 = v88;
  v100 = a2;
  v103 = a2;
  v104 = a3;
  v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v106 = a3;

  v89 = v21;
  v22 = sub_22766C820();
  sub_226E93170(&v103, v101, &unk_27D7BC990, &qword_227670A30);
  v23 = v102;
  if (v102)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v101, v102);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x28223BE20](v24);
    v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v101);
  }

  else
  {
    v29 = 0;
  }

  v87 = objc_opt_self();
  v30 = [v87 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0, &qword_22767C630);
  v31 = [objc_allocWithZone(v86) initWithLeftExpression:v22 rightExpression:v30 modifier:0 type:4 options:0];

  sub_226E97D1C(&v103, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v32 = v31;
  v33 = sub_22766A080();
  v35 = v34;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(&v103, 0);
  swift_endAccess();

  v36 = MEMORY[0x22AA99A00]();
  v38 = v98;
  v37 = v99;
  sub_2275449AC(v98);
  v39 = v106;
  v40 = v100;
  if (v37)
  {
    objc_autoreleasePoolPop(v36);
  }

  objc_autoreleasePoolPop(v36);
  v43 = v96;
  v42 = v97;
  if ((*(v96 + 48))(v38, 1, v97) == 1)
  {

    return sub_226E97D1C(v38, &qword_27D7BC090, &qword_22767C5E0);
  }

  (*(v43 + 32))(v95, v38, v42);
  v44 = v91;
  sub_22766A610();

  v45 = sub_22766B380();
  v46 = sub_22766C8B0();

  v47 = os_log_type_enabled(v45, v46);
  v84 = 0;
  if (v47)
  {
    v48 = v44;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v103 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_226E97AE8(v40, v39, &v103);
    _os_log_impl(&dword_226E8E000, v45, v46, "Existing AchievementNotificationRecord found for %s, deleting", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x22AA9A450](v50, -1, -1);
    MEMORY[0x22AA9A450](v49, -1, -1);

    v92[1](v48, v93);
  }

  else
  {

    v92[1](v44, v93);
  }

  v51 = __swift_project_boxed_opaque_existential_0(v94, v94[3]);
  v52 = *v51;
  v53 = v51[1];
  v54 = *(v51 + 16);
  v55 = v51[3];
  v56 = swift_allocObject();
  v57 = v52;
  v58 = v53;

  sub_22766A070();
  v91 = v58;
  v92 = v57;
  *(v56 + 16) = v57;
  *(v56 + 24) = v58;
  LODWORD(v98) = v54;
  *(v56 + 32) = v54;
  v99 = v56;
  v93 = v55;
  *(v56 + 40) = v55;
  swift_getKeyPath();
  v105 = v88;
  v103 = v100;
  v104 = v106;

  v59 = sub_22766C820();
  sub_226E93170(&v103, v101, &unk_27D7BC990, &qword_227670A30);
  v60 = v102;
  if (v102)
  {
    v61 = __swift_project_boxed_opaque_existential_0(v101, v102);
    v62 = *(v60 - 8);
    v63 = MEMORY[0x28223BE20](v61);
    v65 = &v84 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v62 + 16))(v65, v63);
    v66 = sub_22766D170();
    (*(v62 + 8))(v65, v60);
    __swift_destroy_boxed_opaque_existential_0(v101);
  }

  else
  {
    v66 = 0;
  }

  v67 = v84;
  v68 = [v87 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v69 = [objc_allocWithZone(v86) initWithLeftExpression:v59 rightExpression:v68 modifier:0 type:4 options:0];

  sub_226E97D1C(&v103, &unk_27D7BC990, &qword_227670A30);
  v70 = qword_2813B2078;
  v71 = v99;
  swift_beginAccess();
  v72 = v69;
  v73 = sub_22766A080();
  v75 = v74;
  MEMORY[0x22AA985C0]();
  if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v106 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v73(&v103, 0);
  swift_endAccess();

  v76 = sub_227543170(v71 + v70, v98, v93);
  if (!v76)
  {
    v80 = sub_2272847FC(0);
    v77 = v95;
    if (!v67)
    {
      v81 = v80;
      [v80 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v82 = sub_22766C9E0();
      v83 = sub_226EDAB24(v82);

      sub_226EDAB78(v83, v91);

      goto LABEL_21;
    }

LABEL_25:

    goto LABEL_26;
  }

  v77 = v95;
  if (v76 != 1)
  {
    swift_willThrow();
    goto LABEL_25;
  }

LABEL_21:
  __swift_project_boxed_opaque_existential_0((v85 + 504), *(v85 + 528));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_227670CD0;
  *(v78 + 32) = sub_227668290();
  *(v78 + 40) = v79;
  sub_2272D7D84(1, v78, v94);

LABEL_26:

  return (*(v96 + 8))(v77, v97);
}

uint64_t sub_2271D284C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = sub_22766B390();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC090, &qword_22767C5E0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v61 - v14;
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  v19 = v15[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC098, qword_22767C5E8);
  v20 = swift_allocObject();
  v21 = v16;
  v22 = v17;

  sub_22766A070();
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  swift_getKeyPath();
  v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v65 = a2;
  v73[0] = a2;
  v73[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v67 = a3;

  v23 = sub_22766C820();
  sub_226E93170(v73, v71, &unk_27D7BC990, &qword_227670A30);
  v24 = v72;
  if (v72)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v71, v72);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x28223BE20](v25);
    v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v71);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0A0 &qword_22767C630))];

  sub_226E97D1C(v73, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(v73, 0);
  swift_endAccess();

  v37 = MEMORY[0x22AA99A00]();
  v38 = v70;
  sub_2275449AC(v74);
  if (v38)
  {
    objc_autoreleasePoolPop(v37);
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v20 + v39, v40);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v37);
    swift_setDeallocating();

    v42 = qword_2813B2078;
    v43 = sub_22766A100();
    (*(*(v43 - 8) + 8))(v20 + v42, v43);
    swift_deallocClassInstance();
    v44 = v66;
    sub_226E93170(v74, v66, &qword_27D7BC090, &qword_22767C5E0);
    v45 = sub_2276682A0();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v44, 1, v45) == 1)
    {
      sub_226E97D1C(v44, &qword_27D7BC090, &qword_22767C5E0);
      v47 = v64;
      sub_22766A610();
      v48 = v67;

      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v73[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_226E97AE8(v65, v48, v73);
        _os_log_impl(&dword_226E8E000, v49, v50, "No achievement notification records found for %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x22AA9A450](v52, -1, -1);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      (*(v68 + 8))(v47, v69);
      v53 = sub_227664AB0();
      sub_2271D7AA0(&qword_27D7B8E58, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
      swift_allocError();
      (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D50D30], v53);
      swift_willThrow();
    }

    else
    {
      (*(v46 + 32))(v62, v44, v45);
      v55 = v63;
      sub_22766A610();
      v56 = v67;

      v57 = sub_22766B380();
      v58 = sub_22766C8B0();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v73[0] = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_226E97AE8(v65, v56, v73);
        _os_log_impl(&dword_226E8E000, v57, v58, "Existing achievement notification record found for: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x22AA9A450](v60, -1, -1);
        MEMORY[0x22AA9A450](v59, -1, -1);
      }

      (*(v68 + 8))(v55, v69);
    }

    return sub_226E97D1C(v74, &qword_27D7BC090, &qword_22767C5E0);
  }
}

uint64_t sub_2271D3180(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_22766B390();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v5 = sub_227667A70();
  v3[50] = v5;
  v6 = *(v5 - 8);
  v3[51] = v6;
  v3[52] = *(v6 + 64);
  v3[53] = swift_task_alloc();
  v7 = sub_227664530();
  v3[54] = v7;
  v8 = *(v7 - 8);
  v3[55] = v8;
  v3[56] = *(v8 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v3[60] = v9;
  v3[61] = *(v9 + 64);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8);
  v3[65] = v10;
  v3[66] = *(v10 + 64);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D342C, 0, 0);
}

uint64_t sub_2271D342C(uint64_t a1)
{
  v2 = v1[45];
  v1[69] = sub_2276644D0();
  v1[70] = v3;
  __swift_project_boxed_opaque_existential_0((v2 + 48), *(v2 + 72));
  v4 = swift_task_alloc();
  v1[71] = v4;
  *v4 = v1;
  v4[1] = sub_2271D34DC;

  return sub_226EB91E0();
}

uint64_t sub_2271D34DC(uint64_t a1)
{
  *(*v1 + 576) = a1;

  return MEMORY[0x2822009F8](sub_2271D35DC, 0, 0);
}

uint64_t sub_2271D35DC()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[45];
  v4 = v3[44];
  v5 = v3[45];
  __swift_project_boxed_opaque_existential_0(v3 + 41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v6 = swift_allocObject();
  v0[73] = v6;
  *(v6 + 16) = xmmword_227670CD0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;

  v7 = swift_task_alloc();
  v0[74] = v7;
  v8 = *(v5 + 8);
  *v7 = v0;
  v7[1] = sub_2271D36F0;

  return MEMORY[0x2821AED70](v6, v4, v8);
}

uint64_t sub_2271D36F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v4 = sub_2271D4648;
  }

  else
  {

    v4 = sub_2271D3810;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2271D3810()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 544);
  v58 = __swift_project_boxed_opaque_existential_0((*(v0 + 360) + 128), *(*(v0 + 360) + 152));
  v3 = sub_2276638D0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (*(v1 + 16))
  {
    v4 = sub_226E92000(*(v0 + 552), *(v0 + 560));
    v6 = v5;

    v7 = *(v0 + 512);
    if (v6)
    {
      v8 = *(*(v0 + 600) + 56);
      v9 = sub_22766A4C0();
      v10 = *(v9 - 8);
      (*(v10 + 16))(v7, v8 + *(v10 + 72) * v4, v9);

      (*(v10 + 56))(v7, 0, 1, v9);
    }

    else
    {

      v9 = sub_22766A4C0();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    }
  }

  else
  {
    v11 = *(v0 + 512);

    v9 = sub_22766A4C0();
    (*(*(v9 - 8) + 56))(v11, 1, 1, v9);
  }

  v12 = *(v0 + 504);
  sub_226E93170(*(v0 + 512), v12, &qword_27D7B8E38, &qword_22767C730);
  sub_22766A4C0();
  v13 = *(v9 - 8);
  v14 = (*(v13 + 48))(v12, 1, v9);
  v15 = *(v0 + 504);
  if (v14 == 1)
  {
    sub_226E97D1C(*(v0 + 504), &qword_27D7B8E38, &qword_22767C730);
    v16 = 0;
  }

  else
  {
    sub_22766A4A0();
    v16 = v17;
    (*(v13 + 8))(v15, v9);
  }

  v18 = *(v0 + 536);
  v45 = *(v0 + 544);
  v46 = *(v0 + 512);
  v19 = *(v0 + 496);
  v51 = *(v0 + 528);
  v52 = *(v0 + 488);
  v20 = *(v0 + 472);
  v21 = *(v0 + 440);
  v47 = *(v0 + 448);
  v48 = *(v0 + 520);
  v22 = *(v0 + 424);
  v23 = *(v0 + 432);
  v55 = v18;
  v56 = v22;
  v49 = *(v0 + 416);
  v50 = *(v0 + 480);
  v24 = *(v0 + 400);
  v53 = v19;
  v54 = v24;
  v25 = *(v0 + 344);
  v43 = *(v0 + 408);
  v44 = *(v0 + 352);
  v60 = v58[16];
  v57 = v58[17];
  __swift_project_boxed_opaque_existential_0(v58 + 13, v60);
  sub_226F739B8(v58, v0 + 16);
  v26 = *(v21 + 16);
  *(v0 + 616) = v26;
  *(v0 + 624) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v20, v25, v23);
  sub_226E93170(v45, v18, &unk_27D7BB920, &unk_227672480);
  (*(v43 + 16))(v22, v44, v24);
  sub_226E93170(v46, v19, &qword_27D7B8E38, &qword_22767C730);
  v27 = (*(v21 + 80) + 240) & ~*(v21 + 80);
  v28 = (v47 + *(v48 + 80) + v27) & ~*(v48 + 80);
  v29 = (v51 + *(v43 + 80) + v28) & ~*(v43 + 80);
  v30 = (v49 + *(v50 + 80) + v29) & ~*(v50 + 80);
  v31 = (v52 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v0 + 632) = v32;
  v33 = *(v0 + 192);
  *(v32 + 11) = *(v0 + 176);
  *(v32 + 12) = v33;
  v34 = *(v0 + 224);
  *(v32 + 13) = *(v0 + 208);
  *(v32 + 14) = v34;
  v35 = *(v0 + 128);
  *(v32 + 7) = *(v0 + 112);
  *(v32 + 8) = v35;
  v36 = *(v0 + 160);
  *(v32 + 9) = *(v0 + 144);
  *(v32 + 10) = v36;
  v37 = *(v0 + 64);
  *(v32 + 3) = *(v0 + 48);
  *(v32 + 4) = v37;
  v38 = *(v0 + 96);
  *(v32 + 5) = *(v0 + 80);
  *(v32 + 6) = v38;
  v39 = *(v0 + 32);
  *(v32 + 1) = *(v0 + 16);
  *(v32 + 2) = v39;
  (*(v21 + 32))(&v32[v27], v20, v23);
  sub_226E95D18(v55, &v32[v28], &unk_27D7BB920, &unk_227672480);
  (*(v43 + 32))(&v32[v29], v56, v54);
  sub_226E95D18(v53, &v32[v30], &qword_27D7B8E38, &qword_22767C730);
  *&v32[v31] = 0;
  *&v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = v16;
  v59 = (*(v57 + 24) + **(v57 + 24));
  v40 = swift_task_alloc();
  *(v0 + 640) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E48, qword_22767C750);
  *v40 = v0;
  v40[1] = sub_2271D3E50;

  return v59(v0 + 240, sub_226F73A14, v32, v41, v60, v57);
}

uint64_t sub_2271D3E50()
{
  *(*v1 + 648) = v0;

  if (v0)
  {

    v2 = sub_2271D40EC;
  }

  else
  {
    v2 = sub_2271D3F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D3F94()
{
  v1 = v0[72];
  v2 = v0[68];
  sub_226E97D1C(v0[64], &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v2, &unk_27D7BB920, &unk_227672480);
  __swift_project_boxed_opaque_existential_0(v0 + 30, v0[33]);
  v5 = sub_22735E6FC(v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + 30);

  v3 = v0[1];

  return v3(v5);
}

uint64_t sub_2271D40EC(uint64_t a1)
{
  v64 = v1;
  v2 = v1[81];
  v3 = v1[77];
  v4 = v1[58];
  v5 = v1[54];
  v6 = v1[43];
  sub_22766A610();
  v3(v4, v6, v5);
  v7 = v2;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[58];
    v12 = v1[54];
    v11 = v1[55];
    v57 = v1[47];
    v59 = v1[46];
    v61 = v1[49];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v63[0] = v14;
    *v13 = 136315394;
    v15 = sub_2276644D0();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_226E97AE8(v15, v17, v63);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v19 = MEMORY[0x22AA995D0](v1[39], v1[40]);
    v21 = sub_226E97AE8(v19, v20, v63);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v8, v9, "Failed to create evaluator for session identifier %s with error %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    (*(v57 + 8))(v61, v59);
  }

  else
  {
    v22 = v1[58];
    v23 = v1[54];
    v24 = v1[55];
    v25 = v1[49];
    v26 = v1[46];
    v27 = v1[47];

    (*(v24 + 8))(v22, v23);
    (*(v27 + 8))(v25, v26);
  }

  v28 = v1[68];
  v29 = v1[64];
  swift_willThrow();
  sub_226E97D1C(v29, &qword_27D7B8E38, &qword_22767C730);
  sub_226E97D1C(v28, &unk_27D7BB920, &unk_227672480);
  v30 = v1[81];
  v31 = v1[57];
  v32 = v1[54];
  v33 = v1[55];
  v34 = v1[43];
  sub_22766A610();
  (*(v33 + 16))(v31, v34, v32);
  v35 = v30;
  v36 = sub_22766B380();
  v37 = sub_22766C890();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v1[57];
  v41 = v1[54];
  v40 = v1[55];
  v43 = v1[47];
  v42 = v1[48];
  v44 = v1[46];
  if (v38)
  {
    v56 = v37;
    v45 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63[0] = v58;
    *v45 = 136315394;
    sub_2271D7AA0(&qword_27D7B8C68, MEMORY[0x277D50978], MEMORY[0x277D50990]);
    v60 = v44;
    v62 = v42;
    v46 = sub_22766D140();
    v48 = v47;
    (*(v40 + 8))(v39, v41);
    v49 = sub_226E97AE8(v46, v48, v63);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    swift_getErrorValue();
    v50 = MEMORY[0x22AA995D0](v1[36], v1[37]);
    v52 = sub_226E97AE8(v50, v51, v63);

    *(v45 + 14) = v52;
    _os_log_impl(&dword_226E8E000, v36, v56, "Failed to evaluate earned instances for session %s with error %s, skipping", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v58, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    (*(v43 + 8))(v62, v60);
  }

  else
  {

    (*(v40 + 8))(v39, v41);
    (*(v43 + 8))(v42, v44);
  }

  v53 = v1[1];
  v54 = MEMORY[0x277D84FA0];

  return v53(v54);
}

uint64_t sub_2271D4648()
{
  v34 = v0;

  v1 = v0[76];
  v2 = v0[57];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[43];
  sub_22766A610();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_22766B380();
  v8 = sub_22766C890();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[57];
    v11 = v0[54];
    v10 = v0[55];
    v30 = v0[47];
    v31 = v0[46];
    v32 = v0[48];
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v12 = 136315394;
    sub_2271D7AA0(&qword_27D7B8C68, MEMORY[0x277D50978], MEMORY[0x277D50990]);
    v13 = sub_22766D140();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_226E97AE8(v13, v15, &v33);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v0[36], v0[37]);
    v19 = sub_226E97AE8(v17, v18, &v33);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_226E8E000, v7, v8, "Failed to evaluate earned instances for session %s with error %s, skipping", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v29, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v20 = v0[57];
    v21 = v0[54];
    v22 = v0[55];
    v24 = v0[47];
    v23 = v0[48];
    v25 = v0[46];

    (*(v22 + 8))(v20, v21);
    (*(v24 + 8))(v23, v25);
  }

  v26 = v0[1];
  v27 = MEMORY[0x277D84FA0];

  return v26(v27);
}

uint64_t sub_2271D49A8@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_22766CD20();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 4271950;
  if (!result)
  {
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x22AA991A0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v8 = [v6 templateUniqueName];

  if (v8)
  {
    v5 = sub_22766C000();
    v10 = v9;
  }

  else
  {
LABEL_9:
    v10 = 0xE300000000000000;
  }

  MEMORY[0x22AA98450](v5, v10);

  MEMORY[0x22AA98450](8250, 0xE200000000000000);
  if (v3 >> 62)
  {
    sub_22766CD20();
  }

  v11 = sub_22766D140();
  MEMORY[0x22AA98450](v11);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_2271D4B18(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_22766B390();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D4BE4, 0, 0);
}

uint64_t sub_2271D4BE4()
{
  if (*(v0[23] + 16) == 1)
  {
    v1 = v0[22];
    if ((v1 & 0xC000000000000001) != 0)
    {
      if (sub_22766CD20())
      {
LABEL_4:
        v2 = *(v0[23] + 456);
        sub_226ECC54C(v0[22]);
        sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
        v3 = sub_22766C2B0();
        v0[28] = v3;

        v0[2] = v0;
        v0[7] = v0 + 30;
        v0[3] = sub_2271D4DC8;
        v4 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0B0, &qword_22767C688);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = sub_226ECD448;
        v0[13] = &block_descriptor_85;
        v0[14] = v4;
        [v2 addTemplates:v3 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }
    }

    else if (*(v1 + 16))
    {
      goto LABEL_4;
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2271D4DC8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_2271D504C;
  }

  else
  {
    v2 = sub_2271D4ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D4ED8()
{
  v1 = *(v0 + 240);

  sub_22766A610();

  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 176) & 0xC000000000000001;
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    if (v4)
    {
      v6 = sub_22766CD20();
    }

    else
    {
      v6 = *(*(v0 + 176) + 16);
    }

    *(v5 + 4) = v6;

    *(v5 + 12) = 1024;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_226E8E000, v2, v3, "Added [%ld] templates to client with result: %{BOOL}d", v5, 0x12u);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2271D504C(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  swift_willThrow();

  sub_22766A610();
  v4 = v3;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 232);
    v8 = *(v1 + 200);
    v20 = *(v1 + 208);
    v9 = *(v1 + 192);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](*(v1 + 152), *(v1 + 160));
    v14 = sub_226E97AE8(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to add templates to client: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = *(v1 + 200);
    v15 = *(v1 + 208);
    v17 = *(v1 + 192);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2271D5238(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_227035534(v10, a2);

  if ((v11 & 1) == 0)
  {
    *(a1 + 24) = a2;

    v13 = sub_2276693C0();
    (*(v7 + 104))(v9, *MEMORY[0x277D4F8A8], v6);
    v14 = sub_226EC9A38(v9, v13);

    result = (*(v7 + 8))(v9, v6);
    *a3 = v14 & 1;
  }

  return result;
}

uint64_t sub_2271D53AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_0((a2 + 88), *(a2 + 112));
  v10 = sub_227668350();
  sub_2274B4E8C(v10, v11, a1, v9);
  if (v3)
  {
  }

  v13 = sub_227664530();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    return (*(v14 + 32))(a3, v9, v13);
  }

  sub_226E97D1C(v9, &qword_27D7B8E60, &unk_2276724B0);
  sub_226F73CD0();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

uint64_t sub_2271D5554(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_22766A8A0();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D5674, 0, 0);
}

uint64_t sub_2271D5674()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F970], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = v6[39];
    v10 = v6[40];
    __swift_project_boxed_opaque_existential_0(v6 + 36, v9);
    v11 = swift_allocObject();
    v0[12] = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v7;
    v12 = *(v10 + 24);

    v23 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_2271D5964;
    v14 = MEMORY[0x277D83B88];

    return (v23)(v0 + 2, sub_2271D7E9C, v11, v14, v9, v10);
  }

  else
  {
    sub_22766A610();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Skipping HealthKit data requirement on unsupported platform", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2271D5964()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271D5BD8;
  }

  else
  {

    v2 = sub_2271D5A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D5A80()
{
  if (*(v0 + 16) >= 1)
  {
    v1 = sub_227664AB0();
    sub_2271D7AA0(&qword_27D7B8E58, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D50D20], v1);
    swift_willThrow();
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2271D5BD8()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

void sub_2271D5C6C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v36 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED0, qword_227676A40);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  v37 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v35[0] = v13;
  v35[1] = v10;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = a2;
  v40[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v40, v38, &unk_27D7BC990, &qword_227670A30);
  v15 = v39;
  if (v39)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9ED8 &unk_227676A90))];

  sub_226E97D1C(v40, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v24 = v23;
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v40, 0);
  swift_endAccess();

  v28 = v40[5];
  v29 = sub_227284814(0);
  if (v28)
  {
  }

  else
  {
    v30 = v29;
    [v29 setResultType_];
    [v30 setFetchLimit_];
    [v30 setFetchOffset_];
    [v30 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v31 = v37;
    v32 = sub_22766C9D0();

    swift_setDeallocating();
    v33 = qword_2813B2078;
    v34 = sub_22766A100();
    (*(*(v34 - 8) + 8))(v11 + v33, v34);
    swift_deallocClassInstance();
    *v36 = v32;
  }
}

uint64_t sub_2271D6144(void *a1)
{
  v3 = *(sub_2276682A0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2271D1B94(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2271D61EC(void *a1)
{
  v2 = *(sub_227664530() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117694(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2271D6294(v5);
  *a1 = v3;
}

void sub_2271D6294(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        sub_227664530();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664530() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2271D6760(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_2271D63C0(0, v2, 1, a1);
  }
}

void sub_2271D63C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_227662750();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_227664530();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_227664520();
      v32 = v59;
      sub_227664520();
      v62 = sub_2276626C0();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2271D6760(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_227662750();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_227664530();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_2271171D0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_2271D7360(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2271171D0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_227117144(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_227664520();
      v34 = v159;
      sub_227664520();
      LODWORD(v149) = sub_2276626C0();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_227664520();
        v46 = v159;
        sub_227664520();
        LOBYTE(v162) = sub_2276626C0() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_2273A4F9C(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_2273A4F9C((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_2271D7360(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2271171D0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_227117144(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_227664520();
    v120 = v159;
    sub_227664520();
    LODWORD(v162) = sub_2276626C0();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_2271D7360(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_227662750();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_227664530();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_227664520();
            v48 = v66;
            sub_227664520();
            v68 = sub_2276626C0();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_227664520();
        v28 = v66;
        sub_227664520();
        v68 = sub_2276626C0();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_2271171FC(&v75, &v74, &v73);
}

uint64_t sub_2271D7AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2271D7AE8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C5A40(a1, v1);
}

uint64_t sub_2271D7B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2271C850C(a1, v1);
}

uint64_t sub_2271D7C18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C9174(a1, v1);
}

uint64_t sub_2271D7CB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271C9390(a1, v1);
}

uint64_t sub_2271D7D48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271CABB8();
}

uint64_t sub_2271D7EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v1 - 8);
  v70 = &v63 - v2;
  v3 = sub_22766B390();
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v68 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v71 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - v16;
  v18 = sub_22766A8A0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2276693C0();
  (*(v19 + 104))(v21, *MEMORY[0x277D4F880], v18);
  v23 = sub_226EC9A38(v21, v22);

  (*(v19 + 8))(v21, v18);
  if (v23)
  {
    v24 = *(v15 + 16);
    v64 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer;
    v25 = v0;
    v66 = v24;
    v24(v17, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer, v14);
    sub_227669730();
    v26 = *(v15 + 8);
    v26(v17, v14);
    v65 = v15 + 8;
    if (v78 == 1)
    {
      v27 = v67;
      sub_22766A6B0();
      v28 = sub_22766B380();
      v29 = sub_22766C8B0();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v72;
      if (!v30)
      {
        v71 = v27;
        goto LABEL_12;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v28, v29, "Syncing Immediately.", v32, 2u);
      v71 = v27;
    }

    else
    {
      sub_22766A6B0();
      v28 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = os_log_type_enabled(v28, v37);
      v31 = v72;
      if (!v38)
      {
LABEL_12:
        v39 = v66;

        v40 = *(v31 + 1);
        v40(v71, v73);
        v39(v17, v25 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__serverSyncEnabled, v14);
        sub_227669730();
        v26(v17, v14);
        if (v77 == 1)
        {
          v39(v17, v25 + v64, v14);
          sub_227669730();
          v26(v17, v14);
          if (v74 == 1)
          {
            v41 = sub_22766C4B0();
            v42 = *(*(v41 - 8) + 56);
            v72 = v40;
            v43 = v70;
            v42(v70, 1, 1, v41);
            v44 = v25;
            v45 = swift_allocObject();
            v45[2] = 0;
            v45[3] = 0;
            v45[4] = v44;

            v40 = v72;
            v46 = v45;
            v25 = v44;
            sub_2272CA940(0, 0, v43, &unk_22767C890, v46);
          }

          else
          {
            sub_2271D9110();
            sub_2276697D0();
          }
        }

        else
        {
          v72 = v40;
          v47 = v68;
          sub_22766A6B0();
          v48 = sub_22766B380();
          v49 = sub_22766C8B0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = v25;
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_226E8E000, v48, v49, "Server Sync has been disabled.", v51, 2u);
            v52 = v51;
            v25 = v50;
            v39 = v66;
            MEMORY[0x22AA9A450](v52, -1, -1);
          }

          v53 = v47;
          v40 = v72;
          v72(v53, v73);
        }

        v39(v17, v25 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__pairedSyncEnabled, v14);
        sub_227669730();
        v26(v17, v14);
        if (v76 == 1)
        {
          v39(v17, v25 + v64, v14);
          sub_227669730();
          v26(v17, v14);
          if (v75 == 1)
          {
            v54 = sub_22766C4B0();
            v55 = v70;
            (*(*(v54 - 8) + 56))(v70, 1, 1, v54);
            v56 = swift_allocObject();
            v57 = v25;
            v58 = v56;
            v56[2] = 0;
            v56[3] = 0;
            v56[4] = v57;

            sub_2272CA940(0, 0, v55, &unk_22767C880, v58);
          }

          else
          {
            sub_2271D87F0();
            sub_2276697D0();
          }
        }

        else
        {
          v59 = v69;
          sub_22766A6B0();
          v60 = sub_22766B380();
          v61 = sub_22766C8B0();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_226E8E000, v60, v61, "Paired Sync has been disabled.", v62, 2u);
            MEMORY[0x22AA9A450](v62, -1, -1);
          }

          return (v40)(v59, v73);
        }
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_226E8E000, v28, v37, "Scheduling a sync.", v32, 2u);
    }

    MEMORY[0x22AA9A450](v32, -1, -1);
    goto LABEL_12;
  }

  sub_22766A6B0();
  v33 = sub_22766B380();
  v34 = sub_22766C8B0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226E8E000, v33, v34, "Sync is disabled. Ignoring request to sync.", v35, 2u);
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  return (*(v72 + 1))(v5, v73);
}

uint64_t sub_2271D87F0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    sub_2276697F0();

    v1 = sub_2276697E0();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_2271D8888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D8918();
}

uint64_t sub_2271D8918()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D89F0, 0, 0);
}

uint64_t sub_2271D89F0(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Syncing with paired device.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 48);

  v9 = *(v7 + 8);
  *(v1 + 96) = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_0(v8 + 15, v8[18]);
  *(v1 + 136) = 7;
  *(v1 + 104) = sub_226F19410();
  *(v1 + 112) = sub_226F19464();
  sub_22766A130();
  __swift_project_boxed_opaque_existential_0(v8 + 7, v8[10]);
  v10 = swift_task_alloc();
  *(v1 + 120) = v10;
  *v10 = v1;
  v10[1] = sub_2271D8BD8;

  return sub_2275E8000();
}

uint64_t sub_2271D8BD8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2271D8E9C;
  }

  else
  {
    v2 = sub_2271D8CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D8CEC(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 96);
  v6 = *(v1 + 80);
  v7 = *(v1 + 56);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully synced with paired device.", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v5(v6, v7);
  __swift_project_boxed_opaque_existential_0((*(v1 + 48) + 120), *(*(v1 + 48) + 144));
  *(v1 + 137) = 7;
  sub_22766A120();

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2271D8E9C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 128);
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 128);
    v18 = *(v1 + 72);
    v19 = *(v1 + 96);
    v7 = *(v1 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v12 = sub_226E97AE8(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to sync with paired device with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v19(v18, v7);
  }

  else
  {
    v13 = *(v1 + 96);
    v14 = *(v1 + 72);
    v15 = *(v1 + 56);

    v13(v14, v15);
  }

  __swift_project_boxed_opaque_existential_0((*(v1 + 48) + 120), *(*(v1 + 48) + 144));
  *(v1 + 137) = 7;
  sub_22766A120();

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_2271D9110()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  if (*(v0 + 168))
  {
    v5 = *(v0 + 168);
  }

  else
  {
    sub_2276697F0();
    v6 = *(v2 + 16);
    v6(v4, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__syncDelay, v1);
    sub_227669730();
    v7 = *(v2 + 8);
    v7(v4, v1);
    v6(v4, v0 + OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__maxSyncDelay, v1);
    sub_227669730();
    v7(v4, v1);

    v5 = sub_2276697E0();
    *(v0 + 168) = v5;
  }

  return v5;
}

uint64_t sub_2271D92E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D9378();
}

uint64_t sub_2271D9378()
{
  v1[10] = v0;
  v2 = sub_22766B390();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271D9474, 0, 0);
}

uint64_t sub_2271D9474(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Submitting sync to the server.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v1 + 144);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 80);

  v9 = *(v7 + 8);
  *(v1 + 152) = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_0(v8 + 15, v8[18]);
  *(v1 + 208) = 6;
  *(v1 + 160) = sub_226F19410();
  *(v1 + 168) = sub_226F19464();
  sub_22766A130();
  __swift_project_boxed_opaque_existential_0(v8 + 2, v8[5]);
  v10 = swift_task_alloc();
  *(v1 + 176) = v10;
  *v10 = v1;
  v10[1] = sub_2271D965C;

  return sub_226F133B8();
}

uint64_t sub_2271D965C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2271D9964;
  }

  else
  {
    v2 = sub_2271D9770;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D9770(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[17];
  v7 = v1[11];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully submitted to the server.", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v5(v6, v7);
  sub_22766A6B0();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, "Fetching sync from the server.", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v12 = v1[19];
  v13 = v1[15];
  v14 = v1[11];
  v15 = v1[10];

  v12(v13, v14);
  __swift_project_boxed_opaque_existential_0((v15 + 16), *(v15 + 40));
  v16 = swift_task_alloc();
  v1[24] = v16;
  *v16 = v1;
  v16[1] = sub_2271D9C24;

  return sub_226F0B0C8(0);
}

uint64_t sub_2271D9964(uint64_t a1)
{
  v28 = v1;
  v2 = *(v1 + 184);
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 184);
    v25 = *(v1 + 128);
    v26 = *(v1 + 152);
    v7 = *(v1 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v1 + 48), *(v1 + 56));
    v12 = sub_226E97AE8(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to submit to the server with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v26(v25, v7);
  }

  else
  {
    v13 = *(v1 + 152);
    v14 = *(v1 + 128);
    v15 = *(v1 + 88);

    v13(v14, v15);
  }

  sub_22766A6B0();
  v16 = sub_22766B380();
  v17 = sub_22766C8B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_226E8E000, v16, v17, "Fetching sync from the server.", v18, 2u);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  v19 = *(v1 + 152);
  v20 = *(v1 + 120);
  v21 = *(v1 + 88);
  v22 = *(v1 + 80);

  v19(v20, v21);
  __swift_project_boxed_opaque_existential_0((v22 + 16), *(v22 + 40));
  v23 = swift_task_alloc();
  *(v1 + 192) = v23;
  *v23 = v1;
  v23[1] = sub_2271D9C24;

  return sub_226F0B0C8(0);
}

uint64_t sub_2271D9C24()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2271D9F0C;
  }

  else
  {
    v2 = sub_2271D9D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271D9D38(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 152);
  v6 = *(v1 + 112);
  v7 = *(v1 + 88);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Successfully fetched from the server.", v8, 2u);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  v5(v6, v7);
  __swift_project_boxed_opaque_existential_0((*(v1 + 80) + 120), *(*(v1 + 80) + 144));
  *(v1 + 209) = 6;
  sub_22766A120();

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2271D9F0C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 200);
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 200);
    v18 = *(v1 + 104);
    v19 = *(v1 + 152);
    v7 = *(v1 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v12 = sub_226E97AE8(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to fetch remote changesets with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    v19(v18, v7);
  }

  else
  {
    v13 = *(v1 + 152);
    v14 = *(v1 + 104);
    v15 = *(v1 + 88);

    v13(v14, v15);
  }

  __swift_project_boxed_opaque_existential_0((*(v1 + 80) + 120), *(*(v1 + 80) + 144));
  *(v1 + 209) = 6;
  sub_22766A120();

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_2271DA1A4()
{
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_2271DC0A8();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v1);
  swift_allocObject();
  swift_weakInit();
  sub_2271DC194();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v1);
  swift_allocObject();
  swift_weakInit();
  sub_226FFDCDC();

  sub_227669A00();

  __swift_destroy_boxed_opaque_existential_0(v1);

  swift_allocObject();
  swift_weakInit();
  sub_227118F18();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v1);

  swift_allocObject();
  swift_weakInit();
  sub_227118F6C();

  sub_227669A10();

  __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_2271DA470(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_22766B390();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DA530, 0, 0);
}

uint64_t sub_2271DA530(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received Push Notification from Server.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[9] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_2270948CC;

    return sub_2271DA6D0(1);
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_2271DA6D0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 147) = a1;
  v3 = sub_22766B390();
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v4 = sub_22766A8A0();
  *(v2 + 88) = v4;
  *(v2 + 96) = *(v4 - 8);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DA7FC, 0, 0);
}

uint64_t sub_2271DA7FC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_2276693C0();
  (*(v2 + 104))(v1, *MEMORY[0x277D4F880], v3);
  v5 = sub_226EC9A38(v1, v4);

  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0(v6 + 15, v6[18]);
    *(v0 + 144) = 5;
    *(v0 + 112) = sub_226F19410();
    *(v0 + 120) = sub_226F19464();
    sub_22766A130();
    __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_2271DAA50;
    v8 = *(v0 + 147);

    return sub_226F0B0C8(v8);
  }

  else
  {
    sub_226F1893C();
    swift_allocError();
    *v10 = 18;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2271DAA50()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2271DAD14;
  }

  else
  {
    v2 = sub_2271DAB64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271DAB64(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Force fetch remote changesets has successfully resolved.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v1 + 80);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 48);

  (*(v7 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_0((v8 + 120), *(v8 + 144));
  *(v1 + 146) = 5;
  sub_22766A120();

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_2271DAD14(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 136);
  sub_22766A6B0();
  v3 = v2;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v1 + 64);
    v6 = *(v1 + 72);
    v8 = *(v1 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v1 + 24), *(v1 + 32));
    v13 = sub_226E97AE8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v4, v5, "Force fetch remote changesets has failed with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    v16 = *(v1 + 56);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 48);
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0((v17 + 120), *(v17 + 144));
  *(v1 + 145) = 5;
  sub_22766A120();

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_2271DAF74(_WORD *a1, uint64_t a2)
{
  *(v2 + 112) = a2;
  v4 = sub_22766B390();
  *(v2 + 120) = v4;
  *(v2 + 128) = *(v4 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 160) = *a1;

  return MEMORY[0x2822009F8](sub_2271DB040, 0, 0);
}

uint64_t sub_2271DB040()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = sub_227664EE0();
    v4 = v3;
    if (v2 == sub_227664EE0() && v4 == v5)
    {
    }

    else
    {
      v8 = sub_22766D190();

      if ((v8 & 1) == 0)
      {
LABEL_13:

        return MEMORY[0x2822009F8](sub_2271DB398, 0, 0);
      }
    }

    v9 = sub_227664EE0();
    v11 = v10;
    if (v9 == sub_227664EE0() && v11 == v12)
    {

      goto LABEL_13;
    }

    v13 = sub_22766D190();

    if (v13)
    {
      goto LABEL_13;
    }

    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_2271DB284;

    return sub_226F0B0C8(1);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2271DB284()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2271DB404;
  }

  else
  {
    v2 = sub_2271DB398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2271DB398()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2271DB404()
{
  v20 = v0;
  v1 = *(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_22766A6B0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 128);
    v18 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = MEMORY[0x22AA995D0](*(v0 + 88), *(v0 + 96));
    v12 = sub_226E97AE8(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to Update Status due to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2271DB5E8(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22766B390();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DB6A8, 0, 0);
}

uint64_t sub_2271DB6A8(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Force fetching remote changesets on post install", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[9] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v1[10] = v9;
    *v9 = v1;
    v9[1] = sub_2271DB848;

    return sub_2271DA6D0(1);
  }

  else
  {

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_2271DB848()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2271DC3B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2271DB98C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2271D7EE8();
  }

  return result;
}

char *sub_2271DB9E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);

  v1 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__pairedSyncEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[v1], v2);
  v3(&v0[OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__serverSyncEnabled], v2);
  v3(&v0[OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__ignoreSyncTimer], v2);
  v4 = OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__syncDelay;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C0, &qword_22767C8E0);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[v4], v5);
  v6(&v0[OBJC_IVAR____TtC15SeymourServices15SyncCoordinator__maxSyncDelay], v5);
  return v0;
}

uint64_t sub_2271DBB40()
{
  sub_2271DB9E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncCoordinator(uint64_t a1)
{
  result = qword_2813A37F0;
  if (!qword_2813A37F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2271DBBEC(uint64_t a1)
{
  sub_2271DBD34(319, &qword_2813A5890, MEMORY[0x277D839B0], MEMORY[0x277D4F9F8], MEMORY[0x277D839C8]);
  if (v1 <= 0x3F)
  {
    sub_2271DBD34(319, &qword_2813A54A0, MEMORY[0x277D839F8], MEMORY[0x277D4FA08], MEMORY[0x277D83A28]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2271DBD34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_227669750();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2271DBD88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D9378();
}

uint64_t sub_2271DBE18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271D8918();
}

uint64_t sub_2271DBEA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_2271DBE18();
}

uint64_t sub_2271DBF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271DBD88();
}

uint64_t sub_2271DC010(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271DA470(a1, v1);
}

unint64_t sub_2271DC0A8()
{
  result = qword_28139FBB0;
  if (!qword_28139FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139FBB0);
  }

  return result;
}

uint64_t sub_2271DC0FC(_WORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_2271DAF74(a1, v1);
}

unint64_t sub_2271DC194()
{
  result = qword_28139F580;
  if (!qword_28139F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139F580);
  }

  return result;
}

uint64_t sub_2271DC1E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2271DB5E8(v0);
}

uint64_t sub_2271DC294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D92E8();
}

uint64_t sub_2271DC324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E93028;

  return sub_2271D8888();
}

uint64_t sub_2271DC3BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_226EB5238(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_22766CC90();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_226EB5238((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_226EB526C(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2271DC5D8(uint64_t a1)
{
  v48 = sub_227665100();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v41 = &v39 - v8;
  v9 = *(a1 + 16);
  v52 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v10 = a1 + 56;
  v11 = v52;
  v12 = -1;
  v13 = -1 << *(a1 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(a1 + 56);
  v15 = (63 - v13) >> 6;
  v46 = v2;
  v47 = a1;
  v45 = v9;
  if (v9)
  {
    v43 = v2 + 16;
    v44 = v4;
    v42 = (v2 + 8);

    v16 = 0;
    v17 = 0;
    while (1)
    {
      v50 = v11;
      if (!v14)
      {
        break;
      }

LABEL_10:
      v19 = *(a1 + 48) + *(v2 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v20 = v44;
      v21 = v48;
      (*(v2 + 16))(v44, v19, v48);
      v22 = sub_2276650C0();
      if (v22 >> 31)
      {
        goto LABEL_30;
      }

      v51 = v22;
      v49 = sub_22766D140();
      v24 = v23;
      (*v42)(v20, v21);
      v11 = v50;
      v52 = v50;
      v25 = *(v50 + 16);
      if (v25 >= *(v50 + 24) >> 1)
      {
        sub_226F1EF90();
        v11 = v52;
      }

      ++v16;
      v14 &= v14 - 1;
      *(v11 + 16) = v25 + 1;
      v26 = v11 + 16 * v25;
      *(v26 + 32) = v49;
      *(v26 + 40) = v24;
      v2 = v46;
      a1 = v47;
      if (v16 == v45)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_32;
      }

      v14 = *(v10 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v17 = 0;
LABEL_16:
    v49 = v2 + 16;
    v44 = (v2 + 8);
    v45 = v2 + 32;
    v27 = v41;
    if (!v14)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v50 = v11;
LABEL_22:
      v29 = *(a1 + 48) + *(v2 + 72) * (__clz(__rbit64(v14)) | (v17 << 6));
      v30 = v40;
      v31 = v48;
      (*(v2 + 16))(v40, v29, v48);
      (*(v2 + 32))(v27, v30, v31);
      v32 = sub_2276650C0();
      if (v32 >> 31)
      {
        break;
      }

      v51 = v32;
      v33 = sub_22766D140();
      v35 = v34;
      (*v44)(v27, v31);
      v11 = v50;
      v52 = v50;
      v36 = *(v50 + 16);
      if (v36 >= *(v50 + 24) >> 1)
      {
        sub_226F1EF90();
        v11 = v52;
      }

      v14 &= v14 - 1;
      *(v11 + 16) = v36 + 1;
      v37 = v11 + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      v2 = v46;
      a1 = v47;
      v27 = v41;
      if (!v14)
      {
LABEL_18:
        while (1)
        {
          v28 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_29;
          }

          if (v28 >= v15)
          {

            return v11;
          }

          v14 = *(v10 + 8 * v28);
          ++v17;
          if (v14)
          {
            v50 = v11;
            v17 = v28;
            goto LABEL_22;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t sub_2271DCAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  v30 = a5;
  v24 = a4;
  v23 = a2;
  v29 = a3(0);
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v23 - v7;
  v8 = *(a1 + 16);
  v31 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v9 = v31;
  if (v8)
  {
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v26 = *(v10 + 56);
    v27 = v11;
    v25 = (v10 - 8);
    do
    {
      v13 = v28;
      v14 = v29;
      v15 = v10;
      v16 = v27(v28, v12, v29);
      v17 = v30(v16);
      v19 = v18;
      (*v25)(v13, v14);
      v31 = v9;
      v20 = *(v9 + 16);
      if (v20 >= *(v9 + 24) >> 1)
      {
        sub_226F1EF90();
        v9 = v31;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v19;
      v12 += v26;
      --v8;
      v10 = v15;
    }

    while (v8);
  }

  v24(0, v9, v23);
}

unint64_t sub_2271DCCA4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_227665100();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v8 = v26;
  if (v7)
  {
    v9 = *(v4 + 16);
    v23 = v4 + 16;
    v24 = v9;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v20 = (v4 + 8);
    v21 = v11;
    v22 = v6;
    while (1)
    {
      v24(v6, v10, v3);
      result = sub_2276650C0();
      if (result >> 31)
      {
        break;
      }

      v25 = result;
      v13 = sub_22766D140();
      v15 = v14;
      (*v20)(v6, v3);
      v26 = v8;
      v16 = *(v8 + 16);
      if (v16 >= *(v8 + 24) >> 1)
      {
        sub_226F1EF90();
        v8 = v26;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v6 = v22;
      v10 += v21;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_2272D7DB0(0, v8, v19);
  }

  return result;
}

uint64_t sub_2271DCED4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2271DCFC8;
    v3 = MEMORY[0x277D84F90];

    return sub_2271DD124(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2271DCFC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_226F73F68, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2271DD124(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22766B390();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990);
  v2[9] = swift_task_alloc();
  v4 = sub_227665100();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2271DD284, 0, 0);
}

uint64_t sub_2271DD284()
{
  v33 = v0;
  __swift_project_boxed_opaque_existential_0((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  v1 = sub_22766A380() & 1;
  v2 = sub_227664AD0();
  v4 = v3;
  if (v2 == sub_227664AD0() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_22766D190();

    if ((v7 & 1) == 0)
    {
      sub_22766A6D0();
      v8 = sub_22766B380();
      v9 = sub_22766C890();
      v10 = os_log_type_enabled(v8, v9);
      v11 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 48);
      if (v10)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v32 = v15;
        *v14 = 136315138;
        *(v0 + 208) = v1;
        v16 = sub_22766C060();
        v18 = sub_226E97AE8(v16, v17, &v32);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_226E8E000, v8, v9, "Invalid Activity Move Mode: %s for Calorie Estimation.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AA9A450](v15, -1, -1);
        MEMORY[0x22AA9A450](v14, -1, -1);
      }

      v19 = *(v13 + 8);
      v19(v11, v12);
      *(v0 + 184) = v19;
      v20 = *(v0 + 32);
      v21 = v20[14];
      __swift_project_boxed_opaque_existential_0(v20 + 10, v20[13]);
      v22 = *(v21 + 24);

      v30 = (v22 + *v22);
      v23 = swift_task_alloc();
      *(v0 + 192) = v23;
      *v23 = v0;
      v23[1] = sub_2271DE038;

      return v30();
    }
  }

  v25 = *(v0 + 32);
  v26 = v25[13];
  v27 = v25[14];
  __swift_project_boxed_opaque_existential_0(v25 + 10, v26);
  v31 = (*(v27 + 24) + **(v27 + 24));
  v28 = swift_task_alloc();
  *(v0 + 104) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0F0, &qword_22767C9E8);
  *v28 = v0;
  v28[1] = sub_2271DD740;

  return v31(v0 + 16, sub_2271DE75C, 0, v29, v26, v27);
}

uint64_t sub_2271DD740()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2271DE344;
  }

  else
  {
    v2 = sub_2271DD854;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2271DD854()
{
  v1 = *(v0[3] + 16);
  v2 = *(v0[2] + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_2273A644C(0, v4 & ~(v4 >> 63), 0, MEMORY[0x277D84F90]);

    sub_2274613A4(v5);

    sub_227461290(v6);

    v0[15] = v8;
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2271DD954;

    sub_2271DFCB0();
  }
}

uint64_t sub_2271DD954(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_2271DE3D0;
  }

  else
  {
    v4 = sub_2271DDA68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2271DDA68()
{
  v1 = v0[11];
  v2 = sub_226F441CC(v0[15]);

  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;
  v7 = (v1 + 56);
  v28 = v1;
  v29 = (v1 + 32);
  v8 = v0[18];

  v9 = 0;
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v9;
    v0[19] = v30;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_2271DF5E0(*(*(v2 + 48) + ((v9 << 9) | (8 * v11))), v0[17], v0[9]);
    if (v8)
    {
      v13 = v0[9];
      v12 = v0[10];

      (*v7)(v13, 1, 1, v12);
      sub_226E97D1C(v13, &qword_27D7B9EC0, &qword_22767C990);
      v8 = 0;
    }

    else
    {
      v14 = v0[12];
      v16 = v0[9];
      v15 = v0[10];
      (*v7)(v16, 0, 1, v15);
      v17 = v16;
      v18 = *v29;
      (*v29)(v14, v17, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2273A6424(0, v30[2] + 1, 1, v30);
      }

      v20 = v30[2];
      v19 = v30[3];
      if (v20 >= v19 >> 1)
      {
        v30 = sub_2273A6424((v19 > 1), v20 + 1, 1, v30);
      }

      v21 = v0[12];
      v22 = v0[10];
      v30[2] = v20 + 1;
      v18(v30 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20, v21, v22);
      v8 = 0;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v10;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v23 = v0[4];

  v24 = v23[14];
  __swift_project_boxed_opaque_existential_0(v23 + 10, v23[13]);
  v25 = swift_allocObject();
  v0[20] = v25;
  *(v25 + 16) = v30;
  *(v25 + 24) = v23;
  v26 = *(v24 + 24);

  v31 = (v26 + *v26);
  v27 = swift_task_alloc();
  v0[21] = v27;
  *v27 = v0;
  v27[1] = sub_2271DDE2C;

  v31();
}