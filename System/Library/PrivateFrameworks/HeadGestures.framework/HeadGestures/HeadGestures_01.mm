id sub_25110CE78(int a1, id a2, float a3, uint64_t a4, void (*a5)(id))
{
  v9 = [a2 volume];
  if (v10 == a3)
  {
    if (*(a4 + 32))
    {

      sub_251130C08();

      *(a4 + 32) = 0;
    }

    a5(v9);
  }

  [a2 volume];
  v12 = v11;
  [a2 volume];
  v14 = *&v13 + -0.05;
  if ((*&v13 + -0.05) <= a3)
  {
    v14 = a3;
  }

  *&v13 = *&v13 + 0.05;
  if (*&v13 > a3)
  {
    *&v13 = a3;
  }

  if (v12 >= a3)
  {
    *&v13 = v14;
  }

  return [a2 setVolume_];
}

void sub_25110CF7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 8);
  v2 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v4 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 32);

  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);
}

uint64_t sub_25110D030()
{
  v0 = sub_2510F4B98();
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  v2 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 8);
  v3 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 16);
  v4 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 24);
  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager + 32);

  v6 = *(v0 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGCustomizedAudioPlayer(uint64_t a1)
{
  result = qword_27F41E6D8;
  if (!qword_27F41E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25110D1F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25110D264(uint64_t a1, void *a2)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode;
  if (!*(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_environmentNode))
  {
    return;
  }

  v5 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_audioEngine);
  if ([v5 isRunning])
  {
LABEL_24:
    [a2 play];
    return;
  }

  v55 = a2;
  v6 = *(a1 + v2);
  if (!v6)
  {

    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = [v5 mainMixerNode];
  v9 = sub_25110C7E0();
  [v5 connect:v7 to:v8 format:v9];

  v10 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode;
  v11 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_partGestureAudioNode);
  if (!v11)
  {
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  v12 = *(a1 + v2);
  if (!v12)
  {
LABEL_31:

    __break(1u);
    goto LABEL_32;
  }

  v13 = a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager;
  v14 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_assetManager);
  if (!v14)
  {
LABEL_32:

    __break(1u);
    goto LABEL_33;
  }

  v15 = v11;
  v16 = v12;
  v17 = [v14 format];
  [v5 connect:v15 to:v16 format:v17];

  v18 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode;
  v19 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_headGestureAudioNode);
  if (!v19)
  {
LABEL_33:

    __break(1u);
    goto LABEL_34;
  }

  v20 = *(a1 + v2);
  if (!v20)
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v21 = *(v13 + 16);
  if (!v21)
  {
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v22 = v19;
  v23 = v20;
  v24 = [v21 format];
  [v5 connect:v22 to:v23 format:v24];

  v25 = OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode;
  v26 = *(a1 + OBJC_IVAR____TtC12HeadGestures23HGCustomizedAudioPlayer_backgroundAudioNode);
  if (!v26)
  {
LABEL_36:

    __break(1u);
    goto LABEL_37;
  }

  v27 = v26;
  v28 = [v5 mainMixerNode];
  v29 = *(v13 + 32);
  if (!v29)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v30 = v28;
  v31 = [*(v13 + 32) format];
  [v5 connect:v27 to:v30 format:v31];

  v32 = *(a1 + v10);
  if (!v32)
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  [v32 setRenderingAlgorithm_];
  v34 = *(a1 + v10);
  if (!v34)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  LODWORD(v33) = 1050253722;
  [v34 setReverbBlend_];
  v35 = *(a1 + v2);
  if (!v35)
  {
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  [v35 setListenerPosition_];
  v36 = *(a1 + v18);
  if (!v36)
  {
LABEL_41:

    __break(1u);
    return;
  }

  [v36 setPosition_];
  v37 = *(a1 + v25);
  if (v37)
  {
    v38 = v29;
    v39 = v37;
    [v39 stop];
    [v39 scheduleBuffer:v38 atTime:0 options:1 completionHandler:0];
    [v39 setVolume_];
  }

  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v40 = sub_251130BE8();
  __swift_project_value_buffer(v40, qword_27F421A38);
  v41 = sub_251130BC8();
  v42 = sub_251131168();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2510F2000, v41, v42, "[HGAudioPlayer] Starting the audio engine", v43, 2u);
    MEMORY[0x25306CC10](v43, -1, -1);
  }

  [v5 prepare];
  v56[0] = 0;
  if ([v5 startAndReturnError_])
  {
    v44 = v56[0];
    a2 = v55;
    goto LABEL_24;
  }

  v45 = v56[0];
  v46 = sub_251130978();

  swift_willThrow();
  v47 = v46;
  v48 = sub_251130BC8();
  v49 = sub_251131188();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v50 = 136315138;
    swift_getErrorValue();
    v52 = sub_251131548();
    v54 = sub_2510FAC50(v52, v53, v56);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_2510F2000, v48, v49, "[HGAudioPlayer] Unable to start the AudioEngine: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x25306CC10](v51, -1, -1);
    MEMORY[0x25306CC10](v50, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25110D874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25110D8BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25110D8F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25110D944()
{
  result = qword_27F41E6F8;
  if (!qword_27F41E6F8)
  {
    sub_2510FE944(255, &qword_27F41E0F0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E6F8);
  }

  return result;
}

uint64_t sub_25110D9AC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void *sub_25110DA2C@<X0>(void *a1@<X8>, __int128 *a2@<X0>)
{
  sub_25110DA80(a2, __src);
  nullsub_1();
  return memcpy(a1, __src, 0x131uLL);
}

uint64_t sub_25110DA80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_2510F731C(v157);
  LOBYTE(v158) = 1;
  v6 = *(a1 + 13);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[3];
  v160 = a1[2];
  v161 = v9;
  v158 = v7;
  v159 = v8;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  *(v164 + 9) = *(a1 + 105);
  v163 = v11;
  v164[0] = v12;
  v162 = v10;
  nullsub_1();
  *&v151[71] = v162;
  *&v151[87] = v163;
  *&v151[103] = v164[0];
  *&v151[112] = *(v164 + 9);
  *&v151[7] = v158;
  *&v151[23] = v159;
  *&v151[39] = v160;
  v142 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 24)), *(a1 + 40));
  *&v151[55] = v161;
  swift_beginAccess();
  v17 = *(v2 + 344);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v147 = MEMORY[0x277D84F90];

    sub_25111B984(0, v18, 0);
    v19 = v147;
    v20 = v147[1].u64[0];
    v21 = 48;
    do
    {
      v22 = *(v17 + v21);
      v23 = v147[1].u64[1];
      if (v20 >= v23 >> 1)
      {
        v138 = *(v17 + v21);
        sub_25111B984((v23 > 1), v20 + 1, 1);
        v22 = v138;
      }

      v147[1].i64[0] = v20 + 1;
      v147[v20 + 2] = v22;
      v21 += 32;
      ++v20;
      --v18;
    }

    while (v18);
  }

  sub_251117CBC(v19, v13, v14, v15, v16);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30.i64[0] = v25;
  v30.i64[1] = v27;
  if (v29)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  v32 = vmulq_f32(vbslq_s8(vdupq_n_s32(v31), v142, v30), xmmword_251133650);
  v33 = vnegq_f32(v142);
  v34 = vtrn2q_s32(v142, vtrn1q_s32(v142, v33));
  v35 = vrev64q_s32(v142);
  v35.i32[0] = v33.i32[1];
  v35.i32[3] = v33.i32[2];
  v36 = sub_25111807C(vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v142, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v142, v32, 3), v35, v32, 2)));
  v38 = v37;
  v40 = v39;
  if (*(v3 + 368))
  {
    swift_beginAccess();
    v41 = *(v3 + 344);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 344) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_25110971C(0, *(v41 + 2) + 1, 1, v41);
      *(v3 + 344) = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v41 = sub_25110971C((v43 > 1), v44 + 1, 1, v41);
    }

    *(v41 + 2) = v45;
    v46 = &v41[32 * v44];
    *(v46 + 4) = v6;
    *(v46 + 3) = v142;
    *(v3 + 344) = v41;
    swift_endAccess();

    v47 = (v41 + 48);
    v48 = MEMORY[0x277D84F90];
    do
    {
      v52 = *(v47 - 2);
      if (v6 + -1.0 <= v52)
      {
        v143 = *v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25111B964(0, *(v48 + 16) + 1, 1);
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_25111B964((v49 > 1), v50 + 1, 1);
        }

        *(v48 + 16) = v50 + 1;
        v51 = v48 + 32 * v50;
        *(v51 + 32) = v52;
        *(v51 + 48) = v143;
      }

      v47 += 4;
      --v45;
    }

    while (v45);

    *(v3 + 344) = v48;
  }

  v53 = *(a1 + 7);
  v54 = *(a1 + 8);
  v55 = *(a1 + 9);
  v56 = *(a1 + 10);
  v57 = *(a1 + 11);
  v137 = *(a1 + 12);
  v58 = *(v3 + 352);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 352) = v58;
  if ((v59 & 1) == 0)
  {
    v58 = sub_251109618(0, *(v58 + 2) + 1, 1, v58);
    *(v3 + 352) = v58;
  }

  v61 = *(v58 + 2);
  v60 = *(v58 + 3);
  v62 = v61 + 1;
  if (v61 >= v60 >> 1)
  {
    v58 = sub_251109618((v60 > 1), v61 + 1, 1, v58);
  }

  *(v58 + 2) = v62;
  v63 = &v58[32 * v61];
  *(v63 + 4) = v6;
  *(v63 + 5) = v53;
  *(v63 + 6) = v54;
  *(v63 + 7) = v55;
  *(v3 + 352) = v58;

  v64 = (v58 + 48);
  v65 = MEMORY[0x277D84F90];
  do
  {
    if (v6 + -0.1 <= *(v64 - 2))
    {
      v144 = *(v64 - 1);
      v139 = *v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25111B944(0, *(v65 + 16) + 1, 1);
      }

      v67 = *(v65 + 16);
      v66 = *(v65 + 24);
      v68 = v144;
      if (v67 >= v66 >> 1)
      {
        sub_25111B944((v66 > 1), v67 + 1, 1);
        v68 = v144;
      }

      *(v65 + 16) = v67 + 1;
      v69 = v65 + 32 * v67;
      *(v69 + 32) = v68;
      *(v69 + 48) = v139;
    }

    v64 += 4;
    --v62;
  }

  while (v62);

  *(v3 + 352) = v65;

  v71 = *(v3 + 352);
  v72 = *(v71 + 16);
  v73 = MEMORY[0x277D84F90];
  if (v72)
  {
    v140 = v57;
    v145 = v56;
    v148 = MEMORY[0x277D84F90];

    sub_25111B924(0, v72, 0);
    v74 = v148;
    v75 = *(v148 + 16);
    v76 = 40;
    do
    {
      v77 = *(v71 + v76);
      v78 = *(v148 + 24);
      if (v75 >= v78 >> 1)
      {
        sub_25111B924((v78 > 1), v75 + 1, 1);
      }

      *(v148 + 16) = v75 + 1;
      *(v148 + 8 * v75 + 32) = v77;
      v76 += 32;
      ++v75;
      --v72;
    }

    while (v72);

    v79 = *(v3 + 352);
    v80 = *(v79 + 16);
    v73 = MEMORY[0x277D84F90];
    if (v80)
    {
      v135 = a2;
      v149 = MEMORY[0x277D84F90];

      sub_25111B924(0, v80, 0);
      v73 = v149;
      v81 = *(v149 + 16);
      v82 = 48;
      do
      {
        v83 = *(v79 + v82);
        v84 = *(v149 + 24);
        if (v81 >= v84 >> 1)
        {
          sub_25111B924((v84 > 1), v81 + 1, 1);
        }

        *(v149 + 16) = v81 + 1;
        *(v149 + 8 * v81 + 32) = v83;
        v82 += 32;
        ++v81;
        --v80;
      }

      while (v80);

      v85 = *(v3 + 352);
      v86 = *(v85 + 16);
      v87 = MEMORY[0x277D84F90];
      if (v86)
      {
        v150 = MEMORY[0x277D84F90];

        sub_25111B924(0, v86, 0);
        v87 = v150;
        v88 = *(v150 + 16);
        v89 = 56;
        do
        {
          v90 = *(v85 + v89);
          v91 = *(v150 + 24);
          if (v88 >= v91 >> 1)
          {
            sub_25111B924((v91 > 1), v88 + 1, 1);
          }

          *(v150 + 16) = v88 + 1;
          *(v150 + 8 * v88 + 32) = v90;
          v89 += 32;
          ++v88;
          --v86;
        }

        while (v86);
      }

      a2 = v135;
    }

    else
    {
      v87 = MEMORY[0x277D84F90];
    }

    v56 = v145;
    v57 = v140;
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
    v87 = MEMORY[0x277D84F90];
  }

  v146 = v55;
  v92 = *(v74 + 16);
  if (v92)
  {
    v93 = *(v74 + 32);
    v94 = v93;
    v95 = v92 - 1;
    if (v92 != 1)
    {
      v96 = (v74 + 40);
      v94 = *(v74 + 32);
      do
      {
        v97 = *v96++;
        v98 = v97;
        if (v97 < v94)
        {
          v94 = v98;
        }

        --v95;
      }

      while (v95);
    }

    v136 = v54;
    v141 = v53;
    v99 = *(v73 + 16);
    if (!v99)
    {
      goto LABEL_96;
    }

    v100 = *(v73 + 32);
    v101 = v100;
    v102 = v99 - 1;
    if (v99 != 1)
    {
      v103 = (v73 + 40);
      v101 = *(v73 + 32);
      do
      {
        v104 = *v103++;
        v105 = v104;
        if (v104 < v101)
        {
          v101 = v105;
        }

        --v102;
      }

      while (v102);
    }

    v133 = v40;
    v134 = v38;
    v106 = *(v87 + 16);
    if (!v106)
    {
      goto LABEL_97;
    }

    v107 = *(v87 + 32);
    v108 = v107;
    v109 = v106 - 1;
    if (v106 != 1)
    {
      v110 = (v87 + 40);
      v108 = *(v87 + 32);
      do
      {
        v111 = *v110++;
        v112 = v111;
        if (v111 < v108)
        {
          v108 = v112;
        }

        --v109;
      }

      while (v109);
    }

    v113 = v92 - 1;
    if (v113)
    {
      v114 = (v74 + 40);
      do
      {
        v115 = *v114++;
        v116 = v115;
        if (v93 < v115)
        {
          v93 = v116;
        }

        --v113;
      }

      while (v113);
    }

    v117 = v99 - 1;
    if (v99 != 1)
    {
      v118 = (v73 + 40);
      do
      {
        v119 = *v118++;
        v120 = v119;
        if (v100 < v119)
        {
          v100 = v120;
        }

        --v117;
      }

      while (v117);
    }

    v121 = v106 - 1;
    if (v106 != 1)
    {
      v122 = (v87 + 40);
      do
      {
        v123 = *v122++;
        v124 = v123;
        if (v107 < v123)
        {
          v107 = v124;
        }

        --v121;
      }

      while (v121);
    }

    sub_251128950(0x20, v6);
    v125 = *(v3 + 360);
    v126 = *(v125 + 16);
    if (v126 != 32)
    {

      v127 = 0.0;
LABEL_93:
      *(v3 + 105) = *&v151[64];
      *(v3 + 121) = *&v151[80];
      *(v3 + 137) = *&v151[96];
      *(v3 + 153) = *&v151[112];
      *(v3 + 41) = *v151;
      *(v3 + 57) = *&v151[16];
      *(v3 + 73) = *&v151[32];
      *(v3 + 89) = *&v151[48];
      *(v3 + 32) = v6;
      *a2 = v6;
      *(a2 + 57) = *&v151[48];
      *(a2 + 41) = *&v151[32];
      *(a2 + 25) = *&v151[16];
      *(a2 + 9) = *v151;
      *(a2 + 121) = *&v151[112];
      *(a2 + 105) = *&v151[96];
      *(v3 + 40) = 0;
      *(v3 + 172) = *&v156[3];
      *(v3 + 169) = *v156;
      *(v3 + 176) = v36;
      *(v3 + 184) = v134;
      *(v3 + 192) = v133;
      *(v3 + 200) = 0;
      *(v3 + 204) = *&v155[3];
      *(v3 + 201) = *v155;
      *(v3 + 208) = v141;
      *(v3 + 216) = v136;
      *(v3 + 224) = v146;
      *(v3 + 232) = 0;
      *(v3 + 236) = *&v154[3];
      *(v3 + 233) = *v154;
      *(v3 + 240) = v56;
      *(v3 + 248) = v57;
      result = v137;
      *(v3 + 256) = v137;
      *(v3 + 264) = 0;
      *(v3 + 265) = *v153;
      *(v3 + 268) = *&v153[3];
      *(v3 + 272) = v94;
      *(v3 + 280) = v101;
      *(v3 + 288) = v108;
      *(v3 + 296) = v93;
      *(v3 + 304) = v100;
      *(v3 + 312) = v107;
      *(v3 + 320) = 0;
      *(v3 + 324) = *&v152[3];
      *(v3 + 321) = *v152;
      *(v3 + 328) = v127;
      *(v3 + 336) = v126 != 32;
      *(a2 + 8) = 0;
      *(a2 + 89) = *&v151[80];
      *(a2 + 73) = *&v151[64];
      *(a2 + 140) = *&v156[3];
      *(a2 + 137) = *v156;
      *(a2 + 144) = v36;
      *(a2 + 152) = v134;
      *(a2 + 160) = v133;
      *(a2 + 168) = 0;
      *(a2 + 172) = *&v155[3];
      *(a2 + 169) = *v155;
      *(a2 + 176) = v141;
      *(a2 + 184) = v136;
      *(a2 + 192) = v146;
      *(a2 + 200) = 0;
      *(a2 + 204) = *&v154[3];
      *(a2 + 201) = *v154;
      *(a2 + 208) = v56;
      *(a2 + 216) = v57;
      *(a2 + 224) = v137;
      *(a2 + 232) = 0;
      *(a2 + 236) = *&v153[3];
      *(a2 + 233) = *v153;
      *(a2 + 240) = v94;
      *(a2 + 248) = v101;
      *(a2 + 256) = v108;
      *(a2 + 264) = v93;
      *(a2 + 272) = v100;
      *(a2 + 280) = v107;
      *(a2 + 288) = 0;
      *(a2 + 292) = *&v152[3];
      *(a2 + 289) = *v152;
      *(a2 + 296) = v127;
      *(a2 + 304) = v126 != 32;
      return result;
    }

    v132 = *(v125 + 32);

    if (*(v125 + 16) >= 0x20uLL)
    {
      v131 = v36;
      v128 = v6;
      v129 = *(v125 + 280);

      v130 = v129 - v132;
      v6 = v128;
      v36 = v131;
      v127 = *(*(v3 + 360) + 16) / v130;
      goto LABEL_93;
    }

    __break(1u);
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_25110E594()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25110E600()
{
  *(v0 + 16) = xmmword_251133660;
  sub_2510F731C(v4);
  *&v3[71] = v4[4];
  *&v3[87] = v4[5];
  *&v3[103] = v5[0];
  *&v3[112] = *(v5 + 9);
  *&v3[7] = v4[0];
  *&v3[23] = v4[1];
  *&v3[39] = v4[2];
  *&v3[55] = v4[3];
  *(v0 + 105) = *&v3[64];
  *(v0 + 121) = *&v3[80];
  *(v0 + 137) = *&v3[96];
  *(v0 + 153) = *&v3[112];
  *(v0 + 41) = *v3;
  *(v0 + 57) = *&v3[16];
  *(v0 + 73) = *&v3[32];
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 89) = *&v3[48];
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 320) = 1;
  *(v0 + 328) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 336) = 1;
  *(v0 + 344) = v1;
  *(v0 + 352) = v1;
  *(v0 + 360) = v1;
  *(v0 + 368) = 1;
  return v0;
}

