uint64_t sub_1D89E5200()
{
  v20 = v0;
  (*(v0 + 576))(*(v0 + 504), *(v0 + 568), *(v0 + 488));

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v6 = *(v0 + 488);
  if (v3)
  {
    v18 = *(v0 + 240);
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v7 = 136315394;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v8 = sub_1D8B16B50();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_1D89AC714(v8, v10, &v19);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v18 + qword_1ECA66BE0);
    _os_log_impl(&dword_1D8783000, v1, v2, "Left queue after waiting for identifier %s. lastDispatchTime: %f", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1DA721330](v17, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  *(v0 + 632) = v11;
  *(v0 + 640) = *(*(v0 + 240) + 112);
  v13 = swift_task_alloc();
  *(v0 + 648) = v13;
  *v13 = v0;
  v13[1] = sub_1D89E3130;
  v14 = *(v0 + 312);
  v15 = *(v0 + 232);

  return sub_1D8A82780(v14, v15, v0 + 152);
}

uint64_t sub_1D89E5474()
{
  (*(v0[62] + 8))(v0[71], v0[61]);
  v4 = v0[93];
  v3 = v0[31];

  *v3 = v4;
  v1 = v0[1];

  return v1();
}

void sub_1D89E5684(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08, &unk_1D8B2D2F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v59 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67128, &qword_1D8B320A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v59 - v10;
  v71 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v12 = *(v71 - 8);
  v13 = MEMORY[0x1EEE9AC00](v71);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v61 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67130, &qword_1D8B320B0);
  v19 = MEMORY[0x1EEE9AC00](v75);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v59 - v21;
  v63 = v1;
  v22 = *v1;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v74 = v12;
  v67 = (v12 + 48);
  v68 = (v12 + 56);

  v28 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v69 = v27;
  v70 = v22 + 64;
  v72 = v11;
  v73 = v5;
  while (1)
  {
    v29 = v28;
    if (!v26)
    {
      break;
    }

    v30 = v8;
LABEL_10:
    v31 = __clz(__rbit64(v26)) | (v28 << 6);
    v32 = *(v22 + 48);
    v66 = *(v74 + 72);
    v33 = v76;
    sub_1D8A01488(v32 + v66 * v31, v76, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v34 = *(v22 + 56) + *(v77 + 72) * v31;
    v35 = *(v75 + 48);
    sub_1D87A0E38(v34, v33 + v35, &qword_1ECA65B78, &unk_1D8B2D550);
    v8 = v30;
    sub_1D87A0E38(v33 + v35, v30, &qword_1ECA65B78, &unk_1D8B2D550);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67120, &qword_1D8B320A0) + 48));
      v37 = v72;
      v5 = v73;
      if (v36 >= a1)
      {
        v40 = v71;
        (*v68)(v72, 1, 1, v71);
      }

      else
      {
        v38 = v64;
        sub_1D87A0E38(v76, v64, &qword_1ECA67130, &qword_1D8B320B0);
        v39 = *(v75 + 48);
        sub_1D8A01550(v38, v37, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v40 = v71;
        (*v68)(v37, 0, 1, v71);
        sub_1D87A14E4(v38 + v39, &qword_1ECA65B78, &unk_1D8B2D550);
      }

      sub_1D87A14E4(v8, &qword_1ECA67110, &unk_1D8B32060);
    }

    else
    {
      v41 = v71;
      v37 = v72;
      (*v68)(v72, 1, 1, v71);
      v40 = v41;
      sub_1D87A14E4(v8, &qword_1ECA65B78, &unk_1D8B2D550);
      v5 = v73;
    }

    v27 = v69;
    v23 = v70;
    v26 &= v26 - 1;
    sub_1D87A14E4(v76, &qword_1ECA67130, &qword_1D8B320B0);
    if ((*v67)(v37, 1, v40) == 1)
    {
      sub_1D87A14E4(v37, &qword_1ECA67128, &qword_1D8B320A8);
    }

    else
    {
      v60 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key;
      v42 = v61;
      sub_1D8A01550(v37, v61, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D8A01550(v42, v62, v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_1D87C85DC(0, v65[2] + 1, 1, v65);
      }

      v44 = v65[2];
      v43 = v65[3];
      v45 = (v44 + 1);
      if (v44 >= v43 >> 1)
      {
        v60 = (v44 + 1);
        v47 = sub_1D87C85DC((v43 > 1), v44 + 1, 1, v65);
        v45 = v60;
        v65 = v47;
      }

      v46 = v65;
      v65[2] = v45;
      sub_1D8A01550(v62, v46 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + v44 * v66, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    }
  }

  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v28);
    ++v29;
    if (v26)
    {
      v30 = v8;
      goto LABEL_10;
    }
  }

  v48 = v65[2];
  if (v48)
  {
    v49 = v65 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v50 = (v77 + 56);
    v51 = *(v74 + 72);
    v52 = v63;
    do
    {
      sub_1D8A01488(v49, v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      v54 = sub_1D87F0134(v18);
      if (v55)
      {
        v56 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = *v52;
        v79 = *v52;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8968E84();
          v58 = v79;
        }

        sub_1D8A014F0(*(v58 + 48) + v56 * v51, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        sub_1D881F6FC(*(v58 + 56) + *(v77 + 72) * v56, v5, &qword_1ECA65B78, &unk_1D8B2D550);
        sub_1D8AF219C(v56, v58);
        sub_1D8A014F0(v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v53 = 0;
        *v52 = v58;
      }

      else
      {
        sub_1D8A014F0(v18, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v53 = 1;
      }

      (*v50)(v5, v53, 1, v78);
      sub_1D87A14E4(v5, &qword_1ECA65F08, &unk_1D8B2D2F0);
      v49 += v51;
      --v48;
    }

    while (v48);
  }
}

uint64_t sub_1D89E5E8C(uint64_t a1, double a2)
{
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  *(v3 + 200) = a2;
  v4 = sub_1D8B16880();
  *(v3 + 224) = v4;
  *(v3 + 232) = *(v4 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  *(v3 + 256) = v5;
  *(v3 + 264) = *(v5 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08, &unk_1D8B2D2F0);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  v6 = sub_1D8B13240();
  *(v3 + 376) = v6;
  *(v3 + 384) = *(v6 - 8);
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89E6160, v2, 0);
}

void sub_1D89E6160()
{
  v151 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);
  v5 = *(v0 + 328);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v3 + 16);
  *(v0 + 472) = v8;
  *(v0 + 480) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v6, v2);
  v8(v4, v6, v2);
  v9 = *(v6 + *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 28));
  *(v0 + 488) = v9;
  v146 = v5;
  *(v4 + *(v5 + 20)) = v9;
  v10 = qword_1ECA66BE8;
  *(v0 + 496) = qword_1ECA66BE8;
  swift_beginAccess();
  v11 = *(v7 + v10);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 368);

    v13 = sub_1D87F0134(v12);
    v14 = *(v0 + 320);
    v15 = *(v0 + 256);
    v16 = *(v0 + 264);
    if (v17)
    {
      sub_1D87A0E38(*(v11 + 56) + *(v16 + 72) * v13, *(v0 + 320), &qword_1ECA65B78, &unk_1D8B2D550);
      v18 = v14;
      v19 = *(v16 + 56);
      v19(v18, 0, 1, v15);
    }

    else
    {
      v19 = *(v16 + 56);
      v19(*(v0 + 320), 1, 1, v15);
    }
  }

  else
  {
    v19 = *(*(v0 + 264) + 56);
    v19(*(v0 + 320), 1, 1, *(v0 + 256));
  }

  *(v0 + 504) = v19;
  v20 = *(v0 + 320);
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  sub_1D8A014F0(*(v0 + 368), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v23 = *(v22 + 48);
  *(v0 + 512) = v23;
  *(v0 + 520) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v145 = v23;
  LODWORD(v21) = v23(v20, 1, v21);
  sub_1D87A14E4(v20, &qword_1ECA65F08, &unk_1D8B2D2F0);
  if (v21 != 1)
  {
    v49 = *(v0 + 464);
    v50 = *(v0 + 376);
    v51 = *(v0 + 384);
    *(v0 + 160) = 0;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    (*(v51 + 8))(v49, v50);
LABEL_19:

    v52 = *(v0 + 8);

    v52(0);
    return;
  }

  v24 = *(v0 + 216);
  v25 = CACurrentMediaTime();
  v26 = qword_1ECA66BE0;
  *(v0 + 528) = qword_1ECA66BE0;
  v27 = *(v24 + v26);

  sub_1D89E9EFC(v28);
  v30 = v29;

  if (__OFSUB__(v30, 10))
  {
    __break(1u);
    return;
  }

  v31 = 10;
  if (v30 < 10)
  {
    v31 = v30;
  }

  v32 = v27 + 0.5;
  v33 = v27 + 0.5 + vcvtd_n_f64_s64(v31, 1uLL) + ((v30 - 10) & ~((v30 - 10) >> 63)) * 0.6;
  if (v25 < v32 || v30 != 0)
  {
    v35 = *(v0 + 464);
    v36 = *(v0 + 376);
    if (v33 > v25 + *(v0 + 200))
    {
      v8(*(v0 + 448), v35, v36);
      v37 = sub_1D8B151C0();
      v38 = sub_1D8B161F0();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 448);
      v42 = *(v0 + 376);
      v41 = *(v0 + 384);
      if (v39)
      {
        v43 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v150[0] = v147;
        *v43 = 136315650;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v44 = sub_1D8B16B50();
        v46 = v45;
        v47 = *(v41 + 8);
        v47(v40, v42);
        v48 = sub_1D89AC714(v44, v46, v150);

        *(v43 + 4) = v48;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v25;
        *(v43 + 22) = 2048;
        *(v43 + 24) = v33;
        _os_log_impl(&dword_1D8783000, v37, v38, "Deferring dispatch request %s for rate limiting at %f, dispatch again at %f", v43, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v147);
        MEMORY[0x1DA721330](v147, -1, -1);
        MEMORY[0x1DA721330](v43, -1, -1);
      }

      else
      {

        v47 = *(v41 + 8);
        v47(v40, v42);
      }

      v60 = *(v0 + 464);
      v61 = *(v0 + 376);
      *(v0 + 168) = 0;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v47(v60, v61);
      goto LABEL_19;
    }

    v143 = v19;
    v8(*(v0 + 456), v35, v36);
    v53 = sub_1D8B151C0();
    v139 = sub_1D8B161F0();
    v140 = v53;
    v54 = os_log_type_enabled(v53, v139);
    v55 = *(v0 + 456);
    v56 = *(v0 + 384);
    v141 = *(v0 + 376);
    if (v54)
    {
      buf = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v150[0] = v138;
      *buf = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v57 = sub_1D8B16B50();
      v135 = v58;
      v136 = v57;
      (*(v56 + 8))(v55, v141);
      v59 = sub_1D89AC714(v136, v135, v150);

      *(buf + 4) = v59;
      _os_log_impl(&dword_1D8783000, v140, v139, "Adding dispatch request %s to the dispatch queue.", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v138);
      MEMORY[0x1DA721330](v138, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);
    }

    else
    {

      (*(v56 + 8))(v55, v141);
    }

    v62 = *(v0 + 360);
    v63 = *(v0 + 280);
    v142 = *(v0 + 272);
    v8(v62, *(v0 + 208), *(v0 + 376));
    *(v62 + *(v146 + 20)) = v9;
    *v63 = v33 + 0.199;
    v63[1] = v25;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v63, v142, &qword_1ECA65B78, &unk_1D8B2D550);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150[0] = *(v7 + v10);
    *(v7 + v10) = 0x8000000000000000;
    sub_1D8B05138(v142, v62, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v62, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v7 + v10) = v150[0];
    swift_endAccess();
    v19 = v143;
  }

  v65 = *(v0 + 352);
  v8(v65, *(v0 + 208), *(v0 + 376));
  *(v65 + *(v146 + 20)) = v9;
  v66 = *(v7 + v10);
  if (*(v66 + 16))
  {
    v144 = v19;
    v67 = *(v0 + 352);

    v68 = sub_1D87F0134(v67);
    v69 = *(v0 + 312);
    v70 = *(v0 + 256);
    if (v71)
    {
      sub_1D87A0E38(*(v66 + 56) + *(*(v0 + 264) + 72) * v68, *(v0 + 312), &qword_1ECA65B78, &unk_1D8B2D550);
      v72 = v69;
      v73 = 0;
    }

    else
    {
      v72 = *(v0 + 312);
      v73 = 1;
    }

    v19 = v144;
    v144(v72, v73, 1, v70);
  }

  else
  {
    v19(*(v0 + 312), 1, 1, *(v0 + 256));
  }

  v74 = *(v0 + 312);
  v75 = *(v0 + 256);
  sub_1D8A014F0(*(v0 + 352), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  LODWORD(v75) = v145(v74, 1, v75);
  sub_1D87A14E4(v74, &qword_1ECA65F08, &unk_1D8B2D2F0);
  if (v75 == 1)
  {
    v8(*(v0 + 440), *(v0 + 464), *(v0 + 376));
    v76 = sub_1D8B151C0();
    v77 = sub_1D8B161F0();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 440);
    v80 = *(v0 + 376);
    v81 = *(v0 + 384);
    if (v78)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v150[0] = v83;
      *v82 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v84 = sub_1D8B16B50();
      v86 = v85;
      v148 = *(v81 + 8);
      v148(v79, v80);
      v87 = sub_1D89AC714(v84, v86, v150);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_1D8783000, v76, v77, "Dispatch request %s did not enter the queue and went straight to processing.", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x1DA721330](v83, -1, -1);
      MEMORY[0x1DA721330](v82, -1, -1);
    }

    else
    {

      v148 = *(v81 + 8);
      v148(v79, v80);
    }

    v97 = *(v0 + 488);
    v98 = *(v0 + 496);
    v99 = *(v0 + 472);
    v134 = *(v0 + 464);
    v100 = *(v0 + 376);
    v101 = *(v0 + 360);
    v102 = *(v0 + 328);
    v103 = *(v0 + 280);
    v104 = *(v0 + 272);
    v105 = *(v0 + 208);
    v106 = *(v0 + 216);
    *(v106 + *(v0 + 528)) = v25;
    v99(v101, v105, v100);
    *(v101 + *(v102 + 20)) = v97;
    *v103 = v25 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v103, v104, &qword_1ECA65B78, &unk_1D8B2D550);

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v150[0] = *(v106 + v98);
    *(v106 + v98) = 0x8000000000000000;
    sub_1D8B05138(v104, v101, v107);
    sub_1D8A014F0(v101, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v106 + v98) = v150[0];
    swift_endAccess();
    v148(v134, v100);

    v108 = *(v0 + 8);

    v108();
    return;
  }

  v88 = *(v0 + 344);
  v8(v88, *(v0 + 208), *(v0 + 376));
  *(v88 + *(v146 + 20)) = v9;
  v89 = *(v7 + v10);
  if (*(v89 + 16))
  {
    v90 = *(v0 + 344);

    v91 = sub_1D87F0134(v90);
    v92 = *(v0 + 304);
    v93 = *(v0 + 256);
    if (v94)
    {
      sub_1D87A0E38(*(v89 + 56) + *(*(v0 + 264) + 72) * v91, *(v0 + 304), &qword_1ECA65B78, &unk_1D8B2D550);
      v95 = v92;
      v96 = 0;
    }

    else
    {
      v95 = *(v0 + 304);
      v96 = 1;
    }

    v19(v95, v96, 1, v93);
  }

  else
  {
    v19(*(v0 + 304), 1, 1, *(v0 + 256));
  }

  v109 = *(v0 + 304);
  v110 = *(v0 + 256);
  sub_1D8A014F0(*(v0 + 344), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  v111 = v145(v109, 1, v110);
  v112 = *(v0 + 304);
  if (v111 == 1)
  {
    v113 = &qword_1ECA65F08;
    v114 = &unk_1D8B2D2F0;
LABEL_51:
    sub_1D87A14E4(v112, v113, v114);
    sub_1D8B168C0();
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v113 = &qword_1ECA65B78;
    v114 = &unk_1D8B2D550;
    goto LABEL_51;
  }

  v115 = *(v0 + 464);
  v116 = *(v0 + 432);
  v117 = *(v0 + 376);
  *(v0 + 536) = qword_1ECA66BD0;
  v8(v116, v115, v117);
  v118 = sub_1D8B151C0();
  v119 = sub_1D8B161F0();
  v120 = os_log_type_enabled(v118, v119);
  v121 = *(v0 + 432);
  v123 = *(v0 + 376);
  v122 = *(v0 + 384);
  if (v120)
  {
    v124 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v150[0] = v149;
    *v124 = 136315394;
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v125 = sub_1D8B16B50();
    v127 = v126;
    v128 = *(v122 + 8);
    v128(v121, v123);
    v129 = sub_1D89AC714(v125, v127, v150);

    *(v124 + 4) = v129;
    *(v124 + 12) = 2048;
    *(v124 + 14) = v33 - v25;
    _os_log_impl(&dword_1D8783000, v118, v119, "Dispatch request %s Entered the queue to wait for %f seconds.", v124, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v149);
    MEMORY[0x1DA721330](v149, -1, -1);
    MEMORY[0x1DA721330](v124, -1, -1);
  }

  else
  {

    v128 = *(v122 + 8);
    v128(v121, v123);
  }

  *(v0 + 544) = v128;
  v130 = sub_1D8B16E30();
  v132 = v131;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  v133 = swift_task_alloc();
  *(v0 + 552) = v133;
  *v133 = v0;
  v133[1] = sub_1D89E737C;

  sub_1D8A0077C(v130, v132, 0, 0, 1);
}

uint64_t sub_1D89E737C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[31];
  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  if (v0)
  {

    v8 = *(v5 + 8);
    v3[71] = v8;
    v8(v4, v6);
    v9 = sub_1D89E8618;
  }

  else
  {
    v10 = *(v5 + 8);
    v3[70] = v10;
    v10(v4, v6);
    v9 = sub_1D89E7534;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, 0);
}

uint64_t sub_1D89E7534()
{
  v118 = v0;
  *(v0 + 576) = *(v0 + 560);
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 216) + *(v0 + 496));

  sub_1D89EA0E4(v1, v2);
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    (*(v0 + 472))(*(v0 + 424), *(v0 + 464), *(v0 + 376));
    v7 = sub_1D8B151C0();
    v8 = sub_1D8B16210();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 544);
    v11 = *(v0 + 424);
    v12 = *(v0 + 376);
    if (v9)
    {
LABEL_3:
      v115 = *(v0 + 544);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v117[0] = v14;
      *v13 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = sub_1D8B16B50();
      v17 = v16;
      v115(v11, v12);
      v18 = sub_1D89AC714(v15, v17, v117);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D8783000, v7, v8, "Dispatch request %s unexpectedly left the queue. This shouldn't happen", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA721330](v14, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);

LABEL_9:
      v117[0] = 0;
      v117[1] = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B46ED0);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v38 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v38);

      MEMORY[0x1DA71EFA0](0xD000000000000033, 0x80000001D8B46EF0);
      return sub_1D8B168C0();
    }

LABEL_8:

    v10(v11, v12);
    goto LABEL_9;
  }

  if (v4)
  {
    v116 = (v0 + 176);
    v19 = *(v0 + 488);
    v20 = *(v0 + 472);
    v109 = *(v0 + 416);
    v111 = *(v0 + 464);
    v21 = *(v0 + 376);
    v22 = *(v0 + 360);
    v23 = *(v0 + 328);
    v24 = *(v0 + 296);
    v20(v22, *(v0 + 208), v21);
    *(v22 + *(v23 + 20)) = v19;
    swift_beginAccess();

    sub_1D8AFD470();
    sub_1D8A014F0(v22, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v24, &qword_1ECA65F08, &unk_1D8B2D2F0);
    swift_endAccess();
    v20(v109, v111, v21);
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16210();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 544);
    v29 = *(v0 + 416);
    v30 = *(v0 + 376);
    if (v27)
    {
      v113 = *(v0 + 544);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v117[0] = v32;
      *v31 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v33 = sub_1D8B16B50();
      v35 = v34;
      v113(v29, v30);
      v36 = sub_1D89AC714(v33, v35, v117);

      *(v31 + 4) = v36;
      v37 = "Dispatch request %s did not move to the front of the queue.";
LABEL_7:
      _os_log_impl(&dword_1D8783000, v25, v26, v37, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1DA721330](v32, -1, -1);
      MEMORY[0x1DA721330](v31, -1, -1);

LABEL_15:
      v55 = *(v0 + 544);
      v56 = *(v0 + 464);
      v57 = *(v0 + 376);
      *v116 = 1;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v55(v56, v57);

      v58 = *(v0 + 8);

      return v58(1);
    }

    goto LABEL_14;
  }

  v40 = *(v0 + 528);
  v41 = *(v0 + 216);
  v42 = CACurrentMediaTime();
  v43 = *(v41 + v40) + 0.5;
  if (v42 >= v43)
  {
    v108 = *(v0 + 544);
    v59 = *(v0 + 488);
    v60 = *(v0 + 496);
    v61 = *(v0 + 472);
    v107 = *(v0 + 464);
    v62 = *(v0 + 376);
    v63 = *(v0 + 360);
    v64 = *(v0 + 328);
    v65 = *(v0 + 280);
    v66 = *(v0 + 272);
    v67 = *(v0 + 208);
    v68 = *(v0 + 216);
    *(v68 + *(v0 + 528)) = v42;
    v69 = v42;
    v61(v63, v67, v62);
    *(v63 + *(v64 + 20)) = v59;
    *v65 = v69 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v65, v66, &qword_1ECA65B78, &unk_1D8B2D550);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = *(v68 + v60);
    *(v68 + v60) = 0x8000000000000000;
    sub_1D8B05138(v66, v63, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v63, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v68 + v60) = v117[0];
    swift_endAccess();
    v108(v107, v62);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    if (v43 - v42 > 0.2)
    {
      v116 = (v0 + 192);
      v44 = *(v0 + 488);
      v45 = *(v0 + 472);
      v110 = *(v0 + 408);
      v112 = *(v0 + 464);
      v46 = *(v0 + 376);
      v47 = *(v0 + 360);
      v48 = *(v0 + 328);
      v49 = *(v0 + 296);
      v45(v47, *(v0 + 208), v46);
      *(v47 + *(v48 + 20)) = v44;
      swift_beginAccess();

      sub_1D8AFD470();
      sub_1D8A014F0(v47, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v49, &qword_1ECA65F08, &unk_1D8B2D2F0);
      swift_endAccess();
      v45(v110, v112, v46);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      v50 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 544);
      v29 = *(v0 + 408);
      v30 = *(v0 + 376);
      if (v50)
      {
        v114 = *(v0 + 544);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v117[0] = v32;
        *v31 = 136315138;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v51 = sub_1D8B16B50();
        v53 = v52;
        v114(v29, v30);
        v54 = sub_1D89AC714(v51, v53, v117);

        *(v31 + 4) = v54;
        v37 = "Dispatch request %s can't run soon enough after waiting through the queue.";
        goto LABEL_7;
      }

LABEL_14:

      v28(v29, v30);
      goto LABEL_15;
    }

    v73 = *(v0 + 488);
    v72 = *(v0 + 496);
    v75 = *(v0 + 328);
    v74 = *(v0 + 336);
    v76 = *(v0 + 216);
    (*(v0 + 472))(v74, *(v0 + 208), *(v0 + 376));
    *(v74 + *(v75 + 20)) = v73;
    v77 = *(v76 + v72);
    if (*(v77 + 16))
    {
      v78 = *(v0 + 336);

      v79 = sub_1D87F0134(v78);
      v80 = *(v0 + 504);
      v81 = *(v0 + 288);
      v82 = *(v0 + 256);
      if (v83)
      {
        sub_1D87A0E38(*(v77 + 56) + *(*(v0 + 264) + 72) * v79, *(v0 + 288), &qword_1ECA65B78, &unk_1D8B2D550);
        v84 = v81;
        v85 = 0;
      }

      else
      {
        v84 = *(v0 + 288);
        v85 = 1;
      }

      v80(v84, v85, 1, v82);
    }

    else
    {
      (*(v0 + 504))(*(v0 + 288), 1, 1, *(v0 + 256));
    }

    v86 = *(v0 + 512);
    v87 = *(v0 + 288);
    v88 = *(v0 + 256);
    sub_1D8A014F0(*(v0 + 336), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v89 = v86(v87, 1, v88);
    v90 = *(v0 + 288);
    if (v89 == 1)
    {
      v91 = &qword_1ECA65F08;
      v92 = &unk_1D8B2D2F0;
      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v91 = &qword_1ECA65B78;
      v92 = &unk_1D8B2D550;
LABEL_31:
      sub_1D87A14E4(v90, v91, v92);
      (*(v0 + 472))(*(v0 + 392), *(v0 + 464), *(v0 + 376));
      v7 = sub_1D8B151C0();
      v8 = sub_1D8B16210();
      v93 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 544);
      v11 = *(v0 + 392);
      v12 = *(v0 + 376);
      if (v93)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }

    v94 = *(v0 + 488);
    v95 = *(v0 + 496);
    v96 = *(v0 + 360);
    v97 = *(v0 + 328);
    v98 = *(v0 + 272);
    v99 = *(v0 + 280);
    v100 = *(v0 + 216);
    v101 = *(v90 + 8);
    (*(v0 + 472))(v96, *(v0 + 208), *(v0 + 376));
    *(v96 + *(v97 + 20)) = v94;
    *v99 = v43 + 0.199;
    *(v99 + 8) = v101;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v99, v98, &qword_1ECA65B78, &unk_1D8B2D550);

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = *(v100 + v95);
    *(v100 + v95) = 0x8000000000000000;
    sub_1D8B05138(v98, v96, v102);
    sub_1D8A014F0(v96, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v100 + v95) = v117[0];
    swift_endAccess();
    v103 = sub_1D8B16E30();
    v105 = v104;
    _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
    v106 = swift_task_alloc();
    *(v0 + 584) = v106;
    *v106 = v0;
    v106[1] = sub_1D89E96FC;

    return sub_1D8A0077C(v103, v105, 0, 0, 1);
  }
}

uint64_t sub_1D89E8618()
{
  v118 = v0;
  *(v0 + 576) = *(v0 + 568);
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 216) + *(v0 + 496));

  sub_1D89EA0E4(v1, v2);
  v4 = v3;
  v6 = v5;

  if (v6)
  {
    (*(v0 + 472))(*(v0 + 424), *(v0 + 464), *(v0 + 376));
    v7 = sub_1D8B151C0();
    v8 = sub_1D8B16210();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 544);
    v11 = *(v0 + 424);
    v12 = *(v0 + 376);
    if (v9)
    {
LABEL_3:
      v115 = *(v0 + 544);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v117[0] = v14;
      *v13 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v15 = sub_1D8B16B50();
      v17 = v16;
      v115(v11, v12);
      v18 = sub_1D89AC714(v15, v17, v117);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1D8783000, v7, v8, "Dispatch request %s unexpectedly left the queue. This shouldn't happen", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA721330](v14, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);

LABEL_9:
      v117[0] = 0;
      v117[1] = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000011, 0x80000001D8B46ED0);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v38 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v38);

      MEMORY[0x1DA71EFA0](0xD000000000000033, 0x80000001D8B46EF0);
      return sub_1D8B168C0();
    }

