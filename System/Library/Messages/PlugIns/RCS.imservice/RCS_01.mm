uint64_t sub_1D2E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 176);
  v4 = *(v0 + 336);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);

  v7 = v1(v5 + v4, *(v6 + 16), v2);
  *(v0 + 272) = v7;
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  *v8 = v0;
  v8[1] = sub_1D3D4;
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 128);

  return sub_D0920(v10, v9, v3, v7, v11);
}

uint64_t sub_1D3D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 288) = a1;
  *(v4 + 296) = v1;

  v12 = *(v3 + 272);
  if (v1)
  {
    *(v4 + 184), v5, v6, v7, v8, v9, v10, v11;

    v13 = sub_1E014;
  }

  else
  {

    v13 = sub_1D51C;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_1D51C()
{
  if (*(v0 + 288))
  {
    type metadata accessor for RCSFile.DispositionInformation(0);
    *(v0 + 304) = sub_F017C();
    *(v0 + 312) = v1;
    *(v0 + 320) = sub_F0ADC();
    v2 = sub_F0A6C();
    v4 = v3;
    v5 = sub_1DA08;
    goto LABEL_9;
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208) + 1;
  v10 = sub_37640(*(v0 + 160), type metadata accessor for RCSFile);
  if (v9 != v7)
  {
    v68 = *(v0 + 208) + 1;
    *(v0 + 208) = v68;
    *(v0 + 216) = v6;
    *(v0 + 200) = v8;
    v69 = *(v0 + 184);
    if (v68 < *(v69 + 16))
    {
      v70 = *(v0 + 128);
      v71 = *(v0 + 136);
      sub_23624(v69 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v68, *(v0 + 160), type metadata accessor for RCSFile);
      *(v0 + 224) = *(v71 + *(v70 + 44));
      v72 = *(v70 + 24);
      *(v0 + 232) = v72;
      *(v0 + 240) = *(v72 + 176);
      *(v0 + 248) = (v72 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
      *(v0 + 256) = sub_F0AEC();
      *(v0 + 264) = sub_F0ADC();
      v2 = sub_F0A6C();
      v4 = v73;
      v5 = sub_1D2E8;
LABEL_9:
      v10 = v5;
      v11 = v2;
      v12 = v4;

      return _swift_task_switch(v10, v11, v12);
    }

    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 184), v11, v12, v13, v14, v15, v16, v17;
  v18 = objc_allocWithZone(IMUrlToTransferMap);
  v19 = sub_F075C();
  v20 = [v18 initWithUrlToTransferGuids:v19];

  v21 = [v20 dictionaryRepresentation];
  v22 = sub_F076C();

  v23 = RCSRichCards.attributes.getter();
  v24 = sub_F07EC();
  v26 = v25;
  v27 = sub_F07EC();
  if (*v22[1].IMDTelephonyServiceSession_opaque)
  {
    v35 = v28;
    v36 = sub_51FEC(v27, v28);
    v38 = v37;
    v35, v37, v39, v40, v41, v42, v43, v44;
    if (v38)
    {
      sub_3FE38(*v22[3].state + 32 * v36, v0 + 16);
      v22, v52, v53, v54, v55, v56, v57, v58;
      sub_54F88((v0 + 16), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v23;
      sub_52328((v0 + 80), v24, v26, isUniquelyReferenced_nonNull_native);
      v26, v60, v61, v62, v63, v64, v65, v66;
      v67 = v23;
      goto LABEL_14;
    }
  }

  else
  {
    v28, v28, v29, v30, v31, v32, v33, v34;
  }

  v22, v45, v46, v47, v48, v49, v50, v51;
  sub_C7918(v24, v26, (v0 + 48));
  v26, v74, v75, v76, v77, v78, v79, v80;
  sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
  v67 = v23;
LABEL_14:
  v81 = *(*(v0 + 136) + 8);
  v82 = sub_51844(v67);
  v67, v83, v84, v85, v86, v87, v88, v89;
  v90 = sub_F075C();
  v82, v91, v92, v93, v94, v95, v96, v97;
  v98 = *v8[1].IMDTelephonyServiceSession_opaque;
  if (v98)
  {
    v114 = v81;
    sub_9D6B8(v98, 0);
    v99 = sub_BDF68();

    sub_66138(v115);
    if (v99 == v98)
    {
      v81 = v114;
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return _swift_task_switch(v10, v11, v12);
  }

LABEL_17:
  v101 = *(v0 + 128);
  v100 = *(v0 + 136);
  v102 = sub_F09EC();

  [v81 appendRichCards:v90 transferGuids:v102];

  v8, v103, v104, v105, v106, v107, v108, v109;
  v110 = *(v101 + 48);
  v111 = *(v100 + v110);
  if ((v111 & 1) == 0)
  {
    *(v100 + v110) = v111 | 1;
  }

  *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

  v112 = *(v0 + 8);

  return v112();
}

uint64_t sub_1DA08()
{
  v1 = *(v0 + 288);

  *(v0 + 328) = [v1 guid];

  return _swift_task_switch(sub_1DA90, 0, 0);
}

uint64_t sub_1DA90()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  if (v1)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 216);
    v6 = sub_F07EC();
    v8 = v7;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v5;
    sub_BC254(v6, v8, v3, v2, isUniquelyReferenced_nonNull_native);
    v2, v10, v11, v12, v13, v14, v15, v16;

    v17 = v5;
    v18 = v5;
  }

  else
  {
    v19 = sub_51FEC(*(v0 + 304), *(v0 + 312));
    v21 = v20;
    v2, v20, v22, v23, v24, v25, v26, v27;
    if (v21)
    {
      v29 = (v0 + 216);
      v28 = *(v0 + 216);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 112) = v28;
      if ((v30 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    v17 = *(v0 + 216);
    v18 = *(v0 + 200);
  }

  while (1)
  {
    v46 = *(v0 + 192);
    v19 = *(v0 + 208) + 1;
    sub_37640(*(v0 + 160), type metadata accessor for RCSFile);
    if (v19 != v46)
    {
      break;
    }

    *(v0 + 184), v47, v48, v49, v50, v51, v52, v53;
    v54 = objc_allocWithZone(IMUrlToTransferMap);
    v55 = sub_F075C();
    v56 = [v54 initWithUrlToTransferGuids:v55];

    v57 = [v56 dictionaryRepresentation];
    v58 = sub_F076C();

    v59 = RCSRichCards.attributes.getter();
    v60 = sub_F07EC();
    v62 = v61;
    v63 = sub_F07EC();
    if (*v58[1].IMDTelephonyServiceSession_opaque)
    {
      v71 = v64;
      v72 = sub_51FEC(v63, v64);
      v74 = v73;
      v71, v73, v75, v76, v77, v78, v79, v80;
      if (v74)
      {
        sub_3FE38(*v58[3].state + 32 * v72, v0 + 16);
        v58, v88, v89, v90, v91, v92, v93, v94;
        sub_54F88((v0 + 16), (v0 + 80));
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v153 = v59;
        sub_52328((v0 + 80), v60, v62, v95);
        v62, v96, v97, v98, v99, v100, v101, v102;
        v103 = v59;
        goto LABEL_17;
      }
    }

    else
    {
      v64, v64, v65, v66, v67, v68, v69, v70;
    }

    v58, v81, v82, v83, v84, v85, v86, v87;
    sub_C7918(v60, v62, (v0 + 48));
    v62, v111, v112, v113, v114, v115, v116, v117;
    sub_372B0(v0 + 48, &unk_127FB0, &qword_F2F40);
    v103 = v59;
LABEL_17:
    v118 = *(*(v0 + 136) + 8);
    v119 = sub_51844(v103);
    v103, v120, v121, v122, v123, v124, v125, v126;
    v127 = sub_F075C();
    v119, v128, v129, v130, v131, v132, v133, v134;
    v135 = *v18[1].IMDTelephonyServiceSession_opaque;
    if (!v135)
    {
      goto LABEL_20;
    }

    v151 = v127;
    v152 = v118;
    sub_9D6B8(v135, 0);
    v136 = sub_BDF68();
    v19 = v18;

    sub_66138(v153);
    if (v136 == v135)
    {
      v127 = v151;
      v118 = v152;
LABEL_20:
      v138 = *(v0 + 128);
      v137 = *(v0 + 136);
      v139 = sub_F09EC();

      [v118 appendRichCards:v127 transferGuids:v139];

      v18, v140, v141, v142, v143, v144, v145, v146;
      v147 = *(v138 + 48);
      v148 = *(v137 + v147);
      if ((v148 & 1) == 0)
      {
        *(v137 + v147) = v148 | 1;
      }

      *(*(v0 + 136) + *(*(v0 + 128) + 52)) = 9;

      v149 = *(v0 + 8);

      return v149();
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v29 = (v0 + 112);
    sub_BC80C();
LABEL_5:
    v17 = *v29;
    v38 = *(v0 + 288);
    *(*(v17 + 48) + 16 * v19 + 8), v31, v32, v33, v34, v35, v36, v37;
    *(*(v17 + 56) + 16 * v19 + 8), v39, v40, v41, v42, v43, v44, v45;
    sub_ECE64(v19, v17);

    v18 = v17;
  }

  v104 = *(v0 + 208) + 1;
  *(v0 + 208) = v104;
  *(v0 + 216) = v17;
  *(v0 + 200) = v18;
  v105 = *(v0 + 184);
  if (v104 >= *(v105 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v106 = *(v0 + 128);
  v107 = *(v0 + 136);
  sub_23624(v105 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v104, *(v0 + 160), type metadata accessor for RCSFile);
  *(v0 + 224) = *(v107 + *(v106 + 44));
  v108 = *(v106 + 24);
  *(v0 + 232) = v108;
  *(v0 + 240) = *(v108 + 176);
  *(v0 + 248) = (v108 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
  *(v0 + 256) = sub_F0AEC();
  *(v0 + 264) = sub_F0ADC();
  v110 = sub_F0A6C();

  return _swift_task_switch(sub_1D2E8, v110, v109);
}

uint64_t sub_1E014()
{
  v1 = v0[25];
  sub_37640(v0[20], type metadata accessor for RCSFile);
  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v1 + 40);
  *(v0 + 216) = v3;
  v4 = v2 + v3;
  v6 = v2 + v3 + *(type metadata accessor for RCSMessage(0) + 60);
  v7 = *(v6 + 24);
  *(v0 + 88) = v7;
  if (v7)
  {
    *(v0 + 96) = *(v6 + 16);
    *(v0 + 104) = *(v2 + *(v1 + 44));
    v8 = *(v1 + 24);
    *(v0 + 112) = v8;
    *(v0 + 120) = *(v8 + 176);
    *(v0 + 128) = (v8 + 176) & 0xFFFFFFFFFFFFLL | 0x3457000000000000;
    *(v0 + 136) = sub_F0AEC();
    *(v0 + 144) = sub_F0ADC();
    v10 = sub_F0A6C();

    return _swift_task_switch(sub_1E32C, v10, v9);
  }

  else
  {
    type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v1 + 16), *(v1 + 24), v5);
    swift_getWitnessTable();
    swift_allocError();
    v12 = v11;
    v13 = (v11 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v4, v12, type metadata accessor for RCSMessage);
    sub_F0F9C(42);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v18._object = 0x8000000000100A30;
    v18._countAndFlagsBits = 0xD00000000000001ALL;
    sub_F08CC(v18);
    sub_F10CC();
    v19._countAndFlagsBits = 0x72742061206F7420;
    v19._object = 0xEE00726566736E61;
    sub_F08CC(v19);
    v14 = *(v0 + 24);
    *v13 = *(v0 + 16);
    v13[1] = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E32C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 216);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  *(v0 + 152) = *(v5 + 16);
  v6 = v1(v4 + v3);
  *(v0 + 160) = v6;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1E420;
  v8 = *(v0 + 96);
  v9 = *(v0 + 48);
  v10 = *(v0 + 32);

  return sub_D0920(v10, v8, v2, v6, v9);
}

uint64_t sub_1E420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1ED98;
  }

  else
  {

    v4 = sub_1E53C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1E53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 176))
  {
    *(v4 + 192) = *(*(v4 + 56) + 8);
    *(v4 + 200) = sub_F0ADC();
    v6 = sub_F0A6C();

    return _swift_task_switch(sub_1E78C, v6, v5);
  }

  else
  {
    v7 = *(v4 + 216);
    v8 = *(v4 + 56);
    type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v4 + 152), *(v4 + 112), a4);
    swift_getWitnessTable();
    swift_allocError();
    v10 = v9;
    v11 = (v9 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v8 + v7, v10, type metadata accessor for RCSMessage);
    sub_F0F9C(42);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0xE000000000000000;
    v16._object = 0x8000000000100A30;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    sub_F08CC(v16);
    sub_F10CC();
    v17._countAndFlagsBits = 0x72742061206F7420;
    v17._object = 0xEE00726566736E61;
    sub_F08CC(v17);
    v12 = *(v4 + 24);
    *v11 = *(v4 + 16);
    v11[1] = v12;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = *(v4 + 8);

    return v13();
  }
}

uint64_t sub_1E78C()
{
  v1 = *(v0 + 176);

  *(v0 + 208) = [v1 guid];

  return _swift_task_switch(sub_1E814, 0, 0);
}

uint64_t sub_1E814()
{
  v103 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);
  [*(v0 + 192) appendFileTransferWithGUID:v1];

  if (v2 && (v3 = RCSChipList.attributes.getter()) != 0)
  {
    v4 = v3;
    v5 = sub_51844(v3);
    v4, v6, v7, v8, v9, v10, v11, v12;
    v13 = sub_F075C();
    v5, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v13 = 0;
  }

  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  [*(v0 + 192) appendChipList:v13];

  v23 = *(v21 + 48);
  v24 = *(v22 + v23);
  if ((v24 & 1) == 0)
  {
    v24 |= 1uLL;
    *(v22 + v23) = v24;
  }

  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  v28 = *(v0 + 32) + *(v26 + 20);
  v29 = sub_DA2FC();
  v31 = v30;
  v32 = sub_D002C(v29, v30);
  v31, v33, v34, v35, v36, v37, v38, v39;
  v40 = (v25 + *(v27 + 52));
  *v40 = v32;
  v40[1] = 0;
  v41 = type metadata accessor for RCSFile.DispositionInformation(0);
  if (*(v28 + *(v41 + 36)) == 2 && (v42 = (v28 + *(v41 + 40)), (v42[1] & 1) == 0))
  {
    v88 = *v42;
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v89 = sub_F06CC();
    sub_3C96C(v89, static Logger.rcs);
    v90 = sub_F06AC();
    v91 = sub_F0CCC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134217984;
      *(v92 + 4) = v88;
      _os_log_impl(&dword_0, v90, v91, "RCSFile disposition is .render and has timeLength %f, marking as audio message", v92, 0xCu);
    }

    v93 = *(v0 + 176);

    if ((v24 & 0x200000) == 0)
    {
      *(v22 + v23) = v24 | 0x200000;
    }

    *v40 = 2;
  }

  else
  {
    sub_DA2FC();
    v44 = v43;
    v45 = sub_F07BC();
    v44, v46, v47, v48, v49, v50, v51, v52;
    if ([v45 im_isAudioMessageExtension])
    {
      v100 = v40;
      v101 = v23;
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 72);
      v53 = *(v0 + 80);
      v55 = *(v0 + 32);
      v56 = sub_F06CC();
      sub_3C96C(v56, static Logger.rcs);
      sub_23624(v55, v53, type metadata accessor for RCSFile);
      sub_23624(v55, v54, type metadata accessor for RCSFile);
      v57 = v45;
      v58 = sub_F06AC();
      v59 = sub_F0CCC();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 176);
      v62 = *(v0 + 72);
      v63 = *(v0 + 80);
      if (v60)
      {
        v98 = *(v0 + 176);
        v64 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v64 = 136315650;
        v65 = v63 + *(v26 + 20);
        log = v58;
        v96 = v59;
        v66 = *(v65 + 24);
        v67 = *(v65 + 32);

        sub_37640(v63, type metadata accessor for RCSFile);
        v68 = sub_3E850(v66, v67, &v102);
        v67, v69, v70, v71, v72, v73, v74, v75;
        *(v64 + 4) = v68;
        *(v64 + 12) = 2112;
        *(v64 + 14) = v57;
        *v99 = v57;
        *(v64 + 22) = 2080;
        v76 = v62 + *(v26 + 20);
        v77 = *(v76 + 8);
        v78 = *(v76 + 16);
        v57 = v57;

        sub_37640(v62, type metadata accessor for RCSFile);
        v79 = sub_3E850(v77, v78, &v102);
        v78, v80, v81, v82, v83, v84, v85, v86;
        *(v64 + 24) = v79;
        _os_log_impl(&dword_0, log, v96, "Marking audio message based on type %s inferred ext %@ original filename %s", v64, 0x20u);
        sub_372B0(v99, &qword_127AF0, &qword_F28E0);

        swift_arrayDestroy();
      }

      else
      {

        sub_37640(v62, type metadata accessor for RCSFile);
        sub_37640(v63, type metadata accessor for RCSFile);
      }

      if ((v24 & 0x200000) == 0)
      {
        *(v22 + v101) = v24 | 0x200000;
      }

      *v100 = 2;
    }

    else
    {
      v87 = *(v0 + 176);
    }
  }

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_1ED98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1EE0C()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 200);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  sub_23624(v5, v4, type metadata accessor for RCSMessage);
  v8 = *(v6 + 16);
  v9 = v7;
  swift_unknownObjectRetain();
  sub_CE990(v9, v4, v8, v3, v2, v1);
  sub_5BD2C(v5, v0 + 16);
  if (*(v0 + 138))
  {
    v10 = *(v0 + 144);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    v15 = *(v0 + 64);
    v16 = sub_F07BC();
    [v10 setSender:v16];

    v17 = sub_F07BC();
    [v10 setUnformattedID:v17];

    if (v12 == 7103860 && v11 == 0xE300000000000000 || (sub_F122C() & 1) != 0)
    {
      v25 = sub_F07BC();
      v11, v26, v27, v28, v29, v30, v31, v32;
      v13, v33, v34, v35, v36, v37, v38, v39;
      v14, v40, v41, v42, v43, v44, v45, v46;
      v15, v47, v48, v49, v50, v51, v52, v53;
    }

    else
    {
      v125 = *(v0 + 192);
      v126 = *(v0 + 152);
      v11, v18, v19, v20, v21, v22, v23, v24;
      v13, v127, v128, v129, v130, v131, v132, v133;
      v14, v134, v135, v136, v137, v138, v139, v140;
      v15, v141, v142, v143, v144, v145, v146, v147;
      if (*(v126 + *(v125 + 60) + 8))
      {
        v25 = sub_F07BC();
      }

      else
      {
        v25 = 0;
      }
    }

    v54 = *(v0 + 144);
    v55 = IMCountryCodeForNumber();

    [v54 setCountryCode:v55];
    sub_5BD88(v0 + 80);
  }

  else
  {
    v56 = *(v0 + 240);
    v57 = *(*(v0 + 224) + 48);
    v58 = *(v56 + v57);
    if ((v58 & 4) == 0)
    {
      *(v56 + v57) = v58 | 4;
    }

    sub_5EFF4(v0 + 16);
  }

  v59 = *(v0 + 184);
  sub_37380(*(v0 + 152) + *(*(v0 + 192) + 32), v59, &unk_127FA0, &qword_F34C0);
  v60 = type metadata accessor for RCSMessage.Content(0);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {
    v63 = *(v0 + 232);
    v62 = *(v0 + 240);
    v64 = *(v0 + 224);
    v65 = *(v0 + 152);
    type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v0 + 208), *(v0 + 216), v61);
    swift_getWitnessTable();
    swift_allocError();
    v67 = v66;
    v68 = (v66 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
    sub_23624(v65, v67, type metadata accessor for RCSMessage);
    v69 = 0x80000000001007A0;
    v70 = 0xD000000000000044;
LABEL_12:
    *v68 = v70;
    v68[1] = v69;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v63 + 8))(v62, v64);
LABEL_13:

    v71 = *(v0 + 8);
LABEL_14:

    return v71();
  }

  v73 = *(v0 + 184);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v148 = *v73;
        v149 = *(v73 + 8);
        *(v0 + 248) = *(v73 + 24);
        v150 = *(v73 + 32);
        *(v0 + 256) = v150;
        v151 = swift_task_alloc();
        *(v0 + 264) = v151;
        *v151 = v0;
        v151[1] = sub_1FC44;
        v152 = *(v0 + 224);

        return sub_D0004(v150, v152, v148, v149);
      }

      v189 = *(v0 + 232);
      v188 = *(v0 + 240);
      v190 = *(v0 + 224);
      v191 = *(v0 + 152);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v0 + 208), *(v0 + 216), v75);
      swift_getWitnessTable();
      swift_allocError();
      v193 = v192;
      v194 = (v192 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v191, v193, type metadata accessor for RCSMessage);
      *v194 = 0xD00000000000005ALL;
      v194[1] = 0x8000000000100930;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v189 + 8))(v188, v190);
      v186 = type metadata accessor for RCSMessage.Content;
      v187 = v73;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v89 = *v73;
        v88 = *(v73 + 8);
        v90 = *(v73 + 16);
        v91 = [objc_opt_self() sharedFeatureFlags];
        v92 = [v91 isRCSEncryptionOptInTestEnabled];

        if (v92)
        {
          v219._countAndFlagsBits = sub_F07EC();
          object = v219._object;
          v94 = sub_F092C(v219);
          object, v95, v96, v97, v98, v99, v100, v101;
          if (v94)
          {
            v109 = *(v0 + 232);
            v110 = *(v0 + 216);
            v214 = *(v0 + 224);
            v216 = *(v0 + 240);
            v111 = *(v0 + 208);
            v112 = *(v0 + 152);
            v88, v102, v103, v104, v105, v106, v107, v108;
            type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, v111, v110, v113);
            swift_getWitnessTable();
            swift_allocError();
            v115 = v114;
            v116 = (v114 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
            sub_23624(v112, v115, type metadata accessor for RCSMessage);
            sub_F0F9C(79);
            v220._countAndFlagsBits = 0xD000000000000026;
            v220._object = 0x8000000000100A00;
            sub_F08CC(v220);
            v221._countAndFlagsBits = sub_F07EC();
            v117 = v221._object;
            sub_F08CC(v221);
            v117, v118, v119, v120, v121, v122, v123, v124;
            v222._object = 0x80000000001009D0;
            v222._countAndFlagsBits = 0xD000000000000027;
            sub_F08CC(v222);
            *v116 = 0;
            v116[1] = 0xE000000000000000;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            (*(v109 + 8))(v216, v214);
            goto LABEL_13;
          }
        }

        sub_CEA7C(v89, v88, v90, *(v0 + 224));
        v88, v201, v202, v203, v204, v205, v206, v207;

