uint64_t sub_1A94E4D1C()
{
  *(v0 + 4792) = (*(v0 + 4776))();

  v1 = *(v0 + 4616);
  v2 = *(v0 + 4608);

  return MEMORY[0x1EEE6DFA0](sub_1A94E4D98, v2, v1);
}

uint64_t sub_1A94E4D98()
{
  v20 = v0;
  v1 = *(v0 + 4792);
  if (v1)
  {
    v2 = v1;
    MEMORY[0x1AC585360]();
    if (*((*(v0 + 4472) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 4472) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A957C4F8();
    }

    sub_1A957C538();
  }

  v3 = *(v0 + 4744);
  v4 = *(v0 + 4736);
  v5 = *(v0 + 4712);
  v6 = *(v0 + 4704);
  v7 = *(v0 + 4544);
  v8 = *(v0 + 4536);
  v9 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
  *(v0 + 4800) = v9;
  memcpy(__dst, (v0 + 2072), sizeof(__dst));
  sub_1A937B3DC(v0 + 2072, v0 + 2352);

  TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v6, v5, __dst, v4, v3, (v0 + 16));
  memcpy((v0 + 328), (v0 + 16), 0x138uLL);
  sub_1A9391BAC(v7, v8, &qword_1EB386A18, &qword_1A9587E40);
  v10 = sub_1A957B8C8();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = *(v0 + 4536);
  if (v12 == 1)
  {
    sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
  }

  else
  {
    v14 = sub_1A957B888();
    (*(v11 + 8))(v13, v10);
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v14 = *(*(v0 + 4496) + 344);

LABEL_9:
  *(v0 + 4808) = v14;
  *(v0 + 4452) = *(*(v0 + 4696) + 48);
  v15 = *(v0 + 4472);
  *(v0 + 4816) = v15;
  v18 = (*(*v9 + 368) + **(*v9 + 368));
  v16 = swift_task_alloc();
  *(v0 + 4824) = v16;
  *v16 = v0;
  v16[1] = sub_1A94E50FC;

  return v18(v0 + 328, v14, v15);
}

uint64_t sub_1A94E50FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[604] = a1;

  memcpy(v3 + 80, v3 + 41, 0x138uLL);
  sub_1A94F1FF4((v3 + 80));
  v4 = v2[577];
  v5 = v2[576];

  return MEMORY[0x1EEE6DFA0](sub_1A94E5284, v5, v4);
}

uint64_t sub_1A94E5284()
{
  v1 = *(v0 + 4452);
  v2 = *(v0 + 4584);
  v3 = *(v0 + 4560);
  v4 = *(v0 + 4544);
  sub_1A937B48C(v0 + 2072);
  sub_1A937B48C(v0 + 1232);
  sub_1A937B960(v0 + 1512, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960(v4, &qword_1EB386A18, &qword_1A9587E40);
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);

  v5 = sub_1A957B308();
  (*(*(v5 - 8) + 8))(v3 + v1, v5);
  v6 = *(v0 + 4832);
  *(v0 + 4840) = v6;
  v7 = *(v0 + 4600);
  v8 = *(v7 + 8);
  *(v0 + 4848) = v8;
  *(v7 + 8) = MEMORY[0x1E69E7CC0];

  v9 = swift_task_alloc();
  *(v0 + 4856) = v9;
  *v9 = v0;
  v9[1] = sub_1A94E5418;
  v10 = *(v0 + 4600);

  return sub_1A94E6BD8(v8, v6, v10);
}

