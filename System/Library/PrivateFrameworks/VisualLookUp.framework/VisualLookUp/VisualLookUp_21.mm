uint64_t sub_1D9B2F2C4(__int128 *a1, void (*a2)(__int128 *))
{
  v4 = a1[11];
  v68[10] = a1[10];
  v68[11] = v4;
  v68[12] = a1[12];
  v69 = *(a1 + 208);
  v5 = a1[7];
  v68[6] = a1[6];
  v68[7] = v5;
  v6 = a1[9];
  v68[8] = a1[8];
  v68[9] = v6;
  v7 = a1[3];
  v68[2] = a1[2];
  v68[3] = v7;
  v8 = a1[5];
  v68[4] = a1[4];
  v68[5] = v8;
  v9 = a1[1];
  v68[0] = *a1;
  v68[1] = v9;
  if (sub_1D9B34F58(v68) == 1)
  {
    faiss::NormalizationTransform::~NormalizationTransform(v68);
    v10 = a1[11];
    v11 = a1[9];
    v48 = a1[10];
    v49 = v10;
    v12 = a1[11];
    v50 = a1[12];
    v13 = a1[7];
    v14 = a1[5];
    v44 = a1[6];
    v45 = v13;
    v15 = a1[7];
    v16 = a1[9];
    v46 = a1[8];
    v47 = v16;
    v17 = a1[3];
    v18 = a1[1];
    v40 = a1[2];
    v41 = v17;
    v19 = a1[3];
    v20 = a1[5];
    v42 = a1[4];
    v43 = v20;
    v21 = a1[1];
    v38 = *a1;
    v39 = v21;
    v62 = v48;
    v63 = v12;
    v64 = a1[12];
    v58 = v44;
    v59 = v15;
    v60 = v46;
    v61 = v11;
    v54 = v40;
    v55 = v19;
    v56 = v42;
    v57 = v14;
    v51 = *(a1 + 208);
    v65 = *(a1 + 208);
    v52 = v38;
    v53 = v18;
    faiss::NormalizationTransform::~NormalizationTransform(&v52);
    v23 = *v22;
  }

  else
  {
    faiss::NormalizationTransform::~NormalizationTransform(v68);
    v24 = a1[11];
    v25 = a1[9];
    v48 = a1[10];
    v49 = v24;
    v26 = a1[11];
    v50 = a1[12];
    v27 = a1[7];
    v28 = a1[5];
    v44 = a1[6];
    v45 = v27;
    v29 = a1[7];
    v30 = a1[9];
    v46 = a1[8];
    v47 = v30;
    v31 = a1[3];
    v32 = a1[1];
    v40 = a1[2];
    v41 = v31;
    v33 = a1[3];
    v34 = a1[5];
    v42 = a1[4];
    v43 = v34;
    v35 = a1[1];
    v38 = *a1;
    v39 = v35;
    v62 = v48;
    v63 = v26;
    v64 = a1[12];
    v58 = v44;
    v59 = v29;
    v60 = v46;
    v61 = v25;
    v54 = v40;
    v55 = v33;
    v56 = v42;
    v57 = v28;
    v51 = *(a1 + 208);
    v65 = *(a1 + 208);
    v52 = v38;
    v53 = v32;
    faiss::NormalizationTransform::~NormalizationTransform(&v52);
    sub_1D9B335C8(v36, v66);
  }

  a2(&v38);
  v66[10] = v48;
  v66[11] = v49;
  v66[12] = v50;
  v67 = v51;
  v66[6] = v44;
  v66[7] = v45;
  v66[8] = v46;
  v66[9] = v47;
  v66[2] = v40;
  v66[3] = v41;
  v66[4] = v42;
  v66[5] = v43;
  v66[0] = v38;
  v66[1] = v39;
  return sub_1D99A6AE0(v66, &qword_1ECB51B40, &unk_1D9C95AF0);
}

id VisualIntelligenceService.submitUserFeedback(image:request:report:reportIdentifier:environment:container:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, void (*a12)(void, __n128), uint64_t a13)
{
  v82 = a8;
  v83 = a1;
  v91 = a6;
  v19 = *v13;
  v80 = v13;
  v81 = v19;
  v20 = sub_1D9C7DA2C();
  v88 = *(v20 - 8);
  v89 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D9C7DA4C();
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9C7D8DC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v79 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  static Logger.argos.getter(&v74 - v27);

  sub_1D99DF410(a2, a3);
  sub_1D99DF410(a4, a5);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();

  sub_1D99B3C44(a2, a3);
  sub_1D99B3C44(a4, a5);
  LODWORD(v90) = v30;
  v31 = os_log_type_enabled(v29, v30);
  v92 = a7;
  v93 = a2;
  v78 = v24;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v77 = v23;
    v33 = v32;
    v34 = swift_slowAlloc();
    v76 = v34;
    *v33 = 136315650;
    v94 = v34;
    aBlock = v91;
    v96 = a7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
    v35 = sub_1D9C7DCEC();
    v37 = v24;
    v38 = sub_1D9A0E224(v35, v36, &v94);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    aBlock = a2;
    v96 = a3;
    sub_1D99DF410(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534E0, &qword_1D9C95700);
    v39 = sub_1D9C7DCEC();
    v41 = sub_1D9A0E224(v39, v40, &v94);

    *(v33 + 14) = v41;
    *(v33 + 22) = 2080;
    aBlock = a4;
    v96 = a5;
    sub_1D99DF410(a4, a5);
    v42 = sub_1D9C7DCEC();
    v44 = sub_1D9A0E224(v42, v43, &v94);

    *(v33 + 24) = v44;
    _os_log_impl(&dword_1D9962000, v29, v90, "submitUserFeedback(): reportIdentifier=%s request=%s report=%s", v33, 0x20u);
    v45 = v76;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v45, -1, -1);
    MEMORY[0x1DA7405F0](v33, -1, -1);

    v46 = *(v37 + 8);
    v47 = v77;
  }

  else
  {

    v46 = *(v24 + 8);
    v47 = v23;
  }

  v46(v28);
  v48 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  if (a3 >> 60 == 15)
  {
    v49 = sub_1D9B33F0C(0xD000000000000025, 0x80000001D9CAA460, v48, a12, a13);
    swift_unknownObjectRetain();
LABEL_13:

    return v49;
  }

  if (!v92)
  {
    v73 = v93;
    sub_1D99DF410(v93, a3);
    v49 = sub_1D9B33F0C(0xD00000000000002ELL, 0x80000001D9CAA490, v48, a12, a13);
    swift_unknownObjectRetain();
    sub_1D99B3C44(v73, a3);
    goto LABEL_13;
  }

  v90 = a4;
  v77 = a11;
  v50 = a10;

  sub_1D99DF410(v93, a3);
  if (a5 >> 60 == 15)
  {
    v76 = a10;
    static Logger.argos.getter(v79);
    v51 = sub_1D9C7D8BC();
    v52 = sub_1D9C7E09C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v75 = a5;
      v54 = a3;
      v55 = v53;
      *v53 = 0;
      _os_log_impl(&dword_1D9962000, v51, v52, "submitUserFeedback(): warning: report data was empty", v53, 2u);
      v56 = v55;
      a3 = v54;
      a5 = v75;
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    (v46)(v79, v47);
    v50 = v76;
  }

  v80 = v80[3];
  v57 = swift_allocObject();
  *(v57 + 16) = v48;
  *(v57 + 24) = a12;
  v58 = v82;
  v59 = v83;
  *(v57 + 32) = a13;
  *(v57 + 40) = v58;
  *(v57 + 48) = a9 & 1;
  v60 = v77;
  *(v57 + 56) = v50;
  *(v57 + 64) = v60;
  v61 = v93;
  *(v57 + 72) = v93;
  *(v57 + 80) = a3;
  v63 = v90;
  v62 = v91;
  *(v57 + 88) = v59;
  *(v57 + 96) = v63;
  *(v57 + 104) = a5;
  *(v57 + 112) = v62;
  v64 = v81;
  *(v57 + 120) = v92;
  *(v57 + 128) = v64;
  v99 = sub_1D9B34124;
  v100 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v96 = 1107296256;
  v97 = sub_1D9A0A1E0;
  v98 = &block_descriptor_59;
  v65 = a5;
  v66 = _Block_copy(&aBlock);
  sub_1D99DF410(v61, a3);
  sub_1D99DF410(v63, v65);

  swift_unknownObjectRetain();
  v67 = v48;

  v68 = v84;
  sub_1D9C7DA3C();
  v94 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v69 = v86;
  v70 = v89;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v68, v69, v66);
  _Block_release(v66);
  v71 = sub_1D99B3C44(v61, a3);
  (*(v88 + 8))(v69, v70, v71);
  (*(v85 + 8))(v68, v87);

  return v67;
}

void sub_1D9B2FD2C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, void *a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  v106 = a8;
  v112 = a7;
  v114 = a4;
  v115 = a6;
  LODWORD(v113) = a5;
  v17 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals(0);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9C7D8DC();
  v119 = *(v20 - 8);
  v120 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v105 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v105 - v25;
  v27 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v27 + 4);
  LODWORD(a1) = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v27 + 4);
  if (a1 == 1)
  {
    static Logger.argos.getter(v26);
    v28 = sub_1D9C7D8BC();
    v29 = sub_1D9C7E09C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D9962000, v28, v29, "submitUserFeedback(): canceled", v30, 2u);
      MEMORY[0x1DA7405F0](v30, -1, -1);
    }

    (*(v119 + 8))(v26, v120);
    sub_1D9A0EEC0();
    v31 = swift_allocError();
    *v32 = 0;
    a2();
  }

  v117 = a2;
  v118 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53530, &qword_1D9C95AC8);
  inited = swift_initStackObject();
  v111 = xmmword_1D9C85490;
  *(inited + 16) = xmmword_1D9C85490;
  if ((sub_1D9A75D94() & 1) == 0)
  {
    if (qword_1EDD355A0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_46;
  }

  if (qword_1ECB50988 != -1)
  {
LABEL_46:
    swift_once();
  }

LABEL_9:

  sub_1D9A16F4C();
  v35 = v34;
  v37 = v36;

  *(inited + 32) = v35;
  v38 = v113 & 1;
  v39 = 64;
  if (v113)
  {
    v39 = 96;
  }

  *(inited + 40) = v37 & 1;
  *(inited + 48) = 0x6C616E7265746E69;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 64) = v114;
  *(inited + 72) = v38;
  *(inited + 80) = 0x746E656D75677261;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 1;
  *(inited + 104) = 0;
  *(inited + 112) = 0x746C7561666564;
  *(inited + 120) = 0xE700000000000000;
  v40 = (inited + v39);
  if ((v37 & 1) == 0)
  {
    v40 = (inited + 32);
  }

  v41 = v40[3];
  v114 = *v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53538, &unk_1D9C95AD0);
  v42 = swift_initStackObject();
  *(v42 + 16) = v111;
  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v43 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v43 = &qword_1EDD355A8;
  }

  v44 = *(*v43 + 32);

  v45 = sub_1D9C7DC4C();
  v46 = [v44 stringForKey_];

  if (v46)
  {
    v47 = sub_1D9C7DC7C();
    v49 = v48;
  }

  else
  {

    v47 = 0;
    v49 = 0;
  }

  *(v42 + 32) = v47;
  *(v42 + 40) = v49;
  *(v42 + 48) = 0x6C616E7265746E69;
  *(v42 + 56) = 0xE800000000000000;
  v50 = v112;
  *(v42 + 64) = v115;
  *(v42 + 72) = v50;
  *(v42 + 80) = 0x746E656D75677261;
  *(v42 + 88) = 0xE800000000000000;
  v51 = 0x80000001D9CAA430;
  *(v42 + 96) = 0xD000000000000029;
  *(v42 + 104) = 0x80000001D9CAA430;
  *(v42 + 112) = 0x746C7561666564;
  *(v42 + 120) = 0xE700000000000000;
  v52 = 64;
  if (!v50)
  {
    v52 = 96;
  }

  v53 = v42 + v52;
  if (v50)
  {
    v51 = v50;
  }

  if (v49)
  {
    v53 = v42 + 32;
    v54 = v49;
  }

  else
  {
    v54 = v51;
  }

  v56 = *(v53 + 16);
  v55 = *(v53 + 24);
  v57 = *v53;

  if (v41)
  {

    if (v55)
    {
      v115 = v57;

      v58 = v110;
      static Logger.argos.getter(v110);

      v59 = sub_1D9C7D8BC();
      v60 = sub_1D9C7E09C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v121 = v62;
        *v61 = 136315394;
        v63 = CKContainerEnvironmentString();
        v64 = sub_1D9C7DC7C();
        v66 = v65;

        v67 = sub_1D9A0E224(v64, v66, &v121);

        *(v61 + 4) = v67;
        *(v61 + 12) = 2080;
        *(v61 + 14) = sub_1D9A0E224(v115, v54, &v121);
        _os_log_impl(&dword_1D9962000, v59, v60, "submitUserFeedback(): environment=%s, container=%s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v62, -1, -1);
        MEMORY[0x1DA7405F0](v61, -1, -1);

        (*(v119 + 8))(v110, v120);
      }

      else
      {

        (*(v119 + 8))(v58, v120);
      }

      v72 = v109;
      v125 = v106;
      v126 = a9;
      v123 = 0;
      v121 = 0u;
      v122 = 0u;
      sub_1D99AF2FC(v106, a9);
      sub_1D9C7D43C();
      sub_1D9B347C4(&unk_1ECB53550, type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals, &unk_1D9C87E50);
      sub_1D9C7D67C();
      sub_1D9B5272C(a10, 1);
      v74 = v73;
      v75 = sub_1D9B529CC(v73);
      v86 = v85;
      v87 = v75;

      v120 = sub_1D9C7DC4C();

      v119 = sub_1D9C7B86C();
      if (a12 >> 60 == 15)
      {
        v116 = 0;
      }

      else
      {
        v116 = sub_1D9C7B86C();
      }

      v115 = objc_opt_self();
      v113 = sub_1D9C7B86C();
      v112 = sub_1D9C7DC4C();
      v88 = *(v72 + 32);
      v89 = v87;
      v90 = v86;
      v91 = sub_1D9C7B86C();
      v92 = sub_1D9C7DC4C();
      *&v111 = v92;
      v93 = swift_allocObject();
      v94 = v118;
      *(v93 + 16) = v117;
      *(v93 + 24) = v94;
      v123 = sub_1D9B3480C;
      v124 = v93;
      *&v121 = MEMORY[0x1E69E9820];
      *(&v121 + 1) = 1107296256;
      *&v122 = sub_1D9B30C24;
      *(&v122 + 1) = &block_descriptor_104;
      v95 = _Block_copy(&v121);

      v104 = v92;
      v103 = v91;
      v96 = v91;
      v98 = v119;
      v97 = v120;
      v99 = v116;
      v101 = v112;
      v100 = v113;
      LODWORD(v102) = v88;
      [v115 uploadUserFeedbackToEnvironment:v114 container:v120 request:v119 sfReport:v116 intermediateResults:v113 deviceInfo:v112 nsfwConfidence:v102 imageData:v103 reportIdentifier:v104 completionHandler:v95];
      sub_1D99A5748(v89, v90);
      _Block_release(v95);

      sub_1D9B336AC(v109, type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals);
      return;
    }

    sub_1D9B01700();
    v68 = swift_allocError();
    strcpy(v70, "nil container");
    *(v70 + 7) = -4864;
    swift_willThrow();
  }

  else
  {
    sub_1D9B34780(v57, v54, v56, v55);
    sub_1D9B01700();
    v68 = swift_allocError();
    *v69 = 0x69766E65206C696ELL;
    v69[1] = 0xEF746E656D6E6F72;
    swift_willThrow();
  }

  v71 = v116;
  static Logger.argos.getter(v116);
  v76 = v68;
  v77 = sub_1D9C7D8BC();
  v78 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v77, v78))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = v68;
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v83;
    *v81 = v83;
    _os_log_impl(&dword_1D9962000, v77, v78, "submitUserFeedback(): %@", v80, 0xCu);
    sub_1D99A6AE0(v81, &qword_1ECB510E8, &qword_1D9C884F0);
    MEMORY[0x1DA7405F0](v81, -1, -1);
    MEMORY[0x1DA7405F0](v80, -1, -1);
  }

  (*(v119 + 8))(v71, v120);
  v84 = v68;
  (v117)(v68);
}

uint64_t sub_1D9B30998(void *a1, uint64_t (*a2)(void *))
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  if (a1)
  {
    v11 = a1;
    static Logger.argos.getter(v7);
    v12 = a1;
    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E09C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1D9962000, v13, v14, "submitUserFeedback(): %@", v15, 0xCu);
      sub_1D99A6AE0(v16, &qword_1ECB510E8, &qword_1D9C884F0);
      MEMORY[0x1DA7405F0](v16, -1, -1);
      MEMORY[0x1DA7405F0](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    static Logger.argos.getter(&v23 - v9);
    v19 = sub_1D9C7D8BC();
    v20 = sub_1D9C7E09C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D9962000, v19, v20, "submitUserFeedback(): successful", v21, 2u);
      MEMORY[0x1DA7405F0](v21, -1, -1);
    }

    v7 = v10;
  }

  (*(v5 + 8))(v7, v4);
  return a2(a1);
}

void sub_1D9B30C24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1D9B30CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31 = a7;
  v30 = a6;
  v29 = a3;
  v32 = sub_1D9C7DA2C();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7DA4C();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v19 = *(v7 + 96);
  v41 = &type metadata for PixelImage;
  v42 = &off_1F5533940;
  v39 = v16;
  v40 = v17;
  type metadata accessor for MetricsBucket();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x1E69E7CC0];
  v28 = *(v19 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v21 = swift_allocObject();
  swift_weakInit();
  sub_1D99A17C8(&v39, v38);
  v22 = swift_allocObject();
  v22[2] = v21;
  sub_1D9979B9C(v38, (v22 + 3));
  v22[8] = a2;
  v22[9] = v18;
  v23 = v29;
  v22[10] = v20;
  v22[11] = v23;
  v22[12] = a4;
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9A0A1E0;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);
  v25 = v16;

  v31 = v18;

  sub_1D9C7DA3C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D9B347C4(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v26 = v32;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v15, v12, v24);
  _Block_release(v24);

  (*(v35 + 8))(v12, v26);
  (*(v33 + 8))(v15, v34);

  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  return v31;
}

uint64_t sub_1D9B310D0(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53510, &qword_1D9C95AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C8CDC0;
  *(inited + 32) = 5;
  *(inited + 40) = sub_1D9B313DC(v1, 5, "Failed to resolve provider for natureworld");
  *(inited + 48) = 6;
  *(inited + 56) = sub_1D9B313DC(v1, 6, "Failed to resolve provider for natureworldv2");
  *(inited + 64) = 3;
  *(inited + 72) = sub_1D9B316E4(v1);
  *(inited + 80) = 4;
  *(inited + 88) = sub_1D9B318E8(v1);
  *(inited + 96) = 7;
  if (sub_1D9A93E64(7))
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    type metadata accessor for FoodModelFactory(0);
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    sub_1D9B331F0(v7, v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v7, v4, type metadata accessor for MLModelInfo);
    type metadata accessor for FoodClassificationPostProcessor();
    swift_allocObject();
    *(v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_postProcessor) = sub_1D99CFD34(v4);
    v19[0] = v1;
    sub_1D9B331F0(v7, v4, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider(0);
    swift_allocObject();
    v13 = sub_1D9B7E678(v19, v4, 16, 0, 0, 0);
    sub_1D9B336AC(v7, type metadata accessor for MLModelInfo);
    *(v12 + OBJC_IVAR____TtC12VisualLookUp16FoodModelFactory_coreMLModelProvider) = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  *(inited + 104) = v12;
  *(inited + 112) = 8;
  *(inited + 120) = sub_1D9B31BE4(v1);
  v14 = sub_1D9A4721C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53518, &qword_1D9C95AA8);
  swift_arrayDestroy();
  sub_1D9B31EE0(v14);
  v16 = v15;

  return v16;
}