uint64_t getEnumTagSinglePayload for HGError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HGError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25110E8B0()
{
  v1 = *v0;
  sub_251131598();
  MEMORY[0x25306C3C0](v1);
  return sub_2511315B8();
}

uint64_t sub_25110E924(uint64_t a1)
{
  v2 = *v1;
  sub_251131598();
  MEMORY[0x25306C3C0](v2);
  return sub_2511315B8();
}

unint64_t sub_25110E97C()
{
  result = qword_27F41E708;
  if (!qword_27F41E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E708);
  }

  return result;
}

uint64_t sub_25110E9D0()
{
  v1 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  [*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle) closeFile];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding;
  v4 = sub_251130F58();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_251106114(*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData), *(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData + 8));
  sub_251106114(*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer), *(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer + 8));
  return v0;
}

uint64_t sub_25110EA8C()
{
  sub_25110E9D0();

  return swift_deallocClassInstance();
}

uint64_t sub_25110EB0C(uint64_t a1)
{
  result = sub_251130F58();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_25110EBC8()
{
  v1 = v0;
  v2 = sub_251130F58();
  v3 = MEMORY[0x28223BE20](v2);
  v6 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  if (*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle))
  {
    if ((*(v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof) & 1) == 0)
    {
      v35 = OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof;
      v36 = v5;
      v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = v3;
      v7 = (v0 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer);
      swift_beginAccess();
      while (1)
      {
        v8 = *v7;
        v9 = v7[1];
        sub_251106058(*v7, v9);
        v10 = sub_251130A58();
        v12 = v11;
        v14 = v13;
        result = sub_251106114(v8, v9);
        if ((v14 & 1) == 0)
        {
          if (v10 < 0)
          {
            __break(1u);
          }

          else
          {
            v29 = *v7;
            v28 = v7[1];
            sub_251106058(*v7, v28);
            v30 = sub_251130A78();
            v32 = v31;
            sub_251106114(v29, v28);
            (*(v36 + 16))(v37, v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v38);
            v33 = sub_251130F38();
            result = sub_251106114(v30, v32);
            if ((v12 & 0x8000000000000000) == 0)
            {
              swift_beginAccess();
              sub_251130A18();
              swift_endAccess();
              return v33;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }

        result = *(v1 + v6);
        if (!result)
        {
          goto LABEL_34;
        }

        v16 = [result readDataOfLength_];
        v17 = sub_251130A48();
        v19 = v18;

        v20 = v19 >> 62;
        if ((v19 >> 62) > 1)
        {
          if (v20 != 2 || *(v17 + 16) == *(v17 + 24))
          {
LABEL_14:
            *(v1 + v35) = 1;
            v21 = *v7;
            v22 = v7[1];
            v23 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v23)
              {
                if (v21 == v21 >> 32)
                {
                  goto LABEL_30;
                }
              }

              else if ((v22 & 0xFF000000000000) == 0)
              {
                goto LABEL_30;
              }

LABEL_28:
              (*(v36 + 16))(v37, v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v38);
              sub_251106058(v21, v22);
              v34 = sub_251130F38();
              sub_251106114(v21, v22);
              swift_beginAccess();
              sub_251130A28();
              swift_endAccess();
              sub_251106114(v17, v19);
              return v34;
            }

            if (v23 == 2 && *(v21 + 16) != *(v21 + 24))
            {
              goto LABEL_28;
            }

LABEL_30:
            sub_251106114(v17, v19);
            return 0;
          }
        }

        else if (v20)
        {
          if (v17 == v17 >> 32)
          {
            goto LABEL_14;
          }
        }

        else if ((v19 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        swift_beginAccess();
        sub_251130A68();
        swift_endAccess();
        sub_251106114(v17, v19);
      }
    }
  }

  else
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v24 = sub_251130BE8();
    __swift_project_value_buffer(v24, qword_27F421A38);
    v25 = sub_251130BC8();
    v26 = sub_251131188();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2510F2000, v25, v26, "HGFileDataReading error, Attempt to read from closed file", v27, 2u);
      MEMORY[0x25306CC10](v27, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_25110F05C()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251130E38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = sub_25110F930;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_3;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  sub_251130E28();
  v13[1] = MEMORY[0x277D84F90];
  sub_25110F950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_25110F9A8();
  sub_2511312A8();
  MEMORY[0x25306C010](0, v8, v4, v10);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_25110F2CC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader))
  {
    v1 = result;

    for (i = sub_25110EBC8(); v3; i = sub_25110EBC8())
    {
      sub_2511129C4(i, v3, &v11);
      v18[4] = v15;
      v18[5] = v16;
      v19[0] = v17[0];
      *(v19 + 9) = *(v17 + 9);
      v18[0] = v11;
      v18[1] = v12;
      v18[2] = v13;
      v18[3] = v14;
      if (sub_2510F7300(v18) != 1)
      {
        sub_251130C28();
        v4 = (v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
        v5 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 80);
        v20[4] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 64);
        v20[5] = v5;
        v21[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 96);
        *(v21 + 9) = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 105);
        v6 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 16);
        v20[0] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion);
        v20[1] = v6;
        v7 = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 48);
        v20[2] = *(v1 + OBJC_IVAR____TtC12HeadGestures20HGMotionDataProvider_lastReceivedCMDeviceMotion + 32);
        v20[3] = v7;
        *(v4 + 105) = *(v17 + 9);
        v8 = v17[0];
        v4[5] = v16;
        v4[6] = v8;
        v9 = v15;
        v4[3] = v14;
        v4[4] = v9;
        v10 = v13;
        v4[1] = v12;
        v4[2] = v10;
        *v4 = v11;
        sub_2511082D0(v20);
      }
    }

    sub_251130C18();
  }

  return result;
}

void sub_25110F454()
{
  v1 = *(v0 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
    v3 = *(v1 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle);

    [v3 closeFile];
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }
}

uint64_t sub_25110F4F0()
{
  v1 = sub_251130F58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_fileHandle);
  sub_251130F48();
  type metadata accessor for StreamReader(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle;
  *(v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_fileHandle) = 0;
  v8 = v5;
  v9 = sub_251130F28();
  if (v10 >> 60 == 15)
  {
    (*(v2 + 8))(v4, v1);

    swift_deallocPartialClassInstance();
    v6 = 0;
  }

  else
  {
    v11 = v9;
    v12 = v10;
    v13 = *(v6 + v7);
    *(v6 + v7) = v8;
    v14 = v8;

    v15 = (v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_delimData);
    *v15 = v11;
    v15[1] = v12;
    (*(v2 + 16))(v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_encoding, v4, v1);
    *(v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_chunkSize) = 1024;
    sub_251130958();
    swift_allocObject();
    v16 = sub_251130948();

    (*(v2 + 8))(v4, v1);
    v17 = (v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_buffer);
    *v17 = 0;
    v17[1] = v16 | 0x4000000000000000;
    *(v6 + OBJC_IVAR____TtC12HeadGestures12StreamReader_atEof) = 0;
  }

  *(v20 + OBJC_IVAR____TtC12HeadGestures18HGFileDataProvider_streamReader) = v6;
}

uint64_t sub_25110F798()
{
}

id sub_25110F7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HGFileDataProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25110F8F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25110F950()
{
  result = qword_27F41E080;
  if (!qword_27F41E080)
  {
    sub_251130E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E080);
  }

  return result;
}

unint64_t sub_25110F9A8()
{
  result = qword_27F41E090;
  if (!qword_27F41E090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F41E088, &qword_251132A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E090);
  }

  return result;
}

uint64_t sub_25110FA0C(uint64_t a1)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E748, &qword_2511338E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E750, &qword_2511338E8);
  v6 = *(v5 - 8);
  v21 = v5;
  v22 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = sub_251130B38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(HGHeadGestureResult) init];
  [v13 setHeadGesture_];
  [v13 setHeadGesturePart_];
  sub_251130B08();
  v14 = sub_251130AA8();
  (*(v10 + 8))(v12, v9);
  [v13 setTimestamp_];

  v23 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E758, &qword_2511338F0);
  sub_251111078();
  sub_2510F6658(&qword_27F41E760, &qword_27F41E758, &qword_2511338F0, MEMORY[0x277CBCD90]);
  sub_251130CE8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E768, &qword_2511338F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_251133860;
  *(v15 + 32) = v13;
  sub_2510F6658(&qword_27F41E770, &qword_27F41E748, &qword_2511338E0, MEMORY[0x277CBCB10]);
  v16 = v13;
  sub_251130DC8();

  (*(v2 + 8))(v4, v1);
  sub_2510F6658(&qword_27F41E778, &qword_27F41E750, &qword_2511338E8, MEMORY[0x277CBCB40]);
  v17 = v21;
  v18 = sub_251130CD8();

  (*(v22 + 8))(v8, v17);
  return v18;
}

id sub_25110FDFC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v126 = sub_251130B88();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251130B38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v130 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v132 = &v124 - v10;
  MEMORY[0x28223BE20](v9);
  v137 = &v124 - v11;
  sub_251130B08();
  v12 = 1.0 / *(v1 + OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_partialGestureCountTarget);
  v13 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  swift_beginAccess();
  v14 = *(v13 + v1);
  v15 = *(v14 + 64);
  v139 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_lastGesturePartRecognizedAt;

  v134 = v19;
  swift_beginAccess();
  v20 = 0;
  v21 = (v16 + 63) >> 6;
  v129 = (v6 + 16);
  v127 = v6;
  v136 = (v6 + 8);
  v133 = v13;
  v138 = v21;
  v128 = v5;
  v131 = v2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v18)
        {
          while (1)
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
              goto LABEL_82;
            }

            if (v22 >= v21)
            {
              break;
            }

            v18 = *(v139 + 8 * v22);
            ++v20;
            if (v18)
            {
              v20 = v22;
              goto LABEL_11;
            }
          }

          if (qword_27F41DFB0 != -1)
          {
            goto LABEL_91;
          }

          goto LABEL_63;
        }

LABEL_11:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        LODWORD(v24) = *(*(v14 + 48) + (v23 | (v20 << 6)));
        v25 = *(v2 + 16);
        LODWORD(v140) = v24;
        if (v25 == 5)
        {
          break;
        }

        v135 = v25;
        v26 = v2 + v134;
        v27 = v132;
        (*v129)(v132, v26, v5);
        v28 = v14;
        v29 = v130;
        sub_251130AD8();
        v30 = sub_251130AB8();
        v31 = *v136;
        v32 = v29;
        v14 = v28;
        (*v136)(v32, v5);
        v33 = v27;
        v2 = v131;
        v31(v33, v5);
        v24 = v140;
        v13 = v133;
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (v140 == 1)
        {
          if (byte_2863315A8 != v3 && byte_2863315A9 != v3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v140 != 2)
          {
            goto LABEL_38;
          }

          if (byte_2863315D0 != v3 && byte_2863315D1 != v3)
          {
            goto LABEL_26;
          }
        }

        if (v135 == v3)
        {
          break;
        }

        v64 = *(v133 + v2);
        if (!*(v64 + 16))
        {
          goto LABEL_93;
        }

        v65 = sub_25112F9FC();
        if ((v66 & 1) == 0)
        {
          goto LABEL_94;
        }

        v67 = *(v64 + 56);
        if (v12 + *(v67 + 8 * v65) <= 1.0)
        {
          v68 = v12 + *(v67 + 8 * v65);
        }

        else
        {
          v68 = 1.0;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = *(v13 + v2);
        *(v13 + v2) = 0x8000000000000000;
        sub_2510FB4A0(v24, isUniquelyReferenced_nonNull_native, v68);
        *(v13 + v2) = v141;
        swift_endAccess();
        v21 = v138;
      }

      if (v24 != 1)
      {
        if (v24 != 2)
        {
          break;
        }

LABEL_26:
        v35 = &byte_286331620;
        goto LABEL_28;
      }

LABEL_27:
      v35 = &byte_2863315F8;
LABEL_28:
      v36 = *v35;
      v37 = v35[1];
      if (v36 != v3 && v37 != v3)
      {
        break;
      }

      swift_beginAccess();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v141 = *(v13 + v2);
      v40 = v141;
      v5 = v2;
      *(v13 + v2) = 0x8000000000000000;
      v2 = sub_25112F9FC();
      v42 = *(v40 + 2);
      v43 = (v41 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_90;
      }

      v45 = v41;
      if (*(v40 + 3) < v44)
      {
        sub_2511276A8(v44, v39);
        v46 = sub_25112F9FC();
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_95;
        }

        v2 = v46;
        goto LABEL_37;
      }

      v21 = v138;
      if ((v39 & 1) == 0)
      {
        sub_251128424();
LABEL_37:
        v21 = v138;
      }

      v61 = v141;
      if (v45)
      {
        *(*(v141 + 7) + 8 * v2) = v12;
      }

      else
      {
        *(v141 + (v2 >> 6) + 8) |= 1 << v2;
        *(*(v61 + 6) + v2) = v140;
        *(*(v61 + 7) + 8 * v2) = v12;
        v62 = *(v61 + 2);
        v54 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v54)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          result = sub_251131538();
          __break(1u);
          return result;
        }

        *(v61 + 2) = v63;
      }

      v2 = v5;
      *(v13 + v5) = v61;
      swift_endAccess();
      v5 = v128;
    }