LABEL_48:
        v209 = *(v0 + 232);
        v208 = *(v0 + 240);
        v210 = *(v0 + 224);
        sub_CED90(v210);
        (*(v209 + 8))(v208, v210);

        v71 = *(v0 + 8);
        goto LABEL_14;
      }

      v159 = *(v0 + 176);
      v160 = *(v73 + *(sub_388C8(&qword_128028, &qword_F3670) + 48));
      *(v0 + 280) = v160;
      sub_22B7C(v73, v159, type metadata accessor for RCSFile);
      v161 = [objc_opt_self() sharedFeatureFlags];
      LODWORD(v159) = [v161 isRCSEncryptionOptInTestEnabled];

      if (!v159 || (v223._countAndFlagsBits = sub_F07EC(), v162 = v223._object, v163 = sub_F092C(v223), v162, v164, v165, v166, v167, v168, v169, v170, !v163))
      {
        v211 = swift_task_alloc();
        *(v0 + 288) = v211;
        *v211 = v0;
        v211[1] = sub_1FEE0;
        v212 = *(v0 + 224);
        v213 = *(v0 + 176);

        return sub_CECEC(v213, v160, v212);
      }

      v172 = *(v0 + 232);
      v173 = *(v0 + 224);
      v215 = *(v0 + 240);
      v217 = *(v0 + 176);
      v174 = *(v0 + 152);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v0 + 208), *(v0 + 216), v171);
      swift_getWitnessTable();
      swift_allocError();
      v176 = v175;
      v177 = (v175 + *(sub_388C8(&qword_128C20, &unk_F65C0) + 48));
      sub_23624(v174, v176, type metadata accessor for RCSMessage);
      sub_F0F9C(94);
      v224._countAndFlagsBits = 0xD000000000000035;
      v224._object = 0x8000000000100990;
      sub_F08CC(v224);
      v225._countAndFlagsBits = sub_F07EC();
      v178 = v225._object;
      sub_F08CC(v225);
      v178, v179, v180, v181, v182, v183, v184, v185;
      v226._object = 0x80000000001009D0;
      v226._countAndFlagsBits = 0xD000000000000027;
      sub_F08CC(v226);
      *v177 = 0;
      v177[1] = 0xE000000000000000;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v172 + 8))(v215, v173);
      v186 = type metadata accessor for RCSFile;
      v187 = v217;
    }

    sub_37640(v187, v186);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v77 = *(v0 + 232);
      v76 = *(v0 + 240);
      v153 = *(v0 + 216);
      v79 = *(v0 + 224);
      v154 = *(v0 + 208);
      v155 = *(v0 + 152);
      sub_37640(v73, type metadata accessor for RCSMessage.Content);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, v154, v153, v156);
      swift_getWitnessTable();
      swift_allocError();
      v158 = v157;
      v85 = (v157 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v155, v158, type metadata accessor for RCSMessage);
      v86 = 0x80000000001008C0;
      v87 = 0xD000000000000067;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        v63 = *(v0 + 232);
        v62 = *(v0 + 240);
        v64 = *(v0 + 224);
        v195 = *(v0 + 152);
        type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, *(v0 + 208), *(v0 + 216), v75);
        swift_getWitnessTable();
        swift_allocError();
        v197 = v196;
        v68 = (v196 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
        sub_23624(v195, v197, type metadata accessor for RCSMessage);
        v69 = 0x80000000001007F0;
        v70 = 0xD000000000000050;
        goto LABEL_12;
      }

      v77 = *(v0 + 232);
      v76 = *(v0 + 240);
      v78 = *(v0 + 216);
      v79 = *(v0 + 224);
      v80 = *(v0 + 208);
      v81 = *(v0 + 152);
      sub_37640(v73, type metadata accessor for RCSMessage.Content);
      type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, v80, v78, v82);
      swift_getWitnessTable();
      swift_allocError();
      v84 = v83;
      v85 = (v83 + *(sub_388C8(&qword_128308, &qword_F3480) + 48));
      sub_23624(v81, v84, type metadata accessor for RCSMessage);
      v86 = 0x8000000000100850;
      v87 = 0xD000000000000068;
    }

    *v85 = v87;
    v85[1] = v86;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v77 + 8))(v76, v79);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_CEB68(*v73, *(v0 + 224));
    goto LABEL_48;
  }

  v198 = *v73;
  *(v0 + 304) = *v73;
  v199 = swift_task_alloc();
  *(v0 + 312) = v199;
  *v199 = v0;
  v199[1] = sub_200D8;
  v200 = *(v0 + 224);

  return sub_CEC28(v198, v200);
}

uint64_t sub_1FC44()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    *(v2 + 248), v3, v4, v5, v6, v7, v8, v9;
    v10 = sub_1FE2C;
  }

  else
  {
    v10 = sub_1FD60;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1FD60()
{
  v1 = v0[31];

  v1, v2, v3, v4, v5, v6, v7, v8;
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  sub_CED90(v11);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1FE2C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1FEE0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_202B0;
  }

  else
  {
    v2 = sub_1FFF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1FFF4()
{
  v1 = v0[22];

  sub_37640(v1, type metadata accessor for RCSFile);
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  sub_CED90(v4);
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_200D8()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_20384;
  }

  else
  {
    v2 = sub_201EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_201EC()
{

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_CED90(v3);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_202B0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[22];

  (*(v2 + 8))(v1, v3);
  sub_37640(v4, type metadata accessor for RCSFile);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20384()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20438()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[32];
  sub_388C8(&qword_127B20, &unk_F74E0);
  v4 = swift_task_alloc();
  v0[39] = v4;
  sub_F02FC();
  v5 = sub_F030C();
  v0[40] = v5;
  v6 = *(v5 - 8);
  v0[41] = v6;
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_37380(v3 + *(v2 + 32), v1, &unk_127FA0, &qword_F34C0);
  v7 = type metadata accessor for RCSMessage.Content(0);
  v8 = (*(*(v7 - 8) + 48))(v1, 1, v7);
  v9 = 0;
  if (v8 != 1)
  {
    sub_37380(v0[38], v0[37], &unk_127FA0, &qword_F34C0);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v9 = 8;
    }

    else
    {
      sub_37640(v0[37], type metadata accessor for RCSMessage.Content);
      v9 = 0;
    }
  }

  v0[42] = v9;
  sub_372B0(v0[38], &unk_127FA0, &qword_F34C0);
  v10 = sub_F035C();
  v0[43] = v10;
  v0[44] = *(v10 - 8);
  v0[45] = swift_task_alloc();
  v0[46] = sub_F0AEC();
  v0[47] = sub_F0ADC();
  v12 = sub_F0A6C();

  return _swift_task_switch(sub_206BC, v12, v11);
}

uint64_t sub_206BC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 256);

  sub_CF0B8(v2, v1);

  return _swift_task_switch(sub_20740, 0, 0);
}

uint64_t sub_20740(uint64_t a1)
{
  v107 = v1;
  v3 = *(v1 + 352);
  v2 = *(v1 + 360);
  v4 = *(v1 + 344);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v7 = *(v1 + 312);
  sub_F032C();
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v10 = 0;
  }

  else
  {
    v12 = *(v1 + 320);
    v11 = *(v1 + 328);
    v13 = *(v1 + 312);
    v10 = sub_F028C();
    (*(v11 + 8))(v13, v12);
  }

  v14 = *(v1 + 336);
  v104 = *(v1 + 280);
  v15 = *(v1 + 256);
  v16 = objc_allocWithZone(IMMessageItem);
  v17 = sub_F09EC();
  v18 = sub_F07BC();
  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = [v16 initWithSender:0 time:v10 body:0 attributes:0 fileTransferGUIDs:v17 flags:v14 error:0 guid:v18 threadIdentifier:0];
  *(v1 + 384) = v26;

  v27 = sub_F07BC();
  [v26 setFallbackHash:v27];

  v28 = *(v104 + 60);
  v29 = (v15 + v28);
  if (*(v15 + v28 + 8))
  {
    v30 = *(v15 + v28 + 8);
LABEL_8:
    v31 = v26;

    v32 = sub_F07BC();
    v30, v33, v34, v35, v36, v37, v38, v39;
    goto LABEL_9;
  }

  v30 = v29[3];
  if (v30)
  {

    goto LABEL_8;
  }

  v60 = v26;
  v32 = 0;
LABEL_9:
  v40 = *(v1 + 280);
  v41 = *(v1 + 256);
  [v26 setDestinationCallerID:v32];

  if (*(v41 + *(v40 + 44)) == 1)
  {
    [v26 setBalloonBundleID:IMBalloonBundleIdentifierChatBot];
  }

  v42 = *(*(v1 + 256) + 160);
  [v26 setEncrypted:v42 != 0];
  if (v42 >= 2)
  {
    v43 = v42;
    v44 = [v26 messageSummaryInfo];
    if (!v44)
    {
      v45 = sub_F075C();
      [v26 setMessageSummaryInfo:v45];
      v44 = v45;
    }

    v46 = [v26 messageSummaryInfo];
    if (v46)
    {
      v47 = v46;
      v48 = sub_F076C();

      *(v1 + 240) = sub_F07EC();
      *(v1 + 248) = v49;
      sub_F0F3C();
      *(v1 + 184) = sub_37310(0, qword_12A1D0, CTLazuliOriginalMessageID_ptr);
      *(v1 + 160) = v43;
      sub_54F88((v1 + 160), (v1 + 192));
      v50 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      IMDTelephonyServiceSession_opaque = v48->IMDTelephonyServiceSession_opaque;
      sub_525C0((v1 + 192), v1 + 56, isUniquelyReferenced_nonNull_native);
      sub_54F34(v1 + 56);
      if (v48)
      {
        v52 = sub_F075C();
        v48, v53, v54, v55, v56, v57, v58, v59;
      }

      else
      {
        v52 = 0;
      }

      [v26 setMessageSummaryInfo:v52];
    }

    else
    {
      [v26 setMessageSummaryInfo:0];
    }

    v61 = [v26 messageSummaryInfo];
    if (v61)
    {
      v62 = v61;
      v63 = sub_F076C();

      *(v1 + 224) = sub_F07EC();
      *(v1 + 232) = v64;
      sub_F0F3C();
      v65 = [v43 secureGroupVersion];
      *(v1 + 120) = sub_37310(0, &qword_128DE0, CTLazuliSecureGroupVersion_ptr);
      *(v1 + 96) = v65;
      sub_54F88((v1 + 96), (v1 + 128));
      v66 = swift_isUniquelyReferenced_nonNull_native();
      IMDTelephonyServiceSession_opaque = v63;
      sub_525C0((v1 + 128), v1 + 16, v66);
      sub_54F34(v1 + 16);
      v67 = v63;
      if (v63)
      {
        v68 = sub_F075C();
        v67, v69, v70, v71, v72, v73, v74, v75;
      }

      else
      {
        v68 = 0;
      }

      [v26 setMessageSummaryInfo:v68];
    }

    else
    {
      [v26 setMessageSummaryInfo:0];
    }

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v76 = *(v1 + 288);
    v77 = *(v1 + 256);
    v78 = sub_F06CC();
    sub_3C96C(v78, static Logger.rcs);
    sub_23624(v77, v76, type metadata accessor for RCSMessage);
    v79 = v43;
    v80 = sub_F06AC();
    v81 = sub_F0CDC();
    sub_CE48C(v42);
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v1 + 288);
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      IMDTelephonyServiceSession_opaque = v105;
      *v84 = 136315650;
      v103 = v42;
      v86 = v79;
      v88 = *(v83 + 128);
      v87 = *(v83 + 136);

      sub_37640(v83, type metadata accessor for RCSMessage);
      v89 = sub_3E850(v88, v87, &IMDTelephonyServiceSession_opaque);
      v87, v90, v91, v92, v93, v94, v95, v96;
      *(v84 + 4) = v89;
      *(v84 + 12) = 2112;
      *(v84 + 14) = v86;
      *v85 = v103;
      *(v84 + 22) = 2112;
      v97 = [v86 secureGroupVersion];
      *(v84 + 24) = v97;
      v85[1] = v97;
      _os_log_impl(&dword_0, v80, v81, "Set message summary info for RCSMessage->IMMessageItem %s with originalID(%@), secureGroupVersion(%@) in the failure to decrypt case.", v84, 0x20u);
      sub_388C8(&qword_127AF0, &qword_F28E0);
      swift_arrayDestroy();

      sub_1EDC(v105);

      sub_CE48C(v103);
    }

    else
    {

      sub_CE48C(v42);
      sub_37640(v83, type metadata accessor for RCSMessage);
    }
  }

  v98 = *(v1 + 272);
  *(v1 + 392) = *(*(v1 + 264) + 16);
  *(v1 + 400) = *v29;
  *(v1 + 408) = v29[1];
  *(v1 + 416) = v29[2];
  *(v1 + 424) = v29[3];
  v99 = *(v98 + 88);
  *(v1 + 432) = v99;
  *(v1 + 440) = *(v99 + 184);
  *(v1 + 448) = (v99 + 184) & 0xFFFFFFFFFFFFLL | 0x9998000000000000;
  *(v1 + 456) = sub_F0ADC();
  v101 = sub_F0A6C();

  return _swift_task_switch(sub_20F64, v101, v100);
}

uint64_t sub_20F64()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[34];

  v0[58] = v2(v6, v5, v3, v4, *(v7 + 80), v1);

  return _swift_task_switch(sub_21020, 0, 0);
}

uint64_t sub_21020()
{
  if (*(v0 + 464))
  {
    [*(v0 + 384) setContext:*(v0 + 464)];
    swift_unknownObjectRelease();
  }

  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_210E4;
  v2 = *(v0 + 384);
  v3 = *(v0 + 256);

  return sub_CEF28(v2, v3);
}

uint64_t sub_210E4()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_21248, 0, 0);
  }

  else
  {

    v3 = v2[1];
    v4 = v2[48];

    return v3(v4);
  }
}

uint64_t sub_21248()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_212D4()
{
  v1 = v0[29];
  v0[40] = *(v0[28] + 16);
  v0[41] = *(v1 + 192);
  v0[42] = (v1 + 192) & 0xFFFFFFFFFFFFLL | 0xC96A000000000000;
  v0[43] = sub_F0AEC();
  v0[44] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_21384, v3, v2);
}

uint64_t sub_21384()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);

  *(v0 + 640) = v1(v4, v2, v3) & 1;

  return _swift_task_switch(sub_21424, 0, 0);
}

uint64_t sub_21424()
{
  if (*(v0 + 640) == 1)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v1 = sub_F06CC();
    sub_3C96C(v1, static Logger.rcs);
    v2 = sub_F06AC();
    v3 = sub_F0CEC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "Dropping message because the sender is blocked.", v4, 2u);
    }

    v5 = *(v0 + 288);
    v6 = *(v0 + 248);
    v7 = *(v0 + 208);

    (*(v5 + 56))(v7, 1, 1, v6);

    v8 = *(v0 + 8);

    return v8(0);
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 216);
  v12 = type metadata accessor for RCSMessage(0);
  *(v0 + 360) = v12;
  sub_37380(v11 + *(v12 + 32), v10, &unk_127FA0, &qword_F34C0);
  v13 = type metadata accessor for RCSMessage.Content(0);
  v14 = (*(*(v13 - 8) + 48))(v10, 1, v13);
  v15 = *(v0 + 280);
  if (v14 == 1)
  {
    sub_372B0(*(v0 + 280), &unk_127FA0, &qword_F34C0);
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_37640(v15, type metadata accessor for RCSMessage.Content);
LABEL_14:
    sub_37380(*(v0 + 216) + *(v12 + 36), v0 + 168, &qword_127B08, &qword_F29A0);
    v26 = *(v0 + 232);
    if (*(v0 + 192))
    {
      sub_55248((v0 + 168), v0 + 128);
      *(v0 + 400) = *(v26 + 144);
      *(v0 + 408) = (v26 + 144) & 0xFFFFFFFFFFFFLL | 0xB1B7000000000000;
      *(v0 + 416) = sub_F0ADC();
      v22 = sub_F0A6C();
      v24 = v27;
      v25 = sub_219A0;
    }

    else
    {
      sub_372B0(v0 + 168, &qword_127B08, &qword_F29A0);
      *(v0 + 424) = *(v26 + 152);
      *(v0 + 432) = (v26 + 152) & 0xFFFFFFFFFFFFLL | 0x6396000000000000;
      *(v0 + 440) = sub_F0ADC();
      v22 = sub_F0A6C();
      v24 = v28;
      v25 = sub_21D10;
    }

    goto LABEL_17;
  }

  v16 = *(v0 + 232);
  v17 = *v15;
  v18 = v15[2];
  *(v0 + 32) = v15[1];
  *(v0 + 48) = v18;
  *(v0 + 16) = v17;
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[6];
  *(v0 + 96) = v15[5];
  *(v0 + 112) = v21;
  *(v0 + 64) = v19;
  *(v0 + 80) = v20;
  *(v0 + 368) = *(v16 + 136);
  *(v0 + 376) = (v16 + 136) & 0xFFFFFFFFFFFFLL | 0x56C3000000000000;
  *(v0 + 384) = sub_F0ADC();
  v22 = sub_F0A6C();
  v24 = v23;
  v25 = sub_217F0;
LABEL_17:

  return _swift_task_switch(v25, v22, v24);
}

uint64_t sub_217F0()
{
  v1 = v0[46];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];

  v1(v4, v0 + 2, v2, v3);
  v0[49] = 0;
  (*(v0[36] + 8))(v0[38], v0[31]);

  return _swift_task_switch(sub_218D4, 0, 0);
}

uint64_t sub_218D4()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[26];
  sub_53D58((v0 + 2));
  (*(v1 + 56))(v3, 1, 1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_219A0()
{
  v1 = v0[50];
  v3 = v0[29];
  v2 = v0[30];

  v1(v0 + 16, v2, v3);

  return _swift_task_switch(sub_21A3C, 0, 0);
}

uint64_t sub_21A3C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    (*(*(v0 + 264) + 8))(v2, *(v0 + 256));
    type metadata accessor for RCSMessageReceiver.MessageProcessingError(0, v4, v5, v7);
    swift_getWitnessTable();
    swift_allocError();
    sub_23624(v6, v8, type metadata accessor for RCSMessage);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1EDC((v0 + 128));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 312);
    sub_1EDC((v0 + 128));
    (*(v1 + 32))(v11, v2, v3);
    v12 = *(v0 + 216);
    v13 = *(v12 + *(*(v0 + 360) + 52));
    *(v0 + 641) = v13;
    if (v13)
    {
      if (v12[19])
      {
        v14 = v12[18];
        v15 = v12[19];
      }

      else
      {
        v14 = v12[16];
        v15 = v12[17];
      }

      *(v0 + 456) = v14;
      *(v0 + 464) = v15;
      v18 = *(v0 + 232);
      *(v0 + 472) = *(v18 + 216);
      *(v0 + 480) = (v18 + 216) & 0xFFFFFFFFFFFFLL | 0x81EE000000000000;

      *(v0 + 488) = sub_F0ADC();
      v20 = sub_F0A6C();

      return _swift_task_switch(sub_21F40, v20, v19);
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 568) = v16;
      *v16 = v0;
      v16[1] = sub_2238C;
      v17 = *(v0 + 216);

      return sub_CFBA4(v17);
    }
  }
}

uint64_t sub_21D10()
{
  v1 = v0[53];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];

  v1(v4, v2, v3);
  v0[56] = 0;

  return _swift_task_switch(sub_21DD4, 0, 0);
}

uint64_t sub_21DD4()
{
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 296), *(v0 + 248));
  v1 = *(v0 + 216);
  v2 = *(v1 + *(*(v0 + 360) + 52));
  *(v0 + 641) = v2;
  if (v2 == 1)
  {
    if (v1[19])
    {
      v3 = v1[18];
      v4 = v1[19];
    }

    else
    {
      v3 = v1[16];
      v4 = v1[17];
    }

    *(v0 + 456) = v3;
    *(v0 + 464) = v4;
    v8 = *(v0 + 232);
    *(v0 + 472) = *(v8 + 216);
    *(v0 + 480) = (v8 + 216) & 0xFFFFFFFFFFFFLL | 0x81EE000000000000;

    *(v0 + 488) = sub_F0ADC();
    v10 = sub_F0A6C();

    return _swift_task_switch(sub_21F40, v10, v9);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 568) = v5;
    *v5 = v0;
    v5[1] = sub_2238C;
    v6 = *(v0 + 216);

    return sub_CFBA4(v6);
  }
}

uint64_t sub_21F40()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v5 = v0[29];
  v4 = v0[30];

  v0[62] = v2(v3, v1, v4, v5);
  v1, v6, v7, v8, v9, v10, v11, v12;

  return _swift_task_switch(sub_21FF0, 0, 0);
}

uint64_t sub_21FF0()
{
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[45];
    v3 = v0[29];
    v4 = v0[27];
    v5 = sub_F07BC();
    [v1 setFallbackHash:v5];

    v6 = (v4 + *(v2 + 60));
    v0[63] = *v6;
    v0[64] = v6[1];
    v0[65] = v6[2];
    v0[66] = v6[3];
    v0[67] = *(v3 + 184);
    v0[68] = (v3 + 184) & 0xFFFFFFFFFFFFLL | 0x9998000000000000;
    v7 = v1;
    v0[69] = sub_F0ADC();
    v9 = sub_F0A6C();

    return _swift_task_switch(sub_22174, v9, v8);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[71] = v10;
    *v10 = v0;
    v10[1] = sub_2238C;
    v11 = v0[27];

    return sub_CFBA4(v11);
  }
}

uint64_t sub_22174()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[29];
  v6 = v0[30];

  v0[70] = v1(v5, v4, v3, v2, v6, v7);

  return _swift_task_switch(sub_22238, 0, 0);
}

uint64_t sub_22238()
{
  v1 = *(v0 + 496);
  if (*(v0 + 560))
  {
    [*(v0 + 496) setContext:*(v0 + 560)];
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 496);
  *(v0 + 600) = v2;
  *(v0 + 592) = v2;
  v10 = (*(*(v0 + 232) + 200) + **(*(v0 + 232) + 200));
  v3 = swift_task_alloc();
  *(v0 + 608) = v3;
  *v3 = v0;
  v3[1] = sub_225DC;
  v4 = *(v0 + 312);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);

  return v10(v7, v2, v8, v4, v5, v6);
}

uint64_t sub_2238C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v5 = sub_22A58;
  }

  else
  {
    *(v4 + 584) = a1;
    v5 = sub_224B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_224B4()
{
  v1 = v0[73];
  v0[75] = v1;
  v0[74] = v1;
  v9 = (*(v0[29] + 200) + **(v0[29] + 200));
  v2 = swift_task_alloc();
  v0[76] = v2;
  *v2 = v0;
  v2[1] = sub_225DC;
  v3 = v0[39];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[26];
  v7 = v0[27];

  return v9(v6, v1, v7, v3, v4, v5);
}

uint64_t sub_225DC()
{

  return _swift_task_switch(sub_226D8, 0, 0);
}

uint64_t sub_226D8(uint64_t a1)
{
  v2 = v1[29];
  v1[77] = *(v2 + 24);
  v1[78] = (v2 + 24) & 0xFFFFFFFFFFFFLL | 0x9197000000000000;
  v1[79] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_22778, v4, v3);
}

uint64_t sub_22778()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 592);
  v3 = *(v0 + 641);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 208);

  v1(v2, v6, v3, v4, v5);

  return _swift_task_switch(sub_2282C, 0, 0);
}

