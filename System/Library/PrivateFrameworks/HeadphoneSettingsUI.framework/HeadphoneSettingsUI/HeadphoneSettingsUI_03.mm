double sub_1AC266C70()
{
  v36 = 0;
  v33 = 0;
  MEMORY[0x1E69E5928](v0);
  sub_1AC309BFC();
  v1 = sub_1AC309C0C();
  v1();
  (MEMORY[0x1E69E5920])();
  v35 = *(v20 + qword_1EB54C590);
  v34 = 0;
  sub_1AC265878();
  if (sub_1AC30B1BC())
  {
    sub_1AC2670EC();
    sub_1AC20D404();
    v18 = sub_1AC30A9DC("Bobble_Smile", 12, 1);
    v17 = v3;
    sub_1AC20BE24();
    swift_getObjectType();
    v4 = sub_1AC20BE88();
    v19 = sub_1AC20D468(v18, v17, v4);
    if (v19)
    {
      v16 = v19;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/BobbleVideoLoopPlayer.swift", 47, 2, 40, 0);
      __break(1u);
    }

    v15 = sub_1AC267150(v16);
    v33 = v15;
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    MEMORY[0x1E69E5920](v15);
    (MEMORY[0x1E69E5928])();
    v14 = sub_1AC309B8C();
    (MEMORY[0x1E69E5920])();
    v30 = sub_1AC30ADAC();
    v31 = v5;
    v32 = v6;
    v9 = v30;
    v10 = v5;
    v11 = v6;
    sub_1AC223480();
    v13 = sub_1AC30AD7C();
    v8 = swift_allocObject();
    (MEMORY[0x1E69E5928])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x1E69E5920])();

    MEMORY[0x1E69E5928](v15);
    v7 = swift_allocObject();
    *(v7 + 16) = v8;
    *(v7 + 24) = v15;
    v28 = sub_1AC267700;
    v29 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = 0;
    v26 = sub_1AC2677CC;
    v27 = &block_descriptor_3;
    v12 = _Block_copy(&aBlock);

    v22[0] = v9;
    v22[1] = v10;
    v22[2] = v11;
    [v14 addPeriodicTimeObserverForInterval:v22 queue:v13 usingBlock:v12];
    _Block_release(v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
    sub_1AC30AEFC();
    __swift_destroy_boxed_opaque_existential_1(v21);
    swift_unknownObjectRelease();
    *&result = MEMORY[0x1E69E5920](v15).n128_u64[0];
  }

  return result;
}

unint64_t sub_1AC2670EC()
{
  v2 = qword_1EB54C598;
  if (!qword_1EB54C598)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C598);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1AC267190(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3, uint64_t a4, void *a5)
{
  v41 = 0;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v38.value = a1;
  *&v38.timescale = a2;
  v38.epoch = a3;
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v43 = a4 + 16;
  v42 = a5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v41 = Strong;
    time = v38;
    if (CMTimeGetSeconds(&time) >= 4.3)
    {
      [Strong addSubview_];
      v34 = objc_opt_self();
      sub_1AC256554();
      sub_1AC30B18C();
      v33 = v6;
      v19 = [a5 widthAnchor];
      MEMORY[0x1E69E5920](a5);
      MEMORY[0x1E69E5928](Strong);
      sub_1AC309BAC();
      v15 = v7;
      v16 = v8;
      v17 = v9;
      v18 = v10;
      MEMORY[0x1E69E5920](Strong);
      v20 = [v19 0x1FBB28FF1];
      MEMORY[0x1E69E5920](v19);
      *v33 = v20;
      v25 = [a5 heightAnchor];
      MEMORY[0x1E69E5920](a5);
      MEMORY[0x1E69E5928](Strong);
      sub_1AC309BAC();
      v21 = v11;
      v22 = v12;
      v23 = v13;
      v24 = v14;
      MEMORY[0x1E69E5920](Strong);
      v26 = [v25 0x1FBB28FF1];
      MEMORY[0x1E69E5920](v25);
      v33[1] = v26;
      v28 = [a5 0x1FBB23FD2];
      MEMORY[0x1E69E5920](a5);
      v27 = [Strong 0x1FBB23FD2];
      v29 = [v28 0x1FBB28F65];
      MEMORY[0x1E69E5920](v27);
      MEMORY[0x1E69E5920](v28);
      v33[2] = v29;
      v31 = [a5 0x1FBB23FE0];
      MEMORY[0x1E69E5920](a5);
      v30 = [Strong 0x1FBB23FE0];
      v32 = [v31 0x1FBB28F65];
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v31);
      v33[3] = v32;
      sub_1AC206300();
      v35 = sub_1AC30AAFC();

      [v34 activateConstraints_];
      MEMORY[0x1E69E5920](v35);
      MEMORY[0x1E69E5928](Strong);
      v36 = sub_1AC309B9C();
      [v36 disableLooping];
      MEMORY[0x1E69E5920](v36);
    }

    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2677CC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a1 + 32);

  v6(v3, v4, v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AC2678CC()
{
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

void sub_1AC2679A8(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v12 = LODWORD(a6);
  v10 = objc_allocWithZone(v9);
  sub_1AC267A24(v11, v12, *&a7, *&a8, *&a9);
}

id sub_1AC267AD0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleVideoLoopPlayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC267B1C(uint64_t a1)
{
  v4 = [v1 initWithImage_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t type metadata accessor for BobbleVideoLoopPlayer(uint64_t a1)
{
  v2 = qword_1EB54F9E0;
  if (!qword_1EB54F9E0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1AC267BF8()
{
  v2 = qword_1EB54C5A0;
  if (!qword_1EB54C5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C5A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC267C74(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_1AC267D80(uint64_t a1)
{
  v65 = a1;
  v68 = sub_1AC269328;
  v70 = sub_1AC226634;
  v72 = sub_1AC226640;
  v74 = sub_1AC22664C;
  v78 = sub_1AC248080;
  v80 = sub_1AC226634;
  v82 = sub_1AC226640;
  v86 = sub_1AC22664C;
  v88 = sub_1AC215C90;
  v90 = sub_1AC215C90;
  v92 = sub_1AC226658;
  v94 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v99 = sub_1AC226658;
  v120 = 0;
  v117 = 0;
  v53 = 0;
  v58 = 0;
  v64 = sub_1AC309E6C();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v54 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v37 - v54;
  v120 = a1;
  v56 = sub_1AC30915C();
  v2 = sub_1AC30994C();
  v3 = v55;
  v57 = v2;

  v61 = &v119;
  v119 = v57;
  v59 = &v118;
  v118 = 2;
  v60 = type metadata accessor for AAFeatureCapability(v58);
  sub_1AC212BF0();
  v67 = sub_1AC30B1BC();
  v66 = 1;
  v117 = v67 & 1;
  v4 = sub_1AC250850();
  (*(v62 + 16))(v3, v4, v64);
  MEMORY[0x1E69E5928](v65);
  v84 = 7;
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  v76 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = v67 & v66;
  v103 = sub_1AC309E4C();
  v104 = sub_1AC30AD2C();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v91 = swift_allocObject();
  v77 = 4;
  *(v91 + 16) = 4;
  v83 = 32;
  v5 = swift_allocObject();
  v6 = v69;
  v71 = v5;
  *(v5 + 16) = v68;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v71;
  v73 = v7;
  *(v7 + 16) = v70;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v73;
  v75 = v9;
  *(v9 + 16) = v72;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v75;
  v93 = v11;
  *(v11 + 16) = v74;
  *(v11 + 24) = v12;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v77;
  v13 = swift_allocObject();
  v14 = v79;
  v81 = v13;
  *(v13 + 16) = v78;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v81;
  v85 = v15;
  *(v15 + 16) = v80;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v85;
  v87 = v17;
  *(v17 + 16) = v82;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v87;
  v100 = v19;
  *(v19 + 16) = v86;
  *(v19 + 24) = v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v98 = sub_1AC30B18C();
  v101 = v21;

  v22 = v89;
  v23 = v101;
  *v101 = v88;
  v23[1] = v22;

  v24 = v91;
  v25 = v101;
  v101[2] = v90;
  v25[3] = v24;

  v26 = v93;
  v27 = v101;
  v101[4] = v92;
  v27[5] = v26;

  v28 = v95;
  v29 = v101;
  v101[6] = v94;
  v29[7] = v28;

  v30 = v97;
  v31 = v101;
  v101[8] = v96;
  v31[9] = v30;

  v32 = v100;
  v33 = v101;
  v101[10] = v99;
  v33[11] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v103, v104))
  {
    v34 = v53;
    v46 = sub_1AC30AE6C();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v45 = 0;
    v47 = sub_1AC213EE4(0, v44, v44);
    v48 = sub_1AC213EE4(v45, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = &v109;
    v109 = v46;
    v50 = &v108;
    v108 = v47;
    v51 = &v107;
    v107 = v48;
    sub_1AC213F38(0, &v109);
    sub_1AC213F38(2, v49);
    v105 = v88;
    v106 = v89;
    sub_1AC213F4C(&v105, v49, v50, v51);
    v52 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v105 = v90;
      v106 = v91;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v43 = 0;
      v105 = v92;
      v106 = v93;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v42 = 0;
      v105 = v94;
      v106 = v95;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v41 = 0;
      v105 = v96;
      v106 = v97;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v40 = 0;
      v105 = v99;
      v106 = v100;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1AC1C3000, v103, v104, "AboutFitFeature hasContent: %{BOOL}d supported: %{BOOL}d", v46, 0xEu);
      v39 = 0;
      sub_1AC213F98(v47, 0, v44);
      sub_1AC213F98(v48, v39, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E5920](v103);
  (*(v62 + 8))(v55, v64, v35);
  sub_1AC30929C(v111);
  if (v111[3])
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5A8, &qword_1AC312260);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
    }
  }

  else
  {
    sub_1AC204664(v111);
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
  }

  HIDWORD(v37) = v115 != 0;
  sub_1AC204664(&v112);
  LOBYTE(v110) = BYTE4(v37);
  HIBYTE(v110) = v67 & 1;
  return v110;
}

uint64_t sub_1AC268A80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  sub_1AC309AAC();
  sub_1AC205220();
  sub_1AC205220();
  v5 = sub_1AC309D3C();
  v6 = sub_1AC268B58(a1, a2, v5);

  return v6;
}

uint64_t sub_1AC268B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v54 = a2;
  v53 = a3;
  v48 = sub_1AC26A43C;
  v49 = sub_1AC269A50;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "HeadphoneSettingsUI/AboutFitFeature.swift";
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v55 = sub_1AC309AAC();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55);
  v59 = v21 - v58;
  v78 = a1;
  v77 = v4;
  v76 = v5;
  sub_1AC30929C(v69);
  if (v69[3])
  {
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5A8, &qword_1AC312260);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
    }
  }

  else
  {
    sub_1AC204664(v69);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
  }

  if (!v73)
  {
    sub_1AC204664(&v70);
LABEL_13:
    v21[1] = 0;
    sub_1AC215CB0();
    return sub_1AC30B18C();
  }

  sub_1AC2051E4(&v70, &__dst);
  v68 = sub_1AC267D80(v47);
  v66 = HIBYTE(v68);
  v67 = v68;
  v65 = 1;
  v64 = 1;
  if ((sub_1AC30B1AC() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&__dst);
    goto LABEL_13;
  }

  p_dst = &__dst;
  v31 = sub_1AC269330(&__dst);
  v32 = v6;
  v33 = v63;
  v39 = 0;
  memset(v63, 0, sizeof(v63));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B0, &unk_1AC312268);
  v27 = 7;
  v36 = swift_allocObject();
  v25 = v36 + 16;
  MEMORY[0x1E69E5928](v54);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v54);
  v28 = v62;
  sub_1AC241BFC(p_dst, v62);

  v29 = swift_allocObject();
  sub_1AC2051E4(v28, (v29 + 16));
  v7 = v29;
  *(v29 + 56) = v36;
  v34 = v7;
  v8 = sub_1AC20599C();
  v35 = &v12;
  v12 = 0;
  LOBYTE(v13) = v8 & 1;
  v14 = v30;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v48;
  v20 = v34;
  sub_1AC309A9C();

  v37 = sub_1AC309D1C();
  (*(v56 + 8))(v59, v55);
  v38 = sub_1AC309D0C();

  v40 = sub_1AC215CB0();
  v41 = sub_1AC30B18C();
  v42 = v9;
  v44 = sub_1AC309D2C();
  v61 = v44;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  sub_1AC25C2AC();
  sub_1AC30A87C();
  v45 = v60;

  if (v45)
  {
    v24 = v45;
  }

  else
  {
    sub_1AC30B05C(v50, 11, 2, v51, 57, 2, v52, 41, 2, 69, 0);
    __break(1u);
  }

  *v42 = v24;
  sub_1AC206300();
  v22 = v10;
  __swift_destroy_boxed_opaque_existential_1(&__dst);
  return v22;
}

BOOL sub_1AC269240(uint64_t a1)
{
  sub_1AC30929C(v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5A8, &qword_1AC312260);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    sub_1AC204664(v3);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v2 = v7 != 0;
  sub_1AC204664(&v4);
  return v2;
}

uint64_t sub_1AC269330(void *a1)
{
  v18 = a1;
  v39 = 0;
  v16 = 0;
  v36 = sub_1AC30A90C();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v12 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v12 - v12;
  v27 = sub_1AC30A8EC();
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v13 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v29 = &v12 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v12 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v12 - v15;
  v39 = v5;
  v22 = 16;
  sub_1AC30A8DC();
  v30 = 1;
  sub_1AC30A9DC("", v16, 1);
  v17 = v6;
  sub_1AC30A8CC();

  v20 = v18[3];
  v19 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v20);
  (*(*(v19 + 8) + 8))(v20);
  v21 = v7;
  sub_1AC30A8BC();

  sub_1AC30A9DC("_FIT_ENTRY_TITLE", v22, v30 & 1);
  v23 = v8;
  sub_1AC30A8CC();

  (*(v25 + 16))(v24, v28, v27);
  (*(v25 + 32))(v29, v24, v27);
  (*(v25 + 8))(v28, v27);
  sub_1AC30A8FC();
  v31 = sub_1AC30A9DC("B788", 4, v30 & 1);
  v32 = v9;
  v37 = sub_1AC216140(v35, v31, v9, &unk_1F20F5360);
  v38 = v10;

  (*(v33 + 8))(v35, v36);
  return v37;
}

double sub_1AC26969C(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v16 = a2;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v14 = 0;
  v26 = sub_1AC30A90C();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v10 - v13;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8, &qword_1AC312288) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v20 = &v10 - v15;
  v17 = (*(*(type metadata accessor for TipFitView(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v10 - v17;
  v36 = v3;
  v31 = v4 + 16;
  v35 = v4 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5C0, &qword_1AC312290);
  v19 = v34;
  sub_1AC241BFC(v18, v34);
  sub_1AC2A61E4();
  sub_1AC2A8230(v19, v20, v21);
  v22 = sub_1AC309A8C();
  v33 = v22;
  *&v5 = MEMORY[0x1E69E5928](v22).n128_u64[0];
  v30 = [v22 navigationItem];
  *&v6 = MEMORY[0x1E69E5920](v22).n128_u64[0];
  sub_1AC30A9DC("About AirPods Pro Fit", 21, 1, v6);
  sub_1AC30A8AC();
  v27 = sub_1AC215DE8(v25, &unk_1F20F5360);
  v28 = v7;
  (*(v23 + 8))(v25, v26);
  v29 = sub_1AC30A91C();

  [v30 setTitle_];
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v30);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v12 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v8 = MEMORY[0x1E69E5928](v22).n128_u64[0];
    [v12 showController_];
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](v12);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  *&result = MEMORY[0x1E69E5920](v22).n128_u64[0];
  return result;
}

double sub_1AC269A50(void *a1)
{
  sub_1AC30A9DC("aboutEarTipFitSpecifierID", 25, 1);
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC269AD0()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("About Ear Tip Fit Feature", 25, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

void sub_1AC269BA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[5] = a1;
  v5[6] = a2;
  v5[3] = &unk_1F20F5360;
  v5[4] = &off_1F20F52B0;
  v5[0] = sub_1AC269AD0();
  v5[1] = v3;
  sub_1AC29F3A0(v5, a3);
}

uint64_t sub_1AC269C40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v78 = a1;
  v67 = a6;
  v72 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v91 = 0;
  v83 = 0;
  v68 = sub_1AC30A90C();
  v69 = *(v68 - 8);
  v70 = v69;
  MEMORY[0x1EEE9AC00](v68 - 8);
  v71 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5B8, &qword_1AC312288) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v74 = v32 - v73;
  type metadata accessor for TipFitView(v8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v10;
  v103 = a2;
  v102 = v11;
  v100 = v12;
  v101 = v13;
  sub_1AC30929C(v93);
  if (v93[3])
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5A8, &qword_1AC312260);
    if (!swift_dynamicCast())
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
    }
  }

  else
  {
    sub_1AC204664(v93);
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
  }

  if (v97)
  {
    v57 = __dst;
    sub_1AC2051E4(&v94, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5C0, &qword_1AC312290);
    v58 = v92;
    sub_1AC241BFC(v57, v92);
    sub_1AC2A61E4();
    sub_1AC2A8230(v58, v74, v79);
    v60 = sub_1AC309A8C();
    v59 = v60;
    v91 = v60;
    v14 = v60;
    v64 = [v60 navigationItem];

    v89 = v76;
    v90 = v77;
    sub_1AC30A9DC("About AirPods Pro Fit", 21, 1);
    sub_1AC30A8AC();
    v61 = sub_1AC215DE8(v71, &unk_1F20F5360);
    v62 = v15;
    (*(v70 + 8))(v71, v68);
    v63 = sub_1AC30A91C();

    [v64 setTitle_];

    v65 = [v78 userInfo];
    if (v65)
    {
      v56 = v65;
      v55 = v65;
      v54 = v80;
      sub_1AC30AEFC();
      sub_1AC241B1C(v54, &v85);
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0uLL;
      v86 = 0uLL;
    }

    v87[1] = v86;
    v87[0] = v85;
    if (*(&v86 + 1))
    {
      sub_1AC20D5F4();
      if (swift_dynamicCast())
      {
        v53 = v80[4];
      }

      else
      {
        v53 = 0;
      }

      v52 = v53;
    }

    else
    {
      sub_1AC204664(v87);
      v52 = 0;
    }

    v84 = v52;
    if (v52)
    {
      v88 = v84;
    }

    else
    {
      sub_1AC20D5F4();
      v88 = sub_1AC20D658();
      if (v84)
      {
        sub_1AC206988(&v84);
      }
    }

    v44 = v88;
    v83 = v88;
    v16 = sub_1AC30A9DC("host", 4, 1);
    v82 = MEMORY[0x1E69E6158];
    v81[0] = v16;
    v81[1] = v17;
    v18 = v75;
    v36 = v82;
    v40 = v81;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    v34 = *(v36 - 8);
    v35 = v34;
    v38 = v32;
    v19 = MEMORY[0x1EEE9AC00](v32);
    v37 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v19);
    v39 = sub_1AC30B19C();
    (*(v35 + 8))(v37, v36);
    [v44 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v40);
    v45 = 0;
    v42 = sub_1AC2598E4();
    v43 = sub_1AC30B18C();
    v41 = v21;
    v22 = v75;
    v23 = v59;
    *v41 = v75;
    v24 = v23;
    v41[1] = v59;
    sub_1AC206300();
    v46 = v25;

    __swift_destroy_boxed_opaque_existential_1(__dst);
    result = v46;
    v47 = v46;
    v48 = v45;
    v49 = v45;
    v50 = v45;
    v51 = v45;
  }

  else
  {
    sub_1AC204664(&v94);
    v33 = 0;
    v32[1] = sub_1AC2598E4();
    result = sub_1AC30B18C();
    v47 = result;
    v48 = v33;
    v49 = v33;
    v50 = v33;
    v51 = v33;
  }

  v27 = v67;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v31 = v51;
  *v67 = v47;
  v27[1] = v28;
  v27[2] = v29;
  v27[3] = v30;
  v27[4] = v31;
  return result;
}

void sub_1AC26A53C()
{
  v49[5] = 0;
  sub_1AC30B18C();
  v17 = v0;
  v49[3] = type metadata accessor for YodelOcclusionDetectionFeature();
  v49[4] = &off_1F20F2AE8;
  v49[0] = sub_1AC236740();
  sub_1AC29F3A0(v49, v17);
  v48[3] = type metadata accessor for CounterfitDetectionFeature();
  v48[4] = &off_1F20F8128;
  v48[0] = sub_1AC2B095C();
  sub_1AC29F3A0(v48, v17 + 40);
  v15 = sub_1AC207218();
  v47[3] = type metadata accessor for LiveTranslationPlaceCardFeature();
  v47[4] = &off_1F20F97D0;
  v47[0] = v15;
  sub_1AC29F3A0(v47, v17 + 80);
  v46[3] = type metadata accessor for FirmwareSeedingFeature();
  v46[4] = &off_1F20FA548;
  v46[0] = sub_1AC2EDE18();
  sub_1AC29F3A0(v46, v17 + 120);
  v45[3] = type metadata accessor for TempPairingFeature();
  v45[4] = &off_1F20FA730;
  v45[0] = sub_1AC2F7130();
  sub_1AC29F3A0(v45, v17 + 160);
  v44[3] = &unk_1F20FA0B0;
  v44[4] = &off_1F20FA020;
  v44[0] = sub_1AC2E0244();
  v44[1] = v1;
  sub_1AC29F3A0(v44, v17 + 200);
  v43[3] = &unk_1F20F2C30;
  v43[4] = &off_1F20F2B18;
  v43[0] = sub_1AC2373A0();
  v43[1] = v2;
  sub_1AC29F3A0(v43, v17 + 240);
  v42[3] = type metadata accessor for YodelFeature();
  v42[4] = &off_1F20F2AC0;
  v42[0] = sub_1AC23624C();
  sub_1AC29F3A0(v42, v17 + 280);
  v41[3] = &unk_1F20F9F68;
  v41[4] = &off_1F20F9E58;
  v41[0] = sub_1AC2DF418();
  v41[1] = v3;
  sub_1AC29F3A0(v41, v17 + 320);
  v40[3] = &unk_1F20F3D88;
  v40[4] = &off_1F20F3CF8;
  v40[0] = sub_1AC24FC24();
  v40[1] = v4;
  sub_1AC29F3A0(v40, v17 + 360);
  v39[3] = &unk_1F20F1DD8;
  v39[4] = &off_1F20F1D48;
  v39[0] = sub_1AC213D44();
  v39[1] = v5;
  sub_1AC29F3A0(v39, v17 + 400);
  v38[3] = type metadata accessor for AudioFeatureGroup();
  v38[4] = &off_1F20F9890;
  v38[0] = sub_1AC2D29B0();
  sub_1AC29F3A0(v38, v17 + 440);
  v37[3] = &unk_1F20F1948;
  v37[4] = &off_1F20F1830;
  v37[0] = sub_1AC206378();
  v37[1] = v6;
  sub_1AC29F3A0(v37, v17 + 480);
  v36[3] = &unk_1F20F82F0;
  v36[4] = &off_1F20F8260;
  v36[0] = sub_1AC2B47DC();
  v36[1] = v7;
  sub_1AC29F3A0(v36, v17 + 520);
  v16 = sub_1AC207244();
  v35[3] = type metadata accessor for LiveTranslationFeature();
  v35[4] = &off_1F20F9788;
  v35[0] = v16;
  sub_1AC29F3A0(v35, v17 + 560);
  v34[3] = &unk_1F20F74C8;
  v34[4] = &off_1F20F7438;
  v34[0] = sub_1AC299620();
  v34[1] = v8;
  sub_1AC29F3A0(v34, v17 + 600);
  v33[3] = type metadata accessor for SleepDetectionFeature();
  v33[4] = &off_1F20F2628;
  v33[0] = sub_1AC225F9C();
  sub_1AC29F3A0(v33, v17 + 640);
  v32[3] = &unk_1F20F4968;
  v32[4] = &off_1F20F48B8;
  v32[0] = sub_1AC25B2F0();
  v32[1] = v9;
  sub_1AC29F3A0(v32, v17 + 680);
  v30 = &type metadata for BatteryChargingFeature;
  v31 = &off_1F20F4658;
  sub_1AC2589D4(&v29);
  sub_1AC29F3A0(&v29, v17 + 720);
  v28[3] = type metadata accessor for CharginCaseSoundFeature();
  v28[4] = &off_1F20F6C90;
  v28[0] = sub_1AC28EB2C();
  sub_1AC29F3A0(v28, v17 + 760);
  v27[3] = &unk_1F20F33C8;
  v27[4] = &off_1F20F3330;
  v27[0] = sub_1AC246D88();
  v27[1] = v10;
  sub_1AC29F3A0(v27, v17 + 800);
  v26[3] = &unk_1F20F4EE8;
  v26[4] = &off_1F20F4E58;
  v26[0] = sub_1AC264F00();
  v26[1] = v11;
  sub_1AC29F3A0(v26, v17 + 840);
  v25[3] = type metadata accessor for FitFeatureGroup();
  v25[4] = &off_1F20F6E70;
  v25[0] = sub_1AC291544();
  sub_1AC29F3A0(v25, v17 + 880);
  v24[3] = &unk_1F20F9A10;
  v24[4] = &off_1F20F9980;
  v24[0] = sub_1AC2D6938();
  v24[1] = v12;
  sub_1AC29F3A0(v24, v17 + 920);
  v23[3] = &unk_1F20F5818;
  v23[4] = &off_1F20F5788;
  v23[0] = sub_1AC270E44();
  v23[1] = v13;
  sub_1AC29F3A0(v23, v17 + 960);
  v22[3] = type metadata accessor for HeartRateFeature();
  v22[4] = &off_1F20F4890;
  v22[0] = HeartRateFeature.__allocating_init()();
  sub_1AC29F3A0(v22, v17 + 1000);
  v21[3] = type metadata accessor for AboutFeature();
  v21[4] = &off_1F20FA300;
  v21[0] = sub_1AC2E6C54();
  sub_1AC29F3A0(v21, v17 + 1040);
  v20[3] = type metadata accessor for FirmwareUpdateFeature();
  v20[4] = &off_1F20F54A8;
  v20[0] = sub_1AC26C2F4();
  sub_1AC29F3A0(v20, v17 + 1080);
  v19[3] = type metadata accessor for AppleCareCoverageFeature();
  v19[4] = &off_1F20F38B8;
  v19[0] = sub_1AC24D228();
  sub_1AC29F3A0(v19, v17 + 1120);
  v18[3] = &unk_1F20F21D8;
  v18[4] = &off_1F20F2140;
  v18[0] = sub_1AC21E7B4();
  v18[1] = v14;
  sub_1AC29F3A0(v18, v17 + 1160);
  sub_1AC206300();
}

