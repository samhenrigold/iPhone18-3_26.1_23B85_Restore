void sub_2663B0988(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = sub_2664DE4A8();
  v43 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2662F5CEC(qword_280F91CD8, a1);
  v44 = a3;
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_280071C60 != -1)
  {
    swift_once();
  }

  v23 = qword_28007CD08;
  if (*(qword_28007CD08 + 16) && (v24 = sub_26634DA3C(a3), (v25 & 1) != 0))
  {
    a3 = *(*(v23 + 56) + v24) + 100;
  }

  else
  {
LABEL_7:
    a3 = a3;
  }

  sub_2662C1744(0, &qword_280F914E0, 0x277D86200);
  v26 = sub_2664E0928();
  v27 = *(a5 + 8);
  v45 = v26;
  v27("appSelectionDisambiguateItems", 29, 2, "count=%{signpost.telemetry:number1,public}d reason=%{signpost.telemetry:number2,public}d enableTelemetry=YES ", 109, 2, a6, a3, v26, a4, a5);
  if ((v22 & 1) != 0 && (v28 = a2[27], v29 = a2[28], __swift_project_boxed_opaque_existential_1(a2 + 24, v28), (*(v29 + 16))(v28, v29), v30))
  {
    sub_2664DE448();

    v31 = v43;
    if ((*(v43 + 48))(v18, 1, v19) == 1)
    {

      sub_2662A9238(v18, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v33 = (*(v31 + 32))(v21, v18, v19);
      if (v44 == 1)
      {
        v33 = (*(v41 + 8))(1);
      }

      v35 = a2[22];
      v34 = a2[23];
      v36 = *(v35 - 8);
      MEMORY[0x28223BE20](v33);
      v38 = &v40 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46[0] = MEMORY[0x277D84FA0];
      v46[1] = MEMORY[0x277D84F90];
      v46[2] = MEMORY[0x277D84F90];
      v46[3] = MEMORY[0x277D84F90];
      (*(v34 + 8))(v46, v35, v34);
      LOBYTE(v46[0]) = v44;
      v39 = v42;
      (*(v34 + 24))(v46, v21, v35, v34);

      sub_2662A9238(v39, &qword_280073C60, &unk_2664EE400);
      (*(v36 + 8))(v38, v35);
      (*(v31 + 8))(v21, v19);
    }
  }

  else
  {
    v32 = v45;
  }
}

uint64_t sub_2663B0E60(uint64_t *a1)
{
  v2 = sub_2664E0038();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2664E00B8();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2664E0018();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_2664E00E8();
  v55 = *(v56 - 8);
  v6 = MEMORY[0x28223BE20](v56);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - v8;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = a1[1];
  v65 = *a1;
  v66 = v16;
  v17 = a1[3];
  v49 = a1[2];
  v18 = a1[4];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v64 = *(v10 + 16);
  v64(v15, v19, v9);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v13;
    v23 = v18;
    v24 = v17;
    v25 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "PlayMediaAppSelector#logAppApiAdoption...", v22, 2u);
    v26 = v25;
    v17 = v24;
    v18 = v23;
    v13 = v48;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  v27 = *(v10 + 8);
  v27(v15, v9);
  result = AFIsInternalInstall();
  if (result)
  {
    v29 = v66;
    if (v65 != 1 && v66)
    {
      v30 = v17;
      v31 = qword_280F90D30;

      v32 = v49;

      v48 = v18;
      if (v31 != -1)
      {
        swift_once();
      }

      v65 = qword_280F90D38;
      v33 = v50;
      sub_2664E00C8();
      v34 = v51;
      *v51 = 10;
      v35 = v52;
      v36 = v53;
      (*(v52 + 104))(v34, *MEMORY[0x277D85188], v53);
      v37 = v54;
      MEMORY[0x266783140](v33, v34);
      (*(v35 + 8))(v34, v36);
      v64 = *(v55 + 8);
      v38 = v56;
      (v64)(v33, v56);
      v39 = swift_allocObject();
      v39[2] = v29;
      v39[3] = v32;
      v40 = v48;
      v39[4] = v30;
      v39[5] = v40;
      v39[6] = v57;
      aBlock[4] = sub_2663BC0FC;
      aBlock[5] = v39;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_78;
      v41 = _Block_copy(aBlock);

      v42 = v58;
      sub_2664E0068();
      v67 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v43 = v60;
      v44 = v63;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v37, v42, v43, v41);
      _Block_release(v41);
      (*(v62 + 8))(v43, v44);
      (*(v59 + 8))(v42, v61);
      (v64)(v37, v38);
    }
  }

  else
  {
    v64(v13, v19, v9);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26629C000, v45, v46, "PlayMediaAppSelector#logAppApiAdoption skipping for non-internal", v47, 2u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    return (v27)(v13, v9);
  }

  return result;
}

uint64_t sub_2663B15F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  if (qword_280F914E8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v13 = *(v7 + 16);
  v32 = v12;
  v30 = v13;
  v13(v11, v12, v6);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "PlayMediaAppSelector#logAppApiAdoption recording...", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  v17 = *(v7 + 8);
  v34 = v7 + 8;
  v31 = v17;
  v17(v11, v6);
  v38 = 1;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;

  v7 = 0;
  if (v20)
  {
    while (1)
    {
      v22 = v7;
LABEL_12:
      v23 = (*(a1 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
      v11 = v23[1];
      v20 &= v20 - 1;
      v37[0] = *v23;
      v37[1] = v11;

      sub_2663BB1DC(v37, a1, a2, v35, v36, &v38);

      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v22 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(a1 + 56 + 8 * v22);
    ++v7;
    if (v20)
    {
      v7 = v22;
      goto LABEL_12;
    }
  }

  v24 = v33;
  v30(v33, v32, v6);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    swift_beginAccess();
    *(v27 + 4) = v38;
    _os_log_impl(&dword_26629C000, v25, v26, "PlayMediaAppSelector#logAppApiAdoption recording complete. Success: %{BOOL}d", v27, 8u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  return v31(v24, v6);
}

unint64_t sub_2663B1984(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_2664EA070;
  *(inited + 40) = 0x80000002664F5CA0;
  *(inited + 48) = sub_2664E02A8();
  *(inited + 56) = 0x6F6353636973756DLL;
  *(inited + 64) = 0xEA00000000006572;
  if (a3)
  {
    if (*(a3[2] + 16))
    {

      sub_2662A3E98(a1, a2);
    }

    *(inited + 72) = sub_2664E05D8();
    strcpy((inited + 80), "podcastsScore");
    *(inited + 94) = -4864;
    if (*(a3[3] + 16))
    {

      sub_2662A3E98(a1, a2);
    }
  }

  else
  {
    *(inited + 72) = sub_2664E05D8();
    strcpy((inited + 80), "podcastsScore");
    *(inited + 94) = -4864;
  }

  *(inited + 96) = sub_2664E05D8();
  *(inited + 104) = 0x6F6353736B6F6F62;
  *(inited + 112) = 0xEA00000000006572;
  if (a3 && *(a3[4] + 16))
  {

    sub_2662A3E98(a1, a2);
  }

  *(inited + 120) = sub_2664E05D8();
  *(inited + 128) = 0x6979616C50776F6ELL;
  *(inited + 136) = 0xEF65726F6353676ELL;
  if (a4 && *(*(a4 + 48) + 16))
  {

    sub_2662A3E98(a1, a2);
  }

  *(inited + 144) = sub_2664E05D8();
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000002664F6B00;
  *(inited + 168) = sub_2664E05D8();
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x80000002664F6B20;
  if (a5)
  {
    sub_2664E0818();
  }

  *(inited + 192) = sub_2664E0648();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x80000002664F6B40;
  if (a5)
  {
    [a5 subscriptionStatus];
  }

  *(inited + 216) = sub_2664E0648();
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x80000002664F6B60;
  if (a5)
  {
    [a5 subscriptionStatus];
  }

  v12 = sub_2664E0D48();
  MEMORY[0x2667833B0](v12);

  v13 = sub_2664E02A8();

  *(inited + 240) = v13;
  v14 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_2663B1D68@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t **a8@<X8>)
{
  v76 = a6;
  v77 = a7;
  v75 = a5;
  v74 = a4;
  v82 = a8;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v84 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v69 - v18);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v20 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v21 = v12[2];
    v80 = v12 + 2;
    v81 = v20;
    v79 = v21;
    v21(v19, v20, v11);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();

    v24 = os_log_type_enabled(v22, v23);
    v73 = v17;
    v78 = a1;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v85[0] = v26;
      *v25 = 136315138;
      v27 = MEMORY[0x2667834D0](a1, MEMORY[0x277D837D0]);
      v83 = a3;
      v29 = v12;
      v30 = v11;
      v31 = sub_2662A320C(v27, v28, v85);
      a3 = v83;

      *(v25 + 4) = v31;
      v11 = v30;
      v12 = v29;
      _os_log_impl(&dword_26629C000, v22, v23, "PlayMediaAppSelector#rawPredict predicting for candidates: %s...", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      v32 = v29;
    }

    else
    {

      v32 = v12;
    }

    v33 = v32[1];
    v33(v19, v11);
    v17 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
    v19 = a2;
    sub_2663516EC(a3, v17);
    a2 = v34;
    v70 = v33;
    v71 = v12;
    v72 = v11;

    v35 = sub_266386140(MEMORY[0x277D84F90]);
    v11 = *(v78 + 16);
    if (!v11)
    {
      break;
    }

    a1 = 0;
    v83 = a2 & 0xFFFFFFFFFFFFFF8;
    v84 = (a2 & 0xC000000000000001);
    v12 = (v78 + 40);
    while (1)
    {
      v36 = *(v12 - 1);
      a3 = *v12;
      if (v84)
      {

        v17 = MEMORY[0x266783B70](a1, a2);
      }

      else
      {
        if (a1 >= *(v83 + 16))
        {
          goto LABEL_33;
        }

        v17 = *(a2 + 8 * a1 + 32);
      }

      v37 = sub_2663511A4();

      v38 = 0;
      if (*(v37 + 16))
      {
        v39 = sub_266350334(1);
        if (v40)
        {
          v38 = *(*(v37 + 56) + 8 * v39);
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v35;
      v19 = v35;
      v42 = sub_2662A3E98(v36, a3);
      v44 = v35[2];
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        break;
      }

      v17 = v43;
      if (v35[3] < v47)
      {
        sub_2664508BC(v47, isUniquelyReferenced_nonNull_native);
        v19 = v85[0];
        v42 = sub_2662A3E98(v36, a3);
        if ((v17 & 1) != (v48 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

LABEL_20:
        if (v17)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v19 = v85;
      v52 = v42;
      sub_266453E30();
      v42 = v52;
      if (v17)
      {
LABEL_7:
        v17 = v42;

        v35 = v85[0];
        *(*(v85[0] + 56) + 8 * v17) = v38;
        goto LABEL_8;
      }

LABEL_21:
      v35 = v85[0];
      *(v85[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v49 = (v35[6] + 16 * v42);
      *v49 = v36;
      v49[1] = a3;
      *(v35[7] + 8 * v42) = v38;
      v50 = v35[2];
      v46 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v46)
      {
        goto LABEL_34;
      }

      v35[2] = v51;
LABEL_8:
      ++a1;
      v12 += 2;
      if (v11 == a1)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_26:

  v53 = v73;
  v54 = v72;
  v79(v73, v81, v72);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v85[0] = v58;
    *v57 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v57 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v85);
    *(v57 + 12) = 2082;

    v59 = sub_2664E01D8();
    v61 = v60;

    v62 = sub_2662A320C(v59, v61, v85);

    *(v57 + 14) = v62;
    _os_log_impl(&dword_26629C000, v55, v56, "PlayMediaAppSelector#rawPredict %{public}s results: %{public}s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    v63 = v53;
    v64 = v72;
  }

  else
  {

    v63 = v53;
    v64 = v54;
  }

  v70(v63, v64);
  v65 = v82;
  v66 = v74;
  *v82 = v35;
  v65[1] = v66;
  v67 = v76;
  v65[2] = v75;
  v65[3] = v67;
  v65[4] = v77;
  v65[5] = 0;
}

uint64_t sub_2663B25F4(void *a1, NSObject *a2, int a3, int a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v30 = a2;
  v31 = a5;
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v26 = *v7;
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v9 + 16))(v12, v14, v8);
  v16 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "playMediaAppSelectorRawPredict";
  *(v18 + 24) = 30;
  *(v18 + 32) = 2;
  (*(v9 + 32))(v18 + v16, v12, v8);
  v19 = (v18 + v17);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;

  v21 = sub_2664E0848();
  sub_2664DFDC8(v21, &dword_26629C000, v15, "playMediaAppSelectorRawPredict", 30, 2, v14, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2663B9410;
  *(v22 + 24) = v18;

  sub_2663B28D0(sub_2663B94B8, v22, v29, v30, v27 & 1, v31, v32, v28 & 1, v26);

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_2663B28D0(char *a1, uint64_t a2, void *a3, NSObject *a4, int a5, _OWORD *a6, uint64_t a7, int a8, uint64_t a9)
{
  v45 = a8;
  v46 = a7;
  v43 = a5;
  v48 = a4;
  v47 = a3;
  v44 = a2;
  v42 = a1;
  v49 = sub_2664DE438();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v49);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v40 = a9;
  v19 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "PlayMediaAppSelector#rawPredict...", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  sub_2664DE428();
  v23 = v41;
  (*(v10 + 16))(v41, v14, v49);
  v24 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  v25 = v24 + v11;
  v26 = (v24 + v11) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = a6[9];
  *(v27 + 168) = a6[8];
  *(v27 + 184) = v28;
  v29 = a6[11];
  *(v27 + 200) = a6[10];
  *(v27 + 216) = v29;
  v30 = a6[5];
  *(v27 + 104) = a6[4];
  *(v27 + 120) = v30;
  v31 = a6[7];
  *(v27 + 136) = a6[6];
  *(v27 + 152) = v31;
  v32 = a6[1];
  *(v27 + 40) = *a6;
  *(v27 + 56) = v32;
  v33 = a6[3];
  *(v27 + 72) = a6[2];
  v34 = v42;
  v42 = v14;
  v35 = v44;
  *(v27 + 16) = v34;
  *(v27 + 24) = v35;
  v36 = v43 & 1;
  *(v27 + 32) = v36;
  *(v27 + 88) = v33;
  *(v27 + 232) = v46;
  v37 = v27 + v24;
  v38 = v49;
  (*(v10 + 32))(v37, v23, v49);
  *(v27 + v25) = v45 & 1;
  *(v27 + v26 + 8) = v40;

  sub_2663B95AC(a6, v50);

  sub_266447850(v47, 0, v48, v36, sub_2663B94FC, v27);

  return (*(v10 + 8))(v42, v38);
}

uint64_t sub_2663B2D0C(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v111 = a8;
  v112 = a7;
  v120 = a5;
  LODWORD(v119) = a4;
  v117 = sub_2664DE438();
  v113 = *(v117 - 8);
  v12 = *(v113 + 64);
  v13 = MEMORY[0x28223BE20](v117);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v95 - v14;
  v103 = sub_2664E0038();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2664E00B8();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v23 = MEMORY[0x28223BE20](v22);
  v108 = &v95 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v95 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v33 = &v95 - v32;
  v34 = *a1;
  if (*a1)
  {
    v97 = v31;
    v109 = a2;
    v110 = a3;
    v36 = a1[1];
    v35 = a1[2];
    v37 = a1[3];
    v38 = qword_280F914E8;
    v116 = v34;

    v115 = v36;

    v121 = v35;

    v118 = v37;

    if (v38 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v40 = *(v18 + 16);
    v106 = v39;
    v105 = v40;
    v40(v30, v39, v17);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "PlayMediaAppSelector#rawPredict rawSignals gathered.", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v18 + 8);
    v107 = v18 + 8;
    v44(v30, v17);
    if (v119)
    {
      v45 = *(v120 + 128);
      v96 = a9;
      if (v45)
      {
      }

      else
      {
        v105(v27, v106, v17);
        v64 = sub_2664DFE18();
        v65 = sub_2664E06D8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_26629C000, v64, v65, "Using megamodel, but didn't find it in configuration. Loading in the hotpath, which is bad", v66, 2u);
          MEMORY[0x266784AD0](v66, -1, -1);
        }

        v44(v27, v17);
        sub_2664DEF78();
        swift_allocObject();
        sub_2664DEF68();
      }

      aBlock = v116;
      *&v124 = v115;
      v67 = v118;
      *(&v124 + 1) = v121;
      *&v125 = v118;

      v120 = sub_2662C18A0(&aBlock, 0, v111 & 1, &type metadata for AudioMegamodelTriggeredLogger, &off_2877EFD00);

      if (qword_280F90D30 != -1)
      {
        swift_once();
      }

      v119 = qword_280F90D38;
      v71 = swift_allocObject();
      v72 = v115;
      v73 = v116;
      v71[2] = v116;
      v71[3] = v72;
      v74 = v120;
      v75 = v121;
      v71[4] = v121;
      v71[5] = v67;
      v76 = v96;
      v71[6] = v74;
      v71[7] = v76;
      *(&v125 + 1) = sub_2663BB984;
      v126 = v71;
      aBlock = MEMORY[0x277D85DD0];
      *&v124 = 1107296256;
      *(&v124 + 1) = sub_2662A3F90;
      *&v125 = &block_descriptor_66_0;
      v77 = _Block_copy(&aBlock);
      sub_266314294(v73, v72, v75, v67);

      v78 = v98;
      sub_2664E0068();
      v127 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v79 = v100;
      v80 = v103;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v78, v79, v77);
      _Block_release(v77);
      (*(v102 + 8))(v79, v80);
      (*(v99 + 8))(v78, v101);

      v105(v97, v106, v17);
      v81 = v113;
      v82 = v104;
      v83 = v117;
      (*(v113 + 16))(v104, v112, v117);
      v84 = sub_2664DFE18();
      v85 = sub_2664E06E8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v119 = v44;
        v87 = v82;
        v88 = v86;
        *v86 = 134349056;
        v89 = v114;
        sub_2664DE428();
        sub_2664DE388();
        v91 = v90;
        v92 = *(v81 + 8);
        v92(v89, v83);
        v93 = v87;
        v44 = v119;
        v92(v93, v83);
        *(v88 + 1) = v91;
        _os_log_impl(&dword_26629C000, v84, v85, "PlayMediaAppSelector#rawPredict completed in %{public}fs", v88, 0xCu);
        MEMORY[0x266784AD0](v88, -1, -1);
      }

      else
      {

        (*(v81 + 8))(v82, v83);
      }

      v94 = v109;
      v44(v97, v17);
      aBlock = 0;
      *&v124 = v116;
      *(&v124 + 1) = v115;
      *&v125 = v121;
      *(&v125 + 1) = v118;
      v126 = v120;
      v94(&aBlock);

      return sub_2663BB994(aBlock, v124, *(&v124 + 1), v125, *(&v125 + 1), v126);
    }

    else
    {
      v51 = *(v120 + 120);
      v127 = v51;
      if (v51)
      {
        v52 = v116;
        aBlock = v116;
        *&v124 = v115;
        v53 = v115;
        v96 = a9;
        v54 = v121;
        *(&v124 + 1) = v121;
        *&v125 = v118;
        v55 = v113;
        (*(v113 + 16))(v114, v112, v117);
        v56 = (*(v55 + 80) + 48) & ~*(v55 + 80);
        v57 = (v12 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
        v58 = swift_allocObject();
        *(v58 + 2) = v52;
        *(v58 + 3) = v53;
        *(v58 + 4) = v54;
        v59 = v117;
        v60 = v118;
        *(v58 + 5) = v118;
        (*(v55 + 32))(&v58[v56], v114, v59);
        v61 = &v58[v57];
        v62 = v110;
        *v61 = v109;
        v61[1] = v62;
        *&v58[(v57 + 23) & 0xFFFFFFFFFFFFFFF8] = v96;
        v63 = v121;
        sub_266314294(v52, v53, v121, v60);
        sub_2662A7224(&v127, v122, &qword_2800732F0, &qword_2664EA228);

        sub_2663BB538(&aBlock, v51, sub_2663B9608, v58);
        sub_2662A9238(&v127, &qword_2800732F0, &qword_2664EA228);

        return sub_2663142F4(v52, v53, v63, v60);
      }

      else
      {
        sub_2663142F4(v116, v115, v121, v118);
        v105(v21, v106, v17);
        v68 = sub_2664DFE18();
        v69 = sub_2664E06D8();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_26629C000, v68, v69, "PlayMediaAppSelector#select error loading app selection model", v70, 2u);
          MEMORY[0x266784AD0](v70, -1, -1);
        }

        v44(v21, v17);
        aBlock = 1;
        v124 = 0u;
        v125 = 0u;
        v126 = 0;
        return (v109)(&aBlock);
      }
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    (*(v18 + 16))(v33, v46, v17);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "PlayMediaAppSelector#rawPredict no results", v49, 2u);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    (*(v18 + 8))(v33, v17);
    aBlock = 1;
    v124 = 0u;
    v125 = 0u;
    v126 = 0;
    return (a2)(&aBlock);
  }
}

uint64_t sub_2663B3B50(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(__int128 *), uint64_t a8, uint64_t a9)
{
  v55 = a8;
  v56 = a7;
  v49 = a6;
  v48 = a5;
  v46 = a9;
  v53 = sub_2664DE438();
  v52 = *(v53 - 8);
  v13 = MEMORY[0x28223BE20](v53);
  v45[0] = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = v45 - v15;
  v57 = sub_2664DFE38();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E0038();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_2664E00B8();
  v21 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[1];
  v62 = *a1;
  v63 = v24;
  v64 = a1[2];
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v45[1] = qword_280F90D38;
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = v48;
  *(v25 + 32) = a4;
  *(v25 + 40) = v26;
  v27 = a1[1];
  *(v25 + 48) = *a1;
  *(v25 + 64) = v27;
  *(v25 + 80) = a1[2];
  *(v25 + 96) = v46;
  *&v61 = sub_2663BC074;
  *(&v61 + 1) = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v60 = sub_2662A3F90;
  *(&v60 + 1) = &block_descriptor_72;
  v28 = _Block_copy(&aBlock);

  sub_2662A7224(&v62, v58, &qword_2800732F8, &qword_2664EA230);
  sub_2664E0068();
  v58[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v23, v20, v28);
  _Block_release(v28);
  (*(v18 + 8))(v20, v17);
  (*(v21 + 8))(v23, v47);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = __swift_project_value_buffer(v57, qword_280F914F0);
  swift_beginAccess();
  v31 = v54;
  v32 = v51;
  (*(v54 + 16))(v51, v30, v29);
  v33 = v52;
  v34 = v50;
  v35 = v53;
  (*(v52 + 16))(v50, v49, v53);
  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134349056;
    v39 = v45[0];
    sub_2664DE428();
    sub_2664DE388();
    v41 = v40;
    v42 = *(v33 + 8);
    v42(v39, v35);
    v42(v34, v35);
    *(v38 + 4) = v41;
    _os_log_impl(&dword_26629C000, v36, v37, "PlayMediaAppSelector#rawPredict completed in %{public}fs", v38, 0xCu);
    v43 = v38;
    v29 = v57;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v34, v35);
  }

  (*(v31 + 8))(v32, v29);
  aBlock = v62;
  v60 = v63;
  v61 = v64;
  return v56(&aBlock);
}

