void sub_24F08A32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (!v11)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v13 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v16, v41);
      *(&v42 + 1) = *(*(a1 + 56) + 8 * v16);
      v38 = v41[0];
      v39 = v41[1];
      v40 = v42;
      v17 = *(&v42 + 1);

      sub_24F08CA10(v17, a2, a3, a4, a5);
      if (v18)
      {
        break;
      }

      sub_24E601704(&v38, &qword_27F222718, &qword_24F9C4E00);
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v19 = v18;
    v36 = v39;
    v37 = v40;
    v35 = v38;
    v20 = *(v7 + 16);
    if (*(v7 + 24) <= v20)
    {
      sub_24E899884(v20 + 1, 1);
      v7 = v43;
    }

    v21 = sub_24F92C7B8();
    v22 = v7 + 64;
    v23 = -1 << *(v7 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 64 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v22 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v7 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v7 + 48) + 40 * v26;
    *v31 = v35;
    *(v31 + 16) = v36;
    *(v31 + 32) = v37;
    *(*(v7 + 56) + 8 * v26) = v19;
    ++*(v7 + 16);
  }

  while (v11);
LABEL_7:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      swift_unknownObjectRelease();
      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t SearchResultsDiffablePageContentPresenter.__allocating_init(objectGraph:request:sponsoredSearchSessionManager:guidedSearchPresenter:appStateController:pendingPageRender:pageRenderMetrics:impressionsAppendixDataProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v103 = a8;
  v96 = a7;
  v100 = a5;
  v97 = a4;
  v99 = a3;
  v93 = a1;
  v102 = a10;
  v101 = a9;
  v98 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v92 - v15;
  v94 = &v92 - v15;
  v17 = swift_allocObject();
  v18 = a2[9];
  v112 = a2[8];
  v113 = v18;
  v114 = a2[10];
  v19 = a2[5];
  v108 = a2[4];
  v109 = v19;
  v20 = a2[7];
  v110 = a2[6];
  v111 = v20;
  v21 = a2[1];
  v104 = *a2;
  v22 = a2[2];
  v107 = a2[3];
  v105 = v21;
  v106 = v22;
  v23 = qword_27F238640;
  v24 = MEMORY[0x277D84F90];
  *(v17 + v23) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v25 = (v17 + qword_27F238648);
  v95 = a6;
  *v25 = a6;
  v25[1] = a7;
  v26 = sub_24F91F4A8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  *(v17 + qword_27F22F198) = 0;
  *(v17 + qword_27F22F1A0) = v24;
  v27 = qword_27F39C780;

  swift_unknownObjectRetain();

  *(v17 + v27) = sub_24E60986C(v24);
  v28 = (v17 + qword_27F22F1A8);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v17 + qword_27F22F1B0);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v17 + qword_27F22F1B8);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v17 + qword_27F22F1C0);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v17 + qword_27F22F1C8);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v17 + qword_27F39C788);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  *(v17 + qword_27F39C790) = 0;
  *(v17 + qword_27F22F1D0) = 0;
  *(v17 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v17 + qword_27F39C798) = 0;
  v34 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78, &qword_24F989D70);
  swift_allocObject();
  *(v17 + v34) = sub_24F92ADA8();
  v35 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v17 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90, &qword_24F989D80);
  swift_allocObject();
  *(v17 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B8;
  swift_allocObject();
  *(v17 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v17 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v17 + v39) = sub_24F92ADA8();
  v40 = qword_27F22F1E0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v42 = *(*(v41 - 8) + 56);
  v43 = v17 + v40;
  v44 = v93;
  v42(v43, 1, 1, v41);
  v42(v17 + qword_27F22F1E8, 1, 1, v41);
  *(v17 + 16) = v44;
  sub_24E911D90(v94, v17 + qword_27F39C7D0);
  v45 = *v28;
  v46 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  sub_24E824448(v45, v46);
  v47 = *v30;
  v48 = v30[1];
  *v30 = 0;
  v30[1] = 0;
  sub_24E824448(v47, v48);
  v49 = *v29;
  v50 = v29[1];
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v49, v50);
  v51 = *v31;
  v52 = v31[1];
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v51, v52);
  v53 = *v32;
  v54 = v32[1];
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v53, v54);
  *(v17 + qword_27F22F1F0) = v103;
  v55 = v101;
  *(v17 + qword_27F39C7D8) = v101;
  v56 = swift_allocObject();
  *(v56 + 24) = v97;
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = v57;
  *(v58 + 32) = v44;
  *(v58 + 40) = v55;
  v59 = v113;
  *(v58 + 176) = v112;
  *(v58 + 192) = v59;
  *(v58 + 208) = v114;
  v60 = v109;
  *(v58 + 112) = v108;
  *(v58 + 128) = v60;
  v61 = v111;
  *(v58 + 144) = v110;
  *(v58 + 160) = v61;
  v63 = v105;
  v62 = v106;
  *(v58 + 48) = v104;
  *(v58 + 64) = v63;
  v64 = v107;
  *(v58 + 80) = v62;
  *(v58 + 96) = v64;
  v65 = v96;
  *(v58 + 224) = v95;
  *(v58 + 232) = v65;
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  v68 = v102;
  v67[2] = v66;
  v67[3] = v68;
  v67[4] = v98;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_24F08D6D0;
  *(v69 + 24) = v44;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_24F08D6CC;
  *(v70 + 24) = v58;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_24E94DEE8;
  *(v71 + 24) = v70;
  v72 = (v17 + qword_27F22F1A8);
  v73 = *(v17 + qword_27F22F1A8);
  v74 = *(v17 + qword_27F22F1A8 + 8);
  *v72 = sub_24E965630;
  v72[1] = v71;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_24E824448(v73, v74);
  v75 = (v17 + qword_27F22F1B0);
  v77 = *(v17 + qword_27F22F1B0);
  v76 = *(v17 + qword_27F22F1B0 + 8);
  if (v77)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v76;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_24E94DF50;
    *(v79 + 24) = v78;
    v80 = sub_24E965648;
  }

  else
  {
    v80 = 0;
    v79 = *(v17 + qword_27F22F1B0 + 8);
  }

  *v75 = v80;
  v75[1] = v79;
  sub_24E5FCA4C(v77, v76);
  sub_24E824448(v77, v76);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_24F08D6DC;
  *(v81 + 24) = v67;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_24E94DFB8;
  *(v82 + 24) = v81;
  v83 = (v17 + qword_27F22F1B8);
  v84 = *(v17 + qword_27F22F1B8);
  v85 = *(v17 + qword_27F22F1B8 + 8);
  *v83 = sub_24E965640;
  v83[1] = v82;

  sub_24E824448(v84, v85);
  v86 = swift_allocObject();
  *(v86 + 16) = sub_24ECF3DB0;
  *(v86 + 24) = v69;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_24E94DEE8;
  *(v87 + 24) = v86;
  v88 = (v17 + qword_27F22F1C8);
  v89 = *(v17 + qword_27F22F1C8);
  v90 = *(v17 + qword_27F22F1C8 + 8);
  *v88 = sub_24E965630;
  v88[1] = v87;

  sub_24E824448(v89, v90);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v17;
}