uint64_t sub_1AC26AD30(unsigned int a1)
{
  v13 = a1;
  v24 = 0;
  v14 = sub_1AC30A90C();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v7 - v17;
  v24 = v2;
  if (v2)
  {
    if (v13 == 1)
    {
      v20 = v13;
      sub_1AC30A9DC("Press Once", 10, 1, v1);
      sub_1AC30A8AC();
      v9 = sub_1AC215DE8(v18, &unk_1F20F5428);
      v10 = v4;
      (*(v15 + 8))(v18, v14);
      v22 = v9;
      v23 = v10;
    }

    else
    {
      v21 = v13;
      sub_1AC30A9DC("Press and Hold", 14, 1, v1);
      sub_1AC30A8AC();
      v7 = sub_1AC215DE8(v18, &unk_1F20F5428);
      v8 = v5;
      (*(v15 + 8))(v18, v14);
      v22 = v7;
      v23 = v8;
    }
  }

  else
  {
    v19 = v13;
    sub_1AC30A9DC("Off", 3, 1, v1);
    sub_1AC30A8AC();
    v11 = sub_1AC215DE8(v18, &unk_1F20F5428);
    v12 = v3;
    (*(v15 + 8))(v18, v14);
    v22 = v11;
    v23 = v12;
  }

  return v22;
}

uint64_t sub_1AC26AFF0@<X0>(uint64_t a2@<X8>)
{
  sub_1AC30A77C();
  v5 = MEMORY[0x1E6981E70];
  sub_1AC207B58(v4, MEMORY[0x1E6981E70], v4);
  return sub_1AC207B58(v4, v5, a2);
}

uint64_t sub_1AC26B054(uint64_t a1, char a2)
{
  sub_1AC30915C();
  sub_1AC3098BC();

  type metadata accessor for AARemoteCameraControlConfig(0);
  sub_1AC26B2BC();
  return sub_1AC30B1BC() & 1;
}

unint64_t type metadata accessor for AARemoteCameraControlConfig(uint64_t a1)
{
  v5 = qword_1EB54C5E0;
  if (!qword_1EB54C5E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C5E0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC26B2BC()
{
  v2 = qword_1EB54C5C8;
  if (!qword_1EB54C5C8)
  {
    type metadata accessor for AARemoteCameraControlConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC26B33C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AC30915C();
  sub_1AC3098CC();
}

BOOL sub_1AC26B418(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1AC26B600()
{
  v2 = qword_1EB54C5D0;
  if (!qword_1EB54C5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC26B780()
{
  v2 = qword_1EB54C5D8;
  if (!qword_1EB54C5D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C5D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static FirmwareUpdateFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5E8, &unk_1AC3125B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = v11 != 0;
  v5 = sub_1AC3094EC();
  sub_1AC204664(&v8);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t static FirmwareUpdateFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v22 = a2;
  v27 = sub_1AC26C200;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v31 = 0;
  v20 = sub_1AC30A90C();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v19 = &v12 - v12;
  v36 = sub_1AC309AAC();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v13 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v37 = &v12 - v13;
  v44 = v3;
  v43 = v4;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v14 = MEMORY[0x1E69A2B08];
  v15 = sub_1AC205220();
  v16 = v5;
  sub_1AC205220();
  v38 = sub_1AC309D3C();
  v25 = 1;
  sub_1AC30A9DC("AirPods Beta Updates", 20, 1);
  sub_1AC30A8AC();
  updated = type metadata accessor for FirmwareUpdateFeature();
  v28 = sub_1AC215DE8(v19, updated);
  v29 = v7;
  (*(v17 + 8))(v19, v20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5F0, &qword_1AC3125C8);
  v30 = v41;
  v41[3] = v8;
  v41[0] = v21;
  v26 = sub_1AC2598E4();
  v23 = 7;
  v33 = swift_allocObject();
  MEMORY[0x1E69E5928](v22);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5928](v24);

  v9 = swift_allocObject();
  v10 = v33;
  *(v9 + 16) = v24;
  *(v9 + 24) = v10;
  v32 = v9;
  sub_1AC20599C();
  sub_1AC309A9C();

  v39 = sub_1AC309D1C();
  (*(v34 + 8))(v37, v36);

  v40 = sub_1AC309D2C();

  return v40;
}

double sub_1AC26BED8(uint64_t a1, uint64_t a2)
{
  v14[10] = a1;
  v14[9] = a2 + 16;
  type metadata accessor for FirmwareSeedingController();
  v9 = sub_1AC20D658();
  v14[8] = v9;
  sub_1AC215CB0();
  v10 = sub_1AC20D658();
  v14[7] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5F8, &unk_1AC316280);
  sub_1AC30B18C();
  v12 = v2;
  sub_1AC3095DC();
  *v12 = sub_1AC3095CC();
  v12[1] = v3;
  *&v4 = MEMORY[0x1E69E5928](a1).n128_u64[0];
  v12[2] = a1;
  v12[3] = sub_1AC30A9DC("host", 4, 1, v4);
  v12[4] = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v12[5] = Strong;
  }

  else
  {
    v12[5] = 0;
  }

  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [v10 setUserInfo_];
  swift_unknownObjectRelease();
  [v9 setSpecifier_];
  MEMORY[0x1E69E5920](v10);
  swift_beginAccess();
  v14[0] = swift_unknownObjectWeakLoadStrong();
  if (v14[0])
  {
    v7 = v14[0];
    MEMORY[0x1E69E5928](v14[0]);
    sub_1AC206988(v14);
    swift_endAccess();
    [v7 showController_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    sub_1AC206988(v14);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v10);
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC26C330()
{
  v0 = sub_1AC30A9DC("Firmware Update Feature", 23, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

void FirmwareUpdateFeature.baseFeature.getter(uint64_t a1@<X8>)
{
  v2[5] = 0;
  v2[3] = type metadata accessor for FirmwareUpdateFeature();
  v2[4] = &off_1F20F54A8;
  v2[0] = sub_1AC26C2F4();
  sub_1AC29F3A0(v2, a1);
}

uint64_t FirmwareUpdateFeature.handleDeepLink(_:headphoneDevice:host:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a3;
  v37 = a1;
  v36 = a4;
  v51 = 0;
  v44 = 0;
  v54 = a1;
  v53 = a2;
  v52 = a3;
  type metadata accessor for FirmwareSeedingController();
  v38 = sub_1AC20D658();
  v50 = v38;
  v39 = [v37 userInfo];
  if (v39)
  {
    v34 = v39;
    v33 = v39;
    v32 = v40;
    sub_1AC30AEFC();
    sub_1AC241B1C(v40, &v46);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
  }

  v48[1] = v47;
  v48[0] = v46;
  if (*(&v47 + 1))
  {
    sub_1AC20D5F4();
    if (swift_dynamicCast())
    {
      v31 = v41;
    }

    else
    {
      v31 = 0;
    }

    v30 = v31;
  }

  else
  {
    sub_1AC204664(v48);
    v30 = 0;
  }

  v45 = v30;
  if (v30)
  {
    v49 = v45;
  }

  else
  {
    sub_1AC20D5F4();
    v49 = sub_1AC20D658();
    if (v45)
    {
      sub_1AC206988(&v45);
    }
  }

  v27 = v49;
  v44 = v49;
  v4 = sub_1AC30A9DC("host", 4, 1);
  v43 = MEMORY[0x1E69E6158];
  v42[0] = v4;
  v42[1] = v5;
  v6 = v35;
  v19 = v43;
  v23 = v42;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v17 = *(v19 - 8);
  v18 = v17;
  v21 = &v17;
  v7 = MEMORY[0x1EEE9AC00](&v17);
  v20 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v7);
  v22 = sub_1AC30B19C();
  (*(v18 + 8))(v20, v19);
  [v27 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v29 = 0;
  v25 = sub_1AC2598E4();
  v26 = sub_1AC30B18C();
  v24 = v9;
  v10 = v35;
  v11 = v38;
  *v24 = v35;
  v12 = v11;
  v24[1] = v38;
  sub_1AC206300();
  v28 = v13;

  result = v28;
  v15 = v36;
  v16 = v29;
  *v36 = v28;
  v15[1] = v16;
  v15[2] = v16;
  v15[3] = v16;
  v15[4] = v16;
  return result;
}

uint64_t sub_1AC26CA50(uint64_t a1, uint64_t a2)
{
  sub_1AC30A9DC("YODEL", 5, 1);
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  v3 = sub_1AC20BE88();
  sub_1AC30A9DC("", 0, 1);
  sub_1AC20BEE0();
  v4 = sub_1AC308FBC();

  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1AC26CB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v8 = sub_1AC3091FC();
  v9 = [v8 listeningModeOffAllowed];
  MEMORY[0x1E69E5920](v8);
  v21 = v9;
  v20 = 0;
  type metadata accessor for HMMultiState(0);
  sub_1AC241864();
  v11 = sub_1AC30A89C();
  MEMORY[0x1E69E5928](a1);
  if (v11)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1AC3091FC();
    sub_1AC30964C();
    MEMORY[0x1E69E5920](v6);
    sub_1AC241B7C();
    v7 = sub_1AC30B1BC();
  }

  MEMORY[0x1E69E5920](a1);
  v19 = v7 & 1;
  sub_1AC30929C(v13);
  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C600, &unk_1AC312698);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v13);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v5 = v17 != 0;
  sub_1AC204664(&v14);
  LOBYTE(v12) = v5;
  HIBYTE(v12) = v7 & 1;
  return v12;
}

uint64_t sub_1AC26CE00()
{
  v0 = sub_1AC30A9DC("YODEL_LISTENING_MODE_OFF_SWITCH_TITLE", 37, 1);
  v3 = sub_1AC26CA50(v0, v1);

  return v3;
}

uint64_t sub_1AC26CE6C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v34 = a2;
  v31 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v35 = sub_1AC309AAC();
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v48 = v6;
  v46 = v7;
  v47 = v8;
  sub_1AC30929C(v43);
  if (!v43[3])
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/OffModeHelpers.swift", 40, 2, 37, 0);
    __break(1u);
  }

  v20[1] = __dst;
  sub_1AC2051E4(v43, __dst);
  v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C600, &unk_1AC312698);
  v20[11] = 7;
  v29 = v45;
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v20[3] = MEMORY[0x1E69A2B08];
  v20[4] = sub_1AC205220();
  v20[5] = v9;
  sub_1AC205220();
  v20[7] = sub_1AC309D3C();
  v10 = v31;

  v20[6] = v20;
  v20[10] = 48;
  MEMORY[0x1EEE9AC00](v20);
  v25 = sub_1AC309CDC();

  v22 = sub_1AC26CE00();
  v23 = v11;
  v26 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v12 = v31;
  v20[8] = 24;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  v24 = swift_allocObject();
  v20[9] = v24 + 16;
  v13 = v34;
  swift_unknownObjectWeakInit();

  v14 = v31;

  v15 = swift_allocObject();
  v16 = v32;
  v17 = v33;
  v18 = v24;
  v20[12] = v15;
  v15[2] = v31;
  v15[3] = v18;
  v15[4] = v16;
  v15[5] = v17;
  sub_1AC20599C();
  sub_1AC309A9C();

  v27 = sub_1AC309D1C();
  (*(v37 + 8))(v38, v35);

  v28 = sub_1AC309D0C();

  v30 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v30;
}

uint64_t sub_1AC26D408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v63 = a1;
  v80 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v83 = 0;
  v84 = 0;
  v75 = 0;
  v55 = sub_1AC30A90C();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v59 = v26 - v58;
  v64 = sub_1AC30A8EC();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v68 = v26 - v67;
  v69 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v70 = v26 - v69;
  v71 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v72 = v26 - v71;
  v95 = v10;
  v94 = a2;
  v92 = v11;
  v93 = v12;
  v91 = v13;
  v73 = sub_1AC3091FC();
  v74 = sub_1AC3096BC();
  MEMORY[0x1E69E5920](v73);
  v78 = &v89;
  v89 = v74;
  v76 = &v88;
  v88 = 2;
  v77 = type metadata accessor for HMRegionStatus(v75);
  v79 = sub_1AC270C38();
  v81 = sub_1AC30B1BC();
  v90 = v81 & 1;
  MEMORY[0x1E69E5928](v80);
  if (v81)
  {
    v54 = 1;
  }

  else
  {
    v52 = sub_1AC3091FC();
    v53 = sub_1AC3096DC();
    MEMORY[0x1E69E5920](v52);
    v87 = v53;
    v86 = 2;
    v54 = sub_1AC30B1BC();
  }

  v51 = v54;
  MEMORY[0x1E69E5920](v80);
  v90 = v51 & 1;
  if (v51)
  {
    v45 = v82;
    v82[0] = v60;
    v82[1] = v61;
    sub_1AC30A8DC();
    v44 = 1;
    sub_1AC30A9DC("When this is On, ", 17, 1);
    v40 = v14;
    sub_1AC30A8CC();

    v42 = v62[3];
    v41 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v42);
    (*(*(v41 + 8) + 24))(v42);
    v43 = v15;
    sub_1AC30A8BC();

    sub_1AC30A9DC(" listening modes will include an Off option. Your hearing is not protected when the listening mode is set to Off.", 113, v44 & 1);
    v46 = v16;
    sub_1AC30A8CC();

    (*(v65 + 16))(v70, v72, v64);
    (*(v65 + 32))(v68, v70, v64);
    (*(v65 + 8))(v72, v64);
    sub_1AC30A8FC();
    v47 = sub_1AC215DE8(v59, &unk_1F20F5818);
    v48 = v17;
    (*(v56 + 8))(v59, v55);
    v49 = v47;
    v50 = v48;
  }

  else
  {
    v36 = v85;
    v85[0] = v60;
    v85[1] = v61;
    sub_1AC30A8DC();
    v35 = 1;
    sub_1AC30A9DC("When this is On, ", 17, 1);
    v31 = v18;
    sub_1AC30A8CC();

    v33 = v62[3];
    v32 = v62[4];
    __swift_project_boxed_opaque_existential_1(v62, v33);
    (*(*(v32 + 8) + 24))(v33);
    v34 = v19;
    sub_1AC30A8BC();

    sub_1AC30A9DC(" listening modes will include an Off option. Loud sound levels are not reduced when the listening mode is set to Off.", 117, v35 & 1);
    v37 = v20;
    sub_1AC30A8CC();

    (*(v65 + 16))(v70, v72, v64);
    (*(v65 + 32))(v68, v70, v64);
    (*(v65 + 8))(v72, v64);
    sub_1AC30A8FC();
    v38 = sub_1AC215DE8(v59, &unk_1F20F5818);
    v39 = v21;
    (*(v56 + 8))(v59, v55);
    v49 = v38;
    v50 = v39;
  }

  v30 = v50;
  v83 = v49;
  v84 = v50;
  sub_1AC26CA50(v49, v50);
  v26[0] = v22;
  v29 = sub_1AC30A91C();

  v27 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](v27);
  sub_1AC30A92C();
  v26[1] = v23;
  v28 = sub_1AC30A91C();

  *&v24 = MEMORY[0x1E69E5920](v27).n128_u64[0];
  [v63 setProperty:v29 forKey:{v28, v24}];
  MEMORY[0x1E69E5920](v28);
  swift_unknownObjectRelease();
}

id sub_1AC26DD50(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1AC3091FC();
  [v5 listeningModeOffAllowed];
  MEMORY[0x1E69E5920](v5);
  type metadata accessor for HMMultiState(0);
  sub_1AC241B7C();
  if (sub_1AC30B1BC())
  {
    sub_1AC2068B8();
    return sub_1AC225CE4(1);
  }

  else
  {
    sub_1AC2068B8();
    return sub_1AC225CE4(0);
  }
}