uint64_t sub_2663B41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v33 = a3;
  v34 = a4;
  sub_2663BBA0C(&v32);
  if (*a5 >= 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v16, v22, v10);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_2664E01D8();
      v29 = sub_2662A320C(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_26629C000, v23, v24, "PlayMediaAppSelector#rawPredict (async) model confidences: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    return (*(v11 + 8))(v16, v10);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v17, v10);
    v18 = sub_2664DFE18();
    v19 = sub_2664E06E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26629C000, v18, v19, "PlayMediaAppSelector#rawPredict (async) model confidences: nil or no result", v20, 2u);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_2663B4554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = a3;
  v27 = a4;
  sub_2663BBA0C(&v25);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = MEMORY[0x2667834D0](a5, MEMORY[0x277D837D0]);
    v21 = sub_2662A320C(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_26629C000, v15, v16, "PlayMediaAppSelector#rawPredict (async) megamodel predictions: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_2663B479C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v49[2] = a9;
  v49[3] = a8;
  v21 = sub_2664DFE38();
  v50 = *(v21 - 8);
  v51 = v21;
  MEMORY[0x28223BE20](v21);
  v52 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA080;
  *(inited + 32) = 0x6449707061;
  v49[4] = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  if (!a2)
  {
    a1 = 0;
  }

  v49[1] = a1;
  v24 = sub_2664E02A8();

  *(inited + 48) = v24;
  *(inited + 56) = 1701080931;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_2664E0648();
  *(inited + 80) = 0x70616C45656D6974;
  *(inited + 88) = 0xEB00000000646573;
  *(inited + 96) = sub_2664E05D8();
  *(inited + 104) = 0x65636E6174736E69;
  *(inited + 112) = 0xE800000000000000;
  swift_beginAccess();
  sub_2662A5550(a3 + 96, v53);
  v25 = v54;
  v26 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  (*(v26 + 23))(v25, v26);
  v27 = sub_2664E0648();
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  *(inited + 120) = v27;
  *(inited + 128) = 0x756F43736D657469;
  *(inited + 136) = 0xEA0000000000746ELL;
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  *(inited + 144) = sub_2664E08F8();
  *(inited + 152) = 0x7265666E49707061;
  *(inited + 160) = 0xEB00000000646572;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 176) = 0x706D657474417361;
  *(inited + 184) = 0xEB00000000646574;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 200) = 0x7265735577656ELL;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 224) = 0x646573557361;
  *(inited + 232) = 0xE600000000000000;
  *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 248), "asExperimentId");
  *(inited + 263) = -18;

  v28 = sub_2664E02A8();

  *(inited + 264) = v28;
  strcpy((inited + 272), "asTreatmentId");
  *(inited + 286) = -4864;
  v29 = v50;

  v30 = sub_2664E02A8();

  *(inited + 288) = v30;
  *(inited + 296) = 0x756F6C6C6F527361;
  *(inited + 304) = 0xEB00000000644974;

  v31 = sub_2664E02A8();

  *(inited + 312) = v31;
  *(inited + 320) = 0x6469666E6F437361;
  *(inited + 328) = 0xEF73624165636E65;
  *(inited + 336) = sub_2664E05D8();
  *(inited + 344) = 0xD000000000000010;
  *(inited + 352) = 0x80000002664F6DD0;
  *(inited + 360) = sub_2664E05D8();
  *(inited + 368) = 0x64497070417361;
  *(inited + 376) = 0xE700000000000000;

  v32 = sub_2664E02A8();

  *(inited + 384) = v32;
  strcpy((inited + 392), "successCount");
  *(inited + 405) = 0;
  *(inited + 406) = -5120;
  *(inited + 408) = sub_2664E08F8();
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x80000002664F6DF0;
  *(inited + 432) = sub_2664E08F8();
  *(inited + 440) = 0x6F43646573557361;
  *(inited + 448) = 0xEB00000000746E75;
  *(inited + 456) = sub_2664E08F8();
  strcpy((inited + 464), "responseCode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  v57[0] = -2;
  sub_2664E0D48();
  v33 = sub_2664E02A8();

  *(inited + 480) = v33;
  v34 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = v51;
  v36 = __swift_project_value_buffer(v51, qword_280F914F0);
  swift_beginAccess();
  v37 = v52;
  (*(v29 + 16))(v52, v36, v35);

  v38 = sub_2664DFE18();
  v39 = sub_2664E06C8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v29;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v41 = 136315138;
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v43 = sub_2664E01D8();
    v45 = sub_2662A320C(v43, v44, v53);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_26629C000, v38, v39, "PlayMediaAppSelector#select recording result analytics data due to disambiguation result: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    (*(v40 + 8))(v52, v35);
  }

  else
  {

    (*(v29 + 8))(v37, v35);
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v34;
  v47 = sub_2664E02A8();
  v55 = sub_2663BCA64;
  v56 = v46;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 1107296256;
  v53[2] = sub_2663B8828;
  v54 = &block_descriptor_192;
  v48 = _Block_copy(v53);

  AnalyticsSendEventLazy();
  _Block_release(v48);
}

void sub_2663B5040(uint64_t a1, uint64_t a2, char a3, char a4, unsigned int a5, unsigned int a6, void *a7, uint64_t a8, double a9)
{
  v38 = a8;
  v37 = __PAIR64__(a6, a5);
  v12 = sub_2664DFE38();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073300, &qword_2664EA248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EA090;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_2664E0558();
  *(inited + 56) = 0x7261507473726966;
  *(inited + 64) = 0xEA00000000007974;
  if (a2)
  {
    _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(a1, a2);
    *(inited + 72) = sub_2664E0558();
    *(inited + 80) = 0x7261506472696874;
    *(inited + 88) = 0xEA00000000007974;
    _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(a1, a2);
  }

  else
  {
    *(inited + 72) = sub_2664E0558();
    *(inited + 80) = 0x7261506472696874;
    *(inited + 88) = 0xEA00000000007974;
  }

  *(inited + 96) = sub_2664E0558();
  *(inited + 104) = 0x7265735577656ELL;
  *(inited + 112) = 0xE700000000000000;
  v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *(inited + 120) = [v16 initWithBool_];
  strcpy((inited + 128), "emptyResults");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = sub_2664E0558();
  *(inited + 152) = 0x726F4E776F6C6562;
  *(inited + 160) = 0xEF64657A696C616DLL;
  *(inited + 168) = sub_2664E0558();
  strcpy((inited + 176), "belowAbsolute");
  *(inited + 190) = -4864;
  *(inited + 192) = sub_2664E0558();
  strcpy((inited + 200), "experimentId");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v17 = v14;
  v19 = v39;
  v18 = v40;

  v20 = sub_2664E02A8();

  *(inited + 216) = v20;
  *(inited + 224) = 0x4974756F6C6C6F72;
  *(inited + 232) = 0xE900000000000064;

  v21 = sub_2664E02A8();

  *(inited + 240) = v21;
  *(inited + 248) = 0x6E656D7461657274;
  *(inited + 256) = 0xEB00000000644974;

  v22 = sub_2664E02A8();

  *(inited + 264) = v22;
  *(inited + 272) = 0x72656C6C6163;
  *(inited + 280) = 0xE600000000000000;
  v41[0] = v38;
  sub_2664E0D48();
  v23 = sub_2664E02A8();

  *(inited + 288) = v23;
  *(inited + 296) = 0x70616C45656D6974;
  *(inited + 304) = 0xEB00000000646573;
  *(inited + 312) = sub_2664E05D8();
  v24 = sub_26638612C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073308, &unk_2664EA250);
  swift_arrayDestroy();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  (*(v19 + 16))(v17, v25, v18);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v17;
    v29 = v28;
    v30 = swift_slowAlloc();
    v41[0] = v30;
    *v29 = 136315138;
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v31 = sub_2664E01D8();
    v33 = sub_2662A320C(v31, v32, v41);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_26629C000, v26, v27, "PlayMediaAppSelector#select recording app selection result to analytics: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);

    (*(v19 + 8))(v40, v18);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v24;
  v35 = sub_2664E02A8();
  v41[4] = sub_2663BCF44;
  v41[5] = v34;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 1107296256;
  v41[2] = sub_2663B8828;
  v41[3] = &block_descriptor_198;
  v36 = _Block_copy(v41);

  AnalyticsSendEventLazy();
  _Block_release(v36);
}

uint64_t sub_2663B5720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t *a13, unsigned __int8 a14, uint64_t a15, void *a16, uint64_t a17)
{
  v187 = a8;
  v188 = a6;
  *&v196 = a7;
  v197 = a4;
  v194 = a3;
  v184 = a2;
  v195 = a13;
  v193 = a13[5];
  v179 = sub_2664E0038();
  v20 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v177 = v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2664E00B8();
  v22 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2664DE438();
  v185 = *(v24 - 8);
  v186 = v24;
  MEMORY[0x28223BE20](v24);
  v175 = v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2664DFE38();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v199 = v165 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v190 = v165 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v181 = v165 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v189 = v165 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v165 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v165 - v42;
  v198 = a1;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v26, qword_280F914F0);
    swift_beginAccess();
    (*(v27 + 16))(v30, v51, v26);
    v52 = v194;

    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v209 = v56;
      *v55 = 136446210;
      *&v218[0] = v184;
      *(&v218[0] + 1) = v52;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v57 = sub_2664E0318();
      v59 = v27;
      v60 = sub_2662A320C(v57, v58, &v209);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_26629C000, v53, v54, "PlayMediaAppSelector#select error saving report to context; no context for refId: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);

      return (*(v59 + 8))(v30, v26);
    }

    else
    {

      return (*(v27 + 8))(v30, v26);
    }
  }

  v172 = v22;
  v173 = v20;
  v191 = v26;
  v204 = a5;
  if (a5)
  {
    v44 = v188;
    swift_beginAccess();
    sub_2662A5550(v44 + 96, v205);
    v45 = v27;
    v46 = v206;
    v47 = v207;
    __swift_project_boxed_opaque_existential_1(v205, v206);
    v48 = *(v47 + 160);

    v49 = v47;
    v27 = v45;
    v48(v46, v49);
    v26 = v191;
    __swift_destroy_boxed_opaque_existential_1Tm(v205);
    LODWORD(v50) = (*(v185 + 48))(v43, 1, v186) == 1;
    sub_2662A9238(v43, &qword_2800737D0, qword_2664E4FD0);
  }

  else
  {

    LODWORD(v50) = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v26, qword_280F914F0);
  swift_beginAccess();
  v63 = *(v27 + 16);
  v202 = v27 + 16;
  v203 = v62;
  v201 = v63;
  v63(v40, v62, v26);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06C8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v50;
    _os_log_impl(&dword_26629C000, v64, v65, "PlayMediaAppSelector#select first selected prediction?:%{BOOL}d", v66, 8u);
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  v68 = *(v27 + 8);
  v67 = v27 + 8;
  v200 = v68;
  v68(v40, v26);
  v69 = v196;
  v70 = *(v196 + 152);
  if (v70)
  {
    v71 = *(v196 + 144);
    v72 = *(v196 + 152);
  }

  else
  {
    v71 = 0;
    v72 = 0xE000000000000000;
  }

  v73 = a10;
  v74 = *(v196 + 168);
  if (!v74)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    v77 = *(v196 + 184);
    if (v77)
    {
      goto LABEL_18;
    }

LABEL_20:
    v78 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_21;
  }

  v75 = *(v196 + 160);
  v76 = *(v196 + 168);
  v77 = *(v196 + 184);
  if (!v77)
  {
    goto LABEL_20;
  }

LABEL_18:
  v78 = *(v196 + 176);
  v79 = v77;
LABEL_21:
  v192 = v67;
  v80 = a15;
  v183 = a10;
  if (a10)
  {
    v81 = v187;
    v82 = a12;
    v83 = a11;
  }

  else
  {
    v81 = 0;
    v82 = 0xBFF0000000000000;
    v73 = 0xE000000000000000;
    v83 = 0xBFF0000000000000;
  }

  v182 = v77;
  v84 = a16;
  v85 = a14;
  v86 = *v195;
  v87 = *v195 == 1;
  v170 = a11;
  v171 = a12;
  v180 = a15;
  v174 = a14;
  if (v87)
  {
    v94 = 0;
    v86 = 0;
  }

  else
  {
    v165[1] = v70;
    v166 = v78;
    v168 = v74;
    v169 = a16;
    v167 = v50;
    v88 = v71;
    v89 = v72;
    v90 = v75;
    v50 = v76;
    v91 = v79;
    v92 = v81;
    v165[0] = v82;
    v93 = v83;

    v83 = v93;
    v82 = v165[0];
    v81 = v92;
    v79 = v91;
    v78 = v166;
    v76 = v50;
    v75 = v90;
    v72 = v89;
    v71 = v88;
    v85 = v174;
    v94 = v193;
    v80 = v180;
    LOBYTE(v50) = v167;
    v84 = v169;
    v69 = v196;
  }

  v95 = *(v69 + 16);
  LOBYTE(v209) = v204 != 0;
  *(&v209 + 1) = v71;
  *&v210 = v72;
  *(&v210 + 1) = v75;
  *&v211 = v76;
  *(&v211 + 1) = v78;
  *&v212 = v79;
  *(&v212 + 1) = v83;
  *&v213 = v82;
  *(&v213 + 1) = v81;
  *&v214 = v73;
  *(&v214 + 1) = v95;
  *&v215 = v86;
  BYTE8(v215) = v85 & 1;
  BYTE9(v215) = v50;
  *&v216 = v80;
  *(&v216 + 1) = a9;
  v217 = v94;
  nullsub_3();
  v96 = v198;
  swift_beginAccess();
  v97 = *(v96 + 32);
  v98 = *(v96 + 48);
  v99 = *(v96 + 80);
  v218[3] = *(v96 + 64);
  v218[4] = v99;
  v218[1] = v97;
  v218[2] = v98;
  v100 = *(v96 + 96);
  v101 = *(v96 + 112);
  v102 = *(v96 + 128);
  v219 = *(v96 + 144);
  v218[6] = v101;
  v218[7] = v102;
  v218[5] = v100;
  v218[0] = *(v96 + 16);
  *(v96 + 80) = v213;
  *(v96 + 16) = v209;
  v103 = v217;
  v105 = v215;
  v104 = v216;
  *(v96 + 96) = v214;
  *(v96 + 112) = v105;
  *(v96 + 128) = v104;
  *(v96 + 144) = v103;
  v107 = v211;
  v106 = v212;
  *(v96 + 32) = v210;
  *(v96 + 48) = v107;
  *(v96 + 64) = v106;
  v108 = v183;

  sub_2662A9238(v218, &qword_280072590, &qword_2664E3B48);
  swift_beginAccess();
  v109 = *(v96 + 184);
  *(v96 + 184) = v84;
  v110 = v84;

  v111 = v189;
  v112 = v191;
  v201(v189, v203, v191);
  v113 = v194;

  v114 = sub_2664DFE18();
  v115 = sub_2664E06E8();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v208[0] = v117;
    *v116 = 136446210;
    v205[0] = v184;
    v205[1] = v113;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v118 = sub_2664E0318();
    v120 = v108;
    v121 = sub_2662A320C(v118, v119, v208);

    *(v116 + 4) = v121;
    v108 = v120;
    _os_log_impl(&dword_26629C000, v114, v115, "PlayMediaAppSelector#select saved report to context for refId: %{public}s", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    MEMORY[0x266784AD0](v117, -1, -1);
    MEMORY[0x266784AD0](v116, -1, -1);
  }

  v200(v111, v112);
  v122 = v197;
  v123 = v199;
  v124 = v190;
  v125 = v112;
  if (v204)
  {
    v201(v190, v203, v112);
    v126 = sub_2664DFE18();
    v127 = sub_2664E06C8();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_26629C000, v126, v127, "PlayMediaAppSelector#select updating selected app signal to represent app selection choice", v128, 2u);
      v129 = v128;
      v123 = v199;
      MEMORY[0x266784AD0](v129, -1, -1);
    }

    v200(v124, v112);
    if (*v195 != 1)
    {
      if (v195[1])
      {
        v131 = v195[2];
        v132 = *(v131 + 16);
        if (v132)
        {
          v133 = v131 + 32;
          *&v130 = 136315138;
          v196 = v130;
          do
          {
            sub_2662A5550(v133, v205);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
            type metadata accessor for SelectedAppSignal();
            if (swift_dynamicCast())
            {
              v134 = v208[0];
              v135 = v125;
              v136 = v204;
              *(v208[0] + 16) = v122;
              *(v134 + 24) = v136;

              v201(v123, v203, v135);

              v137 = sub_2664DFE18();
              v138 = sub_2664E06E8();

              if (os_log_type_enabled(v137, v138))
              {
                v139 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                v205[0] = v140;
                *v139 = v196;
                *(v139 + 4) = sub_2662A320C(v197, v136, v205);
                _os_log_impl(&dword_26629C000, v137, v138, "PlayMediaAppSelector#select updating selected app signal bundle identifier to: %s", v139, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v140);
                v141 = v140;
                v122 = v197;
                MEMORY[0x266784AD0](v141, -1, -1);
                MEMORY[0x266784AD0](v139, -1, -1);
              }

              else
              {
              }

              v123 = v199;
              v200(v199, v135);
              v125 = v135;
            }

            v133 += 40;
            --v132;
          }

          while (v132);
        }
      }
    }
  }

  v142 = v181;
  v201(v181, v203, v112);
  v143 = sub_2664DFE18();
  v144 = sub_2664E06E8();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    *v145 = 0;
    _os_log_impl(&dword_26629C000, v143, v144, "PlayMediaAppSelector#select NOT updating selected app signal bundle identifier as none received", v145, 2u);
    MEMORY[0x266784AD0](v145, -1, -1);
  }

  v200(v142, v125);
  if (v180 != 1)
  {
  }

  v146 = v187;
  if (v108)
  {
    v147 = v187;
  }

  else
  {
    v147 = 0;
  }

  v148 = v175;
  v149 = v174 & 1;
  sub_2664DE428();
  sub_2664DE388();
  v151 = v150;
  (*(v185 + 8))(v148, v186);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v152 = swift_allocObject();
  *(v152 + 32) = v151;
  v153 = v196;
  v154 = *(v196 + 144);
  *(v152 + 184) = *(v196 + 128);
  *(v152 + 200) = v154;
  v155 = v153[11];
  *(v152 + 216) = v153[10];
  *(v152 + 232) = v155;
  v156 = v153[5];
  *(v152 + 120) = v153[4];
  *(v152 + 136) = v156;
  v157 = v153[7];
  *(v152 + 152) = v153[6];
  *(v152 + 168) = v157;
  v158 = v153[1];
  *(v152 + 56) = *v153;
  *(v152 + 72) = v158;
  v159 = v153[3];
  *(v152 + 88) = v153[2];
  *(v152 + 16) = v147;
  *(v152 + 24) = v108;
  *(v152 + 40) = v188;
  *(v152 + 48) = v149;
  *(v152 + 104) = v159;
  *(v152 + 248) = v146;
  *(v152 + 256) = v108;
  v160 = v171;
  *(v152 + 264) = v170;
  *(v152 + 272) = v160;
  v208[4] = sub_2663BCA28;
  v208[5] = v152;
  v208[0] = MEMORY[0x277D85DD0];
  v208[1] = 1107296256;
  v208[2] = sub_2662A3F90;
  v208[3] = &block_descriptor_186;
  v161 = _Block_copy(v208);
  swift_bridgeObjectRetain_n();

  sub_2663B95AC(v153, v205);
  v162 = v176;
  sub_2664E0068();
  v205[0] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v163 = v177;
  v164 = v179;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v162, v163, v161);
  _Block_release(v161);

  (*(v173 + 8))(v163, v164);
  (*(v172 + 8))(v162, v178);
}

BOOL sub_2663B67BC(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v33 = a1;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  swift_beginAccess();
  v31 = v2;
  sub_2662A5550(v2 + 96, v35);
  v10 = v36;
  v11 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v34 = (*(v11 + 184))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v13 = *(v4 + 16);
  v13(v9, v12, v3);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v7;
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v34;
    _os_log_impl(&dword_26629C000, v14, v15, "PlayMediaAppSelector#select used app selection at least %ld times", v17, 0xCu);
    v18 = v17;
    v7 = v16;
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v19(v9, v3);
  result = 0;
  if (v33 == 1 && v34 <= 10)
  {
    v13(v7, v12, v3);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v7;
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "PlayMediaAppSelector#select siri caller incrementing interactions", v24, 2u);
      v25 = v24;
      v7 = v23;
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v19(v7, v3);
    v26 = v31;
    swift_beginAccess();
    v27 = *(v26 + 120);
    v28 = *(v26 + 128);
    __swift_mutable_project_boxed_opaque_existential_1(v26 + 96, v27);
    v29 = v34;
    (*(v28 + 192))(v34 + 1, v27, v28);
    swift_endAccess();
    return v29 < *(v32 + 104);
  }

  return result;
}

void *PlayMediaAppSelector.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_2662F6408((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);
  return v0;
}

uint64_t PlayMediaAppSelector.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  sub_2662F6408((v0 + 29));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 39);

  return swift_deallocClassInstance();
}

uint64_t sub_2663B6C3C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((*v2 + 56), *(*v2 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *v5;

  sub_26630F97C(0, 1, v7, sub_2663BCFA0, v6);
}

uint64_t AppSelectionReport.experimentId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AppSelectionReport.treatmentId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppSelectionReport.rolloutId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AppSelectionReport.bundleIdentifier.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_2663B6E10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073310, &unk_2664EA270);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385AA8(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002664EA1E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000013, 0x80000002664EA1E0, 1, v3);
  *(v0 + 24) = result;
  off_280F908B0 = v0;
  return result;
}

id sub_2663B6F24()
{
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90D38;
  qword_280F908C8 = qword_280F90D38;

  return v1;
}