LABEL_38:
    swift_beginAccess();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v141 = *(v13 + v2);
    v49 = v141;
    *(v13 + v2) = 0x8000000000000000;
    v50 = sub_25112F9FC();
    v52 = *(v49 + 2);
    v53 = (v51 & 1) == 0;
    v54 = __OFADD__(v52, v53);
    v55 = v52 + v53;
    if (v54)
    {
      break;
    }

    v56 = v51;
    if (*(v49 + 3) >= v55)
    {
      v21 = v138;
      if (v48)
      {
        v58 = v141;
        if (v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v70 = v50;
        sub_251128424();
        v21 = v138;
        v50 = v70;
        v58 = v141;
        if (v56)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_2511276A8(v55, v48);
      v50 = sub_25112F9FC();
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_95;
      }

      v21 = v138;
      v58 = v141;
      if (v56)
      {
LABEL_4:
        *(*(v58 + 7) + 8 * v50) = 0;
        goto LABEL_5;
      }
    }

    *(v58 + (v50 >> 6) + 8) |= 1 << v50;
    *(*(v58 + 6) + v50) = v140;
    *(*(v58 + 7) + 8 * v50) = 0;
    v59 = *(v58 + 2);
    v54 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v54)
    {
      goto LABEL_89;
    }

    *(v58 + 2) = v60;
LABEL_5:
    *(v13 + v2) = v58;
    swift_endAccess();
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_63:
  v71 = sub_251130BE8();
  v72 = __swift_project_value_buffer(v71, qword_27F421A38);

  v73 = sub_251130BC8();
  v74 = sub_251131178();

  v75 = os_log_type_enabled(v73, v74);
  v76 = v136;
  if (v75)
  {
    v77 = swift_slowAlloc();
    v140 = v72;
    v78 = v77;
    v79 = swift_slowAlloc();
    v142[0] = v79;
    *v78 = 136315138;
    sub_251110FF8();
    v80 = v2;

    v81 = sub_251130E98();
    v82 = v3;
    v84 = v83;

    v85 = v81;
    v2 = v80;
    v86 = sub_2510FAC50(v85, v84, v142);
    v3 = v82;
    v13 = v133;

    *(v78 + 4) = v86;
    _os_log_impl(&dword_2510F2000, v73, v74, "[HE] updated progress: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v87 = v79;
    v76 = v136;
    MEMORY[0x25306CC10](v87, -1, -1);
    MEMORY[0x25306CC10](v78, -1, -1);
  }

  *(v2 + 16) = v3;
  v88 = v134;
  swift_beginAccess();
  (*(v127 + 24))(v2 + v88, v137, v5);
  swift_endAccess();
  v89 = 0;
  v90 = *(v13 + v2);
  v91 = 1 << *(v90 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v90 + 64);
  v94 = (v91 + 63) >> 6;
  do
  {
    if (!v93)
    {
      while (1)
      {
        v95 = v89 + 1;
        if (__OFADD__(v89, 1))
        {
          break;
        }

        if (v95 >= v94)
        {
          v108 = *v76;

          v108(v137, v5);

          return 0;
        }

        v93 = *(v90 + 64 + 8 * v95);
        ++v89;
        if (v93)
        {
          v89 = v95;
          goto LABEL_74;
        }
      }

      __break(1u);
      goto LABEL_88;
    }

    v95 = v89;
LABEL_74:
    v96 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v97 = v96 | (v95 << 6);
  }

  while (*(*(v90 + 56) + 8 * v97) <= 0.99);
  v98 = *(*(v90 + 48) + v97);
  v99 = objc_allocWithZone(HGHeadGestureResult);

  v100 = [v99 init];
  [v100 setHeadGesture_];
  [v100 setHeadGesturePart_];
  v101 = sub_251130AA8();
  [v100 setTimestamp_];

  v102 = v100;
  v14 = sub_251130BC8();
  v103 = sub_251131178();
  v140 = v102;

  if (os_log_type_enabled(v14, v103))
  {
    v3 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v142[0] = v104;
    *v3 = 136315650;
    v105 = [v140 headGesture];
    LODWORD(v139) = v103;
    v138 = v104;
    v13 = v76;
    if (v105)
    {
      if (v105 == 2)
      {
LABEL_82:
        v106 = 0xE500000000000000;
        v107 = 0x656B616853;
      }

      else if (v105 == 1)
      {
        v106 = 0xE300000000000000;
        v107 = 6582094;
      }

      else
      {
        v106 = 0xE700000000000000;
        v107 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v106 = 0xEA0000000000646ELL;
      v107 = 0x756F72476B636142;
    }

    v110 = sub_2510FAC50(v107, v106, v142);

    *(v3 + 4) = v110;
    *(v3 + 12) = 2080;
    v111 = v140;
    v112 = [v140 uuid];
    v113 = v124;
    sub_251130B68();

    sub_251110FA0();
    v114 = v126;
    v115 = sub_251131508();
    v117 = v116;
    (*(v125 + 8))(v113, v114);
    v118 = sub_2510FAC50(v115, v117, v142);

    *(v3 + 14) = v118;
    *(v3 + 22) = 2048;
    v119 = [v111 timestamp];
    v120 = v132;
    sub_251130AF8();

    sub_251130AE8();
    v122 = v121;
    v76 = v13;
    v5 = v128;
    (*v13)(v120, v128);
    *(v3 + 24) = v122;
    _os_log_impl(&dword_2510F2000, v14, v139, "[HE] Heuristic final prediction: %s %s at: %f", v3, 0x20u);
    v123 = v138;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v123, -1, -1);
    MEMORY[0x25306CC10](v3, -1, -1);
  }

  sub_251110AD4();

  (*v76)(v137, v5);
  return v140;
}

uint64_t sub_251110AD4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v0 + v2) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v29 = *(v0 + v2);

  v11 = 0;
  while (v9)
  {
LABEL_11:
    v13 = *(*(v29 + 48) + (__clz(__rbit64(v9)) | (v11 << 6)));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + v2);
    *(v1 + v2) = 0x8000000000000000;
    v16 = sub_25112F9FC();
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_2511276A8(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_25112F9FC();
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v24 = v15;
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v27 = v16;
    sub_251128424();
    v16 = v27;
    v24 = v15;
    if (v22)
    {
LABEL_4:
      *(v24[7] + 8 * v16) = 0;
      goto LABEL_5;
    }

LABEL_17:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    *(v24[6] + v16) = v13;
    *(v24[7] + 8 * v16) = 0;
    v25 = v24[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v24[2] = v26;
LABEL_5:
    v9 &= v9 - 1;
    *(v1 + v2) = v24;
    swift_endAccess();
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v5 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_251131538();
  __break(1u);
  return result;
}

uint64_t sub_251110CEC()
{
  v1 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_lastGesturePartRecognizedAt;
  v2 = sub_251130B38();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGHeuristicHeadGestureRecognizer(uint64_t a1)
{
  result = qword_27F41E730;
  if (!qword_27F41E730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251110DEC(uint64_t a1)
{
  result = sub_251130B38();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_251110EA4()
{
  *(v0 + 16) = 5;
  sub_251130A88();
  *(v0 + OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_gestureContinuationTimeout) = 0x3FE999999999999ALL;
  v1 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_partialGestureCountTarget;
  if (qword_27F41DFA8 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27F421A30 + 16);
  v3 = sub_251130EE8();
  [v2 doubleForKey_];
  v5 = v4;

  *(v0 + v1) = v5;
  v6 = OBJC_IVAR____TtC12HeadGestures32HGHeuristicHeadGestureRecognizer_progress;
  *(v0 + v6) = sub_251120B48(&unk_286331230);
  return v0;
}

unint64_t sub_251110FA0()
{
  result = qword_27F41E360;
  if (!qword_27F41E360)
  {
    sub_251130B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E360);
  }

  return result;
}

unint64_t sub_251110FF8()
{
  result = qword_27F41E740;
  if (!qword_27F41E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E740);
  }

  return result;
}

id sub_25111104C@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  result = sub_25110FDFC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_251111078()
{
  result = qword_27F41E348;
  if (!qword_27F41E348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E348);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2511110F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_251111144(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2511111B8(double *a1, double a2)
{
  v4 = *(v3 + 104);
  v5 = a1[13] - v4;
  v6 = v5 - a2;
  if (v5 - a2 >= 1.0)
  {
    if (qword_27F41DFB0 != -1)
    {
LABEL_36:
      swift_once();
    }

    v25 = sub_251130BE8();
    __swift_project_value_buffer(v25, qword_27F421A38);
    v26 = sub_251130BC8();
    v3 = sub_251131188();
    if (os_log_type_enabled(v26, v3))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v6;
      _os_log_impl(&dword_2510F2000, v26, v3, "Timestamp gap too large: %f, going to reset the pipeline", v27, 0xCu);
      MEMORY[0x25306CC10](v27, -1, -1);
    }

    sub_2510F72AC();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    return v3;
  }

  if (v6 <= -0.01)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = round(v6 / a2);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v2 = a1;
  v8 = v7;
  if (v7 < 1)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v9 = v3;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v10 = sub_251130BE8();
  __swift_project_value_buffer(v10, qword_27F421A38);
  v11 = sub_251130BC8();
  v12 = sub_251131168();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_2510F2000, v11, v12, "Intepolation required, adding %ld data points in between", v13, 0xCu);
    MEMORY[0x25306CC10](v13, -1, -1);
  }

  if (qword_27F41DFA0 != -1)
  {
    swift_once();
  }

  v14 = qword_27F421A00;
  type metadata accessor for HGCoreAnalyticsManager.HGCAInterpolatedDataEvent(0);
  *(swift_allocObject() + OBJC_IVAR____TtCC12HeadGestures22HGCoreAnalyticsManager25HGCAInterpolatedDataEvent_intepolationAmount) = v8;
  sub_251130B08();
  swift_beginAccess();

  MEMORY[0x25306BE60](v15);
  if (*((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_251131078();
  }

  sub_251131098();
  swift_endAccess();

  v17 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    v6 = *v9;
    v18 = *v2 - *v9;
    v51 = *(v9 + 8);
    v47 = vsubq_f64(*(v2 + 1), v51);
    v50 = *(v9 + 24);
    v49 = *(v9 + 40);
    v45 = vsubq_f64(v49, v49);
    v46 = vsubq_f64(v50, v50);
    v43 = vsubq_f64(*(v2 + 7), *(v9 + 56));
    v44 = *(v9 + 56);
    v41 = *(v9 + 88);
    v42 = *(v9 + 72);
    v39 = vsubq_f64(*(v2 + 11), v41);
    v40 = vsubq_f64(*(v2 + 9), v42);
    v19 = *(v9 + 112);
    v20 = v2[14] - v19;
    v48 = v17;
    v38 = vdupq_lane_s64(COERCE__INT64(v17), 0);
    v3 = MEMORY[0x277D84F90];
    for (i = 1; ; ++i)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_251109414(0, *(v3 + 16) + 1, 1, v3);
      }

      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        v3 = sub_251109414((v22 > 1), v23 + 1, 1, v3);
      }

      *(v3 + 16) = v23 + 1;
      v24 = v3 + (v23 << 7);
      *(v24 + 32) = v6 + v18 * i / v48;
      *(v24 + 40) = vaddq_f64(v51, vdivq_f64(vmulq_n_f64(v47, i), v38));
      *(v24 + 56) = vaddq_f64(v50, vdivq_f64(vmulq_n_f64(v46, i), v38));
      *(v24 + 72) = vaddq_f64(v49, vdivq_f64(vmulq_n_f64(v45, i), v38));
      *(v24 + 88) = vaddq_f64(v44, vdivq_f64(vmulq_n_f64(v43, i), v38));
      *(v24 + 104) = vaddq_f64(v42, vdivq_f64(vmulq_n_f64(v40, i), v38));
      *(v24 + 120) = vaddq_f64(v41, vdivq_f64(vmulq_n_f64(v39, i), v38));
      *(v24 + 136) = v4 + v5 * i / v48;
      *(v24 + 144) = v19 + v20 * i / v48;
      *(v24 + 152) = 0;
      if (v8 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_30:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_31:
      v30 = *(v3 + 16);
      v29 = *(v3 + 24);
      if (v30 >= v29 >> 1)
      {
        v3 = sub_251109414((v29 > 1), v30 + 1, 1, v3);
      }

      *(v3 + 16) = v30 + 1;
      v31 = (v3 + (v30 << 7));
      v32 = *v2;
      v33 = *(v2 + 1);
      v34 = *(v2 + 3);
      v31[4] = *(v2 + 2);
      v31[5] = v34;
      v31[2] = v32;
      v31[3] = v33;
      v35 = *(v2 + 4);
      v36 = *(v2 + 5);
      v37 = *(v2 + 6);
      *(v31 + 137) = *(v2 + 105);
      v31[7] = v36;
      v31[8] = v37;
      v31[6] = v35;
      return v3;
    }

LABEL_40:
    v3 = sub_251109414(0, *(v3 + 16) + 1, 1, v3);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

BOOL sub_251111808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_2511125E8(v5, v7);
}

uint64_t sub_251111898()
{
  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  v15 = MEMORY[0x277D84F90];
  sub_25111B8E4(0, 16, 0);
  v0 = 0;
  v1 = v15;
  v2 = 0x8000000251135580;
  v3 = 0x586F727947;
  do
  {
    v4 = 0xEF706D617473656DLL;
    v5 = 0x6954726F736E6553;
    switch(byte_2863313B8[v0 + 32])
    {
      case 1:
        v5 = 0xD000000000000011;
        v4 = v2;
        break;
      case 2:
        v4 = 0xE400000000000000;
        v5 = 1482908481;
        break;
      case 3:
        v4 = 0xE400000000000000;
        v5 = 1499685697;
        break;
      case 4:
        v4 = 0xE400000000000000;
        v5 = 1516462913;
        break;
      case 5:
        v4 = 0xE500000000000000;
        v5 = v3;
        break;
      case 6:
        v4 = 0xE500000000000000;
        v5 = 0x596F727947;
        break;
      case 7:
        v4 = 0xE500000000000000;
        v5 = 0x5A6F727947;
        break;
      case 8:
        v4 = 0xE400000000000000;
        v5 = 1819045714;
        break;
      case 9:
        v4 = 0xE500000000000000;
        v5 = 0x6863746950;
        break;
      case 0xA:
        v4 = 0xE300000000000000;
        v5 = 7823705;
        break;
      case 0xB:
        v4 = 0xE200000000000000;
        v5 = 30801;
        break;
      case 0xC:
        v4 = 0xE200000000000000;
        v5 = 31057;
        break;
      case 0xD:
        v4 = 0xE200000000000000;
        v5 = 31313;
        break;
      case 0xE:
        v4 = 0xE200000000000000;
        v5 = 30545;
        break;
      case 0xF:
        v4 = 0xEA00000000006C61;
        v5 = 0x6E696769724F7369;
        break;
      default:
        break;
    }

    v16 = v1;
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v7 >= v6 >> 1)
    {
      v14 = v2;
      v9 = v3;
      sub_25111B8E4((v6 > 1), v7 + 1, 1);
      v3 = v9;
      v2 = v14;
      v1 = v16;
    }

    ++v0;
    *(v1 + 16) = v7 + 1;
    v8 = v1 + 16 * v7;
    *(v8 + 32) = v5;
    *(v8 + 40) = v4;
  }

  while (v0 != 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E780, &qword_251133990);
  sub_2510F6658(&qword_27F41E788, &qword_27F41E780, &qword_251133990, MEMORY[0x277D83958]);
  v10 = sub_251130EC8();
  v12 = v11;

  MEMORY[0x25306BDC0](v10, v12);

  result = MEMORY[0x25306BDC0](10, 0xE100000000000000);
  xmmword_27F4219A0 = v17;
  return result;
}

unint64_t sub_251111BFC(char a1)
{
  result = 0x6954726F736E6553;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 1482908481;
      break;
    case 3:
      result = 1499685697;
      break;
    case 4:
      result = 1516462913;
      break;
    case 5:
      result = 0x586F727947;
      break;
    case 6:
      result = 0x596F727947;
      break;
    case 7:
      result = 0x5A6F727947;
      break;
    case 8:
      result = 1819045714;
      break;
    case 9:
      result = 0x6863746950;
      break;
    case 10:
      result = 7823705;
      break;
    case 11:
      result = 30801;
      break;
    case 12:
      result = 31057;
      break;
    case 13:
      result = 31313;
      break;
    case 14:
      result = 30545;
      break;
    case 15:
      result = 0x6E696769724F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_251111D8C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_251111BFC(*a1);
  v5 = v4;
  if (v3 == sub_251111BFC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_251131518();
  }

  return v8 & 1;
}

uint64_t sub_251111E14()
{
  v1 = *v0;
  sub_251131598();
  sub_251111BFC(v1);
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_251111E78(uint64_t a1)
{
  sub_251111BFC(*v1);
  sub_251130F88();
}

uint64_t sub_251111ECC(uint64_t a1)
{
  v2 = *v1;
  sub_251131598();
  sub_251111BFC(v2);
  sub_251130F88();

  return sub_2511315B8();
}

unint64_t sub_251111F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251112978(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_251111F5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_251111BFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_251111F98()
{
  sub_251131358();
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](8236, 0xE200000000000000);
  if (*(v0 + 120))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 120))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x25306BDC0](v1, v2);

  MEMORY[0x25306BDC0](10, 0xE100000000000000);
  return 0;
}