LABEL_8:

    v10(v11, v12);
    goto LABEL_9;
  }

  if (v4)
  {
    v116 = (v0 + 176);
    v19 = *(v0 + 488);
    v20 = *(v0 + 472);
    v109 = *(v0 + 416);
    v111 = *(v0 + 464);
    v21 = *(v0 + 376);
    v22 = *(v0 + 360);
    v23 = *(v0 + 328);
    v24 = *(v0 + 296);
    v20(v22, *(v0 + 208), v21);
    *(v22 + *(v23 + 20)) = v19;
    swift_beginAccess();

    sub_1D8AFD470();
    sub_1D8A014F0(v22, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    sub_1D87A14E4(v24, &qword_1ECA65F08, &unk_1D8B2D2F0);
    swift_endAccess();
    v20(v109, v111, v21);
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16210();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 544);
    v29 = *(v0 + 416);
    v30 = *(v0 + 376);
    if (v27)
    {
      v113 = *(v0 + 544);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v117[0] = v32;
      *v31 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v33 = sub_1D8B16B50();
      v35 = v34;
      v113(v29, v30);
      v36 = sub_1D89AC714(v33, v35, v117);

      *(v31 + 4) = v36;
      v37 = "Dispatch request %s did not move to the front of the queue.";
LABEL_7:
      _os_log_impl(&dword_1D8783000, v25, v26, v37, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1DA721330](v32, -1, -1);
      MEMORY[0x1DA721330](v31, -1, -1);

LABEL_15:
      v55 = *(v0 + 544);
      v56 = *(v0 + 464);
      v57 = *(v0 + 376);
      *v116 = 1;
      sub_1D8883C24();
      swift_willThrowTypedImpl();
      v55(v56, v57);

      v58 = *(v0 + 8);

      return v58(1);
    }

    goto LABEL_14;
  }

  v40 = *(v0 + 528);
  v41 = *(v0 + 216);
  v42 = CACurrentMediaTime();
  v43 = *(v41 + v40) + 0.5;
  if (v42 >= v43)
  {
    v108 = *(v0 + 544);
    v59 = *(v0 + 488);
    v60 = *(v0 + 496);
    v61 = *(v0 + 472);
    v107 = *(v0 + 464);
    v62 = *(v0 + 376);
    v63 = *(v0 + 360);
    v64 = *(v0 + 328);
    v65 = *(v0 + 280);
    v66 = *(v0 + 272);
    v67 = *(v0 + 208);
    v68 = *(v0 + 216);
    *(v68 + *(v0 + 528)) = v42;
    v69 = v42;
    v61(v63, v67, v62);
    *(v63 + *(v64 + 20)) = v59;
    *v65 = v69 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v65, v66, &qword_1ECA65B78, &unk_1D8B2D550);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = *(v68 + v60);
    *(v68 + v60) = 0x8000000000000000;
    sub_1D8B05138(v66, v63, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v63, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v68 + v60) = v117[0];
    swift_endAccess();
    v108(v107, v62);

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    if (v43 - v42 > 0.2)
    {
      v116 = (v0 + 192);
      v44 = *(v0 + 488);
      v45 = *(v0 + 472);
      v110 = *(v0 + 408);
      v112 = *(v0 + 464);
      v46 = *(v0 + 376);
      v47 = *(v0 + 360);
      v48 = *(v0 + 328);
      v49 = *(v0 + 296);
      v45(v47, *(v0 + 208), v46);
      *(v47 + *(v48 + 20)) = v44;
      swift_beginAccess();

      sub_1D8AFD470();
      sub_1D8A014F0(v47, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D87A14E4(v49, &qword_1ECA65F08, &unk_1D8B2D2F0);
      swift_endAccess();
      v45(v110, v112, v46);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      v50 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 544);
      v29 = *(v0 + 408);
      v30 = *(v0 + 376);
      if (v50)
      {
        v114 = *(v0 + 544);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v117[0] = v32;
        *v31 = 136315138;
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v51 = sub_1D8B16B50();
        v53 = v52;
        v114(v29, v30);
        v54 = sub_1D89AC714(v51, v53, v117);

        *(v31 + 4) = v54;
        v37 = "Dispatch request %s can't run soon enough after waiting through the queue.";
        goto LABEL_7;
      }

LABEL_14:

      v28(v29, v30);
      goto LABEL_15;
    }

    v73 = *(v0 + 488);
    v72 = *(v0 + 496);
    v75 = *(v0 + 328);
    v74 = *(v0 + 336);
    v76 = *(v0 + 216);
    (*(v0 + 472))(v74, *(v0 + 208), *(v0 + 376));
    *(v74 + *(v75 + 20)) = v73;
    v77 = *(v76 + v72);
    if (*(v77 + 16))
    {
      v78 = *(v0 + 336);

      v79 = sub_1D87F0134(v78);
      v80 = *(v0 + 504);
      v81 = *(v0 + 288);
      v82 = *(v0 + 256);
      if (v83)
      {
        sub_1D87A0E38(*(v77 + 56) + *(*(v0 + 264) + 72) * v79, *(v0 + 288), &qword_1ECA65B78, &unk_1D8B2D550);
        v84 = v81;
        v85 = 0;
      }

      else
      {
        v84 = *(v0 + 288);
        v85 = 1;
      }

      v80(v84, v85, 1, v82);
    }

    else
    {
      (*(v0 + 504))(*(v0 + 288), 1, 1, *(v0 + 256));
    }

    v86 = *(v0 + 512);
    v87 = *(v0 + 288);
    v88 = *(v0 + 256);
    sub_1D8A014F0(*(v0 + 336), type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v89 = v86(v87, 1, v88);
    v90 = *(v0 + 288);
    if (v89 == 1)
    {
      v91 = &qword_1ECA65F08;
      v92 = &unk_1D8B2D2F0;
      goto LABEL_31;
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v91 = &qword_1ECA65B78;
      v92 = &unk_1D8B2D550;
LABEL_31:
      sub_1D87A14E4(v90, v91, v92);
      (*(v0 + 472))(*(v0 + 392), *(v0 + 464), *(v0 + 376));
      v7 = sub_1D8B151C0();
      v8 = sub_1D8B16210();
      v93 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 544);
      v11 = *(v0 + 392);
      v12 = *(v0 + 376);
      if (v93)
      {
        goto LABEL_3;
      }

      goto LABEL_8;
    }

    v94 = *(v0 + 488);
    v95 = *(v0 + 496);
    v96 = *(v0 + 360);
    v97 = *(v0 + 328);
    v98 = *(v0 + 272);
    v99 = *(v0 + 280);
    v100 = *(v0 + 216);
    v101 = *(v90 + 8);
    (*(v0 + 472))(v96, *(v0 + 208), *(v0 + 376));
    *(v96 + *(v97 + 20)) = v94;
    *v99 = v43 + 0.199;
    *(v99 + 8) = v101;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v99, v98, &qword_1ECA65B78, &unk_1D8B2D550);

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = *(v100 + v95);
    *(v100 + v95) = 0x8000000000000000;
    sub_1D8B05138(v98, v96, v102);
    sub_1D8A014F0(v96, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v100 + v95) = v117[0];
    swift_endAccess();
    v103 = sub_1D8B16E30();
    v105 = v104;
    _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
    v106 = swift_task_alloc();
    *(v0 + 584) = v106;
    *v106 = v0;
    v106[1] = sub_1D89E96FC;

    return sub_1D8A0077C(v103, v105, 0, 0, 1);
  }
}