uint64_t sub_2663B6F88()
{
  v0 = sub_2664E0018();
  __swift_allocate_value_buffer(v0, qword_280F908E0);
  *__swift_project_value_buffer(v0, qword_280F908E0) = 60;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_2663B7018(__int128 *a1, uint64_t *a2)
{
  v2 = a1[7];
  v27 = a1[6];
  v28 = v2;
  v29 = *(a1 + 16);
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 48);
  v9 = *(v6 + 80);
  v30[3] = *(v6 + 64);
  v30[4] = v9;
  v30[1] = v7;
  v30[2] = v8;
  v10 = *(v6 + 96);
  v11 = *(v6 + 112);
  v12 = *(v6 + 128);
  v31 = *(v6 + 144);
  v30[6] = v11;
  v30[7] = v12;
  v30[5] = v10;
  v30[0] = *(v6 + 16);
  v13 = v21;
  *(v6 + 80) = v25;
  *(v6 + 16) = v13;
  v14 = v29;
  v16 = v27;
  v15 = v28;
  *(v6 + 96) = v26;
  *(v6 + 112) = v16;
  *(v6 + 128) = v15;
  *(v6 + 144) = v14;
  v17 = v23;
  v18 = v24;
  *(v6 + 32) = v22;
  *(v6 + 48) = v17;
  *(v6 + 64) = v18;
  sub_2662A7224(&v21, &v20, &qword_280072590, &qword_2664E3B48);
  return sub_2662A9238(v30, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B7120@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  v4 = *(v1 + 128);
  v21 = *(v1 + 112);
  v22 = v4;
  v5 = *(v1 + 32);
  v6 = *(v1 + 64);
  v17 = *(v1 + 48);
  v7 = v17;
  v18 = v6;
  v8 = *(v1 + 64);
  v9 = *(v1 + 96);
  v19 = *(v1 + 80);
  v10 = v19;
  v20 = v9;
  v11 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v12 = v16[0];
  v16[1] = v11;
  v13 = *(v1 + 128);
  *(a1 + 96) = v21;
  *(a1 + 112) = v13;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 144);
  *a1 = v12;
  *(a1 + 16) = v5;
  return sub_2662A7224(v16, &v15, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B71CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v12[6] = *(v1 + 112);
  v12[7] = v3;
  v13 = *(v1 + 144);
  v4 = *(v1 + 64);
  v12[2] = *(v1 + 48);
  v12[3] = v4;
  v5 = *(v1 + 96);
  v12[4] = *(v1 + 80);
  v12[5] = v5;
  v6 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v6;
  v7 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v7;
  v8 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v8;
  *(v1 + 144) = *(a1 + 128);
  v9 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v9;
  v10 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v10;
  return sub_2662A9238(v12, &qword_280072590, &qword_2664E3B48);
}

uint64_t sub_2663B72C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[19];
  v5 = v3[20];
  v6 = v3[21];
  v7 = v3[22];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_266314294(v4, v5, v6, v7);
}

uint64_t sub_2663B7314(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[19];
  v8 = v6[20];
  v9 = v6[21];
  v10 = v6[22];
  v6[19] = v2;
  v6[20] = v3;
  v6[21] = v4;
  v6[22] = v5;
  sub_266314294(v2, v3, v4, v5);
  return sub_2663142F4(v7, v8, v9, v10);
}

uint64_t sub_2663B73B0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_266314294(v3, v4, v5, v6);
}

uint64_t sub_2663B7400(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[19];
  v4 = v1[20];
  v5 = v1[21];
  v6 = v1[22];
  v7 = a1[1];
  *(v1 + 19) = *a1;
  *(v1 + 21) = v7;
  return sub_2663142F4(v3, v4, v5, v6);
}

void sub_2663B74A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;
  v5 = v2;
}

void *sub_2663B74FC()
{
  swift_beginAccess();
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

void sub_2663B7540(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 184);
  *(v1 + 184) = a1;
}

void sub_2663B761C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 192) = v2;
}

uint64_t sub_2663B76AC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v51 = a3;
  v50 = sub_2664E0038();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2664E00B8();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2664E00E8();
  v43 = *(v44 - 8);
  v10 = MEMORY[0x28223BE20](v44);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = v41 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSelectionContext();
  v18 = swift_allocObject();
  sub_2663BCD98(v55);
  v19 = v55[7];
  *(v18 + 112) = v55[6];
  *(v18 + 128) = v19;
  *(v18 + 144) = v56;
  v20 = v55[3];
  *(v18 + 48) = v55[2];
  *(v18 + 64) = v20;
  v21 = v55[5];
  *(v18 + 80) = v55[4];
  *(v18 + 96) = v21;
  v22 = v55[1];
  *(v18 + 16) = v55[0];
  *(v18 + 32) = v22;
  *(v18 + 184) = 0;
  *(v18 + 168) = 0u;
  *(v18 + 152) = 0u;
  *(v18 + 192) = 12;
  aBlock[0] = v18;
  a1(aBlock);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v23, v14);

  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = a5;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v26 = 136446210;
    *(v26 + 4) = sub_2662A320C(v51, a4, aBlock);
    _os_log_impl(&dword_26629C000, v24, v25, "AppSelectionContext#sharedCompletion returning new context for refId: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v29 = v28;
    a5 = v27;
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if (qword_280F908C0 != -1)
  {
    swift_once();
  }

  v41[1] = qword_280F908C8;
  sub_2664E00C8();
  if (qword_280F908D8 != -1)
  {
    swift_once();
  }

  v30 = sub_2664E0018();
  v31 = __swift_project_value_buffer(v30, qword_280F908E0);
  v32 = v42;
  MEMORY[0x266783140](v12, v31);
  v33 = *(v43 + 8);
  v34 = v44;
  v33(v12, v44);
  v35 = swift_allocObject();
  v35[2] = v51;
  v35[3] = a4;
  v35[4] = a5;
  aBlock[4] = sub_2663BCDB4;
  v54 = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_262;
  v36 = _Block_copy(aBlock);

  v37 = v45;
  sub_2664E0068();
  v52 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v38 = v47;
  v39 = v50;
  sub_2664E0A08();
  MEMORY[0x2667837B0](v32, v37, v38, v36);
  _Block_release(v36);
  (*(v49 + 8))(v38, v39);
  (*(v46 + 8))(v37, v48);
  v33(v32, v34);
}

uint64_t sub_2663B7D84(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(a1, a2, v15);
    _os_log_impl(&dword_26629C000, v9, v10, "AppSelectionContext#sharedCompletion Removing old context with refId: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_280F908A8 != -1)
  {
    swift_once();
  }

  v15[0] = a1;
  v15[1] = a2;
  (*(*off_280F908B0 + 192))(v15);
}

uint64_t static AppSelectionContext.shared.getter()
{
  v0 = sub_2664E0018();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = (&v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_2664E00E8();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v57 = v13 + 16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v15 = *(v8 + 16);
  v49 = v14;
  v48 = v15;
  v15(v12, v14, v7);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "AppSelectionContext#shared waiting for context...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = *(v8 + 8);
  v59 = v8 + 8;
  v50 = v19;
  v19(v12, v7);
  v20 = dispatch_semaphore_create(0);
  v47 = v7;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_280F90B40;
  v22 = unk_280F90B48;
  v23 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v24 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v26);
  v27 = (*(v22 + 16))(v21, v22);
  v29 = v28;
  (*(v24 + 8))(v26, v21);
  v30 = swift_allocObject();
  *(v30 + 16) = v20;
  *(v30 + 24) = v13;
  v31 = v20;

  static AppSelectionContext.shared(refId:completion:)(v27, v29, sub_2663B9064, v30);

  v32 = v51;
  sub_2664E00C8();
  *v2 = 200;
  v34 = v55;
  v33 = v56;
  (*(v55 + 104))(v2, *MEMORY[0x277D85178], v56);
  v35 = v52;
  MEMORY[0x266783140](v32, v2);
  (*(v34 + 8))(v2, v33);
  v36 = *(v53 + 8);
  v37 = v32;
  v38 = v54;
  v36(v37, v54);
  sub_2664E0868();
  v36(v35, v38);
  v39 = v58;
  v40 = v47;
  v48(v58, v49, v47);

  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    swift_beginAccess();
    *(v43 + 4) = *(v13 + 16) != 0;

    _os_log_impl(&dword_26629C000, v41, v42, "AppSelectionContext#shared retrieved context?:%{BOOL}d", v43, 8u);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  else
  {

    v41 = v31;
  }

  v50(v39, v40);
  swift_beginAccess();
  v44 = *(v13 + 16);

  return v44;
}

uint64_t sub_2663B86CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;

  return sub_2664E0888();
}

uint64_t AppSelectionContext.deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_2662A9238(v6, &qword_280072590, &qword_2664E3B48);
  sub_2663142F4(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return v0;
}

uint64_t AppSelectionContext.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_2662A9238(v6, &qword_280072590, &qword_2664E3B48);
  sub_2663142F4(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return swift_deallocClassInstance();
}

id sub_2663B8828(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    v4 = sub_2664E01A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2663B88EC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 17);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v10);
}

uint64_t sub_2663B89C8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t sub_2663B8A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_BYTE *))
{
  v9[0] = *a1;
  v7 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t _s16SiriAudioSupport20PlayMediaAppSelectorC4warm6caller10completionyAA0abF15PredictorCallerO_ySbctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_26629C000, v11, v12, "PlayMediaAppSelector#warm caller:%ld...", v13, 0xCu);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  qword_280F91CD8 = a1;
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v14 = qword_280F90760;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(v14, &unk_2877E1AF8, sub_2663BCDC0, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072468, &qword_2664E3630);
  return swift_arrayDestroy();
}

uint64_t _s16SiriAudioSupport19AppSelectionContextC9removeAllyyFZ_0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F908A8 != -1)
  {
    swift_once();
  }

  (*(*off_280F908B0 + 200))();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AppSelectionContext#removeAll removed all contexts", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2663B916C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2663B91B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2663B9410(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663B89C8(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2663B94B8(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t sub_2663B94FC(uint64_t *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 240) & ~*(v3 + 80);
  return sub_2663B2D0C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + 40, *(v1 + 232), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2663B9608(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663B3B50(a1, v1[2], v1[3], v1[4], v1[5], v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663B96BC()
{
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  sub_2662A5550(qword_280F91C10, v35);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v36[0] = qword_280F905C8;
  *(v36 + 5) = *(&qword_280F905C8 + 5);
  v18 = type metadata accessor for SelfEmitter();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v34);
  *(&v31 + 1) = &type metadata for DeviceProvider;
  *&v32[0] = &protocol witness table for DeviceProvider;
  sub_266406880(&v30);
  *&v33 = &type metadata for FeatureFlagProvider;
  *(&v33 + 1) = &protocol witness table for FeatureFlagProvider;
  sub_266389EC0(v32 + 8);
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  v1 = type metadata accessor for CompanionDeviceProvider();
  v2 = swift_allocObject();
  v2[5] = type metadata accessor for MultiUserConnectionProvider();
  v2[6] = &protocol witness table for MultiUserConnectionProvider;
  v2[2] = v0;
  v28 = v1;
  v29 = &protocol witness table for CompanionDeviceProvider;
  *&v27 = v2;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  v17[1] = v17;
  MEMORY[0x28223BE20](v3);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v25 = &type metadata for InstalledAppProvider;
  v26 = &protocol witness table for InstalledAppProvider;
  *&v24 = swift_allocObject();
  sub_2662B8E78(&qword_280F90278, v24 + 16);
  v23[3] = &type metadata for AppSelectionConfigurationProvider;
  v23[4] = &off_2877EDBD8;
  v22 = &protocol witness table for FeatureFlagProvider;
  v23[0] = v7;
  v21 = &type metadata for FeatureFlagProvider;
  *&v20 = v36[0];
  *(&v20 + 5) = *(v36 + 5);
  v19[3] = &type metadata for CoreAnalyticsLogger;
  v19[4] = &off_2877F2F78;
  type metadata accessor for PlayMediaAppSelector();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for AppSelectionConfigurationProvider);
  MEMORY[0x28223BE20](v9);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  __swift_mutable_project_boxed_opaque_existential_1(v19, &type metadata for CoreAnalyticsLogger);
  v13 = *v11;
  *(v8 + 80) = &type metadata for AppSelectionConfigurationProvider;
  *(v8 + 88) = &off_2877EDBD8;
  *(v8 + 56) = v13;
  *(v8 + 160) = &type metadata for CoreAnalyticsLogger;
  *(v8 + 168) = &off_2877F2F78;
  sub_2662A8618(&v24, v8 + 16);
  sub_2662A8618(&v20, v8 + 96);
  *(v8 + 176) = v18;
  *(v8 + 184) = &protocol witness table for SelfEmitter;
  sub_2662A8618(v34, v8 + 192);
  v14 = v30;
  *(v8 + 248) = v31;
  v15 = v32[1];
  *(v8 + 264) = v32[0];
  *(v8 + 280) = v15;
  *(v8 + 296) = v33;
  *(v8 + 232) = v14;
  sub_2662A8618(&v27, v8 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v8;
}

uint64_t sub_2663B9B58(void *a1, char *a2, uint64_t (*a3)(uint64_t *), uint64_t a4)
{
  v48 = sub_2664DFE38();
  v8 = *(v48 - 8);
  v9 = MEMORY[0x28223BE20](v48);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v47 - v12;
  v14 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  v47[1] = a4;
  if (v15)
  {
    v16 = v15;
    v47[0] = v14;
    v49[0] = v14;
    v49[1] = v15;
    MEMORY[0x28223BE20](v14);
    v47[-2] = v49;

    v17 = sub_2662AA720(sub_2662AA7CC, &v47[-4], &unk_2877E1A00);

    if (v17)
    {
      v18 = v48;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v18, qword_280F914F0);
      swift_beginAccess();
      (*(v8 + 16))(v13, v19, v18);

      v20 = sub_2664DFE18();
      v21 = sub_2664E06C8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v18;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v50[0] = v24;
        *v23 = 136315394;
        v25 = sub_2662A320C(v47[0], v16, v50);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2080;
        v26 = MEMORY[0x2667834D0](&unk_2877E1A00, MEMORY[0x277D837D0]);
        v28 = sub_2662A320C(v26, v27, v50);

        *(v23 + 14) = v28;
        _os_log_impl(&dword_26629C000, v20, v21, "PlayMediaAppSelector#performAppSelection: NO, as: %s is in unsupported inferred bundles: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v24, -1, -1);
        MEMORY[0x266784AD0](v23, -1, -1);

        (*(v8 + 8))(v13, v22);
      }

      else
      {

        (*(v8 + 8))(v13, v18);
      }

      LOBYTE(v50[0]) = 0;
      v45 = v50;
      return a3(v45);
    }
  }

  v29 = *a2;
  if ((*a2 & 1) != 0 && (v30 = [a1 privatePlayMediaIntentData]) != 0 && (v31 = v30, v32 = objc_msgSend(v30, sel_appInferred), v31, v32))
  {
    LODWORD(v47[0]) = [v32 BOOLValue];
  }

  else
  {
    LODWORD(v47[0]) = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = v48;
  v34 = __swift_project_value_buffer(v48, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v11, v34, v33);
  sub_2663B95AC(a2, v49);
  v35 = a1;
  v36 = sub_2664DFE18();
  v37 = sub_2664E06C8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = a3;
    v39 = swift_slowAlloc();
    *v39 = 67109632;
    *(v39 + 4) = v47[0];
    *(v39 + 8) = 1024;
    *(v39 + 10) = v29 & 1;
    sub_2663BC57C(a2);
    *(v39 + 14) = 1024;
    v40 = [v35 privatePlayMediaIntentData];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 appInferred];

      v43 = v48;
      if (v42)
      {
        v44 = [v42 BOOLValue];
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v44 = 0;
      v43 = v48;
    }

    *(v39 + 16) = v44;

    _os_log_impl(&dword_26629C000, v36, v37, "PlayMediaAppSelector#performAppSelection: %{BOOL}d --- appSelectionEnabled: %{BOOL}d, appInferred: %{BOOL}d", v39, 0x14u);
    MEMORY[0x266784AD0](v39, -1, -1);
    a3 = v38;
  }

  else
  {

    sub_2663BC57C(a2);
    v43 = v48;
  }

  (*(v8 + 8))(v11, v43);
  LOBYTE(v49[0]) = v47[0];
  v45 = v49;
  return a3(v45);
}

uint64_t sub_2663BA168(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a2;
  v6 = sub_2664DFE08();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a4;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "PlayMediaAppSelector#performAppSelection", v19, 2u);
    v20 = v19;
    a4 = v18;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = qword_280F91508;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280F91D48;
  sub_2664DFDE8();
  v25 = v33;
  v24 = v34;
  v26 = v35;
  (*(v34 + 16))(v33, v10, v35);
  v27 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = "shouldPerformAppSelection";
  *(v29 + 24) = 25;
  *(v29 + 32) = 2;
  (*(v24 + 32))(v29 + v27, v25, v26);
  v30 = (v29 + v28);
  *v30 = sub_2662D2B60;
  v30[1] = v21;

  v31 = sub_2664E0848();
  sub_2664DFDC8(v31, &dword_26629C000, v23, "shouldPerformAppSelection", 25, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);

  sub_2663B9B58(v36, v37, sub_2662D3010, v29);

  return (*(v24 + 8))(v10, v26);
}

unint64_t sub_2663BA58C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_2663BA678(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v82 = (&v68 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  if (!a1 || (v20 = *(a1 + 16)) == 0)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_21:
      v43 = __swift_project_value_buffer(v8, qword_280F914F0);
      swift_beginAccess();
      (*(v9 + 16))(v12, v43, v8);
      v44 = sub_2664DFE18();
      v45 = sub_2664E06D8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_26629C000, v44, v45, "PlayMediaAppSelector#selectApp nil or empty results", v46, 2u);
        MEMORY[0x266784AD0](v46, -1, -1);
      }

      (*(v9 + 8))(v12, v8);
      return a2(0, 0, 0, 0);
    }

LABEL_42:
    swift_once();
    goto LABEL_21;
  }

  v79 = &v68 - v17;
  v69 = v19;
  v70 = v18;
  v73 = v9;
  v81 = v8;
  v71 = a3;
  v72 = a2;
  v21 = sub_26640C8A4(v20, 0);
  v22 = sub_26640CC9C(&v86, v21 + 4, v20, a1);
  v23 = v86;
  v9 = v87;
  a2 = v88;
  v24 = v89;

  sub_2662B793C(v23);
  if (v22 != v20)
  {
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_37;
  }

  v86 = v21;
  sub_2662DA3AC(&v86);
  v25 = v86;
  v26 = v86[2];
  v9 = v81;
  if (!v26)
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    v49 = v73;
    (*(v73 + 16))(v82, v48, v9);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    v52 = os_log_type_enabled(v50, v51);
    a2 = v72;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "PlayMediaAppSelector#selectApp no top result", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    (*(v49 + 8))(v82, v9);
    return a2(0, 0, 0, 0);
  }

  v8 = v86[4];
  a2 = v86[5];
  v3 = *(v86 + 6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = v25;
  if (!isUniquelyReferenced_nonNull_native || (v26 - 1) > v25[3] >> 1)
  {
    v25 = sub_266384CD4(isUniquelyReferenced_nonNull_native, v26, 1, v25);
    v90 = v25;
  }

  sub_2663BA58C(0, 1, 0);
  v29 = v25[2];
  v78 = a2;
  v77 = v29;
  v82 = v8;
  if (v29)
  {
    v30 = 0;
    v80 = 0x80000002664F37C0;
    v75 = (v73 + 16);
    v74 = (v73 + 8);
    v31 = (v25 + 6);
    v12 = MEMORY[0x277D837D0];
    *&v28 = 136446210;
    v68 = v28;
    v76 = v25;
    while (v30 < v25[2])
    {
      v33 = *(v31 - 2);
      v32 = *(v31 - 1);
      v34 = *v31;
      v86 = v8;
      v87 = a2;
      v83 = 0x6C7070612E6D6F63;
      v84 = 0xE900000000000065;
      sub_2662C178C();
      sub_2662C17E0();

      if (sub_2664E0278() & 1) == 0 || (v86 = v82, v87 = a2, v83 = 0xD000000000000013, v84 = v80, (sub_2664E0278()) || (v86 = v33, v87 = v32, v83 = 0x6C7070612E6D6F63, v84 = 0xE900000000000065, (sub_2664E0278() & 1) == 0) || (v86 = v33, v87 = v32, v83 = 0xD000000000000013, v84 = v80, (sub_2664E0278()))
      {

        v4 = v3 / v34;
        v22 = v72;
        v9 = v81;
        v24 = v73;
        a1 = v70;
        goto LABEL_36;
      }

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v9 = v81;
      v35 = __swift_project_value_buffer(v81, qword_280F914F0);
      swift_beginAccess();
      v36 = v79;
      (*v75)(v79, v35, v9);

      v37 = sub_2664DFE18();
      v38 = sub_2664E06E8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v86 = v40;
        *v39 = v68;
        *(v39 + 4) = sub_2662A320C(v33, v32, &v86);
        _os_log_impl(&dword_26629C000, v37, v38, "PlayMediaAppSelector#selectApp skipping top1/top2 ratio for bundle: %{public}s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        v41 = v40;
        v9 = v81;
        MEMORY[0x266784AD0](v41, -1, -1);
        v42 = v39;
        a2 = v78;
        MEMORY[0x266784AD0](v42, -1, -1);
      }

      (*v74)(v36, v9);

      v8 = v82;
      ++v30;
      v31 += 3;
      v25 = v76;
      if (v77 == v30)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_31:

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v24 = v73;
  (*(v73 + 16))(v69, v54, v9);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06C8();
  v57 = os_log_type_enabled(v55, v56);
  v22 = v72;
  a1 = v70;
  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = 0x4059000000000000;
    _os_log_impl(&dword_26629C000, v55, v56, "PlayMediaAppSelector#selectApp using static odds ratio %f to represent this case where there is no second-place option", v58, 0xCu);
    MEMORY[0x266784AD0](v58, -1, -1);
  }

  (*(v24 + 8))(v69, v9);
  v4 = 100.0;
LABEL_36:
  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

LABEL_37:
  v59 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v24 + 16))(a1, v59, v9);

  v60 = sub_2664DFE18();
  v61 = sub_2664E06E8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v85 = v63;
    *v62 = 136446722;

    v64 = v82;
    v65 = v22;
    v66 = sub_2662A320C(v82, v78, &v85);

    *(v62 + 4) = v66;
    v22 = v65;
    *(v62 + 12) = 2050;
    *(v62 + 14) = v3;
    *(v62 + 22) = 2050;
    *(v62 + 24) = v4;
    _os_log_impl(&dword_26629C000, v60, v61, "PlayMediaAppSelector#selectApp: %{public}s, absoluteConfidence:%{public}f, oddsRatio:%{public}f", v62, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v67 = v63;
    a2 = v78;
    MEMORY[0x266784AD0](v67, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);

    (*(v24 + 8))(v70, v9);
  }

  else
  {

    (*(v24 + 8))(a1, v9);
    v64 = v82;
  }

  (v22)(v64, a2, *&v3, *&v4);
}