uint64_t SearchResultsDiffablePageContentPresenter.init(objectGraph:request:sponsoredSearchSessionManager:guidedSearchPresenter:appStateController:pendingPageRender:pageRenderMetrics:impressionsAppendixDataProvider:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v104 = a8;
  v97 = a7;
  v101 = a5;
  v98 = a4;
  v100 = a3;
  v94 = a1;
  v103 = a10;
  v102 = a9;
  v99 = a11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v93 - v17;
  v95 = &v93 - v17;
  v19 = a2[9];
  v113 = a2[8];
  v114 = v19;
  v115 = a2[10];
  v20 = a2[5];
  v109 = a2[4];
  v110 = v20;
  v21 = a2[7];
  v111 = a2[6];
  v112 = v21;
  v22 = a2[1];
  v105 = *a2;
  v23 = a2[2];
  v108 = a2[3];
  v106 = v22;
  v107 = v23;
  v24 = qword_27F238640;
  v25 = MEMORY[0x277D84F90];
  *(v12 + v24) = sub_24E60A69C(MEMORY[0x277D84F90]);
  v26 = (v12 + qword_27F238648);
  v96 = a6;
  *v26 = a6;
  v26[1] = a7;
  v27 = sub_24F91F4A8();
  (*(*(v27 - 8) + 56))(v18, 1, 1, v27);
  *(v12 + qword_27F22F198) = 0;
  *(v12 + qword_27F22F1A0) = v25;
  v28 = qword_27F39C780;

  swift_unknownObjectRetain();

  *(v12 + v28) = sub_24E60986C(v25);
  v29 = (v12 + qword_27F22F1A8);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v12 + qword_27F22F1B0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v12 + qword_27F22F1B8);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v12 + qword_27F22F1C0);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v12 + qword_27F22F1C8);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v12 + qword_27F39C788);
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  *(v12 + qword_27F39C790) = 0;
  *(v12 + qword_27F22F1D0) = 0;
  *(v12 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v12 + qword_27F39C798) = 0;
  v35 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD78, &qword_24F989D70);
  swift_allocObject();
  *(v12 + v35) = sub_24F92ADA8();
  v36 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v12 + v36) = sub_24F92ADA8();
  v37 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AD90, &qword_24F989D80);
  swift_allocObject();
  *(v12 + v37) = sub_24F92ADA8();
  v38 = qword_27F39C7B8;
  swift_allocObject();
  *(v12 + v38) = sub_24F92ADA8();
  v39 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v12 + v39) = sub_24F92ADA8();
  v40 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v12 + v40) = sub_24F92ADA8();
  v41 = qword_27F22F1E0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v43 = *(*(v42 - 8) + 56);
  v44 = v12 + v41;
  v45 = v94;
  v43(v44, 1, 1, v42);
  v43(v12 + qword_27F22F1E8, 1, 1, v42);
  *(v12 + 16) = v45;
  sub_24E911D90(v95, v12 + qword_27F39C7D0);
  v46 = *v29;
  v47 = v29[1];
  *v29 = 0;
  v29[1] = 0;
  sub_24E824448(v46, v47);
  v48 = *v31;
  v49 = v31[1];
  *v31 = 0;
  v31[1] = 0;
  sub_24E824448(v48, v49);
  v50 = *v30;
  v51 = v30[1];
  *v30 = 0;
  v30[1] = 0;
  sub_24E824448(v50, v51);
  v52 = *v32;
  v53 = v32[1];
  *v32 = 0;
  v32[1] = 0;
  sub_24E824448(v52, v53);
  v54 = *v33;
  v55 = v33[1];
  *v33 = 0;
  v33[1] = 0;
  sub_24E824448(v54, v55);
  *(v12 + qword_27F22F1F0) = v104;
  v56 = v102;
  *(v12 + qword_27F39C7D8) = v102;
  v57 = swift_allocObject();
  *(v57 + 24) = v98;
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = v57;
  *(v59 + 24) = v58;
  *(v59 + 32) = v45;
  *(v59 + 40) = v56;
  v60 = v114;
  *(v59 + 176) = v113;
  *(v59 + 192) = v60;
  *(v59 + 208) = v115;
  v61 = v110;
  *(v59 + 112) = v109;
  *(v59 + 128) = v61;
  v62 = v112;
  *(v59 + 144) = v111;
  *(v59 + 160) = v62;
  v64 = v106;
  v63 = v107;
  *(v59 + 48) = v105;
  *(v59 + 64) = v64;
  v65 = v108;
  *(v59 + 80) = v63;
  *(v59 + 96) = v65;
  v66 = v97;
  *(v59 + 224) = v96;
  *(v59 + 232) = v66;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  v69 = v103;
  v68[2] = v67;
  v68[3] = v69;
  v68[4] = v99;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_24F08DCCC;
  *(v70 + 24) = v45;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_24F08DCC8;
  *(v71 + 24) = v59;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_24EC02BC0;
  *(v72 + 24) = v71;
  v73 = (v12 + qword_27F22F1A8);
  v74 = *(v12 + qword_27F22F1A8);
  v75 = *(v12 + qword_27F22F1A8 + 8);
  *v73 = sub_24EC02BFC;
  v73[1] = v72;
  swift_unknownObjectRetain();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  sub_24E824448(v74, v75);
  v76 = (v12 + qword_27F22F1B0);
  v78 = *(v12 + qword_27F22F1B0);
  v77 = *(v12 + qword_27F22F1B0 + 8);
  if (v78)
  {
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_24EC02BC4;
    *(v80 + 24) = v79;
    v81 = sub_24EC02BC8;
  }

  else
  {
    v81 = 0;
    v80 = *(v12 + qword_27F22F1B0 + 8);
  }

  *v76 = v81;
  v76[1] = v80;
  sub_24E5FCA4C(v78, v77);
  sub_24E824448(v78, v77);
  v82 = swift_allocObject();
  *(v82 + 16) = sub_24F08DCC4;
  *(v82 + 24) = v68;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_24EC02B74;
  *(v83 + 24) = v82;
  v84 = (v12 + qword_27F22F1B8);
  v85 = *(v12 + qword_27F22F1B8);
  v86 = *(v12 + qword_27F22F1B8 + 8);
  *v84 = sub_24EC02C00;
  v84[1] = v83;

  sub_24E824448(v85, v86);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_24ECF4148;
  *(v87 + 24) = v70;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_24EC02BC0;
  *(v88 + 24) = v87;
  v89 = (v12 + qword_27F22F1C8);
  v90 = *(v12 + qword_27F22F1C8);
  v91 = *(v12 + qword_27F22F1C8 + 8);
  *v89 = sub_24EC02BFC;
  v89[1] = v88;

  sub_24E824448(v90, v91);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_24F08B838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v63 = a5;
  v64 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v60 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600, &qword_24F985190);
  v15 = sub_24F92A9E8();
  type metadata accessor for ASKBagContract(0);
  sub_24F928FD8();
  sub_24F92A758();
  v65 = v67;
  if (qword_27F210888 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v12 + 8))(v14, v11);
  if (v67 == 1 && (swift_beginAccess(), (v16 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v17 = *(a2 + 24);
    v60[1] = v16;
    ObjectType = swift_getObjectType();
    v62 = (*(v17 + 16))(*(a6 + 2), *(a6 + 3), v61, v62, ObjectType, v17);
    v19 = swift_allocObject();
    v20 = a6[6];
    *(v19 + 168) = a6[7];
    v21 = a6[9];
    *(v19 + 184) = a6[8];
    *(v19 + 200) = v21;
    *(v19 + 216) = a6[10];
    v22 = a6[2];
    *(v19 + 104) = a6[3];
    v23 = a6[5];
    *(v19 + 120) = a6[4];
    *(v19 + 136) = v23;
    *(v19 + 152) = v20;
    v24 = a6[1];
    *(v19 + 56) = *a6;
    *(v19 + 72) = v24;
    v26 = v63;
    v25 = v64;
    *(v19 + 16) = a2;
    *(v19 + 24) = v25;
    *(v19 + 32) = a4;
    *(v19 + 40) = v26;
    *(v19 + 48) = v15;
    *(v19 + 88) = v22;
    v27 = swift_allocObject();
    v28 = a6[6];
    *(v27 + 168) = a6[7];
    v29 = a6[9];
    *(v27 + 184) = a6[8];
    *(v27 + 200) = v29;
    *(v27 + 216) = a6[10];
    v30 = a6[2];
    *(v27 + 104) = a6[3];
    v31 = a6[5];
    *(v27 + 120) = a6[4];
    *(v27 + 136) = v31;
    *(v27 + 152) = v28;
    v32 = a6[1];
    *(v27 + 56) = *a6;
    *(v27 + 72) = v32;
    *(v27 + 16) = a2;
    *(v27 + 24) = v25;
    *(v27 + 32) = a4;
    *(v27 + 40) = v26;
    *(v27 + 48) = v15;
    *(v27 + 88) = v30;
    v33 = sub_24E74EC40();

    sub_24E7B6680(a6, &v67);

    sub_24E7B6680(a6, &v67);
    v34 = sub_24F92BEF8();
    *(&v68 + 1) = v33;
    *&v69 = MEMORY[0x277D225C0];
    *&v67 = v34;
    sub_24F92A958();
    swift_unknownObjectRelease();

    v35 = &v67;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = v64;
    if (Strong)
    {
      v38 = *(a2 + 24);
      v39 = swift_getObjectType();
      (*(v38 + 24))(0, v39, v38);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v40 = a6[9];
      v75 = a6[8];
      v76 = v40;
      v77 = a6[10];
      v41 = a6[5];
      v71 = a6[4];
      v72 = v41;
      v42 = a6[7];
      v73 = a6[6];
      v74 = v42;
      v43 = a6[1];
      v67 = *a6;
      v68 = v43;
      v44 = a6[3];
      v69 = a6[2];
      v70 = v44;
      GuidedSearchPresenter.searchWillBegin(for:)(&v67);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F92A758();
    v45 = a6[9];
    v76 = a6[8];
    v77 = v45;
    v78 = a6[10];
    v46 = a6[5];
    v72 = a6[4];
    v73 = v46;
    v47 = a6[7];
    v74 = a6[6];
    v75 = v47;
    v48 = a6[1];
    v68 = *a6;
    v69 = v48;
    v49 = a6[3];
    v70 = a6[2];
    v71 = v49;
    *&v67 = 0xD000000000000017;
    *(&v67 + 1) = 0x800000024FA6A9E0;
    sub_24F929C28();

    sub_24E7B6680(a6, v66);
    sub_24F928FE8();
    sub_24F929BF8();

    v50 = sub_24F929C08();

    sub_24EB48ED0(&v67, v50, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
    sub_24F08DA50(&v67);
    v51 = swift_allocObject();
    *(v51 + 16) = v15;
    *(v51 + 24) = v37;
    v52 = a6[9];
    *(v51 + 160) = a6[8];
    *(v51 + 176) = v52;
    *(v51 + 192) = a6[10];
    v53 = a6[5];
    *(v51 + 96) = a6[4];
    *(v51 + 112) = v53;
    v54 = a6[7];
    *(v51 + 128) = a6[6];
    *(v51 + 144) = v54;
    v55 = a6[1];
    *(v51 + 32) = *a6;
    *(v51 + 48) = v55;
    v56 = a6[3];
    *(v51 + 64) = a6[2];
    *(v51 + 80) = v56;
    *(v51 + 208) = a2;
    *(v51 + 216) = 0;
    v57 = sub_24E74EC40();
    swift_retain_n();

    sub_24E7B6680(a6, v66);
    v58 = sub_24F92BEF8();
    v66[3] = v57;
    v66[4] = MEMORY[0x277D225C0];
    v66[0] = v58;
    sub_24F92A958();

    v35 = v66;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v15;
}

double sub_24F08BEE4(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  *&v18[0] = *a1;
  sub_24F92A9C8();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a4[9];
    v18[8] = a4[8];
    v18[9] = v10;
    v18[10] = a4[10];
    v11 = a4[5];
    v18[4] = a4[4];
    v18[5] = v11;
    v12 = a4[7];
    v18[6] = a4[6];
    v18[7] = v12;
    v13 = a4[1];
    v18[0] = *a4;
    v18[1] = v13;
    v14 = a4[3];
    v18[2] = a4[2];
    v18[3] = v14;
    GuidedSearchPresenter.searchDidReturn(for:with:queries:)(v18, *(v9 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens), *(v9 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries));
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(a5 + 24);
    ObjectType = swift_getObjectType();
    (*(v16 + 32))(a6, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F08C01C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(*a1 + 32);
  v11 = *(*a1 + 40);
  v13 = *(*a1 + 48);
  v12 = *(*a1 + 56);
  v14 = *(*a1 + 72);
  v15 = *(*a1 + 88);
  v39 = *(*a1 + 64);
  v40 = *(*a1 + 80);

  *&v67 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v16 = v10;
  v17 = a2;
  sub_24E988E4C(v16, v11, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D324(v13, v12, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v67;
  sub_24E81D324(v39, v14, 0x6974756F52644169, 0xEE006F666E49676ELL, v19);
  sub_24E988E4C(v40, v15, 0x7972616E6163, 0xE600000000000000);
  v20 = *(a7 + 168);
  v54 = *(a7 + 160);
  v55 = v20;
  v21 = v67;
  v22 = *(a7 + 144);
  v52 = *(a7 + 128);
  v53 = v22;
  v23 = *(a7 + 80);
  v48 = *(a7 + 64);
  v49 = v23;
  v24 = *(a7 + 112);
  v50 = *(a7 + 96);
  v51 = v24;
  v25 = *(a7 + 16);
  v44 = *a7;
  v45 = v25;
  v26 = *(a7 + 48);
  v46 = *(a7 + 32);
  v47 = v26;
  sub_24E7B6680(a7, &v67);
  sub_24E601704(&v55, &qword_27F225228, &qword_24FA1B180);
  v64 = v52;
  v65 = v53;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  *&v66 = v54;
  *(&v66 + 1) = v21;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v27 + 24))(v9, ObjectType, v27);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v75 = v64;
    v76 = v65;
    v77 = v66;
    v71 = v60;
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v67 = v56;
    v68 = v57;
    v69 = v58;
    v70 = v59;
    GuidedSearchPresenter.searchWillBegin(for:)(&v67);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  *&v67 = 0xD000000000000017;
  *(&v67 + 1) = 0x800000024FA6A9E0;
  sub_24F929C28();
  sub_24E7B6680(&v56, v43);

  sub_24F928FE8();
  sub_24F929BF8();

  v29 = sub_24F929C08();

  sub_24EB48ED0(&v67, v29, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
  sub_24F08DA50(&v67);
  v30 = swift_allocObject();
  *(v30 + 16) = a6;
  *(v30 + 24) = a3;
  v31 = v65;
  *(v30 + 160) = v64;
  *(v30 + 176) = v31;
  *(v30 + 192) = v66;
  v32 = v61;
  *(v30 + 96) = v60;
  *(v30 + 112) = v32;
  v33 = v63;
  *(v30 + 128) = v62;
  *(v30 + 144) = v33;
  v34 = v57;
  *(v30 + 32) = v56;
  *(v30 + 48) = v34;
  v35 = v59;
  *(v30 + 64) = v58;
  *(v30 + 80) = v35;
  *(v30 + 208) = v17;
  *(v30 + 216) = v9;
  v36 = sub_24E74EC40();

  sub_24E7B6680(&v56, v43);

  v37 = sub_24F92BEF8();
  v43[3] = v36;
  v43[4] = MEMORY[0x277D225C0];
  v43[0] = v37;
  sub_24F92A958();
  sub_24EB38BC8(&v56);

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_24F08C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = a7[9];
    v42 = a7[8];
    v43 = v13;
    v44 = a7[10];
    v14 = a7[5];
    v38 = a7[4];
    v39 = v14;
    v15 = a7[7];
    v40 = a7[6];
    v41 = v15;
    v16 = a7[1];
    v34 = *a7;
    v35 = v16;
    v17 = a7[3];
    v36 = a7[2];
    v37 = v17;
    GuidedSearchPresenter.searchWillBegin(for:)(&v34);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_24F928FD8();
  sub_24F92A758();
  v18 = a7[9];
  v43 = a7[8];
  v44 = v18;
  v45 = a7[10];
  v19 = a7[5];
  v39 = a7[4];
  v40 = v19;
  v20 = a7[7];
  v41 = a7[6];
  v42 = v20;
  v21 = a7[1];
  v35 = *a7;
  v36 = v21;
  v22 = a7[3];
  v37 = a7[2];
  v38 = v22;
  *&v34 = 0xD000000000000017;
  *(&v34 + 1) = 0x800000024FA6A9E0;
  sub_24F929C28();
  sub_24E7B6680(a7, v33);

  sub_24F928FE8();
  sub_24F929BF8();

  v23 = sub_24F929C08();

  sub_24EB48ED0(&v34, v23, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);
  sub_24F08DA50(&v34);
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = a3;
  v25 = a7[9];
  *(v24 + 160) = a7[8];
  *(v24 + 176) = v25;
  *(v24 + 192) = a7[10];
  v26 = a7[5];
  *(v24 + 96) = a7[4];
  *(v24 + 112) = v26;
  v27 = a7[7];
  *(v24 + 128) = a7[6];
  *(v24 + 144) = v27;
  v28 = a7[1];
  *(v24 + 32) = *a7;
  *(v24 + 48) = v28;
  v29 = a7[3];
  *(v24 + 64) = a7[2];
  *(v24 + 80) = v29;
  *(v24 + 208) = a2;
  *(v24 + 216) = 0;
  v30 = sub_24E74EC40();

  sub_24E7B6680(a7, v33);

  v31 = sub_24F92BEF8();
  v33[3] = v30;
  v33[4] = MEMORY[0x277D225C0];
  v33[0] = v31;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_24F08C7F8(uint64_t a1, uint64_t a2)
{
  sub_24E94E17C(a1, &v6);
  if (v7[1])
  {
    sub_24E612B0C(&v6, v8);
    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24E643A9C(v8, v7);
    *&v6 = 0xD00000000000001BLL;
    *(&v6 + 1) = 0x800000024FA6A980;
    v3 = sub_24EB490CC(&v6, a2, "GameStoreKit/SearchResultsDiffablePageContentPresenter.swift", 60, 2);

    sub_24F08D9FC(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_24E601704(&v6, &qword_27F2129B0, &unk_24F945320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229600, &qword_24F985190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238668, &qword_24F9C4E08);
    sub_24F08D998();
    swift_allocError();
    *v5 = 2;
    return sub_24F92A978();
  }
}

uint64_t sub_24F08C94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v9 = *(a1 + v8);
  swift_unknownObjectRetain();

  sub_24F08A32C(v9, a2, a1, a3, a4);
  v11 = v10;

  *(a1 + v8) = v11;
}

void sub_24F08CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v46 = a3;
  v5 = *(a1 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_62:
    LOBYTE(v58) = 104;
    Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v7, &v58, 1, 2);

    return;
  }

  v44[1] = a1;
  v66[0] = MEMORY[0x277D84F90];
  sub_24F457A9C(0, v6, 0);
  v51 = v5;
  v10 = v5 + 32;
  v7 = v66[0];
  v45 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled;
  swift_beginAccess();
  swift_beginAccess();
  v50 = a2;
  swift_beginAccess();
  v11 = 0;
  v47 = a5 + 32;
  v48 = a5;
  while (v11 < *(v51 + 16))
  {
    sub_24E615E00(v10, v65);
    sub_24E615E00(v65, v64);
    sub_24E615E00(v65, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
    v12 = type metadata accessor for AppSearchResult(0);
    if (swift_dynamicCast())
    {
      v13 = v62;
      if (swift_weakLoadStrong())
      {
        if (*(v13 + 16))
        {
          if (*(v13 + 16) != 1)
          {
LABEL_24:

            goto LABEL_25;
          }
        }

        else if (*(v46 + v45))
        {
          v19 = *(v13 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
          v20 = *(v19 + 24);
          v52 = *(v19 + 16);
          v53 = v20;

          sub_24F08D22C(&v52, &v54);

          v58 = v54;
          v59 = v55;
          v60 = v56;
          v61 = v57;
          v21 = v57 >> 60;
          if (v57 >> 60 == 2 || v21 == 7 || v21 == 8 && !*(&v61 + 1) && v57 == 0x8000000000000000 && v58 == 1 && (v22 = vorrq_s8(v59, v60), !(*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | *(&v58 + 1))))
          {
            sub_24E88D2AC(&v58);
            goto LABEL_24;
          }

          sub_24E88D2AC(&v58);
        }

        v23 = 1;
      }

      else
      {
LABEL_25:
        v23 = v49;
        if (v49)
        {
          ObjectType = swift_getObjectType();
          (*(v48 + 32))(v13, ObjectType);
          v23 = 0;
        }
      }

      v33 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
      swift_beginAccess();
      *(v13 + v33) = v23;
LABEL_54:

      goto LABEL_55;
    }

    type metadata accessor for AppEventSearchResult(0);
    if (swift_dynamicCast())
    {
      v14 = v62;
      if (!swift_weakLoadStrong())
      {
        goto LABEL_35;
      }

      if (*(v14 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent) != 1)
      {
        v15 = *(v14 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
        v16 = *(v15 + 24);
        v52 = *(v15 + 16);
        v53 = v16;

        sub_24F08D22C(&v52, &v54);

        v58 = v54;
        v59 = v55;
        v60 = v56;
        v61 = v57;
        v17 = v57 >> 60;
        if (v57 >> 60 != 3 && v17 != 2 && v17 != 7)
        {
          if (v17 != 8 || *(&v61 + 1) || v57 != 0x8000000000000000 || v58 != 1 || (v25 = vorrq_s8(v59, v60), *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | *(&v58 + 1)))
          {
            sub_24E88D2AC(&v58);

LABEL_35:
            v26 = sub_24EBEB168();
            if (swift_weakLoadStrong())
            {
              if (*(v26 + 16))
              {
                if (*(v26 + 16) != 1)
                {
LABEL_48:

                  goto LABEL_49;
                }
              }

              else if (*(v46 + v45))
              {
                v27 = *(v26 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
                v28 = *(v27 + 24);
                v52 = *(v27 + 16);
                v53 = v28;

                sub_24F08D22C(&v52, &v54);

                v58 = v54;
                v59 = v55;
                v60 = v56;
                v61 = v57;
                v29 = v57 >> 60;
                if (v57 >> 60 == 2 || v29 == 7 || v29 == 8 && !*(&v61 + 1) && v57 == 0x8000000000000000 && v58 == 1 && (v30 = vorrq_s8(v59, v60), !(*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | *(&v58 + 1))))
                {
                  sub_24E88D2AC(&v58);
                  goto LABEL_48;
                }

                sub_24E88D2AC(&v58);
              }

              v31 = 1;
            }

            else
            {
LABEL_49:
              v31 = v49;
              if (v49)
              {
                v32 = swift_getObjectType();
                (*(v48 + 32))(v26, v32);
                v31 = 0;
              }
            }

            v43 = OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_shouldDisplayMedia;
            swift_beginAccess();
            *(v26 + v43) = v31;
            v59.i64[1] = v12;
            v60.i64[0] = sub_24F08D940();

            *&v58 = v26;
            __swift_destroy_boxed_opaque_existential_1(v64);
            sub_24E612C80(&v58, v64);
            goto LABEL_55;
          }
        }

        sub_24E88D2AC(&v58);
      }

      v18 = OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_shouldDisplayAppEvent;
      swift_beginAccess();
      *(v14 + v18) = 1;
      goto LABEL_54;
    }

LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(v63);
    sub_24E612C80(v64, &v58);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v66[0] = v7;
    v35 = *(v7 + 16);
    v34 = *(v7 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_24F457A9C((v34 > 1), v35 + 1, 1);
    }

    ++v11;
    v36 = v59.i64[1];
    v37 = v60.i64[0];
    v38 = __swift_mutable_project_boxed_opaque_existential_1(&v58, v59.i64[1]);
    v39 = MEMORY[0x28223BE20](v38);
    v41 = v44 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v41, v39);
    sub_24ED8F474(v35, v41, v66, v36, v37);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    v7 = v66[0];
    v10 += 40;
    if (v6 == v11)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
}

BOOL sub_24F08D12C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_alwaysShowAppEvent))
  {
    return 1;
  }

  v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);
  v3 = *(v2 + 24);
  v8[0] = *(v2 + 16);
  v8[1] = v3;

  sub_24F08D22C(v8, v9);

  v4 = v10 >> 60;
  if (v10 >> 60 == 3)
  {
    sub_24E88D2AC(v9);
    return 1;
  }

  else
  {
    v5 = v4 == 2 || v4 == 7;
    v7 = 1;
    if (!v5)
    {
      if (v4 != 8 || v11 || v10 != 0x8000000000000000 || *&v9[0] != 1 || (v6 = vorrq_s8(v9[1], v9[2]), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | *(&v9[0] + 1)))
      {
        v7 = 0;
      }
    }

    sub_24E88D2AC(v9);
    return v7;
  }
}

double sub_24F08D22C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  v7 = qword_27F238640;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_24E7728F0(v6, v5);
  if ((v10 & 1) == 0)
  {

    v15 = *(v3 + v7);
    if (*(v15 + 16))
    {

      v16 = sub_24E7728F0(v6, v5);
      if (v17)
      {
        v18 = (*(v15 + 56) + (v16 << 6));
        v20 = v18[2];
        v19 = v18[3];
        v21 = v18[1];
        v37 = *v18;
        v38 = v21;
        v39 = v20;
        v40 = v19;
        sub_24E8B9478(&v37, v34);

        *v35 = v37;
        *&v35[16] = v38;
        v22 = v39;
        v23 = v40;
        goto LABEL_10;
      }
    }

LABEL_8:
    if (!*(v3 + qword_27F238648))
    {
      memset(&v35[8], 0, 40);
      *v35 = 4;
      v36 = xmmword_24F966510;
      goto LABEL_12;
    }

    v24 = *(v3 + qword_27F238648 + 8);
    ObjectType = swift_getObjectType();
    *&v37 = v6;
    *(&v37 + 1) = v5;
    (*(v24 + 56))(&v37, ObjectType, v24);
    v27 = v26;
    v28 = swift_getObjectType();
    (*(v27 + 16))(v33, v28, v27);
    swift_unknownObjectRelease();
    *v35 = v33[0];
    *&v35[16] = v33[1];
    v22 = v33[2];
    v23 = v33[3];
LABEL_10:
    *&v35[32] = v22;
    v36 = v23;
LABEL_12:
    v37 = *v35;
    v38 = *&v35[16];
    v39 = *&v35[32];
    v40 = v36;
    swift_beginAccess();

    sub_24E8B9478(v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_24E820174(&v37, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v34[0];
    swift_endAccess();
    goto LABEL_13;
  }

  v11 = (*(v8 + 56) + (v9 << 6));
  v13 = v11[2];
  v12 = v11[3];
  v14 = v11[1];
  v37 = *v11;
  v38 = v14;
  v39 = v13;
  v40 = v12;
  sub_24E8B9478(&v37, v35);

LABEL_13:
  v30 = v38;
  *a2 = v37;
  a2[1] = v30;
  result = *&v39;
  v32 = v40;
  a2[2] = v39;
  a2[3] = v32;
  return result;
}

uint64_t sub_24F08D4D4()
{
  swift_unknownObjectRelease();
}

uint64_t SearchResultsDiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchResultsDiffablePageContentPresenter.__deallocating_deinit()
{
  _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_24F08D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24F08D65C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F08D694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F08D6E8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{

  if (*(v0 + 160) != 1)
  {

    sub_24E7B6564(*(v0 + 184), *(v0 + 192));
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for SearchResultsDiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F238650;
  if (!qword_27F238650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F08D940()
{
  result = qword_27F238660;
  if (!qword_27F238660)
  {
    type metadata accessor for AppSearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238660);
  }

  return result;
}

unint64_t sub_24F08D998()
{
  result = qword_27F238670;
  if (!qword_27F238670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238668, &qword_24F9C4E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238670);
  }

  return result;
}

uint64_t objectdestroy_139Tm()
{

  if (*(v0 + 168) != 1)
  {

    sub_24E7B6564(*(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_136Tm()
{

  if (*(v0 + 144) != 1)
  {

    sub_24E7B6564(*(v0 + 168), *(v0 + 176));
  }

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for ComponentMargin(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 65286 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65286 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65286;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65286;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ComponentMargin(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_24F08DE54(uint64_t a1)
{
  type metadata accessor for GSKShelf(319);
  if (v1 <= 0x3F)
  {
    sub_24F09B380(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E6C5550();
      if (v3 <= 0x3F)
      {
        sub_24E6CAEE4(319, &qword_27F22EB18, &unk_27F22EB20, qword_24F9C4E60, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F09B380(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24F09B380(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24F09B32C(319, &qword_27F238700, MEMORY[0x277CDE160]);
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

uint64_t sub_24F08E028(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GSKShelf(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[9];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678, &qword_24F9C4E48);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[16];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24F08E170(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GSKShelf(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[9];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678, &qword_24F9C4E48);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[16];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_24F08E300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  v4 = type metadata accessor for GSKShelf(0);
  sub_24E60169C(v0 + *(v4 + 20), v3, &qword_27F213E68, &unk_24F93BC80);
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_24E601704(v3, &qword_27F213E68, &unk_24F93BC80);
LABEL_11:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_12;
  }

  v7 = sub_24F9295F8();
  (*(v6 + 8))(v3, v5);
  if (!*(v7 + 16) || (v8 = sub_24E76D644(0x6973736572706D69, 0xEF7865646E496E6FLL), (v9 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_24E643A9C(*(v7 + 56) + 32 * v8, &v12);

  if (!*(&v13 + 1))
  {
LABEL_12:
    sub_24E601704(&v12, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v11[1];
  }

  else
  {
    return 0;
  }
}

double sub_24F08E504()
{
  v1 = *(v0 + *(type metadata accessor for CommonCardAttributes(0) + 84));
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_24F924218();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58, &qword_24F967B40);
    sub_24F924218();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F924208();
  }

  sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  return result;
}

double sub_24F08E6B0()
{
  v1 = *(v0 + *(type metadata accessor for HeaderPresentation(0) + 44));
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_24F924218();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE58, &qword_24F967B40);
    sub_24F924218();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F924208();
  }

  sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
  sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  return result;
}

uint64_t sub_24F08E85C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a4;
  v19 = *a1;
  v20 = type metadata accessor for GSKShelfView(0, a12, a13, a4);
  v21 = &a9[v20[14]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a9[v20[15]];
  sub_24F926F28();
  *v22 = v31;
  *(v22 + 1) = v32;
  v23 = v20[16];
  *&a9[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  swift_storeEnumTagMultiPayload();
  *a9 = v19;
  sub_24E64346C(&a9[v20[9]]);
  result = sub_24F09B734(a2, type metadata accessor for GSKShelf);
  v25 = &a9[v20[10]];
  *v25 = a3;
  v25[8] = v15 & 1;
  v26 = &a9[v20[11]];
  *v26 = a5;
  v26[1] = a6;
  v27 = &a9[v20[12]];
  *v27 = a7;
  v27[1] = a8;
  v28 = &a9[v20[13]];
  *v28 = a10;
  v28[1] = a11;
  return result;
}

uint64_t sub_24F08EA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v16 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 36));
  v17 = type metadata accessor for ZoomableViewModifier(0);
  sub_24E60169C(a2, v16 + v17[6], &qword_27F2171D0, &unk_24F980290);
  sub_24E60169C(a3, v16 + v17[7], qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(a4, v16 + v17[8], &qword_27F2171C8, &unk_24F945310);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v18 = v16 + v17[5];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  return sub_24E60169C(a1, a9, a7, a8);
}

uint64_t sub_24F08EB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238870, &qword_24F9C5330) + 36));
  v11 = type metadata accessor for ZoomableViewModifier(0);
  sub_24E60169C(a2, v10 + v11[6], &qword_27F2171D0, &unk_24F980290);
  sub_24E60169C(a3, v10 + v11[7], qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(a4, v10 + v11[8], &qword_27F2171C8, &unk_24F945310);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v11[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;

  return sub_24F0A10E8(a1, a5);
}

uint64_t sub_24F08EC88@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = a1 - 2;
  v53 = *(a1 - 1);
  MEMORY[0x28223BE20](a1);
  v50 = v6;
  v52 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v47);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 3);
  v55 = *(v5 + 4);
  v56 = v9;
  v11 = type metadata accessor for SizedShelfGridView(0, v9, v55, v10);
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v51 = sub_24F924038();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v43 - v14;
  v15 = &v2[v5[11]];
  sub_24F09F69C(v15, v8, type metadata accessor for GSKShelf);
  v16 = &v2[v5[13]];
  v17 = v16[1];
  v44 = *v16;
  LOBYTE(v59) = *v2;

  v18 = sub_24F08E300();
  if (v19)
  {
    v20 = &v2[a1[10]];
    v21 = *v20;
    v22 = v20[8];
  }

  else
  {
    v21 = v18;
    v22 = 0;
  }

  v23 = a1[13];
  v24 = &v2[a1[12]];
  v25 = *v24;
  v26 = v24[1];
  v45 = a1;
  v28 = *(v3 + v23);
  v27 = *(v3 + v23 + 8);
  sub_24F08F114(v8, v44, v17, &v59, v21, v22, v25, v26, v13, v28, v27, v56, v55);
  v44 = v3;
  v29 = v47;
  v30 = v15 + *(v47 + 36);
  v31 = *(v30 + 16);
  v59 = *v30;
  v60 = v31;
  sub_24E5FCA4C(v25, v26);
  sub_24E5FCA4C(v28, v27);
  WitnessTable = swift_getWitnessTable();
  v33 = v48;
  View.shelfDisplayStyle(for:)(&v59, v11, WitnessTable);
  (*(v46 + 8))(v13, v11);
  LOBYTE(v59) = *(v15 + *(v29 + 68));
  v35 = v52;
  v34 = v53;
  v36 = v45;
  (*(v53 + 16))(v52, v44, v45);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v55;
  *(v38 + 16) = v56;
  *(v38 + 24) = v39;
  (*(v34 + 32))(v38 + v37, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2383C8, &unk_24F9C4EF0);
  v40 = sub_24EB68EB4();
  v57 = WitnessTable;
  v58 = v40;
  v41 = v51;
  swift_getWitnessTable();
  sub_24F0904D0();
  sub_24F926AB8();

  return (*(v49 + 8))(v33, v41);
}

uint64_t sub_24F08F114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a11, uint64_t a12, uint64_t arg10, uint64_t a13)
{
  v20 = *a4;
  v21 = type metadata accessor for SizedShelfGridView(0, arg10, a13, a4);
  v22 = a9 + v21[14];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v21[15];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  v24 = a9 + v21[16];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v21[17];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v26 = v21[18];
  *(a9 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v27 = v21[19];
  *(a9 + v27) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v28 = a9 + v21[20];
  *v28 = swift_getKeyPath();
  *(v28 + 8) = 0;
  v29 = a9 + v21[21];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  result = sub_24E67C3EC(a1, a9);
  v31 = (a9 + v21[9]);
  *v31 = a2;
  v31[1] = a3;
  *(a9 + v21[10]) = v20;
  v32 = a9 + v21[11];
  *v32 = a5;
  *(v32 + 8) = a6 & 1;
  v33 = (a9 + v21[12]);
  *v33 = a7;
  v33[1] = a8;
  v34 = (a9 + v21[13]);
  *v34 = a11;
  v34[1] = a12;
  return result;
}

void sub_24F08F314(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F925168();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a2;
  if (v14 != 2 && (v14 & 1) != 0)
  {
    v15 = (a3 + *(type metadata accessor for GSKShelfView(0, a4, a5, v11) + 60));
    v16 = *v15;
    v17 = *(v15 + 1);
    v20 = *v15;
    v21 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F38();
    if ((v19 & 1) == 0)
    {
      v20 = v16;
      v21 = v17;
      v19 = 1;
      sub_24F926F48();
      sub_24F76A218(v13);
      sub_24F925158();
      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_24F08F494@<X0>(int *a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v146 = a2;
  type metadata accessor for SizedShelfGridView(255, *(a1 + 2), *(a1 + 3), x3_0);
  v6 = sub_24F924038();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8, &unk_24F9C4EF0);
  WitnessTable = swift_getWitnessTable();
  v200 = sub_24EB68EB4();
  v150 = swift_getWitnessTable();
  v151 = v6;
  v195 = v6;
  v196 = v7;
  v149 = v7;
  v197 = v150;
  v198 = sub_24F0904D0();
  v152 = v198;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = sub_24F924E38();
  v129 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v135 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v134 = &v126 - v12;
  v148 = v13;
  v14 = sub_24F924E38();
  v137 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v136 = &v126 - v15;
  v140 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v16);
  v132 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v126 - v19;
  v20 = sub_24F924848();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = OpaqueTypeMetadata2;
  v24 = sub_24F924E38();
  v128 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v131 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v126 - v27;
  v143 = v29;
  v30 = sub_24F924E38();
  v133 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v130 = &v126 - v31;
  v145 = v14;
  v144 = sub_24F924E38();
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v147 = &v126 - v32;
  v33 = v4 + a1[9];
  v34 = *(v33 + *(type metadata accessor for GSKShelf(0) + 32));
  v35 = MEMORY[0x277CE1410];
  v141 = v30;
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v51 = v132;
      sub_24F08EC88(a1, v132);
      v195 = v151;
      v196 = v149;
      v197 = v150;
      v198 = v152;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v53 = v138;
      sub_24E7896B8();
      v54 = *(v140 + 8);
      v140 += 8;
      v135 = v54;
      v54(v51, v53);
      sub_24E7896B8();
      v175 = OpaqueTypeConformance2;
      v176 = v35;
      v55 = v148;
      v56 = swift_getWitnessTable();
      v57 = v136;
      sub_24ECCCBA0(v51, v53, v55, OpaqueTypeConformance2, v56);
      v173 = v35;
      v174 = OpaqueTypeConformance2;
      v58 = swift_getWitnessTable();
      v171 = v35;
      v172 = v58;
      v59 = v141;
      v134 = swift_getWitnessTable();
      v169 = OpaqueTypeConformance2;
      v170 = v56;
      v60 = v145;
      v61 = swift_getWitnessTable();
      v62 = v147;
      sub_24ECCCC98(v57, v59, v60, v134, v61);
      (*(v137 + 8))(v57, v60);
      v63 = v135;
      v135(v51, v53);
      v63(v139, v53);
      v50 = v62;
      v49 = v152;
      v48 = v149;
      goto LABEL_19;
    }

    v75 = v4 + a1[14];
    v76 = *v75;
    if (*(v75 + 8) == 1)
    {
      v77 = v152;
      if ((v76 & 1) == 0)
      {
LABEL_11:
        v78 = v77;
        v79 = v150;
        v80 = v151;
        v81 = v149;
        v195 = v151;
        v196 = v149;
        v197 = v150;
        v198 = v78;
        v82 = swift_getOpaqueTypeConformance2();
        v83 = v138;
        sub_24ECCCC98(v82, v138, MEMORY[0x277CE1428], v82, MEMORY[0x277CE1410]);
LABEL_17:
        v195 = v80;
        v196 = v81;
        v197 = v79;
        v198 = v152;
        v104 = swift_getOpaqueTypeConformance2();
        v193 = v104;
        v35 = MEMORY[0x277CE1410];
        v194 = MEMORY[0x277CE1410];
        v105 = v148;
        v106 = swift_getWitnessTable();
        v107 = v135;
        sub_24E7896B8();
        v108 = v136;
        v109 = v83;
        v110 = v105;
        sub_24ECCCC98(v107, v109, v105, v104, v106);
        v191 = v35;
        v192 = v104;
        v111 = swift_getWitnessTable();
        v189 = v35;
        v190 = v111;
        v112 = v141;
        v140 = swift_getWitnessTable();
        v187 = v104;
        v188 = v106;
        v113 = v112;
        v48 = v149;
        v114 = v145;
        v115 = swift_getWitnessTable();
        v116 = v147;
        sub_24ECCCC98(v108, v113, v114, v140, v115);
        v117 = v108;
        v50 = v116;
        (*(v137 + 8))(v117, v114);
        v118 = *(v129 + 8);
        v118(v135, v110);
        v118(v134, v110);
        goto LABEL_18;
      }
    }

    else
    {

      sub_24F92BDC8();
      v98 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v76, 0);
      (*(v21 + 8))(v23, v20);
      v77 = v152;
      if (v195 != 1)
      {
        goto LABEL_11;
      }
    }

    v99 = v132;
    sub_24F08EC88(a1, v132);
    v100 = v150;
    v81 = v149;
    v195 = v151;
    v196 = v149;
    v197 = v150;
    v198 = v77;
    v101 = swift_getOpaqueTypeConformance2();
    v83 = v138;
    v102 = v139;
    sub_24E7896B8();
    v103 = *(v140 + 8);
    v103(v99, v83);
    sub_24E7896B8();
    sub_24ECCCBA0(v99, v83, MEMORY[0x277CE1428], v101, MEMORY[0x277CE1410]);
    v79 = v100;
    v103(v99, v83);
    v103(v102, v83);
    v80 = v151;
    goto LABEL_17;
  }

  if (v34)
  {
    v64 = v4 + a1[14];
    v65 = *v64;
    if (*(v64 + 8) == 1)
    {
      v50 = v147;
      if ((v65 & 1) == 0)
      {
LABEL_8:
        v66 = v132;
        sub_24F08EC88(a1, v132);
        v67 = v150;
        v68 = v149;
        v195 = v151;
        v196 = v149;
        v197 = v150;
        v198 = v152;
        v69 = swift_getOpaqueTypeConformance2();
        v71 = v138;
        v70 = v139;
        sub_24E7896B8();
        v72 = *(v140 + 8);
        v72(v66, v71);
        sub_24E7896B8();
        sub_24ECCCC98(v66, MEMORY[0x277CE1428], v71, MEMORY[0x277CE1410], v69);
        v72(v66, v71);
        v73 = v71;
        v50 = v147;
        v72(v70, v73);
        v74 = v151;
LABEL_14:
        v127 = v28;
        v195 = v74;
        v196 = v68;
        v197 = v67;
        v198 = v152;
        v86 = swift_getOpaqueTypeConformance2();
        v35 = MEMORY[0x277CE1410];
        v167 = MEMORY[0x277CE1410];
        v168 = v86;
        v87 = v143;
        v88 = swift_getWitnessTable();
        v89 = v131;
        sub_24E7896B8();
        v90 = v130;
        sub_24ECCCC98(v89, MEMORY[0x277CE1428], v87, v35, v88);
        v165 = v35;
        v166 = v88;
        v91 = v141;
        v92 = swift_getWitnessTable();
        v163 = v86;
        v164 = v35;
        v93 = swift_getWitnessTable();
        v161 = v86;
        v162 = v93;
        v94 = v145;
        v95 = swift_getWitnessTable();
        v96 = v92;
        v48 = v149;
        sub_24ECCCBA0(v90, v91, v94, v96, v95);
        (*(v133 + 8))(v90, v91);
        v97 = *(v128 + 8);
        v97(v131, v87);
        v97(v127, v87);
LABEL_18:
        v49 = v152;
        goto LABEL_19;
      }
    }

    else
    {

      sub_24F92BDC8();
      v84 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v65, 0);
      (*(v21 + 8))(v23, v20);
      v50 = v147;
      if (v195 != 1)
      {
        goto LABEL_8;
      }
    }

    v67 = v150;
    v74 = v151;
    v68 = v149;
    v195 = v151;
    v196 = v149;
    v197 = v150;
    v198 = v152;
    v85 = swift_getOpaqueTypeConformance2();
    sub_24ECCCBA0(v85, MEMORY[0x277CE1428], v138, MEMORY[0x277CE1410], v85);
    goto LABEL_14;
  }

  v36 = v149;
  v195 = v151;
  v196 = v149;
  v197 = v150;
  v198 = v152;
  v37 = swift_getOpaqueTypeConformance2();
  v159 = v35;
  v160 = v37;
  v38 = v143;
  v39 = swift_getWitnessTable();
  v40 = v130;
  sub_24ECCCBA0(v39, MEMORY[0x277CE1428], v38, v35, v39);
  v157 = v35;
  v158 = v39;
  v41 = v141;
  v42 = swift_getWitnessTable();
  v155 = v37;
  v156 = v35;
  v43 = swift_getWitnessTable();
  v153 = v37;
  v154 = v43;
  v44 = v145;
  v45 = swift_getWitnessTable();
  v46 = v147;
  v47 = v42;
  v48 = v36;
  sub_24ECCCBA0(v40, v41, v44, v47, v45);
  v49 = v152;
  v50 = v46;
  (*(v133 + 8))(v40, v41);
LABEL_19:
  v195 = v151;
  v196 = v48;
  v197 = v150;
  v198 = v49;
  v119 = swift_getOpaqueTypeConformance2();
  v185 = v35;
  v186 = v119;
  v120 = swift_getWitnessTable();
  v183 = v35;
  v184 = v120;
  v121 = swift_getWitnessTable();
  v181 = v119;
  v182 = v35;
  v122 = swift_getWitnessTable();
  v179 = v119;
  v180 = v122;
  v123 = swift_getWitnessTable();
  v177 = v121;
  v178 = v123;
  v124 = v144;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v142 + 8))(v50, v124);
}

uint64_t sub_24F09045C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_24F0C8EE8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_24F0C8EE8(v2, v3);
}

unint64_t sub_24F0904D0()
{
  result = qword_27F238708;
  if (!qword_27F238708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8, &unk_24F9C4EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238708);
  }

  return result;
}

uint64_t sub_24F09054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GSKShelfView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + ((v6 + 32) & ~v6);
  v8 = v7 + v5[9];
  v9 = sub_24F92AA48();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for GSKShelf(0);
  v11 = *(v10 + 20);
  v12 = sub_24F929608();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  v97 = v10;
  v96 = v8;
  v14 = v8 + *(v10 + 24);
  v15 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v16 = *(*(v15 - 1) + 48);
  if (!v16(v14, 1, v15))
  {

    v17 = v14 + v15[5];
    v18 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v75 = sub_24F9289E8();
          (*(*(v75 - 8) + 8))(v17, v75);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v19 = v14 + v15[7];
          v20 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v22 = sub_24F928388();
              (*(*(v22 - 8) + 8))(v19, v22);
            }
          }

          v23 = (v14 + v15[10]);
          if (v23[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v23);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v63 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v64 = type metadata accessor for JSColor(0);
        if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
        {
          v65 = sub_24F928388();
          (*(*(v65 - 8) + 8))(v63, v65);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v72 = sub_24F9289E8();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v17, 1, v72))
        {
          (*(v73 + 8))(v17, v72);
        }

        if (*(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v24 = type metadata accessor for HeaderPresentation(0);
  v25 = v14 + v24[5];
  if (v16(v25, 1, v15))
  {
    goto LABEL_33;
  }

  v26 = v25 + v15[5];
  v27 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    goto LABEL_18;
  }

  v30 = swift_getEnumCaseMultiPayload();
  if (v30 <= 2)
  {
    if (!v30)
    {

      v66 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v67 = type metadata accessor for JSColor(0);
      if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
      {
        v68 = sub_24F928388();
        (*(*(v68 - 8) + 8))(v66, v68);
      }

      goto LABEL_18;
    }

    if (v30 == 1)
    {
      v74 = sub_24F9289E8();
      v94 = *(v74 - 8);
      if (!(*(v94 + 48))(v26, 1, v74))
      {
        (*(v94 + 8))(v26, v74);
      }

      if (*(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v30 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v30)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v77 = sub_24F9289E8();
      (*(*(v77 - 8) + 8))(v26, v77);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v28 = v25 + v15[7];
  v29 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v31 = sub_24F928388();
      (*(*(v31 - 8) + 8))(v28, v31);
    }
  }

  v32 = (v25 + v15[10]);
  if (v32[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

LABEL_33:
  v33 = v14 + v24[6];
  if (v16(v33, 1, v15))
  {
    goto LABEL_50;
  }

  v34 = v33 + v15[5];
  v35 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    goto LABEL_35;
  }

  v38 = swift_getEnumCaseMultiPayload();
  if (v38 <= 2)
  {
    if (!v38)
    {

      v69 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v70 = type metadata accessor for JSColor(0);
      if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        v71 = sub_24F928388();
        (*(*(v71 - 8) + 8))(v69, v71);
      }

      goto LABEL_35;
    }

    if (v38 == 1)
    {
      v76 = sub_24F9289E8();
      v95 = *(v76 - 8);
      if (!(*(v95 + 48))(v34, 1, v76))
      {
        (*(v95 + 8))(v34, v76);
      }

      if (*(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v38 != 2)
    {
      goto LABEL_35;
    }

LABEL_88:

    goto LABEL_35;
  }

  switch(v38)
  {
    case 3:
      goto LABEL_88;
    case 4:
      v78 = sub_24F9289E8();
      (*(*(v78 - 8) + 8))(v34, v78);
      break;
    case 5:
      goto LABEL_88;
  }

LABEL_35:
  v36 = v33 + v15[7];
  v37 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v39 = sub_24F928388();
      (*(*(v39 - 8) + 8))(v36, v39);
    }
  }

  v40 = (v33 + v15[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

LABEL_50:
  v41 = v14 + v24[7];
  if (*(v41 + 56) == 1)
  {
  }

  else if (!*(v41 + 56))
  {

    if (*(v41 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v41 + 16));
    }
  }

  v42 = v14 + v24[8];
  v43 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  v44 = v97;
  if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 == 2)
    {
      goto LABEL_134;
    }

    if (v51 != 1)
    {
      if (v51)
      {
        goto LABEL_56;
      }

      v52 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v52 - 8) + 48))(v42, 1, v52))
      {
        goto LABEL_56;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 2)
      {
        if (v53 != 3)
        {
          if (v53 == 4)
          {
            v93 = sub_24F9289E8();
            (*(*(v93 - 8) + 8))(v42, v93);
            goto LABEL_56;
          }

          if (v53 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_134;
      }

      if (v53)
      {
        if (v53 == 1)
        {
          v91 = sub_24F9289E8();
          v92 = *(v91 - 8);
          if (!(*(v92 + 48))(v42, 1, v91))
          {
            (*(v92 + 8))(v42, v91);
          }

          if (!*(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v53 != 2)
        {
          goto LABEL_56;
        }

LABEL_134:

        goto LABEL_56;
      }

      v58 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v59 = type metadata accessor for JSColor(0);
      if ((*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        goto LABEL_56;
      }

LABEL_84:
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v58, v60);

      goto LABEL_56;
    }

    v54 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v55 = *(*(v54 - 8) + 48);
    if (v55(v42, 1, v54))
    {
LABEL_82:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v57 = v42 + *(v56 + 48);
      if (v55(v57, 1, v54))
      {
        goto LABEL_83;
      }

      v62 = swift_getEnumCaseMultiPayload();
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 != 1)
          {
            if (v62 != 2)
            {
              goto LABEL_83;
            }

LABEL_130:

            goto LABEL_83;
          }

          v87 = sub_24F9289E8();
          v88 = *(v87 - 8);
          if (!(*(v88 + 48))(v57, 1, v87))
          {
            (*(v88 + 8))(v57, v87);
          }

          if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v82 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v83 = type metadata accessor for JSColor(0);
          if (!(*(*(v83 - 8) + 48))(v82, 1, v83))
          {
            v84 = sub_24F928388();
            (*(*(v84 - 8) + 8))(v82, v84);
          }
        }

LABEL_83:
        v58 = v42 + *(v56 + 80);
        v59 = type metadata accessor for JSColor(0);
        v44 = v97;
        if ((*(*(v59 - 8) + 48))(v58, 1, v59))
        {
          goto LABEL_56;
        }

        goto LABEL_84;
      }

      if (v62 != 3)
      {
        if (v62 == 4)
        {
          v90 = sub_24F9289E8();
          (*(*(v90 - 8) + 8))(v57, v90);
          goto LABEL_83;
        }

        if (v62 != 5)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_130;
    }

    v61 = swift_getEnumCaseMultiPayload();
    if (v61 > 2)
    {
      if (v61 != 3)
      {
        if (v61 == 4)
        {
          v89 = sub_24F9289E8();
          (*(*(v89 - 8) + 8))(v42, v89);
          goto LABEL_82;
        }

        if (v61 != 5)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (!v61)
      {

        v79 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v80 = type metadata accessor for JSColor(0);
        if (!(*(*(v80 - 8) + 48))(v79, 1, v80))
        {
          v81 = sub_24F928388();
          (*(*(v81 - 8) + 8))(v79, v81);
        }

        goto LABEL_82;
      }

      if (v61 == 1)
      {
        v85 = sub_24F9289E8();
        v86 = *(v85 - 8);
        if (!(*(v86 + 48))(v42, 1, v85))
        {
          (*(v86 + 8))(v42, v85);
        }

        if (*(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_82;
      }

      if (v61 != 2)
      {
        goto LABEL_82;
      }
    }

    goto LABEL_82;
  }

LABEL_56:
  v45 = (v96 + v44[13]);
  if (v45[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v46 = (v96 + v44[14]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v47 = (v96 + v44[16]);
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  if (*(v7 + v5[12]))
  {
  }

  if (*(v7 + v5[13]))
  {
  }

  sub_24E62A5EC(*(v7 + v5[14]), *(v7 + v5[14] + 8));

  v48 = v5[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F925168();
    (*(*(v49 - 8) + 8))(v7 + v48, v49);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_24F091B30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for GSKShelfView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_24F08F314(a1, a2, v10, v7, v8);
}

uint64_t sub_24F091BDC()
{
  v0 = sub_24F9218F8();
  __swift_allocate_value_buffer(v0, qword_27F39D818);
  *__swift_project_value_buffer(v0, qword_27F39D818) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_24F091C6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9218F8();
  v3 = __swift_project_value_buffer(v2, qword_27F39D818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24F091D14()
{
  sub_24F09F7AC();

  return sub_24F924868();
}

double sub_24F091D5C@<D0>(double *a1@<X8>)
{
  sub_24F091EBC();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_24F091DAC@<D0>(double *a1@<X8>)
{
  sub_24F091EBC();
  sub_24F924868();
  result = v3;
  *a1 = v3;
  return result;
}

unint64_t sub_24F091EBC()
{
  result = qword_27F238710[0];
  if (!qword_27F238710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F238710);
  }

  return result;
}

uint64_t sub_24F091F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v293 = a2;
  v310 = a1;
  v3 = *(a1 + 24);
  v304 = *(a1 + 16);
  v292 = v3;
  type metadata accessor for ShelfHeaderView(255, v304, v3, a3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v357 = MEMORY[0x277CDF918];
  v4 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v355 = v4;
  v352 = swift_getWitnessTable();
  v353 = MEMORY[0x277CDF678];
  v350 = swift_getWitnessTable();
  v351 = MEMORY[0x277CDFC60];
  v348 = swift_getWitnessTable();
  v349 = v4;
  v346 = swift_getWitnessTable();
  v347 = v4;
  swift_getWitnessTable();
  *&v5 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  *&v6 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  *&v7 = COERCE_DOUBLE(sub_24E8F20E4());
  v309 = MEMORY[0x277CDFC88];
  v344 = v6;
  v345 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  v308 = MEMORY[0x277CE0E68];
  v358 = *&v5;
  v359 = COERCE_DOUBLE(&type metadata for IsDebugFocusOverlayEnabled);
  *&v360 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v361 = *&v6;
  v362 = *&v7;
  v363 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798, &qword_24F9C5160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A0, &qword_24F9C5168);
  swift_getTupleTypeMetadata3();
  v264 = sub_24F927808();
  v262 = swift_getWitnessTable();
  v8 = sub_24F927108();
  v265 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v261 = &v224 - v9;
  v10 = sub_24F924038();
  v263 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v260 = &v224 - v11;
  *&v12 = COERCE_DOUBLE(sub_24F924038());
  v289 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v287 = &v224 - v13;
  v271 = v8;
  v258 = swift_getWitnessTable();
  v342 = v258;
  v14 = MEMORY[0x277CDF918];
  v343 = MEMORY[0x277CDF918];
  v270 = v10;
  v259 = swift_getWitnessTable();
  v340 = v259;
  v341 = v14;
  *&v15 = COERCE_DOUBLE(swift_getWitnessTable());
  v358 = *&v12;
  v359 = *&v15;
  v307 = MEMORY[0x277CDEA30];
  swift_getOpaqueTypeMetadata2();
  v16 = sub_24F924E38();
  v276 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v267 = &v224 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A48, &unk_24F958F00);
  v303 = sub_24F924038();
  v275 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v266 = &v224 - v18;
  v19 = sub_24F924038();
  v282 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v274 = &v224 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A58, &unk_24F940DA0);
  v21 = sub_24F924038();
  v279 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v272 = &v224 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A68, &unk_24F9C5170);
  v23 = sub_24F924038();
  v281 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v273 = &v224 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A78, &unk_24F940DB0);
  v25 = sub_24F924038();
  v277 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v269 = &v224 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A88, &unk_24F9C5180);
  *&v27 = COERCE_DOUBLE(sub_24F924038());
  v288 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v286 = &v224 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8, &qword_24F9CFD50);
  *&v306 = COERCE_DOUBLE(sub_24F924038());
  v291 = v12;
  v358 = *&v12;
  v359 = *&v15;
  v338 = swift_getOpaqueTypeConformance2();
  v268 = v15;
  v339 = v15;
  v278 = v16;
  v29 = swift_getWitnessTable();
  v30 = MEMORY[0x277CE0868];
  v31 = sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
  v245 = v29;
  v336 = v29;
  v337 = v31;
  v246 = swift_getWitnessTable();
  v334 = v246;
  v335 = v31;
  v285 = v19;
  v32 = swift_getWitnessTable();
  v33 = sub_24E602068(&qword_27F215A50, &qword_27F215A58, &unk_24F940DA0, v30);
  v248 = v32;
  v332 = v32;
  v333 = v33;
  v283 = v21;
  v34 = swift_getWitnessTable();
  v35 = sub_24E602068(&qword_27F215A60, &qword_27F215A68, &unk_24F9C5170, v30);
  v250 = v34;
  v330 = v34;
  v331 = v35;
  v284 = v23;
  v36 = swift_getWitnessTable();
  v37 = sub_24E602068(&qword_27F215A70, &qword_27F215A78, &unk_24F940DB0, v30);
  v251 = v36;
  v328 = v36;
  v329 = v37;
  v280 = v25;
  v38 = swift_getWitnessTable();
  v39 = sub_24E602068(&qword_27F215A80, &qword_27F215A88, &unk_24F9C5180, v30);
  v252 = v38;
  v326 = v38;
  v327 = v39;
  *&v40 = COERCE_DOUBLE(swift_getWitnessTable());
  *&v41 = COERCE_DOUBLE(sub_24F09B638());
  v42 = sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, v309);
  v324 = v40;
  v325 = v42;
  v43 = v306;
  *&v44 = COERCE_DOUBLE(swift_getWitnessTable());
  v358 = *&v27;
  v359 = COERCE_DOUBLE(&type metadata for IsDebugImpressionIndexOverlayEnabled);
  v360 = v43;
  v361 = *&v40;
  v362 = *&v41;
  v363 = *&v44;
  *&v45 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v255 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v254 = &v224 - v46;
  v290 = v27;
  v358 = *&v27;
  v359 = COERCE_DOUBLE(&type metadata for IsDebugImpressionIndexOverlayEnabled);
  v360 = v43;
  v361 = *&v40;
  v257 = v40;
  v362 = *&v41;
  v363 = *&v44;
  *&v47 = COERCE_DOUBLE(swift_getOpaqueTypeConformance2());
  v358 = *&v45;
  v359 = *&v47;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0, &qword_24F9C5190);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8, &qword_24F9C5198);
  *&v48 = COERCE_DOUBLE(sub_24F924038());
  *&v49 = COERCE_DOUBLE(sub_24F09B68C());
  v358 = *&v45;
  v359 = *&v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_24E602068(&qword_27F2387D8, &qword_27F2387C0, &qword_24F9C5190, MEMORY[0x277CE07F0]);
  v322 = v50;
  v323 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_24E602068(&qword_27F2387E0, &qword_27F2387C8, &qword_24F9C5198, v309);
  v320 = v52;
  v321 = v53;
  *&v54 = COERCE_DOUBLE(swift_getWitnessTable());
  v256 = *&v45;
  v358 = *&v45;
  v359 = COERCE_DOUBLE(&type metadata for IsDebugShelfLayoutOverlayEnabled);
  v55 = v311;
  v249 = v48;
  v360 = v48;
  v361 = *&v47;
  v253 = v47;
  v247 = v49;
  v362 = *&v49;
  v363 = *&v54;
  v242 = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v243 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v238 = &v224 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v240 = &v224 - v59;
  v241 = sub_24F921998();
  v239 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v309 = &v224 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387E8, &unk_24F9C51A0);
  MEMORY[0x28223BE20](v61 - 8);
  v234 = &v224 - v62;
  v63 = sub_24F9218F8();
  v301 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v237 = &v224 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v226 = &v224 - v66;
  MEMORY[0x28223BE20](v67);
  v300 = &v224 - v68;
  v69 = sub_24F923E98();
  v231 = *(v69 - 8);
  v232 = v69;
  MEMORY[0x28223BE20](v69);
  v298 = (&v224 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = type metadata accessor for ShelfLayoutEnvironment(0);
  MEMORY[0x28223BE20](v233);
  v308 = (&v224 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_24F925218();
  v295 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v225 = &v224 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v74);
  v76 = &v224 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v77 - 8);
  v297 = (&v224 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v79);
  v296 = (&v224 - v80);
  MEMORY[0x28223BE20](v81);
  v294 = (&v224 - v82);
  MEMORY[0x28223BE20](v83);
  v230 = (&v224 - v84);
  MEMORY[0x28223BE20](v85);
  v227 = &v224 - v86;
  MEMORY[0x28223BE20](v87);
  v89 = &v224 - v88;
  MEMORY[0x28223BE20](v90);
  v92 = (&v224 - v91);
  v307 = sub_24F924848();
  v306 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v305 = &v224 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v310[10];
  *&v95 = COERCE_DOUBLE(type metadata accessor for GSKShelf(0));
  v96 = *(v95 + 36);
  v97 = *(v95 + 40);
  v299 = v95;
  v235 = v97;
  v98 = *(v55 + v97);
  v99 = *(v55 + v96);
  v244 = OpaqueTypeMetadata2;
  if (v98 > 2)
  {
    goto LABEL_2;
  }

  if (v98)
  {
    goto LABEL_6;
  }

  v98 = *(v55 + v94);
  if (v98 > 2)
  {
LABEL_2:
    if (v98 > 4)
    {
      if (v98 == 5)
      {
        v100 = 4;
      }

      else if (v99 >> 62 == 1)
      {
        v100 = 6;
      }

      else
      {
        v100 = 5;
      }
    }

    else if (v98 == 3)
    {
      v100 = 2;
    }

    else
    {
      v100 = 3;
    }

    goto LABEL_17;
  }

  if (*(v55 + v94))
  {
LABEL_6:
    if (v98 == 1)
    {
      LODWORD(v228) = 0;
      goto LABEL_18;
    }
  }

  v100 = 1;
LABEL_17:
  LODWORD(v228) = v100;
LABEL_18:
  v101 = v55 + v310[14];
  v102 = *v101;
  LODWORD(v101) = *(v101 + 8);
  v302 = v63;
  v236 = v94;
  if (v101 == 1)
  {
    v103 = *&v102;
  }

  else
  {

    sub_24F92BDC8();
    v104 = sub_24F9257A8();
    sub_24F921FD8();

    v105 = v305;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v102, 0);
    (*(v306 + 8))(v105, v307);
    v103 = v358;
  }

  v229 = v310[19];
  sub_24F769764(v92);
  v106 = v295;
  (*(v295 + 104))(v89, *MEMORY[0x277CE0558], v72);
  (*(v106 + 56))(v89, 0, 1, v72);
  v107 = *(v74 + 48);
  sub_24E60169C(v92, v76, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v89, &v76[v107], &qword_27F215598, &qword_24F945EF0);
  v108 = *(v106 + 48);
  if (v108(v76, 1, v72) == 1)
  {
    sub_24E601704(v89, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v92, &qword_27F215598, &qword_24F945EF0);
    v109 = v108(&v76[v107], 1, v72);
    v110 = v311;
    if (v109 == 1)
    {
      sub_24E601704(v76, &qword_27F215598, &qword_24F945EF0);
      v111 = 1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v112 = v227;
  sub_24E60169C(v76, v227, &qword_27F215598, &qword_24F945EF0);
  if (v108(&v76[v107], 1, v72) == 1)
  {
    sub_24E601704(v89, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v92, &qword_27F215598, &qword_24F945EF0);
    (*(v295 + 8))(v112, v72);
    v110 = v311;
LABEL_26:
    sub_24E601704(v76, &unk_27F254F20, &qword_24F940790);
    v111 = 0;
    goto LABEL_28;
  }

  v113 = v295;
  v114 = v225;
  (*(v295 + 32))(v225, &v76[v107], v72);
  sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v111 = sub_24F92AFF8();
  v115 = *(v113 + 8);
  v115(v114, v72);
  sub_24E601704(v89, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v92, &qword_27F215598, &qword_24F945EF0);
  v115(v227, v72);
  sub_24E601704(v76, &qword_27F215598, &qword_24F945EF0);
  v110 = v311;
LABEL_28:
  v116 = v110 + v310[15];
  v118 = *v116;
  v117 = *(v116 + 8);
  v120 = *(v116 + 16);
  v119 = *(v116 + 24);
  LODWORD(v227) = *(v116 + 32);
  if (v227 == 1)
  {
    v121 = *&v117;
    v122 = *&v119;
  }

  else
  {

    sub_24F92BDC8();
    v123 = sub_24F9257A8();
    sub_24F921FD8();

    v124 = v305;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v118, v117, v120, v119, 0);
    (*(v306 + 8))(v124, v307);
    v121 = v359;
    v122 = v361;
  }

  v125 = v121 + v122;
  if (v103 <= 1580.0)
  {
    v126 = v103;
  }

  else
  {
    v126 = 1580.0;
  }

  v127 = 0.0;
  if (LOBYTE(v228) <= 2u)
  {
    if (!LOBYTE(v228))
    {
      goto LABEL_67;
    }

    if (LOBYTE(v228) != 1)
    {
      v128 = 2;
LABEL_54:
      LOBYTE(v358) = v128;
      sub_24F422FFC(v111 & 1, v126);
      v127 = v129;
      goto LABEL_67;
    }

    if (v111)
    {
      if (v125 <= 0.0)
      {
        v127 = 16.0;
      }

      else
      {
        v127 = 0.0;
      }

      goto LABEL_67;
    }

    goto LABEL_63;
  }

  if (LOBYTE(v228) <= 4u)
  {
    if (LOBYTE(v228) == 3)
    {
      if (sub_24E6B00B4(v126) < 4u)
      {
        goto LABEL_67;
      }

      v128 = 3;
      goto LABEL_54;
    }

    if (v111)
    {
      if (v125 <= 0.0)
      {
        v127 = 16.0;
      }

      else
      {
        v127 = 0.0;
      }

      if (v126 + -420.0 > 0.0 && (v126 + -420.0) * 0.5 > v127)
      {
        v127 = (v126 + -420.0) * 0.5;
      }

      goto LABEL_67;
    }

LABEL_63:
    v127 = dbl_24F9C54C8[sub_24E6B00B4(v126)];
    goto LABEL_67;
  }

  if (LOBYTE(v228) != 5)
  {
    v127 = 14.0;
    goto LABEL_67;
  }

  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((byte_27F2301A8 & 1) == 0)
  {
    *&v130 = 40.0;
    goto LABEL_66;
  }

  if ((v111 & 1) == 0)
  {
    if (v126 < 0.0 || v126 >= 376.0)
    {
      if (v126 >= 428.0 || v126 < 376.0)
      {
        v127 = 46.0;
      }

      else
      {
        v127 = 38.0;
      }

      goto LABEL_67;
    }

    *&v130 = 44.0;
LABEL_66:
    v127 = *&v130;
    goto LABEL_67;
  }

  if (qword_27F210D60 != -1)
  {
    swift_once();
  }

  v127 = *&qword_27F39D300;
LABEL_67:
  v228 = *&v119;
  v358 = v103;
  v359 = 1580.0;
  *&v360 = v126;
  v361 = v126 - (v127 + v127);
  v362 = v127;
  v363 = (v103 - v126) * 0.5 + v127;
  v131 = v110 + v310[16];
  v132 = *v131;
  LODWORD(v131) = *(v131 + 8);
  v224 = v120;
  v225 = v118;
  v133 = v117;
  if (v131 == 1)
  {
    v134 = v132;
  }

  else
  {

    sub_24F92BDC8();
    v135 = sub_24F9257A8();
    sub_24F921FD8();

    v136 = v305;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v132, 0);
    (*(v306 + 8))(v136, v307);
    v126 = *&v360;
    v134 = *&v312;
  }

  v137 = v299;
  v138 = (v110 + *(v299 + 28));
  v139 = *v138;
  LOBYTE(v138) = *(v138 + 8);
  v318 = v139;
  v319 = v138;
  v140 = v230;
  sub_24F769764(v230);
  v141 = v294;
  sub_24F769764(v294);
  sub_24F094650(v140, v141, &v312);
  sub_24E601704(v141, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v140, &qword_27F215598, &qword_24F945EF0);
  *&v295 = v312;
  LODWORD(v294) = v313;
  v230 = *(v311 + *(v137 + 60));
  v142 = v230[2];
  sub_24F769788(v298);
  v143 = v311;
  sub_24F769764(v296);
  sub_24F769764(v297);
  if (v227)
  {
    v144 = *&v117;
    v145 = v228;
  }

  else
  {
    v146 = v225;

    sub_24F92BDC8();
    v147 = sub_24F9257A8();
    sub_24F921FD8();

    v148 = v305;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v146, v133, v224, *&v228, 0);
    (*(v306 + 8))(v148, v307);
    v144 = *&v313;
    v145 = v315;
  }

  v149 = v143 + v310[20];
  v150 = *v149;
  v151 = v301;
  v152 = v300;
  if (*(v149 + 8))
  {
    LOBYTE(v312) = v150 & 1;
  }

  else
  {

    sub_24F92BDC8();
    v153 = sub_24F9257A8();
    sub_24F921FD8();

    v154 = v305;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v150, 0);
    (*(v306 + 8))(v154, v307);
    LOBYTE(v150) = LOBYTE(v312);
  }

  v155 = v362;
  v156 = v308;
  *v308 = v126;
  *(v156 + 1) = v134;
  v156[2] = v155;
  *(v156 + 3) = v142;
  v157 = v233;
  (*(v231 + 32))(v156 + *(v233 + 28), v298, v232);
  sub_24E6009C8(v296, v156 + v157[8], &qword_27F215598, &qword_24F945EF0);
  sub_24E6009C8(v297, v156 + v157[9], &qword_27F215598, &qword_24F945EF0);
  *(v156 + v157[10]) = v144 + v145 > 0.0;
  *(v156 + v157[11]) = v150 & 1;
  v158 = (v156 + v157[12]);
  *v158 = *&v295;
  *(v158 + 8) = v294;
  v159 = sub_24F4BA954(v156);
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v166 = v156;
  v167 = v143;
  sub_24F4BAB50(v166, v152);
  v168 = v234;
  sub_24F4BAE20(v234);
  v169 = sub_24F921CA8();
  v170 = (*(*(v169 - 8) + 48))(v168, 1, v169);
  sub_24E601704(v168, &qword_27F2387E8, &unk_24F9C51A0);
  if (v170 == 1)
  {
    v171 = v230[2];
    v172 = v226;
    v173 = v302;
    (*(v151 + 16))(v226, v152, v302);
    v174 = (*(v151 + 88))(v172, v173);
    v175 = v287;
    if (v174 == *MEMORY[0x277D7EB30])
    {
      (*(v151 + 96))(v172, v173);
      v176 = v171 < *v172;
    }

    else
    {
      (*(v151 + 8))(v172, v173);
      v176 = 0;
    }
  }

  else
  {
    v176 = 0;
    v175 = v287;
    v173 = v302;
  }

  v177 = v309;
  sub_24F4BAF84(v308, v309);
  v178 = sub_24F924C98();
  MEMORY[0x28223BE20](v178);
  v179 = v292;
  *(&v224 - 14) = v304;
  *(&v224 - 13) = v179;
  *(&v224 - 12) = v167;
  *(&v224 - 11) = v159;
  *(&v224 - 10) = v161;
  *(&v224 - 9) = v163;
  *(&v224 - 8) = v165;
  *(&v224 - 7) = v126;
  *(&v224 - 6) = v134;
  *(&v224 - 5) = &v358;
  *(&v224 - 4) = v152;
  *(&v224 - 3) = v177;
  *(&v224 - 16) = v176;
  v180 = v261;
  sub_24F9270F8();
  sub_24F925818();
  v181 = v260;
  v182 = v271;
  sub_24F926A48();
  (*(v265 + 8))(v180, v182);
  sub_24F925828();
  v183 = v270;
  sub_24F926A48();
  (*(v263 + 8))(v181, v183);
  v184 = v237;
  (*(v151 + 16))(v237, v152, v173);
  v185 = (*(v151 + 88))(v184, v173);
  v186 = *MEMORY[0x277D7EB20];
  if (v185 == *MEMORY[0x277D7EB20])
  {
    (*(v151 + 96))(v184, v173);
    v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
    v188 = sub_24F9219E8();
    (*(*(v188 - 8) + 8))(&v184[v187], v188);
  }

  else
  {
    (*(v151 + 8))(v184, v173);
  }

  v189 = v185 == v186;
  v190 = v267;
  v191 = v291;
  sub_24EC9B6C0(v189, v291, v268, v267);
  (*(v289 + 8))(v175, v191);
  swift_getKeyPath();
  v312 = v126 - v161 - v165;
  v192 = v266;
  v193 = v278;
  sub_24F9261B8();

  (*(v276 + 8))(v190, v193);
  swift_getKeyPath();
  v312 = (v161 + v165) * 0.5;
  v194 = v274;
  v195 = v303;
  sub_24F9261B8();

  (*(v275 + 8))(v192, v195);
  swift_getKeyPath();
  v196 = *(v167 + v235);
  LOBYTE(v312) = *(v167 + v236);
  BYTE1(v312) = v196;
  v197 = v272;
  v198 = v285;
  sub_24F9261B8();

  (*(v282 + 8))(v194, v198);
  swift_getKeyPath();
  v312 = *&v295;
  LOBYTE(v313) = v294;
  v199 = v273;
  v200 = v283;
  sub_24F9261B8();

  (*(v279 + 8))(v197, v200);
  swift_getKeyPath();
  LOBYTE(v312) = sub_24E6B00B4(v126);
  v201 = v269;
  v202 = v284;
  sub_24F9261B8();

  (*(v281 + 8))(v199, v202);
  swift_getKeyPath();
  v203 = v286;
  v204 = v280;
  sub_24F9261B8();

  (*(v277 + 8))(v201, v204);
  v315 = *&v299;
  v316 = sub_24F09F654(&qword_27F21BF08, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v312);
  sub_24F09F69C(v167, boxed_opaque_existential_1, type metadata accessor for GSKShelf);
  v206 = v167 + v310[11];
  v207 = *v206;
  v208 = *(v206 + 8);
  v209 = sub_24F9275B8();
  v211 = v210;
  v212 = sub_24F926C68();
  v213 = v254;
  v214 = v290;
  sub_24F186E28(&v312, v207, v208, v209, v211, v212, v290);

  (*(v288 + 8))(v203, v214);
  __swift_destroy_boxed_opaque_existential_1(&v312);
  v215 = v238;
  v216 = v308;
  v217 = v256;
  v218 = v253;
  sub_24F495A88(v167, v308, *&v256, v253);
  (*(v255 + 8))(v213, COERCE_DOUBLE(*&v217));
  sub_24F09B734(v216, type metadata accessor for ShelfLayoutEnvironment);
  v312 = v217;
  *&v313 = COERCE_DOUBLE(&type metadata for IsDebugShelfLayoutOverlayEnabled);
  v314 = v249;
  v315 = *&v218;
  v316 = v247;
  v317 = v242;
  swift_getOpaqueTypeConformance2();
  v219 = v240;
  v220 = v244;
  sub_24E7896B8();
  v221 = *(v243 + 8);
  v221(v215, v220);
  sub_24E7896B8();
  v221(v219, v220);
  (*(v239 + 8))(v309, v241);
  return (*(v301 + 8))(v300, v302);
}

void sub_24F094650(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v6 = sub_24F925218();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v10);
  v59 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v15 - 8);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v45[-v18];
  v24 = MEMORY[0x28223BE20](v20);
  v25 = &v45[-v21];
  v26 = *v3;
  v27 = *(v3 + 8);
  if (*(v3 + 8))
  {
    if (v27 != 1)
    {
      goto LABEL_15;
    }

    v56 = v23;
    v57 = a3;
    v47 = v22;
    v49 = v9;
    v50 = v26;
    v28 = *MEMORY[0x277CE0560];
    v29 = v7[13];
    v54 = v7 + 13;
    v52 = v29;
    (v29)(&v45[-v21], v28, v6, v24);
    v30 = v7[7];
    v53 = v7 + 7;
    v51 = v30;
    v30(v25, 0, 1, v6);
    v31 = *(v10 + 48);
    sub_24E60169C(a1, v14, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v25, &v14[v31], &qword_27F215598, &qword_24F945EF0);
    v55 = v7;
    v32 = v7[6];
    if (v32(v14, 1, v6) == 1)
    {
      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      if (v32(&v14[v31], 1, v6) == 1)
      {
        sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
LABEL_17:
        LOBYTE(v27) = 0;
        a3 = v57;
LABEL_18:
        v26 = v50;
        goto LABEL_19;
      }
    }

    else
    {
      sub_24E60169C(v14, v19, &qword_27F215598, &qword_24F945EF0);
      if (v32(&v14[v31], 1, v6) != 1)
      {
        v48 = v32;
        v38 = v55;
        v39 = v49;
        (v55[4])(v49, &v14[v31], v6);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v46 = sub_24F92AFF8();
        v40 = v38[1];
        v40(v39, v6);
        sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
        v40(v19, v6);
        sub_24E601704(v14, &qword_27F215598, &qword_24F945EF0);
        if (v46)
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

      sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
      (v55[1])(v19, v6);
    }

    v48 = v32;
    sub_24E601704(v14, &unk_27F254F20, &qword_24F940790);
LABEL_9:
    v33 = v56;
    v52(v56, *MEMORY[0x277CE0558], v6);
    v51(v33, 0, 1, v6);
    v34 = *(v10 + 48);
    v35 = v59;
    sub_24E60169C(v58, v59, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v33, &v35[v34], &qword_27F215598, &qword_24F945EF0);
    v36 = v48;
    if (v48(v35, 1, v6) == 1)
    {
      sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
      if (v36(&v35[v34], 1, v6) == 1)
      {
        sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
        goto LABEL_17;
      }
    }

    else
    {
      v37 = v47;
      sub_24E60169C(v35, v47, &qword_27F215598, &qword_24F945EF0);
      if (v36(&v35[v34], 1, v6) != 1)
      {
        v41 = v55;
        v42 = v49;
        (v55[4])(v49, &v35[v34], v6);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v43 = sub_24F92AFF8();
        v44 = v41[1];
        v44(v42, v6);
        sub_24E601704(v56, &qword_27F215598, &qword_24F945EF0);
        v44(v37, v6);
        sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
        a3 = v57;
        if (v43)
        {
          LOBYTE(v27) = 0;
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      sub_24E601704(v56, &qword_27F215598, &qword_24F945EF0);
      (v55[1])(v37, v6);
    }

    sub_24E601704(v35, &unk_27F254F20, &qword_24F940790);
    a3 = v57;
LABEL_15:
    v26 = 0;
    LOBYTE(v27) = 1;
  }

LABEL_19:
  *a3 = v26;
  *(a3 + 8) = v27;
}

uint64_t sub_24F094D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D1>, double a10@<D3>, double a11@<D4>)
{
  v480 = a5;
  v489 = a4;
  v493 = a3;
  *&v526 = a1;
  v485 = a8;
  v16 = *a2;
  v403 = *(a2 + 16);
  v404 = v16;
  v17 = *(a2 + 32);
  v401 = *(a2 + 40);
  v402 = v17;
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387F0, &qword_24F9C52A8);
  v442 = *(v444 - 8);
  MEMORY[0x28223BE20](v444);
  v438 = &v389 - v18;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221370, &qword_24F965E90);
  MEMORY[0x28223BE20](v437);
  v440 = &v389 - v19;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221360, &unk_24F9A6C80);
  MEMORY[0x28223BE20](v439);
  v443 = &v389 - v20;
  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221350, &unk_24F965E80);
  MEMORY[0x28223BE20](v441);
  v446 = &v389 - v21;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221340, &unk_24F9A6C70);
  MEMORY[0x28223BE20](v445);
  v448 = &v389 - v22;
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221310, &unk_24F9C52B0);
  MEMORY[0x28223BE20](v447);
  v451 = &v389 - v23;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387A0, &qword_24F9C5168);
  MEMORY[0x28223BE20](v482);
  v484 = &v389 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v483 = &v389 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387E8, &unk_24F9C51A0);
  MEMORY[0x28223BE20](v27 - 8);
  v479 = &v389 - v28;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318A0, &unk_24F9A6C90);
  v462 = *(v463 - 8);
  MEMORY[0x28223BE20](v463);
  v461 = &v389 - v29;
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318B0, &unk_24F9A6CA0);
  MEMORY[0x28223BE20](v458);
  v460 = &v389 - v30;
  *&v528 = type metadata accessor for SizedShelfGridView(0, a6, a7, v31);
  v521 = *(v528 - 8);
  MEMORY[0x28223BE20](v528);
  v457 = &v389 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = v32;
  MEMORY[0x28223BE20](v33);
  v520 = &v389 - v34;
  v494 = sub_24F921998();
  v454 = *(v494 - 1);
  MEMORY[0x28223BE20](v494);
  v501 = &v389 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24F921938();
  MEMORY[0x28223BE20](v36 - 8);
  v500 = &v389 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v497 = sub_24F9218F8();
  v496 = *(v497 - 8);
  MEMORY[0x28223BE20](v497);
  v495 = &v389 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = v38;
  MEMORY[0x28223BE20](v39);
  v499 = &v389 - v40;
  v525 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v525);
  v498 = &v389 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318D8, &qword_24F9A6CB0);
  v502 = *(v503 - 8);
  MEMORY[0x28223BE20](v503);
  v516 = &v389 - v42;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2387F8, &qword_24F9C52C0);
  MEMORY[0x28223BE20](v488);
  v459 = &v389 - v43;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238800, &qword_24F9C52C8);
  v465 = *(v469 - 8);
  MEMORY[0x28223BE20](v469);
  v505 = &v389 - v44;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238808, &qword_24F9C52D0);
  v466 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v464 = &v389 - v45;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238810, &qword_24F9C52D8);
  v473 = *(v475 - 8);
  MEMORY[0x28223BE20](v475);
  v468 = &v389 - v46;
  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238818, &qword_24F9C52E0);
  v474 = *(v477 - 8);
  MEMORY[0x28223BE20](v477);
  v470 = &v389 - v47;
  v478 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238820, &qword_24F9C52E8);
  v476 = *(v478 - 8);
  MEMORY[0x28223BE20](v478);
  v471 = &v389 - v48;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238798, &qword_24F9C5160);
  MEMORY[0x28223BE20](v514);
  v481 = &v389 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v467 = &v389 - v51;
  MEMORY[0x28223BE20](v52);
  v523 = &v389 - v53;
  v393 = *(a6 - 8);
  MEMORY[0x28223BE20](v54);
  v391 = &v389 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F924038();
  v394 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v392 = &v389 - v57;
  v515 = v58;
  v59 = sub_24F924038();
  v397 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v396 = &v389 - v60;
  v513 = v61;
  v522 = sub_24F924038();
  v400 = *(v522 - 8);
  MEMORY[0x28223BE20](v522);
  v399 = &v389 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v395 = &v389 - v64;
  MEMORY[0x28223BE20](v65);
  v398 = &v389 - v66;
  v487 = sub_24F924218();
  v486 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v436 = &v389 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v433 = &v389 - v69;
  v452 = type metadata accessor for HeaderPresentation(0);
  MEMORY[0x28223BE20](v452);
  v422 = &v389 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = a6;
  v527 = a7;
  v72 = type metadata accessor for ShelfHeaderView(0, a6, a7, v71);
  v430 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v428 = &v389 - v73;
  WitnessTable = swift_getWitnessTable();
  *&v591 = v72;
  *(&v591 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v423 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v417 = &v389 - v76;
  v426 = v77;
  v78 = sub_24F924038();
  v420 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v415 = &v389 - v79;
  v80 = sub_24F924038();
  v421 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v416 = &v389 - v81;
  v82 = sub_24F924038();
  v427 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v419 = &v389 - v83;
  v84 = sub_24F924038();
  v434 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  *&v453 = &v389 - v85;
  sub_24F924038();
  v86 = sub_24F924038();
  v431 = v72;
  *&v591 = v72;
  v414 = WitnessTable;
  *(&v591 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = MEMORY[0x277CDF918];
  v407 = OpaqueTypeConformance2;
  v589 = OpaqueTypeConformance2;
  v590 = MEMORY[0x277CDF918];
  v424 = v78;
  v408 = swift_getWitnessTable();
  v587 = v408;
  v588 = v88;
  v425 = v80;
  v409 = swift_getWitnessTable();
  v585 = v409;
  v586 = MEMORY[0x277CDF678];
  v429 = v82;
  v410 = swift_getWitnessTable();
  v583 = v410;
  v584 = MEMORY[0x277CDFC60];
  v435 = v84;
  v432 = swift_getWitnessTable();
  v581 = v432;
  v582 = v88;
  v579 = swift_getWitnessTable();
  v580 = v88;
  v89 = swift_getWitnessTable();
  *&v591 = v86;
  *(&v591 + 1) = v89;
  v90 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v91 = sub_24F924038();
  *&v591 = v86;
  *(&v591 + 1) = v89;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = sub_24E8F20E4();
  v94 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v577 = v92;
  v578 = v94;
  v95 = swift_getWitnessTable();
  *&v591 = v90;
  *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v592 = v91;
  *(&v592 + 1) = v92;
  *&v593[0] = v93;
  *(&v593[0] + 1) = v95;
  v96 = swift_getOpaqueTypeMetadata2();
  *&v591 = v90;
  *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v592 = v91;
  *(&v592 + 1) = v92;
  *&v593[0] = v93;
  *(&v593[0] + 1) = v95;
  v97 = swift_getOpaqueTypeConformance2();
  v512 = v90;
  *&v591 = v90;
  *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v511 = v96;
  *&v592 = v96;
  v98 = v526;
  *(&v511 + 1) = v92;
  *(&v592 + 1) = v92;
  v519 = v93;
  *&v593[0] = v93;
  v508 = v97;
  *(&v593[0] + 1) = v97;
  swift_getOpaqueTypeMetadata2();
  v509 = sub_24F924038();
  v99 = sub_24F924038();
  v418 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v413 = &v389 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v411 = &v389 - v102;
  MEMORY[0x28223BE20](v103);
  v412 = &v389 - v104;
  v105 = sub_24F925218();
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = &v389 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v405);
  v110 = &v389 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v111 - 8);
  v406 = &v389 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113);
  v115 = &v389 - v114;
  MEMORY[0x28223BE20](v116);
  v118 = (&v389 - v117);
  v492 = sub_24F924848();
  v491 = *(v492 - 8);
  MEMORY[0x28223BE20](v492);
  v490 = &v389 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v510 = v99;
  v504 = sub_24F924E38();
  v507 = sub_24F92C4A8();
  v506 = *(v507 - 8);
  MEMORY[0x28223BE20](v507);
  v518 = &v389 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v121);
  v517 = &v389 - v122;
  v123 = v98 + v525[6];
  if (sub_24F31B9B4())
  {
    v124 = *(v123 + *(v452 + 36));
    if (v124 > 3)
    {
      if (*(v123 + *(v452 + 36)) > 5u)
      {
        if (v124 != 6)
        {
          goto LABEL_60;
        }

        v125 = 5;
      }

      else if (v124 == 4)
      {
        v125 = 3;
      }

      else
      {
        v125 = 4;
      }
    }

    else if (*(v123 + *(v452 + 36)) > 1u)
    {
      if (v124 == 2)
      {
        v125 = 1;
      }

      else
      {
        v125 = 2;
      }
    }

    else
    {
      if (*(v123 + *(v452 + 36)))
      {
        v452 = 0;
        goto LABEL_25;
      }

      v125 = 0x5040302010001uLL >> (8 * *(v98 + *(v528 + 40)));
    }

    v452 = v125;
LABEL_25:
    *&v404 = v108;
    v154 = v98 + *(v528 + 56);
    v155 = *v154;
    LODWORD(v154) = *(v154 + 8);
    v390 = v123;
    if (v154 == 1)
    {
      v156 = *&v155;
    }

    else
    {

      sub_24F92BDC8();
      v157 = v106;
      v158 = sub_24F9257A8();
      sub_24F921FD8();

      v106 = v157;
      v159 = v490;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v155, 0);
      (*(v491 + 8))(v159, v492);
      v156 = *&v591;
    }

    sub_24F769764(v118);
    (*(v106 + 104))(v115, *MEMORY[0x277CE0558], v105);
    (*(v106 + 56))(v115, 0, 1, v105);
    v160 = *(v405 + 48);
    sub_24E60169C(v118, v110, &qword_27F215598, &qword_24F945EF0);
    sub_24E60169C(v115, &v110[v160], &qword_27F215598, &qword_24F945EF0);
    v161 = *(v106 + 48);
    if (v161(v110, 1, v105) == 1)
    {
      sub_24E601704(v115, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v118, &qword_27F215598, &qword_24F945EF0);
      v162 = v161(&v110[v160], 1, v105);
      v98 = v526;
      if (v162 == 1)
      {
        sub_24E601704(v110, &qword_27F215598, &qword_24F945EF0);
        v163 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      sub_24E60169C(v110, v406, &qword_27F215598, &qword_24F945EF0);
      if (v161(&v110[v160], 1, v105) != 1)
      {
        v164 = v404;
        (*(v106 + 32))(v404, &v110[v160], v105);
        sub_24F09F654(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        v165 = v406;
        LODWORD(v405) = sub_24F92AFF8();
        v166 = *(v106 + 8);
        v166(v164, v105);
        sub_24E601704(v115, &qword_27F215598, &qword_24F945EF0);
        sub_24E601704(v118, &qword_27F215598, &qword_24F945EF0);
        v166(v165, v105);
        v163 = v405;
        sub_24E601704(v110, &qword_27F215598, &qword_24F945EF0);
        v98 = v526;
LABEL_35:
        v167 = v98 + *(v528 + 60);
        v168 = *(v167 + 8);
        v169 = *(v167 + 24);
        if (*(v167 + 32) != 1)
        {
          v170 = *v167;
          v171 = *(v167 + 16);

          sub_24F92BDC8();
          v172 = sub_24F9257A8();
          sub_24F921FD8();

          v173 = v490;
          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v170, v168, v171, v169, 0);
          (*(v491 + 8))(v173, v492);
        }

        v123 = v390;
        if (v156 <= 1580.0)
        {
          v174 = v156;
        }

        else
        {
          v174 = 1580.0;
        }

        if (v452 > 2u)
        {
          if (v452 == 3)
          {
            if (sub_24E6B00B4(v174) >= 4u)
            {
              v175 = 3;
LABEL_52:
              LOBYTE(v591) = v175;
              sub_24F422FFC(v163 & 1, v174);
            }
          }

          else
          {
            if (v452 != 4)
            {
              if (qword_27F210748 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if ((byte_27F2301A8 & 1) != 0 && (v163 & 1) != 0 && qword_27F210D60 != -1)
              {
                swift_once();
              }

              goto LABEL_60;
            }

            if ((v163 & 1) == 0)
            {
LABEL_59:
              sub_24E6B00B4(v174);
            }
          }
        }

        else if (v452)
        {
          if (v452 == 1)
          {
            if (v163)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          v175 = 2;
          goto LABEL_52;
        }

LABEL_60:
        v176 = v422;
        sub_24F09F69C(v123, v422, type metadata accessor for HeaderPresentation);
        sub_24E60169C(v98 + v525[13], &v591, &qword_27F213EA8, &unk_24F93D030);
        v177 = v528;
        v178 = (v98 + *(v528 + 36));
        v180 = *v178;
        v179 = v178[1];
        v181 = sub_24F92AA48();
        *(&v575 + 1) = v181;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v574);
        (*(*(v181 - 8) + 16))(boxed_opaque_existential_1, v98, v181);
        v183 = v428;
        sub_24F6A4D20(v176, &v591, v180, v179, &v574, v428, v524, v527);

        v184 = v433;
        sub_24F08E6B0();
        v185 = v417;
        v186 = v431;
        sub_24F926AE8();
        (*(v486 + 8))(v184, v487);
        (*(v430 + 8))(v183, v186);
        sub_24F925838();
        v187 = v415;
        v188 = v426;
        sub_24F926A48();
        (*(v423 + 8))(v185, v188);
        sub_24F925858();
        v189 = v416;
        v190 = v424;
        sub_24F926A48();
        (*(v420 + 8))(v187, v190);
        sub_24F927618();
        v191 = v419;
        v192 = v425;
        sub_24F926938();
        (*(v421 + 8))(v189, v192);
        sub_24F927618();
        v193 = v429;
        sub_24F926948();
        (*(v427 + 8))(v191, v193);
        v194 = v98 + *(v177 + 60);
        v195 = *(v194 + 8);
        v196 = *(v194 + 24);
        if (*(v194 + 32) == 1)
        {
          v197 = *(v194 + 24);
        }

        else
        {
          v198 = *v194;
          v452 = *(v194 + 16);
          v199 = v452;

          sub_24F92BDC8();
          v200 = sub_24F9257A8();
          sub_24F921FD8();

          v201 = v490;
          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v198, v195, v199, v196, 0);
          v202 = *(v491 + 8);
          v203 = v492;
          v202(v201, v492);

          sub_24F92BDC8();
          v204 = sub_24F9257A8();
          sub_24F921FD8();

          sub_24F924838();
          swift_getAtKeyPath();
          sub_24E669FC4(v198, v195, v452, v196, 0);
          v202(v201, v203);
          v197 = *(&v592 + 1);
        }

        v205 = v411;
        v206 = v435;
        v207 = v453;
        sub_24EB1EBF0(v432, v411, -v197);
        (*(v434 + 8))(COERCE_DOUBLE(*&v207), v206);
        *&v591 = v512;
        *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
        v592 = v511;
        *&v593[0] = v519;
        *(&v593[0] + 1) = v508;
        v539 = swift_getOpaqueTypeConformance2();
        v208 = MEMORY[0x277CDF918];
        v540 = MEMORY[0x277CDF918];
        v537 = swift_getWitnessTable();
        v538 = v208;
        v209 = v510;
        v210 = swift_getWitnessTable();
        v211 = v412;
        sub_24E7896B8();
        v212 = *(v418 + 8);
        v212(v205, v209);
        v213 = v413;
        sub_24E7896B8();
        v535 = v527;
        v536 = v208;
        v533 = swift_getWitnessTable();
        v534 = v208;
        v531 = swift_getWitnessTable();
        v532 = MEMORY[0x277CDFC60];
        v214 = v522;
        v215 = swift_getWitnessTable();
        v216 = v518;
        sub_24ECCCBA0(v213, v209, v214, v210, v215);
        v212(v213, v209);
        v212(v211, v209);
        (*(*(v504 - 8) + 56))(v216, 0, 1, v504);
        v529 = v210;
        v530 = v215;
        swift_getWitnessTable();
        sub_24E8D5004(v216, v517);
        (*(v506 + 8))(v216, v507);
        v98 = v526;
        goto LABEL_64;
      }

      sub_24E601704(v115, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v118, &qword_27F215598, &qword_24F945EF0);
      (*(v106 + 8))(v406, v105);
      v98 = v526;
    }

    sub_24E601704(v110, &unk_27F254F20, &qword_24F940790);
    v163 = 0;
    goto LABEL_35;
  }

  v126 = v452;
  sub_24E60169C(v123 + *(v452 + 28), &v574, &qword_27F238828, &unk_24F9C52F0);
  if (BYTE8(v576[1]) == 255)
  {
    sub_24E601704(&v574, &qword_27F238828, &unk_24F9C52F0);
    v130 = v518;
    (*(*(v504 - 8) + 56))(v518, 1, 1, v504);
    *&v591 = v512;
    *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    v592 = v511;
    *&v593[0] = v519;
    *(&v593[0] + 1) = v508;
    v572 = swift_getOpaqueTypeConformance2();
    v131 = MEMORY[0x277CDF918];
    v573 = MEMORY[0x277CDF918];
    v570 = swift_getWitnessTable();
    v571 = v131;
    v132 = swift_getWitnessTable();
    v568 = v527;
    v569 = v131;
    v566 = swift_getWitnessTable();
    v567 = v131;
    v564 = swift_getWitnessTable();
    v565 = MEMORY[0x277CDFC60];
    v133 = swift_getWitnessTable();
    v562 = v132;
    v563 = v133;
    swift_getWitnessTable();
    sub_24E8D5004(v130, v517);
    (*(v506 + 8))(v130, v507);
  }

  else
  {
    v591 = v574;
    v592 = v575;
    v593[0] = v576[0];
    *(v593 + 9) = *(v576 + 9);
    v127 = *(v123 + *(v126 + 36));
    v128 = v527;
    if (v127 == 7)
    {
      v129 = 0;
    }

    else
    {
      v129 = sub_24F0C8EE8(v127, 1u);
    }

    v134 = *(v98 + *(v528 + 36));
    v574 = v404;
    v575 = v403;
    *&v576[0] = v402;
    *(&v576[0] + 1) = v401;
    LOBYTE(v576[1]) = 0;
    v135 = v391;
    v134(&v591, &v574);
    sub_24F925838();
    v136 = a11;
    if (v129)
    {
      v136 = INFINITY;
    }

    v453 = v136;
    v137 = v392;
    v138 = v524;
    sub_24F926A48();
    (*(v393 + 8))(v135, v138);
    sub_24F925858();
    v551 = v128;
    v139 = MEMORY[0x277CDF918];
    v552 = MEMORY[0x277CDF918];
    v140 = v515;
    v141 = swift_getWitnessTable();
    v142 = v396;
    sub_24F926A48();
    (*(v394 + 8))(v137, v140);
    sub_24F927618();
    v549 = v141;
    v550 = v139;
    v387 = v513;
    v388 = swift_getWitnessTable();
    v143 = v395;
    sub_24F926948();
    (*(v397 + 8))(v142, v387);
    v547 = v388;
    v548 = MEMORY[0x277CDFC60];
    v144 = v522;
    v145 = swift_getWitnessTable();
    v146 = v398;
    sub_24E7896B8();
    v147 = *(v400 + 8);
    v147(v143, v144);
    v148 = v399;
    sub_24E7896B8();
    *&v574 = v512;
    *(&v574 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
    v575 = v511;
    *&v576[0] = v519;
    *(&v576[0] + 1) = v508;
    v545 = swift_getOpaqueTypeConformance2();
    v149 = MEMORY[0x277CDF918];
    v546 = MEMORY[0x277CDF918];
    v543 = swift_getWitnessTable();
    v544 = v149;
    v150 = v510;
    v151 = swift_getWitnessTable();
    v152 = v518;
    sub_24ECCCC98(v148, v150, v144, v151, v145);
    v147(v148, v144);
    v153 = v146;
    v98 = v526;
    v147(v153, v144);
    sub_24E836C64(&v591);
    (*(*(v504 - 8) + 56))(v152, 0, 1, v504);
    v541 = v151;
    v542 = v145;
    swift_getWitnessTable();
    sub_24E8D5004(v152, v517);
    (*(v506 + 8))(v152, v507);
  }

LABEL_64:
  v217 = *(v98 + v525[15]);
  v218 = *(v217 + 16);
  if (v218)
  {
    sub_24E615E00(v217 + 40 * v218 - 8, &v591);
    __swift_project_boxed_opaque_existential_1(&v591, *(&v592 + 1));
    sub_24F928D68();
    __swift_destroy_boxed_opaque_existential_1(&v591);
  }

  else
  {
    memset(v560, 0, sizeof(v560));
    v561 = 0;
  }

  sub_24F09F69C(v98, v498, type metadata accessor for GSKShelf);
  v219 = v496;
  v220 = *(v496 + 16);
  v221 = v493;
  v222 = v497;
  v220(v499, v493, v497);
  sub_24F921928();
  (*(v454 + 16))(v501, v489, v494);
  v223 = v98 + *(v528 + 44);
  v454 = *v223;
  LODWORD(v453) = *(v223 + 8);
  v224 = v521;
  v225 = v521 + 16;
  v494 = *(v521 + 16);
  v494(v520, v98);
  sub_24E60169C(v560, &v591, &qword_27F235830, &qword_24F93B8C0);
  v220(v495, v221, v222);
  v226 = *(v224 + 80);
  v227 = (v226 + 32) & ~v226;
  v493 = v227 + v456;
  v228 = v226 | 7;
  v229 = (v227 + v456 + 7) & 0xFFFFFFFFFFFFFFF8;
  v230 = (*(v219 + 80) + v229 + 40) & ~*(v219 + 80);
  v231 = swift_allocObject();
  v232 = v527;
  *(v231 + 16) = v524;
  *(v231 + 24) = v232;
  v233 = *(v224 + 32);
  v234 = v528;
  (v233)(v231 + v227, v520, v528);
  v235 = v231 + v229;
  v236 = v592;
  *v235 = v591;
  *(v235 + 16) = v236;
  *(v235 + 32) = *&v593[0];
  (*(v496 + 32))(v231 + v230, v495, v497);
  v237 = v457;
  v497 = v225;
  (v494)(v457, v526, v234);
  v495 = v228;
  v238 = swift_allocObject();
  v239 = v527;
  *(v238 + 16) = v524;
  *(v238 + 24) = v239;
  v496 = v227;
  v521 = v224 + 32;
  v457 = v233;
  (v233)(v238 + v227, v237, v234);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238830, &unk_24F9C5300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226110, &qword_24F979000);
  sub_24F09F654(&qword_27F238838, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
  sub_24F09D10C();
  sub_24F09F3C0(&qword_27F2388A8, &qword_27F226110, &qword_24F979000, sub_24F09D5C0);
  v240 = v526;
  sub_24F921D58();
  v241 = v240 + *(v234 + 60);
  v243 = *v241;
  v242 = *(v241 + 8);
  v245 = *(v241 + 16);
  v244 = *(v241 + 24);
  LODWORD(v499) = *(v241 + 32);
  v449 = a9;
  v450 = a10;
  v501 = v242;
  v500 = v244;
  v498 = v243;
  v456 = v245;
  if (v499 != 1)
  {

    sub_24F92BDC8();
    v246 = sub_24F9257A8();
    sub_24F921FD8();

    v247 = v490;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v243, v242, v245, v244, 0);
    v455 = *(v491 + 8);
    v248 = v492;
    v455(v247, v492);

    sub_24F92BDC8();
    v249 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v243, v242, v245, v244, 0);
    v455(v247, v248);
  }

  v250 = sub_24F925838();
  sub_24F923318();
  v252 = v251;
  v254 = v253;
  v256 = v255;
  v258 = v257;
  v259 = v460;
  (*(v502 + 16))(v460, v516, v503);
  v260 = v259 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2318C8, &qword_24F9C5350) + 36);
  *v260 = v250;
  *(v260 + 8) = v252;
  *(v260 + 16) = v254;
  *(v260 + 24) = v256;
  *(v260 + 32) = v258;
  *(v260 + 40) = 0;
  v261 = sub_24F925858();
  sub_24F923318();
  v262 = v458;
  v263 = v259 + *(v458 + 36);
  *v263 = v261;
  *(v263 + 8) = v264;
  *(v263 + 16) = v265;
  *(v263 + 24) = v266;
  *(v263 + 32) = v267;
  *(v263 + 40) = 0;
  v268 = sub_24EE50CBC();
  v269 = v461;
  sub_24F9262E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388C8, &qword_24F9C5358);
  *&v591 = v262;
  *(&v591 + 1) = v268;
  v270 = swift_getOpaqueTypeConformance2();
  v271 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8, &qword_24F9C5360);
  v272 = sub_24EE50E00();
  v273 = v463;
  *&v591 = v463;
  *(&v591 + 1) = &type metadata for IsDebugFocusOverlayEnabled;
  *&v592 = v271;
  *(&v592 + 1) = v270;
  *&v593[0] = v519;
  *(&v593[0] + 1) = v272;
  swift_getOpaqueTypeConformance2();
  v274 = v459;
  sub_24F926B08();
  (*(v462 + 8))(v269, v273);
  sub_24E601704(v259, &qword_27F2318B0, &unk_24F9A6CA0);
  v275 = sub_24F925838();
  sub_24F923318();
  v277 = v276;
  v279 = v278;
  v281 = v280;
  v283 = v282;
  v284 = v274 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D0, &qword_24F9C5368) + 36);
  *v284 = v275;
  *(v284 + 8) = v277;
  *(v284 + 16) = v279;
  *(v284 + 24) = v281;
  *(v284 + 32) = v283;
  *(v284 + 40) = 0;
  v285 = sub_24F925858();
  sub_24F923318();
  v286 = v488;
  v287 = v274 + *(v488 + 36);
  *v287 = v285;
  *(v287 + 8) = v288;
  *(v287 + 16) = v289;
  *(v287 + 24) = v290;
  *(v287 + 32) = v291;
  *(v287 + 40) = 0;
  (*(v502 + 8))(v516, v503);
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388D8, &qword_24F9C5370);
  v293 = sub_24F09D734();
  v294 = sub_24F09D94C();
  v295 = MEMORY[0x277CE1410];
  v296 = MEMORY[0x277CE1428];
  sub_24F925F58();
  sub_24E601704(v274, &qword_27F2387F8, &qword_24F9C52C0);
  v297 = v526;
  if ((v480 & 1) == 0)
  {
    v298 = v526 + *(v528 + 84);
    v299 = *v298;
    if (*(v298 + 8) != 1)
    {

      sub_24F92BDC8();
      v300 = sub_24F9257A8();
      v286 = v488;
      sub_24F921FD8();

      v297 = v526;
      v301 = v490;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(v299, 0);
      (*(v491 + 8))(v301, v492);
    }
  }

  *&v591 = v286;
  *(&v591 + 1) = v296;
  *&v592 = v296;
  *(&v592 + 1) = v292;
  *&v593[0] = v293;
  *(&v593[0] + 1) = v295;
  *&v593[1] = v295;
  *(&v593[1] + 1) = v294;
  v302 = swift_getOpaqueTypeConformance2();
  v303 = v464;
  v304 = v469;
  v305 = v505;
  sub_24F925F68();
  (*(v465 + 8))(v305, v304);
  sub_24F4BB32C();
  *&v591 = v304;
  *(&v591 + 1) = v302;
  v306 = swift_getOpaqueTypeConformance2();
  v307 = v468;
  v308 = v472;
  sub_24F925F88();
  (*(v466 + 8))(v303, v308);
  v309 = v479;
  sub_24F4BAE20(v479);
  *&v591 = v308;
  *(&v591 + 1) = v306;
  v310 = swift_getOpaqueTypeConformance2();
  v311 = v470;
  v312 = v475;
  sub_24F925F98();
  sub_24E601704(v309, &qword_27F2387E8, &unk_24F9C51A0);
  (*(v473 + 8))(v307, v312);
  *&v591 = v312;
  *(&v591 + 1) = v310;
  swift_getOpaqueTypeConformance2();
  v313 = v471;
  v314 = v477;
  sub_24F925F18();
  (*(v474 + 8))(v311, v314);
  v315 = v520;
  v316 = v528;
  (v494)(v520, v297, v528);
  v317 = swift_allocObject();
  v318 = v527;
  *(v317 + 16) = v524;
  *(v317 + 24) = v318;
  (v457)(v317 + v496, v315, v316);
  v319 = v467;
  (*(v476 + 32))(v467, v313, v478);
  v320 = (v319 + *(v514 + 36));
  *v320 = sub_24F09F130;
  v320[1] = v317;
  v320[2] = 0;
  v320[3] = 0;
  sub_24E6009C8(v319, v523, &qword_27F238798, &qword_24F9C5160);
  v321 = v525;
  sub_24E60169C(v297 + v525[16], &v591, &qword_27F21BE38, &unk_24F953890);
  if (*(&v592 + 1))
  {
    sub_24E612C80(&v591, &v554);
    sub_24E615E00(&v554, &v592);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F09F654(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    *&v591 = sub_24F923598();
    BYTE8(v591) = v322 & 1;
    if (*(v297 + v321[12]) == 1)
    {
      v323 = v436;
      sub_24F924208();
      v324 = v451;
      v325 = v438;
      v326 = v487;
    }

    else
    {
      *&v574 = MEMORY[0x277D84F90];
      sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
      v323 = v436;
      v326 = v487;
      sub_24F92C6A8();
      v324 = v451;
      v325 = v438;
    }

    sub_24E66C1E0();
    sub_24F926AE8();
    (*(v486 + 8))(v323, v326);
    sub_24E88F154(&v591);
    v329 = sub_24F925818();
    sub_24F921988();
    v331 = v330;
    v332 = 0uLL;
    v333 = 0uLL;
    if ((v330 & 1) == 0)
    {
      sub_24F923318();
      *(&v333 + 1) = v334;
      *(&v332 + 1) = v335;
    }

    v526 = v333;
    v528 = v332;
    v336 = v440;
    (*(v442 + 32))(v440, v325, v444);
    v337 = v336 + *(v437 + 36);
    *v337 = v329;
    *(v337 + 24) = v526;
    *(v337 + 8) = v528;
    *(v337 + 40) = v331 & 1;
    v338 = sub_24F925838();
    sub_24F923318();
    v340 = v339;
    v342 = v341;
    v344 = v343;
    v346 = v345;
    v347 = v443;
    sub_24E6009C8(v336, v443, &qword_27F221370, &qword_24F965E90);
    v348 = v347 + *(v439 + 36);
    *v348 = v338;
    *(v348 + 8) = v340;
    *(v348 + 16) = v342;
    *(v348 + 24) = v344;
    *(v348 + 32) = v346;
    *(v348 + 40) = 0;
    v349 = sub_24F925858();
    sub_24F923318();
    v351 = v350;
    v353 = v352;
    v355 = v354;
    v357 = v356;
    v358 = v446;
    sub_24E6009C8(v347, v446, &qword_27F221360, &unk_24F9A6C80);
    v359 = v358 + *(v441 + 36);
    *v359 = v349;
    *(v359 + 8) = v351;
    *(v359 + 16) = v353;
    *(v359 + 24) = v355;
    *(v359 + 32) = v357;
    *(v359 + 40) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v360 = v448;
    sub_24E6009C8(v358, v448, &qword_27F221350, &unk_24F965E80);
    v361 = (v360 + *(v445 + 36));
    v362 = v575;
    *v361 = v574;
    v361[1] = v362;
    v361[2] = v576[0];
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v360, v324, &qword_27F221340, &unk_24F9A6C70);
    v363 = (v324 + *(v447 + 36));
    v364 = v593[3];
    v363[4] = v593[2];
    v363[5] = v364;
    v363[6] = v593[4];
    v365 = v592;
    *v363 = v591;
    v363[1] = v365;
    v366 = v593[1];
    v363[2] = v593[0];
    v363[3] = v366;
    if (!v499)
    {
      v367 = v498;

      sub_24F92BDC8();
      v368 = sub_24F9257A8();
      sub_24F921FD8();

      v369 = v490;
      sub_24F924838();
      swift_getAtKeyPath();
      v370 = v501;
      v371 = v456;
      v372 = v500;
      sub_24E669FC4(v367, v501, v456, v500, 0);
      *&v528 = *(v491 + 8);
      v373 = v492;
      (v528)(v369, v492);

      sub_24F92BDC8();
      v374 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      v375 = v367;
      v324 = v451;
      sub_24E669FC4(v375, v370, v371, v372, 0);
      (v528)(v369, v373);
    }

    v328 = v483;
    sub_24E8F1098(v483);
    sub_24E601704(v324, &qword_27F221310, &unk_24F9C52B0);
    __swift_destroy_boxed_opaque_existential_1(&v554);
    v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221398, &qword_24F965EB0);
    (*(*(v376 - 8) + 56))(v328, 0, 1, v376);
  }

  else
  {
    sub_24E601704(&v591, &qword_27F2171D0, &unk_24F980290);
    v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221398, &qword_24F965EB0);
    v328 = v483;
    (*(*(v327 - 8) + 56))(v483, 1, 1, v327);
  }

  v377 = v506;
  v378 = v518;
  v379 = v507;
  (*(v506 + 16))(v518, v517, v507);
  v553[0] = v378;
  v380 = v481;
  sub_24E60169C(v523, v481, &qword_27F238798, &qword_24F9C5160);
  v553[1] = v380;
  v381 = v484;
  sub_24E60169C(v328, v484, &qword_27F2387A0, &qword_24F9C5168);
  v553[2] = v381;
  v559[0] = v379;
  v559[1] = v514;
  v559[2] = v482;
  v554 = v512;
  v555 = &type metadata for IsDebugFocusOverlayEnabled;
  v556 = v511;
  v557 = v519;
  v558 = v508;
  v553[15] = swift_getOpaqueTypeConformance2();
  v382 = MEMORY[0x277CDF918];
  v553[16] = MEMORY[0x277CDF918];
  v553[13] = swift_getWitnessTable();
  v553[14] = v382;
  v383 = swift_getWitnessTable();
  v553[11] = v527;
  v553[12] = v382;
  v553[9] = swift_getWitnessTable();
  v553[10] = v382;
  v553[7] = swift_getWitnessTable();
  v553[8] = MEMORY[0x277CDFC60];
  v384 = swift_getWitnessTable();
  v553[5] = v383;
  v553[6] = v384;
  v553[4] = swift_getWitnessTable();
  v554 = swift_getWitnessTable();
  v555 = sub_24F09F1B4();
  *&v556 = sub_24F09F3C0(&qword_27F238910, &qword_27F2387A0, &qword_24F9C5168, sub_24F09F43C);
  sub_24F57BA64(v553, 3uLL, v559);
  sub_24E601704(v328, &qword_27F2387A0, &qword_24F9C5168);
  sub_24E601704(v523, &qword_27F238798, &qword_24F9C5160);
  sub_24E601704(v560, &qword_27F235830, &qword_24F93B8C0);
  v385 = *(v377 + 8);
  v385(v517, v379);
  sub_24E601704(v381, &qword_27F2387A0, &qword_24F9C5168);
  sub_24E601704(v380, &qword_27F238798, &qword_24F9C5160);
  return (v385)(v518, v379);
}