uint64_t sub_2282C()
{
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[26];
  (*(v1 + 8))(v0[39], v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  v4 = v0[75];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22918()
{
  sub_53D58(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22A58()
{
  (*(v0[36] + 8))(v0[39], v0[31]);

  v1 = v0[1];

  return v1();
}

void sub_22B10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for RCSMessage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BE4()
{
  v1 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 16) longitude:*(v0 + 24)];
  *(v0 + 56) = v1;
  v2 = IMVCardDataFromLocation();
  if (v2)
  {
    v3 = v2;
    v4 = sub_F025C();
    v6 = v5;

    *(v0 + 64) = v4;
    *(v0 + 72) = v6;
    v31 = v6;
    v7 = sub_F01EC();
    *(v0 + 80) = v7;
    v8 = *(v7 - 8);
    *(v0 + 88) = v8;
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    v10 = [objc_opt_self() defaultManager];
    v11 = sub_F07BC();
    v12 = [v10 im_randomTemporaryFileURLWithFileName:v11];

    v13 = swift_task_alloc();
    if (v12)
    {
      v15 = *(v0 + 40);
      v14 = *(v0 + 48);
      v16 = v13;
      sub_F01AC();

      (*(v8 + 32))(v9, v16, v7);

      *(v0 + 104) = *(v14 + *(v15 + 44));
      v20 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v20 != 2)
        {
          v21 = 0;
          goto LABEL_18;
        }

        v25 = *(v4 + 16);
        v24 = *(v4 + 24);
        v26 = __OFSUB__(v24, v25);
        v21 = v24 - v25;
        if (!v26)
        {
LABEL_18:
          *(v0 + 112) = v21;
          v27 = *(*(v0 + 40) + 24);
          *(v0 + 120) = v27;
          *(v0 + 128) = *(v27 + 40);
          *(v0 + 136) = (v27 + 40) & 0xFFFFFFFFFFFFLL | 0xB17F000000000000;
          *(v0 + 144) = sub_F0AEC();
          *(v0 + 152) = sub_F0ADC();
          v28 = sub_F0A6C();
          v30 = v29;
          v17 = sub_22F08;
          v18 = v28;
          v19 = v30;

          return _swift_task_switch(v17, v18, v19);
        }

        __break(1u);
      }

      else if (!v20)
      {
        v21 = BYTE6(v31);
        goto LABEL_18;
      }

      LODWORD(v21) = HIDWORD(v4) - v4;
      if (__OFSUB__(HIDWORD(v4), v4))
      {
        __break(1u);
        return _swift_task_switch(v17, v18, v19);
      }

      v21 = v21;
      goto LABEL_18;
    }

    sub_5F048(v4, v6);
  }

  else
  {
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22F08()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[5];

  v0[20] = *(v4 + 16);
  v0[21] = v1(0x762E636F6C2E4C43, 0xEA00000000006663, v2, v3);
  v0[22] = 0;

  return _swift_task_switch(sub_22FE4, 0, 0);
}

uint64_t sub_22FE4()
{
  v1 = v0[22];
  sub_F026C();
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[9];
    v5 = v0[7];
    v4 = v0[8];
    (*(v0[11] + 8))(v0[12], v0[10]);

    sub_5F048(v4, v3);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[15];
    v0[23] = *(v8 + 64);
    v0[24] = (v8 + 64) & 0xFFFFFFFFFFFFLL | 0x5849000000000000;
    v0[25] = sub_F0ADC();
    v10 = sub_F0A6C();

    return _swift_task_switch(sub_23120, v10, v9);
  }
}

uint64_t sub_23120()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[15];

  v1(v3, v2, v4);

  return _swift_task_switch(sub_231B8, 0, 0);
}

uint64_t sub_231B8(uint64_t a1)
{
  v2 = v1[15];
  v1[26] = *(v2 + 80);
  v1[27] = (v2 + 80) & 0xFFFFFFFFFFFFLL | 0xE026000000000000;
  v1[28] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_23254, v4, v3);
}

uint64_t sub_23254()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[15];

  v1(v3, v2, v4);

  return _swift_task_switch(sub_232EC, 0, 0);
}

uint64_t sub_232EC(uint64_t a1)
{
  v1[29] = *(v1[6] + 8);
  v1[30] = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_23384, v3, v2);
}

uint64_t sub_23384()
{
  v1 = *(v0 + 168);

  *(v0 + 248) = [v1 guid];

  return _swift_task_switch(sub_2340C, 0, 0);
}

uint64_t sub_2340C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 32);
  [*(v0 + 232) appendFileTransferWithGUID:v1];

  if (v2 && (v3 = RCSChipList.attributes.getter()) != 0)
  {
    v4 = v3;
    v5 = sub_51844(v3);
    v4, v6, v7, v8, v9, v10, v11, v12;
    v13 = sub_F075C();
    v5, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    v13 = 0;
  }

  v21 = *(v0 + 168);
  v22 = *(v0 + 88);
  v24 = *(v0 + 72);
  v23 = *(v0 + 80);
  v26 = *(v0 + 56);
  v25 = *(v0 + 64);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  [*(v0 + 232) appendChipList:{v13, *(v0 + 96)}];

  sub_5F048(v25, v24);
  (*(v22 + 8))(v33, v23);
  v29 = *(v27 + 48);
  v30 = *(v28 + v29);
  if ((v30 & 1) == 0)
  {
    *(v28 + v29) = v30 | 1;
  }

  *(*(v0 + 48) + *(*(v0 + 40) + 52)) = 6;

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2358C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  sub_5F048(v0[8], v0[9]);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2368C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RCSMessage(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_23738(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSMessage(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_237DC()
{
  v1 = v0[6];
  v0[8] = *(v0[7] + *(v1 + 44));
  v2 = *(v1 + 24);
  v0[9] = v2;
  v0[10] = *(v2 + 48);
  v0[11] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x6CAE000000000000;
  sub_F0AEC();
  v0[12] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_23894, v4, v3);
}

uint64_t sub_23894()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v0[13] = v2(v6, v5, v4, *(v3 + 16), v1);

  return _swift_task_switch(sub_23998, 0, 0);
}

uint64_t sub_23998()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[7];
    v3 = *(v0[6] + 40);
    v4 = v2 + *(type metadata accessor for RCSMessage(0) + 60) + v3;
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = *(v4 + 16);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v7 = sub_F06CC();
      v0[14] = sub_3C96C(v7, static Logger.rcs);
      v8 = sub_F06AC();
      v9 = sub_F0CCC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_0, v8, v9, "Attempting to auto download file", v10, 2u);
      }

      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_23C20;
      v12 = v0[6];
      v13 = v0[5];
      v14 = v0[2];

      return sub_D0A30(v1, v14, v6, v5, v13, v12);
    }

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v16 = sub_F06CC();
    sub_3C96C(v16, static Logger.rcs);
    v17 = sub_F06AC();
    v18 = sub_F0CEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "Couldn't find simID to initiate download for rcsMessage", v19, 2u);
    }
  }

  v20 = v0[1];
  v21 = v0[13];

  return v20(v21);
}

uint64_t sub_23C20()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_23D58, 0, 0);
  }

  else
  {
    v3 = v2[1];
    v4 = v2[13];

    return v3(v4);
  }
}

uint64_t sub_23D58()
{
  swift_errorRetain();
  v1 = sub_F06AC();
  v2 = sub_F0CEC();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Failed to download transfer %@, showing tap to download", v3, 0xCu);
    sub_372B0(v4, &qword_127AF0, &qword_F28E0);
  }

  else
  {
  }

  v6 = *(v0 + 8);
  v7 = *(v0 + 104);

  return v6(v7);
}

uint64_t sub_23EC0(char a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_23FC0, 0, 0);
}

uint64_t sub_23FC0()
{
  if (*(v0 + 192) == 1)
  {
    v1 = *(v0 + 56);
    *(v0 + 88) = *(*(v0 + 64) + *(v1 + 44));
    v2 = *(v1 + 24);
    *(v0 + 96) = v2;
    *(v0 + 104) = *(v2 + 64);
    *(v0 + 112) = (v2 + 64) & 0xFFFFFFFFFFFFLL | 0x5849000000000000;
    sub_F0AEC();
    *(v0 + 120) = sub_F0ADC();
    v3 = sub_F0A6C();
    v5 = v4;
    v6 = sub_24384;
LABEL_3:

    return _swift_task_switch(v6, v3, v5);
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v7 = sub_F06CC();
  sub_3C96C(v7, static Logger.rcs);
  v8 = sub_F06AC();
  v9 = sub_F0CCC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Not auto downloading RCS file", v10, 2u);
  }

  v11 = *(v0 + 72);
  v12 = *(v0 + 24);

  sub_37380(v12, v11, &qword_1299D0, &qword_F6890);
  v13 = type metadata accessor for RCSFile.ThumbnailInformation(0);
  LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
  sub_372B0(v11, &qword_1299D0, &qword_F6890);
  if (v12 == 1)
  {
    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = "No thumbnail info found, nothing to download";
LABEL_19:
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v14, v15, v16, v26, 2u);
    }
  }

  else
  {
    v17 = *(v0 + 56);
    v18 = *(v0 + 24);
    *(v0 + 136) = *(v17 + 16);
    v19 = *(v17 + 24);
    *(v0 + 144) = v19;
    v20 = sub_D1388(v18);
    v14 = sub_F06AC();
    v15 = sub_F0CCC();
    v21 = os_log_type_enabled(v14, v15);
    if (v20)
    {
      if (v21)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_0, v14, v15, "Attempting to download thumbnail instead", v22, 2u);
      }

      v24 = *(v0 + 56);
      v23 = *(v0 + 64);

      *(v0 + 152) = *(v23 + *(v24 + 44));
      *(v0 + 160) = *(v19 + 56);
      *(v0 + 168) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xE5CA000000000000;
      sub_F0AEC();
      *(v0 + 176) = sub_F0ADC();
      v3 = sub_F0A6C();
      v5 = v25;
      v6 = sub_24574;
      goto LABEL_3;
    }

    if (v21)
    {
      v16 = "Thumbnail info present, but we decided not to download it";
      goto LABEL_19;
    }
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24384()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  v4 = v0[2];

  v2(v4, *(v3 + 16), v1);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_2445C;
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_D0B48(0, v11, v9, v10, v7, v8, v6);
}

uint64_t sub_2445C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24574()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[2];

  v1(v4, 1, v3, v2);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_2464C;
  v6 = v0[7];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_D0B48(1, v11, v9, v10, v7, v8, v6);
}

uint64_t sub_2464C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24764()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = swift_task_alloc();
    *(v2 + 64) = v7;
    *v7 = v3;
    v7[1] = sub_24900;
    v8 = *(v2 + 40);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v11 = *(v2 + 16);

    return sub_D1360(v6 & 1, v11, v9, v10, v8);
  }
}

uint64_t sub_24900()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_249F4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = sub_F01EC();
  v0[42] = v3;
  v4 = *(v3 - 8);
  v0[43] = v4;
  v0[44] = *(v4 + 64);
  v0[45] = swift_task_alloc();
  v0[46] = *(v2 + *(v1 + 44));
  v5 = *(v1 + 24);
  v0[47] = v5;
  v0[48] = *(v5 + 112);
  v0[49] = (v5 + 112) & 0xFFFFFFFFFFFFLL | 0x7EDE000000000000;
  v0[50] = sub_F0AEC();
  v0[51] = sub_F0ADC();
  v7 = sub_F0A6C();

  return _swift_task_switch(sub_24B14, v7, v6);
}

uint64_t sub_24B14()
{
  v1 = v0[48];
  v2 = v0[32];

  v0[52] = *(v2 + 16);
  v0[53] = v1();

  return _swift_task_switch(sub_24BAC, 0, 0);
}

uint64_t sub_24BAC()
{
  v106 = v0;
  if (*(v0 + 616))
  {
    v1 = *(v0 + 312);
    v2 = *(v0 + 320);
    v3 = *(v0 + 304);
    sub_37380(*(v0 + 232), v3, &qword_1299D0, &qword_F6890);
    v4 = *(v2 + 48);
    if (v4(v3, 1, v1) == 1)
    {
      sub_372B0(*(v0 + 304), &qword_1299D0, &qword_F6890);
      if (qword_128F38 != -1)
      {
        swift_once();
      }

      v5 = sub_F06CC();
      sub_3C96C(v5, static Logger.rcs);
      v6 = sub_F06AC();
      v7 = sub_F0CEC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_0, v6, v7, "Tried to download thumbnail, but no thumbnail information found", v8, 2u);
      }

      v9 = *(v0 + 8);
      goto LABEL_34;
    }

    sub_C2AB8(*(v0 + 304), *(v0 + 328));
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v103 = v4;
    v21 = sub_F06CC();
    sub_3C96C(v21, static Logger.rcs);
    v22 = sub_F06AC();
    v23 = sub_F0CCC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Downloading thumbnail", v24, 2u);
    }

    v102 = *(v0 + 360);
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 328);
    v28 = *(v0 + 312);
    v29 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 232);

    v104 = sub_D1258(*(v31 + *(v30 + 20) + 8), *(v31 + *(v30 + 20) + 16));
    v14 = v32;
    (*(v25 + 16))(v102, v27 + *(v28 + 24), v26);
    sub_37380(v31, v29, &qword_1299D0, &qword_F6890);
    v33 = v103(v29, 1, v28);
    v34 = *(v0 + 296);
    if (v33 == 1)
    {
      sub_29750(*(v0 + 328), type metadata accessor for RCSFile.ThumbnailInformation);
      v35 = &qword_1299D0;
      v36 = &qword_F6890;
      v37 = v34;
    }

    else
    {
      sub_37380(v34 + *(*(v0 + 312) + 32), v0 + 16, &qword_1299C8, &qword_F5700);
      sub_29750(v34, type metadata accessor for RCSFile.ThumbnailInformation);
      v40 = *(v0 + 40);
      v41 = *(v0 + 328);
      if (v40)
      {
        v42 = *(v0 + 48);
        sub_373E8((v0 + 16), *(v0 + 40));
        v20 = (*(v42 + 56))(v40, v42);
        sub_29750(v41, type metadata accessor for RCSFile.ThumbnailInformation);
        sub_1EDC((v0 + 16));
LABEL_22:
        v38 = 9;
        v39 = 2;
        v15 = v104;
        goto LABEL_23;
      }

      sub_29750(*(v0 + 328), type metadata accessor for RCSFile.ThumbnailInformation);
      v35 = &qword_1299C8;
      v36 = &qword_F5700;
      v37 = v0 + 16;
    }

    sub_372B0(v37, v35, v36);
    v20 = 0;
    goto LABEL_22;
  }

  v10 = *(v0 + 360);
  v11 = *(v0 + 336);
  v12 = *(v0 + 344);
  v13 = *(v0 + 232) + *(*(v0 + 272) + 20);
  v15 = *(v13 + 8);
  v14 = *(v13 + 16);
  v16 = type metadata accessor for RCSFile.DispositionInformation(0);
  (*(v12 + 16))(v10, v13 + *(v16 + 28), v11);
  sub_37380(v13 + *(v16 + 44), v0 + 56, &qword_1299C8, &qword_F5700);
  v17 = *(v0 + 80);
  if (v17)
  {
    v18 = *(v0 + 88);
    sub_373E8((v0 + 56), *(v0 + 80));
    v19 = *(v18 + 56);

    v20 = v19(v17, v18);
    sub_1EDC((v0 + 56));
  }

  else
  {

    sub_372B0(v0 + 56, &qword_1299C8, &qword_F5700);
    v20 = 0;
  }

  v38 = 5;
  v39 = 1;
LABEL_23:
  *(v0 + 448) = v38;
  *(v0 + 456) = v20;
  *(v0 + 432) = v14;
  *(v0 + 440) = v39;

  *(v0 + 464) = swift_task_alloc();
  v43 = [objc_opt_self() defaultManager];
  v44 = sub_F07BC();
  v14, v45, v46, v47, v48, v49, v50, v51;
  v52 = [v43 im_randomTemporaryFileURLWithFileName:v44];

  if (v52)
  {
    sub_F01AC();

    *(v0 + 472) = sub_F0ADC();
    v60 = sub_F0A6C();
    v62 = v61;
    v63 = sub_25498;
    v64 = v60;
    v65 = v62;

    return _swift_task_switch(v63, v64, v65);
  }

  v20, v53, v54, v55, v56, v57, v58, v59;

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v66 = sub_F06CC();
  sub_3C96C(v66, static Logger.rcs);

  v67 = sub_F06AC();
  v68 = sub_F0CEC();
  v14, v69, v70, v71, v72, v73, v74, v75;
  if (os_log_type_enabled(v67, v68))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v105 = v84;
    *v83 = 136315138;
    v85 = sub_3E850(v15, v14, &v105);
    v14, v86, v87, v88, v89, v90, v91, v92;
    *(v83 + 4) = v85;
    _os_log_impl(&dword_0, v67, v68, "Couldn't create temp filename for file %s", v83, 0xCu);
    sub_1EDC(v84);
  }

  else
  {
    v14, v76, v77, v78, v79, v80, v81, v82;
  }

  v93 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(v0 + 424)];
  v94 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v93 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  v63 = [objc_opt_self() sharedInstance];
  if (!v63)
  {
    __break(1u);
    return _swift_task_switch(v63, v64, v65);
  }

  v95 = v63;
  v96 = *(v0 + 360);
  v97 = *(v0 + 336);
  v98 = *(v0 + 344);
  v99 = sub_F0C5C();
  [v95 trackAttachmentDownloadFailedWithFileSize:v99 reason:4 context:v94];

  sub_D2074();
  swift_allocError();
  *v100 = 0;
  swift_willThrow();
  (*(v98 + 8))(v96, v97);

  v9 = *(v0 + 8);
LABEL_34:

  return v9();
}

uint64_t sub_25498()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  sub_D0D7C(v1, v2);

  return _swift_task_switch(sub_25548, 0, 0);
}

uint64_t sub_25548()
{
  v10 = (*(v0[47] + 72) + **(v0[47] + 72));
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_25660;
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[52];
  v5 = v0[47];
  v6 = v0[45];
  v7 = v0[31];
  v8 = v0[30];

  return v10(v8, v7, v6, v2, v3, v4, v5);
}

uint64_t sub_25660(uint64_t a1)
{
  v2 = *(*v1 + 456);
  *(*v1 + 488) = a1;

  v2, v3, v4, v5, v6, v7, v8, v9;

  return _swift_task_switch(sub_25780, 0, 0);
}

uint64_t sub_25780(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  if (*(*(v8 + 488) + 16) && (v9 = sub_51FEC(0x746C75736572, 0xE600000000000000), (a2 & 1) != 0) && (sub_3FE38(*(*(v8 + 488) + 56) + 32 * v9, v8 + 96), sub_388C8(&qword_128568, &qword_F3950), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *(v8 + 216);
    *(v8 + 496) = v10;
    if (!*(v10 + 16))
    {
      goto LABEL_9;
    }

    v11 = sub_51FEC(0x4C5255656C6966, 0xE700000000000000);
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_3FE38(*(v10 + 56) + 32 * v11, v8 + 160);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v13 = *(v8 + 344);
    v14 = *(v8 + 336);
    v15 = *(v8 + 200);
    v16 = swift_task_alloc();
    *(v8 + 504) = v16;
    sub_388C8(&qword_128320, &qword_F34B0);
    v17 = swift_task_alloc();
    sub_F01DC();
    v15, v18, v19, v20, v21, v22, v23, v24;
    if ((*(v13 + 48))(v17, 1, v14) == 1)
    {
      sub_372B0(v17, &qword_128320, &qword_F34B0);

LABEL_9:
      v25 = *(v8 + 440);
      v26 = IMServiceNameRCS;
      v27 = sub_F134C();
      *(v8 + 544) = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:v26 limitType:v25 limitSize:v27 qualityType:v25 isSticker:0 lowQualityModeEnabled:0];

      *(v8 + 552) = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
      *(v8 + 560) = swift_task_alloc();
      *(v8 + 568) = sub_F0ADC();
      v28 = sub_F0A6C();
      v30 = v29;
      v31 = sub_25E60;
      goto LABEL_11;
    }

    (*(*(v8 + 344) + 32))(v16, v17, *(v8 + 336));

    *(v8 + 512) = sub_F0ADC();
    v28 = sub_F0A6C();
    v30 = v35;
    v31 = sub_25B24;
  }

  else
  {
    *(v8 + 432), a2, a3, a4, a5, a6, a7, a8;
    v32 = *(v8 + 376);
    sub_D2074();
    *(v8 + 584) = swift_allocError();
    *v33 = 1;
    *(v8 + 592) = *(v32 + 96);
    *(v8 + 600) = (v32 + 96) & 0xFFFFFFFFFFFFLL | 0x1AC000000000000;
    *(v8 + 608) = sub_F0ADC();
    v28 = sub_F0A6C();
    v30 = v34;
    v31 = sub_26170;
  }

LABEL_11:

  return _swift_task_switch(v31, v28, v30);
}

uint64_t sub_25B24()
{
  v1 = *(v0 + 224);

  v2 = sub_F019C();
  [v1 _setLocalURL:v2];

  return _swift_task_switch(sub_25BB0, 0, 0);
}

uint64_t sub_25BB0(uint64_t a1)
{
  v2 = v1[47];
  v1[65] = *(v2 + 88);
  v1[66] = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0x657E000000000000;
  v1[67] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_25C50, v4, v3);
}

uint64_t sub_25C50()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v4 = *(v0 + 376);
  v5 = *(v0 + 224);
  v6 = *(v0 + 616);

  v1(v5, v2, (v6 & 1) == 0, v3, v4);

  return _swift_task_switch(sub_25D08, 0, 0);
}

uint64_t sub_25D08()
{
  (*(v0[43] + 8))(v0[63], v0[42]);

  v1 = v0[55];
  v2 = IMServiceNameRCS;
  v3 = sub_F134C();
  v0[68] = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:v2 limitType:v1 limitSize:v3 qualityType:v1 isSticker:0 lowQualityModeEnabled:0];

  v0[69] = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
  v0[70] = swift_task_alloc();
  v0[71] = sub_F0ADC();
  v5 = sub_F0A6C();

  return _swift_task_switch(sub_25E60, v5, v4);
}

uint64_t sub_25E60()
{
  v1 = *(v0 + 224);

  *(v0 + 576) = [v1 localURL];

  return _swift_task_switch(sub_25EE8, 0, 0);
}

id sub_25EE8()
{
  v1 = *(v0 + 576);
  v2 = swift_task_alloc();
  if (v1)
  {
    sub_F01AC();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 560);
  (*(*(v0 + 344) + 56))(v2, v3, 1, *(v0 + 336));
  sub_81EC4(v2, v4);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v13 = result;
    v14 = *(v0 + 560);
    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = *(v0 + 336);
    v18 = *(v0 + 344);
    *(v0 + 432), v6, v7, v8, v9, v10, v11, v12;
    v16, v19, v20, v21, v22, v23, v24, v25;
    v15, v26, v27, v28, v29, v30, v31, v32;
    v33 = swift_task_alloc();
    sub_37380(v14, v33, &qword_128320, &qword_F34B0);
    if ((*(v18 + 48))(v33, 1, v17) == 1)
    {
      v34 = 0;
    }

    else
    {
      v35 = *(v0 + 336);
      v36 = *(v0 + 344);
      v34 = sub_F019C();
      (*(v36 + 8))(v33, v35);
    }

    v37 = *(v0 + 560);
    v38 = *(v0 + 544);
    v39 = *(v0 + 464);
    v40 = *(v0 + 360);
    v41 = *(v0 + 336);
    v42 = *(v0 + 344);

    [v13 trackAttachmentDownloadSuccess:v34 context:v38];

    sub_372B0(v37, &qword_128320, &qword_F34B0);
    v43 = *(v42 + 8);
    v43(v39, v41);
    v43(v40, v41);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26170()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[52];
  v4 = v0[47];
  v5 = v0[28];

  v1(v5, v2, v3, v4);

  return _swift_task_switch(sub_26224, 0, 0);
}