uint64_t sub_251112290()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0x6D617473656D6954, 0xEB00000000203A70);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A58636341202CLL, 0xE800000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A59636341202CLL, 0xE900000000000020);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x203A5A636341202CLL, 0xE800000000000000);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A586F727947202CLL, 0xEA00000000002020);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A596F727947202CLL, 0xE900000000000020);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0x3A5A6F727947202CLL, 0xEA00000000002020);
  sub_2511310D8();
  return 0;
}

BOOL sub_251112468(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v13[0] = a1[6];
  *(v13 + 9) = *(a1 + 105);
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v4 = a1[3];
  v12[2] = a1[2];
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[9] = *(a2 + 105);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return sub_251112658(v12, v14);
}

BOOL sub_2511124F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_251131348();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

BOOL sub_2511125E8(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3])
  {
    v2 = a1[4] == a2[4] && a1[5] == a2[5];
    if (v2 && a1[6] == a2[6])
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_251112658(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    v2 = 0;
    if (*a1 != *a2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) == 0)
    {
      return v2;
    }

    if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
    {
      return v2;
    }

    v2 = 0;
    if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72))
    {
      return v2;
    }

    if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
    {
      return *(a1 + 96) == *(a2 + 96);
    }
  }

  return 0;
}

double sub_251112740@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = [a1 attitude];
  [v5 roll];
  v39 = v6;

  v7 = [a1 attitude];
  [v7 pitch];
  v38 = v8;

  v9 = [a1 attitude];
  [v9 yaw];
  v37 = v10;

  v11 = [a1 attitude];
  [v11 quaternion];
  v36 = v12;

  v13 = [a1 attitude];
  [v13 quaternion];
  v35 = v14;

  v15 = [a1 attitude];
  [v15 quaternion];
  v17 = v16;

  v18 = [a1 attitude];
  [v18 quaternion];
  v20 = v19;

  [a1 rotationRate];
  v22 = v21;
  [a1 rotationRate];
  v24 = v23;
  [a1 rotationRate];
  v26 = v25;
  [a1 userAcceleration];
  v28 = v27;
  [a1 userAcceleration];
  v30 = v29;
  [a1 userAcceleration];
  v32 = v31;
  [a1 timestamp];
  *a2 = v39;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
  *(a2 + 32) = v35;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20;
  *(a2 + 56) = v22;
  *(a2 + 64) = v24;
  *(a2 + 72) = v26;
  *(a2 + 80) = v28;
  *(a2 + 88) = v30;
  *(a2 + 96) = v32;
  *(a2 + 104) = v33;
  result = a3;
  *(a2 + 112) = a3;
  *(a2 + 120) = 1;
  return result;
}