uint64_t sub_24F098D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v72 = a5;
  v74 = a4;
  v71 = a3;
  v77 = a2;
  v75 = a7;
  v58 = sub_24F924218();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v76 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9218D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238868, &qword_24F9C5328);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v58 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238858, &qword_24F9C5318);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v58 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238938, &qword_24F9C53A8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v58 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238850, &qword_24F9C5310);
  v17 = MEMORY[0x28223BE20](v62);
  v69 = &v58 - v18;
  (*(v10 + 16))(v12, a1, v9, v17);
  sub_24F9218B8();
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F09F654(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  v19 = sub_24F923598();
  v21 = v20;
  (*(v10 + 8))(v12, v9);
  v86 = v19;
  LOBYTE(v87) = v21 & 1;
  v70 = a1;
  sub_24F9218B8();
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v78 = v85;
  v79 = v83;
  v80 = v81;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238870, &qword_24F9C5330);
  v23 = sub_24E66C1E0();
  v24 = sub_24E6A4C1C();
  v25 = sub_24F09D39C();
  v56 = v25;
  sub_24F926B08();
  sub_24E88F154(&v86);
  sub_24E601704(v81, &qword_27F2171C8, &unk_24F945310);
  sub_24E601704(v83, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v85, &qword_27F2171D0, &unk_24F980290);
  if (*(v77 + *(type metadata accessor for GSKShelf(0) + 48)) == 1)
  {
    sub_24F924208();
    v26 = v58;
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
    sub_24F09F654(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
    v27 = v58;
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
    sub_24F92C6A8();
    v26 = v27;
  }

  v86 = &type metadata for GSKComponentView;
  v87 = &type metadata for GameOverlayViewPredicate;
  v88 = v22;
  v89 = v23;
  v90 = v24;
  v91 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v61;
  v30 = v76;
  v31 = v63;
  sub_24F926AE8();
  (*(v60 + 8))(v30, v26);
  (*(v59 + 8))(v14, v31);
  v32 = v70;
  sub_24F9218B8();
  v33 = v89;
  v34 = v90;
  v35 = __swift_project_boxed_opaque_existential_1(&v86, v89);
  v85[3] = v33;
  v85[4] = *(v34 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
  v37 = sub_24F9218C8();
  v38 = sub_24F9275D8();
  v39 = sub_24F926CA8();
  MEMORY[0x28223BE20](v39);
  *(&v58 - 6) = v85;
  *(&v58 - 5) = v37;
  *(&v58 - 32) = 0;
  *(&v58 - 3) = v38;
  v57 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238860, &qword_24F9C5320);
  *&v83[0] = v31;
  *(&v83[0] + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24F09B638();
  v56 = sub_24F09D458();
  v41 = v65;
  v42 = v66;
  sub_24F926B08();

  (*(v64 + 8))(v29, v42);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(&v86);
  v43 = sub_24F927618();
  v45 = v44;
  v46 = v69;
  v47 = &v69[*(v62 + 36)];
  sub_24F099764(v77, v32, v71, v72, v73, v47);
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238890, &qword_24F9C5338) + 36));
  *v48 = v43;
  v48[1] = v45;
  (*(v67 + 32))(v46, v41, v68);
  KeyPath = swift_getKeyPath();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238830, &unk_24F9C5300);
  v51 = v75;
  v52 = (v75 + *(v50 + 36));
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2388A0, &unk_24F9C5340) + 28);
  v54 = sub_24F9218F8();
  (*(*(v54 - 8) + 16))(v52 + v53, v74, v54);
  *v52 = KeyPath;
  return sub_24E6009C8(v46, v51, &qword_27F238850, &qword_24F9C5310);
}