uint64_t sub_1AC26DE58(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = v158;
  v123 = a6;
  v121 = a5;
  v120 = a4;
  v118 = a3;
  v125 = a2;
  v124 = a1;
  v136 = 0;
  memset(v158, 0, sizeof(v158));
  v119 = 0;
  v140 = 0;
  v126 = sub_1AC309E6C();
  v127 = *(v126 - 8);
  v128 = v127;
  v129 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v131 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
  v130 = &v38 - v131;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v38 - v131;
  v9[5] = v8;
  v9[4] = v10;
  v9[3] = a3;
  v133 = v11 + 16;
  v9[2] = v11 + 16;
  *v9 = v12;
  v9[1] = v13;
  v134 = sub_1AC3091FC();
  v135 = sub_1AC30969C();

  v157 = v135;
  v156 = 1;
  v137 = type metadata accessor for HMMultiState(v136);
  sub_1AC241B7C();
  if (sub_1AC30B1BC())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([v124 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v149 = [v124 BOOLValue];
      swift_unknownObjectRelease();
    }

    else
    {
      v149 = 2;
    }

    v116 = v149;
    v117 = &v148;
    v147 = v149;
    v148 = 1;
    if (v149 == 2)
    {
      if (*v117 == 2)
      {
        v115 = 1;
LABEL_11:
        v114 = v115;
        swift_unknownObjectRelease();
        if (v114)
        {
          v111 = v145;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          v112 = Strong;
          swift_endAccess();
          if (Strong)
          {
            v110 = v112;
            v104 = v112;
            v140 = v112;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v16 = [v124 respondsToSelector_];
            if (v16)
            {
              swift_unknownObjectRetain();
              v139 = [v124 BOOLValue];
              swift_unknownObjectRelease();
            }

            else
            {
              v139 = 2;
            }

            v103 = v139;
            if (v139 == 2)
            {
              sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/OffModeHelpers.swift", 40, 2, 76, 0);
              __break(1u);
            }

            else
            {
              v102 = v103;
            }

            v100 = sub_1AC26F284(v118, v104, v102 & 1, v121, v123);
            swift_unknownObjectRelease();
            [v104 presentViewController:v100 animated:1 completion:0];

            return v119;
          }

          else
          {
            v14 = v132;
            v15 = sub_1AC23BA24();
            (*(v128 + 16))(v14, v15, v126);
            v108 = sub_1AC309E4C();
            v105 = v108;
            v107 = sub_1AC30AD1C();
            v106 = v107;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
            v109 = sub_1AC30B18C();
            if (os_log_type_enabled(v108, v107))
            {
              v17 = v119;
              v91 = sub_1AC30AE6C();
              v87 = v91;
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
              v89 = 0;
              v92 = sub_1AC213EE4(0, v88, v88);
              v90 = v92;
              v93 = sub_1AC213EE4(v89, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
              v144 = v91;
              v143 = v92;
              v142 = v93;
              v94 = 0;
              v95 = &v144;
              sub_1AC213F38(0, &v144);
              sub_1AC213F38(v94, v95);
              v141 = v109;
              v96 = &v38;
              MEMORY[0x1EEE9AC00](&v38);
              v97 = &v38 - 6;
              v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
              sub_1AC218014();
              sub_1AC30AAAC();
              v99 = v17;
              if (v17)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&dword_1AC1C3000, v105, v106, "Invalid HeadphoneSettingsController", v87, 2u);
                v85 = 0;
                sub_1AC213F98(v90, 0, v88);
                sub_1AC213F98(v93, v85, MEMORY[0x1E69E7CA0] + 8);
                sub_1AC30AE4C();

                v86 = v99;
              }
            }

            else
            {

              v86 = v119;
            }

            v84 = v86;

            (*(v128 + 8))(v132, v126);
            return v84;
          }
        }

        else
        {
          v83 = sub_1AC3091FC();
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = [v124 respondsToSelector_];
          if (v18)
          {
            swift_unknownObjectRetain();
            v146 = [v124 BOOLValue];
            swift_unknownObjectRelease();
          }

          else
          {
            v146 = 2;
          }

          v82 = v146;
          if (v146 == 2)
          {
            sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/OffModeHelpers.swift", 40, 2, 68, 0);
            __break(1u);
          }

          else
          {
            v81 = v82;
          }

          v80 = v81;
          swift_unknownObjectRelease();
          if (v80)
          {
            v79 = 1;
          }

          else
          {
            v79 = 2;
          }

          [v83 setListeningModeOffAllowed_];

          return v119;
        }
      }
    }

    else
    {
      v138 = v116;
      if (*v117 != 2)
      {
        v115 = v138 ^ *v117 ^ 1;
        goto LABEL_11;
      }
    }

    v115 = 0;
    goto LABEL_11;
  }

  v78 = sub_1AC3091FC();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([v124 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v155 = [v124 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v155 = 2;
  }

  v77 = v155;
  if (v155 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/OffModeHelpers.swift", 40, 2, 60, 0);
    __break(1u);
  }

  else
  {
    v76 = v77;
  }

  v75 = v76;
  swift_unknownObjectRelease();
  if (v75)
  {
    v74 = 1;
  }

  else
  {
    v74 = 2;
  }

  v19 = v130;
  [v78 setListeningModeOffAllowed_];

  v20 = sub_1AC23BA24();
  (*(v128 + 16))(v19, v20, v126);
  v21 = v118;
  v62 = 7;
  v63 = swift_allocObject();
  *(v63 + 16) = v118;
  v73 = sub_1AC309E4C();
  v55 = v73;
  v72 = sub_1AC30AD2C();
  v56 = v72;
  v57 = 17;
  v66 = swift_allocObject();
  v58 = v66;
  v59 = 32;
  *(v66 + 16) = 32;
  v22 = swift_allocObject();
  v23 = v59;
  v67 = v22;
  v60 = v22;
  *(v22 + 16) = 8;
  v61 = v23;
  v24 = swift_allocObject();
  v25 = v63;
  v64 = v24;
  *(v24 + 16) = sub_1AC271118;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v64;
  v70 = v26;
  v65 = v26;
  *(v26 + 16) = sub_1AC215C98;
  *(v26 + 24) = v27;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v68 = sub_1AC30B18C();
  v69 = v28;

  v29 = v66;
  v30 = v69;
  *v69 = sub_1AC215C90;
  v30[1] = v29;

  v31 = v67;
  v32 = v69;
  v69[2] = sub_1AC215C90;
  v32[3] = v31;

  v33 = v69;
  v34 = v70;
  v69[4] = sub_1AC215CA4;
  v33[5] = v34;
  sub_1AC206300();

  if (os_log_type_enabled(v73, v72))
  {
    v35 = v119;
    v48 = sub_1AC30AE6C();
    v45 = v48;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v49 = sub_1AC213EE4(0, v46, v46);
    v47 = v49;
    v51 = 1;
    v50 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v154 = v48;
    v153 = v49;
    v152 = v50;
    v52 = &v154;
    sub_1AC213F38(2, &v154);
    sub_1AC213F38(v51, v52);
    v150 = sub_1AC215C90;
    v151 = v58;
    sub_1AC213F4C(&v150, v52, &v153, &v152);
    v53 = v35;
    v54 = v35;
    if (v35)
    {
      v43 = 0;

      __break(1u);
    }

    else
    {
      v150 = sub_1AC215C90;
      v151 = v60;
      sub_1AC213F4C(&v150, &v154, &v153, &v152);
      v41 = 0;
      v42 = 0;
      v150 = sub_1AC215CA4;
      v151 = v65;
      sub_1AC213F4C(&v150, &v154, &v153, &v152);
      v39 = 0;
      v40 = 0;
      _os_log_impl(&dword_1AC1C3000, v55, v56, "Hearing Protection Capability not supported! %s", v45, 0xCu);
      sub_1AC213F98(v47, 0, v46);
      sub_1AC213F98(v50, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v44 = v39;
    }
  }

  else
  {
    v36 = v119;

    v44 = v36;
  }

  v38 = v44;

  (*(v128 + 8))(v130, v126);
  return v38;
}

uint64_t sub_1AC26F194(void *a1)
{
  v5 = [a1 description];
  v7 = sub_1AC30A92C();
  v8 = v1;
  *&v2 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  v9 = v7;
  v10 = v8;
  if (v8)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_1AC30A9DC("no device!", 10, 1, v2);
    v12 = v3;
  }

  MEMORY[0x1E69E5920](v5);
  return v11;
}

id sub_1AC26F284(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v233 = a1;
  v269 = a2;
  v266 = a3;
  v267 = a4;
  v268 = a5;
  v234 = sub_1AC257A18;
  v235 = sub_1AC215C98;
  v236 = sub_1AC270D10;
  v237 = sub_1AC270F58;
  v238 = sub_1AC215C90;
  v239 = sub_1AC215C90;
  v240 = sub_1AC215CA4;
  v241 = sub_1AC215C90;
  v242 = sub_1AC215C90;
  v243 = sub_1AC270F64;
  v244 = sub_1AC271050;
  v245 = sub_1AC271060;
  v246 = sub_1AC271060;
  v247 = "Fatal error";
  v248 = "Unexpectedly found nil while unwrapping an Optional value";
  v249 = "HeadphoneSettingsUI/OffModeHelpers.swift";
  v307 = 0;
  v306 = 0;
  v305 = 0;
  v303 = 0;
  v304 = 0;
  v297 = 0;
  v294 = 0;
  v292 = 0;
  v293 = 0;
  v284 = 0;
  v250 = 0;
  v256 = 0;
  v251 = sub_1AC30A90C();
  v252 = *(v251 - 8);
  v253 = v251 - 8;
  v254 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v255 = &v107 - v254;
  v257 = sub_1AC30A8EC();
  v258 = *(v257 - 8);
  v259 = v257 - 8;
  v260 = (*(v258 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v256);
  v261 = &v107 - v260;
  v262 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v263 = &v107 - v262;
  v264 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v265 = &v107 - v264;
  v270 = sub_1AC309E6C();
  v271 = *(v270 - 8);
  v272 = v270 - 8;
  v273 = (*(v271 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v270);
  v274 = &v107 - v273;
  v307 = a1;
  v306 = v10;
  v305 = v11 & 1;
  v303 = v12;
  v304 = v13;
  sub_1AC30929C(v298);
  if (!v298[3])
  {
    sub_1AC30B05C(v247, 11, 2, v248, 57, 2, v249, 40, 2, 114, 0);
    __break(1u);
  }

  v222 = __dst;
  sub_1AC2051E4(v298, __dst);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C600, &unk_1AC312698);
  swift_dynamicCast();
  v224 = sub_1AC3091FC();
  v225 = sub_1AC30963C();
  v231 = 1;
  v297 = v225 & 1;
  MEMORY[0x1E69E5920](v224);
  v226 = sub_1AC3091FC();
  v227 = sub_1AC3096BC();
  MEMORY[0x1E69E5920](v226);
  v230 = &v296;
  v296 = v227;
  v228 = &v295;
  v295 = 2;
  v229 = type metadata accessor for HMRegionStatus(0);
  sub_1AC270C38();
  v232 = sub_1AC30B1BC();
  v294 = v232 & 1 & v231;
  if (v232)
  {
    v220 = sub_1AC30A9DC("", 0, 1);
  }

  else
  {
    v220 = sub_1AC30A9DC("LSR_", 4, 1);
  }

  v221 = v14;
  v15 = v274;
  v201 = v14;
  v200 = v220;
  v292 = v220;
  v293 = v14;
  v16 = sub_1AC23BA24();
  (*(v271 + 16))(v15, v16, v270);

  v205 = 32;
  v206 = 7;
  v17 = swift_allocObject();
  v18 = v201;
  v19 = v17;
  v20 = v233;
  v202 = v19;
  *(v19 + 16) = v200;
  *(v19 + 24) = v18;
  MEMORY[0x1E69E5928](v20);
  v207 = swift_allocObject();
  *(v207 + 16) = v233;
  v218 = sub_1AC309E4C();
  v219 = sub_1AC30AD0C();
  v204 = 17;
  v209 = swift_allocObject();
  *(v209 + 16) = 32;
  v210 = swift_allocObject();
  *(v210 + 16) = 8;
  v21 = swift_allocObject();
  v22 = v202;
  v203 = v21;
  *(v21 + 16) = v234;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v203;
  v211 = v23;
  *(v23 + 16) = v235;
  *(v23 + 24) = v24;
  v212 = swift_allocObject();
  *(v212 + 16) = 0;
  v213 = swift_allocObject();
  *(v213 + 16) = 1;
  v25 = swift_allocObject();
  v26 = v207;
  v208 = v25;
  *(v25 + 16) = v236;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v208;
  v215 = v27;
  *(v27 + 16) = v237;
  *(v27 + 24) = v28;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v214 = sub_1AC30B18C();
  v216 = v29;

  v30 = v209;
  v31 = v216;
  *v216 = v238;
  v31[1] = v30;

  v32 = v210;
  v33 = v216;
  v216[2] = v239;
  v33[3] = v32;

  v34 = v211;
  v35 = v216;
  v216[4] = v240;
  v35[5] = v34;

  v36 = v212;
  v37 = v216;
  v216[6] = v241;
  v37[7] = v36;

  v38 = v213;
  v39 = v216;
  v216[8] = v242;
  v39[9] = v38;

  v40 = v215;
  v41 = v216;
  v216[10] = v243;
  v41[11] = v40;
  sub_1AC206300();

  if (os_log_type_enabled(v218, v219))
  {
    v42 = v250;
    v192 = sub_1AC30AE6C();
    v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v193 = sub_1AC213EE4(0, v191, v191);
    v194 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v196 = &v279;
    v279 = v192;
    v197 = &v278;
    v278 = v193;
    v198 = &v277;
    v277 = v194;
    v195 = 2;
    sub_1AC213F38(2, &v279);
    sub_1AC213F38(v195, v196);
    v275 = v238;
    v276 = v209;
    sub_1AC213F4C(&v275, v196, v197, v198);
    v199 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v275 = v239;
      v276 = v210;
      sub_1AC213F4C(&v275, &v279, &v278, &v277);
      v190 = 0;
      v275 = v240;
      v276 = v211;
      sub_1AC213F4C(&v275, &v279, &v278, &v277);
      v189 = 0;
      v275 = v241;
      v276 = v212;
      sub_1AC213F4C(&v275, &v279, &v278, &v277);
      v188 = 0;
      v275 = v242;
      v276 = v213;
      sub_1AC213F4C(&v275, &v279, &v278, &v277);
      v187 = 0;
      v275 = v243;
      v276 = v215;
      sub_1AC213F4C(&v275, &v279, &v278, &v277);
      _os_log_impl(&dword_1AC1C3000, v218, v219, "OffModeAlert: Prefix is %s %hhu!", v192, 0xFu);
      sub_1AC213F98(v193, 0, v191);
      sub_1AC213F98(v194, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v43 = MEMORY[0x1E69E5920](v218);
  (*(v271 + 8))(v274, v270, v43);
  v185 = "";
  v186 = 0;
  v184 = 1;
  v288 = sub_1AC30A9DC("");
  v289 = v44;
  v290 = sub_1AC30A9DC(v185, v186, v184 & 1);
  v291 = v45;
  if (v225)
  {
    v173 = 1;
    v46 = sub_1AC30A9DC("OFF_MODE_TITLE", 14, 1);
    v167 = v47;
    v178 = sub_1AC20BD0C(v46, v47);
    v179 = v48;

    v288 = v178;
    v289 = v179;

    v174 = v280;
    v280[0] = v267;
    v280[1] = v268;
    v172 = 63;
    sub_1AC30A8DC();
    sub_1AC30A9DC("", 0, v173 & 1);
    v168 = v49;
    sub_1AC30A8CC();

    v170 = v301;
    v169 = v302;
    __swift_project_boxed_opaque_existential_1(v300, v301);
    (*(*(v169 + 8) + 8))(v170);
    v171 = v50;
    sub_1AC30A8BC();

    sub_1AC30A9DC(" cannot protect your hearing when listening mode is set to Off.", v172, v173 & 1);
    v175 = v51;
    sub_1AC30A8CC();

    (*(v258 + 16))(v263, v265, v257);
    (*(v258 + 32))(v261, v263, v257);
    (*(v258 + 8))(v265, v257);
    sub_1AC30A8FC();
    v176 = sub_1AC215DE8(v255, &unk_1F20F5818);
    v177 = v52;
    (*(v252 + 8))(v255, v251);

    v290 = v176;
    v291 = v177;

    v180 = v176;
    v181 = v177;
    v182 = v178;
    v183 = v179;
  }

  else if (v232)
  {
    v149 = 31;
    v155 = 1;
    v53 = sub_1AC30B17C();
    v151 = &v282;
    v282 = v53;
    v283 = v54;
    v160 = 1;
    v55 = sub_1AC30A9DC("", 0, 1);
    v148 = v56;
    MEMORY[0x1AC5B07E0](v55);

    v281[2] = v200;
    v281[3] = v201;
    sub_1AC30B15C();
    v57 = sub_1AC30A9DC("YODEL_TUTORIAL_BUD_ALERT_HEADER", v149, v160 & 1);
    v150 = v58;
    MEMORY[0x1AC5B07E0](v57);

    v153 = v282;
    v152 = v283;

    sub_1AC2063F0(v151);
    v59 = sub_1AC30A9BC();
    v154 = v60;
    v165 = sub_1AC26CA50(v59, v60);
    v166 = v61;

    v288 = v165;
    v289 = v166;

    v161 = v281;
    v281[0] = v267;
    v281[1] = v268;
    sub_1AC30A8DC();
    sub_1AC30A9DC("To use ", 7, v160 & 1);
    v156 = v62;
    sub_1AC30A8CC();

    v158 = v301;
    v157 = v302;
    __swift_project_boxed_opaque_existential_1(v300, v301);
    (*(*(v157 + 8) + 24))(v158);
    v159 = v63;
    sub_1AC30A8BC();

    sub_1AC30A9DC(" to protect your hearing, set the listening mode to Noise Cancellation, Adaptive, or Transparency.", 98, v160 & 1);
    v162 = v64;
    sub_1AC30A8CC();

    (*(v258 + 16))(v263, v265, v257);
    (*(v258 + 32))(v261, v263, v257);
    (*(v258 + 8))(v265, v257);
    sub_1AC30A8FC();
    v163 = sub_1AC215DE8(v255, &unk_1F20F5818);
    v164 = v65;
    (*(v252 + 8))(v255, v251);

    v290 = v163;
    v291 = v164;

    v180 = v163;
    v181 = v164;
    v182 = v165;
    v183 = v166;
  }

  else
  {
    v130 = 31;
    v136 = 1;
    v66 = sub_1AC30B17C();
    v132 = &v286;
    v286 = v66;
    v287 = v67;
    v141 = 1;
    v68 = sub_1AC30A9DC("", 0, 1);
    v129 = v69;
    MEMORY[0x1AC5B07E0](v68);

    v285[2] = v200;
    v285[3] = v201;
    sub_1AC30B15C();
    v70 = sub_1AC30A9DC("YODEL_TUTORIAL_BUD_ALERT_HEADER", v130, v141 & 1);
    v131 = v71;
    MEMORY[0x1AC5B07E0](v70);

    v134 = v286;
    v133 = v287;

    sub_1AC2063F0(v132);
    v72 = sub_1AC30A9BC();
    v135 = v73;
    v146 = sub_1AC26CA50(v72, v73);
    v147 = v74;

    v288 = v146;
    v289 = v147;

    v142 = v285;
    v285[0] = v267;
    v285[1] = v268;
    sub_1AC30A8DC();
    sub_1AC30A9DC("To help reduce your exposure to loud sounds, set your ", 54, v141 & 1);
    v137 = v75;
    sub_1AC30A8CC();

    v139 = v301;
    v138 = v302;
    __swift_project_boxed_opaque_existential_1(v300, v301);
    (*(*(v138 + 8) + 8))(v139);
    v140 = v76;
    sub_1AC30A8BC();

    sub_1AC30A9DC(" listening mode to Noise Cancellation, Adaptive, or Transparency.", 65, v141 & 1);
    v143 = v77;
    sub_1AC30A8CC();

    (*(v258 + 16))(v263, v265, v257);
    (*(v258 + 32))(v261, v263, v257);
    (*(v258 + 8))(v265, v257);
    sub_1AC30A8FC();
    v144 = sub_1AC215DE8(v255, &unk_1F20F5818);
    v145 = v78;
    (*(v252 + 8))(v255, v251);

    v290 = v144;
    v291 = v145;

    v180 = v144;
    v181 = v145;
    v182 = v146;
    v183 = v147;
  }

  v126 = v183;
  v127 = v182;
  v125 = v181;
  v124 = v180;
  sub_1AC21E88C();
  v128 = sub_1AC21CFE0(v127, v126, v124, v125, 1);
  v284 = v128;
  if (v225)
  {
    sub_1AC21E8F0();
    v79 = sub_1AC30A9DC("YODEL_TUTORIAL_BUD_ALERT_OK", 27, 1);
    v120 = v80;
    v122 = sub_1AC26CA50(v79, v80);
    v121 = v81;

    MEMORY[0x1E69E5928](v269);
    v82 = swift_allocObject();
    v83 = v121;
    v84 = v246;
    v85 = v82;
    v86 = v122;
    *(v85 + 16) = v269;
    v123 = sub_1AC21E3FC(v86, v83, 1, v84, v85);
    [v128 addAction_];
    MEMORY[0x1E69E5920](v123);
  }

  else
  {
    v109 = 0;
    v111 = sub_1AC21E8F0();
    v113 = 1;
    v87 = sub_1AC30A9DC("YODEL_TUTORIAL_BUD_ALERT_OK", 27, 1);
    v107 = v88;
    v110 = sub_1AC26CA50(v87, v88);
    v108 = v89;

    MEMORY[0x1E69E5928](v233);
    v115 = 7;
    v90 = swift_allocObject();
    v91 = v266;
    v92 = v108;
    v93 = v109;
    v94 = v244;
    v95 = v90;
    v96 = v110;
    *(v95 + 16) = v233;
    *(v95 + 24) = v91;
    v112 = sub_1AC21E3FC(v96, v92, v93, v94, v95);
    v118 = 0x1FAE81000uLL;
    [v128 0x1FAE81FF8];
    *&v97 = MEMORY[0x1E69E5920](v112).n128_u64[0];
    v98 = sub_1AC30A9DC("YODEL_TUTORIAL_BUD_ALERT_DECLINE", 32, v113 & 1, v97);
    v114 = v99;
    v117 = sub_1AC26CA50(v98, v99);
    v116 = v100;

    MEMORY[0x1E69E5928](v269);
    v101 = swift_allocObject();
    v102 = v116;
    v103 = v245;
    v104 = v101;
    v105 = v117;
    *(v104 + 16) = v269;
    v119 = sub_1AC21E3FC(v105, v102, 1, v103, v104);
    [v128 (v118 + 4088)];
    MEMORY[0x1E69E5920](v119);
  }

  sub_1AC271068(&v288);

  __swift_destroy_boxed_opaque_existential_1(v300);
  return v128;
}

double sub_1AC270A90(void *a1)
{
  v4 = sub_1AC30AB8C();
  v2 = *MEMORY[0x1E69C58C8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58C8]);
  sub_1AC30A92C();
  v3 = sub_1AC30A91C();

  [a1 setProperty:v4 forKey:{v3, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();
  sub_1AC30A9DC("turnOffListeningModeSpecifier", 29, 1);
  v6 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

unint64_t type metadata accessor for HMRegionStatus(uint64_t a1)
{
  v5 = qword_1EB54C618;
  if (!qword_1EB54C618)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C618);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC270C38()
{
  v2 = qword_1EB54C608;
  if (!qword_1EB54C608)
  {
    type metadata accessor for HMRegionStatus(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C608);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC270CB8(__n128 a1)
{
  v2 = sub_1AC3091FC();
  v3 = sub_1AC3096BC();
  MEMORY[0x1E69E5920](v2);
  return sub_1AC20BC98(v3);
}

double sub_1AC270D18(uint64_t a1, void *a2)
{
  sub_1AC30A9DC("turnOffListeningModeSpecifier", 29, 1);
  v4 = sub_1AC30A91C();

  [a2 reloadSpecifierID_];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC270DA0(__n128 a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1AC3091FC();
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [v7 setListeningModeOffAllowed_];
  *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  return result;
}

uint64_t sub_1AC270E44()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("ListeningModeOffFeature Feature", 31, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

uint64_t sub_1AC270F1C@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1AC270F64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1AC270FD8();
  v5 = MEMORY[0x1E69E7508];

  return sub_1AC226230(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1AC270FD8()
{
  v2 = qword_1EB54C610;
  if (!qword_1EB54C610)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C610);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC27116C()
{
  v2 = qword_1EB54C620;
  if (!qword_1EB54C620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C620);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC271204()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC27126C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC271360()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_mapingUseCase);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2713C4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_mapingUseCase);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id BobbleMappingSelectionController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

_BYTE *BobbleMappingSelectionController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_viewModel = 0;
  v13[OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_mapingUseCase] = 2;
  *&v13[OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v13;
  v9.super_class = type metadata accessor for BobbleMappingSelectionController();
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

void sub_1AC2717E8()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_viewModel = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController_mapingUseCase = 2;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

uint64_t sub_1AC271900()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC2719F4(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2719F4(uint64_t a1)
{
  v26 = a1;
  v39 = 0;
  v22 = sub_1AC271DF0;
  v38 = sub_1AC271EC8;
  v45 = 0;
  v31 = 0;
  v33 = sub_1AC309AAC();
  v19 = *(v33 - 8);
  v20 = v33 - 8;
  v11 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v36 = &v10 - v11;
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v12 = MEMORY[0x1E69A2B08];
  v13 = sub_1AC205220();
  v14 = v2;
  sub_1AC205220();
  v21 = sub_1AC309D3C();
  v27 = 1;
  v3 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_UP_DOWN", 30, 1);
  v15 = v4;
  v16 = sub_1AC274FA8(v3, v4);
  v17 = v5;

  MEMORY[0x1E69E5928](v26);
  v25 = type metadata accessor for BobbleMappingSelectionController();
  v18 = v44;
  v44[3] = v25;
  v44[0] = v26;
  sub_1AC20599C();
  v32 = 3;
  sub_1AC309A9C();
  v23 = sub_1AC309CEC();
  v35 = *(v19 + 8);
  v34 = v19 + 8;
  v35(v36, v33);

  v37 = sub_1AC309D0C();

  v6 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_SIDE_TO_SIDE", 35, v27 & 1);
  v24 = v7;
  v28 = sub_1AC274FA8(v6, v7);
  v29 = v8;

  MEMORY[0x1E69E5928](v26);
  v30 = v43;
  v43[3] = v25;
  v43[0] = v26;
  sub_1AC20599C();
  sub_1AC309A9C();
  v40 = sub_1AC309CEC();
  v35(v36, v33);

  v41 = sub_1AC309D0C();

  v42 = sub_1AC309D2C();

  return v42;
}

uint64_t sub_1AC271DF0(void *a1)
{
  sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_UP_DOWN", 30, 1);
  v5 = sub_1AC30A91C();

  v2 = *MEMORY[0x1E69C5918];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5918]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC271EC8(void *a1)
{
  v1 = sub_1AC30A9DC("BOBBLE_GESTURE_MAPPING_SIDE_TO_SIDE", 35, 1);
  sub_1AC274FA8(v1, v2);
  v7 = sub_1AC30A91C();

  v4 = *MEMORY[0x1E69C5918];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5918]);
  sub_1AC30A92C();
  v6 = sub_1AC30A91C();

  [a1 setProperty:v7 forKey:{v6, MEMORY[0x1E69E5920](v4).n128_f64[0]}];
  MEMORY[0x1E69E5920](v6);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC271FB0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC272030(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC271900();
  return sub_1AC27208C;
}

void sub_1AC27208C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC271FB0(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC271FB0(*a1);
  }
}

uint64_t sub_1AC2720F8()
{
  v116 = v144;
  v117 = sub_1AC20A6B4;
  v118 = sub_1AC2559F4;
  v119 = sub_1AC215C98;
  v120 = sub_1AC27300C;
  v121 = sub_1AC2572B0;
  v122 = sub_1AC215C90;
  v123 = sub_1AC215C90;
  v124 = sub_1AC215CA4;
  v125 = sub_1AC215C90;
  v126 = sub_1AC215C90;
  v127 = sub_1AC2572BC;
  v128 = "Fatal error";
  v129 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v130 = "HeadphoneSettingsUI/BobbleGestureMappingController.swift";
  v158 = 0;
  v157 = 0;
  v131 = 0;
  v149 = 0;
  v146 = 0;
  v143 = 0;
  v133 = sub_1AC309E6C();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v132);
  v137 = v36 - v136;
  v158 = v1;
  v138 = [v1 specifier];
  if (v138)
  {
    v115 = v138;
  }

  else
  {
    sub_1AC30B05C(v128, 11, 2, v129, 68, 2, v130, 56, 2, 56, 0);
    __break(1u);
  }

  v113 = v115;
  v114 = [v115 userInfo];
  if (v114)
  {
    v112 = v114;
    v111 = v114;
    v110 = v139;
    sub_1AC30AEFC();
    sub_1AC241B1C(v110, v155);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v155, 0, sizeof(v155));
  }

  v2 = v113;
  v3 = v116;
  v116[14] = v116[12];
  v3[15] = v3[13];
  MEMORY[0x1E69E5920](v2);
  if (v156[3])
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v109 = v139[4];
    }

    else
    {
      v109 = 0;
    }

    v108 = v109;
  }

  else
  {
    sub_1AC204664(v156);
    v108 = 0;
  }

  v107 = v108;
  if (!v108)
  {
    goto LABEL_42;
  }

  v106 = v107;
  v103 = v107;
  v149 = v107;
  sub_1AC30A9DC("viewModel", 9, 1);
  v102 = v4;
  v104 = sub_1AC30A91C();

  v105 = [v103 objectForKey_];
  swift_unknownObjectRelease();
  if (v105)
  {
    v101 = v105;
    v100 = v105;
    v99 = v140;
    sub_1AC30AEFC();
    sub_1AC241B1C(v99, v147);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v147, 0, sizeof(v147));
  }

  v5 = v116;
  v116[7] = v116[5];
  v5[8] = v5[6];
  if (v148[3])
  {
    type metadata accessor for BobbleSettingsViewModel();
    if (swift_dynamicCast())
    {
      v98 = v140[4];
    }

    else
    {
      v98 = 0;
    }

    v97 = v98;
  }

  else
  {
    sub_1AC204664(v148);
    v97 = 0;
  }

  v96 = v97;
  if (!v97)
  {
    MEMORY[0x1E69E5920](v103);
LABEL_42:
    v46 = 0;
    v47 = sub_1AC215CB0();
    v48 = sub_1AC30B18C();

    v157 = v48;
    v51 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v49 = v14;
    v50 = sub_1AC30A91C();

    [v132 setValue:v51 forKey:v50];
    MEMORY[0x1E69E5920](v50);
    swift_unknownObjectRelease();
    sub_1AC309E2C();
    v67 = sub_1AC309E4C();
    v68 = sub_1AC30AD1C();
    v53 = 17;
    v56 = 7;
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    v54 = 8;
    *(v59 + 16) = 8;
    v55 = 32;
    v15 = swift_allocObject();
    v52 = v15;
    *(v15 + 16) = v118;
    *(v15 + 24) = 0;
    v16 = swift_allocObject();
    v17 = v52;
    v60 = v16;
    *(v16 + 16) = v119;
    *(v16 + 24) = v17;
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v54;
    v18 = swift_allocObject();
    v57 = v18;
    *(v18 + 16) = v120;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v57;
    v64 = v19;
    *(v19 + 16) = v121;
    *(v19 + 24) = v20;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v63 = sub_1AC30B18C();
    v65 = v21;

    v22 = v58;
    v23 = v65;
    *v65 = v122;
    v23[1] = v22;

    v24 = v59;
    v25 = v65;
    v65[2] = v123;
    v25[3] = v24;

    v26 = v60;
    v27 = v65;
    v65[4] = v124;
    v27[5] = v26;

    v28 = v61;
    v29 = v65;
    v65[6] = v125;
    v29[7] = v28;

    v30 = v62;
    v31 = v65;
    v65[8] = v126;
    v31[9] = v30;

    v32 = v64;
    v33 = v65;
    v65[10] = v127;
    v33[11] = v32;
    sub_1AC206300();

    if (os_log_type_enabled(v67, v68))
    {
      v34 = v131;
      v38 = sub_1AC30AE6C();
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v39 = sub_1AC213EE4(0, v37, v37);
      v40 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v42 = &v154;
      v154 = v38;
      v43 = &v153;
      v153 = v39;
      v44 = &v152;
      v152 = v40;
      v41 = 2;
      sub_1AC213F38(2, &v154);
      sub_1AC213F38(v41, v42);
      v150 = v122;
      v151 = v58;
      sub_1AC213F4C(&v150, v42, v43, v44);
      v45 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v150 = v123;
        v151 = v59;
        sub_1AC213F4C(&v150, &v154, &v153, &v152);
        v36[3] = 0;
        v150 = v124;
        v151 = v60;
        sub_1AC213F4C(&v150, &v154, &v153, &v152);
        v36[2] = 0;
        v150 = v125;
        v151 = v61;
        sub_1AC213F4C(&v150, &v154, &v153, &v152);
        v36[1] = 0;
        v150 = v126;
        v151 = v62;
        sub_1AC213F4C(&v150, &v154, &v153, &v152);
        v36[0] = 0;
        v150 = v127;
        v151 = v64;
        sub_1AC213F4C(&v150, &v154, &v153, &v152);
        _os_log_impl(&dword_1AC1C3000, v67, v68, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v38, 0x16u);
        sub_1AC213F98(v39, 0, v37);
        sub_1AC213F98(v40, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v35 = MEMORY[0x1E69E5920](v67);
    (*(v134 + 8))(v137, v133, v35);
    sub_1AC209190(&v157);
    return 0;
  }

  v95 = v96;
  v91 = v96;
  v146 = v96;
  sub_1AC30A9DC("usecase", 7, 1);
  v92 = v6;
  v93 = sub_1AC30A91C();

  v94 = [v103 objectForKey_];
  swift_unknownObjectRelease();
  if (v94)
  {
    v90 = v94;
    v89 = v94;
    v88 = v141;
    sub_1AC30AEFC();
    sub_1AC241B1C(v88, v144);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v144, 0, sizeof(v144));
  }

  v7 = v116;
  v116[2] = *v116;
  v7[3] = v7[1];
  if (v145[3])
  {
    if (swift_dynamicCast())
    {
      v87 = v141[39];
    }

    else
    {
      v87 = 3;
    }

    v86 = v87;
  }

  else
  {
    sub_1AC204664(v145);
    v86 = 3;
  }

  v85 = v86;
  if (v86 == 3)
  {

    MEMORY[0x1E69E5920](v103);
    goto LABEL_42;
  }

  v84 = v85;
  v8 = v131;
  v77 = v85;
  v143 = v85;

  sub_1AC27126C(v91);
  sub_1AC2713C4(v77);
  v9 = v132;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v79 = sub_1AC30B18C();
  v78 = v10;
  *v10 = (*((*v9 & *MEMORY[0x1E69E7D40]) + 0x98))();
  sub_1AC206300();
  v142 = v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v82 = sub_1AC263B38();
  sub_1AC24D54C();
  result = sub_1AC30AA8C();
  v83 = result;
  if (!v8)
  {
    v73 = v83;
    sub_1AC209190(&v142);

    v74 = &v157;
    v157 = v73;
    v72 = sub_1AC215CB0();
    v71 = sub_1AC30AAFC();
    sub_1AC30A9DC("_specifiers", 11, 1);
    v69 = v13;
    v70 = sub_1AC30A91C();

    [v132 setValue:v71 forKey:v70];
    MEMORY[0x1E69E5920](v70);
    swift_unknownObjectRelease();
    v75 = sub_1AC30B02C();

    MEMORY[0x1E69E5920](v103);
    sub_1AC209190(v74);
    return v75;
  }

  __break(1u);
  return result;
}

id sub_1AC2730DC(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v50 = a2;
  v46 = "Fatal error";
  v47 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v48 = "HeadphoneSettingsUI/BobbleGestureMappingController.swift";
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v56 = 0;
  v54 = sub_1AC3090EC();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  v49 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v2 = &v12 - v49;
  v55 = &v12 - v49;
  v73 = v3;
  v72 = v4;
  v71 = v5;
  v6 = MEMORY[0x1E69E5928](v5);
  (*(v52 + 16))(v2, v50, v54, v6);
  v7 = sub_1AC3090AC();
  v8 = v51;
  v58 = v7;
  (*(v52 + 8))(v55, v54);
  v9 = type metadata accessor for BobbleMappingSelectionController();
  v70.receiver = v8;
  v70.super_class = v9;
  v59 = objc_msgSendSuper2(&v70, sel_tableView_cellForRowAtIndexPath_, v57, v58);
  MEMORY[0x1E69E5920](v58);
  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (v60)
  {
    v45 = v60;
  }

  else
  {
    MEMORY[0x1E69E5920](v59);
    v45 = 0;
  }

  v44 = v45;
  if (v45)
  {
    v43 = v44;
    v40 = v44;
    v69 = v44;
    MEMORY[0x1E69E5920](v51);
    v41 = sub_1AC3090DC();
    v42 = sub_1AC271360();
    if (v42)
    {
      if (v42 == 1)
      {
        if (v41)
        {
          if (v41 == 1)
          {
            v10 = sub_1AC271204();
            v18 = v10;
            if (v10)
            {
              v17 = v18;
            }

            else
            {
              v10 = sub_1AC30B05C(v46, 11, 2, v47, 68, 2, v48, 56, 2, 93, 0);
              __break(1u);
            }

            v12 = v17;
            v13 = (*(*v17 + 184))(v10);

            v16 = &v68;
            v68 = v13;
            v14 = &v67;
            v67 = 2;
            v15 = type metadata accessor for AAHeadGestureConfig(0);
            sub_1AC2749C0();
            [v40 setChecked_];
          }
        }

        else
        {
          v25 = sub_1AC271204();
          if (v25)
          {
            v24 = v25;
          }

          else
          {
            sub_1AC30B05C(v46, 11, 2, v47, 68, 2, v48, 56, 2, 91, 0);
            __break(1u);
          }

          v19 = v24;
          v20 = (*(*v24 + 184))();

          v23 = &v66;
          v66 = v20;
          v21 = &v65;
          v65 = 1;
          v22 = type metadata accessor for AAHeadGestureConfig(0);
          sub_1AC2749C0();
          [v40 setChecked_];
        }
      }
    }

    else if (v41)
    {
      if (v41 == 1)
      {
        v32 = sub_1AC271204();
        if (v32)
        {
          v31 = v32;
        }

        else
        {
          sub_1AC30B05C(v46, 11, 2, v47, 68, 2, v48, 56, 2, 89, 0);
          __break(1u);
        }

        v26 = v31;
        v27 = (*(*v31 + 232))();

        v30 = &v64;
        v64 = v27;
        v28 = &v63;
        v63 = 2;
        v29 = type metadata accessor for AAHeadGestureConfig(0);
        sub_1AC2749C0();
        [v40 setChecked_];
      }
    }

    else
    {
      v39 = sub_1AC271204();
      if (v39)
      {
        v38 = v39;
      }

      else
      {
        sub_1AC30B05C(v46, 11, 2, v47, 68, 2, v48, 56, 2, 87, 0);
        __break(1u);
      }

      v33 = v38;
      v34 = (*(*v38 + 232))();

      v37 = &v62;
      v62 = v34;
      v35 = &v61;
      v61 = 1;
      v36 = type metadata accessor for AAHeadGestureConfig(0);
      sub_1AC2749C0();
      [v40 setChecked_];
    }

    return v40;
  }

  else
  {
    MEMORY[0x1E69E5920](v51);
    sub_1AC27488C();
    result = sub_1AC30B06C();
    __break(1u);
  }

  return result;
}

double sub_1AC273AA0(const void *a1)
{
  v60 = a1;
  v55 = "Fatal error";
  v56 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v57 = "HeadphoneSettingsUI/BobbleGestureMappingController.swift";
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C650, &qword_1AC3127C0);
  v58 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v9 - v58;
  v62 = sub_1AC3090EC();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v61);
  v66 = &v9 - v65;
  v71 = v3;
  v70 = v4;
  v67 = [v4 table];
  if (v67)
  {
    v54 = v67;
  }

  else
  {
    sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 100, 0);
    __break(1u);
  }

  v52 = v54;
  MEMORY[0x1AC5AE740](0);
  v51 = sub_1AC3090AC();
  v49 = *(v63 + 8);
  v50 = v63 + 8;
  v49(v66, v62);
  v53 = [v52 cellForRowAtIndexPath_];
  MEMORY[0x1E69E5920](v51);
  *&result = MEMORY[0x1E69E5920](v52).n128_u64[0];
  if (v53)
  {
    v48 = v53;
    v46 = v53;
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v45 = v47;
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v46).n128_u64[0];
      v45 = 0;
    }

    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  v43 = v44;
  if (v44)
  {
    v42 = v43;
    v40 = v43;
    v69 = v43;
    v6 = [v61 table];
    v41 = v6;
    if (v6)
    {
      v39 = v41;
    }

    else
    {
      sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 101, 0);
      __break(1u);
    }

    v37 = v39;
    MEMORY[0x1AC5AE740](1, 0);
    v36 = sub_1AC3090AC();
    v49(v66, v62);
    v38 = [v37 cellForRowAtIndexPath_];
    MEMORY[0x1E69E5920](v36);
    MEMORY[0x1E69E5920](v37);
    if (v38)
    {
      v35 = v38;
      v33 = v38;
      objc_opt_self();
      v34 = swift_dynamicCastObjCClass();
      if (v34)
      {
        v32 = v34;
      }

      else
      {
        MEMORY[0x1E69E5920](v33);
        v32 = 0;
      }

      v31 = v32;
    }

    else
    {
      v31 = 0;
    }

    v30 = v31;
    if (v31)
    {
      v29 = v30;
      v26 = v30;
      v68 = v30;
      v25 = 0x1FB879000uLL;
      v27 = 0;
      v28 = 1;
      [v40 0x1FB87906ALL];
      [v26 (v25 + 106)];
      sub_1AC274A40(v60, v59);
      if ((*(v63 + 48))(v59, v28, v62) == 1)
      {
        sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 107, 0);
        __break(1u);
      }

      v23 = sub_1AC3090DC();
      v49(v59, v62);
      v24 = sub_1AC271360();
      if (v24)
      {
        if (v24 == 1)
        {
          if (v23)
          {
            if (v23 == 1)
            {
              v11 = sub_1AC271204();
              if (v11)
              {
                v10 = v11;
              }

              else
              {
                sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 118, 0);
                __break(1u);
              }

              v9 = v10;
              (*(*v10 + 192))(2);

              [v26 setChecked_];
            }
          }

          else
          {
            v15 = sub_1AC271204();
            if (v15)
            {
              v14 = v15;
            }

            else
            {
              sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 115, 0);
              __break(1u);
            }

            v12 = v14;
            v8 = *(*v14 + 192);
            v13 = 1;
            v8();

            [v40 setChecked_];
          }
        }
      }

      else if (v23)
      {
        if (v23 == 1)
        {
          v18 = sub_1AC271204();
          if (v18)
          {
            v17 = v18;
          }

          else
          {
            sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 112, 0);
            __break(1u);
          }

          v16 = v17;
          (*(*v17 + 240))(2);

          [v26 setChecked_];
        }
      }

      else
      {
        v22 = sub_1AC271204();
        if (v22)
        {
          v21 = v22;
        }

        else
        {
          sub_1AC30B05C(v55, 11, 2, v56, 68, 2, v57, 56, 2, 109, 0);
          __break(1u);
        }

        v19 = v21;
        v7 = *(*v21 + 240);
        v20 = 1;
        v7();

        [v40 setChecked_];
      }

      MEMORY[0x1E69E5920](v26);
      *&result = MEMORY[0x1E69E5920](v40).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x1E69E5920](v40).n128_u64[0];
    }
  }

  return result;
}