uint64_t sub_1A94E5418(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4864) = v1;

  if (v1)
  {

    v5 = v4[577];
    v6 = v4[576];
    v7 = sub_1A94E5728;
  }

  else
  {

    v4[609] = a1;
    v5 = v4[577];
    v6 = v4[576];
    v7 = sub_1A94E5594;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A94E5594()
{
  v8 = v0;
  if (*(v0[562] + 457) == 2)
  {
    v1 = v0[608];
    v7 = v0[609];

    sub_1A94EDE1C(&v7);
    if (v1)
    {
    }

    v3 = v0[605];
    v4 = v0[575];

    v5 = v7;
    *v4 = v3;
    v4[1] = v5;
  }

  else
  {
  }

  sub_1A94F1AC0(v0[575], v0[560], _s15UtteranceRunnerC14SynthesisStateVMa);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A94E5728()
{
  v150 = v0;
  v1 = (v0 + 1296);
  v2 = *(v0 + 4864);
  v3 = *(v0 + 4600);

  sub_1A94F1A60(v3, _s15UtteranceRunnerC14SynthesisStateVMa);
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 4624);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1A94BC938(0, v6[2] + 1, 1, *(v0 + 4624));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1A94BC938((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 4864);
  v10 = *(v0 + 4465);
  v11 = *(v0 + 4632);
  v6[2] = v8 + 1;
  v6[v8 + 4] = v9;
  v12 = v11 + 1;
  v13 = *(v0 + 4632);
  if (v10)
  {
    if (v13 <= 2)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13 <= 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = v13 > 0;
    if (v13 <= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = *(v0 + 4520);
  v17 = *(v0 + 4512);
  v18 = *(v0 + 4504);
  v19 = sub_1A9391D1C();
  (*(v17 + 16))(v16, v19, v18);
  v20 = sub_1A957BC68();
  v21 = sub_1A957CA78();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 4520);
  v24 = *(v0 + 4512);
  v25 = *(v0 + 4504);
  v145 = v6;
  if (v22)
  {
    v141 = *(v0 + 4864);
    v26 = swift_slowAlloc();
    v138 = v23;
    v27 = swift_slowAlloc();
    __dst[0] = v27;
    *v26 = 136315138;
    *(v0 + 4456) = v14;
    *(v0 + 4464) = v15;
    v28 = sub_1A957C198();
    v30 = sub_1A937A5C0(v28, v29, __dst);

    *(v26 + 4) = v30;
    v1 = (v0 + 1296);
    _os_log_impl(&dword_1A9324000, v20, v21, "Utterance encountered error, next fallback state: %s", v26, 0xCu);
    sub_1A9378138(v27);
    MEMORY[0x1AC587CD0](v27, -1, -1);
    v31 = v26;
    v6 = v145;
    MEMORY[0x1AC587CD0](v31, -1, -1);

    (*(v24 + 8))(v138, v25);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  if (v15 < 2u)
  {
    v142 = v15;
    *(v1 + 3169) = v15;
    *(v0 + 4632) = v14;
    *(v0 + 4624) = v6;
    if (*(*(v0 + 4496) + 457) == 1)
    {
      v32 = *(v0 + 4600);
      v33 = sub_1A94F19F8(*(v0 + 4488), v32, _s15UtteranceRunnerC14SynthesisStateVMa);
      v36 = *v32;
      *(v0 + 4640) = *v32;
      v37 = *(v0 + 4600);
      if (v36)
      {
        *v37 = 0;
        *(v0 + 4840) = v36;
        v38 = *(v0 + 4600);
        v39 = *(v38 + 8);
        *(v0 + 4848) = v39;
        *(v38 + 8) = MEMORY[0x1E69E7CC0];

        v40 = swift_task_alloc();
        *(v0 + 4856) = v40;
        *v40 = v0;
        v40[1] = sub_1A94E5418;
        v41 = *(v0 + 4600);

        return sub_1A94E6BD8(v39, v36, v41);
      }

      v67 = *(*(v0 + 4592) + 28);
      v68 = *(v37 + v67);
      if (v68[2])
      {
        v69 = *(*(v0 + 4576) + 80);
        v33 = sub_1A94F19F8(v68 + ((v69 + 32) & ~v69), *(v0 + 4584), type metadata accessor for SpeechSlicer.Slice);
        v70 = v68[2];
        if (v70)
        {
          v71 = swift_isUniquelyReferenced_nonNull_native();
          *(v37 + v67) = v68;
          v135 = v1;
          if (!v71 || (v70 - 1) > v68[3] >> 1)
          {
            v68 = sub_1A94ED9B8(v71, v70, 1, v68);
            *(v37 + v67) = v68;
          }

          v72 = *(v0 + 4600);
          v73 = *(v0 + 4592);
          v74 = *(v0 + 4584);
          v75 = *(v0 + 4576);
          v76 = *(v0 + 4568);
          v139 = *(v0 + 4560);
          sub_1A94F0A6C(0, 1, 0);
          *(v37 + v67) = v68;
          v77 = *(v73 + 24);
          sub_1A937B960(v72 + v77, &qword_1EB388240, &qword_1A95964A0);
          sub_1A94F19F8(v74, v72 + v77, type metadata accessor for SpeechSlicer.Slice);
          (*(v75 + 56))(v72 + v77, 0, 1, v76);
          sub_1A94F19F8(v74 + *(v76 + 24), v139, type metadata accessor for SpeechSlicer.Slice.SliceType);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v78 = *(v0 + 4560);
            v79 = *(v0 + 4496);
            *(v0 + 4648) = *v78;
            *(v0 + 4656) = v78[1];
            v34 = (*((*MEMORY[0x1E69E7D40] & **(v79 + 24)) + 0x288))();
            *(v0 + 4664) = v34;
            v80 = *v34 + 128;
            *(v0 + 4672) = *v80;
            *(v0 + 4680) = v80 & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
            v81 = sub_1A94E3C9C;
            goto LABEL_37;
          }

          v82 = *(v0 + 4584);
          v83 = *(v0 + 4560);
          v84 = *(v0 + 4544);
          v85 = *(v0 + 4496);
          memcpy((v0 + 1232), v83, 0x118uLL);
          v86 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          *(v0 + 4696) = v86;
          sub_1A93A7460(v83 + *(v86 + 64), v84, &qword_1EB386A18, &qword_1A9587E40);
          v87 = *v82;
          *(v0 + 4704) = *v82;
          v88 = v82[1];
          *(v0 + 4712) = v88;
          v89 = *(v0 + 1232);
          *(v0 + 4720) = v89;
          v90 = *(v0 + 1240);
          *(v0 + 4728) = v90;
          *(v0 + 4384) = v87;
          *(v0 + 4392) = v88;
          *(v0 + 4400) = v89;
          *(v0 + 4408) = v90;
          *(v135 + 3152) = 5;
          v91 = *(v85 + 32);
          *(v0 + 4736) = v91;
          v92 = *(v85 + 40);
          *(v0 + 4744) = v92;
          swift_bridgeObjectRetain_n();

          v93._countAndFlagsBits = v91;
          v93._object = v92;
          TTSSpeechEvent.emit(forJob:)(v93);
          v94 = *(v0 + 4432);
          *(v0 + 4344) = *(v0 + 4416);
          *(v0 + 4360) = v94;
          *(v0 + 4376) = *(v0 + 4448);
          v95 = *(v0 + 4400);
          *(v0 + 4312) = *(v0 + 4384);
          *(v0 + 4328) = v95;
          sub_1A946C4C0(v0 + 4312);
          v96 = sub_1A93847E0(v0 + 952);
          if (v142)
          {
            v97 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x198))(v96);
            *(v0 + 4752) = v97;
            memcpy((v0 + 3192), (v0 + 1232), 0x118uLL);
            v146 = (*(*v97 + 464) + **(*v97 + 464));
            v98 = swift_task_alloc();
            *(v0 + 4760) = v98;
            *v98 = v0;
            v98[1] = sub_1A94E3E24;

            return v146(v0 + 2912, v0 + 3192);
          }

          v144 = *(v0 + 1504);
          v147 = *(v0 + 1496);
          v140 = *(v0 + 1425);
          v137 = *(v0 + 1420);
          v136 = *(v135 + 128);
          v134 = *(v135 + 120);
          v132 = *(v0 + 1384);
          v133 = *(v0 + 1376);
          v130 = *(v0 + 1328);
          v131 = *(v0 + 1360);
          v129 = *(v0 + 1344);
          v128 = *(v0 + 1352);
          v99 = *(v0 + 1288);
          v100 = *(v0 + 1280);
          v121 = *(v0 + 1248);
          v126 = *(v135 + 184);
          v127 = *(v135 + 152);
          v124 = *(v135 + 168);
          v125 = *(v135 + 136);
          v122 = *(v0 + 1392);
          v123 = *(v0 + 1264);
          v101 = *(v0 + 1408);
          v119 = v135[1];
          v120 = *v135;
          sub_1A937B3DC(v0 + 1232, v0 + 1792);
          memcpy((v0 + 1512), (v0 + 952), 0x118uLL);
          *(v0 + 2072) = v89;
          *(v0 + 2080) = v90;
          *(v0 + 2088) = v121;
          *(v0 + 2104) = v123;
          *(v0 + 2120) = v100;
          *(v0 + 2128) = v99;
          *(v135 + 840) = v120;
          *(v135 + 856) = v119;
          *(v0 + 2168) = v130;
          *(v0 + 2184) = v129;
          *(v0 + 2192) = v128;
          *(v0 + 2200) = v131;
          *(v0 + 2216) = v133;
          *(v0 + 2224) = v132;
          *(v135 + 936) = v122;
          *(v0 + 2248) = v101;
          *(v135 + 960) = v134;
          *(v0 + 2260) = v137;
          *(v135 + 968) = v136;
          *(v0 + 2265) = v140;
          *(v0 + 2272) = v125;
          *(v0 + 2288) = v127;
          *(v0 + 2304) = v124;
          *(v0 + 2320) = v126;
          *(v0 + 2336) = v147;
          *(v0 + 2344) = v144;
          *(v0 + 4472) = 0;
          if ((TTSIsBaseSystem() & 1) == 0)
          {
            v113 = *(*(v0 + 4496) + 24);
            v114 = MEMORY[0x1E69E7D40];
            *(v0 + 4472) = (*((*MEMORY[0x1E69E7D40] & *v113) + 0x2A0))();
            v34 = (*((*v114 & *v113) + 0x348))();
            *(v0 + 4768) = v34;
            v115 = *v34;
            *(v0 + 4776) = *(*v34 + 416);
            *(v0 + 4784) = (v115 + 416) & 0xFFFFFFFFFFFFLL | 0xF28000000000000;
            v81 = sub_1A94E4D1C;
LABEL_37:
            v33 = v81;
            v35 = 0;

            return MEMORY[0x1EEE6DFA0](v33, v34, v35);
          }

          v102 = *(v0 + 4744);
          v103 = *(v0 + 4736);
          v104 = *(v0 + 4712);
          v105 = *(v0 + 4704);
          v106 = *(v0 + 4544);
          v107 = *(v0 + 4536);
          v108 = (*((*MEMORY[0x1E69E7D40] & **(*(v0 + 4496) + 24)) + 0x258))();
          *(v0 + 4800) = v108;
          memcpy(__dst, (v0 + 2072), 0x118uLL);
          sub_1A937B3DC(v0 + 2072, v0 + 2352);

          TTSAURenderer.RenderRequest.init(ssml:voice:jobIdentifier:)(v105, v104, __dst, v103, v102, (v0 + 16));
          memcpy((v0 + 328), (v0 + 16), 0x138uLL);
          sub_1A9391BAC(v106, v107, &qword_1EB386A18, &qword_1A9587E40);
          v109 = sub_1A957B8C8();
          v110 = *(v109 - 8);
          v111 = (*(v110 + 48))(v107, 1, v109);
          v112 = *(v0 + 4536);
          if (v111 == 1)
          {
            sub_1A937B960(*(v0 + 4536), &qword_1EB386A18, &qword_1A9587E40);
          }

          else
          {
            v116 = sub_1A957B888();
            (*(v110 + 8))(v112, v109);
            if (v116)
            {
LABEL_50:
              *(v0 + 4808) = v116;
              *(v0 + 4452) = *(*(v0 + 4696) + 48);
              v117 = *(v0 + 4472);
              *(v0 + 4816) = v117;
              v148 = (*(*v108 + 368) + **(*v108 + 368));
              v118 = swift_task_alloc();
              *(v0 + 4824) = v118;
              *v118 = v0;
              v118[1] = sub_1A94E50FC;

              return v148(v0 + 328, v116, v117);
            }
          }

          v116 = *(*(v0 + 4496) + 344);

          goto LABEL_50;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return MEMORY[0x1EEE6DFA0](v33, v34, v35);
    }
  }

  v43 = *(v0 + 4528);
  v44 = *(v0 + 4512);
  v45 = *(v0 + 4504);
  v46 = sub_1A9391D1C();
  (*(v44 + 16))(v43, v46, v45);

  v47 = sub_1A957BC68();
  v48 = sub_1A957CA78();

  if (os_log_type_enabled(v47, v48))
  {
    v143 = *(v0 + 4528);
    v49 = *(v0 + 4512);
    v50 = *(v0 + 4504);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    __dst[0] = v52;
    *v51 = 136315394;
    sub_1A9410EB8();
    v53 = sub_1A957D3A8();
    v55 = sub_1A937A5C0(v53, v54, __dst);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = v145;

    v57 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    v58 = MEMORY[0x1AC585390](v145, v57);
    v60 = v59;

    v61 = sub_1A937A5C0(v58, v60, __dst);

    *(v51 + 14) = v61;
    _os_log_impl(&dword_1A9324000, v47, v48, "Utterance: %s failed with errors: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v52, -1, -1);
    MEMORY[0x1AC587CD0](v51, -1, -1);

    (*(v49 + 8))(v143, v50);
  }

  else
  {
    v62 = *(v0 + 4528);
    v63 = *(v0 + 4512);
    v64 = *(v0 + 4504);

    (*(v63 + 8))(v62, v64);
    v56 = v145;
  }

  sub_1A94F1FA0();
  swift_allocError();
  *v65 = v56;
  swift_willThrow();

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1A94E6764()
{
  v1[18] = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A94E681C, v3, v2);
}

uint64_t sub_1A94E681C()
{
  v1 = v0[18];
  if (*(v1 + 456))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = *((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x1F8);
    v5 = v4();
    v6 = [v5 outputFormat];

    v7 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v6 frameCapacity:1];
    v0[21] = v7;

    v8 = (v4)([v7 setFrameLength_]);
    v0[22] = v8;
    v0[2] = v0;
    v0[3] = sub_1A94E6A38;
    v9 = swift_continuation_init();
    v0[17] = sub_1A937829C(&qword_1EB388280, &qword_1A9596538);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A94E6BA4;
    v0[13] = &unk_1F1CED888;
    v0[14] = v9;
    [v8 scheduleBuffer:v7 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A94E6A38()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A94E6B40, v2, v1);
}

uint64_t sub_1A94E6B40()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94E6BA4(uint64_t a1)
{
  v1 = *sub_1A93780F4((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1A94E6BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  sub_1A937829C(&qword_1EB388268, &qword_1A9596520);
  v4[26] = swift_task_alloc();
  v5 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v4[29] = *(v6 + 64);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v7 = *(_s15UtteranceRunnerC14SynthesisStateVMa(0) - 8);
  v4[33] = v7;
  v4[34] = *(v7 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v4[37] = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v9 = sub_1A957C5A8();
  v4[38] = v9;
  v4[39] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A94E6DB8, v9, v8);
}

uint64_t sub_1A94E6DB8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_1A937829C(&qword_1EB388270, &qword_1A9596528);
  v4 = sub_1A94BA628();
  *(v0 + 320) = v4;
  sub_1A94F19F8(v2, v1, _s15UtteranceRunnerC14SynthesisStateVMa);
  v5 = *(v3 + 16);
  *(v0 + 328) = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v6 + 80);
  *(v0 + 84) = v9;
  *(v0 + 336) = *(v6 + 72);
  *(v0 + 344) = 0;
  sub_1A94F19F8(v8 + ((v9 + 32) & ~v9), *(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  v10 = *(v7 + 457);
  if (v10 == 2)
  {
    (*(**(v0 + 320) + 136))(*(v0 + 256));
    goto LABEL_9;
  }

  if (v10 != 1)
  {
LABEL_9:
    sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
    v4 = *(v0 + 320);
LABEL_10:
    v14 = *(v0 + 200);
    *(v0 + 376) = v4;
    *(v0 + 384) = v14;
    v15 = sub_1A957BBE8();
    *(v0 + 392) = v15;
    *(v0 + 400) = v16;
    *(v0 + 152) = v15;
    *(v0 + 160) = v16;
    *(v0 + 408) = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer;
    v17 = swift_task_alloc();
    *(v0 + 416) = v17;
    v18 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
    *v17 = v0;
    v17[1] = sub_1A94E7B40;
    v19 = *(v0 + 208);

    return MEMORY[0x1EEDEE820](v19, v18);
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v11 = *(v0 + 200);
    *(v0 + 120) = [*(*(v0 + 256) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 128) = xmmword_1A95961C0;
    *(v0 + 144) = 0;
    (*(*v11 + 256))(v0 + 120);
    sub_1A9410F60(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  }

  v12 = *(v0 + 200);
  v13 = *(v0 + 256);
  if (*(v12 + 456) == 1)
  {
    sub_1A94E9580(*(v13 + *(*(v0 + 216) + 28)), *(v0 + 288));
LABEL_17:
    v34 = *(v0 + 304);
    v35 = *(v0 + 312);

    return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v34, v35);
  }

  v20 = (*(**(v0 + 320) + 136))(v13);
  if (*(v12 + 457) != 1)
  {
    goto LABEL_17;
  }

  v39 = *(v0 + 280);
  v40 = *(v0 + 288);
  v41 = *(v0 + 264);
  v42 = *(v0 + 320);
  v21 = *(v0 + 256);
  v22 = *(v0 + 216);
  v23 = *(v0 + 200);
  v24 = (*(v0 + 84) + 32) & ~*(v0 + 84);
  v37 = *(v0 + 248);
  v38 = *(v0 + 232) + v24;
  v25 = *((*MEMORY[0x1E69E7D40] & *v23[3]) + 0x1F8);
  v26 = (v25)(v20);
  v44 = *(v21 + *(v22 + 24));
  v27 = [v44 format];
  [v26 setOutputFormat_];

  v28 = v25();
  [v28 play];

  v29 = ((*v23)[21])();
  *(v0 + 352) = v29;
  sub_1A94F19F8(v21, v37, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v40, v39, _s15UtteranceRunnerC14SynthesisStateVMa);
  v30 = (v38 + *(v41 + 80)) & ~*(v41 + 80);
  v31 = swift_allocObject();
  *(v0 + 360) = v31;
  *(v31 + 16) = v23;
  *(v31 + 24) = v42;
  sub_1A94F1AC0(v37, v31 + v24, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v39, v31 + v30, _s15UtteranceRunnerC14SynthesisStateVMa);
  v32 = *(*v29 + 192);

  v43 = (v32 + *v32);
  v33 = swift_task_alloc();
  *(v0 + 368) = v33;
  *v33 = v0;
  v33[1] = sub_1A94E79E0;

  return v43(v44, sub_1A94F2C6C, v31);
}

uint64_t sub_1A94E73E4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 344) + 1;
  sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  if (v2 == v1)
  {
LABEL_6:
    v7 = *(v0 + 200);
    *(v0 + 376) = *(v0 + 320);
    *(v0 + 384) = v7;
    v8 = sub_1A957BBE8();
    *(v0 + 392) = v8;
    *(v0 + 400) = v9;
    *(v0 + 152) = v8;
    *(v0 + 160) = v9;
    *(v0 + 408) = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer;
    v10 = swift_task_alloc();
    *(v0 + 416) = v10;
    v11 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
    *v10 = v0;
    v10[1] = sub_1A94E7B40;
    v12 = *(v0 + 208);

    return MEMORY[0x1EEDEE820](v12, v11);
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 344) + 1;
  *(v0 + 344) = v4;
  v5 = *(v0 + 200);
  sub_1A94F19F8(*(v0 + 176) + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + v3 * v4, *(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
  v6 = *(v5 + 457);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      (*(**(v0 + 320) + 136))(*(v0 + 256));
    }

    sub_1A94F1A60(*(v0 + 256), type metadata accessor for TTSAURenderer.SpeechBuffer);
    goto LABEL_6;
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v13 = *(v0 + 200);
    *(v0 + 120) = [*(*(v0 + 256) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 128) = xmmword_1A95961C0;
    *(v0 + 144) = 0;
    (*(*v13 + 256))(v0 + 120);
    sub_1A9410F60(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  }

  v14 = *(v0 + 200);
  v15 = *(v0 + 256);
  if (*(v14 + 456) == 1)
  {
    sub_1A94E9580(*(v15 + *(*(v0 + 216) + 28)), *(v0 + 288));
LABEL_17:
    v30 = *(v0 + 304);
    v31 = *(v0 + 312);

    return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v30, v31);
  }

  v16 = (*(**(v0 + 320) + 136))(v15);
  if (*(v14 + 457) != 1)
  {
    goto LABEL_17;
  }

  v35 = *(v0 + 280);
  v36 = *(v0 + 288);
  v37 = *(v0 + 264);
  v38 = *(v0 + 320);
  v17 = *(v0 + 256);
  v18 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = (*(v0 + 84) + 32) & ~*(v0 + 84);
  v33 = *(v0 + 248);
  v34 = *(v0 + 232) + v20;
  v21 = *((*MEMORY[0x1E69E7D40] & *v19[3]) + 0x1F8);
  v22 = (v21)(v16);
  v40 = *(v17 + *(v18 + 24));
  v23 = [v40 format];
  [v22 setOutputFormat_];

  v24 = v21();
  [v24 play];

  v25 = ((*v19)[21])();
  *(v0 + 352) = v25;
  sub_1A94F19F8(v17, v33, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v36, v35, _s15UtteranceRunnerC14SynthesisStateVMa);
  v26 = (v34 + *(v37 + 80)) & ~*(v37 + 80);
  v27 = swift_allocObject();
  *(v0 + 360) = v27;
  *(v27 + 16) = v19;
  *(v27 + 24) = v38;
  sub_1A94F1AC0(v33, v27 + v20, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v35, v27 + v26, _s15UtteranceRunnerC14SynthesisStateVMa);
  v28 = *(*v25 + 192);

  v39 = (v28 + *v28);
  v29 = swift_task_alloc();
  *(v0 + 368) = v29;
  *v29 = v0;
  v29[1] = sub_1A94E79E0;

  return v39(v40, sub_1A94F2C6C, v27);
}

uint64_t sub_1A94E79E0()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E73E4, v3, v2);
}

uint64_t sub_1A94E7B40()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    if (v2[25])
    {
      swift_getObjectType();
      v3 = sub_1A957C5A8();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v7 = sub_1A94E8428;
    v6 = v3;
  }

  else
  {
    v6 = v2[38];
    v5 = v2[39];
    v7 = sub_1A94E7C94;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A94E7C94()
{
  v51 = v0;
  v1 = *(v0 + 208);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v2 = *(v0 + 288);

    v3 = _s15UtteranceRunnerC14SynthesisStateVMa;
    v4 = v2;
LABEL_13:
    v14 = sub_1A94F1A60(v4, v3);
    if (*(*(v0 + 200) + 457) == 1)
    {
      v15 = swift_task_alloc();
      *(v0 + 456) = v15;
      *v15 = v0;
      v15[1] = sub_1A94E87D8;

      return sub_1A94E6764();
    }

    v17 = (*(**(v0 + 320) + 168))(v14);
    v18 = v17;
    v19 = *(v17 + 16);
    if (!v19)
    {

      v21 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v20 = *(v0 + 224);
    v21 = sub_1A94EDCC4(*(v17 + 16), 0);
    v22 = sub_1A94F07E0(&v50, v21 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19, v18);
    v23 = sub_1A932D088(v50);
    if (v22 == v19)
    {

LABEL_21:

      v26 = *(v0 + 8);

      return v26(v21);
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }

  v5 = *(v0 + 408);
  v6 = *(v0 + 200);
  sub_1A94F1AC0(v1, *(v0 + 240), type metadata accessor for TTSAURenderer.SpeechBuffer);
  if ((*(v6 + v5) & 1) == 0)
  {
    v7 = *(v0 + 408);
    v8 = *(v0 + 200);
    *(v0 + 16) = 4;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0;
    *(v0 + 80) = 10;
    TTSSpeechEvent.emit(forJob:)(v8[2]);
    *(&v8->_countAndFlagsBits + v7) = 1;
  }

  v9 = *(*(v0 + 200) + 457);
  if (v9 == 2)
  {
    (*(**(v0 + 320) + 136))(*(v0 + 240));
    goto LABEL_12;
  }

  if (v9 != 1)
  {
LABEL_12:
    v12 = *(v0 + 288);
    v13 = *(v0 + 240);

    sub_1A94F1A60(v12, _s15UtteranceRunnerC14SynthesisStateVMa);
    v3 = type metadata accessor for TTSAURenderer.SpeechBuffer;
    v4 = v13;
    goto LABEL_13;
  }

  if ((TTSIsBaseSystem() & 1) == 0)
  {
    v10 = *(v0 + 200);
    *(v0 + 88) = [*(*(v0 + 240) + *(*(v0 + 216) + 24)) avBuffer];
    *(v0 + 96) = xmmword_1A95961C0;
    *(v0 + 112) = 0;
    (*(*v10 + 256))(v0 + 88);
    sub_1A9410F60(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  }

  v11 = *(v0 + 200);
  if (*(v11 + 456) == 1)
  {
    sub_1A94E9580(*(*(v0 + 240) + *(*(v0 + 216) + 28)), *(v0 + 288));
    goto LABEL_28;
  }

  v27 = (*(**(v0 + 320) + 136))(*(v0 + 240));
  if (*(v11 + 457) != 1)
  {
LABEL_28:
    v24 = *(v0 + 304);
    v25 = *(v0 + 312);
    v23 = sub_1A94E85A8;

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }

  v43 = *(v0 + 280);
  v44 = *(v0 + 288);
  v46 = *(v0 + 264);
  v47 = *(v0 + 320);
  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v45 = *(v0 + 232);
  v42 = *(v0 + 224);
  v30 = *(v0 + 216);
  v31 = *(v0 + 200);
  v32 = *((*MEMORY[0x1E69E7D40] & *v31[3]) + 0x1F8);
  v33 = (v32)(v27);
  v49 = *(v29 + *(v30 + 24));
  v34 = [v49 format];
  [v33 setOutputFormat_];

  v35 = v32();
  [v35 play];

  v36 = ((*v31)[21])();
  *(v0 + 432) = v36;
  sub_1A94F19F8(v29, v28, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F19F8(v44, v43, _s15UtteranceRunnerC14SynthesisStateVMa);
  v37 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v38 = (v45 + *(v46 + 80) + v37) & ~*(v46 + 80);
  v39 = swift_allocObject();
  *(v0 + 440) = v39;
  *(v39 + 16) = v31;
  *(v39 + 24) = v47;
  sub_1A94F1AC0(v28, v39 + v37, type metadata accessor for TTSAURenderer.SpeechBuffer);
  sub_1A94F1AC0(v43, v39 + v38, _s15UtteranceRunnerC14SynthesisStateVMa);
  v40 = *(*v36 + 192);

  v48 = (v40 + *v40);
  v41 = swift_task_alloc();
  *(v0 + 448) = v41;
  *v41 = v0;
  v41[1] = sub_1A94E8678;

  return v48(v49, sub_1A94F1B28, v39);
}

uint64_t sub_1A94E8428()
{
  v1 = v0[36];
  v0[21] = v0[53];
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  swift_willThrowTypedImpl();
  sub_1A94F1A60(v1, _s15UtteranceRunnerC14SynthesisStateVMa);
  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x1EEE6DFA0](sub_1A94E84D8, v2, v3);
}

uint64_t sub_1A94E84D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94E85A8()
{
  sub_1A94F1A60(v0[30], type metadata accessor for TTSAURenderer.SpeechBuffer);
  v1 = swift_task_alloc();
  v0[52] = v1;
  v2 = sub_1A937829C(&qword_1EB388278, &qword_1A9596530);
  *v1 = v0;
  v1[1] = sub_1A94E7B40;
  v3 = v0[26];

  return MEMORY[0x1EEDEE820](v3, v2);
}

uint64_t sub_1A94E8678()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E85A8, v3, v2);
}

uint64_t sub_1A94E87D8()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A94E88F8, v3, v2);
}

uint64_t sub_1A94E88F8()
{
  v10 = v0;
  v1 = (*(**(v0 + 320) + 168))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 224);
    v5 = sub_1A94EDCC4(*(v1 + 16), 0);
    v6 = sub_1A94F07E0(&v9, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3, v2);
    result = sub_1A932D088(v9);
    if (v6 != v3)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v0 + 8);

  return v8(v5);
}

void sub_1A94E8A60(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer;
  if ((*(a2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) & 1) == 0)
  {
    TTSSpeechEvent.emit(forJob:)(*(a2 + 32));
    *(a2 + v10) = 1;
  }

  if (a1)
  {
    (*(*a3 + 152))(a4);
    if (*(a2 + 457) == 1)
    {
      v11 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
      sub_1A94E9580(*(a4 + *(v11 + 28)), a5);
    }
  }
}

uint64_t sub_1A94E8B4C()
{
  v1[5] = v0;
  sub_1A937829C(&qword_1EB388220, &qword_1A9596240);
  v1[6] = swift_task_alloc();
  v2 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1A957BC88();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v5 = sub_1A957C5A8();
  v1[13] = v5;
  v1[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94E8CF4, v5, v4);
}

uint64_t sub_1A94E8CF4()
{
  v25 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_1A9391D1C();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v7)
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v23 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1A937A5C0(*(v11 + 32), *(v11 + 40), v23);
    _os_log_impl(&dword_1A9324000, v5, v6, "Resuming utterance with id %s", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  *v23 = xmmword_1A95961D0;
  *&v23[16] = xmmword_1A958B1E0;
  (*(v17->_countAndFlagsBits + 256))(v23);
  *v23 = 2;
  memset(&v23[8], 0, 56);
  v24 = 10;
  TTSSpeechEvent.emit(forJob:)(v17[2]);
  v18 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  swift_beginAccess();
  sub_1A9391BAC(v17 + v18, v16, &qword_1EB388220, &qword_1A9596240);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    sub_1A937B960(v0[6], &qword_1EB388220, &qword_1A9596240);

    v19 = v0[1];

    return v19();
  }

  else
  {
    sub_1A94F1AC0(v0[6], v0[9], _s15UtteranceRunnerC14SynthesisStateVMa);
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_1A94E9030;
    v22 = v0[9];

    return sub_1A94E25C0(v22);
  }
}

uint64_t sub_1A94E9030()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A94E9150, v3, v2);
}