void sub_2663BB1DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v33 = a5;
  v10 = *a1;
  v11 = a1[1];
  v30 = a2;
  v31 = a3;
  v32 = a4;
  sub_266449720(&type metadata for UserContextSignal, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v12 = v30;
      if (*(v30 + 16))
      {
        v13 = sub_2662A3E98(v10, v11);
        if (v14)
        {
          v15 = *(*(v12 + 56) + 8 * v13);

          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
  }

  v15 = 0;
LABEL_9:
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v16 = type metadata accessor for NowPlayingUsageSignal();
  sub_266449720(v16, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v17 = v30;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
    v17 = 0;
  }

  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  sub_266449720(NowPlayingSignal, aBlock);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      v19 = v30;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_2662A9238(aBlock, &unk_280073AB0, &qword_2664EA238);
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v11;
  v20[4] = v17;
  v20[5] = v19;
  v20[6] = 0;
  v20[7] = v15;
  v21 = v15;

  v22 = sub_2664E02A8();
  v28 = sub_2663BC10C;
  v29 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663B8828;
  v27 = &block_descriptor_84;
  v23 = _Block_copy(aBlock);

  v24 = AnalyticsSendEventLazy();
  _Block_release(v23);

  *a6 &= v24 & 1;
}

uint64_t sub_2663BB538(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  v38 = a4;
  v34 = a2;
  v6 = sub_2664DFE08();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v39 = *(a1 + 8);
  v9 = *(a1 + 24);
  v32 = *(a1 + 16);
  v31 = v9;
  v10 = v8[2];
  v33 = v8;
  if (v10)
  {
    v11 = sub_26640C820(v10, 0);
    v12 = sub_26640C9BC(&v47, v11 + 4, v10, v8);
    v13 = v47;

    sub_2662B793C(v13);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v14 = v11[2];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v30 = a3;
    *&v44 = MEMORY[0x277D84F90];
    v15 = &v44;
    sub_2664E0BC8();
    a3 = 0;
    v16 = v39[2];
    v42 = v14;
    v43 = v11 + 4;
    v40 = v39 + 4;
    v41 = v11;
    while (a3 < v11[2])
    {
      v17 = &v43[2 * a3];
      v19 = *v17;
      v18 = v17[1];
      type metadata accessor for PlayMediaAppSelectionInput();
      v20 = swift_allocObject();
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *(v20 + 48) = 0u;
      *(v20 + 64) = 0u;
      *(v20 + 80) = 0u;
      *(v20 + 96) = 0u;
      *(v20 + 112) = 0u;
      *(v20 + 128) = 0u;
      *(v20 + 144) = 0xE000000000000000;
      *(v20 + 168) = 0u;
      *(v20 + 184) = 0u;
      *(v20 + 200) = 0u;
      *(v20 + 216) = 0u;
      *(v20 + 232) = 0u;
      *(v20 + 248) = 0u;
      *(v20 + 280) = 0;
      *(v20 + 152) = 0u;
      *(v20 + 264) = 0u;
      if (v16)
      {

        v21 = v40;
        v22 = v16;
        v23 = v16;
        do
        {
          sub_2662A5550(v21, &v47);
          v25 = *(&v48 + 1);
          v24 = v49;
          __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
          (*(v24 + 40))(v19, v18, v20, v25, v24);
          __swift_destroy_boxed_opaque_existential_1Tm(&v47);
          v21 += 40;
          --v23;
        }

        while (v23);

        v11 = v41;
        v14 = v42;
        v16 = v22;
      }

      ++a3;
      v15 = &v44;
      sub_2664E0B98();
      sub_2664E0BD8();
      sub_2664E0BE8();
      sub_2664E0BA8();
      if (a3 == v14)
      {
        v15 = v44;
        a3 = v30;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_14:
  if (qword_280F91508 != -1)
  {
LABEL_17:
    swift_once();
  }

  v26 = qword_280F91D48;
  v27 = v35;
  sub_2664DFDE8();
  v28 = sub_2664E0848();
  sub_2664DFDC8(v28, &dword_26629C000, v26, "playMediaAppSelectorPredict", 27, 2, v27, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_2663B1D68(v11, v34, v15, v33, v39, v32, v31, &v47);

  sub_2664E0838();
  sub_2664DFDD8();
  (*(v36 + 8))(v27, v37);
  v44 = v47;
  v45 = v48;
  v46 = v49;
  (a3)(&v44);
  return sub_2663BB994(v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1));
}

uint64_t sub_2663BB994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {

    sub_2663142F4(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_2663BBA0C(_OWORD *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v49 - v6);
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_5:
    v61[0] = v12;
    v61[1] = v13;
    sub_2664DE428();
    v22 = AppSelectionSignals.RawSignalResult.recordableResult(start:test:)(v11, 0);
    (*(v9 + 8))(v11, v8);
    v23 = *&v22[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows];

    if (qword_280F914E8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v24 = v55;
      v25 = __swift_project_value_buffer(v55, qword_280F914F0);
      swift_beginAccess();
      v58 = *(v56 + 16);
      v59 = (v56 + 16);
      v58(v7, v25, v24);

      v26 = sub_2664DFE18();
      v27 = sub_2664E06E8();

      v28 = os_log_type_enabled(v26, v27);
      *&v53 = v21;
      *&v52 = v25;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v60 = v30;
        *v29 = 136315138;
        v31 = MEMORY[0x2667834D0](v21, MEMORY[0x277D837D0]);
        v33 = sub_2662A320C(v31, v32, &v60);
        v21 = v53;

        *(v29 + 4) = v33;
        _os_log_impl(&dword_26629C000, v26, v27, "PlayMediaAppSelector#rawPredict (async) bundles: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x266784AD0](v30, -1, -1);
        v34 = v29;
        v25 = v52;
        MEMORY[0x266784AD0](v34, -1, -1);
      }

      v35 = *(v56 + 8);
      v35(v7, v24);
      v37 = v54;
      v57 = *(v21 + 16);
      if (!v57)
      {
LABEL_17:
      }

      v38 = 0;
      v56 += 8;
      v7 = (v21 + 40);
      *&v36 = 136446978;
      v51 = v36;
      v50 = v35;
      while (1)
      {
        v58(v37, v25, v24);

        v39 = sub_2664DFE18();
        v40 = sub_2664E06E8();

        if (os_log_type_enabled(v39, v40))
        {
          break;
        }

        v35(v37, v24);
LABEL_11:
        ++v38;
        v7 += 2;
        if (v57 == v38)
        {
          goto LABEL_17;
        }
      }

      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v21 = v51;
      if (qword_280F8F6B0 != -1)
      {
        swift_once();
      }

      *(v21 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v60);
      *(v21 + 12) = 2048;
      *(v21 + 14) = v38;
      *(v21 + 22) = 2082;
      v43 = *(v7 - 1);
      v42 = *v7;

      v44 = sub_2662A320C(v43, v42, &v60);

      *(v21 + 24) = v44;
      *(v21 + 32) = 2080;
      if (v38 < *(v23 + 16))
      {
        break;
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    v45 = sub_2664E01D8();
    v47 = v46;

    v48 = sub_2662A320C(v45, v47, &v60);
    v24 = v55;

    *(v21 + 34) = v48;
    _os_log_impl(&dword_26629C000, v39, v40, "PlayMediaAppSelector#rawPredict (async) %{public}s for candidate %ld: %{public}s, signals: %s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    v37 = v54;
    v35 = v50;
    v50(v54, v24);
    v25 = v52;
    goto LABEL_11;
  }

  v52 = v13;
  v53 = v12;
  v57 = v8;
  v16 = v7;
  v17 = sub_26640C820(v15, 0);
  v18 = sub_26640C9BC(v61, v17 + 4, v15, v14);
  v19 = *&v61[0];
  v58 = v62;
  v59 = v18;

  result = sub_2662B793C(v19);
  if (v59 == v15)
  {
    v21 = v17;
    v7 = v16;
    v8 = v57;
    v13 = v52;
    v12 = v53;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 48));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_2663BC138(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663B8A9C(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2663BC1E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5[0] = *a1;
  v3 = *(a1 + 24);
  v6 = *(a1 + 8);
  v7 = v3;
  return v2(v5);
}

uint64_t sub_2663BC23C()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + v3);
  v10 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663EFDCC(v4, v5, v6, v7, v8, v0 + v2, v9, v10);
}

uint64_t sub_2663BC2E0()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v0 + 64);
  v15[0] = *(v0 + 48);
  v15[1] = v13;
  v16 = *(v0 + 80);
  return sub_2663F1638(v4, v5, v7, v8, v15, v0 + v2, v6, v10, v11, v12);
}

uint64_t sub_2663BC3B0(uint64_t a1)
{
  v2 = type metadata accessor for SelfSamplingCalculator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663BC420(char *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 57) & ~*(v3 + 80);
  return sub_2663A85C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC4CC(char a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 249) & ~*(v3 + 80);
  return sub_2663A87DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), (v1 + 48), *(v1 + 240), *(v1 + 248), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC5D0(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 249) & ~*(v3 + 80);
  return sub_2663A8CBC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + 48, *(v1 + 240), *(v1 + 248), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC684(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  return sub_2663B88EC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2663BC724(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return v2(&v6);
}

uint64_t sub_2663BC770(__int128 *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 199) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663A9934(a1, v1 + v4, *(v1 + v5), *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + v6), (v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_2663BC85C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_2664DE438() - 8);
  v10 = (*(v9 + 80) + 224) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663AB678(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), (v4 + 32), (v4 + v10), (v4 + v11), *(v4 + ((v11 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2663BC950()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 215) & 0xFFFFFFFFFFFFFFF8;
  return sub_2663AAA8C(*(v0 + 16), *(v0 + 24), (v0 + 32), *(v0 + 80), *(v0 + 88), v0 + v2, (v0 + v3), *(v0 + ((v3 + 199) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v3 + 199) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_156Tm()
{

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t objectdestroy_162Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 280) != 1)
  {

    if (*(v0 + 288))
    {
    }
  }

  v5 = (v3 + 360) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

double sub_2663BCD98(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriAudioSupport19AppSelectionSignalsV15RawSignalResultVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2663BCE34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2663BCE90(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

id sub_2663BD108(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2664DE208();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2664DE268();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2664DE1A8();

    swift_willThrow();
    v9 = sub_2664DE268();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2663BD260()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000021, 0x80000002664EA3E0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F91C38 = v8;
  return result;
}

id sub_2663BD3F8()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_280F91C40 = result;
  return result;
}

void sub_2663BD438()
{
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  v0 = qword_280F905C8;
  v1 = BYTE1(qword_280F905C8);
  v2 = BYTE2(qword_280F905C8);
  v3 = BYTE3(qword_280F905C8);
  v4 = BYTE4(qword_280F905C8);
  v5 = BYTE5(qword_280F905C8);
  v6 = BYTE6(qword_280F905C8);
  v7 = HIBYTE(qword_280F905C8);
  v8 = byte_280F905D0;
  v9 = byte_280F905D1;
  v10 = byte_280F905D2;
  v11 = byte_280F905D3;
  v12 = byte_280F905D4;
  if (qword_280F8F708 != -1)
  {
    v35 = byte_280F905D0;
    v33 = byte_280F905D3;
    v34 = byte_280F905D4;
    v32 = byte_280F905D2;
    swift_once();
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v8 = v35;
  }

  v13 = 256;
  if (v1)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFFFELL | v0 & 1;
  if (v2)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v3)
  {
    v17 = 0x1000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v15 | v16 | v17;
  if (v4)
  {
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0x10000000000;
  if ((v5 & 1) == 0)
  {
    v20 = 0;
  }

  v21 = 0x1000000000000;
  if ((v6 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = v19 | v20;
  if (v7)
  {
    v23 = 0x100000000000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v18 | v22 | v21;
  if ((v9 & 1) == 0)
  {
    v13 = 0;
  }

  v25 = v13 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  if (v10)
  {
    v26 = 0x10000;
  }

  else
  {
    v26 = 0;
  }

  if (v11)
  {
    v27 = 0x1000000;
  }

  else
  {
    v27 = 0;
  }

  v28 = v25 | v26 | v27;
  if (v12)
  {
    v29 = 0x100000000;
  }

  else
  {
    v29 = 0;
  }

  v30 = qword_280F91C40;
  v31 = sub_2663BF4FC(v24 | v23, v28 | v29, v30, 0xD000000000000018, 0x80000002664F6ED0, 1);

  qword_280F91C28 = &type metadata for AppSelectionConfigurationProvider;
  unk_280F91C30 = &off_2877EDBD8;
  qword_280F91C10[0] = v31;
}

uint64_t sub_2663BD630(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v34 = a3;
  v33 = sub_2664DFE08();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v33);
  v10 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2663BFB78;
  *(v14 + 24) = v13;
  v15 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v17 = *v15;
  v16 = v15[1];
  v18 = v15[2];
  v35[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  v35[4] = &off_2877EDD88;
  v35[0] = v17;
  v35[1] = v16;
  v35[2] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2663BFBDC;
  *(v19 + 24) = v14;
  v20 = qword_280F91508;

  v21 = v17;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  v23 = v12;
  sub_2664DFDE8();
  v24 = v12;
  v25 = v33;
  (*(v7 + 16))(v10, v24, v33);
  v26 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "appSelectionConfigurationProviderLoad";
  *(v28 + 24) = 37;
  *(v28 + 32) = 2;
  (*(v7 + 32))(v28 + v26, v10, v25);
  v29 = (v28 + v27);
  *v29 = sub_2663BFB78;
  v29[1] = v19;

  v30 = sub_2664E0848();
  sub_2664DFDC8(v30, &dword_26629C000, v22, "appSelectionConfigurationProviderLoad", 37, 2, v23, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_2663BFD28(v35, v34, sub_2663BFC80, v28);

  (*(v7 + 8))(v23, v25);

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_2663BD998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  swift_unknownObjectRetain();
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v19[0] = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v20);
    *(v13 + 12) = 2080;
    v19[1] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073330, &unk_2664EA450);
    v15 = sub_2664E0318();
    v17 = sub_2662A320C(v15, v16, &v20);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_26629C000, v11, v12, "AppSelectionConfigurationProvider#updatedHandler %{public}s new configuration available: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_266488278(a3, 0);
}

uint64_t sub_2663BDC88(uint64_t a1, const char *a2, ...)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v13);
    _os_log_impl(&dword_26629C000, v8, v9, a2, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2663BDEB0(__int128 *a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = a1[9];
  v55 = a1[8];
  v56 = v10;
  v11 = a1[11];
  v57 = a1[10];
  v58 = v11;
  v12 = a1[5];
  v51 = a1[4];
  v52 = v12;
  v13 = a1[7];
  v53 = a1[6];
  v54 = v13;
  v14 = a1[1];
  v47 = *a1;
  v48 = v14;
  v15 = a1[3];
  v49 = a1[2];
  v50 = v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v29 = *(v5 + 16);
  v29(v9, v16, v4);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v16;
    v20 = a2;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "AppSelectionConfigurationProvider#updatedHandler loaded configuration", v19, 2u);
    v22 = v21;
    a2 = v20;
    v16 = v30;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v9, v4);
  v42 = v55;
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v38 = v51;
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  if (sub_2663BF388(&v34) == 1)
  {
    v29(v31, v16, v4);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "AppSelectionConfigurationProvider#updatedHandler unexpected nil configuration", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v23(v31, v4);
    result = sub_2664E0C48();
    __break(1u);
  }

  else
  {
    v46[8] = v42;
    v46[9] = v43;
    v46[10] = v44;
    v46[11] = v45;
    v46[4] = v38;
    v46[5] = v39;
    v46[6] = v40;
    v46[7] = v41;
    v46[0] = v34;
    v46[1] = v35;
    v46[2] = v36;
    v46[3] = v37;
    v33[8] = v55;
    v33[9] = v56;
    v33[10] = v57;
    v33[11] = v58;
    v33[4] = v51;
    v33[5] = v52;
    v33[6] = v53;
    v33[7] = v54;
    v33[0] = v47;
    v33[1] = v48;
    v33[2] = v49;
    v33[3] = v50;
    sub_2663B95AC(v33, &v32);
    a2(v46);
    return sub_2663BF3A0(&v47);
  }

  return result;
}

uint64_t sub_2663BE2B0@<X0>(uint64_t *a2@<X8>)
{
  v73 = a2;
  v2 = sub_2664DE268();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v58 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v24 = &v58 - v23;
  if (v25)
  {
    v68 = v8;
    v62 = v22;
    v63 = v21;
    sub_2664DE1F8();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v27 = *(v15 + 16);
    v66 = v15 + 16;
    v67 = v26;
    v65 = v27;
    v27(v20, v26, v14);
    v28 = v3;
    v29 = *(v3 + 16);
    v70 = v13;
    v64 = v29;
    v29(v11, v13, v2);
    v30 = v15;
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    v33 = os_log_type_enabled(v31, v32);
    v69 = v3;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v34 = 136315138;
      sub_2663C12D0();
      v60 = v30;
      v35 = sub_2664E0D48();
      v61 = v14;
      v37 = v36;
      v71 = *(v28 + 8);
      v71(v11, v2);
      v38 = sub_2662A320C(v35, v37, &v74);
      v14 = v61;

      *(v34 + 4) = v38;
      _os_log_impl(&dword_26629C000, v31, v32, "AppSelectionConfigurationProvider#load using path for model: %s", v34, 0xCu);
      v39 = v59;
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      v40 = *(v60 + 8);
    }

    else
    {

      v71 = *(v3 + 8);
      v71(v11, v2);
      v40 = *(v30 + 8);
    }

    v40(v20, v14);
    v46 = v2;
    v47 = v68;
    v48 = v70;
    v49 = v64;
    v64(v68, v70, v2);
    sub_2663C1284();
    v50 = v72;
    v49(v72, v47, v46);
    v51 = sub_2663BD108(v50);
    v71(v47, v46);
    type metadata accessor for PlayMediaAppSelection();
    v57 = swift_allocObject();
    *(v57 + 16) = v51;
    v52 = v62;
    v65(v62, v67, v14);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06E8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "AppSelectionConfigurationProvider#load loaded model", v55, 2u);
      v56 = v55;
      v48 = v70;
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v40(v52, v14);
    result = (v71)(v48, v46);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v24, v41, v14);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06D8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "AppSelectionConfigurationProvider#load invalid model path", v44, 2u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    result = (*(v15 + 8))(v24, v14);
    v57 = 0;
  }

  *v73 = v57;
  return result;
}

void sub_2663BEB08(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = sub_2664DE098();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E02A8();
  v8 = sub_2664E02A8();
  v9 = [a1 levelForFactor:v7 withNamespaceName:v8];

  if (v9)
  {
    v10 = [v9 stringValue];

    if (v10)
    {
      v11 = sub_2664E02C8();
      v13 = v12;

      *&v42 = v11;
      *(&v42 + 1) = v13;
      sub_2662D2EBC();
      v14 = sub_2664E09C8();

      v15 = v14;
      v40 = *(v14 + 16);
      if (v40)
      {
        v16 = 0;
        v17 = (v4 + 8);
        v18 = (v14 + 56);
        v19 = MEMORY[0x277D84F90];
        v20 = v15;
        while (v16 < *(v15 + 16))
        {
          v21 = *(v18 - 1);
          v22 = *v18;
          v42 = *(v18 - 3);
          v43 = v21;
          v44 = v22;

          sub_2664DE088();
          sub_2663C1328();
          v23 = sub_2664E0988();
          v25 = v24;
          (*v17)(v6, v41);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2663846F4(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_2663846F4((v26 > 1), v27 + 1, 1, v19);
          }

          ++v16;
          *(v19 + 2) = v27 + 1;
          v28 = &v19[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          v18 += 4;
          v15 = v20;
          if (v40 == v16)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
LABEL_14:

        v30 = 0;
        v31 = *(v19 + 2);
        v29 = MEMORY[0x277D84F90];
LABEL_15:
        v32 = &v19[16 * v30 + 40];
        while (1)
        {
          if (v31 == v30)
          {

            goto LABEL_27;
          }

          if (v30 >= *(v19 + 2))
          {
            break;
          }

          ++v30;
          v34 = *(v32 - 1);
          v33 = *v32;
          v32 += 16;
          v35 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v35 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v42 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FCF24(0, *(v29 + 16) + 1, 1);
              v29 = v42;
            }

            v38 = *(v29 + 16);
            v37 = *(v29 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2662FCF24((v37 > 1), v38 + 1, 1);
              v29 = v42;
            }

            *(v29 + 16) = v38 + 1;
            v39 = v29 + 16 * v38;
            *(v39 + 32) = v34;
            *(v39 + 40) = v33;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26639EB98(v29);
  }
}

void sub_2663BEEC0(void *a1, uint64_t a2, uint64_t a3)
{
  v41 = sub_2664DE098();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E02A8();
  v8 = sub_2664E02A8();
  v9 = [a1 levelForFactor:v7 withNamespaceName:v8];

  if (v9)
  {
    v10 = [v9 stringValue];

    if (v10)
    {
      v11 = sub_2664E02C8();
      v13 = v12;

      *&v42 = v11;
      *(&v42 + 1) = v13;
      sub_2662D2EBC();
      v14 = sub_2664E09C8();

      v15 = v14;
      v40 = *(v14 + 16);
      if (v40)
      {
        v16 = 0;
        v17 = (v4 + 8);
        v18 = (v14 + 56);
        v19 = MEMORY[0x277D84F90];
        v20 = v15;
        while (v16 < *(v15 + 16))
        {
          v21 = *(v18 - 1);
          v22 = *v18;
          v42 = *(v18 - 3);
          v43 = v21;
          v44 = v22;

          sub_2664DE088();
          sub_2663C1328();
          v23 = sub_2664E0988();
          v25 = v24;
          (*v17)(v6, v41);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2663846F4(0, *(v19 + 2) + 1, 1, v19);
          }

          v27 = *(v19 + 2);
          v26 = *(v19 + 3);
          if (v27 >= v26 >> 1)
          {
            v19 = sub_2663846F4((v26 > 1), v27 + 1, 1, v19);
          }

          ++v16;
          *(v19 + 2) = v27 + 1;
          v28 = &v19[16 * v27];
          *(v28 + 4) = v23;
          *(v28 + 5) = v25;
          v18 += 4;
          v15 = v20;
          if (v40 == v16)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
LABEL_14:

        v30 = 0;
        v31 = *(v19 + 2);
        v29 = MEMORY[0x277D84F90];
LABEL_15:
        v32 = &v19[16 * v30 + 40];
        while (1)
        {
          if (v31 == v30)
          {

            goto LABEL_27;
          }

          if (v30 >= *(v19 + 2))
          {
            break;
          }

          ++v30;
          v34 = *(v32 - 1);
          v33 = *v32;
          v32 += 16;
          v35 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v35 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (v35)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v42 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FCF24(0, *(v29 + 16) + 1, 1);
              v29 = v42;
            }

            v38 = *(v29 + 16);
            v37 = *(v29 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2662FCF24((v37 > 1), v38 + 1, 1);
              v29 = v42;
            }

            *(v29 + 16) = v38 + 1;
            v39 = v29 + 16 * v38;
            *(v39 + 32) = v34;
            *(v39 + 40) = v33;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_27:
    sub_26639EB98(v29);
  }
}

uint64_t sub_2663BF278(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2664E02A8();
  v5 = sub_2664E02A8();
  v6 = [a1 levelForFactor:v4 withNamespaceName:v5];

  v7 = [v6 directoryValue];
  if (v7)
  {
    if ([v7 hasPath])
    {
      v8 = [v7 path];
      if (v8)
      {
        v9 = v8;
        v10 = sub_2664E02C8();

        return v10;
      }
    }
  }

  return 0;
}

uint64_t sub_2663BF388(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2663BF3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663BF408(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[9];
  v14[8] = a1[8];
  v14[9] = v7;
  v8 = a1[11];
  v14[10] = a1[10];
  v14[11] = v8;
  v9 = a1[5];
  v14[4] = a1[4];
  v14[5] = v9;
  v10 = a1[7];
  v14[6] = a1[6];
  v14[7] = v10;
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v12 = a1[3];
  v14[2] = a1[2];
  v14[3] = v12;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v14);
}

uint64_t sub_2663BF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &aBlock - v17;
  v49 = &type metadata for FeatureFlagProvider;
  v50 = &protocol witness table for FeatureFlagProvider;
  v48 = BYTE4(a2);
  v47 = a2;
  v45[4] = &off_2877EDD88;
  v46 = a1;
  v45[0] = a3;
  v45[1] = a4;
  v45[2] = a5;
  v45[3] = &type metadata for AppSelectionConfigurationProvider.AppSelectionConfigurationLevelProvider;
  sub_2662A5550(&v46, &aBlock);
  sub_2662A5550(v45, v44);
  v19 = swift_allocObject();
  sub_2662A8618(&aBlock, v19 + 16);
  sub_2662A8618(v44, v19 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073328, &unk_2664EA440);
  swift_allocObject();
  v20 = sub_2662ED0F0(0xD000000000000026, 0x80000002664F6EF0, sub_2663BFB0C, v19);

  v21 = qword_280F914E8;
  if (a6)
  {

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v22, v12);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "AppSelectionConfigurationProvider#updatedHandler enabled...", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    if (qword_280F8F708 != -1)
    {
      swift_once();
    }

    v26 = qword_280F91C40;
    v27 = sub_2664E02A8();
    if (qword_280F8F700 != -1)
    {
      swift_once();
    }

    v28 = qword_280F91C38;
    v42 = sub_2663BFB18;
    v43 = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v40 = sub_2664D5614;
    v41 = &block_descriptor_25;
    v29 = _Block_copy(&aBlock);

    v30 = [v26 addUpdateHandlerForNamespaceName:v27 queue:v28 usingBlock:v29];
    _Block_release(v29);
    swift_unknownObjectRelease();

    v31 = sub_2664E02A8();
    v42 = sub_2663BFB48;
    v43 = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v40 = sub_2664D5614;
    v41 = &block_descriptor_4;
    v32 = _Block_copy(&aBlock);

    v33 = [v26 addUpdateHandlerForNamespaceName:v31 queue:v28 usingBlock:v32];
    _Block_release(v32);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v34, v12);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "AppSelectionConfigurationProvider#updatedHandler disabled", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    (*(v13 + 8))(v16, v12);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v20;
}

uint64_t sub_2663BFB78(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return v2(v10);
}

uint64_t sub_2663BFBDC(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[9];
  v19 = a1[8];
  v20 = v3;
  v4 = a1[11];
  v21 = a1[10];
  v22 = v4;
  v5 = a1[5];
  v15 = a1[4];
  v16 = v5;
  v6 = a1[7];
  v17 = a1[6];
  v18 = v6;
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  v8 = a1[3];
  v13 = a1[2];
  v14 = v8;
  nullsub_3();
  v10[8] = v19;
  v10[9] = v20;
  v10[10] = v21;
  v10[11] = v22;
  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  return v2(v10);
}

uint64_t sub_2663BFC80(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663BF408(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2663BFD28(void *a1, void *a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v195 = a4;
  v196 = a3;
  v207 = a2;
  v5 = sub_2664DFE08();
  v187 = *(v5 - 8);
  v188 = v5;
  MEMORY[0x28223BE20](v5);
  v186 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v190 = &v186 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v186 - v14;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  isa = v8[2].isa;
  v209 = v8 + 2;
  v210 = v16;
  v208 = isa;
  isa(v15, v16, v7);
  v18 = v8;
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  v21 = os_log_type_enabled(v19, v20);
  v203 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v216 = v23;
    *v22 = 136446210;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, &v216);
    _os_log_impl(&dword_26629C000, v19, v20, "AppSelectionConfigurationProvider#load %{public}s loading configuration...", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v24 = v203;
  }

  else
  {

    v24 = v18;
  }

  v212 = v24[1].isa;
  v212(v15, v7);
  v205 = v11;
  if (qword_280F8F708 != -1)
  {
    swift_once();
  }

  v25 = qword_280F91C40;
  v191 = [qword_280F91C40 newTrackingId];
  v26 = sub_2664E02A8();
  v27 = [v25 experimentIdWithNamespaceName_];

  if (v27)
  {
    v204 = sub_2664E02C8();
    v211 = v28;
  }

  else
  {
    v204 = 0;
    v211 = 0;
  }

  v29 = sub_2664E02A8();
  v30 = [v25 treatmentIdWithNamespaceName_];

  if (v30)
  {
    v194 = sub_2664E02C8();
    v32 = v31;
  }

  else
  {
    v194 = 0;
    v32 = 0;
  }

  v206 = v32;
  v33 = sub_2664E02A8();
  v34 = [v25 rolloutIdWithNamespaceName_];

  v213 = v7;
  if (v34)
  {
    v35 = sub_2664E02C8();
    v214 = v36;
  }

  else
  {
    v35 = 0;
    v214 = 0;
  }

  v37 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = sub_2664E02A8();
  v39 = sub_2664E02A8();
  v40 = [v37 levelForFactor:v38 withNamespaceName:v39];

  if (v40)
  {
    [v40 doubleValue];
    v42 = v41;
  }

  else
  {
    v42 = 2.0;
  }

  v43 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = sub_2664E02A8();
  v45 = sub_2664E02A8();
  v46 = [v43 levelForFactor:v44 withNamespaceName:v45];

  if (v46)
  {
    [v46 &selRef_assetInfo];
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v189 = sub_2663BF278(*v49, v49[1], v49[2]);
  v197 = v50;
  v51 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2663BEB08(*v51, v51[1], v51[2]);
  v198 = v52;
  v53 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2663BEEC0(*v53, v53[1], v53[2]);
  v192 = v54;
  v55 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = sub_2664E02A8();
  v57 = sub_2664E02A8();
  v58 = [v55 levelForFactor:v56 withNamespaceName:v57];

  if (v58)
  {
    [v58 &selRef_assetInfo];
    v60 = v59;
  }

  else
  {
    v60 = 2.0;
  }

  v61 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = sub_2664E02A8();
  v63 = sub_2664E02A8();
  v64 = [v61 levelForFactor:v62 withNamespaceName:v63];

  v193 = v35;
  if (v64)
  {
    v65 = [v64 longValue];
  }

  else
  {
    v65 = 3;
  }

  v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v202 = [v66 integerValue];

  v67 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v68 = sub_2664E02A8();
  v69 = sub_2664E02A8();
  v70 = [v67 levelForFactor:v68 withNamespaceName:v69];

  if (v70)
  {
    [v70 &selRef_assetInfo];
    v72 = v71;
  }

  else
  {
    v72 = 0x3F669E3C968943E1;
  }

  v73 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v74 = sub_2664E02A8();
  v75 = sub_2664E02A8();
  v76 = [v73 levelForFactor:v74 withNamespaceName:v75];

  if (v76)
  {
    [v76 &selRef_assetInfo];
    v78 = v77;
  }

  else
  {
    v78 = 0x3FA28A1DFB9389B5;
  }

  v79 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v80 = sub_2664E02A8();
  v81 = sub_2664E02A8();
  v82 = [v79 levelForFactor:v80 withNamespaceName:v81];

  if (v82)
  {
    v83 = [v82 &selRef_entitySearchBundleRecencyS];
  }

  else
  {
    v83 = 10510001;
  }

  v84 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v201 = [v84 integerValue];

  v85 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v86 = sub_2664E02A8();
  v87 = sub_2664E02A8();
  v88 = [v85 levelForFactor:v86 withNamespaceName:v87];

  if (v88)
  {
    v200 = [v88 BOOLeanValue];
  }

  else
  {
    v200 = 1;
  }

  v89 = v207;
  v90 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v91 = sub_2664E02A8();
  v92 = sub_2664E02A8();
  v93 = [v90 levelForFactor:v91 withNamespaceName:v92];

  if (v93)
  {
    [v93 &selRef_assetInfo];
    v95 = v94;
  }

  else
  {
    v95 = 0x3FDA814940BBB1F2;
  }

  v96 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v97 = sub_2664E02A8();
  v98 = sub_2664E02A8();
  v99 = [v96 levelForFactor:v97 withNamespaceName:v98];

  if (v99)
  {
    [v99 &selRef_assetInfo];
    v101 = v100;
  }

  else
  {
    v101 = 0x3F826E978D4FDF3BLL;
  }

  v102 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v103 = sub_2664E02A8();
  v104 = sub_2664E02A8();
  v105 = [v102 levelForFactor:v103 withNamespaceName:v104];

  if (v105)
  {
    [v105 &selRef_assetInfo];
    v107 = v106;
  }

  else
  {
    v107 = 0x3FDF5C28F5C28F5CLL;
  }

  v108 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v109 = sub_2664E02A8();
  v110 = sub_2664E02A8();
  v111 = [v108 levelForFactor:v109 withNamespaceName:v110];

  if (v111)
  {
    LODWORD(v207) = [v111 BOOLeanValue];
  }

  else
  {
    LODWORD(v207) = 0;
  }

  v112 = v89[3];
  v113 = v89[4];
  __swift_project_boxed_opaque_existential_1(v89, v112);
  v114 = (*(v113 + 128))(v112, v113);
  v115 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v116 = sub_2664E02A8();
  v117 = sub_2664E02A8();
  v118 = [v115 levelForFactor:v116 withNamespaceName:v117];

  if (v118)
  {
    v119 = [v118 BOOLeanValue];
  }

  else
  {
    v119 = 0;
  }

  v120 = v213;
  v121 = v114 & v119;
  v122 = v190;
  v208(v190, v210, v213);
  v123 = sub_2664DFE18();
  v124 = sub_2664E06E8();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = v120;
    v126 = swift_slowAlloc();
    *v126 = 67109632;
    *(v126 + 4) = v121 & 1;
    *(v126 + 8) = 1024;
    *(v126 + 10) = v114 & 1;
    *(v126 + 14) = 1024;
    *(v126 + 16) = v119;
    _os_log_impl(&dword_26629C000, v123, v124, "AppSelectionConfigurationProvider#load enabled?:%{BOOL}d -- featureEnabled:%{BOOL}d, levelEnabled:%{BOOL}d", v126, 0x14u);
    v127 = v126;
    v120 = v125;
    MEMORY[0x266784AD0](v127, -1, -1);
  }

  ++v203;
  v212(v122, v120);
  sub_2662A5550(v89, &v218 + 8);
  *(&v217 + 1) = &type metadata for DeviceProvider;
  *&v218 = &protocol witness table for DeviceProvider;
  sub_266406880(&v216);
  v128 = sub_2662F5EDC(v207);
  sub_2662F6408(&v216);
  if (v121 & (byte_28007CCC8 | ~v128))
  {
    v129 = v197;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v130 = qword_280F91D48;
    v131 = v186;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDD8();
    sub_2663BE2B0(&v216);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v187 + 8))(v131, v188);
    v190 = v216;
    v120 = v213;
  }

  else
  {
    v190 = 0;
    v129 = v197;
  }

  v132 = v206;
  v133 = v214;
  v134 = v198;
  v199 = v121;
  if ((v128 & 1) == 0)
  {
    v135 = 0;
    goto LABEL_72;
  }

  v135 = 0;
  if ((v121 & 1) == 0)
  {
LABEL_72:
    v136 = v205;
    goto LABEL_73;
  }

  v136 = v205;
  if ((byte_28007CCC8 & 1) == 0)
  {
    v137 = v205;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v138 = qword_280F91D48;
    v139 = v186;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDD8();
    sub_2664DEF78();
    swift_allocObject();
    v135 = sub_2664DEF68();
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v187 + 8))(v139, v188);
    v132 = v206;
    v133 = v214;
    v129 = v197;
    v134 = v198;
    v136 = v137;
  }

LABEL_73:
  v198 = v135;
  v208(v136, v210, v120);

  v140 = v133;
  v141 = v191;

  v142 = sub_2664DFE18();
  v143 = v136;
  v144 = v134;
  v145 = sub_2664E06E8();

  v214 = v140;

  v210 = v141;

  LODWORD(v208) = v145;
  v209 = v142;
  if (os_log_type_enabled(v142, v145))
  {
    v146 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    *&v215[0] = v197;
    *v146 = 136450818;
    v147 = v202;
    if (qword_280F8F6B0 != -1)
    {
      swift_once();
    }

    *(v146 + 4) = sub_2662A320C(qword_280F8F6B8, qword_280F8F6C0, v215);
    *(v146 + 12) = 1024;
    *(v146 + 14) = v199 & 1;
    *(v146 + 18) = 2048;
    *(v146 + 20) = v42;
    *(v146 + 28) = 2048;
    *(v146 + 30) = v48;
    *(v146 + 38) = 2080;
    *&v216 = v189;
    *(&v216 + 1) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v148 = sub_2664E0318();
    v150 = sub_2662A320C(v148, v149, v215);

    *(v146 + 40) = v150;
    *(v146 + 48) = 2080;
    v151 = sub_2664E0618();
    v153 = sub_2662A320C(v151, v152, v215);

    *(v146 + 50) = v153;
    *(v146 + 58) = 1024;
    *(v146 + 60) = v200;
    *(v146 + 64) = 2048;
    *(v146 + 66) = v72;
    *(v146 + 74) = 2048;
    *(v146 + 76) = v78;
    *(v146 + 84) = 2048;
    *(v146 + 86) = v201;
    *(v146 + 94) = 2048;
    *(v146 + 96) = v60;
    *(v146 + 104) = 2048;
    *(v146 + 106) = v147;
    *(v146 + 114) = 2048;
    *(v146 + 116) = v95;
    *(v146 + 124) = 2048;
    *(v146 + 126) = v101;
    *(v146 + 134) = 2048;
    *(v146 + 136) = v107;
    *(v146 + 144) = 2080;
    v154 = v210;
    v155 = [v154 description];
    v156 = sub_2664E02C8();
    v158 = v157;

    v159 = sub_2662A320C(v156, v158, v215);

    *(v146 + 146) = v159;
    *(v146 + 154) = 2082;
    v160 = v211;
    *&v216 = v204;
    *(&v216 + 1) = v211;

    v161 = sub_2664E0318();
    v163 = sub_2662A320C(v161, v162, v215);

    *(v146 + 156) = v163;
    *(v146 + 164) = 2082;
    v164 = v193;
    *&v216 = v193;
    *(&v216 + 1) = v214;

    v165 = sub_2664E0318();
    v167 = sub_2662A320C(v165, v166, v215);

    *(v146 + 166) = v167;
    *(v146 + 174) = 2082;
    v168 = v194;
    v169 = v206;
    *&v216 = v194;
    *(&v216 + 1) = v206;

    v170 = sub_2664E0318();
    v172 = sub_2662A320C(v170, v171, v215);

    *(v146 + 176) = v172;
    v173 = v209;
    _os_log_impl(&dword_26629C000, v209, v208, "AppSelectionConfigurationProvider#configuration %{public}s enabled?:%{BOOL}d minimumConfidenceOddsRatio?:%f minimumAbsoluteConfidence?:%f model:%s videoAppBundleIdentifiers:%s predictionEnabledVideo:%{BOOL}d forcedDisambiguationRate:%f forcedDisambiguationRateFirstPartyOnly:%f, forcedDisambiguationRateLimitSeconds:%ld, newUserMinimumConfidenceOddsRatio:%f, newUserInteractions:%ld, disambiguationTrimThreshold:%f, megamodelCollectionRate: %f, megamodelCollectionRateInternal: %f,  trialTrackingId:%s trialExperimentId:%{public}s trialRolloutId:%{public}s trialTreatmentId:%{public}s", v146, 0xB8u);
    v174 = v197;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v174, -1, -1);
    v175 = v146;
    v176 = v160;
    v177 = v202;
    MEMORY[0x266784AD0](v175, -1, -1);

    v132 = v169;
    v178 = v214;
    v212(v205, v213);
    v179 = v204;
    v180 = v201;
    v181 = v199;
    v182 = v200;
  }

  else
  {

    v212(v143, v213);
    v181 = v199;
    v182 = v200;
    v179 = v204;
    v164 = v193;
    v168 = v194;
    v180 = v201;
    v177 = v202;
    v176 = v211;
    v178 = v214;
  }

  LOBYTE(v216) = v181 & 1;
  *(&v216 + 1) = v42;
  *&v217 = v48;
  *(&v217 + 1) = v144;
  *&v218 = v192;
  BYTE8(v218) = v182;
  *&v219 = v72;
  *(&v219 + 1) = v78;
  *&v220 = v180;
  *(&v220 + 1) = v101;
  *&v221 = v107;
  BYTE8(v221) = v207;
  *&v222 = v60;
  *(&v222 + 1) = v177;
  *&v223 = v95;
  *(&v223 + 1) = v190;
  *&v224 = v198;
  v183 = v210;
  *(&v224 + 1) = v210;
  *&v225 = v179;
  *(&v225 + 1) = v176;
  *&v226 = v168;
  *(&v226 + 1) = v132;
  *&v227 = v164;
  *(&v227 + 1) = v178;
  v215[8] = v224;
  v215[9] = v225;
  v215[10] = v226;
  v215[11] = v227;
  v215[4] = v220;
  v215[5] = v221;
  v215[6] = v222;
  v215[7] = v223;
  v215[0] = v216;
  v215[1] = v217;
  v215[2] = v218;
  v215[3] = v219;

  v184 = v183;

  v196(v215);

  return sub_2663BC57C(&v216);
}

unint64_t sub_2663C1284()
{
  result = qword_280073340;
  if (!qword_280073340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073340);
  }

  return result;
}

unint64_t sub_2663C12D0()
{
  result = qword_280073348;
  if (!qword_280073348)
  {
    sub_2664DE268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073348);
  }

  return result;
}

unint64_t sub_2663C1328()
{
  result = qword_280F8F668;
  if (!qword_280F8F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F668);
  }

  return result;
}

uint64_t sub_2663C1394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v31 = a6;
  v32 = a4;
  v30 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a5;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PlaybackStarter#play Sending startPlayback command in background", v19, 2u);
    a5 = v29;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  sub_26637C7BC(v32, v33);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v30;
  *(v21 + 24) = a2;
  v23 = v33[3];
  *(v21 + 64) = v33[2];
  *(v21 + 80) = v23;
  *(v21 + 96) = v33[4];
  v24 = v33[1];
  *(v21 + 32) = v33[0];
  *(v21 + 48) = v24;
  *(v21 + 112) = a8;
  *(v21 + 120) = a5;
  *(v21 + 128) = v22;
  *(v21 + 136) = a7;

  v25 = a8;

  sub_2663C2550(v26, v22, a7, sub_2663C5040, v21);
}

uint64_t sub_2663C169C(void *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_2664DFE38();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  if (a1)
  {
    sub_26637C7BC(a4, v42);
    v22 = swift_allocObject();
    v23 = v42[3];
    *(v22 + 48) = v42[2];
    *(v22 + 64) = v23;
    *(v22 + 80) = v42[4];
    v24 = v42[1];
    *(v22 + 16) = v42[0];
    *(v22 + 32) = v24;
    *(v22 + 96) = a6;
    *(v22 + 104) = a7;
    *(v22 + 112) = a8;
    *(v22 + 120) = a2;
    *(v22 + 128) = a3;
    *(v22 + 136) = a1;

    v25 = a1;

    sub_2664AE454(v25, a5, sub_2663C508C, v22);
  }

  else
  {
    v39 = v19;
    v40 = a2;
    v41 = v18;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v28 = *(v41 + 16);
    v28(v21, v27, v16);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = *(v41 + 8);
    v32(v21, v16);
    v33 = v39;
    v28(v39, v27, v16);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v43 = v37;
      *v36 = 134218498;
      *(v36 + 4) = 15;
      *(v36 + 12) = 2048;
      *(v36 + 14) = 13;
      *(v36 + 22) = 2080;
      *(v36 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v43);
      _os_log_impl(&dword_26629C000, v34, v35, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v36, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v32(v33, v16);
    v43 = xmmword_2664E8DA0;
    v44 = 0xE900000000000074;
    v40(&v43);
  }
}

uint64_t sub_2663C1A8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), char *a7, char *a8)
{
  v89 = a8;
  v91 = a2;
  v13 = a1;
  v14 = sub_2664DFE38();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v85 - v18;
  v19 = sub_2664E0198();
  *&v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664E0188();
  v93 = *(v22 - 8);
  v94 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v92 = &v85 - v26;
  if (sub_2664ACDA0(a3, a4, a5, v13))
  {
    v88 = a6;
    if (qword_280F90B20 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      swift_beginAccess();
      v27 = qword_280F90B40;
      v28 = unk_280F90B48;
      v29 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v30 = *(v27 - 8);
      MEMORY[0x28223BE20](v29);
      v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v30 + 16))(v32);
      v33 = (*(v28 + 16))(v27, v28);
      v35 = v34;
      result = (*(v30 + 8))(v32, v27);
      if (!v35)
      {
        v55 = v89;
        v54 = MEMORY[0x277D84F98];
LABEL_27:
        __swift_project_boxed_opaque_existential_1(v91, v91[3]);
        v84 = swift_allocObject();
        *(v84 + 16) = v88;
        *(v84 + 24) = a7;

        sub_26648DDDC(v55, v54, sub_2663C50A0, v84);
      }

      v89 = a7;
      if (!*MEMORY[0x277D27D08])
      {
        __break(1u);
        goto LABEL_32;
      }

      v37 = *MEMORY[0x277D27D08];
      v38 = sub_2664E02A8();
      v102 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
      *&v101 = v38;
      sub_266318804(&v101, &v99);
      v39 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v39;
      sub_26634F694(&v99, v37, isUniquelyReferenced_nonNull_native);

      v86 = v98;

      v85 = v33;
      v87 = v35;
      v41 = sub_26648BD18(v33, v35);
      v43 = v42;
      sub_2663C51C4(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_2664E0178();
      sub_2663C50C4(v41, v43);
      sub_2664AB368(v41, v43, v21, v44);
      sub_266348774(v41, v43);
      v45 = v92;
      sub_2664E0168();
      sub_266348774(v41, v43);
      (*(v97 + 8))(v21, v19);
      (*(v93 + 16))(v25, v45, v94);
      sub_2663C51C4(&qword_280073358, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
      sub_2664E0438();
      v46 = v101;
      a7 = *(v101 + 16);
      v25 = MEMORY[0x277D84F90];
      if (*(&v101 + 1) == a7)
      {
        break;
      }

      v97 = xmmword_2664E36F0;
      v76 = *(&v101 + 1);
      while ((*(&v46 + 1) & 0x8000000000000000) == 0)
      {
        if (v76 >= *(v46 + 16))
        {
          goto LABEL_29;
        }

        v77 = v76[v46 + 32];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
        v78 = swift_allocObject();
        *(v78 + 16) = v97;
        *(v78 + 56) = MEMORY[0x277D84B78];
        *(v78 + 64) = MEMORY[0x277D84BC0];
        *(v78 + 32) = v77;
        v79 = sub_2664E02E8();
        v81 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2663846F4(0, *(v25 + 2) + 1, 1, v25);
        }

        v19 = *(v25 + 2);
        v82 = *(v25 + 3);
        v21 = (v19 + 1);
        if (v19 >= v82 >> 1)
        {
          v25 = sub_2663846F4((v82 > 1), v19 + 1, 1, v25);
        }

        ++v76;
        *(v25 + 2) = v21;
        v83 = &v25[16 * v19];
        *(v83 + 4) = v79;
        *(v83 + 5) = v81;
        if (a7 == v76)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }

LABEL_6:
    (*(v93 + 8))(v92, v94);

    *&v101 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    sub_26639EC30();
    v47 = sub_2664E0288();
    v49 = v48;

    v50 = *MEMORY[0x277D27DF0];
    if (*MEMORY[0x277D27DF0])
    {
      v102 = MEMORY[0x277D837D0];
      *&v101 = v47;
      *(&v101 + 1) = v49;
      sub_266318804(&v101, &v99);
      v51 = v50;
      v52 = v86;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v52;
      sub_26634F694(&v99, v51, v53);

      v54 = v98;
      v55 = [objc_opt_self() nowPlayingApplicationDestination];
      a7 = v89;
      v56 = v96;
      v57 = v90;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v58 = __swift_project_value_buffer(v56, qword_280F914F0);
      swift_beginAccess();
      v59 = v95;
      (*(v95 + 16))(v57, v58, v56);
      v60 = v87;

      v61 = sub_2664DFE18();
      v62 = sub_2664E06E8();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *&v97 = v54;
        v64 = v63;
        v65 = swift_slowAlloc();
        *&v99 = v65;
        *v64 = 136315138;
        v66 = sub_2662A320C(v85, v60, &v99);

        *(v64 + 4) = v66;
        _os_log_impl(&dword_26629C000, v61, v62, "PlaybackStarter#play suppressing destination as we have context id: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x266784AD0](v65, -1, -1);
        v67 = v64;
        v54 = v97;
        MEMORY[0x266784AD0](v67, -1, -1);

        (*(v59 + 8))(v90, v56);
      }

      else
      {

        (*(v59 + 8))(v57, v56);
      }

      goto LABEL_27;
    }

LABEL_32:
    __break(1u);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = v96;
    v69 = __swift_project_value_buffer(v96, qword_280F914F0);
    swift_beginAccess();
    v70 = v95;
    (*(v95 + 16))(v17, v69, v68);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06C8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = a6;
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "PlaybackStarter#play We already set startPlaybackImmediately on external devices, not sending startPlayback", v74, 2u);
      v75 = v74;
      a6 = v73;
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    (*(v70 + 8))(v17, v68);
    v99 = 0uLL;
    v100 = 0;
    return a6(&v99);
  }

  return result;
}

uint64_t sub_2663C2550(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v77 = a4;
  v80 = a3;
  v74 = a2;
  v83 = a1;
  v82 = sub_2664DFE38();
  v81 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82);
  v75 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v73 = &v71 - v10;
  v11 = sub_2664DFE08();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  sub_26637C7BC(v6, v91);
  v18 = *__swift_project_boxed_opaque_existential_1(v91, v92);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  v20 = sub_2664E0848();
  sub_2664DFDC8(v20, &dword_26629C000, v19, "mediaPlaybackProviderStreamingAvailability", 42, 2, v17, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_26648D3D0(0, v18, &aBlock);
  sub_2664E0838();
  sub_2664DFDD8();
  v21 = *(v12 + 8);
  v22 = v11;
  v79 = v12 + 8;
  v78 = v21;
  v21(v17, v11);
  v23 = aBlock;
  v24 = __swift_project_boxed_opaque_existential_1(v91, v92);
  v25 = swift_allocObject();
  *(v25 + 16) = v77;
  *(v25 + 24) = a5;
  v26 = *v24;

  sub_2664DFDE8();
  v27 = sub_2664E0848();
  LOBYTE(v70) = 2;
  v77 = v19;
  sub_2664DFDC8(v27, &dword_26629C000, v19, "mediaPlaybackProviderDestination", 32, 2, v15, " enableTelemetry=YES ", 21, v70, MEMORY[0x277D84F90]);
  v76 = v15;
  v28 = v80;
  if (v80 && !*(v83 + 16))
  {
    v75 = v26;
    v83 = v23;
    v50 = v82;
    v51 = v81;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v50, qword_280F914F0);
    swift_beginAccess();
    v53 = v73;
    (*(v51 + 16))(v73, v52, v50);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    v56 = os_log_type_enabled(v54, v55);
    v49 = v22;
    v57 = v74;
    if (v56)
    {
      v58 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v84 = v72;
      aBlock = v57;
      *v58 = 136315138;
      v86 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v59 = sub_2664E0318();
      v61 = v53;
      v62 = sub_2662A320C(v59, v60, &v84);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_26629C000, v54, v55, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v58, 0xCu);
      v63 = v72;
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      v64 = v61;
      v28 = v80;
      (*(v81 + 8))(v64, v82);
    }

    else
    {

      (*(v51 + 8))(v53, v50);
    }

    v65 = v83 == 4;
    v46 = [objc_opt_self() systemMediaApplicationDestination];
    v66 = swift_allocObject();
    v66[2] = sub_2663C5054;
    v66[3] = v25;
    v66[4] = v75;
    v66[5] = v57;
    v66[6] = v28;
    v89 = sub_2662CDCDC;
    v90 = v66;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_2663A0C48;
    v88 = &block_descriptor_12_2;
    v67 = _Block_copy(&aBlock);

    [v46 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:v65 audioRoutingInfo:0 completion:v67];
    _Block_release(v67);
  }

  else
  {
    v29 = v23;
    v30 = v82;
    v31 = v81;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    v33 = v75;
    (*(v31 + 16))(v75, v32, v30);

    v34 = sub_2664DFE18();
    v35 = sub_2664E06C8();

    v36 = os_log_type_enabled(v34, v35);
    v80 = v22;
    if (v36)
    {
      LODWORD(v74) = v29 == 4;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446722;
      type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
      LODWORD(v84) = 0;
      v39 = sub_2664E0318();
      v41 = sub_2662A320C(v39, v40, &aBlock);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      v84 = v83;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
      v42 = sub_2664E0318();
      v44 = sub_2662A320C(v42, v43, &aBlock);

      *(v37 + 14) = v44;
      *(v37 + 22) = 1026;
      *(v37 + 24) = v74;
      _os_log_impl(&dword_26629C000, v34, v35, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v37, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);

      (*(v31 + 8))(v33, v82);
    }

    else
    {

      (*(v31 + 8))(v33, v30);
    }

    v45 = [objc_opt_self() systemMediaApplicationDestination];
    v46 = sub_2664E0488();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_2663C5054;
    *(v47 + 24) = v25;
    v89 = sub_2662CDCD4;
    v90 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_2663A0C48;
    v88 = &block_descriptor_26;
    v48 = _Block_copy(&aBlock);

    [v45 resolveWithQueue:0 hashedRouteIdentifiers:v46 localPlaybackPermitted:v29 == 4 audioRoutingInfo:0 completion:v48];
    _Block_release(v48);

    v49 = v80;
  }

  sub_2664E0838();
  v68 = v76;
  sub_2664DFDD8();

  v78(v68, v49);
  return sub_2663C505C(v91);
}