uint64_t sub_24F099764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v42 = a6;
  v38 = a4;
  v36 = a5;
  v8 = type metadata accessor for SizedShelfGridView(0, a4, a5, a4);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  v11 = sub_24F9218D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238948, &unk_24F9C53D8);
  v15 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v17 = &v32[-v16];
  v43 = v8;
  v18 = *(a1 + *(v8 + 52));
  v39 = v10;
  v37 = v17;
  if (v18)
  {
    goto LABEL_2;
  }

  if (!*(a1 + *(v43 + 48)))
  {
LABEL_7:
    v30 = 1;
    return (*(v15 + 56))(v42, v30, 1, v41);
  }

  v34 = a1;
  sub_24F9218B8();
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_24F928D68();
  sub_24E60169C(&v54, &v47, &qword_27F235830, &qword_24F93B8C0);
  sub_24E60169C(v40, &v50, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v48 + 1))
  {
    sub_24E601704(&v54, &qword_27F235830, &qword_24F93B8C0);
    v10 = v39;
    if (!*(&v51 + 1))
    {
      sub_24E601704(&v47, &qword_27F235830, &qword_24F93B8C0);
      __swift_destroy_boxed_opaque_existential_1(v53);
      a1 = v34;
      goto LABEL_2;
    }

LABEL_11:
    sub_24E601704(&v47, &qword_27F21B438, &unk_24F95FB00);
    __swift_destroy_boxed_opaque_existential_1(v53);
    v30 = 1;
    return (*(v15 + 56))(v42, v30, 1, v41);
  }

  sub_24E60169C(&v47, v46, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v51 + 1))
  {
    sub_24E601704(&v54, &qword_27F235830, &qword_24F93B8C0);
    sub_24E6585F8(v46);
    goto LABEL_11;
  }

  v44[0] = v50;
  v44[1] = v51;
  v45 = v52;
  v33 = MEMORY[0x253052150](v46, v44);
  sub_24E6585F8(v44);
  sub_24E601704(&v54, &qword_27F235830, &qword_24F93B8C0);
  sub_24E6585F8(v46);
  sub_24E601704(&v47, &qword_27F235830, &qword_24F93B8C0);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v10 = v39;
  a1 = v34;
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v34 = sub_24F926C98();
  v54 = v34;
  (*(v12 + 16))(v14, a2, v11);
  sub_24E60169C(v40, &v47, &qword_27F235830, &qword_24F93B8C0);
  v19 = v35;
  (*(v35 + 16))(v10, a1, v43);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v19 + 80) + v21 + 40) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = v36;
  *(v23 + 16) = v38;
  *(v23 + 24) = v24;
  (*(v12 + 32))(v23 + v20, v14, v11);
  v25 = v23 + v21;
  v26 = v48;
  *v25 = v47;
  *(v25 + 16) = v26;
  *(v25 + 32) = v49;
  v27 = v42;
  v28 = v41;
  (*(v19 + 32))(v23 + v22, v39, v43);
  v29 = v37;
  sub_24F9267B8();

  (*(v15 + 32))(v27, v29, v28);
  v30 = 0;
  return (*(v15 + 56))(v42, v30, 1, v41);
}