uint64_t sub_26224()
{
  v100 = v0;
  if (*(*(v0 + 488) + 16) && (v1 = sub_51FEC(0x726F727265, 0xE500000000000000), (v2 & 1) != 0) && (sub_3FE38(*(*(v0 + 488) + 56) + 32 * v1, v0 + 128), sub_388C8(&qword_127B88, &qword_F3680), (swift_dynamicCast() & 1) != 0))
  {
    *(v0 + 488), v3, v4, v5, v6, v7, v8, v9;
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 288);
    v11 = *(v0 + 232);
    v12 = sub_F06CC();
    sub_3C96C(v12, static Logger.rcs);
    sub_297F8(v11, v10, type metadata accessor for RCSFile);
    swift_errorRetain();
    v13 = sub_F06AC();
    v14 = sub_F0CEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 288);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v99[0] = v18;
      *v16 = 136315394;
      type metadata accessor for RCSFile.DispositionInformation(0);
      sub_297B0(&qword_128678, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v19 = sub_F11EC();
      v21 = v20;
      sub_29750(v15, type metadata accessor for RCSFile);
      v22 = sub_3E850(v19, v21, v99);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v30;
      *v17 = v30;
      _os_log_impl(&dword_0, v13, v14, "No result found after download for RCS transfer %s error %@", v16, 0x16u);
      sub_372B0(v17, &qword_127AF0, &qword_F28E0);

      sub_1EDC(v18);
    }

    else
    {
      v91 = *(v0 + 288);

      sub_29750(v91, type metadata accessor for RCSFile);
    }

    v92 = *(v0 + 464);
    v93 = *(v0 + 360);
    v94 = *(v0 + 336);
    v95 = *(v0 + 344);
    swift_willThrow();
    v96 = *(v95 + 8);
    v96(v92, v94);
    v96(v93, v94);

    v89 = *(v0 + 8);
  }

  else
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 488);
    v32 = *(v0 + 280);
    v33 = *(v0 + 232);
    v34 = sub_F06CC();
    sub_3C96C(v34, static Logger.rcs);
    sub_297F8(v33, v32, type metadata accessor for RCSFile);

    v35 = sub_F06AC();
    v36 = sub_F0CEC();
    v31, v37, v38, v39, v40, v41, v42, v43;
    v44 = os_log_type_enabled(v35, v36);
    v45 = *(v0 + 488);
    v46 = *(v0 + 464);
    v47 = *(v0 + 360);
    v48 = *(v0 + 336);
    v49 = *(v0 + 344);
    v50 = *(v0 + 280);
    if (v44)
    {
      v98 = *(v0 + 464);
      v51 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v51 = 136315394;
      type metadata accessor for RCSFile.DispositionInformation(0);
      v97 = v47;
      sub_297B0(&qword_128678, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v52 = sub_F11EC();
      v54 = v53;
      sub_29750(v50, type metadata accessor for RCSFile);
      v55 = sub_3E850(v52, v54, v99);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v63 = sub_F077C();
      v65 = v64;
      v45, v64, v66, v67, v68, v69, v70, v71;
      v72 = sub_3E850(v63, v65, v99);
      v65, v73, v74, v75, v76, v77, v78, v79;
      *(v51 + 14) = v72;
      _os_log_impl(&dword_0, v35, v36, "No result found after download for RCS transfer %s and no error in %s", v51, 0x16u);
      swift_arrayDestroy();

      v80 = *(v49 + 8);
      v80(v98, v48);
      v81 = v97;
    }

    else
    {

      v45, v82, v83, v84, v85, v86, v87, v88;
      sub_29750(v50, type metadata accessor for RCSFile);
      v80 = *(v49 + 8);
      v80(v46, v48);
      v81 = v47;
    }

    v80(v81, v48);

    v89 = *(v0 + 8);
  }

  return v89();
}

uint64_t sub_268D4()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v1;
  v5 = [v1 isInternalInstall];

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = objc_opt_self();
  v7 = [v6 sharedInstance];
  v8 = sub_F07BC();
  v9 = sub_F07BC();
  v10 = [v7 getBoolFromDomain:v8 forKey:v9];

  if (v10)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v11 = sub_F06CC();
    sub_3C96C(v11, static Logger.rcs);
    v12 = sub_F06AC();
    v13 = sub_F0CCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Forcing auto download behavior ON due to default com.apple.imessage AlwaysAutoDownloadAttachments.RCS", v14, 2u);
    }

    goto LABEL_15;
  }

  v15 = [v6 sharedInstance];
  v16 = sub_F07BC();
  v17 = sub_F07BC();
  v18 = [v15 getBoolFromDomain:v16 forKey:v17];

  if (!v18)
  {
LABEL_18:
    v28 = v0[5];
    v0[10] = *(v0[6] + *(v28 + 44));
    v29 = *(v28 + 24);
    v0[11] = v29;
    v0[12] = *(v29 + 112);
    v0[13] = (v29 + 112) & 0xFFFFFFFFFFFFLL | 0x7EDE000000000000;
    v0[14] = sub_F0AEC();
    v0[15] = sub_F0ADC();
    v30 = sub_F0A6C();
    v32 = v31;
    v1 = sub_26D78;
    v2 = v30;
    v3 = v32;

    return _swift_task_switch(v1, v2, v3);
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v19 = sub_F06CC();
  sub_3C96C(v19, static Logger.rcs);
  v20 = sub_F06AC();
  v21 = sub_F0CCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Forcing auto download behavior OFF due to default com.apple.madrid NeverAutoDownloadAttachments.RCS", v22, 2u);
  }

  sub_D20C8();
  v12 = sub_F0DCC();
  v23 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:5 limitSize:v12 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
LABEL_22:
    __break(1u);
    return _swift_task_switch(v1, v2, v3);
  }

  v24 = v1;
  v25 = sub_F0C5C();
  [v24 trackAttachmentDownloadFailedWithFileSize:v25 reason:1 context:v23];

LABEL_15:

  v26 = v0[1];

  return v26(v10);
}

uint64_t sub_26D78()
{
  v1 = v0[12];
  v2 = v0[5];

  v0[16] = *(v2 + 16);
  v0[17] = v1();

  return _swift_task_switch(sub_26E10, 0, 0);
}

uint64_t sub_26E10(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 56) + 20);
  *(v1 + 216) = v4;
  *(v1 + 144) = *(v3 + v4);
  *(v1 + 152) = *(v2 + 120);
  *(v1 + 160) = (v2 + 120) & 0xFFFFFFFFFFFFLL | 0xEECD000000000000;
  *(v1 + 168) = sub_F0ADC();
  v6 = sub_F0A6C();

  return _swift_task_switch(sub_26EC4, v6, v5);
}

uint64_t sub_26EC4()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[11];

  v0[22] = v1(v2, v3);

  return _swift_task_switch(sub_26F58, 0, 0);
}

uint64_t sub_26F58(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[17];
  if (v4 >= v3[22])
  {
    v5 = v3[18];
    if (v5 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return _swift_task_switch(a1, a2, a3);
    }

    if (v5 < 1 || v4 >= 2 * v5)
    {
      v7 = v3[11];
      v3[23] = *(v7 + 104);
      v3[24] = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0x2E18000000000000;
      v3[25] = sub_F0ADC();
      v8 = sub_F0A6C();
      v10 = v9;
      a1 = sub_27228;
      a2 = v8;
      a3 = v10;

      return _swift_task_switch(a1, a2, a3);
    }
  }

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v11 = sub_F06CC();
  sub_3C96C(v11, static Logger.rcs);
  v12 = sub_F06AC();
  v13 = sub_F0CCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v3[22];
    v16 = v3[17];
    v15 = v3[18];
    v17 = swift_slowAlloc();
    *v17 = 134218496;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v14;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v15;
    _os_log_impl(&dword_0, v12, v13, "Not enough free space to safely download avail %llu minFree %llu fileSize %ld, not auto downloading", v17, 0x20u);
  }

  v18 = v3[17];

  v19 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v18];
  v20 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v19 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
  a1 = [objc_opt_self() sharedInstance];
  if (!a1)
  {
    goto LABEL_20;
  }

  v21 = a1;
  v22 = sub_F0C5C();
  [v21 trackAttachmentDownloadFailedWithFileSize:v22 reason:2 context:v20];

  v23 = v3[1];

  return v23(0);
}

uint64_t sub_27228()
{
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[11];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v0[26] = v1(v6, v5, v4, v2, v3);

  return _swift_task_switch(sub_272D8, 0, 0);
}

id sub_272D8()
{
  v72 = v0;
  v1 = v0[26];
  if (v1 < 1 || v1 < v0[18])
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v3 = v0[8];
    v4 = v0[2];
    v5 = sub_F06CC();
    sub_3C96C(v5, static Logger.rcs);
    sub_297F8(v4, v3, type metadata accessor for RCSFile);
    v6 = sub_F06AC();
    v7 = sub_F0CCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[26];
      v10 = v0[7];
      v9 = v0[8];
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      v12 = *(v9 + *(v10 + 20));
      sub_29750(v9, type metadata accessor for RCSFile);
      *(v11 + 4) = v12;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v8;
      _os_log_impl(&dword_0, v6, v7, "RCS File's size %ld is larger than the autodownload size %lld, not auto downloading", v11, 0x16u);
    }

    else
    {
      sub_29750(v0[8], type metadata accessor for RCSFile);
    }

    v35 = v0[26];

    v36 = [objc_allocWithZone(NSNumber) initWithLongLong:v35];
    v37 = [objc_allocWithZone(IMAttachmentDownloadMetricsContext) initForServiceName:IMServiceNameRCS limitType:3 limitSize:v36 qualityType:0 isSticker:0 lowQualityModeEnabled:0];
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v38 = result;
      v39 = sub_F0C5C();
      [v38 trackAttachmentDownloadFailedWithFileSize:v39 reason:3 context:v37];

LABEL_39:
      v40 = 0;
      goto LABEL_40;
    }

LABEL_47:
    __break(1u);
    return result;
  }

  v13 = sub_F030C();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  sub_F02DC();
  type metadata accessor for RCSFile.DispositionInformation(0);
  sub_297B0(&qword_128BC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = sub_F07AC();
  if (v16)
  {
    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v17 = v0[9];
    v18 = v0[2];
    v19 = sub_F06CC();
    sub_3C96C(v19, static Logger.rcs);
    sub_297F8(v18, v17, type metadata accessor for RCSFile);
    v20 = swift_task_alloc();
    (*(v14 + 16))(v20, v15, v13);
    v21 = sub_F06AC();
    v22 = sub_F0CCC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[9];
    if (!v23)
    {

      v41 = *(v14 + 8);
      v41(v20, v13);
      sub_29750(v24, type metadata accessor for RCSFile);
      v41(v15, v13);
LABEL_38:

      goto LABEL_39;
    }

    v68 = v22;
    v69 = v21;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 136315394;
    if (qword_128F70 != -1)
    {
      swift_once();
    }

    v25 = qword_12FCB8;
    v26 = qword_12FCB8 >> 62;
    if (qword_12FCB8 >> 62)
    {
      result = sub_F10DC();
      if (result)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = *(&dword_10 + (qword_12FCB8 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
LABEL_18:
        v67 = v26;
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = sub_F0FCC();
        }

        else
        {
          if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v28 = *(v25 + 32);
        }

        v29 = v28;
        v30 = sub_F028C();
        v31 = [v29 stringFromDate:v30];

        v32 = sub_F07EC();
        v34 = v33;

        v26 = v67;
LABEL_29:
        sub_29750(v0[9], type metadata accessor for RCSFile);
        v42 = sub_3E850(v32, v34, &v71);
        v34, v43, v44, v45, v46, v47, v48, v49;
        *(v70 + 4) = v42;
        *(v70 + 12) = 2080;
        if (v26)
        {
          result = sub_F10DC();
          if (result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
          if (result)
          {
LABEL_31:
            if ((v25 & 0xC000000000000001) != 0)
            {
              v50 = sub_F0FCC();
              goto LABEL_34;
            }

            if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
            {
              v50 = *(v25 + 32);
LABEL_34:
              v51 = v50;
              v52 = sub_F028C();
              v53 = [v51 stringFromDate:v52];

              v54 = sub_F07EC();
              v56 = v55;

LABEL_37:
              v57 = *(v14 + 8);
              v57(v20, v13);
              v58 = sub_3E850(v54, v56, &v71);
              v56, v59, v60, v61, v62, v63, v64, v65;
              *(v70 + 14) = v58;
              _os_log_impl(&dword_0, v69, v68, "RCS File has passed expiration (%s, not auto downloading (now %s", v70, 0x16u);
              swift_arrayDestroy();

              v57(v15, v13);
              goto LABEL_38;
            }

            goto LABEL_46;
          }
        }

        v54 = 0;
        v56 = 0xE000000000000000;
        goto LABEL_37;
      }
    }

    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_29;
  }

  (*(v14 + 8))(v15, v13);

  v40 = 1;
LABEL_40:

  v66 = v0[1];

  return v66(v40);
}

uint64_t sub_27A6C()
{
  if (*(v0 + 472))
  {
    *(v0 + 288) = *(*(sub_388C8(&qword_128320, &qword_F34B0) - 8) + 64);
    *(v0 + 296) = swift_task_alloc();
    *(v0 + 304) = sub_388C8(&qword_12A2D8, &unk_F68C0);
    *(v0 + 312) = swift_task_alloc();
    *(v0 + 320) = sub_F0AEC();
    *(v0 + 328) = sub_F0ADC();
    v1 = sub_F0A6C();
    v3 = v2;
    v4 = sub_283F8;
  }

  else
  {
    sub_F0AEC();
    *(v0 + 216) = sub_F0ADC();
    v1 = sub_F0A6C();
    v3 = v5;
    v4 = sub_27BC8;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_27BC8()
{
  v1 = v0[23];

  v2 = [v1 localPath];
  if (v2)
  {
    v3 = v2;
    v4 = sub_F07EC();
    v6 = v5;

    v0[28] = v4;
    v0[29] = v6;
    v7 = sub_27C80;
  }

  else
  {
    v7 = sub_281A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_27C80()
{
  v2 = (*(*(v0 + 200) + 24) + 160);
  v4 = *v2 + **v2;
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_27DC0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_27DC0()
{
  v2 = *v1;
  *(v2 + 248) = v0;
  v3 = *(v2 + 16);
  *(v2 + 473) = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 256) = v3;
  *(v2 + 272) = v4;

  if (v0)
  {
    v5 = sub_2929C;
  }

  else
  {
    v5 = sub_27EE8;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_27EE8()
{
  v59 = v0;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.rcs);

  v3 = sub_F06AC();
  v4 = sub_F0CCC();
  v1, v5, v6, v7, v8, v9, v10, v11;
  if (os_log_type_enabled(v3, v4))
  {
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 473);
    v16 = *(v0 + 256);
    v15 = *(v0 + 264);
    v17 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v17 = 136315906;
    v18 = v15 == 0;
    if (v15)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0x64697567206F6ELL;
    }

    if (v18)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = v1;
    }

    v21 = sub_3E850(v19, v20, &v58);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    if (v14)
    {
      v29 = 0x73736563637553;
    }

    else
    {
      v29 = 0x64656C696146;
    }

    if (v14)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    v31 = sub_3E850(v29, v30, &v58);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v17 + 14) = v31;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v13;
    *(v17 + 32) = 2048;
    *(v17 + 34) = v12;
    _os_log_impl(&dword_0, v3, v4, "Preview result %s %s (%f, %f)", v17, 0x2Au);
    swift_arrayDestroy();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v47 = result;
    v48 = *(v0 + 473);
    *(v0 + 232), v40, v41, v42, v43, v44, v45, v46;
    v1, v49, v50, v51, v52, v53, v54, v55;
    v56 = sub_F07BC();
    [v47 trackAttachmentRenderingAttempt:v48 failureReason:v56];

    v57 = *(v0 + 8);

    return v57();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_281A0(uint64_t a1)
{
  v33 = v1;
  sub_D2074();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v3 = sub_F06CC();
  sub_3C96C(v3, static Logger.rcs);
  swift_errorRetain();
  v4 = sub_F06AC();
  v5 = sub_F0CCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_F12AC();
    v10 = v9;
    v11 = sub_3E850(v8, v9, &v32);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v4, v5, "Preview failed with error %s", v6, 0xCu);
    sub_1EDC(v7);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v20 = result;
    swift_getErrorValue();
    sub_F12AC();
    v22 = v21;
    v23 = sub_F07BC();
    v22, v24, v25, v26, v27, v28, v29, v30;
    [v20 trackAttachmentRenderingAttempt:0 failureReason:v23];

    v31 = *(v1 + 8);

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_283F8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 184);

  sub_D0FB0(v2, v1);

  return _swift_task_switch(sub_284AC, 0, 0);
}

id sub_284AC()
{
  v73 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  v0[42] = *v2;
  v4 = v2[1];
  v0[43] = v4;
  v0[44] = v2[2];
  v5 = v2[3];
  v0[45] = v5;
  sub_81EC4(v2 + *(v1 + 64), v3);

  v6 = sub_F01EC();
  v0[46] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v0[47] = v7;
  v0[48] = *(v7 + 64);
  v9 = swift_task_alloc();
  v0[49] = v9;
  v10 = swift_task_alloc();
  sub_37380(v3, v10, &qword_128320, &qword_F34B0);
  v11 = *(v8 + 48);
  v0[50] = v11;
  v0[51] = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v11(v10, 1, v6) == 1)
  {
    v4, v12, v13, v14, v15, v16, v17, v18;
    v5, v19, v20, v21, v22, v23, v24, v25;
    sub_372B0(v10, &qword_128320, &qword_F34B0);

LABEL_8:
    v41 = v0[37];

    sub_D2074();
    swift_allocError();
    *v42 = 2;
    swift_willThrow();
    sub_372B0(v41, &qword_128320, &qword_F34B0);

    if (qword_128F38 != -1)
    {
      swift_once();
    }

    v43 = sub_F06CC();
    sub_3C96C(v43, static Logger.rcs);
    swift_errorRetain();
    v44 = sub_F06AC();
    v45 = sub_F0CCC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v72 = v47;
      *v46 = 136315138;
      swift_getErrorValue();
      v48 = sub_F12AC();
      v50 = v49;
      v51 = sub_3E850(v48, v49, &v72);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v46 + 4) = v51;
      _os_log_impl(&dword_0, v44, v45, "Safe render failed with error %s", v46, 0xCu);
      sub_1EDC(v47);
    }

    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v59 = result;
      swift_getErrorValue();
      sub_F12AC();
      v61 = v60;
      v62 = sub_F07BC();
      v61, v63, v64, v65, v66, v67, v68, v69;
      [v59 trackAttachmentRenderingAttempt:0 failureReason:v62];

      v70 = v0[1];

      return v70();
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v26 = *(v8 + 32);
  v0[52] = v26;
  v0[53] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v9, v10, v6);

  if (!v5)
  {
    (*(v8 + 8))(v9, v6);
    v4, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_8;
  }

  v27 = v0[25];
  v28 = swift_task_alloc();
  v0[54] = v28;
  v31 = v27 + 16;
  v30 = *(v27 + 16);
  v29 = *(v31 + 8);
  v71 = (*(v29 + 168) + **(v29 + 168));
  v32 = swift_task_alloc();
  v0[55] = v32;
  *v32 = v0;
  v32[1] = sub_289EC;

  return v71(v28, v9, v30, v29);
}

uint64_t sub_289EC(char a1)
{
  v3 = *v2;
  *(v3 + 474) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v11 = *(v3 + 344);
    *(v3 + 360), v4, v5, v6, v7, v8, v9, v10;
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_294D0;
  }

  else
  {
    v19 = sub_28B18;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_28B18()
{
  v100 = v0;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = sub_F06CC();
  sub_3C96C(v4, static Logger.rcs);
  v5 = swift_task_alloc();
  sub_37380(v1, v5, &qword_128320, &qword_F34B0);

  v6 = sub_F06AC();
  v7 = sub_F0CCC();
  v3, v8, v9, v10, v11, v12, v13, v14;
  v2, v15, v16, v17, v18, v19, v20, v21;
  if (os_log_type_enabled(v6, v7))
  {
    v98 = v7;
    v22 = *(v0 + 474);
    v97 = *(v0 + 400);
    v23 = *(v0 + 344);
    v94 = *(v0 + 352);
    v95 = *(v0 + 360);
    v24 = *(v0 + 336);
    v96 = *(v0 + 368);
    v25 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *v25 = 136315906;
    v26 = v23 == 0;
    if (v23)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0x64697567206F6ELL;
    }

    if (v26)
    {
      v28 = 0xE700000000000000;
    }

    else
    {
      v28 = v3;
    }

    v29 = sub_3E850(v27, v28, &v99);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    if (v22)
    {
      v37 = 0x73736563637553;
    }

    else
    {
      v37 = 0x64656C696146;
    }

    if (v22)
    {
      v38 = 0xE700000000000000;
    }

    else
    {
      v38 = 0xE600000000000000;
    }

    v39 = sub_3E850(v37, v38, &v99);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v25 + 14) = v39;
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_3E850(v94, v95, &v99);
    *(v25 + 32) = 2080;
    v47 = swift_task_alloc();
    sub_37380(v5, v47, &qword_128320, &qword_F34B0);
    if (v97(v47, 1, v96) == 1)
    {
      sub_372B0(v47, &qword_128320, &qword_F34B0);
      v48 = 0xE700000000000000;
      v49 = 0x687461702D6F6ELL;
    }

    else
    {
      v51 = *(v0 + 368);
      v50 = *(v0 + 376);
      v49 = sub_F01CC();
      v48 = v52;
      (*(v50 + 8))(v47, v51);
    }

    sub_372B0(v5, &qword_128320, &qword_F34B0);
    v53 = sub_3E850(v49, v48, &v99);
    v48, v54, v55, v56, v57, v58, v59, v60;
    *(v25 + 34) = v53;
    _os_log_impl(&dword_0, v6, v98, "Safe Render result %s %s %s safely rendered to (%s)", v25, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_372B0(v5, &qword_128320, &qword_F34B0);
  }

  v61 = [objc_opt_self() sharedInstance];
  if (!v61)
  {
    __break(1u);
    return _swift_task_switch(v61, v62, v63);
  }

  v69 = v61;
  v70 = *(v0 + 474);
  v71 = *(v0 + 432);
  v72 = *(v0 + 400);
  v74 = *(v0 + 360);
  v73 = *(v0 + 368);
  v3, v62, v63, v64, v65, v66, v67, v68;
  v74, v75, v76, v77, v78, v79, v80, v81;
  v82 = sub_F07BC();
  [v69 trackAttachmentRenderingAttempt:v70 failureReason:v82];

  v83 = swift_task_alloc();
  *(v0 + 456) = v83;
  v84 = swift_task_alloc();
  sub_37380(v71, v84, &qword_128320, &qword_F34B0);
  if (v72(v84, 1, v73) != 1)
  {
    (*(v0 + 416))(v83, v84, *(v0 + 368));

    *(v0 + 464) = sub_F0ADC();
    v91 = sub_F0A6C();
    v93 = v92;
    v61 = sub_290EC;
    v62 = v91;
    v63 = v93;

    return _swift_task_switch(v61, v62, v63);
  }

  v85 = *(v0 + 392);
  v86 = *(v0 + 368);
  v87 = *(v0 + 376);
  v88 = *(v0 + 296);
  sub_372B0(*(v0 + 432), &qword_128320, &qword_F34B0);
  (*(v87 + 8))(v85, v86);
  sub_372B0(v88, &qword_128320, &qword_F34B0);
  sub_372B0(v84, &qword_128320, &qword_F34B0);

  v89 = *(v0 + 8);

  return v89();
}

uint64_t sub_290EC()
{
  v1 = *(v0 + 184);

  sub_F01CC();
  v3 = v2;
  v4 = sub_F07BC();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 _setLocalPath:v4];

  return _swift_task_switch(sub_29190, 0, 0);
}

uint64_t sub_29190()
{
  v1 = v0[54];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[37];
  v5 = *(v0[47] + 8);
  v5(v0[57], v3);
  sub_372B0(v1, &qword_128320, &qword_F34B0);
  v5(v2, v3);
  sub_372B0(v4, &qword_128320, &qword_F34B0);

  v6 = v0[1];

  return v6();
}

id sub_2929C(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v39 = v8;
  *(v8 + 232), a2, a3, a4, a5, a6, a7, a8;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v9 = sub_F06CC();
  sub_3C96C(v9, static Logger.rcs);
  swift_errorRetain();
  v10 = sub_F06AC();
  v11 = sub_F0CCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_F12AC();
    v16 = v15;
    v17 = sub_3E850(v14, v15, &v38);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v10, v11, "Preview failed with error %s", v12, 0xCu);
    sub_1EDC(v13);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v26 = result;
    swift_getErrorValue();
    sub_F12AC();
    v28 = v27;
    v29 = sub_F07BC();
    v28, v30, v31, v32, v33, v34, v35, v36;
    [v26 trackAttachmentRenderingAttempt:0 failureReason:v29];

    v37 = *(v8 + 8);

    return v37();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_294D0()
{
  v32 = v0;
  v1 = v0[37];
  (*(v0[47] + 8))(v0[49], v0[46]);
  sub_372B0(v1, &qword_128320, &qword_F34B0);

  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.rcs);
  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_F12AC();
    v9 = v8;
    v10 = sub_3E850(v7, v8, &v31);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Safe render failed with error %s", v5, 0xCu);
    sub_1EDC(v6);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    swift_getErrorValue();
    sub_F12AC();
    v21 = v20;
    v22 = sub_F07BC();
    v21, v23, v24, v25, v26, v27, v28, v29;
    [v19 trackAttachmentRenderingAttempt:0 failureReason:v22];

    v30 = v0[1];

    return v30();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_297B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_297F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_29860()
{
  v1 = [*v0 chatInformation];

  return v1;
}