uint64_t sub_1A94E9150()
{
  sub_1A94F1A60(*(v0 + 72), _s15UtteranceRunnerC14SynthesisStateVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94E91E4(char a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1A957BC88();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A9391D1C();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_1A957BC68();
  v13 = sub_1A957CA68();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1A937A5C0(*(v2 + 32), *(v2 + 40), &v20);
    _os_log_impl(&dword_1A9324000, v12, v13, "Completed utterance with id %s", v14, 0xCu);
    sub_1A9378138(v15);
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  LOBYTE(v20) = a1 & 1;
  v23 = 7;
  TTSSpeechEvent.emit(forJob:)(*(v2 + 32));
  v20 = a1 & 1;
  v21 = xmmword_1A95961E0;
  v22 = 0;
  (*(*v2 + 256))(&v20);
  sub_1A9391BAC(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v6, &qword_1EB3871A8, &qword_1A958BE88);
  v16 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    return sub_1A937B960(v6, &qword_1EB3871A8, &qword_1A958BE88);
  }

  v20 = 0;
  sub_1A957C828();
  return (*(v17 + 8))(v6, v16);
}

uint64_t sub_1A94E9538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A94E9580(__n128 *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v40 - v5;
  v7 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = v40 - v8;
  v9 = sub_1A937829C(&qword_1EB388240, &qword_1A95964A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v40 - v10;
  v12 = type metadata accessor for SpeechSlicer.Slice(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  sub_1A9391BAC(a2 + *(v16 + 24), v11, &qword_1EB388240, &qword_1A95964A0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1A937B960(v11, &qword_1EB388240, &qword_1A95964A0);
  }

  v42 = v6;
  sub_1A94F1AC0(v11, v15, type metadata accessor for SpeechSlicer.Slice);
  v18 = a1[1].n128_u64[0];
  if (v18)
  {
    v19 = a1 + 2;
    v20 = *v15;
    v21 = v15[1];
    v40[0] = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation;
    v41 = v15;
    v40[2] = v20;
    v40[1] = v21;
    do
    {
      v26 = v19[1];
      v56[0] = *v19;
      v56[1] = v26;
      v27 = v19[3];
      v29 = *v19;
      v28 = v19[1];
      v56[2] = v19[2];
      v56[3] = v27;
      v48 = v29;
      v49 = v28;
      v30 = v19[3];
      v50 = v19[2];
      v51 = v30;
      sub_1A94F1934(v56, &v46);
      sub_1A9474C60(0, &v52);
      sub_1A94F1990(v56);
      v24 = v54;
      v31 = v54;
      if (v54 != 255)
      {
        v22 = v52;
        v23 = v53;
        if (v54 > 2u)
        {
          v45 = v55;
          v34 = v42;
          sub_1A9391BAC(v44 + v40[0], v42, &qword_1EB3871A8, &qword_1A958BE88);
          v35 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(v34, 1, v35) == 1)
          {
            sub_1A937B960(v34, &qword_1EB3871A8, &qword_1A958BE88);
            v37 = 1;
            v38 = v43;
          }

          else
          {
            v48.n128_u64[0] = v22;
            v48.n128_u64[1] = v23;
            v49.n128_u64[0] = v31 | 0x2000000000000000;
            v49.n128_u64[1] = v45;
            sub_1A9410FE0(v22, v23, v24);
            v38 = v43;
            sub_1A957C818();
            (*(v36 + 8))(v34, v35);
            v37 = 0;
          }

          v39 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
          (*(*(v39 - 8) + 56))(v38, v37, 1, v39);
          sub_1A937B960(v38, &qword_1EB388200, &unk_1A95961F0);
          v15 = v41;
          v25 = v45;
        }

        else
        {
          v32 = v55;
          if (v54)
          {
            if (v54 == 1)
            {
              sub_1A94F19E4(v52, v53, v54);
              v46.n128_u64[0] = v22;
              v46.n128_u64[1] = v23;
              v33 = 1;
            }

            else
            {
              sub_1A94F19E4(v52, v53, v54);
              v46.n128_u64[0] = v22;
              v46.n128_u64[1] = v23;
              v33 = 2;
            }

            v47 = v33;
          }

          else
          {
            sub_1A94F19E4(v52, v53, 0);
            v46.n128_u64[0] = v22;
            v46.n128_u64[1] = v23;
            v47 = 0;
          }

          sub_1A9474C48(&v46, v32, &v48);
          v23 = v48.n128_i64[1];
          v22 = v48.n128_u64[0];
          v24 = v49.n128_u8[0];
          v25 = v49.n128_u64[1];
        }

        v48.n128_u64[0] = v22;
        v48.n128_u64[1] = v23;
        v49.n128_u64[0] = v24 | 0x2000000000000000;
        v49.n128_u64[1] = v25;
        sub_1A93A278C(&v48);
        sub_1A9410F60(v48.n128_u64[0], v48.n128_i64[1], v49.n128_u64[0]);
      }

      v19 += 4;
      --v18;
    }

    while (v18);
  }

  return sub_1A94F1A60(v15, type metadata accessor for SpeechSlicer.Slice);
}

uint64_t sub_1A94E9B1C()
{
  v1[178] = v0;
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v3 = sub_1A957C5A8();
  v1[179] = v3;
  v1[180] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A94E9BD8, v3, v2);
}

uint64_t sub_1A94E9BD8()
{
  v1 = v0[178];
  v3 = v1[55];
  v2 = v1[56];
  sub_1A93780F4(v1 + 52, v3);
  v4 = v1[3];
  memcpy(v0 + 2, v1 + 8, 0x118uLL);
  memcpy(v0 + 37, v1 + 8, 0x118uLL);
  sub_1A9391BAC((v0 + 2), (v0 + 72), &unk_1EB387BC0, &qword_1A9587E30);
  v5 = swift_task_alloc();
  v0[181] = v5;
  *v5 = v0;
  v5[1] = sub_1A94E9CE4;

  return sub_1A93A1FF0(v4, v0 + 37, v3, v2);
}

uint64_t sub_1A94E9CE4(uint64_t a1)
{
  v3 = *v2;
  v3[182] = a1;
  v3[183] = v1;

  if (v1)
  {
    memcpy(v3 + 107, v3 + 37, 0x118uLL);
    sub_1A937B960((v3 + 107), &unk_1EB387BC0, &qword_1A9587E30);
    v4 = v3[180];
    v5 = v3[179];
    v6 = sub_1A94EA084;
  }

  else
  {
    memcpy(v3 + 142, v3 + 37, 0x118uLL);
    sub_1A937B960((v3 + 142), &unk_1EB387BC0, &qword_1A9587E30);
    v4 = v3[180];
    v5 = v3[179];
    v6 = sub_1A94E9E54;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A94E9E54()
{
  v0[177] = v0[182];
  v1 = swift_task_alloc();
  v0[184] = v1;
  v2 = sub_1A937829C(&qword_1EB388210, &qword_1A9596238);
  v3 = type metadata accessor for SpeechSlicer.Slice(0);
  v4 = sub_1A94EB05C();
  *v1 = v0;
  v1[1] = sub_1A94E9F48;
  v5 = v0[178];

  return sub_1A9379A84(&unk_1A9596230, v5, v2, v3, v4);
}

void sub_1A94E9F48(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    v5 = *(v4 + 8);

    v5(a1);
  }
}

uint64_t sub_1A94EA09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[44] = a2;
  v3[45] = a3;
  v3[43] = a1;
  v3[46] = type metadata accessor for SpeechSlicer.Slice(0);
  v3[47] = swift_task_alloc();
  v4 = sub_1A957B308();
  v3[48] = v4;
  v3[49] = *(v4 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v3[52] = swift_task_alloc();
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  v6 = sub_1A957C5A8();
  v3[53] = v6;
  v3[54] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A94EA218, v6, v5);
}

uint64_t sub_1A94EA218()
{
  v1 = v0[52];
  v2 = v0[46];
  v3 = v0[43];
  sub_1A94F19F8(v0[44], v3, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F19F8(v3 + *(v2 + 24), v1, type metadata accessor for SpeechSlicer.Slice.SliceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A94F1A60(v0[52], type metadata accessor for SpeechSlicer.Slice.SliceType);
LABEL_3:

    v4 = v0[1];

    return v4();
  }

  v6 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[48];
  v10 = v0[45];
  memcpy(v0 + 2, v6, 0x118uLL);
  v11 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
  v0[55] = v11;
  (*(v8 + 32))(v7, &v6[*(v11 + 48)], v9);
  v12 = *(v10 + 56);
  v0[37] = *sub_1A937929C();
  v0[38] = v12;
  v0[56] = sub_1A937B594();
  if (sub_1A957CD88())
  {
    v13 = v0[50];
    v14 = swift_task_alloc();
    v0[57] = v14;
    *(v14 + 16) = v13;
    v15 = swift_task_alloc();
    v0[58] = v15;
    *v15 = v0;
    v15[1] = sub_1A94EA640;
    v16 = v0[47];
    v17 = sub_1A94F247C;
    v18 = v14;
  }

  else
  {
    v19 = *(v0[45] + 56);
    v0[39] = *sub_1A93792B4();
    v0[40] = v19;
    if (sub_1A957CD88())
    {
      v20 = swift_task_alloc();
      v0[59] = v20;
      *v20 = v0;
      v20[1] = sub_1A94EAA40;
      v16 = v0[47];
      v17 = sub_1A94EB2B0;
      v18 = 0;
    }

    else
    {
      v21 = *(v0[45] + 56);
      v0[41] = *sub_1A93792A8();
      v0[42] = v21;
      if ((sub_1A957CD88() & 1) == 0)
      {
        sub_1A937B48C((v0 + 2));
        v26 = v0[52];
        v27 = *(v0[55] + 64);
        (*(v0[49] + 8))(v0[50], v0[48]);
        sub_1A937B960(v26 + v27, &qword_1EB386A18, &qword_1A9587E40);
        goto LABEL_3;
      }

      v22 = v0[50];
      v23 = v0[45];
      v24 = swift_task_alloc();
      v0[60] = v24;
      v24[2] = v23;
      v24[3] = v22;
      v24[4] = v0 + 2;
      v25 = swift_task_alloc();
      v0[61] = v25;
      *v25 = v0;
      v25[1] = sub_1A94EAD68;
      v16 = v0[47];
      v17 = sub_1A94F2470;
      v18 = v24;
    }
  }

  return sub_1A93A2800(v16, &type metadata for TTSMarkup.SpeechText, v17, v18, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
}

uint64_t sub_1A94EA640()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EA784, v3, v2);
}

uint64_t sub_1A94EA784()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = *(v0[45] + 56);
  v0[39] = *sub_1A93792B4();
  v0[40] = v3;
  if (sub_1A957CD88())
  {
    v4 = swift_task_alloc();
    v0[59] = v4;
    *v4 = v0;
    v4[1] = sub_1A94EAA40;
    v5 = v0[47];
    v6 = sub_1A94EB2B0;
    v7 = 0;
LABEL_5:

    return sub_1A93A2800(v5, &type metadata for TTSMarkup.SpeechText, v6, v7, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  }

  v8 = *(v0[45] + 56);
  v0[41] = *sub_1A93792A8();
  v0[42] = v8;
  if (sub_1A957CD88())
  {
    v9 = v0[50];
    v10 = v0[45];
    v11 = swift_task_alloc();
    v0[60] = v11;
    v11[2] = v10;
    v11[3] = v9;
    v11[4] = v0 + 2;
    v12 = swift_task_alloc();
    v0[61] = v12;
    *v12 = v0;
    v12[1] = sub_1A94EAD68;
    v5 = v0[47];
    v6 = sub_1A94F2470;
    v7 = v11;
    goto LABEL_5;
  }

  sub_1A937B48C((v0 + 2));
  v14 = v0[52];
  v15 = *(v0[55] + 64);
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_1A937B960(v14 + v15, &qword_1EB386A18, &qword_1A9587E40);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A94EAA40()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EAB60, v3, v2);
}

uint64_t sub_1A94EAB60()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = *(v0[45] + 56);
  v0[41] = *sub_1A93792A8();
  v0[42] = v3;
  if (sub_1A957CD88())
  {
    v4 = v0[50];
    v5 = v0[45];
    v6 = swift_task_alloc();
    v0[60] = v6;
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = v0 + 2;
    v7 = swift_task_alloc();
    v0[61] = v7;
    *v7 = v0;
    v7[1] = sub_1A94EAD68;
    v8 = v0[47];

    return sub_1A93A2800(v8, &type metadata for TTSMarkup.SpeechText, sub_1A94F2470, v6, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  }

  else
  {
    sub_1A937B48C((v0 + 2));
    v10 = v0[52];
    v11 = *(v0[55] + 64);
    (*(v0[49] + 8))(v0[50], v0[48]);
    sub_1A937B960(v10 + v11, &qword_1EB386A18, &qword_1A9587E40);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A94EAD68()
{
  v1 = *v0;

  v2 = *(v1 + 432);
  v3 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1A94EAEAC, v3, v2);
}

uint64_t sub_1A94EAEAC()
{
  v1 = v0[47];
  v2 = v0[43];
  sub_1A937B48C((v0 + 2));
  sub_1A94F1A60(v2, type metadata accessor for SpeechSlicer.Slice);
  sub_1A94F1AC0(v1, v2, type metadata accessor for SpeechSlicer.Slice);
  v3 = v0[52];
  v4 = *(v0[55] + 64);
  (*(v0[49] + 8))(v0[50], v0[48]);
  sub_1A937B960(v3 + v4, &qword_1EB386A18, &qword_1A9587E40);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A94EAFB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A9382328;

  return sub_1A94EA09C(a1, a2, v2);
}

unint64_t sub_1A94EB05C()
{
  result = qword_1EB388218;
  if (!qword_1EB388218)
  {
    sub_1A93A7B68(&qword_1EB388210, &qword_1A9596238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388218);
  }

  return result;
}

uint64_t sub_1A94EB0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(a1 + 8);
  v13[0] = *a1;
  v13[1] = v9;
  v14 = *(a1 + 16);
  (*(v7 + 16))(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94F2484, a3);
}

uint64_t sub_1A94EB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1A957C0F8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6(a2, a3, v7, v9);
}

uint64_t sub_1A94EB304(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, void *))
{

  v59 = a2;
  v60 = a1;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  TransformableString.init(_:)(v5);
  v6 = sub_1A94F0BB4(MEMORY[0x1E69E7CC0]);
  v7 = 0;
  v64 = v6;
LABEL_3:
  v8 = (&unk_1F1CFB020 + 12 * v7);
  v10 = v8[8];
  v9 = v8[9];
  v11 = v9 - v10;
  if (v9 < v10)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v8[10];
  v61 = v7 + 1;
  while (1)
  {
    v14 = v10 + v12;
    if (__CFADD__(v10, v12))
    {
      break;
    }

    v15 = v13 + v12;
    if (__CFADD__(v13, v12))
    {
      goto LABEL_42;
    }

    if (HIWORD(v15) > 0x10u || (v15 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_16;
    }

    v16 = sub_1A957C218();
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v64;
    v62[0] = v64;
    v20 = sub_1A937BEE0(v10 + v12);
    v22 = v64[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_44;
    }

    v26 = v21;
    if (v64[3] < v25)
    {
      sub_1A94F00C4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1A937BEE0(v10 + v12);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_55;
      }

LABEL_14:
      v6 = v62[0];
      if (v26)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v30 = v20;
    sub_1A94F034C();
    v20 = v30;
    v6 = v62[0];
    if (v26)
    {
LABEL_15:
      v28 = (v6[7] + 16 * v20);
      *v28 = v16;
      v28[1] = v18;

      v64 = v6;
LABEL_16:
      if (v11 == v12)
      {
        goto LABEL_2;
      }

      goto LABEL_17;
    }

LABEL_21:
    v6[(v20 >> 6) + 8] |= 1 << v20;
    *(v6[6] + 4 * v20) = v14;
    v31 = (v6[7] + 16 * v20);
    *v31 = v16;
    v31[1] = v18;
    v32 = v6[2];
    v24 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v24)
    {
      __break(1u);
      goto LABEL_52;
    }

    v6[2] = v33;
    v64 = v6;
    if (v11 == v12)
    {
LABEL_2:
      v7 = v61;
      if (v61 != 36)
      {
        goto LABEL_3;
      }

      v34 = &unk_1F1CFB220;
      v35 = 7;
      while (2)
      {
        v38 = *(v34 - 4);
        v39 = *(v34 - 1);
        v40 = *v34;
        swift_bridgeObjectRetain_n();
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v62[0] = v64;
        v42 = sub_1A937BEE0(v38);
        v44 = v64[2];
        v45 = (v43 & 1) == 0;
        v24 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v24)
        {
          goto LABEL_53;
        }

        v47 = v43;
        if (v64[3] >= v46)
        {
          if (v41)
          {
            goto LABEL_32;
          }

          v53 = v42;
          sub_1A94F034C();
          v42 = v53;
          v49 = v62[0];
          if (v47)
          {
            goto LABEL_25;
          }

LABEL_33:
          v49[(v42 >> 6) + 8] |= 1 << v42;
          *(v49[6] + 4 * v42) = v38;
          v50 = (v49[7] + 16 * v42);
          *v50 = v39;
          v50[1] = v40;

          v51 = v49[2];
          v24 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v24)
          {
            goto LABEL_54;
          }

          v49[2] = v52;
        }

        else
        {
          sub_1A94F00C4(v46, v41);
          v42 = sub_1A937BEE0(v38);
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_55;
          }

LABEL_32:
          v49 = v62[0];
          if ((v47 & 1) == 0)
          {
            goto LABEL_33;
          }

LABEL_25:
          v36 = (v49[7] + 16 * v42);
          *v36 = v39;
          v36[1] = v40;
        }

        v64 = v49;
        v34 += 3;
        if (!--v35)
        {
          MEMORY[0x1EEE9AC00](v37);
          TransformableString.withTransformation<A>(_:)(sub_1A94F26F0);
          v14 = v65;
          v6 = v66;
          v11 = v59;
          v12 = v60;
          if (v65 == v60 && v66 == v59 || (sub_1A957D3E8() & 1) != 0)
          {
          }

          goto LABEL_45;
        }

        continue;
      }
    }

LABEL_17:
    v29 = __CFADD__(v12, 1);
    v12 = (v12 + 1);
    if (v29)
    {
      goto LABEL_43;
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
  v54 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v54 = v12;
  }

  v55 = 7;
  if (((v11 >> 60) & ((v12 & 0x800000000000000) == 0)) != 0)
  {
    v55 = 11;
  }

  v56 = v55 | (v54 << 16);

  v62[0] = v14;
  v62[1] = v6;
  v63 = 1;
  a3(15, v56, v62);
  sub_1A94D9AC4(v62);
}

uint64_t sub_1A94EB820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a4;
  v34 = a3;
  v38 = a5;
  v7 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - v14);
  v16 = *a1;
  v32 = a1[1];
  v33 = v16;
  v17 = *(a2 + 24);
  v18 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x2D0))(v13);
  v20 = v19;
  v21 = sub_1A957B308();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v31 = *(a1 + 1);
  v23(v9, v34, v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  memcpy(v39, v36, 0x118uLL);
  v24 = CoreSynthesizer.Voice.cannonicId.getter();
  sub_1A9497B0C(v18, v20, v9, v24, v25, v15);
  v26 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x3C0))(v15);
  *&v39[0] = v33;
  *(&v39[0] + 1) = v32;
  v39[1] = v31;
  v27 = v35;
  sub_1A94F19F8(v15, v35, type metadata accessor for CoreSynthesizer.Substitution.Context);
  v28 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  sub_1A94F1AC0(v27, v29 + v28, type metadata accessor for CoreSynthesizer.Substitution.Context);
  TTSMarkup.SpeechText.transformed(_:)(sub_1A94F281C, v38);

  return sub_1A94F1A60(v15, type metadata accessor for CoreSynthesizer.Substitution.Context);
}