unint64_t sub_251112978(uint64_t a1, uint64_t a2)
{
  v2 = sub_251131428();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

double sub_2511129C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v92 = a3;
  v5 = sub_2511308E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v104 = a1;
  *(&v104 + 1) = a2;
  v93 = a2;
  *&v97 = 8236;
  *(&v97 + 1) = 0xE200000000000000;
  sub_251105D08();
  v9 = sub_251131288();
  if (qword_27F41DF98 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v104 = xmmword_27F4219A0;
    v10 = objc_opt_self();

    v11 = [v10 whitespaceAndNewlineCharacterSet];
    sub_2511308D8();

    v12 = sub_251131298();
    v14 = v13;
    (*(v6 + 8))(v8, v5);

    *&v104 = v12;
    *(&v104 + 1) = v14;
    *&v97 = 8236;
    *(&v97 + 1) = 0xE200000000000000;
    v15 = sub_251131288();

    v16 = *(v15 + 16);
    if (*(v9 + 16) < v16)
    {
      break;
    }

    if (!v16)
    {
      LOBYTE(v8) = 0;
      v19 = MEMORY[0x277D84F98];
      goto LABEL_40;
    }

    v18 = 0;
    v8 = 0;
    v5 = 0;
    v91 = 0x8000000251135580;
    v19 = MEMORY[0x277D84F98];
    v95 = v16;
    v96 = v15;
    while (1)
    {
      v20 = 16 * v18;
      v6 = v18;
LABEL_10:
      if (v6 >= v16)
      {
        break;
      }

      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_75;
      }

      if (v6 >= *(v15 + 16))
      {
        goto LABEL_76;
      }

      LODWORD(v94) = v8;
      v8 = v9;
      v21 = *(v15 + v20 + 32);
      v22 = *(v15 + v20 + 40);

      v9 = sub_251112978(v21, v22);
      switch(v9)
      {
        case 15:

          goto LABEL_16;
        case 16:
          goto LABEL_72;
        default:
          v23 = sub_251131518();

          if (v23)
          {
LABEL_16:
            if (v6 >= *(v8 + 16))
            {
              goto LABEL_77;
            }

            v9 = v8;
            v24 = *(v8 + v20 + 32);
            v25 = *(v8 + v20 + 40);
            if (v24 == 1702195828 && v25 == 0xE400000000000000)
            {
              v8 = 1;
              v16 = v95;
              v15 = v96;
            }

            else
            {
              v26 = sub_251131518();
              v16 = v95;
              if (v26)
              {
                v8 = 1;
                v15 = v96;
              }

              else
              {
                if ((v24 != 0x65736C6166 || v25 != 0xE500000000000000) && (sub_251131518() & 1) == 0)
                {
                  goto LABEL_72;
                }

                v8 = 0;
                v15 = v96;
              }
            }

            ++v6;
            v20 += 16;
            if (v18 == v16)
            {
              goto LABEL_40;
            }

            goto LABEL_10;
          }

          if (v6 >= *(v8 + 16))
          {
            goto LABEL_109;
          }

          v27 = *(v8 + v20 + 32);
          v28 = *(v8 + v20 + 40);
          *&v104 = 0;

          LOBYTE(v27) = sub_2511124F0(v27, v28, &v104);

          if ((v27 & 1) == 0)
          {
LABEL_72:

            goto LABEL_4;
          }

          v29 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v104 = v19;
          v32 = sub_25112EC5C(v9);
          v33 = v19[2];
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_110;
          }

          v36 = v31;
          if (v19[3] < v35)
          {
            sub_25112728C(v35, isUniquelyReferenced_nonNull_native);
            v37 = sub_25112EC5C(v9);
            if ((v36 & 1) == (v38 & 1))
            {
              v32 = v37;
              goto LABEL_33;
            }

LABEL_112:
            sub_251131538();
            __break(1u);
            JUMPOUT(0x251113380);
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_251128410();
          }

LABEL_33:
          v16 = v95;
          v19 = v104;
          if (v36)
          {
            *(*(v104 + 56) + 8 * v32) = v29;
            goto LABEL_37;
          }

          *(v104 + 8 * (v32 >> 6) + 64) |= 1 << v32;
          *(v19[6] + v32) = v9;
          *(v19[7] + 8 * v32) = v29;
          v39 = v19[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v19[2] = v41;
LABEL_37:
          v9 = v8;
          v15 = v96;
          v8 = v94;
          if (v18 == v16)
          {
LABEL_40:
            if (v19[2])
            {
              v42 = sub_25112EC5C(0);
              if (v43)
              {
                if (v19[2])
                {
                  v44 = *(v19[7] + 8 * v42);
                  v45 = sub_25112EC5C(1);
                  if (v46)
                  {
                    if (v19[2])
                    {
                      v47 = *(v19[7] + 8 * v45);
                      v48 = sub_25112EC5C(2);
                      if (v49)
                      {
                        if (v19[2])
                        {
                          v50 = *(v19[7] + 8 * v48);
                          v51 = sub_25112EC5C(3);
                          if (v52)
                          {
                            if (v19[2])
                            {
                              v53 = *(v19[7] + 8 * v51);
                              v54 = sub_25112EC5C(4);
                              if (v55)
                              {
                                if (v19[2])
                                {
                                  v56 = *(v19[7] + 8 * v54);
                                  v57 = sub_25112EC5C(5);
                                  if (v58)
                                  {
                                    if (v19[2])
                                    {
                                      v59 = *(v19[7] + 8 * v57);
                                      v60 = sub_25112EC5C(6);
                                      if (v61)
                                      {
                                        if (v19[2])
                                        {
                                          v62 = *(v19[7] + 8 * v60);
                                          v63 = sub_25112EC5C(7);
                                          if (v64)
                                          {
                                            if (v19[2])
                                            {
                                              v65 = *(v19[7] + 8 * v63);
                                              v66 = sub_25112EC5C(8);
                                              if (v67)
                                              {
                                                if (v19[2])
                                                {
                                                  v95 = *(v19[7] + 8 * v66);
                                                  v68 = sub_25112EC5C(9);
                                                  if (v69)
                                                  {
                                                    if (v19[2])
                                                    {
                                                      v94 = *(v19[7] + 8 * v68);
                                                      v70 = sub_25112EC5C(10);
                                                      if (v71)
                                                      {
                                                        if (v19[2])
                                                        {
                                                          v91 = *(v19[7] + 8 * v70);
                                                          v72 = sub_25112EC5C(11);
                                                          if (v73)
                                                          {
                                                            if (v19[2])
                                                            {
                                                              v90 = *(v19[7] + 8 * v72);
                                                              v74 = sub_25112EC5C(12);
                                                              if (v75)
                                                              {
                                                                if (v19[2])
                                                                {
                                                                  v89 = *(v19[7] + 8 * v74);
                                                                  v76 = sub_25112EC5C(13);
                                                                  if (v77)
                                                                  {
                                                                    if (v19[2])
                                                                    {
                                                                      v88 = *(v19[7] + 8 * v76);
                                                                      v78 = sub_25112EC5C(14);
                                                                      v80 = v79;

                                                                      if (v80)
                                                                      {
                                                                        v81 = v19[7];
                                                                        v96 = v47;
                                                                        v82 = v44;
                                                                        v83 = *(v81 + 8 * v78);

                                                                        *&v97 = v95;
                                                                        *(&v97 + 1) = v94;
                                                                        *&v98 = v91;
                                                                        *(&v98 + 1) = v90;
                                                                        *&v99 = v89;
                                                                        *(&v99 + 1) = v88;
                                                                        *&v100 = v83;
                                                                        *(&v100 + 1) = v59;
                                                                        *&v101 = v62;
                                                                        *(&v101 + 1) = v65;
                                                                        *&v102 = v50;
                                                                        *(&v102 + 1) = v53;
                                                                        *&v103[0] = v56;
                                                                        *(&v103[0] + 1) = v82;
                                                                        *&v103[1] = v96;
                                                                        BYTE8(v103[1]) = v8 & 1;
                                                                        nullsub_1();
                                                                        v108 = v101;
                                                                        v109 = v102;
                                                                        v110[0] = v103[0];
                                                                        *(v110 + 9) = *(v103 + 9);
                                                                        v104 = v97;
                                                                        v105 = v98;
                                                                        v106 = v99;
                                                                        v107 = v100;
                                                                        v17 = v92;
                                                                        goto LABEL_71;
                                                                      }

LABEL_108:
                                                                      __break(1u);
LABEL_109:
                                                                      __break(1u);
LABEL_110:
                                                                      __break(1u);
                                                                      goto LABEL_111;
                                                                    }

LABEL_107:
                                                                    __break(1u);
                                                                    goto LABEL_108;
                                                                  }

LABEL_106:
                                                                  __break(1u);
                                                                  goto LABEL_107;
                                                                }

LABEL_105:
                                                                __break(1u);
                                                                goto LABEL_106;
                                                              }

LABEL_104:
                                                              __break(1u);
                                                              goto LABEL_105;
                                                            }

LABEL_103:
                                                            __break(1u);
                                                            goto LABEL_104;
                                                          }

LABEL_102:
                                                          __break(1u);
                                                          goto LABEL_103;
                                                        }

LABEL_101:
                                                        __break(1u);
                                                        goto LABEL_102;
                                                      }

LABEL_100:
                                                      __break(1u);
                                                      goto LABEL_101;
                                                    }

LABEL_99:
                                                    __break(1u);
                                                    goto LABEL_100;
                                                  }

LABEL_98:
                                                  __break(1u);
                                                  goto LABEL_99;
                                                }

LABEL_97:
                                                __break(1u);
                                                goto LABEL_98;
                                              }

LABEL_96:
                                              __break(1u);
                                              goto LABEL_97;
                                            }

LABEL_95:
                                            __break(1u);
                                            goto LABEL_96;
                                          }

LABEL_94:
                                          __break(1u);
                                          goto LABEL_95;
                                        }

LABEL_93:
                                        __break(1u);
                                        goto LABEL_94;
                                      }

LABEL_92:
                                      __break(1u);
                                      goto LABEL_93;
                                    }

LABEL_91:
                                    __break(1u);
                                    goto LABEL_92;
                                  }

LABEL_90:
                                  __break(1u);
                                  goto LABEL_91;
                                }

LABEL_89:
                                __break(1u);
                                goto LABEL_90;
                              }

LABEL_88:
                              __break(1u);
                              goto LABEL_89;
                            }

LABEL_87:
                            __break(1u);
                            goto LABEL_88;
                          }

LABEL_86:
                          __break(1u);
                          goto LABEL_87;
                        }

LABEL_85:
                        __break(1u);
                        goto LABEL_86;
                      }

LABEL_84:
                      __break(1u);
                      goto LABEL_85;
                    }

LABEL_83:
                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_82:
                  __break(1u);
                  goto LABEL_83;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_81;
          }

          break;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_4:

  v17 = v92;
  sub_2510F731C(&v104);
LABEL_71:
  v84 = v109;
  v17[4] = v108;
  v17[5] = v84;
  v17[6] = v110[0];
  *(v17 + 105) = *(v110 + 9);
  v85 = v105;
  *v17 = v104;
  v17[1] = v85;
  result = *&v106;
  v87 = v107;
  v17[2] = v106;
  v17[3] = v87;
  return result;
}

_BYTE *sub_2511133C4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HGMotionData.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HGMotionData.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Orientation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Orientation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_251113630(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251113650(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

unint64_t sub_2511136E0()
{
  result = qword_27F41E7A0;
  if (!qword_27F41E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7A0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_251113740(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251113760(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2511137C4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25111380C(uint64_t a1)
{
  v2 = sub_2511142EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113848(uint64_t a1)
{
  v2 = sub_2511142EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113884(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7E8, &qword_251133CF0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7F0, &qword_251133CF8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7F8, &qword_251133D00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251114298();
  sub_251131608();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_2511142EC();
    sub_2511314A8();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_251114340();
    sub_2511314A8();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_251113B60()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_251113B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x8000000251137050 == a2;
  if (v6 || (sub_251131518() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000251137070 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_251131518();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_251113C84(uint64_t a1)
{
  v2 = sub_251114298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113CC0(uint64_t a1)
{
  v2 = sub_251114298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113CFC(uint64_t a1)
{
  v2 = sub_251114340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251113D38(uint64_t a1)
{
  v2 = sub_251114340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251113D74@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_251113E18(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_251113DC4()
{
  result = qword_27F41E7A8;
  if (!qword_27F41E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7A8);
  }

  return result;
}

uint64_t sub_251113E18(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7B0, &qword_251133CD0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7B8, &qword_251133CD8);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7C0, &qword_251133CE0);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251114298();
  v10 = v26;
  sub_2511315F8();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_251131488();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_251131388();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E7D0, &qword_251133CE8);
    *v18 = &type metadata for CInteropUtils.DomainError;
    sub_251131448();
    sub_251131378();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_2511142EC();
    sub_251131438();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_251114340();
    sub_251131438();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_251114298()
{
  result = qword_27F41E7C8;
  if (!qword_27F41E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7C8);
  }

  return result;
}

unint64_t sub_2511142EC()
{
  result = qword_27F41E7D8;
  if (!qword_27F41E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7D8);
  }

  return result;
}

unint64_t sub_251114340()
{
  result = qword_27F41E7E0;
  if (!qword_27F41E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E7E0);
  }

  return result;
}

uint64_t sub_251114398(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25111442C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25111452C()
{
  result = qword_27F41E800;
  if (!qword_27F41E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E800);
  }

  return result;
}

unint64_t sub_251114584()
{
  result = qword_27F41E808;
  if (!qword_27F41E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E808);
  }

  return result;
}

unint64_t sub_2511145DC()
{
  result = qword_27F41E810;
  if (!qword_27F41E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E810);
  }

  return result;
}

unint64_t sub_251114634()
{
  result = qword_27F41E818;
  if (!qword_27F41E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E818);
  }

  return result;
}

unint64_t sub_25111468C()
{
  result = qword_27F41E820;
  if (!qword_27F41E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E820);
  }

  return result;
}

unint64_t sub_2511146E4()
{
  result = qword_27F41E828;
  if (!qword_27F41E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E828);
  }

  return result;
}

unint64_t sub_25111473C()
{
  result = qword_27F41E830;
  if (!qword_27F41E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E830);
  }

  return result;
}

uint64_t sub_2511147B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2511147FC(void *a1)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_enableAudioFeedback;
  swift_beginAccess();
  if (*(v7 + v8) == 1)
  {
    v78 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E848, &qword_251133FF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2511332B0;
    v10 = *MEMORY[0x277CBA648];
    *(inited + 32) = *MEMORY[0x277CBA648];
    v11 = v10;
    v12 = sub_2511310A8();
    type metadata accessor for CFBoolean(0);
    *(inited + 64) = v13;
    *(inited + 40) = v12;
    v14 = sub_251120908(inited);
    swift_setDeallocating();
    sub_251103084(inited + 32, &qword_27F41E850, &qword_251134000);
    v15 = [a1 headGesture];
    v16 = *(v1 + 16);
    v17 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
    swift_beginAccess();
    v18 = *(v16 + v17);
    v79 = v14;
    if (v15 == 2)
    {
      if (v18)
      {
        v19 = 1371;
      }

      else
      {
        v19 = 1372;
      }
    }

    else
    {
      if (v15 != 1)
      {
        goto LABEL_26;
      }

      if (v18)
      {
        v19 = 1372;
      }

      else
      {
        v19 = 1371;
      }
    }

    v76[1] = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;

    v77 = v1;
    sub_251130CB8();
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v20 = sub_251130BE8();
    __swift_project_value_buffer(v20, qword_27F421A38);
    v21 = a1;
    v22 = sub_251130BC8();
    v23 = sub_251131178();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&aBlock = v25;
      *v24 = 136315650;
      v26 = [v21 headGesture];
      if (v26)
      {
        v27 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E55;
        if (v26 == 1)
        {
          v28 = 6582094;
          v27 = 0xE300000000000000;
        }

        v29 = v26 == 2;
        if (v26 == 2)
        {
          v30 = 0x656B616853;
        }

        else
        {
          v30 = v28;
        }

        if (v29)
        {
          v31 = 0xE500000000000000;
        }

        else
        {
          v31 = v27;
        }
      }

      else
      {
        v30 = 0x756F72476B636142;
        v31 = 0xEA0000000000646ELL;
      }

      v32 = sub_2510FAC50(v30, v31, &aBlock);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2080;
      v33 = [v21 uuid];
      sub_251130B68();

      sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_251131508();
      v36 = v35;
      (*(v78 + 8))(v6, v3);
      v37 = sub_2510FAC50(v34, v36, &aBlock);

      *(v24 + 14) = v37;
      *(v24 + 22) = 2080;
      *(v24 + 24) = sub_2510FAC50(49, 0xE100000000000000, &aBlock);
      _os_log_impl(&dword_2510F2000, v22, v23, "[Audio] Playing Audio feedback %s UUID: %s at volume %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25306CC10](v25, -1, -1);
      MEMORY[0x25306CC10](v24, -1, -1);
    }

    else
    {
    }

    type metadata accessor for CFString(0);
    sub_2511166DC(&qword_27F41E148, type metadata accessor for CFString, &unk_251132D24);
    v38 = sub_251130E78();
    v39 = swift_allocObject();
    v1 = v77;
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v21;
    v83 = sub_2511167A4;
    v84 = v40;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v81 = sub_2511147B8;
    v82 = &block_descriptor_33_0;
    v41 = _Block_copy(&aBlock);
    v42 = v21;

    AudioServicesPlaySystemSoundWithOptions();
    _Block_release(v41);

LABEL_26:
    v43 = [a1 headGesturePart];
    v44 = *(v1 + 16);
    v45 = OBJC_IVAR___HGAudioFeedbackConfigurationInternal_invertedConfirmationAudioFeedbackMode;
    swift_beginAccess();
    if ((v43 - 3) < 2)
    {
      if (*(v44 + v45))
      {
        v46 = 1373;
      }

      else
      {
        v46 = 1374;
      }
    }

    else
    {
      if ((v43 - 1) > 1)
      {

        return;
      }

      if (*(v44 + v45))
      {
        v46 = 1374;
      }

      else
      {
        v46 = 1373;
      }
    }

    sub_2510F44B4([a1 headGesturePart]);
    if (qword_27F41DFB0 != -1)
    {
      v75 = v47;
      swift_once();
      v47 = v75;
    }

    v48 = v47;
    v49 = sub_251130BE8();
    __swift_project_value_buffer(v49, qword_27F421A38);
    v50 = a1;
    v51 = sub_251130BC8();
    v52 = sub_251131178();

    if (!os_log_type_enabled(v51, v52))
    {

      goto LABEL_50;
    }

    LODWORD(v77) = v46;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&aBlock = v54;
    *v53 = 136315650;
    v55 = [v50 headGesturePart];
    if (v55 > 2)
    {
      if (v55 == 3)
      {
        v56 = 0xE900000000000074;
        v57 = 0x66654C656B616853;
        goto LABEL_49;
      }

      if (v55 == 4)
      {
        v56 = 0xEA00000000007468;
        v57 = 0x676952656B616853;
        goto LABEL_49;
      }
    }

    else
    {
      if (v55 == 1)
      {
        v56 = 0xE500000000000000;
        v57 = 0x7055646F4ELL;
        goto LABEL_49;
      }

      if (v55 == 2)
      {
        v56 = 0xE700000000000000;
        v57 = 0x6E776F44646F4ELL;
LABEL_49:
        v58 = sub_2510FAC50(v57, v56, &aBlock);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2080;
        v59 = [v50 uuid];
        sub_251130B68();

        sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v60 = sub_251131508();
        v62 = v61;
        (*(v78 + 8))(v6, v3);
        v63 = sub_2510FAC50(v60, v62, &aBlock);

        *(v53 + 14) = v63;
        *(v53 + 22) = 2048;
        *(v53 + 24) = v48;
        _os_log_impl(&dword_2510F2000, v51, v52, "[Audio] Playing Audio feedback %s UUID: %s at volume %f", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25306CC10](v54, -1, -1);
        MEMORY[0x25306CC10](v53, -1, -1);

LABEL_50:
        v64 = *MEMORY[0x277CBA660];
        v65 = sub_2511310E8();
        type metadata accessor for CFNumber(0);
        v67 = v66;
        v82 = v66;
        *&aBlock = v65;
        sub_2510FC400(&aBlock, v86);
        v68 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = v68;
        sub_2510FB208(v86, v64, isUniquelyReferenced_nonNull_native);
        v70 = v85;
        if ([v50 headGesturePart] == 3)
        {
          v71 = *MEMORY[0x277CBA650];
        }

        else
        {
          if ([v50 headGesturePart] != 4)
          {
LABEL_55:
            type metadata accessor for CFString(0);
            sub_2511166DC(&qword_27F41E148, type metadata accessor for CFString, &unk_251132D24);
            v74 = sub_251130E78();

            AudioServicesPlaySystemSoundWithOptions();

            return;
          }

          v71 = *MEMORY[0x277CBA650];
        }

        v72 = sub_251131118();
        v82 = v67;
        *&aBlock = v72;
        sub_2510FC400(&aBlock, v86);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v85 = v70;
        sub_2510FB208(v86, v71, v73);
        goto LABEL_55;
      }
    }

    v57 = 0x6E776F6E6B6E75;
    v56 = 0xE700000000000000;
    goto LABEL_49;
  }
}

void sub_251115314(uint64_t a1, void *a2)
{
  v3 = sub_251130B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v25) = 1;
    sub_251130CB8();
  }

  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v7 = sub_251130BE8();
  __swift_project_value_buffer(v7, qword_27F421A38);
  v8 = a2;
  v9 = sub_251130BC8();
  v10 = sub_251131178();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    v13 = [v8 headGesture];
    if (v13)
    {
      v14 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E55;
      if (v13 == 1)
      {
        v15 = 6582094;
        v14 = 0xE300000000000000;
      }

      v16 = v13 == 2;
      if (v13 == 2)
      {
        v17 = 0x656B616853;
      }

      else
      {
        v17 = v15;
      }

      if (v16)
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = v14;
      }
    }

    else
    {
      v18 = 0xEA0000000000646ELL;
      v17 = 0x756F72476B636142;
    }

    v19 = sub_2510FAC50(v17, v18, &v25);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = [v8 uuid];
    sub_251130B68();

    sub_2511166DC(&qword_27F41E360, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v21 = sub_251131508();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    v24 = sub_2510FAC50(v21, v23, &v25);

    *(v11 + 14) = v24;
    _os_log_impl(&dword_2510F2000, v9, v10, "[Audio] Finished playing Audio feedback %s UUID: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v12, -1, -1);
    MEMORY[0x25306CC10](v11, -1, -1);
  }
}

id sub_251115684()
{
  v1 = v0;
  if (*(v0 + 32))
  {

    sub_251130C08();

    *(v0 + 32) = 0;
  }

  v2 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  return [*(v1 + v2) stop];
}

uint64_t sub_251115700()
{
  v1 = sub_251130E18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251130E38();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 24);
  aBlock[4] = sub_251116468;
  v14 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_22;
  v8 = _Block_copy(aBlock);

  sub_251130E28();
  v12 = MEMORY[0x277D84F90];
  sub_2511166DC(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_2511159B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  [*(a1 + v2) play];
  return sub_251115D0C(nullsub_1, 0, 1.0);
}

uint64_t sub_251115A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_251130E18();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251130E38();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 24);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_251116420;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  sub_251130E28();
  v18 = MEMORY[0x277D84F90];
  sub_2511166DC(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  sub_2511312A8();
  MEMORY[0x25306C010](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_251115D0C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v29 = a1;
  v30 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E4B0, &unk_251133520);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6F0, &unk_251134060);
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v27 - v13;
  if (*(v3 + 32))
  {

    sub_251130C08();

    *(v3 + 32) = 0;
  }

  sub_2510FE944(0, &qword_27F41E6A0, 0x277CBEBB8);
  v15 = [objc_opt_self() mainRunLoop];
  v16 = sub_251131248();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = sub_251131228();

  sub_251103084(v11, &qword_27F41E4B0, &unk_251133520);
  v32 = v17;
  sub_251131218();
  sub_2511166DC(&qword_27F41E6A8, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v18 = sub_251130C48();

  v31 = *(v3 + 24);
  v19 = v31;
  v32 = v18;
  v20 = sub_2511311C8();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6B0, &unk_251133640);
  sub_2510FE944(0, &qword_27F41E0F0, 0x277D85C78);
  sub_2510F6658(&qword_27F41E6B8, &qword_27F41E6B0, &unk_251133640, MEMORY[0x277CBCB30]);
  sub_25110D944();
  sub_251130DD8();
  sub_251103084(v8, &qword_27F41E6E8, &unk_251134050);

  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = a3;
  v23 = v30;
  *(v22 + 32) = v29;
  *(v22 + 40) = v23;
  sub_2510F6658(&qword_27F41E700, &qword_27F41E6F0, &unk_251134060, MEMORY[0x277CBCD60]);

  v24 = v28;
  v25 = sub_251130E08();

  (*(v12 + 8))(v14, v24);
  *(v4 + 32) = v25;
}

void sub_25111619C(float a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v7 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
  swift_beginAccess();
  v8 = *(a3 + v7);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 volume];
    if (v11 == a1)
    {
      if (*(a3 + 32))
      {

        sub_251130C08();

        *(a3 + 32) = 0;
      }

      a4(v10);
    }

    [v9 volume];
    v13 = v12;
    [v9 volume];
    v15 = *&v14 + -0.05;
    if ((*&v14 + -0.05) <= a1)
    {
      v15 = a1;
    }

    *&v14 = *&v14 + 0.05;
    if (*&v14 > a1)
    {
      *&v14 = a1;
    }

    if (v13 >= a1)
    {
      *&v14 = v15;
    }

    [v9 setVolume_];
  }
}

uint64_t sub_2511162D4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGSystemAudioPlayer(uint64_t a1)
{
  result = qword_27F41E838;
  if (!qword_27F41E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2511163E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251116470@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_251130CA8();

  *a2 = v4;
  return result;
}

uint64_t sub_2511164F0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_251130CB8();
}

id sub_251116564(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2511309A8();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_2511309E8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_251130978();

    swift_willThrow();
    v11 = sub_2511309E8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_2511166DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25111672C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251116764()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2511167AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2511167FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E328, qword_251134070);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-v4];
  v6 = sub_2511309E8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-v11];
  *(v1 + OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer) = 0;
  v13 = sub_2510F5F58(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_251130CA8();

  if (v20[32] == 1)
  {
    sub_25112C900(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_251103084(v5, &qword_27F41E328, qword_251134070);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      (*(v7 + 16))(v10, v12, v6);
      v14 = objc_allocWithZone(MEMORY[0x277CB83D0]);
      v15 = sub_251116564(v10);
      v16 = OBJC_IVAR____TtC12HeadGestures19HGSystemAudioPlayer_waitingTonePlayer;
      swift_beginAccess();
      v17 = *(v13 + v16);
      *(v13 + v16) = v15;

      swift_beginAccess();
      v18 = *(v13 + v16);
      if (v18)
      {
        swift_endAccess();
        [v18 setNumberOfLoops_];
        (*(v7 + 8))(v12, v6);
      }

      else
      {
        (*(v7 + 8))(v12, v6);
        swift_endAccess();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20[8] = 1;
  sub_251130CB8();
  return v13;
}

void *sub_251116BF4@<X0>(double *a1@<X0>, void *a3@<X8>)
{
  v5 = a1[7];
  v4 = a1[8];
  v6 = a1[9];
  v7 = a1[11];
  v8 = a1[12];
  v9 = a1[10];
  swift_beginAccess();
  v10 = sub_251128A3C(0x1EuLL, 5uLL, v9);
  swift_endAccess();
  swift_beginAccess();
  v11 = v7;
  v12 = sub_251128A3C(0x1EuLL, 5uLL, v11);
  swift_endAccess();
  swift_beginAccess();
  v13 = v8;
  v14 = sub_251128A3C(0x1EuLL, 5uLL, v13);
  swift_endAccess();
  swift_beginAccess();
  v15 = v5;
  v16 = sub_251128A3C(0x1EuLL, 5uLL, v15);
  swift_endAccess();
  swift_beginAccess();
  v17 = v4;
  v18 = sub_251128A3C(0x1EuLL, 5uLL, v17);
  swift_endAccess();
  swift_beginAccess();
  v19 = v6;
  v20 = sub_251128A3C(0x1EuLL, 5uLL, v19);
  swift_endAccess();
  if (!v10)
  {

LABEL_12:
LABEL_13:

LABEL_14:
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (!v12)
  {

LABEL_11:
    goto LABEL_12;
  }

  if (!v14)
  {

    goto LABEL_11;
  }

  if (!v16)
  {

    goto LABEL_15;
  }

  if (!v18)
  {

    goto LABEL_14;
  }

  if (!v20)
  {

    goto LABEL_13;
  }

  type metadata accessor for HGMLInput();
  result = swift_allocObject();
  result[2] = v16;
  result[3] = v18;
  result[4] = v20;
  result[5] = v10;
  result[6] = v12;
  result[7] = v14;
LABEL_16:
  *a3 = result;
  return result;
}

uint64_t sub_251116E54()
{

  return swift_deallocClassInstance();
}

Swift::String __swiftcall HGHeadGestureResult.description()()
{
  v1 = v0;
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251130B88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_251131358();
  MEMORY[0x25306BDC0](91, 0xE100000000000000);
  v10 = [v0 uuid];
  sub_251130B68();

  sub_251110FA0();
  v11 = sub_251131508();
  MEMORY[0x25306BDC0](v11);

  (*(v7 + 8))(v9, v6);
  MEMORY[0x25306BDC0](0x654764616548205DLL, 0xEF203A6572757473);
  v12 = [v1 headGesture];
  if (v12)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
    if (v12 == 1)
    {
      v14 = 6582094;
      v13 = 0xE300000000000000;
    }

    v15 = v12 == 2;
    if (v12 == 2)
    {
      v16 = 0x656B616853;
    }

    else
    {
      v16 = v14;
    }

    if (v15)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = v13;
    }
  }

  else
  {
    v16 = 0x756F72476B636142;
    v17 = 0xEA0000000000646ELL;
  }

  MEMORY[0x25306BDC0](v16, v17);

  MEMORY[0x25306BDC0](0x6469666E6F43202CLL, 0xEE00203A65636E65);
  v18 = [v1 avgConfidence];
  v19 = [v18 description];
  v20 = sub_251130F18();
  v22 = v21;

  MEMORY[0x25306BDC0](v20, v22);

  MEMORY[0x25306BDC0](0xD000000000000013, 0x8000000251137140);
  v23 = [v1 headGesturePart];
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v24 = 0xE900000000000074;
      v25 = 0x66654C656B616853;
      goto LABEL_21;
    }

    if (v23 == 4)
    {
      v24 = 0xEA00000000007468;
      v25 = 0x676952656B616853;
      goto LABEL_21;
    }

LABEL_18:
    v25 = 0x6E776F6E6B6E75;
    v24 = 0xE700000000000000;
    goto LABEL_21;
  }

  if (v23 == 1)
  {
    v24 = 0xE500000000000000;
    v25 = 0x7055646F4ELL;
    goto LABEL_21;
  }

  if (v23 != 2)
  {
    goto LABEL_18;
  }

  v24 = 0xE700000000000000;
  v25 = 0x6E776F44646F4ELL;
LABEL_21:
  MEMORY[0x25306BDC0](v25, v24);

  MEMORY[0x25306BDC0](0x6D6954207461202CLL, 0xEF3A706D61747365);
  v26 = [v1 timestamp];
  sub_251130AF8();

  sub_251130AE8();
  (*(v3 + 8))(v5, v2);
  sub_2511310D8();
  v27 = v30;
  v28 = v31;
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

id sub_251117398(unsigned __int8 a1)
{
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(HGHeadGestureResult) init];
  [v6 setHeadGesture_];
  [v6 setHeadGesturePart_];
  sub_251117B34();
  v7 = sub_251131238();
  [v6 setAvgConfidence_];

  sub_251130B28();
  v8 = sub_251130AA8();
  (*(v3 + 8))(v5, v2);
  [v6 setTimestamp_];

  return v6;
}

unint64_t sub_2511174FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_251117AD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251117534()
{
  v1 = *v0;
  v2 = 0x756F72676B636142;
  v3 = 28494;
  v4 = 0x67695220746C6954;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E55;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7562585;
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

uint64_t sub_2511176A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_251117738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25111782C()
{
  result = qword_27F41E868;
  if (!qword_27F41E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E868);
  }

  return result;
}

uint64_t sub_2511178B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251117908()
{
  result = qword_27F41E880;
  if (!qword_27F41E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E880);
  }

  return result;
}