uint64_t sub_24F099D54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    sub_24F9218B8();
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_24F928D68();
    sub_24E60169C(v22, v17, &qword_27F235830, &qword_24F93B8C0);
    sub_24E60169C(a3, &v18, &qword_27F235830, &qword_24F93B8C0);
    if (v17[3])
    {
      sub_24E60169C(v17, v16, &qword_27F235830, &qword_24F93B8C0);
      if (*(&v19 + 1))
      {
        v14[0] = v18;
        v14[1] = v19;
        v15 = v20;
        v10 = MEMORY[0x253052150](v16, v14);
        sub_24E6585F8(v14);
        sub_24E601704(v22, &qword_27F235830, &qword_24F93B8C0);
        sub_24E6585F8(v16);
        sub_24E601704(v17, &qword_27F235830, &qword_24F93B8C0);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if ((v10 & 1) == 0)
        {
LABEL_12:
          result = type metadata accessor for SizedShelfGridView(0, a5, a6, v11);
          v13 = *(a4 + *(result + 52));
          if (v13)
          {
            sub_24F9218B8();
            v13(v17);
            return __swift_destroy_boxed_opaque_existential_1(v17);
          }

          return result;
        }

LABEL_8:
        v12 = *(a4 + *(type metadata accessor for SizedShelfGridView(0, a5, a6, v11) + 48));
        if (v12)
        {
          v12();
        }

        goto LABEL_12;
      }

      sub_24E601704(v22, &qword_27F235830, &qword_24F93B8C0);
      sub_24E6585F8(v16);
    }

    else
    {
      sub_24E601704(v22, &qword_27F235830, &qword_24F93B8C0);
      if (!*(&v19 + 1))
      {
        sub_24E601704(v17, &qword_27F235830, &qword_24F93B8C0);
        __swift_destroy_boxed_opaque_existential_1(v21);
        goto LABEL_8;
      }
    }

    sub_24E601704(v17, &qword_27F21B438, &unk_24F95FB00);
    __swift_destroy_boxed_opaque_existential_1(v21);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_24F099FF0(uint64_t a1)
{
  v2 = sub_24F9218F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_24F09F7AC();
  sub_24F924878();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_24F09A134@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0);
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  if (sub_24F4BB204())
  {
    sub_24F9271E8();
    v5 = sub_24F9251C8();
    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)] = v5;
    v6 = *(v2 + 36);
    v7 = *MEMORY[0x277CE13B8];
    v8 = sub_24F927748();
    (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
    sub_24E6009C8(v4, a1, &qword_27F214598, &qword_24F978EC0);
    return (*(v12 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_24F09A2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for GSKShelf(0);
  if (!*(*(a1 + *(result + 60)) + 16))
  {
    result = type metadata accessor for SizedShelfGridView(0, a2, a3, v7);
    v8 = (a1 + *(result + 48));
    if (*v8)
    {
      return (*v8)();
    }
  }

  return result;
}

void *sub_24F09A370@<X0>(uint64_t a2@<X8>)
{
  v7 = sub_24F9249A8();
  v22 = 0;
  sub_24F09A4A4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  sub_24E60169C(__dst, &v19, &qword_27F238928, &qword_24F9C5390);
  sub_24E601704(v24, &qword_27F238928, &qword_24F9C5390);
  memcpy(&v21[7], __dst, 0x1C8uLL);
  v8 = v22;
  v9 = sub_24F925868();
  sub_24F923318();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  result = memcpy((a2 + 17), v21, 0x1CFuLL);
  *(a2 + 480) = v9;
  *(a2 + 488) = v11;
  *(a2 + 496) = v13;
  *(a2 + 504) = v15;
  *(a2 + 512) = v17;
  *(a2 + 520) = 0;
  return result;
}

uint64_t sub_24F09A4A4@<X0>(void *a2@<X8>)
{
  v14 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  v15 = v91;
  v21 = v95;
  v17 = v96;
  v18 = v93;
  sub_24F927618();
  sub_24F9242E8();
  v90 = v92;
  v16 = v92;
  v89 = v94;
  v19 = v94;
  v13 = sub_24F926C88();
  sub_24F927618();
  sub_24F9242E8();
  v12 = sub_24F926C98();
  sub_24F927618();
  sub_24F9238C8();
  sub_24F927618();
  sub_24F9242E8();
  v88 = v98;
  v87 = v100;
  *&v44 = v14;
  *(&v44 + 1) = v91;
  LOBYTE(v45) = v92;
  *(&v45 + 1) = v93;
  LOBYTE(v46) = v94;
  *(&v46 + 1) = v95;
  *v47 = v96;
  *&v47[56] = v40;
  *&v47[72] = v41;
  *&v47[88] = v42;
  *&v47[104] = v43;
  *&v47[8] = v37;
  *&v47[24] = v38;
  *&v47[40] = v39;
  __src[8] = *&v47[80];
  __src[9] = *&v47[96];
  __src[2] = v46;
  __src[3] = *v47;
  __src[4] = *&v47[16];
  __src[5] = *&v47[32];
  __src[6] = *&v47[48];
  __src[7] = *&v47[64];
  __src[0] = v44;
  __src[1] = v45;
  *&v48[56] = v33;
  *&v48[72] = v34;
  *v48 = v13;
  *&v48[88] = v35;
  *&v48[104] = v36;
  *&v48[8] = v30;
  *&v48[40] = v32;
  *&v48[24] = v31;
  *(&__src[16] + 8) = *&v48[96];
  *(&__src[13] + 8) = *&v48[48];
  *(&__src[12] + 8) = *&v48[32];
  *(&__src[11] + 8) = *&v48[16];
  *(&__src[10] + 8) = *v48;
  *&__src[10] = *(&v43 + 1);
  *(&__src[17] + 1) = *(&v36 + 1);
  *(&__src[15] + 8) = *&v48[80];
  *(&__src[14] + 8) = *&v48[64];
  v5 = v97;
  *&v49 = v12;
  *(&v49 + 1) = v97;
  LOBYTE(v50) = v98;
  v6 = v98;
  v7 = v99;
  *(&v50 + 1) = v99;
  LOBYTE(v51) = v100;
  v8 = v100;
  v9 = v102;
  v10 = v101;
  *(&v51 + 1) = v101;
  *v52 = v102;
  *&v52[24] = v24;
  *&v52[40] = v25;
  *&v52[8] = v23;
  *&v52[104] = v29;
  *&v52[88] = v28;
  *&v52[72] = v27;
  *&v52[56] = v26;
  __src[18] = v49;
  __src[19] = v50;
  __src[22] = *&v52[16];
  __src[23] = *&v52[32];
  __src[20] = v51;
  __src[21] = *v52;
  *&__src[28] = *(&v29 + 1);
  __src[26] = *&v52[80];
  __src[27] = *&v52[96];
  __src[24] = *&v52[48];
  __src[25] = *&v52[64];
  memcpy(a2, __src, 0x1C8uLL);
  v62 = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v59 = v23;
  v60 = v24;
  v53[0] = v12;
  v53[1] = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  v57 = v10;
  v58 = v9;
  v61 = v25;
  sub_24E60169C(&v44, v74, &qword_27F238930, &unk_24F9C5398);
  sub_24E60169C(v48, v74, &qword_27F232280, &unk_24F9A8E20);
  sub_24E60169C(&v49, v74, &qword_27F238930, &unk_24F9C5398);
  sub_24E601704(v53, &qword_27F238930, &unk_24F9C5398);
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v73 = v36;
  v67 = v30;
  v68 = v31;
  v66 = v13;
  v69 = v32;
  sub_24E601704(&v66, &qword_27F232280, &unk_24F9A8E20);
  v83 = v40;
  v84 = v41;
  v85 = v42;
  v86 = v43;
  v80 = v37;
  v81 = v38;
  v74[0] = v14;
  v74[1] = v15;
  v75 = v16;
  v76 = v18;
  v77 = v19;
  v78 = v21;
  v79 = v17;
  v82 = v39;
  return sub_24E601704(v74, &qword_27F238930, &unk_24F9C5398);
}

uint64_t sub_24F09AA0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v45 = a8;
  LODWORD(v41) = a4;
  v48 = a1;
  v49 = a9;
  v44 = a12;
  v43 = a11;
  v42 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_24F927618();
  v46 = v21;
  v47 = v20;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_24F92ADC8();
  v22 = sub_24F929608();
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) != 1)
  {
    sub_24E601704(v19, &qword_27F213E68, &unk_24F93BC80);
    if (v41)
    {
      v26 = a2[3];
      v27 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v26);
      v28 = sub_24E6438B4(v26, v27);
      if (v29)
      {
        goto LABEL_3;
      }

      a3 = v28;
    }

    v58[0] = a3;
    v23 = sub_24F92CD88();
    v24 = v30;

    v25 = 0x4024000000000000;
    goto LABEL_8;
  }

  sub_24E601704(v19, &qword_27F213E68, &unk_24F93BC80);