uint64_t sub_2663C2FD0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, unsigned __int8 a13)
{
  v52 = a7;
  v56 = a5;
  v55 = a4;
  LODWORD(v54) = a2;
  v17 = a10;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v50 = a13;
  v53 = a12;
  v51 = a11;
  v58 = a9;
  v22 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);
  v23 = a1;
  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();
  v57 = v23;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = a6;
    v27 = a8;
    v28 = v26;
    v29 = swift_slowAlloc();
    *v28 = 138543362;
    v30 = v57;
    *(v28 + 4) = v57;
    *v29 = v30;
    v31 = v30;
    _os_log_impl(&dword_26629C000, v24, v25, "PlaybackStarter#send sending queue to destination: %{public}@", v28, 0xCu);
    sub_2662E4324(v29);
    MEMORY[0x266784AD0](v29, -1, -1);
    v32 = v28;
    a8 = v27;
    v17 = a10;
    a6 = v49;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v33 = a3[9];
  v49 = a3[8];
  v48 = __swift_project_boxed_opaque_existential_1(a3 + 5, v49);
  sub_2662A5550(v17, v60);
  sub_26637C7BC(a3, v59);
  v34 = swift_allocObject();
  v35 = v58;
  *(v34 + 16) = a8;
  *(v34 + 24) = v35;
  sub_2662A8618(v60, v34 + 32);
  v36 = v59[0];
  *(v34 + 104) = v59[1];
  v37 = v59[3];
  *(v34 + 120) = v59[2];
  *(v34 + 136) = v37;
  *(v34 + 152) = v59[4];
  v38 = v51;
  v39 = v53;
  *(v34 + 72) = v51;
  *(v34 + 80) = v39;
  *(v34 + 88) = v36;
  v40 = v55;
  v42 = v56;
  v41 = v57;
  *(v34 + 168) = v55;
  *(v34 + 176) = v42;
  v43 = v52;
  *(v34 + 184) = a6;
  *(v34 + 192) = v43;
  *(v34 + 200) = v54 & 1;
  *(v34 + 208) = v41;
  *(v34 + 216) = v50 & 1;
  v54 = *(v33 + 8);

  v44 = v41;

  v45 = v38;
  v46 = v39;

  v54(v40, v42, a6, v43, sub_2663C5118, v34, v49, v33);
}