unint64_t sub_25111795C(unint64_t result)
{
  if (result >= 5)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_251117968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636142 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_251131518() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7562585 && a2 == 0xE300000000000000 || (sub_251131518() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28494 && a2 == 0xE200000000000000 || (sub_251131518() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x67695220746C6954 && a2 == 0xEA00000000007468)
  {

    return 3;
  }

  else
  {
    v6 = sub_251131518();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_251117AD0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_251117AE0()
{
  result = qword_27F41E888;
  if (!qword_27F41E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E888);
  }

  return result;
}

unint64_t sub_251117B34()
{
  result = qword_27F41E510;
  if (!qword_27F41E510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F41E510);
  }

  return result;
}

uint64_t sub_251117BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 305))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 136);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251117C14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 296) = 0;
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
    *(result + 304) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 305) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 305) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2 + 2;
    }
  }

  return result;
}

double sub_251117CBC(float32x4_t *a1, double result, double a3, double a4, float32x4_t a5)
{
  v5 = a1[1].u64[0];
  if (v5)
  {
    v6 = a1[2];
    v7 = 1.0 / v5;
    v8 = vmulq_n_f32(v6, v7);
    v9 = v5 - 1;
    if (v5 != 1)
    {
      v10 = a1 + 3;
      a5.i64[0] = 0;
      do
      {
        v11 = *v10++;
        v12 = vmulq_f32(v6, v11);
        *v12.f32 = vadd_f32(*v12.f32, *&vextq_s8(v12, v12, 8uLL));
        v12.f32[0] = vaddv_f32(*v12.f32);
        v8 = vaddq_f32(v8, vmulq_n_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a5, v12), 0), vsubq_f32(0, v11), v11), v7));
        --v9;
      }

      while (v9);
    }

    v13 = vmulq_f32(v8, v8);
    v14 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    if (vaddv_f32(v14) == 0.0)
    {
      return 0.0;
    }

    else
    {
      v15 = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
      v16 = vrsqrte_f32(v15);
      v17 = vmul_f32(v16, vrsqrts_f32(v15, vmul_f32(v16, v16)));
      *&result = vmulq_n_f32(v8, vmul_f32(v17, vrsqrts_f32(v15, vmul_f32(v17, v17))).f32[0]).u64[0];
    }
  }

  return result;
}

BOOL sub_251117D90(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x131uLL);
  memcpy(__dst, a2, 0x131uLL);
  return sub_251117DE8(v4, __dst);
}

BOOL sub_251117DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  v15 = *(a1 + 96);
  v14 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v64[14] = *(a1 + 128);
  v65 = *(a1 + 136);
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 32);
  v20 = *(a2 + 40);
  v23 = *(a2 + 48);
  v22 = *(a2 + 56);
  v25 = *(a2 + 64);
  v24 = *(a2 + 72);
  v46 = *(a2 + 88);
  v47 = *(a2 + 80);
  v44 = *(a2 + 104);
  v45 = *(a2 + 96);
  v42 = *(a2 + 120);
  v43 = *(a2 + 112);
  v39 = v4;
  v40 = v5;
  *v64 = v5;
  *&v64[1] = v4;
  v37 = v6;
  v38 = v7;
  *&v64[2] = v7;
  *&v64[3] = v6;
  v35 = v8;
  v36 = v9;
  *&v64[4] = v9;
  *&v64[5] = v8;
  v33 = v10;
  v34 = v11;
  *&v64[6] = v11;
  *&v64[7] = v10;
  v31 = v12;
  v32 = v13;
  *&v64[8] = v13;
  *&v64[9] = v12;
  v29 = v14;
  v30 = v15;
  *&v64[10] = v15;
  *&v64[11] = v14;
  v28 = v16;
  *&v64[12] = v16;
  *&v64[13] = v17;
  v41 = v17;
  if (sub_2510F7300(v64) == 1)
  {
    v62 = *(a2 + 128);
    v63 = *(a2 + 136);
    v48 = v18;
    v49 = v19;
    v50 = v21;
    v51 = v20;
    v52 = v23;
    v53 = v22;
    v54 = v25;
    v55 = v24;
    v56 = v47;
    v57 = v46;
    v58 = v45;
    v59 = v44;
    v60 = v43;
    v61 = v42;
    return sub_2510F7300(&v48) == 1;
  }

  else
  {
    v62 = *(a2 + 128);
    v63 = *(a2 + 136);
    v48 = v18;
    v49 = v19;
    v50 = v21;
    v51 = v20;
    v52 = v23;
    v53 = v22;
    v54 = v25;
    v55 = v24;
    v56 = v47;
    v57 = v46;
    v58 = v45;
    v59 = v44;
    v60 = v43;
    v61 = v42;
    if (sub_2510F7300(&v48) == 1 || v41 != v42 || v40 != v18 || v39 != v19 || v38 != v21 || v37 != v20 || v36 != v23 || v35 != v22 || v34 != v25 || v33 != v24 || v32 != v47 || v31 != v46 || v30 != v45 || v29 != v44)
    {
      return 0;
    }

    return v28 == v43;
  }
}

double sub_25111807C(float32x4_t a1)
{
  v2 = a1.f32[3];
  v3 = vmuls_lane_f32(a1.f32[0], a1, 3);
  v4 = a1.f32[2];
  v5 = vmuls_lane_f32(a1.f32[1], a1, 2);
  v6 = (v3 + v5) + (v3 + v5);
  v7 = vmulq_f32(a1, a1).f32[0];
  v8 = vmuls_lane_f32(a1.f32[1], *a1.f32, 1);
  atan2f(v6, 1.0 - ((v7 + v8) + (v7 + v8)));
  v9 = vmuls_lane_f32(v2, *a1.f32, 1);
  v10 = vmuls_lane_f32(a1.f32[0], a1, 2);
  v11 = (v9 - v10) + (v9 - v10);
  v12 = sqrtf(v11 + 1.0);
  v13 = sqrtf(1.0 - v11);
  v14 = atan2f(v12, v13);
  v15 = v14 + v14 + -1.57079633;
  v16 = vmuls_lane_f32(v2, a1, 2);
  v17 = vmuls_lane_f32(a1.f32[0], *a1.f32, 1);
  v18 = (v16 + v17) + (v16 + v17);
  v19 = vmuls_lane_f32(v4, a1, 2);
  atan2f(v18, 1.0 - ((v8 + v19) + (v8 + v19)));
  return v15;
}

void *sub_2511181B4(char *a1)
{
  v29 = a1;
  v1 = sub_251130E18();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2511311D8();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2511311A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_251130E38();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2510F65C4();
  sub_251130E28();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_251118CF0(&qword_27F41E0F8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E100, &qword_251132AB0);
  sub_2510F6658(&qword_27F41E108, &qword_27F41E100, &qword_251132AB0, MEMORY[0x277D83970]);
  sub_2511312A8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v28);
  v10 = v9;
  v12 = v29;
  v11 = v30;
  v13 = sub_251131208();
  v11[2] = v12;
  v11[3] = v13;
  v14 = OBJC_IVAR___HGConfigurationInternal_mlConfig;
  swift_beginAccess();
  v15 = *&v12[v14];
  v16 = *&v15[OBJC_IVAR___HGMLConfigurationInternal_modelType];
  if (v16 >= 2)
  {
    if (v16 != 2)
    {
      result = sub_2511313B8();
      __break(1u);
      return result;
    }

    v17 = type metadata accessor for HGEspressoV2Model();
    swift_allocObject();
    v21 = v12;
    v19 = sub_25111DA2C(v15);
    v20 = &off_286332A40;
  }

  else
  {
    v17 = type metadata accessor for HGEspressoV1Model();
    swift_allocObject();
    v18 = v12;
    v19 = sub_2511041F4(v15);
    v20 = &off_286331C78;
  }

  v11[7] = v17;
  v11[8] = v20;
  v11[4] = v19;
  aBlock[4] = sub_251118CD0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2511147B8;
  aBlock[3] = &block_descriptor_5;
  v22 = _Block_copy(aBlock);

  v23 = v10;
  sub_251130E28();
  v36 = MEMORY[0x277D84F90];
  sub_251118CF0(&qword_27F41E080, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E088, &qword_251132A30);
  sub_2510F6658(&qword_27F41E090, &qword_27F41E088, &qword_251132A30, MEMORY[0x277D83970]);
  v24 = v33;
  v25 = v35;
  sub_2511312A8();
  MEMORY[0x25306C010](0, v23, v24, v22);
  _Block_release(v22);

  (*(v34 + 8))(v24, v25);
  (*(v31 + 8))(v23, v32);

  return v11;
}

uint64_t sub_251118760(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[7];
  v5 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v4);
  return (*(v5 + 16))(v4, v5);
}

uint64_t sub_2511187E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E890, &qword_2511344E8);
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E898, &qword_2511344F0);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v26 = a1;
  v25 = *(v2 + 24);
  v14 = v25;
  v15 = sub_2511311C8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8A0, &qword_2511344F8);
  sub_2510F65C4();
  sub_2510F6658(&qword_27F41E8A8, &qword_27F41E8A0, &qword_2511344F8, MEMORY[0x277CBCD90]);
  sub_251118CF0(&qword_27F41E6F8, sub_2510F65C4, MEMORY[0x277D85228]);
  sub_251130DD8();
  sub_251118BFC(v6);

  type metadata accessor for HGMLOutput();
  sub_2510F6658(&qword_27F41E8B0, &qword_27F41E890, &qword_2511344E8, MEMORY[0x277CBCD60]);

  v17 = v22;
  sub_251130CE8();

  (*(v7 + 8))(v9, v17);
  sub_2510F6658(&qword_27F41E8B8, &qword_27F41E898, &qword_2511344F0, MEMORY[0x277CBCB10]);
  v18 = v23;
  v19 = sub_251130CD8();
  (*(v24 + 8))(v13, v18);
  return v19;
}

uint64_t sub_251118B90()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_251118BFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6E8, &unk_251134050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251118C64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[7];
  v6 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v5);
  result = (*(v6 + 24))(v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251118CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251118D38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = 0xD00000000000001DLL;
  v4 = "w";
  v5 = a1;
  v6 = 0xD000000000000019;
  if (a1 == 4)
  {
    v7 = "maxNumBackgroundPredictions";
  }

  else
  {
    v6 = 0xD000000000000013;
    v7 = "numConsecutivePredictions";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "numWindowsInPool";
  }

  v9 = 0xD00000000000001CLL;
  if (v5 == 1)
  {
    v10 = "minGateOpenConfScoreThreshold";
  }

  else
  {
    v9 = 0xD000000000000010;
    v10 = "minGestureConfScoreThreshold";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "w";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001BLL;
      v4 = "numWindowsInPool";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000019;
      v4 = "maxNumBackgroundPredictions";
    }

    else
    {
      v2 = 0xD000000000000013;
      v4 = "numConsecutivePredictions";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001CLL;
      v4 = "minGateOpenConfScoreThreshold";
    }

    else
    {
      v4 = "minGestureConfScoreThreshold";
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_251131518();
  }

  return v13 & 1;
}

uint64_t sub_251118EB0(unsigned __int8 a1)
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_251118FA8(uint64_t a1, unsigned __int8 a2)
{
  sub_251131598();
  sub_251130F88();

  return sub_2511315B8();
}