LABEL_3:
  v23 = 0;
  v24 = 0;
  a5 = 0;
  a6 = 0;
  a7 = 0;
  v25 = 0;
LABEL_8:
  v41 = a7;
  *&v51 = v23;
  *(&v51 + 1) = v24;
  *&v52 = a5;
  *(&v52 + 1) = a6;
  v53 = 0u;
  v54 = 0u;
  *&v55 = a7;
  *(&v55 + 1) = v25;
  LOBYTE(v56) = 0;
  v31 = v46;
  v32 = v47;
  *(&v56 + 1) = v47;
  v57 = v46;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v42);
  v34 = v49;
  (*(*(v33 - 8) + 16))(v49, v48, v33);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v43, v44) + 36);
  v36 = v56;
  *(v35 + 64) = v55;
  *(v35 + 80) = v36;
  *(v35 + 96) = v57;
  v37 = v52;
  *v35 = v51;
  *(v35 + 16) = v37;
  v38 = v54;
  *(v35 + 32) = v53;
  *(v35 + 48) = v38;
  v58[0] = v23;
  v58[1] = v24;
  v58[2] = a5;
  v58[3] = a6;
  v59 = 0u;
  v60 = 0u;
  v61 = v41;
  v62 = v25;
  v63 = 0;
  v64 = v32;
  v65 = v31;
  sub_24E60169C(&v51, &v50, &qword_27F2387A8, &qword_24F9CFD50);
  return sub_24E601704(v58, &qword_27F2387A8, &qword_24F9CFD50);
}

void sub_24F09AD74(uint64_t a1)
{
  type metadata accessor for GSKShelf(319);
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24F09B380(319, &qword_27F2153E8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E6CAEE4(319, &qword_27F22EB18, &unk_27F22EB20, qword_24F9C4E60, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F09B380(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24F09B380(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24F09B32C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
              if (v7 <= 0x3F)
              {
                sub_24E6CAEE4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_24F09B380(319, &qword_27F22F670, &type metadata for BackgroundThemeStyle, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_24F09B380(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                    if (v10 <= 0x3F)
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
    }
  }
}

uint64_t sub_24F09B000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for GSKShelf(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[17];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[18];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F09B1A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for GSKShelf(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[17];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[18];

  return v16(v17, a2, a2, v15);
}

void sub_24F09B32C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F09B380(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F09B3D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SizedShelfGridView(255, *a1, a1[1], a4);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2383C8, &unk_24F9C4EF0);
  swift_getWitnessTable();
  sub_24EB68EB4();
  swift_getWitnessTable();
  sub_24F0904D0();
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_24F09B638()
{
  result = qword_27F2387B0;
  if (!qword_27F2387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2387B0);
  }

  return result;
}

unint64_t sub_24F09B68C()
{
  result = qword_27F2387D0;
  if (!qword_27F2387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2387D0);
  }

  return result;
}

uint64_t sub_24F09B734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F09B794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for SizedShelfGridView(0, *(v4 + 16), *(v4 + 24), a4);
  v112 = *(*(v6 - 1) + 80);
  v107 = *(*(v6 - 1) + 64);
  v7 = sub_24F9218F8();
  v110 = *(v7 - 8);
  v111 = v7;
  v109 = *(v110 + 80);
  v108 = (v112 + 32) & ~v112;
  v8 = v4 + v108;
  v9 = sub_24F92AA48();
  (*(*(v9 - 8) + 8))(v4 + v108, v9);
  v10 = type metadata accessor for GSKShelf(0);
  v11 = *(v10 + 20);
  v12 = sub_24F929608();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v8 + v11, 1, v12))
  {
    (*(v13 + 8))(v8 + v11, v12);
  }

  v106 = v10;
  v14 = v8 + *(v10 + 24);
  v15 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v16 = *(*(v15 - 1) + 48);
  if (!v16(v14, 1, v15))
  {

    v17 = v14 + v15[5];
    v18 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v80 = sub_24F9289E8();
          (*(*(v80 - 8) + 8))(v17, v80);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v19 = v14 + v15[7];
          v20 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v22 = sub_24F928388();
              (*(*(v22 - 8) + 8))(v19, v22);
            }
          }

          v23 = (v14 + v15[10]);
          if (v23[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v23);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v68 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v69 = type metadata accessor for JSColor(0);
        if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
        {
          v70 = sub_24F928388();
          (*(*(v70 - 8) + 8))(v68, v70);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v77 = sub_24F9289E8();
        v78 = *(v77 - 8);
        if (!(*(v78 + 48))(v17, 1, v77))
        {
          (*(v78 + 8))(v17, v77);
        }

        if (*(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v24 = type metadata accessor for HeaderPresentation(0);
  v25 = v14 + v24[5];
  if (v16(v25, 1, v15))
  {
    goto LABEL_33;
  }

  v105 = v5;

  v26 = v25 + v15[5];
  v27 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    goto LABEL_18;
  }

  v30 = swift_getEnumCaseMultiPayload();
  if (v30 <= 2)
  {
    if (!v30)
    {

      v71 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v72 = type metadata accessor for JSColor(0);
      if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
      {
        v73 = sub_24F928388();
        (*(*(v73 - 8) + 8))(v71, v73);
      }

      goto LABEL_18;
    }

    if (v30 == 1)
    {
      v79 = sub_24F9289E8();
      v104 = *(v79 - 8);
      if (!(*(v104 + 48))(v26, 1, v79))
      {
        (*(v104 + 8))(v26, v79);
      }

      if (*(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v30 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v30)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v83 = sub_24F9289E8();
      (*(*(v83 - 8) + 8))(v26, v83);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v28 = v25 + v15[7];
  v29 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v31 = sub_24F928388();
      (*(*(v31 - 8) + 8))(v28, v31);
    }
  }

  v32 = (v25 + v15[10]);
  v5 = v105;
  if (v32[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

LABEL_33:
  v33 = v14 + v24[6];
  if (v16(v33, 1, v15))
  {
    goto LABEL_50;
  }

  v34 = v5;

  v35 = v33 + v15[5];
  v36 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    goto LABEL_35;
  }

  v39 = swift_getEnumCaseMultiPayload();
  if (v39 <= 2)
  {
    if (!v39)
    {

      v74 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v75 = type metadata accessor for JSColor(0);
      if (!(*(*(v75 - 8) + 48))(v74, 1, v75))
      {
        v76 = sub_24F928388();
        (*(*(v76 - 8) + 8))(v74, v76);
      }

      goto LABEL_35;
    }

    if (v39 == 1)
    {
      v81 = sub_24F9289E8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v35, 1, v81))
      {
        (*(v82 + 8))(v35, v81);
      }

      if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v39 != 2)
    {
      goto LABEL_35;
    }

LABEL_101:

    goto LABEL_35;
  }

  switch(v39)
  {
    case 3:
      goto LABEL_101;
    case 4:
      v84 = sub_24F9289E8();
      (*(*(v84 - 8) + 8))(v35, v84);
      break;
    case 5:
      goto LABEL_101;
  }

LABEL_35:
  v37 = v33 + v15[7];
  v38 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v40 = sub_24F928388();
      (*(*(v40 - 8) + 8))(v37, v40);
    }
  }

  v41 = (v33 + v15[10]);
  v5 = v34;
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

LABEL_50:
  v42 = v14 + v24[7];
  if (*(v42 + 56) == 1)
  {
  }

  else if (!*(v42 + 56))
  {

    if (*(v42 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v42 + 16));
    }
  }

  v43 = v14 + v24[8];
  v44 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
  {
    v59 = swift_getEnumCaseMultiPayload();
    if (v59 == 2)
    {
      goto LABEL_142;
    }

    if (v59 != 1)
    {
      if (v59)
      {
        goto LABEL_56;
      }

      v60 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v60 - 8) + 48))(v43, 1, v60))
      {
        goto LABEL_56;
      }

      v61 = swift_getEnumCaseMultiPayload();
      if (v61 > 2)
      {
        if (v61 != 3)
        {
          if (v61 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v43, v103);
            goto LABEL_56;
          }

          if (v61 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_142;
      }

      if (v61)
      {
        if (v61 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v43, 1, v101))
          {
            (*(v102 + 8))(v43, v101);
          }

          if (!*(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v61 != 2)
        {
          goto LABEL_56;
        }

LABEL_142:

        goto LABEL_56;
      }

      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_161:
      v97 = v43 + v91;
      v98 = type metadata accessor for JSColor(0);
      if (!(*(*(v98 - 8) + 48))(v97, 1, v98))
      {
        v99 = sub_24F928388();
        (*(*(v99 - 8) + 8))(v97, v99);
      }

      goto LABEL_56;
    }

    v62 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v63 = *(*(v62 - 8) + 48);
    if (v63(v43, 1, v62))
    {
LABEL_92:
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v65 = v43 + *(v64 + 48);
      if (!v63(v65, 1, v62))
      {
        v66 = swift_getEnumCaseMultiPayload();
        if (v66 <= 2)
        {
          switch(v66)
          {
            case 0:

              v85 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v86 = type metadata accessor for JSColor(0);
              if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
              {
                v87 = sub_24F928388();
                (*(*(v87 - 8) + 8))(v85, v87);
              }

              goto LABEL_160;
            case 1:
              v92 = sub_24F9289E8();
              v93 = *(v92 - 8);
              if (!(*(v93 + 48))(v65, 1, v92))
              {
                (*(v93 + 8))(v65, v92);
              }

              if (!*(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_160;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_160;
          }

LABEL_154:

          goto LABEL_160;
        }

        switch(v66)
        {
          case 3:
            goto LABEL_154;
          case 4:
            v96 = sub_24F9289E8();
            (*(*(v96 - 8) + 8))(v65, v96);
            break;
          case 5:
            goto LABEL_154;
        }
      }

LABEL_160:
      v91 = *(v64 + 80);
      goto LABEL_161;
    }

    v67 = swift_getEnumCaseMultiPayload();
    if (v67 > 2)
    {
      if (v67 != 3)
      {
        if (v67 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v43, v100);
          goto LABEL_92;
        }

        if (v67 != 5)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (!v67)
      {

        v88 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v89 = type metadata accessor for JSColor(0);
        if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
        {
          v90 = sub_24F928388();
          (*(*(v90 - 8) + 8))(v88, v90);
        }

        goto LABEL_92;
      }

      if (v67 == 1)
      {
        v94 = sub_24F9289E8();
        v95 = *(v94 - 8);
        if (!(*(v95 + 48))(v43, 1, v94))
        {
          (*(v95 + 8))(v43, v94);
        }

        if (*(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_92;
      }

      if (v67 != 2)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_92;
  }

LABEL_56:
  v45 = (v8 + v106[13]);
  if (v45[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v46 = (v8 + v106[14]);
  if (v46[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v47 = (v8 + v106[16]);
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  if (*(v8 + v6[12]))
  {
  }

  if (*(v8 + v6[13]))
  {
  }

  sub_24E62A5EC(*(v8 + v6[14]), *(v8 + v6[14] + 8));
  v48 = v8 + v6[15];
  sub_24E669FC4(*v48, *(v48 + 8), *(v48 + 16), *(v48 + 24), *(v48 + 32));
  sub_24E62A5EC(*(v8 + v6[16]), *(v8 + v6[16] + 8));
  v49 = v6[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_24F923E98();
    (*(*(v50 - 8) + 8))(v8 + v49, v50);
  }

  else
  {
  }

  v51 = v6[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_24F925218();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v8 + v51, 1, v52))
    {
      (*(v53 + 8))(v8 + v51, v52);
    }
  }

  else
  {
  }

  v54 = (v107 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = v6[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = sub_24F925218();
    v57 = *(v56 - 8);
    if (!(*(v57 + 48))(v8 + v55, 1, v56))
    {
      (*(v57 + 8))(v8 + v55, v56);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v8 + v6[20]), *(v8 + v6[20] + 8));
  sub_24E62A5EC(*(v8 + v6[21]), *(v8 + v6[21] + 8));
  if (*(v5 + v54 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v5 + v54));
  }

  (*(v110 + 8))(v5 + ((v54 + v109 + 40) & ~v109), v111);

  return swift_deallocObject();
}

uint64_t sub_24F09CF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SizedShelfGridView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_24F9218F8() - 8);
  v12 = v3 + ((v10 + *(v11 + 80) + 40) & ~*(v11 + 80));

  return sub_24F098D94(a1, v3 + v9, v3 + v10, v12, v6, v7, a3);
}

uint64_t sub_24F09D070@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  type metadata accessor for SizedShelfGridView(0, *(v2 + 16), *(v2 + 24), a1);

  return sub_24F09A134(a2);
}

unint64_t sub_24F09D10C()
{
  result = qword_27F238840;
  if (!qword_27F238840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238830, &unk_24F9C5300);
    sub_24F09D1C4();
    sub_24E602068(&qword_27F238898, &qword_27F2388A0, &unk_24F9C5340, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238840);
  }

  return result;
}

unint64_t sub_24F09D1C4()
{
  result = qword_27F238848;
  if (!qword_27F238848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238850, &qword_24F9C5310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238858, &qword_24F9C5318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238860, &qword_24F9C5320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238868, &qword_24F9C5328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870, &qword_24F9C5330);
    sub_24E66C1E0();
    sub_24E6A4C1C();
    sub_24F09D39C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F09B638();
    sub_24F09D458();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F238888, &qword_27F238890, &qword_24F9C5338, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238848);
  }

  return result;
}