uint64_t sub_1D9B313DC(char a1, uint64_t a2, const char *a3)
{
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  if (sub_1D9A93E64(a2))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(ObjectType, v17);
    type metadata accessor for NatureworldModelFactory(0);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    sub_1D9B331F0(v15, v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v15, v12, type metadata accessor for MLModelInfo);
    type metadata accessor for ClassificationNatureworldPostProcessor(0);
    swift_allocObject();
    *(v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_postProcessor) = sub_1D99F8460(v12);
    v26 = a1;
    sub_1D9B331F0(v15, v12, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider(0);
    swift_allocObject();
    v20 = sub_1D9B7E678(&v26, v12, 16, 0, 0, 0);
    sub_1D9B336AC(v15, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v19;
    *(v19 + OBJC_IVAR____TtC12VisualLookUp23NatureworldModelFactory_coreMLModelProvider) = v20;
  }

  else
  {
    static Logger.argos.getter(v9);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, a3, v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return result;
}

uint64_t sub_1D9B316E4(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1D9A93E64(3))
  {
    v10 = v9;
    v18 = a1;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    type metadata accessor for UnifiedModelFactory(0);
    swift_allocObject();
    v12 = sub_1D9AEFF20(&v18, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v5);
    v13 = sub_1D9C7D8BC();
    v14 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D9962000, v13, v14, "Failed to resolve provider for unified", v15, 2u);
      MEMORY[0x1DA7405F0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v12;
}

uint64_t sub_1D9B318E8(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  if (sub_1D9A93E64(4))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    type metadata accessor for Argos2DV2ModelFactory(0);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    sub_1D9B331F0(v11, v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    v22 = a1;
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider(0);
    swift_allocObject();
    *(v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_coreMLModelProvider) = sub_1D9B7E678(&v22, v8, 16, 0, 0, 0);
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for Argos2DV2ModelPostProcessor(0);
    swift_allocObject();
    v16 = sub_1D99A1E50(v8);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v15;
    *(v15 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_postProcessor) = v16;
  }

  else
  {
    static Logger.argos.getter(v5);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "Failed to resolve provider for argos2dv2", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

uint64_t sub_1D9B31BE4(char a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-v10];
  if (sub_1D9A93E64(8))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    type metadata accessor for SignSymbolModelFactory(0);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    sub_1D9B331F0(v11, v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_modelInfo, type metadata accessor for MLModelInfo);
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for SignSymbolClassificationPostProcessor();
    swift_allocObject();
    *(v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_postProcessor) = sub_1D99E386C(v8);
    v22 = a1;
    sub_1D9B331F0(v11, v8, type metadata accessor for MLModelInfo);
    type metadata accessor for CachedCoreMLModelProvider(0);
    swift_allocObject();
    v16 = sub_1D9B7E678(&v22, v8, 16, 0, 0, 0);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    swift_unknownObjectRelease();
    result = v15;
    *(v15 + OBJC_IVAR____TtC12VisualLookUp22SignSymbolModelFactory_coreMLModelProvider) = v16;
  }

  else
  {
    static Logger.argos.getter(v5);
    v18 = sub_1D9C7D8BC();
    v19 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D9962000, v18, v19, "Failed to resolve provider for signSymbol", v20, 2u);
      MEMORY[0x1DA7405F0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return result;
}

void sub_1D9B31EE0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0x80000001D9CA29B0;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = *(*(a1 + 56) + 8 * v11);
        if (v12)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v25 = v8;
      v26 = *(*(a1 + 48) + v11);
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {

        sub_1D9C0D60C(v14 + 1, 1);
        v2 = v27;
      }

      else
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      v15 = sub_1D9C7E93C();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = v15 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
      v8 = v25;
LABEL_24:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + v20) = v26;
      *(*(v2 + 56) + 8 * v20) = v12;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    v8 = v25;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      v24 = *(v16 + 8 * v19);
      if (v24 != -1)
      {
        v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v13);
      ++v9;
      if (v6)
      {
        v9 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_1D9B32270(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = *a5;
  v41 = a3;
  v9 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualIntelligenceModelProviderService();
  v43[3] = v12;
  v43[4] = &off_1F552EEE0;
  v43[0] = a2;
  v39 = a1;
  *(a5 + 16) = a1;
  a5[18] = a4;
  __swift_project_boxed_opaque_existential_1(v43, v12);

  v13 = sub_1D9A93E64(0);
  v15 = v14;
  if (v13)
  {
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    swift_unknownObjectRelease();
    sub_1D9B24AE8(v42);
    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    v18 = v42[0];
    v19 = v42[1];
    v20 = v42[2];
    v21 = v42[3];
    v22 = v42[4];
    v23 = v42[5];
    v24 = v42[6];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
  }

  *(a5 + 3) = v18;
  *(a5 + 5) = v19;
  *(a5 + 7) = v20;
  *(a5 + 9) = v21;
  *(a5 + 11) = v22;
  *(a5 + 13) = v23;
  *(a5 + 15) = v24;
  if (v13)
  {
    v25 = swift_getObjectType();
    v26 = *(v15 + 8);
    swift_unknownObjectRetain();
    v26(v25, v15);
    swift_unknownObjectRelease();
    v27 = &v11[*(v9 + 24)];
    v29 = *v27;
    v28 = v27[1];

    sub_1D9B336AC(v11, type metadata accessor for MLModelInfo);
    a5[21] = v29;
    a5[22] = v28;
    LOBYTE(v42[0]) = v39;
    v30 = swift_getObjectType();
    swift_unknownObjectRetain();
    v26(v30, v15);
    v31 = swift_allocObject();
    *(v31 + 16) = v13;
    *(v31 + 24) = v15;
    type metadata accessor for CachedCoreMLModelProvider(0);
    swift_allocObject();
    v32 = sub_1D9B7E678(v42, v11, 4, 0, sub_1D9B34724, v31);
  }

  else
  {
    v32 = 0;
    a5[21] = 0;
    a5[22] = 0;
  }

  a5[17] = v32;
  sub_1D99A17C8(v43, v42);
  v33 = swift_allocObject();
  v33[2] = a4;
  sub_1D9979B9C(v42, (v33 + 3));
  v34 = v40;
  v33[8] = v41;
  v33[9] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53520, &qword_1D9C95AB0);
  swift_allocObject();

  a5[19] = sub_1D9C1B65C();
  v35 = swift_allocObject();
  *(v35 + 16) = v13;
  *(v35 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53528, &qword_1D9C95AB8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v36 = sub_1D9C1B65C();
  swift_unknownObjectRelease();

  a5[20] = v36;
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return a5;
}

void *sub_1D9B32690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for VisualIntelligenceModelProviderService();
  v48 = v22;
  v49 = &off_1F552EEE0;
  v47[0] = a2;
  a5[3] = a4;
  a5[4] = a3;
  a5[2] = a1;
  __swift_project_boxed_opaque_existential_1(v47, v22);

  if (sub_1D9A93E64(1))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(ObjectType, v24);
    type metadata accessor for DomainPredictionNet(0);
    swift_allocObject();
    v26 = sub_1D99F0F8C(v21, 8, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v18);
    v27 = sub_1D9C7D8BC();
    v28 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D9962000, v27, v28, "DomainPredictionModel cannot be not initialized.", v29, 2u);
      MEMORY[0x1DA7405F0](v29, -1, -1);
    }

    (*(v43 + 8))(v18, v44);
    v26 = 0;
  }

  a5[5] = v26;
  a5[9] = &type metadata for EspressoRequestHandler;
  a5[10] = &off_1F5533640;
  v30 = swift_allocObject();
  a5[6] = v30;
  v30[1] = 0u;
  v30[2] = 0u;
  v30[3] = 0u;
  v30[4] = 0u;
  v30[5] = 0u;
  sub_1D99AB100((a5 + 6), v45, &qword_1ECB530F8, &unk_1D9C94160);
  v31 = v46;
  sub_1D99A6AE0(v45, &qword_1ECB530F8, &unk_1D9C94160);
  if (!v31)
  {
    static Logger.argos.getter(v15);
    v32 = sub_1D9C7D8BC();
    v33 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D9962000, v32, v33, "domainPredictionNetHandler cannot be not initialized.", v34, 2u);
      MEMORY[0x1DA7405F0](v34, -1, -1);
    }

    (*(v43 + 8))(v15, v44);
  }

  __swift_project_boxed_opaque_existential_1(v47, v48);
  if (sub_1D9A93E64(2))
  {
    v36 = v35;
    v37 = swift_getObjectType();
    (*(v36 + 8))(v37, v36);
    type metadata accessor for DomainPredictionNet(0);
    swift_allocObject();
    v38 = sub_1D99F0F8C(v21, 8, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.argos.getter(v12);
    v39 = sub_1D9C7D8BC();
    v40 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1D9962000, v39, v40, "DomainPredictionModelGrounding cannot be not initialized.", v41, 2u);
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v12, v44);
    v38 = 0;
  }

  a5[11] = v38;
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  return a5;
}

BOOL sub_1D9B32B90(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1D9C7E7DC() & 1;
    }
  }

  return result;
}

uint64_t sub_1D9B32C04(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = *(a1 + 56);
  if (v12 == 3)
  {
    v14 = 2;
    goto LABEL_24;
  }

  if (v12 == 5)
  {
    v13 = *(a1 + *(type metadata accessor for VisualQueryContext(0) + 84));
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        static Logger.argos.getter(v11);
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_1EDD2C990);
        (*(v3 + 8))(v11, v2);
        v20 = sub_1D9C7D8BC();
        v21 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1D9962000, v20, v21, "parse mapToVLUUseCase  .VLUScreenshotEager: nil cameraSearchMode", v22, 2u);
          MEMORY[0x1DA7405F0](v22, -1, -1);
        }

        goto LABEL_23;
      }
    }

    else if (!v13)
    {
      goto LABEL_22;
    }

    v18 = sub_1D9C7E7DC();

    if (v18)
    {
LABEL_23:
      v14 = 3;
      goto LABEL_24;
    }

    if (v13 == 2)
    {
      v19 = sub_1D9C7E7DC();

      if ((v19 & 1) == 0)
      {

        v14 = 4;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:

    goto LABEL_23;
  }

  static Logger.argos.getter(v8);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD2C990);
  (*(v3 + 8))(v8, v2);
  v15 = sub_1D9C7D8BC();
  v16 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v12;
    _os_log_impl(&dword_1D9962000, v15, v16, "parse mapToVLUUseCase set to default value .VLUPhotos: Unexpected imageType %ld", v17, 0xCu);
    MEMORY[0x1DA7405F0](v17, -1, -1);
  }

  v14 = 0;