id BobbleMappingSelectionController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleMappingSelectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AC2748C4()
{
  v2 = qword_1EB54C640;
  if (!qword_1EB54C640)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C640);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for AAHeadGestureConfig(uint64_t a1)
{
  v5 = qword_1EB54C660;
  if (!qword_1EB54C660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C660);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC2749C0()
{
  v2 = qword_1EB54C648;
  if (!qword_1EB54C648)
  {
    type metadata accessor for AAHeadGestureConfig(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C648);
    return WitnessTable;
  }

  return v2;
}

void *sub_1AC274A40(const void *a1, void *a2)
{
  v6 = sub_1AC3090EC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C650, &qword_1AC3127C0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC274B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC3090EC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  return a1;
}

unint64_t sub_1AC274C28()
{
  v2 = qword_1EB54C658;
  if (!qword_1EB54C658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC274CE4()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553D20);
  __swift_project_value_buffer(v1, qword_1EB553D20);
  sub_1AC30A9DC("com.apple.HeadphoneConfigs", 26, 1);
  sub_1AC30A9DC("Bobble", 6, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC274D88()
{
  if (qword_1EB54FFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553D20);
}

uint64_t sub_1AC274DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC274D88();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_1AC274E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = sub_1AC30A9DC("BOBBLE_TUTORIAL_MOVE_HEAD_UP_DOWN", 33, 1);
  v10 = sub_1AC274FA8(v3, v4);
  v11 = v5;

  v6 = sub_1AC30A9DC("BOBBLE_TUTORIAL_CONTINUE", 24, 1);
  v14 = sub_1AC274FA8(v6, v7);
  v15 = v8;

  sub_1AC2750C0(v10, v11, a1, a2, v14, v15, 0, 0, v17);
  memcpy(__dst, v17, sizeof(__dst));
  memcpy(v19, __dst, sizeof(v19));
  memcpy(v20, v19, 0x40uLL);
  v20[64] = 1;
  return memcpy(a3, v20, 0x41uLL);
}

uint64_t sub_1AC274FA8(uint64_t a1, uint64_t a2)
{
  sub_1AC30A9DC("Bobble", 6, 1);
  sub_1AC20BE24();
  type metadata accessor for BobbleTutorialController();
  v3 = sub_1AC20BE88();
  sub_1AC30A9DC("", 0, 1);
  sub_1AC20BEE0();
  v4 = sub_1AC308FBC();

  MEMORY[0x1E69E5920](v3);

  return v4;
}

void *sub_1AC2750C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  return memcpy(a9, __src, 0x40uLL);
}

void *sub_1AC275144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = sub_1AC30A9DC("BOBBLE_TUTORIAL_MOVE_HEAD_SIDE_TO_SIDE", 38, 1);
  v10 = sub_1AC274FA8(v3, v4);
  v11 = v5;

  v6 = sub_1AC30A9DC("BOBBLE_TUTORIAL_CONTINUE", 24, 1);
  v14 = sub_1AC274FA8(v6, v7);
  v15 = v8;

  sub_1AC2750C0(v10, v11, a1, a2, v14, v15, 0, 0, v17);
  memcpy(__dst, v17, sizeof(__dst));
  memcpy(v19, __dst, sizeof(v19));
  memcpy(v20, v19, 0x40uLL);
  v20[64] = 2;
  return memcpy(a3, v20, 0x41uLL);
}

void *sub_1AC275294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a1;
  v48 = v2;
  v31 = sub_1AC3099BC();
  v47 = v31;
  v32 = sub_1AC30995C();
  v46 = v32;
  memcpy(__dst, v2, sizeof(__dst));
  if (__dst[64])
  {
    if (__dst[64] == 1)
    {
      memcpy(v54, __dst, sizeof(v54));
      v10 = sub_1AC30A9DC("BOBBLE_TUTORIAL_MOVE_HEAD_SIDE_TO_SIDE", 38, 1);
      v18 = sub_1AC274FA8(v10, v11);
      v19 = v12;

      memset(v39, 0, sizeof(v39));
      memcpy(v40, v39, 0x40uLL);
      v40[64] = 2;
      memcpy(v57, v40, 0x41uLL);
      v20 = sub_1AC2756EC(v31, v32, v57, v2);
      v21 = v13;
      v14 = sub_1AC30A9DC("BOBBLE_TUTORIAL_DONE", 20, 1);
      v22 = sub_1AC274FA8(v14, v15);
      v23 = v16;

      sub_1AC2750C0(v18, v19, v20, v21, v22, v23, 0, 0, v51);
      memcpy(v41, v51, sizeof(v41));
      memcpy(v42, v41, sizeof(v42));
      memcpy(v43, v42, 0x40uLL);
      v43[64] = 2;
      memcpy(v44, v43, sizeof(v44));
      memcpy(v58, v44, sizeof(v58));
    }

    else
    {
      memcpy(v55, __dst, sizeof(v55));
      memset(v45, 0, 64);
      LOBYTE(v45[8]) = -1;
      memcpy(v58, v45, sizeof(v58));
    }
  }

  else
  {
    memcpy(v53, __dst, sizeof(v53));
    v3 = sub_1AC30A9DC("BOBBLE_TUTORIAL_MOVE_HEAD_UP_DOWN", 33, 1);
    v24 = sub_1AC274FA8(v3, v4);
    v25 = v5;

    memset(v33, 0, sizeof(v33));
    memcpy(v34, v33, 0x40uLL);
    v34[64] = 1;
    memcpy(v56, v34, 0x41uLL);
    v26 = sub_1AC2756EC(v31, v32, v56, v2);
    v27 = v6;
    v7 = sub_1AC30A9DC("BOBBLE_TUTORIAL_CONTINUE", 24, 1);
    v28 = sub_1AC274FA8(v7, v8);
    v29 = v9;

    sub_1AC2750C0(v24, v25, v26, v27, v28, v29, 0, 0, v50);
    memcpy(v35, v50, sizeof(v35));
    memcpy(v36, v35, sizeof(v36));
    memcpy(v37, v36, 0x40uLL);
    v37[64] = 1;
    memcpy(v38, v37, sizeof(v38));
    memcpy(v58, v38, sizeof(v58));
  }

  return memcpy(a2, v58, 0x41uLL);
}

uint64_t sub_1AC2756EC(int a1, int a2, uint64_t a3, _OWORD *a4)
{
  v118 = v129;
  v110 = a4;
  v117 = a3;
  v116 = a2;
  v119 = a1;
  v107 = a2;
  v108 = a1;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v109 = 0;
  v129[0] = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = *(a3 + 48);
  v130 = *(a3 + 64);
  v129[3] = v6;
  v129[2] = v5;
  v129[1] = v4;
  v133 = v129[0];
  v137 = v130;
  v136 = v6;
  v135 = v5;
  v134 = v4;
  v111 = sub_1AC309E6C();
  v112 = *(v111 - 8);
  v113 = v112;
  v114 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = v70 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v7;
  v127 = v8;
  v126 = v9;
  sub_1AC27F49C(v10, &v125);
  v11 = v116;
  v12 = v117;
  v13 = v118;
  v14 = v119;
  v118[44] = v118[39];
  v15 = v13[40];
  v16 = v13[41];
  v17 = v13[42];
  v138[64] = v137;
  v13[47] = v17;
  v13[46] = v16;
  v13[45] = v15;
  v138[65] = v14;
  v138[66] = v11;
  v13[22] = *v12;
  v18 = *(v12 + 16);
  v19 = *(v12 + 32);
  v20 = *(v12 + 48);
  v132 = *(v12 + 64);
  v13[25] = v20;
  v13[24] = v19;
  v13[23] = v18;
  v120 = v132;
  if (!v132)
  {
    v21 = v108;
    v22 = v118;
    v23 = v118[22];
    v24 = v118[23];
    v25 = v118[24];
    v118[30] = v118[25];
    v22[29] = v25;
    v22[28] = v24;
    v22[27] = v23;
    if (v21 == 1)
    {
      goto LABEL_13;
    }

    if (v107 != 1)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_1AC27F6BC(v138);
    v39 = sub_1AC30A9DC("BOBBLE_TUTORIAL_GESTURE_DISMISS", 31, 1);
    v98 = v40;
    v99 = sub_1AC274FA8(v39, v40);
    v100 = v41;

    v104 = v99;
    v105 = v100;
    v106 = v109;
    return v104;
  }

  if (v120 == 1)
  {
    v26 = v108;
    v27 = v118;
    v28 = v118[22];
    v29 = v118[23];
    v30 = v118[24];
    v118[34] = v118[25];
    v27[33] = v30;
    v27[32] = v29;
    v27[31] = v28;
    if (v26 == 1)
    {
      goto LABEL_13;
    }

    if (v107 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v31 = v108;
  v32 = v118;
  v33 = v118[22];
  v34 = v118[23];
  v35 = v118[24];
  v118[38] = v118[25];
  v32[37] = v35;
  v32[36] = v34;
  v32[35] = v33;
  if (v31 != 2)
  {
    if (v107 == 2)
    {
      goto LABEL_15;
    }

LABEL_16:
    v42 = v115;
    v43 = sub_1AC274D88();
    (*(v113 + 16))(v42, v43, v111);
    v96 = sub_1AC309E4C();
    v93 = v96;
    v95 = sub_1AC30AD1C();
    v94 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v97 = sub_1AC30B18C();
    if (os_log_type_enabled(v96, v95))
    {
      v44 = v109;
      v84 = sub_1AC30AE6C();
      v80 = v84;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v82 = 0;
      v85 = sub_1AC213EE4(0, v81, v81);
      v83 = v85;
      v86 = sub_1AC213EE4(v82, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v124 = v84;
      v123 = v85;
      v122 = v86;
      v87 = 0;
      v88 = &v124;
      sub_1AC213F38(0, &v124);
      sub_1AC213F38(v87, v88);
      v121 = v97;
      v89 = v70;
      MEMORY[0x1EEE9AC00](v70);
      v90 = &v70[-6];
      v70[-4] = v45;
      v70[-3] = &v123;
      v70[-2] = &v122;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v92 = v44;
      if (v44)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v93, v94, "AADevice did not have mappings for accept / decline defaulting to nod -> accept shake -> decline", v80, 2u);
        v78 = 0;
        sub_1AC213F98(v83, 0, v81);
        sub_1AC213F98(v86, v78, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v79 = v92;
      }
    }

    else
    {

      v79 = v109;
    }

    v76 = v79;

    (*(v113 + 8))(v115, v111);
    v46 = v110;
    v47 = v118;
    v118[5] = *v110;
    v48 = v46[1];
    v49 = v46[2];
    v50 = v46[3];
    v131 = *(v46 + 64);
    v47[8] = v50;
    v47[7] = v49;
    v47[6] = v48;
    v77 = v131;
    if (v131)
    {
      if (v77 != 1)
      {
        v62 = v118;
        v63 = v118[5];
        v64 = v118[6];
        v65 = v118[7];
        v118[21] = v118[8];
        v62[20] = v65;
        v62[19] = v64;
        v62[18] = v63;
        v66 = sub_1AC30A9DC("BOBBLE_TUTORIAL_GESTURE_DISMISS", 31, 1);
        v70[1] = v67;
        v71 = sub_1AC274FA8(v66, v67);
        v72 = v68;

        sub_1AC27F6BC(v138);
        v104 = v71;
        v105 = v72;
        v106 = v76;
        return v104;
      }

      v55 = v118;
      v56 = v118[5];
      v57 = v118[6];
      v58 = v118[7];
      v118[17] = v118[8];
      v55[16] = v58;
      v55[15] = v57;
      v55[14] = v56;
    }

    else
    {
      v51 = v118;
      v52 = v118[5];
      v53 = v118[6];
      v54 = v118[7];
      v118[13] = v118[8];
      v51[12] = v54;
      v51[11] = v53;
      v51[10] = v52;
    }

    v59 = sub_1AC30A9DC("BOBBLE_TUTORIAL_GESTURE_ACCEPT", 30, 1);
    v73 = v60;
    v74 = sub_1AC274FA8(v59, v60);
    v75 = v61;

    sub_1AC27F6BC(v138);
    v104 = v74;
    v105 = v75;
    v106 = v76;
    return v104;
  }

LABEL_13:
  sub_1AC27F6BC(v138);
  v36 = sub_1AC30A9DC("BOBBLE_TUTORIAL_GESTURE_ACCEPT", 30, 1);
  v101 = v37;
  v102 = sub_1AC274FA8(v36, v37);
  v103 = v38;

  v104 = v102;
  v105 = v103;
  v106 = v109;
  return v104;
}

void *sub_1AC275EEC@<X0>(void *a1@<X8>)
{
  v11 = 0;
  v8 = 0;
  v5 = 0;
  v13 = v1;
  memcpy(__dst, v1, 0x41uLL);
  if (__dst[64])
  {
    if (__dst[64] == 1)
    {
      memcpy(v9, __dst, sizeof(v9));
      v8 = __dst;
      sub_1AC27FEEC(v9, v7);
      memcpy(v15, v9, sizeof(v15));
    }

    else
    {
      memcpy(v12, __dst, sizeof(v12));
      v11 = __dst;
      sub_1AC27FEEC(v12, v10);
      memcpy(v15, v12, sizeof(v15));
    }
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    v5 = __dst;
    sub_1AC27FEEC(v6, v4);
    memcpy(v15, v6, sizeof(v15));
  }

  return memcpy(a1, v15, 0x40uLL);
}

void *sub_1AC276050@<X0>(void *a1@<X8>)
{
  v1 = sub_1AC30A9DC("BOBBLE_TUTORIAL_INTRO_HEADER", 28, 1);
  v11 = sub_1AC274FA8(v1, v2);
  v12 = v3;

  v4 = sub_1AC30A9DC("BOBBLE_TUTORIAL_INTRO_BODY", 26, 1);
  v13 = sub_1AC274FA8(v4, v5);
  v14 = v6;

  v7 = sub_1AC30A9DC("BOBBLE_TUTORIAL_CONTINUE", 24, 1);
  v15 = sub_1AC274FA8(v7, v8);
  v16 = v9;

  sub_1AC2750C0(v11, v12, v13, v14, v15, v16, 0, 0, v18);
  memcpy(__dst, v18, sizeof(__dst));
  memcpy(v20, __dst, sizeof(v20));
  memcpy(v21, v20, 0x40uLL);
  v21[64] = 0;
  return memcpy(a1, v21, 0x41uLL);
}

uint64_t sub_1AC2761AC()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (__dst[64])
  {
    if (__dst[64] == 1)
    {
      memcpy(v5, __dst, sizeof(v5));
      return 2;
    }

    else
    {
      memcpy(v6, __dst, sizeof(v6));
      return 3;
    }
  }

  else
  {
    memcpy(v4, __dst, sizeof(v4));
    return 0;
  }
}

uint64_t sub_1AC2762A8()
{
  memcpy(__dst, v0, sizeof(__dst));
  if (!__dst[64])
  {
    memcpy(v4, __dst, sizeof(v4));
    return 1;
  }

  if (__dst[64] == 1)
  {
    memcpy(v5, __dst, sizeof(v5));
    return 1;
  }

  memcpy(v6, __dst, sizeof(v6));
  return 2;
}

uint64_t sub_1AC2763A8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC276418(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC27651C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC276564()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2765CC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

char *sub_1AC276740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v45 = v3;
  *&v3[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager] = 0;
  v25 = OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *&v45[v25] = sub_1AC30A80C();
  *&v45[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topAsset] = 0;
  *&v45[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topSucessMark] = 0;
  v26 = v45;
  sub_1AC27F49C(a1, v41);
  memcpy(&v26[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType], a1, 0x41uLL);
  v28 = v45;
  sub_1AC30929C(v39);
  if (!v39[3])
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/BobbleTutorialController.swift", 50, 2, 130, 0);
    __break(1u);
  }

  sub_1AC2051E4(v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C4D0, &qword_1AC312900);
  swift_dynamicCast();
  sub_1AC2051E4(v38, &v28[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_feature]);
  v21 = v45;
  MEMORY[0x1E69E5928](a3);
  *&v21[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice] = a3;
  v22 = v45;
  sub_1AC275EEC(v46);
  memcpy(__dst, v46, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v51, __dst, sizeof(v51));
    v17 = v51[0];
    v18 = v51[1];

    sub_1AC27FFEC(v51);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v34 = v19;
  v35 = v20;
  if (v20)
  {
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = sub_1AC30A9DC("", 0, 1);
    v37 = v4;
  }

  v16 = sub_1AC30A91C();

  sub_1AC275EEC(v47);
  memcpy(v48, v47, sizeof(v48));
  if (v48[1])
  {
    memcpy(v49, v48, sizeof(v49));
    v12 = v49[2];
    v13 = v49[3];

    sub_1AC27FFEC(v49);
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v30 = v14;
  v31 = v15;
  if (v15)
  {
    v32 = v30;
    v33 = v31;
  }

  else
  {
    v32 = sub_1AC30A9DC("", 0, 1);
    v33 = v5;
  }

  v10 = sub_1AC30A91C();

  v29.receiver = v22;
  v29.super_class = type metadata accessor for BobbleTutorialController();
  v11 = objc_msgSendSuper2(&v29, sel_initWithTitle_detailText_icon_contentLayout_, v16, v10, 0, 1);
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5928](v11);
  v45 = v11;
  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v8 = v45;
    MEMORY[0x1E69E5928](a2);
    v9 = &v8[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager];
    swift_beginAccess();
    v6 = *v9;
    *v9 = a2;
    MEMORY[0x1E69E5920](v6);
    swift_endAccess();
    MEMORY[0x1E69E5920](a2);
  }

  else
  {
    sub_1AC27C4D4();
  }

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  sub_1AC27F6BC(a1);
  MEMORY[0x1E69E5920](v45);
  return v11;
}