uint64_t _s7CoreRCS10RCSMessageV11ContentTypeO11descriptionSSvg_0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1954047348;
    v6 = 0x6E6F697461636F6CLL;
    if (a1 != 2)
    {
      v6 = 0x70756F7267;
    }

    if (a1)
    {
      v5 = 0x726566736E617274;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574736567677573;
    v2 = 0x6574736567677573;
    if (a1 != 7)
    {
      v2 = 0x6341656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676E69707974;
    if (a1 != 4)
    {
      v3 = 0x6472614368636972;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_29A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 136);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_388C8(&unk_127FA0, &qword_F34C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 136) = (a2 - 1);
  }

  else
  {
    v7 = sub_388C8(&unk_127FA0, &qword_F34C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_29BD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_3CB70(a3, a4);
    v5 = sub_F0DEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29C2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_3CB70(&qword_12A570, &qword_F6F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id sub_29CA0(uint64_t a1, RCSServiceSession *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_F07BC();
  a2, v7, v8, v9, v10, v11, v12, v13;
  [v5 *a3];

  return v5;
}

uint64_t sub_29D24(void *a1, uint64_t a2, RCSServiceSession *a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  v9 = a4(a1, a2, a3);

  a3, v10, v11, v12, v13, v14, v15, v16;
  *(v8 + 16) = v9;
  return v8;
}

RCSServiceSession *sub_29DA0(RCSServiceSession *result, int64_t a2, char a3, RCSServiceSession *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4[1].state;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4[1].IMDTelephonyServiceSession_opaque;
  if (v11 <= v12)
  {
    v13 = *a4[1].IMDTelephonyServiceSession_opaque;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_388C8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17[1].IMDTelephonyServiceSession_opaque = v12;
  *v17[1].state = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 1);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = &a4->IMDTelephonyServiceSession_opaque[v26];
  if (v9)
  {
    if (v17 < a4 || &v17->IMDTelephonyServiceSession_opaque[v26] >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4[1].IMDTelephonyServiceSession_opaque = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

uint64_t sub_29F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29FE4(void (*a1)(uint64_t))
{
  v2 = sub_388C8(&qword_128300, &unk_F68D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_F068C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  type metadata accessor for RCSFile(0);

  sub_F063C();
  sub_F05EC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_372B0(v4, &qword_128300, &unk_F68D0);
    v12 = 0;
  }

  else
  {
    v13 = (*(v6 + 32))(v11, v4, v5);
    a1(v13);
    v12 = sub_F067C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);
  }

  return v12 & 1;
}

uint64_t sub_2A210@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_2A29C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 28);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t sub_2A340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_388C8(&qword_1299D0, &qword_F6890);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RCSFile.DispositionInformation(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2A4A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_388C8(&qword_1299D0, &qword_F6890);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RCSFile.DispositionInformation(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2A5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A6D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2A7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A918(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_F01EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_F030C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2AA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2AA9C()
{
  v1 = v0[7];
  if (v1[2])
  {
    v2 = v0[10];
    v0[23] = v1[4];
    v0[24] = v1[5];
    v0[25] = swift_unknownObjectUnownedLoadStrong();
    v3 = *(v2 + 88);
    v0[26] = v3;
    v0[27] = *(v3 + 32);
    v0[28] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0xDA16000000000000;
    v4 = qword_128FB8;

    if (v4 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = static RCSActor.shared;

  return _swift_task_switch(sub_2AB80, v5, 0);
}

uint64_t sub_2AB80()
{
  v1 = v0[27];
  v2 = v0[8];
  v0[29] = *(v0[10] + 80);
  v3 = v1(v2);
  v5 = v4;
  v7 = v6;
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = v8;
  v0[5] = v6;
  swift_unknownObjectRelease();
  v0[30] = v5;
  v0[31] = v7;

  return _swift_task_switch(sub_2AC20, 0, 0);
}

uint64_t sub_2AC20(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 240);
  v10 = *(v8 + 248);
  if (v10)
  {
    v11 = *(v8 + 32);
    v9, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    v9, a2, a3, a4, a5, a6, a7, a8;
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  *(v8 + 256) = v10;
  v12 = swift_task_alloc();
  *(v8 + 264) = v12;
  *v12 = v8;
  v12[1] = sub_2AD04;
  v13 = *(v8 + 184);
  v14 = *(v8 + 192);
  v15 = *(v8 + 136);
  v16 = *(v8 + 281);
  v17 = *(v8 + 280);

  return sub_DE504(v15, v13, v14, v17, v16, v11, v10);
}

uint64_t sub_2AD04()
{
  v2 = *v1;
  v2[34] = v0;

  v10 = v2[32];
  if (v0)
  {
    v11 = v2[24];
    v10, v3, v4, v5, v6, v7, v8, v9;
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_2B300;
  }

  else
  {
    v10, v3, v4, v5, v6, v7, v8, v9;
    v19 = sub_2AE48;
  }

  return _swift_task_switch(v19, 0, 0);
}

uint64_t sub_2AE48()
{
  v55 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = (*(*(v0 + 152) + 48))(v2, 1, v1);
  v11 = *(v0 + 192);
  if (v3 == 1)
  {
    v12 = *(v0 + 104);
    sub_372B0(v2, &qword_12A8F0, &qword_F7558);
    sub_CCD3C(v12);

    v13 = sub_F06AC();
    v14 = sub_F0CCC();
    v11, v15, v16, v17, v18, v19, v20, v21;
    if (os_log_type_enabled(v13, v14))
    {
      v23 = *(v0 + 184);
      v22 = *(v0 + 192);
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
      v26 = *(v0 + 88);
      v27 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_3E850(0xD000000000000050, 0x8000000000100BF0, v54);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_3E850(v23, v22, v54);
      _os_log_impl(&dword_0, v13, v14, "%{public}s Failed to upload or generate RCSFile for %s", v27, 0x16u);
      swift_arrayDestroy();

      (*(v25 + 8))(v24, v26);
    }

    else
    {
      v36 = *(v0 + 96);
      v35 = *(v0 + 104);
      v37 = *(v0 + 88);

      (*(v36 + 8))(v35, v37);
    }

    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    type metadata accessor for RCSMessageCreator.MessageCreationError(0, *(v0 + 232), *(v0 + 208), v28);
    swift_getWitnessTable();
    swift_allocError();
    *v40 = v39;
    *(v40 + 8) = v38;
    *(v40 + 16) = xmmword_F7540;
    swift_willThrow();

    v41 = *(v0 + 8);
    v42 = 0;
    goto LABEL_13;
  }

  v30 = *(v0 + 168);
  v29 = *(v0 + 176);
  *(v0 + 192), v4, v5, v6, v7, v8, v9, v10;
  sub_376D8(v2, v29, &qword_12A8F8, &qword_F7560);
  sub_37380(v29, v30, &qword_12A8F8, &qword_F7560);
  v31 = *(v30 + *(v1 + 48));
  sub_372B0(v30, &qword_12A900, &unk_F7570);
  v32 = *(v0 + 176);
  if (v31 == 1)
  {
    v33 = &qword_12A8F8;
    v34 = &qword_F7560;
  }

  else
  {
    v43 = *(v0 + 160);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
    sub_376D8(v32, v43, &qword_12A8F8, &qword_F7560);
    v46 = (*(v45 + 48))(v43, 1, v44);
    v32 = *(v0 + 160);
    if (v46 != 1)
    {
      v48 = *(v0 + 128);
      v49 = *(v0 + 48);
      sub_DEE94(v32, v48);
      v50 = v49 + *(type metadata accessor for RCSMessage(0) + 32);
      sub_372B0(v50, &unk_127FA0, &qword_F34C0);
      v51 = *(sub_388C8(&qword_128028, &qword_F3670) + 48);
      sub_DEE94(v48, v50);
      *(v50 + v51) = 0;
      v52 = type metadata accessor for RCSMessage.Content(0);
      v47 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
      goto LABEL_12;
    }

    v33 = &qword_12A900;
    v34 = &unk_F7570;
  }

  sub_372B0(v32, v33, v34);
  v47 = 0;
LABEL_12:

  v41 = *(v0 + 8);
  v42 = v47;
LABEL_13:

  return v41(v42);
}

uint64_t sub_2B300()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2B3AC()
{
  v1 = v0[19];
  v0[27] = swift_unknownObjectUnownedLoadStrong();
  v2 = *(v1 + 88);
  v0[28] = v2;
  v0[29] = *(v2 + 56);
  v0[30] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0x9BEB000000000000;
  sub_F0AEC();
  v0[31] = sub_F0ADC();
  v4 = sub_F0A6C();

  return _swift_task_switch(sub_2B464, v4, v3);
}

uint64_t sub_2B464()
{
  v1 = v0[29];
  v2 = v0[19];
  v4 = v0[14];
  v3 = v0[15];

  v0[32] = *(v2 + 80);
  v0[33] = v1(v4, v3);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2B518, 0, 0);
}

uint64_t sub_2B518(uint64_t a1)
{
  v34 = v1;
  v2 = *(v1 + 264);
  if (v2)
  {
    v32 = *(v1 + 224);
    *(v1 + 272) = swift_unknownObjectUnownedLoadStrong();
    v31 = (*(v32 + 64) + **(v32 + 64));
    v3 = swift_task_alloc();
    *(v1 + 280) = v3;
    *v3 = v1;
    v3[1] = sub_2B830;
    v4 = *(v1 + 256);
    v5 = *(v1 + 224);
    v6 = *(v1 + 128);
    v7 = *(v1 + 136);
    v8 = *(v1 + 360);

    return v31(v2, v6, v7, v8, v4, v5);
  }

  else
  {
    v10 = *(v1 + 120);
    sub_CCD3C(*(v1 + 184));

    v11 = sub_F06AC();
    v12 = sub_F0CEC();
    v10, v13, v14, v15, v16, v17, v18, v19;
    v20 = os_log_type_enabled(v11, v12);
    v22 = *(v1 + 176);
    v21 = *(v1 + 184);
    v23 = *(v1 + 168);
    if (v20)
    {
      v25 = *(v1 + 112);
      v24 = *(v1 + 120);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_3E850(v25, v24, &v33);
      _os_log_impl(&dword_0, v11, v12, "Couldn't find transfer to upload to RCS server for guid %s", v26, 0xCu);
      sub_1EDC(v27);
    }

    (*(v22 + 8))(v21, v23);
    v28 = *(v1 + 104);
    v29 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);

    v30 = *(v1 + 8);

    return v30();
  }
}

uint64_t sub_2B830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_2C8E4;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_2B94C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2B94C()
{
  v1 = *(v0 + 288);
  v2 = sub_F01EC();
  *(v0 + 304) = v2;
  v3 = *(v2 - 8);
  *(v0 + 312) = v3;
  v4 = swift_task_alloc();
  v12 = v4;
  *(v0 + 320) = v4;
  v13 = *v1[1].IMDTelephonyServiceSession_opaque;
  if (v13)
  {
    v14 = &v1->IMDTelephonyServiceSession_opaque[(*(v3 + 80) + 32) & ~*(v3 + 80)];
    v100 = *(v3 + 16);
    v100(v4, v14, v2);
    sub_F018C();
    v16 = v15;
    v108._object = 0x8000000000100C50;
    v108._countAndFlagsBits = 0xD000000000000018;
    v17 = sub_F093C(v108);
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (!v17)
    {
      sub_388C8(&qword_128320, &qword_F34B0);
      result = swift_task_alloc();
      v99 = result;
      *(v0 + 328) = result;
      v65 = *v1[1].IMDTelephonyServiceSession_opaque;
      if (v65 < 2)
      {
        v68 = 1;
        v67 = result;
      }

      else
      {
        if (v13 > v65)
        {
          __break(1u);
          return result;
        }

        v66 = &v14[*(v3 + 72) * (v13 - 1)];
        v67 = result;
        v100(result, v66, v2);
        v68 = 0;
      }

      *(v0 + 288), v58, v59, v60, v61, v62, v63, v64;
      v98 = *(v3 + 56);
      v98(v67, v68, 1, v2);
      v72 = swift_task_alloc();
      v73 = swift_task_alloc();
      sub_37380(v67, v73, &qword_128320, &qword_F34B0);
      if ((*(v3 + 48))(v73, 1, v2) == 1)
      {
        sub_372B0(v73, &qword_128320, &qword_F34B0);
      }

      else
      {
        (*(v3 + 32))(v72, v73, v2);

        if (sub_DE658())
        {
          (*(v3 + 8))(v72, v2);
        }

        else
        {
          v97 = v72;
          sub_CCD3C(*(v0 + 208));
          v104 = swift_task_alloc();
          v100(v104, v12, v2);
          v74 = sub_F06AC();
          v101 = sub_F0CEC();
          v75 = os_log_type_enabled(v74, v101);
          v76 = *(v0 + 208);
          v77 = *(v0 + 168);
          v78 = *(v0 + 176);
          if (v75)
          {
            v93 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v107 = v95;
            *v93 = 136315138;
            sub_81D24();
            v94 = v74;
            v79 = sub_F11EC();
            v96 = v77;
            v81 = v80;
            v82 = *(v3 + 8);
            v82(v104, v2);
            v83 = sub_3E850(v79, v81, &v107);
            v81, v84, v85, v86, v87, v88, v89, v90;
            *(v93 + 4) = v83;
            _os_log_impl(&dword_0, v94, v101, "Couldn't generate valid thumbnail for %s, omitting", v93, 0xCu);
            sub_1EDC(v95);

            (*(v78 + 8))(v76, v96);
            v82(v97, v2);
            v67 = v99;
          }

          else
          {

            v91 = *(v3 + 8);
            v91(v104, v2);
            (*(v78 + 8))(v76, v77);
            v91(v97, v2);
          }

          sub_372B0(v67, &qword_128320, &qword_F34B0);

          v98(v67, 1, 1, v2);
        }
      }

      v105 = *(v0 + 224);

      *(v0 + 336) = swift_unknownObjectUnownedLoadStrong();
      v102 = *(v105 + 72) + **(v105 + 72);
      v92 = swift_task_alloc();
      *(v0 + 344) = v92;
      *v92 = v0;
      v92[1] = sub_2C274;

      __asm { BRAA            X8, X16 }
    }

    v25 = *(v0 + 288);
    v26 = *(v0 + 264);
    v27 = *(v0 + 104);
    (*(v3 + 8))(v12, v2);

    v25, v28, v29, v30, v31, v32, v33, v34;
    v35 = sub_388C8(&qword_12A8F8, &qword_F7560);
    v36 = *(v35 + 48);
    v37 = type metadata accessor for RCSFile(0);
    (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
    *(v27 + v36) = 1;
    (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
  }

  else
  {
    v38 = *(v0 + 192);
    v39 = *(v0 + 120);
    v1, v5, v6, v7, v8, v9, v10, v11;

    sub_CCD3C(v38);

    v40 = sub_F06AC();
    v41 = sub_F0CCC();
    v39, v42, v43, v44, v45, v46, v47, v48;
    v49 = os_log_type_enabled(v40, v41);
    v50 = *(v0 + 264);
    v51 = *(v0 + 192);
    v52 = *(v0 + 168);
    v53 = *(v0 + 176);
    if (v49)
    {
      v55 = *(v0 + 112);
      v54 = *(v0 + 120);
      v103 = *(v0 + 192);
      v56 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *v56 = 136446466;
      *(v56 + 4) = sub_3E850(0xD000000000000048, 0x8000000000100C70, &v107);
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_3E850(v55, v54, &v107);
      _os_log_impl(&dword_0, v40, v41, "%{public}s Failed to transcode %s, upload failed", v56, 0x16u);
      swift_arrayDestroy();

      (*(v53 + 8))(v103, v52);
    }

    else
    {

      (*(v53 + 8))(v51, v52);
    }

    v69 = *(v0 + 104);
    v70 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
  }

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_2C274(uint64_t a1)
{
  *(*v1 + 352) = a1;

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_2C394, 0, 0);
}

uint64_t sub_2C394(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v89 = v8;
  v9 = *(v8 + 352);
  if (*(v9 + 16) && (v10 = sub_51FEC(0x746C75736572, 0xE600000000000000), (a2 & 1) != 0) && (sub_3FE38(*(*(v8 + 352) + 56) + 32 * v10, v8 + 16), sub_388C8(&qword_128568, &qword_F3950), (swift_dynamicCast() & 1) != 0))
  {
    v12 = *(v8 + 320);
    v11 = *(v8 + 328);
    v13 = *(v8 + 304);
    v14 = *(v8 + 312);
    v15 = *(v8 + 264);
    v16 = *(v8 + 160);
    v17 = *(v8 + 360);
    v18 = *(v8 + 104);
    *(v8 + 352), a2, a3, a4, a5, a6, a7, a8;
    sub_DCAE8(*(v8 + 96), v17, v16);

    sub_372B0(v11, &qword_128320, &qword_F34B0);
    (*(v14 + 8))(v12, v13);
    v19 = sub_388C8(&qword_12A8F8, &qword_F7560);
    v20 = *(v19 + 48);
    sub_376D8(v16, v18, &qword_12A900, &unk_F7570);
    *(v18 + v20) = 0;
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v21 = *(v9 + 16);
    v22 = *(v8 + 352);
    if (v21 && (v23 = sub_51FEC(0x73654D726F727265, 0xEC00000065676173), v22 = *(v8 + 352), (a2 & 1) != 0))
    {
      sub_3FE38(*v22[3].state + 32 * v23, v8 + 48);
      v22, v24, v25, v26, v27, v28, v29, v30;
      v31 = swift_dynamicCast();
      v32 = *(v8 + 80);
      if (!v31)
      {
        v32 = 0;
      }

      v85 = v32;
      if (v31)
      {
        v33 = *(v8 + 88);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v22, a2, a3, a4, a5, a6, a7, a8;
      v85 = 0;
      v33 = 0;
    }

    v34 = *(v8 + 120);
    sub_CCD3C(*(v8 + 200));

    v35 = sub_F06AC();
    v36 = sub_F0CCC();
    v34, v37, v38, v39, v40, v41, v42, v43;
    v33, v44, v45, v46, v47, v48, v49, v50;
    v51 = os_log_type_enabled(v35, v36);
    v52 = *(v8 + 320);
    v53 = *(v8 + 328);
    v54 = *(v8 + 304);
    v55 = *(v8 + 312);
    v56 = *(v8 + 200);
    v57 = *(v8 + 176);
    v86 = *(v8 + 264);
    v87 = *(v8 + 168);
    if (v51)
    {
      v81 = *(v8 + 120);
      v84 = *(v8 + 328);
      v58 = *(v8 + 112);
      v83 = *(v8 + 200);
      v59 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v59 = 136446722;
      *(v59 + 4) = sub_3E850(0xD000000000000048, 0x8000000000100C70, &v88);
      v82 = v54;
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_3E850(v58, v81, &v88);
      *(v59 + 22) = 2080;
      if (v33)
      {
        v60 = v85;
      }

      else
      {
        v60 = 0x206E776F6E6B6E75;
      }

      if (v33)
      {
        v61 = v33;
      }

      else
      {
        v61 = 0xED0000726F727265;
      }

      v62 = sub_3E850(v60, v61, &v88);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v59 + 24) = v62;
      _os_log_impl(&dword_0, v35, v36, "%{public}s Failed to upload RCSFile for %s %s", v59, 0x20u);
      swift_arrayDestroy();

      (*(v57 + 8))(v83, v87);
      sub_372B0(v84, &qword_128320, &qword_F34B0);
      (*(v55 + 8))(v52, v82);
    }

    else
    {

      v33, v70, v71, v72, v73, v74, v75, v76;
      (*(v57 + 8))(v56, v87);
      sub_372B0(v53, &qword_128320, &qword_F34B0);
      (*(v55 + 8))(v52, v54);
    }

    v77 = *(v8 + 104);
    v78 = sub_388C8(&qword_12A8F8, &qword_F7560);
    (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
  }

  v79 = *(v8 + 8);

  return v79();
}

uint64_t sub_2C8E4()
{
  v1 = *(v0 + 264);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2C990(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

uint64_t sub_2C9E8()
{
  if (sub_F0BDC())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = sub_F137C();
    v8 = v7;
    sub_F129C();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v9 = sub_2D1E8(&qword_12A9B0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_F127C();
    sub_2D1E8(&qword_12A9B8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_F10BC();
    v10 = *(v4 + 8);
    *(v0 + 136) = v10;
    *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v5);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_2CC10;
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 16, v12, v9);
  }
}

uint64_t sub_2CC10()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {
    (*(v2 + 136))(*(v2 + 104), *(v2 + 80));

    return _swift_task_switch(sub_2D150, 0, 0);
  }

  else
  {
    v4 = *(v2 + 120);
    v3 = *(v2 + 128);
    v5 = *(v2 + 112);
    v6 = *(v2 + 64);
    (*(v2 + 136))(*(v2 + 104), *(v2 + 80));
    (*(v4 + 8))(v3, v5);
    v9 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v2 + 168) = v7;
    *v7 = v2;
    v7[1] = sub_2CE2C;

    return v9();
  }
}

uint64_t sub_2CE2C()
{

  return _swift_task_switch(sub_2CF28, 0, 0);
}

uint64_t sub_2CF28()
{
  if (sub_F0BDC())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = sub_F137C();
    v8 = v7;
    sub_F129C();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v9 = sub_2D1E8(&qword_12A9B0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    sub_F127C();
    sub_2D1E8(&qword_12A9B8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    sub_F10BC();
    v10 = *(v4 + 8);
    *(v0 + 136) = v10;
    *(v0 + 144) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v3, v5);
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_2CC10;
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 16, v12, v9);
  }
}

uint64_t sub_2D150()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2D1E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2D234()
{
  v48 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  swift_beginAccess();
  v3 = sub_C7880(v2, v1);
  *(v0 + 136) = v3;
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v5 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v4);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    swift_beginAccess();
    sub_C77D0(v6, v8);
    v10 = v9;
    swift_endAccess();
    v8, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;

    return _swift_task_switch(sub_2D5E8, v3, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 112);
    v26 = sub_F06CC();
    sub_3C96C(v26, qword_129B28);

    v27 = sub_F06AC();
    v28 = sub_F0D0C();
    v25, v29, v30, v31, v32, v33, v34, v35;
    if (os_log_type_enabled(v27, v28))
    {
      v37 = *(v0 + 104);
      v36 = *(v0 + 112);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_3E850(v37, v36, &v47);
      _os_log_impl(&dword_0, v27, v28, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v38, 0x16u);
      sub_1EDC(v39);
    }

    v40 = *(*(v0 + 128) + 136);
    if (v40)
    {
      if (*(v0 + 49))
      {
        *(v0 + 16) = *(v0 + 120);
        *(v0 + 48) = 1;
        swift_errorRetain();
      }

      else
      {
        *(v0 + 40) = &type metadata for Never;
        *(v0 + 48) = 0;
      }

      v46 = (v40 + *v40);
      v42 = swift_task_alloc();
      *(v0 + 144) = v42;
      *v42 = v0;
      v42[1] = sub_2D6BC;
      v44 = *(v0 + 104);
      v43 = *(v0 + 112);

      return v46(v44, v43, v0 + 16);
    }

    else
    {
      v41 = *(v0 + 8);

      return v41();
    }
  }
}

uint64_t sub_2D5E8()
{
  v1 = *(v0 + 128);
  sub_C3D90(*(v0 + 120), *(v0 + 49) & 1);

  return _swift_task_switch(sub_2D65C, v1, 0);
}

uint64_t sub_2D65C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2D6BC()
{
  v1 = *v0;
  v4 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2D7C8()
{
  v50 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  swift_beginAccess();
  v3 = sub_C7880(v2, v1);
  *(v0 + 208) = v3;
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v5 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v4);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    swift_beginAccess();
    sub_C77D0(v6, v8);
    v10 = v9;
    swift_endAccess();
    v8, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;

    return _swift_task_switch(sub_2DBC4, v3, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 184);
    v26 = sub_F06CC();
    sub_3C96C(v26, qword_129B28);

    v27 = sub_F06AC();
    v28 = sub_F0D0C();
    v25, v29, v30, v31, v32, v33, v34, v35;
    if (os_log_type_enabled(v27, v28))
    {
      v37 = *(v0 + 176);
      v36 = *(v0 + 184);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_3E850(v37, v36, &v49);
      _os_log_impl(&dword_0, v27, v28, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v38, 0x16u);
      sub_1EDC(v39);
    }

    v40 = *(*(v0 + 200) + 136);
    if (v40)
    {
      sub_37380(*(v0 + 192), v0 + 56, &qword_128B88, &qword_F3F30);
      v41 = *(v0 + 88);
      if (v41)
      {
        *(v0 + 16) = *(v0 + 56);
      }

      else
      {
        sub_54F88((v0 + 56), (v0 + 96));
        *(v0 + 40) = &type metadata for Any + 8;
        v43 = swift_allocObject();
        *(v0 + 16) = v43;
        sub_54F88((v0 + 96), (v43 + 16));
      }

      *(v0 + 48) = v41;
      v48 = (v40 + *v40);
      v44 = swift_task_alloc();
      *(v0 + 216) = v44;
      *v44 = v0;
      v44[1] = sub_2DC90;
      v46 = *(v0 + 176);
      v45 = *(v0 + 184);

      return v48(v46, v45, v0 + 16);
    }

    else
    {
      v42 = *(v0 + 8);

      return v42();
    }
  }
}

uint64_t sub_2DBC4()
{
  v1 = *(v0 + 200);
  sub_C4498(*(v0 + 192));

  return _swift_task_switch(sub_2DC30, v1, 0);
}

uint64_t sub_2DC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2DC90()
{
  v1 = *v0;
  v4 = *v0;

  sub_372B0(v1 + 16, &qword_128B88, &qword_F3F30);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2DD9C()
{
  v50 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  swift_beginAccess();
  v3 = sub_C7880(v2, v1);
  *(v0 + 224) = v3;
  swift_endAccess();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 24);
    v5 = *(v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id + 32);
    sub_373E8((v3 + OBJC_IVAR____TtCC7CoreRCS22RCSOperationControllerP33_1B0F715D17C82627C67D971FB94137349Operation_id), v4);
    v6 = (*(v5 + 24))(v4, v5);
    v8 = v7;
    swift_beginAccess();
    sub_C77D0(v6, v8);
    v10 = v9;
    swift_endAccess();
    v8, v11, v12, v13, v14, v15, v16, v17;
    v10, v18, v19, v20, v21, v22, v23, v24;

    return _swift_task_switch(sub_2E1A0, v3, 0);
  }

  else
  {
    if (qword_128F78 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 200);
    v26 = sub_F06CC();
    sub_3C96C(v26, qword_129B28);

    v27 = sub_F06AC();
    v28 = sub_F0D0C();
    v25, v29, v30, v31, v32, v33, v34, v35;
    if (os_log_type_enabled(v27, v28))
    {
      v37 = *(v0 + 192);
      v36 = *(v0 + 200);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      *(v38 + 14) = sub_3E850(v37, v36, &v49);
      _os_log_impl(&dword_0, v27, v28, "Operation completed with ID %{private,mask.hash}s but no operation with that ID is being tracked", v38, 0x16u);
      sub_1EDC(v39);
    }

    v40 = *(*(v0 + 216) + 136);
    if (v40)
    {
      sub_37380(*(v0 + 208), v0 + 16, &qword_127EC0, &qword_F2C90);
      v41 = *(v0 + 56);
      if (v41)
      {
        *(v0 + 104) = *(v0 + 16);
      }

      else
      {
        sub_55248((v0 + 16), v0 + 64);
        *(v0 + 128) = sub_388C8(&qword_129378, &qword_F49E0);
        v43 = swift_allocObject();
        *(v0 + 104) = v43;
        sub_55248((v0 + 64), v43 + 16);
      }

      *(v0 + 136) = v41;
      v48 = (v40 + *v40);
      v44 = swift_task_alloc();
      *(v0 + 232) = v44;
      *v44 = v0;
      v44[1] = sub_2E26C;
      v46 = *(v0 + 192);
      v45 = *(v0 + 200);

      return v48(v46, v45, v0 + 104);
    }

    else
    {
      v42 = *(v0 + 8);

      return v42();
    }
  }
}

uint64_t sub_2E1A0()
{
  v1 = *(v0 + 216);
  sub_C4C18(*(v0 + 208));

  return _swift_task_switch(sub_2E20C, v1, 0);
}

uint64_t sub_2E20C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2E26C()
{
  v1 = *v0;
  v4 = *v0;

  sub_372B0(v1 + 104, &qword_128B88, &qword_F3F30);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2E378()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_2E42C;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_E1124(v3, v2, v4);
}

uint64_t sub_2E42C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2E520()
{
  *(v0 + 224) = sub_F0AEC();
  *(v0 + 232) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_2E5B8, v2, v1);
}

uint64_t sub_2E5B8()
{
  v1 = *(v0 + 104);

  *(v0 + 240) = sub_E15B0(v1);
  *(v0 + 634) = v2;

  return _swift_task_switch(sub_2E638, 0, 0);
}

uint64_t sub_2E638()
{
  if ((*(v0 + 634) & 1) == 0)
  {
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_2E7D4;
    v2 = *(v0 + 104);
    v3 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 240))
  {
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v1[1] = sub_2EA2C;
    v2 = *(v0 + 104);
    v3 = 1;
LABEL_5:

    return sub_E29F0(v2, v3);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  *(v0 + 296) = *(*(v0 + 120) + 16);
  *(v0 + 304) = [v7 context];
  *(v0 + 312) = *(v6 + 16);
  *(v0 + 320) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xB372000000000000;
  *(v0 + 328) = sub_F0ADC();
  v9 = sub_F0A6C();

  return _swift_task_switch(sub_2EC78, v9, v8);
}

uint64_t sub_2E7D4(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_2E8D4, 0, 0);
}

uint64_t sub_2E8D4(uint64_t a1)
{
  *(v1 + 264) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2E960, v3, v2);
}

uint64_t sub_2E960()
{
  v1 = v0[32];
  v2 = v0[30];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_E2A14(v1, 1, 0, v2, v3, v5, v4);
  v1, v6, v7, v8, v9, v10, v11, v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_2EA2C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_2EB2C, 0, 0);
}

uint64_t sub_2EB2C(uint64_t a1)
{
  *(v1 + 288) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2EBB8, v3, v2);
}