uint64_t sub_1D89E96FC()
{
  v2 = *v1;

  v3 = v2[72];
  v4 = v2[30];
  v5 = v2[28];
  v6 = v2[27];
  if (v0)
  {

    v3(v4, v5);
    v7 = sub_1D8A02874;
  }

  else
  {
    v3(v4, v5);
    v7 = sub_1D89E98C4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D89E98C4()
{
  v38 = v0;
  v1 = v0[66];
  v2 = v0[27];
  v3 = CACurrentMediaTime();
  if (v3 >= *(v2 + v1) + 0.5)
  {
    v35 = v0[68];
    v16 = v0[61];
    v17 = v0[62];
    v18 = v0[59];
    v34 = v0[58];
    v19 = v0[47];
    v20 = v0[45];
    v21 = v0[41];
    v22 = v0[35];
    v23 = v0[34];
    v24 = v0[26];
    v25 = v0[27];
    *(v25 + v0[66]) = v3;
    v26 = v3;
    v18(v20, v24, v19);
    *(v20 + *(v21 + 20)) = v16;
    *v22 = v26 + 0.199;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D881F6FC(v22, v23, &qword_1ECA65B78, &unk_1D8B2D550);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v25 + v17);
    *(v25 + v17) = 0x8000000000000000;
    sub_1D8B05138(v23, v20, isUniquelyReferenced_nonNull_native);
    sub_1D8A014F0(v20, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    *(v25 + v17) = v37;
    swift_endAccess();
    v35(v34, v19);

    v28 = v0[1];

    return v28();
  }

  else
  {
    (v0[59])(v0[50], v0[58], v0[47]);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16210();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[68];
    v8 = v0[50];
    v9 = v0[47];
    if (v6)
    {
      v36 = v0[68];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v37 = v11;
      *v10 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1D8B16B50();
      v14 = v13;
      v36(v8, v9);
      v15 = sub_1D89AC714(v12, v14, &v37);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D8783000, v4, v5, "Dispatch request %s could not run because something cut in line. This shouldn't happen.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA721330](v11, -1, -1);
      MEMORY[0x1DA721330](v10, -1, -1);
    }

    else
    {

      v7(v8, v9);
    }

    v30 = v0[68];
    v31 = v0[58];
    v32 = v0[47];
    v0[23] = 2;
    sub_1D8883C24();
    swift_willThrowTypedImpl();
    v30(v31, v32);

    v33 = v0[1];

    return v33(2);
  }
}

void sub_1D89E9EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  v17[0] = *(v2 - 8);
  v17[1] = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  while (v10)
  {
LABEL_11:
    sub_1D87A0E38(*(a1 + 56) + *(v17[0] + 72) * (__clz(__rbit64(v10)) | (v13 << 6)), v7, &qword_1ECA65B78, &unk_1D8B2D550);
    sub_1D881F6FC(v7, v5, &qword_1ECA65B78, &unk_1D8B2D550);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D87A14E4(v5, &qword_1ECA65B78, &unk_1D8B2D550);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v10 &= v10 - 1;
    v15 = __OFADD__(v12, v14);
    v12 += v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {

      return;
    }

    v10 = *(a1 + 64 + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1D89EA0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F08, &unk_1D8B2D2F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D8B13240();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  *&v17[*(v15 + 28)] = *(a1 + *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 28));
  if (*(a2 + 16))
  {

    v19 = sub_1D87F0134(v17);
    if (v20)
    {
      sub_1D87A0E38(*(a2 + 56) + *(v5 + 72) * v19, v13, &qword_1ECA65B78, &unk_1D8B2D550);
      (*(v5 + 56))(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v13, 1, 1, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_1D8A014F0(v17, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    v21 = &qword_1ECA65F08;
    v22 = &unk_1D8B2D2F0;
LABEL_10:
    sub_1D87A14E4(v13, v21, v22);
    return;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v21 = &qword_1ECA65B78;
    v22 = &unk_1D8B2D550;
    goto LABEL_10;
  }

  v45 = v10;
  v46 = a2;
  v23 = *(v13 + 1);
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;

  v29 = 0;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v30 = v29;
  if (!v27)
  {
    goto LABEL_16;
  }

  do
  {
    v10 = v4;
    v31 = v8;
    v29 = v30;
LABEL_20:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v45;
    sub_1D87A0E38(*(v46 + 56) + *(v5 + 72) * (v32 | (v29 << 6)), v45, &qword_1ECA65B78, &unk_1D8B2D550);
    v34 = v33;
    v8 = v31;
    sub_1D881F6FC(v34, v31, &qword_1ECA65B78, &unk_1D8B2D550);
    v4 = v10;
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = *(v8 + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1D87C84D8(0, *(v44 + 2) + 1, 1, v44);
      }

      v37 = *(v44 + 2);
      v36 = *(v44 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v43 = v37 + 1;
        v40 = sub_1D87C84D8((v36 > 1), v37 + 1, 1, v44);
        v38 = v43;
        v44 = v40;
      }

      v39 = v44;
      *(v44 + 2) = v38;
      *&v39[8 * v37 + 32] = v35;
      goto LABEL_14;
    }

    sub_1D87A14E4(v8, &qword_1ECA65B78, &unk_1D8B2D550);
    v30 = v29;
  }

  while (v27);
  while (1)
  {
LABEL_16:
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);

      __break(1u);
      return;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v30;
    if (v27)
    {
      v10 = v4;
      v31 = v8;
      goto LABEL_20;
    }
  }

  v47 = v44;

  sub_1D8A4AF2C(&v47);

  v41 = *(v47 + 2);
  if (v41)
  {
    for (i = 0; i != v41; ++i)
    {
      if (*&v47[8 * i + 32] == v23)
      {
        break;
      }
    }
  }
}

uint64_t VisualLookupClassifier.Mode.description.getter()
{
  v1 = 0x7265676145;
  if (*v0)
  {
    v1 = 0x4520796B63697453;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E616D6544206E4FLL;
  }
}

VisualIntelligenceCore::VisualLookupClassifier::Mode_optional __swiftcall VisualLookupClassifier.Mode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VisualLookupClassifier.Mode.rawValue.getter()
{
  v1 = 0x7265676165;
  if (*v0)
  {
    v1 = 0x6974537265676165;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x646E616D65446E6FLL;
  }
}

void sub_1D89EA7C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265676165;
  v4 = 0xE800000000000000;
  if (*v1 != 2)
  {
    v4 = 0xEB00000000776152;
  }

  if (*v1)
  {
    v3 = 0x6974537265676165;
    v2 = 0xEB00000000796B63;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x646E616D65446E6FLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1D89EA854()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D89EA924(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D89EA9E0(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D89EAB6C()
{
  v1 = 0x7265676145;
  if (*v0)
  {
    v1 = 0x4520796B63697453;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6E616D6544206E4FLL;
  }
}

double VisualLookupClassifier.Result.searchResults.getter()
{
  type metadata accessor for VisualLookupClassifier.Result(0);

  return result;
}

void VisualLookupClassifier.Result.searchResults.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualLookupClassifier.Result(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_1D89EACBC()
{
  v1 = 0x6372616553746F6ELL;
  v2 = 0x73736563637573;
  if (*v0 != 2)
  {
    v2 = 0x6572756C696166;
  }

  if (*v0)
  {
    v1 = 0x6261686372616573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D89EAD48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A02048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D89EAD70(uint64_t a1)
{
  v2 = sub_1D8A01038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EADAC(uint64_t a1)
{
  v2 = sub_1D8A01038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EADE8(uint64_t a1)
{
  v2 = sub_1D8A0108C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAE24(uint64_t a1)
{
  v2 = sub_1D8A0108C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAE60(uint64_t a1)
{
  v2 = sub_1D8A01188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAE9C(uint64_t a1)
{
  v2 = sub_1D8A01188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAED8(uint64_t a1)
{
  v2 = sub_1D8A01134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAF14(uint64_t a1)
{
  v2 = sub_1D8A01134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D89EAF50(uint64_t a1)
{
  v2 = sub_1D8A010E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EAF8C(uint64_t a1)
{
  v2 = sub_1D8A010E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupClassifier.Result.SearchState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F30, &qword_1D8B315C0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F38, &qword_1D8B315C8);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F40, &qword_1D8B315D0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v29 - v7;
  v8 = sub_1D8B138B0();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F48, &qword_1D8B315D8);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F50, &qword_1D8B315E0);
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A01038();
  sub_1D8B16DD0();
  sub_1D8A01488(v42, v15, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v23 = v35;
      v22 = v36;
      v24 = v31;
      (*(v35 + 32))(v31, v15, v36);
      v45 = 1;
      sub_1D8A01134();
      v25 = v34;
      sub_1D8B16A40();
      sub_1D8A011DC(&qword_1ECA66F78, MEMORY[0x1E69E0360], MEMORY[0x1E69E0368]);
      v26 = v38;
      sub_1D8B16AE0();
      (*(v37 + 8))(v25, v26);
      (*(v23 + 8))(v24, v22);
    }

    else
    {
      v44 = 0;
      sub_1D8A01188();
      sub_1D8B16A40();
      sub_1D8B16A90();

      (*(v29 + 8))(v12, v10);
    }

    return (*(v43 + 8))(v18, v16);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v47 = 3;
    sub_1D8A0108C();
    v20 = v39;
    sub_1D8B16A40();
    v21 = v41;
    sub_1D8B16A90();

    (*(v40 + 8))(v20, v21);
    return (*(v43 + 8))(v18, v16);
  }

  v46 = 2;
  sub_1D8A010E0();
  v28 = v30;
  sub_1D8B16A40();
  (*(v32 + 8))(v28, v33);
  return (*(v43 + 8))(v18, v16);
}

void VisualLookupClassifier.Result.SearchState.hash(into:)(uint64_t a1)
{
  v2 = sub_1D8B138B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A01488(v1, v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = 3;
      goto LABEL_6;
    }

    MEMORY[0x1DA720210](2);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v10 = 0;
LABEL_6:
      MEMORY[0x1DA720210](v10);
      sub_1D8B15A60();

      return;
    }

    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1DA720210](1);
    sub_1D8A011DC(&qword_1ECA66F88, MEMORY[0x1E69E0360], MEMORY[0x1E69E0370]);
    sub_1D8B157A0();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t VisualLookupClassifier.Result.SearchState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F90, &qword_1D8B315E8);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66F98, &qword_1D8B315F0);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v61 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FA0, &qword_1D8B315F8);
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v76 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FA8, &qword_1D8B31600);
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v61 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FB0, &unk_1D8B31608);
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v13 = &v61 - v12;
  v14 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v61 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v61 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v26 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D8A01038();
  v27 = v80;
  sub_1D8B16DB0();
  if (!v27)
  {
    v61 = v23;
    v62 = v17;
    v63 = v20;
    v28 = v74;
    v30 = v76;
    v29 = v77;
    v64 = v25;
    v80 = v14;
    v31 = v78;
    v32 = v75;
    v33 = sub_1D8B16A20();
    v34 = (2 * *(v33 + 16)) | 1;
    v82 = v33;
    v83 = v33 + 32;
    v84 = 0;
    v85 = v34;
    v35 = sub_1D881F7BC();
    if (v35 == 4 || v84 != v85 >> 1)
    {
      v37 = sub_1D8B16770();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v39 = v80;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v79 + 8))(v13, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v35 > 1u)
      {
        if (v35 == 2)
        {
          v86 = 2;
          sub_1D8A010E0();
          v41 = v73;
          sub_1D8B16950();
          v42 = v79;
          v43 = v31;
          (*(v68 + 8))(v41, v69);
          (*(v42 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v44 = v64;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v86 = 3;
          sub_1D8A0108C();
          v46 = v29;
          sub_1D8B16950();
          v47 = v13;
          v48 = v79;
          v43 = v31;
          v51 = v47;
          v52 = v71;
          v57 = sub_1D8B169C0();
          v59 = v58;
          (*(v72 + 8))(v46, v52);
          (*(v48 + 8))(v51, v32);
          swift_unknownObjectRelease();
          v60 = v62;
          *v62 = v57;
          *(v60 + 8) = v59;
          swift_storeEnumTagMultiPayload();
          v44 = v64;
          sub_1D8A01550(v60, v64, type metadata accessor for VisualLookupClassifier.Result.SearchState);
        }
      }

      else
      {
        if (v35)
        {
          v86 = 1;
          sub_1D8A01134();
          v45 = v30;
          sub_1D8B16950();
          sub_1D8B138B0();
          sub_1D8A011DC(&qword_1ECA66FB8, MEMORY[0x1E69E0360], MEMORY[0x1E69E0380]);
          v56 = v63;
          v49 = v67;
          sub_1D8B16A10();
          v50 = v79;
          (*(v70 + 8))(v45, v49);
          (*(v50 + 8))(v13, v32);
          swift_unknownObjectRelease();
        }

        else
        {
          v86 = 0;
          sub_1D8A01188();
          sub_1D8B16950();
          v36 = v65;
          v53 = sub_1D8B169C0();
          v55 = v54;
          (*(v66 + 8))(v28, v36);
          (*(v79 + 8))(v13, v32);
          swift_unknownObjectRelease();
          v56 = v61;
          *v61 = v53;
          *(v56 + 8) = v55;
        }

        swift_storeEnumTagMultiPayload();
        v44 = v64;
        sub_1D8A01550(v56, v64, type metadata accessor for VisualLookupClassifier.Result.SearchState);
        v43 = v31;
      }

      sub_1D8A01550(v44, v43, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

unint64_t sub_1D89EC24C()
{
  v1 = *v0;
  v2 = 0x6449656C646E7562;
  v3 = 0xD000000000000024;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6552686372616573;
  if (v1 != 4)
  {
    v4 = 0x7453686372616573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461636F6CLL;
  if (v1 != 2)
  {
    v5 = 0x6948686372616573;
  }

  if (*v0)
  {
    v2 = 0x7461446573726170;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D89EC378@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A021BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D89EC3A0(uint64_t a1)
{
  v2 = sub_1D8A01398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D89EC3DC(uint64_t a1)
{
  v2 = sub_1D8A01398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualLookupClassifier.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FC0, &qword_1D8B31618);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A01398();
  sub_1D8B16DD0();
  LOBYTE(v13) = 0;
  sub_1D8B13240();
  sub_1D8A011DC(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for VisualLookupClassifier.Result(0);
    LOBYTE(v13) = 1;
    type metadata accessor for GenericParseDataResult(0);
    sub_1D8A011DC(&qword_1ECA66FD0, type metadata accessor for GenericParseDataResult, &protocol conformance descriptor for GenericParseDataResult);
    sub_1D8B16AE0();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FD8, &qword_1D8B31620);
    sub_1D881CF20(&qword_1ECA66FE0, &qword_1ECA66FD8, &qword_1D8B31620, &unk_1D8B2F4AC);
    sub_1D8B16A80();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FE8, &unk_1D8B31628);
    sub_1D8A015B8(&qword_1ECA66FF0, &qword_1ECA66FF8, MEMORY[0x1E69E0428], MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0, &unk_1D8B20CF0);
    sub_1D8A013EC(&qword_1ECA637A8, &qword_1ECA637B0, &protocol conformance descriptor for VisualIntelligenceLookupResult, MEMORY[0x1E69E6300]);
    sub_1D8B16A80();
    LOBYTE(v13) = 5;
    type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
    sub_1D8A011DC(&qword_1ECA67000, type metadata accessor for VisualLookupClassifier.Result.SearchState, &protocol conformance descriptor for VisualLookupClassifier.Result.SearchState);
    sub_1D8B16AE0();
    LOBYTE(v13) = 6;
    sub_1D8B16A60();
    LOBYTE(v13) = 7;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

double VisualLookupClassifier.Result.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13CF0();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A011DC(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v9 = type metadata accessor for VisualLookupClassifier.Result(0);
  GenericParseDataResult.hash(into:)(a1);
  v33 = v9;
  v10 = *(v1 + *(v9 + 24));
  v31 = v5;
  sub_1D8B16D40();
  if (v10)
  {
    sub_1D8B16410();
  }

  v11 = *(v33 + 28);
  v34 = v1;
  v12 = *(v1 + v11);
  MEMORY[0x1DA720210](*(v12 + 16));
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v32 + 16);
    v15 = v12 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v16 = *(v32 + 72);
    v17 = (v32 + 8);
    do
    {
      v14(v8, v15, v6);
      sub_1D8A011DC(&qword_1ECA65FD0, MEMORY[0x1E69E0420], MEMORY[0x1E69E0430]);
      sub_1D8B157A0();
      (*v17)(v8, v6);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  v18 = v33;
  v19 = *(v34 + *(v33 + 32));
  if (v19)
  {
    sub_1D8B16D40();
    MEMORY[0x1DA720210](*(v19 + 16));
    v20 = *(v19 + 16);
    v21 = v31;
    if (v20)
    {
      v22 = v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v23 = *(v30 + 72);
      do
      {
        sub_1D8A01488(v22, v21, type metadata accessor for VisualIntelligenceLookupResult);
        VisualIntelligenceLookupResult.hash(into:)(a1);
        sub_1D8A014F0(v21, type metadata accessor for VisualIntelligenceLookupResult);
        v22 += v23;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    sub_1D8B16D40();
  }

  v24 = v34;
  VisualLookupClassifier.Result.SearchState.hash(into:)(a1);
  v25 = (v24 + *(v18 + 40));
  if (v25[1])
  {
    sub_1D8B16D40();
  }

  else
  {
    v26 = *v25;
    sub_1D8B16D40();
    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA720250](v27);
  }

  sub_1D8B16D40();
  return result;
}

uint64_t sub_1D89ECC60(uint64_t (*a1)(void *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

void VisualLookupClassifier.Result.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenericParseDataResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67008, &qword_1D8B31638);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v26 - v9;
  v11 = type metadata accessor for VisualLookupClassifier.Result(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A01398();
  v33 = v10;
  v15 = v35;
  sub_1D8B16DB0();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v16 = v30;
    v17 = v13;
    LOBYTE(v38) = 0;
    sub_1D8A011DC(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v18 = v31;
    sub_1D8B16A10();
    v19 = *(v16 + 32);
    v31 = v7;
    v19(v17, v18, v7);
    LOBYTE(v38) = 1;
    sub_1D8A011DC(&qword_1ECA67010, type metadata accessor for GenericParseDataResult, &protocol conformance descriptor for GenericParseDataResult);
    sub_1D8B16A10();
    v35 = v17;
    sub_1D8A01550(v6, v17 + v11[5], type metadata accessor for GenericParseDataResult);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FD8, &qword_1D8B31620);
    v37 = 2;
    sub_1D881CF20(&qword_1ECA67018, &qword_1ECA66FD8, &qword_1D8B31620, &unk_1D8B2F484);
    v26 = 0;
    sub_1D8B169B0();
    *(v17 + v11[6]) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66FE8, &unk_1D8B31628);
    v37 = 3;
    sub_1D8A015B8(&qword_1ECA67020, &qword_1ECA67028, MEMORY[0x1E69E0440], MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    v20 = v32;
    *(v17 + v11[7]) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0, &unk_1D8B20CF0);
    v37 = 4;
    sub_1D8A013EC(&qword_1ECA67030, &qword_1ECA67038, &protocol conformance descriptor for VisualIntelligenceLookupResult, MEMORY[0x1E69E6330]);
    sub_1D8B169B0();
    *(v17 + v11[8]) = v38;
    LOBYTE(v38) = 5;
    sub_1D8A011DC(&qword_1ECA67040, type metadata accessor for VisualLookupClassifier.Result.SearchState, &protocol conformance descriptor for VisualLookupClassifier.Result.SearchState);
    v21 = v29;
    sub_1D8B16A10();
    sub_1D8A01550(v21, v17 + v11[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
    LOBYTE(v38) = 6;
    v22 = sub_1D8B16990();
    v23 = v17 + v11[10];
    *v23 = v22;
    *(v23 + 8) = v24 & 1;
    LOBYTE(v38) = 7;
    v25 = sub_1D8B169D0();
    (*(v20 + 8))(v33, v34);
    *(v17 + v11[11]) = v25 & 1;
    sub_1D8A01488(v17, v27, type metadata accessor for VisualLookupClassifier.Result);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_1D8A014F0(v17, type metadata accessor for VisualLookupClassifier.Result);
  }
}

uint64_t sub_1D89ED528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D89ED58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D89ED604(uint64_t a1)
{
  v2 = sub_1D8B13CF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = a1 + v34;
  v11 = *(v3 + 72);
  sub_1D8B13CE0();
  v13 = v12;
  v16 = *(v3 + 16);
  v15 = v3 + 16;
  v14 = v16;
  v30 = (v15 - 8);
  v35 = (v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v32 = v6;
  v33 = v15;
  v31 = v16;
  v16(v8, v10, v2);
  while (1)
  {
    sub_1D8B13CE0();
    if (v13 >= v18 + 10.0)
    {
      (*v30)(v8, v2);
    }

    else
    {
      v19 = v11;
      v20 = *v35;
      (*v35)(v6, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F4904(0, *(v17 + 16) + 1, 1);
        v17 = v36;
      }

      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D87F4904((v22 > 1), v23 + 1, 1);
        v17 = v36;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + v34 + v23 * v19;
      v6 = v32;
      v20(v24, v32, v2);
      v11 = v19;
      v14 = v31;
    }

    v10 += v11;
    if (!--v9)
    {
      break;
    }

    v14(v8, v10, v2);
  }

  v25 = *(v17 + 16);
  if (v25 >= 0xB)
  {
    sub_1D8AB5DEC(v17, v17 + v34, v25 - 10, (2 * v25) | 1);
    v27 = v26;

    return v27;
  }

  return v17;
}

uint64_t sub_1D89ED8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v261 = a2;
  v3 = sub_1D8B13240();
  v256 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v240 = v221 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v241 = v221 - v6;
  v7 = type metadata accessor for CVBundle(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v264 = v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v246 = v221 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v244 = v221 - v12;
  v255 = type metadata accessor for AFMResult(0);
  v13 = MEMORY[0x1EEE9AC00](v255);
  v251 = v221 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v250 = v221 - v15;
  v16 = type metadata accessor for GenericParseDataResult(0);
  v262 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v260 = v221 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67168, &qword_1D8B32140);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v249 = v221 - v19;
  v257 = type metadata accessor for GroundedParseDetectorResult(0);
  v248 = *(v257 - 1);
  v20 = MEMORY[0x1EEE9AC00](v257);
  v243 = v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v259 = v221 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v252 = v221 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v245 = v221 - v26;
  v27 = type metadata accessor for CVTrackSnapshot(0);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v236 = v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v221 - v31;
  v33 = type metadata accessor for CVBundle.BundleType(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v239 = v221 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v242 = v221 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v235 = v221 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = v221 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v237 = v221 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v238 = v221 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v233 = v221 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v234 = v221 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = v221 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v221 - v54;
  v253 = a1;
  sub_1D8A01488(a1, v41, type metadata accessor for CVBundle.BundleType);
  v247 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v254 = v3;
  if (EnumCaseMultiPayload == 1)
  {
    v57 = *(v28 + 56);
    (v57)(v53, 1, 1, v27);
    (*(v256 + 8))(v41, v3);
  }

  else
  {
    sub_1D8A01550(v41, v53, type metadata accessor for CVTrackSnapshot);
    v57 = *(v28 + 56);
    (v57)(v53, 0, 1, v27);
  }

  v58 = v28;
  sub_1D881F6FC(v53, v55, &qword_1ECA63E20, &qword_1D8B22E50);
  v61 = *(v28 + 48);
  v59 = v28 + 48;
  v60 = v61;
  if (v61(v55, 1, v27) == 1)
  {
    sub_1D87A14E4(v55, &qword_1ECA63E20, &qword_1D8B22E50);
    return v262[7](v261, 1, 1, v16);
  }

  v62 = *&v55[*(v27 + 24)];

  sub_1D8A014F0(v55, type metadata accessor for CVTrackSnapshot);
  v269 = v62;
  CVDetection.detectionType.getter(&v266);

  if (v266)
  {
    return v262[7](v261, 1, 1, v16);
  }

  v221[0] = v60;
  v221[1] = v59;
  v232 = v16;
  v227 = sub_1D891DE68();
  v64 = *(v227 + 16);
  v65 = v264;
  v222 = v27;
  v221[2] = v58;
  v226 = v57;
  if (!v64)
  {

    v69 = MEMORY[0x1E69E7CC0];
    v90 = v262;
    v91 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v91)
    {
      goto LABEL_27;
    }

LABEL_65:

    v142 = v249;
    (*(v248 + 56))(v249, 1, 1, v257);
    goto LABEL_67;
  }

  v66 = *(v27 + 24);
  v67 = v227 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v68 = *(v58 + 72);
  v223 = (v256 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  v225 = v66;
  v224 = v68;
  v70 = v260;
  do
  {
    sub_1D8A01488(v67, v32, type metadata accessor for CVTrackSnapshot);
    v71 = *&v32[v66];
    v72 = v71 >> 60;
    if ((v71 >> 60) > 6 || ((v72 - 2) >= 5 ? (v73 = v72 == 0) : (v73 = 1), v73))
    {
      sub_1D8A014F0(v32, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      v263 = v69;
      v74 = swift_projectBox();
      v75 = v252;
      sub_1D8A01488(v74, v252, type metadata accessor for GroundedParseDetectorResult);

      sub_1D8A014F0(v32, type metadata accessor for CVTrackSnapshot);
      v76 = v259;
      sub_1D8A01550(v75, v259, type metadata accessor for GroundedParseDetectorResult);
      (*v223)(v70, v76, v254);
      v77 = v257;
      v78 = *(v76 + v257[9]);
      v79 = *(v76 + v257[7]);
      v80 = v232;
      sub_1D8A01488(v76 + v257[13], v70 + v232[7], type metadata accessor for VisualUnderstandingContainer);
      v81 = v77[11];
      LODWORD(v258) = *(v76 + v77[10]);
      v82 = v77[16];
      v228 = *(v76 + v77[15]);
      v83 = (v76 + v77[12]);
      v84 = v83[1];
      v229 = *v83;
      v85 = *(v76 + v81 + 8);
      v230 = *(v76 + v81);
      v231 = *(v76 + v82);

      sub_1D8A014F0(v76, type metadata accessor for GroundedParseDetectorResult);
      *(v70 + v80[5]) = v78;
      *(v70 + v80[6]) = v79;
      LOBYTE(v76) = v258;
      *(v70 + v80[8]) = v258;
      *(v70 + v80[9]) = v228;
      v86 = (v70 + v80[10]);
      *v86 = v229;
      v86[1] = v84;
      v87 = (v70 + v80[11]);
      *v87 = v230;
      v87[1] = v85;
      *(v70 + v80[12]) = v231;
      sub_1D8A014F0(v70, type metadata accessor for GenericParseDataResult);
      if (v76)
      {
        v69 = v263;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1D87C7F54(0, *(v69 + 2) + 1, 1, v69);
        }

        v66 = v225;
        v89 = *(v69 + 2);
        v88 = *(v69 + 3);
        if (v89 >= v88 >> 1)
        {
          v69 = sub_1D87C7F54((v88 > 1), v89 + 1, 1, v69);
        }

        *(v69 + 2) = v89 + 1;
        *&v69[8 * v89 + 32] = v71;
      }

      else
      {

        v69 = v263;
        v66 = v225;
      }

      v68 = v224;
    }

    v67 += v68;
    --v64;
  }

  while (v64);

  v90 = v262;
  v65 = v264;
  v57 = v226;
  v91 = *(v69 + 2);
  if (!v91)
  {
    goto LABEL_65;
  }

LABEL_27:
  v92 = *(v69 + 4);
  v260 = v69 + 32;
  v93 = v92 & 0xFFFFFFFFFFFFFFFLL;

  if (v91 != 1)
  {
    v94 = 1;
    v263 = v69;
    v230 = v91 - 1;
    while (2)
    {
      v231 = v92;
      v258 = v92 & 0xFFFFFFFFFFFFFFFLL;
      v259 = v92 >> 60;
      v57 = v94;
      while (1)
      {
        if (v57 >= *(v69 + 2))
        {
          __break(1u);
          goto LABEL_94;
        }

        v92 = *&v260[8 * v57];
        v90 = (v57 + 1);
        switch(v259)
        {
          case 1uLL:
            v109 = swift_projectBox();
            v267 = v257;
            v268 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v110 = type metadata accessor for GroundedParseDetectorResult;
            v111 = v109;
            goto LABEL_44;
          case 2uLL:
            v104 = type metadata accessor for MetaDetectionResult(0);
            v96 = swift_projectBox();
            v267 = v104;
            v268 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for MetaDetectionResult;
            goto LABEL_43;
          case 3uLL:
          case 8uLL:
            v95 = type metadata accessor for ObjectDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v95;
            v268 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_43;
          case 4uLL:
            v112 = type metadata accessor for ParseDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v112;
            v268 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for ParseDetectorResult;
            goto LABEL_43;
          case 5uLL:
            v113 = type metadata accessor for TextDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v113;
            v268 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for TextDetectorResult;
            goto LABEL_43;
          case 6uLL:
          case 7uLL:
            v99 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v96 = swift_projectBox();
            v267 = v99;
            v268 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_43;
          case 9uLL:
          case 0xAuLL:
            v100 = swift_projectBox();
            v101 = v250;
            sub_1D8A01488(v100, v250, type metadata accessor for AFMResult);
            v267 = v255;
            v268 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v102 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D8A01550(v101, v102, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v103 = type metadata accessor for SyntheticDetectionResult(0);
            v96 = swift_projectBox();
            v267 = v103;
            v268 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_43;
          case 0xCuLL:
            v105 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v96 = swift_projectBox();
            v267 = v105;
            v268 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_43;
          case 0xDuLL:
            v114 = type metadata accessor for GroundedParseClassificationsResult(0);
            v96 = swift_projectBox();
            v267 = v114;
            v268 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v98 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_43:
            v110 = v98;
            v111 = v96;
LABEL_44:
            sub_1D8A01488(v111, boxed_opaque_existential_1, v110);
            break;
          default:
            v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v107 = swift_projectBox();
            v267 = v106;
            v268 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
            v108 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D87A0E38(v107, v108, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v115 = v267;
        v116 = v268;
        __swift_project_boxed_opaque_existential_1(&v266, v267);
        v117 = *(v116 + 56);
        v93 = v92 & 0xFFFFFFFFFFFFFFFLL;

        v118 = v117(v115, v116);
        __swift_destroy_boxed_opaque_existential_1(&v266);
        v65 = v264;
        switch(v92 >> 60)
        {
          case 1uLL:
            v133 = swift_projectBox();
            v267 = v257;
            v268 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v134 = type metadata accessor for GroundedParseDetectorResult;
            v135 = v133;
            goto LABEL_58;
          case 2uLL:
            v128 = type metadata accessor for MetaDetectionResult(0);
            v120 = swift_projectBox();
            v267 = v128;
            v268 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for MetaDetectionResult;
            goto LABEL_57;
          case 3uLL:
          case 8uLL:
            v119 = type metadata accessor for ObjectDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v119;
            v268 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_57;
          case 4uLL:
            v136 = type metadata accessor for ParseDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v136;
            v268 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for ParseDetectorResult;
            goto LABEL_57;
          case 5uLL:
            v137 = type metadata accessor for TextDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v137;
            v268 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for TextDetectorResult;
            goto LABEL_57;
          case 6uLL:
          case 7uLL:
            v123 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v120 = swift_projectBox();
            v267 = v123;
            v268 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_57;
          case 9uLL:
          case 0xAuLL:
            v124 = swift_projectBox();
            v125 = v251;
            sub_1D8A01488(v124, v251, type metadata accessor for AFMResult);
            v267 = v255;
            v268 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v126 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D8A01550(v125, v126, type metadata accessor for AFMResult);
            break;
          case 0xBuLL:
            v127 = type metadata accessor for SyntheticDetectionResult(0);
            v120 = swift_projectBox();
            v267 = v127;
            v268 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_57;
          case 0xCuLL:
            v129 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v120 = swift_projectBox();
            v267 = v129;
            v268 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_57;
          case 0xDuLL:
            v138 = type metadata accessor for GroundedParseClassificationsResult(0);
            v120 = swift_projectBox();
            v267 = v138;
            v268 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            v121 = __swift_allocate_boxed_opaque_existential_1(&v266);
            v122 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_57:
            v134 = v122;
            v135 = v120;
LABEL_58:
            sub_1D8A01488(v135, v121, v134);
            break;
          default:
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
            v131 = swift_projectBox();
            v267 = v130;
            v268 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
            v132 = __swift_allocate_boxed_opaque_existential_1(&v266);
            sub_1D87A0E38(v131, v132, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        v139 = v267;
        v140 = v268;
        __swift_project_boxed_opaque_existential_1(&v266, v267);
        v141 = (*(v140 + 56))(v139, v140);
        __swift_destroy_boxed_opaque_existential_1(&v266);
        if (v118 < v141)
        {
          break;
        }

        ++v57;
        v69 = v263;
        if (v91 == v90)
        {
          v92 = v231;
          v90 = v262;
          goto LABEL_66;
        }
      }

      v94 = v57 + 1;
      v90 = v262;
      v69 = v263;
      if (v230 != v57)
      {
        continue;
      }

      break;
    }
  }

LABEL_66:

  v266 = v92;
  CVDetection.detection.getter(&v269);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
  v142 = v249;
  v143 = v257;
  v144 = swift_dynamicCast();
  v145 = v248;
  (*(v248 + 56))(v142, v144 ^ 1u, 1, v143);
  v146 = (*(v145 + 48))(v142, 1, v143);
  v57 = v226;
  if (v146 != 1)
  {
    v157 = v245;
    sub_1D8A01550(v142, v245, type metadata accessor for GroundedParseDetectorResult);
    v158 = v254;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v159 = sub_1D8B151E0();
    __swift_project_value_buffer(v159, qword_1EE0E4520);
    v160 = v244;
    sub_1D8A01488(v253, v244, type metadata accessor for CVBundle);
    v161 = v243;
    sub_1D8A01488(v157, v243, type metadata accessor for GroundedParseDetectorResult);
    v162 = sub_1D8B151C0();
    v163 = sub_1D8B16200();
    v164 = os_log_type_enabled(v162, v163);
    v165 = v256;
    if (v164)
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v266 = v167;
      *v166 = 136315394;
      v168 = v235;
      sub_1D8A01488(v160, v235, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v169 = v233;
        v170 = v222;
        v226(v233, 1, 1, v222);
        (*(v165 + 8))(v168, v158);
      }

      else
      {
        v169 = v233;
        sub_1D8A01550(v168, v233, type metadata accessor for CVTrackSnapshot);
        v170 = v222;
        v226(v169, 0, 1, v222);
      }

      v191 = v234;
      sub_1D881F6FC(v169, v234, &qword_1ECA63E20, &qword_1D8B22E50);
      if ((v221[0])(v191, 1, v170) == 1)
      {
        v192 = 1701736302;
        sub_1D87A14E4(v191, &qword_1ECA63E20, &qword_1D8B22E50);
        v193 = 0xE400000000000000;
      }

      else
      {
        v194 = *(v191 + *(v170 + 24));

        sub_1D8A014F0(v191, type metadata accessor for CVTrackSnapshot);
        v265 = v194;
        CVDetection.detection.getter(&v269);
        v195 = v270;
        v196 = v271;
        __swift_project_boxed_opaque_existential_1(&v269, v270);
        v192 = (*(v196 + 72))(v195, v196);
        v193 = v197;

        __swift_destroy_boxed_opaque_existential_1(&v269);
      }

      sub_1D8A014F0(v244, type metadata accessor for CVBundle);
      v198 = sub_1D89AC714(v192, v193, &v266);

      *(v166 + 4) = v198;
      *(v166 + 12) = 2080;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v199 = v243;
      v200 = sub_1D8B16B50();
      v202 = v201;
      sub_1D8A014F0(v199, type metadata accessor for GroundedParseDetectorResult);
      v203 = sub_1D89AC714(v200, v202, &v266);

      *(v166 + 14) = v203;
      _os_log_impl(&dword_1D8783000, v162, v163, "Returned bestChild %s (%s).", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v167, -1, -1);
      MEMORY[0x1DA721330](v166, -1, -1);

      v157 = v245;
    }

    else
    {

      sub_1D8A014F0(v161, type metadata accessor for GroundedParseDetectorResult);
      sub_1D8A014F0(v160, type metadata accessor for CVBundle);
    }

    v204 = v252;
    sub_1D8A01550(v157, v252, type metadata accessor for GroundedParseDetectorResult);
    v205 = v261;
    (*(v165 + 16))(v261, v204, v158);
    v206 = v257;
    v207 = *(v204 + v257[9]);
    v208 = *(v204 + v257[7]);
    v209 = v232;
    sub_1D8A01488(v204 + v257[13], v205 + v232[7], type metadata accessor for VisualUnderstandingContainer);
    v210 = v206[11];
    LODWORD(v264) = *(v204 + v206[10]);
    v211 = v206[16];
    v212 = *(v204 + v206[15]);
    v213 = (v204 + v206[12]);
    v215 = *v213;
    v214 = v213[1];
    v217 = *(v204 + v210);
    v216 = *(v204 + v210 + 8);
    v218 = *(v204 + v211);

    sub_1D8A014F0(v204, type metadata accessor for GroundedParseDetectorResult);
    *(v205 + v209[5]) = v207;
    *(v205 + v209[6]) = v208;
    *(v205 + v209[8]) = v264;
    *(v205 + v209[9]) = v212;
    v219 = (v205 + v209[10]);
    *v219 = v215;
    v219[1] = v214;
    v220 = (v205 + v209[11]);
    *v220 = v217;
    v220[1] = v216;
    *(v205 + v209[12]) = v218;
    return v262[7](v205, 0, 1, v209);
  }

LABEL_67:
  sub_1D87A14E4(v142, &qword_1ECA67168, &qword_1D8B32140);
  v93 = v254;
  if (qword_1EE0E4518 != -1)
  {
LABEL_94:
    swift_once();
  }

  v147 = sub_1D8B151E0();
  __swift_project_value_buffer(v147, qword_1EE0E4520);
  v148 = v253;
  v149 = v246;
  sub_1D8A01488(v253, v246, type metadata accessor for CVBundle);
  sub_1D8A01488(v148, v65, type metadata accessor for CVBundle);
  v150 = sub_1D8B151C0();
  v151 = sub_1D8B16200();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v266 = v263;
    *v152 = 136315394;
    v153 = v242;
    sub_1D8A01488(v149, v242, type metadata accessor for CVBundle.BundleType);
    v154 = v149;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v155 = v237;
      v156 = v222;
      (v57)(v237, 1, 1, v222);
      (*(v256 + 8))(v153, v93);
    }

    else
    {
      v155 = v237;
      sub_1D8A01550(v153, v237, type metadata accessor for CVTrackSnapshot);
      v156 = v222;
      (v57)(v155, 0, 1, v222);
    }

    v171 = v238;
    sub_1D881F6FC(v155, v238, &qword_1ECA63E20, &qword_1D8B22E50);
    if ((v221[0])(v171, 1, v156) == 1)
    {
      v172 = 1701736302;
      sub_1D87A14E4(v171, &qword_1ECA63E20, &qword_1D8B22E50);
      v173 = 0xE400000000000000;
    }

    else
    {
      v174 = *(v171 + *(v156 + 24));

      sub_1D8A014F0(v171, type metadata accessor for CVTrackSnapshot);
      v265 = v174;
      CVDetection.detection.getter(&v269);
      v175 = v270;
      v176 = v271;
      __swift_project_boxed_opaque_existential_1(&v269, v270);
      v172 = (*(v176 + 72))(v175, v176);
      v173 = v177;

      __swift_destroy_boxed_opaque_existential_1(&v269);
    }

    v178 = v241;
    v179 = v239;
    sub_1D8A014F0(v154, type metadata accessor for CVBundle);
    v180 = sub_1D89AC714(v172, v173, &v266);

    *(v152 + 4) = v180;
    *(v152 + 12) = 2080;
    sub_1D8A01488(v264, v179, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v181 = v179;
      v182 = v256;
      v183 = *(v256 + 32);
      v184 = v240;
      v183(v240, v181, v93);
    }

    else
    {
      v185 = v236;
      sub_1D8A01550(v179, v236, type metadata accessor for CVTrackSnapshot);
      v182 = v256;
      v184 = v240;
      (*(v256 + 16))(v240, v185, v93);
      sub_1D8A014F0(v185, type metadata accessor for CVTrackSnapshot);
      v183 = *(v182 + 32);
    }

    v183(v178, v184, v93);
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v186 = sub_1D8B16B50();
    v188 = v187;
    (*(v182 + 8))(v178, v93);
    sub_1D8A014F0(v264, type metadata accessor for CVBundle);
    v189 = sub_1D89AC714(v186, v188, &v266);

    *(v152 + 14) = v189;
    _os_log_impl(&dword_1D8783000, v150, v151, "Did not get bestChild from: bundle %s (%s).", v152, 0x16u);
    v190 = v263;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v190, -1, -1);
    MEMORY[0x1DA721330](v152, -1, -1);

    v90 = v262;
  }

  else
  {

    sub_1D8A014F0(v65, type metadata accessor for CVBundle);
    sub_1D8A014F0(v149, type metadata accessor for CVBundle);
  }

  return v90[7](v261, 1, 1, v232);
}

void sub_1D89EFD24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v381 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v381);
  v8 = &v341 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = type metadata accessor for CVBundle.BundleType(0);
  v9 = MEMORY[0x1EEE9AC00](v366);
  v354 = &v341 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v353 = &v341 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v357 = &v341 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v346 = &v341 - v15;
  v376 = sub_1D8B13240();
  v379 = *(v376 - 8);
  v16 = MEMORY[0x1EEE9AC00](v376);
  v373 = &v341 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v356 = &v341 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v361 = &v341 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v355 = &v341 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v359 = &v341 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v358 = &v341 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v347 = &v341 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v345 = &v341 - v30;
  v31 = type metadata accessor for CVBundle(0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v363 = &v341 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v362 = &v341 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v368 = &v341 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v349 = &v341 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650B8, &unk_1D8B281D0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v352 = &v341 - v40;
  v41 = sub_1D8B13990();
  v395 = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v394 = &v341 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v392 = &v341 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v369 = &v341 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v382 = &v341 - v48;
  v378 = type metadata accessor for AFMResult(0);
  v49 = MEMORY[0x1EEE9AC00](v378);
  v367 = &v341 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v375 = &v341 - v51;
  v388 = type metadata accessor for MetaDetectionResult(0);
  v365 = *(v388 - 8);
  v52 = MEMORY[0x1EEE9AC00](v388);
  v383 = &v341 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v393 = &v341 - v54;
  v364 = type metadata accessor for CVTrackSnapshot(0);
  v396 = *(v364 - 8);
  v55 = MEMORY[0x1EEE9AC00](v364);
  v360 = &v341 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v371 = &v341 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v341 - v59;
  v61 = sub_1D8B138D0();
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v64 = (&v341 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v370);
  v380 = &v341 - v65;
  v377 = type metadata accessor for GenericParseDataResult(0);
  v351 = *(v377 - 8);
  v66 = MEMORY[0x1EEE9AC00](v377);
  v348 = &v341 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v374 = &v341 - v68;
  v69 = *(a2 + 32);
  v391 = *(a2 + 40);
  v350 = *v3;
  LOBYTE(v397) = v350;
  if (!sub_1D89F3578(a1))
  {
    goto LABEL_63;
  }

  v372 = a1;
  CVBundle.latestEstimate.getter(&v406);
  v70 = v406;
  v344 = a3;
  if (v406 >> 60 == 4)
  {
    v341 = 0xD000000000000011;
    v343 = v406;
    v140 = swift_projectBox();
    sub_1D8A01488(v140, v8, type metadata accessor for ParseDetectorResult);
    v342 = 0x80000001D8B46F80;
    v141 = v374;
    (*(v379 + 16))(v374, v8, v376);
    v142 = v381;
    v143 = *&v8[v381[9]];
    v144 = *&v8[v381[7]];
    v145 = v377;
    sub_1D8A01488(&v8[v381[13]], v141 + *(v377 + 28), type metadata accessor for VisualUnderstandingContainer);
    v146 = v142[11];
    LODWORD(v396) = v8[v142[10]];
    v147 = v142[15];
    v148 = *&v8[v142[14]];
    v149 = &v8[v142[12]];
    v151 = *v149;
    v150 = *(v149 + 1);
    v153 = *&v8[v146];
    v152 = *&v8[v146 + 8];
    v154 = *&v8[v147];

    sub_1D8A014F0(v8, type metadata accessor for ParseDetectorResult);

    *(v141 + v145[5]) = v143;
    *(v141 + v145[6]) = v144;
    *(v141 + v145[8]) = v396;
    *(v141 + v145[9]) = v148;
    v155 = (v141 + v145[10]);
    *v155 = v151;
    v155[1] = v150;
    v156 = (v141 + v145[11]);
    *v156 = v153;
    v156[1] = v152;
    a3 = v344;
    *(v141 + v145[12]) = v154;
    v81 = v372;
    goto LABEL_52;
  }

  if (v406 >> 60)
  {
LABEL_62:

LABEL_63:
    v173 = xmmword_1D8B26630;
    goto LABEL_64;
  }

  v71 = swift_projectBox();
  v72 = v380;
  sub_1D87A0E38(v71, v380, &qword_1ECA67750, &unk_1D8B1E0C0);
  v73 = sub_1D89F3840();
  sub_1D89F3968(v73, v64);

  if ((*(v62 + 88))(v64, v61) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v72, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(v62 + 8))(v64, v61);
    goto LABEL_62;
  }

  v343 = v70;
  (*(v62 + 96))(v64, v61);
  v390 = *v64;
  LOBYTE(v74) = sub_1D889E348();
  v75 = v74;
  v342 = v76;
  v77 = sub_1D891A6E8();
  v78 = v77;
  v389 = *(v77 + 16);
  v341 = v75;
  if (!v389)
  {
LABEL_67:

    LODWORD(v382) = 0;
    goto LABEL_68;
  }

  v385 = *(v364 + 20);
  v387 = v77 + ((*(v396 + 80) + 32) & ~*(v396 + 80));
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v79 = 0;
  v384 = (v365 + 56);
  v80 = v388;
  v81 = v382;
  while (1)
  {
    if (v79 >= *(v78 + 16))
    {
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    sub_1D8A01488(v387 + *(v396 + 72) * v79, v60, type metadata accessor for CVTrackSnapshot);
    v82 = sub_1D8B16910();
    v83 = sub_1D881F7DC();
    if (v84)
    {
      goto LABEL_189;
    }

    v85 = v82 + 8;
    *(v82 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v83;
    *(v82[6] + v83) = 1;
    *(v82[7] + 8 * v83) = 0x3FE999999999999ALL;
    v86 = v82[2];
    v87 = __OFADD__(v86, 1);
    v88 = v86 + 1;
    if (v87)
    {
      goto LABEL_190;
    }

    v82[2] = v88;
    v89 = sub_1D881F7DC();
    if (v90)
    {
      goto LABEL_191;
    }

    *(v85 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
    *(v82[6] + v89) = 12;
    *(v82[7] + 8 * v89) = 0x3FE0000000000000;
    v91 = v82[2];
    v87 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v87)
    {
      goto LABEL_192;
    }

    v82[2] = v92;
    v93 = sub_1D881F7DC();
    if (v94)
    {
      goto LABEL_193;
    }

    *(v85 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v93;
    *(v82[6] + v93) = 13;
    *(v82[7] + 8 * v93) = 0x3FE0000000000000;
    v95 = v82[2];
    v87 = __OFADD__(v95, 1);
    v96 = v95 + 1;
    if (v87)
    {
      goto LABEL_194;
    }

    v82[2] = v96;
    v97 = sub_1D881F7DC();
    if (v98)
    {
      goto LABEL_195;
    }

    *(v85 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
    *(v82[6] + v97) = 5;
    *(v82[7] + 8 * v97) = 0x4020000000000000;
    v99 = v82[2];
    v87 = __OFADD__(v99, 1);
    v100 = v99 + 1;
    if (v87)
    {
      goto LABEL_196;
    }

    v82[2] = v100;
    v101 = 0.1;
    if (v100)
    {
      v102 = sub_1D881F7DC();
      v101 = 0.1;
      if (v103)
      {
        v101 = *(v82[7] + 8 * v102);
      }
    }

    ++v79;

    switch(*(v60 + v385) >> 60)
    {
      case 1:
        v116 = type metadata accessor for GroundedParseDetectorResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v116;
        *&v399 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_33;
      case 2:
        v105 = swift_projectBox();
        *(&v398 + 1) = v80;
        *&v399 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for MetaDetectionResult;
        goto LABEL_33;
      case 3:
      case 8:
        v104 = type metadata accessor for ObjectDetectorResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v104;
        *&v399 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_33;
      case 4:
        v105 = swift_projectBox();
        *(&v398 + 1) = v381;
        *&v399 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for ParseDetectorResult;
        goto LABEL_33;
      case 5:
        v117 = type metadata accessor for TextDetectorResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v117;
        *&v399 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for TextDetectorResult;
        goto LABEL_33;
      case 6:
      case 7:
        v108 = type metadata accessor for StreamingBarcodeDetectorResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v108;
        *&v399 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_33;
      case 9:
      case 0xALL:
        v109 = swift_projectBox();
        v110 = v375;
        sub_1D8A01488(v109, v375, type metadata accessor for AFMResult);
        *(&v398 + 1) = v378;
        *&v399 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
        v111 = __swift_allocate_boxed_opaque_existential_1(&v397);
        sub_1D8A01550(v110, v111, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v112 = type metadata accessor for SyntheticDetectionResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v112;
        *&v399 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_33;
      case 0xCLL:
        v113 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v113;
        *&v399 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_33;
      case 0xDLL:
        v118 = type metadata accessor for GroundedParseClassificationsResult(0);
        v105 = swift_projectBox();
        *(&v398 + 1) = v118;
        *&v399 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v397);
        v107 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_33:
        sub_1D8A01488(v105, boxed_opaque_existential_1, v107);
        break;
      default:
        v114 = swift_projectBox();
        *(&v398 + 1) = v370;
        *&v399 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
        v115 = __swift_allocate_boxed_opaque_existential_1(&v397);
        sub_1D87A0E38(v114, v115, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v119 = swift_dynamicCast();
    v120 = *v384;
    if ((v119 & 1) == 0)
    {
      v120(v81, 1, 1, v80);
      sub_1D87A14E4(v81, &qword_1ECA64BB8, &qword_1D8B26820);
      goto LABEL_8;
    }

    v120(v81, 0, 1, v80);
    v121 = v393;
    sub_1D8A01550(v81, v393, type metadata accessor for MetaDetectionResult);
    v122 = v121;
    if (*v121 != 1 || (v391 & 1) != 0 && *&v121[v80[8]] != v69)
    {
      sub_1D8A014F0(v121, type metadata accessor for MetaDetectionResult);
      goto LABEL_8;
    }

    v123 = v80[9];
    if (v121[v123] == 2 && v69 - *&v121[v80[8]] > v101 || (CVBundle.latestEstimate.getter(&v405), v404 = v405, CVDetection.detection.getter(&v401), v124 = v402, v125 = v403, __swift_project_boxed_opaque_existential_1(&v401, v402), (*(v125 + 64))(&v397, v124, v125), __swift_destroy_boxed_opaque_existential_1(&v401), Corners.bounds.getter(), v127 = v126, v129 = v128, v131 = v130, v133 = v132, v80 = v388, , v417.origin.x = 0.0, v417.origin.y = 0.0, v417.size.width = 1.0, v417.size.height = 1.0, v409.origin.x = v127, v409.origin.y = v129, v409.size.width = v131, v409.size.height = v133, v410 = CGRectIntersection(v409, v417), x = v410.origin.x, y = v410.origin.y, width = v410.size.width, height = v410.size.height, v138 = &v393[v80[5]], *&v410.origin.y = v138[1], v397 = *v138, v398 = *&v410.origin.y, *&v410.origin.y = v138[3], v399 = v138[2], v400 = *&v410.origin.y, Corners.bounds.getter(), v418.origin.x = x, v418.origin.y = y, v418.size.width = width, v418.size.height = height, v412 = CGRectIntersection(v411, v418), v122 = v393, width * height * 0.9 > v412.size.width * v412.size.height))
    {
      sub_1D8A014F0(v122, type metadata accessor for MetaDetectionResult);
      v81 = v382;
      goto LABEL_8;
    }

    v139 = v393[v123];
    if (v139 == 3)
    {
      break;
    }

    sub_1D8A014F0(v393, type metadata accessor for MetaDetectionResult);
    v81 = v382;
    if (v139 == 2)
    {
      goto LABEL_160;
    }

LABEL_8:
    sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
    if (v389 == v79)
    {
      goto LABEL_67;
    }
  }

  v81 = v382;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    goto LABEL_208;
  }

  sub_1D8A014F0(v393, type metadata accessor for MetaDetectionResult);
  if ((v391 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_160:

  sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
  LODWORD(v382) = 1;
LABEL_68:
  v175 = v390;
  v81 = *(v390 + 16);
  v176 = v392;
  if (!v81)
  {
    v384 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v177 = 0;
  v80 = (v395 + 16);
  v393 = (v395 + 88);
  LODWORD(v389) = *MEMORY[0x1E69E0398];
  v78 = *MEMORY[0x1E69E03A8];
  LODWORD(v387) = *MEMORY[0x1E69E03A0];
  LODWORD(v386) = *MEMORY[0x1E69E03B0];
  LODWORD(v385) = *MEMORY[0x1E69E03B8];
  v178 = (v395 + 8);
  v375 = v81 - 1;
  v384 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v179 = v177;
    while (2)
    {
      if (v179 >= *(v175 + 16))
      {
        __break(1u);
        goto LABEL_188;
      }

      v180 = v395;
      v181 = *(v395 + 16);
      v181(v176, v175 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v395 + 72) * v179, v41);
      v60 = v41;
      v182 = v394;
      v181(v394, v176, v60);
      v183 = v182;
      v41 = v60;
      v184 = (*(v180 + 88))(v183, v60);
      if (v184 == v389 || v184 == v78)
      {
LABEL_71:
        ++v179;
        (*v178)(v176, v60);
        v175 = v390;
        if (v81 == v179)
        {
          goto LABEL_95;
        }

        continue;
      }

      break;
    }

    if (v184 != v387)
    {
      v186 = v184 == v386 || v184 == v385;
      v176 = v392;
      if (!v186)
      {
        while (1)
        {
          sub_1D8B168C0();
          __break(1u);
LABEL_208:
          *&v397 = 0;
          *(&v397 + 1) = 0xE000000000000000;
          sub_1D8B16720();

          *&v397 = 0xD000000000000038;
          *(&v397 + 1) = 0x80000001D8B46FA0;
          v336 = v80[10];
          v337 = &v408;
LABEL_210:
          v338 = (*(v337 - 32) + v336);
          if (v338[1])
          {
            v339 = *v338;
            v340 = v338[1];
          }

          else
          {
            v339 = 0x6F73616572206F6ELL;
            v340 = 0xEF6E65766967206ELL;
          }

          MEMORY[0x1DA71EFA0](v339, v340);
        }
      }

      goto LABEL_71;
    }

    v176 = v392;
    (*v178)(v392, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v384 = sub_1D87C8F58(0, *(v384 + 2) + 1, 1, v384);
    }

    v175 = v390;
    v60 = *(v384 + 2);
    v187 = *(v384 + 3);
    if (v60 >= v187 >> 1)
    {
      v189 = v390;
      v384 = sub_1D87C8F58((v187 > 1), v60 + 1, 1, v384);
      v175 = v189;
    }

    v177 = v179 + 1;
    v188 = v384;
    *(v384 + 2) = v60 + 1;
    v188[v60 + 32] = 5;
    if (v375 != v179)
    {
      continue;
    }

    break;
  }

LABEL_95:

  v201 = sub_1D8846D18(5u, v384);

  v78 = v380;
  v202 = v388;
  if (v201)
  {
    v203 = sub_1D891A6E8();
    v204 = v203;
    v81 = v369;
    v60 = v371;
    v395 = *(v203 + 16);
    if (v395)
    {
      v392 = *(v364 + 20);
      v394 = (v203 + ((*(v396 + 80) + 32) & ~*(v396 + 80)));
      v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
      v205 = 0;
      v78 = v365 + 56;
      while (v205 < *(v204 + 16))
      {
        sub_1D8A01488(&v394[*(v396 + 72) * v205], v60, type metadata accessor for CVTrackSnapshot);
        v206 = sub_1D8B16910();
        v207 = sub_1D881F7DC();
        if (v208)
        {
          goto LABEL_198;
        }

        v209 = v206 + 8;
        *(v206 + ((v207 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v207;
        *(v206[6] + v207) = 1;
        *(v206[7] + 8 * v207) = 0x3FE999999999999ALL;
        v210 = v206[2];
        v87 = __OFADD__(v210, 1);
        v211 = v210 + 1;
        if (v87)
        {
          goto LABEL_199;
        }

        v206[2] = v211;
        v212 = sub_1D881F7DC();
        if (v213)
        {
          goto LABEL_200;
        }

        *(v209 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v212;
        *(v206[6] + v212) = 12;
        *(v206[7] + 8 * v212) = 0x3FE0000000000000;
        v214 = v206[2];
        v87 = __OFADD__(v214, 1);
        v215 = v214 + 1;
        if (v87)
        {
          goto LABEL_201;
        }

        v206[2] = v215;
        v216 = sub_1D881F7DC();
        if (v217)
        {
          goto LABEL_202;
        }

        *(v209 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v216;
        *(v206[6] + v216) = 13;
        *(v206[7] + 8 * v216) = 0x3FE0000000000000;
        v218 = v206[2];
        v87 = __OFADD__(v218, 1);
        v219 = v218 + 1;
        if (v87)
        {
          goto LABEL_203;
        }

        v206[2] = v219;
        v220 = sub_1D881F7DC();
        if (v221)
        {
          goto LABEL_204;
        }

        *(v209 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v220;
        *(v206[6] + v220) = 5;
        *(v206[7] + 8 * v220) = 0x4020000000000000;
        v222 = v206[2];
        v87 = __OFADD__(v222, 1);
        v223 = v222 + 1;
        if (v87)
        {
          goto LABEL_205;
        }

        v206[2] = v223;
        v224 = 0.1;
        if (v223)
        {
          v225 = sub_1D881F7DC();
          v224 = 0.1;
          if (v226)
          {
            v224 = *(v206[7] + 8 * v225);
          }
        }

        ++v205;

        switch(*&v392[v60] >> 60)
        {
          case 1:
            v239 = type metadata accessor for GroundedParseDetectorResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v239;
            *&v399 = sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for GroundedParseDetectorResult;
            goto LABEL_124;
          case 2:
            v228 = swift_projectBox();
            *(&v398 + 1) = v202;
            *&v399 = sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for MetaDetectionResult;
            goto LABEL_124;
          case 3:
          case 8:
            v227 = type metadata accessor for ObjectDetectorResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v227;
            *&v399 = sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for ObjectDetectorResult;
            goto LABEL_124;
          case 4:
            v228 = swift_projectBox();
            *(&v398 + 1) = v381;
            *&v399 = sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for ParseDetectorResult;
            goto LABEL_124;
          case 5:
            v240 = type metadata accessor for TextDetectorResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v240;
            *&v399 = sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for TextDetectorResult;
            goto LABEL_124;
          case 6:
          case 7:
            v231 = type metadata accessor for StreamingBarcodeDetectorResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v231;
            *&v399 = sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for StreamingBarcodeDetectorResult;
            goto LABEL_124;
          case 9:
          case 0xALL:
            v232 = swift_projectBox();
            v233 = v367;
            sub_1D8A01488(v232, v367, type metadata accessor for AFMResult);
            *(&v398 + 1) = v378;
            *&v399 = sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
            v234 = __swift_allocate_boxed_opaque_existential_1(&v397);
            sub_1D8A01550(v233, v234, type metadata accessor for AFMResult);
            break;
          case 0xBLL:
            v235 = type metadata accessor for SyntheticDetectionResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v235;
            *&v399 = sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for SyntheticDetectionResult;
            goto LABEL_124;
          case 0xCLL:
            v236 = type metadata accessor for GroundedParseEmbeddingsResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v236;
            *&v399 = sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for GroundedParseEmbeddingsResult;
            goto LABEL_124;
          case 0xDLL:
            v241 = type metadata accessor for GroundedParseClassificationsResult(0);
            v228 = swift_projectBox();
            *(&v398 + 1) = v241;
            *&v399 = sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
            v229 = __swift_allocate_boxed_opaque_existential_1(&v397);
            v230 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_124:
            sub_1D8A01488(v228, v229, v230);
            break;
          default:
            v237 = swift_projectBox();
            *(&v398 + 1) = v370;
            *&v399 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
            v238 = __swift_allocate_boxed_opaque_existential_1(&v397);
            sub_1D87A0E38(v237, v238, &qword_1ECA67750, &unk_1D8B1E0C0);
            break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
        v242 = swift_dynamicCast();
        v243 = *v78;
        if (v242)
        {
          v243(v81, 0, 1, v202);
          v244 = v383;
          sub_1D8A01550(v81, v383, type metadata accessor for MetaDetectionResult);
          if (*v244 == 5 && ((v391 & 1) == 0 || *&v244[v202[8]] == v69))
          {
            v245 = v244;
            v246 = v202[9];
            if (v244[v246] == 2 && v69 - *&v244[v202[8]] > v224 || (CVBundle.latestEstimate.getter(&v405), v404 = v405, CVDetection.detection.getter(&v401), v80 = v402, v247 = v403, __swift_project_boxed_opaque_existential_1(&v401, v402), v248 = *(v247 + 64), v249 = v247, v202 = v388, v248(&v397, v80, v249), __swift_destroy_boxed_opaque_existential_1(&v401), Corners.bounds.getter(), v251 = v250, v253 = v252, v255 = v254, v257 = v256, v81 = v369, , v419.origin.x = 0.0, v419.origin.y = 0.0, v419.size.width = 1.0, v419.size.height = 1.0, v413.origin.x = v251, v413.origin.y = v253, v413.size.width = v255, v413.size.height = v257, v414 = CGRectIntersection(v413, v419), v258 = v414.origin.x, v259 = v414.origin.y, v260 = v414.size.width, v261 = v414.size.height, v262 = &v244[v202[5]], *&v414.origin.y = v262[1], v397 = *v262, v398 = *&v414.origin.y, *&v414.origin.y = v262[3], v399 = v262[2], v400 = *&v414.origin.y, Corners.bounds.getter(), v420.origin.x = v258, v420.origin.y = v259, v420.size.width = v260, v420.size.height = v261, v416 = CGRectIntersection(v415, v420), v260 * v261 * 0.9 > v416.size.width * v416.size.height))
            {
              sub_1D8A014F0(v244, type metadata accessor for MetaDetectionResult);
              v60 = v371;
            }

            else
            {
              v263 = v244[v246];
              if (v263 == 3)
              {
                if (qword_1EE0E54C0 != -1)
                {
                  swift_once();
                }

                v264 = sub_1D8B0AAA4();
                v60 = v371;
                if (v264)
                {
                  *&v397 = 0;
                  *(&v397 + 1) = 0xE000000000000000;
                  sub_1D8B16720();

                  *&v397 = 0xD00000000000002FLL;
                  *(&v397 + 1) = 0x80000001D8B43DD0;
                  v336 = v202[10];
                  v337 = &v407;
                  goto LABEL_210;
                }

                sub_1D8A014F0(v383, type metadata accessor for MetaDetectionResult);
                if (v391)
                {
LABEL_164:

                  sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
                  v81 = v372;
                  v78 = v380;
                  a3 = v344;
                  if (v382)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_165;
                }
              }

              else
              {
                sub_1D8A014F0(v245, type metadata accessor for MetaDetectionResult);
                v60 = v371;
                if (v263 == 2)
                {
                  goto LABEL_164;
                }
              }
            }
          }

          else
          {
            sub_1D8A014F0(v244, type metadata accessor for MetaDetectionResult);
          }
        }

        else
        {
          v243(v81, 1, 1, v202);
          sub_1D87A14E4(v81, &qword_1ECA64BB8, &qword_1D8B26820);
        }

        sub_1D8A014F0(v60, type metadata accessor for CVTrackSnapshot);
        if (v395 == v205)
        {
          goto LABEL_149;
        }
      }

LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      swift_once();
LABEL_167:
      v307 = sub_1D8B151E0();
      __swift_project_value_buffer(v307, qword_1EE0E4520);
      v308 = v81;
      v309 = v368;
      sub_1D8A01488(v308, v368, type metadata accessor for CVBundle);
      v310 = v342;

      v311 = sub_1D8B151C0();
      v312 = sub_1D8B16200();

      v313 = os_log_type_enabled(v311, v312);
      a3 = v344;
      if (v313)
      {
        v314 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        *&v397 = v396;
        *v314 = 136315906;
        v315 = sub_1D89AC714(v341, v310, &v397);

        *(v314 + 4) = v315;
        *(v314 + 12) = 2080;
        if (v60)
        {
          v316 = 0x7964616572;
        }

        else
        {
          v316 = 0x676E69646E6570;
        }

        if (v60)
        {
          v317 = 0xE500000000000000;
        }

        else
        {
          v317 = 0xE700000000000000;
        }

        v318 = sub_1D89AC714(v316, v317, &v397);

        *(v314 + 14) = v318;
        *(v314 + 22) = 2080;
        if (v382)
        {
          v319 = 0x7964616572;
        }

        else
        {
          v319 = 0x676E69646E6570;
        }

        if (v382)
        {
          v320 = 0xE500000000000000;
        }

        else
        {
          v320 = 0xE700000000000000;
        }

        v321 = sub_1D89AC714(v319, v320, &v397);

        *(v314 + 24) = v321;
        *(v314 + 32) = 2080;
        v322 = v357;
        sub_1D8A01488(v368, v357, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v323 = v379;
          v324 = *(v379 + 32);
          v325 = v359;
          v326 = v322;
          v327 = v376;
          v324(v359, v326, v376);
        }

        else
        {
          v329 = v360;
          sub_1D8A01550(v322, v360, type metadata accessor for CVTrackSnapshot);
          v323 = v379;
          v325 = v359;
          v327 = v376;
          (*(v379 + 16))(v359, v329, v376);
          sub_1D8A014F0(v329, type metadata accessor for CVTrackSnapshot);
          v324 = *(v323 + 32);
        }

        a3 = v344;
        v330 = v358;
        v324(v358, v325, v327);
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v331 = sub_1D8B16B50();
        v333 = v332;
        (*(v323 + 8))(v330, v327);
        sub_1D8A014F0(v368, type metadata accessor for CVBundle);
        v334 = sub_1D89AC714(v331, v333, &v397);

        *(v314 + 34) = v334;
        _os_log_impl(&dword_1D8783000, v311, v312, "blockingReason: .upstreamWork required for %s: text: %s, parse: %s (bundle: %s)", v314, 0x2Au);
        v335 = v396;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v335, -1, -1);
        MEMORY[0x1DA721330](v314, -1, -1);

        v328 = v380;
      }

      else
      {

        sub_1D8A014F0(v309, type metadata accessor for CVBundle);
        v328 = v78;
      }

      sub_1D87A14E4(v328, &qword_1ECA67750, &unk_1D8B1E0C0);

LABEL_186:
      v173 = xmmword_1D8B26640;
LABEL_64:
      *a3 = v173;
LABEL_65:
      v174 = 2;
      goto LABEL_66;
    }

LABEL_149:

    LODWORD(v60) = 0;
    v81 = v372;
    v78 = v380;
LABEL_166:
    if (qword_1EE0E4518 != -1)
    {
      goto LABEL_206;
    }

    goto LABEL_167;
  }

  a3 = v344;
  v81 = v372;
  if (!v382)
  {
LABEL_165:
    LODWORD(v60) = 1;
    goto LABEL_166;
  }

LABEL_143:
  LOBYTE(v397) = v350;
  v265 = v352;
  sub_1D89ED8A0(v81, v352);
  v266 = (*(v351 + 48))(v265, 1, v377);
  v267 = v376;
  if (v266 == 1)
  {
    sub_1D87A14E4(v265, &qword_1ECA650B8, &unk_1D8B281D0);
    v268 = v379;
    v269 = v342;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v270 = sub_1D8B151E0();
    __swift_project_value_buffer(v270, qword_1EE0E4520);
    v271 = v349;
    sub_1D8A01488(v81, v349, type metadata accessor for CVBundle);

    v272 = sub_1D8B151C0();
    v273 = sub_1D8B161F0();

    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      *&v397 = v396;
      *v274 = 136315394;
      v275 = sub_1D89AC714(v341, v269, &v397);

      *(v274 + 4) = v275;
      *(v274 + 12) = 2080;
      v276 = v346;
      sub_1D8A01488(v271, v346, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v277 = v276;
        v278 = *(v268 + 32);
        v279 = v347;
        v278(v347, v277, v267);
      }

      else
      {
        v298 = v276;
        v299 = v360;
        sub_1D8A01550(v298, v360, type metadata accessor for CVTrackSnapshot);
        v279 = v347;
        (*(v268 + 16))(v347, v299, v267);
        sub_1D8A014F0(v299, type metadata accessor for CVTrackSnapshot);
        v278 = *(v268 + 32);
      }

      v300 = v345;
      v278(v345, v279, v267);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v301 = sub_1D8B16B50();
      v303 = v302;
      (*(v268 + 8))(v300, v267);
      sub_1D8A014F0(v349, type metadata accessor for CVBundle);
      v304 = sub_1D89AC714(v301, v303, &v397);

      *(v274 + 14) = v304;
      _os_log_impl(&dword_1D8783000, v272, v273, "Expected to find a parse child of %s but didn't get one (bundle: %s)", v274, 0x16u);
      v305 = v396;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v305, -1, -1);
      MEMORY[0x1DA721330](v274, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v271, type metadata accessor for CVBundle);
    }

    sub_1D87A14E4(v78, &qword_1ECA67750, &unk_1D8B1E0C0);

    v306 = v344;
    *v344 = 0;
    v306[1] = 0;
    *(v306 + 16) = 2;
    return;
  }

  sub_1D87A14E4(v78, &qword_1ECA67750, &unk_1D8B1E0C0);
  v297 = v348;
  sub_1D8A01550(v265, v348, type metadata accessor for GenericParseDataResult);
  v141 = v374;
  sub_1D8A01550(v297, v374, type metadata accessor for GenericParseDataResult);

LABEL_52:
  v157 = v373;
  if (v391)
  {

    CVBundle.workState.getter(&v397);
    sub_1D8A014F0(v141, type metadata accessor for GenericParseDataResult);
    if (v397 != 2)
    {
      goto LABEL_186;
    }
  }

  else
  {
    v158 = v342;
    if (*(v141 + *(v377 + 32)) != 1)
    {
      v190 = v379;
      if (qword_1EE0E4518 != -1)
      {
        swift_once();
      }

      v191 = sub_1D8B151E0();
      __swift_project_value_buffer(v191, qword_1EE0E4520);
      v192 = v363;
      sub_1D8A01488(v81, v363, type metadata accessor for CVBundle);

      v193 = sub_1D8B151C0();
      v194 = sub_1D8B16200();

      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        v396 = swift_slowAlloc();
        *&v397 = v396;
        *v195 = 136315394;
        v196 = sub_1D89AC714(v341, v158, &v397);

        *(v195 + 4) = v196;
        *(v195 + 12) = 2080;
        v197 = v354;
        sub_1D8A01488(v192, v354, type metadata accessor for CVBundle.BundleType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v198 = v197;
          v199 = *(v190 + 32);
          v200 = v376;
          v199(v157, v198, v376);
        }

        else
        {
          v288 = v197;
          v289 = v360;
          sub_1D8A01550(v288, v360, type metadata accessor for CVTrackSnapshot);
          v200 = v376;
          (*(v190 + 16))(v157, v289, v376);
          sub_1D8A014F0(v289, type metadata accessor for CVTrackSnapshot);
          v199 = *(v190 + 32);
        }

        v290 = v157;
        a3 = v344;
        v291 = v356;
        v199(v356, v290, v200);
        sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v292 = sub_1D8B16B50();
        v294 = v293;
        (*(v190 + 8))(v291, v200);
        sub_1D8A014F0(v363, type metadata accessor for CVBundle);
        v295 = sub_1D89AC714(v292, v294, &v397);

        *(v195 + 14) = v295;
        _os_log_impl(&dword_1D8783000, v193, v194, ".awaitingMoreFrames required for %s (bundle: %s)", v195, 0x16u);
        v296 = v396;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v296, -1, -1);
        MEMORY[0x1DA721330](v195, -1, -1);
      }

      else
      {

        sub_1D8A014F0(v192, type metadata accessor for CVBundle);
      }

      sub_1D8A014F0(v141, type metadata accessor for GenericParseDataResult);
      *a3 = 0;
      a3[1] = 0;
      goto LABEL_65;
    }

    v159 = v379;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v160 = sub_1D8B151E0();
    __swift_project_value_buffer(v160, qword_1EE0E4520);
    v161 = v362;
    sub_1D8A01488(v81, v362, type metadata accessor for CVBundle);

    v162 = sub_1D8B151C0();
    v163 = sub_1D8B16200();

    v164 = os_log_type_enabled(v162, v163);
    v165 = v361;
    if (v164)
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      *&v397 = v167;
      *v166 = 136315394;
      v168 = sub_1D89AC714(v341, v158, &v397);

      *(v166 + 4) = v168;
      *(v166 + 12) = 2080;
      v169 = v353;
      sub_1D8A01488(v161, v353, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v170 = v169;
        v171 = *(v159 + 32);
        v172 = v376;
        v171(v165, v170, v376);
      }

      else
      {
        v280 = v169;
        v281 = v360;
        sub_1D8A01550(v280, v360, type metadata accessor for CVTrackSnapshot);
        v172 = v376;
        (*(v159 + 16))(v165, v281, v376);
        sub_1D8A014F0(v281, type metadata accessor for CVTrackSnapshot);
        v171 = *(v159 + 32);
      }

      v282 = v165;
      v283 = v355;
      v171(v355, v282, v172);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v284 = sub_1D8B16B50();
      v286 = v285;
      (*(v159 + 8))(v283, v172);
      sub_1D8A014F0(v362, type metadata accessor for CVBundle);
      v287 = sub_1D89AC714(v284, v286, &v397);

      *(v166 + 14) = v287;
      _os_log_impl(&dword_1D8783000, v162, v163, "No BlockingReason found for %s (bundle: %s)", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v167, -1, -1);
      MEMORY[0x1DA721330](v166, -1, -1);

      sub_1D8A014F0(v141, type metadata accessor for GenericParseDataResult);
      a3 = v344;
    }

    else
    {

      sub_1D8A014F0(v161, type metadata accessor for CVBundle);
      sub_1D8A014F0(v141, type metadata accessor for GenericParseDataResult);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v174 = -1;
LABEL_66:
  *(a3 + 16) = v174;
}

BOOL sub_1D89F3578(uint64_t a1)
{
  v2 = sub_1D8B138D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A01488(a1, v11, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 8))(v11, v12);
    return 0;
  }

  sub_1D8A014F0(v11, type metadata accessor for CVBundle.BundleType);
  CVBundle.latestEstimate.getter(&v19);
  v14 = v19 >> 60;
  if (v19 >> 60 == 4 || v14 == 1)
  {

    return 1;
  }

  else
  {
    if (v14)
    {

      return 0;
    }

    v15 = swift_projectBox();
    sub_1D87A0E38(v15, v8, &qword_1ECA67750, &unk_1D8B1E0C0);
    v16 = sub_1D89F3840();
    sub_1D89F3968(v16, v5);

    sub_1D87A14E4(v8, &qword_1ECA67750, &unk_1D8B1E0C0);
    v17 = (*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E0390];
    (*(v3 + 8))(v5, v2);

    return v17;
  }
}

uint64_t sub_1D89F3840()
{
  v0 = sub_1D88F8978();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    result = sub_1D87F3F54(0, v1, 0);
    v3 = 0;
    v4 = 32;
    v5 = v12;
    while (v3 < *(v0 + 16))
    {
      result = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v13 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_1D87F3F54((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v5 = v13;
      }

      ++v3;
      *(v5 + 16) = v8 + 1;
      v9 = v5 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      v4 += 8;
      if (v1 == v3)
      {

        return v5;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D89F3968(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v43 = sub_1D8B13990();
  v35 = *(v43 - 8);
  v3 = MEMORY[0x1EEE9AC00](v43);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = sub_1D8B138D0();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1E69E7CD0];
  v11 = *(a1 + 16);
  if (v11)
  {
    LODWORD(v41) = 0;
    v12 = 0;
    v45 = (v36 + 88);
    v47 = *MEMORY[0x1E69E0390];
    v44 = (v36 + 8);
    v33 = (v36 + 96);
    v13 = v35 + 16;
    v14 = a1 + 40;
    v46 = v8;
    v32 = a1 + 40;
    v42 = (v35 + 8);
    while (2)
    {
      v15 = v14 + 16 * v12;
      while (1)
      {
        if (v12 >= v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        if (__OFADD__(v12, 1))
        {
          goto LABEL_25;
        }

        v48 = v12 + 1;

        v8 = v46;
        sub_1D8B15A20();
        v16 = (*v45)(v10, v8);
        if (v16 == v47)
        {
          break;
        }

        (*v44)(v10, v8);

        ++v12;
        v15 += 16;
        if (v48 == v11)
        {
          if ((v41 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }
      }

      (*v33)(v10, v8);
      v17 = *v10;
      v18 = *(*v10 + 16);
      if (v18)
      {
        v31 = v10;
        v19 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v30 = v17;
        v20 = v17 + v19;
        v21 = *(v35 + 72);
        v40 = *(v35 + 16);
        v41 = v21;
        v22 = v43;
        v38 = v7;
        v39 = v5;
        v37 = v13;
        do
        {
          v23 = v39;
          v40(v39, v20, v22);
          v24 = v38;
          sub_1D87FD3AC(v38, v23);
          v22 = v43;
          (*v42)(v24, v43);
          v20 += v41;
          --v18;
        }

        while (v18);

        v10 = v31;
      }

      else
      {
      }

      LODWORD(v41) = 1;
      v12 = v48;
      v14 = v32;
      if (v48 != v11)
      {
        continue;
      }

      break;
    }

LABEL_17:
    v25 = v50;
    v26 = *(v50 + 16);
    if (v26)
    {
      v8 = sub_1D87F3A68(*(v50 + 16), 0);
      v27 = sub_1D8817A64(&v49, (v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80))), v26, v25);
      v28 = v49;

      sub_1D87977A0(v28);
      if (v27 != v26)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v29 = v34;
    *v34 = v8;
    (*(v36 + 104))(v29, v47, v46);
  }

  else
  {
LABEL_20:
    (*(v36 + 104))(v34, *MEMORY[0x1E69E0388], v8);
  }
}

uint64_t sub_1D89F3DC4(uint64_t a1, _OWORD *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v197 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v199 = &v189 - v8;
  v198 = type metadata accessor for CVTrackSnapshot(0);
  v196 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v203 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v209);
  v200 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v195 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v204 = &v189 - v14;
  v210 = sub_1D8B13240();
  v212 = *(v210 - 8);
  v15 = MEMORY[0x1EEE9AC00](v210);
  v201 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v202 = &v189 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v205 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v206 = &v189 - v21;
  v22 = type metadata accessor for CVBundle(0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v211 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v208 = &v189 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v207 = &v189 - v27;
  v28 = sub_1D8B13990();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v189 - v33;
  v35 = sub_1D8B138D0();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = (&v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v216 = &v189 - v40;
  v41 = a2[3];
  v225[2] = a2[2];
  v225[3] = v41;
  v225[4] = a2[4];
  v42 = a2[1];
  v225[0] = *a2;
  v225[1] = v42;
  v43 = *v2;
  LOBYTE(v222) = *v2;
  if (!sub_1D89F3578(a1))
  {
    return MEMORY[0x1E69E7CD0];
  }

  CVBundle.latestEstimate.getter(&v222);
  if (v222 >> 60)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v194 = v43;
  v44 = swift_projectBox();
  v45 = v216;
  sub_1D87A0E38(v44, v216, &qword_1ECA67750, &unk_1D8B1E0C0);

  v46 = sub_1D89F3840();
  sub_1D89F3968(v46, v38);

  if ((*(v36 + 88))(v38, v35) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v45, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(v36 + 8))(v38, v35);
    return MEMORY[0x1E69E7CD0];
  }

  v193 = a1;
  (*(v36 + 96))(v38, v35);
  v47 = *v38;
  v48 = *(*v38 + 16);
  v49 = v194;
  if (!v48)
  {
    v192 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v50 = 0;
  v219 = (v29 + 88);
  LODWORD(v218) = *MEMORY[0x1E69E0398];
  LODWORD(v217) = *MEMORY[0x1E69E03A8];
  LODWORD(v215) = *MEMORY[0x1E69E03A0];
  v214 = *MEMORY[0x1E69E03B0];
  v213 = *MEMORY[0x1E69E03B8];
  v51 = v29 + 8;
  v191 = v48 - 1;
  v192 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v52 = v50;
    while (1)
    {
      if (v52 >= *(v47 + 16))
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v53 = v48;
      v54 = *(v29 + 16);
      v54(v34, v47 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v52, v28);
      v54(v32, v34, v28);
      v55 = (*(v29 + 88))(v32, v28);
      if (v55 != v218 && v55 != v217)
      {
        break;
      }

LABEL_7:
      ++v52;
      (*v51)(v34, v28);
      v48 = v53;
      if (v53 == v52)
      {
        v49 = v194;
        goto LABEL_30;
      }
    }

    if (v55 != v215)
    {
      if (v55 != v214 && v55 != v213)
      {
        v188 = 0;
        v187 = 679;
        goto LABEL_101;
      }

      goto LABEL_7;
    }

    (*v51)(v34, v28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1D87C8F58(0, *(v192 + 2) + 1, 1, v192);
    }

    v48 = v53;
    v59 = *(v192 + 2);
    v58 = *(v192 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v190 = v59 + 1;
      v62 = sub_1D87C8F58((v58 > 1), v59 + 1, 1, v192);
      v60 = v190;
      v48 = v53;
      v192 = v62;
    }

    v50 = v52 + 1;
    v61 = v192;
    *(v192 + 2) = v60;
    v61[v59 + 32] = 5;
    v49 = v194;
    if (v191 != v52)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v64 = sub_1D87C4904(v192);

  v65 = sub_1D8A50334(&unk_1F5427E28);
  v66 = sub_1D8917554(v65, v64);
  MEMORY[0x1EEE9AC00](v66);
  v51 = v193;
  *(&v189 - 4) = v193;
  *(&v189 - 24) = v49;
  v187 = v225;

  v67 = sub_1D88C02DC(sub_1D8A02478, (&v189 - 6), v66);
  v68 = v67[2];
  if (v68)
  {
    v219 = sub_1D87F3998(v67[2], 0);
    v69 = sub_1D881F7B0();
    v70 = v222;

    sub_1D87977A0(v70);
    if (v69 != v68)
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
LABEL_33:
    v219 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE0E4518 != -1)
  {
LABEL_98:
    swift_once();
  }

  v71 = sub_1D8B151E0();
  v72 = __swift_project_value_buffer(v71, qword_1EE0E4520);
  v73 = v51;
  v74 = v207;
  sub_1D8A01488(v73, v207, type metadata accessor for CVBundle);

  v75 = sub_1D8B151C0();
  v76 = sub_1D8B16200();

  v77 = os_log_type_enabled(v75, v76);
  v218 = v72;
  if (v77)
  {
    LODWORD(v217) = v76;
    v78 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v222 = v215;
    *v78 = 136315650;
    sub_1D87C4938();
    v79 = sub_1D8B16040();
    v81 = v80;

    v82 = sub_1D89AC714(v79, v81, &v222);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    v83 = sub_1D8B16040();
    v85 = v84;

    v86 = sub_1D89AC714(v83, v85, &v222);

    *(v78 + 14) = v86;
    *(v78 + 22) = 2080;
    v87 = v204;
    sub_1D8A01488(v74, v204, type metadata accessor for CVBundle.BundleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v89 = v219;
    if (EnumCaseMultiPayload == 1)
    {
      v90 = v212;
      v91 = *(v212 + 32);
      v92 = v205;
      v93 = v87;
      v94 = v210;
      v91(v205, v93, v210);
    }

    else
    {
      v95 = v203;
      sub_1D8A01550(v87, v203, type metadata accessor for CVTrackSnapshot);
      v90 = v212;
      v92 = v205;
      v94 = v210;
      (*(v212 + 16))(v205, v95, v210);
      sub_1D8A014F0(v95, type metadata accessor for CVTrackSnapshot);
      v91 = *(v90 + 32);
    }

    v96 = v206;
    v91(v206, v92, v94);
    sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v97 = sub_1D8B16B50();
    v99 = v98;
    (*(v90 + 8))(v96, v94);
    sub_1D8A014F0(v74, type metadata accessor for CVBundle);
    v100 = sub_1D89AC714(v97, v99, &v222);

    *(v78 + 24) = v100;
    _os_log_impl(&dword_1D8783000, v75, v217, "detectionRequests: allTypes=%s, neededTypes=%s, bundleId=%s", v78, 0x20u);
    v101 = v215;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v101, -1, -1);
    MEMORY[0x1DA721330](v78, -1, -1);
  }

  else
  {

    sub_1D8A014F0(v74, type metadata accessor for CVBundle);
    v89 = v219;
  }

  v222 = MEMORY[0x1E69E7CC8];
  v102 = v89[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA670F8, &unk_1D8B32010);
  sub_1D8B15760();
  if (!v102)
  {
    v104 = v222;
LABEL_80:
    v148 = v193;
    v149 = v208;
    sub_1D8A01488(v193, v208, type metadata accessor for CVBundle);
    v150 = v211;
    sub_1D8A01488(v148, v211, type metadata accessor for CVBundle);
    v151 = v219;

    v152 = sub_1D8B151C0();
    v153 = sub_1D8B16200();

    v154 = os_log_type_enabled(v152, v153);
    v155 = v210;
    v156 = v212;
    if (v154)
    {
      LODWORD(v218) = v153;
      v157 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v221 = v217;
      *v157 = 136315650;
      v158 = MEMORY[0x1DA71F1E0](v151, &type metadata for CVDetection.DetectionType);
      v160 = v159;

      v161 = sub_1D89AC714(v158, v160, &v221);

      *(v157 + 4) = v161;
      *(v157 + 12) = 2080;
      v162 = v195;
      sub_1D8A01488(v149, v195, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v163 = v196;
        v164 = v197;
        v165 = v198;
        (*(v196 + 56))(v197, 1, 1, v198);
        (*(v156 + 8))(v162, v155);
      }

      else
      {
        v164 = v197;
        sub_1D8A01550(v162, v197, type metadata accessor for CVTrackSnapshot);
        v163 = v196;
        v165 = v198;
        (*(v196 + 56))(v164, 0, 1, v198);
      }

      v166 = v199;
      sub_1D881F6FC(v164, v199, &qword_1ECA63E20, &qword_1D8B22E50);
      if ((*(v163 + 48))(v166, 1, v165) == 1)
      {
        sub_1D87A14E4(v166, &qword_1ECA63E20, &qword_1D8B22E50);
        v167 = 0xE400000000000000;
        v168 = 1701736302;
      }

      else
      {
        v169 = *(v166 + *(v165 + 24));

        sub_1D8A014F0(v166, type metadata accessor for CVTrackSnapshot);
        v220 = v169;
        CVDetection.detection.getter(&v222);
        v170 = v223;
        v171 = v224;
        __swift_project_boxed_opaque_existential_1(&v222, v223);
        v168 = (*(v171 + 72))(v170, v171);
        v167 = v172;
        v150 = v211;
        v156 = v212;

        __swift_destroy_boxed_opaque_existential_1(&v222);
      }

      sub_1D8A014F0(v208, type metadata accessor for CVBundle);
      v173 = sub_1D89AC714(v168, v167, &v221);

      *(v157 + 14) = v173;
      *(v157 + 22) = 2080;
      v174 = v150;
      v175 = v200;
      sub_1D8A01488(v174, v200, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v176 = *(v156 + 32);
        v177 = v201;
        v176(v201, v175, v155);
      }

      else
      {
        v178 = v203;
        sub_1D8A01550(v175, v203, type metadata accessor for CVTrackSnapshot);
        v177 = v201;
        (*(v156 + 16))(v201, v178, v155);
        sub_1D8A014F0(v178, type metadata accessor for CVTrackSnapshot);
        v176 = *(v156 + 32);
      }

      v179 = v202;
      v176(v202, v177, v155);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v180 = sub_1D8B16B50();
      v182 = v181;
      (*(v156 + 8))(v179, v155);
      sub_1D8A014F0(v211, type metadata accessor for CVBundle);
      v183 = sub_1D89AC714(v180, v182, &v221);

      *(v157 + 24) = v183;
      _os_log_impl(&dword_1D8783000, v152, v218, "Making VLU DRQs of type: %s for label: %s, and id: (bundle: %s)", v157, 0x20u);
      v184 = v217;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v184, -1, -1);
      MEMORY[0x1DA721330](v157, -1, -1);

      v148 = v193;
    }

    else
    {

      sub_1D8A014F0(v150, type metadata accessor for CVBundle);
      sub_1D8A014F0(v149, type metadata accessor for CVBundle);
    }

    v185 = v216;
    v186 = sub_1D89E0D80(v148, v225, v104, &unk_1F5426D88);

    sub_1D87A14E4(v185, &qword_1ECA67750, &unk_1D8B1E0C0);
    return v186;
  }

  v103 = (v89 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v104 = v222;
  v51 = 1;
  while (2)
  {
    v106 = *v103++;
    v105 = v106;
    v107 = sub_1D8B16910();
    v108 = byte_1F5426CF8;
    v109 = qword_1F5426D00;
    v110 = sub_1D881F7DC();
    if (v111)
    {
      goto LABEL_93;
    }

    v112 = v107 + 8;
    *(v107 + ((v110 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v110;
    *(v107[6] + v110) = v108;
    *(v107[7] + 8 * v110) = v109;
    v113 = v107[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v115;
    v116 = byte_1F5426D08;
    v117 = qword_1F5426D10;
    v118 = sub_1D881F7DC();
    if (v119)
    {
      goto LABEL_93;
    }

    *(v112 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v118;
    *(v107[6] + v118) = v116;
    *(v107[7] + 8 * v118) = v117;
    v120 = v107[2];
    v114 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v121;
    v122 = byte_1F5426D18;
    v123 = qword_1F5426D20;
    v124 = sub_1D881F7DC();
    if (v125)
    {
      goto LABEL_93;
    }

    *(v112 + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v124;
    *(v107[6] + v124) = v122;
    *(v107[7] + 8 * v124) = v123;
    v126 = v107[2];
    v114 = __OFADD__(v126, 1);
    v127 = v126 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v127;
    v128 = byte_1F5426D28;
    v129 = qword_1F5426D30;
    v130 = sub_1D881F7DC();
    if (v131)
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    *(v112 + ((v130 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v130;
    *(v107[6] + v130) = v128;
    *(v107[7] + 8 * v130) = v129;
    v132 = v107[2];
    v114 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (v114)
    {
      goto LABEL_94;
    }

    v107[2] = v133;
    if (v133)
    {
      v134 = sub_1D881F7DC();
      if (v135)
      {
        v136 = *(v107[7] + 8 * v134);

        goto LABEL_67;
      }
    }

    if (v105 <= 5)
    {
      if (v105 <= 2)
      {
        goto LABEL_66;
      }

      if (v105 == 3)
      {
        v136 = 4.0;
      }

      else
      {
        if (v105 != 4)
        {
          v136 = 1.0;
          goto LABEL_67;
        }

LABEL_66:
        v136 = 10.0;
      }

LABEL_67:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v104;
      v138 = sub_1D881F7DC();
      v140 = v104[2];
      v141 = (v139 & 1) == 0;
      v114 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v114)
      {
        goto LABEL_96;
      }

      v143 = v139;
      if (v104[3] < v142)
      {
        sub_1D8971854(v142, isUniquelyReferenced_nonNull_native);
        v138 = sub_1D881F7DC();
        if ((v143 & 1) != (v144 & 1))
        {
          sub_1D8B16C30();
          __break(1u);
LABEL_99:
          v188 = 0;
          v187 = 243;
          goto LABEL_101;
        }

        goto LABEL_72;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_72:
        v104 = v221;
        if ((v143 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v147 = v138;
        sub_1D89692F4();
        v138 = v147;
        v104 = v221;
        if ((v143 & 1) == 0)
        {
LABEL_73:
          v104[(v138 >> 6) + 8] |= 1 << v138;
          *(v104[6] + v138) = v105;
          *(v104[7] + 8 * v138) = v136;
          v145 = v104[2];
          v114 = __OFADD__(v145, 1);
          v146 = v145 + 1;
          if (v114)
          {
            goto LABEL_97;
          }

          v104[2] = v146;
          if (!--v102)
          {
            goto LABEL_80;
          }

          continue;
        }
      }

      *(v104[7] + 8 * v138) = v136;
      if (!--v102)
      {
        goto LABEL_80;
      }

      continue;
    }

    break;
  }

  if (v105 <= 8)
  {
    if ((v105 - 6) >= 2)
    {
      goto LABEL_99;
    }

    v136 = 60.0;
    goto LABEL_67;
  }

  if ((v105 - 9) < 2)
  {
    v136 = 0.0;
    goto LABEL_67;
  }

  if ((v105 - 12) < 2)
  {
    goto LABEL_66;
  }

  v188 = 0;
  v187 = 245;
LABEL_101:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89F5638(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BB8, &qword_1D8B26820);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v120 - v9;
  *&v122 = COERCE_DOUBLE(type metadata accessor for AFMResult(0));
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v124 = COERCE_DOUBLE(type metadata accessor for MetaDetectionResult(0));
  v11 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CVTrackSnapshot(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *a1;
  v123 = a2;
  v16 = sub_1D891A6E8();
  v17 = v16;
  v130 = *(v16 + 16);
  if (!v130)
  {
LABEL_114:

    return 1;
  }

  v120 = v4;
  v18 = *(a4 + 32);
  v125 = *(a4 + 40);
  v127 = *(v13 + 20);
  v129 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v19 = 0;
  v20 = (v11 + 56);
  v21 = v124;
  v22 = v14;
  v23 = v132;
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
      goto LABEL_118;
    }

    v24 = v17;
    v25 = v22;
    sub_1D8A01488(v129 + *(v22 + 72) * v19, v23, type metadata accessor for CVTrackSnapshot);
    v26 = sub_1D8B16910();
    v27 = byte_1F5426CF8;
    v28 = qword_1F5426D00;
    v29 = sub_1D881F7DC();
    if (v30)
    {
      goto LABEL_116;
    }

    v31 = v26 + 8;
    *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
    *(v26[6] + v29) = v27;
    *(v26[7] + 8 * v29) = v28;
    v32 = v26[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v34;
    v35 = byte_1F5426D08;
    v36 = qword_1F5426D10;
    v37 = sub_1D881F7DC();
    if (v38)
    {
      goto LABEL_116;
    }

    *(v31 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    *(v26[6] + v37) = v35;
    *(v26[7] + 8 * v37) = v36;
    v39 = v26[2];
    v33 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v40;
    v41 = byte_1F5426D18;
    v42 = qword_1F5426D20;
    v43 = sub_1D881F7DC();
    if (v44)
    {
      goto LABEL_116;
    }

    *(v31 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    *(v26[6] + v43) = v41;
    *(v26[7] + 8 * v43) = v42;
    v45 = v26[2];
    v33 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v46;
    v47 = byte_1F5426D28;
    v48 = qword_1F5426D30;
    v49 = sub_1D881F7DC();
    if (v50)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_125;
    }

    *(v31 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    *(v26[6] + v49) = v47;
    *(v26[7] + 8 * v49) = v48;
    v51 = v26[2];
    v33 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v33)
    {
      goto LABEL_117;
    }

    v26[2] = v52;
    v53 = v133;
    if (v52)
    {
      v54 = sub_1D881F7DC();
      if (v55)
      {
        v56 = *(v26[7] + 8 * v54);

        v23 = v132;
        goto LABEL_30;
      }
    }

    v23 = v132;
    if (v53 > 5)
    {
      if (v53 > 8)
      {
        if ((v53 - 9) < 2)
        {
          v56 = 0.0;
          goto LABEL_30;
        }

        if ((v53 - 12) >= 2)
        {
          goto LABEL_125;
        }

        goto LABEL_29;
      }

      if ((v53 - 6) >= 2)
      {
        goto LABEL_125;
      }

      v56 = 60.0;
    }

    else
    {
      if (v53 <= 2)
      {
        goto LABEL_29;
      }

      if (v53 != 3)
      {
        if (v53 != 4)
        {
          v56 = 1.0;
          goto LABEL_30;
        }

LABEL_29:
        v56 = 10.0;
        goto LABEL_30;
      }

      v56 = 4.0;
    }

LABEL_30:
    ++v19;
    v57 = 1.0 / v56;
    switch(*(v23 + v127) >> 60)
    {
      case 1:
        *&v71 = COERCE_DOUBLE(type metadata accessor for GroundedParseDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v71;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_42;
      case 2:
        v59 = swift_projectBox();
        v141 = *&v21;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for MetaDetectionResult;
        goto LABEL_42;
      case 3:
      case 8:
        *&v58 = COERCE_DOUBLE(type metadata accessor for ObjectDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v58;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_42;
      case 4:
        *&v72 = COERCE_DOUBLE(type metadata accessor for ParseDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v72;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for ParseDetectorResult;
        goto LABEL_42;
      case 5:
        *&v73 = COERCE_DOUBLE(type metadata accessor for TextDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v73;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for TextDetectorResult;
        goto LABEL_42;
      case 6:
      case 7:
        *&v62 = COERCE_DOUBLE(type metadata accessor for StreamingBarcodeDetectorResult(0));
        v59 = swift_projectBox();
        v141 = *&v62;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_42;
      case 9:
      case 0xALL:
        v63 = swift_projectBox();
        v64 = v121;
        sub_1D8A01488(v63, v121, type metadata accessor for AFMResult);
        v141 = *&v122;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult));
        v65 = __swift_allocate_boxed_opaque_existential_1(&v138);
        sub_1D8A01550(v64, v65, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        *&v66 = COERCE_DOUBLE(type metadata accessor for SyntheticDetectionResult(0));
        v59 = swift_projectBox();
        v141 = *&v66;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_42;
      case 0xCLL:
        *&v67 = COERCE_DOUBLE(type metadata accessor for GroundedParseEmbeddingsResult(0));
        v59 = swift_projectBox();
        v141 = *&v67;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_42;
      case 0xDLL:
        *&v74 = COERCE_DOUBLE(type metadata accessor for GroundedParseClassificationsResult(0));
        v59 = swift_projectBox();
        v141 = *&v74;
        v142 = COERCE_DOUBLE(sub_1D8A011DC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult));
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v61 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_42:
        sub_1D8A01488(v59, boxed_opaque_existential_1, v61);
        break;
      default:
        *&v68 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0));
        v69 = swift_projectBox();
        v141 = *&v68;
        v142 = COERCE_DOUBLE(sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>));
        v70 = __swift_allocate_boxed_opaque_existential_1(&v138);
        v21 = v124;
        sub_1D87A0E38(v69, v70, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    v22 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v75 = v131;
    v76 = swift_dynamicCast();
    v77 = *v20;
    if ((v76 & 1) == 0)
    {
      v77(v75, 1, 1, v21);
      sub_1D87A14E4(v75, &qword_1ECA64BB8, &qword_1D8B26820);
LABEL_4:
      v17 = v24;
      goto LABEL_5;
    }

    v77(v75, 0, 1, v21);
    v78 = v75;
    v79 = v126;
    sub_1D8A01550(v78, v126, type metadata accessor for MetaDetectionResult);
    if (*v79 != v133 || (v125 & 1) != 0 && *&v79[v21[8]] != v18)
    {
      sub_1D8A014F0(v79, type metadata accessor for MetaDetectionResult);
      goto LABEL_4;
    }

    v80 = v21[9];
    if (v79[v80] == 2 && v18 - *&v79[v21[8]] > v57)
    {
      goto LABEL_102;
    }

    CVBundle.latestEstimate.getter(&v146);
    v137 = v146;
    CVDetection.detection.getter(v134);
    v81 = v135;
    v82 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    v83 = *(v82 + 64);
    v84 = v81;
    v22 = v25;
    v85 = v82;
    v21 = v124;
    v83(&v138, v84, v85);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v79 = v126;

    v86 = v138;
    v87 = v139;
    if (v140 >= v138)
    {
      v88 = v138;
    }

    else
    {
      v88 = v140;
    }

    if (v142 < v88)
    {
      v88 = v142;
    }

    if (v144 < v88)
    {
      v88 = v144;
    }

    if (v141 >= v139)
    {
      v89 = v139;
    }

    else
    {
      v89 = v141;
    }

    if (v143 < v89)
    {
      v89 = v143;
    }

    if (v145 < v89)
    {
      v89 = v145;
    }

    if (v138 <= v140)
    {
      v86 = v140;
    }

    if (v86 <= v142)
    {
      v86 = v142;
    }

    if (v86 <= v144)
    {
      v86 = v144;
    }

    if (v139 <= v141)
    {
      v87 = v141;
    }

    if (v87 <= v143)
    {
      v87 = v143;
    }

    if (v87 <= v145)
    {
      v87 = v145;
    }

    v90 = v86 - v88;
    v91 = v87 - v89;
    v149.origin.x = 0.0;
    v149.origin.y = 0.0;
    v149.size.width = 1.0;
    v149.size.height = 1.0;
    v147 = CGRectIntersection(*&v88, v149);
    x = v147.origin.x;
    y = v147.origin.y;
    width = v147.size.width;
    height = v147.size.height;
    v96 = &v79[v21[5]];
    v97 = *v96;
    v98 = v96[1];
    v99 = v96[2];
    v100 = v96[3];
    v101 = v96[4];
    v102 = v96[5];
    v103 = v96[6];
    v104 = v96[7];
    if (v99 >= *v96)
    {
      v105 = *v96;
    }

    else
    {
      v105 = v96[2];
    }

    if (v101 < v105)
    {
      v105 = v96[4];
    }

    if (v103 < v105)
    {
      v105 = v96[6];
    }

    if (v100 >= v98)
    {
      v106 = v96[1];
    }

    else
    {
      v106 = v96[3];
    }

    if (v102 < v106)
    {
      v106 = v96[5];
    }

    if (v104 < v106)
    {
      v106 = v96[7];
    }

    if (v97 <= v99)
    {
      v97 = v96[2];
    }

    if (v97 <= v101)
    {
      v97 = v96[4];
    }

    if (v97 <= v103)
    {
      v97 = v96[6];
    }

    if (v98 <= v100)
    {
      v98 = v96[3];
    }

    if (v98 <= v102)
    {
      v98 = v96[5];
    }

    if (v98 <= v104)
    {
      v98 = v96[7];
    }

    v107 = v97 - v105;
    v108 = v98 - v106;
    v109 = width;
    v110 = height;
    v148 = CGRectIntersection(*&v105, *&x);
    if (width * height * 0.9 > v148.size.width * v148.size.height)
    {
LABEL_102:
      sub_1D8A014F0(v79, type metadata accessor for MetaDetectionResult);
      v17 = v24;
      v23 = v132;
      goto LABEL_5;
    }

    v111 = v79;
    v112 = v79[v80];
    if (v112 == 3)
    {
      break;
    }

    sub_1D8A014F0(v111, type metadata accessor for MetaDetectionResult);
    v114 = v112 == 2;
    v17 = v24;
    v23 = v132;
    if (v114)
    {
LABEL_115:

      sub_1D8A014F0(v23, type metadata accessor for CVTrackSnapshot);
      return 0;
    }

LABEL_5:
    sub_1D8A014F0(v23, type metadata accessor for CVTrackSnapshot);
    if (v130 == v19)
    {
      goto LABEL_114;
    }
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v113 = sub_1D8B0AAA4();
  v23 = v132;
  if ((v113 & 1) == 0)
  {
    sub_1D8A014F0(v126, type metadata accessor for MetaDetectionResult);
    v17 = v24;
    if (v125)
    {
      goto LABEL_115;
    }

    goto LABEL_5;
  }

  v138 = 0.0;
  v139 = -2.68156159e154;
  sub_1D8B16720();

  v138 = -2.31584178e77;
  v139 = COERCE_DOUBLE(0x80000001D8B46C70);
  LOBYTE(v134[0]) = v133;
  v116 = CVDetection.DetectionType.description.getter();
  MEMORY[0x1DA71EFA0](v116);

  MEMORY[0x1DA71EFA0](0xD000000000000019, 0x80000001D8B46C90);
  v117 = &v126[v21[10]];
  if (v117[1])
  {
    v118 = *v117;
    v119 = v117[1];
  }

  else
  {
    v119 = 0xEF6E65766967206ELL;
    v118 = 0x6F73616572206F6ELL;
  }

  MEMORY[0x1DA71EFA0](v118, v119);

LABEL_125:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D89F66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 344) = a2;
  *(v5 + 352) = a3;
  *(v5 + 336) = a1;
  type metadata accessor for CVTrackSnapshot(0);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = type metadata accessor for CVBundle.BundleType(0);
  *(v5 + 376) = swift_task_alloc();
  v9 = sub_1D8B13240();
  *(v5 + 384) = v9;
  *(v5 + 392) = *(v9 - 8);
  *(v5 + 400) = swift_task_alloc();
  *(v5 + 408) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v5 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  v10 = type metadata accessor for VisualLookupClassifier.Result(0);
  *(v5 + 496) = v10;
  *(v5 + 504) = *(v10 - 8);
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  v11 = swift_task_alloc();
  *(v5 + 528) = v11;
  v12 = *(a4 + 16);
  *(v5 + 304) = *a4;
  *(v5 + 320) = v12;
  v13 = *(a4 + 32);
  *(v5 + 536) = v13;
  v14 = *(a4 + 56);
  *(v5 + 208) = *(a4 + 40);
  *(v5 + 224) = v14;
  *(v5 + 240) = *(a4 + 72);
  *(v5 + 256) = *(a4 + 88);
  v15 = *v4;
  *(v5 + 570) = *v4;
  *(v5 + 568) = v15;
  v16 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v16;
  *(v5 + 48) = v13;
  *(v5 + 56) = *(a4 + 40);
  *(v5 + 72) = *(a4 + 56);
  *(v5 + 88) = *(a4 + 72);
  *(v5 + 104) = *(a4 + 88);
  v17 = swift_task_alloc();
  *(v5 + 544) = v17;
  *v17 = v5;
  v17[1] = sub_1D89F6A20;

  return sub_1D89F7944(v11, a2, a3, v5 + 16);
}

uint64_t sub_1D89F6A20()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89F6B1C, 0, 0);
}

uint64_t sub_1D89F6B1C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v2 + 36);
  sub_1D8A01488(v1 + v3, *(v0 + 488), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (!swift_getEnumCaseMultiPayload())
  {
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 496);
    v21 = *(v0 + 504);
    v22 = *(v0 + 488);
    v23 = *(v0 + 336);
    v25 = *v22;
    v24 = v22[1];
    sub_1D8A01488(v19, v23, type metadata accessor for VisualLookupClassifier.Result);
    (*(v21 + 56))(v23, 0, 1, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D8B16720();

    MEMORY[0x1DA71EFA0](v25, v24);

    sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result);
    v16 = type metadata accessor for BundleClassification(0);
    v26 = v23 + *(v16 + 20);
    *v26 = 2;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v26 = 0;
    *(v26 + 8) = 0xD000000000000010;
    *(v26 + 16) = 0x80000001D8B46CD0;
    *(v26 + 24) = 128;
    *(v26 + 32) = v18;
    v12 = *(v0 + 536);
    goto LABEL_7;
  }

  v4 = *(v0 + 480);
  sub_1D8A014F0(*(v0 + 488), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(v1 + v3, v4, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1D8A014F0(v4, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (EnumCaseMultiPayload != 1)
  {
    __break(1u);
    return result;
  }

  if (*(v0 + 570) - 2 < 2)
  {
    sub_1D8A01550(*(v0 + 528), *(v0 + 520), type metadata accessor for VisualLookupClassifier.Result);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 2;
LABEL_5:
    v12 = *(v0 + 536);
    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 336);
    sub_1D8A01550(*(v0 + 520), v15, type metadata accessor for VisualLookupClassifier.Result);
    (*(v14 + 56))(v15, 0, 1, v13);
    swift_storeEnumTagMultiPayload();
    v16 = type metadata accessor for BundleClassification(0);
    v17 = v15 + *(v16 + 20);
    *v17 = 2;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v17 = v11;
    *(v17 + 8) = v7;
    *(v17 + 16) = v8;
    *(v17 + 24) = v9;
    *(v17 + 32) = v10;
LABEL_7:
    *(*(v0 + 336) + *(v16 + 24)) = v12;

    v27 = *(v0 + 8);

    return v27();
  }

  if (*(v0 + 570))
  {
    sub_1D8A01488(*(v0 + 352), *(v0 + 432), type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A014F0(*(v0 + 432), type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8B168C0();
    }

    v35 = *(v0 + 496);
    v36 = *(v0 + 504);
    v38 = *(v0 + 440);
    v37 = *(v0 + 448);
    sub_1D881F6FC(*(v0 + 432), v37, &qword_1ECA641B0, &unk_1D8B23AB0);
    sub_1D87A0E38(v37, v38, &qword_1ECA641B0, &unk_1D8B23AB0);
    if ((*(v36 + 48))(v38, 1, v35) == 1)
    {
      v39 = *(v0 + 440);
      sub_1D87A14E4(*(v0 + 448), &qword_1ECA641B0, &unk_1D8B23AB0);
      sub_1D87A14E4(v39, &qword_1ECA641B0, &unk_1D8B23AB0);
    }

    else
    {
      v40 = *(v0 + 512);
      v41 = *(v0 + 472);
      v42 = *(v0 + 448);
      sub_1D8A01550(*(v0 + 440), v40, type metadata accessor for VisualLookupClassifier.Result);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v40) = _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(v41, v40 + *(v2 + 36));
      sub_1D8A014F0(v41, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      sub_1D87A14E4(v42, &qword_1ECA641B0, &unk_1D8B23AB0);
      if (v40)
      {
        v43 = *(v0 + 352);
        v44 = (v43 + *(type metadata accessor for BundleClassification(0) + 20));
        v11 = *v44;
        if (*v44 == 2)
        {
          v45 = *(v0 + 520);
          v46 = *(v0 + 512);
          v9 = v44[3];
          v10 = v44[4];
          v7 = v44[1];
          v8 = v44[2];
          sub_1D8A014F0(*(v0 + 528), type metadata accessor for VisualLookupClassifier.Result);
          sub_1D8A01550(v46, v45, type metadata accessor for VisualLookupClassifier.Result);
          goto LABEL_5;
        }
      }

      sub_1D8A014F0(*(v0 + 512), type metadata accessor for VisualLookupClassifier.Result);
    }
  }

  v28 = *(v0 + 536);
  *(v0 + 569) = *(v0 + 570);
  v29 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v29;
  *(v0 + 144) = v28;
  v30 = *(v0 + 224);
  *(v0 + 152) = *(v0 + 208);
  *(v0 + 168) = v30;
  *(v0 + 184) = *(v0 + 240);
  *(v0 + 200) = *(v0 + 256);
  v31 = swift_task_alloc();
  *(v0 + 552) = v31;
  *v31 = v0;
  v31[1] = sub_1D89F726C;
  v32 = *(v0 + 528);
  v33 = *(v0 + 520);
  v34 = *(v0 + 352);

  return sub_1D89FB3B8(v33, v0 + 264, v32, v34, v0 + 112);
}

uint64_t sub_1D89F726C(double a1)
{
  *(*v1 + 560) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D89F736C, 0, 0);
}

uint64_t sub_1D89F736C()
{
  v44 = v0;
  v41 = *(v0 + 280);
  v42 = *(v0 + 264);
  v1 = *(v0 + 296);
  sub_1D8A01488(*(v0 + 520) + *(*(v0 + 496) + 36), *(v0 + 464), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = *(v0 + 464);
    sub_1D8A014F0(*(v0 + 528), type metadata accessor for VisualLookupClassifier.Result);
    v16 = type metadata accessor for VisualLookupClassifier.Result.SearchState;
LABEL_9:
    v17 = v16;
    v18 = v15;
    goto LABEL_14;
  }

  sub_1D8A014F0(*(v0 + 464), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (v42 == 2)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 416);
    v3 = *(v0 + 344);
    v4 = sub_1D8B151E0();
    __swift_project_value_buffer(v4, qword_1EE0E4520);
    sub_1D8A01488(v3, v2, type metadata accessor for CVBundle);
    v5 = sub_1D8B151C0();
    v6 = sub_1D8B16210();
    if (os_log_type_enabled(v5, v6))
    {
      v40 = v6;
      v7 = *(v0 + 416);
      v8 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      buf = v9;
      *v9 = 136315138;
      sub_1D8A01488(v7, v8, type metadata accessor for CVBundle.BundleType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = *(v0 + 392);
      v11 = *(v0 + 400);
      v13 = *(v0 + 384);
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *(v12 + 32);
        v14(*(v0 + 400), *(v0 + 376), *(v0 + 384));
      }

      else
      {
        v20 = *(v0 + 360);
        sub_1D8A01550(*(v0 + 376), v20, type metadata accessor for CVTrackSnapshot);
        (*(v12 + 16))(v11, v20, v13);
        sub_1D8A014F0(v20, type metadata accessor for CVTrackSnapshot);
        v14 = *(v12 + 32);
      }

      v37 = *(v0 + 528);
      v21 = *(v0 + 408);
      v22 = *(v0 + 416);
      v23 = *(v0 + 392);
      v24 = *(v0 + 384);
      v14(v21, *(v0 + 400), v24);
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1D8B16B50();
      v27 = v26;
      (*(v23 + 8))(v21, v24);
      sub_1D8A014F0(v22, type metadata accessor for CVBundle);
      v28 = sub_1D89AC714(v25, v27, &v43);

      *(buf + 4) = v28;
      _os_log_impl(&dword_1D8783000, v5, v40, ".searchable state is considered an error type in eager mode (bundle id: %s)", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA721330](v38, -1, -1);
      MEMORY[0x1DA721330](buf, -1, -1);

      v17 = type metadata accessor for VisualLookupClassifier.Result;
      v18 = v37;
      goto LABEL_14;
    }

    v15 = *(v0 + 528);
    v19 = *(v0 + 416);

    sub_1D8A014F0(v19, type metadata accessor for CVBundle);
    v16 = type metadata accessor for VisualLookupClassifier.Result;
    goto LABEL_9;
  }

  v18 = *(v0 + 528);
  v17 = type metadata accessor for VisualLookupClassifier.Result;
LABEL_14:
  sub_1D8A014F0(v18, v17);
  v29 = *(v0 + 560);
  v30 = *(v0 + 496);
  v31 = *(v0 + 504);
  v32 = *(v0 + 336);
  sub_1D8A01550(*(v0 + 520), v32, type metadata accessor for VisualLookupClassifier.Result);
  (*(v31 + 56))(v32, 0, 1, v30);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for BundleClassification(0);
  v34 = v32 + *(v33 + 20);
  *v34 = 2;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v34 = v42;
  *(v34 + 16) = v41;
  *(v34 + 32) = v1;
  *(*(v0 + 336) + *(v33 + 24)) = v29;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1D89F7944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a3;
  *(v5 + 216) = a4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  type metadata accessor for CVTrackSnapshot(0);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = type metadata accessor for CVBundle.BundleType(0);
  *(v5 + 240) = swift_task_alloc();
  v7 = sub_1D8B13240();
  *(v5 + 248) = v7;
  *(v5 + 256) = *(v7 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  *(v5 + 280) = swift_task_alloc();
  v8 = sub_1D8B13830();
  *(v5 + 288) = v8;
  *(v5 + 296) = *(v8 - 8);
  *(v5 + 304) = swift_task_alloc();
  v9 = sub_1D8B138B0();
  *(v5 + 312) = v9;
  *(v5 + 320) = *(v9 - 8);
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67138, &qword_1D8B320C8);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67140, &qword_1D8B320D0);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v5 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  type metadata accessor for CVBundle(0);
  *(v5 + 440) = swift_task_alloc();
  *(v5 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650B8, &unk_1D8B281D0);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = type metadata accessor for ParseDetectorResult(0);
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  *(v5 + 488) = swift_task_alloc();
  v10 = type metadata accessor for GenericParseDataResult(0);
  *(v5 + 496) = v10;
  *(v5 + 504) = *(v10 - 8);
  *(v5 + 512) = swift_task_alloc();
  *(v5 + 520) = swift_task_alloc();
  v11 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v11;
  *(v5 + 48) = *(a4 + 32);
  v12 = *(a4 + 40);
  *(v5 + 609) = v12;
  *(v5 + 608) = v12;
  *(v5 + 610) = *v4;

  return MEMORY[0x1EEE6DFA0](sub_1D89F7E50, 0, 0);
}

uint64_t sub_1D89F7E50()
{
  v126 = v0;
  v1 = *(v0 + 609);
  v2 = *(v0 + 488);
  v3 = *(v0 + 216);
  v4 = *(v0 + 200);
  CVBundle.latestEstimate.getter(&v122);
  v5 = v122;
  *(v0 + 528) = v122;
  *(v0 + 56) = v1;
  v6 = *(v3 + 41);
  v7 = *(v3 + 57);
  *(v0 + 88) = *(v3 + 72);
  *(v0 + 73) = v7;
  *(v0 + 57) = v6;
  sub_1D89FD44C(v4, (v0 + 16), v2);
  if (!(v5 >> 60))
  {
    v31 = *(v0 + 496);
    v32 = *(v0 + 504);
    v33 = *(v0 + 456);
    v34 = *(v0 + 200);
    v123 = *(v0 + 610);
    sub_1D89ED8A0(v34, v33);
    v35 = (*(v32 + 48))(v33, 1, v31);
    if (v35 == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D8A01550(*(v0 + 456), *(v0 + 520), type metadata accessor for GenericParseDataResult);
      if (!sub_1D89FD9C4())
      {
        v29 = 0;
        goto LABEL_13;
      }

      *(v0 + 536) = sub_1D8B15E80();
      *(v0 + 544) = sub_1D8B15E70();
      v38 = sub_1D8B15E00();
      v40 = v39;
      v35 = sub_1D89F8BAC;
      v36 = v38;
      v37 = v40;
    }

    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

  if (v5 >> 60 != 4)
  {
    return sub_1D8B168C0();
  }

  v8 = *(v0 + 520);
  v9 = *(v0 + 496);
  v10 = *(v0 + 472);
  v11 = *(v0 + 480);
  v12 = *(v0 + 464);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = swift_projectBox();
  sub_1D8A01488(v15, v11, type metadata accessor for ParseDetectorResult);
  sub_1D8A01488(v11, v10, type metadata accessor for ParseDetectorResult);
  (*(v14 + 16))(v8, v10, v13);
  v16 = *(v10 + v12[9]);
  v17 = *(v10 + v12[7]);
  sub_1D8A01488(v10 + v12[13], v8 + v9[7], type metadata accessor for VisualUnderstandingContainer);
  v18 = v12[11];
  v120 = *(v10 + v12[10]);
  v19 = v12[15];
  v20 = *(v10 + v12[14]);
  v21 = (v10 + v12[12]);
  v23 = *v21;
  v22 = v21[1];
  v25 = *(v10 + v18);
  v24 = *(v10 + v18 + 8);
  v118 = *(v10 + v19);

  sub_1D8A014F0(v10, type metadata accessor for ParseDetectorResult);
  *(v8 + v9[5]) = v16;
  *(v8 + v9[6]) = v17;
  *(v8 + v9[8]) = v120;
  *(v8 + v9[9]) = v20;
  v26 = (v8 + v9[10]);
  *v26 = v23;
  v26[1] = v22;
  v27 = (v8 + v9[11]);
  *v27 = v25;
  v27[1] = v24;
  *(v8 + v9[12]) = v118;
  if (qword_1EE0E91A8 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 480);
  v29 = qword_1EE0ED790;
  sub_1D8A014F0(v28, type metadata accessor for ParseDetectorResult);
  v30 = v29;
LABEL_13:
  sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0, &unk_1D8B23AB0);
  v41 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v112 = *(v0 + 608);
    swift_once();
    v41 = v112;
  }

  v42 = *(v0 + 352);
  v119 = v41;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v41, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v45 = *(v0 + 376);
  if (v44 == 1)
  {
    v46 = *(v0 + 360);
    v47 = *(v0 + 312);
    v48 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138, &qword_1D8B320C8);
    v49 = *(v46 + 48);
    *v45 = 0;
    *(v45 + 8) = 1;
    (*(v48 + 56))(v45 + v49, 1, 1, v47);
  }

  else
  {
    v51 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 312);
    v54 = *(v0 + 320);
    v55 = *(v43 + 48);
    v56 = *(*(v0 + 360) + 48);
    *v51 = *v52;
    *(v51 + 8) = 0;
    (*(v54 + 32))(v51 + v56, &v52[v55], v53);
    (*(v54 + 56))(v51 + v56, 0, 1, v53);
    sub_1D881F6FC(v51, v45, &qword_1ECA67140, &qword_1D8B320D0);
  }

  v57 = *(v0 + 384);
  v58 = *(v0 + 392);
  v59 = *(v0 + 376);
  v60 = *(v0 + 312);
  v61 = *(v0 + 320);
  v117 = *v59;
  v116 = *(v59 + 8);
  sub_1D881F6FC(v59 + *(*(v0 + 360) + 48), v58, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A0E38(v58, v57, &qword_1ECA67148, &qword_1D8B3AFD0);
  if ((*(v61 + 48))(v57, 1, v60) == 1)
  {
    v62 = *(v0 + 384);
    v63 = &qword_1ECA67148;
    v64 = &qword_1D8B3AFD0;
LABEL_25:
    sub_1D87A14E4(v62, v63, v64);
    v74 = *(v0 + 344);
    *v74 = 0xD000000000000029;
    v74[1] = 0x80000001D8B46F30;
    goto LABEL_26;
  }

  v65 = *(v0 + 520);
  v66 = *(v0 + 496);
  v67 = *(v0 + 288);
  v68 = *(v0 + 296);
  v69 = *(v0 + 280);
  v70 = *(*(v0 + 320) + 32);
  v70(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v71 = *(v66 + 28);
  v72 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v65 + *(v72 + 20) + v71, v69, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v68 + 48))(v69, 1, v67) == 1)
  {
    v73 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v63 = &qword_1ECA635E8;
    v64 = &unk_1D8B1F5C0;
    v62 = v73;
    goto LABEL_25;
  }

  v105 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v125[0] = v105;
  v106 = sub_1D89FDC98(v125);
  v107 = *(v0 + 344);
  v108 = *(v0 + 328);
  if (v106)
  {
    v109 = *(v0 + 312);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v70(v107, v108, v109);
    swift_storeEnumTagMultiPayload();
    if (!v29)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v110 = *(v0 + 312);
  v111 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  (*(v111 + 8))(v108, v110);
  *v107 = 0xD000000000000012;
  v107[1] = 0x80000001D8B46F60;
LABEL_26:
  swift_storeEnumTagMultiPayload();
  if (v29)
  {
LABEL_27:
  }

LABEL_28:
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = *(v0 + 256);
  v76 = *(v0 + 264);
  v78 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v79 = *(v77 + 32);
    v79(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    v80 = v29;
  }

  else
  {
    v81 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v81, type metadata accessor for CVTrackSnapshot);
    (*(v77 + 16))(v76, v81, v78);
    v82 = v29;
    sub_1D8A014F0(v81, type metadata accessor for CVTrackSnapshot);
    v79 = *(v77 + 32);
  }

  v83 = *(v0 + 610);
  v84 = *(v0 + 520);
  v85 = *(v0 + 512);
  v87 = *(v0 + 424);
  v86 = *(v0 + 432);
  v79(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v84, v85, type metadata accessor for GenericParseDataResult);
  v124 = v83;
  sub_1D87A0E38(v86, v87, &qword_1ECA641B0, &unk_1D8B23AB0);
  v88 = type metadata accessor for VisualLookupClassifier.Result(0);
  v114 = *(*(v88 - 1) + 48);
  v89 = v114(v87, 1, v88);
  v90 = *(v0 + 424);
  v121 = v29;
  v115 = v79;
  if (v89 == 1)
  {
    sub_1D87A14E4(v90, &qword_1ECA641B0, &unk_1D8B23AB0);
    v91 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v91 = *(v90 + v88[7]);

    sub_1D8A014F0(v90, type metadata accessor for VisualLookupClassifier.Result);
  }

  v92 = *(v0 + 520);
  v93 = *(v0 + 488);
  v94 = *(v0 + 432);
  v95 = *(v0 + 416);
  v96 = *(v0 + 392);
  v113 = sub_1D89ED604(v91);

  sub_1D87A14E4(v96, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A14E4(v93, &qword_1ECA67150, &unk_1D8B39B90);
  sub_1D8A014F0(v92, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v94, v95, &qword_1ECA641B0, &unk_1D8B23AB0);
  v97 = v114(v95, 1, v88);
  v98 = *(v0 + 416);
  if (v97 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0, &unk_1D8B23AB0);
    v99 = 0;
  }

  else
  {
    v99 = *(v98 + v88[8]);

    sub_1D8A014F0(v98, type metadata accessor for VisualLookupClassifier.Result);
  }

  v100 = *(v0 + 512);
  v101 = *(v0 + 344);
  v102 = *(v0 + 192);
  v115(v102, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v100, v102 + v88[5], type metadata accessor for GenericParseDataResult);
  *(v102 + v88[6]) = v121;
  *(v102 + v88[7]) = v113;
  *(v102 + v88[8]) = v99;
  sub_1D8A01550(v101, v102 + v88[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v103 = v102 + v88[10];
  *v103 = v117;
  *(v103 + 8) = v116;
  *(v102 + v88[11]) = v119;

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_1D89F8BAC()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D89F8C44, 0, 0);
}

uint64_t sub_1D89F8C44(__n128 a1)
{
  *(v1 + 552) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89F8CD0, v3, v2);
}

uint64_t sub_1D89F8CD0()
{

  *(v0 + 560) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D89F8D44, 0, 0);
}

uint64_t sub_1D89F8D44(__n128 a1)
{
  *(v1 + 568) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89F8DD0, v3, v2);
}

uint64_t sub_1D89F8DD0()
{
  v1 = v0[70];

  swift_getKeyPath();
  v0[22] = v1;
  sub_1D8A011DC(&qword_1ECA66830, type metadata accessor for LocationsHandler, &protocol conformance descriptor for LocationsHandler);
  sub_1D8B13520();

  v2 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__lastLocationInternal);
  if (v2)
  {
    v3 = v0[70];
    swift_getKeyPath();
    v0[23] = v3;
    v4 = v2;
    sub_1D8B13520();

    v5 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__heading);
    v6 = v5;
    v0[72] = sub_1D89AFE24(v5);

    v7 = sub_1D89F8F54;
  }

  else
  {
    v7 = sub_1D89F996C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D89F8F54()
{
  v83 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 208);
  v3 = *(v0 + 576);
  sub_1D8A01488(v2, v1, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0, &unk_1D8B23AB0);
  v4 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v74 = *(v0 + 608);
    swift_once();
    v4 = v74;
  }

  v5 = *(v0 + 352);
  v80 = v4;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = *(v0 + 376);
  if (v7 == 1)
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138, &qword_1D8B320C8);
    v12 = *(v9 + 48);
    *v8 = 0;
    *(v8 + 8) = 1;
    (*(v11 + 56))(v8 + v12, 1, 1, v10);
  }

  else
  {
    v14 = *(v0 + 368);
    v15 = *(v0 + 352);
    v16 = *(v0 + 312);
    v17 = *(v0 + 320);
    v18 = *(v6 + 48);
    v19 = *(*(v0 + 360) + 48);
    *v14 = *v15;
    *(v14 + 8) = 0;
    (*(v17 + 32))(v14 + v19, &v15[v18], v16);
    (*(v17 + 56))(v14 + v19, 0, 1, v16);
    sub_1D881F6FC(v14, v8, &qword_1ECA67140, &qword_1D8B320D0);
  }

  v20 = *(v0 + 384);
  v21 = *(v0 + 392);
  v22 = *(v0 + 376);
  v23 = *(v0 + 312);
  v24 = *(v0 + 320);
  v79 = *v22;
  v78 = *(v22 + 8);
  sub_1D881F6FC(v22 + *(*(v0 + 360) + 48), v21, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A0E38(v21, v20, &qword_1ECA67148, &qword_1D8B3AFD0);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v25 = *(v0 + 384);
    v26 = &qword_1ECA67148;
    v27 = &qword_1D8B3AFD0;
LABEL_12:
    sub_1D87A14E4(v25, v26, v27);
    v37 = *(v0 + 344);
    *v37 = 0xD000000000000029;
    v37[1] = 0x80000001D8B46F30;
    goto LABEL_13;
  }

  v28 = *(v0 + 520);
  v29 = *(v0 + 496);
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  v32 = *(v0 + 280);
  v33 = *(*(v0 + 320) + 32);
  v33(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v34 = *(v29 + 28);
  v35 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v28 + *(v35 + 20) + v34, v32, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v36 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v26 = &qword_1ECA635E8;
    v27 = &unk_1D8B1F5C0;
    v25 = v36;
    goto LABEL_12;
  }

  v67 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v82[0] = v67;
  v68 = sub_1D89FDC98(v82);
  v69 = *(v0 + 344);
  v70 = *(v0 + 328);
  if (v68)
  {
    v71 = *(v0 + 312);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v33(v69, v70, v71);
    swift_storeEnumTagMultiPayload();
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v72 = *(v0 + 312);
  v73 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  (*(v73 + 8))(v70, v72);
  *v69 = 0xD000000000000012;
  v69[1] = 0x80000001D8B46F60;
LABEL_13:
  swift_storeEnumTagMultiPayload();
  if (v3)
  {
LABEL_14:
  }

LABEL_15:
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  v41 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v42 = *(v40 + 32);
    v42(*(v0 + 264), *(v0 + 240), *(v0 + 248));
    v43 = v3;
  }

  else
  {
    v44 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v44, type metadata accessor for CVTrackSnapshot);
    (*(v40 + 16))(v39, v44, v41);
    v45 = v3;
    sub_1D8A014F0(v44, type metadata accessor for CVTrackSnapshot);
    v42 = *(v40 + 32);
  }

  v46 = *(v0 + 520);
  v47 = *(v0 + 512);
  v49 = *(v0 + 424);
  v48 = *(v0 + 432);
  v42(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v46, v47, type metadata accessor for GenericParseDataResult);
  sub_1D87A0E38(v48, v49, &qword_1ECA641B0, &unk_1D8B23AB0);
  v50 = type metadata accessor for VisualLookupClassifier.Result(0);
  v76 = *(*(v50 - 1) + 48);
  v51 = v76(v49, 1, v50);
  v52 = *(v0 + 424);
  v81 = v3;
  v77 = v42;
  if (v51 == 1)
  {
    sub_1D87A14E4(v52, &qword_1ECA641B0, &unk_1D8B23AB0);
    v53 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v53 = *(v52 + v50[7]);

    sub_1D8A014F0(v52, type metadata accessor for VisualLookupClassifier.Result);
  }

  v54 = *(v0 + 520);
  v55 = *(v0 + 488);
  v56 = *(v0 + 432);
  v57 = *(v0 + 416);
  v58 = *(v0 + 392);
  v75 = sub_1D89ED604(v53);

  sub_1D87A14E4(v58, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A14E4(v55, &qword_1ECA67150, &unk_1D8B39B90);
  sub_1D8A014F0(v54, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v56, v57, &qword_1ECA641B0, &unk_1D8B23AB0);
  v59 = v76(v57, 1, v50);
  v60 = *(v0 + 416);
  if (v59 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0, &unk_1D8B23AB0);
    v61 = 0;
  }

  else
  {
    v61 = *(v60 + v50[8]);

    sub_1D8A014F0(v60, type metadata accessor for VisualLookupClassifier.Result);
  }

  v62 = *(v0 + 512);
  v63 = *(v0 + 344);
  v64 = *(v0 + 192);
  v77(v64, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v62, v64 + v50[5], type metadata accessor for GenericParseDataResult);
  *(v64 + v50[6]) = v81;
  *(v64 + v50[7]) = v75;
  *(v64 + v50[8]) = v61;
  sub_1D8A01550(v63, v64 + v50[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v65 = v64 + v50[10];
  *v65 = v79;
  *(v65 + 8) = v78;
  *(v64 + v50[11]) = v80;

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D89F996C()
{
  v111 = v0;
  if (*(v0 + 608) == 1)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 448);
    v2 = *(v0 + 200);
    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1EE0E4520);
    sub_1D8A01488(v2, v1, type metadata accessor for CVBundle);
    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16230();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 448);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v108 = v9;
      *v8 = 136315138;
      CVBundle.latestEstimate.getter(&v109);
      v110 = v109;
      CVDetection.detection.getter((v0 + 136));
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v10);
      v12 = (*(v11 + 72))(v10, v11);
      v14 = v13;

      sub_1D8A014F0(v7, type metadata accessor for CVBundle);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      v15 = sub_1D89AC714(v12, v14, &v108);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_1D8783000, v4, v5, "%s: wants location but not prompting user for authorization because this is a high resolution still", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA721330](v9, -1, -1);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v7, type metadata accessor for CVBundle);
    }

    sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8B168C0();
    }

    sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0, &unk_1D8B23AB0);
    v31 = *(v0 + 608);
    if (qword_1ECA62270 != -1)
    {
      v100 = *(v0 + 608);
      swift_once();
      v31 = v100;
    }

    v32 = *(v0 + 352);
    v107 = v31;
    sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v31, v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    v35 = *(v0 + 376);
    if (v34 == 1)
    {
      v36 = *(v0 + 360);
      v37 = *(v0 + 312);
      v38 = *(v0 + 320);
      sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138, &qword_1D8B320C8);
      v39 = *(v36 + 48);
      *v35 = 0;
      *(v35 + 8) = 1;
      (*(v38 + 56))(v35 + v39, 1, 1, v37);
    }

    else
    {
      v42 = *(v0 + 368);
      v43 = *(v0 + 352);
      v44 = *(v0 + 312);
      v45 = *(v0 + 320);
      v46 = *(v33 + 48);
      v47 = *(*(v0 + 360) + 48);
      *v42 = *v43;
      *(v42 + 8) = 0;
      (*(v45 + 32))(v42 + v47, &v43[v46], v44);
      (*(v45 + 56))(v42 + v47, 0, 1, v44);
      sub_1D881F6FC(v42, v35, &qword_1ECA67140, &qword_1D8B320D0);
    }

    v48 = *(v0 + 384);
    v49 = *(v0 + 392);
    v50 = *(v0 + 376);
    v51 = *(v0 + 312);
    v52 = *(v0 + 320);
    v106 = *v50;
    v105 = *(v50 + 8);
    sub_1D881F6FC(v50 + *(*(v0 + 360) + 48), v49, &qword_1ECA67148, &qword_1D8B3AFD0);
    sub_1D87A0E38(v49, v48, &qword_1ECA67148, &qword_1D8B3AFD0);
    if ((*(v52 + 48))(v48, 1, v51) == 1)
    {
      v53 = *(v0 + 384);
      v54 = &qword_1ECA67148;
      v55 = &qword_1D8B3AFD0;
    }

    else
    {
      v56 = *(v0 + 520);
      v57 = *(v0 + 496);
      v58 = *(v0 + 288);
      v59 = *(v0 + 296);
      v60 = *(v0 + 280);
      v61 = *(*(v0 + 320) + 32);
      v61(*(v0 + 328), *(v0 + 384), *(v0 + 312));
      v62 = *(v57 + 28);
      v63 = type metadata accessor for VisualUnderstandingContainer(0);
      sub_1D87A0E38(v56 + *(v63 + 20) + v62, v60, &qword_1ECA635E8, &unk_1D8B1F5C0);
      if ((*(v59 + 48))(v60, 1, v58) != 1)
      {
        v94 = *(v0 + 610);
        (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
        LOBYTE(v110) = v94;
        v95 = sub_1D89FDC98(&v110);
        v96 = *(v0 + 344);
        v97 = *(v0 + 328);
        v98 = *(v0 + 312);
        if (v95)
        {
          (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
          v61(v96, v97, v98);
        }

        else
        {
          v99 = *(v0 + 320);
          (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
          (*(v99 + 8))(v97, v98);
          *v96 = 0xD000000000000012;
          v96[1] = 0x80000001D8B46F60;
        }

LABEL_27:
        swift_storeEnumTagMultiPayload();
        sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v68 = *(v0 + 256);
        v67 = *(v0 + 264);
        v69 = *(v0 + 248);
        if (EnumCaseMultiPayload == 1)
        {
          v70 = *(v68 + 32);
          v70(*(v0 + 264), *(v0 + 240), *(v0 + 248));
        }

        else
        {
          v71 = *(v0 + 224);
          sub_1D8A01550(*(v0 + 240), v71, type metadata accessor for CVTrackSnapshot);
          (*(v68 + 16))(v67, v71, v69);
          sub_1D8A014F0(v71, type metadata accessor for CVTrackSnapshot);
          v70 = *(v68 + 32);
        }

        v72 = *(v0 + 610);
        v73 = *(v0 + 520);
        v74 = *(v0 + 512);
        v76 = *(v0 + 424);
        v75 = *(v0 + 432);
        v70(*(v0 + 272), *(v0 + 264), *(v0 + 248));
        sub_1D8A01488(v73, v74, type metadata accessor for GenericParseDataResult);
        LOBYTE(v110) = v72;
        sub_1D87A0E38(v75, v76, &qword_1ECA641B0, &unk_1D8B23AB0);
        v77 = type metadata accessor for VisualLookupClassifier.Result(0);
        v103 = *(*(v77 - 1) + 48);
        v78 = v103(v76, 1, v77);
        v79 = *(v0 + 424);
        v104 = v70;
        if (v78 == 1)
        {
          sub_1D87A14E4(v79, &qword_1ECA641B0, &unk_1D8B23AB0);
          v80 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v80 = *(v79 + v77[7]);

          sub_1D8A014F0(v79, type metadata accessor for VisualLookupClassifier.Result);
        }

        v81 = *(v0 + 520);
        v82 = *(v0 + 488);
        v83 = *(v0 + 432);
        v84 = *(v0 + 416);
        v85 = *(v0 + 392);
        v102 = sub_1D89ED604(v80);

        sub_1D87A14E4(v85, &qword_1ECA67148, &qword_1D8B3AFD0);
        sub_1D87A14E4(v82, &qword_1ECA67150, &unk_1D8B39B90);
        sub_1D8A014F0(v81, type metadata accessor for GenericParseDataResult);
        sub_1D881F6FC(v83, v84, &qword_1ECA641B0, &unk_1D8B23AB0);
        v86 = v103(v84, 1, v77);
        v87 = *(v0 + 416);
        if (v86 == 1)
        {
          sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0, &unk_1D8B23AB0);
          v88 = 0;
        }

        else
        {
          v88 = *(v87 + v77[8]);

          sub_1D8A014F0(v87, type metadata accessor for VisualLookupClassifier.Result);
        }

        v89 = *(v0 + 512);
        v90 = *(v0 + 344);
        v91 = *(v0 + 192);
        v104(v91, *(v0 + 272), *(v0 + 248));
        sub_1D8A01550(v89, v91 + v77[5], type metadata accessor for GenericParseDataResult);
        *(v91 + v77[6]) = 0;
        *(v91 + v77[7]) = v102;
        *(v91 + v77[8]) = v88;
        sub_1D8A01550(v90, v91 + v77[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
        v92 = v91 + v77[10];
        *v92 = v106;
        *(v92 + 8) = v105;
        *(v91 + v77[11]) = v107;

        v93 = *(v0 + 8);

        return v93();
      }

      v64 = *(v0 + 280);
      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
      v54 = &qword_1ECA635E8;
      v55 = &unk_1D8B1F5C0;
      v53 = v64;
    }

    sub_1D87A14E4(v53, v54, v55);
    v65 = *(v0 + 344);
    *v65 = 0xD000000000000029;
    v65[1] = 0x80000001D8B46F30;
    goto LABEL_27;
  }

  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 440);
  v17 = *(v0 + 200);
  v18 = sub_1D8B151E0();
  __swift_project_value_buffer(v18, qword_1EE0E4520);
  sub_1D8A01488(v17, v16, type metadata accessor for CVBundle);
  v19 = sub_1D8B151C0();
  v20 = sub_1D8B16210();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 440);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v108 = v24;
    *v23 = 136315138;
    CVBundle.latestEstimate.getter(&v109);
    v110 = v109;
    CVDetection.detection.getter((v0 + 96));
    v25 = *(v0 + 120);
    v26 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v25);
    v27 = (*(v26 + 72))(v25, v26);
    v29 = v28;

    sub_1D8A014F0(v22, type metadata accessor for CVBundle);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    v30 = sub_1D89AC714(v27, v29, &v108);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1D8783000, v19, v20, "%s: wants location but providing nil; prompting user for authorization", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  else
  {

    sub_1D8A014F0(v22, type metadata accessor for CVBundle);
  }

  *(v0 + 584) = sub_1D8B15E70();
  v41 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA77C, v41, v40);
}

uint64_t sub_1D89FA77C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89FA7E4, 0, 0);
}

uint64_t sub_1D89FA7E4(__n128 a1)
{
  *(v1 + 592) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA870, v3, v2);
}

uint64_t sub_1D89FA870()
{

  return MEMORY[0x1EEE6DFA0](sub_1D89FA8D8, 0, 0);
}

uint64_t sub_1D89FA8D8(__n128 a1)
{
  *(v1 + 600) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D89FA964, v3, v2);
}

uint64_t sub_1D89FA964()
{

  if (sub_1D89B46EC())
  {
    sub_1D89B1580();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D89FA9E0, 0, 0);
}

uint64_t sub_1D89FA9E0()
{
  v76 = v0;
  sub_1D8A01488(*(v0 + 208), *(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 408), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  sub_1D881F6FC(*(v0 + 408), *(v0 + 432), &qword_1ECA641B0, &unk_1D8B23AB0);
  v1 = *(v0 + 608);
  if (qword_1ECA62270 != -1)
  {
    v68 = *(v0 + 608);
    swift_once();
    v1 = v68;
  }

  v2 = *(v0 + 352);
  v74 = v1;
  sub_1D89FF2DC(*(v0 + 520), *(v0 + 488), v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = *(v0 + 376);
  if (v4 == 1)
  {
    v6 = *(v0 + 360);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    sub_1D87A14E4(*(v0 + 352), &qword_1ECA67138, &qword_1D8B320C8);
    v9 = *(v6 + 48);
    *v5 = 0;
    *(v5 + 8) = 1;
    (*(v8 + 56))(v5 + v9, 1, 1, v7);
  }

  else
  {
    v11 = *(v0 + 368);
    v12 = *(v0 + 352);
    v13 = *(v0 + 312);
    v14 = *(v0 + 320);
    v15 = *(v3 + 48);
    v16 = *(*(v0 + 360) + 48);
    *v11 = *v12;
    *(v11 + 8) = 0;
    (*(v14 + 32))(v11 + v16, &v12[v15], v13);
    (*(v14 + 56))(v11 + v16, 0, 1, v13);
    sub_1D881F6FC(v11, v5, &qword_1ECA67140, &qword_1D8B320D0);
  }

  v17 = *(v0 + 384);
  v18 = *(v0 + 392);
  v19 = *(v0 + 376);
  v20 = *(v0 + 312);
  v21 = *(v0 + 320);
  v73 = *v19;
  v72 = *(v19 + 8);
  sub_1D881F6FC(v19 + *(*(v0 + 360) + 48), v18, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A0E38(v18, v17, &qword_1ECA67148, &qword_1D8B3AFD0);
  if ((*(v21 + 48))(v17, 1, v20) == 1)
  {
    v22 = *(v0 + 384);
    v23 = &qword_1ECA67148;
    v24 = &qword_1D8B3AFD0;
LABEL_12:
    sub_1D87A14E4(v22, v23, v24);
    v34 = *(v0 + 344);
    *v34 = 0xD000000000000029;
    v34[1] = 0x80000001D8B46F30;
    goto LABEL_13;
  }

  v25 = *(v0 + 520);
  v26 = *(v0 + 496);
  v27 = *(v0 + 288);
  v28 = *(v0 + 296);
  v29 = *(v0 + 280);
  v30 = *(*(v0 + 320) + 32);
  v30(*(v0 + 328), *(v0 + 384), *(v0 + 312));
  v31 = *(v26 + 28);
  v32 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v25 + *(v32 + 20) + v31, v29, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v33 = *(v0 + 280);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v23 = &qword_1ECA635E8;
    v24 = &unk_1D8B1F5C0;
    v22 = v33;
    goto LABEL_12;
  }

  v62 = *(v0 + 610);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  v75[0] = v62;
  v63 = sub_1D89FDC98(v75);
  v64 = *(v0 + 344);
  v65 = *(v0 + 328);
  v66 = *(v0 + 312);
  if (v63)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v30(v64, v65, v66);
  }

  else
  {
    v67 = *(v0 + 320);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v67 + 8))(v65, v66);
    *v64 = 0xD000000000000012;
    v64[1] = 0x80000001D8B46F60;
  }

LABEL_13:
  swift_storeEnumTagMultiPayload();
  sub_1D8A01488(*(v0 + 200), *(v0 + 240), type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v37 = *(v0 + 256);
  v36 = *(v0 + 264);
  v38 = *(v0 + 248);
  if (EnumCaseMultiPayload == 1)
  {
    v39 = *(v37 + 32);
    v39(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  }

  else
  {
    v40 = *(v0 + 224);
    sub_1D8A01550(*(v0 + 240), v40, type metadata accessor for CVTrackSnapshot);
    (*(v37 + 16))(v36, v40, v38);
    sub_1D8A014F0(v40, type metadata accessor for CVTrackSnapshot);
    v39 = *(v37 + 32);
  }

  v41 = *(v0 + 520);
  v42 = *(v0 + 512);
  v44 = *(v0 + 424);
  v43 = *(v0 + 432);
  v39(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1D8A01488(v41, v42, type metadata accessor for GenericParseDataResult);
  sub_1D87A0E38(v43, v44, &qword_1ECA641B0, &unk_1D8B23AB0);
  v45 = type metadata accessor for VisualLookupClassifier.Result(0);
  v70 = *(*(v45 - 1) + 48);
  v46 = v70(v44, 1, v45);
  v47 = *(v0 + 424);
  v71 = v39;
  if (v46 == 1)
  {
    sub_1D87A14E4(v47, &qword_1ECA641B0, &unk_1D8B23AB0);
    v48 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v48 = *(v47 + v45[7]);

    sub_1D8A014F0(v47, type metadata accessor for VisualLookupClassifier.Result);
  }

  v49 = *(v0 + 520);
  v50 = *(v0 + 488);
  v51 = *(v0 + 432);
  v52 = *(v0 + 416);
  v53 = *(v0 + 392);
  v69 = sub_1D89ED604(v48);

  sub_1D87A14E4(v53, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A14E4(v50, &qword_1ECA67150, &unk_1D8B39B90);
  sub_1D8A014F0(v49, type metadata accessor for GenericParseDataResult);
  sub_1D881F6FC(v51, v52, &qword_1ECA641B0, &unk_1D8B23AB0);
  v54 = v70(v52, 1, v45);
  v55 = *(v0 + 416);
  if (v54 == 1)
  {
    sub_1D87A14E4(*(v0 + 416), &qword_1ECA641B0, &unk_1D8B23AB0);
    v56 = 0;
  }

  else
  {
    v56 = *(v55 + v45[8]);

    sub_1D8A014F0(v55, type metadata accessor for VisualLookupClassifier.Result);
  }

  v57 = *(v0 + 512);
  v58 = *(v0 + 344);
  v59 = *(v0 + 192);
  v71(v59, *(v0 + 272), *(v0 + 248));
  sub_1D8A01550(v57, v59 + v45[5], type metadata accessor for GenericParseDataResult);
  *(v59 + v45[6]) = 0;
  *(v59 + v45[7]) = v69;
  *(v59 + v45[8]) = v56;
  sub_1D8A01550(v58, v59 + v45[9], type metadata accessor for VisualLookupClassifier.Result.SearchState);
  v60 = v59 + v45[10];
  *v60 = v73;
  *(v60 + 8) = v72;
  *(v59 + v45[11]) = v74;

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_1D89FB3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 64) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_1D8B13CC0();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67100, &qword_1D8B32040);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_1D8B13CF0();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67108, &qword_1D8B32048);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();
  v10 = type metadata accessor for VisualLookupClassifier.Result(0);
  *(v6 + 248) = v10;
  *(v6 + 256) = *(v10 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  v11 = sub_1D8B13240();
  *(v6 + 304) = v11;
  *(v6 + 312) = *(v11 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = *(a5 + 32);
  *(v6 + 384) = *(a5 + 40);
  *(v6 + 385) = *v5;

  return MEMORY[0x1EEE6DFA0](sub_1D89FB768, 0, 0);
}

uint64_t sub_1D89FB768()
{
  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v1 = sub_1D8B151E0();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_1EE0E4520);
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B161F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 384);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D8783000, v2, v3, "in produceEagerSearchResult isHighResolutionStill: %{BOOL}d", v5, 8u);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v0 + 48);

  v11 = *(v9 + 16);
  *(v0 + 352) = v11;
  *(v0 + 360) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v7, v10, v8);
  if (qword_1ECA62270 != -1)
  {
    swift_once();
  }

  if (v6)
  {
    v12 = 60.0;
  }

  else
  {
    v12 = 0.2;
  }

  v13 = qword_1ECAA36C8;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D89FB974;
  v15 = *(v0 + 288);

  return sub_1D89DE214(v15, v13, v0 + 16, v12);
}

uint64_t sub_1D89FB974()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 376) = *(v2 + 16);
    v3 = sub_1D89FBA8C;
  }

  else
  {
    v3 = sub_1D89FC024;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D89FBA8C()
{
  v49 = v0;
  sub_1D8A01488(*(v0 + 56), *(v0 + 72), type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A014F0(*(v0 + 72), type metadata accessor for BundleClassification.ClassificationType);
    return sub_1D8B168C0();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1D881F6FC(*(v0 + 72), v3, &qword_1ECA641B0, &unk_1D8B23AB0);
  sub_1D87A0E38(v3, v4, &qword_1ECA641B0, &unk_1D8B23AB0);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_1D87A14E4(*(v0 + 80), &qword_1ECA641B0, &unk_1D8B23AB0);
LABEL_9:
    v20 = *(v0 + 376);
    v21 = *(v0 + 385);
    v22 = *(v0 + 336);
    v23 = *(v0 + 328);
    v24 = *(v0 + 312);
    v25 = *(v0 + 296);
    v26 = *(v0 + 248);
    v27 = *(v0 + 104);
    v40 = *(v0 + 88);
    v42 = *(v0 + 304);
    v28 = *(v0 + 48);
    *(v0 + 24) = v20;
    sub_1D8A01488(v28, v25, type metadata accessor for VisualLookupClassifier.Result);
    sub_1D8883C24();
    *v27 = sub_1D8B16C90();
    v27[1] = v29;
    swift_storeEnumTagMultiPayload();
    sub_1D8A024A0(v27, v25 + *(v26 + 36));
    v48 = v21;
    sub_1D89FCF28(v20, v23, v43, v22);
    sub_1D8883C78(v20);
    sub_1D87A14E4(v40, &qword_1ECA641B0, &unk_1D8B23AB0);
    (*(v24 + 8))(v23, v42);
    v30 = v43[0];
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v35 = *(v0 + 40);
    sub_1D8A01550(*(v0 + 296), *(v0 + 32), type metadata accessor for VisualLookupClassifier.Result);
    *v35 = v30;
    v35[1] = v31;
    v35[2] = v32;
    v35[3] = v33;
    v35[4] = v34;
    v19 = *(v0 + 336);
    goto LABEL_10;
  }

  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 104);
  sub_1D8A01550(*(v0 + 80), v6, type metadata accessor for VisualLookupClassifier.Result);
  v9 = *(v7 + 36);
  swift_storeEnumTagMultiPayload();
  v10 = _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(v6 + v9, v8);
  sub_1D8A014F0(v8, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if ((v10 & 1) == 0 || *(v0 + 376) > 1uLL)
  {
    sub_1D8A014F0(*(v0 + 272), type metadata accessor for VisualLookupClassifier.Result);
    goto LABEL_9;
  }

  v11 = *(v0 + 328);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 264);
  v15 = *(v0 + 48);
  v39 = *(v0 + 272);
  v41 = *(v0 + 56);
  v16 = *(v0 + 40);
  v38 = *(v0 + 32);
  sub_1D87A14E4(*(v0 + 88), &qword_1ECA641B0, &unk_1D8B23AB0);
  (*(v13 + 8))(v11, v12);
  sub_1D8A01488(v15, v14, type metadata accessor for VisualLookupClassifier.Result);
  v17 = *(v7 + 36);
  sub_1D8A014F0(v14 + v17, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(v6 + v9, v14 + v17, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A014F0(v39, type metadata accessor for VisualLookupClassifier.Result);
  sub_1D8A01488(v14, v38, type metadata accessor for VisualLookupClassifier.Result);
  *v16 = 2;
  v18 = type metadata accessor for BundleClassification(0);
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v19 = *(v41 + *(v18 + 24));
  sub_1D8A014F0(v14, type metadata accessor for VisualLookupClassifier.Result);
LABEL_10:

  v36 = *(v0 + 8);
  v37.n128_u64[0] = v19;

  return v36(v37);
}

uint64_t sub_1D89FC024()
{
  v155 = v0;
  v1 = v0[31];
  v148 = *(v0[36] + *(v1 + 28));
  v2 = *(v148 + 16);
  v3 = v0[20];
  v4 = v0[21];
  if (v2)
  {
    v141 = v0[31];
    v5 = *(v4 + 16);
    v6 = v148 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    result = v5(v0[26], v6, v3);
    if (v2 != 1)
    {
      v53 = *(v152 + 168);
      v54 = 1;
      while (v54 < *(v148 + 16))
      {
        v5(*(v152 + 192), v6 + *(v53 + 72) * v54, *(v152 + 160));
        sub_1D8B13CE0();
        v56 = v55;
        sub_1D8B13CE0();
        v57 = *(v53 + 8);
        if (v56 >= v58)
        {
          result = v57(*(v152 + 192), *(v152 + 160));
        }

        else
        {
          v59 = *(v152 + 208);
          v60 = *(v152 + 192);
          v61 = *(v152 + 160);
          v57(v59, v61);
          result = (*(v53 + 32))(v59, v60, v61);
        }

        if (v2 == ++v54)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_3:
    v0 = v152;
    v8 = *(v152 + 240);
    v9 = *(v152 + 160);
    v10 = *(v152 + 168);
    (*(v10 + 32))(v8, *(v152 + 208), v9);
    v11 = *(v10 + 56);
    v11(v8, 0, 1, v9);
    v1 = v141;
  }

  else
  {
    v11 = *(v4 + 56);
    v11(v0[30], 1, 1, v3);
  }

  v12 = *(v0[6] + *(v1 + 28));
  v13 = *(v12 + 16);
  if (v13)
  {
    v143 = v11;
    v14 = v0[21];
    v17 = *(v14 + 16);
    v15 = v14 + 16;
    v16 = v17;
    v18 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    result = (v17)(v0[25], v18, v0[20]);
    if (v13 == 1)
    {
LABEL_7:
      (*(v0[21] + 32))(v0[29], v0[25], v0[20]);
      v19 = 0;
      v11 = v143;
      goto LABEL_9;
    }

    v62 = v0[21];
    v63 = 1;
    while (v63 < *(v12 + 16))
    {
      v16(v0[23], v18 + *(v62 + 72) * v63, v0[20]);
      sub_1D8B13CE0();
      v65 = v64;
      sub_1D8B13CE0();
      v66 = *(v62 + 8);
      if (v65 >= v67)
      {
        result = v66(v0[23], v0[20]);
      }

      else
      {
        v68 = v0[25];
        v69 = v0[23];
        v70 = v15;
        v71 = v18;
        v72 = v16;
        v73 = v13;
        v74 = v12;
        v75 = *(v152 + 160);
        v66(v68, v75);
        v76 = v75;
        v12 = v74;
        v13 = v73;
        v16 = v72;
        v18 = v71;
        v15 = v70;
        v0 = v152;
        result = (*(v62 + 32))(v68, v69, v76);
      }

      if (v13 == ++v63)
      {
        goto LABEL_7;
      }
    }

LABEL_54:
    __break(1u);
    return result;
  }

  v19 = 1;
LABEL_9:
  v21 = v0 + 19;
  v20 = v0[19];
  v23 = v0[29];
  v22 = v0[30];
  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[18];
  v11(v23, v19, 1, v24);
  v27 = *(v26 + 48);
  sub_1D87A0E38(v22, v20, &qword_1ECA67108, &qword_1D8B32048);
  sub_1D87A0E38(v23, v20 + v27, &qword_1ECA67108, &qword_1D8B32048);
  v28 = *(v25 + 48);
  if (v28(v20, 1, v24) == 1)
  {
    if (v28(v20 + v27, 1, v0[20]) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v29 = v0[20];
  sub_1D87A0E38(v0[19], v0[28], &qword_1ECA67108, &qword_1D8B32048);
  v30 = v28(v20 + v27, 1, v29);
  v31 = v0[28];
  if (v30 == 1)
  {
    (*(v0[21] + 8))(v0[28], v0[20]);
LABEL_14:
    sub_1D87A14E4(*v21, &qword_1ECA67100, &qword_1D8B32040);
    goto LABEL_15;
  }

  v111 = v0[21];
  v110 = v0[22];
  v113 = v0[19];
  v112 = v0[20];
  (*(v111 + 32))(v110, v20 + v27, v112);
  sub_1D8A011DC(&unk_1ECA64F70, MEMORY[0x1E69E0420], MEMORY[0x1E69E0438]);
  v114 = sub_1D8B158C0();
  v115 = *(v111 + 8);
  v115(v110, v112);
  v115(v31, v112);
  sub_1D87A14E4(v113, &qword_1ECA67108, &qword_1D8B32048);
  if (v114)
  {
LABEL_17:
    v34 = v152;
    v35 = *(v152 + 384);
    sub_1D8A01488(*(v152 + 288), *(v152 + 296), type metadata accessor for VisualLookupClassifier.Result);
    if (v35 == 1)
    {
      goto LABEL_18;
    }

LABEL_35:
    (*(v34 + 352))(*(v34 + 320), *(v34 + 328), *(v34 + 304));
    v86 = sub_1D8B151C0();
    v87 = sub_1D8B161F0();
    v88 = os_log_type_enabled(v86, v87);
    v90 = *(v34 + 312);
    v89 = *(v34 + 320);
    v91 = *(v34 + 304);
    if (v88)
    {
      v92 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v153 = v146;
      *v92 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v93 = sub_1D8B16B50();
      v95 = v94;
      v149 = *(v90 + 8);
      v149(v89, v91);
      v96 = sub_1D89AC714(v93, v95, &v153);
      v34 = v152;

      *(v92 + 4) = v96;
      _os_log_impl(&dword_1D8783000, v86, v87, "Retry because request result is not recommended for rendering for bundle (%s)", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x1DA721330](v146, -1, -1);
      MEMORY[0x1DA721330](v92, -1, -1);
    }

    else
    {

      v149 = *(v90 + 8);
      v149(v89, v91);
    }

    v116 = *(v34 + 328);
    v139 = *(v34 + 336);
    v117 = *(v34 + 304);
    v118 = *(v34 + 288);
    v119 = *(v34 + 240);
    v137 = 0x80000001D8B46CF0;
    sub_1D87A14E4(*(v34 + 232), &qword_1ECA67108, &qword_1D8B32048);
    sub_1D87A14E4(v119, &qword_1ECA67108, &qword_1D8B32048);
    v149(v116, v117);
    sub_1D8A014F0(v118, type metadata accessor for VisualLookupClassifier.Result);
    v140 = 0;
    v136 = 0xD00000000000001DLL;
    goto LABEL_49;
  }

LABEL_15:
  v21 = (v152 + 216);
  v32 = *(v152 + 216);
  v33 = *(v152 + 160);
  sub_1D87A0E38(*(v152 + 240), v32, &qword_1ECA67108, &qword_1D8B32048);
  if (v28(v32, 1, v33) == 1)
  {
LABEL_16:
    sub_1D87A14E4(*v21, &qword_1ECA67108, &qword_1D8B32048);
    goto LABEL_17;
  }

  v34 = v152;
  v77 = *(v152 + 384);
  v79 = *(v152 + 288);
  v78 = *(v152 + 296);
  v80 = *(v152 + 216);
  v81 = *(v152 + 160);
  v82 = *(v152 + 168);
  v84 = *(v152 + 128);
  v83 = *(v152 + 136);
  v85 = *(v152 + 120);
  sub_1D8B13CD0();
  (*(v82 + 8))(v80, v81);
  LOBYTE(v80) = sub_1D8B13CB0();
  (*(v84 + 8))(v83, v85);
  sub_1D8A01488(v79, v78, type metadata accessor for VisualLookupClassifier.Result);
  if ((v80 & 1) == 0 && (v77 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  v36 = *(v34 + 288);
  v37 = *(v34 + 248);
  v38 = *(v37 + 36);
  sub_1D8A01488(v36 + v38, *(v34 + 112), type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v144 = v38;
    v145 = v36;
    v41 = *(v34 + 280);
    v40 = *(v34 + 288);
    sub_1D8A014F0(*(v34 + 112), type metadata accessor for VisualLookupClassifier.Result.SearchState);
    sub_1D8A01488(v40, v41, type metadata accessor for VisualLookupClassifier.Result);
    v42 = sub_1D8B151C0();
    v43 = sub_1D8B16210();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v34 + 280);
    if (v44)
    {
      v46 = *(v34 + 104);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v153 = v48;
      *v47 = 136315138;
      sub_1D8A01488(v45 + *(v37 + 36), v46, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      v49 = sub_1D8B159E0();
      v51 = v50;
      sub_1D8A014F0(v45, type metadata accessor for VisualLookupClassifier.Result);
      v52 = sub_1D89AC714(v49, v51, &v153);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D8783000, v42, v43, "Search result not successful for unknown reason. searchState: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v47, -1, -1);
    }

    else
    {

      sub_1D8A014F0(v45, type metadata accessor for VisualLookupClassifier.Result);
    }

    v120 = *(v34 + 328);
    v151 = *(v34 + 336);
    v121 = *(v34 + 304);
    v122 = *(v34 + 312);
    v142 = *(v34 + 288);
    v124 = *(v34 + 232);
    v123 = *(v34 + 240);
    v125 = *(v34 + 104);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD00000000000003ELL, 0x80000001D8B46D10);
    sub_1D8A01488(v145 + v144, v125, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v126 = sub_1D8B159E0();
    MEMORY[0x1DA71EFA0](v126);

    v136 = v153;
    v137 = v154;
    sub_1D87A14E4(v124, &qword_1ECA67108, &qword_1D8B32048);
    sub_1D87A14E4(v123, &qword_1ECA67108, &qword_1D8B32048);
    (*(v122 + 8))(v120, v121);
    v139 = v151;
    v109 = v142;
LABEL_48:
    sub_1D8A014F0(v109, type metadata accessor for VisualLookupClassifier.Result);
    v140 = 0;
LABEL_49:
    v138 = 128;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v97 = *(v152 + 112);
    v99 = *v97;
    v98 = v97[1];

    v100 = sub_1D8B151C0();
    v101 = sub_1D8B16210();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v153 = v103;
      *v102 = 136315138;
      *(v102 + 4) = sub_1D89AC714(v99, v98, &v153);
      _os_log_impl(&dword_1D8783000, v100, v101, "Search result failed with the message '%s'.", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x1DA721330](v103, -1, -1);
      MEMORY[0x1DA721330](v102, -1, -1);
    }

    v34 = v152;
    v104 = *(v152 + 328);
    v105 = *(v152 + 304);
    v106 = *(v152 + 312);
    v147 = *(v152 + 288);
    v150 = *(v152 + 336);
    v107 = *(v152 + 232);
    v108 = *(v152 + 240);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1D8B16720();

    v153 = 0xD000000000000027;
    v154 = 0x80000001D8B46D50;
    MEMORY[0x1DA71EFA0](v99, v98);

    MEMORY[0x1DA71EFA0](11815, 0xE200000000000000);
    v136 = v153;
    v137 = v154;
    sub_1D87A14E4(v107, &qword_1ECA67108, &qword_1D8B32048);
    sub_1D87A14E4(v108, &qword_1ECA67108, &qword_1D8B32048);
    (*(v106 + 8))(v104, v105);
    v109 = v147;
    v139 = v150;
    goto LABEL_48;
  }

  v34 = v152;
  v131 = *(v152 + 328);
  v132 = *(v152 + 304);
  v133 = *(v152 + 312);
  v134 = *(v152 + 288);
  v135 = *(v152 + 240);
  sub_1D87A14E4(*(v152 + 232), &qword_1ECA67108, &qword_1D8B32048);
  sub_1D87A14E4(v135, &qword_1ECA67108, &qword_1D8B32048);
  (*(v133 + 8))(v131, v132);
  sub_1D8A014F0(v134, type metadata accessor for VisualLookupClassifier.Result);
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 2;
LABEL_50:
  v127 = *(v34 + 40);
  sub_1D8A01550(*(v34 + 296), *(v34 + 32), type metadata accessor for VisualLookupClassifier.Result);
  *v127 = v140;
  v127[1] = v136;
  v127[2] = v137;
  v127[3] = v138;
  v127[4] = v139;
  v128 = *(v34 + 336);

  v129 = *(v34 + 8);
  v130.n128_u64[0] = v128;

  return v129(v130);
}

void sub_1D89FCF28(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2)
  {
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8B151E0();
    __swift_project_value_buffer(v12, qword_1EE0E4520);
    (*(v9 + 16))(v11, a2, v8);
    v13 = sub_1D8B151C0();
    v14 = sub_1D8B161F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39 = v16;
      *v15 = 136315138;
      sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v17 = sub_1D8B16B50();
      v19 = v18;
      (*(v9 + 8))(v11, v8);
      v20 = sub_1D89AC714(v17, v19, &v39);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D8783000, v13, v14, "VL Search Service failed due to rate limiting: bundle (%s).", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA721330](v16, -1, -1);
      MEMORY[0x1DA721330](v15, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v22 = 0;
    v24 = 2;
    v21 = 1;
    v23 = 4;
    goto LABEL_18;
  }

  if (a1 == 2)
  {
    v21 = 0;
    v22 = 0x80000001D8B46D80;
    v23 = 0xD000000000000029;
LABEL_17:
    v24 = 0x80;
LABEL_18:
    *a3 = v21;
    *(a3 + 8) = v23;
    *(a3 + 16) = v22;
    *(a3 + 24) = v24;
    *(a3 + 32) = a4;
    return;
  }

  v39 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  v26 = swift_dynamicCast();
  if (v26)
  {
    v27 = v41;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8B151E0();
    __swift_project_value_buffer(v28, qword_1EE0E4520);
    v29 = v27;
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_1D8B16C90();
      v36 = sub_1D89AC714(v34, v35, &v39);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D8783000, v30, v31, "VLU internal error: %s. Will retry if not high resolution still.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1DA721330](v33, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);
    }

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D8B16720();

    v39 = 0xD00000000000001DLL;
    v40 = 0x80000001D8B46DE0;
    swift_getErrorValue();
    v37 = sub_1D8B16C90();
    MEMORY[0x1DA71EFA0](v37);

    MEMORY[0x1DA71EFA0](46, 0xE100000000000000);

    v21 = 0;
    v23 = v39;
    v22 = v40;
    goto LABEL_17;
  }

  sub_1D8B168C0();
  __break(1u);
}

uint64_t sub_1D89FD44C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1D8B13740();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B138D0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v35 - v17;
  v19 = a2[3];
  v43 = a2[2];
  v44 = v19;
  v45 = a2[4];
  v20 = a2[1];
  v42[0] = *a2;
  v42[1] = v20;
  CVBundle.latestEstimate.getter(v39);
  if (v39[0] >> 60)
  {

LABEL_9:
    v29 = 1;
    v30 = v36;
    return (*(v9 + 56))(v30, v29, 1, v8);
  }

  v21 = swift_projectBox();
  sub_1D87A0E38(v21, v18, &qword_1ECA67750, &unk_1D8B1E0C0);

  v22 = sub_1D89F3840();
  sub_1D89F3968(v22, v15);

  if ((*(v13 + 88))(v15, v12) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v18, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(v13 + 8))(v15, v12);
    goto LABEL_9;
  }

  (*(v13 + 96))(v15, v12);
  sub_1D89FE134(a1, *v15, v42, v11);

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if ((sub_1D8B0AAA4() & 1) != 0 || (BYTE8(v43) & 1) != 0 && (v31 = type metadata accessor for InternalSettings(), v32 = sub_1D8B15940(), LODWORD(v31) = [v31 BOOLForKey:v32 defaultValue:0], v32, v31))
  {
    v23 = v43;
    v40[3] = v8;
    v40[4] = sub_1D8A011DC(&qword_1ECA67170, MEMORY[0x1E69E0320], MEMORY[0x1E69E0328]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    v41 = 3;
    v39[0] = 0x6F6E6E612D756C76;
    v39[1] = 0xEF736E6F69746174;
    v39[2] = v23;
    v25 = sub_1D8B15EA0();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_1D88C4BD0(v39, v37);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = v37[3];
    *(v26 + 64) = v37[2];
    *(v26 + 80) = v27;
    *(v26 + 96) = v38;
    v28 = v37[1];
    *(v26 + 32) = v37[0];
    *(v26 + 48) = v28;
    sub_1D8891CA0(0, 0, v7, &unk_1D8B32150, v26);

    sub_1D87DC9A0(v39);
  }

  sub_1D87A14E4(v18, &qword_1ECA67750, &unk_1D8B1E0C0);
  v33 = v36;
  (*(v9 + 32))(v36, v11, v8);
  v30 = v33;
  v29 = 0;
  return (*(v9 + 56))(v30, v29, 1, v8);
}

BOOL sub_1D89FD9C4()
{
  v0 = sub_1D8B13990();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B138D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  CVBundle.latestEstimate.getter(&v17);
  if (v17 >> 60)
  {

    return 0;
  }

  v11 = swift_projectBox();
  sub_1D87A0E38(v11, v10, &qword_1ECA67750, &unk_1D8B1E0C0);

  v12 = sub_1D89F3840();
  sub_1D89F3968(v12, v7);

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69E0390])
  {
    sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  (*(v5 + 96))(v7, v4);
  v13 = *v7;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E03B8], v0);
  v14 = sub_1D8846D48(v3, v13);

  (*(v1 + 8))(v3, v0);
  sub_1D87A14E4(v10, &qword_1ECA67750, &unk_1D8B1E0C0);
  return v14;
}

uint64_t sub_1D89FDC98(_BYTE *a1)
{
  v2 = sub_1D8B136F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B137A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  if (*a1 == 2)
  {
    v13 = sub_1D8B137B0();
    if (*(v13 + 16))
    {
      (*(v7 + 16))(v10, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      (*(v7 + 32))(v12, v10, v6);
      (*(v3 + 104))(v5, *MEMORY[0x1E69E0318], v2);
      v14 = sub_1D8B13770();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {

      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_1D89FDEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  v10 = swift_task_alloc();
  *(v5 + 64) = v10;
  *v10 = v5;
  v10[1] = sub_1D88DFAD0;

  return sub_1D89F66C4(a1, a2, a3, a4);
}

uint64_t sub_1D89FDFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89FE03C, 0, 0);
}

uint64_t sub_1D89FE03C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A02870, v2, 0);
}

uint64_t sub_1D89FE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v136 = a1;
  v120 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820, &unk_1D8B2F6E0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v106 - v9;
  v117 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8B13240();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v106 - v17;
  v18 = type metadata accessor for CVBundle(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v106 - v22;
  v151 = type metadata accessor for TextDetectorResult(0);
  v23 = *(v151 - 8);
  v24 = MEMORY[0x1EEE9AC00](v151);
  v150 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v126 = &v106 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v106 - v28;
  v125 = type metadata accessor for CVTrackSnapshot(0);
  v124 = *(v125 - 8);
  v30 = MEMORY[0x1EEE9AC00](v125);
  v107 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v152 = &v106 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67178, &qword_1D8B32160);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v119 = &v106 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67180, &qword_1D8B32168);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v118 = &v106 - v36;
  v135 = sub_1D8B13990();
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(a2 + 16);
  if (v133)
  {
    v112 = v12;
    v40 = 0;
    v138 = 0;
    v42 = *(v37 + 16);
    v41 = v37 + 16;
    v143 = a2 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v144 = v42;
    v142 = (v41 + 72);
    v121 = (v41 - 8);
    v141 = *MEMORY[0x1E69E0398];
    v147 = v23;
    v148 = (v23 + 48);
    v149 = (v23 + 56);
    v106 = (v13 + 16);
    v110 = (v13 + 32);
    v140 = *MEMORY[0x1E69E03A8];
    v109 = (v13 + 8);
    v137 = *MEMORY[0x1E69E03A0];
    v128 = *MEMORY[0x1E69E03B0];
    v127 = *MEMORY[0x1E69E03B8];
    v139 = *(v41 + 56);
    *&v38 = 136315394;
    v108 = v38;
    v146 = v8;
    v132 = v21;
    v43 = v135;
    v44 = v134;
    v45 = v133;
    v111 = v16;
    v129 = v41;
    v122 = v29;
    do
    {
      v145 = v40;
      v144(v44, v143 + v139 * v40, v43);
      v46 = (*v142)(v44, v43);
      if (v46 != v141 && v46 != v140)
      {
        if (v46 == v137)
        {

          v48 = sub_1D891DE68();
          v49 = *(v48 + 16);
          if (v49)
          {
            v50 = *(v125 + 24);
            v51 = (*(v124 + 80) + 32) & ~*(v124 + 80);
            v131 = v48;
            v52 = v48 + v51;
            v53 = *(v124 + 72);
            v54 = MEMORY[0x1E69E7CC0];
            do
            {
              v55 = v152;
              sub_1D8A01488(v52, v152, type metadata accessor for CVTrackSnapshot);
              if (*(v55 + v50) >> 60 == 5)
              {
                v56 = swift_projectBox();
                sub_1D8A01488(v56, v8, type metadata accessor for TextDetectorResult);
                v57 = 0;
              }

              else
              {
                v57 = 1;
              }

              v58 = v151;
              (*v149)(v8, v57, 1, v151);
              sub_1D881F6FC(v8, v10, &qword_1ECA64820, &unk_1D8B2F6E0);
              sub_1D8A014F0(v152, type metadata accessor for CVTrackSnapshot);
              if ((*v148)(v10, 1, v58) == 1)
              {
                sub_1D87A14E4(v10, &qword_1ECA64820, &unk_1D8B2F6E0);
              }

              else
              {
                sub_1D8A01550(v10, v150, type metadata accessor for TextDetectorResult);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v54 = sub_1D87C7EE0(0, v54[2] + 1, 1, v54);
                }

                v60 = v54[2];
                v59 = v54[3];
                v61 = v147;
                if (v60 >= v59 >> 1)
                {
                  v62 = sub_1D87C7EE0((v59 > 1), v60 + 1, 1, v54);
                  v61 = v147;
                  v54 = v62;
                }

                v54[2] = v60 + 1;
                sub_1D8A01550(v150, v54 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, type metadata accessor for TextDetectorResult);
                v8 = v146;
              }

              v52 += v53;
              --v49;
            }

            while (v49);

            v29 = v122;
          }

          else
          {

            v54 = MEMORY[0x1E69E7CC0];
          }

          v64 = v54[2];
          v65 = sub_1D8A011DC(&qword_1EE0E5FF0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          v66 = MEMORY[0x1DA71F530](v64, v151, v65);
          v153 = v66;
          v67 = v54[2];
          if (v67)
          {
            v68 = v54 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
            v69 = *(v147 + 72);
            v70 = v29;
            v71 = v126;
            do
            {
              sub_1D8A01488(v68, v70, type metadata accessor for TextDetectorResult);
              sub_1D87FC43C(v71, v70);
              sub_1D8A014F0(v71, type metadata accessor for TextDetectorResult);
              v68 += v69;
              --v67;
            }

            while (v67);
            v72 = v153;
            v29 = v70;
          }

          else
          {
            v72 = v66;
          }

          v73 = v138;
          v74 = sub_1D89DD5E0(v72, v130);
          v138 = v73;

          v75 = *(v74 + 16);

          v76 = v132;
          if (!v75)
          {
            v77 = v123;
            if (qword_1EE0E4518 != -1)
            {
              swift_once();
            }

            v78 = sub_1D8B151E0();
            __swift_project_value_buffer(v78, qword_1EE0E4520);
            v79 = v136;
            sub_1D8A01488(v136, v77, type metadata accessor for CVBundle);
            sub_1D8A01488(v79, v76, type metadata accessor for CVBundle);
            v80 = sub_1D8B151C0();
            v81 = sub_1D8B16210();
            if (os_log_type_enabled(v80, v81))
            {
              v114 = v81;
              v82 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v158 = v113;
              *v82 = v108;
              CVBundle.latestEstimate.getter(&v157);
              v156 = v157;
              CVDetection.detection.getter(&v153);
              v83 = v154;
              v84 = v155;
              __swift_project_boxed_opaque_existential_1(&v153, v154);
              v85 = (*(v84 + 72))(v83, v84);
              v87 = v86;

              sub_1D8A014F0(v123, type metadata accessor for CVBundle);
              __swift_destroy_boxed_opaque_existential_1(&v153);
              v88 = sub_1D89AC714(v85, v87, &v158);

              *(v82 + 4) = v88;
              v131 = v82;
              *(v82 + 12) = 2080;
              v89 = v116;
              sub_1D8A01488(v76, v116, type metadata accessor for CVBundle.BundleType);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v90 = *v110;
                v91 = v111;
                v92 = v112;
                (*v110)(v111, v89, v112);
              }

              else
              {
                v93 = v80;
                v94 = v107;
                sub_1D8A01550(v89, v107, type metadata accessor for CVTrackSnapshot);
                v91 = v111;
                v92 = v112;
                (*v106)(v111, v94, v112);
                v95 = v94;
                v80 = v93;
                sub_1D8A014F0(v95, type metadata accessor for CVTrackSnapshot);
                v90 = *v110;
              }

              v8 = v146;
              v96 = v115;
              v90(v115, v91, v92);
              sub_1D8A011DC(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v97 = sub_1D8B16B50();
              v99 = v98;
              (*v109)(v96, v92);
              sub_1D8A014F0(v132, type metadata accessor for CVBundle);
              v100 = sub_1D89AC714(v97, v99, &v158);

              v101 = v131;
              *(v131 + 14) = v100;
              _os_log_impl(&dword_1D8783000, v80, v114, "Required textAnnotation but it was empty for bundle: %s id: %s", v101, 0x16u);
              v102 = v113;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v102, -1, -1);
              MEMORY[0x1DA721330](v101, -1, -1);
            }

            else
            {

              sub_1D8A014F0(v76, type metadata accessor for CVBundle);
              sub_1D8A014F0(v77, type metadata accessor for CVBundle);
            }
          }

          v43 = v135;
          v44 = v134;
          v45 = v133;
        }

        else if (v46 != v128 && v46 != v127)
        {
          (*v121)(v44, v43);
        }
      }

      v40 = v145 + 1;
    }

    while (v145 + 1 != v45);
  }

  v103 = sub_1D8B13850();
  (*(*(v103 - 8) + 56))(v118, 1, 1, v103);
  v104 = sub_1D8B13870();
  (*(*(v104 - 8) + 56))(v119, 1, 1, v104);
  return sub_1D8B13730();
}

uint64_t sub_1D89FF090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D89FF124, 0, 0);
}

uint64_t sub_1D89FF124()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D89FF21C, v2, 0);
}

uint64_t sub_1D89FF21C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v2, v3, v4);

  sub_1D8A014F0(v1, type metadata accessor for BundleClassification.ClassificationType);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D89FF2DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v167) = a3;
  v150 = a2;
  v180 = sub_1D8B13830();
  v162 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v176 = &v140 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67158, &unk_1D8B32128);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = &v140 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v140 - v12;
  v13 = sub_1D8B138B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v172 = &v140 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633B0, &qword_1D8B1E990);
  v178 = *(v26 - 8);
  v179 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v169 = (&v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v27);
  v181 = &v140 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v171 = &v140 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v184 = (&v140 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v183 = &v140 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v145 = &v140 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v151 = (&v140 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67138, &qword_1D8B320C8);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v153 = &v140 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
  v175 = *(v42 - 8);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v173 = &v140 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v147 = &v140 - v45;
  v185 = type metadata accessor for VisualUnderstandingContainer(0);
  v46 = *(v185 - 8);
  v47 = MEMORY[0x1EEE9AC00](v185);
  v49 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v51 = (&v140 - v50);
  v52 = type metadata accessor for GenericParseDataResult(0);
  v53 = *(v52 + 36);
  v166 = a1;
  v54 = *&a1[v53];
  if (v54)
  {
    v165 = v52;
    v146 = v49;
    v142 = v24;
    v144 = v14;
    v158 = v13;
    v55 = *(v54 + 16);
    v174 = v42;
    v155 = a4;
    if (v55)
    {
      v56 = *(v185 + 20);
      v57 = v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v170 = v51 + 1;
      v58 = (v162 + 48);
      v59 = MEMORY[0x1E69E7CC0];
      v182 = *(v46 + 72);
      v60 = v180;
      v168 = v56;
      do
      {
        sub_1D8A01488(v57, v51, type metadata accessor for VisualUnderstandingContainer);
        sub_1D87A0E38(v56 + v51, v19, &qword_1ECA635E8, &unk_1D8B1F5C0);
        if ((*v58)(v19, 1, v60) == 1)
        {
          sub_1D8A014F0(v51, type metadata accessor for VisualUnderstandingContainer);
          sub_1D87A14E4(v19, &qword_1ECA635E8, &unk_1D8B1F5C0);
        }

        else
        {
          sub_1D87A14E4(v19, &qword_1ECA635E8, &unk_1D8B1F5C0);
          if (*(v170 + *(v185 + 24)) >> 60 == 15)
          {
            sub_1D8A014F0(v51, type metadata accessor for VisualUnderstandingContainer);
          }

          else
          {
            v61 = *(v179 + 48);
            v62 = v169;
            *v169 = *v51;
            sub_1D8A01550(v51, v62 + v61, type metadata accessor for VisualUnderstandingContainer);
            sub_1D881F6FC(v62, v181, &qword_1ECA633B0, &qword_1D8B1E990);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1D87C91C4(0, v59[2] + 1, 1, v59);
            }

            v64 = v59[2];
            v63 = v59[3];
            if (v64 >= v63 >> 1)
            {
              v59 = sub_1D87C91C4((v63 > 1), v64 + 1, 1, v59);
            }

            v59[2] = v64 + 1;
            sub_1D881F6FC(v181, v59 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v64, &qword_1ECA633B0, &qword_1D8B1E990);
            v60 = v180;
            v56 = v168;
          }
        }

        v57 += v182;
        --v55;
      }

      while (v55);
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1D87E2598(*&v166[*(v165 + 48)], v59);
    v69 = result;
    v170 = v70;
    v71 = v67;
    v72 = v155;
    if (v167)
    {
      v73 = v162;
      if (v67 == v68 >> 1)
      {
        swift_unknownObjectRelease();
        return (*(v175 + 56))(v72, 1, 1, v174);
      }

      if (v67 < (v68 >> 1))
      {
        v143 = result;
        v107 = v151;
        sub_1D87A0E38(v170 + *(v178 + 72) * v67, v151, &qword_1ECA633B0, &qword_1D8B1E990);
        v108 = *v107;
        v109 = v146;
        sub_1D8A01550(v107 + *(v179 + 48), v146, type metadata accessor for VisualUnderstandingContainer);
LABEL_48:
        v121 = *(v185 + 20);
        v122 = v152;
        sub_1D87A0E38(v109 + v121, v152, &qword_1ECA635E8, &unk_1D8B1F5C0);
        v123 = *(v73 + 48);
        v124 = v180;
        v125 = v123(v122, 1, v180);
        sub_1D87A14E4(v122, &qword_1ECA635E8, &unk_1D8B1F5C0);
        if (v125 == 1)
        {
LABEL_51:
          v129 = v144;
          v130 = v149;
          v131 = v185;
          sub_1D87A0E38(v150, v159, &qword_1ECA67150, &unk_1D8B39B90);
          v132 = v146;
          sub_1D8883D78(*&v146[*(v131 + 24)], *&v146[*(v131 + 24) + 8]);
          sub_1D8B138C0();
          v133 = sub_1D8B151C0();
          v134 = sub_1D8B161F0();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            *v135 = 134217984;
            *(v135 + 4) = v108;
            _os_log_impl(&dword_1D8783000, v133, v134, "Nominating search for detection from %f", v135, 0xCu);
            MEMORY[0x1DA721330](v135, -1, -1);
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          v136 = v158;
          sub_1D8A014F0(v132, type metadata accessor for VisualUnderstandingContainer);
          v137 = v174;
          v138 = *(v174 + 48);
          v139 = v155;
          *v155 = v108;
          (*(v129 + 32))(&v139[v138], v130, v136);
          return (*(v175 + 56))(v139, 0, 1, v137);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160, &qword_1D8B32138);
        v126 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_1D8B1AB90;
        v128 = v142;
        sub_1D87A0E38(v109 + v121, v142, &qword_1ECA635E8, &unk_1D8B1F5C0);
        result = v123(v128, 1, v124);
        if (result != 1)
        {
          (*(v73 + 32))(v127 + v126, v128, v124);
          goto LABEL_51;
        }

LABEL_61:
        __break(1u);
        return result;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v169 = (v68 >> 1);
    v74 = (v68 >> 1) - v67;
    v75 = v158;
    v73 = v162;
    if (__OFSUB__(v68 >> 1, v67))
    {
      goto LABEL_57;
    }

    v76 = *(v154 + OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_searchService);
    v141 = v68;
    if (v74)
    {
      v140 = v76;
      v143 = result;
      v186 = MEMORY[0x1E69E7CC0];
      result = sub_1D87F48C4(0, v74 & ~(v74 >> 63), 0);
      if (v74 < 0)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v77 = 0;
      v168 = (v73 + 48);
      v78 = v186;
      v160 = (v73 + 32);
      v157 = v73 + 16;
      v161 = (v73 + 8);
      v167 = (v144 + 56);
      v166 = (v144 + 48);
      v163 = (v144 + 32);
      v156 = xmmword_1D8B1AB90;
      v79 = v177;
      v80 = v179;
      v81 = v172;
      v82 = v173;
      v165 = v71;
      v164 = v74;
      while (!__OFADD__(v77, 1))
      {
        v83 = v71 + v77;
        if ((v71 + v77) >= v169 || v77 >= v74)
        {
          goto LABEL_56;
        }

        v181 = v77 + 1;
        v182 = v78;
        v84 = v82;
        v85 = v183;
        sub_1D87A0E38(v170 + *(v178 + 72) * v83, v183, &qword_1ECA633B0, &qword_1D8B1E990);
        v86 = v184;
        sub_1D87A0E38(v85, v184, &qword_1ECA633B0, &qword_1D8B1E990);
        *v84 = *v86;
        v87 = v171;
        sub_1D87A0E38(v85, v171, &qword_1ECA633B0, &qword_1D8B1E990);
        v88 = v87 + *(v80 + 48);
        v89 = v185;
        sub_1D87A0E38(v88 + *(v185 + 20), v81, &qword_1ECA635E8, &unk_1D8B1F5C0);
        v90 = v180;
        if ((*v168)(v81, 1, v180) == 1)
        {
          sub_1D87A14E4(v81, &qword_1ECA635E8, &unk_1D8B1F5C0);
          v91 = 1;
          v82 = v173;
          v71 = v165;
          v78 = v182;
        }

        else
        {
          (*v160)(v79, v81, v90);
          v92 = (v88 + *(v89 + 24));
          v93 = v92[1];
          v78 = v182;
          if (v93 >> 60 == 15)
          {
            (*v161)(v79, v90);
            v91 = 1;
          }

          else
          {
            v94 = *v92;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160, &qword_1D8B32138);
            v95 = v162;
            v96 = (*(v162 + 80) + 32) & ~*(v162 + 80);
            v97 = swift_allocObject();
            *(v97 + 16) = v156;
            v98 = v97 + v96;
            v75 = v158;
            (*(v95 + 16))(v98, v79, v90);
            v99 = sub_1D8B13740();
            (*(*(v99 - 8) + 56))(v159, 1, 1, v99);
            sub_1D87A1544(v94, v93);
            sub_1D8B138C0();
            (*(v95 + 8))(v177, v90);
            v91 = 0;
          }

          v82 = v173;
          v71 = v165;
        }

        v100 = v176;
        (*v167)(v176, v91, 1, v75);
        sub_1D8A014F0(v88, type metadata accessor for VisualUnderstandingContainer);
        result = (*v166)(v100, 1, v75);
        v80 = v179;
        if (result == 1)
        {
          goto LABEL_60;
        }

        v101 = *(v174 + 48);
        v102 = *(v179 + 48);
        sub_1D87A14E4(v183, &qword_1ECA633B0, &qword_1D8B1E990);
        (*v163)(v82 + v101, v100, v75);
        sub_1D8A014F0(v184 + v102, type metadata accessor for VisualUnderstandingContainer);
        v186 = v78;
        v104 = *(v78 + 16);
        v103 = *(v78 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_1D87F48C4((v103 > 1), v104 + 1, 1);
          v78 = v186;
        }

        *(v78 + 16) = v104 + 1;
        result = sub_1D881F6FC(v82, v78 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v104, &qword_1ECA63EA8, &qword_1D8B22EF0);
        ++v77;
        v74 = v164;
        v79 = v177;
        v81 = v172;
        if (v181 == v164)
        {
          v72 = v155;
          v73 = v162;
          v69 = v143;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_39:
    v105 = v153;
    sub_1D8B138E0();

    v106 = v174;
    if ((*(v175 + 48))(v105, 1, v174) == 1)
    {
      swift_unknownObjectRelease();
      sub_1D87A14E4(v105, &qword_1ECA67138, &qword_1D8B320C8);
      return (*(v175 + 56))(v72, 1, 1, v106);
    }

    v110 = v147;
    v111 = sub_1D881F6FC(v105, v147, &qword_1ECA63EA8, &qword_1D8B22EF0);
    MEMORY[0x1EEE9AC00](v111);
    *(&v140 - 2) = v110;
    v112 = v148;
    sub_1D87EE41C(sub_1D8A0274C, v170, v71, v141, v148);
    v113 = v179;
    if ((*(v178 + 48))(v112, 1, v179) != 1)
    {
      v143 = v69;
      v117 = v112;
      v118 = v145;
      sub_1D881F6FC(v117, v145, &qword_1ECA633B0, &qword_1D8B1E990);
      v119 = v118;
      v120 = v151;
      sub_1D881F6FC(v119, v151, &qword_1ECA633B0, &qword_1D8B1E990);
      v108 = *v120;
      v109 = v146;
      sub_1D8A01550(v120 + *(v113 + 48), v146, type metadata accessor for VisualUnderstandingContainer);
      sub_1D87A14E4(v110, &qword_1ECA63EA8, &qword_1D8B22EF0);
      goto LABEL_48;
    }

    sub_1D87A14E4(v112, &qword_1ECA67158, &unk_1D8B32128);
    v114 = sub_1D8B151C0();
    v115 = sub_1D8B16210();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_1D8783000, v114, v115, "Couldn't find the corresponding VisualUnderstandingContainer.", v116, 2u);
      MEMORY[0x1DA721330](v116, -1, -1);
    }

    swift_unknownObjectRelease();
    (*(v175 + 56))(v72, 1, 1, v174);
    return sub_1D87A14E4(v110, &qword_1ECA63EA8, &qword_1D8B22EF0);
  }

  else
  {
    v65 = *(v175 + 56);

    return v65(a4, 1, 1, v42);
  }
}

uint64_t sub_1D8A0077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D8B16870();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A0087C, 0, 0);
}