void *sub_1A94EBB88(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A94EDB90(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A94EBC8C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = a1;
  v8 = *(a4 + 16);

  if (v8)
  {
    v9 = *(type metadata accessor for CoreSynthesizer.Substitution(0) - 8);
    v10 = a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a2(&v13, &v14, v10);
      if (v4)
      {
        break;
      }

      v7 = v13;
      v14 = v13;
      v10 += v11;
      if (!--v8)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_1A94EBD90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = swift_allocObject();
  sub_1A94EBDF8(a1, a2, v5, a4);
  return v8;
}

uint64_t sub_1A94EBDF8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1A957BC88();
  MEMORY[0x1EEE9AC00](v10);
  type metadata accessor for TTSExecutor();
  *(v4 + 16) = TTSExecutor.__allocating_init()();
  *(v4 + 457) = 0;
  v11 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v12 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer) = 0;
  *(v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) = 0;
  *(v5 + 24) = a1;
  sub_1A9410E08(a2, v5 + 32);
  *(v5 + 456) = a3;
  sub_1A9391BAC(a4, v5 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  sub_1A9378344(a2 + 320, &v48);
  if (!v51)
  {
    v37 = a4;
    v29 = v48;
    v28 = v49;
    v36 = a1;

    TTSMarkup.SpeechDocument.init(ssml:)(v29, v28, &v43);
    MEMORY[0x1EEE9AC00](v30);
    *&v35[-32] = v29;
    *&v35[-24] = v28;
    a4 = v37;
    *&v35[-16] = v37;
    TTSMarkupSpeech.transformed<A>(of:_:)(sub_1A94EDDC0, &v35[-48], &type metadata for TTSMarkup.SpeechDocument, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechDocument, &protocol witness table for TTSMarkup.SpeechText, &v38);

    sub_1A9377B5C(&v43);
    v43 = v38;
    v44 = v39;
    v45 = v40;
    *(&v39 + 1) = &type metadata for TTSMarkup.SpeechDocument;
    *&v40 = &protocol witness table for TTSMarkup.SpeechDocument;
    v31 = swift_allocObject();
    *&v38 = v31;
    v32 = v44;
    v31[1] = v43;
    v31[2] = v32;
    v31[3] = v45;

    sub_1A9410E64(a2);
    v33 = &v38;
LABEL_6:
    sub_1A932D070(v33, v5 + 416);
    goto LABEL_7;
  }

  if (v51 != 1)
  {
    sub_1A9410E64(a2);
    v33 = &v48;
    goto LABEL_6;
  }

  v13 = v48;
  v14 = v49;
  v15 = MEMORY[0x1EEE9AC00](v50);
  *&v35[-48] = v13;
  *&v35[-40] = v14;
  *&v35[-32] = a4;
  *&v35[-24] = v16;
  v35[-20] = v17;
  *&v35[-16] = v18;
  v35[-12] = v19;
  *&v35[-8] = v20;
  v35[-4] = v15;
  *(&v44 + 1) = &type metadata for TTSMarkup.SpeechDocument;
  *&v45 = &protocol witness table for TTSMarkup.SpeechDocument;
  v21 = swift_allocObject();
  *&v43 = v21;
  v22 = a1;
  TTSMarkup.SpeechDocument.init(_:)(sub_1A94EDDCC, (v21 + 16));
  sub_1A932D070(&v43, v5 + 416);
  v23 = *(v5 + 440);
  v24 = *(v5 + 448);
  sub_1A93780F4((v5 + 416), v23);
  v25 = (*(v24 + 64))(v23, v24);
  *&v38 = v13;
  *(&v38 + 1) = v14;
  *&v39 = v25;
  *(&v39 + 1) = v26;
  v42 = 1;
  v27._countAndFlagsBits = (*(*v5 + 184))();
  TTSSpeechEvent.emit(forJob:)(v27);

  sub_1A9410E64(a2);
  v45 = v40;
  v46 = v41;
  v47 = v42;
  v43 = v38;
  v44 = v39;
  sub_1A946C4C0(&v43);
LABEL_7:
  sub_1A937B960(a4, &qword_1EB3871A8, &qword_1A958BE88);
  return v5;
}

uint64_t sub_1A94EC4DC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v24 = a5;
  v23 = a4;
  v26 = a7;
  v10 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;

  TTSMarkup.SpeechText.init(_:)(a1, a2, &v32);
  v28 = v32;
  v29 = v33;
  v30 = v34;
  sub_1A9391BAC(a3, v13, &qword_1EB3871A8, &qword_1A958BE88);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  sub_1A93A7460(v13, v15 + v14, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.word(_:)(sub_1A94F20B8, v15, &v36);

  v28 = v36;
  v29 = v37;
  v30 = v38;
  sub_1A9391BAC(a3, v13, &qword_1EB3871A8, &qword_1A958BE88);
  v16 = swift_allocObject();
  sub_1A93A7460(v13, v16 + v14, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.sentence(_:)(sub_1A94F20C0, v16, &v32);

  v28 = v32;
  v29 = v33;
  v30 = v34;
  sub_1A9391BAC(a3, v13, &qword_1EB3871A8, &qword_1A958BE88);
  v17 = swift_allocObject();
  sub_1A93A7460(v13, v17 + v14, &qword_1EB3871A8, &qword_1A958BE88);
  TTSMarkup.SpeechText.paragraph(_:)(sub_1A94F21EC, v17, &v36);

  v28 = v36;
  v29 = v37;
  v30 = v38;
  TTSMarkupSpeech.rate(_:)(v23 | ((HIDWORD(v23) & 1) << 32), &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, &v32);

  v18 = *(&v34 + 1);
  v19 = v35;
  sub_1A93780F4(&v32, *(&v34 + 1));
  TTSMarkupSpeech.pitch(_:)(v24 | ((HIDWORD(v24) & 1) << 32), v18, v19, &v28);
  v20 = *(&v30 + 1);
  v21 = v31;
  sub_1A93780F4(&v28, *(&v30 + 1));
  TTSMarkupSpeech.volume(_:)(v25 | ((HIDWORD(v25) & 1) << 32), v20, v21, v27);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(&v36, v27);
  sub_1A9378138(v27);
  sub_1A9378138(&v28);
  sub_1A9378138(&v32);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(&v36, v26);
  return sub_1A9378138(&v36);
}

uint64_t sub_1A94EC8D4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  sub_1A9391BAC(a4, v12, &qword_1EB3871A8, &qword_1A958BE88);
  v16 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    sub_1A937B960(v12, &qword_1EB3871A8, &qword_1A958BE88);
    v18 = 1;
  }

  else
  {
    v21.n128_u64[0] = a1;
    v21.n128_u64[1] = a2;
    LOBYTE(v22) = a5;
    sub_1A9474C48(&v21, a3, &v24);
    v21 = v24;
    v22 = v25 | 0x2000000000000000;
    v23 = v26;
    sub_1A957C818();
    (*(v17 + 8))(v12, v16);
    v18 = 0;
  }

  v19 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v19 - 8) + 56))(v15, v18, 1, v19);
  return sub_1A937B960(v15, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t sub_1A94ECB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30 = a5;
  v31 = a4;
  v29 = a2;
  v7 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - v9;
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  KeyPath = swift_getKeyPath();
  v38 = v12;
  v39 = v11;
  *&v40 = v14;
  *(&v40 + 1) = v13;
  TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v36 == 1)
  {
    v16 = v30;
    v30[3] = &type metadata for TTSMarkup.SpeechText;
    v16[4] = &protocol witness table for TTSMarkup.SpeechText;
    v17 = swift_allocObject();
    *v16 = v17;
    v17[2] = v12;
    v17[3] = v11;
    v17[4] = v14;
    v17[5] = v13;
  }

  else
  {
    v19 = v35;
    v38 = v12;
    v39 = v11;
    *&v40 = v14;
    *(&v40 + 1) = v13;
    sub_1A9391BAC(v31, v10, &qword_1EB3871A8, &qword_1A958BE88);
    v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v21 = swift_allocObject();
    v22 = a3;
    v23 = v29;
    v21[2] = v29;
    v21[3] = v22;
    v21[4] = v19;
    sub_1A93A7460(v10, v21 + v20, &qword_1EB3871A8, &qword_1A958BE88);

    TTSMarkup.SpeechText.word(_:)(sub_1A94F228C, v21, &v35);

    v32 = v35;
    v33 = v36;
    v34 = v37;
    sub_1A9391BAC(v31, v10, &qword_1EB3871A8, &qword_1A958BE88);
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v22;
    v24[4] = v19;
    sub_1A93A7460(v10, v24 + v20, &qword_1EB3871A8, &qword_1A958BE88);

    TTSMarkup.SpeechText.sentence(_:)(sub_1A94F2294, v24, &v38);

    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_1A9391BAC(v31, v10, &qword_1EB3871A8, &qword_1A958BE88);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = v22;
    v25[4] = v19;
    sub_1A93A7460(v10, v25 + v20, &qword_1EB3871A8, &qword_1A958BE88);
    v26 = v30;
    v30[3] = &type metadata for TTSMarkup.SpeechText;
    v26[4] = &protocol witness table for TTSMarkup.SpeechText;
    v27 = swift_allocObject();
    *v26 = v27;

    TTSMarkup.SpeechText.paragraph(_:)(sub_1A94F23C8, v25, v27 + 16);
  }
}

uint64_t sub_1A94ECEF8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v30 = a8;
  v31 = a3;
  v14 = sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29[-v15];
  v17 = sub_1A937829C(&qword_1EB388200, &unk_1A95961F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29[-v18];
  sub_1A94F0CC8(a1, a2, a4, a5, a6);
  v21 = v20;
  v23 = v22;
  sub_1A9391BAC(a7, v16, &qword_1EB3871A8, &qword_1A958BE88);
  v24 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v16, 1, v24) == 1)
  {
    sub_1A937B960(v16, &qword_1EB3871A8, &qword_1A958BE88);
    v26 = 1;
  }

  else
  {
    v32.n128_u64[0] = v21;
    v32.n128_u64[1] = v23;
    LOBYTE(v33) = v30;
    sub_1A9474C48(&v32, v31, &v35);
    v32 = v35;
    v33 = v36 | 0x2000000000000000;
    v34 = v37;
    sub_1A957C818();
    (*(v25 + 8))(v16, v24);
    v26 = 0;
  }

  v27 = sub_1A937829C(&qword_1EB3871C0, &qword_1A958BEC0);
  (*(*(v27 - 8) + 56))(v19, v26, 1, v27);
  return sub_1A937B960(v19, &qword_1EB388200, &unk_1A95961F0);
}

uint64_t CoreSynthesizer.UtteranceRunner.__allocating_init(copy:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A94F0E38(a1);

  return v2;
}

uint64_t CoreSynthesizer.UtteranceRunner.init(copy:)(uint64_t a1)
{
  v1 = sub_1A94F0E38(a1);

  return v1;
}

uint64_t sub_1A94ED1FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t CoreSynthesizer.UtteranceRunner.deinit()
{

  sub_1A9410E64(v0 + 32);
  sub_1A9378138((v0 + 416));
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState, &qword_1EB388220, &qword_1A9596240);
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  return v0;
}

uint64_t CoreSynthesizer.UtteranceRunner.__deallocating_deinit()
{

  sub_1A9410E64(v0 + 32);
  sub_1A9378138((v0 + 416));
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState, &qword_1EB388220, &qword_1A9596240);
  sub_1A937B960(v0 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);

  return swift_deallocClassInstance();
}

uint64_t sub_1A94ED370()
{
  v0 = type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  v1 = sub_1A94E9538(&qword_1EB388290, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_1A94ED3E4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 184))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A94ED4C0()
{
  v4 = (*(*v0 + 264) + **(*v0 + 264));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return v4();
}