uint64_t sub_25111909C()
{
  sub_251131358();
  MEMORY[0x25306BDC0](0xD000000000000015, 0x80000002511372F0);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137310);
  sub_2511310D8();
  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137330);
  v0 = sub_251131508();
  MEMORY[0x25306BDC0](v0);

  MEMORY[0x25306BDC0](0xD000000000000016, 0x8000000251137350);
  v1 = sub_251131508();
  MEMORY[0x25306BDC0](v1);

  MEMORY[0x25306BDC0](0xD000000000000014, 0x8000000251137370);
  v2 = sub_251131508();
  MEMORY[0x25306BDC0](v2);

  MEMORY[0x25306BDC0](0xD000000000000017, 0x8000000251137390);
  sub_2511310D8();
  MEMORY[0x25306BDC0](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_2511192BC(uint64_t a1)
{
  sub_251130F88();
}

unint64_t sub_2511193A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25111C94C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2511193D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = *v1;
  v4 = "numWindowsInPool";
  v5 = 0xD00000000000001BLL;
  v6 = "maxNumBackgroundPredictions";
  v7 = 0xD000000000000019;
  result = 0xD000000000000013;
  if (v3 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = "numConsecutivePredictions";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = "minGateOpenConfScoreThreshold";
  if (v3 == 1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v9 = "minGestureConfScoreThreshold";
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    v10 = "w";
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

unint64_t sub_251119488()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000019;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_251119538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25111C94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25111956C(uint64_t a1)
{
  v2 = sub_25111D780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2511195A8(uint64_t a1)
{
  v2 = sub_25111D780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2511195E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E938, &qword_251134748);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25111D780();
  sub_251131608();
  v8[15] = 0;
  sub_2511314B8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2511314B8();
  v8[13] = 2;
  sub_2511314C8();
  v8[12] = 3;
  sub_2511314C8();
  v8[11] = 4;
  sub_2511314C8();
  v8[10] = 5;
  sub_2511314B8();
  return (*(v4 + 8))(v6, v3);
}

double sub_2511197E4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_25111C998(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_251119844()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25111B8E4(0, v2, 0);
    v3 = v20;
    result = sub_2511312B8();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      if (((*(v1 + 64 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v7)
      {
        goto LABEL_23;
      }

      v8 = *(*(v1 + 48) + v5);
      v19 = v6;
      if (v8 <= 1)
      {
        if (*(*(v1 + 48) + v5))
        {
          v9 = 0xE300000000000000;
          v10 = 7562585;
        }

        else
        {
          v10 = 0x756F72676B636142;
          v9 = 0xEA0000000000646ELL;
        }
      }

      else if (v8 == 2)
      {
        v9 = 0xE200000000000000;
        v10 = 28494;
      }

      else if (v8 == 3)
      {
        v9 = 0xEA00000000007468;
        v10 = 0x67695220746C6954;
      }

      else
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
      }

      MEMORY[0x25306BDC0](v10, v9);

      MEMORY[0x25306BDC0](8250, 0xE200000000000000);
      v11 = sub_25111909C();
      MEMORY[0x25306BDC0](v11);

      MEMORY[0x25306BDC0](10, 0xE100000000000000);
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25111B8E4((v12 > 1), v13 + 1, 1);
      }

      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0xE000000000000000;
      result = sub_25111C55C(v5, v7, v19 & 1, v1);
      v5 = result;
      v7 = v15;
      if (!--v2)
      {
        sub_25111C5DC(result, v15, v6 & 1);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_251131358();

    v16 = MEMORY[0x25306BE80](v3, MEMORY[0x277D837D0]);
    v18 = v17;

    MEMORY[0x25306BDC0](v16, v18);

    return 0xD00000000000001ALL;
  }

  return result;
}

uint64_t sub_251119B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
  v7 = sub_251130B38();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = 0;
  *(v2 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionList) = a1;

  v8 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool) = sub_25111A120(MEMORY[0x277D84F90]);
  v9 = sub_251120A30(v8);
  sub_25111C5E8(0, v75);
  v10 = v76;
  v11 = v77;
  v70 = v3;
  *(v3 + 16) = v9;
  v12 = v3 + 16;
  v13 = v75[1];
  *(v12 + 8) = v75[0];
  *(v12 + 24) = v13;
  *(v12 + 40) = v10;
  *(v12 + 48) = v11;
  v14 = *(a1 + 16);
  v72 = a2;
  if (!v14)
  {

    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v15 = 0;
  do
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v18 = *(a1 + v15 + 32);
    sub_25111C5E8(v18, &v78);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = *v12;
    v20 = v73;
    *v12 = 0x8000000000000000;
    v21 = sub_25112F9FC();
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_40;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_251126D28(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_25112F9FC();
      if ((v27 & 1) != (v28 & 1))
      {
LABEL_46:
        result = sub_251131538();
        __break(1u);
        return result;
      }

LABEL_11:
      v29 = v73;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v34 = v21;
    sub_251128138();
    v21 = v34;
    v29 = v73;
    if (v27)
    {
LABEL_3:
      v16 = (v29[7] + 48 * v21);
      v17 = v79;
      *v16 = v78;
      v16[1] = v17;
      v16[2] = v80;
      goto LABEL_4;
    }

LABEL_12:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    *(v29[6] + v21) = v18;
    v30 = (v29[7] + 48 * v21);
    v31 = v79;
    *v30 = v78;
    v30[1] = v31;
    v30[2] = v80;
    v32 = v29[2];
    v25 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v25)
    {
      goto LABEL_43;
    }

    v29[2] = v33;
LABEL_4:
    ++v15;
    *v12 = v29;

    swift_endAccess();
  }

  while (v14 != v15);

  if (a2)
  {
LABEL_19:
    v71 = *(a2 + 16);
    if (!v71)
    {
LABEL_34:

      goto LABEL_35;
    }

    v35 = 0;
    v36 = (a2 + 80);
    while (1)
    {
      if (v35 >= *(a2 + 16))
      {
        goto LABEL_41;
      }

      v38 = *(v36 - 48);
      v40 = *(v36 - 5);
      v39 = *(v36 - 4);
      v42 = *(v36 - 3);
      v41 = *(v36 - 2);
      v43 = *(v36 - 1);
      v44 = *v36;
      swift_beginAccess();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v73 = *v12;
      v46 = v73;
      *v12 = 0x8000000000000000;
      v47 = sub_25112F9FC();
      v49 = v46[2];
      v50 = (v48 & 1) == 0;
      v25 = __OFADD__(v49, v50);
      v51 = v49 + v50;
      if (v25)
      {
        goto LABEL_42;
      }

      v52 = v48;
      if (v46[3] < v51)
      {
        break;
      }

      if (v45)
      {
        goto LABEL_29;
      }

      v58 = v47;
      sub_251128138();
      v47 = v58;
      v54 = v73;
      if (v52)
      {
LABEL_21:
        v37 = (v54[7] + 48 * v47);
        *v37 = v40;
        v37[1] = v39;
        v37[2] = v42;
        v37[3] = v41;
        v37[4] = v43;
        v37[5] = v44;
        goto LABEL_22;
      }

LABEL_30:
      v54[(v47 >> 6) + 8] |= 1 << v47;
      *(v54[6] + v47) = v38;
      v55 = (v54[7] + 48 * v47);
      *v55 = v40;
      v55[1] = v39;
      v55[2] = v42;
      v55[3] = v41;
      v55[4] = v43;
      v55[5] = v44;
      v56 = v54[2];
      v25 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v25)
      {
        goto LABEL_44;
      }

      v54[2] = v57;
LABEL_22:
      ++v35;
      *v12 = v54;

      swift_endAccess();
      v36 += 7;
      a2 = v72;
      if (v71 == v35)
      {
        goto LABEL_34;
      }
    }

    sub_251126D28(v51, v45);
    v47 = sub_25112F9FC();
    if ((v52 & 1) != (v53 & 1))
    {
      goto LABEL_46;
    }

LABEL_29:
    v54 = v73;
    if (v52)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_35:
  if (qword_27F41DFB0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v59 = sub_251130BE8();
  __swift_project_value_buffer(v59, qword_27F421A38);

  v60 = sub_251130BC8();
  v61 = sub_251131178();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v74 = v63;
    *v62 = 136315138;
    swift_beginAccess();
    v64 = *(v12 + 16);
    v81[0] = *v12;
    v81[1] = v64;
    v81[2] = *(v12 + 32);
    v82 = *(v12 + 48);
    sub_25111D69C(v81, &v73);
    v65 = sub_251119844();
    v67 = v66;
    sub_25111D6D4(v81);
    v68 = sub_2510FAC50(v65, v67, &v74);

    *(v62 + 4) = v68;
    _os_log_impl(&dword_2510F2000, v60, v61, "%s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x25306CC10](v63, -1, -1);
    MEMORY[0x25306CC10](v62, -1, -1);
  }

  return v70;
}

uint64_t sub_25111A120(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25111B904(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E918, &qword_251134680);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E908, &qword_251134670);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25111B904((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_25111A264(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = sub_251130EE8();
  v6 = [v4 featureValueForName_];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v6 stringValue];

  v8 = sub_251130F18();
  v10 = v9;

  v11 = *(v3 + 16);
  v12 = sub_251130EE8();
  v13 = [v11 featureValueForName_];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = [v13 dictionaryValue];

  sub_251117B34();
  v15 = sub_251130E88();

  v16 = sub_25112E0F0(v15);

  if (!*(v16 + 16) || (v17 = sub_25112EA1C(v8, v10), (v18 & 1) == 0))
  {

    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  v20 = *(v3 + 16);
  v21 = sub_251130EE8();
  v22 = [v20 featureValueForName_];

  if (v22)
  {
    v23 = [v22 dictionaryValue];

    v24 = sub_251130E88();
    sub_25112E0F0(v24);

    v25 = sub_25111CE0C(v8, v10, v19);

    *a2 = v25;
    return;
  }

LABEL_10:
  __break(1u);
}

id sub_25111A518()
{
  v1 = v0;
  v2 = sub_251130B38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_251130B88();
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x28223BE20](v5);
  v85 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v81 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v81 - v14;
  if (qword_27F41DFB0 != -1)
  {
    swift_once();
  }

  v16 = sub_251130BE8();
  v17 = __swift_project_value_buffer(v16, qword_27F421A38);

  v18 = sub_251130BC8();
  v19 = sub_251131178();
  v20 = os_log_type_enabled(v18, v19);
  v21 = &unk_27F421000;
  v89 = v13;
  v90 = v10;
  if (v20)
  {
    v22 = swift_slowAlloc();
    LODWORD(v83) = v19;
    v23 = v22;
    v82 = swift_slowAlloc();
    v91[0] = v82;
    *v23 = 134218242;
    v24 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
    swift_beginAccess();
    *(v23 + 4) = *(*(v1 + v24) + 16);

    *(v23 + 12) = 2080;
    v25 = *(v1 + v24);

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E908, &qword_251134670);
    v27 = v17;
    v28 = v3;
    v29 = v2;
    v30 = MEMORY[0x25306BE80](v25, v26);
    v32 = v31;

    v33 = v30;
    v2 = v29;
    v3 = v28;
    v17 = v27;
    v34 = sub_2510FAC50(v33, v32, v91);
    v21 = &unk_27F421000;

    *(v23 + 14) = v34;
    _os_log_impl(&dword_2510F2000, v18, v83, "[AG]Closing gate and aggregating %ld predictions:\n\t%s", v23, 0x16u);
    v35 = v82;
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x25306CC10](v35, -1, -1);
    MEMORY[0x25306CC10](v23, -1, -1);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) = 0;
  sub_251130B28();
  (*(v3 + 56))(v15, 0, 1, v2);
  v36 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
  swift_beginAccess();
  sub_2510F647C(v15, v1 + v36);
  swift_endAccess();

  v37 = sub_251130BC8();
  v38 = sub_251131178();
  if (os_log_type_enabled(v37, v38))
  {
    v83 = v17;
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    v40 = v89;
    sub_2510F64EC(v1 + v36, v89);
    v41 = (*(v3 + 48))(v40, 1, v2);

    if (v41 == 1)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_251130AE8();
    v44 = v43;
    (*(v3 + 8))(v40, v2);
    *(v39 + 4) = v44;
    _os_log_impl(&dword_2510F2000, v37, v38, "[AG]Closing gate at time: %f", v39, 0xCu);
    MEMORY[0x25306CC10](v39, -1, -1);
  }

  else
  {
  }

  v45 = [objc_allocWithZone(HGHeadGestureResult) init];
  v46 = v1 + v36;
  v47 = v90;
  sub_2510F64EC(v46, v90);
  result = (*(v3 + 48))(v47, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v48 = sub_251130AA8();
  v49 = *(v3 + 8);
  v49(v47, v2);
  [v45 setTimestamp_];

  v50 = sub_25111B2EC();
  v84 = v2;
  v89 = (v3 + 8);
  if (v50)
  {
    v51 = v21[313];
    swift_beginAccess();
    v52 = *(v1 + v51);
    v55 = *(v52 + 16);
    v53 = v52 + 16;
    v54 = v55;
    if (v55)
    {
      v56 = *(v53 + 16 * v54);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v57 = sub_25111ADF8();
    if (v57 == 5)
    {
      v56 = 0;
    }

    else
    {
      v56 = v57;
    }
  }

  [v45 setHeadGesture_];
  sub_251117B34();
  sub_25111B3B8(v56);
  v58 = sub_251131238();
  [v45 setAvgConfidence_];

  v59 = v45;
  v60 = sub_251130BC8();
  v61 = sub_251131178();

  if (os_log_type_enabled(v60, v61))
  {
    v90 = v49;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v91[0] = v63;
    *v62 = 136315650;
    v64 = [v59 headGesture];
    v83 = v63;
    if (v64)
    {
      if (v64 == 2)
      {
        v65 = 0xE500000000000000;
        v66 = 0x656B616853;
      }

      else if (v64 == 1)
      {
        v65 = 0xE300000000000000;
        v66 = 6582094;
      }

      else
      {
        v65 = 0xE700000000000000;
        v66 = 0x6E776F6E6B6E55;
      }
    }

    else
    {
      v65 = 0xEA0000000000646ELL;
      v66 = 0x756F72476B636142;
    }

    v67 = sub_2510FAC50(v66, v65, v91);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v68 = [v59 uuid];
    v69 = v85;
    sub_251130B68();

    sub_251110FA0();
    v70 = v87;
    v71 = sub_251131508();
    v73 = v72;
    (*(v86 + 8))(v69, v70);
    v74 = sub_2510FAC50(v71, v73, v91);

    *(v62 + 14) = v74;
    *(v62 + 22) = 2048;
    v75 = [v59 timestamp];
    v76 = v88;
    sub_251130AF8();

    sub_251130AE8();
    v78 = v77;
    v90(v76, v84);
    *(v62 + 24) = v78;
    _os_log_impl(&dword_2510F2000, v60, v61, "[AG] ML final prediction: %s, %s, at %f", v62, 0x20u);
    v79 = v83;
    swift_arrayDestroy();
    MEMORY[0x25306CC10](v79, -1, -1);
    MEMORY[0x25306CC10](v62, -1, -1);
  }

  v80 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  *(v1 + v80) = MEMORY[0x277D84F90];

  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed) = v56;
  *(v1 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = 0;
  return v59;
}

uint64_t sub_25111ADF8()
{
  v1 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 5;
  }

  v4 = (v2 + 40);
  v5 = MEMORY[0x277D84F90];
  do
  {
    v9 = *(v4 - 8);
    if (v9)
    {
      v10 = *v4;
      v53 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25111B904(0, *(v5 + 16) + 1, 1);
        v5 = v53;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25111B904((v6 > 1), v7 + 1, 1);
        v5 = v53;
      }

      *(v5 + 16) = v7 + 1;
      v8 = v5 + 16 * v7;
      *(v8 + 32) = v9;
      *(v8 + 40) = v10;
    }

    v4 += 2;
    --v3;
  }

  while (v3);

  v11 = *(v5 + 16);
  if (v11)
  {
    v53 = MEMORY[0x277D84F90];
    sub_25111B9E4(0, v11, 0);
    v12 = v53;
    v13 = *(v53 + 16);
    v14 = 32;
    do
    {
      v15 = *(v5 + v14);
      v53 = v12;
      v16 = *(v12 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_25111B9E4((v16 > 1), v13 + 1, 1);
        v12 = v53;
      }

      *(v12 + 16) = v13 + 1;
      *(v12 + v13 + 32) = v15;
      v14 += 16;
      ++v13;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v18 = *(v12 + 16);
  v19 = *(v0 + v1);
  v20 = *(v19 + 16);
  if (v18)
  {
    v52 = *(v19 + 16);
    v53 = MEMORY[0x277D84F90];
    sub_25111B9C4(0, v18, 0);
    v21 = v53;
    v22 = *(v53 + 16);
    v23 = 16 * v22;
    v24 = 32;
    v25 = v18;
    do
    {
      v26 = *(v12 + v24);
      v53 = v21;
      v27 = *(v21 + 24);
      v28 = v22 + 1;
      if (v22 >= v27 >> 1)
      {
        sub_25111B9C4((v27 > 1), v22 + 1, 1);
        v21 = v53;
      }

      *(v21 + 16) = v28;
      v29 = v21 + v23;
      *(v29 + 32) = v26;
      *(v29 + 40) = 1;
      v23 += 16;
      ++v24;
      v22 = v28;
      --v25;
    }

    while (v25);

    v20 = v52;
    if (*(v21 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_24:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F0, &qword_251134650);
      v30 = sub_2511313F8();
      goto LABEL_27;
    }
  }

  v30 = MEMORY[0x277D84F98];
LABEL_27:
  v53 = v30;
  sub_25111CBE4(v21, 1, &v53);

  v31 = 1 << *(v53 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v53 + 64);
  if (v33)
  {
    v34 = 0;
    v35 = __clz(__rbit64(v33));
    v36 = (v33 - 1) & v33;
    v37 = (v31 + 63) >> 6;
LABEL_35:
    v41 = v20 - v18;
    v42 = *(v53 + 48);
    v43 = *(v53 + 56);
    v44 = *(v42 + v35);
    v45 = *(v43 + 8 * v35);
    v46 = v45;
    if (!v36)
    {
      goto LABEL_37;
    }

    do
    {
      v47 = v34;
LABEL_41:
      v48 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v49 = v48 | (v47 << 6);
      v50 = *(v42 + v49);
      v51 = *(v43 + 8 * v49);
      if (v46 < v51)
      {
        v44 = v50;
        v45 = v51;
      }

      if (v46 <= v51)
      {
        v46 = v51;
      }
    }

    while (v36);
    while (1)
    {
LABEL_37:
      v47 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      if (v47 >= v37)
      {
        break;
      }

      v36 = *(v53 + 64 + 8 * v47);
      ++v34;
      if (v36)
      {
        v34 = v47;
        goto LABEL_41;
      }
    }

    if (v45 >= v41)
    {
      return v44;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v37 = (v31 + 63) >> 6;
    while (v37 - 1 != v39)
    {
      v34 = v39 + 1;
      v40 = *(v53 + 8 * v39 + 72);
      v38 -= 64;
      ++v39;
      if (v40)
      {
        v36 = (v40 - 1) & v40;
        v35 = __clz(__rbit64(v40)) - v38;
        goto LABEL_35;
      }
    }

    return 0;
  }
}

uint64_t sub_25111B234(unsigned __int8 a1, int64_t a2)
{
  v5 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  v8 = *(v7 + 16);
  if (v8 < a2)
  {
    return 0;
  }

  if (a2 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    if (v8 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    v10 = ~v9 + v8;
    for (i = (v7 - 16 * v9 + 16 * v8 + 32); ; i += 16)
    {
      result = v9 == 0;
      if (!v9)
      {
        break;
      }

      if (++v10 >= v8)
      {
        __break(1u);
        goto LABEL_13;
      }

      v12 = *i;
      --v9;
      if (v12 != a1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25111B2EC()
{
  v1 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5 && (v6 = *(v3 + 16 * v4)) != 0)
  {
    swift_beginAccess();
    v7 = *(v0 + 16);
    v8 = *(v0 + 56);
    if (*(v7 + 16))
    {
      v9 = sub_25112F9FC();
      if (v10)
      {
        v8 = *(*(v7 + 56) + 48 * v9 + 32);
      }
    }

    v11 = sub_25111B234(v6, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_25111B3B8(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a1;

    v8 = (v4 + 40);
    v9 = MEMORY[0x277D84F90];
    do
    {
      if (*(v8 - 8) == v7)
      {
        v13 = *v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25111B904(0, *(v9 + 16) + 1, 1);
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_25111B904((v10 > 1), v11 + 1, 1);
        }

        *(v9 + 16) = v11 + 1;
        v12 = v9 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v13;
      }

      v8 += 2;
      --v5;
    }

    while (v5);

    v14 = *(v9 + 16);
    if (v14)
    {
LABEL_11:
      sub_25111B924(0, v14, 0);
      v15 = v6;
      v16 = *(v6 + 16);
      v17 = 40;
      do
      {
        v18 = *(v9 + v17);
        v19 = *(v15 + 24);
        if (v16 >= v19 >> 1)
        {
          sub_25111B924((v19 > 1), v16 + 1, 1);
        }

        *(v15 + 16) = v16 + 1;
        *(v15 + 8 * v16 + 32) = v18;
        v17 += 16;
        ++v16;
        --v14;
      }

      while (v14);

      v20 = *(v15 + 16);
      if (!v20)
      {
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v15 = MEMORY[0x277D84F90];
  v20 = *(MEMORY[0x277D84F90] + 16);
  if (!v20)
  {
  }

LABEL_16:
  if (v20 <= 3)
  {
    v21 = 0;
    v22 = 0.0;
LABEL_24:
    v25 = v20 - v21;
    v26 = (v15 + 8 * v21 + 32);
    do
    {
      v27 = *v26++;
      v22 = v22 + v27;
      --v25;
    }

    while (v25);
  }

  v21 = v20 & 0x7FFFFFFFFFFFFFFCLL;
  v23 = (v15 + 48);
  v22 = 0.0;
  v24 = v20 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v22 = v22 + *(v23 - 2) + *(v23 - 1) + *v23 + v23[1];
    v23 += 4;
    v24 -= 4;
  }

  while (v24);
  if (v20 != v21)
  {
    goto LABEL_24;
  }
}

uint64_t sub_25111B630()
{

  sub_2510F655C(v0 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HGPredictionAggregator(uint64_t a1)
{
  result = qword_27F41E8C8;
  if (!qword_27F41E8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25111B710(uint64_t a1)
{
  sub_2510F4964(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25111B7D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25111B818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_25111B874(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_25111B894@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_25111B8C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BA04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B8E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BAF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B904(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BC04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B924(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BD08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B964(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111BF10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111C014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111C118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111C364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111B9E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25111C468(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25111BA04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E920, &qword_251134688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_25111BAF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8D8, &qword_251134620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25111BC04(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E6C0, &unk_251134640);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25111BD08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E650, &qword_2511334D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25111BE0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E678, &qword_251133500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25111BF10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E670, &qword_2511334F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_25111C014(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E910, &qword_251134678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25111C118(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E668, &qword_2511334F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25111C21C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E0, &qword_251134628);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8E8, &unk_251134630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25111C364(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E8F8, &qword_251134658);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_25111C468(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E900, &unk_251134660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25111C55C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_2511312C8();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_25111C5DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_25111C5E8(char a1@<W0>, void *a2@<X8>)
{
  if (a1 == 2)
  {
    if (qword_27F41DFA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_27F41DFA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_27F41DFA8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v3 = qword_27F421A30;
  v4 = *(qword_27F421A30 + 16);
  v5 = sub_251130EE8();
  [v4 doubleForKey_];
  v7 = v6;

  v8 = *(v3 + 16);
  v9 = sub_251130EE8();
  [v8 doubleForKey_];
  v11 = v10;

  v12 = *(v3 + 16);
  v13 = sub_251130EE8();
  v14 = [v12 integerForKey_];

  v15 = *(v3 + 16);
  v16 = sub_251130EE8();
  v17 = [v15 integerForKey_];

  v18 = *(v3 + 16);
  v19 = sub_251130EE8();
  v20 = [v18 integerForKey_];

  v21 = *(v3 + 16);
  v22 = sub_251130EE8();
  [v21 doubleForKey_];
  v24 = v23;

  *a2 = v7;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v20;
  a2[5] = v24;
}

unint64_t sub_25111C94C(uint64_t a1, uint64_t a2)
{
  v2 = sub_251131428();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25111C998@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E928, &qword_251134740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25111D780();
  sub_2511315F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  sub_251131458();
  v10 = v9;
  v23 = 1;
  sub_251131458();
  v12 = v11;
  v22 = 2;
  v13 = sub_251131468();
  v21 = 3;
  v14 = sub_251131468();
  v20 = 4;
  v18 = sub_251131468();
  v19 = 5;
  sub_251131458();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  *(a2 + 1) = v12;
  *(a2 + 2) = v13;
  *(a2 + 3) = v14;
  *(a2 + 4) = v18;
  *(a2 + 5) = v16;
  return result;
}

unint64_t sub_25111CBE4(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    LOBYTE(v5) = a2;
    v6 = result;
    v7 = *(result + 32);
    v8 = *(result + 40);
    v9 = *a3;
    result = sub_25112F9FC();
    v11 = v9[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_25;
    }

    LOBYTE(v15) = v10;
    if (v9[3] < v14)
    {
      sub_251127BD4(v14, v5 & 1);
      result = sub_25112F9FC();
      if ((v15 & 1) == (v16 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_251131538();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v20 = result;
      sub_2511286E4();
      result = v20;
      v17 = *a3;
      if (v15)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

LABEL_7:
    v17 = *a3;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 8 * result);
      v19 = *v18 + v8;
      if (!__OFADD__(*v18, v8))
      {
LABEL_13:
        *v18 = v19;
        v15 = v3 - 1;
        if (v3 == 1)
        {
          return result;
        }

        v5 = (v6 + 56);
        v3 = 1;
        while (1)
        {
          v6 = *(v5 - 8);
          v8 = *v5;
          v25 = *a3;
          result = sub_25112F9FC();
          v27 = v25[2];
          v28 = (v26 & 1) == 0;
          v13 = __OFADD__(v27, v28);
          v29 = v27 + v28;
          if (v13)
          {
            goto LABEL_25;
          }

          v7 = v26;
          if (v25[3] < v29)
          {
            sub_251127BD4(v29, 1);
            result = sub_25112F9FC();
            if ((v7 & 1) != (v30 & 1))
            {
              goto LABEL_5;
            }
          }

          v31 = *a3;
          if (v7)
          {
            v22 = (v31[7] + 8 * result);
            v24 = *v22 + v8;
            if (__OFADD__(*v22, v8))
            {
              break;
            }
          }

          else
          {
            v31[(result >> 6) + 8] |= 1 << result;
            *(v31[6] + result) = v6;
            *(v31[7] + 8 * result) = v8;
            v23 = v31[2];
            v22 = v31 + 2;
            v24 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_26;
            }
          }

          v5 += 2;
          *v22 = v24;
          if (!--v15)
          {
            return result;
          }
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + result) = v7;
    *(v17[7] + 8 * result) = v8;
    v21 = v17[2];
    v18 = v17 + 2;
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
LABEL_26:
      __break(1u);
      return result;
    }

    goto LABEL_13;
  }

  return result;
}

id sub_25111CE0C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F41E0E8, &qword_251132AA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v79[-v9];
  v11 = sub_251130B38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v79[-v16];

  v18 = sub_251117968(a1, a2);
  v19 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen;
  if (*(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_isGateOpen) == 1)
  {
    swift_beginAccess();
    v20 = *(v4 + 16);
    v21 = *(v4 + 32);
    if (*(v20 + 16))
    {
      v22 = sub_25112F9FC();
      if (v23)
      {
        v21 = *(*(v20 + 56) + 48 * v22 + 8);
      }
    }

    if (v21 > a3)
    {
      v18 = 0;
    }
  }

  else
  {
    v35 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_timeLastPoolClosed;
    swift_beginAccess();
    sub_2510F64EC(v4 + v35, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_2510F655C(v10);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      sub_251130B28();
      sub_251130A98();
      v47 = v46;
      v48 = *(v12 + 8);
      v48(v15, v11);
      if (*(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionLastPoolClosed))
      {
        swift_beginAccess();
        v49 = *(v4 + 16);
        v50 = *(v4 + 64);
        if (*(v49 + 16) && (v51 = sub_25112F9FC(), (v52 & 1) != 0))
        {
          v53 = *(*(v49 + 56) + 48 * v51 + 40);

          v48(v17, v11);

          if (v47 < v53)
          {
            return 0;
          }
        }

        else
        {
          v48(v17, v11);
          if (v47 < v50)
          {
            return 0;
          }
        }
      }

      else
      {
        v48(v17, v11);
      }
    }

    if (!sub_25112BF44(v18, *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_motionList)))
    {
      return 0;
    }

    swift_beginAccess();
    v61 = *(v4 + 16);
    v62 = *(v4 + 24);
    if (*(v61 + 16))
    {
      v63 = sub_25112F9FC();
      if (v64)
      {
        v62 = *(*(v61 + 56) + 48 * v63);
      }
    }

    if (v62 > a3)
    {
      return 0;
    }

    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v65 = sub_251130BE8();
    __swift_project_value_buffer(v65, qword_27F421A38);
    v66 = sub_251130BC8();
    v67 = sub_251131178();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v80[0] = v69;
      v70 = 0x756F72676B636142;
      *v68 = 136315138;
      v71 = 0xE200000000000000;
      v72 = 28494;
      v73 = 0xEA00000000007468;
      v74 = 0x67695220746C6954;
      if (v18 != 3)
      {
        v74 = 0x6E776F6E6B6E55;
        v73 = 0xE700000000000000;
      }

      if (v18 != 2)
      {
        v72 = v74;
        v71 = v73;
      }

      v75 = 0xE300000000000000;
      if (v18)
      {
        v70 = 7562585;
      }

      else
      {
        v75 = 0xEA0000000000646ELL;
      }

      if (v18 <= 1u)
      {
        v76 = v70;
      }

      else
      {
        v76 = v72;
      }

      if (v18 <= 1u)
      {
        v77 = v75;
      }

      else
      {
        v77 = v71;
      }

      v78 = sub_2510FAC50(v76, v77, v80);

      *(v68 + 4) = v78;
      _os_log_impl(&dword_2510F2000, v66, v67, "[AG] Opening gate for '%s' prediction", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x25306CC10](v69, -1, -1);
      MEMORY[0x25306CC10](v68, -1, -1);
    }

    *(v4 + v19) = 1;
    *(v4 + OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_gestureForThePool) = v18;
  }

  v24 = OBJC_IVAR____TtC12HeadGestures22HGPredictionAggregator_predictionsInPool;
  swift_beginAccess();
  v25 = *(v4 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v24) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_251109B2C(0, *(v25 + 2) + 1, 1, v25);
    *(v4 + v24) = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_251109B2C((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[16 * v28];
  v29[32] = v18;
  *(v29 + 5) = a3;
  *(v4 + v24) = v25;
  swift_endAccess();
  if (sub_25111B2EC())
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v30 = sub_251130BE8();
    __swift_project_value_buffer(v30, qword_27F421A38);
    v31 = sub_251130BC8();
    v32 = sub_251131178();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "[AG]Closing gate since recent predictions are consistent";
    goto LABEL_26;
  }

  swift_beginAccess();
  v36 = *(v4 + 16);
  v37 = *(v4 + 48);
  if (*(v36 + 16))
  {
    v38 = sub_25112F9FC();
    if (v39)
    {
      v37 = *(*(v36 + 56) + 48 * v38 + 24);
    }
  }

  if (sub_25111B234(0, v37))
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v40 = sub_251130BE8();
    __swift_project_value_buffer(v40, qword_27F421A38);
    v31 = sub_251130BC8();
    v32 = sub_251131178();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_28;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "[AG]Closing gate since pool has max number of background windows";
LABEL_26:
    v41 = v32;
    v42 = v31;
    v43 = v33;
    v44 = 2;
LABEL_27:
    _os_log_impl(&dword_2510F2000, v42, v41, v34, v43, v44);
    MEMORY[0x25306CC10](v33, -1, -1);
LABEL_28:

    return sub_25111A518();
  }

  v54 = *(*(v4 + v24) + 16);
  v55 = *(v4 + 16);
  v56 = *(v4 + 40);
  if (*(v55 + 16))
  {
    v57 = sub_25112F9FC();
    if (v58)
    {
      v56 = *(*(v55 + 56) + 48 * v57 + 16);
    }
  }

  if (v54 == v56)
  {
    if (qword_27F41DFB0 != -1)
    {
      swift_once();
    }

    v59 = sub_251130BE8();
    __swift_project_value_buffer(v59, qword_27F421A38);

    v31 = sub_251130BC8();
    v60 = sub_251131178();
    if (!os_log_type_enabled(v31, v60))
    {

      return sub_25111A518();
    }

    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = *(*(v4 + v24) + 16);

    v34 = "[AG]Closing gate since there are %ld predictions in pool";
    v41 = v60;
    v42 = v31;
    v43 = v33;
    v44 = 12;
    goto LABEL_27;
  }

  return 0;
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

uint64_t sub_25111D718(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25111D738(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_25111D780()
{
  result = qword_27F41E930;
  if (!qword_27F41E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F41E930);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HGAggregationParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}