LABEL_24:
  static Logger.argos.getter(v5);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EDD2C990);
  (*(v3 + 8))(v5, v2);
  v23 = sub_1D9C7D8BC();
  v24 = sub_1D9C7E08C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    v27 = 0xE900000000000073;
    v28 = 0x6F746F6850554C56;
    v29 = 0xEE00656D61724661;
    v30 = 0x72656D6143554C56;
    v31 = 0xD000000000000012;
    v32 = 0x80000001D9CA4B30;
    if (v14 != 3)
    {
      v31 = 0xD000000000000015;
      v32 = 0x80000001D9CA4B10;
    }

    if (v14 != 2)
    {
      v30 = v31;
      v29 = v32;
    }

    if (v14)
    {
      v28 = 0xD000000000000012;
      v27 = 0x80000001D9CA4B50;
    }

    if (v14 <= 1)
    {
      v33 = v28;
    }

    else
    {
      v33 = v30;
    }

    if (v14 <= 1)
    {
      v34 = v27;
    }

    else
    {
      v34 = v29;
    }

    v35 = sub_1D9A0E224(v33, v34, &v39);

    *(v25 + 4) = v35;
    _os_log_impl(&dword_1D9962000, v23, v24, "parse VLUUseCase by queryContext: %s", v25, 0xCu);
    v36 = __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x1DA7405F0](v26, -1, -1, v36);
    MEMORY[0x1DA7405F0](v25, -1, -1);
  }

  return v14;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1D9B331AC(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1D9B331CC(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D9B331F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B3325C(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = type metadata accessor for VisualSearchResultInternal(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21 - v8);
  sub_1D99AB100(a1, &v21 - v8, &unk_1ECB53570, &unk_1D9C9C2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v47 = *v9;
    v10 = v47;
    sub_1D9A0EF14(&v47);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v30 = v56;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v21 = v47;
    v22 = v48;
    v11 = v10;
    a2(&v21);

    v71 = v31;
    v72 = v32;
    v73 = v33;
    v74 = v34;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v63 = v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v61 = v21;
    v62 = v22;
    return sub_1D99A6AE0(&v61, &qword_1ECB51B40, &unk_1D9C95AF0);
  }

  else
  {
    sub_1D9B34EF0(v9, v6, type metadata accessor for VisualSearchResultInternal);
    v13 = *(v6 + 23);
    v46 = *(v6 + 22);
    v14 = *(v6 + 9);
    v43 = *(v6 + 8);
    v44 = v14;
    v45 = *(v6 + 10);
    v15 = *(v6 + 5);
    v39 = *(v6 + 4);
    v40 = v15;
    v16 = *(v6 + 7);
    v41 = *(v6 + 6);
    v42 = v16;
    v17 = *(v6 + 1);
    v35 = *v6;
    v36 = v17;
    v18 = *(v6 + 3);
    v37 = *(v6 + 2);
    v38 = v18;
    sub_1D99BB40C(&v35, &v61);

    v19 = sub_1D99FC1B0();
    v55 = v43;
    v56 = v44;
    v57 = v45;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v54 = v42;
    v47 = v35;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    *&v58 = v46;
    *(&v58 + 1) = v13;
    *&v59 = v19;
    *(&v59 + 1) = v20;
    sub_1D9B1839C(&v47);
    v31 = v57;
    v32 = v58;
    v33 = v59;
    v34 = v60;
    v27 = v53;
    v28 = v54;
    v29 = v55;
    v30 = v56;
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v21 = v47;
    v22 = v48;
    a2(&v21);
    v71 = v31;
    v72 = v32;
    v73 = v33;
    v74 = v34;
    v67 = v27;
    v68 = v28;
    v69 = v29;
    v70 = v30;
    v63 = v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v61 = v21;
    v62 = v22;
    sub_1D99A6AE0(&v61, &qword_1ECB51B40, &unk_1D9C95AF0);
    return sub_1D9B336AC(v6, type metadata accessor for VisualSearchResultInternal);
  }
}

uint64_t sub_1D9B33644(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D9B336AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B3370C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualIntelligenceService.Options(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0, &unk_1D9C93B70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v36 - v10;
  v11 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534E8, &qword_1D9C95A80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9C85EA0;
  v15 = type metadata accessor for AvailabilityChecker();
  v16 = swift_allocObject();
  *(v14 + 56) = v15;
  *(v14 + 64) = &off_1F5531560;
  *(v14 + 32) = v16;
  v17 = type metadata accessor for ImageSizeChecker();
  v18 = swift_allocObject();
  *(v14 + 96) = v17;
  *(v14 + 104) = &off_1F5532F68;
  *(v14 + 72) = v18;
  v19 = sub_1D9C04AB0(14, 0, 0x7478746270, 0xE500000000000000);
  sub_1D99CC998(v19, v20, v13);

  type metadata accessor for EligibilityChecker(0);
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  sub_1D9B34EF0(v13, v21 + OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D9C85660;
  v23 = swift_allocObject();
  *(v22 + 56) = v15;
  *(v22 + 64) = &off_1F5531560;
  *(v22 + 32) = v23;
  v24 = sub_1D9C04AB0(14, 0, 0x7478746270, 0xE500000000000000);
  sub_1D99CC998(v24, v25, v13);

  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_1D9B34EF0(v13, v26 + OBJC_IVAR____TtC12VisualLookUp18EligibilityChecker_config, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
  v27 = v37;
  sub_1D99AB100(a1, v37, &qword_1ECB51FD0, &unk_1D9C862F0);
  v28 = v38;
  sub_1D99AB100(a1 + *(v5 + 28), v38, &unk_1ECB540C0, &unk_1D9C93B70);
  v29 = (a1 + *(v5 + 32));
  v30 = *v29;
  v31 = v29[1];
  type metadata accessor for NetworkService(0);
  swift_allocObject();

  v32 = sub_1D9AC84E0(v27, v28, v30, v31);
  v33 = v39;
  sub_1D9B331F0(a1, v39, type metadata accessor for VisualIntelligenceService.Options);
  type metadata accessor for VisualIntelligenceService(0);
  v34 = swift_allocObject();
  sub_1D9B276C4(v32, v33, v21, v26, a2);
  sub_1D9B336AC(a1, type metadata accessor for VisualIntelligenceService.Options);
  return v34;
}

uint64_t _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for VisualIntelligenceService.Options(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v8);
  if (qword_1EDD2C988 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_1EDD2C990);
  (*(v6 + 8))(v8, v5);
  v9 = sub_1D9C7D8BC();
  v10 = sub_1D9C7E09C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D9962000, v9, v10, "VisualIntelligenceService.init()", v11, 2u);
    MEMORY[0x1DA7405F0](v11, -1, -1);
  }

  v12 = sub_1D9A75D94();
  type metadata accessor for TrialWrapper();
  swift_allocObject();
  v13 = sub_1D9C04808((v12 & 1) == 0);
  sub_1D9B331F0(a1, v4, type metadata accessor for VisualIntelligenceService.Options);
  v14 = sub_1D9B3370C(v4, v13);
  sub_1D9B336AC(a1, type metadata accessor for VisualIntelligenceService.Options);
  return v14;
}

void sub_1D9B33D90()
{
  v1 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1D9B2BF9C(*(v0 + 16), *(v0 + 24), *(v0 + 64), *(v0 + 72), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D9B33E60()
{
  v1 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 8);
  v11 = *(v0 + 9);
  v12 = *(v0 + v3);
  v13 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_1D9B2D90C(v4, v5, v10, v11, v0 + v2, v12, v14, v15, v6, v7, v8, v9);
}

uint64_t sub_1D9B33F0C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, __n128), uint64_t a5)
{
  v25 = a1;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.argos.getter(v12);

  v13 = sub_1D9C7D8BC();
  v14 = sub_1D9C7E0AC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[1] = a5;
    v16 = a4;
    v17 = v15;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1D9A0E224(v25, a2, &v26);
    _os_log_impl(&dword_1D9962000, v13, v14, "submitUserFeedback failed with error: %s", v17, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x1DA7405F0](v18, -1, -1, v19);
    v20 = v17;
    a4 = v16;
    MEMORY[0x1DA7405F0](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_1D9B8806C();
  sub_1D9B01700();
  v21 = swift_allocError();
  *v22 = v25;
  v22[1] = a2;

  (a4)(v21);

  return a3;
}

uint64_t objectdestroy_62Tm()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D9B34238(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
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

uint64_t sub_1D9B34280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9B34368(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1D9B344F8(uint64_t a1)
{
  sub_1D9B345D4(319, &qword_1EDD35450, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1D9B345D4(319, &unk_1EDD2C688, MEMORY[0x1E69E7F50]);
    if (v2 <= 0x3F)
    {
      sub_1D9B34628();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9B345D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D9C7E27C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D9B34628()
{
  if (!qword_1EDD2C5E0)
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2C5E0);
    }
  }
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

unint64_t sub_1D9B3472C()
{
  result = qword_1EDD32700;
  if (!qword_1EDD32700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD32700);
  }

  return result;
}

double sub_1D9B34780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D9B347C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9B34814(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + v5);
  v9 = v1[4];
  v10 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);

  return sub_1D9B2DCC0(a1, v6, v7, v9, v1 + v4, v8, v11, v12);
}

uint64_t objectdestroy_116Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 248) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v6 = *(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v31 = *(*(v5 - 1) + 64);

  if (*(v0 + 4) != 1)
  {
  }

  v8 = v3 + v7;

  if (*(v0 + 22))
  {
  }

  v30 = v6;
  v9 = v8 & ~v6;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 26);
  v10 = &v0[v3];
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v10, 1, Context))
  {
    v28 = v9;
    v29 = v2;

    v12 = Context[10];
    v13 = sub_1D9C7B80C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (!v15(v10 + v12, 1, v13))
    {
      (*(v14 + 8))(v10 + v12, v13);
    }

    swift_unknownObjectRelease();
    v16 = Context[14];
    if (!v15(v10 + v16, 1, v13))
    {
      (*(v14 + 8))(v10 + v16, v13);
    }

    v9 = v28;
    v2 = v29;
  }

  v17 = v9;
  v18 = &v0[v9];

  v19 = v5[7];
  v20 = sub_1D9C7D3CC();
  v21 = *(*(v20 - 8) + 8);
  v21(&v0[v9 + v19], v20);
  v22 = &v0[v9 + v5[8]];
  v23 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v21(&v22[*(v23 + 28)], v20);
  }

  v24 = &v18[v5[9]];
  v25 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v21(&v24[*(v25 + 20)], v20);
  }

  v26 = (((v31 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, ((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v30 | 7);
}

uint64_t sub_1D9B34DBC(uint64_t (*a1)(void, uint64_t, uint64_t, unint64_t, unint64_t, void, void, void, void))
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 248) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a1(*(v1 + 16), v1 + 24, v1 + 208, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9B34EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B34F60(uint64_t a1)
{
  v3 = *(type metadata accessor for VisualQueryContext(0) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B2C3DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

double sub_1D9B3503C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = (*(v1 + 80) + 248) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B9AE8C(*(v0 + 16), v0 + 24, v0 + 208, v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v9), *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for BoxScoreDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD31C28;
  if (!qword_1EDD31C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9B35294(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9B3531C(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v80 - v11);
  v85 = type metadata accessor for BoxScoreDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v85);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v24 = a1[5];
  v126 = a1[4];
  v127 = v24;
  v25 = a1[3];
  v124 = a1[2];
  v125 = v25;
  *(v130 + 13) = *(a1 + 141);
  v26 = a1[8];
  v129 = a1[7];
  v130[0] = v26;
  v128 = a1[6];
  v27 = a1[1];
  v122 = *a1;
  v123 = v27;
  v28 = *v3;
  if (!*(*v3 + 16) || (v29 = a2, v30 = v9, v31 = &v80 - v20, v32 = v23, v83 = v22, v84 = v21, v82 = v29, (sub_1D9B35CB4(v28, *(v29 + 76)) & 1) == 0))
  {
    v46 = a1[7];
    a3[6] = a1[6];
    a3[7] = v46;
    a3[8] = a1[8];
    *(a3 + 141) = *(a1 + 141);
    v47 = a1[3];
    a3[2] = a1[2];
    a3[3] = v47;
    v48 = a1[5];
    a3[4] = a1[4];
    a3[5] = v48;
    v49 = a1[1];
    *a3 = *a1;
    a3[1] = v49;
    sub_1D99D39B8(&v122, &v113);
    return;
  }

  if (v3[8] == 1)
  {
    static Logger.argos.getter(v31);
    sub_1D9B3657C(v3, v17, type metadata accessor for BoxScoreDomainAssignmentRule);
    sub_1D9B3657C(v82, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    v33 = sub_1D9C7D8BC();
    v34 = sub_1D9C7E09C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v106[0] = v36;
      *v35 = 136315394;
      v37 = sub_1D9A15C94(v17[*(v85 + 20)]);
      v85 = v31;
      v39 = v38;
      sub_1D9B365E4(v17, type metadata accessor for BoxScoreDomainAssignmentRule);
      v40 = sub_1D9A0E224(v37, v39, v106);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      v41 = v12[1];
      v113 = *v12;
      v114 = v41;
      v42 = NormalizedRect.loggingDescription.getter();
      v44 = v43;
      sub_1D9B365E4(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v45 = sub_1D9A0E224(v42, v44, v106);

      *(v35 + 14) = v45;
      _os_log_impl(&dword_1D9962000, v33, v34, "Reject %s for region %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v36, -1, -1);
      MEMORY[0x1DA7405F0](v35, -1, -1);

      (*(v83 + 8))(v85, v84);
    }

    else
    {

      sub_1D9B365E4(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B365E4(v17, type metadata accessor for BoxScoreDomainAssignmentRule);
      (*(v83 + 8))(v31, v84);
    }

    sub_1D99D3B54(&v113);
    v66 = v120;
    a3[6] = v119;
    a3[7] = v66;
    a3[8] = v121[0];
    *(a3 + 141) = *(v121 + 13);
    v67 = v116;
    a3[2] = v115;
    a3[3] = v67;
    v68 = v118;
    a3[4] = v117;
    a3[5] = v68;
    v69 = v113;
    v70 = v114;
    goto LABEL_20;
  }

  static Logger.argos.getter(v32);
  v81 = v3;
  sub_1D9B3657C(v3, v14, type metadata accessor for BoxScoreDomainAssignmentRule);
  v50 = v30;
  sub_1D9B3657C(v82, v30, type metadata accessor for VisualUnderstanding.ImageRegion);
  v51 = sub_1D9C7D8BC();
  v52 = sub_1D9C7E09C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v82 = v32;
    v54 = v53;
    v55 = swift_slowAlloc();
    *&v106[0] = v55;
    *v54 = 136315394;
    v56 = sub_1D9A15C94(v14[*(v85 + 20)]);
    v58 = v57;
    sub_1D9B365E4(v14, type metadata accessor for BoxScoreDomainAssignmentRule);
    v59 = sub_1D9A0E224(v56, v58, v106);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v60 = v50[1];
    v113 = *v50;
    v114 = v60;
    v61 = NormalizedRect.loggingDescription.getter();
    v63 = v62;
    sub_1D9B365E4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    v64 = sub_1D9A0E224(v61, v63, v106);

    *(v54 + 14) = v64;
    v65 = v85;
    _os_log_impl(&dword_1D9962000, v51, v52, "Assign %s to region %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v55, -1, -1);
    MEMORY[0x1DA7405F0](v54, -1, -1);

    (*(v83 + 8))(v82, v84);
  }

  else
  {

    sub_1D9B365E4(v50, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B365E4(v14, type metadata accessor for BoxScoreDomainAssignmentRule);
    (*(v83 + 8))(v32, v84);
    v65 = v85;
  }

  LOBYTE(v97) = v81[*(v65 + 20)];
  v71 = v97;
  *&v106[0] = *&v81[*(v65 + 28)];

  sub_1D9A19958(v106, &v113);

  LOBYTE(v106[0]) = v71;
  *(v106 + 8) = 0u;
  *(&v106[1] + 8) = 0u;
  BYTE8(v106[2]) = 0;
  v107 = 0u;
  v108 = 0u;
  v109 = v113;
  v110 = v114;
  v111 = 0uLL;
  LOWORD(v112[0]) = 0;
  *(&v112[1] + 5) = 0;
  *(&v112[0] + 1) = 0;
  *&v112[1] = 0;
  v113 = v122;
  v114 = v123;
  v117 = v126;
  v118 = v127;
  v115 = v124;
  v116 = v125;
  *(v121 + 13) = *(v130 + 13);
  v120 = v129;
  v121[0] = v130[0];
  v119 = v128;
  if (sub_1D99AE104(&v113) == 1)
  {
    goto LABEL_13;
  }

  v72 = sub_1D9A15C94(v113);
  v74 = v73;
  if (v72 == sub_1D9A15C94(v71) && v74 == v75)
  {

LABEL_18:
    v103 = v119;
    v104 = v120;
    v105[0] = v121[0];
    *(v105 + 13) = *(v121 + 13);
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v97 = v113;
    v98 = v114;
    v94 = v110;
    v95 = v111;
    v96[0] = v112[0];
    *(v96 + 13) = *(v112 + 13);
    v90 = v106[2];
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v88 = v106[0];
    v89 = v106[1];
    sub_1D9B67854(&v97, &v88, v86);
    sub_1D99AE0B0(v106);
    v94 = v86[6];
    v95 = v86[7];
    v96[0] = v87[0];
    *(v96 + 13) = *(v87 + 13);
    v90 = v86[2];
    v91 = v86[3];
    v92 = v86[4];
    v93 = v86[5];
    v88 = v86[0];
    v89 = v86[1];
    faiss::NormalizationTransform::~NormalizationTransform(&v88);
    v103 = v94;
    v104 = v95;
    v105[0] = v96[0];
    *(v105 + 13) = *(v96 + 13);
    goto LABEL_19;
  }

  v76 = sub_1D9C7E7DC();

  if (v76)
  {
    goto LABEL_18;
  }

LABEL_13:
  v94 = v110;
  v95 = v111;
  v96[0] = v112[0];
  *(v96 + 13) = *(v112 + 13);
  v90 = v106[2];
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v88 = v106[0];
  v89 = v106[1];
  faiss::NormalizationTransform::~NormalizationTransform(&v88);
  v103 = v94;
  v104 = v95;
  v105[0] = v96[0];
  *(v105 + 13) = *(v96 + 13);
LABEL_19:
  v99 = v90;
  v100 = v91;
  v101 = v92;
  v102 = v93;
  v97 = v88;
  v98 = v89;
  v77 = v104;
  a3[6] = v103;
  a3[7] = v77;
  a3[8] = v105[0];
  *(a3 + 141) = *(v105 + 13);
  v78 = v100;
  a3[2] = v99;
  a3[3] = v78;
  v79 = v102;
  a3[4] = v101;
  a3[5] = v79;
  v69 = v97;
  v70 = v98;
LABEL_20:
  *a3 = v69;
  a3[1] = v70;
}

uint64_t sub_1D9B35CB4(uint64_t a1, float a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v69 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0);
  MEMORY[0x1EEE9AC00](v69);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v65 - v15);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v70 = 0x80000001D9CA3A40;
    v73 = (v5 + 8);
    v74 = (v5 + 16);
    v66 = (v5 + 32);
    v20 = *(v14 + 72);
    *&v16 = 136315138;
    v67 = v16;
    v68 = (&v65 - v15);
    v72 = v20;
    while (1)
    {
      sub_1D9B3657C(v19, v17, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      v23 = *v17;
      v22 = v17[1];
      if (v22 < *v17)
      {
        break;
      }

      sub_1D9B365E4(v17, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      if (v22 >= a2 && v23 <= a2)
      {
        return 1;
      }

LABEL_8:
      v19 += v20;
      if (!--v18)
      {
        return 0;
      }
    }

    v75 = v19;
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v24 = byte_1EDD354C0;
    v76 = v18;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_28;
    }

    v25 = [objc_opt_self() mainBundle];
    v26 = [v25 bundleIdentifier];

    if (!v26)
    {
      goto LABEL_19;
    }

    v27 = sub_1D9C7DC7C();
    v29 = v28;

    if (v27 == 0xD00000000000002BLL && v70 == v29)
    {
    }

    else
    {
      v31 = sub_1D9C7E7DC();

      if ((v31 & 1) == 0)
      {
LABEL_19:
        v32 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v32 = &qword_1EDD355A8;
        }

        goto LABEL_24;
      }
    }

    v32 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v32 = &off_1ECB51BA8;
    }

LABEL_24:
    v33 = *(*v32 + 32);

    v34 = sub_1D9C7DC4C();
    LODWORD(v33) = [v33 BOOLForKey_];

    if (v33)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v4, qword_1EDD2C990);
      v36 = *v74;
      (*v74)(v10, v35, v4);
      goto LABEL_31;
    }

LABEL_28:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v36 = *v74;
    (*v74)(v10, v37, v4);
    if ((v24 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_31:
    v38 = [objc_opt_self() mainBundle];
    v39 = [v38 bundleIdentifier];

    if (v39)
    {
      v40 = sub_1D9C7DC7C();
      v42 = v41;

      if (v40 == 0xD00000000000002BLL && v70 == v42)
      {

        goto LABEL_36;
      }

      v43 = sub_1D9C7E7DC();

      if (v43)
      {
LABEL_36:
        v44 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v44 = &off_1ECB51BA8;
        }

        goto LABEL_40;
      }
    }

    v44 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v44 = &qword_1EDD355A8;
    }

LABEL_40:
    v45 = *(*v44 + 32);

    v46 = sub_1D9C7DC4C();
    LODWORD(v45) = [v45 BOOLForKey_];

    if (v45)
    {
      (*v66)(v7, v10, v4);
LABEL_45:
      sub_1D9B3657C(v17, v12, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
      v48 = sub_1D9C7D8BC();
      v49 = sub_1D9C7E09C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v12;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v77 = v52;
        *v51 = v67;
        sub_1D9B36644();
        v53 = v10;
        v54 = v7;
        v55 = v4;
        v56 = sub_1D9C7E7EC();
        v58 = v57;
        v71 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange;
        sub_1D9B365E4(v50, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
        v59 = sub_1D9A0E224(v56, v58, &v77);

        *(v51 + 4) = v59;
        v4 = v55;
        v7 = v54;
        v10 = v53;
        v17 = v68;
        _os_log_impl(&dword_1D9962000, v48, v49, "Invalid threshold %s", v51, 0xCu);
        v60 = __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x1DA7405F0](v52, -1, -1, v60);
        v61 = v51;
        v12 = v50;
        MEMORY[0x1DA7405F0](v61, -1, -1);

        (*v73)(v7, v4);
        v62 = v17;
        v63 = v71;
      }

      else
      {

        sub_1D9B365E4(v12, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange);
        (*v73)(v7, v4);
        v62 = v17;
        v63 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange;
      }

      sub_1D9B365E4(v62, v63);
      v19 = v75;
      v18 = v76;
      v20 = v72;
      goto LABEL_8;
    }

LABEL_42:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v36(v7, v47, v4);
    (*v73)(v10, v4);
    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1D9B3657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9B365E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9B36644()
{
  result = qword_1EDD2DE78;
  if (!qword_1EDD2DE78)
  {
    type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2DE78);
  }

  return result;
}

uint64_t sub_1D9B3669C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51308, &qword_1D9C85FC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_1D9C7D8DC();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = *(v9 + 16);
  v43 = a1;
  v16(&v37 - v14, a1, v8, v13);
  v17 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v18 = sub_1D9C7B77C();
  v19 = [v17 initWithURL_];

  v20 = *(v9 + 8);
  v20(v15, v8);
  if (v19)
  {
    sub_1D9B36B94(v19, v5);
    v20(v43, v8);
    v21 = type metadata accessor for MLModelBundle(0);
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v5, 1, v21))
    {
      v34 = v42;
      sub_1D99CC930(v5, v42, type metadata accessor for MLModelBundle);
      return (*(v22 + 56))(v34, 0, 1, v21);
    }

    sub_1D99A6AE0(v5, &qword_1ECB51308, &qword_1D9C85FC8);
  }

  else
  {
    v39 = v6;
    v23 = v40;
    static Logger.argos.getter(v40);
    (v16)(v11, v43, v8);
    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v26 = 136315138;
      sub_1D99AB1D0();
      v27 = sub_1D9C7E7AC();
      v29 = v28;
      v20(v11, v8);
      v30 = sub_1D9A0E224(v27, v29, &v44);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D9962000, v24, v25, "Cannot create bundle with %s", v26, 0xCu);
      v31 = v38;
      v32 = __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1DA7405F0](v31, -1, -1, v32);
      MEMORY[0x1DA7405F0](v26, -1, -1);

      v33 = v43;
    }

    else
    {

      v20(v43, v8);
      v33 = v11;
    }

    v20(v33, v8);
    (*(v41 + 8))(v23, v39);
  }

  v36 = type metadata accessor for MLModelBundle(0);
  return (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
}

uint64_t type metadata accessor for MLModelBundle(uint64_t a1)
{
  result = qword_1ECB53590;
  if (!qword_1ECB53590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9B36B94(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  v150 = *(v4 - 8);
  v5 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v151 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v152 = &v144 - v7;
  v154 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v154);
  v153 = (&v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D9C7B80C();
  v157 = *(v9 - 8);
  v158 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v144 - v12;
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 1);
  v161 = v13;
  v162 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v144 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v144 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v144 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v144 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v144 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v144 - v35;
  v37 = type metadata accessor for MLModelBundle(0);
  v163 = *(v37 - 8);
  v164 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v149 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = a1;
  v40 = [a1 infoDictionary];
  if (!v40)
  {
    v73 = a2;
    static Logger.argos.getter(v36);
    v74 = sub_1D9C7D8BC();
    v75 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D9962000, v74, v75, "Cannot access MLModels Meta bundle Info.plist", v76, 2u);
      MEMORY[0x1DA7405F0](v76, -1, -1);
    }

    (*(v162 + 8))(v36, v161);
    v72 = v73;
    goto LABEL_22;
  }

  v160 = a2;
  v41 = v40;
  v42 = sub_1D9C7DB4C();

  if (!*(v42 + 16) || (v43 = sub_1D99ED894(0x4C45444F4D5F4956, 0xE800000000000000), (v44 & 1) == 0))
  {

    static Logger.argos.getter(v16);
    v67 = sub_1D9C7D8BC();
    v68 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v170[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_1D9A0E224(0x4C45444F4D5F4956, 0xE800000000000000, v170);
      _os_log_impl(&dword_1D9962000, v67, v68, "The %s key is missing", v69, 0xCu);
      v71 = __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x1DA7405F0](v70, -1, -1, v71);
      MEMORY[0x1DA7405F0](v69, -1, -1);
    }

    (*(v162 + 8))(v16, v161);
    goto LABEL_18;
  }

  sub_1D99A579C(*(v42 + 56) + 32 * v43, v170);

  sub_1D99A579C(v170, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8, &qword_1D9C93AD0);
  if (!swift_dynamicCast())
  {
    static Logger.argos.getter(v19);
    v77 = sub_1D9C7D8BC();
    v78 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v169[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_1D9A0E224(0x4C45444F4D5F4956, 0xE800000000000000, v169);
      _os_log_impl(&dword_1D9962000, v77, v78, "The %s key has invalid value", v79, 0xCu);
      v81 = __swift_destroy_boxed_opaque_existential_0Tm(v80);
      MEMORY[0x1DA7405F0](v80, -1, -1, v81);
      MEMORY[0x1DA7405F0](v79, -1, -1);
    }

    (*(v162 + 8))(v19, v161);
    __swift_destroy_boxed_opaque_existential_0Tm(v170);
LABEL_18:
    v72 = v160;
LABEL_22:
    (*(v163 + 56))(v72, 1, 1, v164);
    return;
  }

  v45 = v167;
  if (!*(v167 + 16))
  {

    v47 = v160;
    goto LABEL_28;
  }

  v46 = sub_1D99ED894(1701667182, 0xE400000000000000);
  v47 = v160;
  if ((v48 & 1) == 0 || (sub_1D99A579C(*(v45 + 56) + 32 * v46, v169), (swift_dynamicCast() & 1) == 0))
  {

LABEL_28:
    static Logger.argos.getter(v33);
    v82 = sub_1D9C7D8BC();
    v83 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1D9962000, v82, v83, "Missing file name in description", v84, 2u);
      MEMORY[0x1DA7405F0](v84, -1, -1);
    }

    (*(v162 + 8))(v33, v161);
    goto LABEL_31;
  }

  v49 = v168;
  v148 = v167;
  v50 = sub_1D9C7DC4C();
  v51 = sub_1D9C7DC4C();
  v52 = [v165 URLForResource:v50 withExtension:v51];

  if (!v52)
  {

    static Logger.argos.getter(v30);
    v88 = sub_1D9C7D8BC();
    v89 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1D9962000, v88, v89, "Cannot find model in the bundle", v90, 2u);
      MEMORY[0x1DA7405F0](v90, -1, -1);
    }

    (*(v162 + 8))(v30, v161);
LABEL_31:
    __swift_destroy_boxed_opaque_existential_0Tm(v170);
    v72 = v47;
    goto LABEL_22;
  }

  v53 = v49;
  v54 = v47;
  v55 = v159;
  sub_1D9C7B7CC();

  if (!*(v45 + 16) || (v56 = sub_1D99ED894(1701605234, 0xE400000000000000), (v57 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v56, v169), (swift_dynamicCast() & 1) == 0))
  {

    static Logger.argos.getter(v27);
    v85 = sub_1D9C7D8BC();
    v86 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1D9962000, v85, v86, "Found model without role", v87, 2u);
      MEMORY[0x1DA7405F0](v87, -1, -1);
    }

    (*(v162 + 8))(v27, v161);
    goto LABEL_35;
  }

  v59 = v167;
  v58 = v168;

  v60 = sub_1D9AFE290(v59, v58);
  if (v60 == 9)
  {

    static Logger.argos.getter(v22);

    v61 = sub_1D9C7D8BC();
    v62 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v169[0] = v64;
      *v63 = 136315138;
      v65 = sub_1D9A0E224(v59, v58, v169);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1D9962000, v61, v62, "Found model with unknown role %s", v63, 0xCu);
      v66 = __swift_destroy_boxed_opaque_existential_0Tm(v64);
      MEMORY[0x1DA7405F0](v64, -1, -1, v66);
      MEMORY[0x1DA7405F0](v63, -1, -1);
    }

    else
    {
    }

    (*(v162 + 8))(v22, v161);
LABEL_35:
    (*(v157 + 8))(v55, v158);
    __swift_destroy_boxed_opaque_existential_0Tm(v170);
    v72 = v54;
    goto LABEL_22;
  }

  v91 = v60;

  if (!*(v45 + 16) || (v92 = sub_1D99ED894(0x6E65736572706572, 0xEE006E6F69746174), (v93 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v92, v169), (swift_dynamicCast() & 1) == 0))
  {

LABEL_46:
    v95 = v156;
    static Logger.argos.getter(v156);
    v96 = sub_1D9C7D8BC();
    v97 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_1D9962000, v96, v97, "Found model with unknown representation", v98, 2u);
      MEMORY[0x1DA7405F0](v98, -1, -1);
    }

    (*(v162 + 8))(v95, v161);
    goto LABEL_35;
  }

  v147 = v91;
  v94 = sub_1D9C7E56C();

  if (!v94)
  {
    LODWORD(v162) = 0;
    goto LABEL_52;
  }

  if (v94 != 1)
  {

    v55 = v159;
    v54 = v160;
    goto LABEL_46;
  }

  LODWORD(v162) = 1;