double sub_1AC276D20(char a1)
{
  v7 = a1 & 1;
  v6 = v1;
  MEMORY[0x1E69E5928](v1);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BobbleTutorialController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  MEMORY[0x1E69E5920](v1);
  v4 = sub_1AC27B904();
  sub_1AC309BDC();
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1AC276E34()
{
  v52 = 0;
  v67 = 0;
  v44 = 0;
  v45 = sub_1AC309E6C();
  v46 = *(v45 - 8);
  v47 = v46;
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v0;
  v49 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice);
  v2 = v49;
  v50 = sub_1AC30917C();

  v51 = [v50 primaryPlacement];
  v66 = v51;
  v65 = 1;
  v54 = type metadata accessor for CBDevicePlacement(v52);
  v53 = v54;
  v55 = sub_1AC2800E8();
  v57 = sub_1AC30A89C();
  v3 = v56;
  if (v57)
  {
    v43 = 0;
  }

  else
  {
    v40 = *&v56[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice];
    v4 = v40;
    v41 = sub_1AC30917C();

    v42 = [v41 secondaryPlacement];
    v59 = v42;
    v58 = 1;
    v43 = sub_1AC30A89C() ^ 1;
  }

  v39 = v43;

  if (v39)
  {
    sub_1AC2774B0(v56);
    v37 = 1;
    v38 = v44;
  }

  else
  {
    v36 = *&v56[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice];
    v5 = v36;
    v64 = v36;
    v35 = v36 == 0;
    v34 = v35;
    sub_1AC206988(&v64);
    if (v34)
    {
      v6 = v48;
      v30 = 0;
      [v56 dismissViewControllerAnimated:1 completion:?];
      v7 = sub_1AC274D88();
      (*(v47 + 16))(v6, v7, v45);
      v32 = sub_1AC309E4C();
      v28 = v32;
      v31 = sub_1AC30AD1C();
      v29 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
      v33 = sub_1AC30B18C();
      if (os_log_type_enabled(v32, v31))
      {
        v8 = v44;
        v19 = sub_1AC30AE6C();
        v15 = v19;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
        v17 = 0;
        v20 = sub_1AC213EE4(0, v16, v16);
        v18 = v20;
        v21 = sub_1AC213EE4(v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v63 = v19;
        v62 = v20;
        v61 = v21;
        v22 = 0;
        v23 = &v63;
        sub_1AC213F38(0, &v63);
        sub_1AC213F38(v22, v23);
        v60 = v33;
        v24 = &v11;
        MEMORY[0x1EEE9AC00](&v11);
        v25 = &v11 - 6;
        *(&v11 - 4) = v9;
        *(&v11 - 3) = &v62;
        *(&v11 - 2) = &v61;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
        sub_1AC218014();
        sub_1AC30AAAC();
        v27 = v8;
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v28, v29, "Headphone no longer connected dimissing.", v15, 2u);
          v13 = 0;
          sub_1AC213F98(v18, 0, v16);
          sub_1AC213F98(v21, v13, MEMORY[0x1E69E7CA0] + 8);
          sub_1AC30AE4C();

          v14 = v27;
        }
      }

      else
      {

        v14 = v44;
      }

      v11 = v14;

      (*(v47 + 8))(v48, v45);
      v12 = v11;
    }

    else
    {
      v12 = v44;
    }

    v37 = 0;
    v38 = v12;
  }

  return v37 & 1;
}

double sub_1AC2774B0(char *a1)
{
  v72 = a1;
  v74 = 0;
  v69 = sub_1AC206344;
  v85 = 0;
  v76 = 0;
  v70 = 0;
  v60 = sub_1AC30A90C();
  v33 = *(v60 - 8);
  v34 = v60 - 8;
  v19 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v59 = &v18 - v19;
  v49 = sub_1AC30A8EC();
  v31 = *(v49 - 8);
  v32 = v49 - 8;
  v22 = v31[8];
  v20 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v53 = &v18 - v20;
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v18 - v21;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v18 - v23;
  v85 = v3;
  v56 = sub_1AC21E88C();
  v29 = &v84;
  v84 = v72;
  v41 = 14;
  v65 = 1;
  sub_1AC30A8DC();
  v73 = 1;
  sub_1AC30A9DC("Place ", 6, 1);
  v24 = v4;
  sub_1AC30A8CC();

  v36 = &qword_1EB54C000;
  v28 = v81;
  sub_1AC241BFC(&v72[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_feature], v81);
  v26 = v82;
  v25 = v83;
  __swift_project_boxed_opaque_existential_1(v28, v82);
  (*(*(v25 + 8) + 24))(v26);
  v27 = v5;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1AC30A9DC(" in Ears", 8, v73 & 1);
  v30 = v6;
  sub_1AC30A8CC();

  v45 = v31[2];
  v44 = v31 + 2;
  v45(v46, v52, v49);
  v48 = v31[4];
  v47 = v31 + 4;
  v48(v53, v46, v49);
  v51 = v31[1];
  v50 = v31 + 1;
  v51(v52, v49);
  sub_1AC30A8FC();
  v54 = type metadata accessor for BobbleTutorialController();
  v55 = &off_1F20F5CE8;
  v61 = sub_1AC215DE8(v59, v54);
  v62 = v7;
  v58 = *(v33 + 8);
  v57 = v33 + 8;
  v58(v59, v60);
  v42 = &v80;
  v80 = v72;
  sub_1AC30A8DC();
  sub_1AC30A9DC("To try Head Gestures, place one or both ", 40, v73 & 1);
  v35 = v8;
  sub_1AC30A8CC();

  v9 = &v72[v36[209]];
  v40 = v77;
  sub_1AC241BFC(v9, v77);
  v38 = v78;
  v37 = v79;
  __swift_project_boxed_opaque_existential_1(v40, v78);
  (*(*(v37 + 8) + 24))(v38);
  v39 = v10;
  sub_1AC30A8BC();

  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1AC30A9DC(" in your ears.", v41, v73 & 1);
  v43 = v11;
  sub_1AC30A8CC();

  v45(v46, v52, v49);
  v48(v53, v46, v49);
  v51(v52, v49);
  sub_1AC30A8FC();
  v63 = sub_1AC215DE8(v59, v54);
  v64 = v12;
  v58(v59, v60);
  v75 = sub_1AC21CFE0(v61, v62, v63, v64, v65);
  v76 = v75;
  sub_1AC21E8F0();
  v13 = sub_1AC30A9DC("BOBBLE_TUTORIAL_BUD_ALIERT_BUTTON", 33, v73 & 1);
  v66 = v14;
  v67 = sub_1AC274FA8(v13, v14);
  v68 = v15;

  v71 = sub_1AC21E3FC(v67, v68, v70, v69, v70);
  [v75 addAction_];
  *&v16 = MEMORY[0x1E69E5920](v71).n128_u64[0];
  [v72 presentViewController:v75 animated:v73 & 1 completion:{v74, v16}];
  *&result = MEMORY[0x1E69E5920](v75).n128_u64[0];
  return result;
}