uint64_t sub_1D8A0087C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D8B16880();
  v5 = sub_1D8A011DC(&qword_1EE0E3670, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D8B16C40();
  sub_1D8A011DC(&qword_1EE0E3678, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D8B16890();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D8A00A0C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D8A00A0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8A00BC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D8A00BC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s22VisualIntelligenceCore0A16LookupClassifierV6ResultV11SearchStateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B138B0();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VisualLookupClassifier.Result.SearchState(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v32 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67190, &unk_1D8B32170);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = (&v32 + *(v17 + 56) - v18);
  sub_1D8A01488(a1, &v32 - v18, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  sub_1D8A01488(a2, v20, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_18;
      }

LABEL_21:
      sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
      v29 = 1;
      return v29 & 1;
    }

    sub_1D8A01488(v19, v10, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v23 = *v10;
    v22 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v23 == *v20 && v22 == v20[1])
    {
    }

    else
    {
      v25 = sub_1D8B16BA0();

      if ((v25 & 1) == 0)
      {
        sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
LABEL_19:
        v29 = 0;
        return v29 & 1;
      }
    }

    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D8A01488(v19, v15, type metadata accessor for VisualLookupClassifier.Result.SearchState);
    v23 = *v15;
    v22 = v15[1];
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_4:

LABEL_18:
      sub_1D87A14E4(v19, &qword_1ECA67190, &unk_1D8B32170);
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  sub_1D8A01488(v19, v13, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v32 + 8))(v13, v33);
    goto LABEL_18;
  }

  v26 = v32;
  v27 = v20;
  v28 = v33;
  (*(v32 + 32))(v6, v27, v33);
  v29 = MEMORY[0x1DA71CD40](v13, v6);
  v30 = *(v26 + 8);
  v30(v6, v28);
  v30(v13, v28);
  sub_1D8A014F0(v19, type metadata accessor for VisualLookupClassifier.Result.SearchState);
  return v29 & 1;
}