LABEL_52:
  v166 = sub_1D9A443C0(MEMORY[0x1E69E7CC0]);
  if (!*(v45 + 16) || (v99 = sub_1D99ED894(0x737465737361, 0xE600000000000000), (v100 & 1) == 0) || (sub_1D99A579C(*(v45 + 56) + 32 * v99, v169), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608, &qword_1D9C86880), (swift_dynamicCast() & 1) == 0))
  {
LABEL_67:
    if (*(v45 + 16) && (v116 = sub_1D99ED894(0x61656869746C756DLL, 0xE900000000000064), (v117 & 1) != 0) && (sub_1D99A579C(*(v45 + 56) + 32 * v116, v169), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50, &unk_1D9C8AFA0), (swift_dynamicCast() & 1) != 0))
    {
      v161 = sub_1D9BDCDE4(v167);
    }

    else
    {
      v161 = 0;
    }

    v145 = *(v157 + 16);
    v145(v155, v159, v158);
    if (*(v45 + 16) && (v118 = sub_1D99ED894(7238261, 0xE300000000000000), (v119 & 1) != 0) && (sub_1D99A579C(*(v45 + 56) + 32 * v118, v169), (swift_dynamicCast() & 1) != 0))
    {
      v120 = v168;
      v156 = v167;
    }

    else
    {
      v156 = 0;
      v120 = 0xE000000000000000;
    }

    v146 = v120;
    if (*(v45 + 16) && (v121 = sub_1D99ED894(0x44496C65646F6DLL, 0xE700000000000000), (v122 & 1) != 0))
    {
      sub_1D99A579C(*(v45 + 56) + 32 * v121, v169);

      if (swift_dynamicCast())
      {
        v123 = v167;
        v124 = v168;
LABEL_83:
        v125 = v166;
        v126 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
        v127 = v152;
        (*(*(v126 - 8) + 56))(v152, 1, 1, v126);
        v128 = v153;
        *v153 = v148;
        *(v128 + 8) = v53;
        v129 = v154;
        v130 = v158;
        v145((v128 + *(v154 + 20)), v155, v158);
        v131 = (v128 + v129[6]);
        v132 = v146;
        *v131 = v156;
        v131[1] = v132;
        v133 = (v128 + v129[7]);
        *v133 = v123;
        v133[1] = v124;
        *(v128 + v129[8]) = v147;
        v134 = v125;
        *(v128 + v129[9]) = v125;
        *(v128 + v129[12]) = v162;
        *(v128 + v129[10]) = v161;
        v135 = v151;
        sub_1D9B24898(v127, v151);
        v136 = (*(v150 + 80) + 16) & ~*(v150 + 80);
        v137 = swift_allocObject();
        sub_1D9B24908(v135, v137 + v136);
        *(v137 + ((v5 + v136 + 7) & 0xFFFFFFFFFFFFFFF8)) = v134;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB534C0, &unk_1D9C956D0);
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        v138 = sub_1D9C1A964(2, sub_1D9B24978, v137);
        sub_1D99A6AE0(v127, &unk_1ECB518D0, &unk_1D9C856A0);
        v139 = *(v157 + 8);
        v139(v155, v130);
        v139(v159, v130);
        __swift_destroy_boxed_opaque_existential_0Tm(v170);
        *(v128 + v129[11]) = v138;
        v140 = v164;
        v141 = v149;
        sub_1D99CC930(v128, &v149[*(v164 + 20)], type metadata accessor for MLModelInfo);

        *v141 = v165;
        v142 = v141;
        v143 = v160;
        sub_1D99CC930(v142, v160, type metadata accessor for MLModelBundle);
        (*(v163 + 56))(v143, 0, 1, v140);
        return;
      }
    }

    else
    {
    }

    v123 = 0;
    v124 = 0xE000000000000000;
    goto LABEL_83;
  }

  v101 = v167 + 64;
  v102 = 1 << *(v167 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & *(v167 + 64);
  v105 = (v102 + 63) >> 6;
  v156 = v167;

  v106 = 0;
  while (v104)
  {
    v107 = v106;
LABEL_63:
    v108 = __clz(__rbit64(v104));
    v104 &= v104 - 1;
    v109 = (v107 << 10) | (16 * v108);
    v110 = *(v156 + 56);
    v111 = *(v156 + 48) + v109;
    v112 = *(v111 + 8);
    v161 = *v111;
    v113 = (v110 + v109);
    v114 = *v113;
    v115 = v113[1];

    sub_1D9B37E70(v161, v112, v114, v115, v148, v53, v165, &v166);
  }

  while (1)
  {
    v107 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      break;
    }

    if (v107 >= v105)
    {

      goto LABEL_67;
    }

    v104 = *(v101 + 8 * v107);
    ++v106;
    if (v104)
    {
      v106 = v107;
      goto LABEL_63;
    }
  }

  __break(1u);
}

uint64_t sub_1D9B37E70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v66 = a8;
  v68 = a7;
  v70 = a5;
  v72 = a4;
  v12 = sub_1D9C7D8DC();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = sub_1D9C7B80C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v71 = &v62 - v32;

  v67 = a1;
  v33 = sub_1D99AAF30(a1, a2);
  if (v33 == 12)
  {
    static Logger.argos.getter(v14);

    v34 = sub_1D9C7D8BC();
    v35 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1D9A0E224(v67, a2, &v75);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1D9A0E224(v70, a6, &v75);
      _os_log_impl(&dword_1D9962000, v34, v35, "Unknown asset role %s for model %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v37, -1, -1);
      MEMORY[0x1DA7405F0](v36, -1, -1);
    }

    return (*(v73 + 8))(v14, v74);
  }

  else
  {
    v39 = v33;
    v67 = a6;
    v63 = a3;
    v40 = v72;
    sub_1D9C7B7EC();
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB51FD0, &unk_1D9C862F0);
      v41 = v69;
      static Logger.argos.getter(v69);

      v42 = v67;

      v43 = sub_1D9C7D8BC();
      v44 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v75 = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_1D9A0E224(v63, v40, &v75);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_1D9A0E224(v70, v42, &v75);
        _os_log_impl(&dword_1D9962000, v43, v44, "Invalid name %s for model %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v46, -1, -1);
        MEMORY[0x1DA7405F0](v45, -1, -1);
      }

      return (*(v73 + 8))(v41, v74);
    }

    else
    {
      (*(v25 + 32))(v71, v23, v24);
      sub_1D9C7B78C();
      sub_1D9C7B76C();
      v47 = *(v25 + 8);
      v69 = v25 + 8;
      v62 = v47;
      v47(v30, v24);
      sub_1D9C7B72C();
      v48 = sub_1D9C7DC4C();

      v49 = sub_1D9C7DC4C();

      v50 = [v68 URLForResource:v48 withExtension:v49];

      if (v50)
      {
        sub_1D9C7B7CC();

        v51 = v65;
        (*(v25 + 16))(v65, v27, v24);
        (*(v25 + 56))(v51, 0, 1, v24);
        sub_1D9AC7E10(v51, v39);
        v52 = v62;
        v62(v27, v24);
        return v52(v71, v24);
      }

      else
      {
        v53 = v62;
        v54 = v24;
        v55 = v64;
        static Logger.argos.getter(v64);
        v56 = v72;

        v57 = v67;

        v58 = sub_1D9C7D8BC();
        v59 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v75 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_1D9A0E224(v63, v56, &v75);
          *(v60 + 12) = 2080;
          *(v60 + 14) = sub_1D9A0E224(v70, v57, &v75);
          _os_log_impl(&dword_1D9962000, v58, v59, "Cannot locate resource %s for model %s", v60, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v61, -1, -1);
          MEMORY[0x1DA7405F0](v60, -1, -1);
        }

        (*(v73 + 8))(v55, v74);
        return v53(v71, v54);
      }
    }
  }
}

uint64_t sub_1D9B38674(uint64_t a1)
{
  result = sub_1D9B386F8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLModelInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D9B386F8()
{
  result = qword_1ECB535A0;
  if (!qword_1ECB535A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB535A0);
  }

  return result;
}

void sub_1D9B38744(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D9B1A7B0(v2);
  }

  v3 = *(v2 + 2);
  v24[0] = (v2 + 32);
  v24[1] = v3;
  v4 = sub_1D9C7E79C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 80;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 48;
          if (*(v12 - 6) >= *v12)
          {
            break;
          }

          v14 = *v12;
          v15 = *(v12 + 2);
          v22 = *(v12 + 1);
          v23 = v15;
          v21 = v14;
          v16 = *(v12 - 2);
          *v12 = *v13;
          *(v12 + 1) = v16;
          *(v12 + 2) = *(v12 - 1);
          v17 = v23;
          v18 = v21;
          *(v12 - 2) = v22;
          *(v12 - 1) = v17;
          *v13 = v18;
          v12 -= 48;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 48;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v21 = v7 + 32;
    *(&v21 + 1) = v6;
    sub_1D9B3A230(&v21, v20, v24, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D9B388B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53388, &qword_1D9C94C18);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C8CDC0;
  v19 = 0x1000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v1 = v21;
  v2 = v22;
  v3 = v23;
  *(v0 + 32) = v20;
  *(v0 + 40) = v1;
  *(v0 + 42) = v2;
  *(v0 + 48) = v3;
  v19 = 0x3000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v4 = v21;
  v5 = v22;
  v6 = v23;
  *(v0 + 56) = v20;
  *(v0 + 64) = v4;
  *(v0 + 66) = v5;
  *(v0 + 72) = v6;
  v19 = 0x5000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v7 = v21;
  v8 = v22;
  v9 = v23;
  *(v0 + 80) = v20;
  *(v0 + 88) = v7;
  *(v0 + 90) = v8;
  *(v0 + 96) = v9;
  v19 = 0x7000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v10 = v21;
  v11 = v22;
  v12 = v23;
  *(v0 + 104) = v20;
  *(v0 + 112) = v10;
  *(v0 + 114) = v11;
  *(v0 + 120) = v12;
  v19 = 0x9000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v13 = v21;
  v14 = v22;
  v15 = v23;
  *(v0 + 128) = v20;
  *(v0 + 136) = v13;
  *(v0 + 138) = v14;
  *(v0 + 144) = v15;
  v19 = 0xB000000000000000;
  S2Cell.init(cellId:)(&v19, &v20);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *(v0 + 152) = v20;
  *(v0 + 160) = v16;
  *(v0 + 162) = v17;
  *(v0 + 168) = v18;
  off_1ECB535A8 = v0;
}

uint64_t sub_1D9B38A54(uint64_t result)
{
  v2 = 30;
  if (result < 30)
  {
    v2 = result;
  }

  *(v1 + 16) = v2 & ~(v2 >> 63);
  return result;
}

uint64_t *(*sub_1D9B38A6C(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_1D9B38A94;
}

uint64_t *sub_1D9B38A94(uint64_t *result)
{
  v1 = *result;
  if (*result >= 30)
  {
    v1 = 30;
  }

  *(result[1] + 16) = v1 & ~(v1 >> 63);
  return result;
}

uint64_t sub_1D9B38AB8(uint64_t result)
{
  v2 = 30;
  if (result < 30)
  {
    v2 = result;
  }

  *(v1 + 24) = v2 & ~(v2 >> 63);
  return result;
}

uint64_t *(*sub_1D9B38AD0(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return sub_1D9B38AF8;
}

uint64_t *sub_1D9B38AF8(uint64_t *result)
{
  v1 = *result;
  if (*result >= 30)
  {
    v1 = 30;
  }

  *(result[1] + 24) = v1 & ~(v1 >> 63);
  return result;
}

uint64_t sub_1D9B38B1C(uint64_t result)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t *(*sub_1D9B38B38(void *a1))(uint64_t *result)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_1D9B38B60;
}

uint64_t *sub_1D9B38B60(uint64_t *result)
{
  v1 = *result;
  if (*result >= 3)
  {
    v1 = 3;
  }

  if (v1 <= 1)
  {
    v1 = 1;
  }

  *(result[1] + 32) = v1;
  return result;
}

uint64_t (*sub_1D9B38B90(void *a1))()
{
  *a1 = *(v1 + 40);
  a1[1] = v1;
  return sub_1D9B38BB8;
}

double S2RegionCoverer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C95BA0;
  *(v0 + 32) = xmmword_1D9C95BB0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  return result;
}

double S2RegionCoverer.init()()
{
  *(v0 + 16) = xmmword_1D9C95BA0;
  *(v0 + 32) = xmmword_1D9C95BB0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = 0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v2;
  return result;
}

uint64_t sub_1D9B38CB8(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  sub_1D9B3989C(a1);

  S2CellUnion.normalize()();
  v3 = S2CellUnion.denormalize(minLevel:levelMod:)(*(v2 + 16), *(v2 + 32));

  return v3;
}

BOOL sub_1D9B38D3C@<W0>(char a1@<W1>, void *a2@<X8>, uint64_t a3@<X0>)
{
  *(v3 + 48) = a1;
  sub_1D9B3989C(a3);
  *a2 = *(v3 + 96);

  return S2CellUnion.normalize()();
}