uint64_t sub_2EBB8()
{
  v1 = v0[35];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_E2A14(v1, 1, 0, 0, v2, v4, v3);
  v1, v5, v6, v7, v8, v9, v10, v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_2EC78()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);

  *(v0 + 635) = v2(v1, v3, v4) & 1;

  return _swift_task_switch(sub_2ED18, 0, 0);
}

uint64_t sub_2ED18(uint64_t a1)
{
  if (*(v1 + 635) == 1)
  {
    if (qword_128F80 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 208);
    v2 = *(v1 + 216);
    v4 = *(v1 + 200);
    v5 = sub_3C96C(v4, qword_129D80);
    v6 = *(v3 + 16);
    *(v1 + 336) = v6;
    *(v1 + 344) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v5, v4);
    sub_F044C();
    v7 = *(v3 + 8);
    *(v1 + 352) = v7;
    *(v1 + 360) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v2, v4);
    if (*(v1 + 632) == 1)
    {
      v8 = *(v1 + 104);
      v9 = sub_E9400(_swiftEmptyArrayStorage);
      v10 = [v8 handleIDs];
      v11 = sub_F09FC();
      *(v1 + 368) = v11;

      v19 = *(v11 + 16);
      *(v1 + 376) = v19;
      if (v19)
      {
        *(v1 + 384) = v9;
        *(v1 + 392) = 0;
        v20 = *(v1 + 368);
        v46 = *(v20 + 32);
        *(v1 + 400) = v46;
        v21 = *(v20 + 40);
        *(v1 + 408) = v21;
        sub_388C8(&qword_127B20, &unk_F74E0);
        v22 = swift_task_alloc();
        v23 = sub_F030C();
        v44 = v22;
        (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
        v24 = qword_128F88;
        v45 = v21;
        swift_bridgeObjectRetain_n();
        if (v24 != -1)
        {
          swift_once();
        }

        v25 = *(v1 + 352);
        v26 = *(v1 + 336);
        v27 = *(v1 + 216);
        v28 = *(v1 + 200);
        v30 = *(v1 + 128);
        v29 = *(v1 + 136);
        v31 = sub_3C96C(v28, qword_129D98);
        v26(v27, v31, v28);
        sub_F044C();
        v25(v27, v28);
        LOBYTE(v25) = *(v1 + 633);
        v33 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities(0, v29, v30, v32);
        *(v1 + 80) = v33;
        *(v1 + 88) = &off_1228E0;
        v34 = sub_37474((v1 + 56));
        *v34 = v46;
        v34[1] = v45;
        *(v34 + 4) = 16843009;
        *(v34 + 10) = 256;
        *(v34 + 22) = 0;
        sub_E40F0(v44, v34 + *(v33 + 64));
        *(v34 + *(v33 + 68)) = v25;

        *(v1 + 416) = sub_F0ADC();
        v35 = sub_F0A6C();
        v37 = v36;
        v38 = sub_2F15C;
      }

      else
      {
        *(v1 + 432) = v9;
        *(v1 + 368), v12, v13, v14, v15, v16, v17, v18;
        *(v1 + 440) = sub_F0ADC();
        v35 = sub_F0A6C();
        v37 = v42;
        v38 = sub_2F4EC;
      }
    }

    else
    {
      v40 = *(v1 + 128);
      *(v1 + 448) = [*(v1 + 104) context];
      *(v1 + 456) = *(v40 + 48);
      *(v1 + 464) = (v40 + 48) & 0xFFFFFFFFFFFFLL | 0x4E31000000000000;
      *(v1 + 472) = sub_F0ADC();
      v35 = sub_F0A6C();
      v37 = v41;
      v38 = sub_2F614;
    }
  }

  else
  {
    *(v1 + 624) = sub_F0ADC();
    v35 = sub_F0A6C();
    v37 = v39;
    v38 = sub_30310;
  }

  return _swift_task_switch(v38, v35, v37);
}

uint64_t sub_2F15C()
{
  v1 = v0[51];
  v2 = v0[50];
  v3 = v0[13];

  v0[53] = sub_E2148(v2, v1, v3, (v0 + 7), 2, 2);
  sub_372B0((v0 + 7), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_2F210, 0, 0);
}

uint64_t sub_2F210()
{
  v1 = *(v0 + 424);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v5 = *(v0 + 376);
  v6 = *(v0 + 392) + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_BC440(v1, v3, v2, isUniquelyReferenced_nonNull_native);
  v2, v8, v9, v10, v11, v12, v13, v14;
  if (v6 == v5)
  {
    *(v0 + 432) = v4;
    *(v0 + 368), v15, v16, v17, v18, v19, v20, v21;
    *(v0 + 440) = sub_F0ADC();
    v22 = sub_F0A6C();
    v24 = v23;
    v25 = sub_2F4EC;
  }

  else
  {
    v26 = *(v0 + 392) + 1;
    *(v0 + 384) = v4;
    *(v0 + 392) = v26;
    v27 = *(v0 + 368) + 16 * v26;
    v47 = *(v27 + 32);
    *(v0 + 400) = v47;
    v28 = *(v27 + 40);
    *(v0 + 408) = v28;
    sub_388C8(&qword_127B20, &unk_F74E0);
    v29 = swift_task_alloc();
    v30 = sub_F030C();
    v45 = v29;
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v31 = qword_128F88;
    v46 = v28;
    swift_bridgeObjectRetain_n();
    if (v31 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 352);
    v33 = *(v0 + 336);
    v34 = *(v0 + 216);
    v35 = *(v0 + 200);
    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v38 = sub_3C96C(v35, qword_129D98);
    v33(v34, v38, v35);
    sub_F044C();
    v32(v34, v35);
    v39 = *(v0 + 633);
    v41 = type metadata accessor for RCSReachabilityController.MockRCSHandleCapabilities(0, v36, v37, v40);
    *(v0 + 80) = v41;
    *(v0 + 88) = &off_1228E0;
    v42 = sub_37474((v0 + 56));
    *v42 = v47;
    v42[1] = v46;
    *(v42 + 4) = 16843009;
    *(v42 + 10) = 256;
    *(v42 + 22) = 0;
    sub_E40F0(v45, v42 + *(v41 + 64));
    *(v42 + *(v41 + 68)) = v39;

    *(v0 + 416) = sub_F0ADC();
    v22 = sub_F0A6C();
    v24 = v43;
    v25 = sub_2F15C;
  }

  return _swift_task_switch(v25, v22, v24);
}

uint64_t sub_2F4EC()
{
  v1 = v0[54];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_E2A14(v1, 1, 1, 0, v2, v4, v3);
  v1, v5, v6, v7, v8, v9, v10, v11;

  return _swift_task_switch(sub_2F58C, 0, 0);
}

uint64_t sub_2F58C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2F614()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[16];
  v3 = v0[17];

  v2(v1, v3, v4);

  return _swift_task_switch(sub_2F6BC, 0, 0);
}

uint64_t sub_2F6BC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  (*(*(v0 + 176) + 16))(v1, *(v0 + 192), *(v0 + 168));
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 184);
  if (v4 == 1)
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 104);
    v9 = *(v7 + 8);
    *(v0 + 528) = v9;
    *(v0 + 536) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v6);
    v10 = sub_E9400(_swiftEmptyArrayStorage);
    v11 = [v8 handleIDs];
    v12 = sub_F09FC();
    *(v0 + 544) = v12;

    v21 = *(v12 + 16);
    *(v0 + 552) = v21;
    if (v21)
    {
      *(v0 + 568) = 0;
      *(v0 + 560) = v10;
      v22 = *(v0 + 544);
      if (!v22[2])
      {
        __break(1u);
        return _swift_task_switch(v13, v14, v15);
      }

      *(v0 + 576) = v22[4];
      *(v0 + 584) = v22[5];
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;

      *(v0 + 592) = sub_F0ADC();
      v23 = sub_F0A6C();
      v25 = v24;
      v26 = sub_2FE88;
    }

    else
    {
      *(v0 + 608) = v10;
      *(v0 + 544), v14, v15, v16, v17, v18, v19, v20;
      *(v0 + 616) = sub_F0ADC();
      v23 = sub_F0A6C();
      v25 = v31;
      v26 = sub_301D0;
    }

    v13 = v26;
    v14 = v23;
    v15 = v25;

    return _swift_task_switch(v13, v14, v15);
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 184), *(v0 + 144));
  v27 = swift_task_alloc();
  *(v0 + 480) = v27;
  *v27 = v0;
  v27[1] = sub_2F92C;
  v28 = *(v0 + 160);
  v29 = *(v0 + 104);

  return sub_E36EC(v29, 1, v28);
}

uint64_t sub_2F92C(uint64_t a1)
{
  *(*v1 + 488) = a1;

  return _swift_task_switch(sub_2FA2C, 0, 0);
}

uint64_t sub_2FA2C(uint64_t a1)
{
  *(v1 + 496) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2FAB8, v3, v2);
}

uint64_t sub_2FAB8()
{
  v1 = v0[61];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_E2A14(v1, 0, 0, 0, v2, v4, v3);
  v1, v5, v6, v7, v8, v9, v10, v11;
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_2FB98;
  v13 = v0[20];
  v14 = v0[13];

  return sub_E36EC(v14, 0, v13);
}

uint64_t sub_2FB98(uint64_t a1)
{
  *(*v1 + 512) = a1;

  return _swift_task_switch(sub_2FC98, 0, 0);
}

uint64_t sub_2FC98(uint64_t a1)
{
  *(v1 + 520) = sub_F0ADC();
  v3 = sub_F0A6C();

  return _swift_task_switch(sub_2FD24, v3, v2);
}

uint64_t sub_2FD24()
{
  v1 = v0[64];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_E2A14(v1, 1, 1, 0, v2, v4, v3);
  v1, v5, v6, v7, v8, v9, v10, v11;

  return _swift_task_switch(sub_2FDC8, 0, 0);
}

uint64_t sub_2FDC8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2FE88()
{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[13];

  v0[75] = sub_E2148(v2, v1, v3, (v0 + 2), 2, 2);
  sub_372B0((v0 + 2), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_2FF40, 0, 0);
}

uint64_t sub_2FF40()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 96) = v3;
  v5 = v0 + 96;
  v6 = sub_51FEC(v2, v1);
  v14 = *(v3 + 16);
  v15 = (v7 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_20:
    v39 = v6;
    sub_BCF64();
    v6 = v39;
LABEL_8:
    v21 = *(v0 + 600);
    v22 = *(v0 + 584);
    if (v2)
    {
      v23 = v6;
      *(v0 + 584), v7, v8, v9, v10, v11, v12, v13;
      v24 = *v5;
      v25 = *(*v5 + 56);
      v26 = *(v25 + 8 * v23);
      *(v25 + 8 * v23) = v21;
    }

    else
    {
      v27 = *(v0 + 576);
      v24 = *(v0 + 96);
      v24[(v6 >> 6) + 8] |= 1 << v6;
      v28 = (v24[6] + 16 * v6);
      *v28 = v27;
      v28[1] = v22;
      *(v24[7] + 8 * v6) = v21;
      v29 = v24[2];
      v16 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v16)
      {
        __break(1u);
        goto LABEL_22;
      }

      v24[2] = v30;
    }

    v31 = *(v0 + 568) + 1;
    if (v31 == *(v0 + 552))
    {
      *(v0 + 608) = v24;
      *(v0 + 544), v7, v8, v9, v10, v11, v12, v13;
      *(v0 + 616) = sub_F0ADC();
      v32 = sub_F0A6C();
      v34 = v33;
      v35 = sub_301D0;
      goto LABEL_16;
    }

    *(v0 + 568) = v31;
    *(v0 + 560) = v24;
    v36 = *(v0 + 544);
    if (v31 < *(v36 + 16))
    {
      v37 = v36 + 16 * v31;
      *(v0 + 576) = *(v37 + 32);
      *(v0 + 584) = *(v37 + 40);
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;

      *(v0 + 592) = sub_F0ADC();
      v32 = sub_F0A6C();
      v34 = v38;
      v35 = sub_2FE88;
LABEL_16:
      v6 = v35;
      v7 = v32;
      v8 = v34;

      return _swift_task_switch(v6, v7, v8);
    }

LABEL_22:
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  LOBYTE(v2) = v7;
  if (*(*(v0 + 560) + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  sub_BB46C(v17, isUniquelyReferenced_nonNull_native);
  v6 = sub_51FEC(v19, v18);
  if ((v2 & 1) == (v7 & 1))
  {
    goto LABEL_8;
  }

  return sub_F126C();
}

uint64_t sub_301D0()
{
  v1 = v0[76];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_E2A14(v1, 1, 0, &dword_4, v2, v4, v3);
  v1, v5, v6, v7, v8, v9, v10, v11;

  return _swift_task_switch(sub_30274, 0, 0);
}

uint64_t sub_30274()
{
  (*(v0 + 528))(*(v0 + 192), *(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_30310()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];

  sub_E2F78(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_303B8()
{
  v1 = *(v0 + 56);
  v2 = sub_E9400(_swiftEmptyArrayStorage);
  v3 = [v1 handleIDs];
  v4 = sub_F09FC();
  *(v0 + 72) = v4;

  v12 = *v4[1].IMDTelephonyServiceSession_opaque;
  *(v0 + 80) = v12;
  if (v12)
  {
    v13 = sub_F0AEC();
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    *(v0 + 88) = v13;
    v14 = *(v0 + 72);
    *(v0 + 112) = *(v14 + 32);
    *(v0 + 120) = *(v14 + 40);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;

    *(v0 + 128) = sub_F0ADC();
    v16 = sub_F0A6C();

    return _swift_task_switch(sub_30514, v16, v15);
  }

  else
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    v17 = *(v0 + 8);

    return v17(v2);
  }
}

uint64_t sub_30514()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 144);
  v4 = *(v0 + 56);

  *(v0 + 136) = sub_E2148(v2, v1, v4, v0 + 16, v3, 0);
  v1, v5, v6, v7, v8, v9, v10, v11;
  sub_372B0(v0 + 16, &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_305D8, 0, 0);
}

uint64_t sub_305D8()
{
  v2 = *(v0 + 96);
  v3 = [*(v0 + 136) handleID];
  v4 = sub_F07EC();
  v6 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v2;
  v8 = sub_51FEC(v4, v6);
  v16 = *(v2 + 16);
  v17 = (v9 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_20:
    v41 = v8;
    sub_BCF64();
    v8 = v41;
    goto LABEL_8;
  }

  v1 = v9;
  if (*(*(v0 + 96) + 24) >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  sub_BB46C(v19, isUniquelyReferenced_nonNull_native);
  v8 = sub_51FEC(v4, v6);
  if ((v1 & 1) != (v9 & 1))
  {

    return sub_F126C();
  }

LABEL_8:
  v21 = *(v0 + 16);
  v22 = *(v0 + 136);
  if (v1)
  {
    v23 = v21[7];
    v24 = *(v23 + 8 * v8);
    *(v23 + 8 * v8) = v22;

    v6, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v21[(v8 >> 6) + 8] |= 1 << v8;
    v32 = (v21[6] + 16 * v8);
    *v32 = v4;
    v32[1] = v6;
    *(v21[7] + 8 * v8) = v22;
    v33 = v21[2];
    v18 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v18)
    {
      __break(1u);
      return _swift_task_switch(v8, v9, v10);
    }

    v21[2] = v34;
  }

  v35 = *(v0 + 104) + 1;
  if (v35 != *(v0 + 80))
  {
    *(v0 + 96) = v21;
    *(v0 + 104) = v35;
    v37 = *(v0 + 72) + 16 * v35;
    *(v0 + 112) = *(v37 + 32);
    *(v0 + 120) = *(v37 + 40);
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;

    *(v0 + 128) = sub_F0ADC();
    v38 = sub_F0A6C();
    v40 = v39;
    v8 = sub_30514;
    v9 = v38;
    v10 = v40;

    return _swift_task_switch(v8, v9, v10);
  }

  *(v0 + 72), v9, v10, v11, v12, v13, v14, v15;
  v36 = *(v0 + 8);

  return v36(v21);
}

uint64_t sub_30858()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  v5 = sub_388C8(&qword_12AAD8, &qword_F7858);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  v7 = sub_388C8(&qword_12AAE0, &unk_F7870);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_3098C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v7, 0, 0, &unk_F7868, v6, v5);
}

uint64_t sub_3098C()
{

  return _swift_task_switch(sub_30AA4, 0, 0);
}