void sub_2663C33BC(void **a1, void (*a2)(__int128 *), uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, unsigned __int8 a12, void *a13, char a14)
{
  v144 = a8;
  v143 = a7;
  v151 = a5;
  v142 = a4;
  v165 = *MEMORY[0x277D85DE8];
  v18 = sub_2664DFE38();
  v153 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v140 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v155 = &v139 - v22;
  MEMORY[0x28223BE20](v21);
  v147 = &v139 - v23;
  v24 = sub_2664E0198();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2664E0188();
  v149 = *(v150 - 8);
  v28 = MEMORY[0x28223BE20](v150);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v148 = &v139 - v31;
  v33 = *a1;
  v32 = a1[1];
  v34 = swift_allocObject();
  v154 = v34;
  *(v34 + 16) = MEMORY[0x277D84F98];
  v158 = v34 + 16;
  v156 = v33;
  if (v33 != 1 && v32)
  {
    v35 = *MEMORY[0x277D27DA8];
    if (!*MEMORY[0x277D27DA8])
    {
      goto LABEL_51;
    }

    *(&v161 + 1) = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *&v160 = v32;
    v36 = v32;
    sub_2664490A4(&v160, v35);
  }

  *&v159 = v25;
  v141 = a6;
  v152 = v18;
  v145 = a2;
  v146 = a3;
  if (qword_280F90B20 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    swift_beginAccess();
    v38 = qword_280F90B40;
    v37 = unk_280F90B48;
    v39 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v40 = *(v38 - 8);
    MEMORY[0x28223BE20](v39);
    v42 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v42);
    v43 = (*(v37 + 16))(v38, v37);
    v45 = v44;
    (*(v40 + 8))(v42, v38);
    v46 = v155;
    v47 = v156;
    v157 = v45;
    if (!v45)
    {
      goto LABEL_11;
    }

    v48 = *MEMORY[0x277D27D08];
    if (!*MEMORY[0x277D27D08])
    {
      goto LABEL_49;
    }

    v49 = v157;

    v50 = v48;
    v51 = sub_2664E02A8();
    *(&v161 + 1) = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
    *&v160 = v51;
    sub_2664490A4(&v160, v50);

    v52 = sub_26648BD18(v43, v49);
    v54 = v53;
    sub_2663C51C4(&qword_280073350, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_2664E0178();
    sub_2663C50C4(v52, v54);
    sub_2664AB368(v52, v54, v27, v55);
    sub_266348774(v52, v54);
    v56 = v148;
    sub_2664E0168();
    sub_266348774(v52, v54);
    (*(v159 + 8))(v27, v24);
    (*(v149 + 16))(v30, v56, v150);
    sub_2663C51C4(&qword_280073358, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_2664E0438();
    v57 = v160;
    v58 = *(v160 + 16);
    v30 = MEMORY[0x277D84F90];
    if (*(&v160 + 1) == v58)
    {
      break;
    }

    v159 = xmmword_2664E36F0;
    v110 = *(&v160 + 1);
    while ((*(&v57 + 1) & 0x8000000000000000) == 0)
    {
      if (v110 >= *(v57 + 16))
      {
        goto LABEL_45;
      }

      v111 = *(v57 + 32 + v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
      v112 = swift_allocObject();
      *(v112 + 16) = v159;
      *(v112 + 56) = MEMORY[0x277D84B78];
      *(v112 + 64) = MEMORY[0x277D84BC0];
      *(v112 + 32) = v111;
      v27 = sub_2664E02E8();
      v114 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2663846F4(0, *(v30 + 2) + 1, 1, v30);
      }

      v24 = *(v30 + 2);
      v115 = *(v30 + 3);
      if (v24 >= v115 >> 1)
      {
        v30 = sub_2663846F4((v115 > 1), v24 + 1, 1, v30);
      }

      ++v110;
      *(v30 + 2) = v24 + 1;
      v116 = &v30[16 * v24];
      *(v116 + 4) = v27;
      *(v116 + 5) = v114;
      if (v58 == v110)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_9:
  (*(v149 + 8))(v148, v150);

  *&v160 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_26639EC30();
  v59 = sub_2664E0288();
  v61 = v60;

  if (*MEMORY[0x277D27DF0])
  {
    v62 = *MEMORY[0x277D27DF0];

    *(&v161 + 1) = MEMORY[0x277D837D0];
    *&v160 = v59;
    *(&v160 + 1) = v61;
    sub_2664490A4(&v160, v62);
    v46 = v155;
    v47 = v156;
LABEL_11:
    v63 = v152;
    v64 = v153;
    v65 = v151;
    if (v47 >= 2)
    {
      v66 = objc_opt_self();
      *&v160 = 0;
      v67 = v47;
      v68 = [v66 archivedDataWithRootObject:v67 requiringSecureCoding:1 error:&v160];
      if (!v68)
      {
        v117 = v160;

        v118 = sub_2664DE1A8();

        swift_willThrow();
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v119 = __swift_project_value_buffer(v63, qword_280F914F0);
        swift_beginAccess();
        v120 = *(v64 + 16);
        v120(v46, v119, v63);
        v121 = v118;
        v122 = sub_2664DFE18();
        v123 = sub_2664E06D8();

        v124 = os_log_type_enabled(v122, v123);
        *&v159 = v118;
        if (v124)
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *&v160 = v126;
          *v125 = 136446210;
          swift_getErrorValue();
          v127 = sub_2664E0DE8();
          v129 = sub_2662A320C(v127, v128, &v160);

          *(v125 + 4) = v129;
          v63 = v152;
          _os_log_impl(&dword_26629C000, v122, v123, "PlaybackStarter#send error archiving account info for prepareForSetQueue: %{public}s", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v126);
          MEMORY[0x266784AD0](v126, -1, -1);
          v130 = v125;
          v64 = v153;
          MEMORY[0x266784AD0](v130, -1, -1);
        }

        v131 = *(v64 + 8);
        v131(v155, v63);
        v132 = v140;
        v120(v140, v119, v63);
        v133 = sub_2664DFE18();
        v134 = sub_2664E06B8();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = v132;
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          *&v160 = v137;
          *v136 = 134218498;
          *(v136 + 4) = 15;
          *(v136 + 12) = 2048;
          *(v136 + 14) = 5;
          *(v136 + 22) = 2080;
          *(v136 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664F7320, &v160);
          _os_log_impl(&dword_26629C000, v133, v134, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v136, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v137);
          MEMORY[0x266784AD0](v137, -1, -1);
          MEMORY[0x266784AD0](v136, -1, -1);

          v138 = v135;
        }

        else
        {

          v138 = v132;
        }

        v131(v138, v63);
        v160 = xmmword_2664EA4D0;
        *&v161 = 0x80000002664F7320;
        BYTE8(v161) = 1;
        v145(&v160);

        sub_2662D2F30(v160, *(&v160 + 1), v161, SBYTE8(v161));
        goto LABEL_26;
      }

      v69 = v68;
      v70 = v160;
      v71 = sub_2664DE2F8();
      v73 = v72;

      v74 = *MEMORY[0x277D27E18];
      if (!*MEMORY[0x277D27E18])
      {
        goto LABEL_52;
      }

      *(&v161 + 1) = MEMORY[0x277CC9318];
      *&v160 = v71;
      *(&v160 + 1) = v73;
      v75 = v74;
      sub_2663C50C4(v71, v73);
      sub_2664490A4(&v160, v75);

      sub_266348774(v71, v73);
      v47 = v156;
    }

    v76 = *MEMORY[0x277D27CD8];
    if (*MEMORY[0x277D27CD8])
    {
      v77 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v78 = v76;
      v79 = sub_2664E08F8();
      *(&v161 + 1) = v77;
      *&v160 = v79;
      sub_2664490A4(&v160, v78);
      if (*MEMORY[0x277D27DC8])
      {
        v80 = *MEMORY[0x277D27DC8];

        v81 = v142[3];
        v82 = v142[4];
        __swift_project_boxed_opaque_existential_1(v142, v81);
        v83 = (*(v82 + 8))(v81, v82);
        *(&v161 + 1) = MEMORY[0x277D849A8];
        LODWORD(v160) = v83;
        sub_2664490A4(&v160, v80);
        v84 = sub_2664E02A8();
        [v65 setFeatureName_];

        if (v47 == 1)
        {
          v85 = 0;
        }

        else
        {
          v85 = v47;
        }

        [v65 setUserIdentity_];

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v86 = a14;
        v87 = a13;
        LODWORD(v157) = a12;
        *&v159 = a11;
        v156 = a10;
        v88 = a9;
        v89 = __swift_project_value_buffer(v63, qword_280F914F0);
        swift_beginAccess();
        v90 = v147;
        (*(v64 + 16))(v147, v89, v63);

        v91 = sub_2664DFE18();
        v92 = sub_2664E06E8();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *&v160 = v94;
          *v93 = 136315138;
          swift_beginAccess();
          type metadata accessor for CFString(0);
          sub_2663C51C4(&qword_280071F78, type metadata accessor for CFString, &unk_2664E3024);

          v95 = sub_2664E01D8();
          v97 = v96;

          v98 = v95;
          v88 = a9;
          v87 = a13;
          v86 = a14;
          v99 = sub_2662A320C(v98, v97, &v160);

          *(v93 + 4) = v99;
          _os_log_impl(&dword_26629C000, v91, v92, "PlaybackStarter#sendQueue Sending setQueue with options: %s", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v94);
          v100 = v94;
          v65 = v151;
          MEMORY[0x266784AD0](v100, -1, -1);
          MEMORY[0x266784AD0](v93, -1, -1);

          (*(v153 + 8))(v147, v152);
        }

        else
        {

          (*(v64 + 8))(v90, v63);
        }

        v101 = v145;
        sub_26637C7BC(v143, &v160);
        v102 = swift_allocObject();
        v103 = v163;
        *(v102 + 48) = v162;
        *(v102 + 64) = v103;
        *(v102 + 80) = v164;
        v104 = v161;
        *(v102 + 16) = v160;
        *(v102 + 32) = v104;
        *(v102 + 96) = v144;
        *(v102 + 104) = v88;
        *(v102 + 112) = v156;
        *(v102 + 120) = v159;
        *(v102 + 128) = v65;
        *(v102 + 136) = v157 & 1;
        v105 = v154;
        *(v102 + 144) = v87;
        *(v102 + 152) = v105;
        v106 = v141;
        *(v102 + 160) = v141;
        *(v102 + 168) = v86 & 1;

        v107 = v65;
        v108 = v87;
        v109 = v106;

        sub_2663F4978(0xD000000000000019, 0x80000002664F7300, v109, v101, v146, 0, sub_2663C5174, v102);

LABEL_26:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_2663C4540(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, char a9, void *a10, uint64_t a11, void *a12, char a13)
{
  v16 = a3[8];
  v17 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v16);
  sub_26637C7BC(a3, v29);
  v18 = swift_allocObject();
  v19 = v29[0];
  *(v18 + 40) = v29[1];
  v20 = v29[3];
  *(v18 + 56) = v29[2];
  *(v18 + 72) = v20;
  *(v18 + 88) = v29[4];
  *(v18 + 16) = a8;
  *(v18 + 24) = v19;
  *(v18 + 104) = a9;
  *(v18 + 112) = a10;
  *(v18 + 120) = a11;
  *(v18 + 128) = a12;
  *(v18 + 136) = a13;
  *(v18 + 144) = a1;
  *(v18 + 152) = a2;
  v21 = *(v17 + 24);
  v22 = a8;
  v23 = a10;

  v24 = a12;

  v21(a4, a5, sub_2663C520C, v18, v16, v17);
}

uint64_t sub_2663C467C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v15 = sub_2664E02A8();
  }

  else
  {
    v15 = 0;
  }

  [a3 setHomeKitUserIdentifier_];

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  swift_beginAccess();
  v16 = *(a7 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a10;
  *(v17 + 24) = a11;

  sub_2664AF830(a3, a6, v16, a9 & 1, sub_2663C5250, v17);
}

uint64_t sub_2663C4790(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  v29 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v13, v6);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v10;
    v17 = v16;
    v27 = swift_slowAlloc();
    v31 = v27;
    v32 = v11;
    *v17 = 136446210;
    v33 = v30;
    v34 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    v18 = sub_2664E0318();
    v28 = v11;
    v20 = sub_2662A320C(v18, v19, &v31);
    v26 = v6;
    v21 = a2;
    v22 = v20;

    *(v17 + 4) = v22;
    a2 = v21;
    _os_log_impl(&dword_26629C000, v14, v15, v29, v17, 0xCu);
    v23 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x266784AD0](v23, -1, -1);
    v24 = v17;
    v10 = v30;
    MEMORY[0x266784AD0](v24, -1, -1);

    (*(v7 + 8))(v9, v26);
    v11 = v28;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v32 = v11;
  v33 = v10;
  v34 = v12;
  return a2(&v32);
}

uint64_t sub_2663C4A4C(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, char a7)
{
  v30[1] = a5;
  v31 = a4;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - v17;
  if ((a1 & 1) != 0 || (v19 = [a2 outputDeviceUIDs], v20 = sub_2664E04A8(), v19, v21 = *(v20 + 16), , !v21))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v27, v12);
    v23 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (!os_log_type_enabled(v23, v28))
    {
      v26 = 1;
      goto LABEL_14;
    }

    v25 = swift_slowAlloc();
    *v25 = 67240192;
    *(v25 + 4) = a7 & 1;
    _os_log_impl(&dword_26629C000, v23, v28, "PlaybackStarter#send Sending to destination with immediatelyStartPlayback:%{BOOL,public}d", v25, 8u);
    v26 = 1;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v22, v12);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();
    if (!os_log_type_enabled(v23, v24))
    {
      v26 = 0;
      a7 = 1;
      v18 = v16;
      goto LABEL_14;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "PlaybackStarter#send remote WHA destination with immediatelyStartPlayback:true", v25, 2u);
    v26 = 0;
    a7 = 1;
    v18 = v16;
  }

  MEMORY[0x266784AD0](v25, -1, -1);
LABEL_14:

  (*(v13 + 8))(v18, v12);
  [a3 setShouldImmediatelyStartPlayback_];
  return v31(a6, v26);
}