unint64_t sub_24F09D39C()
{
  result = qword_27F238878;
  if (!qword_27F238878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870, &qword_24F9C5330);
    sub_24E66C1E0();
    sub_24F09F654(&qword_27F217130, type metadata accessor for ZoomableViewModifier, &unk_24F9A0430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238878);
  }

  return result;
}

unint64_t sub_24F09D458()
{
  result = qword_27F238880;
  if (!qword_27F238880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238860, &qword_24F9C5320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238868, &qword_24F9C5328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238870, &qword_24F9C5330);
    sub_24E66C1E0();
    sub_24E6A4C1C();
    sub_24F09D39C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238880);
  }

  return result;
}

unint64_t sub_24F09D5C0()
{
  result = qword_27F2388B0;
  if (!qword_27F2388B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214598, &qword_24F978EC0);
    sub_24F09D64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388B0);
  }

  return result;
}

unint64_t sub_24F09D64C()
{
  result = qword_27F2388B8;
  if (!qword_27F2388B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2145B0, &qword_24F93D200);
    sub_24F09F654(&qword_27F2388C0, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388B8);
  }

  return result;
}

unint64_t sub_24F09D734()
{
  result = qword_27F2388E0;
  if (!qword_27F2388E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387F8, &qword_24F9C52C0);
    sub_24F09D7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388E0);
  }

  return result;
}

unint64_t sub_24F09D7C0()
{
  result = qword_27F2388E8;
  if (!qword_27F2388E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D0, &qword_24F9C5368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A0, &unk_24F9A6C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388C8, &qword_24F9C5358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318B0, &unk_24F9A6CA0);
    sub_24EE50CBC();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2318A8, &qword_24F9C5360);
    sub_24EE50E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388E8);
  }

  return result;
}

unint64_t sub_24F09D94C()
{
  result = qword_27F2388F0;
  if (!qword_27F2388F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8, &qword_24F9C5370);
    sub_24E602068(&qword_27F2388F8, &qword_27F238900, &qword_24F9C5378, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2388F0);
  }

  return result;
}

uint64_t objectdestroy_83Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SizedShelfGridView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + ((v6 + 32) & ~v6);
  v8 = sub_24F92AA48();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for GSKShelf(0);
  v10 = *(v9 + 20);
  v11 = sub_24F929608();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v102 = v9;
  v13 = v7 + *(v9 + 24);
  v14 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v15 = *(*(v14 - 1) + 48);
  if (!v15(v13, 1, v14))
  {

    v16 = v13 + v14[5];
    v17 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      goto LABEL_5;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v77 = sub_24F9289E8();
          (*(*(v77 - 8) + 8))(v16, v77);
          goto LABEL_5;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_5:
          v18 = v13 + v14[7];
          v19 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v21 = sub_24F928388();
              (*(*(v21 - 8) + 8))(v18, v21);
            }
          }

          v22 = (v13 + v14[10]);
          if (v22[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v22);
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v65 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v66 = type metadata accessor for JSColor(0);
        if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
        {
          v67 = sub_24F928388();
          (*(*(v67 - 8) + 8))(v65, v67);
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v74 = sub_24F9289E8();
        v75 = *(v74 - 8);
        if (!(*(v75 + 48))(v16, 1, v74))
        {
          (*(v75 + 8))(v16, v74);
        }

        if (*(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_5;
  }

LABEL_16:
  v23 = type metadata accessor for HeaderPresentation(0);
  v24 = v13 + v23[5];
  if (v15(v24, 1, v14))
  {
    goto LABEL_33;
  }

  v25 = v24 + v14[5];
  v26 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    goto LABEL_18;
  }

  v29 = swift_getEnumCaseMultiPayload();
  if (v29 <= 2)
  {
    if (!v29)
    {

      v68 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v69 = type metadata accessor for JSColor(0);
      if (!(*(*(v69 - 8) + 48))(v68, 1, v69))
      {
        v70 = sub_24F928388();
        (*(*(v70 - 8) + 8))(v68, v70);
      }

      goto LABEL_18;
    }

    if (v29 == 1)
    {
      v76 = sub_24F9289E8();
      v100 = *(v76 - 8);
      if (!(*(v100 + 48))(v25, 1, v76))
      {
        (*(v100 + 8))(v25, v76);
      }

      if (*(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_18;
    }

    if (v29 != 2)
    {
      goto LABEL_18;
    }

LABEL_46:

    goto LABEL_18;
  }

  switch(v29)
  {
    case 3:
      goto LABEL_46;
    case 4:
      v79 = sub_24F9289E8();
      (*(*(v79 - 8) + 8))(v25, v79);
      break;
    case 5:
      goto LABEL_46;
  }

LABEL_18:
  v27 = v24 + v14[7];
  v28 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v30 = sub_24F928388();
      (*(*(v30 - 8) + 8))(v27, v30);
    }
  }

  v31 = (v24 + v14[10]);
  if (v31[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

LABEL_33:
  v32 = v13 + v23[6];
  if (v15(v32, 1, v14))
  {
    goto LABEL_50;
  }

  v33 = v32 + v14[5];
  v34 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34))
  {
    goto LABEL_35;
  }

  v37 = swift_getEnumCaseMultiPayload();
  if (v37 <= 2)
  {
    if (!v37)
    {

      v71 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v72 = type metadata accessor for JSColor(0);
      if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
      {
        v73 = sub_24F928388();
        (*(*(v73 - 8) + 8))(v71, v73);
      }

      goto LABEL_35;
    }

    if (v37 == 1)
    {
      v78 = sub_24F9289E8();
      v101 = *(v78 - 8);
      if (!(*(v101 + 48))(v33, 1, v78))
      {
        (*(v101 + 8))(v33, v78);
      }

      if (*(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_35;
    }

    if (v37 != 2)
    {
      goto LABEL_35;
    }

LABEL_99:

    goto LABEL_35;
  }

  switch(v37)
  {
    case 3:
      goto LABEL_99;
    case 4:
      v80 = sub_24F9289E8();
      (*(*(v80 - 8) + 8))(v33, v80);
      break;
    case 5:
      goto LABEL_99;
  }

LABEL_35:
  v35 = v32 + v14[7];
  v36 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v38 = sub_24F928388();
      (*(*(v38 - 8) + 8))(v35, v38);
    }
  }

  v39 = (v32 + v14[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

LABEL_50:
  v40 = v13 + v23[7];
  if (*(v40 + 56) == 1)
  {
  }

  else if (!*(v40 + 56))
  {

    if (*(v40 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v40 + 16));
    }
  }

  v41 = v13 + v23[8];
  v42 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
      goto LABEL_140;
    }

    if (v56 != 1)
    {
      if (v56)
      {
        goto LABEL_56;
      }

      v57 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v57 - 8) + 48))(v41, 1, v57))
      {
        goto LABEL_56;
      }

      v58 = swift_getEnumCaseMultiPayload();
      if (v58 > 2)
      {
        if (v58 != 3)
        {
          if (v58 == 4)
          {
            v99 = sub_24F9289E8();
            (*(*(v99 - 8) + 8))(v41, v99);
            goto LABEL_56;
          }

          if (v58 != 5)
          {
            goto LABEL_56;
          }
        }

        goto LABEL_140;
      }

      if (v58)
      {
        if (v58 == 1)
        {
          v97 = sub_24F9289E8();
          v98 = *(v97 - 8);
          if (!(*(v98 + 48))(v41, 1, v97))
          {
            (*(v98 + 8))(v41, v97);
          }

          if (!*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_56;
          }
        }

        else if (v58 != 2)
        {
          goto LABEL_56;
        }

LABEL_140:

        goto LABEL_56;
      }

      v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_159:
      v93 = v41 + v87;
      v94 = type metadata accessor for JSColor(0);
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {
        v95 = sub_24F928388();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      goto LABEL_56;
    }

    v59 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v60 = *(*(v59 - 8) + 48);
    if (v60(v41, 1, v59))
    {
LABEL_90:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v62 = v41 + *(v61 + 48);
      if (!v60(v62, 1, v59))
      {
        v63 = swift_getEnumCaseMultiPayload();
        if (v63 <= 2)
        {
          switch(v63)
          {
            case 0:

              v81 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v82 = type metadata accessor for JSColor(0);
              if (!(*(*(v82 - 8) + 48))(v81, 1, v82))
              {
                v83 = sub_24F928388();
                (*(*(v83 - 8) + 8))(v81, v83);
              }

              goto LABEL_158;
            case 1:
              v88 = sub_24F9289E8();
              v89 = *(v88 - 8);
              if (!(*(v89 + 48))(v62, 1, v88))
              {
                (*(v89 + 8))(v62, v88);
              }

              if (!*(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_158;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_158;
          }

LABEL_152:

          goto LABEL_158;
        }

        switch(v63)
        {
          case 3:
            goto LABEL_152;
          case 4:
            v92 = sub_24F9289E8();
            (*(*(v92 - 8) + 8))(v62, v92);
            break;
          case 5:
            goto LABEL_152;
        }
      }

LABEL_158:
      v87 = *(v61 + 80);
      goto LABEL_159;
    }

    v64 = swift_getEnumCaseMultiPayload();
    if (v64 > 2)
    {
      if (v64 != 3)
      {
        if (v64 == 4)
        {
          v96 = sub_24F9289E8();
          (*(*(v96 - 8) + 8))(v41, v96);
          goto LABEL_90;
        }

        if (v64 != 5)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      if (!v64)
      {

        v84 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v85 = type metadata accessor for JSColor(0);
        if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
        {
          v86 = sub_24F928388();
          (*(*(v86 - 8) + 8))(v84, v86);
        }

        goto LABEL_90;
      }

      if (v64 == 1)
      {
        v90 = sub_24F9289E8();
        v91 = *(v90 - 8);
        if (!(*(v91 + 48))(v41, 1, v90))
        {
          (*(v91 + 8))(v41, v90);
        }

        if (*(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_90;
      }

      if (v64 != 2)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_90;
  }

LABEL_56:
  v43 = (v7 + v102[13]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = (v7 + v102[14]);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  v45 = (v7 + v102[16]);
  if (v45[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (*(v7 + v5[12]))
  {
  }

  if (*(v7 + v5[13]))
  {
  }

  sub_24E62A5EC(*(v7 + v5[14]), *(v7 + v5[14] + 8));
  v46 = v7 + v5[15];
  sub_24E669FC4(*v46, *(v46 + 8), *(v46 + 16), *(v46 + 24), *(v46 + 32));
  sub_24E62A5EC(*(v7 + v5[16]), *(v7 + v5[16] + 8));
  v47 = v5[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_24F923E98();
    (*(*(v48 - 8) + 8))(v7 + v47, v48);
  }

  else
  {
  }

  v49 = v5[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_24F925218();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v7 + v49, 1, v50))
    {
      (*(v51 + 8))(v7 + v49, v50);
    }
  }

  else
  {
  }

  v52 = v5[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_24F925218();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v7 + v52, 1, v53))
    {
      (*(v54 + 8))(v7 + v52, v53);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v7 + v5[20]), *(v7 + v5[20] + 8));
  sub_24E62A5EC(*(v7 + v5[21]), *(v7 + v5[21] + 8));

  return swift_deallocObject();
}

uint64_t sub_24F09F130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SizedShelfGridView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_24F09A2F8(v8, v5, v6);
}

unint64_t sub_24F09F1B4()
{
  result = qword_27F238908;
  if (!qword_27F238908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798, &qword_24F9C5160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238818, &qword_24F9C52E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238810, &qword_24F9C52D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238808, &qword_24F9C52D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238800, &qword_24F9C52C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387F8, &qword_24F9C52C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8, &qword_24F9C5370);
    sub_24F09D734();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238908);
  }

  return result;
}

uint64_t sub_24F09F3C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F09F43C()
{
  result = qword_27F238918;
  if (!qword_27F238918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221398, &qword_24F965EB0);
    sub_24F09F4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238918);
  }

  return result;
}

unint64_t sub_24F09F4C8()
{
  result = qword_27F238920;
  if (!qword_27F238920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221390, &qword_24F965EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221300, &unk_24F9C5380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221378, &qword_24F965E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221308, &unk_24F965E60);
    sub_24E8F2424();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F221380, &qword_24F965EA0);
    sub_24E8F2824();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238920);
  }

  return result;
}

uint64_t sub_24F09F654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F09F69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F09F7AC()
{
  result = qword_27F238940;
  if (!qword_27F238940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238940);
  }

  return result;
}

uint64_t sub_24F09F800(__n128 a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_24F9218D8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for SizedShelfGridView(0, v3, v4, v9);
  v107 = *(*(v10 - 1) + 80);
  (*(v6 + 8))(v2 + v7, v5);
  if (*(v2 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + v8));
  }

  v11 = v2 + ((v8 + v107 + 40) & ~v107);
  v12 = sub_24F92AA48();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for GSKShelf(0);
  v14 = *(v13 + 20);
  v15 = sub_24F929608();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v11 + v14, 1, v15))
  {
    (*(v16 + 8))(v11 + v14, v15);
  }

  v106 = v13;
  v17 = v11 + *(v13 + 24);
  v18 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v19 = *(*(v18 - 1) + 48);
  if (!v19(v17, 1, v18))
  {

    v20 = v17 + v18[5];
    v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      goto LABEL_7;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v81 = sub_24F9289E8();
          (*(*(v81 - 8) + 8))(v20, v81);
          goto LABEL_7;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_7:
          v22 = v17 + v18[7];
          v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v25 = sub_24F928388();
              (*(*(v25 - 8) + 8))(v22, v25);
            }
          }

          v26 = (v17 + v18[10]);
          if (v26[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v26);
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v69 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v70 = type metadata accessor for JSColor(0);
        if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
        {
          v71 = sub_24F928388();
          (*(*(v71 - 8) + 8))(v69, v71);
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v78 = sub_24F9289E8();
        v79 = *(v78 - 8);
        if (!(*(v79 + 48))(v20, 1, v78))
        {
          (*(v79 + 8))(v20, v78);
        }

        if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_7;
  }

LABEL_18:
  v27 = type metadata accessor for HeaderPresentation(0);
  v28 = v17 + v27[5];
  if (v19(v28, 1, v18))
  {
    goto LABEL_35;
  }

  v29 = v28 + v18[5];
  v30 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    goto LABEL_20;
  }

  v33 = swift_getEnumCaseMultiPayload();
  if (v33 <= 2)
  {
    if (!v33)
    {

      v72 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v73 = type metadata accessor for JSColor(0);
      if (!(*(*(v73 - 8) + 48))(v72, 1, v73))
      {
        v74 = sub_24F928388();
        (*(*(v74 - 8) + 8))(v72, v74);
      }

      goto LABEL_20;
    }

    if (v33 == 1)
    {
      v80 = sub_24F9289E8();
      v104 = *(v80 - 8);
      if (!(*(v104 + 48))(v29, 1, v80))
      {
        (*(v104 + 8))(v29, v80);
      }

      if (*(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_20;
    }

    if (v33 != 2)
    {
      goto LABEL_20;
    }

LABEL_48:

    goto LABEL_20;
  }

  switch(v33)
  {
    case 3:
      goto LABEL_48;
    case 4:
      v83 = sub_24F9289E8();
      (*(*(v83 - 8) + 8))(v29, v83);
      break;
    case 5:
      goto LABEL_48;
  }

LABEL_20:
  v31 = v28 + v18[7];
  v32 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v34 = sub_24F928388();
      (*(*(v34 - 8) + 8))(v31, v34);
    }
  }

  v35 = (v28 + v18[10]);
  if (v35[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

LABEL_35:
  v36 = v17 + v27[6];
  if (v19(v36, 1, v18))
  {
    goto LABEL_52;
  }

  v37 = v36 + v18[5];
  v38 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    goto LABEL_37;
  }

  v41 = swift_getEnumCaseMultiPayload();
  if (v41 <= 2)
  {
    if (!v41)
    {

      v75 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v76 = type metadata accessor for JSColor(0);
      if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
      {
        v77 = sub_24F928388();
        (*(*(v77 - 8) + 8))(v75, v77);
      }

      goto LABEL_37;
    }

    if (v41 == 1)
    {
      v82 = sub_24F9289E8();
      v105 = *(v82 - 8);
      if (!(*(v105 + 48))(v37, 1, v82))
      {
        (*(v105 + 8))(v37, v82);
      }

      if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_37;
    }

    if (v41 != 2)
    {
      goto LABEL_37;
    }

LABEL_101:

    goto LABEL_37;
  }

  switch(v41)
  {
    case 3:
      goto LABEL_101;
    case 4:
      v84 = sub_24F9289E8();
      (*(*(v84 - 8) + 8))(v37, v84);
      break;
    case 5:
      goto LABEL_101;
  }

LABEL_37:
  v39 = v36 + v18[7];
  v40 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v42 = sub_24F928388();
      (*(*(v42 - 8) + 8))(v39, v42);
    }
  }

  v43 = (v36 + v18[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

LABEL_52:
  v44 = v17 + v27[7];
  if (*(v44 + 56) == 1)
  {
  }

  else if (!*(v44 + 56))
  {

    if (*(v44 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v44 + 16));
    }
  }

  v45 = v17 + v27[8];
  v46 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
  {
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 == 2)
    {
      goto LABEL_142;
    }

    if (v60 != 1)
    {
      if (v60)
      {
        goto LABEL_58;
      }

      v61 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v61 - 8) + 48))(v45, 1, v61))
      {
        goto LABEL_58;
      }

      v62 = swift_getEnumCaseMultiPayload();
      if (v62 > 2)
      {
        if (v62 != 3)
        {
          if (v62 == 4)
          {
            v103 = sub_24F9289E8();
            (*(*(v103 - 8) + 8))(v45, v103);
            goto LABEL_58;
          }

          if (v62 != 5)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_142;
      }

      if (v62)
      {
        if (v62 == 1)
        {
          v101 = sub_24F9289E8();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v45, 1, v101))
          {
            (*(v102 + 8))(v45, v101);
          }

          if (!*(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_58;
          }
        }

        else if (v62 != 2)
        {
          goto LABEL_58;
        }

LABEL_142:

        goto LABEL_58;
      }

      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_161:
      v97 = v45 + v91;
      v98 = type metadata accessor for JSColor(0);
      if (!(*(*(v98 - 8) + 48))(v97, 1, v98))
      {
        v99 = sub_24F928388();
        (*(*(v99 - 8) + 8))(v97, v99);
      }

      goto LABEL_58;
    }

    v63 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v64 = *(*(v63 - 8) + 48);
    if (v64(v45, 1, v63))
    {
LABEL_92:
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v66 = v45 + *(v65 + 48);
      if (!v64(v66, 1, v63))
      {
        v67 = swift_getEnumCaseMultiPayload();
        if (v67 <= 2)
        {
          switch(v67)
          {
            case 0:

              v85 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v86 = type metadata accessor for JSColor(0);
              if (!(*(*(v86 - 8) + 48))(v85, 1, v86))
              {
                v87 = sub_24F928388();
                (*(*(v87 - 8) + 8))(v85, v87);
              }

              goto LABEL_160;
            case 1:
              v92 = sub_24F9289E8();
              v93 = *(v92 - 8);
              if (!(*(v93 + 48))(v66, 1, v92))
              {
                (*(v93 + 8))(v66, v92);
              }

              if (!*(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_160;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_160;
          }

LABEL_154:

          goto LABEL_160;
        }

        switch(v67)
        {
          case 3:
            goto LABEL_154;
          case 4:
            v96 = sub_24F9289E8();
            (*(*(v96 - 8) + 8))(v66, v96);
            break;
          case 5:
            goto LABEL_154;
        }
      }

LABEL_160:
      v91 = *(v65 + 80);
      goto LABEL_161;
    }

    v68 = swift_getEnumCaseMultiPayload();
    if (v68 > 2)
    {
      if (v68 != 3)
      {
        if (v68 == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v45, v100);
          goto LABEL_92;
        }

        if (v68 != 5)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if (!v68)
      {

        v88 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v89 = type metadata accessor for JSColor(0);
        if (!(*(*(v89 - 8) + 48))(v88, 1, v89))
        {
          v90 = sub_24F928388();
          (*(*(v90 - 8) + 8))(v88, v90);
        }

        goto LABEL_92;
      }

      if (v68 == 1)
      {
        v94 = sub_24F9289E8();
        v95 = *(v94 - 8);
        if (!(*(v95 + 48))(v45, 1, v94))
        {
          (*(v95 + 8))(v45, v94);
        }

        if (*(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_92;
      }

      if (v68 != 2)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_92;
  }

LABEL_58:
  v47 = (v11 + v106[13]);
  if (v47[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  v48 = (v11 + v106[14]);
  if (v48[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v49 = (v11 + v106[16]);
  if (v49[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  if (*(v11 + v10[12]))
  {
  }

  if (*(v11 + v10[13]))
  {
  }

  sub_24E62A5EC(*(v11 + v10[14]), *(v11 + v10[14] + 8));
  v50 = v11 + v10[15];
  sub_24E669FC4(*v50, *(v50 + 8), *(v50 + 16), *(v50 + 24), *(v50 + 32));
  sub_24E62A5EC(*(v11 + v10[16]), *(v11 + v10[16] + 8));
  v51 = v10[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_24F923E98();
    (*(*(v52 - 8) + 8))(v11 + v51, v52);
  }

  else
  {
  }

  v53 = v10[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = sub_24F925218();
    v55 = *(v54 - 8);
    if (!(*(v55 + 48))(v11 + v53, 1, v54))
    {
      (*(v55 + 8))(v11 + v53, v54);
    }
  }

  else
  {
  }

  v56 = v10[19];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = sub_24F925218();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v11 + v56, 1, v57))
    {
      (*(v58 + 8))(v11 + v56, v57);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v11 + v10[20]), *(v11 + v10[20] + 8));
  sub_24E62A5EC(*(v11 + v10[21]), *(v11 + v10[21] + 8));

  return swift_deallocObject();
}

uint64_t sub_24F0A0FD8(uint64_t a1, __n128 a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(sub_24F9218D8() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for SizedShelfGridView(0, v4, v5, v9) - 8);
  v11 = v2 + ((v8 + *(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_24F099D54(a1, v2 + v7, v2 + v8, v11, v4, v5);
}

uint64_t sub_24F0A1154(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ShelfHeaderView(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  v6 = MEMORY[0x277CDFC88];
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  sub_24F924E38();
  sub_24F92C4A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238798, &qword_24F9C5160);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A0, &qword_24F9C5168);
  swift_getTupleTypeMetadata3();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927108();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A48, &unk_24F958F00);
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A58, &unk_24F940DA0);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A68, &unk_24F9C5170);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A78, &unk_24F940DB0);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A88, &unk_24F9C5180);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8, &qword_24F9CFD50);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v4 = MEMORY[0x277CE0868];
  sub_24E602068(&qword_27F215A40, &qword_27F215A48, &unk_24F958F00, MEMORY[0x277CE0868]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A50, &qword_27F215A58, &unk_24F940DA0, v4);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A60, &qword_27F215A68, &unk_24F9C5170, v4);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A70, &qword_27F215A78, &unk_24F940DB0, v4);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F215A80, &qword_27F215A88, &unk_24F9C5180, v4);
  swift_getWitnessTable();
  sub_24F09B638();
  sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, v6);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0, &qword_24F9C5190);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8, &qword_24F9C5198);
  sub_24F924038();
  sub_24F09B68C();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2387D8, &qword_27F2387C0, &qword_24F9C5190, MEMORY[0x277CE07F0]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2387E0, &qword_27F2387C8, &qword_24F9C5198, v6);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t InAppPurchaseSearchResult.__allocating_init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  v26 = *a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_24E60169C(a1, v33, &qword_27F235830, &qword_24F93B8C0);
  v15 = *(a2 + 264);
  if (v15)
  {
    v16 = type metadata accessor for Action(0);
    v17 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v13, &qword_27F213E68, &unk_24F93BC80);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v33, &v30, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *(v14 + 24) = v30;
    *(v14 + 40) = v18;
    *(v14 + 56) = v32;
  }

  else
  {

    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v20 = v8;
    v22 = v21;
    (*(v20 + 8))(v10, v7);
    v28 = v19;
    v29 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v30, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v33, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 64) = v15;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = v16;
  *(v14 + 96) = v17;
  sub_24E65E0D4(v13, v14 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v14 + 17) = 0;
  *(v14 + 16) = v26;
  v23 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v27;
  return v14;
}