uint64_t sub_30ABC()
{
  v63 = v0;
  v1 = [*(v0 + 392) context];
  v2 = [v1 hasConversationHistory];

  if (v2)
  {
    v3 = [*(v0 + 392) context];
    v4 = [v3 serviceOfLastMessage];

    if (v4)
    {
      v5 = sub_F07EC();
      v7 = v6;

      if (v5 == 5459283 && v7 == 0xE300000000000000)
      {
        v7, v8, v9, v10, v11, v12, v13, v14;
      }

      else
      {
        v16 = sub_F122C();
        v7, v17, v18, v19, v20, v21, v22, v23;
        if ((v16 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v59 = *(v0 + 416);
      *(v0 + 464) = *(*(v0 + 408) + 16);
      *(v0 + 472) = *(v59 + 72);
      *(v0 + 480) = (v59 + 72) & 0xFFFFFFFFFFFFLL | 0x2256000000000000;
      *(v0 + 488) = sub_F0AEC();
      *(v0 + 496) = sub_F0ADC();
      v53 = sub_F0A6C();
      v55 = v60;
      v56 = sub_30EB0;
      goto LABEL_17;
    }
  }

LABEL_8:
  v24 = *(v0 + 376);
  v25 = *(v0 + 384);
  *(v0 + 512) = *(*(v0 + 408) + 16);

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v26, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
  if (v27)
  {
    *(v0 + 592) = v27;
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 384);
    v29 = sub_F06CC();
    sub_3C96C(v29, static Logger.reachability);

    swift_errorRetain();
    v30 = sub_F06AC();
    v31 = sub_F0CEC();
    v28, v32, v33, v34, v35, v36, v37, v38;

    if (os_log_type_enabled(v30, v31))
    {
      v40 = *(v0 + 376);
      v39 = *(v0 + 384);
      v41 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_3E850(v40, v39, v62);
      *(v41 + 12) = 2080;
      swift_getErrorValue();
      v42 = sub_F12AC();
      v44 = v43;
      v45 = sub_3E850(v42, v43, v62);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v41 + 14) = v45;
      _os_log_impl(&dword_0, v30, v31, "Failed to calculate reachability for %s: %s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_F0AEC();
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
    *(v0 + 600) = sub_F0ADC();
    v53 = sub_F0A6C();
    v55 = v54;
    v56 = sub_31A60;
  }

  else
  {
    v57 = *(v0 + 416);
    *(v0 + 520) = *(v57 + 56);
    *(v0 + 528) = (v57 + 56) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
    *(v0 + 536) = sub_F0AEC();
    *(v0 + 544) = sub_F0ADC();
    v53 = sub_F0A6C();
    v55 = v58;
    v56 = sub_3144C;
  }

LABEL_17:

  return _swift_task_switch(v56, v53, v55);
}

uint64_t sub_30EB0()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);

  *(v0 + 74) = v1(v6, v5, v4, v2, v3) & 1;

  return _swift_task_switch(sub_30F64, 0, 0);
}

uint64_t sub_30F64()
{
  v54 = v0;
  if (*(v0 + 74) == 1)
  {
    if (qword_128F40 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 384);
    v2 = sub_F06CC();
    sub_3C96C(v2, static Logger.reachability);

    v3 = sub_F06AC();
    v4 = sub_F0CCC();
    v1, v5, v6, v7, v8, v9, v10, v11;
    if (os_log_type_enabled(v3, v4))
    {
      v13 = *(v0 + 376);
      v12 = *(v0 + 384);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_3E850(v13, v12, v53);
      _os_log_impl(&dword_0, v3, v4, "Not doing reachability request for %s because it is a shortcode with established SMS history", v14, 0xCu);
      sub_1EDC(v15);
    }

    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0;
    *(v0 + 504) = sub_F0ADC();
    v16 = sub_F0A6C();
    v18 = v17;
    v19 = sub_31394;
  }

  else
  {
    v20 = *(v0 + 376);
    v21 = *(v0 + 384);
    *(v0 + 512) = *(*(v0 + 408) + 16);

    v22._countAndFlagsBits = v20;
    v22._object = v21;
    RCSHandle.init(rawValue:botStatus:alternateHandle:)((v0 + 80), v22, CoreRCS_RCSHandle_BotStatus_notChatBot, 0);
    if (v23)
    {
      *(v0 + 592) = v23;
      if (qword_128F40 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 384);
      v25 = sub_F06CC();
      sub_3C96C(v25, static Logger.reachability);

      swift_errorRetain();
      v26 = sub_F06AC();
      v27 = sub_F0CEC();
      v24, v28, v29, v30, v31, v32, v33, v34;

      if (os_log_type_enabled(v26, v27))
      {
        v36 = *(v0 + 376);
        v35 = *(v0 + 384);
        v37 = swift_slowAlloc();
        v53[0] = swift_slowAlloc();
        *v37 = 136315394;
        *(v37 + 4) = sub_3E850(v36, v35, v53);
        *(v37 + 12) = 2080;
        swift_getErrorValue();
        v38 = sub_F12AC();
        v40 = v39;
        v41 = sub_3E850(v38, v39, v53);
        v40, v42, v43, v44, v45, v46, v47, v48;
        *(v37 + 14) = v41;
        _os_log_impl(&dword_0, v26, v27, "Failed to calculate reachability for %s: %s", v37, 0x16u);
        swift_arrayDestroy();
      }

      sub_F0AEC();
      *(v0 + 144) = 0u;
      *(v0 + 160) = 0u;
      *(v0 + 176) = 0;
      *(v0 + 600) = sub_F0ADC();
      v16 = sub_F0A6C();
      v18 = v49;
      v19 = sub_31A60;
    }

    else
    {
      v50 = *(v0 + 416);
      *(v0 + 520) = *(v50 + 56);
      *(v0 + 528) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0x702F000000000000;
      *(v0 + 536) = sub_F0AEC();
      *(v0 + 544) = sub_F0ADC();
      v16 = sub_F0A6C();
      v18 = v51;
      v19 = sub_3144C;
    }
  }

  return _swift_task_switch(v19, v16, v18);
}

uint64_t sub_31394()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];

  v4 = sub_E2148(v3, v2, v1, (v0 + 38), 0, 0);
  sub_372B0((v0 + 38), &qword_127EB8, &qword_F2C80);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_3144C()
{
  v1 = v0[65];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];

  v1(v0 + 10, v4, v2, v3);
  sub_3CAB8((v0 + 10));

  return _swift_task_switch(sub_314F8, 0, 0);
}

uint64_t sub_314F8()
{
  v28 = *(v0 + 456);
  v1 = *(v0 + 440);
  v27 = *(v0 + 432);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v25 = *(v0 + 400);
  v5 = *(v0 + 73);
  v26 = *(v0 + 73);
  v6 = RCSHandle.rawValue.getter();
  v8 = v7;
  v24 = v7;
  sub_3CAB8(v0 + 16);
  if (v5)
  {
    v9._countAndFlagsBits = 0x646568636163;
  }

  else
  {
    v9._countAndFlagsBits = 0x6465686361636E75;
  }

  if (v5)
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  v9._object = v10;
  sub_F08CC(v9);
  v10, v11, v12, v13, v14, v15, v16, v17;
  v30._countAndFlagsBits = 45;
  v30._object = 0xE100000000000000;
  sub_F08CC(v30);
  v31._countAndFlagsBits = v6;
  v31._object = v8;
  sub_F08CC(v31);
  *(v0 + 248) = type metadata accessor for RCSReachabilityController.CapabilityOperationID(0, v2, v3, v18);
  *(v0 + 256) = swift_getWitnessTable();
  v19 = sub_37474((v0 + 224));
  sub_F034C();
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  (*(v1 + 16))(v28, v25, v27);
  v20 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v21 = swift_allocObject();
  *(v0 + 552) = v21;
  *(v21 + 16) = v2;
  *(v21 + 24) = v3;
  *(v21 + 32) = v4;
  *(v21 + 40) = v6;
  *(v21 + 48) = v24;
  *(v21 + 56) = v26;
  (*(v1 + 32))(v21 + v20, v28, v27);

  v22 = swift_task_alloc();
  *(v0 + 560) = v22;
  *v22 = v0;
  v22[1] = sub_31778;

  return sub_B6518(v0 + 184, v0 + 224, &unk_F78B8, v21);
}

uint64_t sub_31778()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_31B84;
  }

  else
  {
    sub_1EDC((v2 + 224));
    v3 = sub_318A4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_318A4()
{
  sub_1F28(v0 + 184, v0 + 264);
  *(v0 + 576) = sub_F0ADC();
  v2 = sub_F0A6C();

  return _swift_task_switch(sub_3193C, v2, v1);
}

uint64_t sub_3193C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];

  v0[73] = sub_E2148(v3, v2, v1, (v0 + 33), 2, 2);
  sub_372B0((v0 + 33), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_319F0, 0, 0);
}

uint64_t sub_319F0()
{
  sub_1EDC(v0 + 23);
  v1 = v0[73];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_31A60()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];

  v0[76] = sub_E2148(v3, v2, v1, (v0 + 18), 2, 2);
  sub_372B0((v0 + 18), &qword_127EB8, &qword_F2C80);

  return _swift_task_switch(sub_31B14, 0, 0);
}

uint64_t sub_31B14()
{

  v1 = *(v0 + 608);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_31B84()
{
  v30 = v0;
  sub_1EDC((v0 + 224));
  *(v0 + 592) = *(v0 + 568);
  if (qword_128F40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = sub_F06CC();
  sub_3C96C(v2, static Logger.reachability);

  swift_errorRetain();
  v3 = sub_F06AC();
  v4 = sub_F0CEC();
  v1, v5, v6, v7, v8, v9, v10, v11;

  if (os_log_type_enabled(v3, v4))
  {
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_3E850(v13, v12, &v29);
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_F12AC();
    v17 = v16;
    v18 = sub_3E850(v15, v16, &v29);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v3, v4, "Failed to calculate reachability for %s: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  sub_F0AEC();
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 600) = sub_F0ADC();
  v27 = sub_F0A6C();

  return _swift_task_switch(sub_31A60, v27, v26);
}

uint64_t sub_31DC0()
{
  v1 = *(v0 + 64);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v12 = (*(v2 + 40) + **(v2 + 40));
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_31EF4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 80);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);

  return v12(v10, v5, v7, v6, v8, v9, v3, v2);
}

uint64_t sub_31EF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_31FE8()
{
  v1 = [*(v0 + 104) handleIDs];
  v2 = sub_F09FC();

  v10 = *v2[1].IMDTelephonyServiceSession_opaque;
  if (v10)
  {
    v34 = *(v0 + 232);
    v35 = *(v0 + 152);
    state = v2[2].state;
    v33 = **(v0 + 96);
    do
    {
      v43 = v10;
      v13 = *(v0 + 184);
      v41 = *(v0 + 176);
      v14 = *(v0 + 168);
      v36 = v14;
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v39 = *(v0 + 112);
      v40 = *(v0 + 104);
      v17 = *state;
      v38 = *(state - 1);
      v42 = state;

      v37 = *(v0 + 128);
      sub_F0AFC();
      v18 = sub_F0B1C();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 0, 1, v18);
      (*(v35 + 16))(v14, v16, v15);
      v20 = (*(v35 + 80) + 81) & ~*(v35 + 80);
      v21 = swift_allocObject();
      v21[1].i64[0] = 0;
      v21[1].i64[1] = 0;
      v21[2] = vextq_s8(v37, v37, 8uLL);
      v21[3].i64[0] = v39;
      v21[3].i64[1] = v38;
      v21[4].i64[0] = v17;
      v21[4].i64[1] = v40;
      v21[5].i8[0] = v34;
      (*(v35 + 32))(&v21->i8[v20], v36, v15);
      sub_37380(v13, v41, &qword_127EB0, &unk_F2B30);
      LODWORD(v20) = (*(v19 + 48))(v41, 1, v18);

      v22 = v40;

      v23 = *(v0 + 176);
      if (v20 == 1)
      {
        sub_372B0(*(v0 + 176), &qword_127EB0, &unk_F2B30);
      }

      else
      {
        sub_F0B0C();
        (*(v19 + 8))(v23, v18);
      }

      if (v21[1].i64[0])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_F0A6C();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = &unk_F7898;
      *(v27 + 24) = v21;
      sub_388C8(&qword_12AAD8, &qword_F7858);
      v28 = v26 | v24;
      if (v26 | v24)
      {
        v28 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v24;
        *(v0 + 40) = v26;
      }

      v12 = *(v0 + 184);
      *(v0 + 48) = 1;
      *(v0 + 56) = v28;
      *(v0 + 64) = v33;
      swift_task_create();

      sub_372B0(v12, &qword_127EB0, &unk_F2B30);
      state = v42 + 16;
      v10 = v43 - 1;
    }

    while (v43 != 1);
  }

  v2, v3, v4, v5, v6, v7, v8, v9;
  v29 = sub_E9400(_swiftEmptyArrayStorage);
  sub_388C8(&qword_12AAD8, &qword_F7858);
  sub_F0AAC();
  *(v0 + 216) = v29;
  v30 = swift_task_alloc();
  *(v0 + 224) = v30;
  *v30 = v0;
  v30[1] = sub_3247C;
  v31 = *(v0 + 192);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, 0, 0, v31);
}

uint64_t sub_3247C()
{

  return _swift_task_switch(sub_32578, 0, 0);
}

uint64_t sub_32578()
{
  v2 = *(v0 + 72);
  if (v2 != &dword_0 + 1)
  {
    if (!v2)
    {
      goto LABEL_19;
    }

    v3 = *(v0 + 216);
    v4 = [*(v0 + 72) handleID];
    v5 = sub_F07EC();
    v7 = v6;

    v8 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v3;
    v10 = sub_51FEC(v5, v7);
    v18 = *(v3 + 16);
    v19 = (v11 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v1 = v11;
      if (*(*(v0 + 216) + 24) < v21)
      {
        sub_BB46C(v21, isUniquelyReferenced_nonNull_native);
        v10 = sub_51FEC(v5, v7);
        if ((v1 & 1) != (v11 & 1))
        {

          return sub_F126C();
        }

LABEL_13:
        if (v1)
        {
LABEL_14:
          v26 = v10;
          v7, v11, v12, v13, v14, v15, v16, v17;
          v27 = *(v0 + 80);
          v28 = *(v27 + 56);
          v29 = *(v28 + 8 * v26);
          *(v28 + 8 * v26) = v8;

          sub_E4160(v2);
          *(v0 + 216) = v27;
          goto LABEL_19;
        }

LABEL_17:
        v31 = *(v0 + 80);
        v31[(v10 >> 6) + 8] |= 1 << v10;
        v32 = (v31[6] + 16 * v10);
        *v32 = v5;
        v32[1] = v7;
        *(v31[7] + 8 * v10) = v8;
        sub_E4160(v2);
        v37 = v31[2];
        v20 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v20)
        {
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v33, v34, v35, v36);
        }

        v31[2] = v38;
        *(v0 + 216) = v31;
LABEL_19:
        v39 = swift_task_alloc();
        *(v0 + 224) = v39;
        *v39 = v0;
        v39[1] = sub_3247C;
        v36 = *(v0 + 192);
        v33 = v0 + 72;
        v34 = 0;
        v35 = 0;

        return TaskGroup.Iterator.next(isolation:)(v33, v34, v35, v36);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }
    }

    v30 = v10;
    sub_BCF64();
    v10 = v30;
    if (v1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v23 = *(v0 + 216);
  v24 = *(v0 + 88);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  *v24 = v23;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_32858(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_32958, 0, 0);
}

uint64_t sub_32978()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_32AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_388C8(&qword_127B20, &unk_F74E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_32B64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_388C8(&qword_127B20, &unk_F74E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_32C14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_335C4;

  return sub_E39C0(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_32CE0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  *(v0 + 64), v6, v7, v8, v9, v10, v11, v12;

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_32DD0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v10 = *(v1 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_32F0C;

  return sub_E3B84(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_32F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_33000()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_33038(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_335C8;

  return sub_E3E60(a1, v4);
}

uint64_t sub_330F0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = *(v2 + 64);

  *(v0 + 48), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_331D0(uint64_t a1, uint64_t a2)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 57) & ~*(v6 + 80);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_332F0;

  return sub_E396C(a1, a2, v8, v9, v10, v11, v2 + v7);
}

uint64_t sub_332F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_333EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_33404()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3343C()
{
  sub_1EDC((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_33474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F035C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_33520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_F035C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_335DC(uint64_t a1)
{
  v1 = a1;
  sub_F12FC();
  v2 = 0xED0000747865746ELL;
  v3 = 0xEA00000000006563;
  v4 = 0xE200000000000000;
  if (v1 != 3)
  {
    v4 = 0xE900000000000074;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  if (v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_F089C();
  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_F132C();
  return sub_37740(v1, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_336E8(uint64_t a1)
{
  sub_F07EC();
  v3 = v2;
  sub_F12FC();
  sub_F089C();
  v4 = sub_F132C();
  v3, v5, v6, v7, v8, v9, v10, v11;
  return sub_33778(a1, v4);
}

unint64_t sub_33778(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_F07EC();
      v8 = v7;
      v9 = sub_F07EC();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = sub_F122C();
      v8, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  return v4;
}

uint64_t sub_3387C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_F122C() & 1;
  }
}

uint64_t sub_338D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, RCSServiceSession *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 == 7103860 && v9 == 0xE300000000000000;
  if (!v10 && (sub_F122C() & 1) == 0)
  {
    v86 = v8 == 0x6F746C69616DLL && v9 == 0xE600000000000000;
    if (!v86 && (sub_F122C() & 1) == 0)
    {
      v107 = *(a1 + 56);
      v109 = a1[5];
      v108 = a1[6];
      v73 = a1[3];
      v110 = a1[4];
      v70 = a1[2];
      result = sub_38910(a1, &v123);
      goto LABEL_21;
    }

    v88 = a1[2];
    v87 = a1[3];

    v89 = sub_53E04(_swiftEmptyArrayStorage);
    v90 = sub_E7DC8(_swiftEmptyArrayStorage);
    v91 = sub_E5BB4(v89);
    v90, v92, v93, v94, v95, v96, v97, v98;
    v89, v99, v100, v101, v102, v103, v104, v105;
    v115 = 7367027;
    v116 = 0xE300000000000000;
    v117 = v88;
    v118 = v87;
    v120 = 0;
    v121 = 0;
    v119 = v91;
    v122 = 0;
    v123 = 7367027;
    v124 = 0xE300000000000000;
    v125 = v88;
    v126 = v87;
    v129 = 0;
    v127 = v91;
    goto LABEL_18;
  }

  v113 = v8;
  v12 = a1[2];
  v11 = a1[3];

  v13 = sub_F07BC();

  v14 = sub_F07BC();
  a3, v15, v16, v17, v18, v19, v20, v21;
  v22 = IMPhoneNumberRefCopyForPhoneNumber();

  v23 = v22;
  v24 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
  if (v24)
  {
    v32 = v24;
    a3, v25, v26, v27, v28, v29, v30, v31;
    v33 = sub_F07EC();
    v35 = v34;

    v36 = sub_53E04(_swiftEmptyArrayStorage);
    v37 = sub_E7DC8(_swiftEmptyArrayStorage);
    v38 = sub_E5BB4(v36);
    v37, v39, v40, v41, v42, v43, v44, v45;
    v36, v46, v47, v48, v49, v50, v51, v52;

    v115 = 7103860;
    v116 = 0xE300000000000000;
    v117 = v33;
    v118 = v35;
    v120 = 0;
    v121 = 0;
    v119 = v38;
    v122 = 0;
    v123 = 7103860;
    v124 = 0xE300000000000000;
    v125 = v33;
    v126 = v35;
    v129 = 0;
    v127 = v38;
LABEL_18:
    v128 = 0;
    v130 = 0;
    sub_38910(&v115, v114);
    result = sub_3CAB8(&v123);
    v107 = v122;
    v109 = v120;
    v108 = v121;
    v73 = v118;
    v110 = v119;
    v9 = v116;
    v70 = v117;
    v8 = v115;
    goto LABEL_21;
  }

  v112 = a2;
  if (qword_128F38 != -1)
  {
    swift_once();
  }

  v53 = sub_F06CC();
  sub_3C96C(v53, static Logger.rcs);

  sub_38910(a1, &v123);
  v54 = sub_F06AC();
  v55 = sub_F0CEC();
  sub_3CAB8(a1);
  a3, v56, v57, v58, v59, v60, v61, v62;
  v70 = v12;
  if (os_log_type_enabled(v54, v55))
  {
    v111 = v55;
    v71 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v71 = 136315394;
    v72 = v12;
    v73 = v11;
    *(v71 + 4) = sub_3E850(v72, v11, &v115);
    *(v71 + 12) = 2080;
    v123 = v112;
    v124 = a3;
    sub_388C8(&qword_12AB88, &qword_F7970);
    v74 = sub_F083C();
    v75 = v23;
    v77 = v76;
    v78 = sub_3E850(v74, v76, &v115);
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v71 + 14) = v78;
    _os_log_impl(&dword_0, v54, v111, "Could not normalize phone number %s country code %s", v71, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    a3, v63, v64, v65, v66, v67, v68, v69;

    v73 = v11;
  }

  v107 = *(a1 + 56);
  v109 = a1[5];
  v108 = a1[6];
  v110 = a1[4];
  result = sub_38910(a1, &v123);
  v8 = v113;
LABEL_21:
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v70;
  *(a4 + 24) = v73;
  *(a4 + 32) = v110;
  *(a4 + 40) = v109;
  *(a4 + 48) = v108;
  *(a4 + 56) = v107;
  return result;
}

id sub_33D58(Class *a1)
{
  v3 = [objc_allocWithZone(CTLazuliChatBotPostbackData) init];
  v4 = *(v1 + 16);
  v5 = [v4 suggestion];
  v6 = [v5 postback];

  if (v6)
  {
    sub_F07EC();
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_F07BC();
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v3 setData:v9];

  v17 = [objc_allocWithZone(*a1) init];
  v18 = [v4 suggestion];
  v19 = [v18 displayText];

  if (!v19)
  {
    sub_F07EC();
    v21 = v20;
    v19 = sub_F07BC();
    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  [v17 setDisplayText:v19];

  [v17 setPostBackData:v3];
  v29 = [objc_allocWithZone(CTLazuliMessageID) init];
  v30 = [v4 suggestion];
  v31 = [v30 inReplyToID];

  if (v31)
  {
    sub_F07EC();
    v33 = v32;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  v34 = sub_F07BC();
  v33, v35, v36, v37, v38, v39, v40, v41;
  [v29 setUuid:v34];

  [v17 setInReplyToID:v29];
  return v17;
}

id sub_33F90(void *a1, id *a2, Class *a3)
{
  result = [a1 body];
  if (result)
  {
    v6 = result;
    v7 = [result string];
    v8 = sub_F07EC();
    v10 = v9;

    v11 = sub_F07EC();
    v19 = v12;
    if (v8 == v11 && v10 == v12)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19, v36, v37, v38, v39, v40, v41, v42;
    }

    else
    {
      v21 = sub_F122C();
      v10, v22, v23, v24, v25, v26, v27, v28;
      v19, v29, v30, v31, v32, v33, v34, v35;
      if ((v21 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v43 = [v6 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_E9BF4();
    v44 = sub_F076C();

    if (*v44[1].IMDTelephonyServiceSession_opaque)
    {
      v52 = *a2;
      v53 = sub_E9B18();
      if (v54)
      {
        sub_3FE38(*v44[3].state + 32 * v53, v73);
        v44, v55, v56, v57, v58, v59, v60, v61;

        sub_388C8(&qword_128568, &qword_F3950);
        if (swift_dynamicCast())
        {
          v62 = objc_allocWithZone(*a3);
          v63 = sub_F075C();
          v72, v64, v65, v66, v67, v68, v69, v70;
          v71 = [v62 initWithDictionary:v63];

          return v71;
        }

        goto LABEL_15;
      }
    }

    v44, v45, v46, v47, v48, v49, v50, v51;
LABEL_15:

    return 0;
  }

  return result;
}

uint64_t sub_341B0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_388C8(&unk_127ED0, &unk_F2CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  if (*a1 != -1)
  {
    swift_once();
  }

  v9 = sub_3C96C(v5, a2);
  (*(v6 + 16))(v8, v9, v5);
  sub_F044C();
  (*(v6 + 8))(v8, v5);
  return v11[15];
}

void sub_34314(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    a3(v5, v4);

    v4, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    a3(*a1, v4);
  }
}

void *sub_34398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_EDF70(sub_34400, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_34424()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_3C9A4(*(v0 + 104), v1);
  v4 = *(v3 + 32);
  *(v0 + 448) = v4;
  sub_37380(v1 + v4, v2, &unk_127FA0, &qword_F34C0);
  v5 = type metadata accessor for RCSMessage.Content(0);
  *(v0 + 264) = v5;
  v6 = *(v5 - 8);
  *(v0 + 272) = v6;
  v7 = (*(v6 + 48))(v2, 1, v5);
  v8 = *(v0 + 192);
  if (v7 == 1)
  {
    sub_372B0(*(v0 + 192), &unk_127FA0, &qword_F34C0);
LABEL_5:
    v16 = *(v0 + 120);
    *(v0 + 344) = [objc_allocWithZone(NSMutableString) init];
    *(v0 + 352) = [objc_allocWithZone(NSMutableString) init];
    *(v0 + 360) = *(v16 + 16);
    v17 = *(v16 + 24);
    *(v0 + 368) = v17;
    *(v0 + 376) = *(v17 + 8);
    *(v0 + 384) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0xA3D4000000000000;
    *(v0 + 392) = sub_F0AEC();
    *(v0 + 400) = sub_F0ADC();
    v18 = sub_F0A6C();
    v20 = v19;
    v21 = sub_349B8;
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_37AE8(v8, type metadata accessor for RCSMessage.Content);
    goto LABEL_5;
  }

  v22 = *(v0 + 120);
  v23 = *(v8 + 8);
  *(v0 + 280) = *(v8 + 16);
  v23, v9, v10, v11, v12, v13, v14, v15;
  *(v0 + 288) = *(v22 + 16);
  v24 = *(v22 + 24);
  *(v0 + 296) = v24;
  *(v0 + 304) = *(v24 + 16);
  *(v0 + 312) = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0x1162000000000000;
  sub_F0AEC();
  *(v0 + 320) = sub_F0ADC();
  v18 = sub_F0A6C();
  v20 = v25;
  v21 = sub_34668;
LABEL_6:

  return _swift_task_switch(v21, v18, v20);
}

uint64_t sub_34668()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[14];

  v0[41] = v2(v4, v4, v3, v1);
  v0[42] = v5;

  return _swift_task_switch(sub_34704, 0, 0);
}

uint64_t sub_34704()
{
  v1 = [*(v0 + 112) subject];
  v3 = *(v0 + 328);
  v2 = *(v0 + 336);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 448);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  if (v1)
  {
    v9 = *(v0 + 184);
    v10 = v1;
    v28 = *(v0 + 256);
    v29 = *(v0 + 448);
    v11 = sub_F07EC();
    v13 = v12;

    v31._countAndFlagsBits = 10;
    v31._object = 0xE100000000000000;
    sub_F08CC(v31);
    v32._countAndFlagsBits = v3;
    v32._object = v2;
    sub_F08CC(v32);
    v2, v14, v15, v16, v17, v18, v19, v20;
    *v9 = v11;
    v9[1] = v13;
    v9[2] = v4;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v8);

    sub_C9724(v9, v28 + v29);
  }

  else
  {
    v21 = (v7 + v6);
    sub_372B0(v7 + v6, &unk_127FA0, &qword_F34C0);
    *v21 = v3;
    v21[1] = v2;
    v21[2] = v4;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v21, 0, 1, v8);
  }

  v22 = *(v0 + 256);
  v23 = *(v0 + 208);
  sub_388C8(&qword_1284C0, &qword_F3638);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_F2C60;
  sub_3C9A4(v22, v25 + v24);

  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t sub_349B8()
{
  v1 = v0[47];
  v3 = v0[45];
  v2 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[14];

  v1(v6, v6, v5, v4, v3, v2);

  return _swift_task_switch(sub_34A64, 0, 0);
}

uint64_t sub_34A64()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v3 + 56);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v4, 1, 1, v2);
  v6(v5, 1, 1, v2);
  v7 = swift_allocObject();
  *(v0 + 424) = v7;
  *(v7 + 16) = 0;
  if ([v1 length] >= 1)
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 200);
    v10 = *(v0 + 160);
    sub_372B0(v10, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v8, v10);
    v6(v10, 0, 1, v9);
    *(v0 + 432) = sub_F0ADC();
    v11 = sub_F0A6C();
    v13 = v12;
    v14 = sub_350D0;
LABEL_5:

    return _swift_task_switch(v14, v11, v13);
  }

  if ([*(v0 + 352) length] >= 1)
  {
    v15 = *(v0 + 408);
    v16 = *(v0 + 256);
    v17 = *(v0 + 200);
    v18 = *(v0 + 152);
    sub_372B0(v18, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v16, v18);
    v15(v18, 0, 1, v17);
    *(v0 + 440) = sub_F0ADC();
    v11 = sub_F0A6C();
    v13 = v19;
    v14 = sub_35844;
    goto LABEL_5;
  }

  v20 = *(v0 + 424);
  swift_beginAccess();
  if (*(v20 + 16) == 1)
  {
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v23 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v21 + 24))(v23, v22, v21);
    swift_unknownObjectRelease();
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 144);
  sub_37380(*(v0 + 160), v26, &qword_128F00, &unk_F43F0);
  v56 = *(v25 + 48);
  if (v56(v26, 1, v24) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v27 = _swiftEmptyArrayStorage;
  }

  else
  {
    v28 = *(v0 + 240);
    v29 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v29);
    sub_3C9A4(v29, v28);
    v27 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v31 = *v27[1].IMDTelephonyServiceSession_opaque;
    v30 = *v27[1].state;
    if (v31 >= v30 >> 1)
    {
      v27 = sub_6E964((v30 > 1), v31 + 1, 1, v27);
    }

    v32 = *(v0 + 240);
    v33 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    *v27[1].IMDTelephonyServiceSession_opaque = v31 + 1;
    sub_3CA08(v32, &v27->IMDTelephonyServiceSession_opaque[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31]);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_6E964(0, *v27[1].IMDTelephonyServiceSession_opaque + 1, 1, v27);
  }

  v35 = *v27[1].IMDTelephonyServiceSession_opaque;
  v34 = *v27[1].state;
  v36 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
    v27 = sub_6E964((v34 > 1), v35 + 1, 1, v27);
  }

  v37 = *(v0 + 232);
  v39 = *(v0 + 200);
  v38 = *(v0 + 208);
  v40 = *(v0 + 152);
  v41 = *(v0 + 136);
  *v27[1].IMDTelephonyServiceSession_opaque = v36;
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = *(v38 + 72);
  sub_3CA08(v37, &v27->IMDTelephonyServiceSession_opaque[v42 + v43 * v35]);
  sub_37380(v40, v41, &qword_128F00, &unk_F43F0);
  if (v56(v41, 1, v39) == 1)
  {
    v44 = *(v0 + 352);
    v45 = *(v0 + 136);

    sub_372B0(v45, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v46);
    sub_3C9A4(v46, v47);
    v48 = *v27[1].state;
    if ((v35 + 2) > (v48 >> 1))
    {
      v27 = sub_6E964((v48 > 1), v35 + 2, 1, v27);
    }

    v49 = *(v0 + 344);
    v51 = *(v0 + 216);
    v50 = *(v0 + 224);

    sub_37AE8(v50, type metadata accessor for RCSMessage);
    *v27[1].IMDTelephonyServiceSession_opaque = v35 + 2;
    sub_3CA08(v51, &v27->IMDTelephonyServiceSession_opaque[v42 + v43 * v36]);
  }

  v53 = *(v0 + 152);
  v52 = *(v0 + 160);

  sub_372B0(v53, &qword_128F00, &unk_F43F0);
  sub_372B0(v52, &qword_128F00, &unk_F43F0);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v54 = *(v0 + 8);

  return v54(v27);
}