uint64_t sub_2663C4DB0(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a1;
    v26 = v14;
    *v13 = 136446210;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v16 = sub_2664E0318();
    v18 = sub_2662A320C(v16, v17, &v26);
    v23 = v4;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_26629C000, v10, v11, "PlaybackStarter#resolveDestination Resolved playback destination as: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v24 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_2663C50C4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2663C51C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2663C528C()
{
  v23 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v0 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v1 = qword_280F8F808;
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v39 = v2;
  v40 = &protocol witness table for MultiUserConnectionProvider;
  *&v38 = v1;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();
  swift_retain_n();
  v22 = sub_266360778(v0, &v38, v4);

  v5 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v38);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v35 = qword_280F905C8;
  *(&v35 + 5) = *(&qword_280F905C8 + 5);
  v36 = &type metadata for FeatureFlagProvider;
  v37 = &protocol witness table for FeatureFlagProvider;
  v34 = &protocol witness table for SharedContextProvider;
  v33 = type metadata accessor for SharedContextProvider();
  v31 = &protocol witness table for SubscriptionProvider;
  *&v32 = swift_initStaticObject();
  v30 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v7 = qword_280F91470;
  v27 = type metadata accessor for SiriKitTaskLoggingProvider();
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = v7;
  v25[3] = &type metadata for WatchOSSupportProvider;
  v25[4] = &off_2877EC0A0;
  v8 = type metadata accessor for MediaPlaybackProvider();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for WatchOSSupportProvider);
  v9[28] = &type metadata for WatchOSSupportProvider;
  v9[29] = &off_2877EC0A0;
  v9[5] = v3;
  v9[6] = &protocol witness table for AccountProvider;
  v9[2] = v22;
  v9[17] = v23;
  v9[18] = v5;
  v9[19] = v6;
  sub_2662A8618(&v38, (v9 + 20));
  sub_2662A8618(&v35, (v9 + 30));
  sub_2662A8618(&v32, (v9 + 35));
  sub_2662A8618(&v29, (v9 + 7));
  sub_2662A8618(&v26, (v9 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v39 = v8;
  v40 = &off_2877F3740;
  *&v38 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v36 = v2;
  v37 = &protocol witness table for MultiUserConnectionProvider;
  *&v35 = v1;
  v11 = swift_allocObject();

  v12 = sub_266360778(v10, &v35, v11);

  v36 = v3;
  v37 = &protocol witness table for AccountProvider;
  *&v35 = v12;
  v33 = &type metadata for PlaybackStarter;
  v34 = &off_2877EE098;
  v13 = swift_allocObject();
  *&v32 = v13;
  sub_2663FB4EC(v13 + 2);
  v14 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v15 = swift_allocObject();
  v16 = sub_266360778(v14, &v29, v15);

  v13[10] = v3;
  v13[11] = &protocol witness table for AccountProvider;
  v13[7] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  v30 = v2;
  v31 = &protocol witness table for MultiUserConnectionProvider;
  *&v29 = v1;
  v18 = swift_allocObject();
  v19 = sub_266360778(v17, &v29, v18);

  v30 = &type metadata for PlaybackQueueLocationProvider;
  v31 = &off_2877E8100;
  v20 = swift_allocObject();
  *&v29 = v20;
  v20[5] = v3;
  v20[6] = &protocol witness table for AccountProvider;
  v20[2] = v19;
  sub_266401880(v20 + 7);
  return (*(v24 + 128))(&v38, &v35, &v32, &v29);
}

void sub_2663C5760(void *a1, __int128 *a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v32 = a5;
  v30 = a4;
  v31 = a3;
  v34 = a1;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = a2[1];
  v38 = *a2;
  v39 = v13;
  v40[0] = a2[2];
  *(v40 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v15 = *(v7 + 16);
  v15(v12, v14, v6);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "RemotePlaybackHandler#preLoadQueue Remote playback", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = *(v7 + 8);
  v19(v12, v6);
  v15(v10, v14, v6);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "RemotePlaybackHandler#preLoadQueue Playing Remote Queue", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v19(v10, v6);
  v23 = v34;
  if (sub_2664C8564(v34))
  {
    v36[0] = v38;
    v36[1] = v39;
    *v37 = v40[0];
    *&v37[15] = *(v40 + 15);
    v24 = swift_allocObject();
    v25 = v33;
    *(v24 + 16) = v33;
    v26 = v39;
    *(v24 + 24) = v38;
    *(v24 + 40) = v26;
    *(v24 + 56) = v40[0];
    *(v24 + 71) = *(v40 + 15);
    v27 = v31;
    *(v24 + 80) = v31;
    *(v24 + 88) = v23;
    v28 = v32;
    *(v24 + 96) = v30;
    *(v24 + 104) = v28;

    sub_2662D2A64(&v38, v35);
    v29 = v27;

    sub_2664C604C((v25 + 56), v23, v36, 2, sub_2663CB98C, v24);
  }

  else
  {
    sub_2663C8428(0, v33, v30, v32, v23, &v38, v31);
  }
}

id sub_2663C5B38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v33 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    v34 = *(a1 + 48);
    v16 = PlaybackItem.Scheme.rawValue.getter();
    v18 = sub_2662A320C(v16, v17, &v35);
    v32 = v6;
    v19 = a1;
    v20 = v3;
    v21 = a2;
    v22 = v18;

    *(v14 + 4) = v22;
    a2 = v21;
    v3 = v20;
    a1 = v19;
    _os_log_impl(&dword_26629C000, v11, v12, "RemotePlaybackHandler#getPlaybackQueueForAddToUpNext [SetPlaybackQueueLocation] Scheme didn't match known scheme: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v33 + 8))(v9, v32);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v23 = (*(*v3 + 192))(a1);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = [objc_opt_self() emptyIdentifierSet];
    v23 = 0;
  }

  v25 = v23;
  sub_26645F924(a2);
  v26 = objc_allocWithZone(MEMORY[0x277D27888]);
  v27 = sub_2664E0488();

  v28 = [v26 initWithContextID:0 storeItemIDs:v27 collectionIdentifierSet:v24];

  v29 = [v28 createRemotePlaybackQueue];
  return v29;
}

void *sub_2663C5E98(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v56 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  MEMORY[0x28223BE20](v9);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x28223BE20](v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v11;
  v22 = type metadata accessor for MediaPlaybackProvider();
  v65[3] = v22;
  v65[4] = &off_2877F3740;
  v65[0] = v21;
  v64[3] = &type metadata for PlaybackStarter;
  v64[4] = &off_2877EE098;
  v23 = swift_allocObject();
  v64[0] = v23;
  v24 = v15[3];
  v23[3] = v15[2];
  v23[4] = v24;
  v23[5] = v15[4];
  v25 = v15[1];
  v23[1] = *v15;
  v23[2] = v25;
  v8[21] = &type metadata for PlaybackQueueLocationProvider;
  v8[22] = &off_2877E8100;
  v26 = swift_allocObject();
  v8[18] = v26;
  v27 = v19[3];
  v26[3] = v19[2];
  v26[4] = v27;
  v26[5] = v19[4];
  v28 = v19[1];
  v26[1] = *v19;
  v26[2] = v28;
  sub_2662A5550(v65, (v8 + 2));
  sub_2662A5550(a2, (v8 + 7));
  sub_2662A5550(v64, (v8 + 13));
  sub_2662A5550(v65, v63);
  sub_2662A5550(a2, v62);
  sub_2662A5550(v64, v61);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v63, v63[3]);
  MEMORY[0x28223BE20](v29);
  v31 = (&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  MEMORY[0x28223BE20](v33);
  v35 = (&v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v31;
  v60[3] = v22;
  v60[4] = &off_2877F3740;
  v60[0] = v37;
  v58 = &type metadata for PlaybackStarter;
  v59 = &off_2877EE098;
  v38 = swift_allocObject();
  v57[0] = v38;
  v39 = v35[3];
  v38[3] = v35[2];
  v38[4] = v39;
  v38[5] = v35[4];
  v40 = v35[1];
  v38[1] = *v35;
  v38[2] = v40;
  type metadata accessor for LocalPlaybackHelper();
  v41 = swift_allocObject();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v60, v22);
  MEMORY[0x28223BE20](v42);
  v44 = (&v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  MEMORY[0x28223BE20](v46);
  v48 = (&v55 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v44;
  v41[5] = v22;
  v41[6] = &off_2877F3740;
  v41[2] = v50;
  v41[15] = &type metadata for PlaybackStarter;
  v41[16] = &off_2877EE098;
  v51 = swift_allocObject();
  v41[12] = v51;
  v52 = v48[3];
  v51[3] = v48[2];
  v51[4] = v52;
  v51[5] = v48[4];
  v53 = v48[1];
  v51[1] = *v48;
  v51[2] = v53;
  sub_2662A8618(v62, (v41 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  v8[12] = v41;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v8;
}

uint64_t sub_2663C6558(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v26 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v11, v3);
  sub_2663CB97C(v8, v7, v9, v10);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  sub_2662D2F30(v8, v7, v9, v10);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v7;
    v24 = v13;
    v15 = v14;
    v23 = swift_slowAlloc();
    v28 = v23;
    v29 = v8;
    *v15 = 136315138;
    v30 = v27;
    v31 = v9;
    v32 = v10;
    sub_2663CB97C(v8, v27, v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073360, &qword_2664EA5F8);
    v16 = sub_2664E0318();
    v22 = v3;
    v18 = sub_2662A320C(v16, v17, &v28);
    v25 = v8;
    v19 = v18;

    *(v15 + 4) = v19;
    _os_log_impl(&dword_26629C000, v12, v24, "RemotePlaybackHandler#warm [Remote] PlaybackResult returned from handlePlaybackQueueLocation: %s", v15, 0xCu);
    v20 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v20, -1, -1);
    v7 = v27;
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v4 + 8))(v6, v22);
    v8 = v25;
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v29 = v8;
  v30 = v7;
  v31 = v9;
  v32 = v10;
  return v26(&v29);
}

void sub_2663C6848(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *(a1 + 16);
  if (v13 && (*(a1 + 36) & 1) == 0 && (v14 = *(a1 + 24)) != 0)
  {
    v15 = *(a1 + 32);
    v16 = qword_280F914E8;
    v17 = v13;
    v18 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v12, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = a3;
      v23 = v18;
      v24 = v17;
      v25 = v15;
      v26 = a2;
      v27 = v22;
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "RemotePlaybackHandler#handlePlaybackQueueLocation setting queue location with x scheme", v22, 2u);
      v28 = v27;
      a2 = v26;
      v15 = v25;
      v17 = v24;
      v18 = v23;
      a3 = v39;
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    v29 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
    sub_266386350(MEMORY[0x277D84F90]);
    v30 = sub_2664E01A8();

    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    v43 = sub_2663CB974;
    v44 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v41 = sub_2663A0C48;
    v42 = &block_descriptor_27;
    v32 = _Block_copy(&aBlock);

    [v29 insertPlaybackQueueWithResult:v17 atPosition:v15 onDestination:v18 withOptions:v30 completion:v32];
    _Block_release(v32);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v33, v6);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06B8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&aBlock = v37;
      *v36 = 134218498;
      *(v36 + 4) = 5;
      *(v36 + 12) = 2048;
      *(v36 + 14) = 7;
      *(v36 + 22) = 2080;
      *(v36 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &aBlock);
      _os_log_impl(&dword_26629C000, v34, v35, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v36, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    aBlock = xmmword_2664EA550;
    v41 = 0x80000002664F73E0;
    LOBYTE(v42) = 1;
    a2(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v41, v42);
  }
}

uint64_t sub_2663C6D54(id a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v69 = a3;
  v5 = sub_2664DFE38();
  v71 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = sub_2664DFD68();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v60 - v18;
  if (a1)
  {
    v20 = [a1 commandResult];
    a1 = [a1 error];
  }

  else
  {
    v20 = 0;
  }

  sub_2664DFD98();

  v21 = sub_2664DFD48();
  v23 = v22;

  v24 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v23) & 0xF;
  }

  if (v24)
  {
    v70 = v19;
    v67 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    v26 = v71;
    v62 = *(v71 + 16);
    v63 = v25;
    v62(v10, v25, v5);
    (*(v14 + 16))(v17, v70, v13);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06D8();
    v29 = os_log_type_enabled(v27, v28);
    v65 = v14;
    v66 = v13;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v61 = v5;
      v31 = v30;
      v32 = swift_slowAlloc();
      v72 = v32;
      *v31 = 136315138;
      v33 = sub_2664DFD48();
      v60 = v10;
      v35 = v34;
      v64 = *(v14 + 8);
      v64(v17, v13);
      v36 = sub_2662A320C(v33, v35, &v72);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_26629C000, v27, v28, "RemotePlaybackHandler#handlePlaybackQueueLocation error onion: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v37 = v32;
      v38 = v71;
      MEMORY[0x266784AD0](v37, -1, -1);
      v39 = v31;
      v5 = v61;
      MEMORY[0x266784AD0](v39, -1, -1);

      v40 = *(v38 + 8);
      v40(v60, v5);
    }

    else
    {

      v64 = *(v14 + 8);
      v64(v17, v13);
      v40 = *(v26 + 8);
      v40(v10, v5);
    }

    v49 = sub_2664DFD48();
    v51 = v50;
    v52 = v68;
    v62(v68, v63, v5);

    v53 = sub_2664DFE18();
    v54 = v5;
    v55 = sub_2664E06B8();
    if (os_log_type_enabled(v53, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v57;
      *v56 = 134218498;
      *(v56 + 4) = 5;
      *(v56 + 12) = 2048;
      *(v56 + 14) = 7;
      *(v56 + 22) = 2080;
      v58 = sub_2662A320C(v49, v51, &v72);

      *(v56 + 24) = v58;
      _os_log_impl(&dword_26629C000, v53, v55, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v56, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266784AD0](v57, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v59 = v68;
    }

    else
    {

      v59 = v52;
    }

    v40(v59, v54);
    v72 = 1287;
    v73 = v49;
    v74 = v51;
    v75 = 1;
    v67(&v72);
    sub_2662D2F30(v72, v73, v74, v75);
    return (v64)(v70, v66);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v71 + 16))(v12, v41, v5);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v19;
      v45 = v5;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v42, v43, "RemotePlaybackHandler#handlePlaybackQueueLocation performed queue insertion using x scheme", v46, 2u);
      v47 = v46;
      v5 = v45;
      v19 = v44;
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    (*(v71 + 8))(v12, v5);
    v72 = 0;
    v73 = 0;
    v75 = 0;
    v74 = 0;
    a2(&v72);
    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_2663C745C(char *a1, uint64_t a2)
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 9);
  if (v10 >> 62)
  {
    v11 = sub_2664E0A68();
    v45 = a1;
    v46 = a2;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = a1;
    v46 = a2;
    if (v11)
    {
LABEL_3:
      if (v11 >= 1)
      {
        v12 = 0;
        v53 = v10 & 0xC000000000000001;
        v49 = (v6 + 8);
        v50 = (v6 + 16);
        a1 = MEMORY[0x277D84F90];
        *&v7 = 136315138;
        v47 = v7;
        v51 = v10;
        v52 = v11;
        v48 = v5;
        while (1)
        {
          if (v53)
          {
            v27 = MEMORY[0x266783B70](v12, v10);
          }

          else
          {
            v27 = *(v10 + 8 * v12 + 32);
          }

          v28 = *(v27 + 49);
          if (v28 <= 3 && *(v27 + 49) > 1u && v28 != 2)
          {
            break;
          }

          v29 = sub_2664E0D88();

          if (v29)
          {
            goto LABEL_46;
          }

          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v30 = __swift_project_value_buffer(v5, qword_280F914F0);
          swift_beginAccess();
          (*v50)(v9, v30, v5);

          v31 = v9;
          v32 = sub_2664DFE18();
          v33 = sub_2664E06D8();

          if (!os_log_type_enabled(v32, v33))
          {

            (*v49)(v31, v5);
            v9 = v31;
            v10 = v51;
            goto LABEL_33;
          }

          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v54 = v14;
          *v13 = v47;
          v15 = *(v27 + 49);
          v16 = 0x62696C656C6F6877;
          if (v15 != 6)
          {
            v16 = 0x6E776F6E6B6E75;
          }

          v17 = 0xEC00000079726172;
          if (v15 != 6)
          {
            v17 = 0xE700000000000000;
          }

          v18 = 0x6867696C746F7073;
          if (v15 == 4)
          {
            v18 = 1684630645;
          }

          v19 = 0xE900000000000074;
          if (v15 == 4)
          {
            v19 = 0xE400000000000000;
          }

          if (*(v27 + 49) <= 5u)
          {
            v16 = v18;
            v17 = v19;
          }

          v20 = 0x72657669746C756DLL;
          if (v15 != 2)
          {
            v20 = 0x65726F7473;
          }

          v21 = 0xEA00000000006573;
          if (v15 != 2)
          {
            v21 = 0xE500000000000000;
          }

          v22 = 0x636E797369726973;
          if (!*(v27 + 49))
          {
            v22 = 0x656369766564;
          }

          v23 = 0xE600000000000000;
          if (*(v27 + 49))
          {
            v23 = 0xE800000000000000;
          }

          if (*(v27 + 49) <= 1u)
          {
            v20 = v22;
            v21 = v23;
          }

          if (*(v27 + 49) <= 3u)
          {
            v24 = v20;
          }

          else
          {
            v24 = v16;
          }

          if (*(v27 + 49) <= 3u)
          {
            v25 = v21;
          }

          else
          {
            v25 = v17;
          }

          v26 = sub_2662A320C(v24, v25, &v54);

          *(v13 + 4) = v26;
          _os_log_impl(&dword_26629C000, v32, v33, "RemotePlaybackHandler#handlePlaybackQueueLocation [SetPlaybackQueueLocation] Unknown origin: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x266784AD0](v14, -1, -1);
          MEMORY[0x266784AD0](v13, -1, -1);

          v5 = v48;
          v9 = v31;
          (*v49)(v31, v48);
          v10 = v51;
LABEL_32:
          v11 = v52;
LABEL_33:
          if (v11 == ++v12)
          {
            goto LABEL_53;
          }
        }

LABEL_46:
        v35 = *(v27 + 56);
        v34 = *(v27 + 64);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
        }

        v37 = *(a1 + 2);
        v36 = *(a1 + 3);
        if (v37 >= v36 >> 1)
        {
          a1 = sub_2663846F4((v36 > 1), v37 + 1, 1, a1);
        }

        *(a1 + 2) = v37 + 1;
        v38 = &a1[16 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_32;
      }

      __break(1u);
LABEL_61:
      a1 = sub_2663846F4(0, 1, 1, a1);
      goto LABEL_56;
    }
  }

  a1 = MEMORY[0x277D84F90];
LABEL_53:
  if (*(a1 + 2))
  {
    v2 = v45;
    v10 = v46;
    goto LABEL_59;
  }

  v2 = v45;
  a2 = *(v45 + 7);
  v6 = *(v45 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_56:
  v41 = *(a1 + 2);
  v40 = *(a1 + 3);
  if (v41 >= v40 >> 1)
  {
    a1 = sub_2663846F4((v40 > 1), v41 + 1, 1, a1);
  }

  *(a1 + 2) = v41 + 1;
  v42 = &a1[16 * v41];
  *(v42 + 4) = a2;
  *(v42 + 5) = v6;
LABEL_59:
  v43 = (*(*v10 + 200))(v2, a1);

  return v43;
}

uint64_t sub_2663C7AD4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v85 = a7;
  v86 = a6;
  v84 = a4;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v72[-v18];
  MEMORY[0x28223BE20](v17);
  v22 = &v72[-v21];
  v23 = *(a1 + 16);
  if (v23 && (*(a1 + 36) & 1) == 0 && (v24 = *(a1 + 24)) != 0)
  {
    v75 = v20;
    v25 = qword_280F914E8;
    v80 = v23;
    v79 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v74 = v19;
    v26 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v27 = *(v12 + 16);
    v83 = v26;
    v82 = v12 + 16;
    v81 = v27;
    v27(v22, v26, v11);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "RemotePlaybackHandler#preLoadQueueForRemote setting queue location with x scheme", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v76 = *(v12 + 8);
    v76(v22, v11);
    v31 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
    v73 = *(a3 + 50);
    *&v32 = *(a3 + 8);
    v78 = v32;
    v33 = *(a3 + 16);
    v34 = *(a5 + 104);
    *&v32 = *(a5 + 96);
    v77 = v32;
    v93[3] = &type metadata for PlaybackAttributes;
    v93[4] = &off_2877E7D78;
    v35 = swift_allocObject();
    v93[0] = v35;
    v36 = *(a3 + 16);
    *(v35 + 16) = *a3;
    *(v35 + 32) = v36;
    *(v35 + 48) = *(a3 + 32);
    *(v35 + 63) = *(a3 + 47);
    sub_26637C7BC(v31, &v88);
    sub_2662A5550(v93, v87);
    v37 = swift_allocObject();
    v38 = v91;
    *(v37 + 48) = v90;
    *(v37 + 64) = v38;
    v39 = v89;
    *(v37 + 16) = v88;
    *(v37 + 32) = v39;
    *&v38 = v78;
    *(&v38 + 1) = v33;
    *&v40 = v77;
    *(&v40 + 1) = v34;
    v41 = v92;
    *(v37 + 96) = v38;
    *(v37 + 112) = v40;
    *(v37 + 80) = v41;
    v42 = v85;
    *(v37 + 128) = v86;
    *(v37 + 136) = v42;
    sub_2662A8618(v87, v37 + 144);
    v43 = v80;
    v44 = v84;
    *(v37 + 184) = v80;
    *(v37 + 192) = v44;
    *(v37 + 200) = 0;
    v45 = v79;
    v46 = v43;
    v47 = v45;
    sub_2662D2A64(a3, &v88);

    v48 = v44;

    [v47 mutableCopy];
    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2663CB9A0();
    if (swift_dynamicCast())
    {
      v49 = v87[0];
      [v87[0] setSingleGroup_];
      v50 = v46;
      v51 = v47;

      v52 = v49;
      sub_2664ADBE8(v51, v48, v51, v50, sub_26637C818, v37, v52, v73);
    }

    else
    {
      v59 = v46;
      v84 = v47;
      v60 = v74;
      v81(v74, v83, v11);
      v61 = sub_2664DFE18();
      v62 = sub_2664E06D8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_26629C000, v61, v62, "Guaranteed cast to mutable RemoteControlDestination failed", v63, 2u);
        MEMORY[0x266784AD0](v63, -1, -1);
      }

      v64 = v60;
      v65 = v76;
      v76(v64, v11);
      v66 = v75;
      v81(v75, v83, v11);
      v67 = sub_2664DFE18();
      v68 = sub_2664E06B8();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v88 = v70;
        *v69 = 134218498;
        *(v69 + 4) = 15;
        *(v69 + 12) = 2048;
        *(v69 + 14) = 22;
        *(v69 + 22) = 2080;
        *(v69 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v88);
        _os_log_impl(&dword_26629C000, v67, v68, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v69, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x266784AD0](v70, -1, -1);
        MEMORY[0x266784AD0](v69, -1, -1);

        v76(v66, v11);
      }

      else
      {

        v65(v66, v11);
      }

      v88 = xmmword_2664E8D90;
      *&v89 = 0x80000002664F5AE0;
      BYTE8(v89) = 1;
      v86(&v88);

      v71 = v84;
      sub_2662D2F30(v88, *(&v88 + 1), v89, SBYTE8(v89));
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v93);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v53, v11);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06B8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v88 = v57;
      *v56 = 134218498;
      *(v56 + 4) = 5;
      *(v56 + 12) = 2048;
      *(v56 + 14) = 38;
      *(v56 + 22) = 2080;
      *(v56 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F73E0, &v88);
      _os_log_impl(&dword_26629C000, v54, v55, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v56, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x266784AD0](v57, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v88 = xmmword_2664EA560;
    *&v89 = 0x80000002664F73E0;
    BYTE8(v89) = 1;
    v86(&v88);
    return sub_2662D2F30(v88, *(&v88 + 1), v89, SBYTE8(v89));
  }
}