void sub_1AC277CC4()
{
  v151 = v171;
  v148 = 0;
  v182 = 0;
  v180 = 0;
  v169 = 0;
  v165 = 0;
  v139 = 0;
  v140 = sub_1AC30AD8C();
  v141 = *(v140 - 8);
  v142 = v141;
  MEMORY[0x1EEE9AC00](0);
  v143 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1AC309E6C();
  v145 = *(v144 - 8);
  v146 = v145;
  MEMORY[0x1EEE9AC00](v144 - 8);
  v147 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v0;
  v3 = v0;
  v4 = type metadata accessor for BobbleTutorialController();
  v181.receiver = v0;
  v181.super_class = v4;
  objc_msgSendSuper2(&v181, sel_viewDidLoad);

  v5 = v0;
  [v0 setModalInPresentation_];

  v6 = [objc_opt_self() boldButton];
  v7 = v151;
  v149 = v6;
  v180 = v6;
  v8 = &v0[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  *(v151 + 30) = *&v0[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);
  v11 = *(v8 + 3);
  v188 = v8[64];
  *(v7 + 33) = v11;
  *(v7 + 32) = v10;
  *(v7 + 31) = v9;
  v150 = v187;
  sub_1AC27F49C(v187, &v177);
  sub_1AC275EEC(v183);
  sub_1AC27F6BC(v150);
  v12 = v151;
  v13 = *(v151 + 18);
  v14 = *(v151 + 19);
  v15 = *(v151 + 20);
  *(v151 + 25) = *(v151 + 21);
  *(v12 + 24) = v15;
  *(v12 + 23) = v14;
  *(v12 + 22) = v13;
  if (v183[9])
  {
    v16 = v151;
    v17 = *(v151 + 22);
    v18 = *(v151 + 23);
    v19 = *(v151 + 24);
    *(v151 + 29) = *(v151 + 25);
    *(v16 + 28) = v19;
    *(v16 + 27) = v18;
    *(v16 + 26) = v17;
    v134 = v185;
    v135 = v186;

    sub_1AC27FFEC(v184);
    v136 = v134;
    v137 = v135;
  }

  else
  {
    v136 = 0;
    v137 = 0;
  }

  v175 = v136;
  v176 = v137;
  if (v137)
  {
    v178 = v175;
    v179 = v176;
  }

  else
  {
    v178 = sub_1AC30A9DC("", 0, 1);
    v179 = v20;
    if (v176)
    {
      sub_1AC2063F0(&v175);
    }
  }

  v105 = v179;
  v106 = sub_1AC30A91C();

  v126 = 0;
  [v149 setTitle:v106 forState:?];

  v118 = sub_1AC280168();
  v121 = &unk_1F20F5B40;
  v119 = 24;
  v120 = 7;
  v111 = swift_allocObject();
  v107 = v111 + 16;
  v21 = v138;
  swift_unknownObjectWeakInit();

  v110 = sub_1AC20BEE0();
  v109 = v22;
  v108 = sub_1AC279354();
  sub_1AC2485A4();
  v112 = sub_1AC30AE1C();

  [v149 addAction:v112 forControlEvents:64];

  v23 = v138;
  v113 = [v138 buttonTray];

  [v113 addButton_];
  v24 = v138;
  v130 = 0x1FBB63000uLL;
  v114 = [v138 0x1FBB6308ALL];

  v117 = 1;
  [v114 setHidesBackButton_];

  v25 = v138;
  v116 = [v138 contentView];

  v115 = [objc_opt_self() clearColor];
  [v116 setBackgroundColor_];

  sub_1AC2801D4();
  v170[0] = v126;
  v170[1] = v126;
  v170[2] = v126;
  v170[3] = v126;
  v131 = sub_1AC279384(v117, v170, v126);
  v122 = v131;
  v169 = v131;
  v128 = swift_allocObject();
  v123 = v128 + 16;
  v26 = v138;
  swift_unknownObjectWeakInit();

  v127 = sub_1AC20BEE0();
  v125 = v27;
  v124 = sub_1AC279354();
  v28 = sub_1AC2485A4();
  v63 = v128;
  v62 = sub_1AC280238;
  v61 = v28;
  v60[1] = v124;
  v60[0] = v126;
  v129 = sub_1AC30AE1C();

  [v131 setPrimaryAction_];

  v29 = v138;
  v132 = [v138 (v130 + 138)];

  v30 = v131;
  [v132 setLeftBarButtonItem_];

  v31 = v151;
  v32 = &v138[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  *v151 = *&v138[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  v33 = *(v32 + 1);
  v34 = *(v32 + 2);
  v35 = *(v32 + 3);
  v172 = v32[64];
  *(v31 + 3) = v35;
  *(v31 + 2) = v34;
  *(v31 + 1) = v33;
  sub_1AC27F49C(v171, &v168);
  v36 = v151;
  *(v151 + 5) = *v151;
  v37 = *(v36 + 1);
  v38 = *(v36 + 2);
  v39 = *(v36 + 3);
  v174 = v172;
  *(v36 + 8) = v39;
  *(v36 + 7) = v38;
  *(v36 + 6) = v37;
  v133 = v174;
  if (v174)
  {
    sub_1AC280240(v173);
    v167 = sub_1AC2763A8();
    if (v167)
    {
      v103 = v167;
      v40 = v167;
      sub_1AC206988(&v167);
      v100 = 7;
      v101 = swift_allocObject();
      v99 = v101 + 16;
      v41 = v138;
      swift_unknownObjectWeakInit();

      v42 = v149;
      v43 = swift_allocObject();
      v44 = v149;
      *(v43 + 16) = v101;
      *(v43 + 24) = v44;
      v157 = sub_1AC280458;
      v158 = v43;
      v152 = MEMORY[0x1E69E9820];
      v153 = 1107296256;
      v154 = 0;
      v155 = sub_1AC21E584;
      v156 = &block_descriptor_5;
      v102 = _Block_copy(&v152);

      [v103 setHeadGestureUpdatedHandler_];
      _Block_release(v102);
    }

    else
    {
      sub_1AC206988(&v167);
    }

    v45 = v149;
    [v149 setEnabled_];

    v166 = sub_1AC2763A8();
    if (v166)
    {
      v98 = v166;
      v46 = v166;
      sub_1AC206988(&v166);
      type metadata accessor for AAHeadGestureUpdateFlags(0);
      v96 = 2;
      sub_1AC30B18C();
      v47 = v96;
      *v48 = 1;
      v48[1] = v47;
      sub_1AC206300();
      v97 = v49;
      sub_1AC2803D8();
      sub_1AC30AF2C();
      [v98 setHeadGestureUpdateFlags_];
    }

    else
    {
      sub_1AC206988(&v166);
    }

    v50 = v147;
    v51 = sub_1AC274D88();
    (*(v146 + 16))(v50, v51, v144);
    v94 = sub_1AC309E4C();
    v91 = v94;
    v93 = sub_1AC30AD2C();
    v92 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v95 = sub_1AC30B18C();
    if (os_log_type_enabled(v94, v93))
    {
      v52 = v139;
      v82 = sub_1AC30AE6C();
      v78 = v82;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v80 = 0;
      v83 = sub_1AC213EE4(0, v79, v79);
      v81 = v83;
      v84 = sub_1AC213EE4(v80, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v163 = v82;
      v162 = v83;
      v161 = v84;
      v85 = 0;
      v86 = &v163;
      sub_1AC213F38(0, &v163);
      sub_1AC213F38(v85, v86);
      v160 = v95;
      v87 = &v64;
      MEMORY[0x1EEE9AC00](&v64);
      v88 = v60;
      v61 = v53;
      v62 = &v162;
      v63 = &v161;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v90 = v52;
      if (v52)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v91, v92, "HG ViewDidLoad: button enabled == false, setting unumte [.headGesture, .audioFeedback].", v78, 2u);
        v76 = 0;
        sub_1AC213F98(v81, 0, v79);
        sub_1AC213F98(v84, v76, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v77 = v90;
      }
    }

    else
    {

      v77 = v139;
    }

    v75 = v77;

    (*(v146 + 8))(v147, v144);
    v104 = v75;
  }

  else
  {
    sub_1AC280240(v173);
    v104 = v139;
  }

  v54 = sub_1AC27B904();
  v74 = v54;
  v165 = v54;
  v55 = v138;
  v65 = 0x1FB774000uLL;
  v64 = [v138 0x1FB774AF8];

  [v64 addSubview_];
  v56 = v138;
  v66 = [v138 (v65 + 2808)];

  [v54 pinToOther_];
  v57 = v54;
  sub_1AC309BCC();

  v68 = [objc_opt_self() defaultCenter];
  v67 = *MEMORY[0x1E69DDAC8];
  v58 = v67;
  sub_1AC30AD9C();

  v70 = swift_allocObject();
  v69 = v70 + 16;
  v59 = v138;
  swift_unknownObjectWeakInit();

  sub_1AC2802C0();
  v73 = sub_1AC309FBC();

  (*(v142 + 8))(v143, v140);
  v71 = v164;
  v72 = sub_1AC276650(v164);
  sub_1AC309E9C();
  (v72)(v71, 0);
}

double sub_1AC278BC0(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v22 = 0;
  v41[8] = a1;
  v41[7] = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
LABEL_14:
    swift_beginAccess();
    v41[0] = swift_unknownObjectWeakLoadStrong();
    if (v41[0])
    {
      v11 = v41[0];
      MEMORY[0x1E69E5928](v41[0]);
      sub_1AC206988(v41);
      swift_endAccess();
      v36 = sub_1AC2763A8();
      if (v36)
      {
        v10 = v36;
        MEMORY[0x1E69E5928](v36);
        sub_1AC206988(&v36);
        MEMORY[0x1E69E5920](v11);
        v34 = nullsub_1;
        v35 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v31 = 0;
        v32 = sub_1AC24D45C;
        v33 = &block_descriptor_174;
        v9 = _Block_copy(&aBlock);
        [v10 setInvalidationHandler_];
        _Block_release(v9);
        MEMORY[0x1E69E5920](v10);
      }

      else
      {
        sub_1AC206988(&v36);
        MEMORY[0x1E69E5920](v11);
      }
    }

    else
    {
      sub_1AC206988(v41);
      swift_endAccess();
    }

    swift_beginAccess();
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v8 = v40;
      MEMORY[0x1E69E5928](v40);
      sub_1AC206988(&v40);
      swift_endAccess();
      v37 = sub_1AC2763A8();
      if (v37)
      {
        v7 = v37;
        MEMORY[0x1E69E5928](v37);
        sub_1AC206988(&v37);
        [v7 invalidate];
        MEMORY[0x1E69E5920](v7);
      }

      else
      {
        sub_1AC206988(&v37);
        MEMORY[0x1E69E5920](v8);
      }
    }

    else
    {
      sub_1AC206988(&v40);
      swift_endAccess();
    }

    swift_beginAccess();
    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v6 = v39;
      MEMORY[0x1E69E5928](v39);
      sub_1AC206988(&v39);
      swift_endAccess();
      sub_1AC276418(0);
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      sub_1AC206988(&v39);
      swift_endAccess();
    }

    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v5 = v38;
      MEMORY[0x1E69E5928](v38);
      sub_1AC206988(&v38);
      swift_endAccess();
      [v5 dismissViewControllerAnimated:1 completion:0];
      *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
    }

    else
    {
      sub_1AC206988(&v38);
      swift_endAccess();
    }

    return result;
  }

  v27 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  v26 = v2;
  if (v2)
  {
    v16 = v26;
    MEMORY[0x1E69E5928](v26);
    sub_1AC206988(&v26);
    swift_endAccess();
    memcpy(v44, (v16 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType), 0x41uLL);
    sub_1AC27F49C(v44, v20);
    MEMORY[0x1E69E5920](v16);
    v17 = *&Strong[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice];
    MEMORY[0x1E69E5928](v17);
    v18 = sub_1AC30915C();
    MEMORY[0x1E69E5920](v17);
    sub_1AC275294(v18, v42);
    memcpy(v21, v42, sizeof(v21));

    sub_1AC27F6BC(v44);
    memcpy(__dst, v21, sizeof(__dst));
  }

  else
  {
    sub_1AC206988(&v26);
    swift_endAccess();
    memset(__src, 0, 64);
    LOBYTE(__src[8]) = -1;
    memcpy(__dst, __src, sizeof(__dst));
  }

  memcpy(v24, __dst, 0x41uLL);
  if (LOBYTE(v24[8]) == 255)
  {
    MEMORY[0x1E69E5920](Strong);
    goto LABEL_14;
  }

  memcpy(v43, v24, 0x41uLL);
  if (sub_1AC276E34())
  {
    sub_1AC27F6BC(v24);
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  else
  {
    type metadata accessor for BobbleTutorialController();
    sub_1AC27F49C(v24, v23);
    v12 = sub_1AC2763A8();
    v13 = *&Strong[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_hpDevice];
    MEMORY[0x1E69E5928](v13);
    v14 = sub_1AC2766F4(v43, v12, v13);
    v22 = v14;
    v15 = [Strong navigationController];
    *&v3 = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    if (v15)
    {
      [v15 pushViewController:v14 animated:{1, v3}];
      MEMORY[0x1E69E5920](v15);
    }

    MEMORY[0x1E69E5920](v14);
    sub_1AC27F6BC(v24);
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC279354()
{
  sub_1AC2806CC(0);

  return 0;
}

double sub_1AC2793D4(uint64_t a1, uint64_t a2)
{
  v22[5] = a1;
  v22[4] = a2 + 16;
  swift_beginAccess();
  v22[0] = swift_unknownObjectWeakLoadStrong();
  if (v22[0])
  {
    v9 = v22[0];
    MEMORY[0x1E69E5928](v22[0]);
    sub_1AC206988(v22);
    swift_endAccess();
    v17 = sub_1AC2763A8();
    if (v17)
    {
      v8 = v17;
      MEMORY[0x1E69E5928](v17);
      sub_1AC206988(&v17);
      MEMORY[0x1E69E5920](v9);
      v15 = nullsub_1;
      v16 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v11 = 1107296256;
      v12 = 0;
      v13 = sub_1AC24D45C;
      v14 = &block_descriptor_171;
      v7 = _Block_copy(&aBlock);
      [v8 setInvalidationHandler_];
      _Block_release(v7);
      MEMORY[0x1E69E5920](v8);
    }

    else
    {
      sub_1AC206988(&v17);
      MEMORY[0x1E69E5920](v9);
    }
  }

  else
  {
    sub_1AC206988(v22);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    v18 = sub_1AC2763A8();
    if (v18)
    {
      v5 = v18;
      MEMORY[0x1E69E5928](v18);
      sub_1AC206988(&v18);
      [v5 invalidate];
      MEMORY[0x1E69E5920](v5);
    }

    else
    {
      sub_1AC206988(&v18);
      MEMORY[0x1E69E5920](v6);
    }
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v4 = v20;
    MEMORY[0x1E69E5928](v20);
    sub_1AC206988(&v20);
    swift_endAccess();
    sub_1AC276418(0);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(&v20);
    swift_endAccess();
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v3 = v19;
    MEMORY[0x1E69E5928](v19);
    sub_1AC206988(&v19);
    swift_endAccess();
    [v3 dismissViewControllerAnimated:1 completion:0];
    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&v19);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AC2797DC(void *a1, uint64_t a2, void *a3)
{
  v193 = v261;
  v195 = a3;
  v196 = a2;
  v210 = a1;
  v216 = 0;
  v286 = 0;
  v285 = 0;
  v284 = 0;
  v194 = 0;
  v273 = 0;
  v207 = sub_1AC309E6C();
  v197 = v207;
  v198 = *(v207 - 8);
  v206 = v198;
  v199 = v198;
  v201 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v203 = (v201 + 15) & 0xFFFFFFFFFFFFFFF0;
  v200 = &v85 - v203;
  MEMORY[0x1EEE9AC00](v3);
  v202 = &v85 - v203;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v85 - v203;
  v204 = &v85 - v203;
  v286 = v6;
  v205 = v7 + 16;
  v285 = v7 + 16;
  v284 = v8;
  v9 = sub_1AC274D88();
  v208 = *(v206 + 16);
  v209 = (v206 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v208(v5, v9, v207);
  v10 = v210;
  v223 = 7;
  v224 = swift_allocObject();
  *(v224 + 16) = v210;
  v238 = sub_1AC309E4C();
  v211 = v238;
  v237 = sub_1AC30AD2C();
  v212 = v237;
  v219 = 17;
  v228 = swift_allocObject();
  v213 = v228;
  v214 = 32;
  *(v228 + 16) = 32;
  v11 = swift_allocObject();
  v12 = v214;
  v229 = v11;
  v215 = v11;
  *(v11 + 16) = 8;
  v222 = v12;
  v13 = swift_allocObject();
  v14 = v216;
  v217 = v13;
  *(v13 + 16) = sub_1AC27ADFC;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v217;
  v230 = v15;
  v218 = v15;
  *(v15 + 16) = sub_1AC215C98;
  *(v15 + 24) = v16;
  v231 = swift_allocObject();
  v220 = v231;
  *(v231 + 16) = 0;
  v232 = swift_allocObject();
  v221 = v232;
  *(v232 + 16) = 1;
  v17 = swift_allocObject();
  v18 = v224;
  v225 = v17;
  *(v17 + 16) = sub_1AC281404;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v225;
  v235 = v19;
  v226 = v19;
  *(v19 + 16) = sub_1AC270F58;
  *(v19 + 24) = v20;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v227 = v236;
  v233 = sub_1AC30B18C();
  v234 = v21;

  v22 = v228;
  v23 = v234;
  *v234 = sub_1AC215C90;
  v23[1] = v22;

  v24 = v229;
  v25 = v234;
  v234[2] = sub_1AC215C90;
  v25[3] = v24;

  v26 = v230;
  v27 = v234;
  v234[4] = sub_1AC215CA4;
  v27[5] = v26;

  v28 = v231;
  v29 = v234;
  v234[6] = sub_1AC215C90;
  v29[7] = v28;

  v30 = v232;
  v31 = v234;
  v234[8] = sub_1AC215C90;
  v31[9] = v30;

  v32 = v234;
  v33 = v235;
  v234[10] = sub_1AC270F64;
  v32[11] = v33;
  sub_1AC206300();

  if (os_log_type_enabled(v238, v237))
  {
    v34 = v194;
    v186 = sub_1AC30AE6C();
    v183 = v186;
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v187 = sub_1AC213EE4(0, v184, v184);
    v185 = v187;
    v188 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v243 = v186;
    v242 = v187;
    v241 = v188;
    v189 = 2;
    v190 = &v243;
    sub_1AC213F38(2, &v243);
    sub_1AC213F38(v189, v190);
    v239 = sub_1AC215C90;
    v240 = v213;
    sub_1AC213F4C(&v239, v190, &v242, &v241);
    v191 = v34;
    v192 = v34;
    if (v34)
    {
      v181 = 0;

      __break(1u);
    }

    else
    {
      v239 = sub_1AC215C90;
      v240 = v215;
      sub_1AC213F4C(&v239, &v243, &v242, &v241);
      v179 = 0;
      v180 = 0;
      v239 = sub_1AC215CA4;
      v240 = v218;
      sub_1AC213F4C(&v239, &v243, &v242, &v241);
      v177 = 0;
      v178 = 0;
      v239 = sub_1AC215C90;
      v240 = v220;
      sub_1AC213F4C(&v239, &v243, &v242, &v241);
      v175 = 0;
      v176 = 0;
      v239 = sub_1AC215C90;
      v240 = v221;
      sub_1AC213F4C(&v239, &v243, &v242, &v241);
      v173 = 0;
      v174 = 0;
      v239 = sub_1AC270F64;
      v240 = v226;
      sub_1AC213F4C(&v239, &v243, &v242, &v241);
      v171 = 0;
      v172 = 0;
      _os_log_impl(&dword_1AC1C3000, v211, v212, "%s Headgesture detected: %hhu", v183, 0xFu);
      sub_1AC213F98(v185, 0, v184);
      sub_1AC213F98(v188, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v182 = v171;
    }
  }

  else
  {
    v35 = v194;

    v182 = v35;
  }

  v167 = v182;

  v168 = *(v199 + 8);
  v169 = (v199 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v168(v204, v197);
  v170 = [v210 detectedHeadGesture];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v161 = Strong;
    v36 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    v37 = v193;
    v38 = &v161[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
    *(v193 + 19) = *&v161[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
    v39 = *(v38 + 1);
    v40 = *(v38 + 2);
    v41 = *(v38 + 3);
    v288 = v38[64];
    *(v37 + 22) = v41;
    *(v37 + 21) = v40;
    *(v37 + 20) = v39;
    v162 = v287;
    sub_1AC27F49C(v287, v245);

    v244 = sub_1AC2761AC();
    v163 = v244;
    v164 = HIBYTE(v244);
    sub_1AC27F6BC(v162);
    v165 = v163;
    v166 = v164;
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
    v165 = 0;
    v166 = 1;
  }

  v160 = v282;
  v280 = v170;
  v281 = 0;
  v282[0] = v165;
  v282[1] = v166 & 1;
  v246 = v170;
  v247 = 0;
  if (v166)
  {
    v159 = 0;
  }

  else
  {
    v245[73] = v246;
    v245[72] = *v160;
    v158 = type metadata accessor for AADetectedHeadGesture(0);
    sub_1AC281510();
    v159 = sub_1AC30A89C();
  }

  if ((v159 & 1) == 0)
  {
    v67 = v200;
    v68 = sub_1AC274D88();
    v208(v67, v68, v197);
    v118 = sub_1AC309E4C();
    v102 = v118;
    v117 = sub_1AC30AD2C();
    v103 = v117;
    v104 = 17;
    v109 = 7;
    v112 = swift_allocObject();
    v105 = v112;
    v106 = 32;
    *(v112 + 16) = 32;
    v69 = swift_allocObject();
    v70 = v106;
    v113 = v69;
    v107 = v69;
    *(v69 + 16) = 8;
    v108 = v70;
    v71 = swift_allocObject();
    v110 = v71;
    *(v71 + 16) = sub_1AC27ADFC;
    *(v71 + 24) = 0;
    v72 = swift_allocObject();
    v73 = v110;
    v116 = v72;
    v111 = v72;
    *(v72 + 16) = sub_1AC215C98;
    *(v72 + 24) = v73;
    v114 = sub_1AC30B18C();
    v115 = v74;

    v75 = v112;
    v76 = v115;
    *v115 = sub_1AC215C90;
    v76[1] = v75;

    v77 = v113;
    v78 = v115;
    v115[2] = sub_1AC215C90;
    v78[3] = v77;

    v79 = v115;
    v80 = v116;
    v115[4] = sub_1AC215CA4;
    v79[5] = v80;
    sub_1AC206300();

    if (os_log_type_enabled(v118, v117))
    {
      v82 = v167;
      v95 = sub_1AC30AE6C();
      v92 = v95;
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v96 = sub_1AC213EE4(0, v93, v93);
      v94 = v96;
      v98 = 1;
      v97 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v279 = v95;
      v278 = v96;
      v277 = v97;
      v99 = &v279;
      sub_1AC213F38(2, &v279);
      sub_1AC213F38(v98, v99);
      v275 = sub_1AC215C90;
      v276 = v105;
      sub_1AC213F4C(&v275, v99, &v278, &v277);
      v100 = v82;
      v101 = v82;
      if (v82)
      {
        v90 = 0;

        __break(1u);
      }

      else
      {
        v275 = sub_1AC215C90;
        v276 = v107;
        sub_1AC213F4C(&v275, &v279, &v278, &v277);
        v88 = 0;
        v89 = 0;
        v275 = sub_1AC215CA4;
        v276 = v111;
        sub_1AC213F4C(&v275, &v279, &v278, &v277);
        v86 = 0;
        v87 = 0;
        _os_log_impl(&dword_1AC1C3000, v102, v103, "%s Headgesture detected not match:", v92, 0xCu);
        sub_1AC213F98(v94, 0, v93);
        sub_1AC213F98(v97, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v91 = v86;
      }
    }

    else
    {
      v83 = v167;

      v91 = v83;
    }

    v85 = v91;

    v168(v200, v197);
    return v85;
  }

  v155 = &v274;
  swift_beginAccess();
  v157 = swift_unknownObjectWeakLoadStrong();
  v156 = v157;
  swift_endAccess();
  if (!v157)
  {
    return v167;
  }

  v154 = v156;
  v152 = v156;
  v273 = v156;
  v42 = v195;
  v153 = [v195 isEnabled];

  if (v153)
  {

    return v167;
  }

  v43 = v195;
  [v195 setEnabled_];

  v272 = sub_1AC2763A8();
  if (v272)
  {
    v151 = v272;
    v44 = v272;
    sub_1AC206988(&v272);
    type metadata accessor for AAHeadGestureUpdateFlags(0);
    sub_1AC30B18C();
    *v45 = 1;
    v45[1] = 2;
    v45[2] = 4;
    sub_1AC206300();
    v150 = v46;
    sub_1AC2803D8();
    sub_1AC30AF2C();
    [v151 setHeadGestureUpdateFlags_];
  }

  else
  {
    sub_1AC206988(&v272);
  }

  v47 = v202;
  v48 = sub_1AC274D88();
  v208(v47, v48, v197);
  v148 = sub_1AC309E4C();
  v145 = v148;
  v147 = sub_1AC30AD2C();
  v146 = v147;
  v149 = sub_1AC30B18C();
  if (os_log_type_enabled(v148, v147))
  {
    v49 = v167;
    v136 = sub_1AC30AE6C();
    v132 = v136;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v134 = 0;
    v137 = sub_1AC213EE4(0, v133, v133);
    v135 = v137;
    v138 = sub_1AC213EE4(v134, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v252 = v136;
    v251 = v137;
    v250 = v138;
    v139 = 0;
    v140 = &v252;
    sub_1AC213F38(0, &v252);
    sub_1AC213F38(v139, v140);
    v249 = v149;
    v141 = &v85;
    MEMORY[0x1EEE9AC00](&v85);
    v142 = &v85 - 6;
    *(&v85 - 4) = v50;
    *(&v85 - 3) = &v251;
    *(&v85 - 2) = &v250;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v144 = v49;
    if (v49)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v145, v146, "HG Callback: button enabled == true, setting mute: [.headGesture, .audioFeedback, .muteAudioFeedback].", v132, 2u);
      v130 = 0;
      sub_1AC213F98(v135, 0, v133);
      sub_1AC213F98(v138, v130, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v131 = v144;
    }
  }

  else
  {

    v131 = v167;
  }

  v129 = v131;

  v168(v202, v197);
  v51 = v193;
  v52 = &v152[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  *v193 = *&v152[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType];
  v53 = *(v52 + 1);
  v54 = *(v52 + 2);
  v55 = *(v52 + 3);
  v262 = v52[64];
  *(v51 + 3) = v55;
  *(v51 + 2) = v54;
  *(v51 + 1) = v53;
  sub_1AC27F49C(v261, &v260);
  v56 = v193;
  *(v193 + 5) = *v193;
  v57 = *(v56 + 1);
  v58 = *(v56 + 2);
  v59 = *(v56 + 3);
  v271 = v262;
  *(v56 + 8) = v59;
  *(v56 + 7) = v58;
  *(v56 + 6) = v57;
  if (v271 == 2)
  {
    sub_1AC27F804(v263, v264, v265, v266, v267, v268, v269, v270);
    v60 = v152;
    v128 = [v152 navigationItem];

    [v128 setLeftBarButtonItem_];
  }

  else
  {
    sub_1AC27F6BC(v261);
  }

  v61 = sub_1AC27BD2C();
  v62 = v152;
  v119 = v61;
  [v61 setAlpha_];

  v63 = v62;
  v122 = 0x1FB774000uLL;
  v121 = [v62 0x1FB774AF8];

  v120 = sub_1AC27BD2C();
  [v121 addSubview_];

  v124 = sub_1AC27BD2C();
  v64 = v152;
  v123 = [v152 (v122 + 2808)];

  [v124 pinToOther_];
  v125 = objc_opt_self();
  v65 = v152;
  v66 = swift_allocObject();
  *(v66 + 16) = v152;
  v258 = sub_1AC28140C;
  v259 = v66;
  v253 = MEMORY[0x1E69E9820];
  v254 = 1107296256;
  v255 = 0;
  v256 = sub_1AC24D45C;
  v257 = &block_descriptor_163;
  v126 = _Block_copy(&v253);

  [v125 animateWithDuration:v126 animations:0.5];
  _Block_release(v126);

  return v129;
}

double sub_1AC27AE50(void *a1)
{
  v5 = sub_1AC27BD2C();
  [v5 0x1FAFCBB78];
  MEMORY[0x1E69E5920](v5);
  v6 = sub_1AC27B904();
  [v6 0x1FAFCBB78];
  MEMORY[0x1E69E5920](v6);
  v7 = [a1 view];
  *&v2 = MEMORY[0x1E69E5920](a1).n128_u64[0];
  if (v7)
  {
    v4 = v7;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/BobbleTutorialController.swift", 50, 2, 249, 0);
    __break(1u);
  }

  [v4 setNeedsLayout];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

void sub_1AC27AFCC(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = a1;
  v47 = 0;
  v68 = 0;
  v67 = 0;
  v35 = 0;
  v44 = sub_1AC309E6C();
  v38 = v44;
  v39 = *(v44 - 8);
  v43 = v39;
  v40 = v39;
  MEMORY[0x1EEE9AC00](v36);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  v68 = v4;
  v42 = v5 + 16;
  v67 = v5 + 16;
  v6 = sub_1AC274D88();
  (*(v43 + 16))(v3, v6, v44);
  v49 = sub_1AC309E4C();
  v45 = v49;
  v48 = sub_1AC30AD2C();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v50 = sub_1AC30B18C();
  if (os_log_type_enabled(v49, v48))
  {
    v7 = v35;
    v26 = sub_1AC30AE6C();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v24 = 0;
    v27 = sub_1AC213EE4(0, v23, v23);
    v25 = v27;
    v28 = sub_1AC213EE4(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v54 = v26;
    v53 = v27;
    v52 = v28;
    v29 = 0;
    v30 = &v54;
    sub_1AC213F38(0, &v54);
    sub_1AC213F38(v29, v30);
    v51 = v50;
    v31 = &v14;
    MEMORY[0x1EEE9AC00](&v14);
    v32 = (&v14 - 6);
    *(&v14 - 4) = v8;
    *(&v14 - 3) = &v53;
    *(&v14 - 2) = &v52;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v34 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v45, v46, "Invalidate device manager and dismissing.", v22, 2u);
      v20 = 0;
      sub_1AC213F98(v25, 0, v23);
      sub_1AC213F98(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v40 + 8))(v41, v38);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v9 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    v55 = sub_1AC2763A8();
    if (v55)
    {
      v18 = v55;
      v10 = v55;
      sub_1AC206988(&v55);

      [v18 setInvalidationHandler_];
    }

    else
    {
      sub_1AC206988(&v55);
    }
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  swift_beginAccess();
  v65 = swift_unknownObjectWeakLoadStrong();
  if (v65)
  {
    v17 = v65;
    v11 = v65;
    sub_1AC206988(&v65);
    swift_endAccess();
    v56 = sub_1AC2763A8();
    if (v56)
    {
      v16 = v56;
      v12 = v56;
      sub_1AC206988(&v56);

      [v16 invalidate];
    }

    else
    {
      sub_1AC206988(&v56);
    }
  }

  else
  {
    sub_1AC206988(&v65);
    swift_endAccess();
  }

  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v15 = v64;
    v13 = v64;
    sub_1AC206988(&v64);
    swift_endAccess();

    v62 = sub_1AC281590;
    v63 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = 0;
    v60 = sub_1AC24D45C;
    v61 = &block_descriptor_167;
    v14 = _Block_copy(&aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    sub_1AC206988(&v64);
    swift_endAccess();
  }
}

double sub_1AC27B768(uint64_t a1)
{
  v5[4] = a1 + 16;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v3 = v5[0];
    MEMORY[0x1E69E5928](v5[0]);
    sub_1AC206988(v5);
    swift_endAccess();
    v2 = sub_1AC276650(v4);
    sub_1AC309EAC();
    sub_1AC223158();
    sub_1AC27B89C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C720, &qword_1AC312D70);
    sub_1AC30AC2C();
    v2();
    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  else
  {
    sub_1AC206988(v5);
    swift_endAccess();
  }

  return result;
}

void *sub_1AC27B904()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topAsset);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC27BA10(v6);
  MEMORY[0x1E69E5928](v4);
  v3 = &v6[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topAsset];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

void *sub_1AC27BA10(char *a1)
{
  v8 = a1;
  type metadata accessor for BobbleVideoLoopPlayer(0);
  memcpy(__dst, &a1[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_bobblePaneType], 0x41uLL);
  sub_1AC27F49C(__dst, v7);
  v4 = sub_1AC2762A8();
  sub_1AC27F6BC(__dst);
  v3 = [a1 traitCollection];
  v5 = [v3 userInterfaceStyle];
  MEMORY[0x1E69E5920](v3);
  v6 = sub_1AC265A48(v4, v5, 0.0, 0.0, 0.0, 0.0);
  sub_1AC309BCC();
  MEMORY[0x1E69E5928](v6);
  sub_1AC309BBC();
  MEMORY[0x1E69E5920](v6);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v6);
  return v6;
}

double sub_1AC27BBB8(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topAsset);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC27BC50(void **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC27B904();
  return sub_1AC27BCAC;
}

double sub_1AC27BCAC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC27BBB8(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC27BBB8(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

id sub_1AC27BD2C()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topSucessMark);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x1E69E5928](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_1AC27BE34();
  MEMORY[0x1E69E5928](v4);
  v3 = (v6 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topSucessMark);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  return v4;
}

id sub_1AC27BE34()
{
  sub_1AC2813A0();
  v20 = sub_1AC20D658();
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1AC2670EC();
  sub_1AC20D404();
  v0 = sub_1AC30A9DC("checkmark.circle", 16, 1);
  v21 = sub_1AC27C2EC(v0, v1);
  if (v21)
  {
    v17 = [objc_opt_self() systemGreenColor];
    v18 = [v21 imageWithTintColor_renderingMode_];
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v21);
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v22 = sub_1AC267150(v19);
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 addSubview_];
  v15 = objc_opt_self();
  sub_1AC256554();
  sub_1AC30B18C();
  v14 = v2;
  v5 = [v22 0x1FBB23FD2];
  v4 = [v20 0x1FBB23FD2];
  v6 = [v5 0x1FBB28F65];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  *v14 = v6;
  v8 = [v22 0x1FBB23FE0];
  v7 = [v20 0x1FBB23FE0];
  v9 = [v8 0x1FBB28F65];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  v14[1] = v9;
  v10 = [v22 widthAnchor];
  MEMORY[0x1E69E5920](v22);
  v11 = [v10 0x1FBB28FF1];
  MEMORY[0x1E69E5920](v10);
  v14[2] = v11;
  v12 = [v22 heightAnchor];
  MEMORY[0x1E69E5920](v22);
  v13 = [v12 0x1FBB28FF1];
  MEMORY[0x1E69E5920](v12);
  v14[3] = v13;
  sub_1AC206300();
  v16 = sub_1AC30AAFC();

  [v15 activateConstraints_];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v22);
  return v20;
}

id sub_1AC27C2EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC30A91C();
  v4 = [swift_getObjCClassFromMetadata() systemImageNamed_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

double sub_1AC27C360(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController____lazy_storage___topSucessMark);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double (*sub_1AC27C3F8(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC27BD2C();
  return sub_1AC27C454;
}

double sub_1AC27C454(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC27C360(*a1);
  }

  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1AC27C360(v3);
  *&result = MEMORY[0x1E69E5920](*a1).n128_u64[0];
  return result;
}

void sub_1AC27C4D4()
{
  v36[1] = 0;
  sub_1AC2804C8();
  v0 = sub_1AC20D658();
  sub_1AC276418(v0);
  v36[0] = sub_1AC2763A8();
  if (v36[0])
  {
    v10 = v36[0];
    MEMORY[0x1E69E5928](v36[0]);
    sub_1AC206988(v36);
    type metadata accessor for AAHeadGestureUpdateFlags(0);
    sub_1AC30B18C();
    *v1 = 1;
    v1[1] = 2;
    v1[2] = 4;
    sub_1AC206300();
    sub_1AC2803D8();
    sub_1AC30AF2C();
    [v10 setHeadGestureUpdateFlags_];
    MEMORY[0x1E69E5920](v10);
  }

  else
  {
    sub_1AC206988(v36);
  }

  v35 = sub_1AC2763A8();
  if (v35)
  {
    v9 = v35;
    MEMORY[0x1E69E5928](v35);
    sub_1AC206988(&v35);
    v17 = sub_1AC27C9C8;
    v18 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = 0;
    v15 = sub_1AC24D45C;
    v16 = &block_descriptor_19;
    v8 = _Block_copy(&aBlock);
    [v9 setInterruptionHandler_];
    _Block_release(v8);
    MEMORY[0x1E69E5920](v9);
  }

  else
  {
    sub_1AC206988(&v35);
  }

  v34 = sub_1AC2763A8();
  if (v34)
  {
    v7 = v34;
    MEMORY[0x1E69E5928](v34);
    sub_1AC206988(&v34);
    v5 = swift_allocObject();
    (MEMORY[0x1E69E5928])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x1E69E5920])();

    v24 = sub_1AC280598;
    v25 = v5;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = 0;
    v22 = sub_1AC24D45C;
    v23 = &block_descriptor_16;
    v6 = _Block_copy(&v19);

    [v7 setInvalidationHandler_];
    _Block_release(v6);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    sub_1AC206988(&v34);
  }

  v33 = sub_1AC2763A8();
  if (v33)
  {
    v4 = v33;
    MEMORY[0x1E69E5928](v33);
    sub_1AC206988(&v33);
    v2 = swift_allocObject();
    (MEMORY[0x1E69E5928])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x1E69E5920])();

    v31 = sub_1AC28052C;
    v32 = v2;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = 0;
    v29 = sub_1AC27E158;
    v30 = &block_descriptor_12;
    v3 = _Block_copy(&v26);

    [v4 activateWithCompletion_];
    _Block_release(v3);
    MEMORY[0x1E69E5920](v4);
  }

  else
  {
    sub_1AC206988(&v33);
  }
}

uint64_t sub_1AC27C9C8()
{
  v31 = sub_1AC27CF20;
  v34 = sub_1AC215C98;
  v36 = sub_1AC215C90;
  v38 = sub_1AC215C90;
  v41 = sub_1AC215CA4;
  v24 = 0;
  v29 = sub_1AC309E6C();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v25 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v0 = v15 - v25;
  v26 = v15 - v25;
  v1 = sub_1AC274D88();
  (*(v27 + 16))(v0, v1, v29);
  v45 = sub_1AC309E4C();
  v46 = sub_1AC30AD1C();
  v30 = 17;
  v33 = 7;
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v32 = 32;
  v2 = swift_allocObject();
  v35 = v2;
  *(v2 + 16) = v31;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  v4 = v35;
  v42 = v3;
  *(v3 + 16) = v34;
  *(v3 + 24) = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v40 = sub_1AC30B18C();
  v43 = v5;

  v6 = v37;
  v7 = v43;
  *v43 = v36;
  v7[1] = v6;

  v8 = v39;
  v9 = v43;
  v43[2] = v38;
  v9[3] = v8;

  v10 = v42;
  v11 = v43;
  v43[4] = v41;
  v11[5] = v10;
  sub_1AC206300();

  if (os_log_type_enabled(v45, v46))
  {
    v12 = v24;
    v17 = sub_1AC30AE6C();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v18 = sub_1AC213EE4(0, v16, v16);
    v19 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v20 = &v51;
    v51 = v17;
    v21 = &v50;
    v50 = v18;
    v22 = &v49;
    v49 = v19;
    sub_1AC213F38(2, &v51);
    sub_1AC213F38(1, v20);
    v47 = v36;
    v48 = v37;
    sub_1AC213F4C(&v47, v20, v21, v22);
    v23 = v12;
    if (v12)
    {

      __break(1u);
    }

    else
    {
      v47 = v38;
      v48 = v39;
      sub_1AC213F4C(&v47, &v51, &v50, &v49);
      v15[0] = 0;
      v47 = v41;
      v48 = v42;
      sub_1AC213F4C(&v47, &v51, &v50, &v49);
      _os_log_impl(&dword_1AC1C3000, v45, v46, "%s aaDeviceManager interrupted!", v17, 0xCu);
      sub_1AC213F98(v18, 0, v16);
      sub_1AC213F98(v19, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v13 = MEMORY[0x1E69E5920](v45);
  return (*(v27 + 8))(v26, v29, v13);
}

double sub_1AC27CF50(uint64_t a1)
{
  v34 = a1;
  v41 = sub_1AC27CF20;
  v44 = sub_1AC215C98;
  v46 = sub_1AC215C90;
  v48 = sub_1AC215C90;
  v51 = sub_1AC215CA4;
  v64 = 0;
  v33 = 0;
  v39 = sub_1AC309E6C();
  v37 = *(v39 - 8);
  v38 = v39 - 8;
  v35 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v1 = &v18 - v35;
  v36 = &v18 - v35;
  v64 = v2 + 16;
  v3 = sub_1AC274D88();
  (*(v37 + 16))(v1, v3, v39);
  v55 = sub_1AC309E4C();
  v56 = sub_1AC30AD1C();
  v40 = 17;
  v43 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  v42 = 32;
  v4 = swift_allocObject();
  v45 = v4;
  *(v4 + 16) = v41;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v6 = v45;
  v52 = v5;
  *(v5 + 16) = v44;
  *(v5 + 24) = v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v50 = sub_1AC30B18C();
  v53 = v7;

  v8 = v47;
  v9 = v53;
  *v53 = v46;
  v9[1] = v8;

  v10 = v49;
  v11 = v53;
  v53[2] = v48;
  v11[3] = v10;

  v12 = v52;
  v13 = v53;
  v53[4] = v51;
  v13[5] = v12;
  sub_1AC206300();

  if (os_log_type_enabled(v55, v56))
  {
    v14 = v33;
    v26 = sub_1AC30AE6C();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v27 = sub_1AC213EE4(0, v25, v25);
    v28 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v29 = &v61;
    v61 = v26;
    v30 = &v60;
    v60 = v27;
    v31 = &v59;
    v59 = v28;
    sub_1AC213F38(2, &v61);
    sub_1AC213F38(1, v29);
    v57 = v46;
    v58 = v47;
    sub_1AC213F4C(&v57, v29, v30, v31);
    v32 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v57 = v48;
      v58 = v49;
      sub_1AC213F4C(&v57, &v61, &v60, &v59);
      v24 = 0;
      v57 = v51;
      v58 = v52;
      sub_1AC213F4C(&v57, &v61, &v60, &v59);
      _os_log_impl(&dword_1AC1C3000, v55, v56, "%s aaDeviceManager invalidated! reconstructing!", v26, 0xCu);
      sub_1AC213F98(v27, 0, v25);
      sub_1AC213F98(v28, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v15 = MEMORY[0x1E69E5920](v55);
  (*(v37 + 8))(v36, v39, v15);
  v23 = v34 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v22 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    sub_1AC2804C8();
    v16 = sub_1AC20D658();
    sub_1AC276418(v16);
    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v20 = v34 + 16;
  swift_beginAccess();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v18 = &v62;
    v19 = v62;
    MEMORY[0x1E69E5928](v62);
    sub_1AC206988(v18);
    swift_endAccess();
    sub_1AC27C4D4();
    *&result = MEMORY[0x1E69E5920](v19).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&v62);
    swift_endAccess();
  }

  return result;
}

double sub_1AC27D690(void *a1, uint64_t a2)
{
  v80 = a1;
  v79 = a2;
  v68 = sub_1AC27CF20;
  v69 = sub_1AC215C98;
  v70 = sub_1AC248104;
  v71 = sub_1AC281394;
  v72 = sub_1AC215C90;
  v73 = sub_1AC215C90;
  v74 = sub_1AC215CA4;
  v75 = sub_1AC215C90;
  v76 = sub_1AC215C90;
  v77 = sub_1AC2482A8;
  v94 = 0;
  v93 = 0;
  v78 = 0;
  v81 = sub_1AC309E6C();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x1EEE9AC00](v80);
  v85 = &v30 - v84;
  v94 = v3;
  v93 = v4 + 16;
  v92 = v3;
  v67 = v3 == 0;
  if (v3)
  {
    v5 = v85;
    v6 = sub_1AC274D88();
    (*(v82 + 16))(v5, v6, v81);
    v7 = v80;
    v53 = 7;
    v54 = swift_allocObject();
    *(v54 + 16) = v80;
    sub_1AC20BEE0();

    v65 = sub_1AC309E4C();
    v66 = sub_1AC30AD1C();
    v50 = 17;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    v51 = 8;
    *(v57 + 16) = 8;
    v52 = 32;
    v8 = swift_allocObject();
    v49 = v8;
    *(v8 + 16) = v68;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v49;
    v58 = v9;
    *(v9 + 16) = v69;
    *(v9 + 24) = v10;
    v59 = swift_allocObject();
    *(v59 + 16) = 64;
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    v11 = swift_allocObject();
    v12 = v54;
    v55 = v11;
    *(v11 + 16) = v70;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v55;
    v62 = v13;
    *(v13 + 16) = v71;
    *(v13 + 24) = v14;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v61 = sub_1AC30B18C();
    v63 = v15;

    v16 = v56;
    v17 = v63;
    *v63 = v72;
    v17[1] = v16;

    v18 = v57;
    v19 = v63;
    v63[2] = v73;
    v19[3] = v18;

    v20 = v58;
    v21 = v63;
    v63[4] = v74;
    v21[5] = v20;

    v22 = v59;
    v23 = v63;
    v63[6] = v75;
    v23[7] = v22;

    v24 = v60;
    v25 = v63;
    v63[8] = v76;
    v25[9] = v24;

    v26 = v62;
    v27 = v63;
    v63[10] = v77;
    v27[11] = v26;
    sub_1AC206300();

    if (os_log_type_enabled(v65, v66))
    {
      v28 = v78;
      v41 = sub_1AC30AE6C();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v40 = 1;
      v42 = sub_1AC213EE4(1, v39, v39);
      v43 = sub_1AC213EE4(v40, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v45 = &v90;
      v90 = v41;
      v46 = &v89;
      v89 = v42;
      v47 = &v88;
      v88 = v43;
      v44 = 2;
      sub_1AC213F38(2, &v90);
      sub_1AC213F38(v44, v45);
      v86 = v72;
      v87 = v56;
      sub_1AC213F4C(&v86, v45, v46, v47);
      v48 = v28;
      if (v28)
      {

        __break(1u);
      }

      else
      {
        v86 = v73;
        v87 = v57;
        sub_1AC213F4C(&v86, &v90, &v89, &v88);
        v38 = 0;
        v86 = v74;
        v87 = v58;
        sub_1AC213F4C(&v86, &v90, &v89, &v88);
        v37 = 0;
        v86 = v75;
        v87 = v59;
        sub_1AC213F4C(&v86, &v90, &v89, &v88);
        v36 = 0;
        v86 = v76;
        v87 = v60;
        sub_1AC213F4C(&v86, &v90, &v89, &v88);
        v35 = 0;
        v86 = v77;
        v87 = v62;
        sub_1AC213F4C(&v86, &v90, &v89, &v88);
        _os_log_impl(&dword_1AC1C3000, v65, v66, "%s unable to activate bobble gesture detection %@", v41, 0x16u);
        v34 = 1;
        sub_1AC213F98(v42, 1, v39);
        sub_1AC213F98(v43, v34, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v29 = MEMORY[0x1E69E5920](v65);
    (*(v82 + 8))(v85, v81, v29);
    v33 = v79 + 16;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      p_Strong = &Strong;
      v32 = Strong;
      MEMORY[0x1E69E5928](Strong);
      sub_1AC206988(p_Strong);
      swift_endAccess();
      sub_1AC276418(0);
      *&result = MEMORY[0x1E69E5920](v32).n128_u64[0];
    }

    else
    {
      sub_1AC206988(&Strong);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AC27E158(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);

  v2 = MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5(v2);
}

id sub_1AC27E1FC()
{
  v18 = v0;
  v8 = OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager;
  v9 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager);
  swift_beginAccess();
  if (*v9)
  {
    v6 = *&v7[v8];
    MEMORY[0x1E69E5928](v6);
    swift_endAccess();
    v15 = nullsub_1;
    v16 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = 0;
    v13 = sub_1AC24D45C;
    v14 = &block_descriptor_22;
    v5 = _Block_copy(&aBlock);
    [v6 setInvalidationHandler_];
    _Block_release(v5);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    swift_endAccess();
  }

  v4 = &v7[OBJC_IVAR____TtC19HeadphoneSettingsUI24BobbleTutorialController_aaDeviceManager];
  swift_beginAccess();
  if (*v4)
  {
    v3 = *v4;
    MEMORY[0x1E69E5928](*v4);
    swift_endAccess();
    [v3 invalidate];
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    swift_endAccess();
  }

  v1 = type metadata accessor for BobbleTutorialController();
  v17.receiver = v7;
  v17.super_class = v1;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

id sub_1AC27E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1AC30A91C();
  if (a4)
  {
    v12 = sub_1AC30A91C();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1AC30A91C();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id sub_1AC27E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1AC30A91C();
  if (a4)
  {
    v8 = sub_1AC30A91C();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

double sub_1AC27EB64(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x1E69E5920](v2);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC27EBD8()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t sub_1AC27EC04(uint64_t a1)
{

  *(v1 + 56) = a1;
}

void sub_1AC27EC60()
{
  v45 = sub_1AC27F3DC;
  v46 = sub_1AC215C98;
  v47 = sub_1AC215C90;
  v48 = sub_1AC215C90;
  v49 = sub_1AC215CA4;
  v64 = 0;
  v50 = 0;
  v58 = 0;
  v57 = 0;
  v51 = sub_1AC309E6C();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v17 - v54;
  v64 = v0;
  v56 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))(v1);
  if (v56)
  {
    v43 = v56;
    v42 = v56;
    v58 = v56;
    v38 = 0;
    v40 = sub_1AC280890();
    type metadata accessor for BobbleTutorialController();
    v39 = v65;
    sub_1AC276050(v65);
    MEMORY[0x1E69E5928](v42);
    v2 = sub_1AC2766F4(v39, v38, v42);
    v41 = sub_1AC27F40C(v2);
    v57 = v41;
    [v44 presentViewController_animated_completion_];
    MEMORY[0x1E69E5920](v41);
    MEMORY[0x1E69E5920](v42);
  }

  else
  {
    v3 = v55;
    v4 = sub_1AC274D88();
    (*(v52 + 16))(v3, v4, v51);
    v36 = sub_1AC309E4C();
    v37 = sub_1AC30AD1C();
    v26 = 17;
    v28 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v27 = 32;
    v5 = swift_allocObject();
    v29 = v5;
    *(v5 + 16) = v45;
    *(v5 + 24) = 0;
    v6 = swift_allocObject();
    v7 = v29;
    v33 = v6;
    *(v6 + 16) = v46;
    *(v6 + 24) = v7;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v32 = sub_1AC30B18C();
    v34 = v8;

    v9 = v30;
    v10 = v34;
    *v34 = v47;
    v10[1] = v9;

    v11 = v31;
    v12 = v34;
    v34[2] = v48;
    v12[3] = v11;

    v13 = v33;
    v14 = v34;
    v34[4] = v49;
    v14[5] = v13;
    sub_1AC206300();

    if (os_log_type_enabled(v36, v37))
    {
      v15 = v50;
      v19 = sub_1AC30AE6C();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v20 = sub_1AC213EE4(0, v18, v18);
      v21 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v22 = &v63;
      v63 = v19;
      v23 = &v62;
      v62 = v20;
      v24 = &v61;
      v61 = v21;
      sub_1AC213F38(2, &v63);
      sub_1AC213F38(1, v22);
      v59 = v47;
      v60 = v30;
      sub_1AC213F4C(&v59, v22, v23, v24);
      v25 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v59 = v48;
        v60 = v31;
        sub_1AC213F4C(&v59, &v63, &v62, &v61);
        v17 = 0;
        v59 = v49;
        v60 = v33;
        sub_1AC213F4C(&v59, &v63, &v62, &v61);
        _os_log_impl(&dword_1AC1C3000, v36, v37, "%s Unable to present tutorial with out depedencies", v19, 0xCu);
        sub_1AC213F98(v20, 0, v18);
        sub_1AC213F98(v21, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x1E69E5920](v36);
    (*(v52 + 8))(v55, v51, v16);
  }
}

uint64_t sub_1AC27F49C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = *(a1 + 64);
  sub_1AC27F560(*a1, v4, v5, v6, v7, v8, v9, v10, v11);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_1AC27F560(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a9 || a9 == 1 || a9 == 2)
  {
    return sub_1AC27F650(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_1AC27F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    MEMORY[0x1E69E5928](a7);
  }

  return result;
}

uint64_t sub_1AC27F714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a9 || a9 == 1 || a9 == 2)
  {
    return sub_1AC27F804(result, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t sub_1AC27F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    MEMORY[0x1E69E5920](a7);
  }

  return result;
}

id sub_1AC27F870(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a3;
  v17 = a2;
  v18 = a1;
  if (a2[3])
  {
    v10 = v17[3];
    __swift_project_boxed_opaque_existential_1(v17, v10);
    v8 = *(v10 - 8);
    v9 = v8;
    v12 = v6;
    v3 = MEMORY[0x1EEE9AC00](v6);
    v11 = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v3);
    v13 = sub_1AC30B19C();
    (*(v9 + 8))(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v6[1] = v14;
  v7 = [v15 initWithBarButtonSystemItem:v18 target:? action:?];
  swift_unknownObjectRelease();
  return v7;
}

id sub_1AC27F9DC(uint64_t a1)
{
  v4 = [v1 initWithRootViewController_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1AC27FAC4(uint64_t a1)
{
  sub_1AC281314();
  sub_1AC2656B4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC27FCC8(uint64_t a1, uint64_t a2)
{
  sub_1AC281314();
  sub_1AC2656B4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC27FD0C(uint64_t a1, uint64_t a2)
{
  sub_1AC281314();
  sub_1AC2656B4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC27FD50(uint64_t a1, uint64_t a2)
{
  sub_1AC281314();
  sub_1AC2656B4();
  return sub_1AC30B2CC();
}

uint64_t sub_1AC27FD94@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AC27FDDC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AC27FDDC(int a1)
{
  LODWORD(v2) = a1;
  BYTE4(v2) = 0;
  return v2;
}

uint64_t sub_1AC27FE14@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1AC27FE44(*v1);
  *a1 = result;
  return result;
}

void *sub_1AC27FEEC(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v3 = a1[1];

    a2[1] = v3;
    a2[2] = a1[2];
    v4 = a1[3];

    a2[3] = v4;
    a2[4] = a1[4];
    v5 = a1[5];

    a2[5] = v5;
    v6 = a1[6];
    MEMORY[0x1E69E5928](v6);
    a2[6] = v6;
    v7 = a1[7];

    a2[7] = v7;
  }

  else
  {
    memcpy(a2, a1, 0x40uLL);
  }

  return a2;
}

void *sub_1AC27FFEC(void *a1)
{

  MEMORY[0x1E69E5920](a1[6]);

  return a1;
}

unint64_t type metadata accessor for CBDevicePlacement(uint64_t a1)
{
  v5 = qword_1EB54C6E0;
  if (!qword_1EB54C6E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C6E0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC2800E8()
{
  v2 = qword_1EB54C6A0;
  if (!qword_1EB54C6A0)
  {
    type metadata accessor for CBDevicePlacement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC280168()
{
  v2 = qword_1EB54C6A8;
  if (!qword_1EB54C6A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C6A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2801D4()
{
  v2 = qword_1EB54C6B0;
  if (!qword_1EB54C6B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C6B0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1AC280240(void *a1)
{
  if (a1[1])
  {

    MEMORY[0x1E69E5920](a1[6]);
  }

  return a1;
}

unint64_t sub_1AC2802C0()
{
  v2 = qword_1EB54C6B8;
  if (!qword_1EB54C6B8)
  {
    sub_1AC30AD8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for AAHeadGestureUpdateFlags(uint64_t a1)
{
  v5 = qword_1EB54C6D8;
  if (!qword_1EB54C6D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C6D8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC2803D8()
{
  v2 = qword_1EB54C6C0;
  if (!qword_1EB54C6C0)
  {
    type metadata accessor for AAHeadGestureUpdateFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2804C8()
{
  v2 = qword_1EB54C6C8;
  if (!qword_1EB54C6C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C6C8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_destroy_helper_11()
{
}

{
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC2806CC(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for Attributes(0);
    v1 = sub_1AC30AB3C();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1AC280778(uint64_t (*a1)(void))
{
  v3 = a1();
  if (v3)
  {
    v1 = v3;
    v4 = v3;
    sub_1AC280830(&v4, &v5);
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1AC280830@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v5 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v5);
  *a2 = v5;
  return swift_unknownObjectRelease();
}

unint64_t sub_1AC280890()
{
  v2 = qword_1EB54C6D0;
  if (!qword_1EB54C6D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C6D0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_19HeadphoneSettingsUI16TutorialProviderVSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_1AC280A68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 65))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 64) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC280B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 65);
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 64) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AC280D80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC280EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1AC2810CC()
{
  v2 = qword_1EB54C6E8;
  if (!qword_1EB54C6E8)
  {
    type metadata accessor for AAHeadGestureUpdateFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC28117C()
{
  v2 = qword_1EB54C6F0;
  if (!qword_1EB54C6F0)
  {
    type metadata accessor for AAHeadGestureUpdateFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC281214()
{
  v2 = qword_1EB54C6F8;
  if (!qword_1EB54C6F8)
  {
    type metadata accessor for AAHeadGestureUpdateFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C6F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC281294()
{
  v2 = qword_1EB54C700;
  if (!qword_1EB54C700)
  {
    type metadata accessor for CBDevicePlacement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC281314()
{
  v2 = qword_1EB54C708;
  if (!qword_1EB54C708)
  {
    type metadata accessor for AAHeadGestureUpdateFlags(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2813A0()
{
  v2 = qword_1EB54C710;
  if (!qword_1EB54C710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54C710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_161(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for AADetectedHeadGesture(uint64_t a1)
{
  v5 = qword_1EB54C730;
  if (!qword_1EB54C730)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C730);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC281510()
{
  v2 = qword_1EB54C718;
  if (!qword_1EB54C718)
  {
    type metadata accessor for AADetectedHeadGesture(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C718);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_169(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for Attributes(uint64_t a1)
{
  v5 = qword_1EB54C728;
  if (!qword_1EB54C728)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54C728);
      return v2;
    }
  }

  return v5;
}

uint64_t block_copy_helper_172(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2817C0()
{
  v2 = qword_1EB54C738;
  if (!qword_1EB54C738)
  {
    type metadata accessor for AADetectedHeadGesture(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C738);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC281858()
{
  sub_1AC28C204();
  v4 = sub_1AC20D658();
  [v4 setNumberOfLines_];
  v0 = sub_1AC30A9DC("BOBBLE_TUTORIAL_INTRO_BODY", 26, 1);
  sub_1AC274FA8(v0, v1);
  v3 = sub_1AC30A91C();

  [v4 setText_];
  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setUserInteractionEnabled_];
  return v4;
}

uint64_t sub_1AC281988()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC2819D0()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC281A40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void sub_1AC281B44(uint64_t a1)
{
  v34 = a1;
  v33 = v1;
  MEMORY[0x1E69E5928](v1);
  v26 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];
  MEMORY[0x1E69E5920](v26);
  MEMORY[0x1E69E5920](v1);
  [v1 setSelectionStyle_];
  MEMORY[0x1E69E5920](v1);
  v29 = [v1 subviews];
  sub_1AC2813A0();
  v27 = sub_1AC30AB0C();
  MEMORY[0x1E69E5920](v1);
  v32 = v27;
  v28 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
  MEMORY[0x1E69E5928](v28);
  v31[1] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750, &qword_1AC312E40);
  sub_1AC2822C8();
  sub_1AC282350();
  v30 = sub_1AC30AABC();
  MEMORY[0x1E69E5920](v28);
  sub_1AC209190(&v32);
  MEMORY[0x1E69E5920](v29);
  if (v30)
  {
    v3 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    [v3 0x1FAC9E0F8];
    [v1 0x1FAC9E0F8];
  }

  else
  {
    v24 = [v1 subviews];
    v25 = sub_1AC30AB0C();
    MEMORY[0x1E69E5920](v1);
    v31[0] = v25;
    sub_1AC30AAAC();
    sub_1AC209190(v31);
    MEMORY[0x1E69E5920](v24);
    v4 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    [v1 addSubview_];
    MEMORY[0x1E69E5920](v4);
    v22 = objc_opt_self();
    sub_1AC256554();
    sub_1AC30B18C();
    v21 = v2;
    v5 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    v7 = [v5 0x1FBBB4950];
    MEMORY[0x1E69E5920](v5);
    v6 = [v1 0x1FBBB4950];
    MEMORY[0x1E69E5920](v1);
    v8 = [v7 0x1FBB28F7ELL];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v7);
    *v21 = v8;
    v9 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    v11 = [v9 0x1FBB5C529];
    MEMORY[0x1E69E5920](v9);
    v10 = [v1 0x1FBB5C529];
    MEMORY[0x1E69E5920](v1);
    v12 = [v11 0x1FBB28F7ELL];
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    v21[1] = v12;
    v13 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    v15 = [v13 0x1FBBB59CCLL];
    MEMORY[0x1E69E5920](v13);
    v14 = [v1 0x1FBBB59CCLL];
    MEMORY[0x1E69E5920](v1);
    v16 = [v15 0x1FBB28F7ELL];
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    v21[2] = v16;
    v17 = *&v1[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label];
    v19 = [v17 0x1FBB20D25];
    MEMORY[0x1E69E5920](v17);
    v18 = [v1 0x1FBB20D25];
    MEMORY[0x1E69E5920](v1);
    v20 = [v19 0x1FBB28F7ELL];
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
    v21[3] = v20;
    sub_1AC206300();
    v23 = sub_1AC30AAFC();

    [v22 activateConstraints_];
    MEMORY[0x1E69E5920](v23);
  }
}

unint64_t sub_1AC2822C8()
{
  v2 = qword_1EB54C758;
  if (!qword_1EB54C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C750, &qword_1AC312E40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC282350()
{
  v2 = qword_1EB54C760;
  if (!qword_1EB54C760)
  {
    sub_1AC2813A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54C760);
    return WitnessTable;
  }

  return v2;
}

double sub_1AC282484(uint64_t a1)
{
  v6 = a1;
  v5 = v1;
  MEMORY[0x1E69E5928](v1);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HPSCenterContentCell();
  objc_msgSendSuper2(&v4, sel_addSubview_, a1);
  *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  return result;
}

char *sub_1AC2825A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = 0;
  v17 = a1;
  v15 = a2;
  v16 = a3;
  v14 = a4;
  v11 = OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label;
  *v11 = sub_1AC281858();
  *&v18[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_headphoneDevice] = 0;

  if (a3)
  {
    v7 = sub_1AC30A91C();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v13.receiver = v18;
  v13.super_class = type metadata accessor for HPSCenterContentCell();
  v6 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_specifier_, a1, v8, a4);
  MEMORY[0x1E69E5920](v8);
  if (v6)
  {
    MEMORY[0x1E69E5928](v6);
    v18 = v6;
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v18);
    return v6;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a4);

    return 0;
  }
}

char *sub_1AC282854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v11 = a2;
  v12 = a3;
  v8 = OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label;
  *v8 = sub_1AC281858();
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_headphoneDevice] = 0;

  if (a3)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for HPSCenterContentCell();
  v4 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v6);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v14 = v4;

  MEMORY[0x1E69E5920](v14);
  return v4;
}

char *sub_1AC282A80(uint64_t a1)
{
  v8 = 0;
  v7 = a1;
  v3 = OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_label;
  *v3 = sub_1AC281858();
  *&v8[OBJC_IVAR____TtC19HeadphoneSettingsUI20HPSCenterContentCell_headphoneDevice] = 0;
  v6.receiver = v8;
  v6.super_class = type metadata accessor for HPSCenterContentCell();
  v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);
  if (v5)
  {
    MEMORY[0x1E69E5928](v5);
    v8 = v5;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v8);
    return v5;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id sub_1AC282BDC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSCenterContentCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC282CEC()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC282DC4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC282EC8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC282F30(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC28301C()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC283084(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id BobbleSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *BobbleSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_headphoneDevice = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_viewModel] = 0;
  v8 = OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *&v14[v8] = sub_1AC30A80C();
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGestureMappingSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___tryBobbleSection] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView] = 0;
  *&v14[OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v14;
  v10.super_class = type metadata accessor for BobbleSettingsViewController();
  v4 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v14 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v14);
  return v4;
}

void sub_1AC283548()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_headphoneDevice = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_viewModel = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController_listeners;
  sub_1AC309EAC();
  sub_1AC223158();
  *v0 = sub_1AC30A80C();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGestureMappingSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___tryBobbleSection = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___movieLoopView = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___topAsset = 0;
  sub_1AC30A9DC("init(coder:) has not been implemented", 37, 1);
  sub_1AC30B06C();
  __break(1u);
}

uint64_t sub_1AC2836E8()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC2837DC(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2837DC(uint64_t a1)
{
  v6 = a1;
  v15 = 0;
  v14 = sub_1AC283A04;
  v20 = 0;
  v8 = 0;
  v11 = sub_1AC309AAC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v12 = v5 - v5[0];
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v5[1] = MEMORY[0x1E69A2B08];
  v5[2] = sub_1AC205220();
  v5[3] = v2;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v6);
  v3 = type metadata accessor for BobbleSettingsViewController();
  v7 = v19;
  v19[3] = v3;
  v19[0] = v6;
  sub_1AC20599C();
  sub_1AC309A9C();
  v16 = sub_1AC309CEC();
  (*(v9 + 8))(v12, v11);

  v17 = sub_1AC309D0C();

  v18 = sub_1AC309D2C();

  return v18;
}

uint64_t sub_1AC283A04(void *a1)
{
  type metadata accessor for HPSCenterContentCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C828, &unk_1AC312F60);
  v5 = sub_1AC30B19C();
  v2 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC283AE0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesTopTextSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC283B60(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2836E8();
  return sub_1AC283BBC;
}

void sub_1AC283BBC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC283AE0(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC283AE0(*a1);
  }
}

uint64_t sub_1AC283C28()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC283D1C(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC283D1C(uint64_t a1)
{
  v14 = a1;
  v30 = 0;
  v16 = 0;
  v24 = sub_1AC309AAC();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v25 = &v8 - v9;
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v10 = MEMORY[0x1E69A2B08];
  v11 = sub_1AC205220();
  v12 = v2;
  sub_1AC205220();
  v26 = sub_1AC309D3C();
  v15 = 1;
  v3 = sub_1AC30A9DC("BOBBLE_GESTURE_SWITCH_GROUP", 27, 1);
  v13 = v4;
  v17 = sub_1AC274FA8(v3, v4);
  v18 = v5;

  MEMORY[0x1E69E5928](v14);
  v6 = type metadata accessor for BobbleSettingsViewController();
  v19 = v29;
  v29[3] = v6;
  v29[0] = v14;
  v20 = sel_headGesturesEnabled;
  v21 = sel_setHeadGesturesEnabledWithEnabled_;
  sub_1AC20599C();
  sub_1AC309A9C();
  v27 = sub_1AC309CEC();
  (*(v22 + 8))(v25, v24);

  v28 = sub_1AC309D2C();

  return v28;
}

uint64_t sub_1AC283F68(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGesturesSwitchSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC283FE8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC283C28();
  return sub_1AC284044;
}

void sub_1AC284044(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC283F68(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC283F68(*a1);
  }
}

uint64_t sub_1AC2840B0()
{
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v2 = swift_allocObject();
  (MEMORY[0x1E69E5928])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x1E69E5920])();

  v4 = sub_1AC284220(v2);

  v3 = (v6 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  *v3 = v4;

  swift_endAccess();
  return v4;
}

uint64_t sub_1AC284220(uint64_t a1)
{
  v53 = a1;
  v52 = 0;
  v68 = 0;
  v66 = 0;
  v54 = sub_1AC309AAC();
  v55 = *(v54 - 8);
  v56 = v55;
  MEMORY[0x1EEE9AC00](v53);
  v57 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v2 + 16;
  v68 = v2 + 16;
  v59 = v67;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v60 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v51 = v60;
    v46 = v60;
    v66 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v28[1] = MEMORY[0x1E69A2B08];
    v28[2] = sub_1AC205220();
    v28[3] = v3;
    sub_1AC205220();
    v28[9] = sub_1AC309D3C();
    v29 = 1;
    v4 = sub_1AC30A9DC("BOBBLE_GESTURE_MAP_PLAY_PAUSE_ACCEPT", 36);
    v28[4] = v5;
    v28[5] = sub_1AC274FA8(v4, v5);
    v28[6] = v6;

    v7 = v46;
    v36 = 0;
    v31 = type metadata accessor for BobbleSettingsViewController();
    v65 = v31;
    v64 = v46;
    v28[7] = sel_acceptReplyPlayPauseStringMapping;
    v32 = type metadata accessor for BobbleMappingSelectionController();
    v8 = sub_1AC20599C();
    v28[8] = &v19;
    v27 = v36;
    v26 = v36;
    v25 = v36;
    v24 = v36;
    v23 = v36;
    v22 = v36;
    v21 = v32;
    LOBYTE(v20) = v8 & 1;
    v19 = v36;
    v37 = 2;
    sub_1AC309A9C();
    v28[11] = sub_1AC309CEC();
    v40 = *(v56 + 8);
    v39 = v56 + 8;
    v40(v57, v54);

    v9 = v46;
    v28[10] = v28;
    v42 = 24;
    MEMORY[0x1EEE9AC00](v28);
    v27 = v10;
    v41 = sub_1AC309D0C();

    v11 = sub_1AC30A9DC("BOBBLE_GESTURE_MAP_DECLINE_SKIP_DISMISS", 39, v29);
    v30 = v12;
    v33 = sub_1AC274FA8(v11, v12);
    v34 = v13;

    v14 = v46;
    v63 = v31;
    v62 = v46;
    v35 = sel_declineDismissSkipStringMapping;
    v15 = sub_1AC20599C();
    v38 = &v19;
    v27 = v36;
    v26 = v36;
    v25 = v36;
    v24 = v36;
    v23 = v36;
    v22 = v36;
    v21 = v32;
    LOBYTE(v20) = v15 & 1;
    v19 = v36;
    sub_1AC309A9C();
    v44 = sub_1AC309CEC();
    v40(v57, v54);

    v16 = v46;
    v43 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v27 = v17;
    v45 = sub_1AC309D0C();

    v47 = sub_1AC309D2C();

    return v47;
  }

  else
  {
    v48 = 0;
    v49 = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC2847D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820, &unk_1AC3157A0);
  sub_1AC30B18C();
  v8 = v1;
  *v1 = sub_1AC30A9DC("usecase", 7, 1);
  v8[1] = v2;
  v8[5] = &unk_1F20F5B00;
  *(v8 + 16) = 0;
  v8[6] = sub_1AC30A9DC("viewModel", 9, 1);
  v8[7] = v3;
  v9 = sub_1AC282EC8();
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 109, 0);
    __break(1u);
  }

  v8[11] = type metadata accessor for BobbleSettingsViewModel();
  v8[8] = v6;
  sub_1AC206300();
  sub_1AC30A83C();
  v5 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2849D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820, &unk_1AC3157A0);
  sub_1AC30B18C();
  v8 = v1;
  *v1 = sub_1AC30A9DC("usecase", 7, 1);
  v8[1] = v2;
  v8[5] = &unk_1F20F5B00;
  *(v8 + 16) = 1;
  v8[6] = sub_1AC30A9DC("viewModel", 9, 1);
  v8[7] = v3;
  v9 = sub_1AC282EC8();
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/BobbleSettingsController.swift", 50, 2, 124, 0);
    __break(1u);
  }

  v8[11] = type metadata accessor for BobbleSettingsViewModel();
  v8[8] = v6;
  sub_1AC206300();
  sub_1AC30A83C();
  v5 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC284BD4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___headGestureMappingSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC284C54(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2840B0();
  return sub_1AC284CB0;
}

void sub_1AC284CB0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC284BD4(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC284BD4(*a1);
  }
}

uint64_t sub_1AC284D1C()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___tryBobbleSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC284E10(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___tryBobbleSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC284E10(uint64_t a1)
{
  v9 = a1;
  v21 = 0;
  v20 = sub_1AC28507C;
  v26 = 0;
  v14 = 0;
  v17 = sub_1AC309AAC();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v8[0] = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v18 = v8 - v8[0];
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v8[1] = MEMORY[0x1E69A2B08];
  v8[2] = sub_1AC205220();
  v8[3] = v2;
  sub_1AC205220();
  v19 = sub_1AC309D3C();
  v10 = 1;
  v3 = sub_1AC30A9DC("BOBBLE_GESTURE_TRY_IT", 21, 1);
  v8[4] = v4;
  v11 = sub_1AC274FA8(v3, v4);
  v12 = v5;

  MEMORY[0x1E69E5928](v9);
  v6 = type metadata accessor for BobbleSettingsViewController();
  v13 = v25;
  v25[3] = v6;
  v25[0] = v9;
  sub_1AC20599C();
  sub_1AC309A9C();
  v22 = sub_1AC309CEC();
  (*(v15 + 8))(v18, v17);

  v23 = sub_1AC309D0C();

  v24 = sub_1AC309D2C();

  return v24;
}

uint64_t sub_1AC2850B8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI28BobbleSettingsViewController____lazy_storage___tryBobbleSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC285138(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC284D1C();
  return sub_1AC285194;
}

void sub_1AC285194(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC2850B8(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC2850B8(*a1);
  }
}

uint64_t sub_1AC285200()
{
  v227 = v291;
  v228 = sub_1AC28BE6C;
  v229 = sub_1AC215C98;
  v230 = sub_1AC28BE74;
  v231 = sub_1AC215C90;
  v232 = sub_1AC215C90;
  v233 = sub_1AC215CA4;
  v234 = sub_1AC215C90;
  v235 = sub_1AC215C90;
  v236 = sub_1AC2482A8;
  v237 = sub_1AC20A6B4;
  v238 = sub_1AC28C014;
  v239 = "Fatal error";
  v240 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v241 = "HeadphoneSettingsUI/BobbleSettingsController.swift";
  v242 = sub_1AC2559F4;
  v243 = sub_1AC215C98;
  v244 = sub_1AC286FB8;
  v245 = sub_1AC2572B0;
  v246 = sub_1AC215C90;
  v247 = sub_1AC215C90;
  v248 = sub_1AC215CA4;
  v249 = sub_1AC215C90;
  v250 = sub_1AC215C90;
  v251 = sub_1AC2572BC;
  v302 = 0;
  v301 = 0;
  v252 = 0;
  v293 = 0;
  v290 = 0;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7B0, &qword_1AC312E48);
  v254 = *(v253 - 8);
  v255 = v253 - 8;
  v256 = (*(v254 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v253);
  v257 = v80 - v256;
  v258 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80 - v256);
  v259 = v80 - v258;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7B8, &qword_1AC312E50);
  v261 = *(v260 - 8);
  v262 = v260 - 8;
  v263 = (*(v261 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v260);
  v264 = v80 - v263;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7C0, &qword_1AC312E58);
  v266 = *(v265 - 8);
  v267 = v265 - 8;
  v268 = (*(v266 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v265);
  v269 = v80 - v268;
  v271 = sub_1AC309E6C();
  v272 = *(v271 - 8);
  v273 = v271 - 8;
  v274 = (*(v272 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v270);
  v275 = v80 - v274;
  v276 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v277 = v80 - v276;
  v302 = v4;
  v278 = [v4 specifier];
  if (v278)
  {
    v226 = v278;
  }

  else
  {
    sub_1AC30B05C(v239, 11, 2, v240, 68, 2, v241, 50, 2, 147, 0);
    __break(1u);
  }

  v224 = v226;
  v225 = [v226 userInfo];
  if (v225)
  {
    v223 = v225;
    v222 = v225;
    v221 = v279;
    sub_1AC30AEFC();
    sub_1AC241B1C(v221, v299);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v299, 0, sizeof(v299));
  }

  v5 = v224;
  v6 = v227;
  v227[9] = v227[7];
  v6[10] = v6[8];
  MEMORY[0x1E69E5920](v5);
  if (v300[3])
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v220 = v279[4];
    }

    else
    {
      v220 = 0;
    }

    v219 = v220;
  }

  else
  {
    sub_1AC204664(v300);
    v219 = 0;
  }

  v218 = v219;
  if (!v219)
  {
    goto LABEL_46;
  }

  v217 = v218;
  v214 = v218;
  v293 = v218;
  v212 = sub_1AC3095DC();
  sub_1AC3095CC();
  v213 = v7;
  v215 = sub_1AC30A91C();

  v216 = [v214 objectForKey_];
  swift_unknownObjectRelease();
  if (v216)
  {
    v211 = v216;
    v210 = v216;
    v209 = v280;
    sub_1AC30AEFC();
    sub_1AC241B1C(v209, v291);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v291, 0, sizeof(v291));
  }

  v8 = v227;
  v227[2] = *v227;
  v8[3] = v8[1];
  if (v292[3])
  {
    if (swift_dynamicCast())
    {
      v208 = v280[4];
    }

    else
    {
      v208 = 0;
    }

    v207 = v208;
  }

  else
  {
    sub_1AC204664(v292);
    v207 = 0;
  }

  v206 = v207;
  if (!v207)
  {
    MEMORY[0x1E69E5920](v214);
LABEL_46:
    v56 = v275;
    v90 = 0;
    v91 = sub_1AC215CB0();
    v92 = sub_1AC30B18C();

    v301 = v92;
    v95 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v93 = v57;
    v94 = sub_1AC30A91C();

    [v270 setValue:v95 forKey:v94];
    MEMORY[0x1E69E5920](v94);
    swift_unknownObjectRelease();
    v58 = sub_1AC274D88();
    (*(v272 + 16))(v56, v58, v271);
    v111 = sub_1AC309E4C();
    v112 = sub_1AC30AD1C();
    v97 = 17;
    v100 = 7;
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v103 = swift_allocObject();
    v98 = 8;
    *(v103 + 16) = 8;
    v99 = 32;
    v59 = swift_allocObject();
    v96 = v59;
    *(v59 + 16) = v242;
    *(v59 + 24) = 0;
    v60 = swift_allocObject();
    v61 = v96;
    v104 = v60;
    *(v60 + 16) = v243;
    *(v60 + 24) = v61;
    v105 = swift_allocObject();
    *(v105 + 16) = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v98;
    v62 = swift_allocObject();
    v101 = v62;
    *(v62 + 16) = v244;
    *(v62 + 24) = 0;
    v63 = swift_allocObject();
    v64 = v101;
    v108 = v63;
    *(v63 + 16) = v245;
    *(v63 + 24) = v64;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v107 = sub_1AC30B18C();
    v109 = v65;

    v66 = v102;
    v67 = v109;
    *v109 = v246;
    v67[1] = v66;

    v68 = v103;
    v69 = v109;
    v109[2] = v247;
    v69[3] = v68;

    v70 = v104;
    v71 = v109;
    v109[4] = v248;
    v71[5] = v70;

    v72 = v105;
    v73 = v109;
    v109[6] = v249;
    v73[7] = v72;

    v74 = v106;
    v75 = v109;
    v109[8] = v250;
    v75[9] = v74;

    v76 = v108;
    v77 = v109;
    v109[10] = v251;
    v77[11] = v76;
    sub_1AC206300();

    if (os_log_type_enabled(v111, v112))
    {
      v78 = v252;
      v82 = sub_1AC30AE6C();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v83 = sub_1AC213EE4(0, v81, v81);
      v84 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v86 = &v298;
      v298 = v82;
      v87 = &v297;
      v297 = v83;
      v88 = &v296;
      v296 = v84;
      v85 = 2;
      sub_1AC213F38(2, &v298);
      sub_1AC213F38(v85, v86);
      v294 = v246;
      v295 = v102;
      sub_1AC213F4C(&v294, v86, v87, v88);
      v89 = v78;
      if (v78)
      {

        __break(1u);
      }

      else
      {
        v294 = v247;
        v295 = v103;
        sub_1AC213F4C(&v294, &v298, &v297, &v296);
        v80[3] = 0;
        v294 = v248;
        v295 = v104;
        sub_1AC213F4C(&v294, &v298, &v297, &v296);
        v80[2] = 0;
        v294 = v249;
        v295 = v105;
        sub_1AC213F4C(&v294, &v298, &v297, &v296);
        v80[1] = 0;
        v294 = v250;
        v295 = v106;
        sub_1AC213F4C(&v294, &v298, &v297, &v296);
        v80[0] = 0;
        v294 = v251;
        v295 = v108;
        sub_1AC213F4C(&v294, &v298, &v297, &v296);
        _os_log_impl(&dword_1AC1C3000, v111, v112, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v82, 0x16u);
        sub_1AC213F98(v83, 0, v81);
        sub_1AC213F98(v84, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v79 = MEMORY[0x1E69E5920](v111);
    (*(v272 + 8))(v275, v271, v79);
    sub_1AC209190(&v301);
    return 0;
  }

  v205 = v206;
  v186 = v206;
  v290 = v206;
  MEMORY[0x1E69E5928](v206);
  sub_1AC282DC4(v186);
  v183 = sub_1AC30915C();
  v184 = sub_1AC28D314();

  sub_1AC282F30(v184);
  v9 = v277;
  v10 = sub_1AC274D88();
  (*(v272 + 16))(v9, v10, v271);
  MEMORY[0x1E69E5928](v186);
  v185 = 24;
  v192 = 7;
  v11 = swift_allocObject();
  v12 = v186;
  v187 = v11;
  *(v11 + 16) = v186;
  MEMORY[0x1E69E5928](v12);
  v193 = swift_allocObject();
  *(v193 + 16) = v186;
  sub_1AC20BEE0();

  v203 = sub_1AC309E4C();
  v204 = sub_1AC30AD2C();
  v189 = 17;
  v194 = swift_allocObject();
  *(v194 + 16) = 32;
  v195 = swift_allocObject();
  v190 = 8;
  *(v195 + 16) = 8;
  v191 = 32;
  v13 = swift_allocObject();
  v14 = v187;
  v188 = v13;
  *(v13 + 16) = v228;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v188;
  v196 = v15;
  *(v15 + 16) = v229;
  *(v15 + 24) = v16;
  v197 = swift_allocObject();
  *(v197 + 16) = 64;
  v198 = swift_allocObject();
  *(v198 + 16) = v190;
  v17 = swift_allocObject();
  v18 = v193;
  v200 = v17;
  *(v17 + 16) = v230;
  *(v17 + 24) = v18;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v199 = sub_1AC30B18C();
  v201 = v19;

  v20 = v194;
  v21 = v201;
  *v201 = v231;
  v21[1] = v20;

  v22 = v195;
  v23 = v201;
  v201[2] = v232;
  v23[3] = v22;

  v24 = v196;
  v25 = v201;
  v201[4] = v233;
  v25[5] = v24;

  v26 = v197;
  v27 = v201;
  v201[6] = v234;
  v27[7] = v26;

  v28 = v198;
  v29 = v201;
  v201[8] = v235;
  v29[9] = v28;

  v30 = v200;
  v31 = v201;
  v201[10] = v236;
  v31[11] = v30;
  sub_1AC206300();

  if (os_log_type_enabled(v203, v204))
  {
    v32 = v252;
    v175 = sub_1AC30AE6C();
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v174 = 1;
    v176 = sub_1AC213EE4(1, v173, v173);
    v177 = sub_1AC213EE4(v174, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v179 = &v285;
    v285 = v175;
    v180 = &v284;
    v284 = v176;
    v181 = &v283;
    v283 = v177;
    v178 = 2;
    sub_1AC213F38(2, &v285);
    sub_1AC213F38(v178, v179);
    v281 = v231;
    v282 = v194;
    sub_1AC213F4C(&v281, v179, v180, v181);
    v182 = v32;
    if (v32)
    {

      __break(1u);
    }

    else
    {
      v281 = v232;
      v282 = v195;
      sub_1AC213F4C(&v281, &v285, &v284, &v283);
      v171 = 0;
      v281 = v233;
      v282 = v196;
      sub_1AC213F4C(&v281, &v285, &v284, &v283);
      v170 = 0;
      v281 = v234;
      v282 = v197;
      sub_1AC213F4C(&v281, &v285, &v284, &v283);
      v169 = 0;
      v281 = v235;
      v282 = v198;
      sub_1AC213F4C(&v281, &v285, &v284, &v283);
      v168 = 0;
      v281 = v236;
      v282 = v200;
      sub_1AC213F4C(&v281, &v285, &v284, &v283);
      v167 = 0;
      _os_log_impl(&dword_1AC1C3000, v203, v204, "Bobble: specifiers, HeadphoneDevice:%s aad: %@ ", v175, 0x16u);
      v166 = 1;
      sub_1AC213F98(v176, 1, v173);
      sub_1AC213F98(v177, v166, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v172 = v167;
    }
  }

  else
  {
    v33 = v252;

    v172 = v33;
  }

  v34 = v270;
  v35 = v172;
  v36 = MEMORY[0x1E69E5920](v203);
  (*(v272 + 8))(v277, v271, v36);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v161 = sub_1AC30B18C();
  v160 = v37;
  v38 = *v34;
  v159 = MEMORY[0x1E69E7D40];
  v39 = (*((v38 & *MEMORY[0x1E69E7D40]) + 0xE0))();
  v40 = v270;
  v41 = v159;
  *v160 = v39;
  v42 = (*((*v40 & *v41) + 0xF8))();
  v43 = v270;
  v44 = v159;
  v160[1] = v42;
  v45 = (*((*v43 & *v44) + 0x110))();
  v46 = v270;
  v47 = v159;
  v160[2] = v45;
  v160[3] = (*((*v46 & *v47) + 0x128))();
  sub_1AC206300();
  v289 = v48;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v164 = sub_1AC263B38();
  sub_1AC24D54C();
  result = sub_1AC30AA8C();
  v165 = result;
  if (!v35)
  {
    v151 = v165;
    sub_1AC209190(&v289);

    v301 = v151;
    sub_1AC28B754();
    v50 = v270;
    v155 = 0;
    v150 = sub_1AC215CB0();
    v154 = sub_1AC30AAFC();

    sub_1AC30A9DC("_specifiers", 11, 1);
    v152 = v51;
    v153 = sub_1AC30A91C();

    [v50 setValue:v154 forKey:v153];
    MEMORY[0x1E69E5920](v153);
    swift_unknownObjectRelease();
    v157 = sub_1AC28301C();
    v156 = sub_1AC309EAC();
    sub_1AC223158();
    v158 = sub_1AC30AC0C();

    if (v158)
    {
      v114 = &v301;
      v113 = v301;

      v115 = sub_1AC30B02C();

      MEMORY[0x1E69E5920](v186);
      MEMORY[0x1E69E5920](v214);
      sub_1AC209190(v114);
      return v115;
    }

    else
    {
      v149 = (*((*v270 & *MEMORY[0x1E69E7D40]) + 0x98))();
      if (v149)
      {
        v148 = v149;
      }

      else
      {
        sub_1AC30B05C(v239, 11, 2, v240, 68, 2, v241, 50, 2, 176, 0);
        __break(1u);
      }

      v144 = v148;
      v145 = sub_1AC30915C();
      MEMORY[0x1E69E5920](v144);
      sub_1AC3098AC();

      v52 = sub_1AC30913C();
      v53 = v270;
      v146 = v52;
      (*(v261 + 8))(v264, v260);
      v288[2] = v146;
      v147 = (*((*v53 & *MEMORY[0x1E69E7D40]) + 0x98))();
      if (v147)
      {
        v143 = v147;
      }

      else
      {
        sub_1AC30B05C(v239, 11, 2, v240, 68, 2, v241, 50, 2, 177, 0);
        __break(1u);
      }

      v137 = v143;
      v138 = sub_1AC30915C();
      MEMORY[0x1E69E5920](v137);
      sub_1AC3099FC();

      v54 = sub_1AC30913C();
      v55 = v270;
      v141 = v54;
      v139 = *(v254 + 8);
      v140 = v254 + 8;
      v139(v259, v253);
      v288[1] = v141;
      v142 = (*((*v55 & *MEMORY[0x1E69E7D40]) + 0x98))();
      if (v142)
      {
        v136 = v142;
      }

      else
      {
        sub_1AC30B05C(v239, 11, 2, v240, 68, 2, v241, 50, 2, 178, 0);
        __break(1u);
      }

      v116 = v136;
      v117 = sub_1AC30915C();
      MEMORY[0x1E69E5920](v116);
      sub_1AC30998C();

      v118 = sub_1AC30913C();
      v139(v257, v253);
      v119 = v288;
      v288[0] = v118;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7C8, &qword_1AC312E60);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7D0, &qword_1AC312E68);
      v122 = sub_1AC28BE7C();
      sub_1AC28BF04();
      sub_1AC309E8C();
      sub_1AC28BF8C();
      v123 = sub_1AC309F4C();
      (*(v266 + 8))(v269, v265);
      v128 = &v287;
      v287 = v123;
      v127 = swift_allocObject();
      v124 = v127 + 16;
      MEMORY[0x1E69E5928](v270);
      v125 = v270;
      swift_unknownObjectWeakInit();
      MEMORY[0x1E69E5920](v125);

      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C7F0, &qword_1AC312E70);
      sub_1AC28C01C();
      v131 = sub_1AC309FBC();

      sub_1AC20BCE0(v128);
      v129 = v286;
      v130 = sub_1AC283108(v286);
      sub_1AC309E9C();
      v130();

      v133 = &v301;
      v132 = v301;

      v134 = sub_1AC30B02C();

      MEMORY[0x1E69E5920](v186);
      MEMORY[0x1E69E5920](v214);
      sub_1AC209190(v133);
      return v134;
    }
  }

  __break(1u);
  return result;
}