uint64_t sub_350D0()
{
  v1 = v0[53];
  v2 = v0[14];

  sub_EE67C(0, v2, v1);
  v0[9] = v3;
  v0[10] = v4;

  return _swift_task_switch(sub_35150, 0, 0);
}

uint64_t sub_35150()
{
  v1 = *(v0 + 160);
  v76 = *(v0 + 200);
  v77 = (*(v0 + 208) + 48);
  v75 = *v77;
  v2 = (*v77)(v1, 1);
  if (v2 == 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 272);
  v74 = *(v0 + 264);
  v12 = *(v0 + 176);
  v13 = *(v1 + 136);
  *(v1 + 128) = *(v0 + 72);
  *(v1 + 136) = v10;
  v13, v3, v4, v5, v6, v7, v8, v9;
  v14 = sub_F082C();
  v16 = v15;
  *(v0 + 56) = v14;
  *(v0 + 64) = v15;
  v17 = sub_F003C();
  v18 = *(v17 - 8);
  v19 = swift_task_alloc();
  sub_F002C();
  sub_3CBB8();
  v20 = sub_F0E4C();
  v22 = v21;
  (*(v18 + 8))(v19, v17);
  v16, v23, v24, v25, v26, v27, v28, v29;

  *v12 = v20;
  v12[1] = v22;
  v12[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(v11 + 56))(v12, 0, 1, v74);
  v2 = (v75)(v1, 1, v76);
  if (v2 == 1)
  {
LABEL_27:
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  sub_C9724(*(v0 + 176), *(v0 + 160) + *(*(v0 + 200) + 32));
  if ([*(v0 + 352) length] >= 1)
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 256);
    v32 = *(v0 + 200);
    v33 = *(v0 + 152);
    sub_372B0(v33, &qword_128F00, &unk_F43F0);
    sub_3C9A4(v31, v33);
    v30(v33, 0, 1, v32);
    *(v0 + 440) = sub_F0ADC();
    v34 = sub_F0A6C();
    v36 = v35;
    v2 = sub_35844;
    v3 = v34;
    v4 = v36;

    return _swift_task_switch(v2, v3, v4);
  }

  v37 = *(v0 + 424);
  swift_beginAccess();
  if (*(v37 + 16) == 1)
  {
    v39 = *(v0 + 360);
    v38 = *(v0 + 368);
    v40 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v38 + 24))(v40, v39, v38);
    swift_unknownObjectRelease();
  }

  v41 = *(v0 + 200);
  v42 = *(v0 + 208);
  v43 = *(v0 + 144);
  sub_37380(*(v0 + 160), v43, &qword_128F00, &unk_F43F0);
  v44 = *(v42 + 48);
  if (v44(v43, 1, v41) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v45 = _swiftEmptyArrayStorage;
  }

  else
  {
    v46 = *(v0 + 240);
    v47 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v47);
    sub_3C9A4(v47, v46);
    v45 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v49 = *v45[1].IMDTelephonyServiceSession_opaque;
    v48 = *v45[1].state;
    if (v49 >= v48 >> 1)
    {
      v45 = sub_6E964((v48 > 1), v49 + 1, 1, v45);
    }

    v50 = *(v0 + 240);
    v51 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    *v45[1].IMDTelephonyServiceSession_opaque = v49 + 1;
    sub_3CA08(v50, &v45->IMDTelephonyServiceSession_opaque[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49]);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  v52 = v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_6E964(0, *v45[1].IMDTelephonyServiceSession_opaque + 1, 1, v45);
  }

  v54 = *v45[1].IMDTelephonyServiceSession_opaque;
  v53 = *v45[1].state;
  if (v54 >= v53 >> 1)
  {
    v45 = sub_6E964((v53 > 1), v54 + 1, 1, v45);
  }

  v55 = *(v0 + 232);
  v57 = *(v0 + 200);
  v56 = *(v0 + 208);
  v58 = *(v0 + 152);
  v59 = *(v0 + 136);
  *v45[1].IMDTelephonyServiceSession_opaque = v54 + 1;
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v61 = *(v56 + 72);
  sub_3CA08(v55, &v45->IMDTelephonyServiceSession_opaque[v60 + v61 * v54]);
  sub_37380(v58, v59, &qword_128F00, &unk_F43F0);
  if (v52(v59, 1, v57) == 1)
  {
    v62 = *(v0 + 352);
    v63 = *(v0 + 136);

    sub_372B0(v63, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v65 = *(v0 + 216);
    v64 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v64);
    sub_3C9A4(v64, v65);
    v66 = *v45[1].state;
    if ((v54 + 2) > (v66 >> 1))
    {
      v45 = sub_6E964((v66 > 1), v54 + 2, 1, v45);
    }

    v67 = *(v0 + 344);
    v69 = *(v0 + 216);
    v68 = *(v0 + 224);

    sub_37AE8(v68, type metadata accessor for RCSMessage);
    *v45[1].IMDTelephonyServiceSession_opaque = v54 + 2;
    sub_3CA08(v69, &v45->IMDTelephonyServiceSession_opaque[v60 + v61 * (v54 + 1)]);
  }

  v71 = *(v0 + 152);
  v70 = *(v0 + 160);

  sub_372B0(v71, &qword_128F00, &unk_F43F0);
  sub_372B0(v70, &qword_128F00, &unk_F43F0);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v72 = *(v0 + 8);

  return v72(v45);
}

uint64_t sub_35844()
{
  v1 = v0[53];
  v2 = v0[14];

  sub_EE67C(1uLL, v2, v1);
  v0[11] = v3;
  v0[12] = v4;

  return _swift_task_switch(sub_358C8, 0, 0);
}

uint64_t sub_358C8()
{
  v1 = *(v0 + 152);
  v68 = *(v0 + 200);
  v69 = (*(v0 + 208) + 48);
  v67 = *v69;
  result = (*v69)(v1, 1);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 272);
  v66 = *(v0 + 264);
  v12 = *(v0 + 168);
  v13 = *(v1 + 136);
  *(v1 + 128) = *(v0 + 88);
  *(v1 + 136) = v10;
  v13, v3, v4, v5, v6, v7, v8, v9;
  v14 = sub_F082C();
  v16 = v15;
  *(v0 + 40) = v14;
  *(v0 + 48) = v15;
  v17 = sub_F003C();
  v18 = *(v17 - 8);
  v19 = swift_task_alloc();
  sub_F002C();
  sub_3CBB8();
  v20 = sub_F0E4C();
  v22 = v21;
  (*(v18 + 8))(v19, v17);
  v16, v23, v24, v25, v26, v27, v28, v29;

  *v12 = v20;
  v12[1] = v22;
  v12[2] = 0;
  swift_storeEnumTagMultiPayload();
  (*(v11 + 56))(v12, 0, 1, v66);
  result = (v67)(v1, 1, v68);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  sub_C9724(*(v0 + 168), *(v0 + 152) + *(*(v0 + 200) + 32));
  v30 = *(v0 + 424);
  swift_beginAccess();
  if (*(v30 + 16) == 1)
  {
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    v33 = *(v0 + 112);
    swift_unknownObjectUnownedLoadStrong();
    (*(v31 + 24))(v33, v32, v31);
    swift_unknownObjectRelease();
  }

  v34 = *(v0 + 200);
  v35 = *(v0 + 208);
  v36 = *(v0 + 144);
  sub_37380(*(v0 + 160), v36, &qword_128F00, &unk_F43F0);
  v37 = *(v35 + 48);
  if (v37(v36, 1, v34) == 1)
  {
    sub_372B0(*(v0 + 144), &qword_128F00, &unk_F43F0);
    v38 = _swiftEmptyArrayStorage;
  }

  else
  {
    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    sub_3CA08(*(v0 + 144), v40);
    sub_3C9A4(v40, v39);
    v38 = sub_6E964(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = *v38[1].IMDTelephonyServiceSession_opaque;
    v41 = *v38[1].state;
    if (v42 >= v41 >> 1)
    {
      v38 = sub_6E964((v41 > 1), v42 + 1, 1, v38);
    }

    v43 = *(v0 + 240);
    v44 = *(v0 + 208);
    sub_37AE8(*(v0 + 248), type metadata accessor for RCSMessage);
    *v38[1].IMDTelephonyServiceSession_opaque = v42 + 1;
    sub_3CA08(v43, &v38->IMDTelephonyServiceSession_opaque[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v42]);
  }

  sub_3C9A4(*(v0 + 256), *(v0 + 232));
  v45 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_6E964(0, *v38[1].IMDTelephonyServiceSession_opaque + 1, 1, v38);
  }

  v47 = *v38[1].IMDTelephonyServiceSession_opaque;
  v46 = *v38[1].state;
  if (v47 >= v46 >> 1)
  {
    v38 = sub_6E964((v46 > 1), v47 + 1, 1, v38);
  }

  v48 = *(v0 + 232);
  v50 = *(v0 + 200);
  v49 = *(v0 + 208);
  v51 = *(v0 + 152);
  v52 = *(v0 + 136);
  *v38[1].IMDTelephonyServiceSession_opaque = v47 + 1;
  v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v54 = *(v49 + 72);
  sub_3CA08(v48, &v38->IMDTelephonyServiceSession_opaque[v53 + v54 * v47]);
  sub_37380(v51, v52, &qword_128F00, &unk_F43F0);
  if (v45(v52, 1, v50) == 1)
  {
    v55 = *(v0 + 352);
    v56 = *(v0 + 136);

    sub_372B0(v56, &qword_128F00, &unk_F43F0);
  }

  else
  {
    v58 = *(v0 + 216);
    v57 = *(v0 + 224);
    sub_3CA08(*(v0 + 136), v57);
    sub_3C9A4(v57, v58);
    v59 = *v38[1].state;
    if ((v47 + 2) > (v59 >> 1))
    {
      v38 = sub_6E964((v59 > 1), v47 + 2, 1, v38);
    }

    v60 = *(v0 + 344);
    v62 = *(v0 + 216);
    v61 = *(v0 + 224);

    sub_37AE8(v61, type metadata accessor for RCSMessage);
    *v38[1].IMDTelephonyServiceSession_opaque = v47 + 2;
    sub_3CA08(v62, &v38->IMDTelephonyServiceSession_opaque[v53 + v54 * (v47 + 1)]);
  }

  v64 = *(v0 + 152);
  v63 = *(v0 + 160);

  sub_372B0(v64, &qword_128F00, &unk_F43F0);
  sub_372B0(v63, &qword_128F00, &unk_F43F0);
  sub_37AE8(*(v0 + 256), type metadata accessor for RCSMessage);

  v65 = *(v0 + 8);

  return v65(v38);
}

uint64_t sub_35EEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_35FD4;

    return sub_2900();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_35FD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_360E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 136);
  *(v2 + 136) = 0x8000000000000000;
  v7 = sub_51FEC(v3, v1);
  v8 = v5[2];
  v9 = (v6 & 1) == 0;
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    return result;
  }

  v11 = v6;
  if (v5[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v14 = sub_51FEC(v13, v12);
    if ((v11 & 1) != (v15 & 1))
    {

      return sub_F126C();
    }

    v7 = v14;
  }

  *(v2 + 136) = v5;
  if ((v11 & 1) == 0)
  {
    v17 = v0[6];
    v16 = v0[7];
    v18 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v7, v17, v16, v18, v5);
  }

  v19 = v0[9];
  sub_C79BC(v0[5], v19);
  swift_endAccess();
  v20 = type metadata accessor for TypingIndicator(0);
  v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  v22 = v0[9];
  if (v21 == 1)
  {
    sub_372B0(v0[9], &qword_12AAD0, &qword_F7850);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *(v22 + 80);
    v24 = *(v22 + 88);

    sub_EFE48(v22);
  }

  v25 = v0[1];

  return v25(v23, v24);
}

uint64_t sub_36328()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 136);
  *(v2 + 136) = 0x8000000000000000;
  v7 = sub_51FEC(v3, v1);
  v8 = v5[2];
  v9 = (v6 & 1) == 0;
  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    return result;
  }

  v11 = v6;
  if (v5[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v14 = sub_51FEC(v13, v12);
    if ((v11 & 1) != (v15 & 1))
    {

      return sub_F126C();
    }

    v7 = v14;
  }

  *(v2 + 136) = v5;
  if ((v11 & 1) == 0)
  {
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v7, v17, v16, v18, v5);
  }

  v19 = *(v0 + 144);
  v20 = *(v0 + 152);
  v21 = *(v0 + 136);
  sub_C79BC(*(v0 + 104), v21);
  swift_endAccess();
  if ((*(v20 + 48))(v21, 1, v19) != 1)
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 128);
    sub_BDEA0(*(v0 + 136), v23);
    *(v0 + 168) = swift_unknownObjectUnownedLoadStrong();
    v25 = *(v24 + 120);
    swift_getObjectType();
    v26 = v23[1];
    v27 = v23[2];
    v28 = v23[3];
    *(v0 + 57) = *(v23 + 57);
    *(v0 + 32) = v27;
    *(v0 + 48) = v28;
    *(v0 + 16) = v26;
    v30 = *(v25 + 8) + **(v25 + 8);
    v29 = swift_task_alloc();
    *(v0 + 176) = v29;
    *v29 = v0;
    v29[1] = sub_366B8;

    __asm { BRAA            X8, X16 }
  }

  sub_372B0(*(v0 + 136), &qword_12AAD0, &qword_F7850);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_366B8()
{
  v1 = *(*v0 + 128);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_367E4, v1, 0);
}

uint64_t sub_367E4()
{
  sub_EFE48(*(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_36858()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_36968, v1, 0);
}

uint64_t sub_36968()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v43 = v0[30];
  v44 = v0[29];
  v41 = v0[27];
  v42 = v0[28];
  v39 = v0[25];
  v40 = v0[26];
  v38 = v0[24];
  v4 = v0[23];
  v45 = v0[22];
  v5 = v0[21];
  v6 = sub_F035C();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();

  sub_38910(v5, (v0 + 2));
  sub_F034C();
  v9 = sub_F032C();
  v11 = v10;
  v12 = v6;
  v13 = v9;
  (*(v7 + 8))(v8, v12);
  sub_F02DC();
  *v1 = v45;
  *(v1 + 8) = v4;
  v14 = *v5;
  v15 = v5[1];
  v16 = v5[2];
  *(v1 + 57) = *(v5 + 41);
  *(v1 + 32) = v15;
  *(v1 + 48) = v16;
  *(v1 + 16) = v14;
  *(v1 + 80) = v13;
  *(v1 + 88) = v11;
  *(v1 + *(v3 + 32)) = v38;
  v17 = (v1 + *(v3 + 36));
  *v17 = v39;
  v17[1] = v40;
  v17[2] = v41;
  v17[3] = v42;

  sub_BDE3C(v1, v43);
  (*(v2 + 56))(v43, 0, 1, v3);
  swift_beginAccess();

  v18 = v11;

  sub_3896C(v38);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v44 + 136);
  *(v44 + 136) = 0x8000000000000000;
  v22 = sub_51FEC(v45, v4);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  result = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    return result;
  }

  v26 = v21;
  if (v20[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_BD31C();
    }
  }

  else
  {
    v28 = v0[22];
    v27 = v0[23];
    sub_BB710(result, isUniquelyReferenced_nonNull_native);
    v29 = sub_51FEC(v28, v27);
    if ((v26 & 1) != (v30 & 1))
    {

      return sub_F126C();
    }

    v22 = v29;
  }

  *(v44 + 136) = v20;
  if ((v26 & 1) == 0)
  {
    v32 = v0[22];
    v31 = v0[23];
    v33 = sub_E9608(_swiftEmptyArrayStorage);
    sub_76710(v22, v32, v31, v33, v20);
  }

  v34 = v0[33];
  v35 = v0[30];
  v36 = v0[21];
  sub_38910(v36, (v0 + 10));
  sub_E0F2C(v35, v36);
  swift_endAccess();
  sub_EFE48(v34);

  v37 = v0[1];

  return v37(v13, v18);
}

uint64_t sub_36CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_372A4;

  return sub_1E3C(a1, v4, v5, v6);
}

uint64_t sub_36D98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_36DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_372A8;

  return sub_1E3C(a1, v4, v5, v6);
}

uint64_t sub_36E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_F030C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_36F38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_F030C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_36FDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_37014()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_370A4;

  return sub_EF4A0(v0);
}

uint64_t sub_370A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_37198()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_371D8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_372AC;

  return sub_DEF50(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_372B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_388C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_37310(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_37380(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_388C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_373E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_37474(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_374E0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = (&dword_0 + 1);
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
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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