void sub_1D9B38D78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = a1[2];
  swift_beginAccess();
  sub_1D9B3A098(v3 + 56, &v23);
  if (!v25)
  {
    sub_1D9B39C0C(&v23);
LABEL_7:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  sub_1D9979B9C(&v23, v26);
  v10 = v27;
  v11 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  *&v23 = v5;
  BYTE8(v23) = v6;
  BYTE9(v23) = v7;
  BYTE10(v23) = v8;
  v24 = v9;
  if (((*(v11 + 32))(&v23, v10, v11) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    goto LABEL_7;
  }

  if (*(v3 + 16) > v7)
  {
    v12 = 0;
    v13 = v5;
LABEL_19:
    *a2 = v13;
    *(a2 + 8) = v6 | (v7 << 8) | (v8 << 16);
    *(a2 + 16) = v9;
    *(a2 + 24) = v12;
    *(a2 + 32) = MEMORY[0x1E69E7CC0];

    goto LABEL_20;
  }

  if (*(v3 + 48) != 1)
  {
    v16 = *(v3 + 32);
    v17 = __OFADD__(v7, v16);
    v18 = v7 + v16;
    if (!v17)
    {
      v13 = v5;
      if (*(v3 + 24) < v18 || (v19 = v27, v20 = v28, __swift_project_boxed_opaque_existential_1(v26, v27), *&v23 = v5, BYTE8(v23) = v6, BYTE9(v23) = v7, BYTE10(v23) = v8, v24 = v9, ((*(v20 + 24))(&v23, v19, v20) & 1) != 0))
      {
        v12 = 1;
        goto LABEL_19;
      }

LABEL_18:
      v12 = 0;
      goto LABEL_19;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v14 = v27;
  v15 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  *&v23 = v5;
  BYTE8(v23) = v6;
  BYTE9(v23) = v7;
  BYTE10(v23) = v8;
  v24 = v9;
  if ((*(v15 + 24))(&v23, v14, v15))
  {
    v12 = 1;
    v13 = v5;
    goto LABEL_19;
  }

  v21 = *(v3 + 32);
  v17 = __OFADD__(v7, v21);
  v22 = v7 + v21;
  if (v17)
  {
    goto LABEL_23;
  }

  v13 = v5;
  if (*(v3 + 24) >= v22)
  {
    goto LABEL_18;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_20:
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
}

double sub_1D9B38FE0(uint64_t *a1)
{
  v6 = a1[2];
  if (!v6)
  {
    return result;
  }

  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v10 = a1[4];
  v51 = *a1;
  v52 = v7;
  v53 = BYTE2(v7);
  v54 = v6;
  v55 = v9 & 1;
  v56 = v10;
  if (v9)
  {
    v11 = *(v1 + 96);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 96) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1D9AFAA28(0, *(v11 + 2) + 1, 1, v11);
      *(v1 + 96) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D9AFAA28((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    *&v11[8 * v14 + 32] = v8;
    *(v1 + 96) = v11;

    return result;
  }

  if (*(v1 + 16) <= SBYTE1(v7))
  {
    v16 = *(v1 + 32);
  }

  else
  {
    v16 = 1;
  }

  v50 = v16;
  v44 = v8;
  LOWORD(v45) = v7;
  BYTE2(v45) = BYTE2(v7);
  v46 = v6;
  sub_1D9B3A14C(v8, v7, v6, v9, v10);

  sub_1D9B39440(&v51, &v44, &v50);
  v18 = v17;

  v19 = v56;
  v20 = *(v56 + 2);
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = *(v1 + 32);
  v22 = 2 * v21;
  if (*(v1 + 48))
  {
    if (v21 + 0x4000000000000000 >= 0)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v23 = 0x4000000000000000;
  if (v21 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v22 < -64 || v22 > 64)
  {
    goto LABEL_20;
  }

  if (v22 < 0)
  {
    goto LABEL_54;
  }

  if (v22 == 64)
  {
    goto LABEL_20;
  }

  if (v18 == 1 << (v22 & 0x3E))
  {
LABEL_25:
    LOBYTE(v23) = HIBYTE(v52);
    if (*(v1 + 16) > SHIBYTE(v52))
    {
      goto LABEL_26;
    }

LABEL_41:
    v35 = v51;
    v36 = v54;
    v37 = v52 | (v23 << 8) | (v53 << 16);
    v44 = v51;
    v45 = v37;
    v46 = v54;
    v47 = 1;
    v48 = v19;

    sub_1D9B38FE0(&v44);
    sub_1D9B3A108(v35, v37, v36, 1, v19);
    goto LABEL_33;
  }

  while (1)
  {
LABEL_26:
    v2 = HIBYTE(v52);
    if ((v21 - 33) < 0xFFFFFFFFFFFFFFBFLL)
    {
LABEL_27:
      v24 = v18;
      goto LABEL_28;
    }

    v23 = SHIBYTE(v52);
    if (v21 < 0)
    {
      break;
    }

    if (v21 == 32)
    {
      goto LABEL_27;
    }

    v22 &= 0x3Eu;
    v21 = SHIBYTE(v52) << v22;
    v33 = __OFADD__(v21, v20);
    v20 += v21;
    if (!v33)
    {
      v34 = v20 << v22;
      v33 = __OFADD__(v34, v18);
      v24 = v34 + v18;
      if (!v33)
      {
        goto LABEL_28;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    if (v22 == -64)
    {
LABEL_20:
      if (!v18)
      {
        goto LABEL_25;
      }
    }

    else if (v18 == 1uLL >> (-v22 & 0x3E))
    {
      goto LABEL_25;
    }
  }

LABEL_45:
  v39 = v21 == -32;
  LOBYTE(v21) = 63;
  if (!v39)
  {
    LODWORD(v21) = -v22 & 0x3E;
  }

  v21 = v23 >> v21;
  v33 = __OFADD__(v21, v20);
  v20 += v21;
  if (v33)
  {
    goto LABEL_53;
  }

  v40 = (v22 != -64) & __CFADD__(v22, 64);
  v41 = v20 >> (-v22 & 0x3E);
  v42 = v20 >> 63;
  if (v40)
  {
    v42 = v41;
  }

  v33 = __OFADD__(v42, v18);
  v24 = v42 + v18;
  if (v33)
  {
    goto LABEL_40;
  }

LABEL_28:
  v25 = -v24;
  if (__OFSUB__(0, v24))
  {
    __break(1u);
  }

  else
  {
    v4 = v51;
    v5 = v52;
    v3 = v53;
    v18 = v54;
    v43 = v55;
    swift_beginAccess();
    v10 = *(v1 + 104);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 104) = v10;
    if (v26)
    {
      goto LABEL_30;
    }
  }

  v10 = sub_1D9AFB2D4(0, *(v10 + 2) + 1, 1, v10);
  *(v1 + 104) = v10;
LABEL_30:
  v28 = *(v10 + 2);
  v27 = *(v10 + 3);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    v38 = sub_1D9AFB2D4((v27 > 1), v28 + 1, 1, v10);
    v29 = v28 + 1;
    v10 = v38;
  }

  *(v10 + 2) = v29;
  v30 = &v10[48 * v28];
  *(v30 + 4) = v25;
  *(v30 + 5) = v4;
  v30[48] = v5;
  v30[49] = v2;
  v30[50] = v3;
  v31 = v49[11];
  *(v30 + 51) = *&v49[7];
  v30[55] = v31;
  *(v30 + 7) = v18;
  v30[64] = v43;
  v32 = *v49;
  *(v30 + 17) = *&v49[3];
  *(v30 + 65) = v32;
  *(v30 + 9) = v19;
  *(v1 + 104) = v10;
LABEL_33:

  return result;
}

void sub_1D9B39440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = a2[2];
  swift_beginAccess();
  sub_1D9B3A098(v3 + 56, &v42);
  if (!v44)
  {
    sub_1D9B39C0C(&v42);
    return;
  }

  sub_1D9979B9C(&v42, v46);
  if (__OFSUB__(*a3, 1))
  {
    goto LABEL_24;
  }

  v33 = a3;
  --*a3;
  *&v42 = v5;
  BYTE8(v42) = v6;
  BYTE9(v42) = v7;
  BYTE10(v42) = v8;
  v43 = v9;
  v10 = S2Cell.subdivide()();
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_21:

    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return;
  }

  v35 = 0;
  v12 = (v10 + 48);
  v13 = a3;
  while (1)
  {
    v14 = *(v12 - 2);
    v15 = *(v12 - 8);
    v16 = *(v12 - 7);
    v17 = *(v12 - 6);
    v18 = *v12;
    if (*v13 < 1)
    {
      v37 = *(v12 - 2);
      v38 = v15;
      v39 = v16;
      v40 = v17;
      v41 = v18;

      sub_1D9B38D78(&v37, &v42);

      v24 = v43;
      if (!v43)
      {
        goto LABEL_7;
      }

      v36 = v11;
      v26 = *(&v42 + 1);
      v25 = v42;
      v27 = v44;
      v28 = v45;
      v29 = *(a1 + 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D9AFB1B4(0, *(v29 + 2) + 1, 1, v29);
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v29 = sub_1D9AFB1B4((v30 > 1), v31 + 1, 1, v29);
      }

      *(v29 + 2) = v31 + 1;
      v32 = &v29[40 * v31];
      *(v32 + 4) = v25;
      *(v32 + 20) = v26;
      v32[42] = BYTE2(v26);
      *(v32 + 6) = v24;
      v32[56] = v27 & 1;
      *(v32 + 8) = v28;
      sub_1D9B3A108(v25, v26, v24, v27, v28);
      *(a1 + 32) = v29;
      if (v27)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_23;
        }

        ++v35;
      }

      goto LABEL_6;
    }

    v36 = v11;
    v20 = v47;
    v19 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    *&v42 = v14;
    BYTE8(v42) = v15;
    BYTE9(v42) = v16;
    BYTE10(v42) = v17;
    v43 = v18;
    v21 = *(v19 + 32);

    if (v21(&v42, v20, v19))
    {
      break;
    }

    v13 = v33;
LABEL_6:
    v11 = v36;
LABEL_7:
    v12 += 3;
    if (!--v11)
    {
      goto LABEL_21;
    }
  }

  *&v42 = v14;
  BYTE8(v42) = v15;
  BYTE9(v42) = v16;
  BYTE10(v42) = v17;
  v43 = v18;
  v13 = v33;
  sub_1D9B39440(a1, &v42, v33);
  v23 = v22;

  v11 = v36;
  if (!__OFADD__(v35, v23))
  {
    v35 += v23;
    goto LABEL_7;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1D9B39764()
{
  swift_beginAccess();
  sub_1D9B3A098(v0 + 56, &v18);
  v1 = v21;
  sub_1D9B39C0C(&v18);
  if (v1)
  {
    if (qword_1ECB50C48 != -1)
    {
      swift_once();
    }

    if (*(off_1ECB535A8 + 2) < 6uLL)
    {
      __break(1u);
    }

    else
    {
      v2 = (off_1ECB535A8 + 48);
      v3 = 6;
      do
      {
        v4 = *(v2 - 2);
        v5 = *(v2 - 4);
        v6 = *(v2 - 6);
        v7 = *v2;
        v2 += 3;
        v13 = v4;
        LOWORD(v14) = v5;
        BYTE2(v14) = v6;
        v15 = v7;

        sub_1D9B38D78(&v13, &v18);

        v8 = v18;
        v9 = v19;
        v10 = v20;
        v11 = v21;
        v12 = v22;
        v13 = v18;
        v14 = v19;
        v15 = v20;
        v16 = v21;
        v17 = v22;
        sub_1D9B38FE0(&v13);
        sub_1D9B3A108(v8, v9, v10, v11, v12);
        --v3;
      }

      while (v3);
    }
  }
}

void sub_1D9B3989C(uint64_t a1)
{
  swift_beginAccess();
  if (*(*(v1 + 104) + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(*(v1 + 96) + 16))
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_1D99A17C8(a1, &v27);
  swift_beginAccess();
  sub_1D9B3A190(&v27, v1 + 56);
  swift_endAccess();
  sub_1D9B39764();
  swift_beginAccess();
  sub_1D9B38744((v1 + 104));
  swift_endAccess();
  v3 = *(v1 + 104);
  v4 = *(v3 + 2);
  if (v4)
  {
    while (*(v1 + 48) != 1 || *(*(v1 + 96) + 16) < *(v1 + 40))
    {
      v5 = *(v3 + 5);
      v6 = v3[48];
      v7 = v3[49];
      v8 = v3[50];
      v9 = *(v3 + 9);
      v26 = *(v3 + 7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 104) = v3;
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > *(v3 + 3) >> 1)
      {
        v3 = sub_1D9AFB2D4(isUniquelyReferenced_nonNull_native, v4, 1, v3);
        *(v1 + 104) = v3;
      }

      sub_1D9B3A200((v3 + 32));
      v11 = *(v3 + 2);
      memmove(v3 + 32, v3 + 80, 48 * v11 - 48);
      v12 = v11 - 1;
      *(v3 + 2) = v11 - 1;
      *(v1 + 104) = v3;
      v13 = *(v9 + 16);
      if (*(v1 + 16) > v7)
      {
        goto LABEL_12;
      }

      if (v13 == 1)
      {
LABEL_15:
        v14 = 0;
        v15 = (v9 + 64);
        while (v14 < *(v9 + 16))
        {
          ++v14;
          v16 = *v15;
          v17 = *(v15 - 8);
          v18 = *(v15 - 2);
          v20 = *(v15 - 24) | (*(v15 - 22) << 16) | (*(v15 - 23) << 8);
          *&v27 = *(v15 - 4);
          v19 = v27;
          *(&v27 + 1) = v20;
          *&v28 = v18;
          *(&v28 + 1) = v17;
          v29 = v16;

          sub_1D9B38FE0(&v27);
          sub_1D9B3A108(v19, v20, v18, v17, v16);
          v15 += 5;
          if (v13 == v14)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v21 = *(*(v1 + 96) + 16);
      if (*(v1 + 48))
      {
        v12 = 0;
      }

      v22 = __OFADD__(v21, v12);
      v23 = v21 + v12;
      if (v22)
      {
        goto LABEL_28;
      }

      v22 = __OFADD__(v23, v13);
      v24 = v23 + v13;
      if (v22)
      {
        goto LABEL_29;
      }

      if (*(v1 + 40) >= v24)
      {
LABEL_12:
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else if ((*(v1 + 48) & 1) == 0)
      {
        v25 = v6 & 0xFFFFFFFFFFFF00FFLL | (v7 << 8);
        *&v27 = v5;
        *(&v27 + 1) = v25 | (v8 << 16);
        *&v28 = v26;
        *(&v28 + 1) = 1;
        v29 = v9;

        sub_1D9B38FE0(&v27);
        sub_1D9B3A108(v5, v25 | (v8 << 16), v26, 1, v9);
      }

LABEL_5:

      v3 = *(v1 + 104);
      v4 = *(v3 + 2);
      if (!v4)
      {
        break;
      }
    }
  }

  *(v1 + 104) = MEMORY[0x1E69E7CC0];

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_1D9B3A190(&v27, v1 + 56);
  swift_endAccess();
}

uint64_t S2RegionCoverer.deinit()
{
  sub_1D9B39C0C(v0 + 56);

  return v0;
}

uint64_t sub_1D9B39C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0, &qword_1D9C95BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t S2RegionCoverer.__deallocating_deinit()
{
  sub_1D9B39C0C(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D9B39F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D9B39FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9B3A044()
{
  result = qword_1ECB535B8;
  if (!qword_1ECB535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB535B8);
  }

  return result;
}

uint64_t sub_1D9B3A098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0, &qword_1D9C95BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D9B3A108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

double sub_1D9B3A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D9B3A190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535B0, &qword_1D9C95BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D9B3A230(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1D99E8FDC(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1D9B3A7EC((*a3 + 48 * *v91), (*a3 + 48 * *v93), (*a3 + 48 * v94), v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6);
      v10 = 48 * v8;
      v11 = (*a3 + 48 * v8);
      v14 = *v11;
      v13 = v11 + 12;
      v12 = v14;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v13;
        v13 += 6;
        v18 = (v12 < v9) ^ (v16 >= v17);
        ++v15;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v6 = v15 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 48 * v6 - 48;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v29 + v10);
            v23 = (v29 + v19);
            v24 = *v22;
            v25 = v22[1];
            v26 = v22[2];
            v28 = v23[1];
            v27 = v23[2];
            *v22 = *v23;
            v22[1] = v28;
            v22[2] = v27;
            v23[1] = v25;
            v23[2] = v26;
            *v23 = v24;
          }

          ++v21;
          v19 -= 48;
          v10 += 48;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D99E8FF0(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = sub_1D99E8FF0((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = v7 + 32;
    v45 = &v7[16 * v42 + 32];
    *v45 = v8;
    *(v45 + 1) = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[16 * v46 - 16];
        v85 = *v84;
        v86 = &v44[16 * v46];
        v87 = *(v86 + 1);
        sub_1D9B3A7EC((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v7 + 2);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&v44[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *(v7 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 48 * v6;
  v32 = v8 - v6;
LABEL_30:
  v33 = v32;
  v34 = v31;
  while (1)
  {
    v35 = (v34 - 48);
    if (*(v34 - 48) >= *v34)
    {
LABEL_29:
      ++v6;
      v31 += 48;
      --v32;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v37 = *(v34 + 16);
    v36 = *(v34 + 32);
    v38 = *v34;
    v39 = *(v34 - 32);
    *v34 = *v35;
    *(v34 + 16) = v39;
    *(v34 + 32) = *(v34 - 16);
    *v35 = v38;
    *(v34 - 32) = v37;
    v34 -= 48;
    v35[2] = v36;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
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
}

uint64_t sub_1D9B3A7EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = v5 + 48;
      v20 = *(v18 - 6);
      v18 -= 48;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v24;
          *v5 = v23;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 3) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

uint64_t sub_1D9B3AA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D9B3AA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12VisualLookUp14ObjectDetectorC11DebugResultVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s14DetectedResultVMa(uint64_t a1)
{
  result = qword_1EDD34230;
  if (!qword_1EDD34230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9B3AB74(uint64_t a1)
{
  sub_1D9B3AC0C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9B3AC0C(uint64_t a1)
{
  if (!qword_1EDD35430)
  {
    sub_1D9C7B93C();
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD35430);
    }
  }
}

uint64_t sub_1D9B3AC64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8, &qword_1D9C8BB10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9C85E90;
  v3 = *v0;
  v4 = MEMORY[0x1E69E65A8];
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = _s14DetectedResultVMa(0);
  v6 = NormalizedRect.loggingDescription.getter();
  v8 = v7;
  *(v2 + 96) = MEMORY[0x1E69E6158];
  v9 = sub_1D99D2A60();
  *(v2 + 104) = v9;
  *(v2 + 72) = v6;
  *(v2 + 80) = v8;
  v10 = (v1 + *(v5 + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_1D9C7E40C();
  MEMORY[0x1DA73DF90](0xD00000000000001FLL, 0x80000001D9CA5340);
  MEMORY[0x1DA73DF90](v13, v14);
  MEMORY[0x1DA73DF90](0xD000000000000014, 0x80000001D9CA5360);
  MEMORY[0x1DA73DF90](v11, v12);
  *(v2 + 136) = MEMORY[0x1E69E6158];
  *(v2 + 144) = v9;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0xE000000000000000;
  v15 = *(v1 + *(v5 + 32));
  v16 = MEMORY[0x1E69E64A8];
  *(v2 + 176) = MEMORY[0x1E69E6448];
  *(v2 + 184) = v16;
  *(v2 + 152) = v15;

  return sub_1D9C7DCAC();
}

uint64_t sub_1D9B3AE38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535D0, &qword_1D9C95E50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B3B638();
  sub_1D9C7E96C();
  LOBYTE(v19) = 0;
  sub_1D9C7E72C();
  if (!v2)
  {
    v9 = _s14DetectedResultVMa(0);
    LOBYTE(v19) = 1;
    sub_1D9C7B93C();
    sub_1D9B3B6F4(&qword_1EDD2C310, MEMORY[0x1E69695B0]);
    sub_1D9C7E6DC();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v19 = *v10;
    v20 = v11;
    v18 = 2;
    sub_1D99EA188();
    sub_1D9C7E74C();
    v12 = (v3 + *(v9 + 28));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    *&v19 = *v12;
    *(&v19 + 1) = v13;
    *&v20 = v14;
    *(&v20 + 1) = v15;
    v18 = 3;
    sub_1D99FEF30();

    sub_1D9C7E74C();

    LOBYTE(v19) = 4;
    sub_1D9C7E71C();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D9B3B0CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0, &qword_1D9C95DD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535D8, &unk_1D9C95E58);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = _s14DetectedResultVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9B3B638();
  v25 = v9;
  sub_1D9C7E95C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v13 = v23;
    v14 = v24;
    LOBYTE(v27) = 0;
    *v12 = sub_1D9C7E63C();
    sub_1D9C7B93C();
    LOBYTE(v27) = 1;
    sub_1D9B3B6F4(&unk_1EDD2C300, MEMORY[0x1E69695D0]);
    sub_1D9C7E5EC();
    sub_1D9B3B738(v6, v12 + v10[5]);
    v26 = 2;
    sub_1D99EA7B8();
    sub_1D9C7E65C();
    v15 = (v12 + v10[6]);
    v16 = v28;
    *v15 = v27;
    v15[1] = v16;
    v26 = 3;
    sub_1D99FF080();
    sub_1D9C7E65C();
    v17 = v28;
    v18 = (v12 + v10[7]);
    *v18 = v27;
    v18[1] = v17;
    LOBYTE(v27) = 4;
    sub_1D9C7E62C();
    v20 = v19;
    (*(v13 + 8))(v25, v14);
    *(v12 + v10[8]) = v20;
    sub_1D9B3B7A8(v12, v22);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1D9B3B80C(v12);
  }
}

uint64_t sub_1D9B3B4C4()
{
  v1 = *v0;
  v2 = 0x6E6F697469736F70;
  v3 = 0x676E69646E756F62;
  v4 = 0x79676F6C6F746E6FLL;
  if (v1 != 3)
  {
    v4 = 0x65726F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44497463656A626FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9B3B564@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9B3BA28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9B3B58C(uint64_t a1)
{
  v2 = sub_1D9B3B638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9B3B5C8(uint64_t a1)
{
  v2 = sub_1D9B3B638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9B3B638()
{
  result = qword_1EDD2BDF8;
  if (!qword_1EDD2BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDF8);
  }

  return result;
}

uint64_t sub_1D9B3B68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0, &qword_1D9C95DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B3B6F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D9C7B93C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9B3B738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB535C0, &qword_1D9C95DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3B7A8(uint64_t a1, uint64_t a2)
{
  v4 = _s14DetectedResultVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3B80C(uint64_t a1)
{
  v2 = _s14DetectedResultVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9B3B878(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D9B3B8C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9B3B924()
{
  result = qword_1ECB535E8;
  if (!qword_1ECB535E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB535E8);
  }

  return result;
}

unint64_t sub_1D9B3B97C()
{
  result = qword_1EDD2BDE0;
  if (!qword_1EDD2BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDE0);
  }

  return result;
}

unint64_t sub_1D9B3B9D4()
{
  result = qword_1EDD2BDE8;
  if (!qword_1EDD2BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BDE8);
  }

  return result;
}

uint64_t sub_1D9B3BA28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44497463656A626FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E756F62 && a2 == 0xEB00000000786F42 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xE800000000000000 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D9B3BBD8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1D9C7E35C();
  if (result == 1 << *(a1 + 32))
  {
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v5 = sub_1D9B3D830(&v14, result, *(a1 + 36), 0, a1);
    *&v16 = v5;
    *(&v16 + 1) = v6;
    *&v17 = v7;
    *(&v17 + 1) = v8;
    v9 = v14;
    v10 = v15;
    v18[0] = v14;
    v18[1] = v15;
    *&v19 = v5;
    *(&v19 + 1) = v6;
    *&v20 = v7;
    *(&v20 + 1) = v8;
    v11 = v14;
    v12 = v15;
    v13 = v20;
    a2[2] = v19;
    a2[3] = v13;
    *a2 = v11;
    a2[1] = v12;
    v21[0] = v9;
    v21[1] = v10;
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;

    sub_1D99AB100(v18, v26, &qword_1ECB535F0, &unk_1D9C96020);
    sub_1D9B3D8E8(v21);
    v26[0] = v14;
    v26[1] = v15;
    v26[2] = v16;
    v26[3] = v17;
    return sub_1D9B3D8E8(v26);
  }

  return result;
}

uint64_t sub_1D9B3BD0C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v162 - v9;
  v188 = sub_1D9C7D8DC();
  v191 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v185 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v162 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v177 = &v162 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v162 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v176 = &v162 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v162 - v25;
  v26 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v184 = (&v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v162 - v30);
  v32 = a2[9];
  v33 = a2[7];
  v221 = a2[8];
  v222 = v32;
  v34 = a2[9];
  v223 = a2[10];
  v35 = a2[5];
  v36 = a2[3];
  v217 = a2[4];
  v218 = v35;
  v37 = a2[5];
  v38 = a2[7];
  v219 = a2[6];
  v220 = v38;
  v39 = a2[1];
  v213 = *a2;
  v214 = v39;
  v40 = a2[3];
  v42 = *a2;
  v41 = a2[1];
  v215 = a2[2];
  v216 = v40;
  v209 = v221;
  v210 = v34;
  v211 = a2[10];
  v205 = v217;
  v206 = v37;
  v207 = v219;
  v208 = v33;
  v201 = v42;
  v202 = v41;
  v224 = *(a2 + 22);
  v212 = *(a2 + 22);
  v203 = v215;
  v204 = v36;
  sub_1D9B67A68();
  v44 = v43;
  v45 = *(v43 + 16);
  if (v45)
  {
    v172 = a3;
    v186 = v10;
    result = type metadata accessor for ServerSearchResult(0);
    v47 = 0;
    v174 = 0;
    v48 = *(result + 20);
    v49 = v44 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v187 = a1;
    v50 = *(a1 + v48);
    v180 = (v191 + 8);
    v189 = MEMORY[0x1E69E7CC0];
    *&v51 = 136315394;
    v171 = v51;
    *&v51 = 136315138;
    v170 = v51;
    v192 = v49;
    v190 = v44;
    while (1)
    {
      if (v47 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1D9B3D7C8(v49 + *(v27 + 72) * v47, v31, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v50 + 16))
      {
        v52 = sub_1D99EE1AC(*v31, v31[1], v31[2], v31[3]);
        if (v53)
        {
          if (*(v50 + 16))
          {
            v54 = *(*(v50 + 56) + 32 * v52);
            v56 = v31[2];
            v55 = v31[3];
            v58 = *v31;
            v57 = v31[1];

            v59 = sub_1D99EE1AC(v58, v57, v56, v55);
            if ((v60 & 1) != 0 && (v191 = v54, *(v50 + 16)))
            {
              v61 = v45;
              v62 = *(*(v50 + 56) + 32 * v59 + 8);
              v64 = v31[2];
              v63 = v31[3];
              v66 = *v31;
              v65 = v31[1];

              v67 = sub_1D99EE1AC(v66, v65, v64, v63);
              v49 = v192;
              if ((v68 & 1) != 0 && (v183 = v62, *(v50 + 16)))
              {
                v70 = v31[2];
                v69 = v31[3];
                v72 = *v31;
                v71 = v31[1];
                v173 = *(*(v50 + 56) + 32 * v67 + 16);

                v73 = sub_1D99EE1AC(v72, v71, v70, v69);
                v45 = v61;
                if (v74)
                {
                  v168 = a4;
                  v75 = *(*(v50 + 56) + 32 * v73 + 24);

                  sub_1D9B67DFC();
                  v44 = v190;
                  if (*(v76 + 16))
                  {
                    v77 = *(v76 + 32);

                    v200 = v77;
                    if (*(v75 + 16))
                    {
                      v78 = *(v75 + 32);

                      LODWORD(v167) = v78;
                      v79 = sub_1D9A15C94(v78);
                      v81 = v80;
                      LODWORD(v169) = v77;
                      if (v79 == sub_1D9A15C94(v77) && v81 == v82)
                      {

LABEL_26:
                        v93 = v178;
                        static Logger.argos.getter(v178);
                        sub_1D9A3E0E0(v181);
                        v94 = v188;
                        v169 = *v180;
                        v169(v93, v188);
                        v95 = sub_1D9C7D8BC();
                        v96 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v95, v96))
                        {
                          v97 = swift_slowAlloc();
                          v165 = v97;
                          v166 = swift_slowAlloc();
                          *&v201 = v166;
                          *v97 = v170;
                          v98 = sub_1D9A15C94(v167);
                          LODWORD(v167) = v96;
                          v100 = sub_1D9A0E224(v98, v99, &v201);

                          v101 = v165;
                          *(v165 + 4) = v100;
                          _os_log_impl(&dword_1D9962000, v95, v167, "server result visual domain [%s] == client visual domain", v101, 0xCu);
                          v102 = v166;
                          v103 = __swift_destroy_boxed_opaque_existential_0Tm(v166);
                          MEMORY[0x1DA7405F0](v102, -1, -1, v103);
                          MEMORY[0x1DA7405F0](v101, -1, -1);

                          v84 = v169;
                          v104 = (v169)(v181, v188);
                        }

                        else
                        {

                          v84 = v169;
                          v104 = (v169)(v181, v94);
                        }
                      }

                      else
                      {
                        v92 = sub_1D9C7E7DC();

                        if (v92)
                        {
                          goto LABEL_26;
                        }

                        v143 = v175;
                        static Logger.argos.getter(v175);
                        sub_1D9A3E0E0(v176);
                        v84 = *v180;
                        (*v180)(v143, v188);
                        v144 = sub_1D9C7D8BC();
                        v145 = sub_1D9C7E08C();
                        if (os_log_type_enabled(v144, v145))
                        {
                          v146 = swift_slowAlloc();
                          v166 = v144;
                          v147 = v146;
                          v165 = swift_slowAlloc();
                          *&v201 = v165;
                          *v147 = v171;
                          v148 = sub_1D9A15C94(v167);
                          v164 = v145;
                          v163 = sub_1D9A0E224(v148, v149, &v201);

                          *(v147 + 4) = v163;
                          *(v147 + 12) = 2080;
                          v150 = sub_1D9A15C94(v169);
                          v169 = sub_1D9A0E224(v150, v151, &v201);

                          *(v147 + 14) = v169;
                          _os_log_impl(&dword_1D9962000, v166, v164, "server result visual domain [%s] != client visual domain [%s]", v147, 0x16u);
                          v152 = v165;
                          swift_arrayDestroy();
                          MEMORY[0x1DA7405F0](v152, -1, -1);
                          MEMORY[0x1DA7405F0](v147, -1, -1);
                        }

                        else
                        {
                        }

                        v104 = (v84)(v176, v188);
                        v200 = v167;
                      }
                    }

                    else
                    {

                      v83 = v177;
                      static Logger.argos.getter(v177);
                      sub_1D9A3E0E0(v179);
                      v84 = *v180;
                      (*v180)(v83, v188);
                      v85 = sub_1D9C7D8BC();
                      v86 = sub_1D9C7E08C();
                      if (os_log_type_enabled(v85, v86))
                      {
                        v87 = swift_slowAlloc();
                        v88 = v85;
                        v89 = v87;
                        *v87 = 0;
                        v90 = v86;
                        v91 = v88;
                        _os_log_impl(&dword_1D9962000, v88, v90, "server result visual domain is not set, no need to reconcile with client visual domain", v87, 2u);
                        MEMORY[0x1DA7405F0](v89, -1, -1);
                      }

                      else
                      {
                      }

                      v104 = (v84)(v179, v188);
                    }

                    v105 = v172;
                    v106 = *(v172 + 16);
                    v107 = v191;
                    v169 = v84;
                    if (v106 && (v104 = sub_1D99EE138(v200), (v108 & 1) != 0))
                    {
                      v109 = (*(v105 + 56) + 40 * v104);
                      v110 = *v109;
                      v166 = v109[1];
                      v167 = v110;
                    }

                    else
                    {
                      v166 = 0xE000000000000000;
                      v167 = 0;
                    }

                    v165 = &v162;
                    MEMORY[0x1EEE9AC00](v104);
                    *(&v162 - 2) = &v200;
                    *(&v162 - 1) = v31;
                    v111 = v107;
                    v112 = v174;
                    sub_1D99BB8A8(sub_1D9B3D950, (&v162 - 4), v111);
                    v114 = v113;
                    v174 = v112;

                    v115 = *(v31 + 1);
                    v201 = *v31;
                    v202 = v115;
                    *&v203 = v114;
                    *(&v203 + 1) = v183;
                    *&v204 = v173;
                    *(&v204 + 1) = v167;
                    *&v205 = v166;
                    v116 = v182;
                    static Logger.argos.getter(v182);
                    sub_1D9A3E0E0(v185);
                    v117 = v188;
                    v169(v116, v188);
                    sub_1D9B3D7C8(v31, v184, type metadata accessor for VisualUnderstanding.ImageRegion);
                    sub_1D99D0F10(&v201, &v195);
                    v118 = sub_1D9C7D8BC();
                    v119 = sub_1D9C7E08C();
                    sub_1D99FE184(&v201);
                    if (os_log_type_enabled(v118, v119))
                    {
                      v120 = swift_slowAlloc();
                      LODWORD(v183) = v119;
                      v121 = v120;
                      v191 = swift_slowAlloc();
                      v194 = v191;
                      *v121 = v171;
                      v197 = v203;
                      v198 = v204;
                      v199 = v205;
                      v195 = v201;
                      v196 = v202;
                      sub_1D99D0F10(&v201, &v193);
                      v122 = sub_1D9C7DD0C();
                      v173 = v118;
                      v124 = sub_1D9A0E224(v122, v123, &v194);

                      v167 = v121;
                      *(v121 + 4) = v124;
                      *(v121 + 12) = 2080;
                      v125 = v184;
                      v126 = v184[1];
                      v195 = *v184;
                      v196 = v126;
                      v127 = NormalizedRect.loggingDescription.getter();
                      v129 = v128;
                      sub_1D99B1C88(v125);
                      v130 = sub_1D9A0E224(v127, v129, &v194);

                      v131 = v167;
                      *(v167 + 14) = v130;
                      v132 = v173;
                      _os_log_impl(&dword_1D9962000, v173, v183, "Add RegionSearchResult %s for %s", v131, 0x16u);
                      v133 = v191;
                      swift_arrayDestroy();
                      MEMORY[0x1DA7405F0](v133, -1, -1);
                      MEMORY[0x1DA7405F0](v131, -1, -1);

                      v134 = v185;
                      v135 = v188;
                    }

                    else
                    {

                      sub_1D99B1C88(v184);
                      v134 = v185;
                      v135 = v117;
                    }

                    v169(v134, v135);
                    v49 = v192;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v189 = sub_1D9AFB3F4(0, *(v189 + 2) + 1, 1, v189);
                    }

                    v137 = *(v189 + 2);
                    v136 = *(v189 + 3);
                    if (v137 >= v136 >> 1)
                    {
                      v189 = sub_1D9AFB3F4((v136 > 1), v137 + 1, 1, v189);
                    }

                    v138 = v189;
                    *(v189 + 2) = v137 + 1;
                    v139 = &v138[72 * v137];
                    *(v139 + 2) = v201;
                    v140 = v202;
                    v141 = v203;
                    v142 = v204;
                    *(v139 + 12) = v205;
                    *(v139 + 4) = v141;
                    *(v139 + 5) = v142;
                    *(v139 + 3) = v140;
                  }

                  else
                  {
                  }

                  a4 = v168;
                  goto LABEL_4;
                }

                v44 = v190;
              }

              else
              {

                v45 = v61;
                v44 = v190;
              }
            }

            else
            {

              v49 = v192;
            }
          }
        }
      }

LABEL_4:
      ++v47;
      result = sub_1D99B1C88(v31);
      if (v45 == v47)
      {

        v10 = v186;
        a1 = v187;
        v153 = v189;
        goto LABEL_50;
      }
    }
  }

  v153 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v154 = sub_1D9C7CF3C();
  (*(*(v154 - 8) + 56))(v10, 1, 1, v154);
  v155 = v222;
  *(a4 + 128) = v221;
  *(a4 + 144) = v155;
  *(a4 + 160) = v223;
  v156 = v224;
  v157 = v218;
  *(a4 + 64) = v217;
  *(a4 + 80) = v157;
  v158 = v220;
  *(a4 + 96) = v219;
  *(a4 + 112) = v158;
  v159 = v214;
  *a4 = v213;
  *(a4 + 16) = v159;
  v160 = v216;
  *(a4 + 32) = v215;
  *(a4 + 48) = v160;
  *(a4 + 176) = v156;
  *(a4 + 184) = v153;
  v161 = type metadata accessor for VisualSearchResultInternal(0);
  sub_1D99AB100(a1, a4 + *(v161 + 24), &qword_1ECB519C8, &unk_1D9C93AB0);
  sub_1D9B3D734(v10, a4 + *(v161 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  swift_storeEnumTagMultiPayload();
  return sub_1D99BB40C(&v213, &v201);
}

float sub_1D9B3CB4C@<S0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *a2;
  v18 = *(a1 + 16);
  v20 = *(a1 + 24);

  sub_1D9B67DFC();
  if (*(v5 + 16))
  {
    v6 = *(v5 + 144);
    v24 = *(v5 + 128);
    v25 = v6;
    v26[0] = *(v5 + 160);
    *(v26 + 13) = *(v5 + 173);
    v7 = *(v5 + 80);
    v22[2] = *(v5 + 64);
    v22[3] = v7;
    v8 = *(v5 + 112);
    v22[4] = *(v5 + 96);
    v23 = v8;
    v9 = *(v5 + 48);
    v22[0] = *(v5 + 32);
    v22[1] = v9;
    sub_1D99AE054(v22, v21);

    v11 = *(&v23 + 1);
    v10 = v23;
    v13 = *(&v24 + 1);
    v12 = v24;
    sub_1D99FE1B4(v23, *(&v23 + 1), v24, *(&v24 + 1));
    sub_1D99AE0B0(v22);
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v14 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v15 = *(v14 + 28);
  sub_1D9B3D7C8(a1, a3 + v15, type metadata accessor for ObjectKnowledge);
  v16 = type metadata accessor for ObjectKnowledge(0);
  (*(*(v16 - 8) + 56))(a3 + v15, 0, 1, v16);
  result = *(a1 + *(v16 + 64));
  *a3 = v19;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + *(v14 + 32)) = result;
  return result;
}

uint64_t sub_1D9B3CCF0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v97 - v8;
  v103 = sub_1D9C7D8DC();
  v9 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v11 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v97 - v17);
  v19 = a2[9];
  v20 = a2[7];
  v139 = a2[8];
  v140 = v19;
  v21 = a2[9];
  v141 = a2[10];
  v22 = a2[5];
  v23 = a2[3];
  v135 = a2[4];
  v136 = v22;
  v24 = a2[5];
  v25 = a2[7];
  v137 = a2[6];
  v138 = v25;
  v26 = a2[1];
  v131 = *a2;
  v132 = v26;
  v27 = a2[3];
  v29 = *a2;
  v28 = a2[1];
  v133 = a2[2];
  v134 = v27;
  v127 = v139;
  v128 = v21;
  v129 = a2[10];
  v123 = v135;
  v124 = v24;
  v125 = v137;
  v126 = v20;
  v119 = v29;
  v120 = v28;
  v142 = *(a2 + 22);
  v130 = *(a2 + 22);
  v121 = v133;
  v122 = v23;
  sub_1D9B67A68();
  v31 = *(v30 + 16);
  if (v31)
  {
    v100 = a4;
    v32 = v30;
    v33 = type metadata accessor for ServerSearchResult(0);
    v108 = 0;
    v34 = *(v33 + 20);
    v98 = v32;
    v99 = a1;
    v35 = *(a1 + v34);
    v36 = v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    *&v111 = *(v13 + 72);
    v101 = (v9 + 8);
    v37 = MEMORY[0x1E69E7CC0];
    *&v38 = 136315394;
    v97 = v38;
    v39 = v107;
    v106 = v11;
    v109 = v15;
    while (1)
    {
      sub_1D9B3D7C8(v36, v18, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v35 + 16))
      {
        v40 = sub_1D99EE1AC(*v18, v18[1], v18[2], v18[3]);
        if (v41)
        {
          if (*(v35 + 16))
          {
            *&v110 = v37;
            v42 = *(*(v35 + 56) + 32 * v40);
            v44 = v18[2];
            v43 = v18[3];
            v46 = *v18;
            v45 = v18[1];

            v47 = sub_1D99EE1AC(v46, v45, v44, v43);
            if (v48)
            {
              v49 = *(*(v35 + 56) + 32 * v47 + 8);

              sub_1D9B67DFC();
              if (*(v50 + 16))
              {
                v51 = *(v50 + 32);

                if (*(v39 + 16) && (v52 = sub_1D99EE138(v51), (v53 & 1) != 0))
                {
                  v54 = (*(v39 + 56) + 40 * v52);
                  v55 = *v54;
                  v104 = v54[1];
                  v105 = v55;
                }

                else
                {
                  v104 = 0xE000000000000000;
                  v105 = 0;
                }

                MEMORY[0x1EEE9AC00](v52);
                *(&v97 - 16) = v51;
                *(&v97 - 1) = v18;
                v56 = v108;
                sub_1D99BB8A8(sub_1D9B3D7A4, (&v97 - 2), v42);
                v58 = v57;
                v108 = v56;

                v59 = *(v18 + 1);
                v119 = *v18;
                v120 = v59;
                *&v121 = v58;
                *(&v121 + 1) = v49;
                *&v122 = MEMORY[0x1E69E7CC0];
                *(&v122 + 1) = v105;
                *&v123 = v104;
                v60 = v106;
                static Logger.argos.getter(v106);
                v61 = v109;
                sub_1D9B3D7C8(v18, v109, type metadata accessor for VisualUnderstanding.ImageRegion);
                sub_1D99D0F10(&v119, &v114);
                v62 = sub_1D9C7D8BC();
                v63 = sub_1D9C7E09C();
                sub_1D99FE184(&v119);
                if (os_log_type_enabled(v62, v63))
                {
                  v64 = swift_slowAlloc();
                  v105 = swift_slowAlloc();
                  v113 = v105;
                  *v64 = v97;
                  v116 = v121;
                  v117 = v122;
                  v118 = v123;
                  v114 = v119;
                  v115 = v120;
                  sub_1D99D0F10(&v119, &v112);
                  v65 = sub_1D9C7DD0C();
                  v67 = sub_1D9A0E224(v65, v66, &v113);

                  *(v64 + 4) = v67;
                  *(v64 + 12) = 2080;
                  v68 = v109[1];
                  v114 = *v109;
                  v115 = v68;
                  v69 = NormalizedRect.loggingDescription.getter();
                  v71 = v70;
                  sub_1D99B1C88(v109);
                  v72 = sub_1D9A0E224(v69, v71, &v113);
                  v60 = v106;

                  *(v64 + 14) = v72;
                  _os_log_impl(&dword_1D9962000, v62, v63, "Add result %s for %s", v64, 0x16u);
                  v73 = v105;
                  swift_arrayDestroy();
                  MEMORY[0x1DA7405F0](v73, -1, -1);
                  MEMORY[0x1DA7405F0](v64, -1, -1);
                }

                else
                {

                  sub_1D99B1C88(v61);
                }

                (*v101)(v60, v103);
                v37 = v110;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v37 = sub_1D9AFB3F4(0, *(v37 + 2) + 1, 1, v37);
                }

                v75 = *(v37 + 2);
                v74 = *(v37 + 3);
                if (v75 >= v74 >> 1)
                {
                  v37 = sub_1D9AFB3F4((v74 > 1), v75 + 1, 1, v37);
                }

                *(v37 + 2) = v75 + 1;
                v76 = &v37[72 * v75];
                *(v76 + 2) = v119;
                v77 = v120;
                v78 = v121;
                v79 = v122;
                *(v76 + 12) = v123;
                *(v76 + 4) = v78;
                *(v76 + 5) = v79;
                *(v76 + 3) = v77;
                v39 = v107;
                goto LABEL_4;
              }
            }

            v37 = v110;
          }
        }
      }

LABEL_4:
      sub_1D99B1C88(v18);
      v36 += v111;
      if (!--v31)
      {

        a1 = v99;
        a4 = v100;
        if (!*(v37 + 2))
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_26:
    v80 = type metadata accessor for ServerSearchResult(0);
    sub_1D9B3BBD8(*(a1 + *(v80 + 20)), &v119);
    if (v121)
    {
      v110 = v120;
      v111 = v119;
      v81 = *(&v121 + 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D9AFB3F4(0, *(v37 + 2) + 1, 1, v37);
      }

      v83 = *(v37 + 2);
      v82 = *(v37 + 3);
      if (v83 >= v82 >> 1)
      {
        v37 = sub_1D9AFB3F4((v82 > 1), v83 + 1, 1, v37);
      }

      *(v37 + 2) = v83 + 1;
      v84 = &v37[72 * v83];
      v85 = v110;
      *(v84 + 2) = v111;
      *(v84 + 3) = v85;
      v86 = MEMORY[0x1E69E7CC0];
      *(v84 + 8) = MEMORY[0x1E69E7CC0];
      *(v84 + 9) = v81;
      *(v84 + 10) = v86;
      *(v84 + 11) = 0;
      *(v84 + 12) = 0xE000000000000000;
    }
  }

LABEL_32:
  v87 = sub_1D9C7CF3C();
  v88 = v102;
  (*(*(v87 - 8) + 56))(v102, 1, 1, v87);
  v89 = v140;
  *(a4 + 128) = v139;
  *(a4 + 144) = v89;
  *(a4 + 160) = v141;
  v90 = v142;
  v91 = v136;
  *(a4 + 64) = v135;
  *(a4 + 80) = v91;
  v92 = v138;
  *(a4 + 96) = v137;
  *(a4 + 112) = v92;
  v93 = v132;
  *a4 = v131;
  *(a4 + 16) = v93;
  v94 = v134;
  *(a4 + 32) = v133;
  *(a4 + 48) = v94;
  *(a4 + 176) = v90;
  *(a4 + 184) = v37;
  v95 = type metadata accessor for VisualSearchResultInternal(0);
  sub_1D99AB100(a1, a4 + *(v95 + 24), &qword_1ECB519C8, &unk_1D9C93AB0);
  sub_1D9B3D734(v88, a4 + *(v95 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  swift_storeEnumTagMultiPayload();
  return sub_1D99BB40C(&v131, &v119);
}

uint64_t sub_1D9B3D57C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v19 = *(a1 + 16);

  sub_1D9B67DFC();
  if (*(v6 + 16))
  {
    v7 = *(v6 + 144);
    v24 = *(v6 + 128);
    v25 = v7;
    v26[0] = *(v6 + 160);
    *(v26 + 13) = *(v6 + 173);
    v8 = *(v6 + 80);
    v22[2] = *(v6 + 64);
    v22[3] = v8;
    v9 = *(v6 + 112);
    v22[4] = *(v6 + 96);
    v23 = v9;
    v10 = *(v6 + 48);
    v22[0] = *(v6 + 32);
    v22[1] = v10;
    sub_1D99AE054(v22, v21);

    v12 = *(&v23 + 1);
    v11 = v23;
    v14 = *(&v24 + 1);
    v13 = v24;
    sub_1D99FE1B4(v23, *(&v23 + 1), v24, *(&v24 + 1));
    sub_1D99AE0B0(v22);
  }

  else
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v16 = *(v15 + 28);
  sub_1D9B3D7C8(a1, a3 + v16, type metadata accessor for ObjectKnowledge);
  v17 = type metadata accessor for ObjectKnowledge(0);
  result = (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
  *a3 = a2;
  *(a3 + 8) = v19;
  *(a3 + 16) = v5;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  *(a3 + 48) = v14;
  *(a3 + *(v15 + 32)) = 1065353216;
  return result;
}

uint64_t sub_1D9B3D734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9B3D7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1D9B3D830(_OWORD *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(a5 + 56);
    v6 = (*(a5 + 48) + 32 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;
    v8 = *(v5 + 32 * a2);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D9B3D8E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535F0, &unk_1D9C96020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9B3D970(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0, &qword_1D9C858F0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for VisualUnderstanding.ImageRegion(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_1D9B45558(v13, v7 + v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1D99B1C20(v7, a1, &qword_1ECB510F0, &qword_1D9C858F0);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D9B3DB60(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670, &unk_1D9C960D0);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v19 = v4;
      v12 = sub_1D9C7BFBC();
      v13 = *(v12 - 8);
      v14 = *(v13 + 16);
      v15 = v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v16 = *(v3 + 48);
      v17 = v1[2];
      *v7 = v17;
      v14(&v7[v16], v15, v12);
      if (!__OFADD__(v17, 1))
      {
        v1[2] = v17 + 1;
        sub_1D99B1C20(v7, a1, &qword_1ECB51670, &unk_1D9C960D0);
        (*(v19 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D9B3DD2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E9200(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v5 = sub_1D9C7E79C();
  if (v5 >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53600, &qword_1D9C960C8);
      v8 = sub_1D9C7DF5C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v8 + 32);
    v16[1] = v7;
    sub_1D9B41DAC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
}

unint64_t sub_1D9B3DE80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9B45B44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D9B3DEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9B45AF0();
  v5 = sub_1D99DF254();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D9B3DF04()
{
  v2 = v0;
  v45 = sub_1D9C7D8DC();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v40 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  *(v0 + 64) = xmmword_1D9C96030;
  type metadata accessor for EncryptedSearchLTR();
  sub_1D9C1E92C([objc_allocWithZone(MEMORY[0x1E695FEB0]) init]);
  if (v1)
  {

    static Logger.argos.getter(v19);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Error: Unable to load reranker model: LTR", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v44 + 8))(v19, v45);
    sub_1D9A74A28();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    type metadata accessor for Reranker();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v13;
    v42 = v16;
    v40[2] = v7;
    v40[3] = v10;
    v40[1] = v4;
    *(v0 + 16) = v20;
    v25 = v20;
    type metadata accessor for OCRTitleModel();
    v26 = objc_allocWithZone(MEMORY[0x1E695FEB0]);
    v43 = v25;

    v27 = [v26 init];
    sub_1D9C1E69C(v27);
    v29 = v28;

    *(v0 + 24) = v29;
    type metadata accessor for OCRAddressModel();
    v30 = objc_allocWithZone(MEMORY[0x1E695FEB0]);
    v42 = v29;

    v31 = [v30 init];
    sub_1D9C1F8B0(v31);
    v40[0] = 0;
    v33 = v32;

    *(v0 + 32) = v33;
    type metadata accessor for StorefrontLabelMapper();
    swift_allocObject();
    v41 = v33;

    *(v0 + 40) = sub_1D9A73DEC();
    type metadata accessor for CategoryClassificationModel();
    v34 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

    sub_1D9C1FAF0([v34 init]);
    *(v0 + 48) = v35;
    type metadata accessor for TitleClassificationModel();
    v36 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

    sub_1D9C1EF74([v36 &selRef_setFont_size_stop_reporting_threshold_]);
    v39 = v38;

    *(v0 + 56) = v39;
  }

  return v2;
}

uint64_t (*sub_1D9B3E82C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1D9B42548(v6, a2, a3);
  return sub_1D9B3E8B4;
}

uint64_t (*sub_1D9B3E8B8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D9B425F8(v4, a2);
  return sub_1D9B45B58;
}

void sub_1D9B3E930(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1D9B3E97C(void (**a1)(char *, uint64_t), uint64_t a2, char *a3)
{
  v255 = a3;
  v231 = a1;
  v274 = *MEMORY[0x1E69E9840];
  v4 = sub_1D9C7D8DC();
  v235 = *(v4 - 8);
  v236 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v234 = &v220 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v220 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v253 = (&v220 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51678, &unk_1D9C86A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v233 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v232 = &v220 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE0, &qword_1D9C93A70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v244 = &v220 - v16;
  v254 = sub_1D9C7BFBC();
  v230 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v238 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v220 - v19;
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a2;
  v256 = *(a2 + 8);
  v26 = *(a2 + 32);
  v260 = sub_1D9A450B8(MEMORY[0x1E69E7CC0]);
  if (!v25[2] || (v27 = (*(v22 + 80) + 32) & ~*(v22 + 80), v28 = *(v25 + v27 + 112), !*(v28 + 16)) || (v29 = *(v28 + 64), !*(v29 + 16)))
  {

    static Logger.argos.getter(v8);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "Error: Unable to get query embedding", v40, 2u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    v41 = v235;
    v42 = *(v235 + 8);
    v43 = v8;
LABEL_13:
    v44 = v236;
    v42(v43, v236);
    sub_1D9A74A28();
    v45 = swift_allocError();
    *v46 = 4;
    swift_willThrow();
LABEL_14:
    v47 = v234;
    static Logger.argos.getter(v234);
    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D9962000, v48, v49, "Error: Failed to create storefront signal", v50, 2u);
      MEMORY[0x1DA7405F0](v50, -1, -1);
    }

    (*(v41 + 8))(v47, v44);
    v51 = sub_1D9A450B8(MEMORY[0x1E69E7CC0]);

    return v51;
  }

  v30 = *(v29 + 32);
  v245 = MEMORY[0x1E69E7CC0];
  if (v256 == 1)
  {
    v31 = v255;
    if (v255)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v31 = v255;
  if (v26)
  {

    v245 = v26;
  }

  if (!v31)
  {
LABEL_19:

    v53 = v253;
    static Logger.argos.getter(v253);
    v54 = sub_1D9C7D8BC();
    v55 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D9962000, v54, v55, "Error: Unable to get query embedding", v56, 2u);
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    v41 = v235;
    v42 = *(v235 + 8);
    v43 = v53;
    goto LABEL_13;
  }

LABEL_8:
  v261 = *&v25;
  v262 = v256;
  v263 = *(a2 + 16);
  v264 = v26;
  v265 = *(a2 + 40);
  v266 = *(a2 + 56);
  v270 = *(a2 + 120);
  v271 = *(a2 + 136);
  v272 = *(a2 + 152);
  v273 = *(a2 + 168);
  v267 = *(a2 + 72);
  v268 = *(a2 + 88);
  v269 = *(a2 + 104);
  v226 = v30;

  v32 = v31;
  VisualUnderstanding.imageRegions.getter();
  if (*(v33 + 16))
  {
    sub_1D9B45558(v33 + v27, v24, type metadata accessor for VisualUnderstanding.ImageRegion);

    MinX = *v24;
    v35 = v24[1];
    Width = v24[2];
    Height = v24[3];
    sub_1D9B45628(v24, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  else
  {

    v275.origin.x = 0.0;
    v275.origin.y = 0.0;
    v275.size.width = 1.0;
    v275.size.height = 1.0;
    MinX = CGRectGetMinX(v275);
    v276.origin.x = 0.0;
    v276.origin.y = 0.0;
    v276.size.width = 1.0;
    v276.size.height = 1.0;
    v35 = 1.0 - CGRectGetMaxY(v276);
    v277.origin.x = 0.0;
    v277.origin.y = 0.0;
    v277.size.width = 1.0;
    v277.size.height = 1.0;
    Width = CGRectGetWidth(v277);
    v278.origin.x = 0.0;
    v278.origin.y = 0.0;
    v278.size.width = 1.0;
    v278.size.height = 1.0;
    Height = CGRectGetHeight(v278);
  }

  v57 = v246;
  swift_retain_n();
  v58 = v231;
  v228 = sub_1D99E0FC0(v231, v32);
  v221 = v32;
  v227 = sub_1D99E1740(v58, v32);
  v59 = sub_1D9C7C15C();
  v60 = *(v59 + 16);
  if (v60)
  {
    v243 = *(v245 + 16);
    v249 = v57[5];
    v241 = *(v230 + 16);
    v61 = (*(v230 + 80) + 32) & ~*(v230 + 80);
    v225 = v59;
    v62 = v59 + v61;
    v240 = *(v230 + 72);
    v237 = "storefrontThresholdCutoff";
    v242 = v230 + 16;
    v239 = (v230 + 8);
    v248 = xmmword_1D9C85660;
    v63 = MEMORY[0x1E69E7CC0];
    v251 = MEMORY[0x1E69E7CC0];
    v252 = MEMORY[0x1E69E7CC0];
    v255 = MEMORY[0x1E69E7CC0];
    v256 = MEMORY[0x1E69E7CC0];
    v250 = MEMORY[0x1E69E7CC0];
    v64 = v241;
    while (1)
    {
      v247 = v60;
      v253 = v63;
      v65 = v254;
      v64(v20, v62, v254);
      v66 = sub_1D9C7BF7C();
      v67 = v244;
      v64(v244, v20, v65);
      v68 = type metadata accessor for StorefrontSignals(0);
      *(v67 + *(v68 + 20)) = 0;
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      sub_1D9AC7968(v67, v66);
      sub_1D9C7BF9C();
      v69 = sub_1D9C7DCFC();
      v71 = v249[4];
      if (*(v71 + 16))
      {
        v72 = sub_1D99ED894(v69, v70);
        v74 = v73;

        if (v74)
        {
          v75 = *(*(v71 + 56) + 8 * v72);

          if (v75 >= 0)
          {
            v76 = 1.0;
          }

          else
          {
            v76 = 0.0;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

      v76 = 0.0;
LABEL_34:
      v77 = v251;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1D9AF9A74(0, *(v77 + 2) + 1, 1, v77);
      }

      v79 = *(v77 + 2);
      v78 = *(v77 + 3);
      if (v79 >= v78 >> 1)
      {
        v77 = sub_1D9AF9A74((v78 > 1), v79 + 1, 1, v77);
      }

      *(v77 + 2) = v79 + 1;
      v251 = v77;
      *&v77[8 * v79 + 32] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
      inited = swift_initStackObject();
      *(inited + 16) = v248;
      *(inited + 32) = sub_1D9C7BF6C();
      *(inited + 40) = v81;
      v82 = sub_1D9AE66D4(inited, v249);
      swift_setDeallocating();
      sub_1D9B172F8(inited + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v256 = sub_1D9AF9A74(0, *(v256 + 2) + 1, 1, v256);
      }

      v84 = *(v256 + 2);
      v83 = *(v256 + 3);
      if (v84 >= v83 >> 1)
      {
        v256 = sub_1D9AF9A74((v83 > 1), v84 + 1, 1, v256);
      }

      v85 = v256;
      *(v256 + 2) = v84 + 1;
      *&v85[8 * v84 + 32] = v82;
      sub_1D9C7BF9C();
      v86 = sub_1D9C7DCFC();
      v88 = v87;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v89 = v255;
      }

      else
      {
        v89 = sub_1D9AF83AC(0, *(v255 + 2) + 1, 1, v255);
      }

      v91 = *(v89 + 2);
      v90 = *(v89 + 3);
      if (v91 >= v90 >> 1)
      {
        v89 = sub_1D9AF83AC((v90 > 1), v91 + 1, 1, v89);
      }

      *(v89 + 2) = v91 + 1;
      v255 = v89;
      v92 = &v89[16 * v91];
      *(v92 + 4) = v86;
      *(v92 + 5) = v88;
      v93 = swift_allocObject();
      *(v93 + 16) = v248;
      *(v93 + 32) = sub_1D9C7BF6C();
      *(v93 + 40) = v94;
      v63 = v253;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1D9AF9BE4(0, v63[2] + 1, 1, v63);
      }

      v96 = v63[2];
      v95 = v63[3];
      if (v96 >= v95 >> 1)
      {
        v63 = sub_1D9AF9BE4((v95 > 1), v96 + 1, 1, v63);
      }

      v63[2] = v96 + 1;
      v63[v96 + 4] = v93;
      if (v243)
      {
        v97 = sub_1D9C7BF9C();
        v261 = MinX;
        v262 = *&v35;
        *&v263 = Width;
        *(&v263 + 1) = Height;
        sub_1D9AE6944(v97, v98, &v261, v245, 0xA, 2);
        v100 = v99;

        v101 = v246;

        sub_1D9AE777C(0x616D5F656C746974, 0xEF72636F5F686374, &unk_1F5528388, v100, 3, v101);
        v103 = v102;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v252 = sub_1D9AF9B9C(0, v252[2] + 1, 1, v252);
        }

        v105 = v252[2];
        v104 = v252[3];
        if (v105 >= v104 >> 1)
        {
          v252 = sub_1D9AF9B9C((v104 > 1), v105 + 1, 1, v252);
        }

        v106 = v252;
        v252[2] = v105 + 1;
        v106[v105 + 4] = v103;
        v107 = sub_1D9AE7E40();
        v261 = MinX;
        v262 = *&v35;
        *&v263 = Width;
        *(&v263 + 1) = Height;
        sub_1D9AE6944(v107, v108, &v261, v245, 0xA, 2);
        v110 = v109;

        v111 = v246;

        sub_1D9AE8428(0xD000000000000011, (v237 | 0x8000000000000000), &unk_1F5528388, v110, 3, v111);
        v113 = v112;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v250 = sub_1D9AF9B9C(0, v250[2] + 1, 1, v250);
        }

        v115 = v250[2];
        v114 = v250[3];
        if (v115 >= v114 >> 1)
        {
          v250 = sub_1D9AF9B9C((v114 > 1), v115 + 1, 1, v250);
        }

        (*v239)(v20, v254);
        v116 = v250;
        v250[2] = v115 + 1;
        v116[v115 + 4] = v113;
      }

      else
      {
        (*v239)(v20, v254);
      }

      v62 += v240;
      v60 = v247 - 1;
      if (v247 == 1)
      {

        v57 = v246;
        v117 = v255;
        goto LABEL_63;
      }
    }
  }

  v117 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  v251 = MEMORY[0x1E69E7CC0];
  v252 = MEMORY[0x1E69E7CC0];
  v256 = MEMORY[0x1E69E7CC0];
  v250 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v118 = v57[5];
  v119 = v57[7];
  v255 = v117;
  v120 = v226;
  v244 = v118;
  sub_1D9AE8C08(v117, v226, v118, v119, 1);
  v247 = v121;
  v122 = v57[6];
  v123 = v63[2];
  if (v123)
  {
    v124 = sub_1D9C7DF5C();
    *(v124 + 16) = v123;
    *&v248 = v124;
    bzero((v124 + 32), 8 * v123);
    v125 = sub_1D9C7DF5C();
    *(v125 + 16) = v123;
    v120 = v226;
    bzero((v125 + 32), 8 * v123);
  }

  else
  {
    v125 = MEMORY[0x1E69E7CC0];
    *&v248 = MEMORY[0x1E69E7CC0];
  }

  v126 = v229;
  v127 = sub_1D9B438D4(v120, 1);
  v253 = v63;
  if (v126)
  {

    v249 = 0;
    goto LABEL_92;
  }

  v128 = v127;
  v249 = 0;
  type metadata accessor for CategoryClassificationModelInput();
  v129 = swift_allocObject();
  *(v129 + 16) = v128;
  v130 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v131 = *(v122 + 16);
  v261 = 0.0;
  v132 = [v131 predictionFromFeatures:v129 options:v130 error:&v261];
  if (!v132)
  {
    v152 = *&v261;
    v153 = sub_1D9C7B70C();

    swift_willThrow();

    v249 = 0;
LABEL_92:
    v157 = sub_1D9C7C15C();
    v158 = (v230 + 32);
    v243 = v227 + 32;
    v244 = (v228 + 32);
    v241 = (v248 + 32);
    v242 = v247 + 32;
    v239 = (v251 + 32);
    v240 = v125 + 32;
    v237 = (v256 + 32);
    v159 = v252 + 4;
    v229 = "address_match_ocr";
    v225 = "title_match_ocr_1";
    v226 = "title_match_ocr_0";
    v160 = v250 + 4;
    v223 = "address_match_ocr_0";
    v224 = "title_match_ocr_2";
    v222 = "address_match_ocr_1";
    v231 = (v230 + 8);
    v258 = 0;
    v259 = 0;
    v257 = v157;
    while (1)
    {
      v161 = v233;
      sub_1D9B3DB60(v233);
      v162 = v161;
      v163 = v232;
      sub_1D99B1C20(v162, v232, &qword_1ECB51678, &unk_1D9C86A50);
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51670, &unk_1D9C960D0);
      if ((*(*(v164 - 8) + 48))(v163, 1, v164) == 1)
      {
        break;
      }

      v165 = *v163;
      (*v158)(v238, &v163[*(v164 + 48)], v254);
      v166 = sub_1D9C7DF5C();
      *(v166 + 16) = 53;
      *(v166 + 32) = 0u;
      *(v166 + 48) = 0u;
      *(v166 + 64) = 0u;
      *(v166 + 80) = 0u;
      *(v166 + 96) = 0u;
      *(v166 + 112) = 0u;
      *(v166 + 128) = 0u;
      *(v166 + 144) = 0u;
      *(v166 + 160) = 0u;
      *(v166 + 176) = 0u;
      *(v166 + 192) = 0u;
      *(v166 + 208) = 0u;
      *(v166 + 224) = 0u;
      *(v166 + 240) = 0;
      if ((v165 & 0x8000000000000000) != 0)
      {
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
        __break(1u);
LABEL_145:
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
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
      }

      if (v165 >= *(v228 + 16))
      {
        goto LABEL_138;
      }

      v167 = *&v244[8 * v165];
      *(v166 + 32) = v167;
      if (v165 >= *(v227 + 16))
      {
        goto LABEL_139;
      }

      v168 = v166;
      v169 = *(v243 + 8 * v165);
      *(v166 + 36) = v169;
      if (v165 >= *(v247 + 16))
      {
        goto LABEL_140;
      }

      v170 = *(v242 + 8 * v165);
      *(v166 + 40) = v170;
      if (v165 >= *(v248 + 16))
      {
        goto LABEL_141;
      }

      v171 = *(v241 + v165);
      *(v166 + 44) = v171;
      if (v165 >= *(v125 + 16))
      {
        goto LABEL_142;
      }

      v172 = *(v240 + 8 * v165);
      *(v166 + 48) = v172;
      if (v165 >= *(v251 + 2))
      {
        goto LABEL_143;
      }

      v173 = *&v239[v165];
      *(v166 + 52) = v173;
      if (v165 >= *(v256 + 2))
      {
        goto LABEL_144;
      }

      v174 = *(v237 + 8 * v165);
      *(v166 + 56) = v174;
      if (*(v245 + 16))
      {
        if (v165 >= v252[2])
        {
          goto LABEL_145;
        }

        v175 = v159[v165];
        v176 = *(v175 + 16);

        if (!v176 || (v177 = sub_1D99ED894(0xD000000000000011, v229 | 0x8000000000000000), (v178 & 1) == 0))
        {
LABEL_133:

          sub_1D9A74A28();
          v45 = swift_allocError();
          *v219 = 4;
          swift_willThrow();

          (*v231)(v238, v254);

LABEL_134:
          v41 = v235;
          v44 = v236;
          goto LABEL_14;
        }

        v179 = *(*(v175 + 56) + 8 * v177);

        if (*(v168 + 16) < 8uLL)
        {
          goto LABEL_146;
        }

        v180 = v179;
        *(v168 + 60) = v180;
        if (v165 >= v252[2])
        {
          goto LABEL_147;
        }

        v181 = v159[v165];
        v182 = *(v181 + 16);

        if (!v182)
        {
          goto LABEL_133;
        }

        v183 = sub_1D99ED894(0xD000000000000011, v226 | 0x8000000000000000);
        if ((v184 & 1) == 0)
        {
          goto LABEL_133;
        }

        v185 = *(*(v181 + 56) + 8 * v183);

        if (*(v168 + 16) < 9uLL)
        {
          goto LABEL_148;
        }

        v186 = v185;
        *(v168 + 64) = v186;
        if (v165 >= v252[2])
        {
          goto LABEL_149;
        }

        v187 = v159[v165];
        v188 = *(v187 + 16);

        if (!v188)
        {
          goto LABEL_133;
        }

        v189 = sub_1D99ED894(0xD000000000000011, v225 | 0x8000000000000000);
        if ((v190 & 1) == 0)
        {
          goto LABEL_133;
        }

        v191 = *(*(v187 + 56) + 8 * v189);

        if (*(v168 + 16) < 0xAuLL)
        {
          goto LABEL_150;
        }

        v192 = v191;
        *(v168 + 68) = v192;
        if (v165 >= v250[2])
        {
          goto LABEL_151;
        }

        v193 = v160[v165];
        v194 = *(v193 + 16);

        if (!v194)
        {
          goto LABEL_133;
        }

        v195 = sub_1D99ED894(0xD000000000000013, v224 | 0x8000000000000000);
        if ((v196 & 1) == 0)
        {
          goto LABEL_133;
        }

        v197 = *(*(v193 + 56) + 8 * v195);

        if (*(v168 + 16) < 0xBuLL)
        {
          goto LABEL_152;
        }

        v198 = v197;
        *(v168 + 72) = v198;
        if (v165 >= v250[2])
        {
          goto LABEL_153;
        }

        v199 = v160[v165];
        v200 = *(v199 + 16);

        if (!v200)
        {
          goto LABEL_133;
        }

        v201 = sub_1D99ED894(0xD000000000000013, v223 | 0x8000000000000000);
        if ((v202 & 1) == 0)
        {
          goto LABEL_133;
        }

        v203 = *(*(v199 + 56) + 8 * v201);

        if (*(v168 + 16) < 0xCuLL)
        {
          goto LABEL_154;
        }

        v204 = v203;
        *(v168 + 76) = v204;
        if (v165 >= v250[2])
        {
          goto LABEL_155;
        }

        v205 = v160[v165];
        v206 = *(v205 + 16);

        if (!v206)
        {
          goto LABEL_133;
        }

        v207 = sub_1D99ED894(0xD000000000000013, v222 | 0x8000000000000000);
        if ((v208 & 1) == 0)
        {
          goto LABEL_133;
        }

        v209 = *(*(v205 + 56) + 8 * v207);

        if (*(v168 + 16) < 0xDuLL)
        {
          goto LABEL_156;
        }

        v210 = v209;
        *(v168 + 80) = v210;
      }

      else
      {
        *(v166 + 68) = 0;
        *(v166 + 60) = 0;
        *(v166 + 76) = 0;
      }

      v211 = v249;
      sub_1D9B43E24(v168, 0, 13);
      v249 = v211;
      if (v211)
      {

        (*v231)(v238, v254);

        v45 = v249;
        goto LABEL_134;
      }

      v213 = v212;

      v214 = sub_1D9C7BF7C();
      v215 = sub_1D9B3E8B8(&v261, v214);
      v217 = v216;
      v218 = type metadata accessor for StorefrontSignals(0);
      if (!(*(*(v218 - 8) + 48))(v217, 1, v218))
      {
        *(v217 + *(v218 + 20)) = v213;
      }

      (v215)(&v261, 0);

      (*v231)(v238, v254);
    }

    v51 = v260;

    return v51;
  }

  v133 = v132;
  v134 = *&v261;

  v135 = sub_1D9C7DC4C();
  v136 = [v133 featureValueForName_];

  if (v136)
  {
    v137 = [v136 multiArrayValue];

    v138 = v253;
    if (v137)
    {
      swift_unknownObjectRelease();

      v139 = [v137 numberArray];

      sub_1D99CC024();
      v140 = sub_1D9C7DF2C();

      if (v140 >> 62)
      {
        goto LABEL_89;
      }

      for (i = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
      {
        v142 = 0;
        *&v248 = v140 & 0xC000000000000001;
        v143 = v140 & 0xFFFFFFFFFFFFFF8;
        v144 = MEMORY[0x1E69E7CC0];
        v145 = v140;
        while (1)
        {
          if (v248)
          {
            v146 = MEMORY[0x1DA73E610](v142, v140);
          }

          else
          {
            if (v142 >= *(v143 + 16))
            {
              goto LABEL_88;
            }

            v146 = *(v140 + 8 * v142 + 32);
          }

          v138 = v146;
          v140 = v142 + 1;
          if (__OFADD__(v142, 1))
          {
            break;
          }

          [v146 doubleValue];
          v148 = v147;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_1D9AF9A74(0, *(v144 + 2) + 1, 1, v144);
          }

          v150 = *(v144 + 2);
          v149 = *(v144 + 3);
          if (v150 >= v149 >> 1)
          {
            v144 = sub_1D9AF9A74((v149 > 1), v150 + 1, 1, v144);
          }

          *(v144 + 2) = v150 + 1;
          *&v144[8 * v150 + 32] = v148;
          ++v142;
          v151 = v140 == i;
          v138 = v253;
          v140 = v145;
          if (v151)
          {
            goto LABEL_91;
          }
        }

        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        ;
      }

      v144 = MEMORY[0x1E69E7CC0];
LABEL_91:

      v154 = v244;
      sub_1D9AE8F74(v144, v138, v244, &unk_1F5528498, 0, 1);
      *&v248 = v155;
      sub_1D9AE8F74(v144, v138, v154, &unk_1F5528498, 1, 1);
      v125 = v156;

      goto LABEL_92;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D9B403F0(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v9 = *(v7 + 16);
  v25[0] = 0;
  v10 = [v9 predictionFromFeatures:a1 options:v8 error:v25];
  if (v10)
  {
    v11 = v10;
    v12 = v25[0];

    v13 = sub_1D9C7DC4C();
    v14 = [v11 featureValueForName_];

    if (v14)
    {
      v15 = [v14 multiArrayValue];

      if (v15)
      {
        v16 = [v15 objectAtIndexedSubscript_];

        [v16 doubleValue];
        v18 = v17;
        swift_unknownObjectRelease();

        exp(-v18);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v19 = v25[0];
    v20 = sub_1D9C7B70C();

    swift_willThrow();
    static Logger.argos.getter(v6);
    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D9962000, v21, v22, "Error: LTR inference failed", v23, 2u);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    sub_1D9A74A28();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1D9B406F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int **a4@<X8>)
{
  v137 = a3;
  v135 = a4;
  v136 = a2;
  v134 = a1;
  v4 = sub_1D9C7D8DC();
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7BCBC();
  v126 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v120 - v10;
  v12 = type metadata accessor for LandmarkSignals(0);
  v127 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v120 - v16;
  v18 = sub_1D9C7C03C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v138;
  v24 = sub_1D9B44164(v134, v136, v137, v20);
  if (v23)
  {
    v25 = v23;
LABEL_3:
    v26 = v135;
    v27 = v129;
    static Logger.argos.getter(v129);
    v28 = v25;
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v25;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1D9962000, v29, v30, "Reranker getTopLandmark failed with error %@", v31, 0xCu);
      sub_1D99A6AE0(v32, &qword_1ECB510E8, &qword_1D9C884F0);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    (*(v130 + 8))(v27, v131);
    v45 = type metadata accessor for ObjectKnowledge(0);
    return (*(*(v45 - 8) + 56))(v26, 1, 1, v45);
  }

  v133 = v17;
  v134 = v24;
  v35 = v127;
  v137 = v12;
  v138 = 0;
  v120 = v11;
  v121 = v8;
  v122 = v6;
  v125 = v22;
  sub_1D9C7C02C();
  v36 = v134;
  LODWORD(v136) = 0;
  v37 = 0;
  v38 = v134 + 64;
  v39 = 1 << *(v134 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v134 + 64);
  v42 = (v39 + 63) >> 6;
  v43 = -INFINITY;
  v123 = (v19 + 16);
  v124 = (v19 + 8);
  v132 = v18;
  v44 = v128;
  while (1)
  {
    v47 = v137;
    if (!v41)
    {
      break;
    }

LABEL_17:
    v49 = v133;
    sub_1D9B45558(*(v36 + 56) + *(v35 + 72) * (__clz(__rbit64(v41)) | (v37 << 6)), v133, type metadata accessor for LandmarkSignals);
    sub_1D9B455C0(v49, v14, type metadata accessor for LandmarkSignals);
    if (!*&v14[v47[5]])
    {
      sub_1D9A74A28();
      v25 = swift_allocError();
      *v119 = 4;
      swift_willThrow();

      sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
      (*v124)(v125, v132);
      goto LABEL_3;
    }

    v51 = v44;
    v52 = v138;
    sub_1D9B403F0(v50);
    v138 = v52;
    if (v52)
    {

      sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
      (*v124)(v125, v132);
      v25 = v138;
      goto LABEL_3;
    }

    v54 = v53;

    if (v136)
    {
      v18 = v132;
      if (v43 >= v54)
      {
        LODWORD(v136) = 1;
        goto LABEL_11;
      }

      v55 = v14[v137[6]];
    }

    else
    {
      v18 = v132;
      if (v43 >= v54)
      {
        LODWORD(v136) = 0;
        goto LABEL_11;
      }

      v55 = 1;
    }

    if (*(v44 + 64) < v54 && v55 != 0)
    {
      v57 = v125;
      (*v124)(v125, v18);
      v58 = v57;
      v44 = v51;
      (*v123)(v58, v14, v18);
      LODWORD(v136) = v14[v137[6]];
      v43 = v54;
    }

LABEL_11:
    v41 &= v41 - 1;
    sub_1D9B45628(v14, type metadata accessor for LandmarkSignals);
    v36 = v134;
  }

  while (2)
  {
    v48 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v48 < v42)
    {
      v41 = *(v38 + 8 * v48);
      ++v37;
      if (v41)
      {
        v37 = v48;
        goto LABEL_17;
      }

      continue;
    }

    break;
  }

  v59 = v125;
  v60 = sub_1D9C7BFFC();
  v62 = v61;

  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
    (*v124)(v59, v18);
    v90 = type metadata accessor for ObjectKnowledge(0);
    return (*(*(v90 - 8) + 56))(v135, 1, 1, v90);
  }

  v64 = sub_1D9C7BFFC();
  v66 = v65;
  v67 = sub_1D9C7C00C();
  v133 = v68;
  v134 = v67;
  v47 = type metadata accessor for ObjectKnowledge(0);
  v69 = v47[6];
  v70 = sub_1D9C7B80C();
  v71 = *(*(v70 - 8) + 56);
  v72 = v135;
  v71(v135 + v69, 1, 1, v70);
  v71(v72 + v47[10], 1, 1, v70);
  v73 = sub_1D9C7BFFC();
  v75 = v74;
  v76 = sub_1D9C7DE4C();
  v136 = v66;
  v137 = v64;
  if ((v76 & 1) == 0)
  {

    v131 = 0;
    goto LABEL_43;
  }

  v77 = sub_1D9B14820(1uLL, v73, v75);
  v79 = v78;
  v81 = v80;
  v83 = v82;

  if ((v77 ^ v79) < 0x4000)
  {
LABEL_47:

    v131 = 0;
    v59 = v125;
    goto LABEL_43;
  }

  v84 = v138;
  v85 = sub_1D99C7688(v77, v79, v81, v83, 10);
  v138 = v84;
  if ((v86 & 0x100) != 0)
  {
    v85 = sub_1D99C6AD0(v77, v79, v81, v83, 10);
  }

  v87 = v85;
  v88 = v86;

  v59 = v125;
  if (v88)
  {
    v89 = 0;
  }

  else
  {
    v89 = v87;
  }

  v131 = v89;
LABEL_43:
  v91 = sub_1D9C7C00C();
  v129 = v92;
  v130 = v91;
  v93 = sub_1D9C7BFEC();
  v94 = sub_1D9B451DC(v93);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520, &qword_1D9C960B0);
  v95 = v59;
  v96 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090, &unk_1D9C953B0) - 8);
  v97 = (*(*v96 + 80) + 32) & ~*(*v96 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1D9C85660;
  v99 = v98 + v97;
  v100 = v96[14];
  sub_1D9C7B97C();
  *(v99 + v100) = MEMORY[0x1E69E7CD0];
  v101 = sub_1D9A44BD0(v98);
  swift_setDeallocating();
  sub_1D99A6AE0(v99, &qword_1ECB52090, &unk_1D9C953B0);
  swift_deallocClassInstance();
  v102 = v120;
  sub_1D9C7BFDC();
  sub_1D9C7BC8C();
  v104 = v103;
  v105 = *(v126 + 8);
  v106 = v122;
  v105(v102, v122);
  v107 = v121;
  sub_1D9C7BFDC();
  sub_1D9C7BC6C();
  v109 = v108;
  v105(v107, v106);
  (*v124)(v95, v132);
  v110 = v135;
  v111 = v136;
  *v135 = v137;
  v110[1] = v111;
  v112 = v133;
  v110[2] = v134;
  v110[3] = v112;
  *(v110 + v47[7]) = 0;
  v113 = (v110 + v47[8]);
  *v113 = 0;
  v113[1] = 0xE000000000000000;
  v114 = (v110 + v47[9]);
  *v114 = 0;
  v114[1] = 0xE000000000000000;
  *(v110 + v47[11]) = MEMORY[0x1E69E7CC0];
  v115 = (v110 + v47[12]);
  v115[2] = 0u;
  v115[3] = 0u;
  *v115 = 0u;
  v115[1] = 0u;
  v116 = v110 + v47[13];
  *v116 = 123711979;
  v116[8] = 0;
  *(v110 + v47[14]) = xmmword_1D9C8CD70;
  v117 = v110 + v47[15];
  *v117 = v131;
  *(v117 + 4) = 2;
  v118 = v129;
  *(v117 + 2) = v130;
  *(v117 + 3) = v118;
  *(v117 + 4) = v94;
  *(v117 + 5) = v43;
  v117[48] = 0;
  *(v117 + 7) = 0;
  *(v117 + 8) = 0xE000000000000000;
  *(v117 + 9) = 0;
  *(v117 + 10) = 0xE000000000000000;
  *(v117 + 11) = v101;
  *(v117 + 12) = v104;
  *(v117 + 13) = v109;
  *(v117 + 28) = 0;
  *(v110 + v47[16]) = 0;
  return (*(*(v47 - 1) + 56))(v110, 0, 1, v47);
}

uint64_t sub_1D9B41274@<X0>(void (**a1)(char *, uint64_t)@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v109 = a2;
  v110 = a3;
  v107 = a4;
  v108 = a1;
  v5 = sub_1D9C7D8DC();
  v104 = *(v5 - 8);
  v105 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7BB6C();
  v101 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - v11;
  v13 = type metadata accessor for StorefrontSignals(0);
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - v17;
  v19 = sub_1D9C7BFBC();
  v102 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v108;
  v108 = v4;
  v23 = v112;
  v24 = sub_1D9B3E97C(v22, v109, v110);
  if (v23)
  {
    v25 = v23;
LABEL_3:
    v26 = v107;
    v27 = v103;
    static Logger.argos.getter(v103);
    v28 = v25;
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v25;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1D9962000, v29, v30, "Reranker getTopStorefront failed with error %@", v31, 0xCu);
      sub_1D99A6AE0(v32, &qword_1ECB510E8, &qword_1D9C884F0);
      MEMORY[0x1DA7405F0](v32, -1, -1);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    else
    {
    }

    (*(v104 + 8))(v27, v105);
    v54 = type metadata accessor for ObjectKnowledge(0);
    return (*(*(v54 - 8) + 56))(v26, 1, 1, v54);
  }

  else
  {
    v35 = v24;
    v109 = v18;
    v96 = v12;
    v97 = v9;
    v98 = v7;
    v112 = 0;
    v100 = v21;
    result = sub_1D9C7BFAC();
    v37 = 0;
    v110 = v35;
    v38 = v35 + 64;
    v39 = 1 << *(v35 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v35 + 64);
    v42 = (v39 + 63) >> 6;
    v43 = -INFINITY;
    v99 = (v102 + 1);
    v102 += 2;
    v44 = v108;
    v106 = v19;
    while (1)
    {
      v45 = v109;
      if (!v41)
      {
        break;
      }

LABEL_15:
      sub_1D9B45558(*(v110 + 7) + *(v111 + 72) * (__clz(__rbit64(v41)) | (v37 << 6)), v109, type metadata accessor for StorefrontSignals);
      sub_1D9B455C0(v45, v15, type metadata accessor for StorefrontSignals);
      if (!*&v15[*(v13 + 20)])
      {
        sub_1D9A74A28();
        v25 = swift_allocError();
        *v93 = 4;
        swift_willThrow();

        sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
        (*v99)(v100, v106);
        goto LABEL_3;
      }

      v48 = v44;
      v49 = v112;
      sub_1D9B403F0(v47);
      v112 = v49;
      if (v49)
      {

        sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
        (*v99)(v100, v106);
        v25 = v112;
        goto LABEL_3;
      }

      v51 = v50;

      if (v43 >= v51)
      {
        v19 = v106;
      }

      else
      {
        v19 = v106;
        if (*(v44 + 9) < v51)
        {
          v52 = v100;
          (*v99)(v100, v106);
          v53 = v52;
          v44 = v48;
          (*v102)(v53, v15, v19);
          v43 = v51;
        }
      }

      v41 &= v41 - 1;
      result = sub_1D9B45628(v15, type metadata accessor for StorefrontSignals);
    }

    while (1)
    {
      v46 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        return result;
      }

      if (v46 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v46);
      ++v37;
      if (v41)
      {
        v37 = v46;
        goto LABEL_15;
      }
    }

    v55 = v100;
    if (sub_1D9C7BF7C())
    {
      v113 = sub_1D9C7BF7C() % 0xFFFFFFFFuLL;
      v56 = sub_1D9C7E7AC();
      v113 = 81;
      v114 = 0xE100000000000000;
      MEMORY[0x1DA73DF90](v56);

      v110 = v114;
      v111 = v113;
      v57 = sub_1D9C7BF9C();
      v108 = v58;
      v109 = v57;
      v59 = type metadata accessor for ObjectKnowledge(0);
      v60 = v59[6];
      v61 = sub_1D9C7B80C();
      v62 = *(*(v61 - 8) + 56);
      v63 = v107;
      v62(v107 + v60, 1, 1, v61);
      v62(v63 + v59[10], 1, 1, v61);
      v105 = sub_1D9C7BF7C();
      v64 = sub_1D9C7BF9C();
      v103 = v65;
      v104 = v64;
      v66 = sub_1D9C7BF5C();
      v102 = sub_1D9B451DC(v66);

      v95 = sub_1D9C7BF6C();
      v94 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520, &qword_1D9C960B0);
      v68 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090, &unk_1D9C953B0) - 8);
      v69 = (*(*v68 + 80) + 32) & ~*(*v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1D9C85660;
      v71 = v70 + v69;
      v72 = v68[14];
      sub_1D9C7B97C();
      *(v71 + v72) = MEMORY[0x1E69E7CD0];
      v73 = sub_1D9A44BD0(v70);
      swift_setDeallocating();
      sub_1D99A6AE0(v71, &qword_1ECB52090, &unk_1D9C953B0);
      swift_deallocClassInstance();
      v74 = v96;
      sub_1D9C7BF8C();
      sub_1D9C7BB5C();
      v76 = v75;
      v77 = *(v101 + 8);
      v78 = v74;
      v79 = v98;
      v77(v78, v98);
      v80 = v97;
      sub_1D9C7BF8C();
      sub_1D9C7BB4C();
      v82 = v81;
      v77(v80, v79);
      (*v99)(v55, v106);
      v83 = v110;
      *v63 = v111;
      v63[1] = v83;
      v84 = v108;
      v63[2] = v109;
      v63[3] = v84;
      *(v63 + v59[7]) = 0;
      v85 = (v63 + v59[8]);
      *v85 = 0;
      v85[1] = 0xE000000000000000;
      v86 = (v63 + v59[9]);
      *v86 = 0;
      v86[1] = 0xE000000000000000;
      *(v63 + v59[11]) = MEMORY[0x1E69E7CC0];
      v87 = (v63 + v59[12]);
      v87[2] = 0u;
      v87[3] = 0u;
      *v87 = 0u;
      v87[1] = 0u;
      v88 = v63 + v59[13];
      *v88 = 123711979;
      v88[8] = 0;
      *(v63 + v59[14]) = xmmword_1D9C8CD70;
      v89 = v63 + v59[15];
      *v89 = v105;
      *(v89 + 4) = 3;
      v90 = v103;
      *(v89 + 2) = v104;
      *(v89 + 3) = v90;
      *(v89 + 4) = v102;
      *(v89 + 5) = v43;
      v89[48] = 1;
      v91 = v94;
      *(v89 + 7) = v95;
      *(v89 + 8) = v91;
      *(v89 + 9) = 0;
      *(v89 + 10) = 0xE000000000000000;
      *(v89 + 11) = v73;
      *(v89 + 12) = v76;
      *(v89 + 13) = v82;
      *(v89 + 28) = 0;
      *(v63 + v59[16]) = 0;
      return (*(*(v59 - 1) + 56))(v63, 0, 1, v59);
    }

    else
    {
      (*v99)(v55, v19);
      v92 = type metadata accessor for ObjectKnowledge(0);
      return (*(*(v92 - 8) + 56))(v107, 1, 1, v92);
    }
  }
}

uint64_t sub_1D9B41D28()
{

  return swift_deallocClassInstance();
}

void sub_1D9B41DAC(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v8 = sub_1D99E8FDC(v8);
    }

    v80 = v8 + 16;
    v81 = *(v8 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v8[16 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D9B4234C((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_129;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D99E8FF0(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v34 = *(v8 + 3);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      v8 = sub_1D99E8FF0((v34 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v35;
    v36 = v8 + 32;
    v37 = &v8[16 * v5 + 32];
    *v37 = v9;
    *(v37 + 1) = v7;
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 4);
          v39 = *(v8 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = &v8[16 * v35];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = &v36[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = &v8[16 * v35];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = &v36[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = &v36[16 * v5 - 16];
        v76 = *v75;
        v77 = &v36[16 * v5];
        v78 = *(v77 + 1);
        sub_1D9B4234C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v8 + 2);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        memmove(&v36[16 * v5], v77 + 16, 16 * (v79 - 1 - v5));
        *(v8 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v36[16 * v35];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v8[16 * v35];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = &v36[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_1D9B4234C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t (*sub_1D9B42548(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1D9B43120(v7);
  v7[9] = sub_1D9B426FC(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1D9B425F4;
}

uint64_t (*sub_1D9B425F8(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1D9B43154(v5);
  v5[9] = sub_1D9B42C30(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D9B45B5C;
}

void sub_1D9B4269C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1D9B426FC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for LandmarkSignals(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB535F8, &unk_1D9C960B8) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1D99ED894(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1D9B455C0(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for LandmarkSignals);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1D9B429D8;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1D9C14160();
      goto LABEL_16;
    }

    sub_1D9C09A6C(v25, a4 & 1);
    v29 = sub_1D99ED894(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

void sub_1D9B429D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1D99AB100(v5, v6, &qword_1ECB535F8, &unk_1D9C960B8);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1D9B455C0(v9, *(v2 + 6), type metadata accessor for LandmarkSignals);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1D9B455C0(v13, v14, type metadata accessor for LandmarkSignals);
        sub_1D9C12B84(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1D99AB100(v5, v17, &qword_1ECB535F8, &unk_1D9C960B8);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1D9B455C0(v9, *(v2 + 7), type metadata accessor for LandmarkSignals);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1D9B455C0(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for LandmarkSignals);
      goto LABEL_10;
    }
  }

  sub_1D99A6AE0(v9, &qword_1ECB535F8, &unk_1D9C960B8);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1D9B172F8(*(v20 + 48) + 16 * v19);
    sub_1D9C0F914(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1D99A6AE0(v23, &qword_1ECB535F8, &unk_1D9C960B8);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}