void sub_2663C8428(int a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v136 = a7;
  v135 = a6;
  v139 = a5;
  v143 = a4;
  v142 = a3;
  LODWORD(v145) = a1;
  v144 = sub_2664DFE38();
  v8 = *(v144 - 8);
  v9 = MEMORY[0x28223BE20](v144);
  v140 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v133 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v131 = &v128 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v130 = &v128 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v132 = &v128 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v129 = &v128 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v128 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v137 = &v128 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v128 - v26;
  v28 = sub_2664DFE08();
  v29 = *(v28 - 1);
  MEMORY[0x28223BE20](v28);
  v31 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 40);
  v138 = a2;
  v33 = *__swift_project_boxed_opaque_existential_1((a2 + 16), v32);
  if (qword_280F91508 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v141 = v8;
    v34 = qword_280F91D48;
    sub_2664DFDE8();
    v35 = sub_2664E0848();
    LOBYTE(v127) = 2;
    sub_2664DFDC8(v35, &dword_26629C000, v34, "mediaPlaybackProviderStreamingAvailability", 42, 2, v31, " enableTelemetry=YES ", 21, v127, MEMORY[0x277D84F90]);
    v134 = v145 & 0x1010101;
    sub_26648D3D0(v134, v33, &v146);
    sub_2664E0838();
    sub_2664DFDD8();
    (*(v29 + 8))(v31, v28);
    v36 = v146;
    if (v146 == 1)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v37 = v144;
      v38 = __swift_project_value_buffer(v144, qword_280F914F0);
      swift_beginAccess();
      v39 = v8;
      v40 = *(v8 + 16);
      v40(v27, v38, v37);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06D8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "RemotePlaybackHandler#preLoadQueueForRemote Network needed for Streaming!", v43, 2u);
        MEMORY[0x266784AD0](v43, -1, -1);
      }

      v44 = 0xEC0000006B726F77;

      v45 = *(v39 + 8);
      v45(v27, v37);
      v46 = v137;
      v40(v137, v38, v37);
      v47 = v46;
      v48 = sub_2664DFE18();
      v49 = sub_2664E06B8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v146 = v51;
        *v50 = 134218498;
        *(v50 + 4) = 5;
        *(v50 + 12) = 2048;
        *(v50 + 14) = 26;
        *(v50 + 22) = 2080;
        *(v50 + 24) = sub_2662A320C(0x74654E736465654ELL, 0xEC0000006B726F77, &v146);
        _os_log_impl(&dword_26629C000, v48, v49, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v50, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x266784AD0](v51, -1, -1);
        MEMORY[0x266784AD0](v50, -1, -1);
      }

      v45(v47, v37);
      v52 = xmmword_2664EA580;
LABEL_10:
      v146 = v52;
      v147 = v44;
      v148 = 1;
      v142(&v146);
      sub_2662D2F30(v146, *(&v146 + 1), v147, v148);
      return;
    }

    if (v146 == 4)
    {
      v28 = &unk_280F91000;
      v33 = v144;
      v53 = v139;
      v54 = v8;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v55 = __swift_project_value_buffer(v33, qword_280F914F0);
      swift_beginAccess();
      v137 = *(v8 + 16);
      (v137)(v23, v55, v33);
      v56 = sub_2664DFE18();
      v57 = sub_2664E06C8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_26629C000, v56, v57, "RemotePlaybackHandler#preLoadQueueForRemote Setting localAllowed to true", v58, 2u);
        v59 = v23;
        v23 = v53;
LABEL_21:
        v130 = v36;
        MEMORY[0x266784AD0](v58, -1, -1);
        goto LABEL_31;
      }

      v130 = 4;
      v59 = v23;
      v23 = v53;
    }

    else
    {
      v33 = v144;
      v23 = v139;
      v54 = v8;
      if (v146 != 3)
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v63 = __swift_project_value_buffer(v33, qword_280F914F0);
        swift_beginAccess();
        v64 = *(v8 + 16);
        v64(v132, v63, v33);
        v65 = sub_2664DFE18();
        v66 = sub_2664E06D8();
        v67 = os_log_type_enabled(v65, v66);
        v68 = v130;
        if (v67)
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_26629C000, v65, v66, "RemotePlaybackHandler#preLoadQueueForRemote Companion not supported for store item", v69, 2u);
          MEMORY[0x266784AD0](v69, -1, -1);
        }

        v70 = *(v54 + 8);
        v70(v132, v33);
        v44 = 0x80000002664F7430;
        v64(v68, v63, v33);
        v71 = sub_2664DFE18();
        v72 = sub_2664E06B8();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v146 = v74;
          *v73 = 134218498;
          *(v73 + 4) = 5;
          *(v73 + 12) = 2048;
          *(v73 + 14) = 20;
          *(v73 + 22) = 2080;
          *(v73 + 24) = sub_2662A320C(0xD00000000000001FLL, 0x80000002664F7430, &v146);
          _os_log_impl(&dword_26629C000, v71, v72, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v73, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v74);
          MEMORY[0x266784AD0](v74, -1, -1);
          MEMORY[0x266784AD0](v73, -1, -1);
        }

        v70(v68, v33);
        v52 = xmmword_2664EA570;
        goto LABEL_10;
      }

      v28 = &unk_280F91000;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(v33, qword_280F914F0);
      swift_beginAccess();
      v61 = *(v8 + 16);
      v59 = v129;
      v137 = v61;
      (v61)(v129, v60, v33);
      v56 = sub_2664DFE18();
      v62 = sub_2664E06C8();
      if (os_log_type_enabled(v56, v62))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_26629C000, v56, v62, "RemotePlaybackHandler#preLoadQueueForRemote Setting localAllowed to false", v58, 2u);
        goto LABEL_21;
      }

      v130 = 3;
    }

LABEL_31:

    v77 = *(v54 + 8);
    v76 = (v54 + 8);
    v75 = v77;
    (v77)(v59, v33);
    v8 = v23[9];
    v78 = v8 >> 62 ? sub_2664E0A68() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v132 = v75;
    if (!v78)
    {
      break;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v79 = __swift_project_value_buffer(v33, qword_280F914F0);
    swift_beginAccess();
    v29 = v131;
    (v137)(v131, v79, v33);
    v80 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v80, v27))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26629C000, v80, v27, "RemotePlaybackHandler#preLoadQueueForRemote Sub items aren't empty, grabbing store IDs", v81, 2u);
      v82 = v81;
      v75 = v132;
      MEMORY[0x266784AD0](v82, -1, -1);
    }

    (v75)(v29, v33);
    if (v8 >> 62)
    {
      v83 = sub_2664E0A68();
    }

    else
    {
      v83 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v133 = v76;
    if (!v83)
    {
      v31 = MEMORY[0x277D84F90];
LABEL_61:
      v23 = v139;
      v92 = (*(*v138 + 192))(v139);
      v33 = v144;
      v88 = v135;
      v89 = v130;
      v75 = v132;
      goto LABEL_62;
    }

    v93 = 0;
    v145 = (v8 & 0xC000000000000001);
    v94 = v8 & 0xFFFFFFFFFFFFFF8;
    v31 = MEMORY[0x277D84F90];
    while (v145)
    {
      v23 = MEMORY[0x266783B70](v93, v8);
      v33 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_76;
      }

LABEL_51:
      v27 = v8;
      v95 = v23[7];
      v28 = v23[8];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2663846F4(0, *(v31 + 2) + 1, 1, v31);
      }

      v29 = *(v31 + 2);
      v96 = *(v31 + 3);
      v23 = (v29 + 1);
      if (v29 >= v96 >> 1)
      {
        v31 = sub_2663846F4((v96 > 1), v29 + 1, 1, v31);
      }

      *(v31 + 2) = v23;
      v97 = &v31[16 * v29];
      *(v97 + 4) = v95;
      *(v97 + 5) = v28;
      ++v93;
      v8 = v27;
      if (v33 == v83)
      {
        goto LABEL_61;
      }
    }

    if (v93 >= *(v94 + 16))
    {
      goto LABEL_77;
    }

    v23 = *(v8 + 8 * v93 + 32);

    v33 = v93 + 1;
    if (!__OFADD__(v93, 1))
    {
      goto LABEL_51;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v33, qword_280F914F0);
  swift_beginAccess();
  (v137)(v133, v84, v33);
  v85 = sub_2664DFE18();
  v86 = sub_2664E06C8();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v135;
  v89 = v130;
  if (v87)
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_26629C000, v85, v86, "RemotePlaybackHandler#preLoadQueueForRemote Sub items are empty, playing the collection instead", v90, 2u);
    MEMORY[0x266784AD0](v90, -1, -1);
  }

  (v75)(v133, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v31 = swift_allocObject();
  *(v31 + 1) = xmmword_2664E36F0;
  v91 = v23[8];
  *(v31 + 4) = v23[7];
  *(v31 + 5) = v91;

  v92 = 0;
LABEL_62:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v98 = __swift_project_value_buffer(v33, qword_280F914F0);
  swift_beginAccess();
  (v137)(v140, v98, v33);
  v99 = sub_2664DFE18();
  v100 = sub_2664E06C8();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_26629C000, v99, v100, "RemotePlaybackHandler#preLoadQueueForRemote Setting remote queue", v101, 2u);
    v102 = v101;
    v75 = v132;
    MEMORY[0x266784AD0](v102, -1, -1);
  }

  (v75)(v140, v33);
  sub_26645F924(v31);

  v103 = objc_allocWithZone(MEMORY[0x277D27888]);
  v104 = sub_2664E0488();

  v105 = [v103 initWithContextID:0 storeItemIDs:v104 collectionIdentifierSet:v92];

  [v105 setShuffleType_];
  v106 = *(v88 + 1);
  v107 = v105;
  [v107 setShouldOverrideManuallyCuratedQueue_];
  if (v23[11])
  {
    v108 = sub_2664E02A8();
  }

  else
  {
    v108 = 0;
  }

  [v107 setSiriRecommendationID_];

  swift_beginAccess();
  if (v23[3])
  {

    v109 = sub_2664E02A8();
  }

  else
  {
    v109 = 0;
  }

  v145 = v92;
  [v107 setSiriAssetInfo_];

  v110 = sub_2664E01A8();
  [v107 setSiriWHAMetricsInfo_];

  v111 = [objc_opt_self() systemMediaApplicationDestination];
  if (*(v88 + 40) && !*(*(v88 + 24) + 16))
  {
    LODWORD(v144) = v89 == 4;
    v120 = swift_allocObject();
    v121 = *(v88 + 16);
    *(v120 + 24) = *v88;
    *(v120 + 16) = v138;
    *(v120 + 40) = v121;
    *(v120 + 56) = *(v88 + 32);
    *(v120 + 71) = *(v88 + 47);
    v122 = v136;
    *(v120 + 80) = v107;
    *(v120 + 88) = v122;
    v123 = v142;
    *(v120 + 96) = v23;
    *(v120 + 104) = v123;
    *(v120 + 112) = v143;
    v153 = sub_2663CBA00;
    v154 = v120;
    aBlock = MEMORY[0x277D85DD0];
    v150 = 1107296256;
    v151 = sub_2663A0C48;
    v152 = &block_descriptor_44;
    v124 = _Block_copy(&aBlock);
    v125 = v107;

    sub_2662D2A64(v88, &v146);
    v126 = v122;

    [v111 resolveWithQueue:v125 routeIdentifiers:0 localPlaybackPermitted:v144 audioRoutingInfo:v134 completion:v124];

    _Block_release(v124);
  }

  else
  {
    LODWORD(v144) = v89 == 4;
    v112 = sub_2664E0488();
    v113 = swift_allocObject();
    *(v113 + 16) = v138;
    *(v113 + 24) = v107;
    v114 = *(v88 + 16);
    *(v113 + 32) = *v88;
    *(v113 + 48) = v114;
    *(v113 + 64) = *(v88 + 32);
    *(v113 + 79) = *(v88 + 47);
    v115 = v136;
    *(v113 + 88) = v136;
    *(v113 + 96) = v23;
    v116 = v143;
    *(v113 + 104) = v142;
    *(v113 + 112) = v116;
    v153 = sub_2663CB9EC;
    v154 = v113;
    aBlock = MEMORY[0x277D85DD0];
    v150 = 1107296256;
    v151 = sub_2663A0C48;
    v152 = &block_descriptor_38;
    v117 = _Block_copy(&aBlock);
    v118 = v107;

    sub_2662D2A64(v88, &v146);
    v119 = v115;

    [v111 resolveWithQueue:v118 hashedRouteIdentifiers:v112 localPlaybackPermitted:v144 audioRoutingInfo:v134 completion:v117];

    _Block_release(v117);
  }
}

uint64_t sub_2663C98DC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v95 = a8;
  v94 = a7;
  v90 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v81[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v81[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v86 = &v81[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v81[-v23];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v89 = a4;
  v25 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v26 = *(v14 + 16);
  v93 = v25;
  v92 = v14 + 16;
  v91 = v26;
  v26(v24, v25, v13);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v14;
    v30 = a1;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "RemotePlaybackHandler#preLoadQueueForRemote [SE Route Logic] Attempting to play queue via continuation", v31, 2u);
    v32 = v31;
    a1 = v30;
    v14 = v29;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v35 = *(v14 + 8);
  v33 = v14 + 8;
  v34 = v35;
  v35(v24, v13);
  v36 = v13;
  v37 = sub_2664AD590(a1, *(a3 + 32), *(a3 + 40));
  v38 = __swift_project_boxed_opaque_existential_1((a2 + 104), *(a2 + 128));
  v82 = *(a3 + 50);
  *&v39 = *(a3 + 8);
  v88 = v39;
  v40 = *(a3 + 16);
  v41 = *(a6 + 104);
  *&v39 = *(a6 + 96);
  v87 = v39;
  v102[3] = &type metadata for PlaybackAttributes;
  v102[4] = &off_2877E7D78;
  v42 = swift_allocObject();
  v102[0] = v42;
  v43 = *(a3 + 16);
  *(v42 + 16) = *a3;
  *(v42 + 32) = v43;
  *(v42 + 48) = *(a3 + 32);
  *(v42 + 63) = *(a3 + 47);
  sub_26637C7BC(v38, &v97);
  sub_2662A5550(v102, v96);
  v44 = swift_allocObject();
  v45 = v100;
  *(v44 + 48) = v99;
  *(v44 + 64) = v45;
  v46 = v98;
  *(v44 + 16) = v97;
  *(v44 + 32) = v46;
  *&v45 = v88;
  *(&v45 + 1) = v40;
  *&v47 = v87;
  *(&v47 + 1) = v41;
  v48 = v101;
  *(v44 + 96) = v45;
  *(v44 + 112) = v47;
  *(v44 + 80) = v48;
  v49 = v95;
  *(v44 + 128) = v94;
  *(v44 + 136) = v49;
  sub_2662A8618(v96, v44 + 144);
  v50 = v89;
  v51 = v90;
  *(v44 + 184) = v89;
  *(v44 + 192) = v51;
  *(v44 + 200) = 0;
  if (!v37)
  {
    v91(v86, v93, v36);
    sub_2662D2A64(a3, &v97);

    v59 = v50;
    v60 = v51;

    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();
    v63 = v36;
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    v34(v86, v63);
    v65 = v84;
    v91(v84, v93, v63);
    v66 = sub_2664DFE18();
    v67 = sub_2664E06B8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v97 = v69;
      *v68 = 134218498;
      *(v68 + 4) = 15;
      *(v68 + 12) = 2048;
      *(v68 + 14) = 13;
      *(v68 + 22) = 2080;
      *(v68 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v97);
      _os_log_impl(&dword_26629C000, v66, v67, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v68, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    v34(v65, v63);
    v97 = xmmword_2664E8DA0;
    *&v98 = 0xE900000000000074;
    BYTE8(v98) = 1;
    v94(&v97);
    goto LABEL_19;
  }

  *&v88 = v33;
  v52 = v36;
  sub_2662D2A64(a3, &v97);

  v53 = v50;
  v54 = v51;

  [v37 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = v83;
    v91(v83, v93, v36);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "Guaranteed cast to mutable RemoteControlDestination failed", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    v34(v70, v52);
    v74 = v85;
    v91(v85, v93, v52);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06B8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v97 = v78;
      *v77 = 134218498;
      *(v77 + 4) = 15;
      *(v77 + 12) = 2048;
      *(v77 + 14) = 22;
      *(v77 + 22) = 2080;
      *(v77 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v97);
      _os_log_impl(&dword_26629C000, v75, v76, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v78, -1, -1);
      MEMORY[0x266784AD0](v77, -1, -1);

      v79 = v85;
    }

    else
    {

      v79 = v74;
    }

    v34(v79, v52);
    v97 = xmmword_2664E8D90;
    *&v98 = 0x80000002664F5AE0;
    BYTE8(v98) = 1;
    v94(&v97);

LABEL_19:

    sub_2662D2F30(v97, *(&v97 + 1), v98, SBYTE8(v98));
    return __swift_destroy_boxed_opaque_existential_1Tm(v102);
  }

  v55 = v96[0];
  [v96[0] setSingleGroup_];
  v56 = v53;
  v57 = v37;

  v58 = v55;
  sub_2664ADBE8(v57, v54, v57, v56, sub_26637F70C, v44, v58, v82);

  return __swift_destroy_boxed_opaque_existential_1Tm(v102);
}

uint64_t sub_2663CA2B4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *), uint64_t a8)
{
  v89 = a8;
  v93 = a7;
  v88 = a5;
  v87 = a3;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v78[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v78[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v84 = &v78[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v78[-v22];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v25 = *(v13 + 16);
  v92 = v24;
  v91 = v25;
  v25(v23, v24, v12);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v90 = a2;
    v29 = v12;
    v30 = a1;
    v31 = v13;
    v32 = v28;
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "RemotePlaybackHandler#preLoadQueueForRemote Attempting to play remote queue via continuation", v28, 2u);
    v33 = v32;
    v13 = v31;
    a1 = v30;
    v12 = v29;
    a2 = v90;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v34 = *(v13 + 8);
  v83 = v13 + 8;
  v90 = v34;
  (v34)(v23, v12);
  v35 = __swift_project_boxed_opaque_existential_1(a2 + 13, a2[16]);
  v79 = *(a4 + 50);
  *&v36 = *(a4 + 8);
  v86 = v36;
  v37 = *(a4 + 16);
  v38 = *(a6 + 104);
  *&v36 = *(a6 + 96);
  v85 = v36;
  v100[3] = &type metadata for PlaybackAttributes;
  v100[4] = &off_2877E7D78;
  v39 = swift_allocObject();
  v100[0] = v39;
  v40 = *(a4 + 16);
  *(v39 + 16) = *a4;
  *(v39 + 32) = v40;
  *(v39 + 48) = *(a4 + 32);
  *(v39 + 63) = *(a4 + 47);
  sub_26637C7BC(v35, &v95);
  sub_2662A5550(v100, v94);
  v41 = swift_allocObject();
  v42 = v98;
  *(v41 + 48) = v97;
  *(v41 + 64) = v42;
  v43 = v96;
  *(v41 + 16) = v95;
  *(v41 + 32) = v43;
  *&v42 = v86;
  *(&v42 + 1) = v37;
  *&v44 = v85;
  *(&v44 + 1) = v38;
  v45 = v99;
  *(v41 + 96) = v42;
  *(v41 + 112) = v44;
  *(v41 + 80) = v45;
  v46 = v89;
  *(v41 + 128) = v93;
  *(v41 + 136) = v46;
  sub_2662A8618(v94, v41 + 144);
  v47 = v87;
  v48 = v88;
  *(v41 + 184) = v87;
  *(v41 + 192) = v48;
  *(v41 + 200) = 0;
  if (!a1)
  {
    v91(v84, v92, v12);
    sub_2662D2A64(a4, &v95);

    v56 = v47;
    v57 = v48;

    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "PlaybackStarter#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v60, 2u);
      MEMORY[0x266784AD0](v60, -1, -1);
    }

    (v90)(v84, v12);
    v61 = v82;
    v91(v82, v92, v12);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06B8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v95 = v65;
      *v64 = 134218498;
      *(v64 + 4) = 15;
      *(v64 + 12) = 2048;
      *(v64 + 14) = 13;
      *(v64 + 22) = 2080;
      *(v64 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v95);
      _os_log_impl(&dword_26629C000, v62, v63, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v64, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    (v90)(v61, v12);
    v95 = xmmword_2664E8DA0;
    *&v96 = 0xE900000000000074;
    BYTE8(v96) = 1;
    v93(&v95);
    goto LABEL_19;
  }

  sub_2662D2A64(a4, &v95);

  v49 = v47;
  v50 = v48;
  v51 = a1;

  [v51 mutableCopy];
  sub_2664E09E8();
  swift_unknownObjectRelease();
  sub_2663CB9A0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = v80;
    v91(v80, v92, v12);
    v67 = sub_2664DFE18();
    v68 = sub_2664E06D8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_26629C000, v67, v68, "Guaranteed cast to mutable RemoteControlDestination failed", v69, 2u);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    (v90)(v66, v12);
    v70 = v81;
    v91(v81, v92, v12);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06B8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v70;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v95 = v75;
      *v74 = 134218498;
      *(v74 + 4) = 15;
      *(v74 + 12) = 2048;
      *(v74 + 14) = 22;
      *(v74 + 22) = 2080;
      *(v74 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F5AE0, &v95);
      _os_log_impl(&dword_26629C000, v71, v72, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v74, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x266784AD0](v75, -1, -1);
      MEMORY[0x266784AD0](v74, -1, -1);

      v76 = v73;
    }

    else
    {

      v76 = v70;
    }

    (v90)(v76, v12);
    v95 = xmmword_2664E8D90;
    *&v96 = 0x80000002664F5AE0;
    BYTE8(v96) = 1;
    v93(&v95);

LABEL_19:

    sub_2662D2F30(v95, *(&v95 + 1), v96, SBYTE8(v96));
    return __swift_destroy_boxed_opaque_existential_1Tm(v100);
  }

  v52 = v94[0];
  [v94[0] setSingleGroup_];
  v53 = v49;
  v54 = v51;

  v55 = v52;
  sub_2664ADBE8(v54, v50, v54, v53, sub_26637F70C, v41, v55, v79);

  return __swift_destroy_boxed_opaque_existential_1Tm(v100);
}