uint64_t sub_1A94ED5D8(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 272) + **(*v2 + 272));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A94ED708(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t sub_1A94ED838(uint64_t a1)
{
  type metadata accessor for CoreSynthesizer.UtteranceRunner(0);
  swift_allocObject();
  v2 = sub_1A94F0E38(a1);

  return v2;
}

unint64_t sub_1A94ED91C(uint64_t (*a1)(void), float a2, float a3, float a4)
{
  v7 = a1();
  v8 = v7;
  if ((v7 & 0x100000000) != 0)
  {
    v9 = *&v7;
  }

  else
  {
    v10 = 0.5;
    if (*&v7 >= 0.5)
    {
      v11 = 1.0;
      v12 = a2;
      v13 = a3;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.5;
      v12 = a4;
      v13 = a2;
    }

    v9 = sub_1A94CF2F0(v10, v11, v12, v13, *&v7);
  }

  return LODWORD(v9) | ((HIDWORD(v8) & 1) << 32);
}

void *sub_1A94ED9B8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386AE0, &qword_1A95884F8);
  v10 = *(type metadata accessor for SpeechSlicer.Slice(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SpeechSlicer.Slice(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A94EDB90(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3882A8, &qword_1A9596578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A94EDCC4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v4 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94EDE1C(uint64_t *a1)
{
  v2 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A94F0A44(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1A94EDF30(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1A94EDEC4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A94F0A58(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A94EE05C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A94EDF30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for TTSAURenderer.SpeechBuffer(0);
        v6 = sub_1A957C518();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1A94EE564(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A94EE164(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A94EE05C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A94EEED0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A94EE3C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A94EE164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v36 = -v19;
    v37 = v18;
    v21 = a1 - a3;
    v30 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_1A94F19F8(v22, v17, type metadata accessor for TTSAURenderer.SpeechBuffer);
      sub_1A94F19F8(v20, v13, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v23 = *(v8 + 20);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_1A94F1A60(v13, type metadata accessor for TTSAURenderer.SpeechBuffer);
      result = sub_1A94F1A60(v17, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v27 = v25 >= v26;
      v8 = v24;
      if (v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_1A94F1AC0(v22, v38, type metadata accessor for TTSAURenderer.SpeechBuffer);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1A94F1AC0(v28, v20, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v20 += v36;
      v22 += v36;
      v27 = __CFADD__(v21++, 1);
      if (v27)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A94EE3C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + (a3 << 6));
    v6 = result - a3;
LABEL_5:
    v27 = a3;
    v17 = v6;
    v18 = v5;
    while (1)
    {
      sub_1A9391BAC(v5, &v24, &qword_1EB3882A0, &qword_1A9596570);
      v7 = v5 - 4;
      sub_1A9391BAC((v5 - 4), v23, &qword_1EB3882A0, &qword_1A9596570);
      sub_1A9391BAC(&v24, &v21, &qword_1EB3882A0, &qword_1A9596570);
      v8 = v21;
      sub_1A9391BAC(v23, &v19, &qword_1EB3882A0, &qword_1A9596570);
      v9 = v19;
      sub_1A94D9AC4(&v20);
      sub_1A94D9AC4(&v22);
      sub_1A937B960(v23, &qword_1EB3882A0, &qword_1A9596570);
      result = sub_1A937B960(&v24, &qword_1EB3882A0, &qword_1A9596570);
      if (v8 >> 14 >= v9 >> 14)
      {
LABEL_4:
        a3 = v27 + 1;
        v5 = v18 + 4;
        v6 = v17 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v26[0] = v5[2];
      *(v26 + 9) = *(v5 + 41);
      v24 = *v5;
      v10 = v24;
      v25 = v5[1];
      v11 = v25;
      v12 = *(v5 - 3);
      *v5 = *v7;
      v5[1] = v12;
      v13 = *(v5 - 1);
      v5[2] = *(v5 - 2);
      v5[3] = v13;
      *v7 = v10;
      *(v5 - 23) = *(v26 + 9);
      v14 = v26[0];
      *(v5 - 3) = v11;
      *(v5 - 2) = v14;
      v5 -= 4;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A94EE564(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v125 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v9 = *(v125 - 8);
  v10 = MEMORY[0x1EEE9AC00](v125);
  v114 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v122 = &v106 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v124 = &v106 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v123 = &v106 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v126 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v102 = v9;
        while (*a3)
        {
          v103 = *(result + 16 * a4);
          v104 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_1A94EF700(*a3 + *(v102 + 72) * v103, *a3 + *(v102 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v102 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v103)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1A938911C(v104);
          }

          if (a4 - 2 >= *(v104 + 2))
          {
            goto LABEL_124;
          }

          v105 = &v104[16 * a4];
          *v105 = v103;
          *(v105 + 1) = v9;
          v126 = v104;
          sub_1A93CE710(a4 - 1);
          result = v126;
          a4 = *(v126 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1A938911C(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v110 = a4;
  v112 = a3;
  v107 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v115 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v108 = v6;
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = *a3 + v24 * v22;
      v25 = v123;
      sub_1A94F19F8(v5, v123, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v26 = v124;
      sub_1A94F19F8(v23 + v24 * v21, v124, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v27 = *(v125 + 20);
      LODWORD(v119) = *(v25 + v27);
      LODWORD(v118) = *(v26 + v27);
      sub_1A94F1A60(v26, type metadata accessor for TTSAURenderer.SpeechBuffer);
      result = sub_1A94F1A60(v25, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v109 = v21;
      v28 = v21 + 2;
      v120 = v24;
      v29 = v23 + v24 * v28;
      while (v18 != v28)
      {
        LODWORD(v121) = v119 < v118;
        v30 = v123;
        sub_1A94F19F8(v29, v123, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v31 = v124;
        sub_1A94F19F8(v5, v124, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v32 = *(v125 + 20);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        sub_1A94F1A60(v31, type metadata accessor for TTSAURenderer.SpeechBuffer);
        result = sub_1A94F1A60(v30, type metadata accessor for TTSAURenderer.SpeechBuffer);
        ++v28;
        v29 += v120;
        v5 += v120;
        if (((v121 ^ (v33 >= v34)) & 1) == 0)
        {
          v18 = v28 - 1;
          break;
        }
      }

      a3 = v112;
      v9 = v107;
      v6 = v108;
      v21 = v109;
      a4 = v110;
      if (v119 < v118)
      {
        if (v18 < v109)
        {
          goto LABEL_127;
        }

        if (v109 < v18)
        {
          v35 = v120 * (v18 - 1);
          v36 = v18 * v120;
          v119 = v18;
          v37 = v18;
          v38 = v109;
          v39 = v109 * v120;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v112;
              if (!*v112)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_1A94F1AC0(v40 + v39, v114, type metadata accessor for TTSAURenderer.SpeechBuffer);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1A94F1AC0(v114, v40 + v35, type metadata accessor for TTSAURenderer.SpeechBuffer);
            }

            ++v38;
            v35 -= v120;
            v36 -= v120;
            v39 += v120;
          }

          while (v38 < v37);
          a3 = v112;
          v9 = v107;
          v21 = v109;
          a4 = v110;
          v18 = v119;
        }
      }
    }

    v41 = a3[1];
    if (v18 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_126;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v43 = v18;
      if (v18 < v21)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_128;
    }

    if ((v21 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v21 + a4;
    }

    if (v42 < v21)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v18 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v18 - 1);
    v91 = v21;
    v92 = -v89;
    v108 = v6;
    v109 = v91;
    v93 = v91 - v18;
    v121 = v88;
    v113 = v89;
    v5 = v88 + v18 * v89;
    v94 = v125;
    v116 = v42;
LABEL_86:
    v118 = v93;
    v119 = v18;
    v117 = v5;
    v120 = v90;
    v95 = v90;
LABEL_87:
    a4 = v123;
    sub_1A94F19F8(v5, v123, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v96 = v124;
    sub_1A94F19F8(v95, v124, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v97 = *(v94 + 20);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_1A94F1A60(v96, type metadata accessor for TTSAURenderer.SpeechBuffer);
    result = sub_1A94F1A60(a4, type metadata accessor for TTSAURenderer.SpeechBuffer);
    if (v98 < v99)
    {
      break;
    }

    v94 = v125;
LABEL_85:
    v18 = v119 + 1;
    v90 = v120 + v113;
    v93 = v118 - 1;
    v5 = v117 + v113;
    v43 = v116;
    if (v119 + 1 != v116)
    {
      goto LABEL_86;
    }

    v9 = v107;
    v6 = v108;
    a3 = v112;
    v21 = v109;
    if (v116 < v109)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v115;
    }

    else
    {
      result = sub_1A9389130(0, *(v115 + 2) + 1, 1, v115);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v44 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      result = sub_1A9389130((v44 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v45 = &v20[16 * a4];
    *(v45 + 4) = v21;
    *(v45 + 5) = v43;
    v46 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    v116 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v20[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v20[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v20[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v20[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v20[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v20 + 4);
            v49 = *(v20 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v20[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v20[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v85 = v20;
        v86 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v47 + 40];
        sub_1A94EF700(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v20[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1A938911C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v126 = v85;
        result = sub_1A93CE710(v47);
        v20 = v126;
        v5 = *(v126 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v116;
    a4 = v110;
    if (v116 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v121)
  {
    v100 = v122;
    sub_1A94F1AC0(v5, v122, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v94 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_1A94F1AC0(v100, v95, type metadata accessor for TTSAURenderer.SpeechBuffer);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1A94EEED0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v7 = v105;
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1A938911C(v6);
      v6 = result;
    }

    v114 = v6;
    v90 = *(v6 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = *&v6[16 * v90];
        v92 = *&v6[16 * v90 + 24];
        sub_1A94EFC2C((*a3 + (v91 << 6)), (*a3 + (*&v6[16 * v90 + 16] << 6)), (*a3 + (v92 << 6)), v5);
        if (v7)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A938911C(v6);
        }

        if (v90 - 2 >= *(v6 + 2))
        {
          goto LABEL_119;
        }

        v93 = &v6[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        v114 = v6;
        result = sub_1A93CE710(v90 - 1);
        v6 = v114;
        v90 = *(v114 + 2);
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &qword_1A9596570;
  while (1)
  {
    if ((v5 + 1) >= v4)
    {
      v14 = (v5 + 1);
    }

    else
    {
      v115 = v4;
      v8 = *a3;
      sub_1A9391BAC(*a3 + ((v5 + 1) << 6), &v111, &qword_1EB3882A0, &qword_1A9596570);
      v9 = v5 << 6;
      v10 = v8 + (v5 << 6);
      sub_1A9391BAC(v10, v110, &qword_1EB3882A0, &qword_1A9596570);
      sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
      v11 = v108[0];
      sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
      v99 = v106[0] >> 14;
      v102 = v11 >> 14;
      sub_1A94D9AC4(v107);
      sub_1A94D9AC4(v109);
      sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
      result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
      v96 = v5;
      v12 = v5 + 2;
      v13 = v10 + 64;
      while (1)
      {
        v14 = v115;
        if (v115 == v12)
        {
          break;
        }

        v15 = v13 + 64;
        sub_1A9391BAC(v13 + 64, &v111, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v13, v110, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
        v16 = v108[0];
        sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
        v17 = v106[0];
        sub_1A94D9AC4(v107);
        sub_1A94D9AC4(v109);
        sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
        result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
        v18 = v16 >> 14 >= v17 >> 14;
        ++v12;
        v13 = v15;
        if ((((v102 < v99) ^ v18) & 1) == 0)
        {
          v14 = (v12 - 1);
          break;
        }
      }

      v5 = v96;
      if (v102 < v99)
      {
        if (v14 < v96)
        {
          goto LABEL_122;
        }

        if (v96 < v14)
        {
          v19 = (v14 << 6) - 64;
          v20 = v14;
          v21 = v96;
          do
          {
            if (v21 != --v20)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v26 = (v25 + v9);
              v27 = (v25 + v19);
              v111 = *v26;
              v112 = v26[1];
              v113[0] = v26[2];
              *(v113 + 9) = *(v26 + 41);
              if (v9 != v19 || v26 >= v27 + 4)
              {
                v22 = *v27;
                v23 = v27[1];
                v24 = v27[3];
                v26[2] = v27[2];
                v26[3] = v24;
                *v26 = v22;
                v26[1] = v23;
              }

              *v27 = v111;
              v27[1] = v112;
              v27[2] = v113[0];
              *(v27 + 41) = *(v113 + 9);
            }

            ++v21;
            v19 -= 64;
            v9 += 64;
          }

          while (v21 < v20);
        }
      }
    }

    v28 = a3[1];
    if (v14 < v28)
    {
      if (__OFSUB__(v14, v5))
      {
        goto LABEL_121;
      }

      if (v14 - v5 < a4)
      {
        if (__OFADD__(v5, a4))
        {
          goto LABEL_123;
        }

        if (&v5[a4] >= v28)
        {
          v29 = a3[1];
        }

        else
        {
          v29 = &v5[a4];
        }

        if (v29 < v5)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v14 != v29)
        {
          break;
        }
      }
    }

    v30 = v14;
    if (v14 < v5)
    {
      goto LABEL_120;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v32 = *(v6 + 2);
    v31 = *(v6 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_1A9389130((v31 > 1), v32 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v33;
    v34 = &v6[16 * v32];
    *(v34 + 4) = v5;
    *(v34 + 5) = v30;
    v100 = v30;
    v35 = *v98;
    if (!*v98)
    {
      goto LABEL_130;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v6 + 4);
          v38 = *(v6 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_51:
          if (v40)
          {
            goto LABEL_109;
          }

          v53 = &v6[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_112;
          }

          v59 = &v6[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_116;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v63 = &v6[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_65:
        if (v58)
        {
          goto LABEL_111;
        }

        v66 = &v6[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_114;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_72:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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

        v75 = *&v6[16 * v74 + 32];
        v5 = *&v6[16 * v36 + 40];
        sub_1A94EFC2C((*a3 + (v75 << 6)), (*a3 + (*&v6[16 * v36 + 32] << 6)), (*a3 + (v5 << 6)), v35);
        if (v105)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1A938911C(v6);
        }

        if (v74 >= *(v6 + 2))
        {
          goto LABEL_106;
        }

        v76 = &v6[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        v114 = v6;
        result = sub_1A93CE710(v36);
        v6 = v114;
        v33 = *(v114 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v6[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_107;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_108;
      }

      v48 = &v6[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_110;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_113;
      }

      if (v52 >= v44)
      {
        v70 = &v6[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_117;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v100;
    if (v100 >= v4)
    {
      goto LABEL_93;
    }
  }

  v94 = v6;
  v77 = *a3;
  v78 = (*a3 + (v14 << 6));
  v97 = v5;
  v79 = &v5[-v14];
  v101 = v29;
LABEL_83:
  v115 = v14;
  v80 = v79;
  v103 = v78;
  while (1)
  {
    sub_1A9391BAC(v78, &v111, &qword_1EB3882A0, &qword_1A9596570);
    v81 = v78 - 4;
    sub_1A9391BAC((v78 - 4), v110, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(&v111, v108, &qword_1EB3882A0, &qword_1A9596570);
    v82 = v108[0];
    sub_1A9391BAC(v110, v106, &qword_1EB3882A0, &qword_1A9596570);
    v83 = v106[0];
    sub_1A94D9AC4(v107);
    sub_1A94D9AC4(v109);
    sub_1A937B960(v110, &qword_1EB3882A0, &qword_1A9596570);
    result = sub_1A937B960(&v111, &qword_1EB3882A0, &qword_1A9596570);
    if (v82 >> 14 >= v83 >> 14)
    {
LABEL_82:
      v14 = v115 + 1;
      v30 = v101;
      v78 = v103 + 4;
      --v79;
      if (v115 + 1 != v101)
      {
        goto LABEL_83;
      }

      v6 = v94;
      v5 = v97;
      if (v101 < v97)
      {
        goto LABEL_120;
      }

      goto LABEL_32;
    }

    if (!v77)
    {
      break;
    }

    v113[0] = v78[2];
    *(v113 + 9) = *(v78 + 41);
    v111 = *v78;
    v84 = v111;
    v112 = v78[1];
    v85 = v112;
    v86 = *(v78 - 3);
    *v78 = *v81;
    v78[1] = v86;
    v87 = *(v78 - 1);
    v78[2] = *(v78 - 2);
    v78[3] = v87;
    *v81 = v84;
    *(v78 - 23) = *(v113 + 9);
    v88 = v113[0];
    *(v78 - 3) = v85;
    *(v78 - 2) = v88;
    v78 -= 4;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_82;
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
  return result;
}

uint64_t sub_1A94EF700(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v50 = &v41 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v54 = a1;
  v53 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v45 = a4;
      v46 = a1;
      v49 = v8;
      v44 = -v14;
      do
      {
        v42 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v47 = a2;
        v48 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v42;
            goto LABEL_60;
          }

          v32 = a3;
          v43 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v50;
          sub_1A94F19F8(v28 + v27, v50, type metadata accessor for TTSAURenderer.SpeechBuffer);
          v35 = v51;
          sub_1A94F19F8(v30, v51, type metadata accessor for TTSAURenderer.SpeechBuffer);
          v36 = *(v8 + 20);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          sub_1A94F1A60(v35, type metadata accessor for TTSAURenderer.SpeechBuffer);
          sub_1A94F1A60(v34, type metadata accessor for TTSAURenderer.SpeechBuffer);
          if (v37 < v38)
          {
            break;
          }

          v26 = v33;
          if (v32 < v28 || a3 >= v28)
          {
            v31 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v48;
            v8 = v31;
            v27 = v44;
          }

          else
          {
            v30 = v48;
            v8 = v49;
            v27 = v44;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v46;
          v29 = v47;
          if (v33 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v32 < v47 || a3 >= v47)
        {
          a2 = v48;
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v43;
          v27 = v44;
        }

        else
        {
          v40 = v32 == v47;
          a2 = v48;
          v8 = v49;
          v26 = v43;
          v27 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v46;
      }

      while (v28 > v39);
    }

LABEL_59:
    v54 = a2;
    v52 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v52 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v47 = a3;
      v49 = v8;
      do
      {
        v20 = v50;
        sub_1A94F19F8(a2, v50, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v21 = v51;
        sub_1A94F19F8(a4, v51, type metadata accessor for TTSAURenderer.SpeechBuffer);
        v22 = *(v8 + 20);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_1A94F1A60(v21, type metadata accessor for TTSAURenderer.SpeechBuffer);
        sub_1A94F1A60(v20, type metadata accessor for TTSAURenderer.SpeechBuffer);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v47;
          }

          else
          {
            v25 = v47;
            v8 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v53 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v49;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v47;
        }

        else
        {
          v25 = v47;
          v8 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v54 = a1;
      }

      while (a4 < v48 && a2 < v25);
    }
  }

LABEL_60:
  sub_1A94EFFE0(&v54, &v53, &v52);
  return 1;
}

uint64_t sub_1A94EFC2C(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - a2;
  v12 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 6;
  if (v10 >= v13)
  {
    v25 = v13 << 6;
    if (a4 != a2 || &a2[v25] <= a4)
    {
      memmove(a4, a2, v13 << 6);
    }

    v15 = &v4[v25];
    if (v11 < 64 || v6 <= v7)
    {
      v24 = v6;
      goto LABEL_38;
    }

    while (1)
    {
      __dst = v6;
      v49 = v6 - 64;
      v26 = v15 - 64;
      v5 -= 64;
      while (1)
      {
        v29 = v4;
        v30 = v26 + 64;
        v31 = v5 + 64;
        sub_1A9391BAC(v26, v48, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v49, v47, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A9391BAC(v48, v45, &qword_1EB3882A0, &qword_1A9596570);
        v32 = v45[0];
        sub_1A9391BAC(v47, v43, &qword_1EB3882A0, &qword_1A9596570);
        v33 = v43[0];
        sub_1A94D9AC4(v44);
        sub_1A94D9AC4(v46);
        sub_1A937B960(v47, &qword_1EB3882A0, &qword_1A9596570);
        sub_1A937B960(v48, &qword_1EB3882A0, &qword_1A9596570);
        if (v32 >> 14 < v33 >> 14)
        {
          break;
        }

        v4 = v29;
        if (v31 != v30)
        {
          v34 = *v26;
          v35 = *(v26 + 1);
          v36 = *(v26 + 3);
          *(v5 + 2) = *(v26 + 2);
          *(v5 + 3) = v36;
          *v5 = v34;
          *(v5 + 1) = v35;
        }

        v27 = v26 - 64;
        v5 -= 64;
        v28 = v26 > v29;
        v26 -= 64;
        if (!v28)
        {
          v15 = v27 + 64;
          v24 = __dst;
          goto LABEL_38;
        }
      }

      v4 = v29;
      v24 = v49;
      if (v31 != __dst)
      {
        v37 = *v49;
        v38 = *(v49 + 1);
        v39 = *(v49 + 3);
        *(v5 + 2) = *(v49 + 2);
        *(v5 + 3) = v39;
        *v5 = v37;
        *(v5 + 1) = v38;
      }

      if (v30 > v29)
      {
        v15 = v26 + 64;
        v6 = v24;
        if (v24 > v7)
        {
          continue;
        }
      }

      v15 = v26 + 64;
      goto LABEL_38;
    }
  }

  v14 = v10 << 6;
  if (a4 != __src || &__src[v14] <= a4)
  {
    memmove(a4, __src, v14);
  }

  v15 = &v4[v14];
  if (v8 < 64 || v6 >= v5)
  {
    v24 = v7;
    goto LABEL_38;
  }

  do
  {
    v16 = v15;
    sub_1A9391BAC(v6, v48, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(v4, v47, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A9391BAC(v48, v45, &qword_1EB3882A0, &qword_1A9596570);
    v17 = v45[0];
    sub_1A9391BAC(v47, v43, &qword_1EB3882A0, &qword_1A9596570);
    v18 = v43[0];
    sub_1A94D9AC4(v44);
    sub_1A94D9AC4(v46);
    sub_1A937B960(v47, &qword_1EB3882A0, &qword_1A9596570);
    sub_1A937B960(v48, &qword_1EB3882A0, &qword_1A9596570);
    if (v17 >> 14 < v18 >> 14)
    {
      v19 = v6;
      v20 = v7 == v6;
      v6 += 64;
      if (v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      v21 = *v19;
      v22 = *(v19 + 1);
      v23 = *(v19 + 3);
      *(v7 + 2) = *(v19 + 2);
      *(v7 + 3) = v23;
      *v7 = v21;
      *(v7 + 1) = v22;
      goto LABEL_17;
    }

    v19 = v4;
    v20 = v7 == v4;
    v4 += 64;
    if (!v20)
    {
      goto LABEL_16;
    }

LABEL_17:
    v7 += 64;
    v15 = v16;
  }

  while (v4 < v16 && v6 < v5);
  v24 = v7;
LABEL_38:
  v40 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v24 != v4 || v24 >= &v4[v40])
  {
    memmove(v24, v4, v40);
  }

  return 1;
}

uint64_t sub_1A94EFFE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1A94F00C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v34 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1AC586390](*(v7 + 40), v21, 4);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A94F034C()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A94F04B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A94F06AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A94F04D4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386FD0, &qword_1A958AF40);
  v10 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1A94F06AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3882A8, &qword_1A9596578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3882A0, &qword_1A9596570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94F07E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1A94F19F8(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for TTSAURenderer.SpeechBuffer);
      v24 = v23;
      v25 = v31;
      sub_1A94F1AC0(v24, v31, type metadata accessor for TTSAURenderer.SpeechBuffer);
      sub_1A94F1AC0(v25, a2, type metadata accessor for TTSAURenderer.SpeechBuffer);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1A94F0A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for SpeechSlicer.Slice(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

void *sub_1A94F0BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB388298, &qword_1A9596568);
  v3 = sub_1A957D128();
  LODWORD(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1A937BEE0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1A937BEE0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1A94F0CC8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = MEMORY[0x1AC5851A0](15, a5);
    v16 = a3;
    v9 = v15;
    v5 = a4 & 0x2000000000000000;
    v6 = HIBYTE(a4) & 0xF;
    v7 = v16 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v5 = a4 & 0x2000000000000000;
    v6 = HIBYTE(a4) & 0xF;
    v7 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 < a5)
    {
      goto LABEL_17;
    }

    v9 = (a5 << 16) | 4;
  }

  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (4 * v10 < v9 >> 14)
  {
    goto LABEL_16;
  }

  v11 = sub_1A957C3B8();
  MEMORY[0x1AC585090](v11);

  sub_1A957C318();
  sub_1A957C318();

  v12 = sub_1A957C268();
  if (sub_1A957C268() >> 14 < v12 >> 14)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1A94F0E38(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  *(v1 + 457) = 0;
  v4 = OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_suspendedState;
  v5 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_receivedFirstBuffer) = 0;
  *(v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_playedFirstBuffer) = 0;
  v6 = *(a1 + 24);
  *(v2 + 24) = v6;
  sub_1A9410E08(a1 + 32, v2 + 32);
  *(v2 + 456) = *(a1 + 456);
  sub_1A9391BAC(a1 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, v2 + OBJC_IVAR____TtCC12TextToSpeech15CoreSynthesizer15UtteranceRunner_eventContinuation, &qword_1EB3871A8, &qword_1A958BE88);
  sub_1A9379534(a1 + 416, v2 + 416);
  v7 = v6;
  return v2;
}

uint64_t sub_1A94F0F30(uint64_t a1)
{
  *(a1 + 8) = sub_1A94E9538(&qword_1EB388228, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  result = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A94F0FB4(uint64_t a1)
{
  result = sub_1A94E9538(&qword_1EB388208, type metadata accessor for CoreSynthesizer.UtteranceRunner, &protocol conformance descriptor for CoreSynthesizer.UtteranceRunner);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A94F100C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94F105C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A94F10B0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1A94F10E0(uint64_t a1)
{
  sub_1A94F1878(319, &qword_1EB388230, _s15UtteranceRunnerC14SynthesisStateVMa, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A94F1824(319, &qword_1EB388238, &qword_1EB3871B0, &qword_1A958BE98);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.run()()
{
  v4 = (*(*v0 + 264) + **(*v0 + 264));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return v4();
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.stop(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 272) + **(*v2 + 272));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesizer.UtteranceRunner.suspend(for:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 280) + **(*v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A93836DC;

  return v8(a1, a2);
}

void sub_1A94F16C8(uint64_t a1)
{
  sub_1A94F1824(319, &qword_1EB388248, &qword_1EB386D08, &qword_1A95892D8);
  if (v1 <= 0x3F)
  {
    sub_1A94F1878(319, &qword_1EB388250, type metadata accessor for TTSAURenderer.SpeechBuffer, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A94F1878(319, &qword_1EB388258, type metadata accessor for SpeechSlicer.Slice, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A94F1878(319, &qword_1EB388260, type metadata accessor for SpeechSlicer.Slice, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A94F1824(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1A93A7B68(a3, a4);
    v5 = sub_1A957CC58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A94F1878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A94F18E0()
{
  result = qword_1EB3A0B90[0];
  if (!qword_1EB3A0B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0B90);
  }

  return result;
}

uint64_t sub_1A94F19E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9410F88(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A94F19F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A94F1A60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A94F1AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A94F1B2C()
{
  v1 = (type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = _s15UtteranceRunnerC14SynthesisStateVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v21 = *(*(v5 - 8) + 64);

  v8 = v0 + v3;
  v9 = sub_1A957B0B8();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = v0 + v7 + *(v5 + 24);
  v11 = type metadata accessor for SpeechSlicer.Slice(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    sub_1A9378138((v10 + 16));
    v12 = v10 + *(v11 + 24);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {

      sub_1A93B183C(*(v12 + 72), *(v12 + 80), *(v12 + 88), *(v12 + 96), *(v12 + 104), *(v12 + 112), *(v12 + 120));

      if (*(v12 + 208))
      {
      }

      if (*(v12 + 248))
      {
      }

      v14 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v15 = *(v14 + 48);
      v16 = sub_1A957B308();
      (*(*(v16 - 8) + 8))(v12 + v15, v16);
      v17 = *(v14 + 64);
      v18 = sub_1A957B8C8();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(v12 + v17, 1, v18))
      {
        (*(v19 + 8))(v12 + v17, v18);
      }
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v21, v2 | v6 | 7);
}

void sub_1A94F1E9C(char a1)
{
  v3 = *(type metadata accessor for TTSAURenderer.SpeechBuffer(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(_s15UtteranceRunnerC14SynthesisStateVMa(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1A94E8A60(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_1A94F1FA0()
{
  result = qword_1EB388288;
  if (!qword_1EB388288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388288);
  }

  return result;
}

uint64_t sub_1A94F2048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388220, &qword_1A9596240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94F20C8()
{
  v1 = *(sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A94F229C()
{
  v1 = *(sub_1A937829C(&qword_1EB3871A8, &qword_1A958BE88) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1A937829C(&qword_1EB3871B0, &qword_1A958BE98);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1A94F2484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A957B308();
  v8 = objc_opt_self();
  v9 = sub_1A957C0C8();
  sub_1A957B118();
  v10 = sub_1A957C0C8();

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v13[4] = sub_1A94F260C;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A94EB21C;
  v13[3] = &unk_1F1CFB628;
  v12 = _Block_copy(v13);

  [v8 enumerateEmojiCharactersInString:v9 languageCode:v10 withBlock:v12];
  _Block_release(v12);
}

uint64_t sub_1A94F260C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = result;
    v9 = v4[4];
    v11 = v4[2];
    v10 = v4[3];

    v12 = sub_1A94CF2D4(v8, a2, v11, v10);
    if (v13)
    {
    }

    else
    {
      v14[0] = a3;
      v14[1] = a4;
      v15 = 1;
      v9(v12);
      return sub_1A94D9AC4(v14);
    }
  }

  return result;
}

uint64_t sub_1A94F26D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A94F26F0(unint64_t result, unint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = 0;
    v7 = *(v3 + 16);
    v8 = 4 * v4;
    v9 = 15;
    do
    {
      v10 = sub_1A957C388();
      v12 = sub_1A9499588(v10, v11);

      v13 = *v7;
      if (*(*v7 + 16))
      {
        v14 = (v12 & 0x100000000) != 0 ? 0 : v12;
        v15 = sub_1A937BEE0(v14);
        if (v16)
        {
          v17 = (*(v13 + 56) + 16 * v15);
          v18 = *v17;
          v19 = v17[1];

          result = sub_1A957C248();
          if (v6 > result >> 14)
          {
            __break(1u);
            return result;
          }

          a3(v9, result, v18, v19);
        }
      }

      result = sub_1A957C248();
      v9 = result;
      v6 = result >> 14;
    }

    while (result >> 14 < v8);
  }

  return result;
}

uint64_t sub_1A94F281C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v7 = *(type metadata accessor for CoreSynthesizer.Substitution.Context(0) - 8);
  v8 = *(v3 + 16);
  v12[2] = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));
  v12[3] = a1;
  v12[4] = a2;
  v16[0] = sub_1A94EBC8C(MEMORY[0x1E69E7CC0], sub_1A94F299C, v12, v8);

  sub_1A94EDEC4(v16);

  v9 = *(v16[0] + 16);
  if (v9)
  {
    v10 = v16[0] + 32;
    do
    {
      sub_1A9391BAC(v10, v16, &qword_1EB3882A0, &qword_1A9596570);
      v13[0] = v16[0];
      v13[1] = v16[1];
      v14 = v17;
      v15[0] = v18[0];
      *(v15 + 9) = *(v18 + 9);
      a3();
      sub_1A937B960(v13, &qword_1EB3882A0, &qword_1A9596570);
      v10 += 64;
      --v9;
    }

    while (v9);
  }
}

void sub_1A94F299C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *a1;
  v10 = type metadata accessor for CoreSynthesizer.Substitution.Context(0);
  CoreSynthesizer.Substitution.regex(forLocale:)(v6 + *(v10 + 20));
  v11 = objc_allocWithZone(TTSRegex);
  v12 = sub_1A957C0C8();

  v13 = [v11 initWithPerlPattern_];

  v14 = sub_1A9499C2C(v7, v8);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = v13;
    v25 = a3;
    v30 = v9;
    v29 = MEMORY[0x1E69E7CC0];

    sub_1A94F04B4(0, v15, 0);
    v16 = v29;
    v17 = 0;
    v18 = *(type metadata accessor for CoreSynthesizer.Substitution(0) + 24);
    while (v17 < *(v14 + 16))
    {
      v26 = *(v14 + 16 * v17 + 32);
      sub_1A944A98C(a2 + v18, &v27);
      v29 = v16;
      v20 = v16[2];
      v19 = v16[3];
      if (v20 >= v19 >> 1)
      {
        sub_1A94F04B4((v19 > 1), v20 + 1, 1);
        v16 = v29;
      }

      ++v17;
      v16[2] = v20 + 1;
      v21 = &v16[8 * v20];
      v22 = v27;
      v23 = v28[0];
      *(v21 + 73) = *(v28 + 9);
      v21[3] = v22;
      v21[4] = v23;
      v21[2] = v26;
      if (v15 == v17)
      {

        sub_1A94EBB88(v16);

        *v25 = v30;
        return;
      }
    }

    __break(1u);
  }

  else
  {

    *a3 = v9;
  }
}

uint64_t _s15UtteranceRunnerC10RetryStateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t _s15UtteranceRunnerC10RetryStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A94F2C2C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A94F2C44(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1A94F2C70()
{
  type metadata accessor for AttributeUtilities();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A94F3C1C(MEMORY[0x1E69E7CC0]);
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EB3A7CB8 = v0;
  return result;
}

uint64_t sub_1A94F2CE0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A94F3C1C(MEMORY[0x1E69E7CC0]);
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t *sub_1A94F2D4C()
{
  if (qword_1EB3A0CB0 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7CB8;
}

uint64_t sub_1A94F2DC0(uint64_t a1, uint64_t a2)
{
  sub_1A957CF08();

  v19[0] = 0xD00000000000001BLL;
  v19[1] = 0x80000001A95C4A40;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v4 = sub_1A957C088();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](10537, 0xE200000000000000);
  v5 = sub_1A94F331C(0xD00000000000001BLL, 0x80000001A95C4A40);

  if (v5)
  {
    v6 = sub_1A957C0C8();
    v7 = [v5 firstMatchInString:v6 options:0 range:{0, MEMORY[0x1AC5851E0](a1, a2)}];

    if (v7)
    {
      v8 = sub_1A957C0C8();
      [v7 rangeWithName_];

      sub_1A957CA08();
      if (v9 & 1) != 0 || (v10 = sub_1A957C0C8(), [v7 rangeWithName_], v10, sub_1A957CA08(), (v11))
      {
      }

      else
      {
        v13 = sub_1A957C3B8();
        v14 = MEMORY[0x1AC585090](v13);
        v16 = v15;

        v17 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v17);

        LODWORD(v19[0]) = 0;
        v18 = sub_1A94F3B24(v14, v16, v19);

        if (v18)
        {
          return LODWORD(v19[0]);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1A94F3080(uint64_t a1, uint64_t a2)
{
  sub_1A957CF08();

  v19[0] = 0xD000000000000021;
  v19[1] = 0x80000001A95C4A10;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v4 = sub_1A957C088();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](10537, 0xE200000000000000);
  v5 = sub_1A94F331C(0xD000000000000021, 0x80000001A95C4A10);

  if (v5)
  {
    v6 = sub_1A957C0C8();
    v7 = [v5 firstMatchInString:v6 options:0 range:{0, MEMORY[0x1AC5851E0](a1, a2)}];

    if (v7)
    {
      v8 = sub_1A957C0C8();
      [v7 rangeWithName_];

      sub_1A957CA08();
      if (v9 & 1) != 0 || (v10 = sub_1A957C0C8(), [v7 rangeWithName_], v10, sub_1A957CA08(), (v11))
      {
      }

      else
      {
        v13 = sub_1A957C3B8();
        v14 = MEMORY[0x1AC585090](v13);
        v16 = v15;

        v17 = sub_1A957C3B8();
        MEMORY[0x1AC585090](v17);

        LODWORD(v19[0]) = 0;
        v18 = sub_1A94F3B24(v14, v16, v19);

        if (v18)
        {
          return LODWORD(v19[0]);
        }
      }
    }
  }

  return 0;
}

id sub_1A94F331C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);

  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_1A937A490(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v6 + 4);

  if (!v10)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696AE70]);

    v10 = sub_1A943639C(a1, a2, 1);
    if (v10)
    {
      v13 = *(v3 + 24);

      os_unfair_lock_lock(v13 + 4);
      swift_beginAccess();
      v14 = v10;

      v15 = v14;
      sub_1A94F34A4(v10, a1, a2);
      swift_endAccess();
      os_unfair_lock_unlock(v13 + 4);
    }
  }

  return v10;
}

uint64_t sub_1A94F34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A94F3840(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A937A490(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A94F39B8();
        v14 = v16;
      }

      result = sub_1A939748C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A94F359C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
  v35 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A94F3840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A94F359C(v16, a4 & 1);
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A957D438();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1A94F39B8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1A94F39B8()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

BOOL sub_1A94F3B24(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1A957CED8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_1A94F3C1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&unk_1EB3882B0, &qword_1A9596630);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A937A490(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A94F3D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A94F3D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1A94F3DDC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
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

uint64_t SSEError.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A94F3EE4()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A0CC8);
  sub_1A937731C(v0, qword_1EB3A0CC8);
  return sub_1A957BC78();
}

void *SSELoaderManager.__allocating_init(database:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v2[2] = TTSExecutor.__allocating_init()();
  type metadata accessor for SSELoaderManager.Store();
  v3 = swift_allocObject();
  sub_1A93E9DFC();
  v2[3] = a1;
  v2[4] = v3;
  return v2;
}

uint64_t SSELoaderManager.init(database:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  type metadata accessor for SSELoaderManager.Store();
  v4 = swift_allocObject();
  sub_1A93E9DFC();
  *(v2 + 24) = a1;
  *(v2 + 32) = v4;
  return v2;
}

uint64_t sub_1A94F4038()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5080(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94F40B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);

    sub_1A957BA08();
    type metadata accessor for SSELoaderManager.Store();
    sub_1A95012F0(&unk_1EB385FB0, sub_1A950129C, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A95012F0(&qword_1EB385FC0, sub_1A9501374, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1A94FF1F4(qword_1EB386090, v6, type metadata accessor for SSELoaderManager.Store, &unk_1A9596978);
    v5 = sub_1A957B8D8();
    *(a1 + 16) = v5;
  }

  *a2 = v5;
}

unint64_t sub_1A94F42BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94FED34(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94F42EC()
{

  sub_1A937829C(&qword_1EB3882C8, &qword_1A9596638);
  sub_1A957BA88();
}

uint64_t sub_1A94F4360()
{
  (*(*v0 + 168))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94F43C0(uint64_t a1)
{
  (*(*v1 + 168))();
  sub_1A957B8F8();
}

void (*sub_1A94F4424(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xFBA3000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

uint64_t sub_1A94F44E0()
{
  v1 = (*(*v0 + 168))();
  v13 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v14 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640, MEMORY[0x1E6988248]);
  *&v12 = v1;
  sub_1A932D070(&v12, v11);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2;
  v4 = sub_1A9396054(v11, v11[3]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_1A94FE70C(*v6, 0x73726564616F6C24, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v10);
  sub_1A9378138(v11);
  return v10;
}

char *sub_1A94F46C0()
{
  v1 = (*(**(v0 + 32) + 184))();
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1A94FB16C(*(v1 + 16), 0);
  v5 = sub_1A94FEA2C(&v7, v4 + 32, v3, v2);
  sub_1A932D088(v7);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A94F4778(uint64_t a1)
{
  v2[2] = v1;
  type metadata accessor for SSELoaderManager();
  sub_1A94FF1F4(&unk_1EB386080, v3, type metadata accessor for SSELoaderManager, &protocol conformance descriptor for SSELoaderManager);
  v5 = sub_1A957C5A8();
  v2[3] = v5;
  v2[4] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94F482C, v5, v4);
}

uint64_t sub_1A94F482C()
{
  v13 = v0;
  v1 = v0[2];
  v2 = *(v1 + 24);
  v3 = (*(**(v1 + 32) + 184))();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_1A94FB16C(*(v3 + 16), 0);
    v7 = sub_1A94FEA2C(&v12, v6 + 32, v5, v4);
    sub_1A932D088(v12);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v8 = sub_1A94F4C74(v6);
  v0[5] = v8;

  v11 = (*(*v2 + 264) + **(*v2 + 264));
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_1A94F4A0C;

  return v11(v8);
}

uint64_t sub_1A94F4A0C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];
    v4 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1A94F4C10, v3, v4);
  }

  else
  {
    v5 = v2[2];

    v8 = (*(*v5 + 136) + **(*v5 + 136));
    v6 = swift_task_alloc();
    v2[8] = v6;
    *v6 = v2;
    v6[1] = sub_1A938B224;

    return v8();
  }
}

uint64_t sub_1A94F4C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94F4C74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1A93ED5A8(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v14 = *v4;
      v15 = v5;
      *v16 = v4[2];
      *&v16[13] = *(v4 + 45);
      sub_1A94FF0E4(&v14, &v11);
      v17 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1A93ED5A8((v6 > 1), v7 + 1, 1);
        v2 = v17;
      }

      v12 = &type metadata for SSEVoiceLoader;
      v13 = &protocol witness table for SSEVoiceLoader;
      v8 = swift_allocObject();
      *&v11 = v8;
      v9 = v15;
      *(v8 + 16) = v14;
      *(v8 + 32) = v9;
      *(v8 + 48) = *v16;
      *(v8 + 61) = *&v16[13];
      *(v2 + 16) = v7 + 1;
      sub_1A932D070(&v11, v2 + 40 * v7 + 32);
      v4 = (v4 + 56);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1A94F4DB8(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = [objc_opt_self() defaultHost];
  if (v6)
  {
    v7 = v6;
    sub_1A937829C(&unk_1EB3883D0, &unk_1A9596E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    aBlock = 0xD000000000000014;
    v15 = 0x80000001A95C4B00;
    sub_1A957CE88();
    *(inited + 96) = sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    *(inited + 72) = &unk_1F1CFB708;
    sub_1A94FEEE4(inited);
    swift_setDeallocating();
    sub_1A937B960(inited + 32, &qword_1EB3883E0, &unk_1A9596E10);
    v9 = sub_1A957C018();

    (*(v3 + 16))(v5, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v5, v2);
    v18 = sub_1A9500FA8;
    v19 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1A94F58C8;
    v17 = &unk_1F1CFBBA8;
    v12 = _Block_copy(&aBlock);

    [v7 discoverPlugInsForAttributes:v9 flags:0 found:v12];

    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A94F508C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A957AFD8();
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - v8;
  v10 = [v1 attributes];
  if (!v10)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = v10;
  v12 = sub_1A957C038();

  v63 = 0xD000000000000014;
  v64 = 0x80000001A95C4B00;
  sub_1A957CE88();
  if (!*(v12 + 16))
  {
    goto LABEL_28;
  }

  v13 = sub_1A93B1014(v65);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1A937BA14(*(v12 + 56) + 32 * v13, &v66);
  sub_1A93B1058(v65);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v40 = 0;
LABEL_30:
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v47 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_31;
  }

  v15 = v63;
  v61 = v64;
  v16 = [v2 attributes];
  if (!v16)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v16;
  v18 = sub_1A957C038();

  v63 = 0x6D6F436F69647541;
  v64 = 0xEF73746E656E6F70;
  sub_1A957CE88();
  if (!*(v18 + 16) || (v19 = sub_1A93B1014(v65), (v20 & 1) == 0))
  {

LABEL_28:

    sub_1A93B1058(v65);
    goto LABEL_29;
  }

  sub_1A937BA14(*(v18 + 56) + 32 * v19, &v66);
  sub_1A93B1058(v65);

  sub_1A937829C(&qword_1EB3882E0, &unk_1A9596658);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

    goto LABEL_29;
  }

  if (!*(v63 + 16))
  {

    goto LABEL_29;
  }

  v21 = *(v63 + 32);

  if (!*(v21 + 16))
  {
    goto LABEL_40;
  }

  v22 = sub_1A937A490(1701869940, 0xE400000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_1A93B1F94(*(v21 + 56) + 40 * v22, v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v24 = v66;
  v25 = v67;

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  *&v27 = UInt32.init(axFourCharCode:)(v26);
  if ((v27 & 0x100000000) != 0 || v27 != 1635087216)
  {
LABEL_39:

LABEL_40:

    goto LABEL_41;
  }

  if (!*(v21 + 16) || (v28 = sub_1A937A490(0x74636166756E616DLL, 0xEC00000072657275), (v29 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_1A93B1F94(*(v21 + 56) + 40 * v28, v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v67;
  v60 = v66;

  v31._countAndFlagsBits = v60;
  v60 = v30;
  v31._object = v30;
  *&v32 = UInt32.init(axFourCharCode:)(v31);
  v59 = v32;
  if ((v32 & 0x100000000) != 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  if (!*(v21 + 16) || (v33 = sub_1A937A490(0x65707974627573, 0xE700000000000000), (v34 & 1) == 0))
  {

    goto LABEL_29;
  }

  sub_1A93B1F94(*(v21 + 56) + 40 * v33, v65);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v35 = v67;
  v58 = v66;

  v36._countAndFlagsBits = v58;
  v58 = v35;
  v36._object = v35;
  *&v37 = UInt32.init(axFourCharCode:)(v36);
  v57 = v37;
  if ((v37 & 0x100000000) != 0)
  {

    goto LABEL_38;
  }

  if (v15 == 0xD00000000000001ALL && 0x80000001A95C4AE0 == v61 || (sub_1A957D3E8() & 1) != 0)
  {
    v38 = [v2 identifier];
    if (v38)
    {
      v39 = v38;

      v40 = sub_1A957C0F8();
      v42 = v41;

      v43 = 0;
      v44 = 0;
      v45 = v59;
      v46 = 0x100000000;
      v47 = (v57 << 32) | 0x61757370;
LABEL_31:
      *a1 = v40;
      *(a1 + 8) = v42;
      *(a1 + 16) = v43;
      *(a1 + 24) = v44;
      *(a1 + 32) = v47;
      *(a1 + 40) = v45;
      *(a1 + 48) = v46;
      *(a1 + 52) = BYTE4(v46);
      return;
    }

    goto LABEL_52;
  }

LABEL_43:
  v40 = [v2 containingUrl];
  if (!v40)
  {

    (*(v62 + 56))(v9, 1, 1, v4);
    sub_1A937B960(v9, &unk_1EB387B80, qword_1A9587740);
    goto LABEL_30;
  }

  sub_1A957AF98();

  (*(v62 + 56))(v9, 0, 1, v4);
  sub_1A937B960(v9, &unk_1EB387B80, qword_1A9587740);
  v48 = [v2 containingUrl];
  if (!v48)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v49 = v48;
  sub_1A957AF98();

  v50 = objc_allocWithZone(MEMORY[0x1E69635F8]);
  v51 = sub_1A94FAEF4(v6, 0);
  v52 = [v51 bundleIdentifier];

  if (!v52)
  {

    goto LABEL_39;
  }

  v43 = sub_1A957C0F8();
  v44 = v53;

  v54 = [v2 identifier];
  if (v54)
  {
    v55 = v54;

    v40 = sub_1A957C0F8();
    v42 = v56;

    v46 = 0;
    v47 = (v57 << 32) | 0x61757370;
    v45 = v59;
    goto LABEL_31;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_1A94F58C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1A957C8A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1A94F5968()
{
  v1[33] = v0;
  v2 = sub_1A957BC88();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v4 = sub_1A94FF1F4(&unk_1EB386080, v3, type metadata accessor for SSELoaderManager, &protocol conformance descriptor for SSELoaderManager);
  v1[37] = v4;
  v5 = swift_task_alloc();
  v1[38] = v5;
  v6 = sub_1A937829C(&qword_1EB3882E8, &unk_1A9596668);
  *v5 = v1;
  v5[1] = sub_1A94F5AF4;

  return MEMORY[0x1EEE6DE38](v1 + 32, v0, v4, 0xD000000000000011, 0x80000001A95C4B20, sub_1A94F4DB8, 0, v6);
}

uint64_t sub_1A94F5AF4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  type metadata accessor for SSELoaderManager();
  v3 = sub_1A957C5A8();
  if (v0)
  {
    v5 = sub_1A94F61EC;
  }

  else
  {
    *(v2 + 320) = v3;
    *(v2 + 328) = v4;
    v5 = sub_1A94F5C58;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A94F5C58()
{
  v1 = *(v0 + 256);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 312);
    v3 = *(*(v0 + 264) + 32);
    *(v0 + 336) = v3;
    v4 = (*(*v3 + 184))();
    v5 = sub_1A94F6BDC(v4);
    *(v0 + 344) = v2;

    v6 = sub_1A94FF020(v5);

    v7 = sub_1A94FF020(v1);
    *(v0 + 352) = v7;

    if (*(v7 + 16) <= *(v6 + 16) >> 3)
    {
      sub_1A94FBB98(v7);
      v8 = v6;
    }

    else
    {
      v8 = sub_1A94FBCD0(v7, v6);
    }

    *(v0 + 360) = v8;
    v22 = *(v0 + 264);
    v23 = *(v8 + 32);
    *(v0 + 69) = v23;
    v24 = -1;
    v25 = -1 << v23;
    if (-(-1 << v23) < 64)
    {
      v24 = ~(-1 << -(-1 << v23));
    }

    v26 = v24 & *(v8 + 56);
    if (v26)
    {
      v27 = 0;
LABEL_19:
      *(v0 + 368) = v26;
      *(v0 + 376) = v27;
      v30 = (*(v8 + 48) + 56 * (__clz(__rbit64(v26)) | (v27 << 6)));
      v31 = v30[9];
      v32 = v30[10];
      v33 = *(v22 + 24);
      *(v0 + 240) = sub_1A9394D1C(v30[8]);
      *(v0 + 248) = v34;
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v35 = sub_1A9394D1C(v31);
      MEMORY[0x1AC585140](v35);

      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v36 = sub_1A9394D1C(v32);
      MEMORY[0x1AC585140](v36);

      v37 = *(v0 + 240);
      v38 = *(v0 + 248);
      *(v0 + 384) = v38;
      v45 = (*(*v33 + 288) + **(*v33 + 288));
      v39 = swift_task_alloc();
      *(v0 + 392) = v39;
      *v39 = v0;
      v39[1] = sub_1A94F6250;

      return v45(v37, v38);
    }

    else
    {
      v28 = 0;
      v29 = ((63 - v25) >> 6) - 1;
      while (v29 != v28)
      {
        v27 = v28 + 1;
        v26 = *(v8 + 8 * v28++ + 64);
        if (v26)
        {
          goto LABEL_19;
        }
      }

      v40 = *(v0 + 352);

      v41 = sub_1A94F6E58(v40);
      *(v0 + 400) = v41;

      v42 = *(v22 + 24);
      v43 = sub_1A94F4C74(v41);
      *(v0 + 408) = v43;
      v46 = (*(*v42 + 264) + **(*v42 + 264));
      v44 = swift_task_alloc();
      *(v0 + 416) = v44;
      *v44 = v0;
      v44[1] = sub_1A94F66F8;

      return v46(v43);
    }
  }

  else
  {

    if (qword_1EB3A0CC0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 272);
    v12 = sub_1A937731C(v11, qword_1EB3A0CC8);
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_1A957BC68();
    v14 = sub_1A957CA78();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A9324000, v13, v14, "Failed to perform SSE Scan", v15, 2u);
      MEMORY[0x1AC587CD0](v15, -1, -1);
    }

    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 272);

    (*(v17 + 8))(v16, v18);
    sub_1A94FF14C();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1A94F61EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94F6250()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1A94F6394, v3, v2);
}

void sub_1A94F6394()
{
  v1 = *(v0 + 376);
  v2 = (*(v0 + 368) - 1) & *(v0 + 368);
  if (v2)
  {
    v3 = *(v0 + 360);
LABEL_7:
    *(v0 + 368) = v2;
    *(v0 + 376) = v1;
    v5 = (*(v3 + 48) + 56 * (__clz(__rbit64(v2)) | (v1 << 6)));
    v6 = v5[9];
    v7 = v5[10];
    v8 = *(*(v0 + 264) + 24);
    *(v0 + 240) = sub_1A9394D1C(v5[8]);
    *(v0 + 248) = v9;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v10 = sub_1A9394D1C(v6);
    MEMORY[0x1AC585140](v10);

    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v11 = sub_1A9394D1C(v7);
    MEMORY[0x1AC585140](v11);

    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    *(v0 + 384) = v13;
    v21 = (*(*v8 + 288) + **(*v8 + 288));
    v14 = swift_task_alloc();
    *(v0 + 392) = v14;
    *v14 = v0;
    v14[1] = sub_1A94F6250;

    v21(v12, v13);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 360);
      if (v4 >= (((1 << *(v0 + 69)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 352);
    v16 = *(v0 + 264);

    v17 = sub_1A94F6E58(v15);
    *(v0 + 400) = v17;

    v18 = *(v16 + 24);
    v19 = sub_1A94F4C74(v17);
    *(v0 + 408) = v19;
    v22 = (*(*v18 + 264) + **(*v18 + 264));
    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v20[1] = sub_1A94F66F8;

    v22(v19);
  }
}

uint64_t sub_1A94F66F8()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1A94F6B68;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_1A94F6814;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

unint64_t sub_1A94F6814()
{
  v1 = *(v0 + 400);
  result = sub_1A94FED34(MEMORY[0x1E69E7CC0]);
  v3 = result;
  v43 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 400) + 32;
    while (1)
    {
      if (v5 >= *(v43 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      v15 = *v6;
      v16 = *(v6 + 16);
      v17 = *(v6 + 32);
      *(v0 + 61) = *(v6 + 45);
      *(v0 + 32) = v16;
      *(v0 + 48) = v17;
      *(v0 + 16) = v15;
      v18 = *(v0 + 48);
      v19 = *(v0 + 52);
      v20 = *(v0 + 56);
      sub_1A94FF0E4(v0 + 16, v0 + 72);
      v44 = sub_1A9394D1C(v18);
      v46 = v21;
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v22 = sub_1A9394D1C(v19);
      MEMORY[0x1AC585140](v22);

      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v23 = sub_1A9394D1C(v20);
      MEMORY[0x1AC585140](v23);

      v24 = v44;
      sub_1A94FF0E4(v0 + 16, v0 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v3;
      result = sub_1A937A490(v24, v46);
      v27 = *(v3 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_23;
      }

      v31 = v26;
      if (*(v3 + 24) < v30)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v40 = result;
      sub_1A94FB534();
      result = v40;
      if (v31)
      {
LABEL_3:
        v7 = result;

        v3 = v45;
        v8 = v45[7] + 56 * v7;
        v10 = *(v8 + 16);
        v9 = *(v8 + 32);
        v11 = *(v8 + 45);
        *(v0 + 184) = *v8;
        *(v0 + 229) = v11;
        *(v0 + 216) = v9;
        *(v0 + 200) = v10;
        v12 = *(v0 + 16);
        v13 = *(v0 + 32);
        v14 = *(v0 + 48);
        *(v8 + 45) = *(v0 + 61);
        *(v8 + 16) = v13;
        *(v8 + 32) = v14;
        *v8 = v12;
        sub_1A94FF11C(v0 + 184);
        result = sub_1A94FF11C(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v3 = v45;
      v45[(result >> 6) + 8] |= 1 << result;
      v33 = (v45[6] + 16 * result);
      *v33 = v24;
      v33[1] = v46;
      v34 = v45[7] + 56 * result;
      v35 = *(v0 + 61);
      v37 = *(v0 + 32);
      v36 = *(v0 + 48);
      *v34 = *(v0 + 16);
      *(v34 + 16) = v37;
      *(v34 + 32) = v36;
      *(v34 + 45) = v35;
      result = sub_1A94FF11C(v0 + 16);
      v38 = v45[2];
      v29 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v29)
      {
        goto LABEL_24;
      }

      v45[2] = v39;
LABEL_4:
      ++v5;
      v6 += 56;
      if (v4 == v5)
      {
        goto LABEL_16;
      }
    }

    sub_1A94FB204(v30, isUniquelyReferenced_nonNull_native);
    result = sub_1A937A490(v24, v46);
    if ((v31 & 1) != (v32 & 1))
    {

      return sub_1A957D438();
    }

LABEL_11:
    if (v31)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  v41 = *(v0 + 336);

  (*(*v41 + 192))(v3);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1A94F6B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94F6BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1A94FB720(0, v1, 0);
  v2 = v33;
  v28 = a1 + 64;
  result = sub_1A957CE18();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v27 = v1;
    v6 = *(a1 + 36);
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v28 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      v9 = *(a1 + 56) + 56 * v5;
      v11 = *(v9 + 16);
      v10 = *(v9 + 32);
      v12 = *v9;
      *&v32[13] = *(v9 + 45);
      v31 = v11;
      *v32 = v10;
      v30 = v12;
      result = sub_1A94FF0E4(&v30, v29);
      v33 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1A94FB720((v13 > 1), v14 + 1, 1);
        v2 = v33;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 56 * v14;
      v16 = v30;
      v17 = v31;
      v18 = *v32;
      *(v15 + 77) = *&v32[13];
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 32) = v16;
      v19 = 1 << *(a1 + 32);
      if (v5 >= v19)
      {
        goto LABEL_25;
      }

      v20 = *(v28 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v5 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (a1 + 72 + 8 * v8);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1A932D0A4(v5, v6, 0);
            v5 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_1A932D0A4(v5, v6, 0);
        v5 = v19;
      }

LABEL_18:
      if (v7 == v27)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(a1 + 36);
        ++v7;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94F6E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1A94FB6E8(0, v1, 0);
  v2 = v35;
  v28 = a1 + 56;
  result = sub_1A957CE18();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v27 = v1;
    v6 = *(a1 + 36);
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v28 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      v9 = *(a1 + 48) + 56 * v5;
      v11 = *(v9 + 16);
      v10 = *(v9 + 32);
      v12 = *v9;
      *&v34[13] = *(v9 + 45);
      v33 = v11;
      *v34 = v10;
      v32 = v12;
      result = sub_1A94FF810(&v32, &v29);
      v35 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1A94FB6E8((v13 > 1), v14 + 1, 1);
        v2 = v35;
      }

      v30 = v33;
      v31[0] = *v34;
      *(v31 + 13) = *&v34[13];
      v15 = v32;
      v29 = v32;
      *(v2 + 16) = v14 + 1;
      v16 = v2 + 56 * v14;
      v17 = v30;
      v18 = v31[0];
      *(v16 + 77) = *(v31 + 13);
      *(v16 + 48) = v17;
      *(v16 + 64) = v18;
      *(v16 + 32) = v15;
      v19 = 1 << *(a1 + 32);
      if (v5 >= v19)
      {
        goto LABEL_25;
      }

      v20 = *(v28 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v5 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v8 << 6;
        v23 = v8 + 1;
        v24 = (a1 + 64 + 8 * v8);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1A932D0A4(v5, v6, 0);
            v5 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_1A932D0A4(v5, v6, 0);
        v5 = v19;
      }

LABEL_18:
      if (v7 == v27)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(a1 + 36);
        ++v7;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A94F70E8(unint64_t a1, unsigned int a2)
{
  v3 = HIDWORD(a1);
  v7 = sub_1A9394D1C(a1);
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v4 = sub_1A9394D1C(v3);
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v5 = sub_1A9394D1C(a2);
  MEMORY[0x1AC585140](v5);

  return v7;
}

uint64_t SSEVoiceLoader.identifier.getter()
{
  v1 = v0[9];
  v2 = v0[10];
  v6 = sub_1A9394D1C(v0[8]);
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v3 = sub_1A9394D1C(v1);
  MEMORY[0x1AC585140](v3);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v4 = sub_1A9394D1C(v2);
  MEMORY[0x1AC585140](v4);

  return v6;
}

uint64_t sub_1A94F7218(uint64_t a1)
{
  v2[2] = v1;
  type metadata accessor for SSELoaderManager();
  sub_1A94FF1F4(&unk_1EB386080, v3, type metadata accessor for SSELoaderManager, &protocol conformance descriptor for SSELoaderManager);
  v5 = sub_1A957C5A8();
  v2[3] = v5;
  v2[4] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A94F72CC, v5, v4);
}

uint64_t sub_1A94F72CC()
{
  v12 = v0;
  v1 = v0[2];
  v2 = *(v1 + 24);
  v3 = (*(**(v1 + 32) + 184))();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_1A9457228(*(v3 + 16), 0);
    v7 = sub_1A94FEBDC(&v11, v6 + 4, v5, v4);
    sub_1A932D088(v11);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v0[5] = v6;
  v10 = (*(*v2 + 272) + **(*v2 + 272));
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1A94F748C;

  return v10(v6);
}

uint64_t sub_1A94F748C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    v3 = v2[3];
    v4 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1A938C248, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

void *SSELoaderManager.deinit()
{

  return v0;
}

uint64_t SSELoaderManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A94F763C(uint64_t a1)
{
  v1 = type metadata accessor for SSELoaderManager();
  v3 = sub_1A94FF1F4(&unk_1EB386070, v2, type metadata accessor for SSELoaderManager, &protocol conformance descriptor for SSELoaderManager);

  return TTSActor.unownedExecutor.getter(v1, v3);
}

unint64_t sub_1A94F76AC()
{
  v1 = 0x696669746E656469;
  v2 = 0x6E656E6F706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x7261507473726966;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1A94F7734@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94FF348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A94F775C(uint64_t a1)
{
  v2 = sub_1A94FF1A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94F7798(uint64_t a1)
{
  v2 = sub_1A94FF1A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94F77D4(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB3882F8, &unk_1A9596678);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF1A0();
  sub_1A957D598();
  LOBYTE(v11) = 0;
  sub_1A957D2E8();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1A957D298();
    v11 = *(v3 + 32);
    v12 = *(v3 + 48);
    v10[15] = 2;
    type metadata accessor for AudioComponentDescription();
    sub_1A94FF1F4(&qword_1EB385ED0, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
    sub_1A957D338();
    LOBYTE(v11) = 3;
    sub_1A957D2F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A94F7A18()
{
  sub_1A957D4F8();
  v1 = *(v0 + 24);
  sub_1A957C228();
  sub_1A957D518();
  if (v1)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

double sub_1A94F7B10@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1A94FF4C8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = v7[0];
    *(a1 + 32) = *v7;
    *(a1 + 45) = *(&v7[1] + 5);
  }

  return result;
}

uint64_t sub_1A94F7B7C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A957C228();
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  return sub_1A957D518();
}

uint64_t sub_1A94F7C70(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

uint64_t sub_1A94F7D80(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 12);
  v19 = *(a1 + 52);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 52);
  if (*a1 != *a2 || a1[1] != *(a2 + 8))
  {
    v18 = *(a2 + 40);
    v12 = *(a1 + 12);
    v13 = sub_1A957D3E8();
    LODWORD(v9) = v18;
    v6 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (v7)
    {
      if (v2 == v8 && v4 == v7)
      {
        goto LABEL_9;
      }

      v14 = v9;
      v15 = v6;
      v16 = sub_1A957D3E8();
      LODWORD(v9) = v14;
      v6 = v15;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_9:
  if (static AudioComponentDescription.== infix(_:_:)(v3, v5, v6, v10, v9))
  {
    return v19 ^ v11 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SSEVoiceLoader.reloadTriggers.getter()
{
  if (!*(v0 + 24))
  {
  }

  v1 = sub_1A957C0C8();

  v2 = [v1 hash];

  sub_1A937829C(&unk_1EB388300, &unk_1A9589B30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A9587160;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000029;
  *(v4 + 24) = 0x80000001A95C4B40;
  *(v4 + 32) = v2;
  *(v4 + 40) = 0;
  *(v3 + 32) = v4;
  return v3;
}

uint64_t SSEVoiceLoader.voices()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 61) = *(v0 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1A94F7FEC, 0, 0);
}

uint64_t sub_1A94F7FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v2 = v0;
  v2[1] = sub_1A94F80DC;

  return withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(v0 + 72, 10, &unk_1A95966A0, v1, 1.0, 2.0, 15.0);
}

uint64_t sub_1A94F80DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A93F6FAC;
  }

  else
  {

    v2 = sub_1A94F81F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A94F8214(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v3 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 61) = *(a2 + 45);
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_1A94F82C0;

  return sub_1A94F8424();
}

uint64_t sub_1A94F82C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1A94F840C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1A94F83E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A94F8424()
{
  v2 = sub_1A957CAD8();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = sub_1A957CBD8();
  *(v1 + 64) = swift_task_alloc();
  sub_1A957BF48();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = *v0;
  v3 = *(v0 + 24);
  *(v1 + 96) = *(v0 + 16);
  *(v1 + 104) = v3;
  *(v1 + 152) = *(v0 + 32);
  *(v1 + 168) = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A94F8564, 0, 0);
}

uint64_t sub_1A94F8564()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v15 = *(v0 + 32);
  v16 = *(v0 + 104);
  sub_1A9387478(0, &qword_1ED96FDA8, 0x1E69E9620);
  sub_1A957BF28();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A93B744C(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8098], v15);
  v3 = sub_1A957CBE8();
  *(v0 + 112) = v3;
  if (v16)
  {
    v4 = *(v0 + 104);
    v5 = (v0 + 96);
    v6 = *(v0 + 88);
  }

  else
  {
    v5 = (v0 + 80);
    v6 = *(v0 + 88);

    v4 = v6;
  }

  v7 = *v5;
  *(v0 + 120) = v4;
  v8 = *(v0 + 168);
  v9 = *(v0 + 80);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v11 = *(v0 + 152);
  *(v10 + 16) = v3;
  *(v10 + 24) = v11;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  *(v10 + 56) = v6;
  *(v10 + 64) = v7;
  *(v10 + 72) = v4;
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v12 = v0;
  v12[1] = sub_1A94F8804;

  return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0x28736563696F765FLL, 0xE900000000000029, sub_1A950038C, v10, v13);
}

uint64_t sub_1A94F8804()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A94F89BC;
  }

  else
  {

    v2 = sub_1A94F8928;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A94F8928()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A94F89BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94F8A64(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v42 = a7;
  v43 = a8;
  v39 = a5;
  v9 = a4;
  v10 = a3;
  v40 = a9;
  v41 = a6;
  v36 = HIDWORD(a3);
  v37 = HIDWORD(a4);
  v38 = a2;
  v46 = sub_1A957BF18();
  v48 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A957BF48();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  (*(v16 + 16))(&v35 - v18, a1, v15);
  v20 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v25 = v36;
  v24 = v37;
  *(v23 + 16) = v10;
  *(v23 + 20) = v25;
  *(v23 + 24) = v9;
  *(v23 + 28) = v24;
  *(v23 + 32) = v39;
  v26 = v38;
  *(v23 + 40) = v38;
  (*(v16 + 32))(v23 + v20, v19, v15);
  v27 = (v23 + v21);
  v28 = v42;
  *v27 = v41;
  v27[1] = v28;
  v29 = (v23 + v22);
  v30 = v40;
  *v29 = v43;
  v29[1] = v30;
  aBlock[4] = sub_1A95003C4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED8B0;
  v31 = _Block_copy(aBlock);
  v26;

  sub_1A957BF28();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0, MEMORY[0x1E69E6328]);
  v32 = v44;
  v33 = v46;
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v14, v32, v31);
  _Block_release(v31);
  (*(v48 + 8))(v32, v33);
  (*(v45 + 8))(v14, v47);
}

void sub_1A94F8E94(unint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v36 = a8;
  v37 = a3;
  v11 = a1;
  v30 = a2;
  v31 = a9;
  v33 = HIDWORD(a1);
  v34 = a6;
  v32 = HIDWORD(a2);
  v12 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v38 = objc_opt_self();
  (*(v13 + 16))(v16, a5, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  (*(v13 + 32))(v20 + v17, v16, v12);
  v21 = (v20 + v18);
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  v23 = (v20 + v19);
  LODWORD(v12) = v30;
  v24 = v31;
  *v23 = v36;
  v23[1] = v24;
  v25 = (v20 + ((v19 + 19) & 0xFFFFFFFFFFFFFFF8));
  v26 = v32;
  LODWORD(v19) = v33;
  *v25 = v11;
  v25[1] = v19;
  v25[2] = v12;
  v25[3] = v26;
  LODWORD(v17) = v37;
  v25[4] = v37;
  v43 = sub_1A9500494;
  v44 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1A94F9F20;
  v42 = &unk_1F1CFBB08;
  v27 = _Block_copy(&aBlock);
  v28 = a4;

  aBlock = __PAIR64__(v19, v11);
  v40 = __PAIR64__(v26, v12);
  LODWORD(v41) = v17;
  [v38 instantiateWithComponentDescription:&aBlock options:1 completionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_1A94F9100(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, int a11)
{
  v48 = a7;
  v49 = a8;
  v46 = a6;
  v42 = a5;
  v56 = a3;
  v40 = a2;
  v50 = a11;
  v45 = a10;
  v41 = a9;
  v44 = HIDWORD(a9);
  v47 = HIDWORD(a10);
  v53 = sub_1A957BF18();
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A957BF48();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  (*(v16 + 16))(&v39 - v18, a4, v15);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v40;
  *(v23 + 16) = a1;
  *(v23 + 24) = v24;
  (*(v16 + 32))(v23 + v20, v19, v15);
  v25 = (v23 + v21);
  v26 = v46;
  *v25 = v42;
  v25[1] = v26;
  v27 = (v23 + v22);
  v28 = v49;
  *v27 = v48;
  v27[1] = v28;
  v29 = (v23 + ((v22 + 19) & 0xFFFFFFFFFFFFFFF8));
  v31 = v44;
  v30 = v45;
  *v29 = v41;
  v29[1] = v31;
  v29[2] = v30;
  v29[3] = v47;
  v29[4] = v50;
  aBlock[4] = sub_1A950057C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CFBB58;
  v32 = _Block_copy(aBlock);
  v33 = a1;
  v34 = v24;

  v35 = v43;
  sub_1A957BF28();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1A94FF1F4(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0, MEMORY[0x1E69E6328]);
  v36 = v51;
  v37 = v53;
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v35, v36, v32);
  _Block_release(v32);
  (*(v55 + 8))(v36, v37);
  (*(v52 + 8))(v35, v54);
}

void *sub_1A94F9580@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, int a11)
{
  v98 = a8;
  v99 = a9;
  v89 = a6;
  v90 = a7;
  v88 = a5;
  v101 = sub_1A957B308();
  v106 = *(v101 - 8);
  v15 = MEMORY[0x1EEE9AC00](v101);
  v92 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88 - v19;
  v21 = *a1;
  v93 = a3;
  v94 = a4;
  if (a2)
  {
    v22 = [v21 identifier];
    v23 = sub_1A957C0F8();
    v96 = v24;
    v97 = v23;

    v95 = [v21 gender];
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A95873F0;
    v26 = sub_1A9493C9C();
  }

  else
  {
    v120[0] = a3;
    v120[1] = a4;

    MEMORY[0x1AC585140](46, 0xE100000000000000);
    v27 = [v21 identifier];
    v28 = sub_1A957C0F8();
    v30 = v29;

    MEMORY[0x1AC585140](v28, v30);

    v96 = v120[1];
    v97 = v120[0];
    v95 = [v21 gender];
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A95873F0;
    v26 = sub_1A9493C24();
  }

  *(v25 + 32) = *v26;
  *(v25 + 40) = *sub_1A9493C84();
  v115[0] = v25;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690, MEMORY[0x1E69E6328]);
  sub_1A957CE08();
  v121[0] = v120[0];
  v31 = [v21 primaryLanguages];
  v32 = sub_1A957C4C8();

  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v100 = v21;
  if (v33)
  {
    v120[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v33, 0);
    v35 = v120[0];
    v103 = v106 + 32;
    v104 = (v106 + 8);
    v102 = v32;
    v36 = v32 + 40;
    v37 = v20;
    v38 = v101;
    do
    {
      swift_bridgeObjectRetain_n();
      v39 = v105;
      sub_1A957B1B8();
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v37);

      (*v104)(v39, v38);
      v120[0] = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1A93ABB88((v40 > 1), v41 + 1, 1);
        v38 = v101;
        v35 = v120[0];
      }

      *(v35 + 16) = v41 + 1;
      (*(v106 + 32))(v35 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v41, v37, v38);
      v36 += 16;
      --v33;
    }

    while (v33);

    v21 = v100;
    v34 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1A94855D8(v35);
  v102 = v43;
  v103 = v42;
  v44 = [v21 supportedLanguages];
  v45 = sub_1A957C4C8();

  v46 = *(v45 + 16);
  v47 = v92;
  if (v46)
  {
    v120[0] = v34;
    sub_1A93ABB88(0, v46, 0);
    v48 = v120[0];
    v49 = (v106 + 8);
    v104 = (v106 + 32);
    v91 = v45;
    v50 = v45 + 40;
    v51 = v101;
    do
    {
      swift_bridgeObjectRetain_n();
      v52 = v105;
      sub_1A957B1B8();
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v47);

      (*v49)(v52, v51);
      v120[0] = v48;
      v53 = v47;
      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1A93ABB88((v54 > 1), v55 + 1, 1);
        v51 = v101;
        v48 = v120[0];
      }

      *(v48 + 16) = v55 + 1;
      (*(v106 + 32))(v48 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v55, v53, v51);
      v50 += 16;
      --v46;
      v47 = v53;
    }

    while (v46);

    v21 = v100;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1A94855D8(v48);
  v57 = v56;
  v59 = v58;

  v60 = sub_1A94FDE00(v103, v102, v57, v59);
  v62 = v61;
  v63 = [v21 isPersonalVoice];
  v105 = v59;
  v106 = v57;
  v104 = v60;
  v101 = v62;
  LODWORD(v92) = a11;
  v91 = a10;
  if (v63)
  {
    v64 = sub_1A949016C();
    sub_1A93B0A74(v120, *v64);
    v94 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 2;
    v70 = 3;
  }

  else if (v93 == 0xD00000000000002BLL && 0x80000001A95C4C30 == v94 || (sub_1A957D3E8() & 1) != 0)
  {
    v94 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 2;
    v70 = 4;
  }

  else
  {
    v71 = [v21 identifier];
    v72 = sub_1A957C0F8();
    v74 = v73;

    v75 = [v88 manufacturerName];
    v76 = sub_1A957C0F8();
    v78 = v77;

    v79 = v90;

    CoreSynthesizer.Voice.ThirdPartyVoiceDetails.init(rawIdentifier:manufacturerName:manufacturerBundleIdentifier:)(v72, v74, v76, v78, v89, v79, v120);
    v70 = v120[0];
    v94 = v120[1];
    v65 = v120[2];
    v66 = v120[3];
    v69 = 1;
    v67 = v120[4];
    v68 = v120[5];
  }

  if (v95 == 2)
  {
    v80 = 1;
  }

  else
  {
    v80 = 2;
  }

  if (v95 == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  v82 = [v21 name];
  v100 = sub_1A957C0F8();
  v95 = v83;

  v118 = 0;
  v117 = v81;
  v120[0] = v70;
  v120[1] = v94;
  v120[2] = v65;
  v120[3] = v66;
  v120[4] = v67;
  v120[5] = v68;
  LOBYTE(v120[6]) = v69;
  v84 = sub_1A937829C(&unk_1EB388370, &unk_1A9596DB0);
  v115[3] = v84;
  v116 = sub_1A93B744C(&qword_1EB3863E8, &unk_1EB388370, &unk_1A9596DB0, MEMORY[0x1E69955D8]);
  v115[0] = v103;
  v115[1] = v102;
  v114[3] = v84;
  v114[4] = v116;
  v114[0] = v104;
  v114[1] = v101;
  memset(v113, 0, 40);

  v85 = sub_1A93DA58C();
  sub_1A948F7A4(v111);
  v109[0] = v111[0];
  v109[1] = v111[1];
  v110 = v112;
  sub_1A9327184(&v108);
  v107 = 1;
  CoreSynthesizer.Voice.init(id:alternateIdentifiers:name:quality:gender:traits:type:primaryLocales:secondaryLocales:componentDescription:downloadSizeBytes:diskSizeBytes:assetId:state:newerAssetId:supersedingVoiceIdentifier:)(v97, v96, v85, v100, v95, &v118, &v117, v121, v119, v120, v115, v114, v98, v91, v92, v87, 0, 1, 0, 1, v109, &v108, v113, 0, 0);

  memcpy(v120, v119, sizeof(v120));
  nullsub_23();
  return memcpy(v99, v120, 0x118uLL);
}

void sub_1A94F9F20(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1A94F9FCC()
{
  v1 = v0[37];
  sub_1A93847E0((v0 + 2));
  memcpy(v1, v0 + 2, 0x118uLL);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1A94FA058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A957D3E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A94FA0DC(uint64_t a1)
{
  v2 = sub_1A94FF8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94FA118(uint64_t a1)
{
  v2 = sub_1A94FF8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SSEVoiceLoader.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&unk_1EB388310, &qword_1A95966B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = v1[1];
  v14 = *v1;
  v15 = v7;
  v16[0] = v1[2];
  *(v16 + 13) = *(v1 + 45);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF810(&v14, &v11);
  sub_1A94FF8E8();
  sub_1A957D598();
  v11 = v14;
  v12 = v15;
  v13[0] = v16[0];
  *(v13 + 13) = *(v16 + 13);
  sub_1A94FF93C();
  sub_1A957D338();
  v9[0] = v11;
  v9[1] = v12;
  v10[0] = v13[0];
  *(v10 + 13) = *(v13 + 13);
  sub_1A94FF990(v9);
  return (*(v4 + 8))(v6, v3);
}

uint64_t SSEVoiceLoader.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1A957C228();
  sub_1A957D518();
  if (v2)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  return sub_1A957D518();
}

uint64_t SSEVoiceLoader.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1A957D4F8();
  sub_1A957C228();
  sub_1A957D518();
  if (v1)
  {
    sub_1A957C228();
  }

  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription, &protocol conformance descriptor for AudioComponentDescription);
  sub_1A957C068();
  sub_1A957D518();
  return sub_1A957D548();
}

uint64_t SSEVoiceLoader.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&unk_1EB388320, &qword_1A95966C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF8E8();
  sub_1A957D588();
  if (!v2)
  {
    sub_1A94FF9C0();
    sub_1A957D238();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = *&v11[8];
    *(a2 + 16) = v9;
    *(a2 + 32) = *v13;
    *(a2 + 45) = *&v13[13];
  }

  return sub_1A9378138(a1);
}

uint64_t sub_1A94FA698()
{
  v1 = v0[9];
  v2 = v0[10];
  v6 = sub_1A9394D1C(v0[8]);
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v3 = sub_1A9394D1C(v1);
  MEMORY[0x1AC585140](v3);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v4 = sub_1A9394D1C(v2);
  MEMORY[0x1AC585140](v4);

  return v6;
}

uint64_t sub_1A94FA73C()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 61) = *(v0 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1A94FA770, 0, 0);
}

uint64_t sub_1A94FA770()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v2 = v0;
  v2[1] = sub_1A94FA860;

  return withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(v0 + 72, 10, &unk_1A9596D98, v1, 1.0, 2.0, 15.0);
}

uint64_t sub_1A94FA860()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A95013D4;
  }

  else
  {

    v2 = sub_1A95013DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A94FA99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A93836DC;

  return VoiceLoader.record(forVoice:)();
}

uint64_t sub_1A94FAA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A93836DC;

  return VoiceLoader.download(voice:)();
}

uint64_t sub_1A94FAB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A9382328;

  return VoiceLoader.cancelDownload(voice:)();
}

uint64_t sub_1A94FABC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A93836DC;

  return VoiceLoader.purge(voice:)();
}

uint64_t sub_1A94FAC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A93836DC;

  return VoiceLoader.downloadProgress(voice:)();
}

uint64_t sub_1A94FAD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A93836DC;

  return VoiceLoader.url(forVoice:)();
}

uint64_t sub_1A94FAE28()
{
  sub_1A957D4F8();
  SSEVoiceLoader.hash(into:)(v1);
  return sub_1A957D548();
}

uint64_t sub_1A94FAE6C(uint64_t a1)
{
  sub_1A957D4F8();
  SSEVoiceLoader.hash(into:)(v2);
  return sub_1A957D548();
}

id sub_1A94FAEF4(uint64_t a1, char a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A957AF58();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1A957AFD8();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1A957AEF8();

    swift_willThrow();
    v13 = sub_1A957AFD8();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}