uint64_t InAppPurchaseSearchResult.init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v9 = sub_24F91F6B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a3;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_24E60169C(a1, v35, &qword_27F235830, &qword_24F93B8C0);
  v16 = *(a2 + 264);
  if (v16)
  {
    v24 = type metadata accessor for Action(0);
    v17 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v24 = 0;
    v17 = 0;
  }

  sub_24E60169C(a2 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v15, &qword_27F213E68, &unk_24F93BC80);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E60169C(v35, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {

    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  v21 = v33;
  *(v5 + 24) = v32;
  *(v5 + 40) = v21;
  *(v5 + 56) = v34;
  *(v5 + 64) = v16;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v24;
  *(v5 + 96) = v17;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v5 + 17) = 0;
  *(v5 + 16) = v25;
  v22 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v5 + v22) = v26;

  return v5;
}

uint64_t InAppPurchaseSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

void InAppPurchaseSearchResult.itemBackground.getter(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t InAppPurchaseSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t InAppPurchaseSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0A2318@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

uint64_t sub_24F0A236C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = v51 - v5;
  v55 = sub_24F91F6B8();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v51 - v11;
  v62 = sub_24F928388();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = v51 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  v63 = a1;
  sub_24F928398();
  v20 = *(v8 + 16);
  v20(v12, a2, v7);
  type metadata accessor for InAppPurchaseLockup(0);
  swift_allocObject();
  v21 = v61;
  v22 = InAppPurchaseLockup.init(deserializing:using:)(v19, v12);
  if (v21)
  {
    (*(v8 + 8))(a2, v7);
    (*(v13 + 8))(v63, v62);
  }

  else
  {
    v23 = v22;
    v51[0] = v20;
    v51[1] = v8 + 16;
    v51[2] = 0;
    v52 = v8;
    v61 = v7;
    v53 = a2;
    v24 = v56;
    sub_24F928398();
    v25 = sub_24F928348();
    if (v26)
    {
      v69 = v25;
      v70 = v26;
    }

    else
    {
      v27 = v60;
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v30 = v29;
      (*(v54 + 8))(v27, v55);
      v69 = v28;
      v70 = v30;
    }

    sub_24F92C7F8();
    v31 = *(v13 + 8);
    v32 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v62;
    v31(v24, v62);
    v34 = v58;
    v35 = v57;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    v58 = v31;
    v56 = v32;
    v31(v35, v33);
    v73 = v74;
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v36 = v53;
    (v51[0])(v34, v53, v61);
    sub_24EE81B98(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_24F929548();
    v37 = v71;
    type metadata accessor for InAppPurchaseSearchResult(0);
    v7 = swift_allocObject();
    *(v7 + OBJC_IVAR____TtC12GameStoreKit25InAppPurchaseSearchResult_lockup) = v23;
    sub_24E60169C(v72, &v69, &qword_27F235830, &qword_24F93B8C0);
    v38 = *(v23 + 264);
    if (v38)
    {
      v57 = type metadata accessor for Action(0);
      v39 = sub_24EE81B98(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v57 = 0;
      v39 = 0;
    }

    v40 = v59;
    v41 = v60;
    sub_24E60169C(v23 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, v59, &qword_27F213E68, &unk_24F93BC80);
    *(v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_24E60169C(&v69, &v66, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v67 + 1))
    {
      v42 = v67;
      *(v7 + 24) = v66;
      *(v7 + 40) = v42;
      *(v7 + 56) = v68;
    }

    else
    {

      sub_24F91F6A8();
      v43 = sub_24F91F668();
      v44 = v41;
      v45 = v43;
      v47 = v46;
      (*(v54 + 8))(v44, v55);
      v64 = v45;
      v65 = v47;
      v36 = v53;
      sub_24F92C7F8();
      sub_24E601704(&v66, &qword_27F235830, &qword_24F93B8C0);
    }

    (*(v52 + 8))(v36, v61);
    (v58)(v63, v62);
    sub_24E601704(&v69, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v72, &qword_27F235830, &qword_24F93B8C0);
    *(v7 + 64) = v38;
    *(v7 + 72) = 0;
    v48 = v57;
    *(v7 + 80) = 0;
    *(v7 + 88) = v48;
    *(v7 + 96) = v39;
    sub_24E65E0D4(v40, v7 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
    *(v7 + 17) = 0;
    *(v7 + 16) = v73;
    v49 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v7 + v49) = v37;
  }

  return v7;
}

uint64_t type metadata accessor for InAppPurchaseSearchResult(uint64_t a1)
{
  result = qword_27F238978;
  if (!qword_27F238978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0A2BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24F0A2C24()
{
  result = qword_27F238A08;
  if (!qword_27F238A08)
  {
    type metadata accessor for GameCenterPlayerProfileAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F238A08);
  }

  return result;
}

uint64_t sub_24F0A2CB4(char a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1 & 1);
  return sub_24F92D0B8();
}

uint64_t sub_24F0A2D2C()
{
  sub_24F92D068();
  sub_24F0A2C8C(v2, *v0);
  return sub_24F92D0B8();
}

void sub_24F0A2D74(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a3;
  v7 = sub_24F928AE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928418();
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v12);
  v13 = sub_24F92AAE8();
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = qword_27F210578;
    v18 = a1;
    if (v17 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v13, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    *(&v33 + 1) = sub_24E69A5C4(0, &qword_27F22FC90, 0x277CF0CD0);
    *&v32 = v18;
    v19 = v18;
    sub_24F9283D8();
    sub_24E857CC8(&v32);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v7);
    sub_24F92A9C8();

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v20 = v14;
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, qword_27F39C3C8);
    (*(v20 + 16))(v16, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    if (a2)
    {
      swift_getErrorValue();
      v22 = v30[2];
      v23 = v31;
      *(&v33 + 1) = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v22, v23);
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_24F9283E8();
    sub_24E857CC8(&v32);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    (*(v20 + 8))(v16, v13);
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      type metadata accessor for GameCenterPlayerProfileActionImplementation.Error(0, a4, v25, v26);
      swift_getWitnessTable();
      v27 = swift_allocError();
      *v28 = 0;
    }

    v29 = a2;
    sub_24F92A9A8();
  }
}

void sub_24F0A3350(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v4 = sub_24F92A9E8();
  if (a1)
  {
    v5 = a1;
    v6 = [v5 session];
    v7 = [v6 persistentIdentifier];

    v8 = sub_24F92B0D8();
    v10 = v9;

    v11 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    aBlock = sub_24F92B0D8();
    v32 = v13;

    sub_24F92C7F8();
    v14 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v15 = sub_24F92B098();
    v16 = [v14 initWithString_];

    if (v16)
    {

      *(inited + 96) = sub_24E69A5C4(0, qword_27F238A10, 0x277CBEBC0);
      *(inited + 72) = v16;
      aBlock = sub_24F92B0D8();
      v32 = v17;
      sub_24F92C7F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_24F93A400;
      strcpy((v18 + 32), "invocationType");
      *(v18 + 47) = -18;
      *(v18 + 48) = 0x656C69666F7270;
      *(v18 + 56) = 0xE700000000000000;
      *(v18 + 64) = 0x656449656E656373;
      *(v18 + 72) = 0xEF7265696669746ELL;
      *(v18 + 80) = v8;
      *(v18 + 88) = v10;
      v19 = sub_24E6086DC(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
      swift_arrayDestroy();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      *(inited + 144) = v19;
      sub_24E608210(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470, &qword_24F93ADD0);
      swift_arrayDestroy();
      v20 = sub_24F92AE28();

      v21 = [objc_opt_self() optionsWithDictionary_];

      if (v11)
      {
        v22 = v11;
        v23 = sub_24F92B098();
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = v4;
        v35 = sub_24F0A3998;
        v36 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_24E6251C8;
        v34 = &block_descriptor_110;
        v25 = _Block_copy(&aBlock);

        [v22 openApplication:v23 withOptions:v21 completion:v25];

        _Block_release(v25);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v26 = sub_24F92AAE8();
    __swift_project_value_buffer(v26, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    type metadata accessor for GameCenterPlayerProfileActionImplementation.Error(0, a2, v27, v28);
    swift_getWitnessTable();
    v29 = swift_allocError();
    *v30 = 1;
    sub_24F92A9A8();
  }
}

uint64_t sub_24F0A3960()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

GameStoreKit::ArcadeSeeAllGamesPage::DisplayStyle_optional __swiftcall ArcadeSeeAllGamesPage.DisplayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ArcadeSeeAllGamesPage.DisplayStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x746361706D6F63;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24F0A3A78(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746361706D6F63;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x746361706D6F63;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24F0A3B00()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0A3B78(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0A3BD4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0A3C48@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F0A3CA8(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x746361706D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v89 = a4;
  v90 = a8;
  LODWORD(v84) = a7;
  v82 = a5;
  v76 = a3;
  v75 = a2;
  v85 = a15;
  v78 = a10;
  v79 = a9;
  v83 = a13;
  v81 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v18 - 8);
  v74 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v88 = &v74 - v21;
  MEMORY[0x28223BE20](v22);
  v87 = &v74 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v86 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v74 - v31;
  v33 = swift_allocObject();
  v34 = *(a11 + 16);
  v35 = *(a11 + 24);
  v36 = v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v36 = *a11;
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v81;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v83;
  v83 = a6;
  sub_24E60169C(a6, v92, &qword_27F2129B0, &unk_24F945320);
  v77 = v28;
  v37 = *(v28 + 16);
  v81 = a14;
  (v37)(v32, a14, v27);
  v80 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0, &unk_24F975980);
  v38 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v39 = sub_24EEF0A68(a1);
  v41 = v40;

  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v39;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v41;
  v42 = (v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v43 = v76;
  *v42 = v75;
  v42[1] = v43;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v89;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v82;
  sub_24E60169C(v92, v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v84;
  swift_beginAccess();
  *(v33 + v38) = v90;
  v45 = v85;
  v44 = v86;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v82 = v32;
  v46 = v44;
  v37();
  v84 = v26;
  v47 = v87;
  sub_24E60169C(v26, v87, &qword_27F2218B0, &unk_24F975980);
  *(v33 + 16) = 0;
  (v37)(v33 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v46, v27);
  v48 = v47;
  *(v33 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v45;
  v49 = v88;
  sub_24E60169C(v47, v88, &qword_27F2218B0, &unk_24F975980);
  v50 = sub_24F9285B8();
  v76 = *(v50 - 8);
  v51 = *(v76 + 48);
  if (v51(v49, 1, v50) == 1)
  {

    sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
    v52 = *(v77 + 8);
    v52(v81, v27);
    sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v48, &qword_27F2218B0, &unk_24F975980);
    v52(v46, v27);
    sub_24E601704(v84, &qword_27F2218B0, &unk_24F975980);
    v52(v82, v27);
    sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
    v53 = v49;
    v54 = &qword_27F2218B0;
    v55 = &unk_24F975980;
  }

  else
  {
    v56 = v77;
    v57 = qword_27F2105F0;

    if (v57 != -1)
    {
      swift_once();
    }

    v75 = v27;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v58, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v59 = v91;
    v60 = v56;
    v61 = v76;
    if (v91)
    {
    }

    v62 = *(v61 + 8);
    v62(v88, v50);
    v63 = v84;
    v64 = v74;
    if (v59)
    {
      v65 = v87;
      sub_24E60169C(v87, v74, &qword_27F2218B0, &unk_24F975980);
      if (v51(v64, 1, v50) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
        v71 = *(v60 + 8);
        v72 = v63;
        v73 = v75;
        v71(v81, v75);
        sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v65, &qword_27F2218B0, &unk_24F975980);
        v71(v86, v73);
        sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
        v71(v82, v73);
        sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
        v62(v74, v50);
        return v33;
      }

      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v66 = *(v60 + 8);
      v67 = v75;
      v66(v81, v75);
      sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v65, &qword_27F2218B0, &unk_24F975980);
      v66(v86, v67);
      sub_24E601704(v63, &qword_27F2218B0, &unk_24F975980);
      v66(v82, v67);
      sub_24E601704(v92, &qword_27F2129B0, &unk_24F945320);
      v53 = v74;
      v54 = &qword_27F2218B0;
      v55 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v68 = *(v60 + 8);
      v69 = v75;
      v68(v81, v75);
      sub_24E601704(v83, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v87, &qword_27F2218B0, &unk_24F975980);
      v68(v86, v69);
      sub_24E601704(v63, &qword_27F2218B0, &unk_24F975980);
      v68(v82, v69);
      v53 = v92;
      v54 = &qword_27F2129B0;
      v55 = &unk_24F945320;
    }
  }

  sub_24E601704(v53, v54, v55);
  return v33;
}

uint64_t ArcadeSeeAllGamesPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:facets:selectedFacetOptions:pageSegments:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v84 = a8;
  LODWORD(v82) = a7;
  v80 = a5;
  v87 = a4;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v83 = a15;
  v76 = a10;
  v77 = a9;
  v81 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = &v70 - v21;
  MEMORY[0x28223BE20](v22);
  v85 = &v70 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v88 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v70 - v31;
  v33 = *(a11 + 16);
  v34 = *(a11 + 24);
  v35 = v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *v35 = *a11;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = a12;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v81;
  v81 = a6;
  sub_24E60169C(a6, v90, &qword_27F2129B0, &unk_24F945320);
  v75 = v28;
  v36 = *(v28 + 16);
  v79 = a14;
  v36(v32, a14, v27);
  v78 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0, &unk_24F975980);
  v37 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v38 = sub_24EEF0A68(v72);
  v40 = v39;

  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v38;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v40;
  v41 = (v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v42 = v74;
  *v41 = v73;
  v41[1] = v42;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v87;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v80;
  sub_24E60169C(v90, v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v82;
  swift_beginAccess();
  *(v16 + v37) = v84;

  *(v16 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v43 = v88;
  v80 = v32;
  v36(v88, v32, v27);
  v82 = v26;
  v44 = v85;
  sub_24E60169C(v82, v85, &qword_27F2218B0, &unk_24F975980);
  *(v16 + 16) = 0;
  v45 = v27;
  v36((v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v43, v27);
  v74 = v16;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v83;
  v46 = v86;
  sub_24E60169C(v44, v86, &qword_27F2218B0, &unk_24F975980);
  v47 = sub_24F9285B8();
  v73 = *(v47 - 8);
  v48 = *(v73 + 48);
  v49 = v46;
  v50 = v47;
  v51 = v49;
  if (v48() == 1)
  {

    sub_24E601704(v78, &qword_27F2218B0, &unk_24F975980);
    v52 = *(v75 + 8);
    v52(v79, v45);
    sub_24E601704(v81, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v44, &qword_27F2218B0, &unk_24F975980);
    v52(v88, v45);
    sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
    v52(v80, v45);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    v53 = v51;
    v54 = &qword_27F2218B0;
    v55 = &unk_24F975980;
  }

  else
  {
    v56 = v75;
    v57 = v45;
    v58 = qword_27F2105F0;

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v59, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v60 = v89;
    v61 = v56;
    v62 = v73;
    if (v89)
    {
    }

    v63 = *(v62 + 8);
    v63(v86, v50);
    v64 = v85;
    if (v60)
    {
      v65 = v71;
      sub_24E60169C(v85, v71, &qword_27F2218B0, &unk_24F975980);
      if ((v48)(v65, 1, v50) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v78, &qword_27F2218B0, &unk_24F975980);
        v69 = *(v61 + 8);
        v69(v79, v57);
        sub_24E601704(v81, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
        v69(v88, v57);
        sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
        v69(v80, v57);
        sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
        v63(v71, v50);
        return v74;
      }

      sub_24E601704(v78, &qword_27F2218B0, &unk_24F975980);
      v66 = *(v61 + 8);
      v66(v79, v57);
      sub_24E601704(v81, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      v66(v88, v57);
      sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
      v66(v80, v57);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      v53 = v65;
      v54 = &qword_27F2218B0;
      v55 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v78, &qword_27F2218B0, &unk_24F975980);
      v67 = *(v61 + 8);
      v67(v79, v57);
      sub_24E601704(v81, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      v67(v88, v57);
      sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
      v67(v80, v57);
      v53 = v90;
      v54 = &qword_27F2129B0;
      v55 = &unk_24F945320;
    }
  }

  sub_24E601704(v53, v54, v55);
  return v74;
}

uint64_t ArcadeSeeAllGamesPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t))
{
  v94 = a8;
  LODWORD(v87) = a7;
  v84 = a5;
  v95 = a4;
  v83 = a3;
  v82 = a2;
  v81 = a1;
  v99 = a13;
  v96 = a12;
  v88 = a10;
  v89 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v85 = &v79 - v17;
  MEMORY[0x28223BE20](v18);
  v97 = &v79 - v19;
  MEMORY[0x28223BE20](v20);
  v98 = &v79 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  v25 = sub_24F928818();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v100 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  v101 = &v79 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  v91 = a6;
  sub_24E60169C(a6, v104, &qword_27F2129B0, &unk_24F945320);
  v34 = MEMORY[0x277D84F90];
  v35 = sub_24E609724(MEMORY[0x277D84F90]);
  v86 = v26;
  v36 = *(v26 + 16);
  v90 = a11;
  v36(v33, a11, v25);
  sub_24E60169C(v99, v24, &qword_27F2218B0, &unk_24F975980);
  type metadata accessor for ArcadeSeeAllGamesPage(0);
  v37 = swift_allocObject();
  v38 = v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_facets;
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = 0;
  *(v38 + 24) = 0;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_selectedFacetOptions) = v35;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit21ArcadeSeeAllGamesPage_pageSegments) = v34;
  sub_24E60169C(v104, v103, &qword_27F2129B0, &unk_24F945320);
  v92 = v33;
  v36(v30, v33, v25);
  v93 = v24;
  v39 = v98;
  sub_24E60169C(v24, v98, &qword_27F2218B0, &unk_24F975980);
  v40 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber) = 0;
  v41 = sub_24EEF0A68(v81);
  v43 = v42;

  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering) = v41;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping) = v43;
  v44 = v95;
  v45 = v25;
  v46 = (v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_title);
  v47 = v83;
  *v46 = v82;
  v46[1] = v47;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_shareAction) = v44;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_presentationOptions) = v84;
  sub_24E60169C(v103, v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete) = v87;
  swift_beginAccess();
  *(v37 + v40) = v94;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_loadCompletedAction) = 0;
  v48 = v100;
  v36(v100, v101, v25);
  v49 = v97;
  sub_24E60169C(v39, v97, &qword_27F2218B0, &unk_24F975980);
  *(v37 + 16) = 0;
  v87 = v45;
  v36((v37 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v48, v45);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v96;
  v50 = v85;
  sub_24E60169C(v49, v85, &qword_27F2218B0, &unk_24F975980);
  v51 = sub_24F9285B8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v51;
  if ((v53)(v50, 1) == 1)
  {

    sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
    v55 = *(v86 + 8);
    v56 = v87;
    v55(v90, v87);
    sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v49, &qword_27F2218B0, &unk_24F975980);
    v55(v100, v56);
    sub_24E601704(v39, &qword_27F2218B0, &unk_24F975980);
    v55(v101, v56);
    sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
    v55(v92, v56);
    sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
    v57 = v50;
    v58 = &qword_27F2218B0;
    v59 = &unk_24F975980;
  }

  else
  {
    v84 = v52;
    v60 = v50;
    v61 = v86;
    v62 = qword_27F2105F0;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v63, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v64 = v102;
    v65 = v61;
    v66 = v54;
    if (v102)
    {
    }

    v67 = *(v84 + 8);
    v84 += 8;
    v67(v60, v66);
    v68 = v97;
    if (v64)
    {
      v69 = v80;
      sub_24E60169C(v97, v80, &qword_27F2218B0, &unk_24F975980);
      if (v53(v69, 1, v66) != 1)
      {
        sub_24ECDF110();

        sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
        v99 = v67;
        v75 = v65;
        v76 = v68;
        v77 = v87;
        v78 = *(v75 + 8);
        v78(v90, v87);
        sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
        v78(v100, v77);
        sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
        v78(v101, v77);
        sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
        sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
        v78(v92, v77);
        sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
        v99(v80, v66);
        return v37;
      }

      sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
      v70 = *(v65 + 8);
      v71 = v87;
      v70(v90, v87);
      sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v68, &qword_27F2218B0, &unk_24F975980);
      v70(v100, v71);
      sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
      v70(v101, v71);
      sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
      v70(v92, v71);
      sub_24E601704(v104, &qword_27F2129B0, &unk_24F945320);
      v57 = v69;
      v58 = &qword_27F2218B0;
      v59 = &unk_24F975980;
    }

    else
    {

      sub_24E601704(v99, &qword_27F2218B0, &unk_24F975980);
      v72 = *(v65 + 8);
      v73 = v87;
      v72(v90, v87);
      sub_24E601704(v91, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v68, &qword_27F2218B0, &unk_24F975980);
      v72(v100, v73);
      sub_24E601704(v98, &qword_27F2218B0, &unk_24F975980);
      v72(v101, v73);
      sub_24E601704(v103, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v93, &qword_27F2218B0, &unk_24F975980);
      v72(v92, v73);
      v57 = v104;
      v58 = &qword_27F2129B0;
      v59 = &unk_24F945320;
    }
  }

  sub_24E601704(v57, v58, v59);
  return v37;
}